; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cmsgpack.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cmsgpack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.mp_buf = type { i8*, i64, i64 }
%struct.mp_cur = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"in function mp_encode_lua_table_as_array\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"in function mp_encode_lua_table_as_map\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"MessagePack pack needs input.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Too many arguments for MessagePack pack.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"in function mp_check\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cmsgpack.c\00", align 1
@__func__.mp_decode_to_lua_array = private unnamed_addr constant [23 x i8] c"mp_decode_to_lua_array\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"len <= UINT_MAX\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"in function mp_decode_to_lua_array\00", align 1
@__func__.mp_decode_to_lua_hash = private unnamed_addr constant [22 x i8] c"mp_decode_to_lua_hash\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"too many return values at once; use unpack_one or unpack_limit instead.\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Invalid request to unpack with offset of %d and limit of %d.\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Start offset %d greater than input length %d.\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Missing bytes in input.\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Bad data format in input.\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"in function mp_unpack_full\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"unpack_one\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"unpack_limit\00", align 1
@cmds = dso_local local_unnamed_addr constant [5 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @mp_pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @mp_unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @mp_unpack_one }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @mp_unpack_limit }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.18 = private unnamed_addr constant [9 x i8] c"cmsgpack\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"lua-cmsgpack 0.4.0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Copyright (C) 2012, Salvatore Sanfilippo\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"_COPYRIGHT\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"MessagePack C implementation for Lua\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"_DESCRIPTION\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"cmsgpack_safe\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @memrevifle(i8* nocapture, i64) local_unnamed_addr #0 !dbg !67 {
  %3 = lshr i64 %1, 1, !dbg !83
  %4 = icmp eq i64 %3, 0, !dbg !84
  br i1 %4, label %49, label %5, !dbg !84

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !85
  %7 = add nsw i64 %3, -1, !dbg !87
  %8 = and i64 %3, 3, !dbg !87
  %9 = icmp eq i64 %8, 0, !dbg !87
  br i1 %9, label %22, label %10, !dbg !87

; <label>:10:                                     ; preds = %5, %10
  %11 = phi i8* [ %15, %10 ], [ %6, %5 ]
  %12 = phi i64 [ %16, %10 ], [ %3, %5 ]
  %13 = phi i8* [ %19, %10 ], [ %0, %5 ]
  %14 = phi i64 [ %20, %10 ], [ %8, %5 ]
  %15 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !87
  %16 = add nsw i64 %12, -1, !dbg !89
  %17 = load i8, i8* %13, align 1, !dbg !90, !tbaa !91
  %18 = load i8, i8* %15, align 1, !dbg !95, !tbaa !91
  store i8 %18, i8* %13, align 1, !dbg !96, !tbaa !91
  store i8 %17, i8* %15, align 1, !dbg !97, !tbaa !91
  %19 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !98
  %20 = add i64 %14, -1, !dbg !84
  %21 = icmp eq i64 %20, 0, !dbg !84
  br i1 %21, label %22, label %10, !dbg !84, !llvm.loop !99

; <label>:22:                                     ; preds = %10, %5
  %23 = phi i8* [ %6, %5 ], [ %15, %10 ]
  %24 = phi i64 [ %3, %5 ], [ %16, %10 ]
  %25 = phi i8* [ %0, %5 ], [ %19, %10 ]
  %26 = icmp ult i64 %7, 3, !dbg !87
  br i1 %26, label %49, label %27, !dbg !87

; <label>:27:                                     ; preds = %22, %27
  %28 = phi i8* [ %43, %27 ], [ %23, %22 ]
  %29 = phi i64 [ %44, %27 ], [ %24, %22 ]
  %30 = phi i8* [ %47, %27 ], [ %25, %22 ]
  %31 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !87
  %32 = load i8, i8* %30, align 1, !dbg !90, !tbaa !91
  %33 = load i8, i8* %31, align 1, !dbg !95, !tbaa !91
  store i8 %33, i8* %30, align 1, !dbg !96, !tbaa !91
  store i8 %32, i8* %31, align 1, !dbg !97, !tbaa !91
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !98
  %35 = getelementptr inbounds i8, i8* %28, i64 -2, !dbg !87
  %36 = load i8, i8* %34, align 1, !dbg !90, !tbaa !91
  %37 = load i8, i8* %35, align 1, !dbg !95, !tbaa !91
  store i8 %37, i8* %34, align 1, !dbg !96, !tbaa !91
  store i8 %36, i8* %35, align 1, !dbg !97, !tbaa !91
  %38 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !98
  %39 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !87
  %40 = load i8, i8* %38, align 1, !dbg !90, !tbaa !91
  %41 = load i8, i8* %39, align 1, !dbg !95, !tbaa !91
  store i8 %41, i8* %38, align 1, !dbg !96, !tbaa !91
  store i8 %40, i8* %39, align 1, !dbg !97, !tbaa !91
  %42 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !98
  %43 = getelementptr inbounds i8, i8* %28, i64 -4, !dbg !87
  %44 = add nsw i64 %29, -4, !dbg !89
  %45 = load i8, i8* %42, align 1, !dbg !90, !tbaa !91
  %46 = load i8, i8* %43, align 1, !dbg !95, !tbaa !91
  store i8 %46, i8* %42, align 1, !dbg !96, !tbaa !91
  store i8 %45, i8* %43, align 1, !dbg !97, !tbaa !91
  %47 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !98
  %48 = icmp eq i64 %44, 0, !dbg !84
  br i1 %48, label %49, label %27, !dbg !84, !llvm.loop !101

; <label>:49:                                     ; preds = %22, %27, %2
  ret void, !dbg !103
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @mp_realloc(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 !dbg !104 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !122
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !122
  %7 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !124
  %8 = load i8*, i8** %5, align 8, !dbg !125, !tbaa !126
  %9 = call i8* %7(i8* %8, i8* %1, i64 %2, i64 %3) #6, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !129
  ret i8* %9, !dbg !130
}

; Function Attrs: noredzone
declare dso_local i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.mp_buf* @mp_buf_new(%struct.lua_State*) local_unnamed_addr #0 !dbg !131 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !145
  %4 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %2) #6, !dbg !147
  %5 = load i8*, i8** %2, align 8, !dbg !148, !tbaa !126
  %6 = call i8* %4(i8* %5, i8* null, i64 0, i64 24) #6, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !150
  %7 = bitcast i8* %6 to %struct.mp_buf*, !dbg !151
  %8 = bitcast i8* %6 to i8**, !dbg !152
  store i8* null, i8** %8, align 8, !dbg !153, !tbaa !154
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !157
  %10 = bitcast i8* %9 to <2 x i64>*, !dbg !158
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !dbg !158, !tbaa !159
  ret %struct.mp_buf* %7, !dbg !160
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_append(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !161 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !176
  %7 = load i64, i64* %6, align 8, !dbg !176, !tbaa !177
  %8 = icmp ult i64 %7, %3, !dbg !178
  br i1 %8, label %14, label %9, !dbg !179

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !dbg !180, !tbaa !154
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !dbg !181, !tbaa !182
  br label %28, !dbg !179

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !183
  %16 = load i64, i64* %15, align 8, !dbg !183, !tbaa !182
  %17 = add i64 %16, %3, !dbg !184
  %18 = shl i64 %17, 1, !dbg !185
  %19 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !187
  %20 = load i8*, i8** %19, align 8, !dbg !187, !tbaa !154
  %21 = add i64 %16, %7, !dbg !188
  %22 = bitcast i8** %5 to i8*, !dbg !195
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !195
  %23 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !197
  %24 = load i8*, i8** %5, align 8, !dbg !198, !tbaa !126
  %25 = call i8* %23(i8* %24, i8* %20, i64 %21, i64 %18) #6, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !200
  store i8* %25, i8** %19, align 8, !dbg !201, !tbaa !154
  %26 = load i64, i64* %15, align 8, !dbg !202, !tbaa !182
  %27 = sub i64 %18, %26, !dbg !203
  store i64 %27, i64* %6, align 8, !dbg !204, !tbaa !177
  br label %28, !dbg !205

; <label>:28:                                     ; preds = %9, %14
  %29 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !181
  %30 = phi i64 [ %13, %9 ], [ %26, %14 ], !dbg !181
  %31 = phi i8* [ %11, %9 ], [ %25, %14 ], !dbg !180
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !206
  %33 = call i8* @memcpy(i8* %32, i8* %2, i64 %3) #6, !dbg !207
  %34 = load i64, i64* %29, align 8, !dbg !208, !tbaa !182
  %35 = add i64 %34, %3, !dbg !208
  store i64 %35, i64* %29, align 8, !dbg !208, !tbaa !182
  %36 = load i64, i64* %6, align 8, !dbg !209, !tbaa !177
  %37 = sub i64 %36, %3, !dbg !209
  store i64 %37, i64* %6, align 8, !dbg !209, !tbaa !177
  ret void, !dbg !210
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_free(%struct.lua_State*, %struct.mp_buf*) local_unnamed_addr #0 !dbg !211 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !219
  %6 = load i8*, i8** %5, align 8, !dbg !219, !tbaa !154
  %7 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !220
  %8 = load i64, i64* %7, align 8, !dbg !220, !tbaa !182
  %9 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !221
  %10 = load i64, i64* %9, align 8, !dbg !221, !tbaa !177
  %11 = add i64 %10, %8, !dbg !222
  %12 = bitcast i8** %4 to i8*, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !229
  %13 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !231
  %14 = load i8*, i8** %4, align 8, !dbg !232, !tbaa !126
  %15 = call i8* %13(i8* %14, i8* %6, i64 %11, i64 0) #6, !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !234
  %16 = bitcast %struct.mp_buf* %1 to i8*, !dbg !235
  %17 = bitcast i8** %3 to i8*, !dbg !242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !242
  %18 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !244
  %19 = load i8*, i8** %3, align 8, !dbg !245, !tbaa !126
  %20 = call i8* %18(i8* %19, i8* %16, i64 24, i64 0) #6, !dbg !246
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_cur_init(%struct.mp_cur* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !249 {
  %4 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 0, !dbg !266
  store i8* %1, i8** %4, align 8, !dbg !267, !tbaa !268
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 1, !dbg !271
  store i64 %2, i64* %5, align 8, !dbg !272, !tbaa !273
  %6 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 2, !dbg !274
  store i32 0, i32* %6, align 8, !dbg !275, !tbaa !276
  ret void, !dbg !277
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_bytes(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !278 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %8) #5, !dbg !291
  %9 = icmp ult i64 %3, 32, !dbg !293
  br i1 %9, label %10, label %13, !dbg !295

; <label>:10:                                     ; preds = %4
  %11 = trunc i64 %3 to i8, !dbg !296
  %12 = or i8 %11, -96, !dbg !296
  store i8 %12, i8* %8, align 1, !dbg !298, !tbaa !91
  br label %38, !dbg !300

; <label>:13:                                     ; preds = %4
  %14 = icmp ult i64 %3, 256, !dbg !301
  br i1 %14, label %15, label %18, !dbg !303

; <label>:15:                                     ; preds = %13
  store i8 -39, i8* %8, align 1, !dbg !304, !tbaa !91
  %16 = trunc i64 %3 to i8, !dbg !306
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !307
  store i8 %16, i8* %17, align 1, !dbg !308, !tbaa !91
  br label %38, !dbg !309

; <label>:18:                                     ; preds = %13
  %19 = icmp ult i64 %3, 65536, !dbg !310
  br i1 %19, label %20, label %26, !dbg !312

; <label>:20:                                     ; preds = %18
  store i8 -38, i8* %8, align 1, !dbg !313, !tbaa !91
  %21 = lshr i64 %3, 8, !dbg !315
  %22 = trunc i64 %21 to i8, !dbg !316
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !317
  store i8 %22, i8* %23, align 1, !dbg !318, !tbaa !91
  %24 = trunc i64 %3 to i8, !dbg !319
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !320
  store i8 %24, i8* %25, align 1, !dbg !321, !tbaa !91
  br label %38, !dbg !322

; <label>:26:                                     ; preds = %18
  store i8 -37, i8* %8, align 1, !dbg !323, !tbaa !91
  %27 = lshr i64 %3, 24, !dbg !325
  %28 = trunc i64 %27 to i8, !dbg !326
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !327
  store i8 %28, i8* %29, align 1, !dbg !328, !tbaa !91
  %30 = lshr i64 %3, 16, !dbg !329
  %31 = trunc i64 %30 to i8, !dbg !330
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !331
  store i8 %31, i8* %32, align 1, !dbg !332, !tbaa !91
  %33 = lshr i64 %3, 8, !dbg !333
  %34 = trunc i64 %33 to i8, !dbg !334
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3, !dbg !335
  store i8 %34, i8* %35, align 1, !dbg !336, !tbaa !91
  %36 = trunc i64 %3 to i8, !dbg !337
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4, !dbg !338
  store i8 %36, i8* %37, align 1, !dbg !339, !tbaa !91
  br label %38

; <label>:38:                                     ; preds = %15, %26, %20, %10
  %39 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %26 ]
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !345
  %41 = load i64, i64* %40, align 8, !dbg !345, !tbaa !177
  %42 = icmp ult i64 %41, %39, !dbg !346
  br i1 %42, label %48, label %43, !dbg !347

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !dbg !348, !tbaa !154
  %46 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %47 = load i64, i64* %46, align 8, !dbg !349, !tbaa !182
  br label %62, !dbg !347

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !350
  %50 = load i64, i64* %49, align 8, !dbg !350, !tbaa !182
  %51 = add i64 %50, %39, !dbg !351
  %52 = shl i64 %51, 1, !dbg !352
  %53 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !354
  %54 = load i8*, i8** %53, align 8, !dbg !354, !tbaa !154
  %55 = add i64 %50, %41, !dbg !355
  %56 = bitcast i8** %6 to i8*, !dbg !362
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #5, !dbg !362
  %57 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %6) #6, !dbg !364
  %58 = load i8*, i8** %6, align 8, !dbg !365, !tbaa !126
  %59 = call i8* %57(i8* %58, i8* %54, i64 %55, i64 %52) #6, !dbg !366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #5, !dbg !367
  store i8* %59, i8** %53, align 8, !dbg !368, !tbaa !154
  %60 = load i64, i64* %49, align 8, !dbg !369, !tbaa !182
  %61 = sub i64 %52, %60, !dbg !370
  store i64 %61, i64* %40, align 8, !dbg !371, !tbaa !177
  br label %62, !dbg !372

; <label>:62:                                     ; preds = %43, %48
  %63 = phi i64* [ %46, %43 ], [ %49, %48 ], !dbg !349
  %64 = phi i64 [ %47, %43 ], [ %60, %48 ], !dbg !349
  %65 = phi i8* [ %45, %43 ], [ %59, %48 ], !dbg !348
  %66 = getelementptr inbounds i8, i8* %65, i64 %64, !dbg !373
  %67 = call i8* @memcpy(i8* %66, i8* nonnull %8, i64 %39) #6, !dbg !374
  %68 = load i64, i64* %63, align 8, !dbg !375, !tbaa !182
  %69 = add i64 %68, %39, !dbg !375
  store i64 %69, i64* %63, align 8, !dbg !375, !tbaa !182
  %70 = load i64, i64* %40, align 8, !dbg !376, !tbaa !177
  %71 = sub i64 %70, %39, !dbg !376
  store i64 %71, i64* %40, align 8, !dbg !376, !tbaa !177
  %72 = icmp ult i64 %71, %3, !dbg !382
  br i1 %72, label %77, label %73, !dbg !383

; <label>:73:                                     ; preds = %62
  %74 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %75 = load i8*, i8** %74, align 8, !dbg !384, !tbaa !154
  %76 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  br label %90, !dbg !383

; <label>:77:                                     ; preds = %62
  %78 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !385
  %79 = add i64 %69, %3, !dbg !386
  %80 = shl i64 %79, 1, !dbg !387
  %81 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !389
  %82 = load i8*, i8** %81, align 8, !dbg !389, !tbaa !154
  %83 = add i64 %68, %70, !dbg !390
  %84 = bitcast i8** %5 to i8*, !dbg !397
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #5, !dbg !397
  %85 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !399
  %86 = load i8*, i8** %5, align 8, !dbg !400, !tbaa !126
  %87 = call i8* %85(i8* %86, i8* %82, i64 %83, i64 %80) #6, !dbg !401
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #5, !dbg !402
  store i8* %87, i8** %81, align 8, !dbg !403, !tbaa !154
  %88 = load i64, i64* %78, align 8, !dbg !404, !tbaa !182
  %89 = sub i64 %80, %88, !dbg !405
  store i64 %89, i64* %40, align 8, !dbg !406, !tbaa !177
  br label %90, !dbg !407

; <label>:90:                                     ; preds = %73, %77
  %91 = phi i64* [ %76, %73 ], [ %78, %77 ], !dbg !408
  %92 = phi i64 [ %69, %73 ], [ %88, %77 ], !dbg !408
  %93 = phi i8* [ %75, %73 ], [ %87, %77 ], !dbg !384
  %94 = getelementptr inbounds i8, i8* %93, i64 %92, !dbg !409
  %95 = call i8* @memcpy(i8* %94, i8* %2, i64 %3) #6, !dbg !410
  %96 = load i64, i64* %91, align 8, !dbg !411, !tbaa !182
  %97 = add i64 %96, %3, !dbg !411
  store i64 %97, i64* %91, align 8, !dbg !411, !tbaa !182
  %98 = load i64, i64* %40, align 8, !dbg !412, !tbaa !177
  %99 = sub i64 %98, %3, !dbg !412
  store i64 %99, i64* %40, align 8, !dbg !412, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %8) #5, !dbg !413
  ret void, !dbg !413
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_double(%struct.lua_State*, %struct.mp_buf* nocapture, double) local_unnamed_addr #0 !dbg !414 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca float, align 4
  store double %2, double* %6, align 8, !tbaa !430
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !432
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %9) #5, !dbg !432
  %10 = bitcast float* %8 to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !434
  %11 = fptrunc double %2 to float, !dbg !435
  store float %11, float* %8, align 4, !dbg !436, !tbaa !437
  %12 = fpext float %11 to double, !dbg !439
  %13 = fcmp oeq double %12, %2, !dbg !441
  br i1 %13, label %14, label %52, !dbg !442

; <label>:14:                                     ; preds = %3
  store i8 -54, i8* %9, align 1, !dbg !443, !tbaa !91
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !445
  %16 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %10, i64 4) #6, !dbg !446
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !454
  %18 = load i8, i8* %15, align 1, !dbg !455, !tbaa !91
  %19 = load i8, i8* %17, align 1, !dbg !457, !tbaa !91
  store i8 %19, i8* %15, align 1, !dbg !458, !tbaa !91
  store i8 %18, i8* %17, align 1, !dbg !459, !tbaa !91
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !460
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !454
  %22 = load i8, i8* %20, align 1, !dbg !455, !tbaa !91
  %23 = load i8, i8* %21, align 1, !dbg !457, !tbaa !91
  store i8 %23, i8* %20, align 1, !dbg !458, !tbaa !91
  store i8 %22, i8* %21, align 1, !dbg !459, !tbaa !91
  %24 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !466
  %25 = load i64, i64* %24, align 8, !dbg !466, !tbaa !177
  %26 = icmp ult i64 %25, 5, !dbg !467
  br i1 %26, label %32, label %27, !dbg !468

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !dbg !469, !tbaa !154
  %30 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !dbg !470, !tbaa !182
  br label %46, !dbg !468

; <label>:32:                                     ; preds = %14
  %33 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !471
  %34 = load i64, i64* %33, align 8, !dbg !471, !tbaa !182
  %35 = shl i64 %34, 1, !dbg !472
  %36 = add i64 %35, 10, !dbg !472
  %37 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !474
  %38 = load i8*, i8** %37, align 8, !dbg !474, !tbaa !154
  %39 = add i64 %34, %25, !dbg !475
  %40 = bitcast i8** %4 to i8*, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !482
  %41 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !484
  %42 = load i8*, i8** %4, align 8, !dbg !485, !tbaa !126
  %43 = call i8* %41(i8* %42, i8* %38, i64 %39, i64 %36) #6, !dbg !486
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !487
  store i8* %43, i8** %37, align 8, !dbg !488, !tbaa !154
  %44 = load i64, i64* %33, align 8, !dbg !489, !tbaa !182
  %45 = sub i64 %36, %44, !dbg !490
  store i64 %45, i64* %24, align 8, !dbg !491, !tbaa !177
  br label %46, !dbg !492

; <label>:46:                                     ; preds = %27, %32
  %47 = phi i64* [ %30, %27 ], [ %33, %32 ], !dbg !470
  %48 = phi i64 [ %31, %27 ], [ %44, %32 ], !dbg !470
  %49 = phi i8* [ %29, %27 ], [ %43, %32 ], !dbg !469
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !493
  %51 = call i8* @memcpy(i8* %50, i8* nonnull %9, i64 5) #6, !dbg !494
  br label %99, !dbg !495

; <label>:52:                                     ; preds = %3
  store i8 -53, i8* %9, align 1, !dbg !496, !tbaa !91
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !499
  %54 = bitcast double* %6 to i8*, !dbg !500
  %55 = call i8* @memcpy(i8* nonnull %53, i8* nonnull %54, i64 8) #6, !dbg !501
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8, !dbg !509
  %57 = load i8, i8* %53, align 1, !dbg !510, !tbaa !91
  %58 = load i8, i8* %56, align 1, !dbg !512, !tbaa !91
  store i8 %58, i8* %53, align 1, !dbg !513, !tbaa !91
  store i8 %57, i8* %56, align 1, !dbg !514, !tbaa !91
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !515
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7, !dbg !509
  %61 = load i8, i8* %59, align 1, !dbg !510, !tbaa !91
  %62 = load i8, i8* %60, align 1, !dbg !512, !tbaa !91
  store i8 %62, i8* %59, align 1, !dbg !513, !tbaa !91
  store i8 %61, i8* %60, align 1, !dbg !514, !tbaa !91
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !515
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6, !dbg !509
  %65 = load i8, i8* %63, align 1, !dbg !510, !tbaa !91
  %66 = load i8, i8* %64, align 1, !dbg !512, !tbaa !91
  store i8 %66, i8* %63, align 1, !dbg !513, !tbaa !91
  store i8 %65, i8* %64, align 1, !dbg !514, !tbaa !91
  %67 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !515
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5, !dbg !509
  %69 = load i8, i8* %67, align 1, !dbg !510, !tbaa !91
  %70 = load i8, i8* %68, align 1, !dbg !512, !tbaa !91
  store i8 %70, i8* %67, align 1, !dbg !513, !tbaa !91
  store i8 %69, i8* %68, align 1, !dbg !514, !tbaa !91
  %71 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !521
  %72 = load i64, i64* %71, align 8, !dbg !521, !tbaa !177
  %73 = icmp ult i64 %72, 9, !dbg !522
  br i1 %73, label %79, label %74, !dbg !523

; <label>:74:                                     ; preds = %52
  %75 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %76 = load i8*, i8** %75, align 8, !dbg !524, !tbaa !154
  %77 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !dbg !525, !tbaa !182
  br label %93, !dbg !523

; <label>:79:                                     ; preds = %52
  %80 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !526
  %81 = load i64, i64* %80, align 8, !dbg !526, !tbaa !182
  %82 = shl i64 %81, 1, !dbg !527
  %83 = add i64 %82, 18, !dbg !527
  %84 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !529
  %85 = load i8*, i8** %84, align 8, !dbg !529, !tbaa !154
  %86 = add i64 %81, %72, !dbg !530
  %87 = bitcast i8** %5 to i8*, !dbg !537
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #5, !dbg !537
  %88 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !539
  %89 = load i8*, i8** %5, align 8, !dbg !540, !tbaa !126
  %90 = call i8* %88(i8* %89, i8* %85, i64 %86, i64 %83) #6, !dbg !541
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #5, !dbg !542
  store i8* %90, i8** %84, align 8, !dbg !543, !tbaa !154
  %91 = load i64, i64* %80, align 8, !dbg !544, !tbaa !182
  %92 = sub i64 %83, %91, !dbg !545
  store i64 %92, i64* %71, align 8, !dbg !546, !tbaa !177
  br label %93, !dbg !547

; <label>:93:                                     ; preds = %74, %79
  %94 = phi i64* [ %77, %74 ], [ %80, %79 ], !dbg !525
  %95 = phi i64 [ %78, %74 ], [ %91, %79 ], !dbg !525
  %96 = phi i8* [ %76, %74 ], [ %90, %79 ], !dbg !524
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !548
  %98 = call i8* @memcpy(i8* %97, i8* nonnull %9, i64 9) #6, !dbg !549
  br label %99

; <label>:99:                                     ; preds = %93, %46
  %100 = phi i64* [ %94, %93 ], [ %47, %46 ]
  %101 = phi i64 [ 9, %93 ], [ 5, %46 ]
  %102 = phi i64* [ %71, %93 ], [ %24, %46 ]
  %103 = phi i64 [ -9, %93 ], [ -5, %46 ]
  %104 = load i64, i64* %100, align 8, !dbg !550, !tbaa !182
  %105 = add i64 %104, %101, !dbg !550
  store i64 %105, i64* %100, align 8, !dbg !550, !tbaa !182
  %106 = load i64, i64* %102, align 8, !dbg !551, !tbaa !177
  %107 = add i64 %106, %103, !dbg !551
  store i64 %107, i64* %102, align 8, !dbg !551, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %9) #5, !dbg !552
  ret void, !dbg !552
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_int(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !553 {
  %4 = alloca i8*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %6) #5, !dbg !565
  %7 = icmp sgt i64 %2, -1, !dbg !567
  br i1 %7, label %8, label %64, !dbg !569

; <label>:8:                                      ; preds = %3
  %9 = icmp slt i64 %2, 128, !dbg !570
  br i1 %9, label %10, label %13, !dbg !573

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %2 to i8, !dbg !574
  %12 = and i8 %11, 127, !dbg !574
  store i8 %12, i8* %6, align 1, !dbg !576, !tbaa !91
  br label %119, !dbg !578

; <label>:13:                                     ; preds = %8
  %14 = icmp slt i64 %2, 256, !dbg !579
  br i1 %14, label %15, label %18, !dbg !581

; <label>:15:                                     ; preds = %13
  store i8 -52, i8* %6, align 1, !dbg !582, !tbaa !91
  %16 = trunc i64 %2 to i8, !dbg !584
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !585
  store i8 %16, i8* %17, align 1, !dbg !586, !tbaa !91
  br label %119, !dbg !587

; <label>:18:                                     ; preds = %13
  %19 = icmp slt i64 %2, 65536, !dbg !588
  br i1 %19, label %20, label %26, !dbg !590

; <label>:20:                                     ; preds = %18
  store i8 -51, i8* %6, align 1, !dbg !591, !tbaa !91
  %21 = lshr i64 %2, 8, !dbg !593
  %22 = trunc i64 %21 to i8, !dbg !594
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !595
  store i8 %22, i8* %23, align 1, !dbg !596, !tbaa !91
  %24 = trunc i64 %2 to i8, !dbg !597
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !598
  store i8 %24, i8* %25, align 1, !dbg !599, !tbaa !91
  br label %119, !dbg !600

; <label>:26:                                     ; preds = %18
  %27 = icmp slt i64 %2, 4294967296, !dbg !601
  br i1 %27, label %28, label %40, !dbg !603

; <label>:28:                                     ; preds = %26
  store i8 -50, i8* %6, align 1, !dbg !604, !tbaa !91
  %29 = lshr i64 %2, 24, !dbg !606
  %30 = trunc i64 %29 to i8, !dbg !607
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !608
  store i8 %30, i8* %31, align 1, !dbg !609, !tbaa !91
  %32 = lshr i64 %2, 16, !dbg !610
  %33 = trunc i64 %32 to i8, !dbg !611
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !612
  store i8 %33, i8* %34, align 1, !dbg !613, !tbaa !91
  %35 = lshr i64 %2, 8, !dbg !614
  %36 = trunc i64 %35 to i8, !dbg !615
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !616
  store i8 %36, i8* %37, align 1, !dbg !617, !tbaa !91
  %38 = trunc i64 %2 to i8, !dbg !618
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !619
  store i8 %38, i8* %39, align 1, !dbg !620, !tbaa !91
  br label %119, !dbg !621

; <label>:40:                                     ; preds = %26
  store i8 -49, i8* %6, align 1, !dbg !622, !tbaa !91
  %41 = lshr i64 %2, 56, !dbg !624
  %42 = trunc i64 %41 to i8, !dbg !625
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !626
  store i8 %42, i8* %43, align 1, !dbg !627, !tbaa !91
  %44 = lshr i64 %2, 48, !dbg !628
  %45 = trunc i64 %44 to i8, !dbg !629
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !630
  store i8 %45, i8* %46, align 1, !dbg !631, !tbaa !91
  %47 = lshr i64 %2, 40, !dbg !632
  %48 = trunc i64 %47 to i8, !dbg !633
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !634
  store i8 %48, i8* %49, align 1, !dbg !635, !tbaa !91
  %50 = lshr i64 %2, 32, !dbg !636
  %51 = trunc i64 %50 to i8, !dbg !637
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !638
  store i8 %51, i8* %52, align 1, !dbg !639, !tbaa !91
  %53 = lshr i64 %2, 24, !dbg !640
  %54 = trunc i64 %53 to i8, !dbg !641
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !642
  store i8 %54, i8* %55, align 1, !dbg !643, !tbaa !91
  %56 = lshr i64 %2, 16, !dbg !644
  %57 = trunc i64 %56 to i8, !dbg !645
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !646
  store i8 %57, i8* %58, align 1, !dbg !647, !tbaa !91
  %59 = lshr i64 %2, 8, !dbg !648
  %60 = trunc i64 %59 to i8, !dbg !649
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !650
  store i8 %60, i8* %61, align 1, !dbg !651, !tbaa !91
  %62 = trunc i64 %2 to i8, !dbg !652
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !653
  store i8 %62, i8* %63, align 1, !dbg !654, !tbaa !91
  br label %119

; <label>:64:                                     ; preds = %3
  %65 = icmp sgt i64 %2, -33, !dbg !655
  br i1 %65, label %66, label %68, !dbg !658

; <label>:66:                                     ; preds = %64
  %67 = trunc i64 %2 to i8, !dbg !659
  store i8 %67, i8* %6, align 1, !dbg !661, !tbaa !91
  br label %119, !dbg !662

; <label>:68:                                     ; preds = %64
  %69 = icmp sgt i64 %2, -129, !dbg !663
  br i1 %69, label %70, label %73, !dbg !665

; <label>:70:                                     ; preds = %68
  store i8 -48, i8* %6, align 1, !dbg !666, !tbaa !91
  %71 = trunc i64 %2 to i8, !dbg !668
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !669
  store i8 %71, i8* %72, align 1, !dbg !670, !tbaa !91
  br label %119, !dbg !671

; <label>:73:                                     ; preds = %68
  %74 = icmp sgt i64 %2, -32769, !dbg !672
  br i1 %74, label %75, label %81, !dbg !674

; <label>:75:                                     ; preds = %73
  store i8 -47, i8* %6, align 1, !dbg !675, !tbaa !91
  %76 = lshr i64 %2, 8, !dbg !677
  %77 = trunc i64 %76 to i8, !dbg !678
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !679
  store i8 %77, i8* %78, align 1, !dbg !680, !tbaa !91
  %79 = trunc i64 %2 to i8, !dbg !681
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !682
  store i8 %79, i8* %80, align 1, !dbg !683, !tbaa !91
  br label %119, !dbg !684

; <label>:81:                                     ; preds = %73
  %82 = icmp sgt i64 %2, -2147483649, !dbg !685
  br i1 %82, label %83, label %95, !dbg !687

; <label>:83:                                     ; preds = %81
  store i8 -46, i8* %6, align 1, !dbg !688, !tbaa !91
  %84 = lshr i64 %2, 24, !dbg !690
  %85 = trunc i64 %84 to i8, !dbg !691
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !692
  store i8 %85, i8* %86, align 1, !dbg !693, !tbaa !91
  %87 = lshr i64 %2, 16, !dbg !694
  %88 = trunc i64 %87 to i8, !dbg !695
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !696
  store i8 %88, i8* %89, align 1, !dbg !697, !tbaa !91
  %90 = lshr i64 %2, 8, !dbg !698
  %91 = trunc i64 %90 to i8, !dbg !699
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !700
  store i8 %91, i8* %92, align 1, !dbg !701, !tbaa !91
  %93 = trunc i64 %2 to i8, !dbg !702
  %94 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !703
  store i8 %93, i8* %94, align 1, !dbg !704, !tbaa !91
  br label %119, !dbg !705

; <label>:95:                                     ; preds = %81
  store i8 -45, i8* %6, align 1, !dbg !706, !tbaa !91
  %96 = lshr i64 %2, 56, !dbg !708
  %97 = trunc i64 %96 to i8, !dbg !709
  %98 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !710
  store i8 %97, i8* %98, align 1, !dbg !711, !tbaa !91
  %99 = lshr i64 %2, 48, !dbg !712
  %100 = trunc i64 %99 to i8, !dbg !713
  %101 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !714
  store i8 %100, i8* %101, align 1, !dbg !715, !tbaa !91
  %102 = lshr i64 %2, 40, !dbg !716
  %103 = trunc i64 %102 to i8, !dbg !717
  %104 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !718
  store i8 %103, i8* %104, align 1, !dbg !719, !tbaa !91
  %105 = lshr i64 %2, 32, !dbg !720
  %106 = trunc i64 %105 to i8, !dbg !721
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !722
  store i8 %106, i8* %107, align 1, !dbg !723, !tbaa !91
  %108 = lshr i64 %2, 24, !dbg !724
  %109 = trunc i64 %108 to i8, !dbg !725
  %110 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !726
  store i8 %109, i8* %110, align 1, !dbg !727, !tbaa !91
  %111 = lshr i64 %2, 16, !dbg !728
  %112 = trunc i64 %111 to i8, !dbg !729
  %113 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !730
  store i8 %112, i8* %113, align 1, !dbg !731, !tbaa !91
  %114 = lshr i64 %2, 8, !dbg !732
  %115 = trunc i64 %114 to i8, !dbg !733
  %116 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !734
  store i8 %115, i8* %116, align 1, !dbg !735, !tbaa !91
  %117 = trunc i64 %2 to i8, !dbg !736
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !737
  store i8 %117, i8* %118, align 1, !dbg !738, !tbaa !91
  br label %119

; <label>:119:                                    ; preds = %66, %75, %95, %83, %70, %10, %20, %40, %28, %15
  %120 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %28 ], [ 9, %40 ], [ 1, %66 ], [ 2, %70 ], [ 3, %75 ], [ 5, %83 ], [ 9, %95 ]
  %121 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !744
  %122 = load i64, i64* %121, align 8, !dbg !744, !tbaa !177
  %123 = icmp ult i64 %122, %120, !dbg !745
  br i1 %123, label %129, label %124, !dbg !746

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8, !dbg !747, !tbaa !154
  %127 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %128 = load i64, i64* %127, align 8, !dbg !748, !tbaa !182
  br label %143, !dbg !746

; <label>:129:                                    ; preds = %119
  %130 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !749
  %131 = load i64, i64* %130, align 8, !dbg !749, !tbaa !182
  %132 = add i64 %131, %120, !dbg !750
  %133 = shl i64 %132, 1, !dbg !751
  %134 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !753
  %135 = load i8*, i8** %134, align 8, !dbg !753, !tbaa !154
  %136 = add i64 %131, %122, !dbg !754
  %137 = bitcast i8** %4 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137) #5, !dbg !761
  %138 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !763
  %139 = load i8*, i8** %4, align 8, !dbg !764, !tbaa !126
  %140 = call i8* %138(i8* %139, i8* %135, i64 %136, i64 %133) #6, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137) #5, !dbg !766
  store i8* %140, i8** %134, align 8, !dbg !767, !tbaa !154
  %141 = load i64, i64* %130, align 8, !dbg !768, !tbaa !182
  %142 = sub i64 %133, %141, !dbg !769
  store i64 %142, i64* %121, align 8, !dbg !770, !tbaa !177
  br label %143, !dbg !771

; <label>:143:                                    ; preds = %124, %129
  %144 = phi i64* [ %127, %124 ], [ %130, %129 ], !dbg !748
  %145 = phi i64 [ %128, %124 ], [ %141, %129 ], !dbg !748
  %146 = phi i8* [ %126, %124 ], [ %140, %129 ], !dbg !747
  %147 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !772
  %148 = call i8* @memcpy(i8* %147, i8* nonnull %6, i64 %120) #6, !dbg !773
  %149 = load i64, i64* %144, align 8, !dbg !774, !tbaa !182
  %150 = add i64 %149, %120, !dbg !774
  store i64 %150, i64* %144, align 8, !dbg !774, !tbaa !182
  %151 = load i64, i64* %121, align 8, !dbg !775, !tbaa !177
  %152 = sub i64 %151, %120, !dbg !775
  store i64 %152, i64* %121, align 8, !dbg !775, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %6) #5, !dbg !776
  ret void, !dbg !776
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_array(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !777 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !787
  %7 = icmp slt i64 %2, 16, !dbg !789
  br i1 %7, label %8, label %12, !dbg !791

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !792
  %10 = and i8 %9, 15, !dbg !792
  %11 = or i8 %10, -112, !dbg !792
  store i8 %11, i8* %6, align 1, !dbg !794, !tbaa !91
  br label %32, !dbg !796

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !797
  br i1 %13, label %14, label %20, !dbg !799

; <label>:14:                                     ; preds = %12
  store i8 -36, i8* %6, align 1, !dbg !800, !tbaa !91
  %15 = lshr i64 %2, 8, !dbg !802
  %16 = trunc i64 %15 to i8, !dbg !803
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !804
  store i8 %16, i8* %17, align 1, !dbg !805, !tbaa !91
  %18 = trunc i64 %2 to i8, !dbg !806
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !807
  store i8 %18, i8* %19, align 1, !dbg !808, !tbaa !91
  br label %32, !dbg !809

; <label>:20:                                     ; preds = %12
  store i8 -35, i8* %6, align 1, !dbg !810, !tbaa !91
  %21 = lshr i64 %2, 24, !dbg !812
  %22 = trunc i64 %21 to i8, !dbg !813
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !814
  store i8 %22, i8* %23, align 1, !dbg !815, !tbaa !91
  %24 = lshr i64 %2, 16, !dbg !816
  %25 = trunc i64 %24 to i8, !dbg !817
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !818
  store i8 %25, i8* %26, align 1, !dbg !819, !tbaa !91
  %27 = lshr i64 %2, 8, !dbg !820
  %28 = trunc i64 %27 to i8, !dbg !821
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !822
  store i8 %28, i8* %29, align 1, !dbg !823, !tbaa !91
  %30 = trunc i64 %2 to i8, !dbg !824
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !825
  store i8 %30, i8* %31, align 1, !dbg !826, !tbaa !91
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !832
  %35 = load i64, i64* %34, align 8, !dbg !832, !tbaa !177
  %36 = icmp ult i64 %35, %33, !dbg !833
  br i1 %36, label %42, label %37, !dbg !834

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !835, !tbaa !154
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !836, !tbaa !182
  br label %56, !dbg !834

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !837
  %44 = load i64, i64* %43, align 8, !dbg !837, !tbaa !182
  %45 = add i64 %44, %33, !dbg !838
  %46 = shl i64 %45, 1, !dbg !839
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !841
  %48 = load i8*, i8** %47, align 8, !dbg !841, !tbaa !154
  %49 = add i64 %44, %35, !dbg !842
  %50 = bitcast i8** %4 to i8*, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !849
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !851
  %52 = load i8*, i8** %4, align 8, !dbg !852, !tbaa !126
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !853
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !854
  store i8* %53, i8** %47, align 8, !dbg !855, !tbaa !154
  %54 = load i64, i64* %43, align 8, !dbg !856, !tbaa !182
  %55 = sub i64 %46, %54, !dbg !857
  store i64 %55, i64* %34, align 8, !dbg !858, !tbaa !177
  br label %56, !dbg !859

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !836
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !836
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !835
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !860
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !861
  %62 = load i64, i64* %57, align 8, !dbg !862, !tbaa !182
  %63 = add i64 %62, %33, !dbg !862
  store i64 %63, i64* %57, align 8, !dbg !862, !tbaa !182
  %64 = load i64, i64* %34, align 8, !dbg !863, !tbaa !177
  %65 = sub i64 %64, %33, !dbg !863
  store i64 %65, i64* %34, align 8, !dbg !863, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !864
  ret void, !dbg !864
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_map(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !865 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !875
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !875
  %7 = icmp slt i64 %2, 16, !dbg !877
  br i1 %7, label %8, label %12, !dbg !879

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !880
  %10 = and i8 %9, 15, !dbg !880
  %11 = or i8 %10, -128, !dbg !880
  store i8 %11, i8* %6, align 1, !dbg !882, !tbaa !91
  br label %32, !dbg !884

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !885
  br i1 %13, label %14, label %20, !dbg !887

; <label>:14:                                     ; preds = %12
  store i8 -34, i8* %6, align 1, !dbg !888, !tbaa !91
  %15 = lshr i64 %2, 8, !dbg !890
  %16 = trunc i64 %15 to i8, !dbg !891
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !892
  store i8 %16, i8* %17, align 1, !dbg !893, !tbaa !91
  %18 = trunc i64 %2 to i8, !dbg !894
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !895
  store i8 %18, i8* %19, align 1, !dbg !896, !tbaa !91
  br label %32, !dbg !897

; <label>:20:                                     ; preds = %12
  store i8 -33, i8* %6, align 1, !dbg !898, !tbaa !91
  %21 = lshr i64 %2, 24, !dbg !900
  %22 = trunc i64 %21 to i8, !dbg !901
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !902
  store i8 %22, i8* %23, align 1, !dbg !903, !tbaa !91
  %24 = lshr i64 %2, 16, !dbg !904
  %25 = trunc i64 %24 to i8, !dbg !905
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !906
  store i8 %25, i8* %26, align 1, !dbg !907, !tbaa !91
  %27 = lshr i64 %2, 8, !dbg !908
  %28 = trunc i64 %27 to i8, !dbg !909
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !910
  store i8 %28, i8* %29, align 1, !dbg !911, !tbaa !91
  %30 = trunc i64 %2 to i8, !dbg !912
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !913
  store i8 %30, i8* %31, align 1, !dbg !914, !tbaa !91
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !920
  %35 = load i64, i64* %34, align 8, !dbg !920, !tbaa !177
  %36 = icmp ult i64 %35, %33, !dbg !921
  br i1 %36, label %42, label %37, !dbg !922

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !923, !tbaa !154
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !924, !tbaa !182
  br label %56, !dbg !922

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !925
  %44 = load i64, i64* %43, align 8, !dbg !925, !tbaa !182
  %45 = add i64 %44, %33, !dbg !926
  %46 = shl i64 %45, 1, !dbg !927
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !929
  %48 = load i8*, i8** %47, align 8, !dbg !929, !tbaa !154
  %49 = add i64 %44, %35, !dbg !930
  %50 = bitcast i8** %4 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !937
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !939
  %52 = load i8*, i8** %4, align 8, !dbg !940, !tbaa !126
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !942
  store i8* %53, i8** %47, align 8, !dbg !943, !tbaa !154
  %54 = load i64, i64* %43, align 8, !dbg !944, !tbaa !182
  %55 = sub i64 %46, %54, !dbg !945
  store i64 %55, i64* %34, align 8, !dbg !946, !tbaa !177
  br label %56, !dbg !947

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !924
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !924
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !923
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !948
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !949
  %62 = load i64, i64* %57, align 8, !dbg !950, !tbaa !182
  %63 = add i64 %62, %33, !dbg !950
  store i64 %63, i64* %57, align 8, !dbg !950, !tbaa !182
  %64 = load i64, i64* %34, align 8, !dbg !951, !tbaa !177
  %65 = sub i64 %64, %33, !dbg !951
  store i64 %65, i64* %34, align 8, !dbg !951, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !952
  ret void, !dbg !952
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_string(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !953 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !961
  %5 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %3) #6, !dbg !963
  %6 = load i64, i64* %3, align 8, !dbg !965, !tbaa !159
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %5, i64 %6) #7, !dbg !966
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !967
  ret void, !dbg !967
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_bool(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !968 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5, !dbg !976
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6, !dbg !977
  %6 = icmp eq i32 %5, 0, !dbg !977
  %7 = select i1 %6, i8 -62, i8 -61, !dbg !977
  store i8 %7, i8* %4, align 1, !dbg !975, !tbaa !91
  %8 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !983
  %9 = load i64, i64* %8, align 8, !dbg !983, !tbaa !177
  %10 = icmp eq i64 %9, 0, !dbg !984
  br i1 %10, label %16, label %11, !dbg !985

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !dbg !986, !tbaa !154
  %14 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %15 = load i64, i64* %14, align 8, !dbg !987, !tbaa !182
  br label %29, !dbg !985

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !988
  %18 = load i64, i64* %17, align 8, !dbg !988, !tbaa !182
  %19 = shl i64 %18, 1, !dbg !989
  %20 = add i64 %19, 2, !dbg !989
  %21 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !991
  %22 = load i8*, i8** %21, align 8, !dbg !991, !tbaa !154
  %23 = bitcast i8** %3 to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !998
  %24 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1000
  %25 = load i8*, i8** %3, align 8, !dbg !1001, !tbaa !126
  %26 = call i8* %24(i8* %25, i8* %22, i64 %18, i64 %20) #6, !dbg !1002
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !1003
  store i8* %26, i8** %21, align 8, !dbg !1004, !tbaa !154
  %27 = load i64, i64* %17, align 8, !dbg !1005, !tbaa !182
  %28 = sub i64 %20, %27, !dbg !1006
  store i64 %28, i64* %8, align 8, !dbg !1007, !tbaa !177
  br label %29, !dbg !1008

; <label>:29:                                     ; preds = %11, %16
  %30 = phi i64* [ %14, %11 ], [ %17, %16 ], !dbg !987
  %31 = phi i64 [ %15, %11 ], [ %27, %16 ], !dbg !987
  %32 = phi i8* [ %13, %11 ], [ %26, %16 ], !dbg !986
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1009
  %34 = call i8* @memcpy(i8* %33, i8* nonnull %4, i64 1) #6, !dbg !1010
  %35 = load i64, i64* %30, align 8, !dbg !1011, !tbaa !182
  %36 = add i64 %35, 1, !dbg !1011
  store i64 %36, i64* %30, align 8, !dbg !1011, !tbaa !182
  %37 = load i64, i64* %8, align 8, !dbg !1012, !tbaa !177
  %38 = add i64 %37, -1, !dbg !1012
  store i64 %38, i64* %8, align 8, !dbg !1012, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5, !dbg !1013
  ret void, !dbg !1013
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_integer(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1014 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1024
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %3) #7, !dbg !1026
  ret void, !dbg !1027
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_number(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1028 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1036
  %4 = tail call i32 @__fpclassifyd(double %3) #6, !dbg !1038
  %5 = icmp eq i32 %4, 1, !dbg !1038
  br i1 %5, label %12, label %6, !dbg !1038

; <label>:6:                                      ; preds = %2
  %7 = fptosi double %3 to i64, !dbg !1038
  %8 = sitofp i64 %7 to double, !dbg !1038
  %9 = fcmp oeq double %3, %8, !dbg !1038
  br i1 %9, label %10, label %12, !dbg !1040

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1045
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %11) #6, !dbg !1047
  br label %13, !dbg !1048

; <label>:12:                                     ; preds = %6, %2
  tail call void @mp_encode_double(%struct.lua_State* %0, %struct.mp_buf* %1, double %3) #7, !dbg !1049
  br label %13

; <label>:13:                                     ; preds = %12, %10
  ret void, !dbg !1051
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_array(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1052 {
  %4 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #6, !dbg !1064
  tail call void @mp_encode_array(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %4) #7, !dbg !1066
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1067
  %5 = icmp eq i64 %4, 0, !dbg !1069
  br i1 %5, label %13, label %6, !dbg !1072

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %2, 1
  br label %8, !dbg !1072

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ 1, %6 ], [ %11, %8 ]
  %10 = uitofp i64 %9 to double, !dbg !1073
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #6, !dbg !1075
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #6, !dbg !1076
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %7) #7, !dbg !1077
  %11 = add i64 %9, 1, !dbg !1078
  %12 = icmp ugt i64 %11, %4, !dbg !1069
  br i1 %12, label %13, label %8, !dbg !1072, !llvm.loop !1079

; <label>:13:                                     ; preds = %8, %3
  ret void, !dbg !1081
}

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_type(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1082 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1102
  %8 = icmp eq i32 %7, 5, !dbg !1104
  %9 = icmp eq i32 %2, 16, !dbg !1106
  %10 = and i1 %9, %8, !dbg !1107
  %11 = select i1 %10, i32 0, i32 %7, !dbg !1107
  switch i32 %11, label %33 [
    i32 4, label %12
    i32 1, label %16
    i32 3, label %17
    i32 5, label %28
  ], !dbg !1108

; <label>:12:                                     ; preds = %3
  %13 = bitcast i64* %4 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1112
  %14 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %4) #6, !dbg !1114
  %15 = load i64, i64* %4, align 8, !dbg !1116, !tbaa !159
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %14, i64 %15) #6, !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1118
  br label %66, !dbg !1119

; <label>:16:                                     ; preds = %3
  tail call void @mp_encode_lua_bool(%struct.lua_State* %0, %struct.mp_buf* %1) #7, !dbg !1120
  br label %66, !dbg !1121

; <label>:17:                                     ; preds = %3
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1125
  %19 = tail call i32 @__fpclassifyd(double %18) #6, !dbg !1127
  %20 = icmp eq i32 %19, 1, !dbg !1127
  br i1 %20, label %27, label %21, !dbg !1127

; <label>:21:                                     ; preds = %17
  %22 = fptosi double %18 to i64, !dbg !1127
  %23 = sitofp i64 %22 to double, !dbg !1127
  %24 = fcmp oeq double %18, %23, !dbg !1127
  br i1 %24, label %25, label %27, !dbg !1128

; <label>:25:                                     ; preds = %21
  %26 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1132
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %26) #6, !dbg !1134
  br label %66, !dbg !1135

; <label>:27:                                     ; preds = %21, %17
  tail call void @mp_encode_double(%struct.lua_State* %0, %struct.mp_buf* %1, double %18) #6, !dbg !1136
  br label %66

; <label>:28:                                     ; preds = %3
  %29 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #6, !dbg !1146
  %30 = icmp eq i32 %29, 0, !dbg !1146
  br i1 %30, label %32, label %31, !dbg !1148

; <label>:31:                                     ; preds = %28
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1149
  br label %66, !dbg !1149

; <label>:32:                                     ; preds = %28
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1150
  br label %66

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %34) #5, !dbg !1153
  store i8 -64, i8* %34, align 1, !dbg !1154, !tbaa !91
  %35 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1160
  %36 = load i64, i64* %35, align 8, !dbg !1160, !tbaa !177
  %37 = icmp eq i64 %36, 0, !dbg !1161
  br i1 %37, label %43, label %38, !dbg !1162

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %40 = load i8*, i8** %39, align 8, !dbg !1163, !tbaa !154
  %41 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %42 = load i64, i64* %41, align 8, !dbg !1164, !tbaa !182
  br label %56, !dbg !1162

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1165
  %45 = load i64, i64* %44, align 8, !dbg !1165, !tbaa !182
  %46 = shl i64 %45, 1, !dbg !1166
  %47 = add i64 %46, 2, !dbg !1166
  %48 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1168
  %49 = load i8*, i8** %48, align 8, !dbg !1168, !tbaa !154
  %50 = bitcast i8** %5 to i8*, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !1175
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !1177
  %52 = load i8*, i8** %5, align 8, !dbg !1178, !tbaa !126
  %53 = call i8* %51(i8* %52, i8* %49, i64 %45, i64 %47) #6, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !1180
  store i8* %53, i8** %48, align 8, !dbg !1181, !tbaa !154
  %54 = load i64, i64* %44, align 8, !dbg !1182, !tbaa !182
  %55 = sub i64 %47, %54, !dbg !1183
  store i64 %55, i64* %35, align 8, !dbg !1184, !tbaa !177
  br label %56, !dbg !1185

; <label>:56:                                     ; preds = %38, %43
  %57 = phi i64* [ %41, %38 ], [ %44, %43 ], !dbg !1164
  %58 = phi i64 [ %42, %38 ], [ %54, %43 ], !dbg !1164
  %59 = phi i8* [ %40, %38 ], [ %53, %43 ], !dbg !1163
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !1186
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %34, i64 1) #6, !dbg !1187
  %62 = load i64, i64* %57, align 8, !dbg !1188, !tbaa !182
  %63 = add i64 %62, 1, !dbg !1188
  store i64 %63, i64* %57, align 8, !dbg !1188, !tbaa !182
  %64 = load i64, i64* %35, align 8, !dbg !1189, !tbaa !177
  %65 = add i64 %64, -1, !dbg !1189
  store i64 %65, i64* %35, align 8, !dbg !1189, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #5, !dbg !1190
  br label %66, !dbg !1191

; <label>:66:                                     ; preds = %32, %31, %27, %25, %56, %16, %12
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_map(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1194 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1204
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1205
  %4 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1206
  %5 = icmp eq i32 %4, 0, !dbg !1207
  br i1 %5, label %11, label %6, !dbg !1207

; <label>:6:                                      ; preds = %3, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %3 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1208
  %8 = add i64 %7, 1, !dbg !1210
  %9 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1206
  %10 = icmp eq i32 %9, 0, !dbg !1207
  br i1 %10, label %11, label %6, !dbg !1207, !llvm.loop !1211

; <label>:11:                                     ; preds = %6, %3
  %12 = phi i64 [ 0, %3 ], [ %8, %6 ], !dbg !1213
  tail call void @mp_encode_map(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %12) #7, !dbg !1214
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1215
  %13 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1216
  %14 = icmp eq i32 %13, 0, !dbg !1217
  br i1 %14, label %20, label %15, !dbg !1217

; <label>:15:                                     ; preds = %11
  %16 = add nsw i32 %2, 1
  br label %17, !dbg !1217

; <label>:17:                                     ; preds = %15, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6, !dbg !1218
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1220
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1221
  %18 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1216
  %19 = icmp eq i32 %18, 0, !dbg !1217
  br i1 %19, label %20, label %17, !dbg !1217, !llvm.loop !1222

; <label>:20:                                     ; preds = %17, %11
  ret void, !dbg !1224
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @table_is_an_array(%struct.lua_State*) local_unnamed_addr #0 !dbg !1225 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1235
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1237
  %3 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1238
  %4 = icmp eq i32 %3, 0, !dbg !1239
  br i1 %4, label %29, label %5, !dbg !1239

; <label>:5:                                      ; preds = %1, %21
  %6 = phi i32 [ %26, %21 ], [ 0, %1 ]
  %7 = phi i32 [ %25, %21 ], [ 0, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1240
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1242
  %9 = icmp eq i32 %8, 3, !dbg !1244
  br i1 %9, label %10, label %20, !dbg !1245

; <label>:10:                                     ; preds = %5
  %11 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1246
  %12 = fcmp ugt double %11, 0.000000e+00, !dbg !1248
  br i1 %12, label %13, label %20, !dbg !1249

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__fpclassifyd(double %11) #6, !dbg !1250
  %15 = icmp eq i32 %14, 1, !dbg !1250
  br i1 %15, label %20, label %16, !dbg !1250

; <label>:16:                                     ; preds = %13
  %17 = fptosi double %11 to i32, !dbg !1250
  %18 = sitofp i32 %17 to double, !dbg !1250
  %19 = fcmp oeq double %11, %18, !dbg !1250
  br i1 %19, label %21, label %20, !dbg !1251

; <label>:20:                                     ; preds = %10, %5, %16, %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1252
  br label %34, !dbg !1254

; <label>:21:                                     ; preds = %16
  %22 = sitofp i32 %7 to double, !dbg !1255
  %23 = fcmp ogt double %11, %22, !dbg !1256
  %24 = select i1 %23, double %11, double %22, !dbg !1257
  %25 = fptosi double %24 to i32, !dbg !1258
  %26 = add nuw nsw i32 %6, 1, !dbg !1259
  %27 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1238
  %28 = icmp eq i32 %27, 0, !dbg !1239
  br i1 %28, label %29, label %5, !dbg !1239, !llvm.loop !1260

; <label>:29:                                     ; preds = %21, %1
  %30 = phi i32 [ 0, %1 ], [ %25, %21 ], !dbg !1262
  %31 = phi i32 [ 0, %1 ], [ %26, %21 ], !dbg !1262
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1263
  %32 = icmp eq i32 %30, %31, !dbg !1264
  %33 = zext i1 %32 to i32, !dbg !1264
  br label %34, !dbg !1265

; <label>:34:                                     ; preds = %29, %20
  %35 = phi i32 [ 0, %20 ], [ %33, %29 ], !dbg !1266
  ret i32 %35, !dbg !1267
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table(%struct.lua_State*, %struct.mp_buf*, i32) local_unnamed_addr #0 !dbg !1138 {
  %4 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #7, !dbg !1271
  %5 = icmp eq i32 %4, 0, !dbg !1271
  br i1 %5, label %7, label %6, !dbg !1272

; <label>:6:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1273
  br label %8, !dbg !1273

; <label>:7:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1274
  br label %8

; <label>:8:                                      ; preds = %7, %6
  ret void, !dbg !1275
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_null(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1089 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1278
  store i8 -64, i8* %5, align 1, !dbg !1280, !tbaa !91
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1286
  %7 = load i64, i64* %6, align 8, !dbg !1286, !tbaa !177
  %8 = icmp eq i64 %7, 0, !dbg !1287
  br i1 %8, label %14, label %9, !dbg !1288

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !dbg !1289, !tbaa !154
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !dbg !1290, !tbaa !182
  br label %27, !dbg !1288

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1291
  %16 = load i64, i64* %15, align 8, !dbg !1291, !tbaa !182
  %17 = shl i64 %16, 1, !dbg !1292
  %18 = add i64 %17, 2, !dbg !1292
  %19 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1294
  %20 = load i8*, i8** %19, align 8, !dbg !1294, !tbaa !154
  %21 = bitcast i8** %3 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1301
  %22 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1303
  %23 = load i8*, i8** %3, align 8, !dbg !1304, !tbaa !126
  %24 = call i8* %22(i8* %23, i8* %20, i64 %16, i64 %18) #6, !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1306
  store i8* %24, i8** %19, align 8, !dbg !1307, !tbaa !154
  %25 = load i64, i64* %15, align 8, !dbg !1308, !tbaa !182
  %26 = sub i64 %18, %25, !dbg !1309
  store i64 %26, i64* %6, align 8, !dbg !1310, !tbaa !177
  br label %27, !dbg !1311

; <label>:27:                                     ; preds = %9, %14
  %28 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !1290
  %29 = phi i64 [ %13, %9 ], [ %25, %14 ], !dbg !1290
  %30 = phi i8* [ %11, %9 ], [ %24, %14 ], !dbg !1289
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1312
  %32 = call i8* @memcpy(i8* %31, i8* nonnull %5, i64 1) #6, !dbg !1313
  %33 = load i64, i64* %28, align 8, !dbg !1314, !tbaa !182
  %34 = add i64 %33, 1, !dbg !1314
  store i64 %34, i64* %28, align 8, !dbg !1314, !tbaa !182
  %35 = load i64, i64* %6, align 8, !dbg !1315, !tbaa !177
  %36 = add i64 %35, -1, !dbg !1315
  store i64 %36, i64* %6, align 8, !dbg !1315, !tbaa !177
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1316
  ret void, !dbg !1316
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_pack(%struct.lua_State*) #0 !dbg !1317 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1324
  %6 = icmp eq i32 %5, 0, !dbg !1326
  br i1 %6, label %7, label %9, !dbg !1328

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1329
  br label %49, !dbg !1330

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %5) #6, !dbg !1331
  %11 = icmp eq i32 %10, 0, !dbg !1331
  br i1 %11, label %12, label %14, !dbg !1333

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1334
  br label %49, !dbg !1335

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8** %4 to i8*, !dbg !1345
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1345
  %16 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !1347
  %17 = load i8*, i8** %4, align 8, !dbg !1348, !tbaa !126
  %18 = call i8* %16(i8* %17, i8* null, i64 0, i64 24) #6, !dbg !1349
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1350
  %19 = bitcast i8* %18 to %struct.mp_buf*, !dbg !1351
  %20 = bitcast i8* %18 to i8**, !dbg !1352
  store i8* null, i8** %20, align 8, !dbg !1353, !tbaa !154
  %21 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !1354
  %22 = bitcast i8* %21 to i64*, !dbg !1354
  %23 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !1355
  %24 = bitcast i8* %23 to i64*, !dbg !1355
  %25 = bitcast i8* %23 to <2 x i64>*, !dbg !1356
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 8, !dbg !1356, !tbaa !159
  %26 = icmp slt i32 %5, 1, !dbg !1359
  br i1 %26, label %38, label %27, !dbg !1362

; <label>:27:                                     ; preds = %14, %27
  %28 = phi i32 [ %34, %27 ], [ 1, %14 ]
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1363
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %28) #6, !dbg !1365
  call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %19, i32 0) #7, !dbg !1366
  %29 = load i8*, i8** %20, align 8, !dbg !1367, !tbaa !154
  %30 = load i64, i64* %24, align 8, !dbg !1368, !tbaa !182
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %29, i64 %30) #6, !dbg !1369
  %31 = load i64, i64* %24, align 8, !dbg !1370, !tbaa !182
  %32 = load i64, i64* %22, align 8, !dbg !1371, !tbaa !177
  %33 = add i64 %32, %31, !dbg !1371
  store i64 %33, i64* %22, align 8, !dbg !1371, !tbaa !177
  store i64 0, i64* %24, align 8, !dbg !1372, !tbaa !182
  %34 = add nuw nsw i32 %28, 1, !dbg !1373
  %35 = icmp eq i32 %28, %5, !dbg !1359
  br i1 %35, label %36, label %27, !dbg !1362, !llvm.loop !1374

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %20, align 8, !dbg !1376, !tbaa !154
  br label %38, !dbg !1376

; <label>:38:                                     ; preds = %36, %14
  %39 = phi i64 [ %33, %36 ], [ 0, %14 ], !dbg !1378
  %40 = phi i8* [ %37, %36 ], [ null, %14 ], !dbg !1376
  %41 = bitcast i8** %3 to i8*, !dbg !1387
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1387
  %42 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1389
  %43 = load i8*, i8** %3, align 8, !dbg !1390, !tbaa !126
  %44 = call i8* %42(i8* %43, i8* %40, i64 %39, i64 0) #6, !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1392
  %45 = bitcast i8** %2 to i8*, !dbg !1399
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1399
  %46 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %2) #6, !dbg !1401
  %47 = load i8*, i8** %2, align 8, !dbg !1402, !tbaa !126
  %48 = call i8* %46(i8* %47, i8* %18, i64 24, i64 0) #6, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1404
  call void @lua_concat(%struct.lua_State* %0, i32 %5) #6, !dbg !1405
  br label %49, !dbg !1406

; <label>:49:                                     ; preds = %38, %12, %7
  %50 = phi i32 [ %8, %7 ], [ 1, %38 ], [ %13, %12 ], !dbg !1407
  ret i32 %50, !dbg !1408
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_array(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1409 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1420
  br i1 %4, label %6, label %5, !dbg !1420

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.mp_decode_to_lua_array, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1420
  unreachable, !dbg !1420

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1422
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1423
  %7 = icmp eq i64 %2, 0, !dbg !1424
  br i1 %7, label %20, label %8, !dbg !1424

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1424

; <label>:10:                                     ; preds = %8, %17
  %11 = phi i64 [ %2, %8 ], [ %13, %17 ]
  %12 = phi i32 [ 1, %8 ], [ %18, %17 ]
  %13 = add i64 %11, -1, !dbg !1425
  %14 = sitofp i32 %12 to double, !dbg !1426
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #6, !dbg !1428
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1429
  %15 = load i32, i32* %9, align 8, !dbg !1430, !tbaa !276
  %16 = icmp eq i32 %15, 0, !dbg !1432
  br i1 %16, label %17, label %20, !dbg !1433

; <label>:17:                                     ; preds = %10
  %18 = add nuw nsw i32 %12, 1, !dbg !1434
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1435
  %19 = icmp eq i64 %13, 0, !dbg !1424
  br i1 %19, label %20, label %10, !dbg !1424, !llvm.loop !1436

; <label>:20:                                     ; preds = %10, %17, %6
  ret void, !dbg !1438
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_type(%struct.lua_State*, %struct.mp_cur*) local_unnamed_addr #0 !dbg !1439 {
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 1, !dbg !1477
  %6 = load i64, i64* %5, align 8, !dbg !1477, !tbaa !273
  %7 = icmp eq i64 %6, 0, !dbg !1477
  br i1 %7, label %8, label %10, !dbg !1480

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1481
  store i32 1, i32* %9, align 8, !dbg !1481, !tbaa !276
  br label %321, !dbg !1481

; <label>:10:                                     ; preds = %2
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1483
  %11 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 0, !dbg !1484
  %12 = load i8*, i8** %11, align 8, !dbg !1484, !tbaa !268
  %13 = load i8, i8* %12, align 1, !dbg !1485, !tbaa !91
  %14 = zext i8 %13 to i32, !dbg !1485
  switch i8 %13, label %464 [
    i8 -52, label %15
    i8 -48, label %28
    i8 -51, label %41
    i8 -47, label %59
    i8 -50, label %78
    i8 -46, label %106
    i8 -49, label %135
    i8 -45, label %183
    i8 -64, label %232
    i8 -61, label %237
    i8 -62, label %242
    i8 -54, label %247
    i8 -53, label %271
    i8 -39, label %302
    i8 -38, label %322
    i8 -37, label %346
    i8 -36, label %380
    i8 -35, label %396
    i8 -34, label %422
    i8 -33, label %438
  ], !dbg !1486

; <label>:15:                                     ; preds = %10
  %16 = load i64, i64* %5, align 8, !dbg !1487, !tbaa !273
  %17 = icmp ult i64 %16, 2, !dbg !1487
  br i1 %17, label %18, label %20, !dbg !1490

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1491
  store i32 1, i32* %19, align 8, !dbg !1491, !tbaa !276
  br label %321, !dbg !1491

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1493
  %22 = load i8, i8* %21, align 1, !dbg !1493, !tbaa !91
  %23 = zext i8 %22 to i64, !dbg !1493
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #6, !dbg !1493
  %24 = load i8*, i8** %11, align 8, !dbg !1494, !tbaa !268
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !1494
  store i8* %25, i8** %11, align 8, !dbg !1494, !tbaa !268
  %26 = load i64, i64* %5, align 8, !dbg !1494, !tbaa !273
  %27 = add i64 %26, -2, !dbg !1494
  store i64 %27, i64* %5, align 8, !dbg !1494, !tbaa !273
  br label %321, !dbg !1496

; <label>:28:                                     ; preds = %10
  %29 = load i64, i64* %5, align 8, !dbg !1497, !tbaa !273
  %30 = icmp ult i64 %29, 2, !dbg !1497
  br i1 %30, label %31, label %33, !dbg !1500

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1501
  store i32 1, i32* %32, align 8, !dbg !1501, !tbaa !276
  br label %321, !dbg !1501

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1503
  %35 = load i8, i8* %34, align 1, !dbg !1503, !tbaa !91
  %36 = sext i8 %35 to i64, !dbg !1504
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %36) #6, !dbg !1505
  %37 = load i8*, i8** %11, align 8, !dbg !1506, !tbaa !268
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1506
  store i8* %38, i8** %11, align 8, !dbg !1506, !tbaa !268
  %39 = load i64, i64* %5, align 8, !dbg !1506, !tbaa !273
  %40 = add i64 %39, -2, !dbg !1506
  store i64 %40, i64* %5, align 8, !dbg !1506, !tbaa !273
  br label %321, !dbg !1508

; <label>:41:                                     ; preds = %10
  %42 = load i64, i64* %5, align 8, !dbg !1509, !tbaa !273
  %43 = icmp ult i64 %42, 3, !dbg !1509
  br i1 %43, label %44, label %46, !dbg !1512

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1513
  store i32 1, i32* %45, align 8, !dbg !1513, !tbaa !276
  br label %321, !dbg !1513

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1515
  %48 = load i8, i8* %47, align 1, !dbg !1515, !tbaa !91
  %49 = zext i8 %48 to i64, !dbg !1515
  %50 = shl nuw nsw i64 %49, 8, !dbg !1515
  %51 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1515
  %52 = load i8, i8* %51, align 1, !dbg !1515, !tbaa !91
  %53 = zext i8 %52 to i64, !dbg !1515
  %54 = or i64 %50, %53, !dbg !1515
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %54) #6, !dbg !1515
  %55 = load i8*, i8** %11, align 8, !dbg !1516, !tbaa !268
  %56 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !1516
  store i8* %56, i8** %11, align 8, !dbg !1516, !tbaa !268
  %57 = load i64, i64* %5, align 8, !dbg !1516, !tbaa !273
  %58 = add i64 %57, -3, !dbg !1516
  store i64 %58, i64* %5, align 8, !dbg !1516, !tbaa !273
  br label %321, !dbg !1518

; <label>:59:                                     ; preds = %10
  %60 = load i64, i64* %5, align 8, !dbg !1519, !tbaa !273
  %61 = icmp ult i64 %60, 3, !dbg !1519
  br i1 %61, label %62, label %64, !dbg !1522

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1523
  store i32 1, i32* %63, align 8, !dbg !1523, !tbaa !276
  br label %321, !dbg !1523

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1525
  %66 = load i8, i8* %65, align 1, !dbg !1525, !tbaa !91
  %67 = zext i8 %66 to i16, !dbg !1525
  %68 = shl nuw i16 %67, 8, !dbg !1526
  %69 = sext i16 %68 to i64, !dbg !1527
  %70 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1528
  %71 = load i8, i8* %70, align 1, !dbg !1528, !tbaa !91
  %72 = zext i8 %71 to i64, !dbg !1528
  %73 = or i64 %69, %72, !dbg !1529
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %73) #6, !dbg !1530
  %74 = load i8*, i8** %11, align 8, !dbg !1531, !tbaa !268
  %75 = getelementptr inbounds i8, i8* %74, i64 3, !dbg !1531
  store i8* %75, i8** %11, align 8, !dbg !1531, !tbaa !268
  %76 = load i64, i64* %5, align 8, !dbg !1531, !tbaa !273
  %77 = add i64 %76, -3, !dbg !1531
  store i64 %77, i64* %5, align 8, !dbg !1531, !tbaa !273
  br label %321, !dbg !1533

; <label>:78:                                     ; preds = %10
  %79 = load i64, i64* %5, align 8, !dbg !1534, !tbaa !273
  %80 = icmp ult i64 %79, 5, !dbg !1534
  br i1 %80, label %81, label %83, !dbg !1537

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1538
  store i32 1, i32* %82, align 8, !dbg !1538, !tbaa !276
  br label %321, !dbg !1538

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1540
  %85 = load i8, i8* %84, align 1, !dbg !1540, !tbaa !91
  %86 = zext i8 %85 to i64, !dbg !1540
  %87 = shl nuw nsw i64 %86, 24, !dbg !1540
  %88 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1540
  %89 = load i8, i8* %88, align 1, !dbg !1540, !tbaa !91
  %90 = zext i8 %89 to i64, !dbg !1540
  %91 = shl nuw nsw i64 %90, 16, !dbg !1540
  %92 = or i64 %91, %87, !dbg !1540
  %93 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1540
  %94 = load i8, i8* %93, align 1, !dbg !1540, !tbaa !91
  %95 = zext i8 %94 to i64, !dbg !1540
  %96 = shl nuw nsw i64 %95, 8, !dbg !1540
  %97 = or i64 %92, %96, !dbg !1540
  %98 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1540
  %99 = load i8, i8* %98, align 1, !dbg !1540, !tbaa !91
  %100 = zext i8 %99 to i64, !dbg !1540
  %101 = or i64 %97, %100, !dbg !1540
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %101) #6, !dbg !1540
  %102 = load i8*, i8** %11, align 8, !dbg !1541, !tbaa !268
  %103 = getelementptr inbounds i8, i8* %102, i64 5, !dbg !1541
  store i8* %103, i8** %11, align 8, !dbg !1541, !tbaa !268
  %104 = load i64, i64* %5, align 8, !dbg !1541, !tbaa !273
  %105 = add i64 %104, -5, !dbg !1541
  store i64 %105, i64* %5, align 8, !dbg !1541, !tbaa !273
  br label %321, !dbg !1543

; <label>:106:                                    ; preds = %10
  %107 = load i64, i64* %5, align 8, !dbg !1544, !tbaa !273
  %108 = icmp ult i64 %107, 5, !dbg !1544
  br i1 %108, label %109, label %111, !dbg !1547

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1548
  store i32 1, i32* %110, align 8, !dbg !1548, !tbaa !276
  br label %321, !dbg !1548

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1550
  %113 = load i8, i8* %112, align 1, !dbg !1550, !tbaa !91
  %114 = zext i8 %113 to i32, !dbg !1551
  %115 = shl nuw i32 %114, 24, !dbg !1552
  %116 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1553
  %117 = load i8, i8* %116, align 1, !dbg !1553, !tbaa !91
  %118 = zext i8 %117 to i32, !dbg !1554
  %119 = shl nuw nsw i32 %118, 16, !dbg !1555
  %120 = or i32 %119, %115, !dbg !1556
  %121 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1557
  %122 = load i8, i8* %121, align 1, !dbg !1557, !tbaa !91
  %123 = zext i8 %122 to i32, !dbg !1558
  %124 = shl nuw nsw i32 %123, 8, !dbg !1559
  %125 = or i32 %120, %124, !dbg !1560
  %126 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1561
  %127 = load i8, i8* %126, align 1, !dbg !1561, !tbaa !91
  %128 = zext i8 %127 to i32, !dbg !1562
  %129 = or i32 %125, %128, !dbg !1563
  %130 = sext i32 %129 to i64, !dbg !1564
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %130) #6, !dbg !1565
  %131 = load i8*, i8** %11, align 8, !dbg !1566, !tbaa !268
  %132 = getelementptr inbounds i8, i8* %131, i64 5, !dbg !1566
  store i8* %132, i8** %11, align 8, !dbg !1566, !tbaa !268
  %133 = load i64, i64* %5, align 8, !dbg !1566, !tbaa !273
  %134 = add i64 %133, -5, !dbg !1566
  store i64 %134, i64* %5, align 8, !dbg !1566, !tbaa !273
  br label %321, !dbg !1568

; <label>:135:                                    ; preds = %10
  %136 = load i64, i64* %5, align 8, !dbg !1569, !tbaa !273
  %137 = icmp ult i64 %136, 9, !dbg !1569
  br i1 %137, label %138, label %140, !dbg !1572

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1573
  store i32 1, i32* %139, align 8, !dbg !1573, !tbaa !276
  br label %321, !dbg !1573

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1575
  %142 = load i8, i8* %141, align 1, !dbg !1575, !tbaa !91
  %143 = zext i8 %142 to i64, !dbg !1575
  %144 = shl nuw i64 %143, 56, !dbg !1575
  %145 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1575
  %146 = load i8, i8* %145, align 1, !dbg !1575, !tbaa !91
  %147 = zext i8 %146 to i64, !dbg !1575
  %148 = shl nuw nsw i64 %147, 48, !dbg !1575
  %149 = or i64 %148, %144, !dbg !1575
  %150 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1575
  %151 = load i8, i8* %150, align 1, !dbg !1575, !tbaa !91
  %152 = zext i8 %151 to i64, !dbg !1575
  %153 = shl nuw nsw i64 %152, 40, !dbg !1575
  %154 = or i64 %149, %153, !dbg !1575
  %155 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1575
  %156 = load i8, i8* %155, align 1, !dbg !1575, !tbaa !91
  %157 = zext i8 %156 to i64, !dbg !1575
  %158 = shl nuw nsw i64 %157, 32, !dbg !1575
  %159 = or i64 %154, %158, !dbg !1575
  %160 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1575
  %161 = load i8, i8* %160, align 1, !dbg !1575, !tbaa !91
  %162 = zext i8 %161 to i64, !dbg !1575
  %163 = shl nuw nsw i64 %162, 24, !dbg !1575
  %164 = or i64 %159, %163, !dbg !1575
  %165 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1575
  %166 = load i8, i8* %165, align 1, !dbg !1575, !tbaa !91
  %167 = zext i8 %166 to i64, !dbg !1575
  %168 = shl nuw nsw i64 %167, 16, !dbg !1575
  %169 = or i64 %164, %168, !dbg !1575
  %170 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1575
  %171 = load i8, i8* %170, align 1, !dbg !1575, !tbaa !91
  %172 = zext i8 %171 to i64, !dbg !1575
  %173 = shl nuw nsw i64 %172, 8, !dbg !1575
  %174 = or i64 %169, %173, !dbg !1575
  %175 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1575
  %176 = load i8, i8* %175, align 1, !dbg !1575, !tbaa !91
  %177 = zext i8 %176 to i64, !dbg !1575
  %178 = or i64 %174, %177, !dbg !1575
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %178) #6, !dbg !1575
  %179 = load i8*, i8** %11, align 8, !dbg !1576, !tbaa !268
  %180 = getelementptr inbounds i8, i8* %179, i64 9, !dbg !1576
  store i8* %180, i8** %11, align 8, !dbg !1576, !tbaa !268
  %181 = load i64, i64* %5, align 8, !dbg !1576, !tbaa !273
  %182 = add i64 %181, -9, !dbg !1576
  store i64 %182, i64* %5, align 8, !dbg !1576, !tbaa !273
  br label %321, !dbg !1578

; <label>:183:                                    ; preds = %10
  %184 = load i64, i64* %5, align 8, !dbg !1579, !tbaa !273
  %185 = icmp ult i64 %184, 9, !dbg !1579
  br i1 %185, label %186, label %188, !dbg !1582

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1583
  store i32 1, i32* %187, align 8, !dbg !1583, !tbaa !276
  br label %321, !dbg !1583

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1585
  %190 = load i8, i8* %189, align 1, !dbg !1585, !tbaa !91
  %191 = zext i8 %190 to i64, !dbg !1586
  %192 = shl nuw i64 %191, 56, !dbg !1587
  %193 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1588
  %194 = load i8, i8* %193, align 1, !dbg !1588, !tbaa !91
  %195 = zext i8 %194 to i64, !dbg !1589
  %196 = shl nuw nsw i64 %195, 48, !dbg !1590
  %197 = or i64 %196, %192, !dbg !1591
  %198 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1592
  %199 = load i8, i8* %198, align 1, !dbg !1592, !tbaa !91
  %200 = zext i8 %199 to i64, !dbg !1593
  %201 = shl nuw nsw i64 %200, 40, !dbg !1594
  %202 = or i64 %197, %201, !dbg !1595
  %203 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1596
  %204 = load i8, i8* %203, align 1, !dbg !1596, !tbaa !91
  %205 = zext i8 %204 to i64, !dbg !1597
  %206 = shl nuw nsw i64 %205, 32, !dbg !1598
  %207 = or i64 %202, %206, !dbg !1599
  %208 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1600
  %209 = load i8, i8* %208, align 1, !dbg !1600, !tbaa !91
  %210 = zext i8 %209 to i64, !dbg !1601
  %211 = shl nuw nsw i64 %210, 24, !dbg !1602
  %212 = or i64 %207, %211, !dbg !1603
  %213 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1604
  %214 = load i8, i8* %213, align 1, !dbg !1604, !tbaa !91
  %215 = zext i8 %214 to i64, !dbg !1605
  %216 = shl nuw nsw i64 %215, 16, !dbg !1606
  %217 = or i64 %212, %216, !dbg !1607
  %218 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1608
  %219 = load i8, i8* %218, align 1, !dbg !1608, !tbaa !91
  %220 = zext i8 %219 to i64, !dbg !1609
  %221 = shl nuw nsw i64 %220, 8, !dbg !1610
  %222 = or i64 %217, %221, !dbg !1611
  %223 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1612
  %224 = load i8, i8* %223, align 1, !dbg !1612, !tbaa !91
  %225 = zext i8 %224 to i64, !dbg !1613
  %226 = or i64 %222, %225, !dbg !1614
  %227 = sitofp i64 %226 to double, !dbg !1615
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %227) #6, !dbg !1616
  %228 = load i8*, i8** %11, align 8, !dbg !1617, !tbaa !268
  %229 = getelementptr inbounds i8, i8* %228, i64 9, !dbg !1617
  store i8* %229, i8** %11, align 8, !dbg !1617, !tbaa !268
  %230 = load i64, i64* %5, align 8, !dbg !1617, !tbaa !273
  %231 = add i64 %230, -9, !dbg !1617
  store i64 %231, i64* %5, align 8, !dbg !1617, !tbaa !273
  br label %321, !dbg !1619

; <label>:232:                                    ; preds = %10
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1620
  %233 = load i8*, i8** %11, align 8, !dbg !1621, !tbaa !268
  %234 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1621
  store i8* %234, i8** %11, align 8, !dbg !1621, !tbaa !268
  %235 = load i64, i64* %5, align 8, !dbg !1621, !tbaa !273
  %236 = add i64 %235, -1, !dbg !1621
  store i64 %236, i64* %5, align 8, !dbg !1621, !tbaa !273
  br label %321, !dbg !1623

; <label>:237:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !1624
  %238 = load i8*, i8** %11, align 8, !dbg !1625, !tbaa !268
  %239 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1625
  store i8* %239, i8** %11, align 8, !dbg !1625, !tbaa !268
  %240 = load i64, i64* %5, align 8, !dbg !1625, !tbaa !273
  %241 = add i64 %240, -1, !dbg !1625
  store i64 %241, i64* %5, align 8, !dbg !1625, !tbaa !273
  br label %321, !dbg !1627

; <label>:242:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6, !dbg !1628
  %243 = load i8*, i8** %11, align 8, !dbg !1629, !tbaa !268
  %244 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1629
  store i8* %244, i8** %11, align 8, !dbg !1629, !tbaa !268
  %245 = load i64, i64* %5, align 8, !dbg !1629, !tbaa !273
  %246 = add i64 %245, -1, !dbg !1629
  store i64 %246, i64* %5, align 8, !dbg !1629, !tbaa !273
  br label %321, !dbg !1631

; <label>:247:                                    ; preds = %10
  %248 = load i64, i64* %5, align 8, !dbg !1632, !tbaa !273
  %249 = icmp ult i64 %248, 5, !dbg !1632
  br i1 %249, label %250, label %252, !dbg !1635

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1636
  store i32 1, i32* %251, align 8, !dbg !1636, !tbaa !276
  br label %321, !dbg !1636

; <label>:252:                                    ; preds = %247
  %253 = bitcast float* %3 to i8*, !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1638
  %254 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1639
  %255 = call i8* @memcpy(i8* nonnull %253, i8* nonnull %254, i64 4) #6, !dbg !1640
  %256 = getelementptr inbounds float, float* %3, i64 1, !dbg !1647
  %257 = bitcast float* %256 to i8*, !dbg !1647
  %258 = getelementptr inbounds i8, i8* %257, i64 -1, !dbg !1649
  %259 = load i8, i8* %253, align 4, !dbg !1650, !tbaa !91
  %260 = load i8, i8* %258, align 1, !dbg !1652, !tbaa !91
  store i8 %260, i8* %253, align 4, !dbg !1653, !tbaa !91
  store i8 %259, i8* %258, align 1, !dbg !1654, !tbaa !91
  %261 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !1655
  %262 = getelementptr inbounds i8, i8* %257, i64 -2, !dbg !1649
  %263 = load i8, i8* %261, align 1, !dbg !1650, !tbaa !91
  %264 = load i8, i8* %262, align 2, !dbg !1652, !tbaa !91
  store i8 %264, i8* %261, align 1, !dbg !1653, !tbaa !91
  store i8 %263, i8* %262, align 2, !dbg !1654, !tbaa !91
  %265 = load float, float* %3, align 4, !dbg !1656, !tbaa !437
  %266 = fpext float %265 to double, !dbg !1656
  call void @lua_pushnumber(%struct.lua_State* %0, double %266) #6, !dbg !1658
  %267 = load i8*, i8** %11, align 8, !dbg !1659, !tbaa !268
  %268 = getelementptr inbounds i8, i8* %267, i64 5, !dbg !1659
  store i8* %268, i8** %11, align 8, !dbg !1659, !tbaa !268
  %269 = load i64, i64* %5, align 8, !dbg !1659, !tbaa !273
  %270 = add i64 %269, -5, !dbg !1659
  store i64 %270, i64* %5, align 8, !dbg !1659, !tbaa !273
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1661
  br label %321, !dbg !1662

; <label>:271:                                    ; preds = %10
  %272 = load i64, i64* %5, align 8, !dbg !1663, !tbaa !273
  %273 = icmp ult i64 %272, 9, !dbg !1663
  br i1 %273, label %274, label %276, !dbg !1666

; <label>:274:                                    ; preds = %271
  %275 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1667
  store i32 1, i32* %275, align 8, !dbg !1667, !tbaa !276
  br label %321, !dbg !1667

; <label>:276:                                    ; preds = %271
  %277 = bitcast double* %4 to i8*, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1669
  %278 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1670
  %279 = call i8* @memcpy(i8* nonnull %277, i8* nonnull %278, i64 8) #6, !dbg !1671
  %280 = getelementptr inbounds double, double* %4, i64 1, !dbg !1678
  %281 = bitcast double* %280 to i8*, !dbg !1678
  %282 = getelementptr inbounds i8, i8* %281, i64 -1, !dbg !1680
  %283 = load i8, i8* %277, align 8, !dbg !1681, !tbaa !91
  %284 = load i8, i8* %282, align 1, !dbg !1683, !tbaa !91
  store i8 %284, i8* %277, align 8, !dbg !1684, !tbaa !91
  store i8 %283, i8* %282, align 1, !dbg !1685, !tbaa !91
  %285 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1686
  %286 = getelementptr inbounds i8, i8* %281, i64 -2, !dbg !1680
  %287 = load i8, i8* %285, align 1, !dbg !1681, !tbaa !91
  %288 = load i8, i8* %286, align 2, !dbg !1683, !tbaa !91
  store i8 %288, i8* %285, align 1, !dbg !1684, !tbaa !91
  store i8 %287, i8* %286, align 2, !dbg !1685, !tbaa !91
  %289 = getelementptr inbounds i8, i8* %277, i64 2, !dbg !1686
  %290 = getelementptr inbounds i8, i8* %281, i64 -3, !dbg !1680
  %291 = load i8, i8* %289, align 2, !dbg !1681, !tbaa !91
  %292 = load i8, i8* %290, align 1, !dbg !1683, !tbaa !91
  store i8 %292, i8* %289, align 2, !dbg !1684, !tbaa !91
  store i8 %291, i8* %290, align 1, !dbg !1685, !tbaa !91
  %293 = getelementptr inbounds i8, i8* %277, i64 3, !dbg !1686
  %294 = getelementptr inbounds i8, i8* %281, i64 -4, !dbg !1680
  %295 = load i8, i8* %293, align 1, !dbg !1681, !tbaa !91
  %296 = load i8, i8* %294, align 4, !dbg !1683, !tbaa !91
  store i8 %296, i8* %293, align 1, !dbg !1684, !tbaa !91
  store i8 %295, i8* %294, align 4, !dbg !1685, !tbaa !91
  %297 = load double, double* %4, align 8, !dbg !1687, !tbaa !430
  call void @lua_pushnumber(%struct.lua_State* %0, double %297) #6, !dbg !1689
  %298 = load i8*, i8** %11, align 8, !dbg !1690, !tbaa !268
  %299 = getelementptr inbounds i8, i8* %298, i64 9, !dbg !1690
  store i8* %299, i8** %11, align 8, !dbg !1690, !tbaa !268
  %300 = load i64, i64* %5, align 8, !dbg !1690, !tbaa !273
  %301 = add i64 %300, -9, !dbg !1690
  store i64 %301, i64* %5, align 8, !dbg !1690, !tbaa !273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1692
  br label %321, !dbg !1693

; <label>:302:                                    ; preds = %10
  %303 = load i64, i64* %5, align 8, !dbg !1694, !tbaa !273
  %304 = icmp ult i64 %303, 2, !dbg !1694
  br i1 %304, label %305, label %307, !dbg !1697

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1698
  store i32 1, i32* %306, align 8, !dbg !1698, !tbaa !276
  br label %321, !dbg !1698

; <label>:307:                                    ; preds = %302
  %308 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1700
  %309 = load i8, i8* %308, align 1, !dbg !1700, !tbaa !91
  %310 = zext i8 %309 to i64, !dbg !1700
  %311 = add nuw nsw i64 %310, 2, !dbg !1702
  %312 = icmp ult i64 %303, %311, !dbg !1702
  br i1 %312, label %313, label %315, !dbg !1705

; <label>:313:                                    ; preds = %307
  %314 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1706
  store i32 1, i32* %314, align 8, !dbg !1706, !tbaa !276
  br label %321, !dbg !1706

; <label>:315:                                    ; preds = %307
  %316 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1708
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %316, i64 %310) #6, !dbg !1709
  %317 = load i8*, i8** %11, align 8, !dbg !1710, !tbaa !268
  %318 = getelementptr inbounds i8, i8* %317, i64 %311, !dbg !1710
  store i8* %318, i8** %11, align 8, !dbg !1710, !tbaa !268
  %319 = load i64, i64* %5, align 8, !dbg !1710, !tbaa !273
  %320 = sub i64 %319, %311, !dbg !1710
  store i64 %320, i64* %5, align 8, !dbg !1710, !tbaa !273
  br label %321, !dbg !1712

; <label>:321:                                    ; preds = %486, %488, %373, %375, %338, %340, %20, %33, %46, %64, %83, %111, %140, %188, %232, %237, %242, %252, %276, %385, %401, %427, %443, %441, %425, %399, %383, %349, %325, %305, %274, %250, %186, %138, %109, %81, %62, %44, %31, %18, %8, %474, %496, %508, %502, %466, %315, %313
  ret void

; <label>:322:                                    ; preds = %10
  %323 = load i64, i64* %5, align 8, !dbg !1713, !tbaa !273
  %324 = icmp ult i64 %323, 3, !dbg !1713
  br i1 %324, label %325, label %327, !dbg !1716

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1717
  store i32 1, i32* %326, align 8, !dbg !1717, !tbaa !276
  br label %321, !dbg !1717

; <label>:327:                                    ; preds = %322
  %328 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1719
  %329 = load i8, i8* %328, align 1, !dbg !1719, !tbaa !91
  %330 = zext i8 %329 to i64, !dbg !1719
  %331 = shl nuw nsw i64 %330, 8, !dbg !1720
  %332 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1721
  %333 = load i8, i8* %332, align 1, !dbg !1721, !tbaa !91
  %334 = zext i8 %333 to i64, !dbg !1721
  %335 = or i64 %331, %334, !dbg !1722
  %336 = add nuw nsw i64 %335, 3, !dbg !1724
  %337 = icmp ult i64 %323, %336, !dbg !1724
  br i1 %337, label %338, label %340, !dbg !1727

; <label>:338:                                    ; preds = %327
  %339 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1728
  store i32 1, i32* %339, align 8, !dbg !1728, !tbaa !276
  br label %321, !dbg !1728

; <label>:340:                                    ; preds = %327
  %341 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1730
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %341, i64 %335) #6, !dbg !1731
  %342 = load i8*, i8** %11, align 8, !dbg !1732, !tbaa !268
  %343 = getelementptr inbounds i8, i8* %342, i64 %336, !dbg !1732
  store i8* %343, i8** %11, align 8, !dbg !1732, !tbaa !268
  %344 = load i64, i64* %5, align 8, !dbg !1732, !tbaa !273
  %345 = sub i64 %344, %336, !dbg !1732
  store i64 %345, i64* %5, align 8, !dbg !1732, !tbaa !273
  br label %321, !dbg !1734

; <label>:346:                                    ; preds = %10
  %347 = load i64, i64* %5, align 8, !dbg !1735, !tbaa !273
  %348 = icmp ult i64 %347, 5, !dbg !1735
  br i1 %348, label %349, label %351, !dbg !1738

; <label>:349:                                    ; preds = %346
  %350 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1739
  store i32 1, i32* %350, align 8, !dbg !1739, !tbaa !276
  br label %321, !dbg !1739

; <label>:351:                                    ; preds = %346
  %352 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1741
  %353 = load i8, i8* %352, align 1, !dbg !1741, !tbaa !91
  %354 = zext i8 %353 to i64, !dbg !1742
  %355 = shl nuw nsw i64 %354, 24, !dbg !1743
  %356 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1744
  %357 = load i8, i8* %356, align 1, !dbg !1744, !tbaa !91
  %358 = zext i8 %357 to i64, !dbg !1745
  %359 = shl nuw nsw i64 %358, 16, !dbg !1746
  %360 = or i64 %359, %355, !dbg !1747
  %361 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1748
  %362 = load i8, i8* %361, align 1, !dbg !1748, !tbaa !91
  %363 = zext i8 %362 to i64, !dbg !1749
  %364 = shl nuw nsw i64 %363, 8, !dbg !1750
  %365 = or i64 %360, %364, !dbg !1751
  %366 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1752
  %367 = load i8, i8* %366, align 1, !dbg !1752, !tbaa !91
  %368 = zext i8 %367 to i64, !dbg !1753
  %369 = or i64 %365, %368, !dbg !1754
  %370 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1756
  store i8* %370, i8** %11, align 8, !dbg !1756, !tbaa !268
  %371 = add i64 %347, -5, !dbg !1756
  store i64 %371, i64* %5, align 8, !dbg !1756, !tbaa !273
  %372 = icmp ult i64 %371, %369, !dbg !1758
  br i1 %372, label %373, label %375, !dbg !1761

; <label>:373:                                    ; preds = %351
  %374 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1762
  store i32 1, i32* %374, align 8, !dbg !1762, !tbaa !276
  br label %321, !dbg !1762

; <label>:375:                                    ; preds = %351
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %370, i64 %369) #6, !dbg !1764
  %376 = load i8*, i8** %11, align 8, !dbg !1765, !tbaa !268
  %377 = getelementptr inbounds i8, i8* %376, i64 %369, !dbg !1765
  store i8* %377, i8** %11, align 8, !dbg !1765, !tbaa !268
  %378 = load i64, i64* %5, align 8, !dbg !1765, !tbaa !273
  %379 = sub i64 %378, %369, !dbg !1765
  store i64 %379, i64* %5, align 8, !dbg !1765, !tbaa !273
  br label %321, !dbg !1767

; <label>:380:                                    ; preds = %10
  %381 = load i64, i64* %5, align 8, !dbg !1768, !tbaa !273
  %382 = icmp ult i64 %381, 3, !dbg !1768
  br i1 %382, label %383, label %385, !dbg !1771

; <label>:383:                                    ; preds = %380
  %384 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1772
  store i32 1, i32* %384, align 8, !dbg !1772, !tbaa !276
  br label %321, !dbg !1772

; <label>:385:                                    ; preds = %380
  %386 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1774
  %387 = load i8, i8* %386, align 1, !dbg !1774, !tbaa !91
  %388 = zext i8 %387 to i64, !dbg !1774
  %389 = shl nuw nsw i64 %388, 8, !dbg !1775
  %390 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1776
  %391 = load i8, i8* %390, align 1, !dbg !1776, !tbaa !91
  %392 = zext i8 %391 to i64, !dbg !1776
  %393 = or i64 %389, %392, !dbg !1777
  %394 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1779
  store i8* %394, i8** %11, align 8, !dbg !1779, !tbaa !268
  %395 = add i64 %381, -3, !dbg !1779
  store i64 %395, i64* %5, align 8, !dbg !1779, !tbaa !273
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %393) #7, !dbg !1781
  br label %321, !dbg !1782

; <label>:396:                                    ; preds = %10
  %397 = load i64, i64* %5, align 8, !dbg !1783, !tbaa !273
  %398 = icmp ult i64 %397, 5, !dbg !1783
  br i1 %398, label %399, label %401, !dbg !1786

; <label>:399:                                    ; preds = %396
  %400 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1787
  store i32 1, i32* %400, align 8, !dbg !1787, !tbaa !276
  br label %321, !dbg !1787

; <label>:401:                                    ; preds = %396
  %402 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1789
  %403 = load i8, i8* %402, align 1, !dbg !1789, !tbaa !91
  %404 = zext i8 %403 to i64, !dbg !1790
  %405 = shl nuw nsw i64 %404, 24, !dbg !1791
  %406 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1792
  %407 = load i8, i8* %406, align 1, !dbg !1792, !tbaa !91
  %408 = zext i8 %407 to i64, !dbg !1793
  %409 = shl nuw nsw i64 %408, 16, !dbg !1794
  %410 = or i64 %409, %405, !dbg !1795
  %411 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1796
  %412 = load i8, i8* %411, align 1, !dbg !1796, !tbaa !91
  %413 = zext i8 %412 to i64, !dbg !1797
  %414 = shl nuw nsw i64 %413, 8, !dbg !1798
  %415 = or i64 %410, %414, !dbg !1799
  %416 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1800
  %417 = load i8, i8* %416, align 1, !dbg !1800, !tbaa !91
  %418 = zext i8 %417 to i64, !dbg !1801
  %419 = or i64 %415, %418, !dbg !1802
  %420 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1804
  store i8* %420, i8** %11, align 8, !dbg !1804, !tbaa !268
  %421 = add i64 %397, -5, !dbg !1804
  store i64 %421, i64* %5, align 8, !dbg !1804, !tbaa !273
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %419) #7, !dbg !1806
  br label %321, !dbg !1807

; <label>:422:                                    ; preds = %10
  %423 = load i64, i64* %5, align 8, !dbg !1808, !tbaa !273
  %424 = icmp ult i64 %423, 3, !dbg !1808
  br i1 %424, label %425, label %427, !dbg !1811

; <label>:425:                                    ; preds = %422
  %426 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1812
  store i32 1, i32* %426, align 8, !dbg !1812, !tbaa !276
  br label %321, !dbg !1812

; <label>:427:                                    ; preds = %422
  %428 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1814
  %429 = load i8, i8* %428, align 1, !dbg !1814, !tbaa !91
  %430 = zext i8 %429 to i64, !dbg !1814
  %431 = shl nuw nsw i64 %430, 8, !dbg !1815
  %432 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1816
  %433 = load i8, i8* %432, align 1, !dbg !1816, !tbaa !91
  %434 = zext i8 %433 to i64, !dbg !1816
  %435 = or i64 %431, %434, !dbg !1817
  %436 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1819
  store i8* %436, i8** %11, align 8, !dbg !1819, !tbaa !268
  %437 = add i64 %423, -3, !dbg !1819
  store i64 %437, i64* %5, align 8, !dbg !1819, !tbaa !273
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %435) #7, !dbg !1821
  br label %321, !dbg !1822

; <label>:438:                                    ; preds = %10
  %439 = load i64, i64* %5, align 8, !dbg !1823, !tbaa !273
  %440 = icmp ult i64 %439, 5, !dbg !1823
  br i1 %440, label %441, label %443, !dbg !1826

; <label>:441:                                    ; preds = %438
  %442 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1827
  store i32 1, i32* %442, align 8, !dbg !1827, !tbaa !276
  br label %321, !dbg !1827

; <label>:443:                                    ; preds = %438
  %444 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1829
  %445 = load i8, i8* %444, align 1, !dbg !1829, !tbaa !91
  %446 = zext i8 %445 to i64, !dbg !1830
  %447 = shl nuw nsw i64 %446, 24, !dbg !1831
  %448 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1832
  %449 = load i8, i8* %448, align 1, !dbg !1832, !tbaa !91
  %450 = zext i8 %449 to i64, !dbg !1833
  %451 = shl nuw nsw i64 %450, 16, !dbg !1834
  %452 = or i64 %451, %447, !dbg !1835
  %453 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1836
  %454 = load i8, i8* %453, align 1, !dbg !1836, !tbaa !91
  %455 = zext i8 %454 to i64, !dbg !1837
  %456 = shl nuw nsw i64 %455, 8, !dbg !1838
  %457 = or i64 %452, %456, !dbg !1839
  %458 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1840
  %459 = load i8, i8* %458, align 1, !dbg !1840, !tbaa !91
  %460 = zext i8 %459 to i64, !dbg !1841
  %461 = or i64 %457, %460, !dbg !1842
  %462 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1844
  store i8* %462, i8** %11, align 8, !dbg !1844, !tbaa !268
  %463 = add i64 %439, -5, !dbg !1844
  store i64 %463, i64* %5, align 8, !dbg !1844, !tbaa !273
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %461) #7, !dbg !1846
  br label %321, !dbg !1847

; <label>:464:                                    ; preds = %10
  %465 = icmp sgt i8 %13, -1, !dbg !1848
  br i1 %465, label %466, label %472, !dbg !1849

; <label>:466:                                    ; preds = %464
  %467 = zext i8 %13 to i64, !dbg !1850
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %467) #6, !dbg !1850
  %468 = load i8*, i8** %11, align 8, !dbg !1852, !tbaa !268
  %469 = getelementptr inbounds i8, i8* %468, i64 1, !dbg !1852
  store i8* %469, i8** %11, align 8, !dbg !1852, !tbaa !268
  %470 = load i64, i64* %5, align 8, !dbg !1852, !tbaa !273
  %471 = add i64 %470, -1, !dbg !1852
  store i64 %471, i64* %5, align 8, !dbg !1852, !tbaa !273
  br label %321, !dbg !1854

; <label>:472:                                    ; preds = %464
  %473 = and i8 %13, -32, !dbg !1855
  switch i8 %473, label %494 [
    i8 -32, label %474
    i8 -96, label %480
  ], !dbg !1856

; <label>:474:                                    ; preds = %472
  %475 = sext i8 %13 to i64, !dbg !1857
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %475) #6, !dbg !1859
  %476 = load i8*, i8** %11, align 8, !dbg !1860, !tbaa !268
  %477 = getelementptr inbounds i8, i8* %476, i64 1, !dbg !1860
  store i8* %477, i8** %11, align 8, !dbg !1860, !tbaa !268
  %478 = load i64, i64* %5, align 8, !dbg !1860, !tbaa !273
  %479 = add i64 %478, -1, !dbg !1860
  store i64 %479, i64* %5, align 8, !dbg !1860, !tbaa !273
  br label %321, !dbg !1862

; <label>:480:                                    ; preds = %472
  %481 = and i32 %14, 31, !dbg !1863
  %482 = zext i32 %481 to i64, !dbg !1864
  %483 = load i64, i64* %5, align 8, !dbg !1866, !tbaa !273
  %484 = add nuw nsw i64 %482, 1, !dbg !1866
  %485 = icmp ugt i64 %483, %482, !dbg !1866
  br i1 %485, label %488, label %486, !dbg !1869

; <label>:486:                                    ; preds = %480
  %487 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1870
  store i32 1, i32* %487, align 8, !dbg !1870, !tbaa !276
  br label %321, !dbg !1870

; <label>:488:                                    ; preds = %480
  %489 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1872
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %489, i64 %482) #6, !dbg !1873
  %490 = load i8*, i8** %11, align 8, !dbg !1874, !tbaa !268
  %491 = getelementptr inbounds i8, i8* %490, i64 %484, !dbg !1874
  store i8* %491, i8** %11, align 8, !dbg !1874, !tbaa !268
  %492 = load i64, i64* %5, align 8, !dbg !1874, !tbaa !273
  %493 = sub i64 %492, %484, !dbg !1874
  store i64 %493, i64* %5, align 8, !dbg !1874, !tbaa !273
  br label %321, !dbg !1876

; <label>:494:                                    ; preds = %472
  %495 = and i8 %13, -16, !dbg !1877
  switch i8 %495, label %508 [
    i8 -112, label %496
    i8 -128, label %502
  ], !dbg !1878

; <label>:496:                                    ; preds = %494
  %497 = and i32 %14, 15, !dbg !1879
  %498 = zext i32 %497 to i64, !dbg !1880
  %499 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1882
  store i8* %499, i8** %11, align 8, !dbg !1882, !tbaa !268
  %500 = load i64, i64* %5, align 8, !dbg !1882, !tbaa !273
  %501 = add i64 %500, -1, !dbg !1882
  store i64 %501, i64* %5, align 8, !dbg !1882, !tbaa !273
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %498) #7, !dbg !1884
  br label %321, !dbg !1885

; <label>:502:                                    ; preds = %494
  %503 = and i32 %14, 15, !dbg !1886
  %504 = zext i32 %503 to i64, !dbg !1887
  %505 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1889
  store i8* %505, i8** %11, align 8, !dbg !1889, !tbaa !268
  %506 = load i64, i64* %5, align 8, !dbg !1889, !tbaa !273
  %507 = add i64 %506, -1, !dbg !1889
  store i64 %507, i64* %5, align 8, !dbg !1889, !tbaa !273
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %504) #7, !dbg !1891
  br label %321, !dbg !1892

; <label>:508:                                    ; preds = %494
  %509 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1893
  store i32 2, i32* %509, align 8, !dbg !1895, !tbaa !276
  br label %321
}

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_hash(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1896 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1904
  br i1 %4, label %6, label %5, !dbg !1904

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 566, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.mp_decode_to_lua_hash, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1904
  unreachable, !dbg !1904

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1905
  %7 = icmp eq i64 %2, 0, !dbg !1906
  br i1 %7, label %20, label %8, !dbg !1906

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1906

; <label>:10:                                     ; preds = %8, %18
  %11 = phi i64 [ %2, %8 ], [ %12, %18 ]
  %12 = add i64 %11, -1, !dbg !1907
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1908
  %13 = load i32, i32* %9, align 8, !dbg !1910, !tbaa !276
  %14 = icmp eq i32 %13, 0, !dbg !1912
  br i1 %14, label %15, label %20, !dbg !1913

; <label>:15:                                     ; preds = %10
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %1) #7, !dbg !1914
  %16 = load i32, i32* %9, align 8, !dbg !1915, !tbaa !276
  %17 = icmp eq i32 %16, 0, !dbg !1917
  br i1 %17, label %18, label %20, !dbg !1918

; <label>:18:                                     ; preds = %15
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1919
  %19 = icmp eq i64 %12, 0, !dbg !1906
  br i1 %19, label %20, label %10, !dbg !1906, !llvm.loop !1920

; <label>:20:                                     ; preds = %18, %10, %15, %6
  ret void, !dbg !1922
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_full(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1923 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mp_cur, align 8
  %6 = bitcast i64* %4 to i8*, !dbg !1941
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1941
  %7 = bitcast %struct.mp_cur* %5 to i8*, !dbg !1942
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !1942
  %8 = or i32 %2, %1, !dbg !1943
  %9 = icmp eq i32 %8, 0, !dbg !1943
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #6, !dbg !1945
  %11 = icmp slt i32 %8, 0, !dbg !1947
  br i1 %11, label %12, label %15, !dbg !1947

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %4, align 8, !dbg !1949, !tbaa !159
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %2, i64 %13) #6, !dbg !1950
  br label %56, !dbg !1951

; <label>:15:                                     ; preds = %3
  %16 = sext i32 %2 to i64, !dbg !1952
  %17 = load i64, i64* %4, align 8, !dbg !1954, !tbaa !159
  %18 = icmp ult i64 %17, %16, !dbg !1955
  br i1 %18, label %19, label %21, !dbg !1956

; <label>:19:                                     ; preds = %15
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %2, i64 %17) #6, !dbg !1957
  br label %56, !dbg !1958

; <label>:21:                                     ; preds = %15
  %22 = select i1 %9, i32 2147483647, i32 %1, !dbg !1959
  %23 = getelementptr inbounds i8, i8* %10, i64 %16, !dbg !1960
  %24 = sub i64 %17, %16, !dbg !1961
  %25 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 0, !dbg !1967
  store i8* %23, i8** %25, align 8, !dbg !1968, !tbaa !268
  %26 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 1, !dbg !1969
  store i64 %24, i64* %26, align 8, !dbg !1970, !tbaa !273
  %27 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 2, !dbg !1971
  store i32 0, i32* %27, align 8, !dbg !1972, !tbaa !276
  %28 = icmp ne i64 %24, 0, !dbg !1974
  %29 = icmp sgt i32 %22, 0, !dbg !1977
  %30 = and i1 %29, %28, !dbg !1978
  br i1 %30, label %31, label %44, !dbg !1978

; <label>:31:                                     ; preds = %21, %38
  %32 = phi i32 [ %39, %38 ], [ 0, %21 ]
  call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %5) #7, !dbg !1979
  %33 = load i32, i32* %27, align 8, !dbg !1981, !tbaa !276
  switch i32 %33, label %38 [
    i32 1, label %34
    i32 2, label %36
  ], !dbg !1983

; <label>:34:                                     ; preds = %31
  %35 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1984
  br label %56, !dbg !1986

; <label>:36:                                     ; preds = %31
  %37 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !1987
  br label %56, !dbg !1990

; <label>:38:                                     ; preds = %31
  %39 = add nuw nsw i32 %32, 1, !dbg !1991
  %40 = load i64, i64* %26, align 8, !dbg !1992, !tbaa !273
  %41 = icmp ne i64 %40, 0, !dbg !1974
  %42 = icmp slt i32 %39, %22, !dbg !1977
  %43 = and i1 %42, %41, !dbg !1978
  br i1 %43, label %31, label %44, !dbg !1978, !llvm.loop !1993

; <label>:44:                                     ; preds = %38, %21
  %45 = phi i32 [ 0, %21 ], [ %39, %38 ], !dbg !1996
  %46 = phi i64 [ %24, %21 ], [ %40, %38 ], !dbg !1992
  br i1 %9, label %56, label %47, !dbg !1997

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %4, align 8, !dbg !1998, !tbaa !159
  %49 = sub i64 %48, %46, !dbg !1999
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2000
  %50 = load i64, i64* %26, align 8, !dbg !2001, !tbaa !273
  %51 = icmp eq i64 %50, 0, !dbg !2002
  %52 = shl i64 %49, 32, !dbg !2003
  %53 = ashr exact i64 %52, 32, !dbg !2003
  %54 = select i1 %51, i64 -1, i64 %53, !dbg !2003
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %54) #6, !dbg !2004
  call void @lua_insert(%struct.lua_State* %0, i32 2) #6, !dbg !2005
  %55 = add nuw nsw i32 %45, 1, !dbg !2006
  br label %56, !dbg !2007

; <label>:56:                                     ; preds = %44, %47, %36, %34, %19, %12
  %57 = phi i32 [ %14, %12 ], [ %20, %19 ], [ %35, %34 ], [ %37, %36 ], [ %45, %44 ], [ %55, %47 ], !dbg !2008
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !2009
  ret i32 %57, !dbg !2009
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack(%struct.lua_State*) #0 !dbg !2010 {
  %2 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2014
  ret i32 %2, !dbg !2015
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_one(%struct.lua_State*) #0 !dbg !2016 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6, !dbg !2021
  %3 = trunc i64 %2 to i32, !dbg !2021
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2023
  %5 = sub i32 0, %4, !dbg !2023
  tail call void @lua_settop(%struct.lua_State* %0, i32 %5) #6, !dbg !2023
  %6 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 1, i32 %3) #7, !dbg !2024
  ret i32 %6, !dbg !2025
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_limit(%struct.lua_State*) #0 !dbg !2026 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6, !dbg !2032
  %3 = trunc i64 %2 to i32, !dbg !2032
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #6, !dbg !2034
  %5 = trunc i64 %4 to i32, !dbg !2034
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2036
  %7 = sub i32 0, %6, !dbg !2036
  tail call void @lua_settop(%struct.lua_State* %0, i32 %7) #6, !dbg !2036
  %8 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 %3, i32 %5) #7, !dbg !2037
  ret i32 %8, !dbg !2038
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_safe(%struct.lua_State*) #0 !dbg !2039 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2046
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #6, !dbg !2048
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #6, !dbg !2049
  %3 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %2, i32 -1, i32 0) #6, !dbg !2050
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2052
  %5 = icmp eq i32 %3, 0, !dbg !2054
  br i1 %5, label %7, label %6, !dbg !2056

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !2057
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #6, !dbg !2059
  br label %7, !dbg !2060

; <label>:7:                                      ; preds = %1, %6
  %8 = phi i32 [ 2, %6 ], [ %4, %1 ], !dbg !2061
  ret i32 %8, !dbg !2063
}

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_create(%struct.lua_State*) local_unnamed_addr #0 !dbg !2064 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !2069
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_pack, i32 0) #6, !dbg !2071
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2075
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack, i32 0) #6, !dbg !2071
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2075
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_one, i32 0) #6, !dbg !2071
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2075
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_limit, i32 0) #6, !dbg !2071
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2075
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 8) #6, !dbg !2076
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2077
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i64 18) #6, !dbg !2078
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2079
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i64 40) #6, !dbg !2080
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2081
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i64 36) #6, !dbg !2082
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2083
  ret i32 1, !dbg !2084
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack(%struct.lua_State*) local_unnamed_addr #0 !dbg !2085 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #7, !dbg !2089
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2090
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2091
  ret i32 1, !dbg !2092
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !2093 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #6, !dbg !2100
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2101
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2102
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2104
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2108
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2109
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2104
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2108
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2109
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2104
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2108
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2109
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2104
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2108
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2109
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2110
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2111
  ret i32 1, !dbg !2112
}

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cmds", scope: !2, file: !3, line: 892, type: !44, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !43)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cmsgpack.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !20, !21, !22, !23, !25, !30, !31, !33, !36, !39, !41, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_buf", file: !3, line: 96, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mp_buf", file: !3, line: 93, size: 192, elements: !11)
!11 = !{!12, !13, !19}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !10, file: !3, line: 94, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !10, file: !3, line: 95, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !17, line: 129, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !10, file: !3, line: 95, baseType: !14, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !26, line: 56, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !28, line: 103, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !26, line: 32, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !28, line: 55, baseType: !35)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 48, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !28, line: 79, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 44, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !28, line: 77, baseType: !30)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 60, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !28, line: 105, baseType: !18)
!43 = !{!0}
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !61)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !47, line: 35, size: 128, elements: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !{!49, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !47, line: 36, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !46, file: !47, line: 37, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !54, line: 52, baseType: !55)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!30, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !54, line: 50, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !54, line: 50, flags: DIFlagFwdDecl)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !{i32 2, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!67 = distinct !DISubprogram(name: "memrevifle", scope: !3, file: !3, line: 69, type: !68, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !20, !14}
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DILocalVariable(name: "ptr", arg: 1, scope: !67, file: !3, line: 69, type: !20)
!72 = !DILocalVariable(name: "len", arg: 2, scope: !67, file: !3, line: 69, type: !14)
!73 = !DILocalVariable(name: "p", scope: !67, file: !3, line: 70, type: !6)
!74 = !DILocalVariable(name: "e", scope: !67, file: !3, line: 71, type: !6)
!75 = !DILocalVariable(name: "aux", scope: !67, file: !3, line: 72, type: !7)
!76 = !DILocalVariable(name: "test", scope: !67, file: !3, line: 73, type: !30)
!77 = !DILocalVariable(name: "testp", scope: !67, file: !3, line: 74, type: !6)
!78 = !DILocation(line: 69, column: 23, scope: !67)
!79 = !DILocation(line: 69, column: 35, scope: !67)
!80 = !DILocation(line: 70, column: 22, scope: !67)
!81 = !DILocation(line: 73, column: 9, scope: !67)
!82 = !DILocation(line: 74, column: 20, scope: !67)
!83 = !DILocation(line: 77, column: 9, scope: !67)
!84 = !DILocation(line: 78, column: 5, scope: !67)
!85 = !DILocation(line: 71, column: 44, scope: !67)
!86 = !DILocation(line: 71, column: 22, scope: !67)
!87 = !DILocation(line: 0, scope: !88)
!88 = distinct !DILexicalBlock(scope: !67, file: !3, line: 78, column: 18)
!89 = !DILocation(line: 78, column: 14, scope: !67)
!90 = !DILocation(line: 79, column: 15, scope: !88)
!91 = !{!92, !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 72, column: 21, scope: !67)
!95 = !DILocation(line: 80, column: 14, scope: !88)
!96 = !DILocation(line: 80, column: 12, scope: !88)
!97 = !DILocation(line: 81, column: 12, scope: !88)
!98 = !DILocation(line: 82, column: 10, scope: !88)
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !84, !102}
!102 = !DILocation(line: 84, column: 5, scope: !67)
!103 = !DILocation(line: 85, column: 1, scope: !67)
!104 = distinct !DISubprogram(name: "mp_realloc", scope: !3, file: !3, line: 98, type: !105, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!20, !58, !20, !14, !14}
!107 = !{!108, !109, !110, !111, !112, !116}
!108 = !DILocalVariable(name: "L", arg: 1, scope: !104, file: !3, line: 98, type: !58)
!109 = !DILocalVariable(name: "target", arg: 2, scope: !104, file: !3, line: 98, type: !20)
!110 = !DILocalVariable(name: "osize", arg: 3, scope: !104, file: !3, line: 98, type: !14)
!111 = !DILocalVariable(name: "nsize", arg: 4, scope: !104, file: !3, line: 98, type: !14)
!112 = !DILocalVariable(name: "local_realloc", scope: !104, file: !3, line: 99, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!20, !20, !20, !14, !14}
!116 = !DILocalVariable(name: "ud", scope: !104, file: !3, line: 100, type: !20)
!117 = !DILocation(line: 98, column: 29, scope: !104)
!118 = !DILocation(line: 98, column: 38, scope: !104)
!119 = !DILocation(line: 98, column: 53, scope: !104)
!120 = !DILocation(line: 98, column: 66, scope: !104)
!121 = !DILocation(line: 99, column: 13, scope: !104)
!122 = !DILocation(line: 100, column: 5, scope: !104)
!123 = !DILocation(line: 100, column: 11, scope: !104)
!124 = !DILocation(line: 102, column: 21, scope: !104)
!125 = !DILocation(line: 104, column: 26, scope: !104)
!126 = !{!127, !127, i64 0}
!127 = !{!"any pointer", !92, i64 0}
!128 = !DILocation(line: 104, column: 12, scope: !104)
!129 = !DILocation(line: 105, column: 1, scope: !104)
!130 = !DILocation(line: 104, column: 5, scope: !104)
!131 = distinct !DISubprogram(name: "mp_buf_new", scope: !3, file: !3, line: 107, type: !132, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!8, !58}
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "L", arg: 1, scope: !131, file: !3, line: 107, type: !58)
!136 = !DILocalVariable(name: "buf", scope: !131, file: !3, line: 108, type: !8)
!137 = !DILocation(line: 107, column: 31, scope: !131)
!138 = !DILocation(line: 108, column: 13, scope: !131)
!139 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !140)
!140 = distinct !DILocation(line: 111, column: 20, scope: !131)
!141 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !140)
!142 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !140)
!143 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !140)
!144 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !140)
!145 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !140)
!146 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !140)
!147 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !140)
!148 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !140)
!149 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !140)
!150 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !140)
!151 = !DILocation(line: 111, column: 11, scope: !131)
!152 = !DILocation(line: 113, column: 10, scope: !131)
!153 = !DILocation(line: 113, column: 12, scope: !131)
!154 = !{!155, !127, i64 0}
!155 = !{!"mp_buf", !127, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"long", !92, i64 0}
!157 = !DILocation(line: 114, column: 10, scope: !131)
!158 = !DILocation(line: 114, column: 14, scope: !131)
!159 = !{!156, !156, i64 0}
!160 = !DILocation(line: 115, column: 5, scope: !131)
!161 = distinct !DISubprogram(name: "mp_buf_append", scope: !3, file: !3, line: 118, type: !162, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !58, !8, !23, !14}
!164 = !{!165, !166, !167, !168, !169}
!165 = !DILocalVariable(name: "L", arg: 1, scope: !161, file: !3, line: 118, type: !58)
!166 = !DILocalVariable(name: "buf", arg: 2, scope: !161, file: !3, line: 118, type: !8)
!167 = !DILocalVariable(name: "s", arg: 3, scope: !161, file: !3, line: 118, type: !23)
!168 = !DILocalVariable(name: "len", arg: 4, scope: !161, file: !3, line: 118, type: !14)
!169 = !DILocalVariable(name: "newsize", scope: !170, file: !3, line: 120, type: !14)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 119, column: 26)
!171 = distinct !DILexicalBlock(scope: !161, file: !3, line: 119, column: 9)
!172 = !DILocation(line: 118, column: 31, scope: !161)
!173 = !DILocation(line: 118, column: 42, scope: !161)
!174 = !DILocation(line: 118, column: 68, scope: !161)
!175 = !DILocation(line: 118, column: 78, scope: !161)
!176 = !DILocation(line: 119, column: 14, scope: !171)
!177 = !{!155, !156, i64 16}
!178 = !DILocation(line: 119, column: 19, scope: !171)
!179 = !DILocation(line: 119, column: 9, scope: !161)
!180 = !DILocation(line: 125, column: 17, scope: !161)
!181 = !DILocation(line: 125, column: 24, scope: !161)
!182 = !{!155, !156, i64 8}
!183 = !DILocation(line: 120, column: 32, scope: !170)
!184 = !DILocation(line: 120, column: 35, scope: !170)
!185 = !DILocation(line: 120, column: 40, scope: !170)
!186 = !DILocation(line: 120, column: 16, scope: !170)
!187 = !DILocation(line: 122, column: 53, scope: !170)
!188 = !DILocation(line: 122, column: 65, scope: !170)
!189 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !190)
!190 = distinct !DILocation(line: 122, column: 34, scope: !170)
!191 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !190)
!192 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !190)
!193 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !190)
!194 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !190)
!195 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !190)
!196 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !190)
!197 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !190)
!198 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !190)
!199 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !190)
!200 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !190)
!201 = !DILocation(line: 122, column: 16, scope: !170)
!202 = !DILocation(line: 123, column: 36, scope: !170)
!203 = !DILocation(line: 123, column: 29, scope: !170)
!204 = !DILocation(line: 123, column: 19, scope: !170)
!205 = !DILocation(line: 124, column: 5, scope: !170)
!206 = !DILocation(line: 125, column: 18, scope: !161)
!207 = !DILocation(line: 125, column: 5, scope: !161)
!208 = !DILocation(line: 126, column: 14, scope: !161)
!209 = !DILocation(line: 127, column: 15, scope: !161)
!210 = !DILocation(line: 128, column: 1, scope: !161)
!211 = distinct !DISubprogram(name: "mp_buf_free", scope: !3, file: !3, line: 130, type: !212, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !58, !8}
!214 = !{!215, !216}
!215 = !DILocalVariable(name: "L", arg: 1, scope: !211, file: !3, line: 130, type: !58)
!216 = !DILocalVariable(name: "buf", arg: 2, scope: !211, file: !3, line: 130, type: !8)
!217 = !DILocation(line: 130, column: 29, scope: !211)
!218 = !DILocation(line: 130, column: 40, scope: !211)
!219 = !DILocation(line: 131, column: 24, scope: !211)
!220 = !DILocation(line: 131, column: 32, scope: !211)
!221 = !DILocation(line: 131, column: 43, scope: !211)
!222 = !DILocation(line: 131, column: 36, scope: !211)
!223 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !224)
!224 = distinct !DILocation(line: 131, column: 5, scope: !211)
!225 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !224)
!226 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !224)
!227 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !224)
!228 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !224)
!229 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !224)
!230 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !224)
!231 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !224)
!232 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !224)
!233 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !224)
!234 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !224)
!235 = !DILocation(line: 132, column: 19, scope: !211)
!236 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !237)
!237 = distinct !DILocation(line: 132, column: 5, scope: !211)
!238 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !237)
!239 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !237)
!240 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !237)
!241 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !237)
!242 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !237)
!243 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !237)
!244 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !237)
!245 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !237)
!246 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !237)
!247 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !237)
!248 = !DILocation(line: 133, column: 1, scope: !211)
!249 = distinct !DISubprogram(name: "mp_cur_init", scope: !3, file: !3, line: 154, type: !250, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !259)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252, !23, !14}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_cur", file: !3, line: 152, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mp_cur", file: !3, line: 148, size: 192, elements: !255)
!255 = !{!256, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !254, file: !3, line: 149, baseType: !23, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !254, file: !3, line: 150, baseType: !14, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !254, file: !3, line: 151, baseType: !30, size: 32, offset: 128)
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(name: "cursor", arg: 1, scope: !249, file: !3, line: 154, type: !252)
!261 = !DILocalVariable(name: "s", arg: 2, scope: !249, file: !3, line: 154, type: !23)
!262 = !DILocalVariable(name: "len", arg: 3, scope: !249, file: !3, line: 154, type: !14)
!263 = !DILocation(line: 154, column: 26, scope: !249)
!264 = !DILocation(line: 154, column: 55, scope: !249)
!265 = !DILocation(line: 154, column: 65, scope: !249)
!266 = !DILocation(line: 155, column: 13, scope: !249)
!267 = !DILocation(line: 155, column: 15, scope: !249)
!268 = !{!269, !127, i64 0}
!269 = !{!"mp_cur", !127, i64 0, !156, i64 8, !270, i64 16}
!270 = !{!"int", !92, i64 0}
!271 = !DILocation(line: 156, column: 13, scope: !249)
!272 = !DILocation(line: 156, column: 18, scope: !249)
!273 = !{!269, !156, i64 8}
!274 = !DILocation(line: 157, column: 13, scope: !249)
!275 = !DILocation(line: 157, column: 17, scope: !249)
!276 = !{!269, !270, i64 16}
!277 = !DILocation(line: 158, column: 1, scope: !249)
!278 = distinct !DISubprogram(name: "mp_encode_bytes", scope: !3, file: !3, line: 174, type: !162, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !279)
!279 = !{!280, !281, !282, !283, !284, !286}
!280 = !DILocalVariable(name: "L", arg: 1, scope: !278, file: !3, line: 174, type: !58)
!281 = !DILocalVariable(name: "buf", arg: 2, scope: !278, file: !3, line: 174, type: !8)
!282 = !DILocalVariable(name: "s", arg: 3, scope: !278, file: !3, line: 174, type: !23)
!283 = !DILocalVariable(name: "len", arg: 4, scope: !278, file: !3, line: 174, type: !14)
!284 = !DILocalVariable(name: "hdr", scope: !278, file: !3, line: 175, type: !285)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 40, elements: !61)
!286 = !DILocalVariable(name: "hdrlen", scope: !278, file: !3, line: 176, type: !30)
!287 = !DILocation(line: 174, column: 33, scope: !278)
!288 = !DILocation(line: 174, column: 44, scope: !278)
!289 = !DILocation(line: 174, column: 70, scope: !278)
!290 = !DILocation(line: 174, column: 80, scope: !278)
!291 = !DILocation(line: 175, column: 5, scope: !278)
!292 = !DILocation(line: 175, column: 19, scope: !278)
!293 = !DILocation(line: 178, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !278, file: !3, line: 178, column: 9)
!295 = !DILocation(line: 178, column: 9, scope: !278)
!296 = !DILocation(line: 179, column: 18, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 178, column: 19)
!298 = !DILocation(line: 179, column: 16, scope: !297)
!299 = !DILocation(line: 176, column: 9, scope: !278)
!300 = !DILocation(line: 181, column: 5, scope: !297)
!301 = !DILocation(line: 181, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !3, line: 181, column: 16)
!303 = !DILocation(line: 181, column: 16, scope: !294)
!304 = !DILocation(line: 182, column: 16, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 181, column: 29)
!306 = !DILocation(line: 183, column: 18, scope: !305)
!307 = !DILocation(line: 183, column: 9, scope: !305)
!308 = !DILocation(line: 183, column: 16, scope: !305)
!309 = !DILocation(line: 185, column: 5, scope: !305)
!310 = !DILocation(line: 185, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !3, line: 185, column: 16)
!312 = !DILocation(line: 185, column: 16, scope: !302)
!313 = !DILocation(line: 186, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 185, column: 31)
!315 = !DILocation(line: 187, column: 30, scope: !314)
!316 = !DILocation(line: 187, column: 18, scope: !314)
!317 = !DILocation(line: 187, column: 9, scope: !314)
!318 = !DILocation(line: 187, column: 16, scope: !314)
!319 = !DILocation(line: 188, column: 18, scope: !314)
!320 = !DILocation(line: 188, column: 9, scope: !314)
!321 = !DILocation(line: 188, column: 16, scope: !314)
!322 = !DILocation(line: 190, column: 5, scope: !314)
!323 = !DILocation(line: 191, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !311, file: !3, line: 190, column: 12)
!325 = !DILocation(line: 192, column: 34, scope: !324)
!326 = !DILocation(line: 192, column: 18, scope: !324)
!327 = !DILocation(line: 192, column: 9, scope: !324)
!328 = !DILocation(line: 192, column: 16, scope: !324)
!329 = !DILocation(line: 193, column: 32, scope: !324)
!330 = !DILocation(line: 193, column: 18, scope: !324)
!331 = !DILocation(line: 193, column: 9, scope: !324)
!332 = !DILocation(line: 193, column: 16, scope: !324)
!333 = !DILocation(line: 194, column: 30, scope: !324)
!334 = !DILocation(line: 194, column: 18, scope: !324)
!335 = !DILocation(line: 194, column: 9, scope: !324)
!336 = !DILocation(line: 194, column: 16, scope: !324)
!337 = !DILocation(line: 195, column: 18, scope: !324)
!338 = !DILocation(line: 195, column: 9, scope: !324)
!339 = !DILocation(line: 195, column: 16, scope: !324)
!340 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !341)
!341 = distinct !DILocation(line: 198, column: 5, scope: !278)
!342 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !341)
!343 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !341)
!344 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !341)
!345 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !341)
!346 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !341)
!347 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !341)
!348 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !341)
!349 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !341)
!350 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !341)
!351 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !341)
!352 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !341)
!353 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !341)
!354 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !341)
!355 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !341)
!356 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !357)
!357 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !341)
!358 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !357)
!359 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !357)
!360 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !357)
!361 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !357)
!362 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !357)
!363 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !357)
!364 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !357)
!365 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !357)
!366 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !357)
!367 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !357)
!368 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !341)
!369 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !341)
!370 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !341)
!371 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !341)
!372 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !341)
!373 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !341)
!374 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !341)
!375 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !341)
!376 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !341)
!377 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !378)
!378 = distinct !DILocation(line: 199, column: 5, scope: !278)
!379 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !378)
!380 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !378)
!381 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !378)
!382 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !378)
!383 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !378)
!384 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !378)
!385 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !378)
!386 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !378)
!387 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !378)
!388 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !378)
!389 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !378)
!390 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !378)
!391 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !392)
!392 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !378)
!393 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !392)
!394 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !392)
!395 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !392)
!396 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !392)
!397 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !392)
!398 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !392)
!399 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !392)
!400 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !392)
!401 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !392)
!402 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !392)
!403 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !378)
!404 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !378)
!405 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !378)
!406 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !378)
!407 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !378)
!408 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !378)
!409 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !378)
!410 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !378)
!411 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !378)
!412 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !378)
!413 = !DILocation(line: 200, column: 1, scope: !278)
!414 = distinct !DISubprogram(name: "mp_encode_double", scope: !3, file: !3, line: 203, type: !415, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !58, !8, !21}
!417 = !{!418, !419, !420, !421, !425}
!418 = !DILocalVariable(name: "L", arg: 1, scope: !414, file: !3, line: 203, type: !58)
!419 = !DILocalVariable(name: "buf", arg: 2, scope: !414, file: !3, line: 203, type: !8)
!420 = !DILocalVariable(name: "d", arg: 3, scope: !414, file: !3, line: 203, type: !21)
!421 = !DILocalVariable(name: "b", scope: !414, file: !3, line: 204, type: !422)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 72, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 9)
!425 = !DILocalVariable(name: "f", scope: !414, file: !3, line: 205, type: !426)
!426 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!427 = !DILocation(line: 203, column: 34, scope: !414)
!428 = !DILocation(line: 203, column: 45, scope: !414)
!429 = !DILocation(line: 203, column: 57, scope: !414)
!430 = !{!431, !431, i64 0}
!431 = !{!"double", !92, i64 0}
!432 = !DILocation(line: 204, column: 5, scope: !414)
!433 = !DILocation(line: 204, column: 19, scope: !414)
!434 = !DILocation(line: 205, column: 5, scope: !414)
!435 = !DILocation(line: 205, column: 15, scope: !414)
!436 = !DILocation(line: 205, column: 11, scope: !414)
!437 = !{!438, !438, i64 0}
!438 = !{!"float", !92, i64 0}
!439 = !DILocation(line: 208, column: 14, scope: !440)
!440 = distinct !DILexicalBlock(scope: !414, file: !3, line: 208, column: 9)
!441 = !DILocation(line: 208, column: 11, scope: !440)
!442 = !DILocation(line: 208, column: 9, scope: !414)
!443 = !DILocation(line: 209, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 208, column: 25)
!445 = !DILocation(line: 210, column: 17, scope: !444)
!446 = !DILocation(line: 210, column: 9, scope: !444)
!447 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !448)
!448 = distinct !DILocation(line: 211, column: 9, scope: !444)
!449 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !448)
!450 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !448)
!451 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !448)
!452 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !448)
!453 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !448)
!454 = !DILocation(line: 0, scope: !88, inlinedAt: !448)
!455 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !448)
!456 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !448)
!457 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !448)
!458 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !448)
!459 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !448)
!460 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !448)
!461 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !462)
!462 = distinct !DILocation(line: 212, column: 9, scope: !444)
!463 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !462)
!464 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !462)
!465 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !462)
!466 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !462)
!467 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !462)
!468 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !462)
!469 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !462)
!470 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !462)
!471 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !462)
!472 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !462)
!473 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !462)
!474 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !462)
!475 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !462)
!476 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !477)
!477 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !462)
!478 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !477)
!479 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !477)
!480 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !477)
!481 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !477)
!482 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !477)
!483 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !477)
!484 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !477)
!485 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !477)
!486 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !477)
!487 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !477)
!488 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !462)
!489 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !462)
!490 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !462)
!491 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !462)
!492 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !462)
!493 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !462)
!494 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !462)
!495 = !DILocation(line: 213, column: 5, scope: !444)
!496 = !DILocation(line: 214, column: 14, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 213, column: 32)
!498 = distinct !DILexicalBlock(scope: !440, file: !3, line: 213, column: 16)
!499 = !DILocation(line: 215, column: 17, scope: !497)
!500 = !DILocation(line: 215, column: 20, scope: !497)
!501 = !DILocation(line: 215, column: 9, scope: !497)
!502 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !503)
!503 = distinct !DILocation(line: 216, column: 9, scope: !497)
!504 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !503)
!505 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !503)
!506 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !503)
!507 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !503)
!508 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !503)
!509 = !DILocation(line: 0, scope: !88, inlinedAt: !503)
!510 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !503)
!511 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !503)
!512 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !503)
!513 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !503)
!514 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !503)
!515 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !503)
!516 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !517)
!517 = distinct !DILocation(line: 217, column: 9, scope: !497)
!518 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !517)
!519 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !517)
!520 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !517)
!521 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !517)
!522 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !517)
!523 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !517)
!524 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !517)
!525 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !517)
!526 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !517)
!527 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !517)
!528 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !517)
!529 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !517)
!530 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !517)
!531 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !532)
!532 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !517)
!533 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !532)
!534 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !532)
!535 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !532)
!536 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !532)
!537 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !532)
!538 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !532)
!539 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !532)
!540 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !532)
!541 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !532)
!542 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !532)
!543 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !517)
!544 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !517)
!545 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !517)
!546 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !517)
!547 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !517)
!548 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !517)
!549 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !517)
!550 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !517)
!551 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !517)
!552 = !DILocation(line: 219, column: 1, scope: !414)
!553 = distinct !DISubprogram(name: "mp_encode_int", scope: !3, file: !3, line: 221, type: !554, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !58, !8, !25}
!556 = !{!557, !558, !559, !560, !561}
!557 = !DILocalVariable(name: "L", arg: 1, scope: !553, file: !3, line: 221, type: !58)
!558 = !DILocalVariable(name: "buf", arg: 2, scope: !553, file: !3, line: 221, type: !8)
!559 = !DILocalVariable(name: "n", arg: 3, scope: !553, file: !3, line: 221, type: !25)
!560 = !DILocalVariable(name: "b", scope: !553, file: !3, line: 222, type: !422)
!561 = !DILocalVariable(name: "enclen", scope: !553, file: !3, line: 223, type: !30)
!562 = !DILocation(line: 221, column: 31, scope: !553)
!563 = !DILocation(line: 221, column: 42, scope: !553)
!564 = !DILocation(line: 221, column: 55, scope: !553)
!565 = !DILocation(line: 222, column: 5, scope: !553)
!566 = !DILocation(line: 222, column: 19, scope: !553)
!567 = !DILocation(line: 225, column: 11, scope: !568)
!568 = distinct !DILexicalBlock(scope: !553, file: !3, line: 225, column: 9)
!569 = !DILocation(line: 225, column: 9, scope: !553)
!570 = !DILocation(line: 226, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 226, column: 13)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 225, column: 17)
!573 = !DILocation(line: 226, column: 13, scope: !572)
!574 = !DILocation(line: 227, column: 20, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 226, column: 23)
!576 = !DILocation(line: 227, column: 18, scope: !575)
!577 = !DILocation(line: 223, column: 9, scope: !553)
!578 = !DILocation(line: 229, column: 9, scope: !575)
!579 = !DILocation(line: 229, column: 22, scope: !580)
!580 = distinct !DILexicalBlock(scope: !571, file: !3, line: 229, column: 20)
!581 = !DILocation(line: 229, column: 20, scope: !571)
!582 = !DILocation(line: 230, column: 18, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !3, line: 229, column: 31)
!584 = !DILocation(line: 231, column: 20, scope: !583)
!585 = !DILocation(line: 231, column: 13, scope: !583)
!586 = !DILocation(line: 231, column: 18, scope: !583)
!587 = !DILocation(line: 233, column: 9, scope: !583)
!588 = !DILocation(line: 233, column: 22, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !3, line: 233, column: 20)
!590 = !DILocation(line: 233, column: 20, scope: !580)
!591 = !DILocation(line: 234, column: 18, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !3, line: 233, column: 33)
!593 = !DILocation(line: 235, column: 33, scope: !592)
!594 = !DILocation(line: 235, column: 20, scope: !592)
!595 = !DILocation(line: 235, column: 13, scope: !592)
!596 = !DILocation(line: 235, column: 18, scope: !592)
!597 = !DILocation(line: 236, column: 20, scope: !592)
!598 = !DILocation(line: 236, column: 13, scope: !592)
!599 = !DILocation(line: 236, column: 18, scope: !592)
!600 = !DILocation(line: 238, column: 9, scope: !592)
!601 = !DILocation(line: 238, column: 22, scope: !602)
!602 = distinct !DILexicalBlock(scope: !589, file: !3, line: 238, column: 20)
!603 = !DILocation(line: 238, column: 20, scope: !589)
!604 = !DILocation(line: 239, column: 18, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !3, line: 238, column: 39)
!606 = !DILocation(line: 240, column: 37, scope: !605)
!607 = !DILocation(line: 240, column: 20, scope: !605)
!608 = !DILocation(line: 240, column: 13, scope: !605)
!609 = !DILocation(line: 240, column: 18, scope: !605)
!610 = !DILocation(line: 241, column: 35, scope: !605)
!611 = !DILocation(line: 241, column: 20, scope: !605)
!612 = !DILocation(line: 241, column: 13, scope: !605)
!613 = !DILocation(line: 241, column: 18, scope: !605)
!614 = !DILocation(line: 242, column: 33, scope: !605)
!615 = !DILocation(line: 242, column: 20, scope: !605)
!616 = !DILocation(line: 242, column: 13, scope: !605)
!617 = !DILocation(line: 242, column: 18, scope: !605)
!618 = !DILocation(line: 243, column: 20, scope: !605)
!619 = !DILocation(line: 243, column: 13, scope: !605)
!620 = !DILocation(line: 243, column: 18, scope: !605)
!621 = !DILocation(line: 245, column: 9, scope: !605)
!622 = !DILocation(line: 246, column: 18, scope: !623)
!623 = distinct !DILexicalBlock(scope: !602, file: !3, line: 245, column: 16)
!624 = !DILocation(line: 247, column: 47, scope: !623)
!625 = !DILocation(line: 247, column: 20, scope: !623)
!626 = !DILocation(line: 247, column: 13, scope: !623)
!627 = !DILocation(line: 247, column: 18, scope: !623)
!628 = !DILocation(line: 248, column: 45, scope: !623)
!629 = !DILocation(line: 248, column: 20, scope: !623)
!630 = !DILocation(line: 248, column: 13, scope: !623)
!631 = !DILocation(line: 248, column: 18, scope: !623)
!632 = !DILocation(line: 249, column: 43, scope: !623)
!633 = !DILocation(line: 249, column: 20, scope: !623)
!634 = !DILocation(line: 249, column: 13, scope: !623)
!635 = !DILocation(line: 249, column: 18, scope: !623)
!636 = !DILocation(line: 250, column: 41, scope: !623)
!637 = !DILocation(line: 250, column: 20, scope: !623)
!638 = !DILocation(line: 250, column: 13, scope: !623)
!639 = !DILocation(line: 250, column: 18, scope: !623)
!640 = !DILocation(line: 251, column: 37, scope: !623)
!641 = !DILocation(line: 251, column: 20, scope: !623)
!642 = !DILocation(line: 251, column: 13, scope: !623)
!643 = !DILocation(line: 251, column: 18, scope: !623)
!644 = !DILocation(line: 252, column: 35, scope: !623)
!645 = !DILocation(line: 252, column: 20, scope: !623)
!646 = !DILocation(line: 252, column: 13, scope: !623)
!647 = !DILocation(line: 252, column: 18, scope: !623)
!648 = !DILocation(line: 253, column: 33, scope: !623)
!649 = !DILocation(line: 253, column: 20, scope: !623)
!650 = !DILocation(line: 253, column: 13, scope: !623)
!651 = !DILocation(line: 253, column: 18, scope: !623)
!652 = !DILocation(line: 254, column: 20, scope: !623)
!653 = !DILocation(line: 254, column: 13, scope: !623)
!654 = !DILocation(line: 254, column: 18, scope: !623)
!655 = !DILocation(line: 258, column: 15, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 258, column: 13)
!657 = distinct !DILexicalBlock(scope: !568, file: !3, line: 257, column: 12)
!658 = !DILocation(line: 258, column: 13, scope: !657)
!659 = !DILocation(line: 259, column: 21, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 258, column: 23)
!661 = !DILocation(line: 259, column: 18, scope: !660)
!662 = !DILocation(line: 261, column: 9, scope: !660)
!663 = !DILocation(line: 261, column: 22, scope: !664)
!664 = distinct !DILexicalBlock(scope: !656, file: !3, line: 261, column: 20)
!665 = !DILocation(line: 261, column: 20, scope: !656)
!666 = !DILocation(line: 262, column: 18, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 261, column: 31)
!668 = !DILocation(line: 263, column: 20, scope: !667)
!669 = !DILocation(line: 263, column: 13, scope: !667)
!670 = !DILocation(line: 263, column: 18, scope: !667)
!671 = !DILocation(line: 265, column: 9, scope: !667)
!672 = !DILocation(line: 265, column: 22, scope: !673)
!673 = distinct !DILexicalBlock(scope: !664, file: !3, line: 265, column: 20)
!674 = !DILocation(line: 265, column: 20, scope: !664)
!675 = !DILocation(line: 266, column: 18, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 265, column: 33)
!677 = !DILocation(line: 267, column: 33, scope: !676)
!678 = !DILocation(line: 267, column: 20, scope: !676)
!679 = !DILocation(line: 267, column: 13, scope: !676)
!680 = !DILocation(line: 267, column: 18, scope: !676)
!681 = !DILocation(line: 268, column: 20, scope: !676)
!682 = !DILocation(line: 268, column: 13, scope: !676)
!683 = !DILocation(line: 268, column: 18, scope: !676)
!684 = !DILocation(line: 270, column: 9, scope: !676)
!685 = !DILocation(line: 270, column: 22, scope: !686)
!686 = distinct !DILexicalBlock(scope: !673, file: !3, line: 270, column: 20)
!687 = !DILocation(line: 270, column: 20, scope: !673)
!688 = !DILocation(line: 271, column: 18, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 270, column: 40)
!690 = !DILocation(line: 272, column: 37, scope: !689)
!691 = !DILocation(line: 272, column: 20, scope: !689)
!692 = !DILocation(line: 272, column: 13, scope: !689)
!693 = !DILocation(line: 272, column: 18, scope: !689)
!694 = !DILocation(line: 273, column: 35, scope: !689)
!695 = !DILocation(line: 273, column: 20, scope: !689)
!696 = !DILocation(line: 273, column: 13, scope: !689)
!697 = !DILocation(line: 273, column: 18, scope: !689)
!698 = !DILocation(line: 274, column: 33, scope: !689)
!699 = !DILocation(line: 274, column: 20, scope: !689)
!700 = !DILocation(line: 274, column: 13, scope: !689)
!701 = !DILocation(line: 274, column: 18, scope: !689)
!702 = !DILocation(line: 275, column: 20, scope: !689)
!703 = !DILocation(line: 275, column: 13, scope: !689)
!704 = !DILocation(line: 275, column: 18, scope: !689)
!705 = !DILocation(line: 277, column: 9, scope: !689)
!706 = !DILocation(line: 278, column: 18, scope: !707)
!707 = distinct !DILexicalBlock(scope: !686, file: !3, line: 277, column: 16)
!708 = !DILocation(line: 279, column: 47, scope: !707)
!709 = !DILocation(line: 279, column: 20, scope: !707)
!710 = !DILocation(line: 279, column: 13, scope: !707)
!711 = !DILocation(line: 279, column: 18, scope: !707)
!712 = !DILocation(line: 280, column: 45, scope: !707)
!713 = !DILocation(line: 280, column: 20, scope: !707)
!714 = !DILocation(line: 280, column: 13, scope: !707)
!715 = !DILocation(line: 280, column: 18, scope: !707)
!716 = !DILocation(line: 281, column: 43, scope: !707)
!717 = !DILocation(line: 281, column: 20, scope: !707)
!718 = !DILocation(line: 281, column: 13, scope: !707)
!719 = !DILocation(line: 281, column: 18, scope: !707)
!720 = !DILocation(line: 282, column: 41, scope: !707)
!721 = !DILocation(line: 282, column: 20, scope: !707)
!722 = !DILocation(line: 282, column: 13, scope: !707)
!723 = !DILocation(line: 282, column: 18, scope: !707)
!724 = !DILocation(line: 283, column: 37, scope: !707)
!725 = !DILocation(line: 283, column: 20, scope: !707)
!726 = !DILocation(line: 283, column: 13, scope: !707)
!727 = !DILocation(line: 283, column: 18, scope: !707)
!728 = !DILocation(line: 284, column: 35, scope: !707)
!729 = !DILocation(line: 284, column: 20, scope: !707)
!730 = !DILocation(line: 284, column: 13, scope: !707)
!731 = !DILocation(line: 284, column: 18, scope: !707)
!732 = !DILocation(line: 285, column: 33, scope: !707)
!733 = !DILocation(line: 285, column: 20, scope: !707)
!734 = !DILocation(line: 285, column: 13, scope: !707)
!735 = !DILocation(line: 285, column: 18, scope: !707)
!736 = !DILocation(line: 286, column: 20, scope: !707)
!737 = !DILocation(line: 286, column: 13, scope: !707)
!738 = !DILocation(line: 286, column: 18, scope: !707)
!739 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !740)
!740 = distinct !DILocation(line: 290, column: 5, scope: !553)
!741 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !740)
!742 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !740)
!743 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !740)
!744 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !740)
!745 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !740)
!746 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !740)
!747 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !740)
!748 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !740)
!749 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !740)
!750 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !740)
!751 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !740)
!752 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !740)
!753 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !740)
!754 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !740)
!755 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !756)
!756 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !740)
!757 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !756)
!758 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !756)
!759 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !756)
!760 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !756)
!761 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !756)
!762 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !756)
!763 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !756)
!764 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !756)
!765 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !756)
!766 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !756)
!767 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !740)
!768 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !740)
!769 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !740)
!770 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !740)
!771 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !740)
!772 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !740)
!773 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !740)
!774 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !740)
!775 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !740)
!776 = !DILocation(line: 291, column: 1, scope: !553)
!777 = distinct !DISubprogram(name: "mp_encode_array", scope: !3, file: !3, line: 293, type: !554, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !778)
!778 = !{!779, !780, !781, !782, !783}
!779 = !DILocalVariable(name: "L", arg: 1, scope: !777, file: !3, line: 293, type: !58)
!780 = !DILocalVariable(name: "buf", arg: 2, scope: !777, file: !3, line: 293, type: !8)
!781 = !DILocalVariable(name: "n", arg: 3, scope: !777, file: !3, line: 293, type: !25)
!782 = !DILocalVariable(name: "b", scope: !777, file: !3, line: 294, type: !285)
!783 = !DILocalVariable(name: "enclen", scope: !777, file: !3, line: 295, type: !30)
!784 = !DILocation(line: 293, column: 33, scope: !777)
!785 = !DILocation(line: 293, column: 44, scope: !777)
!786 = !DILocation(line: 293, column: 57, scope: !777)
!787 = !DILocation(line: 294, column: 5, scope: !777)
!788 = !DILocation(line: 294, column: 19, scope: !777)
!789 = !DILocation(line: 297, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !777, file: !3, line: 297, column: 9)
!791 = !DILocation(line: 297, column: 9, scope: !777)
!792 = !DILocation(line: 298, column: 16, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 297, column: 18)
!794 = !DILocation(line: 298, column: 14, scope: !793)
!795 = !DILocation(line: 295, column: 9, scope: !777)
!796 = !DILocation(line: 300, column: 5, scope: !793)
!797 = !DILocation(line: 300, column: 18, scope: !798)
!798 = distinct !DILexicalBlock(scope: !790, file: !3, line: 300, column: 16)
!799 = !DILocation(line: 300, column: 16, scope: !790)
!800 = !DILocation(line: 301, column: 14, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !3, line: 300, column: 28)
!802 = !DILocation(line: 302, column: 29, scope: !801)
!803 = !DILocation(line: 302, column: 16, scope: !801)
!804 = !DILocation(line: 302, column: 9, scope: !801)
!805 = !DILocation(line: 302, column: 14, scope: !801)
!806 = !DILocation(line: 303, column: 16, scope: !801)
!807 = !DILocation(line: 303, column: 9, scope: !801)
!808 = !DILocation(line: 303, column: 14, scope: !801)
!809 = !DILocation(line: 305, column: 5, scope: !801)
!810 = !DILocation(line: 306, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !798, file: !3, line: 305, column: 12)
!812 = !DILocation(line: 307, column: 33, scope: !811)
!813 = !DILocation(line: 307, column: 16, scope: !811)
!814 = !DILocation(line: 307, column: 9, scope: !811)
!815 = !DILocation(line: 307, column: 14, scope: !811)
!816 = !DILocation(line: 308, column: 31, scope: !811)
!817 = !DILocation(line: 308, column: 16, scope: !811)
!818 = !DILocation(line: 308, column: 9, scope: !811)
!819 = !DILocation(line: 308, column: 14, scope: !811)
!820 = !DILocation(line: 309, column: 29, scope: !811)
!821 = !DILocation(line: 309, column: 16, scope: !811)
!822 = !DILocation(line: 309, column: 9, scope: !811)
!823 = !DILocation(line: 309, column: 14, scope: !811)
!824 = !DILocation(line: 310, column: 16, scope: !811)
!825 = !DILocation(line: 310, column: 9, scope: !811)
!826 = !DILocation(line: 310, column: 14, scope: !811)
!827 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !828)
!828 = distinct !DILocation(line: 313, column: 5, scope: !777)
!829 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !828)
!830 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !828)
!831 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !828)
!832 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !828)
!833 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !828)
!834 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !828)
!835 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !828)
!836 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !828)
!837 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !828)
!838 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !828)
!839 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !828)
!840 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !828)
!841 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !828)
!842 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !828)
!843 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !844)
!844 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !828)
!845 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !844)
!846 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !844)
!847 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !844)
!848 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !844)
!849 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !844)
!850 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !844)
!851 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !844)
!852 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !844)
!853 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !844)
!854 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !844)
!855 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !828)
!856 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !828)
!857 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !828)
!858 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !828)
!859 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !828)
!860 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !828)
!861 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !828)
!862 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !828)
!863 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !828)
!864 = !DILocation(line: 314, column: 1, scope: !777)
!865 = distinct !DISubprogram(name: "mp_encode_map", scope: !3, file: !3, line: 316, type: !554, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DILocalVariable(name: "L", arg: 1, scope: !865, file: !3, line: 316, type: !58)
!868 = !DILocalVariable(name: "buf", arg: 2, scope: !865, file: !3, line: 316, type: !8)
!869 = !DILocalVariable(name: "n", arg: 3, scope: !865, file: !3, line: 316, type: !25)
!870 = !DILocalVariable(name: "b", scope: !865, file: !3, line: 317, type: !285)
!871 = !DILocalVariable(name: "enclen", scope: !865, file: !3, line: 318, type: !30)
!872 = !DILocation(line: 316, column: 31, scope: !865)
!873 = !DILocation(line: 316, column: 42, scope: !865)
!874 = !DILocation(line: 316, column: 55, scope: !865)
!875 = !DILocation(line: 317, column: 5, scope: !865)
!876 = !DILocation(line: 317, column: 19, scope: !865)
!877 = !DILocation(line: 320, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !865, file: !3, line: 320, column: 9)
!879 = !DILocation(line: 320, column: 9, scope: !865)
!880 = !DILocation(line: 321, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 320, column: 18)
!882 = !DILocation(line: 321, column: 14, scope: !881)
!883 = !DILocation(line: 318, column: 9, scope: !865)
!884 = !DILocation(line: 323, column: 5, scope: !881)
!885 = !DILocation(line: 323, column: 18, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !3, line: 323, column: 16)
!887 = !DILocation(line: 323, column: 16, scope: !878)
!888 = !DILocation(line: 324, column: 14, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 323, column: 28)
!890 = !DILocation(line: 325, column: 29, scope: !889)
!891 = !DILocation(line: 325, column: 16, scope: !889)
!892 = !DILocation(line: 325, column: 9, scope: !889)
!893 = !DILocation(line: 325, column: 14, scope: !889)
!894 = !DILocation(line: 326, column: 16, scope: !889)
!895 = !DILocation(line: 326, column: 9, scope: !889)
!896 = !DILocation(line: 326, column: 14, scope: !889)
!897 = !DILocation(line: 328, column: 5, scope: !889)
!898 = !DILocation(line: 329, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !886, file: !3, line: 328, column: 12)
!900 = !DILocation(line: 330, column: 33, scope: !899)
!901 = !DILocation(line: 330, column: 16, scope: !899)
!902 = !DILocation(line: 330, column: 9, scope: !899)
!903 = !DILocation(line: 330, column: 14, scope: !899)
!904 = !DILocation(line: 331, column: 31, scope: !899)
!905 = !DILocation(line: 331, column: 16, scope: !899)
!906 = !DILocation(line: 331, column: 9, scope: !899)
!907 = !DILocation(line: 331, column: 14, scope: !899)
!908 = !DILocation(line: 332, column: 29, scope: !899)
!909 = !DILocation(line: 332, column: 16, scope: !899)
!910 = !DILocation(line: 332, column: 9, scope: !899)
!911 = !DILocation(line: 332, column: 14, scope: !899)
!912 = !DILocation(line: 333, column: 16, scope: !899)
!913 = !DILocation(line: 333, column: 9, scope: !899)
!914 = !DILocation(line: 333, column: 14, scope: !899)
!915 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !916)
!916 = distinct !DILocation(line: 336, column: 5, scope: !865)
!917 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !916)
!918 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !916)
!919 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !916)
!920 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !916)
!921 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !916)
!922 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !916)
!923 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !916)
!924 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !916)
!925 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !916)
!926 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !916)
!927 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !916)
!928 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !916)
!929 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !916)
!930 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !916)
!931 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !932)
!932 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !916)
!933 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !932)
!934 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !932)
!935 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !932)
!936 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !932)
!937 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !932)
!938 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !932)
!939 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !932)
!940 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !932)
!941 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !932)
!942 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !932)
!943 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !916)
!944 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !916)
!945 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !916)
!946 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !916)
!947 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !916)
!948 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !916)
!949 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !916)
!950 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !916)
!951 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !916)
!952 = !DILocation(line: 337, column: 1, scope: !865)
!953 = distinct !DISubprogram(name: "mp_encode_lua_string", scope: !3, file: !3, line: 341, type: !212, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !954)
!954 = !{!955, !956, !957, !958}
!955 = !DILocalVariable(name: "L", arg: 1, scope: !953, file: !3, line: 341, type: !58)
!956 = !DILocalVariable(name: "buf", arg: 2, scope: !953, file: !3, line: 341, type: !8)
!957 = !DILocalVariable(name: "len", scope: !953, file: !3, line: 342, type: !14)
!958 = !DILocalVariable(name: "s", scope: !953, file: !3, line: 343, type: !50)
!959 = !DILocation(line: 341, column: 38, scope: !953)
!960 = !DILocation(line: 341, column: 49, scope: !953)
!961 = !DILocation(line: 342, column: 5, scope: !953)
!962 = !DILocation(line: 342, column: 12, scope: !953)
!963 = !DILocation(line: 345, column: 9, scope: !953)
!964 = !DILocation(line: 343, column: 17, scope: !953)
!965 = !DILocation(line: 346, column: 51, scope: !953)
!966 = !DILocation(line: 346, column: 5, scope: !953)
!967 = !DILocation(line: 347, column: 1, scope: !953)
!968 = distinct !DISubprogram(name: "mp_encode_lua_bool", scope: !3, file: !3, line: 349, type: !212, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !969)
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "L", arg: 1, scope: !968, file: !3, line: 349, type: !58)
!971 = !DILocalVariable(name: "buf", arg: 2, scope: !968, file: !3, line: 349, type: !8)
!972 = !DILocalVariable(name: "b", scope: !968, file: !3, line: 350, type: !7)
!973 = !DILocation(line: 349, column: 36, scope: !968)
!974 = !DILocation(line: 349, column: 47, scope: !968)
!975 = !DILocation(line: 350, column: 19, scope: !968)
!976 = !DILocation(line: 350, column: 5, scope: !968)
!977 = !DILocation(line: 350, column: 23, scope: !968)
!978 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !979)
!979 = distinct !DILocation(line: 351, column: 5, scope: !968)
!980 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !979)
!981 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !979)
!982 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !979)
!983 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !979)
!984 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !979)
!985 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !979)
!986 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !979)
!987 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !979)
!988 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !979)
!989 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !979)
!990 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !979)
!991 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !979)
!992 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !993)
!993 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !979)
!994 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !993)
!995 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !993)
!996 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !993)
!997 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !993)
!998 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !993)
!999 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !993)
!1000 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !993)
!1001 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !993)
!1002 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !993)
!1003 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !993)
!1004 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !979)
!1005 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !979)
!1006 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !979)
!1007 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !979)
!1008 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !979)
!1009 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !979)
!1010 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !979)
!1011 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !979)
!1012 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !979)
!1013 = !DILocation(line: 352, column: 1, scope: !968)
!1014 = distinct !DISubprogram(name: "mp_encode_lua_integer", scope: !3, file: !3, line: 355, type: !212, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "L", arg: 1, scope: !1014, file: !3, line: 355, type: !58)
!1017 = !DILocalVariable(name: "buf", arg: 2, scope: !1014, file: !3, line: 355, type: !8)
!1018 = !DILocalVariable(name: "i", scope: !1014, file: !3, line: 359, type: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !54, line: 103, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1021, line: 49, baseType: !29)
!1021 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1022 = !DILocation(line: 355, column: 39, scope: !1014)
!1023 = !DILocation(line: 355, column: 50, scope: !1014)
!1024 = !DILocation(line: 359, column: 21, scope: !1014)
!1025 = !DILocation(line: 359, column: 17, scope: !1014)
!1026 = !DILocation(line: 361, column: 5, scope: !1014)
!1027 = !DILocation(line: 362, column: 1, scope: !1014)
!1028 = distinct !DISubprogram(name: "mp_encode_lua_number", scope: !3, file: !3, line: 367, type: !212, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DILocalVariable(name: "L", arg: 1, scope: !1028, file: !3, line: 367, type: !58)
!1031 = !DILocalVariable(name: "buf", arg: 2, scope: !1028, file: !3, line: 367, type: !8)
!1032 = !DILocalVariable(name: "n", scope: !1028, file: !3, line: 368, type: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !54, line: 99, baseType: !21)
!1034 = !DILocation(line: 367, column: 38, scope: !1028)
!1035 = !DILocation(line: 367, column: 49, scope: !1028)
!1036 = !DILocation(line: 368, column: 20, scope: !1028)
!1037 = !DILocation(line: 368, column: 16, scope: !1028)
!1038 = !DILocation(line: 370, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 370, column: 9)
!1040 = !DILocation(line: 370, column: 9, scope: !1028)
!1041 = !DILocation(line: 355, column: 39, scope: !1014, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 371, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 370, column: 33)
!1044 = !DILocation(line: 355, column: 50, scope: !1014, inlinedAt: !1042)
!1045 = !DILocation(line: 359, column: 21, scope: !1014, inlinedAt: !1042)
!1046 = !DILocation(line: 359, column: 17, scope: !1014, inlinedAt: !1042)
!1047 = !DILocation(line: 361, column: 5, scope: !1014, inlinedAt: !1042)
!1048 = !DILocation(line: 372, column: 5, scope: !1043)
!1049 = !DILocation(line: 373, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 372, column: 12)
!1051 = !DILocation(line: 375, column: 1, scope: !1028)
!1052 = distinct !DISubprogram(name: "mp_encode_lua_table_as_array", scope: !3, file: !3, line: 380, type: !1053, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !58, !8, !30}
!1055 = !{!1056, !1057, !1058, !1059, !1060}
!1056 = !DILocalVariable(name: "L", arg: 1, scope: !1052, file: !3, line: 380, type: !58)
!1057 = !DILocalVariable(name: "buf", arg: 2, scope: !1052, file: !3, line: 380, type: !8)
!1058 = !DILocalVariable(name: "level", arg: 3, scope: !1052, file: !3, line: 380, type: !30)
!1059 = !DILocalVariable(name: "len", scope: !1052, file: !3, line: 382, type: !14)
!1060 = !DILocalVariable(name: "j", scope: !1052, file: !3, line: 382, type: !14)
!1061 = !DILocation(line: 380, column: 46, scope: !1052)
!1062 = !DILocation(line: 380, column: 57, scope: !1052)
!1063 = !DILocation(line: 380, column: 66, scope: !1052)
!1064 = !DILocation(line: 382, column: 18, scope: !1052)
!1065 = !DILocation(line: 382, column: 12, scope: !1052)
!1066 = !DILocation(line: 387, column: 5, scope: !1052)
!1067 = !DILocation(line: 388, column: 5, scope: !1052)
!1068 = !DILocation(line: 382, column: 36, scope: !1052)
!1069 = !DILocation(line: 389, column: 19, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 389, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 389, column: 5)
!1072 = !DILocation(line: 389, column: 5, scope: !1071)
!1073 = !DILocation(line: 390, column: 26, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 389, column: 32)
!1075 = !DILocation(line: 390, column: 9, scope: !1074)
!1076 = !DILocation(line: 391, column: 9, scope: !1074)
!1077 = !DILocation(line: 392, column: 9, scope: !1074)
!1078 = !DILocation(line: 389, column: 28, scope: !1070)
!1079 = distinct !{!1079, !1072, !1080}
!1080 = !DILocation(line: 393, column: 5, scope: !1071)
!1081 = !DILocation(line: 394, column: 1, scope: !1052)
!1082 = distinct !DISubprogram(name: "mp_encode_lua_type", scope: !3, file: !3, line: 482, type: !1053, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "L", arg: 1, scope: !1082, file: !3, line: 482, type: !58)
!1085 = !DILocalVariable(name: "buf", arg: 2, scope: !1082, file: !3, line: 482, type: !8)
!1086 = !DILocalVariable(name: "level", arg: 3, scope: !1082, file: !3, line: 482, type: !30)
!1087 = !DILocalVariable(name: "t", scope: !1082, file: !3, line: 483, type: !30)
!1088 = !DILocalVariable(name: "b", scope: !1089, file: !3, line: 476, type: !1093)
!1089 = distinct !DISubprogram(name: "mp_encode_lua_null", scope: !3, file: !3, line: 475, type: !212, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1090)
!1090 = !{!1091, !1092, !1088}
!1091 = !DILocalVariable(name: "L", arg: 1, scope: !1089, file: !3, line: 475, type: !58)
!1092 = !DILocalVariable(name: "buf", arg: 2, scope: !1089, file: !3, line: 475, type: !8)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 1)
!1096 = !DILocation(line: 476, column: 19, scope: !1089, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 503, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 488, column: 15)
!1099 = !DILocation(line: 482, column: 36, scope: !1082)
!1100 = !DILocation(line: 482, column: 47, scope: !1082)
!1101 = !DILocation(line: 482, column: 56, scope: !1082)
!1102 = !DILocation(line: 483, column: 13, scope: !1082)
!1103 = !DILocation(line: 483, column: 9, scope: !1082)
!1104 = !DILocation(line: 487, column: 11, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 487, column: 9)
!1106 = !DILocation(line: 487, column: 34, scope: !1105)
!1107 = !DILocation(line: 487, column: 25, scope: !1105)
!1108 = !DILocation(line: 488, column: 5, scope: !1082)
!1109 = !DILocation(line: 341, column: 38, scope: !953, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 489, column: 23, scope: !1098)
!1111 = !DILocation(line: 341, column: 49, scope: !953, inlinedAt: !1110)
!1112 = !DILocation(line: 342, column: 5, scope: !953, inlinedAt: !1110)
!1113 = !DILocation(line: 342, column: 12, scope: !953, inlinedAt: !1110)
!1114 = !DILocation(line: 345, column: 9, scope: !953, inlinedAt: !1110)
!1115 = !DILocation(line: 343, column: 17, scope: !953, inlinedAt: !1110)
!1116 = !DILocation(line: 346, column: 51, scope: !953, inlinedAt: !1110)
!1117 = !DILocation(line: 346, column: 5, scope: !953, inlinedAt: !1110)
!1118 = !DILocation(line: 347, column: 1, scope: !953, inlinedAt: !1110)
!1119 = !DILocation(line: 489, column: 52, scope: !1098)
!1120 = !DILocation(line: 490, column: 24, scope: !1098)
!1121 = !DILocation(line: 490, column: 51, scope: !1098)
!1122 = !DILocation(line: 367, column: 38, scope: !1028, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 493, column: 9, scope: !1098)
!1124 = !DILocation(line: 367, column: 49, scope: !1028, inlinedAt: !1123)
!1125 = !DILocation(line: 368, column: 20, scope: !1028, inlinedAt: !1123)
!1126 = !DILocation(line: 368, column: 16, scope: !1028, inlinedAt: !1123)
!1127 = !DILocation(line: 370, column: 9, scope: !1039, inlinedAt: !1123)
!1128 = !DILocation(line: 370, column: 9, scope: !1028, inlinedAt: !1123)
!1129 = !DILocation(line: 355, column: 39, scope: !1014, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 371, column: 9, scope: !1043, inlinedAt: !1123)
!1131 = !DILocation(line: 355, column: 50, scope: !1014, inlinedAt: !1130)
!1132 = !DILocation(line: 359, column: 21, scope: !1014, inlinedAt: !1130)
!1133 = !DILocation(line: 359, column: 17, scope: !1014, inlinedAt: !1130)
!1134 = !DILocation(line: 361, column: 5, scope: !1014, inlinedAt: !1130)
!1135 = !DILocation(line: 372, column: 5, scope: !1043, inlinedAt: !1123)
!1136 = !DILocation(line: 373, column: 9, scope: !1050, inlinedAt: !1123)
!1137 = !DILocalVariable(name: "L", arg: 1, scope: !1138, file: !3, line: 468, type: !58)
!1138 = distinct !DISubprogram(name: "mp_encode_lua_table", scope: !3, file: !3, line: 468, type: !1053, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1139)
!1139 = !{!1137, !1140, !1141}
!1140 = !DILocalVariable(name: "buf", arg: 2, scope: !1138, file: !3, line: 468, type: !8)
!1141 = !DILocalVariable(name: "level", arg: 3, scope: !1138, file: !3, line: 468, type: !30)
!1142 = !DILocation(line: 468, column: 37, scope: !1138, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 502, column: 22, scope: !1098)
!1144 = !DILocation(line: 468, column: 48, scope: !1138, inlinedAt: !1143)
!1145 = !DILocation(line: 468, column: 57, scope: !1138, inlinedAt: !1143)
!1146 = !DILocation(line: 469, column: 9, scope: !1147, inlinedAt: !1143)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 469, column: 9)
!1148 = !DILocation(line: 469, column: 9, scope: !1138, inlinedAt: !1143)
!1149 = !DILocation(line: 470, column: 9, scope: !1147, inlinedAt: !1143)
!1150 = !DILocation(line: 472, column: 9, scope: !1147, inlinedAt: !1143)
!1151 = !DILocation(line: 475, column: 36, scope: !1089, inlinedAt: !1097)
!1152 = !DILocation(line: 475, column: 47, scope: !1089, inlinedAt: !1097)
!1153 = !DILocation(line: 476, column: 5, scope: !1089, inlinedAt: !1097)
!1154 = !DILocation(line: 478, column: 10, scope: !1089, inlinedAt: !1097)
!1155 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 479, column: 5, scope: !1089, inlinedAt: !1097)
!1157 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !1156)
!1158 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !1156)
!1159 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !1156)
!1160 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !1156)
!1161 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !1156)
!1162 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !1156)
!1163 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !1156)
!1164 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !1156)
!1165 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !1156)
!1166 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !1156)
!1167 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !1156)
!1168 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !1156)
!1169 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !1156)
!1171 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1170)
!1172 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1170)
!1173 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1170)
!1174 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1170)
!1175 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1170)
!1176 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1170)
!1177 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1170)
!1178 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1170)
!1179 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1170)
!1180 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1170)
!1181 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !1156)
!1182 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !1156)
!1183 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !1156)
!1184 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !1156)
!1185 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !1156)
!1186 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !1156)
!1187 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !1156)
!1188 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !1156)
!1189 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !1156)
!1190 = !DILocation(line: 480, column: 1, scope: !1089, inlinedAt: !1097)
!1191 = !DILocation(line: 503, column: 41, scope: !1098)
!1192 = !DILocation(line: 505, column: 5, scope: !1082)
!1193 = !DILocation(line: 506, column: 1, scope: !1082)
!1194 = distinct !DISubprogram(name: "mp_encode_lua_table_as_map", scope: !3, file: !3, line: 397, type: !1053, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1195)
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "L", arg: 1, scope: !1194, file: !3, line: 397, type: !58)
!1197 = !DILocalVariable(name: "buf", arg: 2, scope: !1194, file: !3, line: 397, type: !8)
!1198 = !DILocalVariable(name: "level", arg: 3, scope: !1194, file: !3, line: 397, type: !30)
!1199 = !DILocalVariable(name: "len", scope: !1194, file: !3, line: 398, type: !14)
!1200 = !DILocation(line: 397, column: 44, scope: !1194)
!1201 = !DILocation(line: 397, column: 55, scope: !1194)
!1202 = !DILocation(line: 397, column: 64, scope: !1194)
!1203 = !DILocation(line: 398, column: 12, scope: !1194)
!1204 = !DILocation(line: 404, column: 5, scope: !1194)
!1205 = !DILocation(line: 405, column: 5, scope: !1194)
!1206 = !DILocation(line: 406, column: 11, scope: !1194)
!1207 = !DILocation(line: 406, column: 5, scope: !1194)
!1208 = !DILocation(line: 407, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 406, column: 27)
!1210 = !DILocation(line: 408, column: 12, scope: !1209)
!1211 = distinct !{!1211, !1207, !1212}
!1212 = !DILocation(line: 409, column: 5, scope: !1194)
!1213 = !DILocation(line: 0, scope: !1209)
!1214 = !DILocation(line: 412, column: 5, scope: !1194)
!1215 = !DILocation(line: 413, column: 5, scope: !1194)
!1216 = !DILocation(line: 414, column: 11, scope: !1194)
!1217 = !DILocation(line: 414, column: 5, scope: !1194)
!1218 = !DILocation(line: 416, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 414, column: 27)
!1220 = !DILocation(line: 417, column: 9, scope: !1219)
!1221 = !DILocation(line: 418, column: 9, scope: !1219)
!1222 = distinct !{!1222, !1217, !1223}
!1223 = !DILocation(line: 419, column: 5, scope: !1194)
!1224 = !DILocation(line: 420, column: 1, scope: !1194)
!1225 = distinct !DISubprogram(name: "table_is_an_array", scope: !3, file: !3, line: 425, type: !56, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231}
!1227 = !DILocalVariable(name: "L", arg: 1, scope: !1225, file: !3, line: 425, type: !58)
!1228 = !DILocalVariable(name: "count", scope: !1225, file: !3, line: 426, type: !30)
!1229 = !DILocalVariable(name: "max", scope: !1225, file: !3, line: 426, type: !30)
!1230 = !DILocalVariable(name: "n", scope: !1225, file: !3, line: 428, type: !1033)
!1231 = !DILocalVariable(name: "stacktop", scope: !1225, file: !3, line: 434, type: !30)
!1232 = !DILocation(line: 425, column: 34, scope: !1225)
!1233 = !DILocation(line: 426, column: 9, scope: !1225)
!1234 = !DILocation(line: 426, column: 20, scope: !1225)
!1235 = !DILocation(line: 436, column: 16, scope: !1225)
!1236 = !DILocation(line: 434, column: 9, scope: !1225)
!1237 = !DILocation(line: 438, column: 5, scope: !1225)
!1238 = !DILocation(line: 439, column: 11, scope: !1225)
!1239 = !DILocation(line: 439, column: 5, scope: !1225)
!1240 = !DILocation(line: 441, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 439, column: 27)
!1242 = !DILocation(line: 444, column: 29, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 444, column: 13)
!1244 = !DILocation(line: 444, column: 26, scope: !1243)
!1245 = !DILocation(line: 444, column: 45, scope: !1243)
!1246 = !DILocation(line: 444, column: 53, scope: !1243)
!1247 = !DILocation(line: 428, column: 16, scope: !1225)
!1248 = !DILocation(line: 444, column: 74, scope: !1243)
!1249 = !DILocation(line: 444, column: 79, scope: !1243)
!1250 = !DILocation(line: 445, column: 14, scope: !1243)
!1251 = !DILocation(line: 444, column: 13, scope: !1241)
!1252 = !DILocation(line: 450, column: 13, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 449, column: 9)
!1254 = !DILocation(line: 451, column: 13, scope: !1253)
!1255 = !DILocation(line: 453, column: 20, scope: !1241)
!1256 = !DILocation(line: 453, column: 18, scope: !1241)
!1257 = !DILocation(line: 453, column: 16, scope: !1241)
!1258 = !DILocation(line: 453, column: 15, scope: !1241)
!1259 = !DILocation(line: 454, column: 14, scope: !1241)
!1260 = distinct !{!1260, !1239, !1261}
!1261 = !DILocation(line: 455, column: 5, scope: !1225)
!1262 = !DILocation(line: 0, scope: !1241)
!1263 = !DILocation(line: 461, column: 5, scope: !1225)
!1264 = !DILocation(line: 462, column: 16, scope: !1225)
!1265 = !DILocation(line: 462, column: 5, scope: !1225)
!1266 = !DILocation(line: 0, scope: !1225)
!1267 = !DILocation(line: 463, column: 1, scope: !1225)
!1268 = !DILocation(line: 468, column: 37, scope: !1138)
!1269 = !DILocation(line: 468, column: 48, scope: !1138)
!1270 = !DILocation(line: 468, column: 57, scope: !1138)
!1271 = !DILocation(line: 469, column: 9, scope: !1147)
!1272 = !DILocation(line: 469, column: 9, scope: !1138)
!1273 = !DILocation(line: 470, column: 9, scope: !1147)
!1274 = !DILocation(line: 472, column: 9, scope: !1147)
!1275 = !DILocation(line: 473, column: 1, scope: !1138)
!1276 = !DILocation(line: 475, column: 36, scope: !1089)
!1277 = !DILocation(line: 475, column: 47, scope: !1089)
!1278 = !DILocation(line: 476, column: 5, scope: !1089)
!1279 = !DILocation(line: 476, column: 19, scope: !1089)
!1280 = !DILocation(line: 478, column: 10, scope: !1089)
!1281 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 479, column: 5, scope: !1089)
!1283 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !1282)
!1284 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !1282)
!1285 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !1282)
!1286 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !1282)
!1287 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !1282)
!1288 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !1282)
!1289 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !1282)
!1290 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !1282)
!1291 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !1282)
!1292 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !1282)
!1293 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !1282)
!1294 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !1282)
!1295 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !1282)
!1297 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1296)
!1298 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1296)
!1299 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1296)
!1300 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1296)
!1301 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1296)
!1302 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1296)
!1303 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1296)
!1304 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1296)
!1305 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1296)
!1306 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1296)
!1307 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !1282)
!1308 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !1282)
!1309 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !1282)
!1310 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !1282)
!1311 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !1282)
!1312 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !1282)
!1313 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !1282)
!1314 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !1282)
!1315 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !1282)
!1316 = !DILocation(line: 480, column: 1, scope: !1089)
!1317 = distinct !DISubprogram(name: "mp_pack", scope: !3, file: !3, line: 512, type: !56, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DILocalVariable(name: "L", arg: 1, scope: !1317, file: !3, line: 512, type: !58)
!1320 = !DILocalVariable(name: "nargs", scope: !1317, file: !3, line: 513, type: !30)
!1321 = !DILocalVariable(name: "i", scope: !1317, file: !3, line: 514, type: !30)
!1322 = !DILocalVariable(name: "buf", scope: !1317, file: !3, line: 515, type: !8)
!1323 = !DILocation(line: 512, column: 24, scope: !1317)
!1324 = !DILocation(line: 513, column: 17, scope: !1317)
!1325 = !DILocation(line: 513, column: 9, scope: !1317)
!1326 = !DILocation(line: 517, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 517, column: 9)
!1328 = !DILocation(line: 517, column: 9, scope: !1317)
!1329 = !DILocation(line: 518, column: 16, scope: !1327)
!1330 = !DILocation(line: 518, column: 9, scope: !1327)
!1331 = !DILocation(line: 520, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 520, column: 9)
!1333 = !DILocation(line: 520, column: 9, scope: !1317)
!1334 = !DILocation(line: 521, column: 16, scope: !1332)
!1335 = !DILocation(line: 521, column: 9, scope: !1332)
!1336 = !DILocation(line: 107, column: 31, scope: !131, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 523, column: 11, scope: !1317)
!1338 = !DILocation(line: 108, column: 13, scope: !131, inlinedAt: !1337)
!1339 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 111, column: 20, scope: !131, inlinedAt: !1337)
!1341 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1340)
!1342 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1340)
!1343 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1340)
!1344 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1340)
!1345 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1340)
!1346 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1340)
!1347 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1340)
!1348 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1340)
!1349 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1340)
!1350 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1340)
!1351 = !DILocation(line: 111, column: 11, scope: !131, inlinedAt: !1337)
!1352 = !DILocation(line: 113, column: 10, scope: !131, inlinedAt: !1337)
!1353 = !DILocation(line: 113, column: 12, scope: !131, inlinedAt: !1337)
!1354 = !DILocation(line: 114, column: 21, scope: !131, inlinedAt: !1337)
!1355 = !DILocation(line: 114, column: 10, scope: !131, inlinedAt: !1337)
!1356 = !DILocation(line: 114, column: 14, scope: !131, inlinedAt: !1337)
!1357 = !DILocation(line: 515, column: 13, scope: !1317)
!1358 = !DILocation(line: 514, column: 9, scope: !1317)
!1359 = !DILocation(line: 524, column: 18, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 524, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 524, column: 5)
!1362 = !DILocation(line: 524, column: 5, scope: !1361)
!1363 = !DILocation(line: 527, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 524, column: 33)
!1365 = !DILocation(line: 528, column: 9, scope: !1364)
!1366 = !DILocation(line: 530, column: 9, scope: !1364)
!1367 = !DILocation(line: 532, column: 39, scope: !1364)
!1368 = !DILocation(line: 532, column: 46, scope: !1364)
!1369 = !DILocation(line: 532, column: 9, scope: !1364)
!1370 = !DILocation(line: 537, column: 27, scope: !1364)
!1371 = !DILocation(line: 537, column: 19, scope: !1364)
!1372 = !DILocation(line: 538, column: 18, scope: !1364)
!1373 = !DILocation(line: 524, column: 29, scope: !1360)
!1374 = distinct !{!1374, !1362, !1375}
!1375 = !DILocation(line: 539, column: 5, scope: !1361)
!1376 = !DILocation(line: 131, column: 24, scope: !211, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 540, column: 5, scope: !1317)
!1378 = !DILocation(line: 131, column: 43, scope: !211, inlinedAt: !1377)
!1379 = !DILocation(line: 130, column: 29, scope: !211, inlinedAt: !1377)
!1380 = !DILocation(line: 130, column: 40, scope: !211, inlinedAt: !1377)
!1381 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 131, column: 5, scope: !211, inlinedAt: !1377)
!1383 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1382)
!1384 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1382)
!1385 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1382)
!1386 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1382)
!1387 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1382)
!1388 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1382)
!1389 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1382)
!1390 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1382)
!1391 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1382)
!1392 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1382)
!1393 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 132, column: 5, scope: !211, inlinedAt: !1377)
!1395 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1394)
!1396 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1394)
!1397 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1394)
!1398 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1394)
!1399 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1394)
!1400 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1394)
!1401 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1394)
!1402 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1394)
!1403 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1394)
!1404 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1394)
!1405 = !DILocation(line: 543, column: 5, scope: !1317)
!1406 = !DILocation(line: 544, column: 5, scope: !1317)
!1407 = !DILocation(line: 0, scope: !1332)
!1408 = !DILocation(line: 545, column: 1, scope: !1317)
!1409 = distinct !DISubprogram(name: "mp_decode_to_lua_array", scope: !3, file: !3, line: 551, type: !1410, isLocal: false, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !58, !252, !14}
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DILocalVariable(name: "L", arg: 1, scope: !1409, file: !3, line: 551, type: !58)
!1414 = !DILocalVariable(name: "c", arg: 2, scope: !1409, file: !3, line: 551, type: !252)
!1415 = !DILocalVariable(name: "len", arg: 3, scope: !1409, file: !3, line: 551, type: !14)
!1416 = !DILocalVariable(name: "index", scope: !1409, file: !3, line: 553, type: !30)
!1417 = !DILocation(line: 551, column: 40, scope: !1409)
!1418 = !DILocation(line: 551, column: 51, scope: !1409)
!1419 = !DILocation(line: 551, column: 61, scope: !1409)
!1420 = !DILocation(line: 552, column: 5, scope: !1409)
!1421 = !DILocation(line: 553, column: 9, scope: !1409)
!1422 = !DILocation(line: 555, column: 5, scope: !1409)
!1423 = !DILocation(line: 556, column: 5, scope: !1409)
!1424 = !DILocation(line: 557, column: 5, scope: !1409)
!1425 = !DILocation(line: 557, column: 14, scope: !1409)
!1426 = !DILocation(line: 558, column: 26, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 557, column: 18)
!1428 = !DILocation(line: 558, column: 9, scope: !1427)
!1429 = !DILocation(line: 559, column: 9, scope: !1427)
!1430 = !DILocation(line: 560, column: 16, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 560, column: 13)
!1432 = !DILocation(line: 560, column: 13, scope: !1431)
!1433 = !DILocation(line: 560, column: 13, scope: !1427)
!1434 = !DILocation(line: 558, column: 31, scope: !1427)
!1435 = !DILocation(line: 561, column: 9, scope: !1427)
!1436 = distinct !{!1436, !1424, !1437}
!1437 = !DILocation(line: 562, column: 5, scope: !1409)
!1438 = !DILocation(line: 563, column: 1, scope: !1409)
!1439 = distinct !DISubprogram(name: "mp_decode_to_lua_type", scope: !3, file: !3, line: 579, type: !1440, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !58, !252}
!1442 = !{!1443, !1444, !1445, !1448, !1450, !1452, !1454, !1456, !1458, !1460, !1462, !1464, !1469, !1472}
!1443 = !DILocalVariable(name: "L", arg: 1, scope: !1439, file: !3, line: 579, type: !58)
!1444 = !DILocalVariable(name: "c", arg: 2, scope: !1439, file: !3, line: 579, type: !252)
!1445 = !DILocalVariable(name: "f", scope: !1446, file: !3, line: 680, type: !426)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 679, column: 9)
!1447 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 591, column: 21)
!1448 = !DILocalVariable(name: "d", scope: !1449, file: !3, line: 691, type: !21)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 690, column: 9)
!1450 = !DILocalVariable(name: "l", scope: !1451, file: !3, line: 701, type: !14)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 700, column: 9)
!1452 = !DILocalVariable(name: "l", scope: !1453, file: !3, line: 710, type: !14)
!1453 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 709, column: 9)
!1454 = !DILocalVariable(name: "l", scope: !1455, file: !3, line: 719, type: !14)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 718, column: 9)
!1456 = !DILocalVariable(name: "l", scope: !1457, file: !3, line: 732, type: !14)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 731, column: 9)
!1458 = !DILocalVariable(name: "l", scope: !1459, file: !3, line: 740, type: !14)
!1459 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 739, column: 9)
!1460 = !DILocalVariable(name: "l", scope: !1461, file: !3, line: 751, type: !14)
!1461 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 750, column: 9)
!1462 = !DILocalVariable(name: "l", scope: !1463, file: !3, line: 759, type: !14)
!1463 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 758, column: 9)
!1464 = !DILocalVariable(name: "l", scope: !1465, file: !3, line: 775, type: !14)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 774, column: 46)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 774, column: 20)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 771, column: 20)
!1468 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 768, column: 13)
!1469 = !DILocalVariable(name: "l", scope: !1470, file: !3, line: 780, type: !14)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 779, column: 46)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 779, column: 20)
!1472 = !DILocalVariable(name: "l", scope: !1473, file: !3, line: 784, type: !14)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 783, column: 46)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 783, column: 20)
!1475 = !DILocation(line: 579, column: 39, scope: !1439)
!1476 = !DILocation(line: 579, column: 50, scope: !1439)
!1477 = !DILocation(line: 580, column: 5, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 580, column: 5)
!1479 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 580, column: 5)
!1480 = !DILocation(line: 580, column: 5, scope: !1479)
!1481 = !DILocation(line: 580, column: 5, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 580, column: 5)
!1483 = !DILocation(line: 587, column: 5, scope: !1439)
!1484 = !DILocation(line: 591, column: 15, scope: !1439)
!1485 = !DILocation(line: 591, column: 12, scope: !1439)
!1486 = !DILocation(line: 591, column: 5, scope: !1439)
!1487 = !DILocation(line: 593, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 593, column: 9)
!1489 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 593, column: 9)
!1490 = !DILocation(line: 593, column: 9, scope: !1489)
!1491 = !DILocation(line: 593, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 593, column: 9)
!1493 = !DILocation(line: 594, column: 9, scope: !1447)
!1494 = !DILocation(line: 595, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 595, column: 9)
!1496 = !DILocation(line: 596, column: 9, scope: !1447)
!1497 = !DILocation(line: 598, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 598, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 598, column: 9)
!1500 = !DILocation(line: 598, column: 9, scope: !1499)
!1501 = !DILocation(line: 598, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 598, column: 9)
!1503 = !DILocation(line: 599, column: 40, scope: !1447)
!1504 = !DILocation(line: 599, column: 27, scope: !1447)
!1505 = !DILocation(line: 599, column: 9, scope: !1447)
!1506 = !DILocation(line: 600, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 600, column: 9)
!1508 = !DILocation(line: 601, column: 9, scope: !1447)
!1509 = !DILocation(line: 603, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 603, column: 9)
!1511 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 603, column: 9)
!1512 = !DILocation(line: 603, column: 9, scope: !1511)
!1513 = !DILocation(line: 603, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 603, column: 9)
!1515 = !DILocation(line: 604, column: 9, scope: !1447)
!1516 = !DILocation(line: 607, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 607, column: 9)
!1518 = !DILocation(line: 608, column: 9, scope: !1447)
!1519 = !DILocation(line: 610, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 610, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 610, column: 9)
!1522 = !DILocation(line: 610, column: 9, scope: !1521)
!1523 = !DILocation(line: 610, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 610, column: 9)
!1525 = !DILocation(line: 612, column: 14, scope: !1447)
!1526 = !DILocation(line: 612, column: 22, scope: !1447)
!1527 = !DILocation(line: 611, column: 27, scope: !1447)
!1528 = !DILocation(line: 613, column: 14, scope: !1447)
!1529 = !DILocation(line: 612, column: 28, scope: !1447)
!1530 = !DILocation(line: 611, column: 9, scope: !1447)
!1531 = !DILocation(line: 614, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 614, column: 9)
!1533 = !DILocation(line: 615, column: 9, scope: !1447)
!1534 = !DILocation(line: 617, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 617, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 617, column: 9)
!1537 = !DILocation(line: 617, column: 9, scope: !1536)
!1538 = !DILocation(line: 617, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 617, column: 9)
!1540 = !DILocation(line: 618, column: 9, scope: !1447)
!1541 = !DILocation(line: 623, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 623, column: 9)
!1543 = !DILocation(line: 624, column: 9, scope: !1447)
!1544 = !DILocation(line: 626, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 626, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 626, column: 9)
!1547 = !DILocation(line: 626, column: 9, scope: !1546)
!1548 = !DILocation(line: 626, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 626, column: 9)
!1550 = !DILocation(line: 628, column: 23, scope: !1447)
!1551 = !DILocation(line: 628, column: 14, scope: !1447)
!1552 = !DILocation(line: 628, column: 31, scope: !1447)
!1553 = !DILocation(line: 629, column: 23, scope: !1447)
!1554 = !DILocation(line: 629, column: 14, scope: !1447)
!1555 = !DILocation(line: 629, column: 31, scope: !1447)
!1556 = !DILocation(line: 628, column: 38, scope: !1447)
!1557 = !DILocation(line: 630, column: 23, scope: !1447)
!1558 = !DILocation(line: 630, column: 14, scope: !1447)
!1559 = !DILocation(line: 630, column: 31, scope: !1447)
!1560 = !DILocation(line: 629, column: 38, scope: !1447)
!1561 = !DILocation(line: 631, column: 23, scope: !1447)
!1562 = !DILocation(line: 631, column: 14, scope: !1447)
!1563 = !DILocation(line: 630, column: 37, scope: !1447)
!1564 = !DILocation(line: 628, column: 13, scope: !1447)
!1565 = !DILocation(line: 627, column: 9, scope: !1447)
!1566 = !DILocation(line: 632, column: 9, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 632, column: 9)
!1568 = !DILocation(line: 633, column: 9, scope: !1447)
!1569 = !DILocation(line: 635, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 635, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 635, column: 9)
!1572 = !DILocation(line: 635, column: 9, scope: !1571)
!1573 = !DILocation(line: 635, column: 9, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 635, column: 9)
!1575 = !DILocation(line: 636, column: 9, scope: !1447)
!1576 = !DILocation(line: 645, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 645, column: 9)
!1578 = !DILocation(line: 646, column: 9, scope: !1447)
!1579 = !DILocation(line: 648, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 648, column: 9)
!1581 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 648, column: 9)
!1582 = !DILocation(line: 648, column: 9, scope: !1581)
!1583 = !DILocation(line: 648, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 648, column: 9)
!1585 = !DILocation(line: 654, column: 23, scope: !1447)
!1586 = !DILocation(line: 654, column: 14, scope: !1447)
!1587 = !DILocation(line: 654, column: 31, scope: !1447)
!1588 = !DILocation(line: 655, column: 23, scope: !1447)
!1589 = !DILocation(line: 655, column: 14, scope: !1447)
!1590 = !DILocation(line: 655, column: 31, scope: !1447)
!1591 = !DILocation(line: 654, column: 38, scope: !1447)
!1592 = !DILocation(line: 656, column: 23, scope: !1447)
!1593 = !DILocation(line: 656, column: 14, scope: !1447)
!1594 = !DILocation(line: 656, column: 31, scope: !1447)
!1595 = !DILocation(line: 655, column: 38, scope: !1447)
!1596 = !DILocation(line: 657, column: 23, scope: !1447)
!1597 = !DILocation(line: 657, column: 14, scope: !1447)
!1598 = !DILocation(line: 657, column: 31, scope: !1447)
!1599 = !DILocation(line: 656, column: 38, scope: !1447)
!1600 = !DILocation(line: 658, column: 23, scope: !1447)
!1601 = !DILocation(line: 658, column: 14, scope: !1447)
!1602 = !DILocation(line: 658, column: 31, scope: !1447)
!1603 = !DILocation(line: 657, column: 38, scope: !1447)
!1604 = !DILocation(line: 659, column: 23, scope: !1447)
!1605 = !DILocation(line: 659, column: 14, scope: !1447)
!1606 = !DILocation(line: 659, column: 31, scope: !1447)
!1607 = !DILocation(line: 658, column: 38, scope: !1447)
!1608 = !DILocation(line: 660, column: 23, scope: !1447)
!1609 = !DILocation(line: 660, column: 14, scope: !1447)
!1610 = !DILocation(line: 660, column: 31, scope: !1447)
!1611 = !DILocation(line: 659, column: 38, scope: !1447)
!1612 = !DILocation(line: 661, column: 23, scope: !1447)
!1613 = !DILocation(line: 661, column: 14, scope: !1447)
!1614 = !DILocation(line: 660, column: 37, scope: !1447)
!1615 = !DILocation(line: 654, column: 13, scope: !1447)
!1616 = !DILocation(line: 650, column: 9, scope: !1447)
!1617 = !DILocation(line: 662, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 662, column: 9)
!1619 = !DILocation(line: 663, column: 9, scope: !1447)
!1620 = !DILocation(line: 665, column: 9, scope: !1447)
!1621 = !DILocation(line: 666, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 666, column: 9)
!1623 = !DILocation(line: 667, column: 9, scope: !1447)
!1624 = !DILocation(line: 669, column: 9, scope: !1447)
!1625 = !DILocation(line: 670, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 670, column: 9)
!1627 = !DILocation(line: 671, column: 9, scope: !1447)
!1628 = !DILocation(line: 673, column: 9, scope: !1447)
!1629 = !DILocation(line: 674, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 674, column: 9)
!1631 = !DILocation(line: 675, column: 9, scope: !1447)
!1632 = !DILocation(line: 677, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 677, column: 9)
!1634 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 677, column: 9)
!1635 = !DILocation(line: 677, column: 9, scope: !1634)
!1636 = !DILocation(line: 677, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 677, column: 9)
!1638 = !DILocation(line: 680, column: 13, scope: !1446)
!1639 = !DILocation(line: 681, column: 27, scope: !1446)
!1640 = !DILocation(line: 681, column: 13, scope: !1446)
!1641 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 682, column: 13, scope: !1446)
!1643 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1642)
!1644 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1642)
!1645 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1642)
!1646 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1642)
!1647 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1642)
!1648 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1642)
!1649 = !DILocation(line: 0, scope: !88, inlinedAt: !1642)
!1650 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !1642)
!1651 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1642)
!1652 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !1642)
!1653 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !1642)
!1654 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !1642)
!1655 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !1642)
!1656 = !DILocation(line: 683, column: 30, scope: !1446)
!1657 = !DILocation(line: 680, column: 19, scope: !1446)
!1658 = !DILocation(line: 683, column: 13, scope: !1446)
!1659 = !DILocation(line: 684, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 684, column: 13)
!1661 = !DILocation(line: 685, column: 9, scope: !1447)
!1662 = !DILocation(line: 686, column: 9, scope: !1447)
!1663 = !DILocation(line: 688, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 688, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 688, column: 9)
!1666 = !DILocation(line: 688, column: 9, scope: !1665)
!1667 = !DILocation(line: 688, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 688, column: 9)
!1669 = !DILocation(line: 691, column: 13, scope: !1449)
!1670 = !DILocation(line: 692, column: 27, scope: !1449)
!1671 = !DILocation(line: 692, column: 13, scope: !1449)
!1672 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 693, column: 13, scope: !1449)
!1674 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1673)
!1675 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1673)
!1676 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1673)
!1677 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1673)
!1678 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1673)
!1679 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1673)
!1680 = !DILocation(line: 0, scope: !88, inlinedAt: !1673)
!1681 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !1673)
!1682 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1673)
!1683 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !1673)
!1684 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !1673)
!1685 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !1673)
!1686 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !1673)
!1687 = !DILocation(line: 694, column: 30, scope: !1449)
!1688 = !DILocation(line: 691, column: 20, scope: !1449)
!1689 = !DILocation(line: 694, column: 13, scope: !1449)
!1690 = !DILocation(line: 695, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 695, column: 13)
!1692 = !DILocation(line: 696, column: 9, scope: !1447)
!1693 = !DILocation(line: 697, column: 9, scope: !1447)
!1694 = !DILocation(line: 699, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 699, column: 9)
!1696 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 699, column: 9)
!1697 = !DILocation(line: 699, column: 9, scope: !1696)
!1698 = !DILocation(line: 699, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 699, column: 9)
!1700 = !DILocation(line: 701, column: 24, scope: !1451)
!1701 = !DILocation(line: 701, column: 20, scope: !1451)
!1702 = !DILocation(line: 702, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 702, column: 13)
!1704 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 702, column: 13)
!1705 = !DILocation(line: 702, column: 13, scope: !1704)
!1706 = !DILocation(line: 702, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 702, column: 13)
!1708 = !DILocation(line: 703, column: 42, scope: !1451)
!1709 = !DILocation(line: 703, column: 13, scope: !1451)
!1710 = !DILocation(line: 704, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 704, column: 13)
!1712 = !DILocation(line: 705, column: 9, scope: !1447)
!1713 = !DILocation(line: 708, column: 9, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 708, column: 9)
!1715 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 708, column: 9)
!1716 = !DILocation(line: 708, column: 9, scope: !1715)
!1717 = !DILocation(line: 708, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 708, column: 9)
!1719 = !DILocation(line: 710, column: 25, scope: !1453)
!1720 = !DILocation(line: 710, column: 33, scope: !1453)
!1721 = !DILocation(line: 710, column: 41, scope: !1453)
!1722 = !DILocation(line: 710, column: 39, scope: !1453)
!1723 = !DILocation(line: 710, column: 20, scope: !1453)
!1724 = !DILocation(line: 711, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 711, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 711, column: 13)
!1727 = !DILocation(line: 711, column: 13, scope: !1726)
!1728 = !DILocation(line: 711, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 711, column: 13)
!1730 = !DILocation(line: 712, column: 42, scope: !1453)
!1731 = !DILocation(line: 712, column: 13, scope: !1453)
!1732 = !DILocation(line: 713, column: 13, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 713, column: 13)
!1734 = !DILocation(line: 714, column: 9, scope: !1447)
!1735 = !DILocation(line: 717, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 717, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 717, column: 9)
!1738 = !DILocation(line: 717, column: 9, scope: !1737)
!1739 = !DILocation(line: 717, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 717, column: 9)
!1741 = !DILocation(line: 719, column: 33, scope: !1455)
!1742 = !DILocation(line: 719, column: 25, scope: !1455)
!1743 = !DILocation(line: 719, column: 41, scope: !1455)
!1744 = !DILocation(line: 720, column: 33, scope: !1455)
!1745 = !DILocation(line: 720, column: 25, scope: !1455)
!1746 = !DILocation(line: 720, column: 41, scope: !1455)
!1747 = !DILocation(line: 719, column: 48, scope: !1455)
!1748 = !DILocation(line: 721, column: 33, scope: !1455)
!1749 = !DILocation(line: 721, column: 25, scope: !1455)
!1750 = !DILocation(line: 721, column: 41, scope: !1455)
!1751 = !DILocation(line: 720, column: 48, scope: !1455)
!1752 = !DILocation(line: 722, column: 32, scope: !1455)
!1753 = !DILocation(line: 722, column: 24, scope: !1455)
!1754 = !DILocation(line: 721, column: 47, scope: !1455)
!1755 = !DILocation(line: 719, column: 20, scope: !1455)
!1756 = !DILocation(line: 723, column: 13, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 723, column: 13)
!1758 = !DILocation(line: 724, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 724, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 724, column: 13)
!1761 = !DILocation(line: 724, column: 13, scope: !1760)
!1762 = !DILocation(line: 724, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 724, column: 13)
!1764 = !DILocation(line: 725, column: 13, scope: !1455)
!1765 = !DILocation(line: 726, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 726, column: 13)
!1767 = !DILocation(line: 727, column: 9, scope: !1447)
!1768 = !DILocation(line: 730, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 730, column: 9)
!1770 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 730, column: 9)
!1771 = !DILocation(line: 730, column: 9, scope: !1770)
!1772 = !DILocation(line: 730, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 730, column: 9)
!1774 = !DILocation(line: 732, column: 25, scope: !1457)
!1775 = !DILocation(line: 732, column: 33, scope: !1457)
!1776 = !DILocation(line: 732, column: 41, scope: !1457)
!1777 = !DILocation(line: 732, column: 39, scope: !1457)
!1778 = !DILocation(line: 732, column: 20, scope: !1457)
!1779 = !DILocation(line: 733, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 733, column: 13)
!1781 = !DILocation(line: 734, column: 13, scope: !1457)
!1782 = !DILocation(line: 736, column: 9, scope: !1447)
!1783 = !DILocation(line: 738, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 738, column: 9)
!1785 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 738, column: 9)
!1786 = !DILocation(line: 738, column: 9, scope: !1785)
!1787 = !DILocation(line: 738, column: 9, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 738, column: 9)
!1789 = !DILocation(line: 740, column: 33, scope: !1459)
!1790 = !DILocation(line: 740, column: 25, scope: !1459)
!1791 = !DILocation(line: 740, column: 41, scope: !1459)
!1792 = !DILocation(line: 741, column: 33, scope: !1459)
!1793 = !DILocation(line: 741, column: 25, scope: !1459)
!1794 = !DILocation(line: 741, column: 41, scope: !1459)
!1795 = !DILocation(line: 740, column: 48, scope: !1459)
!1796 = !DILocation(line: 742, column: 33, scope: !1459)
!1797 = !DILocation(line: 742, column: 25, scope: !1459)
!1798 = !DILocation(line: 742, column: 41, scope: !1459)
!1799 = !DILocation(line: 741, column: 48, scope: !1459)
!1800 = !DILocation(line: 743, column: 32, scope: !1459)
!1801 = !DILocation(line: 743, column: 24, scope: !1459)
!1802 = !DILocation(line: 742, column: 47, scope: !1459)
!1803 = !DILocation(line: 740, column: 20, scope: !1459)
!1804 = !DILocation(line: 744, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 744, column: 13)
!1806 = !DILocation(line: 745, column: 13, scope: !1459)
!1807 = !DILocation(line: 747, column: 9, scope: !1447)
!1808 = !DILocation(line: 749, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 749, column: 9)
!1810 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 749, column: 9)
!1811 = !DILocation(line: 749, column: 9, scope: !1810)
!1812 = !DILocation(line: 749, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 749, column: 9)
!1814 = !DILocation(line: 751, column: 25, scope: !1461)
!1815 = !DILocation(line: 751, column: 33, scope: !1461)
!1816 = !DILocation(line: 751, column: 41, scope: !1461)
!1817 = !DILocation(line: 751, column: 39, scope: !1461)
!1818 = !DILocation(line: 751, column: 20, scope: !1461)
!1819 = !DILocation(line: 752, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 752, column: 13)
!1821 = !DILocation(line: 753, column: 13, scope: !1461)
!1822 = !DILocation(line: 755, column: 9, scope: !1447)
!1823 = !DILocation(line: 757, column: 9, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 757, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 757, column: 9)
!1826 = !DILocation(line: 757, column: 9, scope: !1825)
!1827 = !DILocation(line: 757, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 757, column: 9)
!1829 = !DILocation(line: 759, column: 33, scope: !1463)
!1830 = !DILocation(line: 759, column: 25, scope: !1463)
!1831 = !DILocation(line: 759, column: 41, scope: !1463)
!1832 = !DILocation(line: 760, column: 33, scope: !1463)
!1833 = !DILocation(line: 760, column: 25, scope: !1463)
!1834 = !DILocation(line: 760, column: 41, scope: !1463)
!1835 = !DILocation(line: 759, column: 48, scope: !1463)
!1836 = !DILocation(line: 761, column: 33, scope: !1463)
!1837 = !DILocation(line: 761, column: 25, scope: !1463)
!1838 = !DILocation(line: 761, column: 41, scope: !1463)
!1839 = !DILocation(line: 760, column: 48, scope: !1463)
!1840 = !DILocation(line: 762, column: 32, scope: !1463)
!1841 = !DILocation(line: 762, column: 24, scope: !1463)
!1842 = !DILocation(line: 761, column: 47, scope: !1463)
!1843 = !DILocation(line: 759, column: 20, scope: !1463)
!1844 = !DILocation(line: 763, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 763, column: 13)
!1846 = !DILocation(line: 764, column: 13, scope: !1463)
!1847 = !DILocation(line: 766, column: 9, scope: !1447)
!1848 = !DILocation(line: 768, column: 30, scope: !1468)
!1849 = !DILocation(line: 768, column: 13, scope: !1447)
!1850 = !DILocation(line: 769, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 768, column: 36)
!1852 = !DILocation(line: 770, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 770, column: 13)
!1854 = !DILocation(line: 771, column: 9, scope: !1851)
!1855 = !DILocation(line: 771, column: 29, scope: !1467)
!1856 = !DILocation(line: 771, column: 20, scope: !1468)
!1857 = !DILocation(line: 772, column: 31, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 771, column: 46)
!1859 = !DILocation(line: 772, column: 13, scope: !1858)
!1860 = !DILocation(line: 773, column: 13, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 773, column: 13)
!1862 = !DILocation(line: 774, column: 9, scope: !1858)
!1863 = !DILocation(line: 775, column: 32, scope: !1465)
!1864 = !DILocation(line: 775, column: 24, scope: !1465)
!1865 = !DILocation(line: 775, column: 20, scope: !1465)
!1866 = !DILocation(line: 776, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 776, column: 13)
!1868 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 776, column: 13)
!1869 = !DILocation(line: 776, column: 13, scope: !1868)
!1870 = !DILocation(line: 776, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 776, column: 13)
!1872 = !DILocation(line: 777, column: 42, scope: !1465)
!1873 = !DILocation(line: 777, column: 13, scope: !1465)
!1874 = !DILocation(line: 778, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 778, column: 13)
!1876 = !DILocation(line: 779, column: 9, scope: !1466)
!1877 = !DILocation(line: 779, column: 29, scope: !1471)
!1878 = !DILocation(line: 779, column: 20, scope: !1466)
!1879 = !DILocation(line: 780, column: 32, scope: !1470)
!1880 = !DILocation(line: 780, column: 24, scope: !1470)
!1881 = !DILocation(line: 780, column: 20, scope: !1470)
!1882 = !DILocation(line: 781, column: 13, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 781, column: 13)
!1884 = !DILocation(line: 782, column: 13, scope: !1470)
!1885 = !DILocation(line: 783, column: 9, scope: !1470)
!1886 = !DILocation(line: 784, column: 32, scope: !1473)
!1887 = !DILocation(line: 784, column: 24, scope: !1473)
!1888 = !DILocation(line: 784, column: 20, scope: !1473)
!1889 = !DILocation(line: 785, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 785, column: 13)
!1891 = !DILocation(line: 786, column: 13, scope: !1473)
!1892 = !DILocation(line: 787, column: 9, scope: !1473)
!1893 = !DILocation(line: 788, column: 16, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 787, column: 16)
!1895 = !DILocation(line: 788, column: 20, scope: !1894)
!1896 = distinct !DISubprogram(name: "mp_decode_to_lua_hash", scope: !3, file: !3, line: 565, type: !1410, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DILocalVariable(name: "L", arg: 1, scope: !1896, file: !3, line: 565, type: !58)
!1899 = !DILocalVariable(name: "c", arg: 2, scope: !1896, file: !3, line: 565, type: !252)
!1900 = !DILocalVariable(name: "len", arg: 3, scope: !1896, file: !3, line: 565, type: !14)
!1901 = !DILocation(line: 565, column: 39, scope: !1896)
!1902 = !DILocation(line: 565, column: 50, scope: !1896)
!1903 = !DILocation(line: 565, column: 60, scope: !1896)
!1904 = !DILocation(line: 566, column: 5, scope: !1896)
!1905 = !DILocation(line: 567, column: 5, scope: !1896)
!1906 = !DILocation(line: 568, column: 5, scope: !1896)
!1907 = !DILocation(line: 568, column: 14, scope: !1896)
!1908 = !DILocation(line: 569, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 568, column: 18)
!1910 = !DILocation(line: 570, column: 16, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 570, column: 13)
!1912 = !DILocation(line: 570, column: 13, scope: !1911)
!1913 = !DILocation(line: 570, column: 13, scope: !1909)
!1914 = !DILocation(line: 571, column: 9, scope: !1909)
!1915 = !DILocation(line: 572, column: 16, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 572, column: 13)
!1917 = !DILocation(line: 572, column: 13, scope: !1916)
!1918 = !DILocation(line: 572, column: 13, scope: !1909)
!1919 = !DILocation(line: 573, column: 9, scope: !1909)
!1920 = distinct !{!1920, !1906, !1921}
!1921 = !DILocation(line: 574, column: 5, scope: !1896)
!1922 = !DILocation(line: 575, column: 1, scope: !1896)
!1923 = distinct !DISubprogram(name: "mp_unpack_full", scope: !3, file: !3, line: 793, type: !1924, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!30, !58, !30, !30}
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1927 = !DILocalVariable(name: "L", arg: 1, scope: !1923, file: !3, line: 793, type: !58)
!1928 = !DILocalVariable(name: "limit", arg: 2, scope: !1923, file: !3, line: 793, type: !30)
!1929 = !DILocalVariable(name: "offset", arg: 3, scope: !1923, file: !3, line: 793, type: !30)
!1930 = !DILocalVariable(name: "len", scope: !1923, file: !3, line: 794, type: !14)
!1931 = !DILocalVariable(name: "s", scope: !1923, file: !3, line: 795, type: !50)
!1932 = !DILocalVariable(name: "c", scope: !1923, file: !3, line: 796, type: !253)
!1933 = !DILocalVariable(name: "cnt", scope: !1923, file: !3, line: 797, type: !30)
!1934 = !DILocalVariable(name: "decode_all", scope: !1923, file: !3, line: 798, type: !30)
!1935 = !DILocalVariable(name: "offset", scope: !1936, file: !3, line: 830, type: !30)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 826, column: 22)
!1937 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 826, column: 9)
!1938 = !DILocation(line: 793, column: 31, scope: !1923)
!1939 = !DILocation(line: 793, column: 38, scope: !1923)
!1940 = !DILocation(line: 793, column: 49, scope: !1923)
!1941 = !DILocation(line: 794, column: 5, scope: !1923)
!1942 = !DILocation(line: 796, column: 5, scope: !1923)
!1943 = !DILocation(line: 798, column: 30, scope: !1923)
!1944 = !DILocation(line: 794, column: 12, scope: !1923)
!1945 = !DILocation(line: 800, column: 9, scope: !1923)
!1946 = !DILocation(line: 795, column: 17, scope: !1923)
!1947 = !DILocation(line: 802, column: 20, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 802, column: 9)
!1949 = !DILocation(line: 805, column: 21, scope: !1948)
!1950 = !DILocation(line: 803, column: 16, scope: !1948)
!1951 = !DILocation(line: 803, column: 9, scope: !1948)
!1952 = !DILocation(line: 806, column: 14, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 806, column: 14)
!1954 = !DILocation(line: 806, column: 23, scope: !1953)
!1955 = !DILocation(line: 806, column: 21, scope: !1953)
!1956 = !DILocation(line: 806, column: 14, scope: !1948)
!1957 = !DILocation(line: 807, column: 16, scope: !1953)
!1958 = !DILocation(line: 807, column: 9, scope: !1953)
!1959 = !DILocation(line: 810, column: 9, scope: !1923)
!1960 = !DILocation(line: 812, column: 44, scope: !1923)
!1961 = !DILocation(line: 812, column: 55, scope: !1923)
!1962 = !DILocation(line: 796, column: 12, scope: !1923)
!1963 = !DILocation(line: 154, column: 26, scope: !249, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 812, column: 5, scope: !1923)
!1965 = !DILocation(line: 154, column: 55, scope: !249, inlinedAt: !1964)
!1966 = !DILocation(line: 154, column: 65, scope: !249, inlinedAt: !1964)
!1967 = !DILocation(line: 155, column: 13, scope: !249, inlinedAt: !1964)
!1968 = !DILocation(line: 155, column: 15, scope: !249, inlinedAt: !1964)
!1969 = !DILocation(line: 156, column: 13, scope: !249, inlinedAt: !1964)
!1970 = !DILocation(line: 156, column: 18, scope: !249, inlinedAt: !1964)
!1971 = !DILocation(line: 157, column: 13, scope: !249, inlinedAt: !1964)
!1972 = !DILocation(line: 157, column: 17, scope: !249, inlinedAt: !1964)
!1973 = !DILocation(line: 797, column: 9, scope: !1923)
!1974 = !DILocation(line: 816, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 816, column: 5)
!1976 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 816, column: 5)
!1977 = !DILocation(line: 816, column: 36, scope: !1975)
!1978 = !DILocation(line: 816, column: 29, scope: !1975)
!1979 = !DILocation(line: 817, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 816, column: 52)
!1981 = !DILocation(line: 819, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 819, column: 13)
!1983 = !DILocation(line: 819, column: 13, scope: !1980)
!1984 = !DILocation(line: 820, column: 20, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 819, column: 40)
!1986 = !DILocation(line: 820, column: 13, scope: !1985)
!1987 = !DILocation(line: 822, column: 20, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 821, column: 50)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 821, column: 20)
!1990 = !DILocation(line: 822, column: 13, scope: !1988)
!1991 = !DILocation(line: 816, column: 48, scope: !1975)
!1992 = !DILocation(line: 816, column: 20, scope: !1975)
!1993 = distinct !{!1993, !1994, !1995}
!1994 = !DILocation(line: 816, column: 5, scope: !1976)
!1995 = !DILocation(line: 824, column: 5, scope: !1976)
!1996 = !DILocation(line: 0, scope: !1975)
!1997 = !DILocation(line: 826, column: 9, scope: !1923)
!1998 = !DILocation(line: 830, column: 22, scope: !1936)
!1999 = !DILocation(line: 830, column: 26, scope: !1936)
!2000 = !DILocation(line: 832, column: 9, scope: !1936)
!2001 = !DILocation(line: 835, column: 30, scope: !1936)
!2002 = !DILocation(line: 835, column: 35, scope: !1936)
!2003 = !DILocation(line: 835, column: 28, scope: !1936)
!2004 = !DILocation(line: 835, column: 9, scope: !1936)
!2005 = !DILocation(line: 842, column: 9, scope: !1936)
!2006 = !DILocation(line: 843, column: 13, scope: !1936)
!2007 = !DILocation(line: 844, column: 5, scope: !1936)
!2008 = !DILocation(line: 0, scope: !1923)
!2009 = !DILocation(line: 847, column: 1, scope: !1923)
!2010 = distinct !DISubprogram(name: "mp_unpack", scope: !3, file: !3, line: 849, type: !56, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2011)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "L", arg: 1, scope: !2010, file: !3, line: 849, type: !58)
!2013 = !DILocation(line: 849, column: 26, scope: !2010)
!2014 = !DILocation(line: 850, column: 12, scope: !2010)
!2015 = !DILocation(line: 850, column: 5, scope: !2010)
!2016 = distinct !DISubprogram(name: "mp_unpack_one", scope: !3, file: !3, line: 853, type: !56, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2017)
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "L", arg: 1, scope: !2016, file: !3, line: 853, type: !58)
!2019 = !DILocalVariable(name: "offset", scope: !2016, file: !3, line: 854, type: !30)
!2020 = !DILocation(line: 853, column: 30, scope: !2016)
!2021 = !DILocation(line: 854, column: 18, scope: !2016)
!2022 = !DILocation(line: 854, column: 9, scope: !2016)
!2023 = !DILocation(line: 856, column: 5, scope: !2016)
!2024 = !DILocation(line: 857, column: 12, scope: !2016)
!2025 = !DILocation(line: 857, column: 5, scope: !2016)
!2026 = distinct !DISubprogram(name: "mp_unpack_limit", scope: !3, file: !3, line: 860, type: !56, isLocal: false, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "L", arg: 1, scope: !2026, file: !3, line: 860, type: !58)
!2029 = !DILocalVariable(name: "limit", scope: !2026, file: !3, line: 861, type: !30)
!2030 = !DILocalVariable(name: "offset", scope: !2026, file: !3, line: 862, type: !30)
!2031 = !DILocation(line: 860, column: 32, scope: !2026)
!2032 = !DILocation(line: 861, column: 17, scope: !2026)
!2033 = !DILocation(line: 861, column: 9, scope: !2026)
!2034 = !DILocation(line: 862, column: 18, scope: !2026)
!2035 = !DILocation(line: 862, column: 9, scope: !2026)
!2036 = !DILocation(line: 864, column: 5, scope: !2026)
!2037 = !DILocation(line: 866, column: 12, scope: !2026)
!2038 = !DILocation(line: 866, column: 5, scope: !2026)
!2039 = distinct !DISubprogram(name: "mp_safe", scope: !3, file: !3, line: 869, type: !56, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2040)
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "L", arg: 1, scope: !2039, file: !3, line: 869, type: !58)
!2042 = !DILocalVariable(name: "argc", scope: !2039, file: !3, line: 870, type: !30)
!2043 = !DILocalVariable(name: "err", scope: !2039, file: !3, line: 870, type: !30)
!2044 = !DILocalVariable(name: "total_results", scope: !2039, file: !3, line: 870, type: !30)
!2045 = !DILocation(line: 869, column: 24, scope: !2039)
!2046 = !DILocation(line: 872, column: 12, scope: !2039)
!2047 = !DILocation(line: 870, column: 9, scope: !2039)
!2048 = !DILocation(line: 876, column: 5, scope: !2039)
!2049 = !DILocation(line: 877, column: 5, scope: !2039)
!2050 = !DILocation(line: 879, column: 11, scope: !2039)
!2051 = !DILocation(line: 870, column: 15, scope: !2039)
!2052 = !DILocation(line: 880, column: 21, scope: !2039)
!2053 = !DILocation(line: 870, column: 20, scope: !2039)
!2054 = !DILocation(line: 882, column: 10, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 882, column: 9)
!2056 = !DILocation(line: 882, column: 9, scope: !2039)
!2057 = !DILocation(line: 885, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 884, column: 12)
!2059 = !DILocation(line: 886, column: 9, scope: !2058)
!2060 = !DILocation(line: 887, column: 9, scope: !2058)
!2061 = !DILocation(line: 0, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 882, column: 15)
!2063 = !DILocation(line: 889, column: 1, scope: !2039)
!2064 = distinct !DISubprogram(name: "luaopen_create", scope: !3, file: !3, line: 900, type: !56, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "L", arg: 1, scope: !2064, file: !3, line: 900, type: !58)
!2067 = !DILocalVariable(name: "i", scope: !2064, file: !3, line: 901, type: !30)
!2068 = !DILocation(line: 900, column: 31, scope: !2064)
!2069 = !DILocation(line: 904, column: 5, scope: !2064)
!2070 = !DILocation(line: 901, column: 9, scope: !2064)
!2071 = !DILocation(line: 907, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 906, column: 60)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 906, column: 5)
!2074 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 906, column: 5)
!2075 = !DILocation(line: 908, column: 9, scope: !2072)
!2076 = !DILocation(line: 912, column: 5, scope: !2064)
!2077 = !DILocation(line: 913, column: 5, scope: !2064)
!2078 = !DILocation(line: 914, column: 5, scope: !2064)
!2079 = !DILocation(line: 915, column: 5, scope: !2064)
!2080 = !DILocation(line: 916, column: 5, scope: !2064)
!2081 = !DILocation(line: 917, column: 5, scope: !2064)
!2082 = !DILocation(line: 918, column: 5, scope: !2064)
!2083 = !DILocation(line: 919, column: 5, scope: !2064)
!2084 = !DILocation(line: 920, column: 5, scope: !2064)
!2085 = distinct !DISubprogram(name: "luaopen_cmsgpack", scope: !3, file: !3, line: 923, type: !56, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2086)
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "L", arg: 1, scope: !2085, file: !3, line: 923, type: !58)
!2088 = !DILocation(line: 923, column: 44, scope: !2085)
!2089 = !DILocation(line: 924, column: 5, scope: !2085)
!2090 = !DILocation(line: 928, column: 5, scope: !2085)
!2091 = !DILocation(line: 929, column: 5, scope: !2085)
!2092 = !DILocation(line: 932, column: 5, scope: !2085)
!2093 = distinct !DISubprogram(name: "luaopen_cmsgpack_safe", scope: !3, file: !3, line: 935, type: !56, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2094)
!2094 = !{!2095, !2096}
!2095 = !DILocalVariable(name: "L", arg: 1, scope: !2093, file: !3, line: 935, type: !58)
!2096 = !DILocalVariable(name: "i", scope: !2093, file: !3, line: 936, type: !30)
!2097 = !DILocation(line: 935, column: 49, scope: !2093)
!2098 = !DILocation(line: 923, column: 44, scope: !2085, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 938, column: 5, scope: !2093)
!2100 = !DILocation(line: 924, column: 5, scope: !2085, inlinedAt: !2099)
!2101 = !DILocation(line: 928, column: 5, scope: !2085, inlinedAt: !2099)
!2102 = !DILocation(line: 929, column: 5, scope: !2085, inlinedAt: !2099)
!2103 = !DILocation(line: 936, column: 9, scope: !2093)
!2104 = !DILocation(line: 942, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 941, column: 60)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 941, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 941, column: 5)
!2108 = !DILocation(line: 943, column: 9, scope: !2105)
!2109 = !DILocation(line: 944, column: 9, scope: !2105)
!2110 = !DILocation(line: 949, column: 5, scope: !2093)
!2111 = !DILocation(line: 950, column: 5, scope: !2093)
!2112 = !DILocation(line: 953, column: 5, scope: !2093)
