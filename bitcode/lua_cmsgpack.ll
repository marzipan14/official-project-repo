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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %7 = bitcast i8* %6 to %struct.mp_buf*, !dbg !152
  %8 = bitcast i8* %6 to i8**, !dbg !153
  store i8* null, i8** %8, align 8, !dbg !154, !tbaa !155
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !158
  %10 = bitcast i8* %9 to <2 x i64>*, !dbg !159
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !dbg !159, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  ret %struct.mp_buf* %7, !dbg !161
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_append(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !162 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !177
  %7 = load i64, i64* %6, align 8, !dbg !177, !tbaa !178
  %8 = icmp ult i64 %7, %3, !dbg !179
  br i1 %8, label %14, label %9, !dbg !180

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !dbg !181, !tbaa !155
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !dbg !182, !tbaa !183
  br label %28, !dbg !180

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !184
  %16 = load i64, i64* %15, align 8, !dbg !184, !tbaa !183
  %17 = add i64 %16, %3, !dbg !185
  %18 = shl i64 %17, 1, !dbg !186
  %19 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !188
  %20 = load i8*, i8** %19, align 8, !dbg !188, !tbaa !155
  %21 = add i64 %16, %7, !dbg !189
  %22 = bitcast i8** %5 to i8*, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !196
  %23 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !198
  %24 = load i8*, i8** %5, align 8, !dbg !199, !tbaa !126
  %25 = call i8* %23(i8* %24, i8* %20, i64 %21, i64 %18) #6, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store i8* %25, i8** %19, align 8, !dbg !203, !tbaa !155
  %26 = load i64, i64* %15, align 8, !dbg !204, !tbaa !183
  %27 = sub i64 %18, %26, !dbg !205
  store i64 %27, i64* %6, align 8, !dbg !206, !tbaa !178
  br label %28, !dbg !207

; <label>:28:                                     ; preds = %9, %14
  %29 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !182
  %30 = phi i64 [ %13, %9 ], [ %26, %14 ], !dbg !182
  %31 = phi i8* [ %11, %9 ], [ %25, %14 ], !dbg !181
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !208
  %33 = call i8* @memcpy(i8* %32, i8* %2, i64 %3) #6, !dbg !209
  %34 = load i64, i64* %29, align 8, !dbg !210, !tbaa !183
  %35 = add i64 %34, %3, !dbg !210
  store i64 %35, i64* %29, align 8, !dbg !210, !tbaa !183
  %36 = load i64, i64* %6, align 8, !dbg !211, !tbaa !178
  %37 = sub i64 %36, %3, !dbg !211
  store i64 %37, i64* %6, align 8, !dbg !211, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  ret void, !dbg !212
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_free(%struct.lua_State*, %struct.mp_buf*) local_unnamed_addr #0 !dbg !213 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !221
  %6 = load i8*, i8** %5, align 8, !dbg !221, !tbaa !155
  %7 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !222
  %8 = load i64, i64* %7, align 8, !dbg !222, !tbaa !183
  %9 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !223
  %10 = load i64, i64* %9, align 8, !dbg !223, !tbaa !178
  %11 = add i64 %10, %8, !dbg !224
  %12 = bitcast i8** %4 to i8*, !dbg !231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !231
  %13 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !233
  %14 = load i8*, i8** %4, align 8, !dbg !234, !tbaa !126
  %15 = call i8* %13(i8* %14, i8* %6, i64 %11, i64 0) #6, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %16 = bitcast %struct.mp_buf* %1 to i8*, !dbg !238
  %17 = bitcast i8** %3 to i8*, !dbg !245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !245
  %18 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !247
  %19 = load i8*, i8** %3, align 8, !dbg !248, !tbaa !126
  %20 = call i8* %18(i8* %19, i8* %16, i64 24, i64 0) #6, !dbg !249
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  ret void, !dbg !252
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_cur_init(%struct.mp_cur* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !253 {
  %4 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 0, !dbg !270
  store i8* %1, i8** %4, align 8, !dbg !271, !tbaa !272
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 1, !dbg !275
  store i64 %2, i64* %5, align 8, !dbg !276, !tbaa !277
  %6 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 2, !dbg !278
  store i32 0, i32* %6, align 8, !dbg !279, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  ret void, !dbg !281
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_bytes(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !282 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %8) #5, !dbg !295
  %9 = icmp ult i64 %3, 32, !dbg !297
  br i1 %9, label %10, label %13, !dbg !299

; <label>:10:                                     ; preds = %4
  %11 = trunc i64 %3 to i8, !dbg !300
  %12 = or i8 %11, -96, !dbg !300
  store i8 %12, i8* %8, align 1, !dbg !302, !tbaa !91
  br label %38, !dbg !304

; <label>:13:                                     ; preds = %4
  %14 = icmp ult i64 %3, 256, !dbg !305
  br i1 %14, label %15, label %18, !dbg !307

; <label>:15:                                     ; preds = %13
  store i8 -39, i8* %8, align 1, !dbg !308, !tbaa !91
  %16 = trunc i64 %3 to i8, !dbg !310
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !311
  store i8 %16, i8* %17, align 1, !dbg !312, !tbaa !91
  br label %38, !dbg !313

; <label>:18:                                     ; preds = %13
  %19 = icmp ult i64 %3, 65536, !dbg !314
  br i1 %19, label %20, label %26, !dbg !316

; <label>:20:                                     ; preds = %18
  store i8 -38, i8* %8, align 1, !dbg !317, !tbaa !91
  %21 = lshr i64 %3, 8, !dbg !319
  %22 = trunc i64 %21 to i8, !dbg !320
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !321
  store i8 %22, i8* %23, align 1, !dbg !322, !tbaa !91
  %24 = trunc i64 %3 to i8, !dbg !323
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !324
  store i8 %24, i8* %25, align 1, !dbg !325, !tbaa !91
  br label %38, !dbg !326

; <label>:26:                                     ; preds = %18
  store i8 -37, i8* %8, align 1, !dbg !327, !tbaa !91
  %27 = lshr i64 %3, 24, !dbg !329
  %28 = trunc i64 %27 to i8, !dbg !330
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !331
  store i8 %28, i8* %29, align 1, !dbg !332, !tbaa !91
  %30 = lshr i64 %3, 16, !dbg !333
  %31 = trunc i64 %30 to i8, !dbg !334
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !335
  store i8 %31, i8* %32, align 1, !dbg !336, !tbaa !91
  %33 = lshr i64 %3, 8, !dbg !337
  %34 = trunc i64 %33 to i8, !dbg !338
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3, !dbg !339
  store i8 %34, i8* %35, align 1, !dbg !340, !tbaa !91
  %36 = trunc i64 %3 to i8, !dbg !341
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4, !dbg !342
  store i8 %36, i8* %37, align 1, !dbg !343, !tbaa !91
  br label %38

; <label>:38:                                     ; preds = %15, %26, %20, %10
  %39 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %26 ]
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !349
  %41 = load i64, i64* %40, align 8, !dbg !349, !tbaa !178
  %42 = icmp ult i64 %41, %39, !dbg !350
  br i1 %42, label %48, label %43, !dbg !351

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !dbg !352, !tbaa !155
  %46 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %47 = load i64, i64* %46, align 8, !dbg !353, !tbaa !183
  br label %62, !dbg !351

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !354
  %50 = load i64, i64* %49, align 8, !dbg !354, !tbaa !183
  %51 = add i64 %50, %39, !dbg !355
  %52 = shl i64 %51, 1, !dbg !356
  %53 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !358
  %54 = load i8*, i8** %53, align 8, !dbg !358, !tbaa !155
  %55 = add i64 %50, %41, !dbg !359
  %56 = bitcast i8** %6 to i8*, !dbg !366
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #5, !dbg !366
  %57 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %6) #6, !dbg !368
  %58 = load i8*, i8** %6, align 8, !dbg !369, !tbaa !126
  %59 = call i8* %57(i8* %58, i8* %54, i64 %55, i64 %52) #6, !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #5, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store i8* %59, i8** %53, align 8, !dbg !373, !tbaa !155
  %60 = load i64, i64* %49, align 8, !dbg !374, !tbaa !183
  %61 = sub i64 %52, %60, !dbg !375
  store i64 %61, i64* %40, align 8, !dbg !376, !tbaa !178
  br label %62, !dbg !377

; <label>:62:                                     ; preds = %43, %48
  %63 = phi i64* [ %46, %43 ], [ %49, %48 ], !dbg !353
  %64 = phi i64 [ %47, %43 ], [ %60, %48 ], !dbg !353
  %65 = phi i8* [ %45, %43 ], [ %59, %48 ], !dbg !352
  %66 = getelementptr inbounds i8, i8* %65, i64 %64, !dbg !378
  %67 = call i8* @memcpy(i8* %66, i8* nonnull %8, i64 %39) #6, !dbg !379
  %68 = load i64, i64* %63, align 8, !dbg !380, !tbaa !183
  %69 = add i64 %68, %39, !dbg !380
  store i64 %69, i64* %63, align 8, !dbg !380, !tbaa !183
  %70 = load i64, i64* %40, align 8, !dbg !381, !tbaa !178
  %71 = sub i64 %70, %39, !dbg !381
  store i64 %71, i64* %40, align 8, !dbg !381, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  %72 = icmp ult i64 %71, %3, !dbg !388
  br i1 %72, label %77, label %73, !dbg !389

; <label>:73:                                     ; preds = %62
  %74 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %75 = load i8*, i8** %74, align 8, !dbg !390, !tbaa !155
  %76 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  br label %90, !dbg !389

; <label>:77:                                     ; preds = %62
  %78 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !391
  %79 = add i64 %69, %3, !dbg !392
  %80 = shl i64 %79, 1, !dbg !393
  %81 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !395
  %82 = load i8*, i8** %81, align 8, !dbg !395, !tbaa !155
  %83 = add i64 %68, %70, !dbg !396
  %84 = bitcast i8** %5 to i8*, !dbg !403
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #5, !dbg !403
  %85 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !405
  %86 = load i8*, i8** %5, align 8, !dbg !406, !tbaa !126
  %87 = call i8* %85(i8* %86, i8* %82, i64 %83, i64 %80) #6, !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #5, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  store i8* %87, i8** %81, align 8, !dbg !410, !tbaa !155
  %88 = load i64, i64* %78, align 8, !dbg !411, !tbaa !183
  %89 = sub i64 %80, %88, !dbg !412
  store i64 %89, i64* %40, align 8, !dbg !413, !tbaa !178
  br label %90, !dbg !414

; <label>:90:                                     ; preds = %73, %77
  %91 = phi i64* [ %76, %73 ], [ %78, %77 ], !dbg !415
  %92 = phi i64 [ %69, %73 ], [ %88, %77 ], !dbg !415
  %93 = phi i8* [ %75, %73 ], [ %87, %77 ], !dbg !390
  %94 = getelementptr inbounds i8, i8* %93, i64 %92, !dbg !416
  %95 = call i8* @memcpy(i8* %94, i8* %2, i64 %3) #6, !dbg !417
  %96 = load i64, i64* %91, align 8, !dbg !418, !tbaa !183
  %97 = add i64 %96, %3, !dbg !418
  store i64 %97, i64* %91, align 8, !dbg !418, !tbaa !183
  %98 = load i64, i64* %40, align 8, !dbg !419, !tbaa !178
  %99 = sub i64 %98, %3, !dbg !419
  store i64 %99, i64* %40, align 8, !dbg !419, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %8) #5, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  ret void, !dbg !421
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_double(%struct.lua_State*, %struct.mp_buf* nocapture, double) local_unnamed_addr #0 !dbg !422 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca float, align 4
  store double %2, double* %6, align 8, !tbaa !438
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !440
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %9) #5, !dbg !440
  %10 = bitcast float* %8 to i8*, !dbg !442
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !442
  %11 = fptrunc double %2 to float, !dbg !443
  store float %11, float* %8, align 4, !dbg !444, !tbaa !445
  %12 = fpext float %11 to double, !dbg !447
  %13 = fcmp oeq double %12, %2, !dbg !449
  br i1 %13, label %14, label %52, !dbg !450

; <label>:14:                                     ; preds = %3
  store i8 -54, i8* %9, align 1, !dbg !451, !tbaa !91
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !453
  %16 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %10, i64 4) #6, !dbg !454
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !462
  %18 = load i8, i8* %15, align 1, !dbg !463, !tbaa !91
  %19 = load i8, i8* %17, align 1, !dbg !465, !tbaa !91
  store i8 %19, i8* %15, align 1, !dbg !466, !tbaa !91
  store i8 %18, i8* %17, align 1, !dbg !467, !tbaa !91
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !468
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !462
  %22 = load i8, i8* %20, align 1, !dbg !463, !tbaa !91
  %23 = load i8, i8* %21, align 1, !dbg !465, !tbaa !91
  store i8 %23, i8* %20, align 1, !dbg !466, !tbaa !91
  store i8 %22, i8* %21, align 1, !dbg !467, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %24 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !475
  %25 = load i64, i64* %24, align 8, !dbg !475, !tbaa !178
  %26 = icmp ult i64 %25, 5, !dbg !476
  br i1 %26, label %32, label %27, !dbg !477

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !dbg !478, !tbaa !155
  %30 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !dbg !479, !tbaa !183
  br label %46, !dbg !477

; <label>:32:                                     ; preds = %14
  %33 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !480
  %34 = load i64, i64* %33, align 8, !dbg !480, !tbaa !183
  %35 = shl i64 %34, 1, !dbg !481
  %36 = add i64 %35, 10, !dbg !481
  %37 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !483
  %38 = load i8*, i8** %37, align 8, !dbg !483, !tbaa !155
  %39 = add i64 %34, %25, !dbg !484
  %40 = bitcast i8** %4 to i8*, !dbg !491
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !491
  %41 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !493
  %42 = load i8*, i8** %4, align 8, !dbg !494, !tbaa !126
  %43 = call i8* %41(i8* %42, i8* %38, i64 %39, i64 %36) #6, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store i8* %43, i8** %37, align 8, !dbg !498, !tbaa !155
  %44 = load i64, i64* %33, align 8, !dbg !499, !tbaa !183
  %45 = sub i64 %36, %44, !dbg !500
  store i64 %45, i64* %24, align 8, !dbg !501, !tbaa !178
  br label %46, !dbg !502

; <label>:46:                                     ; preds = %27, %32
  %47 = phi i64* [ %30, %27 ], [ %33, %32 ], !dbg !479
  %48 = phi i64 [ %31, %27 ], [ %44, %32 ], !dbg !479
  %49 = phi i8* [ %29, %27 ], [ %43, %32 ], !dbg !478
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !503
  %51 = call i8* @memcpy(i8* %50, i8* nonnull %9, i64 5) #6, !dbg !504
  br label %99, !dbg !505

; <label>:52:                                     ; preds = %3
  store i8 -53, i8* %9, align 1, !dbg !506, !tbaa !91
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !509
  %54 = bitcast double* %6 to i8*, !dbg !510
  %55 = call i8* @memcpy(i8* nonnull %53, i8* nonnull %54, i64 8) #6, !dbg !511
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8, !dbg !519
  %57 = load i8, i8* %53, align 1, !dbg !520, !tbaa !91
  %58 = load i8, i8* %56, align 1, !dbg !522, !tbaa !91
  store i8 %58, i8* %53, align 1, !dbg !523, !tbaa !91
  store i8 %57, i8* %56, align 1, !dbg !524, !tbaa !91
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !525
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7, !dbg !519
  %61 = load i8, i8* %59, align 1, !dbg !520, !tbaa !91
  %62 = load i8, i8* %60, align 1, !dbg !522, !tbaa !91
  store i8 %62, i8* %59, align 1, !dbg !523, !tbaa !91
  store i8 %61, i8* %60, align 1, !dbg !524, !tbaa !91
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !525
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6, !dbg !519
  %65 = load i8, i8* %63, align 1, !dbg !520, !tbaa !91
  %66 = load i8, i8* %64, align 1, !dbg !522, !tbaa !91
  store i8 %66, i8* %63, align 1, !dbg !523, !tbaa !91
  store i8 %65, i8* %64, align 1, !dbg !524, !tbaa !91
  %67 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !525
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5, !dbg !519
  %69 = load i8, i8* %67, align 1, !dbg !520, !tbaa !91
  %70 = load i8, i8* %68, align 1, !dbg !522, !tbaa !91
  store i8 %70, i8* %67, align 1, !dbg !523, !tbaa !91
  store i8 %69, i8* %68, align 1, !dbg !524, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  %71 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !532
  %72 = load i64, i64* %71, align 8, !dbg !532, !tbaa !178
  %73 = icmp ult i64 %72, 9, !dbg !533
  br i1 %73, label %79, label %74, !dbg !534

; <label>:74:                                     ; preds = %52
  %75 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %76 = load i8*, i8** %75, align 8, !dbg !535, !tbaa !155
  %77 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !dbg !536, !tbaa !183
  br label %93, !dbg !534

; <label>:79:                                     ; preds = %52
  %80 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !537
  %81 = load i64, i64* %80, align 8, !dbg !537, !tbaa !183
  %82 = shl i64 %81, 1, !dbg !538
  %83 = add i64 %82, 18, !dbg !538
  %84 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !540
  %85 = load i8*, i8** %84, align 8, !dbg !540, !tbaa !155
  %86 = add i64 %81, %72, !dbg !541
  %87 = bitcast i8** %5 to i8*, !dbg !548
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #5, !dbg !548
  %88 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !550
  %89 = load i8*, i8** %5, align 8, !dbg !551, !tbaa !126
  %90 = call i8* %88(i8* %89, i8* %85, i64 %86, i64 %83) #6, !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #5, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store i8* %90, i8** %84, align 8, !dbg !555, !tbaa !155
  %91 = load i64, i64* %80, align 8, !dbg !556, !tbaa !183
  %92 = sub i64 %83, %91, !dbg !557
  store i64 %92, i64* %71, align 8, !dbg !558, !tbaa !178
  br label %93, !dbg !559

; <label>:93:                                     ; preds = %74, %79
  %94 = phi i64* [ %77, %74 ], [ %80, %79 ], !dbg !536
  %95 = phi i64 [ %78, %74 ], [ %91, %79 ], !dbg !536
  %96 = phi i8* [ %76, %74 ], [ %90, %79 ], !dbg !535
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !560
  %98 = call i8* @memcpy(i8* %97, i8* nonnull %9, i64 9) #6, !dbg !561
  br label %99

; <label>:99:                                     ; preds = %93, %46
  %100 = phi i64* [ %94, %93 ], [ %47, %46 ]
  %101 = phi i64 [ 9, %93 ], [ 5, %46 ]
  %102 = phi i64* [ %71, %93 ], [ %24, %46 ]
  %103 = phi i64 [ -9, %93 ], [ -5, %46 ]
  %104 = load i64, i64* %100, align 8, !dbg !562, !tbaa !183
  %105 = add i64 %104, %101, !dbg !562
  store i64 %105, i64* %100, align 8, !dbg !562, !tbaa !183
  %106 = load i64, i64* %102, align 8, !dbg !563, !tbaa !178
  %107 = add i64 %106, %103, !dbg !563
  store i64 %107, i64* %102, align 8, !dbg !563, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %9) #5, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  ret void, !dbg !565
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_int(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !566 {
  %4 = alloca i8*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0, !dbg !578
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %6) #5, !dbg !578
  %7 = icmp sgt i64 %2, -1, !dbg !580
  br i1 %7, label %8, label %64, !dbg !582

; <label>:8:                                      ; preds = %3
  %9 = icmp slt i64 %2, 128, !dbg !583
  br i1 %9, label %10, label %13, !dbg !586

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %2 to i8, !dbg !587
  %12 = and i8 %11, 127, !dbg !587
  store i8 %12, i8* %6, align 1, !dbg !589, !tbaa !91
  br label %119, !dbg !591

; <label>:13:                                     ; preds = %8
  %14 = icmp slt i64 %2, 256, !dbg !592
  br i1 %14, label %15, label %18, !dbg !594

; <label>:15:                                     ; preds = %13
  store i8 -52, i8* %6, align 1, !dbg !595, !tbaa !91
  %16 = trunc i64 %2 to i8, !dbg !597
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !598
  store i8 %16, i8* %17, align 1, !dbg !599, !tbaa !91
  br label %119, !dbg !600

; <label>:18:                                     ; preds = %13
  %19 = icmp slt i64 %2, 65536, !dbg !601
  br i1 %19, label %20, label %26, !dbg !603

; <label>:20:                                     ; preds = %18
  store i8 -51, i8* %6, align 1, !dbg !604, !tbaa !91
  %21 = lshr i64 %2, 8, !dbg !606
  %22 = trunc i64 %21 to i8, !dbg !607
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !608
  store i8 %22, i8* %23, align 1, !dbg !609, !tbaa !91
  %24 = trunc i64 %2 to i8, !dbg !610
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !611
  store i8 %24, i8* %25, align 1, !dbg !612, !tbaa !91
  br label %119, !dbg !613

; <label>:26:                                     ; preds = %18
  %27 = icmp slt i64 %2, 4294967296, !dbg !614
  br i1 %27, label %28, label %40, !dbg !616

; <label>:28:                                     ; preds = %26
  store i8 -50, i8* %6, align 1, !dbg !617, !tbaa !91
  %29 = lshr i64 %2, 24, !dbg !619
  %30 = trunc i64 %29 to i8, !dbg !620
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !621
  store i8 %30, i8* %31, align 1, !dbg !622, !tbaa !91
  %32 = lshr i64 %2, 16, !dbg !623
  %33 = trunc i64 %32 to i8, !dbg !624
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !625
  store i8 %33, i8* %34, align 1, !dbg !626, !tbaa !91
  %35 = lshr i64 %2, 8, !dbg !627
  %36 = trunc i64 %35 to i8, !dbg !628
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !629
  store i8 %36, i8* %37, align 1, !dbg !630, !tbaa !91
  %38 = trunc i64 %2 to i8, !dbg !631
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !632
  store i8 %38, i8* %39, align 1, !dbg !633, !tbaa !91
  br label %119, !dbg !634

; <label>:40:                                     ; preds = %26
  store i8 -49, i8* %6, align 1, !dbg !635, !tbaa !91
  %41 = lshr i64 %2, 56, !dbg !637
  %42 = trunc i64 %41 to i8, !dbg !638
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !639
  store i8 %42, i8* %43, align 1, !dbg !640, !tbaa !91
  %44 = lshr i64 %2, 48, !dbg !641
  %45 = trunc i64 %44 to i8, !dbg !642
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !643
  store i8 %45, i8* %46, align 1, !dbg !644, !tbaa !91
  %47 = lshr i64 %2, 40, !dbg !645
  %48 = trunc i64 %47 to i8, !dbg !646
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !647
  store i8 %48, i8* %49, align 1, !dbg !648, !tbaa !91
  %50 = lshr i64 %2, 32, !dbg !649
  %51 = trunc i64 %50 to i8, !dbg !650
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !651
  store i8 %51, i8* %52, align 1, !dbg !652, !tbaa !91
  %53 = lshr i64 %2, 24, !dbg !653
  %54 = trunc i64 %53 to i8, !dbg !654
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !655
  store i8 %54, i8* %55, align 1, !dbg !656, !tbaa !91
  %56 = lshr i64 %2, 16, !dbg !657
  %57 = trunc i64 %56 to i8, !dbg !658
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !659
  store i8 %57, i8* %58, align 1, !dbg !660, !tbaa !91
  %59 = lshr i64 %2, 8, !dbg !661
  %60 = trunc i64 %59 to i8, !dbg !662
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !663
  store i8 %60, i8* %61, align 1, !dbg !664, !tbaa !91
  %62 = trunc i64 %2 to i8, !dbg !665
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !666
  store i8 %62, i8* %63, align 1, !dbg !667, !tbaa !91
  br label %119

; <label>:64:                                     ; preds = %3
  %65 = icmp sgt i64 %2, -33, !dbg !668
  br i1 %65, label %66, label %68, !dbg !671

; <label>:66:                                     ; preds = %64
  %67 = trunc i64 %2 to i8, !dbg !672
  store i8 %67, i8* %6, align 1, !dbg !674, !tbaa !91
  br label %119, !dbg !675

; <label>:68:                                     ; preds = %64
  %69 = icmp sgt i64 %2, -129, !dbg !676
  br i1 %69, label %70, label %73, !dbg !678

; <label>:70:                                     ; preds = %68
  store i8 -48, i8* %6, align 1, !dbg !679, !tbaa !91
  %71 = trunc i64 %2 to i8, !dbg !681
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !682
  store i8 %71, i8* %72, align 1, !dbg !683, !tbaa !91
  br label %119, !dbg !684

; <label>:73:                                     ; preds = %68
  %74 = icmp sgt i64 %2, -32769, !dbg !685
  br i1 %74, label %75, label %81, !dbg !687

; <label>:75:                                     ; preds = %73
  store i8 -47, i8* %6, align 1, !dbg !688, !tbaa !91
  %76 = lshr i64 %2, 8, !dbg !690
  %77 = trunc i64 %76 to i8, !dbg !691
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !692
  store i8 %77, i8* %78, align 1, !dbg !693, !tbaa !91
  %79 = trunc i64 %2 to i8, !dbg !694
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !695
  store i8 %79, i8* %80, align 1, !dbg !696, !tbaa !91
  br label %119, !dbg !697

; <label>:81:                                     ; preds = %73
  %82 = icmp sgt i64 %2, -2147483649, !dbg !698
  br i1 %82, label %83, label %95, !dbg !700

; <label>:83:                                     ; preds = %81
  store i8 -46, i8* %6, align 1, !dbg !701, !tbaa !91
  %84 = lshr i64 %2, 24, !dbg !703
  %85 = trunc i64 %84 to i8, !dbg !704
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !705
  store i8 %85, i8* %86, align 1, !dbg !706, !tbaa !91
  %87 = lshr i64 %2, 16, !dbg !707
  %88 = trunc i64 %87 to i8, !dbg !708
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !709
  store i8 %88, i8* %89, align 1, !dbg !710, !tbaa !91
  %90 = lshr i64 %2, 8, !dbg !711
  %91 = trunc i64 %90 to i8, !dbg !712
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !713
  store i8 %91, i8* %92, align 1, !dbg !714, !tbaa !91
  %93 = trunc i64 %2 to i8, !dbg !715
  %94 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !716
  store i8 %93, i8* %94, align 1, !dbg !717, !tbaa !91
  br label %119, !dbg !718

; <label>:95:                                     ; preds = %81
  store i8 -45, i8* %6, align 1, !dbg !719, !tbaa !91
  %96 = lshr i64 %2, 56, !dbg !721
  %97 = trunc i64 %96 to i8, !dbg !722
  %98 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !723
  store i8 %97, i8* %98, align 1, !dbg !724, !tbaa !91
  %99 = lshr i64 %2, 48, !dbg !725
  %100 = trunc i64 %99 to i8, !dbg !726
  %101 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !727
  store i8 %100, i8* %101, align 1, !dbg !728, !tbaa !91
  %102 = lshr i64 %2, 40, !dbg !729
  %103 = trunc i64 %102 to i8, !dbg !730
  %104 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !731
  store i8 %103, i8* %104, align 1, !dbg !732, !tbaa !91
  %105 = lshr i64 %2, 32, !dbg !733
  %106 = trunc i64 %105 to i8, !dbg !734
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !735
  store i8 %106, i8* %107, align 1, !dbg !736, !tbaa !91
  %108 = lshr i64 %2, 24, !dbg !737
  %109 = trunc i64 %108 to i8, !dbg !738
  %110 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !739
  store i8 %109, i8* %110, align 1, !dbg !740, !tbaa !91
  %111 = lshr i64 %2, 16, !dbg !741
  %112 = trunc i64 %111 to i8, !dbg !742
  %113 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !743
  store i8 %112, i8* %113, align 1, !dbg !744, !tbaa !91
  %114 = lshr i64 %2, 8, !dbg !745
  %115 = trunc i64 %114 to i8, !dbg !746
  %116 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !747
  store i8 %115, i8* %116, align 1, !dbg !748, !tbaa !91
  %117 = trunc i64 %2 to i8, !dbg !749
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !750
  store i8 %117, i8* %118, align 1, !dbg !751, !tbaa !91
  br label %119

; <label>:119:                                    ; preds = %66, %75, %95, %83, %70, %10, %20, %40, %28, %15
  %120 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %28 ], [ 9, %40 ], [ 1, %66 ], [ 2, %70 ], [ 3, %75 ], [ 5, %83 ], [ 9, %95 ]
  %121 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !757
  %122 = load i64, i64* %121, align 8, !dbg !757, !tbaa !178
  %123 = icmp ult i64 %122, %120, !dbg !758
  br i1 %123, label %129, label %124, !dbg !759

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8, !dbg !760, !tbaa !155
  %127 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %128 = load i64, i64* %127, align 8, !dbg !761, !tbaa !183
  br label %143, !dbg !759

; <label>:129:                                    ; preds = %119
  %130 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !762
  %131 = load i64, i64* %130, align 8, !dbg !762, !tbaa !183
  %132 = add i64 %131, %120, !dbg !763
  %133 = shl i64 %132, 1, !dbg !764
  %134 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !766
  %135 = load i8*, i8** %134, align 8, !dbg !766, !tbaa !155
  %136 = add i64 %131, %122, !dbg !767
  %137 = bitcast i8** %4 to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137) #5, !dbg !774
  %138 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !776
  %139 = load i8*, i8** %4, align 8, !dbg !777, !tbaa !126
  %140 = call i8* %138(i8* %139, i8* %135, i64 %136, i64 %133) #6, !dbg !778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137) #5, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  store i8* %140, i8** %134, align 8, !dbg !781, !tbaa !155
  %141 = load i64, i64* %130, align 8, !dbg !782, !tbaa !183
  %142 = sub i64 %133, %141, !dbg !783
  store i64 %142, i64* %121, align 8, !dbg !784, !tbaa !178
  br label %143, !dbg !785

; <label>:143:                                    ; preds = %124, %129
  %144 = phi i64* [ %127, %124 ], [ %130, %129 ], !dbg !761
  %145 = phi i64 [ %128, %124 ], [ %141, %129 ], !dbg !761
  %146 = phi i8* [ %126, %124 ], [ %140, %129 ], !dbg !760
  %147 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !786
  %148 = call i8* @memcpy(i8* %147, i8* nonnull %6, i64 %120) #6, !dbg !787
  %149 = load i64, i64* %144, align 8, !dbg !788, !tbaa !183
  %150 = add i64 %149, %120, !dbg !788
  store i64 %150, i64* %144, align 8, !dbg !788, !tbaa !183
  %151 = load i64, i64* %121, align 8, !dbg !789, !tbaa !178
  %152 = sub i64 %151, %120, !dbg !789
  store i64 %152, i64* %121, align 8, !dbg !789, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %6) #5, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  ret void, !dbg !791
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_array(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !792 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !802
  %7 = icmp slt i64 %2, 16, !dbg !804
  br i1 %7, label %8, label %12, !dbg !806

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !807
  %10 = and i8 %9, 15, !dbg !807
  %11 = or i8 %10, -112, !dbg !807
  store i8 %11, i8* %6, align 1, !dbg !809, !tbaa !91
  br label %32, !dbg !811

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !812
  br i1 %13, label %14, label %20, !dbg !814

; <label>:14:                                     ; preds = %12
  store i8 -36, i8* %6, align 1, !dbg !815, !tbaa !91
  %15 = lshr i64 %2, 8, !dbg !817
  %16 = trunc i64 %15 to i8, !dbg !818
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !819
  store i8 %16, i8* %17, align 1, !dbg !820, !tbaa !91
  %18 = trunc i64 %2 to i8, !dbg !821
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !822
  store i8 %18, i8* %19, align 1, !dbg !823, !tbaa !91
  br label %32, !dbg !824

; <label>:20:                                     ; preds = %12
  store i8 -35, i8* %6, align 1, !dbg !825, !tbaa !91
  %21 = lshr i64 %2, 24, !dbg !827
  %22 = trunc i64 %21 to i8, !dbg !828
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !829
  store i8 %22, i8* %23, align 1, !dbg !830, !tbaa !91
  %24 = lshr i64 %2, 16, !dbg !831
  %25 = trunc i64 %24 to i8, !dbg !832
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !833
  store i8 %25, i8* %26, align 1, !dbg !834, !tbaa !91
  %27 = lshr i64 %2, 8, !dbg !835
  %28 = trunc i64 %27 to i8, !dbg !836
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !837
  store i8 %28, i8* %29, align 1, !dbg !838, !tbaa !91
  %30 = trunc i64 %2 to i8, !dbg !839
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !840
  store i8 %30, i8* %31, align 1, !dbg !841, !tbaa !91
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !847
  %35 = load i64, i64* %34, align 8, !dbg !847, !tbaa !178
  %36 = icmp ult i64 %35, %33, !dbg !848
  br i1 %36, label %42, label %37, !dbg !849

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !850, !tbaa !155
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !851, !tbaa !183
  br label %56, !dbg !849

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !852
  %44 = load i64, i64* %43, align 8, !dbg !852, !tbaa !183
  %45 = add i64 %44, %33, !dbg !853
  %46 = shl i64 %45, 1, !dbg !854
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !856
  %48 = load i8*, i8** %47, align 8, !dbg !856, !tbaa !155
  %49 = add i64 %44, %35, !dbg !857
  %50 = bitcast i8** %4 to i8*, !dbg !864
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !864
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !866
  %52 = load i8*, i8** %4, align 8, !dbg !867, !tbaa !126
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !868
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  store i8* %53, i8** %47, align 8, !dbg !871, !tbaa !155
  %54 = load i64, i64* %43, align 8, !dbg !872, !tbaa !183
  %55 = sub i64 %46, %54, !dbg !873
  store i64 %55, i64* %34, align 8, !dbg !874, !tbaa !178
  br label %56, !dbg !875

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !851
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !851
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !850
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !876
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !877
  %62 = load i64, i64* %57, align 8, !dbg !878, !tbaa !183
  %63 = add i64 %62, %33, !dbg !878
  store i64 %63, i64* %57, align 8, !dbg !878, !tbaa !183
  %64 = load i64, i64* %34, align 8, !dbg !879, !tbaa !178
  %65 = sub i64 %64, %33, !dbg !879
  store i64 %65, i64* %34, align 8, !dbg !879, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  ret void, !dbg !881
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_map(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !882 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !892
  %7 = icmp slt i64 %2, 16, !dbg !894
  br i1 %7, label %8, label %12, !dbg !896

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !897
  %10 = and i8 %9, 15, !dbg !897
  %11 = or i8 %10, -128, !dbg !897
  store i8 %11, i8* %6, align 1, !dbg !899, !tbaa !91
  br label %32, !dbg !901

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !902
  br i1 %13, label %14, label %20, !dbg !904

; <label>:14:                                     ; preds = %12
  store i8 -34, i8* %6, align 1, !dbg !905, !tbaa !91
  %15 = lshr i64 %2, 8, !dbg !907
  %16 = trunc i64 %15 to i8, !dbg !908
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !909
  store i8 %16, i8* %17, align 1, !dbg !910, !tbaa !91
  %18 = trunc i64 %2 to i8, !dbg !911
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !912
  store i8 %18, i8* %19, align 1, !dbg !913, !tbaa !91
  br label %32, !dbg !914

; <label>:20:                                     ; preds = %12
  store i8 -33, i8* %6, align 1, !dbg !915, !tbaa !91
  %21 = lshr i64 %2, 24, !dbg !917
  %22 = trunc i64 %21 to i8, !dbg !918
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !919
  store i8 %22, i8* %23, align 1, !dbg !920, !tbaa !91
  %24 = lshr i64 %2, 16, !dbg !921
  %25 = trunc i64 %24 to i8, !dbg !922
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !923
  store i8 %25, i8* %26, align 1, !dbg !924, !tbaa !91
  %27 = lshr i64 %2, 8, !dbg !925
  %28 = trunc i64 %27 to i8, !dbg !926
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !927
  store i8 %28, i8* %29, align 1, !dbg !928, !tbaa !91
  %30 = trunc i64 %2 to i8, !dbg !929
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !930
  store i8 %30, i8* %31, align 1, !dbg !931, !tbaa !91
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !937
  %35 = load i64, i64* %34, align 8, !dbg !937, !tbaa !178
  %36 = icmp ult i64 %35, %33, !dbg !938
  br i1 %36, label %42, label %37, !dbg !939

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !940, !tbaa !155
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !941, !tbaa !183
  br label %56, !dbg !939

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !942
  %44 = load i64, i64* %43, align 8, !dbg !942, !tbaa !183
  %45 = add i64 %44, %33, !dbg !943
  %46 = shl i64 %45, 1, !dbg !944
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !946
  %48 = load i8*, i8** %47, align 8, !dbg !946, !tbaa !155
  %49 = add i64 %44, %35, !dbg !947
  %50 = bitcast i8** %4 to i8*, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !954
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !956
  %52 = load i8*, i8** %4, align 8, !dbg !957, !tbaa !126
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !958
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store i8* %53, i8** %47, align 8, !dbg !961, !tbaa !155
  %54 = load i64, i64* %43, align 8, !dbg !962, !tbaa !183
  %55 = sub i64 %46, %54, !dbg !963
  store i64 %55, i64* %34, align 8, !dbg !964, !tbaa !178
  br label %56, !dbg !965

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !941
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !941
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !940
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !966
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !967
  %62 = load i64, i64* %57, align 8, !dbg !968, !tbaa !183
  %63 = add i64 %62, %33, !dbg !968
  store i64 %63, i64* %57, align 8, !dbg !968, !tbaa !183
  %64 = load i64, i64* %34, align 8, !dbg !969, !tbaa !178
  %65 = sub i64 %64, %33, !dbg !969
  store i64 %65, i64* %34, align 8, !dbg !969, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  ret void, !dbg !971
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_string(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !972 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !980
  %5 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %3) #6, !dbg !982
  %6 = load i64, i64* %3, align 8, !dbg !984, !tbaa !160
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %5, i64 %6) #7, !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  ret void, !dbg !986
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_bool(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !987 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5, !dbg !995
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6, !dbg !996
  %6 = icmp eq i32 %5, 0, !dbg !996
  %7 = select i1 %6, i8 -62, i8 -61, !dbg !996
  store i8 %7, i8* %4, align 1, !dbg !994, !tbaa !91
  %8 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1002
  %9 = load i64, i64* %8, align 8, !dbg !1002, !tbaa !178
  %10 = icmp eq i64 %9, 0, !dbg !1003
  br i1 %10, label %16, label %11, !dbg !1004

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !dbg !1005, !tbaa !155
  %14 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %15 = load i64, i64* %14, align 8, !dbg !1006, !tbaa !183
  br label %29, !dbg !1004

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1007
  %18 = load i64, i64* %17, align 8, !dbg !1007, !tbaa !183
  %19 = shl i64 %18, 1, !dbg !1008
  %20 = add i64 %19, 2, !dbg !1008
  %21 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1010
  %22 = load i8*, i8** %21, align 8, !dbg !1010, !tbaa !155
  %23 = bitcast i8** %3 to i8*, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !1017
  %24 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1019
  %25 = load i8*, i8** %3, align 8, !dbg !1020, !tbaa !126
  %26 = call i8* %24(i8* %25, i8* %22, i64 %18, i64 %20) #6, !dbg !1021
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  store i8* %26, i8** %21, align 8, !dbg !1024, !tbaa !155
  %27 = load i64, i64* %17, align 8, !dbg !1025, !tbaa !183
  %28 = sub i64 %20, %27, !dbg !1026
  store i64 %28, i64* %8, align 8, !dbg !1027, !tbaa !178
  br label %29, !dbg !1028

; <label>:29:                                     ; preds = %11, %16
  %30 = phi i64* [ %14, %11 ], [ %17, %16 ], !dbg !1006
  %31 = phi i64 [ %15, %11 ], [ %27, %16 ], !dbg !1006
  %32 = phi i8* [ %13, %11 ], [ %26, %16 ], !dbg !1005
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1029
  %34 = call i8* @memcpy(i8* %33, i8* nonnull %4, i64 1) #6, !dbg !1030
  %35 = load i64, i64* %30, align 8, !dbg !1031, !tbaa !183
  %36 = add i64 %35, 1, !dbg !1031
  store i64 %36, i64* %30, align 8, !dbg !1031, !tbaa !183
  %37 = load i64, i64* %8, align 8, !dbg !1032, !tbaa !178
  %38 = add i64 %37, -1, !dbg !1032
  store i64 %38, i64* %8, align 8, !dbg !1032, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  ret void, !dbg !1034
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_integer(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1035 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1045
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %3) #7, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  ret void, !dbg !1048
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_number(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1049 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1057
  %4 = tail call i32 @__fpclassifyd(double %3) #6, !dbg !1059
  %5 = icmp eq i32 %4, 1, !dbg !1059
  br i1 %5, label %12, label %6, !dbg !1059

; <label>:6:                                      ; preds = %2
  %7 = fptosi double %3 to i64, !dbg !1059
  %8 = sitofp i64 %7 to double, !dbg !1059
  %9 = fcmp oeq double %3, %8, !dbg !1059
  br i1 %9, label %10, label %12, !dbg !1061

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1066
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %11) #6, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  br label %13, !dbg !1070

; <label>:12:                                     ; preds = %6, %2
  tail call void @mp_encode_double(%struct.lua_State* %0, %struct.mp_buf* %1, double %3) #7, !dbg !1071
  br label %13

; <label>:13:                                     ; preds = %12, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  ret void, !dbg !1073
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_array(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1074 {
  %4 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #6, !dbg !1086
  tail call void @mp_encode_array(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %4) #7, !dbg !1088
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1089
  %5 = icmp eq i64 %4, 0, !dbg !1091
  br i1 %5, label %13, label %6, !dbg !1094

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %2, 1
  br label %8, !dbg !1094

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ 1, %6 ], [ %11, %8 ]
  %10 = uitofp i64 %9 to double, !dbg !1095
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #6, !dbg !1097
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #6, !dbg !1098
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %7) #7, !dbg !1099
  %11 = add i64 %9, 1, !dbg !1100
  %12 = icmp ugt i64 %11, %4, !dbg !1091
  br i1 %12, label %13, label %8, !dbg !1094, !llvm.loop !1101

; <label>:13:                                     ; preds = %8, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  ret void, !dbg !1103
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
define dso_local void @mp_encode_lua_type(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1104 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1124
  %8 = icmp eq i32 %7, 5, !dbg !1126
  %9 = icmp eq i32 %2, 16, !dbg !1128
  %10 = and i1 %9, %8, !dbg !1129
  %11 = select i1 %10, i32 0, i32 %7, !dbg !1129
  switch i32 %11, label %35 [
    i32 4, label %12
    i32 1, label %16
    i32 3, label %17
    i32 5, label %29
  ], !dbg !1130

; <label>:12:                                     ; preds = %3
  %13 = bitcast i64* %4 to i8*, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1134
  %14 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %4) #6, !dbg !1136
  %15 = load i64, i64* %4, align 8, !dbg !1138, !tbaa !160
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %14, i64 %15) #6, !dbg !1139
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  br label %68, !dbg !1141

; <label>:16:                                     ; preds = %3
  tail call void @mp_encode_lua_bool(%struct.lua_State* %0, %struct.mp_buf* %1) #7, !dbg !1142
  br label %68, !dbg !1143

; <label>:17:                                     ; preds = %3
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1147
  %19 = tail call i32 @__fpclassifyd(double %18) #6, !dbg !1149
  %20 = icmp eq i32 %19, 1, !dbg !1149
  br i1 %20, label %27, label %21, !dbg !1149

; <label>:21:                                     ; preds = %17
  %22 = fptosi double %18 to i64, !dbg !1149
  %23 = sitofp i64 %22 to double, !dbg !1149
  %24 = fcmp oeq double %18, %23, !dbg !1149
  br i1 %24, label %25, label %27, !dbg !1150

; <label>:25:                                     ; preds = %21
  %26 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1154
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %26) #6, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  br label %28, !dbg !1158

; <label>:27:                                     ; preds = %21, %17
  tail call void @mp_encode_double(%struct.lua_State* %0, %struct.mp_buf* %1, double %18) #6, !dbg !1159
  br label %28

; <label>:28:                                     ; preds = %25, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br label %68, !dbg !1161

; <label>:29:                                     ; preds = %3
  %30 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #6, !dbg !1171
  %31 = icmp eq i32 %30, 0, !dbg !1171
  br i1 %31, label %33, label %32, !dbg !1173

; <label>:32:                                     ; preds = %29
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1174
  br label %34, !dbg !1174

; <label>:33:                                     ; preds = %29
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1175
  br label %34

; <label>:34:                                     ; preds = %32, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br label %68, !dbg !1177

; <label>:35:                                     ; preds = %3
  %36 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %36) #5, !dbg !1180
  store i8 -64, i8* %36, align 1, !dbg !1181, !tbaa !91
  %37 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1187
  %38 = load i64, i64* %37, align 8, !dbg !1187, !tbaa !178
  %39 = icmp eq i64 %38, 0, !dbg !1188
  br i1 %39, label %45, label %40, !dbg !1189

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %42 = load i8*, i8** %41, align 8, !dbg !1190, !tbaa !155
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %44 = load i64, i64* %43, align 8, !dbg !1191, !tbaa !183
  br label %58, !dbg !1189

; <label>:45:                                     ; preds = %35
  %46 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1192
  %47 = load i64, i64* %46, align 8, !dbg !1192, !tbaa !183
  %48 = shl i64 %47, 1, !dbg !1193
  %49 = add i64 %48, 2, !dbg !1193
  %50 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1195
  %51 = load i8*, i8** %50, align 8, !dbg !1195, !tbaa !155
  %52 = bitcast i8** %5 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #5, !dbg !1202
  %53 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !1204
  %54 = load i8*, i8** %5, align 8, !dbg !1205, !tbaa !126
  %55 = call i8* %53(i8* %54, i8* %51, i64 %47, i64 %49) #6, !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #5, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  store i8* %55, i8** %50, align 8, !dbg !1209, !tbaa !155
  %56 = load i64, i64* %46, align 8, !dbg !1210, !tbaa !183
  %57 = sub i64 %49, %56, !dbg !1211
  store i64 %57, i64* %37, align 8, !dbg !1212, !tbaa !178
  br label %58, !dbg !1213

; <label>:58:                                     ; preds = %40, %45
  %59 = phi i64* [ %43, %40 ], [ %46, %45 ], !dbg !1191
  %60 = phi i64 [ %44, %40 ], [ %56, %45 ], !dbg !1191
  %61 = phi i8* [ %42, %40 ], [ %55, %45 ], !dbg !1190
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1214
  %63 = call i8* @memcpy(i8* %62, i8* nonnull %36, i64 1) #6, !dbg !1215
  %64 = load i64, i64* %59, align 8, !dbg !1216, !tbaa !183
  %65 = add i64 %64, 1, !dbg !1216
  store i64 %65, i64* %59, align 8, !dbg !1216, !tbaa !183
  %66 = load i64, i64* %37, align 8, !dbg !1217, !tbaa !178
  %67 = add i64 %66, -1, !dbg !1217
  store i64 %67, i64* %37, align 8, !dbg !1217, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %36) #5, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br label %68, !dbg !1220

; <label>:68:                                     ; preds = %58, %34, %28, %16, %12
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  ret void, !dbg !1222
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_map(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1223 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1233
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1234
  %4 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1235
  %5 = icmp eq i32 %4, 0, !dbg !1236
  br i1 %5, label %11, label %6, !dbg !1236

; <label>:6:                                      ; preds = %3, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %3 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1237
  %8 = add i64 %7, 1, !dbg !1239
  %9 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1235
  %10 = icmp eq i32 %9, 0, !dbg !1236
  br i1 %10, label %11, label %6, !dbg !1236, !llvm.loop !1240

; <label>:11:                                     ; preds = %6, %3
  %12 = phi i64 [ 0, %3 ], [ %8, %6 ], !dbg !1242
  tail call void @mp_encode_map(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %12) #7, !dbg !1243
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1244
  %13 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1245
  %14 = icmp eq i32 %13, 0, !dbg !1246
  br i1 %14, label %20, label %15, !dbg !1246

; <label>:15:                                     ; preds = %11
  %16 = add nsw i32 %2, 1
  br label %17, !dbg !1246

; <label>:17:                                     ; preds = %15, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6, !dbg !1247
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1249
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1250
  %18 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1245
  %19 = icmp eq i32 %18, 0, !dbg !1246
  br i1 %19, label %20, label %17, !dbg !1246, !llvm.loop !1251

; <label>:20:                                     ; preds = %17, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  ret void, !dbg !1253
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
define dso_local i32 @table_is_an_array(%struct.lua_State*) local_unnamed_addr #0 !dbg !1254 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1264
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1266
  %3 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1267
  %4 = icmp eq i32 %3, 0, !dbg !1268
  br i1 %4, label %29, label %5, !dbg !1268

; <label>:5:                                      ; preds = %1, %21
  %6 = phi i32 [ %26, %21 ], [ 0, %1 ]
  %7 = phi i32 [ %25, %21 ], [ 0, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1269
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1271
  %9 = icmp eq i32 %8, 3, !dbg !1273
  br i1 %9, label %10, label %20, !dbg !1274

; <label>:10:                                     ; preds = %5
  %11 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1275
  %12 = fcmp ugt double %11, 0.000000e+00, !dbg !1277
  br i1 %12, label %13, label %20, !dbg !1278

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__fpclassifyd(double %11) #6, !dbg !1279
  %15 = icmp eq i32 %14, 1, !dbg !1279
  br i1 %15, label %20, label %16, !dbg !1279

; <label>:16:                                     ; preds = %13
  %17 = fptosi double %11 to i32, !dbg !1279
  %18 = sitofp i32 %17 to double, !dbg !1279
  %19 = fcmp oeq double %11, %18, !dbg !1279
  br i1 %19, label %21, label %20, !dbg !1280

; <label>:20:                                     ; preds = %10, %5, %16, %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1281
  br label %34, !dbg !1283

; <label>:21:                                     ; preds = %16
  %22 = sitofp i32 %7 to double, !dbg !1284
  %23 = fcmp ogt double %11, %22, !dbg !1285
  %24 = select i1 %23, double %11, double %22, !dbg !1286
  %25 = fptosi double %24 to i32, !dbg !1287
  %26 = add nuw nsw i32 %6, 1, !dbg !1288
  %27 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1267
  %28 = icmp eq i32 %27, 0, !dbg !1268
  br i1 %28, label %29, label %5, !dbg !1268, !llvm.loop !1289

; <label>:29:                                     ; preds = %21, %1
  %30 = phi i32 [ 0, %1 ], [ %25, %21 ], !dbg !1291
  %31 = phi i32 [ 0, %1 ], [ %26, %21 ], !dbg !1291
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1292
  %32 = icmp eq i32 %30, %31, !dbg !1293
  %33 = zext i1 %32 to i32, !dbg !1293
  br label %34, !dbg !1294

; <label>:34:                                     ; preds = %29, %20
  %35 = phi i32 [ 0, %20 ], [ %33, %29 ], !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  ret i32 %35, !dbg !1296
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table(%struct.lua_State*, %struct.mp_buf*, i32) local_unnamed_addr #0 !dbg !1163 {
  %4 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #7, !dbg !1300
  %5 = icmp eq i32 %4, 0, !dbg !1300
  br i1 %5, label %7, label %6, !dbg !1301

; <label>:6:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1302
  br label %8, !dbg !1302

; <label>:7:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1303
  br label %8

; <label>:8:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  ret void, !dbg !1304
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_null(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1111 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1307
  store i8 -64, i8* %5, align 1, !dbg !1309, !tbaa !91
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1315
  %7 = load i64, i64* %6, align 8, !dbg !1315, !tbaa !178
  %8 = icmp eq i64 %7, 0, !dbg !1316
  br i1 %8, label %14, label %9, !dbg !1317

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !dbg !1318, !tbaa !155
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !dbg !1319, !tbaa !183
  br label %27, !dbg !1317

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1320
  %16 = load i64, i64* %15, align 8, !dbg !1320, !tbaa !183
  %17 = shl i64 %16, 1, !dbg !1321
  %18 = add i64 %17, 2, !dbg !1321
  %19 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1323
  %20 = load i8*, i8** %19, align 8, !dbg !1323, !tbaa !155
  %21 = bitcast i8** %3 to i8*, !dbg !1330
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1330
  %22 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1332
  %23 = load i8*, i8** %3, align 8, !dbg !1333, !tbaa !126
  %24 = call i8* %22(i8* %23, i8* %20, i64 %16, i64 %18) #6, !dbg !1334
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  store i8* %24, i8** %19, align 8, !dbg !1337, !tbaa !155
  %25 = load i64, i64* %15, align 8, !dbg !1338, !tbaa !183
  %26 = sub i64 %18, %25, !dbg !1339
  store i64 %26, i64* %6, align 8, !dbg !1340, !tbaa !178
  br label %27, !dbg !1341

; <label>:27:                                     ; preds = %9, %14
  %28 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !1319
  %29 = phi i64 [ %13, %9 ], [ %25, %14 ], !dbg !1319
  %30 = phi i8* [ %11, %9 ], [ %24, %14 ], !dbg !1318
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1342
  %32 = call i8* @memcpy(i8* %31, i8* nonnull %5, i64 1) #6, !dbg !1343
  %33 = load i64, i64* %28, align 8, !dbg !1344, !tbaa !183
  %34 = add i64 %33, 1, !dbg !1344
  store i64 %34, i64* %28, align 8, !dbg !1344, !tbaa !183
  %35 = load i64, i64* %6, align 8, !dbg !1345, !tbaa !178
  %36 = add i64 %35, -1, !dbg !1345
  store i64 %36, i64* %6, align 8, !dbg !1345, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  ret void, !dbg !1347
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_pack(%struct.lua_State*) #0 !dbg !1348 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1355
  %6 = icmp eq i32 %5, 0, !dbg !1357
  br i1 %6, label %7, label %9, !dbg !1359

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1360
  br label %49, !dbg !1361

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %5) #6, !dbg !1362
  %11 = icmp eq i32 %10, 0, !dbg !1362
  br i1 %11, label %12, label %14, !dbg !1364

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1365
  br label %49, !dbg !1366

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8** %4 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1376
  %16 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !1378
  %17 = load i8*, i8** %4, align 8, !dbg !1379, !tbaa !126
  %18 = call i8* %16(i8* %17, i8* null, i64 0, i64 24) #6, !dbg !1380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  %19 = bitcast i8* %18 to %struct.mp_buf*, !dbg !1383
  %20 = bitcast i8* %18 to i8**, !dbg !1384
  store i8* null, i8** %20, align 8, !dbg !1385, !tbaa !155
  %21 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !1386
  %22 = bitcast i8* %21 to i64*, !dbg !1386
  %23 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !1387
  %24 = bitcast i8* %23 to i64*, !dbg !1387
  %25 = bitcast i8* %23 to <2 x i64>*, !dbg !1388
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 8, !dbg !1388, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  %26 = icmp slt i32 %5, 1, !dbg !1392
  br i1 %26, label %38, label %27, !dbg !1395

; <label>:27:                                     ; preds = %14, %27
  %28 = phi i32 [ %34, %27 ], [ 1, %14 ]
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1396
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %28) #6, !dbg !1398
  call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %19, i32 0) #7, !dbg !1399
  %29 = load i8*, i8** %20, align 8, !dbg !1400, !tbaa !155
  %30 = load i64, i64* %24, align 8, !dbg !1401, !tbaa !183
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %29, i64 %30) #6, !dbg !1402
  %31 = load i64, i64* %24, align 8, !dbg !1403, !tbaa !183
  %32 = load i64, i64* %22, align 8, !dbg !1404, !tbaa !178
  %33 = add i64 %32, %31, !dbg !1404
  store i64 %33, i64* %22, align 8, !dbg !1404, !tbaa !178
  store i64 0, i64* %24, align 8, !dbg !1405, !tbaa !183
  %34 = add nuw nsw i32 %28, 1, !dbg !1406
  %35 = icmp eq i32 %28, %5, !dbg !1392
  br i1 %35, label %36, label %27, !dbg !1395, !llvm.loop !1407

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %20, align 8, !dbg !1409, !tbaa !155
  br label %38, !dbg !1409

; <label>:38:                                     ; preds = %36, %14
  %39 = phi i64 [ %33, %36 ], [ 0, %14 ], !dbg !1411
  %40 = phi i8* [ %37, %36 ], [ null, %14 ], !dbg !1409
  %41 = bitcast i8** %3 to i8*, !dbg !1420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1420
  %42 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1422
  %43 = load i8*, i8** %3, align 8, !dbg !1423, !tbaa !126
  %44 = call i8* %42(i8* %43, i8* %40, i64 %39, i64 0) #6, !dbg !1424
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %45 = bitcast i8** %2 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1433
  %46 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %2) #6, !dbg !1435
  %47 = load i8*, i8** %2, align 8, !dbg !1436, !tbaa !126
  %48 = call i8* %46(i8* %47, i8* %18, i64 24, i64 0) #6, !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  call void @lua_concat(%struct.lua_State* %0, i32 %5) #6, !dbg !1441
  br label %49, !dbg !1442

; <label>:49:                                     ; preds = %38, %12, %7
  %50 = phi i32 [ %8, %7 ], [ 1, %38 ], [ %13, %12 ], !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  ret i32 %50, !dbg !1444
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
define dso_local void @mp_decode_to_lua_array(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1445 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1456
  br i1 %4, label %6, label %5, !dbg !1456

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.mp_decode_to_lua_array, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1456
  unreachable, !dbg !1456

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1458
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1459
  %7 = icmp eq i64 %2, 0, !dbg !1460
  br i1 %7, label %20, label %8, !dbg !1460

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1460

; <label>:10:                                     ; preds = %8, %17
  %11 = phi i64 [ %2, %8 ], [ %13, %17 ]
  %12 = phi i32 [ 1, %8 ], [ %18, %17 ]
  %13 = add i64 %11, -1, !dbg !1461
  %14 = sitofp i32 %12 to double, !dbg !1462
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #6, !dbg !1464
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1465
  %15 = load i32, i32* %9, align 8, !dbg !1466, !tbaa !280
  %16 = icmp eq i32 %15, 0, !dbg !1468
  br i1 %16, label %17, label %20, !dbg !1469

; <label>:17:                                     ; preds = %10
  %18 = add nuw nsw i32 %12, 1, !dbg !1470
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1471
  %19 = icmp eq i64 %13, 0, !dbg !1460
  br i1 %19, label %20, label %10, !dbg !1460, !llvm.loop !1472

; <label>:20:                                     ; preds = %10, %17, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  ret void, !dbg !1474
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_type(%struct.lua_State*, %struct.mp_cur*) local_unnamed_addr #0 !dbg !1475 {
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 1, !dbg !1513
  %6 = load i64, i64* %5, align 8, !dbg !1513, !tbaa !277
  %7 = icmp eq i64 %6, 0, !dbg !1513
  br i1 %7, label %8, label %10, !dbg !1516

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1517
  store i32 1, i32* %9, align 8, !dbg !1517, !tbaa !280
  br label %510, !dbg !1517

; <label>:10:                                     ; preds = %2
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1519
  %11 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 0, !dbg !1520
  %12 = load i8*, i8** %11, align 8, !dbg !1520, !tbaa !272
  %13 = load i8, i8* %12, align 1, !dbg !1521, !tbaa !91
  %14 = zext i8 %13 to i32, !dbg !1521
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
  ], !dbg !1522

; <label>:15:                                     ; preds = %10
  %16 = load i64, i64* %5, align 8, !dbg !1523, !tbaa !277
  %17 = icmp ult i64 %16, 2, !dbg !1523
  br i1 %17, label %18, label %20, !dbg !1526

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1527
  store i32 1, i32* %19, align 8, !dbg !1527, !tbaa !280
  br label %510, !dbg !1527

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1529
  %22 = load i8, i8* %21, align 1, !dbg !1529, !tbaa !91
  %23 = zext i8 %22 to i64, !dbg !1529
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #6, !dbg !1529
  %24 = load i8*, i8** %11, align 8, !dbg !1530, !tbaa !272
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !1530
  store i8* %25, i8** %11, align 8, !dbg !1530, !tbaa !272
  %26 = load i64, i64* %5, align 8, !dbg !1530, !tbaa !277
  %27 = add i64 %26, -2, !dbg !1530
  store i64 %27, i64* %5, align 8, !dbg !1530, !tbaa !277
  br label %510, !dbg !1532

; <label>:28:                                     ; preds = %10
  %29 = load i64, i64* %5, align 8, !dbg !1533, !tbaa !277
  %30 = icmp ult i64 %29, 2, !dbg !1533
  br i1 %30, label %31, label %33, !dbg !1536

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1537
  store i32 1, i32* %32, align 8, !dbg !1537, !tbaa !280
  br label %510, !dbg !1537

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1539
  %35 = load i8, i8* %34, align 1, !dbg !1539, !tbaa !91
  %36 = sext i8 %35 to i64, !dbg !1540
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %36) #6, !dbg !1541
  %37 = load i8*, i8** %11, align 8, !dbg !1542, !tbaa !272
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1542
  store i8* %38, i8** %11, align 8, !dbg !1542, !tbaa !272
  %39 = load i64, i64* %5, align 8, !dbg !1542, !tbaa !277
  %40 = add i64 %39, -2, !dbg !1542
  store i64 %40, i64* %5, align 8, !dbg !1542, !tbaa !277
  br label %510, !dbg !1544

; <label>:41:                                     ; preds = %10
  %42 = load i64, i64* %5, align 8, !dbg !1545, !tbaa !277
  %43 = icmp ult i64 %42, 3, !dbg !1545
  br i1 %43, label %44, label %46, !dbg !1548

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1549
  store i32 1, i32* %45, align 8, !dbg !1549, !tbaa !280
  br label %510, !dbg !1549

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1551
  %48 = load i8, i8* %47, align 1, !dbg !1551, !tbaa !91
  %49 = zext i8 %48 to i64, !dbg !1551
  %50 = shl nuw nsw i64 %49, 8, !dbg !1551
  %51 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1551
  %52 = load i8, i8* %51, align 1, !dbg !1551, !tbaa !91
  %53 = zext i8 %52 to i64, !dbg !1551
  %54 = or i64 %50, %53, !dbg !1551
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %54) #6, !dbg !1551
  %55 = load i8*, i8** %11, align 8, !dbg !1552, !tbaa !272
  %56 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !1552
  store i8* %56, i8** %11, align 8, !dbg !1552, !tbaa !272
  %57 = load i64, i64* %5, align 8, !dbg !1552, !tbaa !277
  %58 = add i64 %57, -3, !dbg !1552
  store i64 %58, i64* %5, align 8, !dbg !1552, !tbaa !277
  br label %510, !dbg !1554

; <label>:59:                                     ; preds = %10
  %60 = load i64, i64* %5, align 8, !dbg !1555, !tbaa !277
  %61 = icmp ult i64 %60, 3, !dbg !1555
  br i1 %61, label %62, label %64, !dbg !1558

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1559
  store i32 1, i32* %63, align 8, !dbg !1559, !tbaa !280
  br label %510, !dbg !1559

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1561
  %66 = load i8, i8* %65, align 1, !dbg !1561, !tbaa !91
  %67 = zext i8 %66 to i16, !dbg !1561
  %68 = shl nuw i16 %67, 8, !dbg !1562
  %69 = sext i16 %68 to i64, !dbg !1563
  %70 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1564
  %71 = load i8, i8* %70, align 1, !dbg !1564, !tbaa !91
  %72 = zext i8 %71 to i64, !dbg !1564
  %73 = or i64 %69, %72, !dbg !1565
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %73) #6, !dbg !1566
  %74 = load i8*, i8** %11, align 8, !dbg !1567, !tbaa !272
  %75 = getelementptr inbounds i8, i8* %74, i64 3, !dbg !1567
  store i8* %75, i8** %11, align 8, !dbg !1567, !tbaa !272
  %76 = load i64, i64* %5, align 8, !dbg !1567, !tbaa !277
  %77 = add i64 %76, -3, !dbg !1567
  store i64 %77, i64* %5, align 8, !dbg !1567, !tbaa !277
  br label %510, !dbg !1569

; <label>:78:                                     ; preds = %10
  %79 = load i64, i64* %5, align 8, !dbg !1570, !tbaa !277
  %80 = icmp ult i64 %79, 5, !dbg !1570
  br i1 %80, label %81, label %83, !dbg !1573

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1574
  store i32 1, i32* %82, align 8, !dbg !1574, !tbaa !280
  br label %510, !dbg !1574

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1576
  %85 = load i8, i8* %84, align 1, !dbg !1576, !tbaa !91
  %86 = zext i8 %85 to i64, !dbg !1576
  %87 = shl nuw nsw i64 %86, 24, !dbg !1576
  %88 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1576
  %89 = load i8, i8* %88, align 1, !dbg !1576, !tbaa !91
  %90 = zext i8 %89 to i64, !dbg !1576
  %91 = shl nuw nsw i64 %90, 16, !dbg !1576
  %92 = or i64 %91, %87, !dbg !1576
  %93 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1576
  %94 = load i8, i8* %93, align 1, !dbg !1576, !tbaa !91
  %95 = zext i8 %94 to i64, !dbg !1576
  %96 = shl nuw nsw i64 %95, 8, !dbg !1576
  %97 = or i64 %92, %96, !dbg !1576
  %98 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1576
  %99 = load i8, i8* %98, align 1, !dbg !1576, !tbaa !91
  %100 = zext i8 %99 to i64, !dbg !1576
  %101 = or i64 %97, %100, !dbg !1576
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %101) #6, !dbg !1576
  %102 = load i8*, i8** %11, align 8, !dbg !1577, !tbaa !272
  %103 = getelementptr inbounds i8, i8* %102, i64 5, !dbg !1577
  store i8* %103, i8** %11, align 8, !dbg !1577, !tbaa !272
  %104 = load i64, i64* %5, align 8, !dbg !1577, !tbaa !277
  %105 = add i64 %104, -5, !dbg !1577
  store i64 %105, i64* %5, align 8, !dbg !1577, !tbaa !277
  br label %510, !dbg !1579

; <label>:106:                                    ; preds = %10
  %107 = load i64, i64* %5, align 8, !dbg !1580, !tbaa !277
  %108 = icmp ult i64 %107, 5, !dbg !1580
  br i1 %108, label %109, label %111, !dbg !1583

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1584
  store i32 1, i32* %110, align 8, !dbg !1584, !tbaa !280
  br label %510, !dbg !1584

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1586
  %113 = load i8, i8* %112, align 1, !dbg !1586, !tbaa !91
  %114 = zext i8 %113 to i32, !dbg !1587
  %115 = shl nuw i32 %114, 24, !dbg !1588
  %116 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1589
  %117 = load i8, i8* %116, align 1, !dbg !1589, !tbaa !91
  %118 = zext i8 %117 to i32, !dbg !1590
  %119 = shl nuw nsw i32 %118, 16, !dbg !1591
  %120 = or i32 %119, %115, !dbg !1592
  %121 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1593
  %122 = load i8, i8* %121, align 1, !dbg !1593, !tbaa !91
  %123 = zext i8 %122 to i32, !dbg !1594
  %124 = shl nuw nsw i32 %123, 8, !dbg !1595
  %125 = or i32 %120, %124, !dbg !1596
  %126 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1597
  %127 = load i8, i8* %126, align 1, !dbg !1597, !tbaa !91
  %128 = zext i8 %127 to i32, !dbg !1598
  %129 = or i32 %125, %128, !dbg !1599
  %130 = sext i32 %129 to i64, !dbg !1600
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %130) #6, !dbg !1601
  %131 = load i8*, i8** %11, align 8, !dbg !1602, !tbaa !272
  %132 = getelementptr inbounds i8, i8* %131, i64 5, !dbg !1602
  store i8* %132, i8** %11, align 8, !dbg !1602, !tbaa !272
  %133 = load i64, i64* %5, align 8, !dbg !1602, !tbaa !277
  %134 = add i64 %133, -5, !dbg !1602
  store i64 %134, i64* %5, align 8, !dbg !1602, !tbaa !277
  br label %510, !dbg !1604

; <label>:135:                                    ; preds = %10
  %136 = load i64, i64* %5, align 8, !dbg !1605, !tbaa !277
  %137 = icmp ult i64 %136, 9, !dbg !1605
  br i1 %137, label %138, label %140, !dbg !1608

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1609
  store i32 1, i32* %139, align 8, !dbg !1609, !tbaa !280
  br label %510, !dbg !1609

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1611
  %142 = load i8, i8* %141, align 1, !dbg !1611, !tbaa !91
  %143 = zext i8 %142 to i64, !dbg !1611
  %144 = shl nuw i64 %143, 56, !dbg !1611
  %145 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1611
  %146 = load i8, i8* %145, align 1, !dbg !1611, !tbaa !91
  %147 = zext i8 %146 to i64, !dbg !1611
  %148 = shl nuw nsw i64 %147, 48, !dbg !1611
  %149 = or i64 %148, %144, !dbg !1611
  %150 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1611
  %151 = load i8, i8* %150, align 1, !dbg !1611, !tbaa !91
  %152 = zext i8 %151 to i64, !dbg !1611
  %153 = shl nuw nsw i64 %152, 40, !dbg !1611
  %154 = or i64 %149, %153, !dbg !1611
  %155 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1611
  %156 = load i8, i8* %155, align 1, !dbg !1611, !tbaa !91
  %157 = zext i8 %156 to i64, !dbg !1611
  %158 = shl nuw nsw i64 %157, 32, !dbg !1611
  %159 = or i64 %154, %158, !dbg !1611
  %160 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1611
  %161 = load i8, i8* %160, align 1, !dbg !1611, !tbaa !91
  %162 = zext i8 %161 to i64, !dbg !1611
  %163 = shl nuw nsw i64 %162, 24, !dbg !1611
  %164 = or i64 %159, %163, !dbg !1611
  %165 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1611
  %166 = load i8, i8* %165, align 1, !dbg !1611, !tbaa !91
  %167 = zext i8 %166 to i64, !dbg !1611
  %168 = shl nuw nsw i64 %167, 16, !dbg !1611
  %169 = or i64 %164, %168, !dbg !1611
  %170 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1611
  %171 = load i8, i8* %170, align 1, !dbg !1611, !tbaa !91
  %172 = zext i8 %171 to i64, !dbg !1611
  %173 = shl nuw nsw i64 %172, 8, !dbg !1611
  %174 = or i64 %169, %173, !dbg !1611
  %175 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1611
  %176 = load i8, i8* %175, align 1, !dbg !1611, !tbaa !91
  %177 = zext i8 %176 to i64, !dbg !1611
  %178 = or i64 %174, %177, !dbg !1611
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %178) #6, !dbg !1611
  %179 = load i8*, i8** %11, align 8, !dbg !1612, !tbaa !272
  %180 = getelementptr inbounds i8, i8* %179, i64 9, !dbg !1612
  store i8* %180, i8** %11, align 8, !dbg !1612, !tbaa !272
  %181 = load i64, i64* %5, align 8, !dbg !1612, !tbaa !277
  %182 = add i64 %181, -9, !dbg !1612
  store i64 %182, i64* %5, align 8, !dbg !1612, !tbaa !277
  br label %510, !dbg !1614

; <label>:183:                                    ; preds = %10
  %184 = load i64, i64* %5, align 8, !dbg !1615, !tbaa !277
  %185 = icmp ult i64 %184, 9, !dbg !1615
  br i1 %185, label %186, label %188, !dbg !1618

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1619
  store i32 1, i32* %187, align 8, !dbg !1619, !tbaa !280
  br label %510, !dbg !1619

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1621
  %190 = load i8, i8* %189, align 1, !dbg !1621, !tbaa !91
  %191 = zext i8 %190 to i64, !dbg !1622
  %192 = shl nuw i64 %191, 56, !dbg !1623
  %193 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1624
  %194 = load i8, i8* %193, align 1, !dbg !1624, !tbaa !91
  %195 = zext i8 %194 to i64, !dbg !1625
  %196 = shl nuw nsw i64 %195, 48, !dbg !1626
  %197 = or i64 %196, %192, !dbg !1627
  %198 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1628
  %199 = load i8, i8* %198, align 1, !dbg !1628, !tbaa !91
  %200 = zext i8 %199 to i64, !dbg !1629
  %201 = shl nuw nsw i64 %200, 40, !dbg !1630
  %202 = or i64 %197, %201, !dbg !1631
  %203 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1632
  %204 = load i8, i8* %203, align 1, !dbg !1632, !tbaa !91
  %205 = zext i8 %204 to i64, !dbg !1633
  %206 = shl nuw nsw i64 %205, 32, !dbg !1634
  %207 = or i64 %202, %206, !dbg !1635
  %208 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1636
  %209 = load i8, i8* %208, align 1, !dbg !1636, !tbaa !91
  %210 = zext i8 %209 to i64, !dbg !1637
  %211 = shl nuw nsw i64 %210, 24, !dbg !1638
  %212 = or i64 %207, %211, !dbg !1639
  %213 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1640
  %214 = load i8, i8* %213, align 1, !dbg !1640, !tbaa !91
  %215 = zext i8 %214 to i64, !dbg !1641
  %216 = shl nuw nsw i64 %215, 16, !dbg !1642
  %217 = or i64 %212, %216, !dbg !1643
  %218 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1644
  %219 = load i8, i8* %218, align 1, !dbg !1644, !tbaa !91
  %220 = zext i8 %219 to i64, !dbg !1645
  %221 = shl nuw nsw i64 %220, 8, !dbg !1646
  %222 = or i64 %217, %221, !dbg !1647
  %223 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1648
  %224 = load i8, i8* %223, align 1, !dbg !1648, !tbaa !91
  %225 = zext i8 %224 to i64, !dbg !1649
  %226 = or i64 %222, %225, !dbg !1650
  %227 = sitofp i64 %226 to double, !dbg !1651
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %227) #6, !dbg !1652
  %228 = load i8*, i8** %11, align 8, !dbg !1653, !tbaa !272
  %229 = getelementptr inbounds i8, i8* %228, i64 9, !dbg !1653
  store i8* %229, i8** %11, align 8, !dbg !1653, !tbaa !272
  %230 = load i64, i64* %5, align 8, !dbg !1653, !tbaa !277
  %231 = add i64 %230, -9, !dbg !1653
  store i64 %231, i64* %5, align 8, !dbg !1653, !tbaa !277
  br label %510, !dbg !1655

; <label>:232:                                    ; preds = %10
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1656
  %233 = load i8*, i8** %11, align 8, !dbg !1657, !tbaa !272
  %234 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1657
  store i8* %234, i8** %11, align 8, !dbg !1657, !tbaa !272
  %235 = load i64, i64* %5, align 8, !dbg !1657, !tbaa !277
  %236 = add i64 %235, -1, !dbg !1657
  store i64 %236, i64* %5, align 8, !dbg !1657, !tbaa !277
  br label %510, !dbg !1659

; <label>:237:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !1660
  %238 = load i8*, i8** %11, align 8, !dbg !1661, !tbaa !272
  %239 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1661
  store i8* %239, i8** %11, align 8, !dbg !1661, !tbaa !272
  %240 = load i64, i64* %5, align 8, !dbg !1661, !tbaa !277
  %241 = add i64 %240, -1, !dbg !1661
  store i64 %241, i64* %5, align 8, !dbg !1661, !tbaa !277
  br label %510, !dbg !1663

; <label>:242:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6, !dbg !1664
  %243 = load i8*, i8** %11, align 8, !dbg !1665, !tbaa !272
  %244 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1665
  store i8* %244, i8** %11, align 8, !dbg !1665, !tbaa !272
  %245 = load i64, i64* %5, align 8, !dbg !1665, !tbaa !277
  %246 = add i64 %245, -1, !dbg !1665
  store i64 %246, i64* %5, align 8, !dbg !1665, !tbaa !277
  br label %510, !dbg !1667

; <label>:247:                                    ; preds = %10
  %248 = load i64, i64* %5, align 8, !dbg !1668, !tbaa !277
  %249 = icmp ult i64 %248, 5, !dbg !1668
  br i1 %249, label %250, label %252, !dbg !1671

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1672
  store i32 1, i32* %251, align 8, !dbg !1672, !tbaa !280
  br label %510, !dbg !1672

; <label>:252:                                    ; preds = %247
  %253 = bitcast float* %3 to i8*, !dbg !1674
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1674
  %254 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1675
  %255 = call i8* @memcpy(i8* nonnull %253, i8* nonnull %254, i64 4) #6, !dbg !1676
  %256 = getelementptr inbounds float, float* %3, i64 1, !dbg !1683
  %257 = bitcast float* %256 to i8*, !dbg !1683
  %258 = getelementptr inbounds i8, i8* %257, i64 -1, !dbg !1685
  %259 = load i8, i8* %253, align 4, !dbg !1686, !tbaa !91
  %260 = load i8, i8* %258, align 1, !dbg !1688, !tbaa !91
  store i8 %260, i8* %253, align 4, !dbg !1689, !tbaa !91
  store i8 %259, i8* %258, align 1, !dbg !1690, !tbaa !91
  %261 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !1691
  %262 = getelementptr inbounds i8, i8* %257, i64 -2, !dbg !1685
  %263 = load i8, i8* %261, align 1, !dbg !1686, !tbaa !91
  %264 = load i8, i8* %262, align 2, !dbg !1688, !tbaa !91
  store i8 %264, i8* %261, align 1, !dbg !1689, !tbaa !91
  store i8 %263, i8* %262, align 2, !dbg !1690, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  %265 = load float, float* %3, align 4, !dbg !1693, !tbaa !445
  %266 = fpext float %265 to double, !dbg !1693
  call void @lua_pushnumber(%struct.lua_State* %0, double %266) #6, !dbg !1695
  %267 = load i8*, i8** %11, align 8, !dbg !1696, !tbaa !272
  %268 = getelementptr inbounds i8, i8* %267, i64 5, !dbg !1696
  store i8* %268, i8** %11, align 8, !dbg !1696, !tbaa !272
  %269 = load i64, i64* %5, align 8, !dbg !1696, !tbaa !277
  %270 = add i64 %269, -5, !dbg !1696
  store i64 %270, i64* %5, align 8, !dbg !1696, !tbaa !277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1698
  br label %510, !dbg !1699

; <label>:271:                                    ; preds = %10
  %272 = load i64, i64* %5, align 8, !dbg !1700, !tbaa !277
  %273 = icmp ult i64 %272, 9, !dbg !1700
  br i1 %273, label %274, label %276, !dbg !1703

; <label>:274:                                    ; preds = %271
  %275 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1704
  store i32 1, i32* %275, align 8, !dbg !1704, !tbaa !280
  br label %510, !dbg !1704

; <label>:276:                                    ; preds = %271
  %277 = bitcast double* %4 to i8*, !dbg !1706
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1706
  %278 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1707
  %279 = call i8* @memcpy(i8* nonnull %277, i8* nonnull %278, i64 8) #6, !dbg !1708
  %280 = getelementptr inbounds double, double* %4, i64 1, !dbg !1715
  %281 = bitcast double* %280 to i8*, !dbg !1715
  %282 = getelementptr inbounds i8, i8* %281, i64 -1, !dbg !1717
  %283 = load i8, i8* %277, align 8, !dbg !1718, !tbaa !91
  %284 = load i8, i8* %282, align 1, !dbg !1720, !tbaa !91
  store i8 %284, i8* %277, align 8, !dbg !1721, !tbaa !91
  store i8 %283, i8* %282, align 1, !dbg !1722, !tbaa !91
  %285 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1723
  %286 = getelementptr inbounds i8, i8* %281, i64 -2, !dbg !1717
  %287 = load i8, i8* %285, align 1, !dbg !1718, !tbaa !91
  %288 = load i8, i8* %286, align 2, !dbg !1720, !tbaa !91
  store i8 %288, i8* %285, align 1, !dbg !1721, !tbaa !91
  store i8 %287, i8* %286, align 2, !dbg !1722, !tbaa !91
  %289 = getelementptr inbounds i8, i8* %277, i64 2, !dbg !1723
  %290 = getelementptr inbounds i8, i8* %281, i64 -3, !dbg !1717
  %291 = load i8, i8* %289, align 2, !dbg !1718, !tbaa !91
  %292 = load i8, i8* %290, align 1, !dbg !1720, !tbaa !91
  store i8 %292, i8* %289, align 2, !dbg !1721, !tbaa !91
  store i8 %291, i8* %290, align 1, !dbg !1722, !tbaa !91
  %293 = getelementptr inbounds i8, i8* %277, i64 3, !dbg !1723
  %294 = getelementptr inbounds i8, i8* %281, i64 -4, !dbg !1717
  %295 = load i8, i8* %293, align 1, !dbg !1718, !tbaa !91
  %296 = load i8, i8* %294, align 4, !dbg !1720, !tbaa !91
  store i8 %296, i8* %293, align 1, !dbg !1721, !tbaa !91
  store i8 %295, i8* %294, align 4, !dbg !1722, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  %297 = load double, double* %4, align 8, !dbg !1725, !tbaa !438
  call void @lua_pushnumber(%struct.lua_State* %0, double %297) #6, !dbg !1727
  %298 = load i8*, i8** %11, align 8, !dbg !1728, !tbaa !272
  %299 = getelementptr inbounds i8, i8* %298, i64 9, !dbg !1728
  store i8* %299, i8** %11, align 8, !dbg !1728, !tbaa !272
  %300 = load i64, i64* %5, align 8, !dbg !1728, !tbaa !277
  %301 = add i64 %300, -9, !dbg !1728
  store i64 %301, i64* %5, align 8, !dbg !1728, !tbaa !277
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1730
  br label %510, !dbg !1731

; <label>:302:                                    ; preds = %10
  %303 = load i64, i64* %5, align 8, !dbg !1732, !tbaa !277
  %304 = icmp ult i64 %303, 2, !dbg !1732
  br i1 %304, label %305, label %307, !dbg !1735

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1736
  store i32 1, i32* %306, align 8, !dbg !1736, !tbaa !280
  br label %510, !dbg !1736

; <label>:307:                                    ; preds = %302
  %308 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1738
  %309 = load i8, i8* %308, align 1, !dbg !1738, !tbaa !91
  %310 = zext i8 %309 to i64, !dbg !1738
  %311 = add nuw nsw i64 %310, 2, !dbg !1740
  %312 = icmp ult i64 %303, %311, !dbg !1740
  br i1 %312, label %313, label %315, !dbg !1743

; <label>:313:                                    ; preds = %307
  %314 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1744
  store i32 1, i32* %314, align 8, !dbg !1744, !tbaa !280
  br label %321, !dbg !1744

; <label>:315:                                    ; preds = %307
  %316 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1746
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %316, i64 %310) #6, !dbg !1747
  %317 = load i8*, i8** %11, align 8, !dbg !1748, !tbaa !272
  %318 = getelementptr inbounds i8, i8* %317, i64 %311, !dbg !1748
  store i8* %318, i8** %11, align 8, !dbg !1748, !tbaa !272
  %319 = load i64, i64* %5, align 8, !dbg !1748, !tbaa !277
  %320 = sub i64 %319, %311, !dbg !1748
  store i64 %320, i64* %5, align 8, !dbg !1748, !tbaa !277
  br label %321, !dbg !1750

; <label>:321:                                    ; preds = %315, %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:322:                                    ; preds = %10
  %323 = load i64, i64* %5, align 8, !dbg !1751, !tbaa !277
  %324 = icmp ult i64 %323, 3, !dbg !1751
  br i1 %324, label %325, label %327, !dbg !1754

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1755
  store i32 1, i32* %326, align 8, !dbg !1755, !tbaa !280
  br label %510, !dbg !1755

; <label>:327:                                    ; preds = %322
  %328 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1757
  %329 = load i8, i8* %328, align 1, !dbg !1757, !tbaa !91
  %330 = zext i8 %329 to i64, !dbg !1757
  %331 = shl nuw nsw i64 %330, 8, !dbg !1758
  %332 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1759
  %333 = load i8, i8* %332, align 1, !dbg !1759, !tbaa !91
  %334 = zext i8 %333 to i64, !dbg !1759
  %335 = or i64 %331, %334, !dbg !1760
  %336 = add nuw nsw i64 %335, 3, !dbg !1762
  %337 = icmp ult i64 %323, %336, !dbg !1762
  br i1 %337, label %338, label %340, !dbg !1765

; <label>:338:                                    ; preds = %327
  %339 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1766
  store i32 1, i32* %339, align 8, !dbg !1766, !tbaa !280
  br label %510, !dbg !1766

; <label>:340:                                    ; preds = %327
  %341 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1768
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %341, i64 %335) #6, !dbg !1769
  %342 = load i8*, i8** %11, align 8, !dbg !1770, !tbaa !272
  %343 = getelementptr inbounds i8, i8* %342, i64 %336, !dbg !1770
  store i8* %343, i8** %11, align 8, !dbg !1770, !tbaa !272
  %344 = load i64, i64* %5, align 8, !dbg !1770, !tbaa !277
  %345 = sub i64 %344, %336, !dbg !1770
  store i64 %345, i64* %5, align 8, !dbg !1770, !tbaa !277
  br label %510, !dbg !1772

; <label>:346:                                    ; preds = %10
  %347 = load i64, i64* %5, align 8, !dbg !1773, !tbaa !277
  %348 = icmp ult i64 %347, 5, !dbg !1773
  br i1 %348, label %349, label %351, !dbg !1776

; <label>:349:                                    ; preds = %346
  %350 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1777
  store i32 1, i32* %350, align 8, !dbg !1777, !tbaa !280
  br label %510, !dbg !1777

; <label>:351:                                    ; preds = %346
  %352 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1779
  %353 = load i8, i8* %352, align 1, !dbg !1779, !tbaa !91
  %354 = zext i8 %353 to i64, !dbg !1780
  %355 = shl nuw nsw i64 %354, 24, !dbg !1781
  %356 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1782
  %357 = load i8, i8* %356, align 1, !dbg !1782, !tbaa !91
  %358 = zext i8 %357 to i64, !dbg !1783
  %359 = shl nuw nsw i64 %358, 16, !dbg !1784
  %360 = or i64 %359, %355, !dbg !1785
  %361 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1786
  %362 = load i8, i8* %361, align 1, !dbg !1786, !tbaa !91
  %363 = zext i8 %362 to i64, !dbg !1787
  %364 = shl nuw nsw i64 %363, 8, !dbg !1788
  %365 = or i64 %360, %364, !dbg !1789
  %366 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1790
  %367 = load i8, i8* %366, align 1, !dbg !1790, !tbaa !91
  %368 = zext i8 %367 to i64, !dbg !1791
  %369 = or i64 %365, %368, !dbg !1792
  %370 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1794
  store i8* %370, i8** %11, align 8, !dbg !1794, !tbaa !272
  %371 = add i64 %347, -5, !dbg !1794
  store i64 %371, i64* %5, align 8, !dbg !1794, !tbaa !277
  %372 = icmp ult i64 %371, %369, !dbg !1796
  br i1 %372, label %373, label %375, !dbg !1799

; <label>:373:                                    ; preds = %351
  %374 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1800
  store i32 1, i32* %374, align 8, !dbg !1800, !tbaa !280
  br label %510, !dbg !1800

; <label>:375:                                    ; preds = %351
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %370, i64 %369) #6, !dbg !1802
  %376 = load i8*, i8** %11, align 8, !dbg !1803, !tbaa !272
  %377 = getelementptr inbounds i8, i8* %376, i64 %369, !dbg !1803
  store i8* %377, i8** %11, align 8, !dbg !1803, !tbaa !272
  %378 = load i64, i64* %5, align 8, !dbg !1803, !tbaa !277
  %379 = sub i64 %378, %369, !dbg !1803
  store i64 %379, i64* %5, align 8, !dbg !1803, !tbaa !277
  br label %510, !dbg !1805

; <label>:380:                                    ; preds = %10
  %381 = load i64, i64* %5, align 8, !dbg !1806, !tbaa !277
  %382 = icmp ult i64 %381, 3, !dbg !1806
  br i1 %382, label %383, label %385, !dbg !1809

; <label>:383:                                    ; preds = %380
  %384 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1810
  store i32 1, i32* %384, align 8, !dbg !1810, !tbaa !280
  br label %510, !dbg !1810

; <label>:385:                                    ; preds = %380
  %386 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1812
  %387 = load i8, i8* %386, align 1, !dbg !1812, !tbaa !91
  %388 = zext i8 %387 to i64, !dbg !1812
  %389 = shl nuw nsw i64 %388, 8, !dbg !1813
  %390 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1814
  %391 = load i8, i8* %390, align 1, !dbg !1814, !tbaa !91
  %392 = zext i8 %391 to i64, !dbg !1814
  %393 = or i64 %389, %392, !dbg !1815
  %394 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1817
  store i8* %394, i8** %11, align 8, !dbg !1817, !tbaa !272
  %395 = add i64 %381, -3, !dbg !1817
  store i64 %395, i64* %5, align 8, !dbg !1817, !tbaa !277
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %393) #7, !dbg !1819
  br label %510, !dbg !1820

; <label>:396:                                    ; preds = %10
  %397 = load i64, i64* %5, align 8, !dbg !1821, !tbaa !277
  %398 = icmp ult i64 %397, 5, !dbg !1821
  br i1 %398, label %399, label %401, !dbg !1824

; <label>:399:                                    ; preds = %396
  %400 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1825
  store i32 1, i32* %400, align 8, !dbg !1825, !tbaa !280
  br label %510, !dbg !1825

; <label>:401:                                    ; preds = %396
  %402 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1827
  %403 = load i8, i8* %402, align 1, !dbg !1827, !tbaa !91
  %404 = zext i8 %403 to i64, !dbg !1828
  %405 = shl nuw nsw i64 %404, 24, !dbg !1829
  %406 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1830
  %407 = load i8, i8* %406, align 1, !dbg !1830, !tbaa !91
  %408 = zext i8 %407 to i64, !dbg !1831
  %409 = shl nuw nsw i64 %408, 16, !dbg !1832
  %410 = or i64 %409, %405, !dbg !1833
  %411 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1834
  %412 = load i8, i8* %411, align 1, !dbg !1834, !tbaa !91
  %413 = zext i8 %412 to i64, !dbg !1835
  %414 = shl nuw nsw i64 %413, 8, !dbg !1836
  %415 = or i64 %410, %414, !dbg !1837
  %416 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1838
  %417 = load i8, i8* %416, align 1, !dbg !1838, !tbaa !91
  %418 = zext i8 %417 to i64, !dbg !1839
  %419 = or i64 %415, %418, !dbg !1840
  %420 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1842
  store i8* %420, i8** %11, align 8, !dbg !1842, !tbaa !272
  %421 = add i64 %397, -5, !dbg !1842
  store i64 %421, i64* %5, align 8, !dbg !1842, !tbaa !277
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %419) #7, !dbg !1844
  br label %510, !dbg !1845

; <label>:422:                                    ; preds = %10
  %423 = load i64, i64* %5, align 8, !dbg !1846, !tbaa !277
  %424 = icmp ult i64 %423, 3, !dbg !1846
  br i1 %424, label %425, label %427, !dbg !1849

; <label>:425:                                    ; preds = %422
  %426 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1850
  store i32 1, i32* %426, align 8, !dbg !1850, !tbaa !280
  br label %510, !dbg !1850

; <label>:427:                                    ; preds = %422
  %428 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1852
  %429 = load i8, i8* %428, align 1, !dbg !1852, !tbaa !91
  %430 = zext i8 %429 to i64, !dbg !1852
  %431 = shl nuw nsw i64 %430, 8, !dbg !1853
  %432 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1854
  %433 = load i8, i8* %432, align 1, !dbg !1854, !tbaa !91
  %434 = zext i8 %433 to i64, !dbg !1854
  %435 = or i64 %431, %434, !dbg !1855
  %436 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1857
  store i8* %436, i8** %11, align 8, !dbg !1857, !tbaa !272
  %437 = add i64 %423, -3, !dbg !1857
  store i64 %437, i64* %5, align 8, !dbg !1857, !tbaa !277
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %435) #7, !dbg !1859
  br label %510, !dbg !1860

; <label>:438:                                    ; preds = %10
  %439 = load i64, i64* %5, align 8, !dbg !1861, !tbaa !277
  %440 = icmp ult i64 %439, 5, !dbg !1861
  br i1 %440, label %441, label %443, !dbg !1864

; <label>:441:                                    ; preds = %438
  %442 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1865
  store i32 1, i32* %442, align 8, !dbg !1865, !tbaa !280
  br label %510, !dbg !1865

; <label>:443:                                    ; preds = %438
  %444 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1867
  %445 = load i8, i8* %444, align 1, !dbg !1867, !tbaa !91
  %446 = zext i8 %445 to i64, !dbg !1868
  %447 = shl nuw nsw i64 %446, 24, !dbg !1869
  %448 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1870
  %449 = load i8, i8* %448, align 1, !dbg !1870, !tbaa !91
  %450 = zext i8 %449 to i64, !dbg !1871
  %451 = shl nuw nsw i64 %450, 16, !dbg !1872
  %452 = or i64 %451, %447, !dbg !1873
  %453 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1874
  %454 = load i8, i8* %453, align 1, !dbg !1874, !tbaa !91
  %455 = zext i8 %454 to i64, !dbg !1875
  %456 = shl nuw nsw i64 %455, 8, !dbg !1876
  %457 = or i64 %452, %456, !dbg !1877
  %458 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1878
  %459 = load i8, i8* %458, align 1, !dbg !1878, !tbaa !91
  %460 = zext i8 %459 to i64, !dbg !1879
  %461 = or i64 %457, %460, !dbg !1880
  %462 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1882
  store i8* %462, i8** %11, align 8, !dbg !1882, !tbaa !272
  %463 = add i64 %439, -5, !dbg !1882
  store i64 %463, i64* %5, align 8, !dbg !1882, !tbaa !277
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %461) #7, !dbg !1884
  br label %510, !dbg !1885

; <label>:464:                                    ; preds = %10
  %465 = icmp sgt i8 %13, -1, !dbg !1886
  br i1 %465, label %466, label %472, !dbg !1887

; <label>:466:                                    ; preds = %464
  %467 = zext i8 %13 to i64, !dbg !1888
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %467) #6, !dbg !1888
  %468 = load i8*, i8** %11, align 8, !dbg !1890, !tbaa !272
  %469 = getelementptr inbounds i8, i8* %468, i64 1, !dbg !1890
  store i8* %469, i8** %11, align 8, !dbg !1890, !tbaa !272
  %470 = load i64, i64* %5, align 8, !dbg !1890, !tbaa !277
  %471 = add i64 %470, -1, !dbg !1890
  store i64 %471, i64* %5, align 8, !dbg !1890, !tbaa !277
  br label %510, !dbg !1892

; <label>:472:                                    ; preds = %464
  %473 = and i8 %13, -32, !dbg !1893
  switch i8 %473, label %494 [
    i8 -32, label %474
    i8 -96, label %480
  ], !dbg !1894

; <label>:474:                                    ; preds = %472
  %475 = sext i8 %13 to i64, !dbg !1895
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %475) #6, !dbg !1897
  %476 = load i8*, i8** %11, align 8, !dbg !1898, !tbaa !272
  %477 = getelementptr inbounds i8, i8* %476, i64 1, !dbg !1898
  store i8* %477, i8** %11, align 8, !dbg !1898, !tbaa !272
  %478 = load i64, i64* %5, align 8, !dbg !1898, !tbaa !277
  %479 = add i64 %478, -1, !dbg !1898
  store i64 %479, i64* %5, align 8, !dbg !1898, !tbaa !277
  br label %510, !dbg !1900

; <label>:480:                                    ; preds = %472
  %481 = and i32 %14, 31, !dbg !1901
  %482 = zext i32 %481 to i64, !dbg !1902
  %483 = load i64, i64* %5, align 8, !dbg !1904, !tbaa !277
  %484 = add nuw nsw i64 %482, 1, !dbg !1904
  %485 = icmp ugt i64 %483, %482, !dbg !1904
  br i1 %485, label %488, label %486, !dbg !1907

; <label>:486:                                    ; preds = %480
  %487 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1908
  store i32 1, i32* %487, align 8, !dbg !1908, !tbaa !280
  br label %510, !dbg !1908

; <label>:488:                                    ; preds = %480
  %489 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1910
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %489, i64 %482) #6, !dbg !1911
  %490 = load i8*, i8** %11, align 8, !dbg !1912, !tbaa !272
  %491 = getelementptr inbounds i8, i8* %490, i64 %484, !dbg !1912
  store i8* %491, i8** %11, align 8, !dbg !1912, !tbaa !272
  %492 = load i64, i64* %5, align 8, !dbg !1912, !tbaa !277
  %493 = sub i64 %492, %484, !dbg !1912
  store i64 %493, i64* %5, align 8, !dbg !1912, !tbaa !277
  br label %510, !dbg !1914

; <label>:494:                                    ; preds = %472
  %495 = and i8 %13, -16, !dbg !1915
  switch i8 %495, label %508 [
    i8 -112, label %496
    i8 -128, label %502
  ], !dbg !1916

; <label>:496:                                    ; preds = %494
  %497 = and i32 %14, 15, !dbg !1917
  %498 = zext i32 %497 to i64, !dbg !1918
  %499 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1920
  store i8* %499, i8** %11, align 8, !dbg !1920, !tbaa !272
  %500 = load i64, i64* %5, align 8, !dbg !1920, !tbaa !277
  %501 = add i64 %500, -1, !dbg !1920
  store i64 %501, i64* %5, align 8, !dbg !1920, !tbaa !277
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %498) #7, !dbg !1922
  br label %510, !dbg !1923

; <label>:502:                                    ; preds = %494
  %503 = and i32 %14, 15, !dbg !1924
  %504 = zext i32 %503 to i64, !dbg !1925
  %505 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1927
  store i8* %505, i8** %11, align 8, !dbg !1927, !tbaa !272
  %506 = load i64, i64* %5, align 8, !dbg !1927, !tbaa !277
  %507 = add i64 %506, -1, !dbg !1927
  store i64 %507, i64* %5, align 8, !dbg !1927, !tbaa !277
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %504) #7, !dbg !1929
  br label %510, !dbg !1930

; <label>:508:                                    ; preds = %494
  %509 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1931
  store i32 2, i32* %509, align 8, !dbg !1933, !tbaa !280
  br label %510

; <label>:510:                                    ; preds = %486, %488, %373, %375, %338, %340, %466, %502, %508, %496, %474, %8, %18, %31, %44, %62, %81, %109, %138, %186, %250, %274, %305, %325, %349, %383, %399, %425, %441, %443, %427, %401, %385, %276, %252, %242, %237, %232, %188, %140, %111, %83, %64, %46, %33, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  ret void, !dbg !1934
}

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_hash(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1935 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1943
  br i1 %4, label %6, label %5, !dbg !1943

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 566, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.mp_decode_to_lua_hash, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1943
  unreachable, !dbg !1943

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1944
  %7 = icmp eq i64 %2, 0, !dbg !1945
  br i1 %7, label %20, label %8, !dbg !1945

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1945

; <label>:10:                                     ; preds = %8, %18
  %11 = phi i64 [ %2, %8 ], [ %12, %18 ]
  %12 = add i64 %11, -1, !dbg !1946
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1947
  %13 = load i32, i32* %9, align 8, !dbg !1949, !tbaa !280
  %14 = icmp eq i32 %13, 0, !dbg !1951
  br i1 %14, label %15, label %20, !dbg !1952

; <label>:15:                                     ; preds = %10
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %1) #7, !dbg !1953
  %16 = load i32, i32* %9, align 8, !dbg !1954, !tbaa !280
  %17 = icmp eq i32 %16, 0, !dbg !1956
  br i1 %17, label %18, label %20, !dbg !1957

; <label>:18:                                     ; preds = %15
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1958
  %19 = icmp eq i64 %12, 0, !dbg !1945
  br i1 %19, label %20, label %10, !dbg !1945, !llvm.loop !1959

; <label>:20:                                     ; preds = %18, %10, %15, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  ret void, !dbg !1961
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_full(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1962 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mp_cur, align 8
  %6 = bitcast i64* %4 to i8*, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1980
  %7 = bitcast %struct.mp_cur* %5 to i8*, !dbg !1981
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !1981
  %8 = or i32 %2, %1, !dbg !1982
  %9 = icmp eq i32 %8, 0, !dbg !1982
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #6, !dbg !1984
  %11 = icmp slt i32 %8, 0, !dbg !1986
  br i1 %11, label %12, label %15, !dbg !1986

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %4, align 8, !dbg !1988, !tbaa !160
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %2, i64 %13) #6, !dbg !1989
  br label %56, !dbg !1990

; <label>:15:                                     ; preds = %3
  %16 = sext i32 %2 to i64, !dbg !1991
  %17 = load i64, i64* %4, align 8, !dbg !1993, !tbaa !160
  %18 = icmp ult i64 %17, %16, !dbg !1994
  br i1 %18, label %19, label %21, !dbg !1995

; <label>:19:                                     ; preds = %15
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %2, i64 %17) #6, !dbg !1996
  br label %56, !dbg !1997

; <label>:21:                                     ; preds = %15
  %22 = select i1 %9, i32 2147483647, i32 %1, !dbg !1998
  %23 = getelementptr inbounds i8, i8* %10, i64 %16, !dbg !1999
  %24 = sub i64 %17, %16, !dbg !2000
  %25 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 0, !dbg !2006
  store i8* %23, i8** %25, align 8, !dbg !2007, !tbaa !272
  %26 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 1, !dbg !2008
  store i64 %24, i64* %26, align 8, !dbg !2009, !tbaa !277
  %27 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 2, !dbg !2010
  store i32 0, i32* %27, align 8, !dbg !2011, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  %28 = icmp ne i64 %24, 0, !dbg !2014
  %29 = icmp sgt i32 %22, 0, !dbg !2017
  %30 = and i1 %29, %28, !dbg !2018
  br i1 %30, label %31, label %44, !dbg !2018

; <label>:31:                                     ; preds = %21, %38
  %32 = phi i32 [ %39, %38 ], [ 0, %21 ]
  call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %5) #7, !dbg !2019
  %33 = load i32, i32* %27, align 8, !dbg !2021, !tbaa !280
  switch i32 %33, label %38 [
    i32 1, label %34
    i32 2, label %36
  ], !dbg !2023

; <label>:34:                                     ; preds = %31
  %35 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2024
  br label %56, !dbg !2026

; <label>:36:                                     ; preds = %31
  %37 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2027
  br label %56, !dbg !2030

; <label>:38:                                     ; preds = %31
  %39 = add nuw nsw i32 %32, 1, !dbg !2031
  %40 = load i64, i64* %26, align 8, !dbg !2032, !tbaa !277
  %41 = icmp ne i64 %40, 0, !dbg !2014
  %42 = icmp slt i32 %39, %22, !dbg !2017
  %43 = and i1 %42, %41, !dbg !2018
  br i1 %43, label %31, label %44, !dbg !2018, !llvm.loop !2033

; <label>:44:                                     ; preds = %38, %21
  %45 = phi i32 [ 0, %21 ], [ %39, %38 ], !dbg !2036
  %46 = phi i64 [ %24, %21 ], [ %40, %38 ], !dbg !2032
  br i1 %9, label %56, label %47, !dbg !2037

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %4, align 8, !dbg !2038, !tbaa !160
  %49 = sub i64 %48, %46, !dbg !2039
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2040
  %50 = load i64, i64* %26, align 8, !dbg !2041, !tbaa !277
  %51 = icmp eq i64 %50, 0, !dbg !2042
  %52 = shl i64 %49, 32, !dbg !2043
  %53 = ashr exact i64 %52, 32, !dbg !2043
  %54 = select i1 %51, i64 -1, i64 %53, !dbg !2043
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %54) #6, !dbg !2044
  call void @lua_insert(%struct.lua_State* %0, i32 2) #6, !dbg !2045
  %55 = add nuw nsw i32 %45, 1, !dbg !2046
  br label %56, !dbg !2047

; <label>:56:                                     ; preds = %44, %47, %36, %34, %19, %12
  %57 = phi i32 [ %14, %12 ], [ %20, %19 ], [ %35, %34 ], [ %37, %36 ], [ %45, %44 ], [ %55, %47 ], !dbg !2048
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2049
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2049
  ret i32 %57, !dbg !2049
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack(%struct.lua_State*) #0 !dbg !2050 {
  %2 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  ret i32 %2, !dbg !2055
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_one(%struct.lua_State*) #0 !dbg !2056 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6, !dbg !2061
  %3 = trunc i64 %2 to i32, !dbg !2061
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2063
  %5 = sub i32 0, %4, !dbg !2063
  tail call void @lua_settop(%struct.lua_State* %0, i32 %5) #6, !dbg !2063
  %6 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 1, i32 %3) #7, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  ret i32 %6, !dbg !2065
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_limit(%struct.lua_State*) #0 !dbg !2066 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6, !dbg !2072
  %3 = trunc i64 %2 to i32, !dbg !2072
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #6, !dbg !2074
  %5 = trunc i64 %4 to i32, !dbg !2074
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2076
  %7 = sub i32 0, %6, !dbg !2076
  tail call void @lua_settop(%struct.lua_State* %0, i32 %7) #6, !dbg !2076
  %8 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 %3, i32 %5) #7, !dbg !2077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2078
  ret i32 %8, !dbg !2078
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_safe(%struct.lua_State*) #0 !dbg !2079 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2086
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #6, !dbg !2088
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #6, !dbg !2089
  %3 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %2, i32 -1, i32 0) #6, !dbg !2090
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2092
  %5 = icmp eq i32 %3, 0, !dbg !2094
  br i1 %5, label %7, label %6, !dbg !2096

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !2097
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #6, !dbg !2099
  br label %7, !dbg !2100

; <label>:7:                                      ; preds = %1, %6
  %8 = phi i32 [ 2, %6 ], [ %4, %1 ], !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2103
  ret i32 %8, !dbg !2103
}

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_create(%struct.lua_State*) local_unnamed_addr #0 !dbg !2104 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !2109
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_pack, i32 0) #6, !dbg !2111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2115
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack, i32 0) #6, !dbg !2111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2115
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_one, i32 0) #6, !dbg !2111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2115
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_limit, i32 0) #6, !dbg !2111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2115
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 8) #6, !dbg !2116
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2117
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i64 18) #6, !dbg !2118
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2119
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i64 40) #6, !dbg !2120
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2121
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i64 36) #6, !dbg !2122
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  ret i32 1, !dbg !2124
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack(%struct.lua_State*) local_unnamed_addr #0 !dbg !2125 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #7, !dbg !2129
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2130
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  ret i32 1, !dbg !2132
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !2133 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #6, !dbg !2140
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2141
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2145
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2149
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2150
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2145
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2149
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2150
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2145
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2149
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2150
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2145
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2149
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2150
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2151
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2153
  ret i32 1, !dbg !2153
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
!151 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !140)
!152 = !DILocation(line: 111, column: 11, scope: !131)
!153 = !DILocation(line: 113, column: 10, scope: !131)
!154 = !DILocation(line: 113, column: 12, scope: !131)
!155 = !{!156, !127, i64 0}
!156 = !{!"mp_buf", !127, i64 0, !157, i64 8, !157, i64 16}
!157 = !{!"long", !92, i64 0}
!158 = !DILocation(line: 114, column: 10, scope: !131)
!159 = !DILocation(line: 114, column: 14, scope: !131)
!160 = !{!157, !157, i64 0}
!161 = !DILocation(line: 115, column: 5, scope: !131)
!162 = distinct !DISubprogram(name: "mp_buf_append", scope: !3, file: !3, line: 118, type: !163, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !58, !8, !23, !14}
!165 = !{!166, !167, !168, !169, !170}
!166 = !DILocalVariable(name: "L", arg: 1, scope: !162, file: !3, line: 118, type: !58)
!167 = !DILocalVariable(name: "buf", arg: 2, scope: !162, file: !3, line: 118, type: !8)
!168 = !DILocalVariable(name: "s", arg: 3, scope: !162, file: !3, line: 118, type: !23)
!169 = !DILocalVariable(name: "len", arg: 4, scope: !162, file: !3, line: 118, type: !14)
!170 = !DILocalVariable(name: "newsize", scope: !171, file: !3, line: 120, type: !14)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 119, column: 26)
!172 = distinct !DILexicalBlock(scope: !162, file: !3, line: 119, column: 9)
!173 = !DILocation(line: 118, column: 31, scope: !162)
!174 = !DILocation(line: 118, column: 42, scope: !162)
!175 = !DILocation(line: 118, column: 68, scope: !162)
!176 = !DILocation(line: 118, column: 78, scope: !162)
!177 = !DILocation(line: 119, column: 14, scope: !172)
!178 = !{!156, !157, i64 16}
!179 = !DILocation(line: 119, column: 19, scope: !172)
!180 = !DILocation(line: 119, column: 9, scope: !162)
!181 = !DILocation(line: 125, column: 17, scope: !162)
!182 = !DILocation(line: 125, column: 24, scope: !162)
!183 = !{!156, !157, i64 8}
!184 = !DILocation(line: 120, column: 32, scope: !171)
!185 = !DILocation(line: 120, column: 35, scope: !171)
!186 = !DILocation(line: 120, column: 40, scope: !171)
!187 = !DILocation(line: 120, column: 16, scope: !171)
!188 = !DILocation(line: 122, column: 53, scope: !171)
!189 = !DILocation(line: 122, column: 65, scope: !171)
!190 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !191)
!191 = distinct !DILocation(line: 122, column: 34, scope: !171)
!192 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !191)
!193 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !191)
!194 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !191)
!195 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !191)
!196 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !191)
!197 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !191)
!198 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !191)
!199 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !191)
!200 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !191)
!201 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !191)
!202 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !191)
!203 = !DILocation(line: 122, column: 16, scope: !171)
!204 = !DILocation(line: 123, column: 36, scope: !171)
!205 = !DILocation(line: 123, column: 29, scope: !171)
!206 = !DILocation(line: 123, column: 19, scope: !171)
!207 = !DILocation(line: 124, column: 5, scope: !171)
!208 = !DILocation(line: 125, column: 18, scope: !162)
!209 = !DILocation(line: 125, column: 5, scope: !162)
!210 = !DILocation(line: 126, column: 14, scope: !162)
!211 = !DILocation(line: 127, column: 15, scope: !162)
!212 = !DILocation(line: 128, column: 1, scope: !162)
!213 = distinct !DISubprogram(name: "mp_buf_free", scope: !3, file: !3, line: 130, type: !214, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !58, !8}
!216 = !{!217, !218}
!217 = !DILocalVariable(name: "L", arg: 1, scope: !213, file: !3, line: 130, type: !58)
!218 = !DILocalVariable(name: "buf", arg: 2, scope: !213, file: !3, line: 130, type: !8)
!219 = !DILocation(line: 130, column: 29, scope: !213)
!220 = !DILocation(line: 130, column: 40, scope: !213)
!221 = !DILocation(line: 131, column: 24, scope: !213)
!222 = !DILocation(line: 131, column: 32, scope: !213)
!223 = !DILocation(line: 131, column: 43, scope: !213)
!224 = !DILocation(line: 131, column: 36, scope: !213)
!225 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !226)
!226 = distinct !DILocation(line: 131, column: 5, scope: !213)
!227 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !226)
!228 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !226)
!229 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !226)
!230 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !226)
!231 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !226)
!232 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !226)
!233 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !226)
!234 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !226)
!235 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !226)
!236 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !226)
!237 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !226)
!238 = !DILocation(line: 132, column: 19, scope: !213)
!239 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !240)
!240 = distinct !DILocation(line: 132, column: 5, scope: !213)
!241 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !240)
!242 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !240)
!243 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !240)
!244 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !240)
!245 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !240)
!246 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !240)
!247 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !240)
!248 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !240)
!249 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !240)
!250 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !240)
!251 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !240)
!252 = !DILocation(line: 133, column: 1, scope: !213)
!253 = distinct !DISubprogram(name: "mp_cur_init", scope: !3, file: !3, line: 154, type: !254, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !263)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256, !23, !14}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_cur", file: !3, line: 152, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mp_cur", file: !3, line: 148, size: 192, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !258, file: !3, line: 149, baseType: !23, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !258, file: !3, line: 150, baseType: !14, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !258, file: !3, line: 151, baseType: !30, size: 32, offset: 128)
!263 = !{!264, !265, !266}
!264 = !DILocalVariable(name: "cursor", arg: 1, scope: !253, file: !3, line: 154, type: !256)
!265 = !DILocalVariable(name: "s", arg: 2, scope: !253, file: !3, line: 154, type: !23)
!266 = !DILocalVariable(name: "len", arg: 3, scope: !253, file: !3, line: 154, type: !14)
!267 = !DILocation(line: 154, column: 26, scope: !253)
!268 = !DILocation(line: 154, column: 55, scope: !253)
!269 = !DILocation(line: 154, column: 65, scope: !253)
!270 = !DILocation(line: 155, column: 13, scope: !253)
!271 = !DILocation(line: 155, column: 15, scope: !253)
!272 = !{!273, !127, i64 0}
!273 = !{!"mp_cur", !127, i64 0, !157, i64 8, !274, i64 16}
!274 = !{!"int", !92, i64 0}
!275 = !DILocation(line: 156, column: 13, scope: !253)
!276 = !DILocation(line: 156, column: 18, scope: !253)
!277 = !{!273, !157, i64 8}
!278 = !DILocation(line: 157, column: 13, scope: !253)
!279 = !DILocation(line: 157, column: 17, scope: !253)
!280 = !{!273, !274, i64 16}
!281 = !DILocation(line: 158, column: 1, scope: !253)
!282 = distinct !DISubprogram(name: "mp_encode_bytes", scope: !3, file: !3, line: 174, type: !163, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !283)
!283 = !{!284, !285, !286, !287, !288, !290}
!284 = !DILocalVariable(name: "L", arg: 1, scope: !282, file: !3, line: 174, type: !58)
!285 = !DILocalVariable(name: "buf", arg: 2, scope: !282, file: !3, line: 174, type: !8)
!286 = !DILocalVariable(name: "s", arg: 3, scope: !282, file: !3, line: 174, type: !23)
!287 = !DILocalVariable(name: "len", arg: 4, scope: !282, file: !3, line: 174, type: !14)
!288 = !DILocalVariable(name: "hdr", scope: !282, file: !3, line: 175, type: !289)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 40, elements: !61)
!290 = !DILocalVariable(name: "hdrlen", scope: !282, file: !3, line: 176, type: !30)
!291 = !DILocation(line: 174, column: 33, scope: !282)
!292 = !DILocation(line: 174, column: 44, scope: !282)
!293 = !DILocation(line: 174, column: 70, scope: !282)
!294 = !DILocation(line: 174, column: 80, scope: !282)
!295 = !DILocation(line: 175, column: 5, scope: !282)
!296 = !DILocation(line: 175, column: 19, scope: !282)
!297 = !DILocation(line: 178, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !282, file: !3, line: 178, column: 9)
!299 = !DILocation(line: 178, column: 9, scope: !282)
!300 = !DILocation(line: 179, column: 18, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 178, column: 19)
!302 = !DILocation(line: 179, column: 16, scope: !301)
!303 = !DILocation(line: 176, column: 9, scope: !282)
!304 = !DILocation(line: 181, column: 5, scope: !301)
!305 = !DILocation(line: 181, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !3, line: 181, column: 16)
!307 = !DILocation(line: 181, column: 16, scope: !298)
!308 = !DILocation(line: 182, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 181, column: 29)
!310 = !DILocation(line: 183, column: 18, scope: !309)
!311 = !DILocation(line: 183, column: 9, scope: !309)
!312 = !DILocation(line: 183, column: 16, scope: !309)
!313 = !DILocation(line: 185, column: 5, scope: !309)
!314 = !DILocation(line: 185, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !306, file: !3, line: 185, column: 16)
!316 = !DILocation(line: 185, column: 16, scope: !306)
!317 = !DILocation(line: 186, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 185, column: 31)
!319 = !DILocation(line: 187, column: 30, scope: !318)
!320 = !DILocation(line: 187, column: 18, scope: !318)
!321 = !DILocation(line: 187, column: 9, scope: !318)
!322 = !DILocation(line: 187, column: 16, scope: !318)
!323 = !DILocation(line: 188, column: 18, scope: !318)
!324 = !DILocation(line: 188, column: 9, scope: !318)
!325 = !DILocation(line: 188, column: 16, scope: !318)
!326 = !DILocation(line: 190, column: 5, scope: !318)
!327 = !DILocation(line: 191, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !315, file: !3, line: 190, column: 12)
!329 = !DILocation(line: 192, column: 34, scope: !328)
!330 = !DILocation(line: 192, column: 18, scope: !328)
!331 = !DILocation(line: 192, column: 9, scope: !328)
!332 = !DILocation(line: 192, column: 16, scope: !328)
!333 = !DILocation(line: 193, column: 32, scope: !328)
!334 = !DILocation(line: 193, column: 18, scope: !328)
!335 = !DILocation(line: 193, column: 9, scope: !328)
!336 = !DILocation(line: 193, column: 16, scope: !328)
!337 = !DILocation(line: 194, column: 30, scope: !328)
!338 = !DILocation(line: 194, column: 18, scope: !328)
!339 = !DILocation(line: 194, column: 9, scope: !328)
!340 = !DILocation(line: 194, column: 16, scope: !328)
!341 = !DILocation(line: 195, column: 18, scope: !328)
!342 = !DILocation(line: 195, column: 9, scope: !328)
!343 = !DILocation(line: 195, column: 16, scope: !328)
!344 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !345)
!345 = distinct !DILocation(line: 198, column: 5, scope: !282)
!346 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !345)
!347 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !345)
!348 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !345)
!349 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !345)
!350 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !345)
!351 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !345)
!352 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !345)
!353 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !345)
!354 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !345)
!355 = !DILocation(line: 120, column: 35, scope: !171, inlinedAt: !345)
!356 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !345)
!357 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !345)
!358 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !345)
!359 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !345)
!360 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !361)
!361 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !345)
!362 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !361)
!363 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !361)
!364 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !361)
!365 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !361)
!366 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !361)
!367 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !361)
!368 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !361)
!369 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !361)
!370 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !361)
!371 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !361)
!372 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !361)
!373 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !345)
!374 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !345)
!375 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !345)
!376 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !345)
!377 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !345)
!378 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !345)
!379 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !345)
!380 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !345)
!381 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !345)
!382 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !345)
!383 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !384)
!384 = distinct !DILocation(line: 199, column: 5, scope: !282)
!385 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !384)
!386 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !384)
!387 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !384)
!388 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !384)
!389 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !384)
!390 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !384)
!391 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !384)
!392 = !DILocation(line: 120, column: 35, scope: !171, inlinedAt: !384)
!393 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !384)
!394 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !384)
!395 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !384)
!396 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !384)
!397 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !398)
!398 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !384)
!399 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !398)
!400 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !398)
!401 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !398)
!402 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !398)
!403 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !398)
!404 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !398)
!405 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !398)
!406 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !398)
!407 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !398)
!408 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !398)
!409 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !398)
!410 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !384)
!411 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !384)
!412 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !384)
!413 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !384)
!414 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !384)
!415 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !384)
!416 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !384)
!417 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !384)
!418 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !384)
!419 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !384)
!420 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !384)
!421 = !DILocation(line: 200, column: 1, scope: !282)
!422 = distinct !DISubprogram(name: "mp_encode_double", scope: !3, file: !3, line: 203, type: !423, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !58, !8, !21}
!425 = !{!426, !427, !428, !429, !433}
!426 = !DILocalVariable(name: "L", arg: 1, scope: !422, file: !3, line: 203, type: !58)
!427 = !DILocalVariable(name: "buf", arg: 2, scope: !422, file: !3, line: 203, type: !8)
!428 = !DILocalVariable(name: "d", arg: 3, scope: !422, file: !3, line: 203, type: !21)
!429 = !DILocalVariable(name: "b", scope: !422, file: !3, line: 204, type: !430)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 72, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 9)
!433 = !DILocalVariable(name: "f", scope: !422, file: !3, line: 205, type: !434)
!434 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!435 = !DILocation(line: 203, column: 34, scope: !422)
!436 = !DILocation(line: 203, column: 45, scope: !422)
!437 = !DILocation(line: 203, column: 57, scope: !422)
!438 = !{!439, !439, i64 0}
!439 = !{!"double", !92, i64 0}
!440 = !DILocation(line: 204, column: 5, scope: !422)
!441 = !DILocation(line: 204, column: 19, scope: !422)
!442 = !DILocation(line: 205, column: 5, scope: !422)
!443 = !DILocation(line: 205, column: 15, scope: !422)
!444 = !DILocation(line: 205, column: 11, scope: !422)
!445 = !{!446, !446, i64 0}
!446 = !{!"float", !92, i64 0}
!447 = !DILocation(line: 208, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !422, file: !3, line: 208, column: 9)
!449 = !DILocation(line: 208, column: 11, scope: !448)
!450 = !DILocation(line: 208, column: 9, scope: !422)
!451 = !DILocation(line: 209, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 208, column: 25)
!453 = !DILocation(line: 210, column: 17, scope: !452)
!454 = !DILocation(line: 210, column: 9, scope: !452)
!455 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !456)
!456 = distinct !DILocation(line: 211, column: 9, scope: !452)
!457 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !456)
!458 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !456)
!459 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !456)
!460 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !456)
!461 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !456)
!462 = !DILocation(line: 0, scope: !88, inlinedAt: !456)
!463 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !456)
!464 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !456)
!465 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !456)
!466 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !456)
!467 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !456)
!468 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !456)
!469 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !456)
!470 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !471)
!471 = distinct !DILocation(line: 212, column: 9, scope: !452)
!472 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !471)
!473 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !471)
!474 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !471)
!475 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !471)
!476 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !471)
!477 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !471)
!478 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !471)
!479 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !471)
!480 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !471)
!481 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !471)
!482 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !471)
!483 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !471)
!484 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !471)
!485 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !486)
!486 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !471)
!487 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !486)
!488 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !486)
!489 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !486)
!490 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !486)
!491 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !486)
!492 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !486)
!493 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !486)
!494 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !486)
!495 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !486)
!496 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !486)
!497 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !486)
!498 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !471)
!499 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !471)
!500 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !471)
!501 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !471)
!502 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !471)
!503 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !471)
!504 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !471)
!505 = !DILocation(line: 213, column: 5, scope: !452)
!506 = !DILocation(line: 214, column: 14, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 213, column: 32)
!508 = distinct !DILexicalBlock(scope: !448, file: !3, line: 213, column: 16)
!509 = !DILocation(line: 215, column: 17, scope: !507)
!510 = !DILocation(line: 215, column: 20, scope: !507)
!511 = !DILocation(line: 215, column: 9, scope: !507)
!512 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !513)
!513 = distinct !DILocation(line: 216, column: 9, scope: !507)
!514 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !513)
!515 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !513)
!516 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !513)
!517 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !513)
!518 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !513)
!519 = !DILocation(line: 0, scope: !88, inlinedAt: !513)
!520 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !513)
!521 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !513)
!522 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !513)
!523 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !513)
!524 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !513)
!525 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !513)
!526 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !513)
!527 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !528)
!528 = distinct !DILocation(line: 217, column: 9, scope: !507)
!529 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !528)
!530 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !528)
!531 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !528)
!532 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !528)
!533 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !528)
!534 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !528)
!535 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !528)
!536 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !528)
!537 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !528)
!538 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !528)
!539 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !528)
!540 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !528)
!541 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !528)
!542 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !543)
!543 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !528)
!544 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !543)
!545 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !543)
!546 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !543)
!547 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !543)
!548 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !543)
!549 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !543)
!550 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !543)
!551 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !543)
!552 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !543)
!553 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !543)
!554 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !543)
!555 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !528)
!556 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !528)
!557 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !528)
!558 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !528)
!559 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !528)
!560 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !528)
!561 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !528)
!562 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !528)
!563 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !528)
!564 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !528)
!565 = !DILocation(line: 219, column: 1, scope: !422)
!566 = distinct !DISubprogram(name: "mp_encode_int", scope: !3, file: !3, line: 221, type: !567, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !58, !8, !25}
!569 = !{!570, !571, !572, !573, !574}
!570 = !DILocalVariable(name: "L", arg: 1, scope: !566, file: !3, line: 221, type: !58)
!571 = !DILocalVariable(name: "buf", arg: 2, scope: !566, file: !3, line: 221, type: !8)
!572 = !DILocalVariable(name: "n", arg: 3, scope: !566, file: !3, line: 221, type: !25)
!573 = !DILocalVariable(name: "b", scope: !566, file: !3, line: 222, type: !430)
!574 = !DILocalVariable(name: "enclen", scope: !566, file: !3, line: 223, type: !30)
!575 = !DILocation(line: 221, column: 31, scope: !566)
!576 = !DILocation(line: 221, column: 42, scope: !566)
!577 = !DILocation(line: 221, column: 55, scope: !566)
!578 = !DILocation(line: 222, column: 5, scope: !566)
!579 = !DILocation(line: 222, column: 19, scope: !566)
!580 = !DILocation(line: 225, column: 11, scope: !581)
!581 = distinct !DILexicalBlock(scope: !566, file: !3, line: 225, column: 9)
!582 = !DILocation(line: 225, column: 9, scope: !566)
!583 = !DILocation(line: 226, column: 15, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 226, column: 13)
!585 = distinct !DILexicalBlock(scope: !581, file: !3, line: 225, column: 17)
!586 = !DILocation(line: 226, column: 13, scope: !585)
!587 = !DILocation(line: 227, column: 20, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !3, line: 226, column: 23)
!589 = !DILocation(line: 227, column: 18, scope: !588)
!590 = !DILocation(line: 223, column: 9, scope: !566)
!591 = !DILocation(line: 229, column: 9, scope: !588)
!592 = !DILocation(line: 229, column: 22, scope: !593)
!593 = distinct !DILexicalBlock(scope: !584, file: !3, line: 229, column: 20)
!594 = !DILocation(line: 229, column: 20, scope: !584)
!595 = !DILocation(line: 230, column: 18, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !3, line: 229, column: 31)
!597 = !DILocation(line: 231, column: 20, scope: !596)
!598 = !DILocation(line: 231, column: 13, scope: !596)
!599 = !DILocation(line: 231, column: 18, scope: !596)
!600 = !DILocation(line: 233, column: 9, scope: !596)
!601 = !DILocation(line: 233, column: 22, scope: !602)
!602 = distinct !DILexicalBlock(scope: !593, file: !3, line: 233, column: 20)
!603 = !DILocation(line: 233, column: 20, scope: !593)
!604 = !DILocation(line: 234, column: 18, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !3, line: 233, column: 33)
!606 = !DILocation(line: 235, column: 33, scope: !605)
!607 = !DILocation(line: 235, column: 20, scope: !605)
!608 = !DILocation(line: 235, column: 13, scope: !605)
!609 = !DILocation(line: 235, column: 18, scope: !605)
!610 = !DILocation(line: 236, column: 20, scope: !605)
!611 = !DILocation(line: 236, column: 13, scope: !605)
!612 = !DILocation(line: 236, column: 18, scope: !605)
!613 = !DILocation(line: 238, column: 9, scope: !605)
!614 = !DILocation(line: 238, column: 22, scope: !615)
!615 = distinct !DILexicalBlock(scope: !602, file: !3, line: 238, column: 20)
!616 = !DILocation(line: 238, column: 20, scope: !602)
!617 = !DILocation(line: 239, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 238, column: 39)
!619 = !DILocation(line: 240, column: 37, scope: !618)
!620 = !DILocation(line: 240, column: 20, scope: !618)
!621 = !DILocation(line: 240, column: 13, scope: !618)
!622 = !DILocation(line: 240, column: 18, scope: !618)
!623 = !DILocation(line: 241, column: 35, scope: !618)
!624 = !DILocation(line: 241, column: 20, scope: !618)
!625 = !DILocation(line: 241, column: 13, scope: !618)
!626 = !DILocation(line: 241, column: 18, scope: !618)
!627 = !DILocation(line: 242, column: 33, scope: !618)
!628 = !DILocation(line: 242, column: 20, scope: !618)
!629 = !DILocation(line: 242, column: 13, scope: !618)
!630 = !DILocation(line: 242, column: 18, scope: !618)
!631 = !DILocation(line: 243, column: 20, scope: !618)
!632 = !DILocation(line: 243, column: 13, scope: !618)
!633 = !DILocation(line: 243, column: 18, scope: !618)
!634 = !DILocation(line: 245, column: 9, scope: !618)
!635 = !DILocation(line: 246, column: 18, scope: !636)
!636 = distinct !DILexicalBlock(scope: !615, file: !3, line: 245, column: 16)
!637 = !DILocation(line: 247, column: 47, scope: !636)
!638 = !DILocation(line: 247, column: 20, scope: !636)
!639 = !DILocation(line: 247, column: 13, scope: !636)
!640 = !DILocation(line: 247, column: 18, scope: !636)
!641 = !DILocation(line: 248, column: 45, scope: !636)
!642 = !DILocation(line: 248, column: 20, scope: !636)
!643 = !DILocation(line: 248, column: 13, scope: !636)
!644 = !DILocation(line: 248, column: 18, scope: !636)
!645 = !DILocation(line: 249, column: 43, scope: !636)
!646 = !DILocation(line: 249, column: 20, scope: !636)
!647 = !DILocation(line: 249, column: 13, scope: !636)
!648 = !DILocation(line: 249, column: 18, scope: !636)
!649 = !DILocation(line: 250, column: 41, scope: !636)
!650 = !DILocation(line: 250, column: 20, scope: !636)
!651 = !DILocation(line: 250, column: 13, scope: !636)
!652 = !DILocation(line: 250, column: 18, scope: !636)
!653 = !DILocation(line: 251, column: 37, scope: !636)
!654 = !DILocation(line: 251, column: 20, scope: !636)
!655 = !DILocation(line: 251, column: 13, scope: !636)
!656 = !DILocation(line: 251, column: 18, scope: !636)
!657 = !DILocation(line: 252, column: 35, scope: !636)
!658 = !DILocation(line: 252, column: 20, scope: !636)
!659 = !DILocation(line: 252, column: 13, scope: !636)
!660 = !DILocation(line: 252, column: 18, scope: !636)
!661 = !DILocation(line: 253, column: 33, scope: !636)
!662 = !DILocation(line: 253, column: 20, scope: !636)
!663 = !DILocation(line: 253, column: 13, scope: !636)
!664 = !DILocation(line: 253, column: 18, scope: !636)
!665 = !DILocation(line: 254, column: 20, scope: !636)
!666 = !DILocation(line: 254, column: 13, scope: !636)
!667 = !DILocation(line: 254, column: 18, scope: !636)
!668 = !DILocation(line: 258, column: 15, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 258, column: 13)
!670 = distinct !DILexicalBlock(scope: !581, file: !3, line: 257, column: 12)
!671 = !DILocation(line: 258, column: 13, scope: !670)
!672 = !DILocation(line: 259, column: 21, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !3, line: 258, column: 23)
!674 = !DILocation(line: 259, column: 18, scope: !673)
!675 = !DILocation(line: 261, column: 9, scope: !673)
!676 = !DILocation(line: 261, column: 22, scope: !677)
!677 = distinct !DILexicalBlock(scope: !669, file: !3, line: 261, column: 20)
!678 = !DILocation(line: 261, column: 20, scope: !669)
!679 = !DILocation(line: 262, column: 18, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 261, column: 31)
!681 = !DILocation(line: 263, column: 20, scope: !680)
!682 = !DILocation(line: 263, column: 13, scope: !680)
!683 = !DILocation(line: 263, column: 18, scope: !680)
!684 = !DILocation(line: 265, column: 9, scope: !680)
!685 = !DILocation(line: 265, column: 22, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !3, line: 265, column: 20)
!687 = !DILocation(line: 265, column: 20, scope: !677)
!688 = !DILocation(line: 266, column: 18, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 265, column: 33)
!690 = !DILocation(line: 267, column: 33, scope: !689)
!691 = !DILocation(line: 267, column: 20, scope: !689)
!692 = !DILocation(line: 267, column: 13, scope: !689)
!693 = !DILocation(line: 267, column: 18, scope: !689)
!694 = !DILocation(line: 268, column: 20, scope: !689)
!695 = !DILocation(line: 268, column: 13, scope: !689)
!696 = !DILocation(line: 268, column: 18, scope: !689)
!697 = !DILocation(line: 270, column: 9, scope: !689)
!698 = !DILocation(line: 270, column: 22, scope: !699)
!699 = distinct !DILexicalBlock(scope: !686, file: !3, line: 270, column: 20)
!700 = !DILocation(line: 270, column: 20, scope: !686)
!701 = !DILocation(line: 271, column: 18, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 270, column: 40)
!703 = !DILocation(line: 272, column: 37, scope: !702)
!704 = !DILocation(line: 272, column: 20, scope: !702)
!705 = !DILocation(line: 272, column: 13, scope: !702)
!706 = !DILocation(line: 272, column: 18, scope: !702)
!707 = !DILocation(line: 273, column: 35, scope: !702)
!708 = !DILocation(line: 273, column: 20, scope: !702)
!709 = !DILocation(line: 273, column: 13, scope: !702)
!710 = !DILocation(line: 273, column: 18, scope: !702)
!711 = !DILocation(line: 274, column: 33, scope: !702)
!712 = !DILocation(line: 274, column: 20, scope: !702)
!713 = !DILocation(line: 274, column: 13, scope: !702)
!714 = !DILocation(line: 274, column: 18, scope: !702)
!715 = !DILocation(line: 275, column: 20, scope: !702)
!716 = !DILocation(line: 275, column: 13, scope: !702)
!717 = !DILocation(line: 275, column: 18, scope: !702)
!718 = !DILocation(line: 277, column: 9, scope: !702)
!719 = !DILocation(line: 278, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !699, file: !3, line: 277, column: 16)
!721 = !DILocation(line: 279, column: 47, scope: !720)
!722 = !DILocation(line: 279, column: 20, scope: !720)
!723 = !DILocation(line: 279, column: 13, scope: !720)
!724 = !DILocation(line: 279, column: 18, scope: !720)
!725 = !DILocation(line: 280, column: 45, scope: !720)
!726 = !DILocation(line: 280, column: 20, scope: !720)
!727 = !DILocation(line: 280, column: 13, scope: !720)
!728 = !DILocation(line: 280, column: 18, scope: !720)
!729 = !DILocation(line: 281, column: 43, scope: !720)
!730 = !DILocation(line: 281, column: 20, scope: !720)
!731 = !DILocation(line: 281, column: 13, scope: !720)
!732 = !DILocation(line: 281, column: 18, scope: !720)
!733 = !DILocation(line: 282, column: 41, scope: !720)
!734 = !DILocation(line: 282, column: 20, scope: !720)
!735 = !DILocation(line: 282, column: 13, scope: !720)
!736 = !DILocation(line: 282, column: 18, scope: !720)
!737 = !DILocation(line: 283, column: 37, scope: !720)
!738 = !DILocation(line: 283, column: 20, scope: !720)
!739 = !DILocation(line: 283, column: 13, scope: !720)
!740 = !DILocation(line: 283, column: 18, scope: !720)
!741 = !DILocation(line: 284, column: 35, scope: !720)
!742 = !DILocation(line: 284, column: 20, scope: !720)
!743 = !DILocation(line: 284, column: 13, scope: !720)
!744 = !DILocation(line: 284, column: 18, scope: !720)
!745 = !DILocation(line: 285, column: 33, scope: !720)
!746 = !DILocation(line: 285, column: 20, scope: !720)
!747 = !DILocation(line: 285, column: 13, scope: !720)
!748 = !DILocation(line: 285, column: 18, scope: !720)
!749 = !DILocation(line: 286, column: 20, scope: !720)
!750 = !DILocation(line: 286, column: 13, scope: !720)
!751 = !DILocation(line: 286, column: 18, scope: !720)
!752 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !753)
!753 = distinct !DILocation(line: 290, column: 5, scope: !566)
!754 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !753)
!755 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !753)
!756 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !753)
!757 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !753)
!758 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !753)
!759 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !753)
!760 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !753)
!761 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !753)
!762 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !753)
!763 = !DILocation(line: 120, column: 35, scope: !171, inlinedAt: !753)
!764 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !753)
!765 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !753)
!766 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !753)
!767 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !753)
!768 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !769)
!769 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !753)
!770 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !769)
!771 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !769)
!772 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !769)
!773 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !769)
!774 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !769)
!775 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !769)
!776 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !769)
!777 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !769)
!778 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !769)
!779 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !769)
!780 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !769)
!781 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !753)
!782 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !753)
!783 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !753)
!784 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !753)
!785 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !753)
!786 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !753)
!787 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !753)
!788 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !753)
!789 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !753)
!790 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !753)
!791 = !DILocation(line: 291, column: 1, scope: !566)
!792 = distinct !DISubprogram(name: "mp_encode_array", scope: !3, file: !3, line: 293, type: !567, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !793)
!793 = !{!794, !795, !796, !797, !798}
!794 = !DILocalVariable(name: "L", arg: 1, scope: !792, file: !3, line: 293, type: !58)
!795 = !DILocalVariable(name: "buf", arg: 2, scope: !792, file: !3, line: 293, type: !8)
!796 = !DILocalVariable(name: "n", arg: 3, scope: !792, file: !3, line: 293, type: !25)
!797 = !DILocalVariable(name: "b", scope: !792, file: !3, line: 294, type: !289)
!798 = !DILocalVariable(name: "enclen", scope: !792, file: !3, line: 295, type: !30)
!799 = !DILocation(line: 293, column: 33, scope: !792)
!800 = !DILocation(line: 293, column: 44, scope: !792)
!801 = !DILocation(line: 293, column: 57, scope: !792)
!802 = !DILocation(line: 294, column: 5, scope: !792)
!803 = !DILocation(line: 294, column: 19, scope: !792)
!804 = !DILocation(line: 297, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !792, file: !3, line: 297, column: 9)
!806 = !DILocation(line: 297, column: 9, scope: !792)
!807 = !DILocation(line: 298, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 297, column: 18)
!809 = !DILocation(line: 298, column: 14, scope: !808)
!810 = !DILocation(line: 295, column: 9, scope: !792)
!811 = !DILocation(line: 300, column: 5, scope: !808)
!812 = !DILocation(line: 300, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !805, file: !3, line: 300, column: 16)
!814 = !DILocation(line: 300, column: 16, scope: !805)
!815 = !DILocation(line: 301, column: 14, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !3, line: 300, column: 28)
!817 = !DILocation(line: 302, column: 29, scope: !816)
!818 = !DILocation(line: 302, column: 16, scope: !816)
!819 = !DILocation(line: 302, column: 9, scope: !816)
!820 = !DILocation(line: 302, column: 14, scope: !816)
!821 = !DILocation(line: 303, column: 16, scope: !816)
!822 = !DILocation(line: 303, column: 9, scope: !816)
!823 = !DILocation(line: 303, column: 14, scope: !816)
!824 = !DILocation(line: 305, column: 5, scope: !816)
!825 = !DILocation(line: 306, column: 14, scope: !826)
!826 = distinct !DILexicalBlock(scope: !813, file: !3, line: 305, column: 12)
!827 = !DILocation(line: 307, column: 33, scope: !826)
!828 = !DILocation(line: 307, column: 16, scope: !826)
!829 = !DILocation(line: 307, column: 9, scope: !826)
!830 = !DILocation(line: 307, column: 14, scope: !826)
!831 = !DILocation(line: 308, column: 31, scope: !826)
!832 = !DILocation(line: 308, column: 16, scope: !826)
!833 = !DILocation(line: 308, column: 9, scope: !826)
!834 = !DILocation(line: 308, column: 14, scope: !826)
!835 = !DILocation(line: 309, column: 29, scope: !826)
!836 = !DILocation(line: 309, column: 16, scope: !826)
!837 = !DILocation(line: 309, column: 9, scope: !826)
!838 = !DILocation(line: 309, column: 14, scope: !826)
!839 = !DILocation(line: 310, column: 16, scope: !826)
!840 = !DILocation(line: 310, column: 9, scope: !826)
!841 = !DILocation(line: 310, column: 14, scope: !826)
!842 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !843)
!843 = distinct !DILocation(line: 313, column: 5, scope: !792)
!844 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !843)
!845 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !843)
!846 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !843)
!847 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !843)
!848 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !843)
!849 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !843)
!850 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !843)
!851 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !843)
!852 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !843)
!853 = !DILocation(line: 120, column: 35, scope: !171, inlinedAt: !843)
!854 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !843)
!855 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !843)
!856 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !843)
!857 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !843)
!858 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !859)
!859 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !843)
!860 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !859)
!861 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !859)
!862 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !859)
!863 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !859)
!864 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !859)
!865 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !859)
!866 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !859)
!867 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !859)
!868 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !859)
!869 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !859)
!870 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !859)
!871 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !843)
!872 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !843)
!873 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !843)
!874 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !843)
!875 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !843)
!876 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !843)
!877 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !843)
!878 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !843)
!879 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !843)
!880 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !843)
!881 = !DILocation(line: 314, column: 1, scope: !792)
!882 = distinct !DISubprogram(name: "mp_encode_map", scope: !3, file: !3, line: 316, type: !567, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !883)
!883 = !{!884, !885, !886, !887, !888}
!884 = !DILocalVariable(name: "L", arg: 1, scope: !882, file: !3, line: 316, type: !58)
!885 = !DILocalVariable(name: "buf", arg: 2, scope: !882, file: !3, line: 316, type: !8)
!886 = !DILocalVariable(name: "n", arg: 3, scope: !882, file: !3, line: 316, type: !25)
!887 = !DILocalVariable(name: "b", scope: !882, file: !3, line: 317, type: !289)
!888 = !DILocalVariable(name: "enclen", scope: !882, file: !3, line: 318, type: !30)
!889 = !DILocation(line: 316, column: 31, scope: !882)
!890 = !DILocation(line: 316, column: 42, scope: !882)
!891 = !DILocation(line: 316, column: 55, scope: !882)
!892 = !DILocation(line: 317, column: 5, scope: !882)
!893 = !DILocation(line: 317, column: 19, scope: !882)
!894 = !DILocation(line: 320, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !882, file: !3, line: 320, column: 9)
!896 = !DILocation(line: 320, column: 9, scope: !882)
!897 = !DILocation(line: 321, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !3, line: 320, column: 18)
!899 = !DILocation(line: 321, column: 14, scope: !898)
!900 = !DILocation(line: 318, column: 9, scope: !882)
!901 = !DILocation(line: 323, column: 5, scope: !898)
!902 = !DILocation(line: 323, column: 18, scope: !903)
!903 = distinct !DILexicalBlock(scope: !895, file: !3, line: 323, column: 16)
!904 = !DILocation(line: 323, column: 16, scope: !895)
!905 = !DILocation(line: 324, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 323, column: 28)
!907 = !DILocation(line: 325, column: 29, scope: !906)
!908 = !DILocation(line: 325, column: 16, scope: !906)
!909 = !DILocation(line: 325, column: 9, scope: !906)
!910 = !DILocation(line: 325, column: 14, scope: !906)
!911 = !DILocation(line: 326, column: 16, scope: !906)
!912 = !DILocation(line: 326, column: 9, scope: !906)
!913 = !DILocation(line: 326, column: 14, scope: !906)
!914 = !DILocation(line: 328, column: 5, scope: !906)
!915 = !DILocation(line: 329, column: 14, scope: !916)
!916 = distinct !DILexicalBlock(scope: !903, file: !3, line: 328, column: 12)
!917 = !DILocation(line: 330, column: 33, scope: !916)
!918 = !DILocation(line: 330, column: 16, scope: !916)
!919 = !DILocation(line: 330, column: 9, scope: !916)
!920 = !DILocation(line: 330, column: 14, scope: !916)
!921 = !DILocation(line: 331, column: 31, scope: !916)
!922 = !DILocation(line: 331, column: 16, scope: !916)
!923 = !DILocation(line: 331, column: 9, scope: !916)
!924 = !DILocation(line: 331, column: 14, scope: !916)
!925 = !DILocation(line: 332, column: 29, scope: !916)
!926 = !DILocation(line: 332, column: 16, scope: !916)
!927 = !DILocation(line: 332, column: 9, scope: !916)
!928 = !DILocation(line: 332, column: 14, scope: !916)
!929 = !DILocation(line: 333, column: 16, scope: !916)
!930 = !DILocation(line: 333, column: 9, scope: !916)
!931 = !DILocation(line: 333, column: 14, scope: !916)
!932 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !933)
!933 = distinct !DILocation(line: 336, column: 5, scope: !882)
!934 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !933)
!935 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !933)
!936 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !933)
!937 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !933)
!938 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !933)
!939 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !933)
!940 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !933)
!941 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !933)
!942 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !933)
!943 = !DILocation(line: 120, column: 35, scope: !171, inlinedAt: !933)
!944 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !933)
!945 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !933)
!946 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !933)
!947 = !DILocation(line: 122, column: 65, scope: !171, inlinedAt: !933)
!948 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !949)
!949 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !933)
!950 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !949)
!951 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !949)
!952 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !949)
!953 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !949)
!954 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !949)
!955 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !949)
!956 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !949)
!957 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !949)
!958 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !949)
!959 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !949)
!960 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !949)
!961 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !933)
!962 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !933)
!963 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !933)
!964 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !933)
!965 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !933)
!966 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !933)
!967 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !933)
!968 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !933)
!969 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !933)
!970 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !933)
!971 = !DILocation(line: 337, column: 1, scope: !882)
!972 = distinct !DISubprogram(name: "mp_encode_lua_string", scope: !3, file: !3, line: 341, type: !214, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !973)
!973 = !{!974, !975, !976, !977}
!974 = !DILocalVariable(name: "L", arg: 1, scope: !972, file: !3, line: 341, type: !58)
!975 = !DILocalVariable(name: "buf", arg: 2, scope: !972, file: !3, line: 341, type: !8)
!976 = !DILocalVariable(name: "len", scope: !972, file: !3, line: 342, type: !14)
!977 = !DILocalVariable(name: "s", scope: !972, file: !3, line: 343, type: !50)
!978 = !DILocation(line: 341, column: 38, scope: !972)
!979 = !DILocation(line: 341, column: 49, scope: !972)
!980 = !DILocation(line: 342, column: 5, scope: !972)
!981 = !DILocation(line: 342, column: 12, scope: !972)
!982 = !DILocation(line: 345, column: 9, scope: !972)
!983 = !DILocation(line: 343, column: 17, scope: !972)
!984 = !DILocation(line: 346, column: 51, scope: !972)
!985 = !DILocation(line: 346, column: 5, scope: !972)
!986 = !DILocation(line: 347, column: 1, scope: !972)
!987 = distinct !DISubprogram(name: "mp_encode_lua_bool", scope: !3, file: !3, line: 349, type: !214, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !988)
!988 = !{!989, !990, !991}
!989 = !DILocalVariable(name: "L", arg: 1, scope: !987, file: !3, line: 349, type: !58)
!990 = !DILocalVariable(name: "buf", arg: 2, scope: !987, file: !3, line: 349, type: !8)
!991 = !DILocalVariable(name: "b", scope: !987, file: !3, line: 350, type: !7)
!992 = !DILocation(line: 349, column: 36, scope: !987)
!993 = !DILocation(line: 349, column: 47, scope: !987)
!994 = !DILocation(line: 350, column: 19, scope: !987)
!995 = !DILocation(line: 350, column: 5, scope: !987)
!996 = !DILocation(line: 350, column: 23, scope: !987)
!997 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !998)
!998 = distinct !DILocation(line: 351, column: 5, scope: !987)
!999 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !998)
!1000 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !998)
!1001 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !998)
!1002 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !998)
!1003 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !998)
!1004 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !998)
!1005 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !998)
!1006 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !998)
!1007 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !998)
!1008 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !998)
!1009 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !998)
!1010 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !998)
!1011 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !998)
!1013 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1012)
!1014 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1012)
!1015 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1012)
!1016 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1012)
!1017 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1012)
!1018 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1012)
!1019 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1012)
!1020 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1012)
!1021 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1012)
!1022 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1012)
!1023 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1012)
!1024 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !998)
!1025 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !998)
!1026 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !998)
!1027 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !998)
!1028 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !998)
!1029 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !998)
!1030 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !998)
!1031 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !998)
!1032 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !998)
!1033 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !998)
!1034 = !DILocation(line: 352, column: 1, scope: !987)
!1035 = distinct !DISubprogram(name: "mp_encode_lua_integer", scope: !3, file: !3, line: 355, type: !214, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DILocalVariable(name: "L", arg: 1, scope: !1035, file: !3, line: 355, type: !58)
!1038 = !DILocalVariable(name: "buf", arg: 2, scope: !1035, file: !3, line: 355, type: !8)
!1039 = !DILocalVariable(name: "i", scope: !1035, file: !3, line: 359, type: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !54, line: 103, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1042, line: 49, baseType: !29)
!1042 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1043 = !DILocation(line: 355, column: 39, scope: !1035)
!1044 = !DILocation(line: 355, column: 50, scope: !1035)
!1045 = !DILocation(line: 359, column: 21, scope: !1035)
!1046 = !DILocation(line: 359, column: 17, scope: !1035)
!1047 = !DILocation(line: 361, column: 5, scope: !1035)
!1048 = !DILocation(line: 362, column: 1, scope: !1035)
!1049 = distinct !DISubprogram(name: "mp_encode_lua_number", scope: !3, file: !3, line: 367, type: !214, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DILocalVariable(name: "L", arg: 1, scope: !1049, file: !3, line: 367, type: !58)
!1052 = !DILocalVariable(name: "buf", arg: 2, scope: !1049, file: !3, line: 367, type: !8)
!1053 = !DILocalVariable(name: "n", scope: !1049, file: !3, line: 368, type: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !54, line: 99, baseType: !21)
!1055 = !DILocation(line: 367, column: 38, scope: !1049)
!1056 = !DILocation(line: 367, column: 49, scope: !1049)
!1057 = !DILocation(line: 368, column: 20, scope: !1049)
!1058 = !DILocation(line: 368, column: 16, scope: !1049)
!1059 = !DILocation(line: 370, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 370, column: 9)
!1061 = !DILocation(line: 370, column: 9, scope: !1049)
!1062 = !DILocation(line: 355, column: 39, scope: !1035, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 371, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 370, column: 33)
!1065 = !DILocation(line: 355, column: 50, scope: !1035, inlinedAt: !1063)
!1066 = !DILocation(line: 359, column: 21, scope: !1035, inlinedAt: !1063)
!1067 = !DILocation(line: 359, column: 17, scope: !1035, inlinedAt: !1063)
!1068 = !DILocation(line: 361, column: 5, scope: !1035, inlinedAt: !1063)
!1069 = !DILocation(line: 362, column: 1, scope: !1035, inlinedAt: !1063)
!1070 = !DILocation(line: 372, column: 5, scope: !1064)
!1071 = !DILocation(line: 373, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 372, column: 12)
!1073 = !DILocation(line: 375, column: 1, scope: !1049)
!1074 = distinct !DISubprogram(name: "mp_encode_lua_table_as_array", scope: !3, file: !3, line: 380, type: !1075, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !58, !8, !30}
!1077 = !{!1078, !1079, !1080, !1081, !1082}
!1078 = !DILocalVariable(name: "L", arg: 1, scope: !1074, file: !3, line: 380, type: !58)
!1079 = !DILocalVariable(name: "buf", arg: 2, scope: !1074, file: !3, line: 380, type: !8)
!1080 = !DILocalVariable(name: "level", arg: 3, scope: !1074, file: !3, line: 380, type: !30)
!1081 = !DILocalVariable(name: "len", scope: !1074, file: !3, line: 382, type: !14)
!1082 = !DILocalVariable(name: "j", scope: !1074, file: !3, line: 382, type: !14)
!1083 = !DILocation(line: 380, column: 46, scope: !1074)
!1084 = !DILocation(line: 380, column: 57, scope: !1074)
!1085 = !DILocation(line: 380, column: 66, scope: !1074)
!1086 = !DILocation(line: 382, column: 18, scope: !1074)
!1087 = !DILocation(line: 382, column: 12, scope: !1074)
!1088 = !DILocation(line: 387, column: 5, scope: !1074)
!1089 = !DILocation(line: 388, column: 5, scope: !1074)
!1090 = !DILocation(line: 382, column: 36, scope: !1074)
!1091 = !DILocation(line: 389, column: 19, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 389, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 389, column: 5)
!1094 = !DILocation(line: 389, column: 5, scope: !1093)
!1095 = !DILocation(line: 390, column: 26, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 389, column: 32)
!1097 = !DILocation(line: 390, column: 9, scope: !1096)
!1098 = !DILocation(line: 391, column: 9, scope: !1096)
!1099 = !DILocation(line: 392, column: 9, scope: !1096)
!1100 = !DILocation(line: 389, column: 28, scope: !1092)
!1101 = distinct !{!1101, !1094, !1102}
!1102 = !DILocation(line: 393, column: 5, scope: !1093)
!1103 = !DILocation(line: 394, column: 1, scope: !1074)
!1104 = distinct !DISubprogram(name: "mp_encode_lua_type", scope: !3, file: !3, line: 482, type: !1075, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(name: "L", arg: 1, scope: !1104, file: !3, line: 482, type: !58)
!1107 = !DILocalVariable(name: "buf", arg: 2, scope: !1104, file: !3, line: 482, type: !8)
!1108 = !DILocalVariable(name: "level", arg: 3, scope: !1104, file: !3, line: 482, type: !30)
!1109 = !DILocalVariable(name: "t", scope: !1104, file: !3, line: 483, type: !30)
!1110 = !DILocalVariable(name: "b", scope: !1111, file: !3, line: 476, type: !1115)
!1111 = distinct !DISubprogram(name: "mp_encode_lua_null", scope: !3, file: !3, line: 475, type: !214, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1112)
!1112 = !{!1113, !1114, !1110}
!1113 = !DILocalVariable(name: "L", arg: 1, scope: !1111, file: !3, line: 475, type: !58)
!1114 = !DILocalVariable(name: "buf", arg: 2, scope: !1111, file: !3, line: 475, type: !8)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 1)
!1118 = !DILocation(line: 476, column: 19, scope: !1111, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 503, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 488, column: 15)
!1121 = !DILocation(line: 482, column: 36, scope: !1104)
!1122 = !DILocation(line: 482, column: 47, scope: !1104)
!1123 = !DILocation(line: 482, column: 56, scope: !1104)
!1124 = !DILocation(line: 483, column: 13, scope: !1104)
!1125 = !DILocation(line: 483, column: 9, scope: !1104)
!1126 = !DILocation(line: 487, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 487, column: 9)
!1128 = !DILocation(line: 487, column: 34, scope: !1127)
!1129 = !DILocation(line: 487, column: 25, scope: !1127)
!1130 = !DILocation(line: 488, column: 5, scope: !1104)
!1131 = !DILocation(line: 341, column: 38, scope: !972, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 489, column: 23, scope: !1120)
!1133 = !DILocation(line: 341, column: 49, scope: !972, inlinedAt: !1132)
!1134 = !DILocation(line: 342, column: 5, scope: !972, inlinedAt: !1132)
!1135 = !DILocation(line: 342, column: 12, scope: !972, inlinedAt: !1132)
!1136 = !DILocation(line: 345, column: 9, scope: !972, inlinedAt: !1132)
!1137 = !DILocation(line: 343, column: 17, scope: !972, inlinedAt: !1132)
!1138 = !DILocation(line: 346, column: 51, scope: !972, inlinedAt: !1132)
!1139 = !DILocation(line: 346, column: 5, scope: !972, inlinedAt: !1132)
!1140 = !DILocation(line: 347, column: 1, scope: !972, inlinedAt: !1132)
!1141 = !DILocation(line: 489, column: 52, scope: !1120)
!1142 = !DILocation(line: 490, column: 24, scope: !1120)
!1143 = !DILocation(line: 490, column: 51, scope: !1120)
!1144 = !DILocation(line: 367, column: 38, scope: !1049, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 493, column: 9, scope: !1120)
!1146 = !DILocation(line: 367, column: 49, scope: !1049, inlinedAt: !1145)
!1147 = !DILocation(line: 368, column: 20, scope: !1049, inlinedAt: !1145)
!1148 = !DILocation(line: 368, column: 16, scope: !1049, inlinedAt: !1145)
!1149 = !DILocation(line: 370, column: 9, scope: !1060, inlinedAt: !1145)
!1150 = !DILocation(line: 370, column: 9, scope: !1049, inlinedAt: !1145)
!1151 = !DILocation(line: 355, column: 39, scope: !1035, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 371, column: 9, scope: !1064, inlinedAt: !1145)
!1153 = !DILocation(line: 355, column: 50, scope: !1035, inlinedAt: !1152)
!1154 = !DILocation(line: 359, column: 21, scope: !1035, inlinedAt: !1152)
!1155 = !DILocation(line: 359, column: 17, scope: !1035, inlinedAt: !1152)
!1156 = !DILocation(line: 361, column: 5, scope: !1035, inlinedAt: !1152)
!1157 = !DILocation(line: 362, column: 1, scope: !1035, inlinedAt: !1152)
!1158 = !DILocation(line: 372, column: 5, scope: !1064, inlinedAt: !1145)
!1159 = !DILocation(line: 373, column: 9, scope: !1072, inlinedAt: !1145)
!1160 = !DILocation(line: 375, column: 1, scope: !1049, inlinedAt: !1145)
!1161 = !DILocation(line: 493, column: 38, scope: !1120)
!1162 = !DILocalVariable(name: "L", arg: 1, scope: !1163, file: !3, line: 468, type: !58)
!1163 = distinct !DISubprogram(name: "mp_encode_lua_table", scope: !3, file: !3, line: 468, type: !1075, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1164)
!1164 = !{!1162, !1165, !1166}
!1165 = !DILocalVariable(name: "buf", arg: 2, scope: !1163, file: !3, line: 468, type: !8)
!1166 = !DILocalVariable(name: "level", arg: 3, scope: !1163, file: !3, line: 468, type: !30)
!1167 = !DILocation(line: 468, column: 37, scope: !1163, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 502, column: 22, scope: !1120)
!1169 = !DILocation(line: 468, column: 48, scope: !1163, inlinedAt: !1168)
!1170 = !DILocation(line: 468, column: 57, scope: !1163, inlinedAt: !1168)
!1171 = !DILocation(line: 469, column: 9, scope: !1172, inlinedAt: !1168)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 469, column: 9)
!1173 = !DILocation(line: 469, column: 9, scope: !1163, inlinedAt: !1168)
!1174 = !DILocation(line: 470, column: 9, scope: !1172, inlinedAt: !1168)
!1175 = !DILocation(line: 472, column: 9, scope: !1172, inlinedAt: !1168)
!1176 = !DILocation(line: 473, column: 1, scope: !1163, inlinedAt: !1168)
!1177 = !DILocation(line: 502, column: 56, scope: !1120)
!1178 = !DILocation(line: 475, column: 36, scope: !1111, inlinedAt: !1119)
!1179 = !DILocation(line: 475, column: 47, scope: !1111, inlinedAt: !1119)
!1180 = !DILocation(line: 476, column: 5, scope: !1111, inlinedAt: !1119)
!1181 = !DILocation(line: 478, column: 10, scope: !1111, inlinedAt: !1119)
!1182 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 479, column: 5, scope: !1111, inlinedAt: !1119)
!1184 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !1183)
!1185 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !1183)
!1186 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !1183)
!1187 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !1183)
!1188 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !1183)
!1189 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !1183)
!1190 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !1183)
!1191 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !1183)
!1192 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !1183)
!1193 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !1183)
!1194 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !1183)
!1195 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !1183)
!1196 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !1183)
!1198 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1197)
!1199 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1197)
!1200 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1197)
!1201 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1197)
!1202 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1197)
!1203 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1197)
!1204 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1197)
!1205 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1197)
!1206 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1197)
!1207 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1197)
!1208 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1197)
!1209 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !1183)
!1210 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !1183)
!1211 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !1183)
!1212 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !1183)
!1213 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !1183)
!1214 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !1183)
!1215 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !1183)
!1216 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !1183)
!1217 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !1183)
!1218 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !1183)
!1219 = !DILocation(line: 480, column: 1, scope: !1111, inlinedAt: !1119)
!1220 = !DILocation(line: 503, column: 41, scope: !1120)
!1221 = !DILocation(line: 505, column: 5, scope: !1104)
!1222 = !DILocation(line: 506, column: 1, scope: !1104)
!1223 = distinct !DISubprogram(name: "mp_encode_lua_table_as_map", scope: !3, file: !3, line: 397, type: !1075, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1224)
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DILocalVariable(name: "L", arg: 1, scope: !1223, file: !3, line: 397, type: !58)
!1226 = !DILocalVariable(name: "buf", arg: 2, scope: !1223, file: !3, line: 397, type: !8)
!1227 = !DILocalVariable(name: "level", arg: 3, scope: !1223, file: !3, line: 397, type: !30)
!1228 = !DILocalVariable(name: "len", scope: !1223, file: !3, line: 398, type: !14)
!1229 = !DILocation(line: 397, column: 44, scope: !1223)
!1230 = !DILocation(line: 397, column: 55, scope: !1223)
!1231 = !DILocation(line: 397, column: 64, scope: !1223)
!1232 = !DILocation(line: 398, column: 12, scope: !1223)
!1233 = !DILocation(line: 404, column: 5, scope: !1223)
!1234 = !DILocation(line: 405, column: 5, scope: !1223)
!1235 = !DILocation(line: 406, column: 11, scope: !1223)
!1236 = !DILocation(line: 406, column: 5, scope: !1223)
!1237 = !DILocation(line: 407, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 406, column: 27)
!1239 = !DILocation(line: 408, column: 12, scope: !1238)
!1240 = distinct !{!1240, !1236, !1241}
!1241 = !DILocation(line: 409, column: 5, scope: !1223)
!1242 = !DILocation(line: 0, scope: !1238)
!1243 = !DILocation(line: 412, column: 5, scope: !1223)
!1244 = !DILocation(line: 413, column: 5, scope: !1223)
!1245 = !DILocation(line: 414, column: 11, scope: !1223)
!1246 = !DILocation(line: 414, column: 5, scope: !1223)
!1247 = !DILocation(line: 416, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 414, column: 27)
!1249 = !DILocation(line: 417, column: 9, scope: !1248)
!1250 = !DILocation(line: 418, column: 9, scope: !1248)
!1251 = distinct !{!1251, !1246, !1252}
!1252 = !DILocation(line: 419, column: 5, scope: !1223)
!1253 = !DILocation(line: 420, column: 1, scope: !1223)
!1254 = distinct !DISubprogram(name: "table_is_an_array", scope: !3, file: !3, line: 425, type: !56, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260}
!1256 = !DILocalVariable(name: "L", arg: 1, scope: !1254, file: !3, line: 425, type: !58)
!1257 = !DILocalVariable(name: "count", scope: !1254, file: !3, line: 426, type: !30)
!1258 = !DILocalVariable(name: "max", scope: !1254, file: !3, line: 426, type: !30)
!1259 = !DILocalVariable(name: "n", scope: !1254, file: !3, line: 428, type: !1054)
!1260 = !DILocalVariable(name: "stacktop", scope: !1254, file: !3, line: 434, type: !30)
!1261 = !DILocation(line: 425, column: 34, scope: !1254)
!1262 = !DILocation(line: 426, column: 9, scope: !1254)
!1263 = !DILocation(line: 426, column: 20, scope: !1254)
!1264 = !DILocation(line: 436, column: 16, scope: !1254)
!1265 = !DILocation(line: 434, column: 9, scope: !1254)
!1266 = !DILocation(line: 438, column: 5, scope: !1254)
!1267 = !DILocation(line: 439, column: 11, scope: !1254)
!1268 = !DILocation(line: 439, column: 5, scope: !1254)
!1269 = !DILocation(line: 441, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 439, column: 27)
!1271 = !DILocation(line: 444, column: 29, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 444, column: 13)
!1273 = !DILocation(line: 444, column: 26, scope: !1272)
!1274 = !DILocation(line: 444, column: 45, scope: !1272)
!1275 = !DILocation(line: 444, column: 53, scope: !1272)
!1276 = !DILocation(line: 428, column: 16, scope: !1254)
!1277 = !DILocation(line: 444, column: 74, scope: !1272)
!1278 = !DILocation(line: 444, column: 79, scope: !1272)
!1279 = !DILocation(line: 445, column: 14, scope: !1272)
!1280 = !DILocation(line: 444, column: 13, scope: !1270)
!1281 = !DILocation(line: 450, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 449, column: 9)
!1283 = !DILocation(line: 451, column: 13, scope: !1282)
!1284 = !DILocation(line: 453, column: 20, scope: !1270)
!1285 = !DILocation(line: 453, column: 18, scope: !1270)
!1286 = !DILocation(line: 453, column: 16, scope: !1270)
!1287 = !DILocation(line: 453, column: 15, scope: !1270)
!1288 = !DILocation(line: 454, column: 14, scope: !1270)
!1289 = distinct !{!1289, !1268, !1290}
!1290 = !DILocation(line: 455, column: 5, scope: !1254)
!1291 = !DILocation(line: 0, scope: !1270)
!1292 = !DILocation(line: 461, column: 5, scope: !1254)
!1293 = !DILocation(line: 462, column: 16, scope: !1254)
!1294 = !DILocation(line: 462, column: 5, scope: !1254)
!1295 = !DILocation(line: 0, scope: !1254)
!1296 = !DILocation(line: 463, column: 1, scope: !1254)
!1297 = !DILocation(line: 468, column: 37, scope: !1163)
!1298 = !DILocation(line: 468, column: 48, scope: !1163)
!1299 = !DILocation(line: 468, column: 57, scope: !1163)
!1300 = !DILocation(line: 469, column: 9, scope: !1172)
!1301 = !DILocation(line: 469, column: 9, scope: !1163)
!1302 = !DILocation(line: 470, column: 9, scope: !1172)
!1303 = !DILocation(line: 472, column: 9, scope: !1172)
!1304 = !DILocation(line: 473, column: 1, scope: !1163)
!1305 = !DILocation(line: 475, column: 36, scope: !1111)
!1306 = !DILocation(line: 475, column: 47, scope: !1111)
!1307 = !DILocation(line: 476, column: 5, scope: !1111)
!1308 = !DILocation(line: 476, column: 19, scope: !1111)
!1309 = !DILocation(line: 478, column: 10, scope: !1111)
!1310 = !DILocation(line: 118, column: 31, scope: !162, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 479, column: 5, scope: !1111)
!1312 = !DILocation(line: 118, column: 42, scope: !162, inlinedAt: !1311)
!1313 = !DILocation(line: 118, column: 68, scope: !162, inlinedAt: !1311)
!1314 = !DILocation(line: 118, column: 78, scope: !162, inlinedAt: !1311)
!1315 = !DILocation(line: 119, column: 14, scope: !172, inlinedAt: !1311)
!1316 = !DILocation(line: 119, column: 19, scope: !172, inlinedAt: !1311)
!1317 = !DILocation(line: 119, column: 9, scope: !162, inlinedAt: !1311)
!1318 = !DILocation(line: 125, column: 17, scope: !162, inlinedAt: !1311)
!1319 = !DILocation(line: 125, column: 24, scope: !162, inlinedAt: !1311)
!1320 = !DILocation(line: 120, column: 32, scope: !171, inlinedAt: !1311)
!1321 = !DILocation(line: 120, column: 40, scope: !171, inlinedAt: !1311)
!1322 = !DILocation(line: 120, column: 16, scope: !171, inlinedAt: !1311)
!1323 = !DILocation(line: 122, column: 53, scope: !171, inlinedAt: !1311)
!1324 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 122, column: 34, scope: !171, inlinedAt: !1311)
!1326 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1325)
!1327 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1325)
!1328 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1325)
!1329 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1325)
!1330 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1325)
!1331 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1325)
!1332 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1325)
!1333 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1325)
!1334 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1325)
!1335 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1325)
!1336 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1325)
!1337 = !DILocation(line: 122, column: 16, scope: !171, inlinedAt: !1311)
!1338 = !DILocation(line: 123, column: 36, scope: !171, inlinedAt: !1311)
!1339 = !DILocation(line: 123, column: 29, scope: !171, inlinedAt: !1311)
!1340 = !DILocation(line: 123, column: 19, scope: !171, inlinedAt: !1311)
!1341 = !DILocation(line: 124, column: 5, scope: !171, inlinedAt: !1311)
!1342 = !DILocation(line: 125, column: 18, scope: !162, inlinedAt: !1311)
!1343 = !DILocation(line: 125, column: 5, scope: !162, inlinedAt: !1311)
!1344 = !DILocation(line: 126, column: 14, scope: !162, inlinedAt: !1311)
!1345 = !DILocation(line: 127, column: 15, scope: !162, inlinedAt: !1311)
!1346 = !DILocation(line: 128, column: 1, scope: !162, inlinedAt: !1311)
!1347 = !DILocation(line: 480, column: 1, scope: !1111)
!1348 = distinct !DISubprogram(name: "mp_pack", scope: !3, file: !3, line: 512, type: !56, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DILocalVariable(name: "L", arg: 1, scope: !1348, file: !3, line: 512, type: !58)
!1351 = !DILocalVariable(name: "nargs", scope: !1348, file: !3, line: 513, type: !30)
!1352 = !DILocalVariable(name: "i", scope: !1348, file: !3, line: 514, type: !30)
!1353 = !DILocalVariable(name: "buf", scope: !1348, file: !3, line: 515, type: !8)
!1354 = !DILocation(line: 512, column: 24, scope: !1348)
!1355 = !DILocation(line: 513, column: 17, scope: !1348)
!1356 = !DILocation(line: 513, column: 9, scope: !1348)
!1357 = !DILocation(line: 517, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 517, column: 9)
!1359 = !DILocation(line: 517, column: 9, scope: !1348)
!1360 = !DILocation(line: 518, column: 16, scope: !1358)
!1361 = !DILocation(line: 518, column: 9, scope: !1358)
!1362 = !DILocation(line: 520, column: 10, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 520, column: 9)
!1364 = !DILocation(line: 520, column: 9, scope: !1348)
!1365 = !DILocation(line: 521, column: 16, scope: !1363)
!1366 = !DILocation(line: 521, column: 9, scope: !1363)
!1367 = !DILocation(line: 107, column: 31, scope: !131, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 523, column: 11, scope: !1348)
!1369 = !DILocation(line: 108, column: 13, scope: !131, inlinedAt: !1368)
!1370 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 111, column: 20, scope: !131, inlinedAt: !1368)
!1372 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1371)
!1373 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1371)
!1374 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1371)
!1375 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1371)
!1376 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1371)
!1377 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1371)
!1378 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1371)
!1379 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1371)
!1380 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1371)
!1381 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1371)
!1382 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1371)
!1383 = !DILocation(line: 111, column: 11, scope: !131, inlinedAt: !1368)
!1384 = !DILocation(line: 113, column: 10, scope: !131, inlinedAt: !1368)
!1385 = !DILocation(line: 113, column: 12, scope: !131, inlinedAt: !1368)
!1386 = !DILocation(line: 114, column: 21, scope: !131, inlinedAt: !1368)
!1387 = !DILocation(line: 114, column: 10, scope: !131, inlinedAt: !1368)
!1388 = !DILocation(line: 114, column: 14, scope: !131, inlinedAt: !1368)
!1389 = !DILocation(line: 115, column: 5, scope: !131, inlinedAt: !1368)
!1390 = !DILocation(line: 515, column: 13, scope: !1348)
!1391 = !DILocation(line: 514, column: 9, scope: !1348)
!1392 = !DILocation(line: 524, column: 18, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 524, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 524, column: 5)
!1395 = !DILocation(line: 524, column: 5, scope: !1394)
!1396 = !DILocation(line: 527, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 524, column: 33)
!1398 = !DILocation(line: 528, column: 9, scope: !1397)
!1399 = !DILocation(line: 530, column: 9, scope: !1397)
!1400 = !DILocation(line: 532, column: 39, scope: !1397)
!1401 = !DILocation(line: 532, column: 46, scope: !1397)
!1402 = !DILocation(line: 532, column: 9, scope: !1397)
!1403 = !DILocation(line: 537, column: 27, scope: !1397)
!1404 = !DILocation(line: 537, column: 19, scope: !1397)
!1405 = !DILocation(line: 538, column: 18, scope: !1397)
!1406 = !DILocation(line: 524, column: 29, scope: !1393)
!1407 = distinct !{!1407, !1395, !1408}
!1408 = !DILocation(line: 539, column: 5, scope: !1394)
!1409 = !DILocation(line: 131, column: 24, scope: !213, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 540, column: 5, scope: !1348)
!1411 = !DILocation(line: 131, column: 43, scope: !213, inlinedAt: !1410)
!1412 = !DILocation(line: 130, column: 29, scope: !213, inlinedAt: !1410)
!1413 = !DILocation(line: 130, column: 40, scope: !213, inlinedAt: !1410)
!1414 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 131, column: 5, scope: !213, inlinedAt: !1410)
!1416 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1415)
!1417 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1415)
!1418 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1415)
!1419 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1415)
!1420 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1415)
!1421 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1415)
!1422 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1415)
!1423 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1415)
!1424 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1415)
!1425 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1415)
!1426 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1415)
!1427 = !DILocation(line: 98, column: 29, scope: !104, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 132, column: 5, scope: !213, inlinedAt: !1410)
!1429 = !DILocation(line: 98, column: 38, scope: !104, inlinedAt: !1428)
!1430 = !DILocation(line: 98, column: 53, scope: !104, inlinedAt: !1428)
!1431 = !DILocation(line: 98, column: 66, scope: !104, inlinedAt: !1428)
!1432 = !DILocation(line: 99, column: 13, scope: !104, inlinedAt: !1428)
!1433 = !DILocation(line: 100, column: 5, scope: !104, inlinedAt: !1428)
!1434 = !DILocation(line: 100, column: 11, scope: !104, inlinedAt: !1428)
!1435 = !DILocation(line: 102, column: 21, scope: !104, inlinedAt: !1428)
!1436 = !DILocation(line: 104, column: 26, scope: !104, inlinedAt: !1428)
!1437 = !DILocation(line: 104, column: 12, scope: !104, inlinedAt: !1428)
!1438 = !DILocation(line: 105, column: 1, scope: !104, inlinedAt: !1428)
!1439 = !DILocation(line: 104, column: 5, scope: !104, inlinedAt: !1428)
!1440 = !DILocation(line: 133, column: 1, scope: !213, inlinedAt: !1410)
!1441 = !DILocation(line: 543, column: 5, scope: !1348)
!1442 = !DILocation(line: 544, column: 5, scope: !1348)
!1443 = !DILocation(line: 0, scope: !1363)
!1444 = !DILocation(line: 545, column: 1, scope: !1348)
!1445 = distinct !DISubprogram(name: "mp_decode_to_lua_array", scope: !3, file: !3, line: 551, type: !1446, isLocal: false, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !58, !256, !14}
!1448 = !{!1449, !1450, !1451, !1452}
!1449 = !DILocalVariable(name: "L", arg: 1, scope: !1445, file: !3, line: 551, type: !58)
!1450 = !DILocalVariable(name: "c", arg: 2, scope: !1445, file: !3, line: 551, type: !256)
!1451 = !DILocalVariable(name: "len", arg: 3, scope: !1445, file: !3, line: 551, type: !14)
!1452 = !DILocalVariable(name: "index", scope: !1445, file: !3, line: 553, type: !30)
!1453 = !DILocation(line: 551, column: 40, scope: !1445)
!1454 = !DILocation(line: 551, column: 51, scope: !1445)
!1455 = !DILocation(line: 551, column: 61, scope: !1445)
!1456 = !DILocation(line: 552, column: 5, scope: !1445)
!1457 = !DILocation(line: 553, column: 9, scope: !1445)
!1458 = !DILocation(line: 555, column: 5, scope: !1445)
!1459 = !DILocation(line: 556, column: 5, scope: !1445)
!1460 = !DILocation(line: 557, column: 5, scope: !1445)
!1461 = !DILocation(line: 557, column: 14, scope: !1445)
!1462 = !DILocation(line: 558, column: 26, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 557, column: 18)
!1464 = !DILocation(line: 558, column: 9, scope: !1463)
!1465 = !DILocation(line: 559, column: 9, scope: !1463)
!1466 = !DILocation(line: 560, column: 16, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 560, column: 13)
!1468 = !DILocation(line: 560, column: 13, scope: !1467)
!1469 = !DILocation(line: 560, column: 13, scope: !1463)
!1470 = !DILocation(line: 558, column: 31, scope: !1463)
!1471 = !DILocation(line: 561, column: 9, scope: !1463)
!1472 = distinct !{!1472, !1460, !1473}
!1473 = !DILocation(line: 562, column: 5, scope: !1445)
!1474 = !DILocation(line: 563, column: 1, scope: !1445)
!1475 = distinct !DISubprogram(name: "mp_decode_to_lua_type", scope: !3, file: !3, line: 579, type: !1476, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !58, !256}
!1478 = !{!1479, !1480, !1481, !1484, !1486, !1488, !1490, !1492, !1494, !1496, !1498, !1500, !1505, !1508}
!1479 = !DILocalVariable(name: "L", arg: 1, scope: !1475, file: !3, line: 579, type: !58)
!1480 = !DILocalVariable(name: "c", arg: 2, scope: !1475, file: !3, line: 579, type: !256)
!1481 = !DILocalVariable(name: "f", scope: !1482, file: !3, line: 680, type: !434)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 679, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 591, column: 21)
!1484 = !DILocalVariable(name: "d", scope: !1485, file: !3, line: 691, type: !21)
!1485 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 690, column: 9)
!1486 = !DILocalVariable(name: "l", scope: !1487, file: !3, line: 701, type: !14)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 700, column: 9)
!1488 = !DILocalVariable(name: "l", scope: !1489, file: !3, line: 710, type: !14)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 709, column: 9)
!1490 = !DILocalVariable(name: "l", scope: !1491, file: !3, line: 719, type: !14)
!1491 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 718, column: 9)
!1492 = !DILocalVariable(name: "l", scope: !1493, file: !3, line: 732, type: !14)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 731, column: 9)
!1494 = !DILocalVariable(name: "l", scope: !1495, file: !3, line: 740, type: !14)
!1495 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 739, column: 9)
!1496 = !DILocalVariable(name: "l", scope: !1497, file: !3, line: 751, type: !14)
!1497 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 750, column: 9)
!1498 = !DILocalVariable(name: "l", scope: !1499, file: !3, line: 759, type: !14)
!1499 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 758, column: 9)
!1500 = !DILocalVariable(name: "l", scope: !1501, file: !3, line: 775, type: !14)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 774, column: 46)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 774, column: 20)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 771, column: 20)
!1504 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 768, column: 13)
!1505 = !DILocalVariable(name: "l", scope: !1506, file: !3, line: 780, type: !14)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 779, column: 46)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 779, column: 20)
!1508 = !DILocalVariable(name: "l", scope: !1509, file: !3, line: 784, type: !14)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 783, column: 46)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 783, column: 20)
!1511 = !DILocation(line: 579, column: 39, scope: !1475)
!1512 = !DILocation(line: 579, column: 50, scope: !1475)
!1513 = !DILocation(line: 580, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 580, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 580, column: 5)
!1516 = !DILocation(line: 580, column: 5, scope: !1515)
!1517 = !DILocation(line: 580, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 580, column: 5)
!1519 = !DILocation(line: 587, column: 5, scope: !1475)
!1520 = !DILocation(line: 591, column: 15, scope: !1475)
!1521 = !DILocation(line: 591, column: 12, scope: !1475)
!1522 = !DILocation(line: 591, column: 5, scope: !1475)
!1523 = !DILocation(line: 593, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 593, column: 9)
!1525 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 593, column: 9)
!1526 = !DILocation(line: 593, column: 9, scope: !1525)
!1527 = !DILocation(line: 593, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 593, column: 9)
!1529 = !DILocation(line: 594, column: 9, scope: !1483)
!1530 = !DILocation(line: 595, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 595, column: 9)
!1532 = !DILocation(line: 596, column: 9, scope: !1483)
!1533 = !DILocation(line: 598, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 598, column: 9)
!1535 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 598, column: 9)
!1536 = !DILocation(line: 598, column: 9, scope: !1535)
!1537 = !DILocation(line: 598, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 598, column: 9)
!1539 = !DILocation(line: 599, column: 40, scope: !1483)
!1540 = !DILocation(line: 599, column: 27, scope: !1483)
!1541 = !DILocation(line: 599, column: 9, scope: !1483)
!1542 = !DILocation(line: 600, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 600, column: 9)
!1544 = !DILocation(line: 601, column: 9, scope: !1483)
!1545 = !DILocation(line: 603, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 603, column: 9)
!1547 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 603, column: 9)
!1548 = !DILocation(line: 603, column: 9, scope: !1547)
!1549 = !DILocation(line: 603, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 603, column: 9)
!1551 = !DILocation(line: 604, column: 9, scope: !1483)
!1552 = !DILocation(line: 607, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 607, column: 9)
!1554 = !DILocation(line: 608, column: 9, scope: !1483)
!1555 = !DILocation(line: 610, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 610, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 610, column: 9)
!1558 = !DILocation(line: 610, column: 9, scope: !1557)
!1559 = !DILocation(line: 610, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 610, column: 9)
!1561 = !DILocation(line: 612, column: 14, scope: !1483)
!1562 = !DILocation(line: 612, column: 22, scope: !1483)
!1563 = !DILocation(line: 611, column: 27, scope: !1483)
!1564 = !DILocation(line: 613, column: 14, scope: !1483)
!1565 = !DILocation(line: 612, column: 28, scope: !1483)
!1566 = !DILocation(line: 611, column: 9, scope: !1483)
!1567 = !DILocation(line: 614, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 614, column: 9)
!1569 = !DILocation(line: 615, column: 9, scope: !1483)
!1570 = !DILocation(line: 617, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 617, column: 9)
!1572 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 617, column: 9)
!1573 = !DILocation(line: 617, column: 9, scope: !1572)
!1574 = !DILocation(line: 617, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 617, column: 9)
!1576 = !DILocation(line: 618, column: 9, scope: !1483)
!1577 = !DILocation(line: 623, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 623, column: 9)
!1579 = !DILocation(line: 624, column: 9, scope: !1483)
!1580 = !DILocation(line: 626, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 626, column: 9)
!1582 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 626, column: 9)
!1583 = !DILocation(line: 626, column: 9, scope: !1582)
!1584 = !DILocation(line: 626, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 626, column: 9)
!1586 = !DILocation(line: 628, column: 23, scope: !1483)
!1587 = !DILocation(line: 628, column: 14, scope: !1483)
!1588 = !DILocation(line: 628, column: 31, scope: !1483)
!1589 = !DILocation(line: 629, column: 23, scope: !1483)
!1590 = !DILocation(line: 629, column: 14, scope: !1483)
!1591 = !DILocation(line: 629, column: 31, scope: !1483)
!1592 = !DILocation(line: 628, column: 38, scope: !1483)
!1593 = !DILocation(line: 630, column: 23, scope: !1483)
!1594 = !DILocation(line: 630, column: 14, scope: !1483)
!1595 = !DILocation(line: 630, column: 31, scope: !1483)
!1596 = !DILocation(line: 629, column: 38, scope: !1483)
!1597 = !DILocation(line: 631, column: 23, scope: !1483)
!1598 = !DILocation(line: 631, column: 14, scope: !1483)
!1599 = !DILocation(line: 630, column: 37, scope: !1483)
!1600 = !DILocation(line: 628, column: 13, scope: !1483)
!1601 = !DILocation(line: 627, column: 9, scope: !1483)
!1602 = !DILocation(line: 632, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 632, column: 9)
!1604 = !DILocation(line: 633, column: 9, scope: !1483)
!1605 = !DILocation(line: 635, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 635, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 635, column: 9)
!1608 = !DILocation(line: 635, column: 9, scope: !1607)
!1609 = !DILocation(line: 635, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 635, column: 9)
!1611 = !DILocation(line: 636, column: 9, scope: !1483)
!1612 = !DILocation(line: 645, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 645, column: 9)
!1614 = !DILocation(line: 646, column: 9, scope: !1483)
!1615 = !DILocation(line: 648, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 648, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 648, column: 9)
!1618 = !DILocation(line: 648, column: 9, scope: !1617)
!1619 = !DILocation(line: 648, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 648, column: 9)
!1621 = !DILocation(line: 654, column: 23, scope: !1483)
!1622 = !DILocation(line: 654, column: 14, scope: !1483)
!1623 = !DILocation(line: 654, column: 31, scope: !1483)
!1624 = !DILocation(line: 655, column: 23, scope: !1483)
!1625 = !DILocation(line: 655, column: 14, scope: !1483)
!1626 = !DILocation(line: 655, column: 31, scope: !1483)
!1627 = !DILocation(line: 654, column: 38, scope: !1483)
!1628 = !DILocation(line: 656, column: 23, scope: !1483)
!1629 = !DILocation(line: 656, column: 14, scope: !1483)
!1630 = !DILocation(line: 656, column: 31, scope: !1483)
!1631 = !DILocation(line: 655, column: 38, scope: !1483)
!1632 = !DILocation(line: 657, column: 23, scope: !1483)
!1633 = !DILocation(line: 657, column: 14, scope: !1483)
!1634 = !DILocation(line: 657, column: 31, scope: !1483)
!1635 = !DILocation(line: 656, column: 38, scope: !1483)
!1636 = !DILocation(line: 658, column: 23, scope: !1483)
!1637 = !DILocation(line: 658, column: 14, scope: !1483)
!1638 = !DILocation(line: 658, column: 31, scope: !1483)
!1639 = !DILocation(line: 657, column: 38, scope: !1483)
!1640 = !DILocation(line: 659, column: 23, scope: !1483)
!1641 = !DILocation(line: 659, column: 14, scope: !1483)
!1642 = !DILocation(line: 659, column: 31, scope: !1483)
!1643 = !DILocation(line: 658, column: 38, scope: !1483)
!1644 = !DILocation(line: 660, column: 23, scope: !1483)
!1645 = !DILocation(line: 660, column: 14, scope: !1483)
!1646 = !DILocation(line: 660, column: 31, scope: !1483)
!1647 = !DILocation(line: 659, column: 38, scope: !1483)
!1648 = !DILocation(line: 661, column: 23, scope: !1483)
!1649 = !DILocation(line: 661, column: 14, scope: !1483)
!1650 = !DILocation(line: 660, column: 37, scope: !1483)
!1651 = !DILocation(line: 654, column: 13, scope: !1483)
!1652 = !DILocation(line: 650, column: 9, scope: !1483)
!1653 = !DILocation(line: 662, column: 9, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 662, column: 9)
!1655 = !DILocation(line: 663, column: 9, scope: !1483)
!1656 = !DILocation(line: 665, column: 9, scope: !1483)
!1657 = !DILocation(line: 666, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 666, column: 9)
!1659 = !DILocation(line: 667, column: 9, scope: !1483)
!1660 = !DILocation(line: 669, column: 9, scope: !1483)
!1661 = !DILocation(line: 670, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 670, column: 9)
!1663 = !DILocation(line: 671, column: 9, scope: !1483)
!1664 = !DILocation(line: 673, column: 9, scope: !1483)
!1665 = !DILocation(line: 674, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 674, column: 9)
!1667 = !DILocation(line: 675, column: 9, scope: !1483)
!1668 = !DILocation(line: 677, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 677, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 677, column: 9)
!1671 = !DILocation(line: 677, column: 9, scope: !1670)
!1672 = !DILocation(line: 677, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 677, column: 9)
!1674 = !DILocation(line: 680, column: 13, scope: !1482)
!1675 = !DILocation(line: 681, column: 27, scope: !1482)
!1676 = !DILocation(line: 681, column: 13, scope: !1482)
!1677 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 682, column: 13, scope: !1482)
!1679 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1678)
!1680 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1678)
!1681 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1678)
!1682 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1678)
!1683 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1678)
!1684 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1678)
!1685 = !DILocation(line: 0, scope: !88, inlinedAt: !1678)
!1686 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !1678)
!1687 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1678)
!1688 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !1678)
!1689 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !1678)
!1690 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !1678)
!1691 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !1678)
!1692 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !1678)
!1693 = !DILocation(line: 683, column: 30, scope: !1482)
!1694 = !DILocation(line: 680, column: 19, scope: !1482)
!1695 = !DILocation(line: 683, column: 13, scope: !1482)
!1696 = !DILocation(line: 684, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 684, column: 13)
!1698 = !DILocation(line: 685, column: 9, scope: !1483)
!1699 = !DILocation(line: 686, column: 9, scope: !1483)
!1700 = !DILocation(line: 688, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 688, column: 9)
!1702 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 688, column: 9)
!1703 = !DILocation(line: 688, column: 9, scope: !1702)
!1704 = !DILocation(line: 688, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 688, column: 9)
!1706 = !DILocation(line: 691, column: 13, scope: !1485)
!1707 = !DILocation(line: 692, column: 27, scope: !1485)
!1708 = !DILocation(line: 692, column: 13, scope: !1485)
!1709 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 693, column: 13, scope: !1485)
!1711 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1710)
!1712 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1710)
!1713 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1710)
!1714 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1710)
!1715 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1710)
!1716 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1710)
!1717 = !DILocation(line: 0, scope: !88, inlinedAt: !1710)
!1718 = !DILocation(line: 79, column: 15, scope: !88, inlinedAt: !1710)
!1719 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1710)
!1720 = !DILocation(line: 80, column: 14, scope: !88, inlinedAt: !1710)
!1721 = !DILocation(line: 80, column: 12, scope: !88, inlinedAt: !1710)
!1722 = !DILocation(line: 81, column: 12, scope: !88, inlinedAt: !1710)
!1723 = !DILocation(line: 82, column: 10, scope: !88, inlinedAt: !1710)
!1724 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !1710)
!1725 = !DILocation(line: 694, column: 30, scope: !1485)
!1726 = !DILocation(line: 691, column: 20, scope: !1485)
!1727 = !DILocation(line: 694, column: 13, scope: !1485)
!1728 = !DILocation(line: 695, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 695, column: 13)
!1730 = !DILocation(line: 696, column: 9, scope: !1483)
!1731 = !DILocation(line: 697, column: 9, scope: !1483)
!1732 = !DILocation(line: 699, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 699, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 699, column: 9)
!1735 = !DILocation(line: 699, column: 9, scope: !1734)
!1736 = !DILocation(line: 699, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 699, column: 9)
!1738 = !DILocation(line: 701, column: 24, scope: !1487)
!1739 = !DILocation(line: 701, column: 20, scope: !1487)
!1740 = !DILocation(line: 702, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 702, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 702, column: 13)
!1743 = !DILocation(line: 702, column: 13, scope: !1742)
!1744 = !DILocation(line: 702, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 702, column: 13)
!1746 = !DILocation(line: 703, column: 42, scope: !1487)
!1747 = !DILocation(line: 703, column: 13, scope: !1487)
!1748 = !DILocation(line: 704, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 704, column: 13)
!1750 = !DILocation(line: 705, column: 9, scope: !1483)
!1751 = !DILocation(line: 708, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 708, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 708, column: 9)
!1754 = !DILocation(line: 708, column: 9, scope: !1753)
!1755 = !DILocation(line: 708, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 708, column: 9)
!1757 = !DILocation(line: 710, column: 25, scope: !1489)
!1758 = !DILocation(line: 710, column: 33, scope: !1489)
!1759 = !DILocation(line: 710, column: 41, scope: !1489)
!1760 = !DILocation(line: 710, column: 39, scope: !1489)
!1761 = !DILocation(line: 710, column: 20, scope: !1489)
!1762 = !DILocation(line: 711, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 711, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 711, column: 13)
!1765 = !DILocation(line: 711, column: 13, scope: !1764)
!1766 = !DILocation(line: 711, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 711, column: 13)
!1768 = !DILocation(line: 712, column: 42, scope: !1489)
!1769 = !DILocation(line: 712, column: 13, scope: !1489)
!1770 = !DILocation(line: 713, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 713, column: 13)
!1772 = !DILocation(line: 714, column: 9, scope: !1483)
!1773 = !DILocation(line: 717, column: 9, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 717, column: 9)
!1775 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 717, column: 9)
!1776 = !DILocation(line: 717, column: 9, scope: !1775)
!1777 = !DILocation(line: 717, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 717, column: 9)
!1779 = !DILocation(line: 719, column: 33, scope: !1491)
!1780 = !DILocation(line: 719, column: 25, scope: !1491)
!1781 = !DILocation(line: 719, column: 41, scope: !1491)
!1782 = !DILocation(line: 720, column: 33, scope: !1491)
!1783 = !DILocation(line: 720, column: 25, scope: !1491)
!1784 = !DILocation(line: 720, column: 41, scope: !1491)
!1785 = !DILocation(line: 719, column: 48, scope: !1491)
!1786 = !DILocation(line: 721, column: 33, scope: !1491)
!1787 = !DILocation(line: 721, column: 25, scope: !1491)
!1788 = !DILocation(line: 721, column: 41, scope: !1491)
!1789 = !DILocation(line: 720, column: 48, scope: !1491)
!1790 = !DILocation(line: 722, column: 32, scope: !1491)
!1791 = !DILocation(line: 722, column: 24, scope: !1491)
!1792 = !DILocation(line: 721, column: 47, scope: !1491)
!1793 = !DILocation(line: 719, column: 20, scope: !1491)
!1794 = !DILocation(line: 723, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 723, column: 13)
!1796 = !DILocation(line: 724, column: 13, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 724, column: 13)
!1798 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 724, column: 13)
!1799 = !DILocation(line: 724, column: 13, scope: !1798)
!1800 = !DILocation(line: 724, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 724, column: 13)
!1802 = !DILocation(line: 725, column: 13, scope: !1491)
!1803 = !DILocation(line: 726, column: 13, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 726, column: 13)
!1805 = !DILocation(line: 727, column: 9, scope: !1483)
!1806 = !DILocation(line: 730, column: 9, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 730, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 730, column: 9)
!1809 = !DILocation(line: 730, column: 9, scope: !1808)
!1810 = !DILocation(line: 730, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 730, column: 9)
!1812 = !DILocation(line: 732, column: 25, scope: !1493)
!1813 = !DILocation(line: 732, column: 33, scope: !1493)
!1814 = !DILocation(line: 732, column: 41, scope: !1493)
!1815 = !DILocation(line: 732, column: 39, scope: !1493)
!1816 = !DILocation(line: 732, column: 20, scope: !1493)
!1817 = !DILocation(line: 733, column: 13, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 733, column: 13)
!1819 = !DILocation(line: 734, column: 13, scope: !1493)
!1820 = !DILocation(line: 736, column: 9, scope: !1483)
!1821 = !DILocation(line: 738, column: 9, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 738, column: 9)
!1823 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 738, column: 9)
!1824 = !DILocation(line: 738, column: 9, scope: !1823)
!1825 = !DILocation(line: 738, column: 9, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 738, column: 9)
!1827 = !DILocation(line: 740, column: 33, scope: !1495)
!1828 = !DILocation(line: 740, column: 25, scope: !1495)
!1829 = !DILocation(line: 740, column: 41, scope: !1495)
!1830 = !DILocation(line: 741, column: 33, scope: !1495)
!1831 = !DILocation(line: 741, column: 25, scope: !1495)
!1832 = !DILocation(line: 741, column: 41, scope: !1495)
!1833 = !DILocation(line: 740, column: 48, scope: !1495)
!1834 = !DILocation(line: 742, column: 33, scope: !1495)
!1835 = !DILocation(line: 742, column: 25, scope: !1495)
!1836 = !DILocation(line: 742, column: 41, scope: !1495)
!1837 = !DILocation(line: 741, column: 48, scope: !1495)
!1838 = !DILocation(line: 743, column: 32, scope: !1495)
!1839 = !DILocation(line: 743, column: 24, scope: !1495)
!1840 = !DILocation(line: 742, column: 47, scope: !1495)
!1841 = !DILocation(line: 740, column: 20, scope: !1495)
!1842 = !DILocation(line: 744, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 744, column: 13)
!1844 = !DILocation(line: 745, column: 13, scope: !1495)
!1845 = !DILocation(line: 747, column: 9, scope: !1483)
!1846 = !DILocation(line: 749, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 749, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 749, column: 9)
!1849 = !DILocation(line: 749, column: 9, scope: !1848)
!1850 = !DILocation(line: 749, column: 9, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 749, column: 9)
!1852 = !DILocation(line: 751, column: 25, scope: !1497)
!1853 = !DILocation(line: 751, column: 33, scope: !1497)
!1854 = !DILocation(line: 751, column: 41, scope: !1497)
!1855 = !DILocation(line: 751, column: 39, scope: !1497)
!1856 = !DILocation(line: 751, column: 20, scope: !1497)
!1857 = !DILocation(line: 752, column: 13, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 752, column: 13)
!1859 = !DILocation(line: 753, column: 13, scope: !1497)
!1860 = !DILocation(line: 755, column: 9, scope: !1483)
!1861 = !DILocation(line: 757, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 757, column: 9)
!1863 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 757, column: 9)
!1864 = !DILocation(line: 757, column: 9, scope: !1863)
!1865 = !DILocation(line: 757, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 757, column: 9)
!1867 = !DILocation(line: 759, column: 33, scope: !1499)
!1868 = !DILocation(line: 759, column: 25, scope: !1499)
!1869 = !DILocation(line: 759, column: 41, scope: !1499)
!1870 = !DILocation(line: 760, column: 33, scope: !1499)
!1871 = !DILocation(line: 760, column: 25, scope: !1499)
!1872 = !DILocation(line: 760, column: 41, scope: !1499)
!1873 = !DILocation(line: 759, column: 48, scope: !1499)
!1874 = !DILocation(line: 761, column: 33, scope: !1499)
!1875 = !DILocation(line: 761, column: 25, scope: !1499)
!1876 = !DILocation(line: 761, column: 41, scope: !1499)
!1877 = !DILocation(line: 760, column: 48, scope: !1499)
!1878 = !DILocation(line: 762, column: 32, scope: !1499)
!1879 = !DILocation(line: 762, column: 24, scope: !1499)
!1880 = !DILocation(line: 761, column: 47, scope: !1499)
!1881 = !DILocation(line: 759, column: 20, scope: !1499)
!1882 = !DILocation(line: 763, column: 13, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 763, column: 13)
!1884 = !DILocation(line: 764, column: 13, scope: !1499)
!1885 = !DILocation(line: 766, column: 9, scope: !1483)
!1886 = !DILocation(line: 768, column: 30, scope: !1504)
!1887 = !DILocation(line: 768, column: 13, scope: !1483)
!1888 = !DILocation(line: 769, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 768, column: 36)
!1890 = !DILocation(line: 770, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 770, column: 13)
!1892 = !DILocation(line: 771, column: 9, scope: !1889)
!1893 = !DILocation(line: 771, column: 29, scope: !1503)
!1894 = !DILocation(line: 771, column: 20, scope: !1504)
!1895 = !DILocation(line: 772, column: 31, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 771, column: 46)
!1897 = !DILocation(line: 772, column: 13, scope: !1896)
!1898 = !DILocation(line: 773, column: 13, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 773, column: 13)
!1900 = !DILocation(line: 774, column: 9, scope: !1896)
!1901 = !DILocation(line: 775, column: 32, scope: !1501)
!1902 = !DILocation(line: 775, column: 24, scope: !1501)
!1903 = !DILocation(line: 775, column: 20, scope: !1501)
!1904 = !DILocation(line: 776, column: 13, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 776, column: 13)
!1906 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 776, column: 13)
!1907 = !DILocation(line: 776, column: 13, scope: !1906)
!1908 = !DILocation(line: 776, column: 13, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 776, column: 13)
!1910 = !DILocation(line: 777, column: 42, scope: !1501)
!1911 = !DILocation(line: 777, column: 13, scope: !1501)
!1912 = !DILocation(line: 778, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 778, column: 13)
!1914 = !DILocation(line: 779, column: 9, scope: !1502)
!1915 = !DILocation(line: 779, column: 29, scope: !1507)
!1916 = !DILocation(line: 779, column: 20, scope: !1502)
!1917 = !DILocation(line: 780, column: 32, scope: !1506)
!1918 = !DILocation(line: 780, column: 24, scope: !1506)
!1919 = !DILocation(line: 780, column: 20, scope: !1506)
!1920 = !DILocation(line: 781, column: 13, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 781, column: 13)
!1922 = !DILocation(line: 782, column: 13, scope: !1506)
!1923 = !DILocation(line: 783, column: 9, scope: !1506)
!1924 = !DILocation(line: 784, column: 32, scope: !1509)
!1925 = !DILocation(line: 784, column: 24, scope: !1509)
!1926 = !DILocation(line: 784, column: 20, scope: !1509)
!1927 = !DILocation(line: 785, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 785, column: 13)
!1929 = !DILocation(line: 786, column: 13, scope: !1509)
!1930 = !DILocation(line: 787, column: 9, scope: !1509)
!1931 = !DILocation(line: 788, column: 16, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 787, column: 16)
!1933 = !DILocation(line: 788, column: 20, scope: !1932)
!1934 = !DILocation(line: 791, column: 1, scope: !1475)
!1935 = distinct !DISubprogram(name: "mp_decode_to_lua_hash", scope: !3, file: !3, line: 565, type: !1446, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "L", arg: 1, scope: !1935, file: !3, line: 565, type: !58)
!1938 = !DILocalVariable(name: "c", arg: 2, scope: !1935, file: !3, line: 565, type: !256)
!1939 = !DILocalVariable(name: "len", arg: 3, scope: !1935, file: !3, line: 565, type: !14)
!1940 = !DILocation(line: 565, column: 39, scope: !1935)
!1941 = !DILocation(line: 565, column: 50, scope: !1935)
!1942 = !DILocation(line: 565, column: 60, scope: !1935)
!1943 = !DILocation(line: 566, column: 5, scope: !1935)
!1944 = !DILocation(line: 567, column: 5, scope: !1935)
!1945 = !DILocation(line: 568, column: 5, scope: !1935)
!1946 = !DILocation(line: 568, column: 14, scope: !1935)
!1947 = !DILocation(line: 569, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 568, column: 18)
!1949 = !DILocation(line: 570, column: 16, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 570, column: 13)
!1951 = !DILocation(line: 570, column: 13, scope: !1950)
!1952 = !DILocation(line: 570, column: 13, scope: !1948)
!1953 = !DILocation(line: 571, column: 9, scope: !1948)
!1954 = !DILocation(line: 572, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 572, column: 13)
!1956 = !DILocation(line: 572, column: 13, scope: !1955)
!1957 = !DILocation(line: 572, column: 13, scope: !1948)
!1958 = !DILocation(line: 573, column: 9, scope: !1948)
!1959 = distinct !{!1959, !1945, !1960}
!1960 = !DILocation(line: 574, column: 5, scope: !1935)
!1961 = !DILocation(line: 575, column: 1, scope: !1935)
!1962 = distinct !DISubprogram(name: "mp_unpack_full", scope: !3, file: !3, line: 793, type: !1963, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!30, !58, !30, !30}
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1966 = !DILocalVariable(name: "L", arg: 1, scope: !1962, file: !3, line: 793, type: !58)
!1967 = !DILocalVariable(name: "limit", arg: 2, scope: !1962, file: !3, line: 793, type: !30)
!1968 = !DILocalVariable(name: "offset", arg: 3, scope: !1962, file: !3, line: 793, type: !30)
!1969 = !DILocalVariable(name: "len", scope: !1962, file: !3, line: 794, type: !14)
!1970 = !DILocalVariable(name: "s", scope: !1962, file: !3, line: 795, type: !50)
!1971 = !DILocalVariable(name: "c", scope: !1962, file: !3, line: 796, type: !257)
!1972 = !DILocalVariable(name: "cnt", scope: !1962, file: !3, line: 797, type: !30)
!1973 = !DILocalVariable(name: "decode_all", scope: !1962, file: !3, line: 798, type: !30)
!1974 = !DILocalVariable(name: "offset", scope: !1975, file: !3, line: 830, type: !30)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 826, column: 22)
!1976 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 826, column: 9)
!1977 = !DILocation(line: 793, column: 31, scope: !1962)
!1978 = !DILocation(line: 793, column: 38, scope: !1962)
!1979 = !DILocation(line: 793, column: 49, scope: !1962)
!1980 = !DILocation(line: 794, column: 5, scope: !1962)
!1981 = !DILocation(line: 796, column: 5, scope: !1962)
!1982 = !DILocation(line: 798, column: 30, scope: !1962)
!1983 = !DILocation(line: 794, column: 12, scope: !1962)
!1984 = !DILocation(line: 800, column: 9, scope: !1962)
!1985 = !DILocation(line: 795, column: 17, scope: !1962)
!1986 = !DILocation(line: 802, column: 20, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 802, column: 9)
!1988 = !DILocation(line: 805, column: 21, scope: !1987)
!1989 = !DILocation(line: 803, column: 16, scope: !1987)
!1990 = !DILocation(line: 803, column: 9, scope: !1987)
!1991 = !DILocation(line: 806, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 806, column: 14)
!1993 = !DILocation(line: 806, column: 23, scope: !1992)
!1994 = !DILocation(line: 806, column: 21, scope: !1992)
!1995 = !DILocation(line: 806, column: 14, scope: !1987)
!1996 = !DILocation(line: 807, column: 16, scope: !1992)
!1997 = !DILocation(line: 807, column: 9, scope: !1992)
!1998 = !DILocation(line: 810, column: 9, scope: !1962)
!1999 = !DILocation(line: 812, column: 44, scope: !1962)
!2000 = !DILocation(line: 812, column: 55, scope: !1962)
!2001 = !DILocation(line: 796, column: 12, scope: !1962)
!2002 = !DILocation(line: 154, column: 26, scope: !253, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 812, column: 5, scope: !1962)
!2004 = !DILocation(line: 154, column: 55, scope: !253, inlinedAt: !2003)
!2005 = !DILocation(line: 154, column: 65, scope: !253, inlinedAt: !2003)
!2006 = !DILocation(line: 155, column: 13, scope: !253, inlinedAt: !2003)
!2007 = !DILocation(line: 155, column: 15, scope: !253, inlinedAt: !2003)
!2008 = !DILocation(line: 156, column: 13, scope: !253, inlinedAt: !2003)
!2009 = !DILocation(line: 156, column: 18, scope: !253, inlinedAt: !2003)
!2010 = !DILocation(line: 157, column: 13, scope: !253, inlinedAt: !2003)
!2011 = !DILocation(line: 157, column: 17, scope: !253, inlinedAt: !2003)
!2012 = !DILocation(line: 158, column: 1, scope: !253, inlinedAt: !2003)
!2013 = !DILocation(line: 797, column: 9, scope: !1962)
!2014 = !DILocation(line: 816, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 816, column: 5)
!2016 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 816, column: 5)
!2017 = !DILocation(line: 816, column: 36, scope: !2015)
!2018 = !DILocation(line: 816, column: 29, scope: !2015)
!2019 = !DILocation(line: 817, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 816, column: 52)
!2021 = !DILocation(line: 819, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 819, column: 13)
!2023 = !DILocation(line: 819, column: 13, scope: !2020)
!2024 = !DILocation(line: 820, column: 20, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 819, column: 40)
!2026 = !DILocation(line: 820, column: 13, scope: !2025)
!2027 = !DILocation(line: 822, column: 20, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 821, column: 50)
!2029 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 821, column: 20)
!2030 = !DILocation(line: 822, column: 13, scope: !2028)
!2031 = !DILocation(line: 816, column: 48, scope: !2015)
!2032 = !DILocation(line: 816, column: 20, scope: !2015)
!2033 = distinct !{!2033, !2034, !2035}
!2034 = !DILocation(line: 816, column: 5, scope: !2016)
!2035 = !DILocation(line: 824, column: 5, scope: !2016)
!2036 = !DILocation(line: 0, scope: !2015)
!2037 = !DILocation(line: 826, column: 9, scope: !1962)
!2038 = !DILocation(line: 830, column: 22, scope: !1975)
!2039 = !DILocation(line: 830, column: 26, scope: !1975)
!2040 = !DILocation(line: 832, column: 9, scope: !1975)
!2041 = !DILocation(line: 835, column: 30, scope: !1975)
!2042 = !DILocation(line: 835, column: 35, scope: !1975)
!2043 = !DILocation(line: 835, column: 28, scope: !1975)
!2044 = !DILocation(line: 835, column: 9, scope: !1975)
!2045 = !DILocation(line: 842, column: 9, scope: !1975)
!2046 = !DILocation(line: 843, column: 13, scope: !1975)
!2047 = !DILocation(line: 844, column: 5, scope: !1975)
!2048 = !DILocation(line: 0, scope: !1962)
!2049 = !DILocation(line: 847, column: 1, scope: !1962)
!2050 = distinct !DISubprogram(name: "mp_unpack", scope: !3, file: !3, line: 849, type: !56, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2051)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "L", arg: 1, scope: !2050, file: !3, line: 849, type: !58)
!2053 = !DILocation(line: 849, column: 26, scope: !2050)
!2054 = !DILocation(line: 850, column: 12, scope: !2050)
!2055 = !DILocation(line: 850, column: 5, scope: !2050)
!2056 = distinct !DISubprogram(name: "mp_unpack_one", scope: !3, file: !3, line: 853, type: !56, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2057)
!2057 = !{!2058, !2059}
!2058 = !DILocalVariable(name: "L", arg: 1, scope: !2056, file: !3, line: 853, type: !58)
!2059 = !DILocalVariable(name: "offset", scope: !2056, file: !3, line: 854, type: !30)
!2060 = !DILocation(line: 853, column: 30, scope: !2056)
!2061 = !DILocation(line: 854, column: 18, scope: !2056)
!2062 = !DILocation(line: 854, column: 9, scope: !2056)
!2063 = !DILocation(line: 856, column: 5, scope: !2056)
!2064 = !DILocation(line: 857, column: 12, scope: !2056)
!2065 = !DILocation(line: 857, column: 5, scope: !2056)
!2066 = distinct !DISubprogram(name: "mp_unpack_limit", scope: !3, file: !3, line: 860, type: !56, isLocal: false, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "L", arg: 1, scope: !2066, file: !3, line: 860, type: !58)
!2069 = !DILocalVariable(name: "limit", scope: !2066, file: !3, line: 861, type: !30)
!2070 = !DILocalVariable(name: "offset", scope: !2066, file: !3, line: 862, type: !30)
!2071 = !DILocation(line: 860, column: 32, scope: !2066)
!2072 = !DILocation(line: 861, column: 17, scope: !2066)
!2073 = !DILocation(line: 861, column: 9, scope: !2066)
!2074 = !DILocation(line: 862, column: 18, scope: !2066)
!2075 = !DILocation(line: 862, column: 9, scope: !2066)
!2076 = !DILocation(line: 864, column: 5, scope: !2066)
!2077 = !DILocation(line: 866, column: 12, scope: !2066)
!2078 = !DILocation(line: 866, column: 5, scope: !2066)
!2079 = distinct !DISubprogram(name: "mp_safe", scope: !3, file: !3, line: 869, type: !56, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DILocalVariable(name: "L", arg: 1, scope: !2079, file: !3, line: 869, type: !58)
!2082 = !DILocalVariable(name: "argc", scope: !2079, file: !3, line: 870, type: !30)
!2083 = !DILocalVariable(name: "err", scope: !2079, file: !3, line: 870, type: !30)
!2084 = !DILocalVariable(name: "total_results", scope: !2079, file: !3, line: 870, type: !30)
!2085 = !DILocation(line: 869, column: 24, scope: !2079)
!2086 = !DILocation(line: 872, column: 12, scope: !2079)
!2087 = !DILocation(line: 870, column: 9, scope: !2079)
!2088 = !DILocation(line: 876, column: 5, scope: !2079)
!2089 = !DILocation(line: 877, column: 5, scope: !2079)
!2090 = !DILocation(line: 879, column: 11, scope: !2079)
!2091 = !DILocation(line: 870, column: 15, scope: !2079)
!2092 = !DILocation(line: 880, column: 21, scope: !2079)
!2093 = !DILocation(line: 870, column: 20, scope: !2079)
!2094 = !DILocation(line: 882, column: 10, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 882, column: 9)
!2096 = !DILocation(line: 882, column: 9, scope: !2079)
!2097 = !DILocation(line: 885, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 884, column: 12)
!2099 = !DILocation(line: 886, column: 9, scope: !2098)
!2100 = !DILocation(line: 887, column: 9, scope: !2098)
!2101 = !DILocation(line: 0, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 882, column: 15)
!2103 = !DILocation(line: 889, column: 1, scope: !2079)
!2104 = distinct !DISubprogram(name: "luaopen_create", scope: !3, file: !3, line: 900, type: !56, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2105)
!2105 = !{!2106, !2107}
!2106 = !DILocalVariable(name: "L", arg: 1, scope: !2104, file: !3, line: 900, type: !58)
!2107 = !DILocalVariable(name: "i", scope: !2104, file: !3, line: 901, type: !30)
!2108 = !DILocation(line: 900, column: 31, scope: !2104)
!2109 = !DILocation(line: 904, column: 5, scope: !2104)
!2110 = !DILocation(line: 901, column: 9, scope: !2104)
!2111 = !DILocation(line: 907, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 906, column: 60)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 906, column: 5)
!2114 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 906, column: 5)
!2115 = !DILocation(line: 908, column: 9, scope: !2112)
!2116 = !DILocation(line: 912, column: 5, scope: !2104)
!2117 = !DILocation(line: 913, column: 5, scope: !2104)
!2118 = !DILocation(line: 914, column: 5, scope: !2104)
!2119 = !DILocation(line: 915, column: 5, scope: !2104)
!2120 = !DILocation(line: 916, column: 5, scope: !2104)
!2121 = !DILocation(line: 917, column: 5, scope: !2104)
!2122 = !DILocation(line: 918, column: 5, scope: !2104)
!2123 = !DILocation(line: 919, column: 5, scope: !2104)
!2124 = !DILocation(line: 920, column: 5, scope: !2104)
!2125 = distinct !DISubprogram(name: "luaopen_cmsgpack", scope: !3, file: !3, line: 923, type: !56, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "L", arg: 1, scope: !2125, file: !3, line: 923, type: !58)
!2128 = !DILocation(line: 923, column: 44, scope: !2125)
!2129 = !DILocation(line: 924, column: 5, scope: !2125)
!2130 = !DILocation(line: 928, column: 5, scope: !2125)
!2131 = !DILocation(line: 929, column: 5, scope: !2125)
!2132 = !DILocation(line: 932, column: 5, scope: !2125)
!2133 = distinct !DISubprogram(name: "luaopen_cmsgpack_safe", scope: !3, file: !3, line: 935, type: !56, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2134)
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "L", arg: 1, scope: !2133, file: !3, line: 935, type: !58)
!2136 = !DILocalVariable(name: "i", scope: !2133, file: !3, line: 936, type: !30)
!2137 = !DILocation(line: 935, column: 49, scope: !2133)
!2138 = !DILocation(line: 923, column: 44, scope: !2125, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 938, column: 5, scope: !2133)
!2140 = !DILocation(line: 924, column: 5, scope: !2125, inlinedAt: !2139)
!2141 = !DILocation(line: 928, column: 5, scope: !2125, inlinedAt: !2139)
!2142 = !DILocation(line: 929, column: 5, scope: !2125, inlinedAt: !2139)
!2143 = !DILocation(line: 932, column: 5, scope: !2125, inlinedAt: !2139)
!2144 = !DILocation(line: 936, column: 9, scope: !2133)
!2145 = !DILocation(line: 942, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 941, column: 60)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 941, column: 5)
!2148 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 941, column: 5)
!2149 = !DILocation(line: 943, column: 9, scope: !2146)
!2150 = !DILocation(line: 944, column: 9, scope: !2146)
!2151 = !DILocation(line: 949, column: 5, scope: !2133)
!2152 = !DILocation(line: 950, column: 5, scope: !2133)
!2153 = !DILocation(line: 953, column: 5, scope: !2133)
