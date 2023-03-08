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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  %3 = lshr i64 %1, 1, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %4 = icmp eq i64 %3, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %4, label %34, label %5, !dbg !85

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !86
  %7 = and i64 %1, 2, !dbg !88
  %8 = icmp eq i64 %7, 0, !dbg !88
  br i1 %8, label %15, label %9, !dbg !88

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !88
  %11 = add nsw i64 %3, -1, !dbg !90
  %12 = load i8, i8* %0, align 1, !dbg !91, !tbaa !92
  %13 = load i8, i8* %10, align 1, !dbg !96, !tbaa !92
  store i8 %13, i8* %0, align 1, !dbg !97, !tbaa !92
  store i8 %12, i8* %10, align 1, !dbg !98, !tbaa !92
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br label %15, !dbg !85

; <label>:15:                                     ; preds = %5, %9
  %16 = phi i8* [ %6, %5 ], [ %10, %9 ]
  %17 = phi i64 [ %3, %5 ], [ %11, %9 ]
  %18 = phi i8* [ %0, %5 ], [ %14, %9 ]
  %19 = icmp eq i64 %3, 1, !dbg !88
  br i1 %19, label %34, label %20, !dbg !88

; <label>:20:                                     ; preds = %15, %20
  %21 = phi i8* [ %28, %20 ], [ %16, %15 ]
  %22 = phi i64 [ %29, %20 ], [ %17, %15 ]
  %23 = phi i8* [ %32, %20 ], [ %18, %15 ]
  %24 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !88
  %25 = load i8, i8* %23, align 1, !dbg !91, !tbaa !92
  %26 = load i8, i8* %24, align 1, !dbg !96, !tbaa !92
  store i8 %26, i8* %23, align 1, !dbg !97, !tbaa !92
  store i8 %25, i8* %24, align 1, !dbg !98, !tbaa !92
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %28 = getelementptr inbounds i8, i8* %21, i64 -2, !dbg !88
  %29 = add nsw i64 %22, -2, !dbg !90
  %30 = load i8, i8* %27, align 1, !dbg !91, !tbaa !92
  %31 = load i8, i8* %28, align 1, !dbg !96, !tbaa !92
  store i8 %31, i8* %27, align 1, !dbg !97, !tbaa !92
  store i8 %30, i8* %28, align 1, !dbg !98, !tbaa !92
  %32 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %33 = icmp eq i64 %29, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %33, label %34, label %20, !dbg !85, !llvm.loop !100

; <label>:34:                                     ; preds = %15, %20, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  ret void, !dbg !102
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @mp_realloc(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 !dbg !103 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !121
  %7 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !123
  %8 = load i8*, i8** %5, align 8, !dbg !124, !tbaa !125
  %9 = call i8* %7(i8* %8, i8* %1, i64 %2, i64 %3) #6, !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  ret i8* %9, !dbg !129
}

; Function Attrs: noredzone
declare dso_local i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.mp_buf* @mp_buf_new(%struct.lua_State*) local_unnamed_addr #0 !dbg !130 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !144
  %4 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %2) #6, !dbg !146
  %5 = load i8*, i8** %2, align 8, !dbg !147, !tbaa !125
  %6 = call i8* %4(i8* %5, i8* null, i64 0, i64 24) #6, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  %7 = bitcast i8* %6 to %struct.mp_buf*, !dbg !151
  %8 = bitcast i8* %6 to i8**, !dbg !152
  store i8* null, i8** %8, align 8, !dbg !153, !tbaa !154
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !157
  %10 = bitcast i8* %9 to <2 x i64>*, !dbg !158
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !dbg !158, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  ret %struct.mp_buf* %7, !dbg !160
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_append(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !161 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !176
  %7 = load i64, i64* %6, align 8, !dbg !176, !tbaa !177
  %8 = icmp ult i64 %7, %3, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
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
  %24 = load i8*, i8** %5, align 8, !dbg !198, !tbaa !125
  %25 = call i8* %23(i8* %24, i8* %20, i64 %21, i64 %18) #6, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  store i8* %25, i8** %19, align 8, !dbg !202, !tbaa !154
  %26 = load i64, i64* %15, align 8, !dbg !203, !tbaa !182
  %27 = sub i64 %18, %26, !dbg !204
  store i64 %27, i64* %6, align 8, !dbg !205, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br label %28, !dbg !206

; <label>:28:                                     ; preds = %9, %14
  %29 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !181
  %30 = phi i64 [ %13, %9 ], [ %26, %14 ], !dbg !181
  %31 = phi i8* [ %11, %9 ], [ %25, %14 ], !dbg !180
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !207
  %33 = call i8* @memcpy(i8* %32, i8* %2, i64 %3) #6, !dbg !208
  %34 = load i64, i64* %29, align 8, !dbg !209, !tbaa !182
  %35 = add i64 %34, %3, !dbg !209
  store i64 %35, i64* %29, align 8, !dbg !209, !tbaa !182
  %36 = load i64, i64* %6, align 8, !dbg !210, !tbaa !177
  %37 = sub i64 %36, %3, !dbg !210
  store i64 %37, i64* %6, align 8, !dbg !210, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  ret void, !dbg !211
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_buf_free(%struct.lua_State*, %struct.mp_buf*) local_unnamed_addr #0 !dbg !212 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !220
  %6 = load i8*, i8** %5, align 8, !dbg !220, !tbaa !154
  %7 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !221
  %8 = load i64, i64* %7, align 8, !dbg !221, !tbaa !182
  %9 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !222
  %10 = load i64, i64* %9, align 8, !dbg !222, !tbaa !177
  %11 = add i64 %10, %8, !dbg !223
  %12 = bitcast i8** %4 to i8*, !dbg !230
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !230
  %13 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !232
  %14 = load i8*, i8** %4, align 8, !dbg !233, !tbaa !125
  %15 = call i8* %13(i8* %14, i8* %6, i64 %11, i64 0) #6, !dbg !234
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  %16 = bitcast %struct.mp_buf* %1 to i8*, !dbg !237
  %17 = bitcast i8** %3 to i8*, !dbg !244
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !244
  %18 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !246
  %19 = load i8*, i8** %3, align 8, !dbg !247, !tbaa !125
  %20 = call i8* %18(i8* %19, i8* %16, i64 24, i64 0) #6, !dbg !248
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_cur_init(%struct.mp_cur* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !252 {
  %4 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 0, !dbg !269
  store i8* %1, i8** %4, align 8, !dbg !270, !tbaa !271
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 1, !dbg !274
  store i64 %2, i64* %5, align 8, !dbg !275, !tbaa !276
  %6 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %0, i64 0, i32 2, !dbg !277
  store i32 0, i32* %6, align 8, !dbg !278, !tbaa !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret void, !dbg !280
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_bytes(%struct.lua_State*, %struct.mp_buf* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !281 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %8) #5, !dbg !294
  %9 = icmp ult i64 %3, 32, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %9, label %10, label %13, !dbg !298

; <label>:10:                                     ; preds = %4
  %11 = trunc i64 %3 to i8, !dbg !299
  %12 = or i8 %11, -96, !dbg !299
  store i8 %12, i8* %8, align 1, !dbg !301, !tbaa !92
  br label %38, !dbg !303

; <label>:13:                                     ; preds = %4
  %14 = icmp ult i64 %3, 256, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %14, label %15, label %18, !dbg !306

; <label>:15:                                     ; preds = %13
  store i8 -39, i8* %8, align 1, !dbg !307, !tbaa !92
  %16 = trunc i64 %3 to i8, !dbg !309
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !310
  store i8 %16, i8* %17, align 1, !dbg !311, !tbaa !92
  br label %38, !dbg !312

; <label>:18:                                     ; preds = %13
  %19 = icmp ult i64 %3, 65536, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %19, label %20, label %26, !dbg !315

; <label>:20:                                     ; preds = %18
  store i8 -38, i8* %8, align 1, !dbg !316, !tbaa !92
  %21 = lshr i64 %3, 8, !dbg !318
  %22 = trunc i64 %21 to i8, !dbg !319
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !320
  store i8 %22, i8* %23, align 1, !dbg !321, !tbaa !92
  %24 = trunc i64 %3 to i8, !dbg !322
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !323
  store i8 %24, i8* %25, align 1, !dbg !324, !tbaa !92
  br label %38, !dbg !325

; <label>:26:                                     ; preds = %18
  store i8 -37, i8* %8, align 1, !dbg !326, !tbaa !92
  %27 = lshr i64 %3, 24, !dbg !328
  %28 = trunc i64 %27 to i8, !dbg !329
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !330
  store i8 %28, i8* %29, align 1, !dbg !331, !tbaa !92
  %30 = lshr i64 %3, 16, !dbg !332
  %31 = trunc i64 %30 to i8, !dbg !333
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2, !dbg !334
  store i8 %31, i8* %32, align 1, !dbg !335, !tbaa !92
  %33 = lshr i64 %3, 8, !dbg !336
  %34 = trunc i64 %33 to i8, !dbg !337
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3, !dbg !338
  store i8 %34, i8* %35, align 1, !dbg !339, !tbaa !92
  %36 = trunc i64 %3 to i8, !dbg !340
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4, !dbg !341
  store i8 %36, i8* %37, align 1, !dbg !342, !tbaa !92
  br label %38

; <label>:38:                                     ; preds = %15, %26, %20, %10
  %39 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %26 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !348
  %41 = load i64, i64* %40, align 8, !dbg !348, !tbaa !177
  %42 = icmp ult i64 %41, %39, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %42, label %48, label %43, !dbg !350

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !dbg !351, !tbaa !154
  %46 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %47 = load i64, i64* %46, align 8, !dbg !352, !tbaa !182
  br label %62, !dbg !350

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !353
  %50 = load i64, i64* %49, align 8, !dbg !353, !tbaa !182
  %51 = add i64 %50, %39, !dbg !354
  %52 = shl i64 %51, 1, !dbg !355
  %53 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !357
  %54 = load i8*, i8** %53, align 8, !dbg !357, !tbaa !154
  %55 = add i64 %50, %41, !dbg !358
  %56 = bitcast i8** %6 to i8*, !dbg !365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #5, !dbg !365
  %57 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %6) #6, !dbg !367
  %58 = load i8*, i8** %6, align 8, !dbg !368, !tbaa !125
  %59 = call i8* %57(i8* %58, i8* %54, i64 %55, i64 %52) #6, !dbg !369
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #5, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store i8* %59, i8** %53, align 8, !dbg !372, !tbaa !154
  %60 = load i64, i64* %49, align 8, !dbg !373, !tbaa !182
  %61 = sub i64 %52, %60, !dbg !374
  store i64 %61, i64* %40, align 8, !dbg !375, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %62, !dbg !376

; <label>:62:                                     ; preds = %43, %48
  %63 = phi i64* [ %46, %43 ], [ %49, %48 ], !dbg !352
  %64 = phi i64 [ %47, %43 ], [ %60, %48 ], !dbg !352
  %65 = phi i8* [ %45, %43 ], [ %59, %48 ], !dbg !351
  %66 = getelementptr inbounds i8, i8* %65, i64 %64, !dbg !377
  %67 = call i8* @memcpy(i8* %66, i8* nonnull %8, i64 %39) #6, !dbg !378
  %68 = load i64, i64* %63, align 8, !dbg !379, !tbaa !182
  %69 = add i64 %68, %39, !dbg !379
  store i64 %69, i64* %63, align 8, !dbg !379, !tbaa !182
  %70 = load i64, i64* %40, align 8, !dbg !380, !tbaa !177
  %71 = sub i64 %70, %39, !dbg !380
  store i64 %71, i64* %40, align 8, !dbg !380, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %72 = icmp ult i64 %71, %3, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %72, label %77, label %73, !dbg !388

; <label>:73:                                     ; preds = %62
  %74 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %75 = load i8*, i8** %74, align 8, !dbg !389, !tbaa !154
  %76 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  br label %90, !dbg !388

; <label>:77:                                     ; preds = %62
  %78 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !390
  %79 = add i64 %69, %3, !dbg !391
  %80 = shl i64 %79, 1, !dbg !392
  %81 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !394
  %82 = load i8*, i8** %81, align 8, !dbg !394, !tbaa !154
  %83 = add i64 %68, %70, !dbg !395
  %84 = bitcast i8** %5 to i8*, !dbg !402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #5, !dbg !402
  %85 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !404
  %86 = load i8*, i8** %5, align 8, !dbg !405, !tbaa !125
  %87 = call i8* %85(i8* %86, i8* %82, i64 %83, i64 %80) #6, !dbg !406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #5, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store i8* %87, i8** %81, align 8, !dbg !409, !tbaa !154
  %88 = load i64, i64* %78, align 8, !dbg !410, !tbaa !182
  %89 = sub i64 %80, %88, !dbg !411
  store i64 %89, i64* %40, align 8, !dbg !412, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %90, !dbg !413

; <label>:90:                                     ; preds = %73, %77
  %91 = phi i64* [ %76, %73 ], [ %78, %77 ], !dbg !414
  %92 = phi i64 [ %69, %73 ], [ %88, %77 ], !dbg !414
  %93 = phi i8* [ %75, %73 ], [ %87, %77 ], !dbg !389
  %94 = getelementptr inbounds i8, i8* %93, i64 %92, !dbg !415
  %95 = call i8* @memcpy(i8* %94, i8* %2, i64 %3) #6, !dbg !416
  %96 = load i64, i64* %91, align 8, !dbg !417, !tbaa !182
  %97 = add i64 %96, %3, !dbg !417
  store i64 %97, i64* %91, align 8, !dbg !417, !tbaa !182
  %98 = load i64, i64* %40, align 8, !dbg !418, !tbaa !177
  %99 = sub i64 %98, %3, !dbg !418
  store i64 %99, i64* %40, align 8, !dbg !418, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %8) #5, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  ret void, !dbg !420
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_double(%struct.lua_State*, %struct.mp_buf* nocapture, double) local_unnamed_addr #0 !dbg !421 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca float, align 4
  store double %2, double* %6, align 8, !tbaa !437
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !439
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %9) #5, !dbg !439
  %10 = bitcast float* %8 to i8*, !dbg !441
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !441
  %11 = fptrunc double %2 to float, !dbg !442
  store float %11, float* %8, align 4, !dbg !443, !tbaa !444
  %12 = fpext float %11 to double, !dbg !446
  %13 = fcmp oeq double %12, %2, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %13, label %14, label %52, !dbg !449

; <label>:14:                                     ; preds = %3
  store i8 -54, i8* %9, align 1, !dbg !450, !tbaa !92
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !452
  %16 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %10, i64 4) #6, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !463
  %18 = load i8, i8* %15, align 1, !dbg !464, !tbaa !92
  %19 = load i8, i8* %17, align 1, !dbg !466, !tbaa !92
  store i8 %19, i8* %15, align 1, !dbg !467, !tbaa !92
  store i8 %18, i8* %17, align 1, !dbg !468, !tbaa !92
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !463
  %22 = load i8, i8* %20, align 1, !dbg !464, !tbaa !92
  %23 = load i8, i8* %21, align 1, !dbg !466, !tbaa !92
  store i8 %23, i8* %20, align 1, !dbg !467, !tbaa !92
  store i8 %22, i8* %21, align 1, !dbg !468, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  %24 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !476
  %25 = load i64, i64* %24, align 8, !dbg !476, !tbaa !177
  %26 = icmp ult i64 %25, 5, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %26, label %32, label %27, !dbg !478

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !dbg !479, !tbaa !154
  %30 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !dbg !480, !tbaa !182
  br label %46, !dbg !478

; <label>:32:                                     ; preds = %14
  %33 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !481
  %34 = load i64, i64* %33, align 8, !dbg !481, !tbaa !182
  %35 = shl i64 %34, 1, !dbg !482
  %36 = add i64 %35, 10, !dbg !482
  %37 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !484
  %38 = load i8*, i8** %37, align 8, !dbg !484, !tbaa !154
  %39 = add i64 %34, %25, !dbg !485
  %40 = bitcast i8** %4 to i8*, !dbg !492
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !492
  %41 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !494
  %42 = load i8*, i8** %4, align 8, !dbg !495, !tbaa !125
  %43 = call i8* %41(i8* %42, i8* %38, i64 %39, i64 %36) #6, !dbg !496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store i8* %43, i8** %37, align 8, !dbg !499, !tbaa !154
  %44 = load i64, i64* %33, align 8, !dbg !500, !tbaa !182
  %45 = sub i64 %36, %44, !dbg !501
  store i64 %45, i64* %24, align 8, !dbg !502, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %46, !dbg !503

; <label>:46:                                     ; preds = %27, %32
  %47 = phi i64* [ %30, %27 ], [ %33, %32 ], !dbg !480
  %48 = phi i64 [ %31, %27 ], [ %44, %32 ], !dbg !480
  %49 = phi i8* [ %29, %27 ], [ %43, %32 ], !dbg !479
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !504
  %51 = call i8* @memcpy(i8* %50, i8* nonnull %9, i64 5) #6, !dbg !505
  br label %99, !dbg !506

; <label>:52:                                     ; preds = %3
  store i8 -53, i8* %9, align 1, !dbg !507, !tbaa !92
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !510
  %54 = bitcast double* %6 to i8*, !dbg !511
  %55 = call i8* @memcpy(i8* nonnull %53, i8* nonnull %54, i64 8) #6, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8, !dbg !522
  %57 = load i8, i8* %53, align 1, !dbg !523, !tbaa !92
  %58 = load i8, i8* %56, align 1, !dbg !525, !tbaa !92
  store i8 %58, i8* %53, align 1, !dbg !526, !tbaa !92
  store i8 %57, i8* %56, align 1, !dbg !527, !tbaa !92
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7, !dbg !522
  %61 = load i8, i8* %59, align 1, !dbg !523, !tbaa !92
  %62 = load i8, i8* %60, align 1, !dbg !525, !tbaa !92
  store i8 %62, i8* %59, align 1, !dbg !526, !tbaa !92
  store i8 %61, i8* %60, align 1, !dbg !527, !tbaa !92
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6, !dbg !522
  %65 = load i8, i8* %63, align 1, !dbg !523, !tbaa !92
  %66 = load i8, i8* %64, align 1, !dbg !525, !tbaa !92
  store i8 %66, i8* %63, align 1, !dbg !526, !tbaa !92
  store i8 %65, i8* %64, align 1, !dbg !527, !tbaa !92
  %67 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5, !dbg !522
  %69 = load i8, i8* %67, align 1, !dbg !523, !tbaa !92
  %70 = load i8, i8* %68, align 1, !dbg !525, !tbaa !92
  store i8 %70, i8* %67, align 1, !dbg !526, !tbaa !92
  store i8 %69, i8* %68, align 1, !dbg !527, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %71 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !535
  %72 = load i64, i64* %71, align 8, !dbg !535, !tbaa !177
  %73 = icmp ult i64 %72, 9, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %73, label %79, label %74, !dbg !537

; <label>:74:                                     ; preds = %52
  %75 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %76 = load i8*, i8** %75, align 8, !dbg !538, !tbaa !154
  %77 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !dbg !539, !tbaa !182
  br label %93, !dbg !537

; <label>:79:                                     ; preds = %52
  %80 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !540
  %81 = load i64, i64* %80, align 8, !dbg !540, !tbaa !182
  %82 = shl i64 %81, 1, !dbg !541
  %83 = add i64 %82, 18, !dbg !541
  %84 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !543
  %85 = load i8*, i8** %84, align 8, !dbg !543, !tbaa !154
  %86 = add i64 %81, %72, !dbg !544
  %87 = bitcast i8** %5 to i8*, !dbg !551
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #5, !dbg !551
  %88 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !553
  %89 = load i8*, i8** %5, align 8, !dbg !554, !tbaa !125
  %90 = call i8* %88(i8* %89, i8* %85, i64 %86, i64 %83) #6, !dbg !555
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #5, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store i8* %90, i8** %84, align 8, !dbg !558, !tbaa !154
  %91 = load i64, i64* %80, align 8, !dbg !559, !tbaa !182
  %92 = sub i64 %83, %91, !dbg !560
  store i64 %92, i64* %71, align 8, !dbg !561, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br label %93, !dbg !562

; <label>:93:                                     ; preds = %74, %79
  %94 = phi i64* [ %77, %74 ], [ %80, %79 ], !dbg !539
  %95 = phi i64 [ %78, %74 ], [ %91, %79 ], !dbg !539
  %96 = phi i8* [ %76, %74 ], [ %90, %79 ], !dbg !538
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !563
  %98 = call i8* @memcpy(i8* %97, i8* nonnull %9, i64 9) #6, !dbg !564
  br label %99

; <label>:99:                                     ; preds = %93, %46
  %100 = phi i64* [ %94, %93 ], [ %47, %46 ]
  %101 = phi i64 [ 9, %93 ], [ 5, %46 ]
  %102 = phi i64* [ %71, %93 ], [ %24, %46 ]
  %103 = phi i64 [ -9, %93 ], [ -5, %46 ]
  %104 = load i64, i64* %100, align 8, !dbg !565, !tbaa !182
  %105 = add i64 %104, %101, !dbg !565
  store i64 %105, i64* %100, align 8, !dbg !565, !tbaa !182
  %106 = load i64, i64* %102, align 8, !dbg !566, !tbaa !177
  %107 = add i64 %106, %103, !dbg !566
  store i64 %107, i64* %102, align 8, !dbg !566, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %9) #5, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  ret void, !dbg !568
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_int(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !569 {
  %4 = alloca i8*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %6) #5, !dbg !581
  %7 = icmp sgt i64 %2, -1, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %7, label %8, label %64, !dbg !585

; <label>:8:                                      ; preds = %3
  %9 = icmp slt i64 %2, 128, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %9, label %10, label %13, !dbg !589

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %2 to i8, !dbg !590
  %12 = and i8 %11, 127, !dbg !590
  store i8 %12, i8* %6, align 1, !dbg !592, !tbaa !92
  br label %119, !dbg !594

; <label>:13:                                     ; preds = %8
  %14 = icmp slt i64 %2, 256, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %14, label %15, label %18, !dbg !597

; <label>:15:                                     ; preds = %13
  store i8 -52, i8* %6, align 1, !dbg !598, !tbaa !92
  %16 = trunc i64 %2 to i8, !dbg !600
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !601
  store i8 %16, i8* %17, align 1, !dbg !602, !tbaa !92
  br label %119, !dbg !603

; <label>:18:                                     ; preds = %13
  %19 = icmp slt i64 %2, 65536, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %19, label %20, label %26, !dbg !606

; <label>:20:                                     ; preds = %18
  store i8 -51, i8* %6, align 1, !dbg !607, !tbaa !92
  %21 = lshr i64 %2, 8, !dbg !609
  %22 = trunc i64 %21 to i8, !dbg !610
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !611
  store i8 %22, i8* %23, align 1, !dbg !612, !tbaa !92
  %24 = trunc i64 %2 to i8, !dbg !613
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !614
  store i8 %24, i8* %25, align 1, !dbg !615, !tbaa !92
  br label %119, !dbg !616

; <label>:26:                                     ; preds = %18
  %27 = icmp slt i64 %2, 4294967296, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %27, label %28, label %40, !dbg !619

; <label>:28:                                     ; preds = %26
  store i8 -50, i8* %6, align 1, !dbg !620, !tbaa !92
  %29 = lshr i64 %2, 24, !dbg !622
  %30 = trunc i64 %29 to i8, !dbg !623
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !624
  store i8 %30, i8* %31, align 1, !dbg !625, !tbaa !92
  %32 = lshr i64 %2, 16, !dbg !626
  %33 = trunc i64 %32 to i8, !dbg !627
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !628
  store i8 %33, i8* %34, align 1, !dbg !629, !tbaa !92
  %35 = lshr i64 %2, 8, !dbg !630
  %36 = trunc i64 %35 to i8, !dbg !631
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !632
  store i8 %36, i8* %37, align 1, !dbg !633, !tbaa !92
  %38 = trunc i64 %2 to i8, !dbg !634
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !635
  store i8 %38, i8* %39, align 1, !dbg !636, !tbaa !92
  br label %119, !dbg !637

; <label>:40:                                     ; preds = %26
  store i8 -49, i8* %6, align 1, !dbg !638, !tbaa !92
  %41 = lshr i64 %2, 56, !dbg !640
  %42 = trunc i64 %41 to i8, !dbg !641
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !642
  store i8 %42, i8* %43, align 1, !dbg !643, !tbaa !92
  %44 = lshr i64 %2, 48, !dbg !644
  %45 = trunc i64 %44 to i8, !dbg !645
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !646
  store i8 %45, i8* %46, align 1, !dbg !647, !tbaa !92
  %47 = lshr i64 %2, 40, !dbg !648
  %48 = trunc i64 %47 to i8, !dbg !649
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !650
  store i8 %48, i8* %49, align 1, !dbg !651, !tbaa !92
  %50 = lshr i64 %2, 32, !dbg !652
  %51 = trunc i64 %50 to i8, !dbg !653
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !654
  store i8 %51, i8* %52, align 1, !dbg !655, !tbaa !92
  %53 = lshr i64 %2, 24, !dbg !656
  %54 = trunc i64 %53 to i8, !dbg !657
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !658
  store i8 %54, i8* %55, align 1, !dbg !659, !tbaa !92
  %56 = lshr i64 %2, 16, !dbg !660
  %57 = trunc i64 %56 to i8, !dbg !661
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !662
  store i8 %57, i8* %58, align 1, !dbg !663, !tbaa !92
  %59 = lshr i64 %2, 8, !dbg !664
  %60 = trunc i64 %59 to i8, !dbg !665
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !666
  store i8 %60, i8* %61, align 1, !dbg !667, !tbaa !92
  %62 = trunc i64 %2 to i8, !dbg !668
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !669
  store i8 %62, i8* %63, align 1, !dbg !670, !tbaa !92
  br label %119

; <label>:64:                                     ; preds = %3
  %65 = icmp sgt i64 %2, -33, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %65, label %66, label %68, !dbg !674

; <label>:66:                                     ; preds = %64
  %67 = trunc i64 %2 to i8, !dbg !675
  store i8 %67, i8* %6, align 1, !dbg !677, !tbaa !92
  br label %119, !dbg !678

; <label>:68:                                     ; preds = %64
  %69 = icmp sgt i64 %2, -129, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br i1 %69, label %70, label %73, !dbg !681

; <label>:70:                                     ; preds = %68
  store i8 -48, i8* %6, align 1, !dbg !682, !tbaa !92
  %71 = trunc i64 %2 to i8, !dbg !684
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !685
  store i8 %71, i8* %72, align 1, !dbg !686, !tbaa !92
  br label %119, !dbg !687

; <label>:73:                                     ; preds = %68
  %74 = icmp sgt i64 %2, -32769, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %74, label %75, label %81, !dbg !690

; <label>:75:                                     ; preds = %73
  store i8 -47, i8* %6, align 1, !dbg !691, !tbaa !92
  %76 = lshr i64 %2, 8, !dbg !693
  %77 = trunc i64 %76 to i8, !dbg !694
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !695
  store i8 %77, i8* %78, align 1, !dbg !696, !tbaa !92
  %79 = trunc i64 %2 to i8, !dbg !697
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !698
  store i8 %79, i8* %80, align 1, !dbg !699, !tbaa !92
  br label %119, !dbg !700

; <label>:81:                                     ; preds = %73
  %82 = icmp sgt i64 %2, -2147483649, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %82, label %83, label %95, !dbg !703

; <label>:83:                                     ; preds = %81
  store i8 -46, i8* %6, align 1, !dbg !704, !tbaa !92
  %84 = lshr i64 %2, 24, !dbg !706
  %85 = trunc i64 %84 to i8, !dbg !707
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !708
  store i8 %85, i8* %86, align 1, !dbg !709, !tbaa !92
  %87 = lshr i64 %2, 16, !dbg !710
  %88 = trunc i64 %87 to i8, !dbg !711
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !712
  store i8 %88, i8* %89, align 1, !dbg !713, !tbaa !92
  %90 = lshr i64 %2, 8, !dbg !714
  %91 = trunc i64 %90 to i8, !dbg !715
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !716
  store i8 %91, i8* %92, align 1, !dbg !717, !tbaa !92
  %93 = trunc i64 %2 to i8, !dbg !718
  %94 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !719
  store i8 %93, i8* %94, align 1, !dbg !720, !tbaa !92
  br label %119, !dbg !721

; <label>:95:                                     ; preds = %81
  store i8 -45, i8* %6, align 1, !dbg !722, !tbaa !92
  %96 = lshr i64 %2, 56, !dbg !724
  %97 = trunc i64 %96 to i8, !dbg !725
  %98 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1, !dbg !726
  store i8 %97, i8* %98, align 1, !dbg !727, !tbaa !92
  %99 = lshr i64 %2, 48, !dbg !728
  %100 = trunc i64 %99 to i8, !dbg !729
  %101 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2, !dbg !730
  store i8 %100, i8* %101, align 1, !dbg !731, !tbaa !92
  %102 = lshr i64 %2, 40, !dbg !732
  %103 = trunc i64 %102 to i8, !dbg !733
  %104 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3, !dbg !734
  store i8 %103, i8* %104, align 1, !dbg !735, !tbaa !92
  %105 = lshr i64 %2, 32, !dbg !736
  %106 = trunc i64 %105 to i8, !dbg !737
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4, !dbg !738
  store i8 %106, i8* %107, align 1, !dbg !739, !tbaa !92
  %108 = lshr i64 %2, 24, !dbg !740
  %109 = trunc i64 %108 to i8, !dbg !741
  %110 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5, !dbg !742
  store i8 %109, i8* %110, align 1, !dbg !743, !tbaa !92
  %111 = lshr i64 %2, 16, !dbg !744
  %112 = trunc i64 %111 to i8, !dbg !745
  %113 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6, !dbg !746
  store i8 %112, i8* %113, align 1, !dbg !747, !tbaa !92
  %114 = lshr i64 %2, 8, !dbg !748
  %115 = trunc i64 %114 to i8, !dbg !749
  %116 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7, !dbg !750
  store i8 %115, i8* %116, align 1, !dbg !751, !tbaa !92
  %117 = trunc i64 %2 to i8, !dbg !752
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8, !dbg !753
  store i8 %117, i8* %118, align 1, !dbg !754, !tbaa !92
  br label %119

; <label>:119:                                    ; preds = %66, %75, %95, %83, %70, %10, %20, %40, %28, %15
  %120 = phi i64 [ 1, %10 ], [ 2, %15 ], [ 3, %20 ], [ 5, %28 ], [ 9, %40 ], [ 1, %66 ], [ 2, %70 ], [ 3, %75 ], [ 5, %83 ], [ 9, %95 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %121 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !760
  %122 = load i64, i64* %121, align 8, !dbg !760, !tbaa !177
  %123 = icmp ult i64 %122, %120, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %123, label %129, label %124, !dbg !762

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8, !dbg !763, !tbaa !154
  %127 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %128 = load i64, i64* %127, align 8, !dbg !764, !tbaa !182
  br label %143, !dbg !762

; <label>:129:                                    ; preds = %119
  %130 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !765
  %131 = load i64, i64* %130, align 8, !dbg !765, !tbaa !182
  %132 = add i64 %131, %120, !dbg !766
  %133 = shl i64 %132, 1, !dbg !767
  %134 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !769
  %135 = load i8*, i8** %134, align 8, !dbg !769, !tbaa !154
  %136 = add i64 %131, %122, !dbg !770
  %137 = bitcast i8** %4 to i8*, !dbg !777
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137) #5, !dbg !777
  %138 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !779
  %139 = load i8*, i8** %4, align 8, !dbg !780, !tbaa !125
  %140 = call i8* %138(i8* %139, i8* %135, i64 %136, i64 %133) #6, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137) #5, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  store i8* %140, i8** %134, align 8, !dbg !784, !tbaa !154
  %141 = load i64, i64* %130, align 8, !dbg !785, !tbaa !182
  %142 = sub i64 %133, %141, !dbg !786
  store i64 %142, i64* %121, align 8, !dbg !787, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br label %143, !dbg !788

; <label>:143:                                    ; preds = %124, %129
  %144 = phi i64* [ %127, %124 ], [ %130, %129 ], !dbg !764
  %145 = phi i64 [ %128, %124 ], [ %141, %129 ], !dbg !764
  %146 = phi i8* [ %126, %124 ], [ %140, %129 ], !dbg !763
  %147 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !789
  %148 = call i8* @memcpy(i8* %147, i8* nonnull %6, i64 %120) #6, !dbg !790
  %149 = load i64, i64* %144, align 8, !dbg !791, !tbaa !182
  %150 = add i64 %149, %120, !dbg !791
  store i64 %150, i64* %144, align 8, !dbg !791, !tbaa !182
  %151 = load i64, i64* %121, align 8, !dbg !792, !tbaa !177
  %152 = sub i64 %151, %120, !dbg !792
  store i64 %152, i64* %121, align 8, !dbg !792, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %6) #5, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  ret void, !dbg !794
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_array(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !795 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !805
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !805
  %7 = icmp slt i64 %2, 16, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br i1 %7, label %8, label %12, !dbg !809

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !810
  %10 = and i8 %9, 15, !dbg !810
  %11 = or i8 %10, -112, !dbg !810
  store i8 %11, i8* %6, align 1, !dbg !812, !tbaa !92
  br label %32, !dbg !814

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %13, label %14, label %20, !dbg !817

; <label>:14:                                     ; preds = %12
  store i8 -36, i8* %6, align 1, !dbg !818, !tbaa !92
  %15 = lshr i64 %2, 8, !dbg !820
  %16 = trunc i64 %15 to i8, !dbg !821
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !822
  store i8 %16, i8* %17, align 1, !dbg !823, !tbaa !92
  %18 = trunc i64 %2 to i8, !dbg !824
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !825
  store i8 %18, i8* %19, align 1, !dbg !826, !tbaa !92
  br label %32, !dbg !827

; <label>:20:                                     ; preds = %12
  store i8 -35, i8* %6, align 1, !dbg !828, !tbaa !92
  %21 = lshr i64 %2, 24, !dbg !830
  %22 = trunc i64 %21 to i8, !dbg !831
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !832
  store i8 %22, i8* %23, align 1, !dbg !833, !tbaa !92
  %24 = lshr i64 %2, 16, !dbg !834
  %25 = trunc i64 %24 to i8, !dbg !835
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !836
  store i8 %25, i8* %26, align 1, !dbg !837, !tbaa !92
  %27 = lshr i64 %2, 8, !dbg !838
  %28 = trunc i64 %27 to i8, !dbg !839
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !840
  store i8 %28, i8* %29, align 1, !dbg !841, !tbaa !92
  %30 = trunc i64 %2 to i8, !dbg !842
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !843
  store i8 %30, i8* %31, align 1, !dbg !844, !tbaa !92
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !850
  %35 = load i64, i64* %34, align 8, !dbg !850, !tbaa !177
  %36 = icmp ult i64 %35, %33, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %36, label %42, label %37, !dbg !852

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !853, !tbaa !154
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !854, !tbaa !182
  br label %56, !dbg !852

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !855
  %44 = load i64, i64* %43, align 8, !dbg !855, !tbaa !182
  %45 = add i64 %44, %33, !dbg !856
  %46 = shl i64 %45, 1, !dbg !857
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !859
  %48 = load i8*, i8** %47, align 8, !dbg !859, !tbaa !154
  %49 = add i64 %44, %35, !dbg !860
  %50 = bitcast i8** %4 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !867
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !869
  %52 = load i8*, i8** %4, align 8, !dbg !870, !tbaa !125
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !871
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  store i8* %53, i8** %47, align 8, !dbg !874, !tbaa !154
  %54 = load i64, i64* %43, align 8, !dbg !875, !tbaa !182
  %55 = sub i64 %46, %54, !dbg !876
  store i64 %55, i64* %34, align 8, !dbg !877, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br label %56, !dbg !878

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !854
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !854
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !853
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !879
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !880
  %62 = load i64, i64* %57, align 8, !dbg !881, !tbaa !182
  %63 = add i64 %62, %33, !dbg !881
  store i64 %63, i64* %57, align 8, !dbg !881, !tbaa !182
  %64 = load i64, i64* %34, align 8, !dbg !882, !tbaa !177
  %65 = sub i64 %64, %33, !dbg !882
  store i64 %65, i64* %34, align 8, !dbg !882, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  ret void, !dbg !884
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_map(%struct.lua_State*, %struct.mp_buf* nocapture, i64) local_unnamed_addr #0 !dbg !885 {
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #5, !dbg !895
  %7 = icmp slt i64 %2, 16, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %7, label %8, label %12, !dbg !899

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i8, !dbg !900
  %10 = and i8 %9, 15, !dbg !900
  %11 = or i8 %10, -128, !dbg !900
  store i8 %11, i8* %6, align 1, !dbg !902, !tbaa !92
  br label %32, !dbg !904

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i64 %2, 65536, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %13, label %14, label %20, !dbg !907

; <label>:14:                                     ; preds = %12
  store i8 -34, i8* %6, align 1, !dbg !908, !tbaa !92
  %15 = lshr i64 %2, 8, !dbg !910
  %16 = trunc i64 %15 to i8, !dbg !911
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !912
  store i8 %16, i8* %17, align 1, !dbg !913, !tbaa !92
  %18 = trunc i64 %2 to i8, !dbg !914
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !915
  store i8 %18, i8* %19, align 1, !dbg !916, !tbaa !92
  br label %32, !dbg !917

; <label>:20:                                     ; preds = %12
  store i8 -33, i8* %6, align 1, !dbg !918, !tbaa !92
  %21 = lshr i64 %2, 24, !dbg !920
  %22 = trunc i64 %21 to i8, !dbg !921
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1, !dbg !922
  store i8 %22, i8* %23, align 1, !dbg !923, !tbaa !92
  %24 = lshr i64 %2, 16, !dbg !924
  %25 = trunc i64 %24 to i8, !dbg !925
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2, !dbg !926
  store i8 %25, i8* %26, align 1, !dbg !927, !tbaa !92
  %27 = lshr i64 %2, 8, !dbg !928
  %28 = trunc i64 %27 to i8, !dbg !929
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3, !dbg !930
  store i8 %28, i8* %29, align 1, !dbg !931, !tbaa !92
  %30 = trunc i64 %2 to i8, !dbg !932
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !933
  store i8 %30, i8* %31, align 1, !dbg !934, !tbaa !92
  br label %32

; <label>:32:                                     ; preds = %14, %20, %8
  %33 = phi i64 [ 1, %8 ], [ 3, %14 ], [ 5, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !940
  %35 = load i64, i64* %34, align 8, !dbg !940, !tbaa !177
  %36 = icmp ult i64 %35, %33, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %36, label %42, label %37, !dbg !942

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !dbg !943, !tbaa !154
  %40 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !dbg !944, !tbaa !182
  br label %56, !dbg !942

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !945
  %44 = load i64, i64* %43, align 8, !dbg !945, !tbaa !182
  %45 = add i64 %44, %33, !dbg !946
  %46 = shl i64 %45, 1, !dbg !947
  %47 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !949
  %48 = load i8*, i8** %47, align 8, !dbg !949, !tbaa !154
  %49 = add i64 %44, %35, !dbg !950
  %50 = bitcast i8** %4 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #5, !dbg !957
  %51 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !959
  %52 = load i8*, i8** %4, align 8, !dbg !960, !tbaa !125
  %53 = call i8* %51(i8* %52, i8* %48, i64 %49, i64 %46) #6, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #5, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  store i8* %53, i8** %47, align 8, !dbg !964, !tbaa !154
  %54 = load i64, i64* %43, align 8, !dbg !965, !tbaa !182
  %55 = sub i64 %46, %54, !dbg !966
  store i64 %55, i64* %34, align 8, !dbg !967, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br label %56, !dbg !968

; <label>:56:                                     ; preds = %37, %42
  %57 = phi i64* [ %40, %37 ], [ %43, %42 ], !dbg !944
  %58 = phi i64 [ %41, %37 ], [ %54, %42 ], !dbg !944
  %59 = phi i8* [ %39, %37 ], [ %53, %42 ], !dbg !943
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !969
  %61 = call i8* @memcpy(i8* %60, i8* nonnull %6, i64 %33) #6, !dbg !970
  %62 = load i64, i64* %57, align 8, !dbg !971, !tbaa !182
  %63 = add i64 %62, %33, !dbg !971
  store i64 %63, i64* %57, align 8, !dbg !971, !tbaa !182
  %64 = load i64, i64* %34, align 8, !dbg !972, !tbaa !177
  %65 = sub i64 %64, %33, !dbg !972
  store i64 %65, i64* %34, align 8, !dbg !972, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #5, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  ret void, !dbg !974
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_string(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !975 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !983
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !983
  %5 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %3) #6, !dbg !985
  %6 = load i64, i64* %3, align 8, !dbg !987, !tbaa !159
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %5, i64 %6) #7, !dbg !988
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  ret void, !dbg !989
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_bool(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !990 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5, !dbg !998
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6, !dbg !999
  %6 = icmp eq i32 %5, 0, !dbg !999
  %7 = select i1 %6, i8 -62, i8 -61, !dbg !999
  store i8 %7, i8* %4, align 1, !dbg !997, !tbaa !92
  %8 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1005
  %9 = load i64, i64* %8, align 8, !dbg !1005, !tbaa !177
  %10 = icmp eq i64 %9, 0, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %10, label %16, label %11, !dbg !1007

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !dbg !1008, !tbaa !154
  %14 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %15 = load i64, i64* %14, align 8, !dbg !1009, !tbaa !182
  br label %29, !dbg !1007

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1010
  %18 = load i64, i64* %17, align 8, !dbg !1010, !tbaa !182
  %19 = shl i64 %18, 1, !dbg !1011
  %20 = add i64 %19, 2, !dbg !1011
  %21 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1013
  %22 = load i8*, i8** %21, align 8, !dbg !1013, !tbaa !154
  %23 = bitcast i8** %3 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !1020
  %24 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1022
  %25 = load i8*, i8** %3, align 8, !dbg !1023, !tbaa !125
  %26 = call i8* %24(i8* %25, i8* %22, i64 %18, i64 %20) #6, !dbg !1024
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store i8* %26, i8** %21, align 8, !dbg !1027, !tbaa !154
  %27 = load i64, i64* %17, align 8, !dbg !1028, !tbaa !182
  %28 = sub i64 %20, %27, !dbg !1029
  store i64 %28, i64* %8, align 8, !dbg !1030, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br label %29, !dbg !1031

; <label>:29:                                     ; preds = %11, %16
  %30 = phi i64* [ %14, %11 ], [ %17, %16 ], !dbg !1009
  %31 = phi i64 [ %15, %11 ], [ %27, %16 ], !dbg !1009
  %32 = phi i8* [ %13, %11 ], [ %26, %16 ], !dbg !1008
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1032
  %34 = call i8* @memcpy(i8* %33, i8* nonnull %4, i64 1) #6, !dbg !1033
  %35 = load i64, i64* %30, align 8, !dbg !1034, !tbaa !182
  %36 = add i64 %35, 1, !dbg !1034
  store i64 %36, i64* %30, align 8, !dbg !1034, !tbaa !182
  %37 = load i64, i64* %8, align 8, !dbg !1035, !tbaa !177
  %38 = add i64 %37, -1, !dbg !1035
  store i64 %38, i64* %8, align 8, !dbg !1035, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  ret void, !dbg !1037
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_integer(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1038 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1048
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %3) #7, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  ret void, !dbg !1051
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_number(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1052 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1060
  %4 = tail call i32 @__fpclassifyd(double %3) #6, !dbg !1062
  %5 = icmp eq i32 %4, 1, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %5, label %12, label %6, !dbg !1062

; <label>:6:                                      ; preds = %2
  %7 = fptosi double %3 to i64, !dbg !1062
  %8 = sitofp i64 %7 to double, !dbg !1062
  %9 = fcmp oeq double %3, %8, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  br i1 %9, label %10, label %12, !dbg !1064

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !1069
  tail call void @mp_encode_int(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %11) #6, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br label %13, !dbg !1073

; <label>:12:                                     ; preds = %6, %2
  tail call void @mp_encode_double(%struct.lua_State* %0, %struct.mp_buf* %1, double %3) #7, !dbg !1074
  br label %13

; <label>:13:                                     ; preds = %12, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  ret void, !dbg !1076
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_array(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1077 {
  %4 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #6, !dbg !1089
  tail call void @mp_encode_array(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %4) #7, !dbg !1091
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %5 = icmp eq i64 %4, 0, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %5, label %13, label %6, !dbg !1098

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %2, 1
  br label %8, !dbg !1098

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ 1, %6 ], [ %11, %8 ]
  %10 = uitofp i64 %9 to double, !dbg !1099
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #6, !dbg !1101
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #6, !dbg !1102
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %7) #7, !dbg !1103
  %11 = add i64 %9, 1, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  %12 = icmp ugt i64 %11, %4, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %12, label %13, label %8, !dbg !1098, !llvm.loop !1106

; <label>:13:                                     ; preds = %8, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  ret void, !dbg !1108
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
define dso_local void @mp_encode_lua_type(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1109 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1129
  %8 = icmp eq i32 %7, 5, !dbg !1131
  %9 = icmp eq i32 %2, 16, !dbg !1133
  %10 = and i1 %9, %8, !dbg !1134
  %11 = select i1 %10, i32 0, i32 %7, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  switch i32 %11, label %24 [
    i32 4, label %12
    i32 1, label %16
    i32 3, label %17
    i32 5, label %18
  ], !dbg !1135

; <label>:12:                                     ; preds = %3
  %13 = bitcast i64* %4 to i8*, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1139
  %14 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %4) #6, !dbg !1141
  %15 = load i64, i64* %4, align 8, !dbg !1143, !tbaa !159
  call void @mp_encode_bytes(%struct.lua_State* %0, %struct.mp_buf* %1, i8* %14, i64 %15) #6, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br label %57, !dbg !1146

; <label>:16:                                     ; preds = %3
  tail call void @mp_encode_lua_bool(%struct.lua_State* %0, %struct.mp_buf* %1) #7, !dbg !1147
  br label %57, !dbg !1148

; <label>:17:                                     ; preds = %3
  tail call void @mp_encode_lua_number(%struct.lua_State* %0, %struct.mp_buf* %1) #7, !dbg !1149
  br label %57, !dbg !1150

; <label>:18:                                     ; preds = %3
  %19 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #6, !dbg !1160
  %20 = icmp eq i32 %19, 0, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br i1 %20, label %22, label %21, !dbg !1162

; <label>:21:                                     ; preds = %18
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1163
  br label %23, !dbg !1163

; <label>:22:                                     ; preds = %18
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #6, !dbg !1164
  br label %23

; <label>:23:                                     ; preds = %21, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br label %57, !dbg !1166

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0, !dbg !1169
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %25) #5, !dbg !1169
  store i8 -64, i8* %25, align 1, !dbg !1170, !tbaa !92
  %26 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1176
  %27 = load i64, i64* %26, align 8, !dbg !1176, !tbaa !177
  %28 = icmp eq i64 %27, 0, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %28, label %34, label %29, !dbg !1178

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8, !dbg !1179, !tbaa !154
  %32 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !dbg !1180, !tbaa !182
  br label %47, !dbg !1178

; <label>:34:                                     ; preds = %24
  %35 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1181
  %36 = load i64, i64* %35, align 8, !dbg !1181, !tbaa !182
  %37 = shl i64 %36, 1, !dbg !1182
  %38 = add i64 %37, 2, !dbg !1182
  %39 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1184
  %40 = load i8*, i8** %39, align 8, !dbg !1184, !tbaa !154
  %41 = bitcast i8** %5 to i8*, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1191
  %42 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %5) #6, !dbg !1193
  %43 = load i8*, i8** %5, align 8, !dbg !1194, !tbaa !125
  %44 = call i8* %42(i8* %43, i8* %40, i64 %36, i64 %38) #6, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  store i8* %44, i8** %39, align 8, !dbg !1198, !tbaa !154
  %45 = load i64, i64* %35, align 8, !dbg !1199, !tbaa !182
  %46 = sub i64 %38, %45, !dbg !1200
  store i64 %46, i64* %26, align 8, !dbg !1201, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br label %47, !dbg !1202

; <label>:47:                                     ; preds = %29, %34
  %48 = phi i64* [ %32, %29 ], [ %35, %34 ], !dbg !1180
  %49 = phi i64 [ %33, %29 ], [ %45, %34 ], !dbg !1180
  %50 = phi i8* [ %31, %29 ], [ %44, %34 ], !dbg !1179
  %51 = getelementptr inbounds i8, i8* %50, i64 %49, !dbg !1203
  %52 = call i8* @memcpy(i8* %51, i8* nonnull %25, i64 1) #6, !dbg !1204
  %53 = load i64, i64* %48, align 8, !dbg !1205, !tbaa !182
  %54 = add i64 %53, 1, !dbg !1205
  store i64 %54, i64* %48, align 8, !dbg !1205, !tbaa !182
  %55 = load i64, i64* %26, align 8, !dbg !1206, !tbaa !177
  %56 = add i64 %55, -1, !dbg !1206
  store i64 %56, i64* %26, align 8, !dbg !1206, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %25) #5, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  br label %57, !dbg !1209

; <label>:57:                                     ; preds = %47, %23, %17, %16, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  ret void, !dbg !1212
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table_as_map(%struct.lua_State*, %struct.mp_buf* nocapture, i32) local_unnamed_addr #0 !dbg !1213 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1223
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  %4 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1226
  %5 = icmp eq i32 %4, 0, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br i1 %5, label %11, label %6, !dbg !1225

; <label>:6:                                      ; preds = %3, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %3 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1227
  %8 = add i64 %7, 1, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  %9 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1226
  %10 = icmp eq i32 %9, 0, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br i1 %10, label %11, label %6, !dbg !1225, !llvm.loop !1230

; <label>:11:                                     ; preds = %6, %3
  %12 = phi i64 [ 0, %3 ], [ %8, %6 ], !dbg !1232
  tail call void @mp_encode_map(%struct.lua_State* %0, %struct.mp_buf* %1, i64 %12) #7, !dbg !1233
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %13 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1236
  %14 = icmp eq i32 %13, 0, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %14, label %20, label %15, !dbg !1235

; <label>:15:                                     ; preds = %11
  %16 = add nsw i32 %2, 1
  br label %17, !dbg !1235

; <label>:17:                                     ; preds = %15, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6, !dbg !1237
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1239
  tail call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %16) #7, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %18 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1236
  %19 = icmp eq i32 %18, 0, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %19, label %20, label %17, !dbg !1235, !llvm.loop !1241

; <label>:20:                                     ; preds = %17, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  ret void, !dbg !1243
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
define dso_local i32 @table_is_an_array(%struct.lua_State*) local_unnamed_addr #0 !dbg !1244 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1254
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %3 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1258
  %4 = icmp eq i32 %3, 0, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %4, label %29, label %5, !dbg !1257

; <label>:5:                                      ; preds = %1, %21
  %6 = phi i32 [ %26, %21 ], [ 0, %1 ]
  %7 = phi i32 [ %25, %21 ], [ 0, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !1259
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !1261
  %9 = icmp eq i32 %8, 3, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %9, label %10, label %20, !dbg !1264

; <label>:10:                                     ; preds = %5
  %11 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #6, !dbg !1265
  %12 = fcmp ugt double %11, 0.000000e+00, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %12, label %13, label %20, !dbg !1268

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__fpclassifyd(double %11) #6, !dbg !1269
  %15 = icmp eq i32 %14, 1, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br i1 %15, label %20, label %16, !dbg !1269

; <label>:16:                                     ; preds = %13
  %17 = fptosi double %11 to i32, !dbg !1269
  %18 = sitofp i32 %17 to double, !dbg !1269
  %19 = fcmp oeq double %11, %18, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  br i1 %19, label %21, label %20, !dbg !1270

; <label>:20:                                     ; preds = %10, %5, %16, %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1271
  br label %34, !dbg !1273

; <label>:21:                                     ; preds = %16
  %22 = sitofp i32 %7 to double, !dbg !1274
  %23 = fcmp ogt double %11, %22, !dbg !1275
  %24 = select i1 %23, double %11, double %22, !dbg !1276
  %25 = fptosi double %24 to i32, !dbg !1277
  %26 = add nuw nsw i32 %6, 1, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %27 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #6, !dbg !1258
  %28 = icmp eq i32 %27, 0, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %28, label %29, label %5, !dbg !1257, !llvm.loop !1279

; <label>:29:                                     ; preds = %21, %1
  %30 = phi i32 [ 0, %1 ], [ %25, %21 ], !dbg !1281
  %31 = phi i32 [ 0, %1 ], [ %26, %21 ], !dbg !1281
  tail call void @lua_settop(%struct.lua_State* %0, i32 %2) #6, !dbg !1282
  %32 = icmp eq i32 %30, %31, !dbg !1283
  %33 = zext i1 %32 to i32, !dbg !1283
  br label %34, !dbg !1284

; <label>:34:                                     ; preds = %29, %20
  %35 = phi i32 [ 0, %20 ], [ %33, %29 ], !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  ret i32 %35, !dbg !1287
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_table(%struct.lua_State*, %struct.mp_buf*, i32) local_unnamed_addr #0 !dbg !1152 {
  %4 = tail call i32 @table_is_an_array(%struct.lua_State* %0) #7, !dbg !1291
  %5 = icmp eq i32 %4, 0, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br i1 %5, label %7, label %6, !dbg !1292

; <label>:6:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_array(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1293
  br label %8, !dbg !1293

; <label>:7:                                      ; preds = %3
  tail call void @mp_encode_lua_table_as_map(%struct.lua_State* %0, %struct.mp_buf* %1, i32 %2) #7, !dbg !1294
  br label %8

; <label>:8:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  ret void, !dbg !1295
}

; Function Attrs: noredzone nounwind
define dso_local void @mp_encode_lua_null(%struct.lua_State*, %struct.mp_buf* nocapture) local_unnamed_addr #0 !dbg !1116 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !1298
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1298
  store i8 -64, i8* %5, align 1, !dbg !1300, !tbaa !92
  %6 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 2, !dbg !1306
  %7 = load i64, i64* %6, align 8, !dbg !1306, !tbaa !177
  %8 = icmp eq i64 %7, 0, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %8, label %14, label %9, !dbg !1308

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !dbg !1309, !tbaa !154
  %12 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !dbg !1310, !tbaa !182
  br label %27, !dbg !1308

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 1, !dbg !1311
  %16 = load i64, i64* %15, align 8, !dbg !1311, !tbaa !182
  %17 = shl i64 %16, 1, !dbg !1312
  %18 = add i64 %17, 2, !dbg !1312
  %19 = getelementptr inbounds %struct.mp_buf, %struct.mp_buf* %1, i64 0, i32 0, !dbg !1314
  %20 = load i8*, i8** %19, align 8, !dbg !1314, !tbaa !154
  %21 = bitcast i8** %3 to i8*, !dbg !1321
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1321
  %22 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1323
  %23 = load i8*, i8** %3, align 8, !dbg !1324, !tbaa !125
  %24 = call i8* %22(i8* %23, i8* %20, i64 %16, i64 %18) #6, !dbg !1325
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  store i8* %24, i8** %19, align 8, !dbg !1328, !tbaa !154
  %25 = load i64, i64* %15, align 8, !dbg !1329, !tbaa !182
  %26 = sub i64 %18, %25, !dbg !1330
  store i64 %26, i64* %6, align 8, !dbg !1331, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br label %27, !dbg !1332

; <label>:27:                                     ; preds = %9, %14
  %28 = phi i64* [ %12, %9 ], [ %15, %14 ], !dbg !1310
  %29 = phi i64 [ %13, %9 ], [ %25, %14 ], !dbg !1310
  %30 = phi i8* [ %11, %9 ], [ %24, %14 ], !dbg !1309
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1333
  %32 = call i8* @memcpy(i8* %31, i8* nonnull %5, i64 1) #6, !dbg !1334
  %33 = load i64, i64* %28, align 8, !dbg !1335, !tbaa !182
  %34 = add i64 %33, 1, !dbg !1335
  store i64 %34, i64* %28, align 8, !dbg !1335, !tbaa !182
  %35 = load i64, i64* %6, align 8, !dbg !1336, !tbaa !177
  %36 = add i64 %35, -1, !dbg !1336
  store i64 %36, i64* %6, align 8, !dbg !1336, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  ret void, !dbg !1338
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_pack(%struct.lua_State*) #0 !dbg !1339 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !1346
  %6 = icmp eq i32 %5, 0, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  br i1 %6, label %7, label %9, !dbg !1350

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1351
  br label %49, !dbg !1352

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %5) #6, !dbg !1353
  %11 = icmp eq i32 %10, 0, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br i1 %11, label %12, label %14, !dbg !1355

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1356
  br label %49, !dbg !1357

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8** %4 to i8*, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1367
  %16 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #6, !dbg !1369
  %17 = load i8*, i8** %4, align 8, !dbg !1370, !tbaa !125
  %18 = call i8* %16(i8* %17, i8* null, i64 0, i64 24) #6, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  %19 = bitcast i8* %18 to %struct.mp_buf*, !dbg !1374
  %20 = bitcast i8* %18 to i8**, !dbg !1375
  store i8* null, i8** %20, align 8, !dbg !1376, !tbaa !154
  %21 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !1377
  %22 = bitcast i8* %21 to i64*, !dbg !1377
  %23 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !1378
  %24 = bitcast i8* %23 to i64*, !dbg !1378
  %25 = bitcast i8* %23 to <2 x i64>*, !dbg !1379
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 8, !dbg !1379, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  %26 = icmp slt i32 %5, 1, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %26, label %38, label %27, !dbg !1387

; <label>:27:                                     ; preds = %14, %27
  %28 = phi i32 [ %34, %27 ], [ 1, %14 ]
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1388
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %28) #6, !dbg !1390
  call void @mp_encode_lua_type(%struct.lua_State* %0, %struct.mp_buf* %19, i32 0) #7, !dbg !1391
  %29 = load i8*, i8** %20, align 8, !dbg !1392, !tbaa !154
  %30 = load i64, i64* %24, align 8, !dbg !1393, !tbaa !182
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %29, i64 %30) #6, !dbg !1394
  %31 = load i64, i64* %24, align 8, !dbg !1395, !tbaa !182
  %32 = load i64, i64* %22, align 8, !dbg !1396, !tbaa !177
  %33 = add i64 %32, %31, !dbg !1396
  store i64 %33, i64* %22, align 8, !dbg !1396, !tbaa !177
  store i64 0, i64* %24, align 8, !dbg !1397, !tbaa !182
  %34 = add nuw nsw i32 %28, 1, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %35 = icmp eq i32 %28, %5, !dbg !1385
  br i1 %35, label %36, label %27, !dbg !1387, !llvm.loop !1400

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %20, align 8, !dbg !1402, !tbaa !154
  br label %38, !dbg !1402

; <label>:38:                                     ; preds = %36, %14
  %39 = phi i64 [ %33, %36 ], [ 0, %14 ], !dbg !1404
  %40 = phi i8* [ %37, %36 ], [ null, %14 ], !dbg !1402
  %41 = bitcast i8** %3 to i8*, !dbg !1413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1413
  %42 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %3) #6, !dbg !1415
  %43 = load i8*, i8** %3, align 8, !dbg !1416, !tbaa !125
  %44 = call i8* %42(i8* %43, i8* %40, i64 %39, i64 0) #6, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  %45 = bitcast i8** %2 to i8*, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1426
  %46 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %2) #6, !dbg !1428
  %47 = load i8*, i8** %2, align 8, !dbg !1429, !tbaa !125
  %48 = call i8* %46(i8* %47, i8* %18, i64 24, i64 0) #6, !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #5, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  call void @lua_concat(%struct.lua_State* %0, i32 %5) #6, !dbg !1434
  br label %49, !dbg !1435

; <label>:49:                                     ; preds = %38, %12, %7
  %50 = phi i32 [ %8, %7 ], [ 1, %38 ], [ %13, %12 ], !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  ret i32 %50, !dbg !1438
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
define dso_local void @mp_decode_to_lua_array(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1439 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %4, label %6, label %5, !dbg !1450

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.mp_decode_to_lua_array, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1450
  unreachable

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1452
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  %7 = icmp eq i64 %2, 0, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %7, label %20, label %8, !dbg !1454

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1454

; <label>:10:                                     ; preds = %8, %17
  %11 = phi i64 [ %2, %8 ], [ %13, %17 ]
  %12 = phi i32 [ 1, %8 ], [ %18, %17 ]
  %13 = add i64 %11, -1, !dbg !1455
  %14 = sitofp i32 %12 to double, !dbg !1456
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #6, !dbg !1458
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1459
  %15 = load i32, i32* %9, align 8, !dbg !1460, !tbaa !279
  %16 = icmp eq i32 %15, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %16, label %17, label %20, !dbg !1463

; <label>:17:                                     ; preds = %10
  %18 = add nuw nsw i32 %12, 1, !dbg !1464
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  %19 = icmp eq i64 %13, 0, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %19, label %20, label %10, !dbg !1454, !llvm.loop !1466

; <label>:20:                                     ; preds = %17, %10, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  ret void, !dbg !1469
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_type(%struct.lua_State*, %struct.mp_cur*) local_unnamed_addr #0 !dbg !1470 {
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 1, !dbg !1508
  %6 = load i64, i64* %5, align 8, !dbg !1508, !tbaa !276
  %7 = icmp eq i64 %6, 0, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %7, label %8, label %10, !dbg !1511

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1512
  store i32 1, i32* %9, align 8, !dbg !1512, !tbaa !279
  br label %519, !dbg !1512

; <label>:10:                                     ; preds = %2
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1514
  %11 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 0, !dbg !1515
  %12 = load i8*, i8** %11, align 8, !dbg !1515, !tbaa !271
  %13 = load i8, i8* %12, align 1, !dbg !1516, !tbaa !92
  %14 = zext i8 %13 to i32, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  switch i8 %13, label %466 [
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
    i8 -37, label %347
    i8 -36, label %382
    i8 -35, label %398
    i8 -34, label %424
    i8 -33, label %440
  ], !dbg !1517

; <label>:15:                                     ; preds = %10
  %16 = load i64, i64* %5, align 8, !dbg !1518, !tbaa !276
  %17 = icmp ult i64 %16, 2, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br i1 %17, label %18, label %20, !dbg !1521

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1522
  store i32 1, i32* %19, align 8, !dbg !1522, !tbaa !279
  br label %519, !dbg !1522

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1524
  %22 = load i8, i8* %21, align 1, !dbg !1524, !tbaa !92
  %23 = zext i8 %22 to i64, !dbg !1524
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #6, !dbg !1524
  %24 = load i8*, i8** %11, align 8, !dbg !1525, !tbaa !271
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !1525
  store i8* %25, i8** %11, align 8, !dbg !1525, !tbaa !271
  %26 = load i64, i64* %5, align 8, !dbg !1525, !tbaa !276
  %27 = add i64 %26, -2, !dbg !1525
  store i64 %27, i64* %5, align 8, !dbg !1525, !tbaa !276
  br label %519, !dbg !1527

; <label>:28:                                     ; preds = %10
  %29 = load i64, i64* %5, align 8, !dbg !1528, !tbaa !276
  %30 = icmp ult i64 %29, 2, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  br i1 %30, label %31, label %33, !dbg !1531

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1532
  store i32 1, i32* %32, align 8, !dbg !1532, !tbaa !279
  br label %519, !dbg !1532

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1534
  %35 = load i8, i8* %34, align 1, !dbg !1534, !tbaa !92
  %36 = sext i8 %35 to i64, !dbg !1535
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %36) #6, !dbg !1536
  %37 = load i8*, i8** %11, align 8, !dbg !1537, !tbaa !271
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1537
  store i8* %38, i8** %11, align 8, !dbg !1537, !tbaa !271
  %39 = load i64, i64* %5, align 8, !dbg !1537, !tbaa !276
  %40 = add i64 %39, -2, !dbg !1537
  store i64 %40, i64* %5, align 8, !dbg !1537, !tbaa !276
  br label %519, !dbg !1539

; <label>:41:                                     ; preds = %10
  %42 = load i64, i64* %5, align 8, !dbg !1540, !tbaa !276
  %43 = icmp ult i64 %42, 3, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %43, label %44, label %46, !dbg !1543

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1544
  store i32 1, i32* %45, align 8, !dbg !1544, !tbaa !279
  br label %519, !dbg !1544

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1546
  %48 = load i8, i8* %47, align 1, !dbg !1546, !tbaa !92
  %49 = zext i8 %48 to i64, !dbg !1546
  %50 = shl nuw nsw i64 %49, 8, !dbg !1546
  %51 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1546
  %52 = load i8, i8* %51, align 1, !dbg !1546, !tbaa !92
  %53 = zext i8 %52 to i64, !dbg !1546
  %54 = or i64 %50, %53, !dbg !1546
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %54) #6, !dbg !1546
  %55 = load i8*, i8** %11, align 8, !dbg !1547, !tbaa !271
  %56 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !1547
  store i8* %56, i8** %11, align 8, !dbg !1547, !tbaa !271
  %57 = load i64, i64* %5, align 8, !dbg !1547, !tbaa !276
  %58 = add i64 %57, -3, !dbg !1547
  store i64 %58, i64* %5, align 8, !dbg !1547, !tbaa !276
  br label %519, !dbg !1549

; <label>:59:                                     ; preds = %10
  %60 = load i64, i64* %5, align 8, !dbg !1550, !tbaa !276
  %61 = icmp ult i64 %60, 3, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %61, label %62, label %64, !dbg !1553

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1554
  store i32 1, i32* %63, align 8, !dbg !1554, !tbaa !279
  br label %519, !dbg !1554

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1556
  %66 = load i8, i8* %65, align 1, !dbg !1556, !tbaa !92
  %67 = zext i8 %66 to i16, !dbg !1556
  %68 = shl nuw i16 %67, 8, !dbg !1557
  %69 = sext i16 %68 to i64, !dbg !1558
  %70 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1559
  %71 = load i8, i8* %70, align 1, !dbg !1559, !tbaa !92
  %72 = zext i8 %71 to i64, !dbg !1559
  %73 = or i64 %69, %72, !dbg !1560
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %73) #6, !dbg !1561
  %74 = load i8*, i8** %11, align 8, !dbg !1562, !tbaa !271
  %75 = getelementptr inbounds i8, i8* %74, i64 3, !dbg !1562
  store i8* %75, i8** %11, align 8, !dbg !1562, !tbaa !271
  %76 = load i64, i64* %5, align 8, !dbg !1562, !tbaa !276
  %77 = add i64 %76, -3, !dbg !1562
  store i64 %77, i64* %5, align 8, !dbg !1562, !tbaa !276
  br label %519, !dbg !1564

; <label>:78:                                     ; preds = %10
  %79 = load i64, i64* %5, align 8, !dbg !1565, !tbaa !276
  %80 = icmp ult i64 %79, 5, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  br i1 %80, label %81, label %83, !dbg !1568

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1569
  store i32 1, i32* %82, align 8, !dbg !1569, !tbaa !279
  br label %519, !dbg !1569

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1571
  %85 = load i8, i8* %84, align 1, !dbg !1571, !tbaa !92
  %86 = zext i8 %85 to i64, !dbg !1571
  %87 = shl nuw nsw i64 %86, 24, !dbg !1571
  %88 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1571
  %89 = load i8, i8* %88, align 1, !dbg !1571, !tbaa !92
  %90 = zext i8 %89 to i64, !dbg !1571
  %91 = shl nuw nsw i64 %90, 16, !dbg !1571
  %92 = or i64 %91, %87, !dbg !1571
  %93 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1571
  %94 = load i8, i8* %93, align 1, !dbg !1571, !tbaa !92
  %95 = zext i8 %94 to i64, !dbg !1571
  %96 = shl nuw nsw i64 %95, 8, !dbg !1571
  %97 = or i64 %92, %96, !dbg !1571
  %98 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1571
  %99 = load i8, i8* %98, align 1, !dbg !1571, !tbaa !92
  %100 = zext i8 %99 to i64, !dbg !1571
  %101 = or i64 %97, %100, !dbg !1571
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %101) #6, !dbg !1571
  %102 = load i8*, i8** %11, align 8, !dbg !1572, !tbaa !271
  %103 = getelementptr inbounds i8, i8* %102, i64 5, !dbg !1572
  store i8* %103, i8** %11, align 8, !dbg !1572, !tbaa !271
  %104 = load i64, i64* %5, align 8, !dbg !1572, !tbaa !276
  %105 = add i64 %104, -5, !dbg !1572
  store i64 %105, i64* %5, align 8, !dbg !1572, !tbaa !276
  br label %519, !dbg !1574

; <label>:106:                                    ; preds = %10
  %107 = load i64, i64* %5, align 8, !dbg !1575, !tbaa !276
  %108 = icmp ult i64 %107, 5, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %108, label %109, label %111, !dbg !1578

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1579
  store i32 1, i32* %110, align 8, !dbg !1579, !tbaa !279
  br label %519, !dbg !1579

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1581
  %113 = load i8, i8* %112, align 1, !dbg !1581, !tbaa !92
  %114 = zext i8 %113 to i32, !dbg !1582
  %115 = shl nuw i32 %114, 24, !dbg !1583
  %116 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1584
  %117 = load i8, i8* %116, align 1, !dbg !1584, !tbaa !92
  %118 = zext i8 %117 to i32, !dbg !1585
  %119 = shl nuw nsw i32 %118, 16, !dbg !1586
  %120 = or i32 %119, %115, !dbg !1587
  %121 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1588
  %122 = load i8, i8* %121, align 1, !dbg !1588, !tbaa !92
  %123 = zext i8 %122 to i32, !dbg !1589
  %124 = shl nuw nsw i32 %123, 8, !dbg !1590
  %125 = or i32 %120, %124, !dbg !1591
  %126 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1592
  %127 = load i8, i8* %126, align 1, !dbg !1592, !tbaa !92
  %128 = zext i8 %127 to i32, !dbg !1593
  %129 = or i32 %125, %128, !dbg !1594
  %130 = sext i32 %129 to i64, !dbg !1595
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %130) #6, !dbg !1596
  %131 = load i8*, i8** %11, align 8, !dbg !1597, !tbaa !271
  %132 = getelementptr inbounds i8, i8* %131, i64 5, !dbg !1597
  store i8* %132, i8** %11, align 8, !dbg !1597, !tbaa !271
  %133 = load i64, i64* %5, align 8, !dbg !1597, !tbaa !276
  %134 = add i64 %133, -5, !dbg !1597
  store i64 %134, i64* %5, align 8, !dbg !1597, !tbaa !276
  br label %519, !dbg !1599

; <label>:135:                                    ; preds = %10
  %136 = load i64, i64* %5, align 8, !dbg !1600, !tbaa !276
  %137 = icmp ult i64 %136, 9, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %137, label %138, label %140, !dbg !1603

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1604
  store i32 1, i32* %139, align 8, !dbg !1604, !tbaa !279
  br label %519, !dbg !1604

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1606
  %142 = load i8, i8* %141, align 1, !dbg !1606, !tbaa !92
  %143 = zext i8 %142 to i64, !dbg !1606
  %144 = shl nuw i64 %143, 56, !dbg !1606
  %145 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1606
  %146 = load i8, i8* %145, align 1, !dbg !1606, !tbaa !92
  %147 = zext i8 %146 to i64, !dbg !1606
  %148 = shl nuw nsw i64 %147, 48, !dbg !1606
  %149 = or i64 %148, %144, !dbg !1606
  %150 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1606
  %151 = load i8, i8* %150, align 1, !dbg !1606, !tbaa !92
  %152 = zext i8 %151 to i64, !dbg !1606
  %153 = shl nuw nsw i64 %152, 40, !dbg !1606
  %154 = or i64 %149, %153, !dbg !1606
  %155 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1606
  %156 = load i8, i8* %155, align 1, !dbg !1606, !tbaa !92
  %157 = zext i8 %156 to i64, !dbg !1606
  %158 = shl nuw nsw i64 %157, 32, !dbg !1606
  %159 = or i64 %154, %158, !dbg !1606
  %160 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1606
  %161 = load i8, i8* %160, align 1, !dbg !1606, !tbaa !92
  %162 = zext i8 %161 to i64, !dbg !1606
  %163 = shl nuw nsw i64 %162, 24, !dbg !1606
  %164 = or i64 %159, %163, !dbg !1606
  %165 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1606
  %166 = load i8, i8* %165, align 1, !dbg !1606, !tbaa !92
  %167 = zext i8 %166 to i64, !dbg !1606
  %168 = shl nuw nsw i64 %167, 16, !dbg !1606
  %169 = or i64 %164, %168, !dbg !1606
  %170 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1606
  %171 = load i8, i8* %170, align 1, !dbg !1606, !tbaa !92
  %172 = zext i8 %171 to i64, !dbg !1606
  %173 = shl nuw nsw i64 %172, 8, !dbg !1606
  %174 = or i64 %169, %173, !dbg !1606
  %175 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1606
  %176 = load i8, i8* %175, align 1, !dbg !1606, !tbaa !92
  %177 = zext i8 %176 to i64, !dbg !1606
  %178 = or i64 %174, %177, !dbg !1606
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %178) #6, !dbg !1606
  %179 = load i8*, i8** %11, align 8, !dbg !1607, !tbaa !271
  %180 = getelementptr inbounds i8, i8* %179, i64 9, !dbg !1607
  store i8* %180, i8** %11, align 8, !dbg !1607, !tbaa !271
  %181 = load i64, i64* %5, align 8, !dbg !1607, !tbaa !276
  %182 = add i64 %181, -9, !dbg !1607
  store i64 %182, i64* %5, align 8, !dbg !1607, !tbaa !276
  br label %519, !dbg !1609

; <label>:183:                                    ; preds = %10
  %184 = load i64, i64* %5, align 8, !dbg !1610, !tbaa !276
  %185 = icmp ult i64 %184, 9, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %185, label %186, label %188, !dbg !1613

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1614
  store i32 1, i32* %187, align 8, !dbg !1614, !tbaa !279
  br label %519, !dbg !1614

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1616
  %190 = load i8, i8* %189, align 1, !dbg !1616, !tbaa !92
  %191 = zext i8 %190 to i64, !dbg !1617
  %192 = shl nuw i64 %191, 56, !dbg !1618
  %193 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1619
  %194 = load i8, i8* %193, align 1, !dbg !1619, !tbaa !92
  %195 = zext i8 %194 to i64, !dbg !1620
  %196 = shl nuw nsw i64 %195, 48, !dbg !1621
  %197 = or i64 %196, %192, !dbg !1622
  %198 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1623
  %199 = load i8, i8* %198, align 1, !dbg !1623, !tbaa !92
  %200 = zext i8 %199 to i64, !dbg !1624
  %201 = shl nuw nsw i64 %200, 40, !dbg !1625
  %202 = or i64 %197, %201, !dbg !1626
  %203 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1627
  %204 = load i8, i8* %203, align 1, !dbg !1627, !tbaa !92
  %205 = zext i8 %204 to i64, !dbg !1628
  %206 = shl nuw nsw i64 %205, 32, !dbg !1629
  %207 = or i64 %202, %206, !dbg !1630
  %208 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1631
  %209 = load i8, i8* %208, align 1, !dbg !1631, !tbaa !92
  %210 = zext i8 %209 to i64, !dbg !1632
  %211 = shl nuw nsw i64 %210, 24, !dbg !1633
  %212 = or i64 %207, %211, !dbg !1634
  %213 = getelementptr inbounds i8, i8* %12, i64 6, !dbg !1635
  %214 = load i8, i8* %213, align 1, !dbg !1635, !tbaa !92
  %215 = zext i8 %214 to i64, !dbg !1636
  %216 = shl nuw nsw i64 %215, 16, !dbg !1637
  %217 = or i64 %212, %216, !dbg !1638
  %218 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !1639
  %219 = load i8, i8* %218, align 1, !dbg !1639, !tbaa !92
  %220 = zext i8 %219 to i64, !dbg !1640
  %221 = shl nuw nsw i64 %220, 8, !dbg !1641
  %222 = or i64 %217, %221, !dbg !1642
  %223 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1643
  %224 = load i8, i8* %223, align 1, !dbg !1643, !tbaa !92
  %225 = zext i8 %224 to i64, !dbg !1644
  %226 = or i64 %222, %225, !dbg !1645
  %227 = sitofp i64 %226 to double, !dbg !1646
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %227) #6, !dbg !1647
  %228 = load i8*, i8** %11, align 8, !dbg !1648, !tbaa !271
  %229 = getelementptr inbounds i8, i8* %228, i64 9, !dbg !1648
  store i8* %229, i8** %11, align 8, !dbg !1648, !tbaa !271
  %230 = load i64, i64* %5, align 8, !dbg !1648, !tbaa !276
  %231 = add i64 %230, -9, !dbg !1648
  store i64 %231, i64* %5, align 8, !dbg !1648, !tbaa !276
  br label %519, !dbg !1650

; <label>:232:                                    ; preds = %10
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !1651
  %233 = load i8*, i8** %11, align 8, !dbg !1652, !tbaa !271
  %234 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1652
  store i8* %234, i8** %11, align 8, !dbg !1652, !tbaa !271
  %235 = load i64, i64* %5, align 8, !dbg !1652, !tbaa !276
  %236 = add i64 %235, -1, !dbg !1652
  store i64 %236, i64* %5, align 8, !dbg !1652, !tbaa !276
  br label %519, !dbg !1654

; <label>:237:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !1655
  %238 = load i8*, i8** %11, align 8, !dbg !1656, !tbaa !271
  %239 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1656
  store i8* %239, i8** %11, align 8, !dbg !1656, !tbaa !271
  %240 = load i64, i64* %5, align 8, !dbg !1656, !tbaa !276
  %241 = add i64 %240, -1, !dbg !1656
  store i64 %241, i64* %5, align 8, !dbg !1656, !tbaa !276
  br label %519, !dbg !1658

; <label>:242:                                    ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6, !dbg !1659
  %243 = load i8*, i8** %11, align 8, !dbg !1660, !tbaa !271
  %244 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1660
  store i8* %244, i8** %11, align 8, !dbg !1660, !tbaa !271
  %245 = load i64, i64* %5, align 8, !dbg !1660, !tbaa !276
  %246 = add i64 %245, -1, !dbg !1660
  store i64 %246, i64* %5, align 8, !dbg !1660, !tbaa !276
  br label %519, !dbg !1662

; <label>:247:                                    ; preds = %10
  %248 = load i64, i64* %5, align 8, !dbg !1663, !tbaa !276
  %249 = icmp ult i64 %248, 5, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br i1 %249, label %250, label %252, !dbg !1666

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1667
  store i32 1, i32* %251, align 8, !dbg !1667, !tbaa !279
  br label %519, !dbg !1667

; <label>:252:                                    ; preds = %247
  %253 = bitcast float* %3 to i8*, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1669
  %254 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1670
  %255 = call i8* @memcpy(i8* nonnull %253, i8* nonnull %254, i64 4) #6, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  %256 = getelementptr inbounds float, float* %3, i64 1, !dbg !1680
  %257 = bitcast float* %256 to i8*, !dbg !1680
  %258 = getelementptr inbounds i8, i8* %257, i64 -1, !dbg !1682
  %259 = load i8, i8* %253, align 4, !dbg !1683, !tbaa !92
  %260 = load i8, i8* %258, align 1, !dbg !1685, !tbaa !92
  store i8 %260, i8* %253, align 4, !dbg !1686, !tbaa !92
  store i8 %259, i8* %258, align 1, !dbg !1687, !tbaa !92
  %261 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  %262 = getelementptr inbounds i8, i8* %257, i64 -2, !dbg !1682
  %263 = load i8, i8* %261, align 1, !dbg !1683, !tbaa !92
  %264 = load i8, i8* %262, align 2, !dbg !1685, !tbaa !92
  store i8 %264, i8* %261, align 1, !dbg !1686, !tbaa !92
  store i8 %263, i8* %262, align 2, !dbg !1687, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  %265 = load float, float* %3, align 4, !dbg !1690, !tbaa !444
  %266 = fpext float %265 to double, !dbg !1690
  call void @lua_pushnumber(%struct.lua_State* %0, double %266) #6, !dbg !1692
  %267 = load i8*, i8** %11, align 8, !dbg !1693, !tbaa !271
  %268 = getelementptr inbounds i8, i8* %267, i64 5, !dbg !1693
  store i8* %268, i8** %11, align 8, !dbg !1693, !tbaa !271
  %269 = load i64, i64* %5, align 8, !dbg !1693, !tbaa !276
  %270 = add i64 %269, -5, !dbg !1693
  store i64 %270, i64* %5, align 8, !dbg !1693, !tbaa !276
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %253) #5, !dbg !1695
  br label %519, !dbg !1696

; <label>:271:                                    ; preds = %10
  %272 = load i64, i64* %5, align 8, !dbg !1697, !tbaa !276
  %273 = icmp ult i64 %272, 9, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br i1 %273, label %274, label %276, !dbg !1700

; <label>:274:                                    ; preds = %271
  %275 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1701
  store i32 1, i32* %275, align 8, !dbg !1701, !tbaa !279
  br label %519, !dbg !1701

; <label>:276:                                    ; preds = %271
  %277 = bitcast double* %4 to i8*, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1703
  %278 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1704
  %279 = call i8* @memcpy(i8* nonnull %277, i8* nonnull %278, i64 8) #6, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  %280 = getelementptr inbounds double, double* %4, i64 1, !dbg !1714
  %281 = bitcast double* %280 to i8*, !dbg !1714
  %282 = getelementptr inbounds i8, i8* %281, i64 -1, !dbg !1716
  %283 = load i8, i8* %277, align 8, !dbg !1717, !tbaa !92
  %284 = load i8, i8* %282, align 1, !dbg !1719, !tbaa !92
  store i8 %284, i8* %277, align 8, !dbg !1720, !tbaa !92
  store i8 %283, i8* %282, align 1, !dbg !1721, !tbaa !92
  %285 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  %286 = getelementptr inbounds i8, i8* %281, i64 -2, !dbg !1716
  %287 = load i8, i8* %285, align 1, !dbg !1717, !tbaa !92
  %288 = load i8, i8* %286, align 2, !dbg !1719, !tbaa !92
  store i8 %288, i8* %285, align 1, !dbg !1720, !tbaa !92
  store i8 %287, i8* %286, align 2, !dbg !1721, !tbaa !92
  %289 = getelementptr inbounds i8, i8* %277, i64 2, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  %290 = getelementptr inbounds i8, i8* %281, i64 -3, !dbg !1716
  %291 = load i8, i8* %289, align 2, !dbg !1717, !tbaa !92
  %292 = load i8, i8* %290, align 1, !dbg !1719, !tbaa !92
  store i8 %292, i8* %289, align 2, !dbg !1720, !tbaa !92
  store i8 %291, i8* %290, align 1, !dbg !1721, !tbaa !92
  %293 = getelementptr inbounds i8, i8* %277, i64 3, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  %294 = getelementptr inbounds i8, i8* %281, i64 -4, !dbg !1716
  %295 = load i8, i8* %293, align 1, !dbg !1717, !tbaa !92
  %296 = load i8, i8* %294, align 4, !dbg !1719, !tbaa !92
  store i8 %296, i8* %293, align 1, !dbg !1720, !tbaa !92
  store i8 %295, i8* %294, align 4, !dbg !1721, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  %297 = load double, double* %4, align 8, !dbg !1724, !tbaa !437
  call void @lua_pushnumber(%struct.lua_State* %0, double %297) #6, !dbg !1726
  %298 = load i8*, i8** %11, align 8, !dbg !1727, !tbaa !271
  %299 = getelementptr inbounds i8, i8* %298, i64 9, !dbg !1727
  store i8* %299, i8** %11, align 8, !dbg !1727, !tbaa !271
  %300 = load i64, i64* %5, align 8, !dbg !1727, !tbaa !276
  %301 = add i64 %300, -9, !dbg !1727
  store i64 %301, i64* %5, align 8, !dbg !1727, !tbaa !276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %277) #5, !dbg !1729
  br label %519, !dbg !1730

; <label>:302:                                    ; preds = %10
  %303 = load i64, i64* %5, align 8, !dbg !1731, !tbaa !276
  %304 = icmp ult i64 %303, 2, !dbg !1731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  br i1 %304, label %305, label %307, !dbg !1734

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1735
  store i32 1, i32* %306, align 8, !dbg !1735, !tbaa !279
  br label %519, !dbg !1735

; <label>:307:                                    ; preds = %302
  %308 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1737
  %309 = load i8, i8* %308, align 1, !dbg !1737, !tbaa !92
  %310 = zext i8 %309 to i64, !dbg !1737
  %311 = add nuw nsw i64 %310, 2, !dbg !1739
  %312 = icmp ult i64 %303, %311, !dbg !1739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  br i1 %312, label %313, label %315, !dbg !1742

; <label>:313:                                    ; preds = %307
  %314 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1743
  store i32 1, i32* %314, align 8, !dbg !1743, !tbaa !279
  br label %321, !dbg !1743

; <label>:315:                                    ; preds = %307
  %316 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1745
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %316, i64 %310) #6, !dbg !1746
  %317 = load i8*, i8** %11, align 8, !dbg !1747, !tbaa !271
  %318 = getelementptr inbounds i8, i8* %317, i64 %311, !dbg !1747
  store i8* %318, i8** %11, align 8, !dbg !1747, !tbaa !271
  %319 = load i64, i64* %5, align 8, !dbg !1747, !tbaa !276
  %320 = sub i64 %319, %311, !dbg !1747
  store i64 %320, i64* %5, align 8, !dbg !1747, !tbaa !276
  br label %321, !dbg !1749

; <label>:321:                                    ; preds = %315, %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:322:                                    ; preds = %10
  %323 = load i64, i64* %5, align 8, !dbg !1751, !tbaa !276
  %324 = icmp ult i64 %323, 3, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %324, label %325, label %327, !dbg !1754

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1755
  store i32 1, i32* %326, align 8, !dbg !1755, !tbaa !279
  br label %519, !dbg !1755

; <label>:327:                                    ; preds = %322
  %328 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1757
  %329 = load i8, i8* %328, align 1, !dbg !1757, !tbaa !92
  %330 = zext i8 %329 to i64, !dbg !1757
  %331 = shl nuw nsw i64 %330, 8, !dbg !1758
  %332 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1759
  %333 = load i8, i8* %332, align 1, !dbg !1759, !tbaa !92
  %334 = zext i8 %333 to i64, !dbg !1759
  %335 = or i64 %331, %334, !dbg !1760
  %336 = add nuw nsw i64 %335, 3, !dbg !1762
  %337 = icmp ult i64 %323, %336, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  br i1 %337, label %338, label %340, !dbg !1765

; <label>:338:                                    ; preds = %327
  %339 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1766
  store i32 1, i32* %339, align 8, !dbg !1766, !tbaa !279
  br label %346, !dbg !1766

; <label>:340:                                    ; preds = %327
  %341 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1768
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %341, i64 %335) #6, !dbg !1769
  %342 = load i8*, i8** %11, align 8, !dbg !1770, !tbaa !271
  %343 = getelementptr inbounds i8, i8* %342, i64 %336, !dbg !1770
  store i8* %343, i8** %11, align 8, !dbg !1770, !tbaa !271
  %344 = load i64, i64* %5, align 8, !dbg !1770, !tbaa !276
  %345 = sub i64 %344, %336, !dbg !1770
  store i64 %345, i64* %5, align 8, !dbg !1770, !tbaa !276
  br label %346, !dbg !1772

; <label>:346:                                    ; preds = %340, %338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br label %519

; <label>:347:                                    ; preds = %10
  %348 = load i64, i64* %5, align 8, !dbg !1774, !tbaa !276
  %349 = icmp ult i64 %348, 5, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %349, label %350, label %352, !dbg !1777

; <label>:350:                                    ; preds = %347
  %351 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1778
  store i32 1, i32* %351, align 8, !dbg !1778, !tbaa !279
  br label %519, !dbg !1778

; <label>:352:                                    ; preds = %347
  %353 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1780
  %354 = load i8, i8* %353, align 1, !dbg !1780, !tbaa !92
  %355 = zext i8 %354 to i64, !dbg !1781
  %356 = shl nuw nsw i64 %355, 24, !dbg !1782
  %357 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1783
  %358 = load i8, i8* %357, align 1, !dbg !1783, !tbaa !92
  %359 = zext i8 %358 to i64, !dbg !1784
  %360 = shl nuw nsw i64 %359, 16, !dbg !1785
  %361 = or i64 %360, %356, !dbg !1786
  %362 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1787
  %363 = load i8, i8* %362, align 1, !dbg !1787, !tbaa !92
  %364 = zext i8 %363 to i64, !dbg !1788
  %365 = shl nuw nsw i64 %364, 8, !dbg !1789
  %366 = or i64 %361, %365, !dbg !1790
  %367 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1791
  %368 = load i8, i8* %367, align 1, !dbg !1791, !tbaa !92
  %369 = zext i8 %368 to i64, !dbg !1792
  %370 = or i64 %366, %369, !dbg !1793
  %371 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1795
  store i8* %371, i8** %11, align 8, !dbg !1795, !tbaa !271
  %372 = add i64 %348, -5, !dbg !1795
  store i64 %372, i64* %5, align 8, !dbg !1795, !tbaa !276
  %373 = icmp ult i64 %372, %370, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1800
  br i1 %373, label %374, label %376, !dbg !1800

; <label>:374:                                    ; preds = %352
  %375 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1801
  store i32 1, i32* %375, align 8, !dbg !1801, !tbaa !279
  br label %381, !dbg !1801

; <label>:376:                                    ; preds = %352
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %371, i64 %370) #6, !dbg !1803
  %377 = load i8*, i8** %11, align 8, !dbg !1804, !tbaa !271
  %378 = getelementptr inbounds i8, i8* %377, i64 %370, !dbg !1804
  store i8* %378, i8** %11, align 8, !dbg !1804, !tbaa !271
  %379 = load i64, i64* %5, align 8, !dbg !1804, !tbaa !276
  %380 = sub i64 %379, %370, !dbg !1804
  store i64 %380, i64* %5, align 8, !dbg !1804, !tbaa !276
  br label %381, !dbg !1806

; <label>:381:                                    ; preds = %376, %374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  br label %519

; <label>:382:                                    ; preds = %10
  %383 = load i64, i64* %5, align 8, !dbg !1808, !tbaa !276
  %384 = icmp ult i64 %383, 3, !dbg !1808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  br i1 %384, label %385, label %387, !dbg !1811

; <label>:385:                                    ; preds = %382
  %386 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1812
  store i32 1, i32* %386, align 8, !dbg !1812, !tbaa !279
  br label %519, !dbg !1812

; <label>:387:                                    ; preds = %382
  %388 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1814
  %389 = load i8, i8* %388, align 1, !dbg !1814, !tbaa !92
  %390 = zext i8 %389 to i64, !dbg !1814
  %391 = shl nuw nsw i64 %390, 8, !dbg !1815
  %392 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1816
  %393 = load i8, i8* %392, align 1, !dbg !1816, !tbaa !92
  %394 = zext i8 %393 to i64, !dbg !1816
  %395 = or i64 %391, %394, !dbg !1817
  %396 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1819
  store i8* %396, i8** %11, align 8, !dbg !1819, !tbaa !271
  %397 = add i64 %383, -3, !dbg !1819
  store i64 %397, i64* %5, align 8, !dbg !1819, !tbaa !276
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %395) #7, !dbg !1821
  br label %519, !dbg !1822

; <label>:398:                                    ; preds = %10
  %399 = load i64, i64* %5, align 8, !dbg !1823, !tbaa !276
  %400 = icmp ult i64 %399, 5, !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  br i1 %400, label %401, label %403, !dbg !1826

; <label>:401:                                    ; preds = %398
  %402 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1827
  store i32 1, i32* %402, align 8, !dbg !1827, !tbaa !279
  br label %519, !dbg !1827

; <label>:403:                                    ; preds = %398
  %404 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1829
  %405 = load i8, i8* %404, align 1, !dbg !1829, !tbaa !92
  %406 = zext i8 %405 to i64, !dbg !1830
  %407 = shl nuw nsw i64 %406, 24, !dbg !1831
  %408 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1832
  %409 = load i8, i8* %408, align 1, !dbg !1832, !tbaa !92
  %410 = zext i8 %409 to i64, !dbg !1833
  %411 = shl nuw nsw i64 %410, 16, !dbg !1834
  %412 = or i64 %411, %407, !dbg !1835
  %413 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1836
  %414 = load i8, i8* %413, align 1, !dbg !1836, !tbaa !92
  %415 = zext i8 %414 to i64, !dbg !1837
  %416 = shl nuw nsw i64 %415, 8, !dbg !1838
  %417 = or i64 %412, %416, !dbg !1839
  %418 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1840
  %419 = load i8, i8* %418, align 1, !dbg !1840, !tbaa !92
  %420 = zext i8 %419 to i64, !dbg !1841
  %421 = or i64 %417, %420, !dbg !1842
  %422 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1844
  store i8* %422, i8** %11, align 8, !dbg !1844, !tbaa !271
  %423 = add i64 %399, -5, !dbg !1844
  store i64 %423, i64* %5, align 8, !dbg !1844, !tbaa !276
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %421) #7, !dbg !1846
  br label %519, !dbg !1847

; <label>:424:                                    ; preds = %10
  %425 = load i64, i64* %5, align 8, !dbg !1848, !tbaa !276
  %426 = icmp ult i64 %425, 3, !dbg !1848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  br i1 %426, label %427, label %429, !dbg !1851

; <label>:427:                                    ; preds = %424
  %428 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1852
  store i32 1, i32* %428, align 8, !dbg !1852, !tbaa !279
  br label %519, !dbg !1852

; <label>:429:                                    ; preds = %424
  %430 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1854
  %431 = load i8, i8* %430, align 1, !dbg !1854, !tbaa !92
  %432 = zext i8 %431 to i64, !dbg !1854
  %433 = shl nuw nsw i64 %432, 8, !dbg !1855
  %434 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1856
  %435 = load i8, i8* %434, align 1, !dbg !1856, !tbaa !92
  %436 = zext i8 %435 to i64, !dbg !1856
  %437 = or i64 %433, %436, !dbg !1857
  %438 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1859
  store i8* %438, i8** %11, align 8, !dbg !1859, !tbaa !271
  %439 = add i64 %425, -3, !dbg !1859
  store i64 %439, i64* %5, align 8, !dbg !1859, !tbaa !276
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %437) #7, !dbg !1861
  br label %519, !dbg !1862

; <label>:440:                                    ; preds = %10
  %441 = load i64, i64* %5, align 8, !dbg !1863, !tbaa !276
  %442 = icmp ult i64 %441, 5, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %442, label %443, label %445, !dbg !1866

; <label>:443:                                    ; preds = %440
  %444 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1867
  store i32 1, i32* %444, align 8, !dbg !1867, !tbaa !279
  br label %519, !dbg !1867

; <label>:445:                                    ; preds = %440
  %446 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1869
  %447 = load i8, i8* %446, align 1, !dbg !1869, !tbaa !92
  %448 = zext i8 %447 to i64, !dbg !1870
  %449 = shl nuw nsw i64 %448, 24, !dbg !1871
  %450 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1872
  %451 = load i8, i8* %450, align 1, !dbg !1872, !tbaa !92
  %452 = zext i8 %451 to i64, !dbg !1873
  %453 = shl nuw nsw i64 %452, 16, !dbg !1874
  %454 = or i64 %453, %449, !dbg !1875
  %455 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1876
  %456 = load i8, i8* %455, align 1, !dbg !1876, !tbaa !92
  %457 = zext i8 %456 to i64, !dbg !1877
  %458 = shl nuw nsw i64 %457, 8, !dbg !1878
  %459 = or i64 %454, %458, !dbg !1879
  %460 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1880
  %461 = load i8, i8* %460, align 1, !dbg !1880, !tbaa !92
  %462 = zext i8 %461 to i64, !dbg !1881
  %463 = or i64 %459, %462, !dbg !1882
  %464 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1884
  store i8* %464, i8** %11, align 8, !dbg !1884, !tbaa !271
  %465 = add i64 %441, -5, !dbg !1884
  store i64 %465, i64* %5, align 8, !dbg !1884, !tbaa !276
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %463) #7, !dbg !1886
  br label %519, !dbg !1887

; <label>:466:                                    ; preds = %10
  %467 = icmp sgt i8 %13, -1, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br i1 %467, label %468, label %474, !dbg !1889

; <label>:468:                                    ; preds = %466
  %469 = zext i8 %13 to i64, !dbg !1890
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %469) #6, !dbg !1890
  %470 = load i8*, i8** %11, align 8, !dbg !1892, !tbaa !271
  %471 = getelementptr inbounds i8, i8* %470, i64 1, !dbg !1892
  store i8* %471, i8** %11, align 8, !dbg !1892, !tbaa !271
  %472 = load i64, i64* %5, align 8, !dbg !1892, !tbaa !276
  %473 = add i64 %472, -1, !dbg !1892
  store i64 %473, i64* %5, align 8, !dbg !1892, !tbaa !276
  br label %519, !dbg !1894

; <label>:474:                                    ; preds = %466
  %475 = and i32 %14, 224, !dbg !1895
  %476 = icmp eq i32 %475, 224, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %476, label %477, label %483, !dbg !1897

; <label>:477:                                    ; preds = %474
  %478 = sext i8 %13 to i64, !dbg !1898
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %478) #6, !dbg !1900
  %479 = load i8*, i8** %11, align 8, !dbg !1901, !tbaa !271
  %480 = getelementptr inbounds i8, i8* %479, i64 1, !dbg !1901
  store i8* %480, i8** %11, align 8, !dbg !1901, !tbaa !271
  %481 = load i64, i64* %5, align 8, !dbg !1901, !tbaa !276
  %482 = add i64 %481, -1, !dbg !1901
  store i64 %482, i64* %5, align 8, !dbg !1901, !tbaa !276
  br label %519, !dbg !1903

; <label>:483:                                    ; preds = %474
  %484 = icmp eq i32 %475, 160, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %484, label %485, label %500, !dbg !1905

; <label>:485:                                    ; preds = %483
  %486 = and i32 %14, 31, !dbg !1906
  %487 = zext i32 %486 to i64, !dbg !1907
  %488 = load i64, i64* %5, align 8, !dbg !1909, !tbaa !276
  %489 = add nuw nsw i64 %487, 1, !dbg !1909
  %490 = icmp ugt i64 %488, %487, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br i1 %490, label %493, label %491, !dbg !1912

; <label>:491:                                    ; preds = %485
  %492 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1913
  store i32 1, i32* %492, align 8, !dbg !1913, !tbaa !279
  br label %499, !dbg !1913

; <label>:493:                                    ; preds = %485
  %494 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1915
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %494, i64 %487) #6, !dbg !1916
  %495 = load i8*, i8** %11, align 8, !dbg !1917, !tbaa !271
  %496 = getelementptr inbounds i8, i8* %495, i64 %489, !dbg !1917
  store i8* %496, i8** %11, align 8, !dbg !1917, !tbaa !271
  %497 = load i64, i64* %5, align 8, !dbg !1917, !tbaa !276
  %498 = sub i64 %497, %489, !dbg !1917
  store i64 %498, i64* %5, align 8, !dbg !1917, !tbaa !276
  br label %499, !dbg !1919

; <label>:499:                                    ; preds = %493, %491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  br label %519

; <label>:500:                                    ; preds = %483
  %501 = and i32 %14, 240, !dbg !1921
  %502 = icmp eq i32 %501, 144, !dbg !1922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  br i1 %502, label %503, label %509, !dbg !1923

; <label>:503:                                    ; preds = %500
  %504 = and i32 %14, 15, !dbg !1924
  %505 = zext i32 %504 to i64, !dbg !1925
  %506 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1927
  store i8* %506, i8** %11, align 8, !dbg !1927, !tbaa !271
  %507 = load i64, i64* %5, align 8, !dbg !1927, !tbaa !276
  %508 = add i64 %507, -1, !dbg !1927
  store i64 %508, i64* %5, align 8, !dbg !1927, !tbaa !276
  tail call void @mp_decode_to_lua_array(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %505) #7, !dbg !1929
  br label %519, !dbg !1930

; <label>:509:                                    ; preds = %500
  %510 = icmp eq i32 %501, 128, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  br i1 %510, label %511, label %517, !dbg !1932

; <label>:511:                                    ; preds = %509
  %512 = and i32 %14, 15, !dbg !1933
  %513 = zext i32 %512 to i64, !dbg !1934
  %514 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1936
  store i8* %514, i8** %11, align 8, !dbg !1936, !tbaa !271
  %515 = load i64, i64* %5, align 8, !dbg !1936, !tbaa !276
  %516 = add i64 %515, -1, !dbg !1936
  store i64 %516, i64* %5, align 8, !dbg !1936, !tbaa !276
  tail call void @mp_decode_to_lua_hash(%struct.lua_State* %0, %struct.mp_cur* nonnull %1, i64 %513) #7, !dbg !1938
  br label %519, !dbg !1939

; <label>:517:                                    ; preds = %509
  %518 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2, !dbg !1940
  store i32 2, i32* %518, align 8, !dbg !1942, !tbaa !279
  br label %519

; <label>:519:                                    ; preds = %499, %381, %346, %468, %511, %517, %503, %477, %8, %18, %31, %44, %62, %81, %109, %138, %186, %250, %274, %305, %325, %350, %385, %401, %427, %443, %445, %429, %403, %387, %276, %252, %242, %237, %232, %188, %140, %111, %83, %64, %46, %33, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  ret void, !dbg !1943
}

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mp_decode_to_lua_hash(%struct.lua_State*, %struct.mp_cur*, i64) local_unnamed_addr #0 !dbg !1944 {
  %4 = icmp ult i64 %2, 4294967296, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  br i1 %4, label %6, label %5, !dbg !1952

; <label>:5:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 566, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.mp_decode_to_lua_hash, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1952
  unreachable

; <label>:6:                                      ; preds = %3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  %7 = icmp eq i64 %2, 0, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br i1 %7, label %20, label %8, !dbg !1954

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %1, i64 0, i32 2
  br label %10, !dbg !1954

; <label>:10:                                     ; preds = %8, %18
  %11 = phi i64 [ %2, %8 ], [ %12, %18 ]
  %12 = add i64 %11, -1, !dbg !1955
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* %1) #7, !dbg !1956
  %13 = load i32, i32* %9, align 8, !dbg !1958, !tbaa !279
  %14 = icmp eq i32 %13, 0, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  br i1 %14, label %15, label %20, !dbg !1961

; <label>:15:                                     ; preds = %10
  tail call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %1) #7, !dbg !1962
  %16 = load i32, i32* %9, align 8, !dbg !1963, !tbaa !279
  %17 = icmp eq i32 %16, 0, !dbg !1965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1966
  br i1 %17, label %18, label %20, !dbg !1966

; <label>:18:                                     ; preds = %15
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #6, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  %19 = icmp eq i64 %12, 0, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br i1 %19, label %20, label %10, !dbg !1954, !llvm.loop !1968

; <label>:20:                                     ; preds = %18, %10, %15, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  ret void, !dbg !1970
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_full(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1971 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mp_cur, align 8
  %6 = bitcast i64* %4 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1989
  %7 = bitcast %struct.mp_cur* %5 to i8*, !dbg !1990
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !1990
  %8 = icmp eq i32 %1, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %8, label %9, label %11, !dbg !1992

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i32 %2, 0, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %11

; <label>:11:                                     ; preds = %3, %9
  %12 = phi i1 [ false, %3 ], [ %10, %9 ], !dbg !1994
  %13 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #6, !dbg !1996
  %14 = or i32 %2, %1, !dbg !1998
  %15 = icmp slt i32 %14, 0, !dbg !1998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1998
  br i1 %15, label %16, label %19, !dbg !1998

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !2000, !tbaa !159
  %18 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %2, i64 %17) #6, !dbg !2001
  br label %65, !dbg !2002

; <label>:19:                                     ; preds = %11
  %20 = sext i32 %2 to i64, !dbg !2003
  %21 = load i64, i64* %4, align 8, !dbg !2005, !tbaa !159
  %22 = icmp ult i64 %21, %20, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %22, label %23, label %25, !dbg !2007

; <label>:23:                                     ; preds = %19
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %2, i64 %21) #6, !dbg !2008
  br label %65, !dbg !2009

; <label>:25:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  br i1 %12, label %26, label %27, !dbg !2010

; <label>:26:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  br label %27, !dbg !2011

; <label>:27:                                     ; preds = %26, %25
  %28 = phi i32 [ 2147483647, %26 ], [ %1, %25 ]
  %29 = getelementptr inbounds i8, i8* %13, i64 %20, !dbg !2013
  %30 = sub i64 %21, %20, !dbg !2014
  %31 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 0, !dbg !2020
  store i8* %29, i8** %31, align 8, !dbg !2021, !tbaa !271
  %32 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 1, !dbg !2022
  store i64 %30, i64* %32, align 8, !dbg !2023, !tbaa !276
  %33 = getelementptr inbounds %struct.mp_cur, %struct.mp_cur* %5, i64 0, i32 2, !dbg !2024
  store i32 0, i32* %33, align 8, !dbg !2025, !tbaa !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2028
  %34 = icmp eq i64 %30, 0, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %34, label %53, label %35, !dbg !2032

; <label>:35:                                     ; preds = %27
  %36 = icmp sgt i32 %28, 0, !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  br i1 %36, label %39, label %53, !dbg !2034

; <label>:37:                                     ; preds = %49
  %38 = icmp slt i32 %50, %28, !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  br i1 %38, label %39, label %53, !dbg !2034, !llvm.loop !2035

; <label>:39:                                     ; preds = %35, %37
  %40 = phi i32 [ %50, %37 ], [ 0, %35 ]
  call void @mp_decode_to_lua_type(%struct.lua_State* %0, %struct.mp_cur* nonnull %5) #7, !dbg !2037
  %41 = load i32, i32* %33, align 8, !dbg !2039, !tbaa !279
  %42 = icmp eq i32 %41, 1, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2042
  br i1 %42, label %43, label %45, !dbg !2042

; <label>:43:                                     ; preds = %39
  %44 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2043
  br label %65, !dbg !2045

; <label>:45:                                     ; preds = %39
  %46 = icmp eq i32 %41, 2, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %46, label %47, label %49, !dbg !2048

; <label>:47:                                     ; preds = %45
  %48 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2049
  br label %65, !dbg !2051

; <label>:49:                                     ; preds = %45
  %50 = add nuw nsw i32 %40, 1, !dbg !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  %51 = load i64, i64* %32, align 8, !dbg !2054, !tbaa !276
  %52 = icmp eq i64 %51, 0, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %52, label %53, label %37, !dbg !2032, !llvm.loop !2035

; <label>:53:                                     ; preds = %49, %37, %35, %27
  %54 = phi i64 [ 0, %27 ], [ %30, %35 ], [ %51, %37 ], [ 0, %49 ], !dbg !2054
  %55 = phi i32 [ 0, %27 ], [ 0, %35 ], [ %50, %37 ], [ %50, %49 ], !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %12, label %65, label %56, !dbg !2056

; <label>:56:                                     ; preds = %53
  %57 = load i64, i64* %4, align 8, !dbg !2057, !tbaa !159
  %58 = sub i64 %57, %54, !dbg !2058
  call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2059
  %59 = load i64, i64* %32, align 8, !dbg !2060, !tbaa !276
  %60 = icmp eq i64 %59, 0, !dbg !2061
  %61 = shl i64 %58, 32, !dbg !2062
  %62 = ashr exact i64 %61, 32, !dbg !2062
  %63 = select i1 %60, i64 -1, i64 %62, !dbg !2062
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %63) #6, !dbg !2063
  call void @lua_insert(%struct.lua_State* %0, i32 2) #6, !dbg !2064
  %64 = add nuw nsw i32 %55, 1, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br label %65, !dbg !2066

; <label>:65:                                     ; preds = %53, %56, %47, %43, %23, %16
  %66 = phi i32 [ %18, %16 ], [ %24, %23 ], [ %44, %43 ], [ %48, %47 ], [ %55, %53 ], [ %64, %56 ], !dbg !1994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  ret i32 %66, !dbg !2068
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack(%struct.lua_State*) #0 !dbg !2069 {
  %2 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  ret i32 %2, !dbg !2074
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_one(%struct.lua_State*) #0 !dbg !2075 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6, !dbg !2080
  %3 = trunc i64 %2 to i32, !dbg !2080
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2082
  %5 = sub i32 0, %4, !dbg !2082
  tail call void @lua_settop(%struct.lua_State* %0, i32 %5) #6, !dbg !2082
  %6 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 1, i32 %3) #7, !dbg !2083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2084
  ret i32 %6, !dbg !2084
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_unpack_limit(%struct.lua_State*) #0 !dbg !2085 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6, !dbg !2091
  %3 = trunc i64 %2 to i32, !dbg !2091
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #6, !dbg !2093
  %5 = trunc i64 %4 to i32, !dbg !2093
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2095
  %7 = sub i32 0, %6, !dbg !2095
  tail call void @lua_settop(%struct.lua_State* %0, i32 %7) #6, !dbg !2095
  %8 = tail call i32 @mp_unpack_full(%struct.lua_State* %0, i32 %3, i32 %5) #7, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  ret i32 %8, !dbg !2097
}

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @mp_safe(%struct.lua_State*) #0 !dbg !2098 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2105
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #6, !dbg !2107
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #6, !dbg !2108
  %3 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %2, i32 -1, i32 0) #6, !dbg !2109
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6, !dbg !2111
  %5 = icmp eq i32 %3, 0, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  br i1 %5, label %7, label %6, !dbg !2115

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !2116
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #6, !dbg !2118
  br label %7, !dbg !2119

; <label>:7:                                      ; preds = %1, %6
  %8 = phi i32 [ 2, %6 ], [ %4, %1 ], !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  ret i32 %8, !dbg !2122
}

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_create(%struct.lua_State*) local_unnamed_addr #0 !dbg !2123 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_pack, i32 0) #6, !dbg !2133
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack, i32 0) #6, !dbg !2133
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_one, i32 0) #6, !dbg !2133
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_unpack_limit, i32 0) #6, !dbg !2133
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 8) #6, !dbg !2138
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2139
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i64 18) #6, !dbg !2140
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2141
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i64 40) #6, !dbg !2142
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2143
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i64 36) #6, !dbg !2144
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  ret i32 1, !dbg !2146
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack(%struct.lua_State*) local_unnamed_addr #0 !dbg !2147 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #7, !dbg !2151
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2152
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  ret i32 1, !dbg !2154
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cmsgpack_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !2155 {
  %2 = tail call i32 @luaopen_create(%struct.lua_State* %0) #6, !dbg !2162
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2163
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2170
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2173
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2170
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2173
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2170
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2173
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2170
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @mp_safe, i32 1) #6, !dbg !2173
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6, !dbg !2176
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  ret i32 1, !dbg !2178
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
!83 = !DILocation(line: 76, column: 9, scope: !67)
!84 = !DILocation(line: 77, column: 9, scope: !67)
!85 = !DILocation(line: 78, column: 5, scope: !67)
!86 = !DILocation(line: 71, column: 44, scope: !67)
!87 = !DILocation(line: 71, column: 22, scope: !67)
!88 = !DILocation(line: 0, scope: !89)
!89 = distinct !DILexicalBlock(scope: !67, file: !3, line: 78, column: 18)
!90 = !DILocation(line: 78, column: 14, scope: !67)
!91 = !DILocation(line: 79, column: 15, scope: !89)
!92 = !{!93, !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 72, column: 21, scope: !67)
!96 = !DILocation(line: 80, column: 14, scope: !89)
!97 = !DILocation(line: 80, column: 12, scope: !89)
!98 = !DILocation(line: 81, column: 12, scope: !89)
!99 = !DILocation(line: 82, column: 10, scope: !89)
!100 = distinct !{!100, !85, !101}
!101 = !DILocation(line: 84, column: 5, scope: !67)
!102 = !DILocation(line: 85, column: 1, scope: !67)
!103 = distinct !DISubprogram(name: "mp_realloc", scope: !3, file: !3, line: 98, type: !104, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!20, !58, !20, !14, !14}
!106 = !{!107, !108, !109, !110, !111, !115}
!107 = !DILocalVariable(name: "L", arg: 1, scope: !103, file: !3, line: 98, type: !58)
!108 = !DILocalVariable(name: "target", arg: 2, scope: !103, file: !3, line: 98, type: !20)
!109 = !DILocalVariable(name: "osize", arg: 3, scope: !103, file: !3, line: 98, type: !14)
!110 = !DILocalVariable(name: "nsize", arg: 4, scope: !103, file: !3, line: 98, type: !14)
!111 = !DILocalVariable(name: "local_realloc", scope: !103, file: !3, line: 99, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!20, !20, !20, !14, !14}
!115 = !DILocalVariable(name: "ud", scope: !103, file: !3, line: 100, type: !20)
!116 = !DILocation(line: 98, column: 29, scope: !103)
!117 = !DILocation(line: 98, column: 38, scope: !103)
!118 = !DILocation(line: 98, column: 53, scope: !103)
!119 = !DILocation(line: 98, column: 66, scope: !103)
!120 = !DILocation(line: 99, column: 13, scope: !103)
!121 = !DILocation(line: 100, column: 5, scope: !103)
!122 = !DILocation(line: 100, column: 11, scope: !103)
!123 = !DILocation(line: 102, column: 21, scope: !103)
!124 = !DILocation(line: 104, column: 26, scope: !103)
!125 = !{!126, !126, i64 0}
!126 = !{!"any pointer", !93, i64 0}
!127 = !DILocation(line: 104, column: 12, scope: !103)
!128 = !DILocation(line: 105, column: 1, scope: !103)
!129 = !DILocation(line: 104, column: 5, scope: !103)
!130 = distinct !DISubprogram(name: "mp_buf_new", scope: !3, file: !3, line: 107, type: !131, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!8, !58}
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "L", arg: 1, scope: !130, file: !3, line: 107, type: !58)
!135 = !DILocalVariable(name: "buf", scope: !130, file: !3, line: 108, type: !8)
!136 = !DILocation(line: 107, column: 31, scope: !130)
!137 = !DILocation(line: 108, column: 13, scope: !130)
!138 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !139)
!139 = distinct !DILocation(line: 111, column: 20, scope: !130)
!140 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !139)
!141 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !139)
!142 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !139)
!143 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !139)
!144 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !139)
!145 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !139)
!146 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !139)
!147 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !139)
!148 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !139)
!149 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !139)
!150 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !139)
!151 = !DILocation(line: 111, column: 11, scope: !130)
!152 = !DILocation(line: 113, column: 10, scope: !130)
!153 = !DILocation(line: 113, column: 12, scope: !130)
!154 = !{!155, !126, i64 0}
!155 = !{!"mp_buf", !126, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"long", !93, i64 0}
!157 = !DILocation(line: 114, column: 10, scope: !130)
!158 = !DILocation(line: 114, column: 14, scope: !130)
!159 = !{!156, !156, i64 0}
!160 = !DILocation(line: 115, column: 5, scope: !130)
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
!189 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !190)
!190 = distinct !DILocation(line: 122, column: 34, scope: !170)
!191 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !190)
!192 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !190)
!193 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !190)
!194 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !190)
!195 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !190)
!196 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !190)
!197 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !190)
!198 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !190)
!199 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !190)
!200 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !190)
!201 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !190)
!202 = !DILocation(line: 122, column: 16, scope: !170)
!203 = !DILocation(line: 123, column: 36, scope: !170)
!204 = !DILocation(line: 123, column: 29, scope: !170)
!205 = !DILocation(line: 123, column: 19, scope: !170)
!206 = !DILocation(line: 124, column: 5, scope: !170)
!207 = !DILocation(line: 125, column: 18, scope: !161)
!208 = !DILocation(line: 125, column: 5, scope: !161)
!209 = !DILocation(line: 126, column: 14, scope: !161)
!210 = !DILocation(line: 127, column: 15, scope: !161)
!211 = !DILocation(line: 128, column: 1, scope: !161)
!212 = distinct !DISubprogram(name: "mp_buf_free", scope: !3, file: !3, line: 130, type: !213, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !58, !8}
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "L", arg: 1, scope: !212, file: !3, line: 130, type: !58)
!217 = !DILocalVariable(name: "buf", arg: 2, scope: !212, file: !3, line: 130, type: !8)
!218 = !DILocation(line: 130, column: 29, scope: !212)
!219 = !DILocation(line: 130, column: 40, scope: !212)
!220 = !DILocation(line: 131, column: 24, scope: !212)
!221 = !DILocation(line: 131, column: 32, scope: !212)
!222 = !DILocation(line: 131, column: 43, scope: !212)
!223 = !DILocation(line: 131, column: 36, scope: !212)
!224 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !225)
!225 = distinct !DILocation(line: 131, column: 5, scope: !212)
!226 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !225)
!227 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !225)
!228 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !225)
!229 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !225)
!230 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !225)
!231 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !225)
!232 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !225)
!233 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !225)
!234 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !225)
!235 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !225)
!236 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !225)
!237 = !DILocation(line: 132, column: 19, scope: !212)
!238 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !239)
!239 = distinct !DILocation(line: 132, column: 5, scope: !212)
!240 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !239)
!241 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !239)
!242 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !239)
!243 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !239)
!244 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !239)
!245 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !239)
!246 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !239)
!247 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !239)
!248 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !239)
!249 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !239)
!250 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !239)
!251 = !DILocation(line: 133, column: 1, scope: !212)
!252 = distinct !DISubprogram(name: "mp_cur_init", scope: !3, file: !3, line: 154, type: !253, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !262)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !23, !14}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_cur", file: !3, line: 152, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mp_cur", file: !3, line: 148, size: 192, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !257, file: !3, line: 149, baseType: !23, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !257, file: !3, line: 150, baseType: !14, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !257, file: !3, line: 151, baseType: !30, size: 32, offset: 128)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "cursor", arg: 1, scope: !252, file: !3, line: 154, type: !255)
!264 = !DILocalVariable(name: "s", arg: 2, scope: !252, file: !3, line: 154, type: !23)
!265 = !DILocalVariable(name: "len", arg: 3, scope: !252, file: !3, line: 154, type: !14)
!266 = !DILocation(line: 154, column: 26, scope: !252)
!267 = !DILocation(line: 154, column: 55, scope: !252)
!268 = !DILocation(line: 154, column: 65, scope: !252)
!269 = !DILocation(line: 155, column: 13, scope: !252)
!270 = !DILocation(line: 155, column: 15, scope: !252)
!271 = !{!272, !126, i64 0}
!272 = !{!"mp_cur", !126, i64 0, !156, i64 8, !273, i64 16}
!273 = !{!"int", !93, i64 0}
!274 = !DILocation(line: 156, column: 13, scope: !252)
!275 = !DILocation(line: 156, column: 18, scope: !252)
!276 = !{!272, !156, i64 8}
!277 = !DILocation(line: 157, column: 13, scope: !252)
!278 = !DILocation(line: 157, column: 17, scope: !252)
!279 = !{!272, !273, i64 16}
!280 = !DILocation(line: 158, column: 1, scope: !252)
!281 = distinct !DISubprogram(name: "mp_encode_bytes", scope: !3, file: !3, line: 174, type: !162, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283, !284, !285, !286, !287, !289}
!283 = !DILocalVariable(name: "L", arg: 1, scope: !281, file: !3, line: 174, type: !58)
!284 = !DILocalVariable(name: "buf", arg: 2, scope: !281, file: !3, line: 174, type: !8)
!285 = !DILocalVariable(name: "s", arg: 3, scope: !281, file: !3, line: 174, type: !23)
!286 = !DILocalVariable(name: "len", arg: 4, scope: !281, file: !3, line: 174, type: !14)
!287 = !DILocalVariable(name: "hdr", scope: !281, file: !3, line: 175, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 40, elements: !61)
!289 = !DILocalVariable(name: "hdrlen", scope: !281, file: !3, line: 176, type: !30)
!290 = !DILocation(line: 174, column: 33, scope: !281)
!291 = !DILocation(line: 174, column: 44, scope: !281)
!292 = !DILocation(line: 174, column: 70, scope: !281)
!293 = !DILocation(line: 174, column: 80, scope: !281)
!294 = !DILocation(line: 175, column: 5, scope: !281)
!295 = !DILocation(line: 175, column: 19, scope: !281)
!296 = !DILocation(line: 178, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !281, file: !3, line: 178, column: 9)
!298 = !DILocation(line: 178, column: 9, scope: !281)
!299 = !DILocation(line: 179, column: 18, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !3, line: 178, column: 19)
!301 = !DILocation(line: 179, column: 16, scope: !300)
!302 = !DILocation(line: 176, column: 9, scope: !281)
!303 = !DILocation(line: 181, column: 5, scope: !300)
!304 = !DILocation(line: 181, column: 20, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !3, line: 181, column: 16)
!306 = !DILocation(line: 181, column: 16, scope: !297)
!307 = !DILocation(line: 182, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 181, column: 29)
!309 = !DILocation(line: 183, column: 18, scope: !308)
!310 = !DILocation(line: 183, column: 9, scope: !308)
!311 = !DILocation(line: 183, column: 16, scope: !308)
!312 = !DILocation(line: 185, column: 5, scope: !308)
!313 = !DILocation(line: 185, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !305, file: !3, line: 185, column: 16)
!315 = !DILocation(line: 185, column: 16, scope: !305)
!316 = !DILocation(line: 186, column: 16, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 185, column: 31)
!318 = !DILocation(line: 187, column: 30, scope: !317)
!319 = !DILocation(line: 187, column: 18, scope: !317)
!320 = !DILocation(line: 187, column: 9, scope: !317)
!321 = !DILocation(line: 187, column: 16, scope: !317)
!322 = !DILocation(line: 188, column: 18, scope: !317)
!323 = !DILocation(line: 188, column: 9, scope: !317)
!324 = !DILocation(line: 188, column: 16, scope: !317)
!325 = !DILocation(line: 190, column: 5, scope: !317)
!326 = !DILocation(line: 191, column: 16, scope: !327)
!327 = distinct !DILexicalBlock(scope: !314, file: !3, line: 190, column: 12)
!328 = !DILocation(line: 192, column: 34, scope: !327)
!329 = !DILocation(line: 192, column: 18, scope: !327)
!330 = !DILocation(line: 192, column: 9, scope: !327)
!331 = !DILocation(line: 192, column: 16, scope: !327)
!332 = !DILocation(line: 193, column: 32, scope: !327)
!333 = !DILocation(line: 193, column: 18, scope: !327)
!334 = !DILocation(line: 193, column: 9, scope: !327)
!335 = !DILocation(line: 193, column: 16, scope: !327)
!336 = !DILocation(line: 194, column: 30, scope: !327)
!337 = !DILocation(line: 194, column: 18, scope: !327)
!338 = !DILocation(line: 194, column: 9, scope: !327)
!339 = !DILocation(line: 194, column: 16, scope: !327)
!340 = !DILocation(line: 195, column: 18, scope: !327)
!341 = !DILocation(line: 195, column: 9, scope: !327)
!342 = !DILocation(line: 195, column: 16, scope: !327)
!343 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !344)
!344 = distinct !DILocation(line: 198, column: 5, scope: !281)
!345 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !344)
!346 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !344)
!347 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !344)
!348 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !344)
!349 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !344)
!350 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !344)
!351 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !344)
!352 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !344)
!353 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !344)
!354 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !344)
!355 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !344)
!356 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !344)
!357 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !344)
!358 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !344)
!359 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !360)
!360 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !344)
!361 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !360)
!362 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !360)
!363 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !360)
!364 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !360)
!365 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !360)
!366 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !360)
!367 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !360)
!368 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !360)
!369 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !360)
!370 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !360)
!371 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !360)
!372 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !344)
!373 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !344)
!374 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !344)
!375 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !344)
!376 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !344)
!377 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !344)
!378 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !344)
!379 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !344)
!380 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !344)
!381 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !344)
!382 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !383)
!383 = distinct !DILocation(line: 199, column: 5, scope: !281)
!384 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !383)
!385 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !383)
!386 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !383)
!387 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !383)
!388 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !383)
!389 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !383)
!390 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !383)
!391 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !383)
!392 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !383)
!393 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !383)
!394 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !383)
!395 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !383)
!396 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !397)
!397 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !383)
!398 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !397)
!399 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !397)
!400 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !397)
!401 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !397)
!402 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !397)
!403 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !397)
!404 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !397)
!405 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !397)
!406 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !397)
!407 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !397)
!408 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !397)
!409 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !383)
!410 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !383)
!411 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !383)
!412 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !383)
!413 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !383)
!414 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !383)
!415 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !383)
!416 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !383)
!417 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !383)
!418 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !383)
!419 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !383)
!420 = !DILocation(line: 200, column: 1, scope: !281)
!421 = distinct !DISubprogram(name: "mp_encode_double", scope: !3, file: !3, line: 203, type: !422, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !58, !8, !21}
!424 = !{!425, !426, !427, !428, !432}
!425 = !DILocalVariable(name: "L", arg: 1, scope: !421, file: !3, line: 203, type: !58)
!426 = !DILocalVariable(name: "buf", arg: 2, scope: !421, file: !3, line: 203, type: !8)
!427 = !DILocalVariable(name: "d", arg: 3, scope: !421, file: !3, line: 203, type: !21)
!428 = !DILocalVariable(name: "b", scope: !421, file: !3, line: 204, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 72, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 9)
!432 = !DILocalVariable(name: "f", scope: !421, file: !3, line: 205, type: !433)
!433 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!434 = !DILocation(line: 203, column: 34, scope: !421)
!435 = !DILocation(line: 203, column: 45, scope: !421)
!436 = !DILocation(line: 203, column: 57, scope: !421)
!437 = !{!438, !438, i64 0}
!438 = !{!"double", !93, i64 0}
!439 = !DILocation(line: 204, column: 5, scope: !421)
!440 = !DILocation(line: 204, column: 19, scope: !421)
!441 = !DILocation(line: 205, column: 5, scope: !421)
!442 = !DILocation(line: 205, column: 15, scope: !421)
!443 = !DILocation(line: 205, column: 11, scope: !421)
!444 = !{!445, !445, i64 0}
!445 = !{!"float", !93, i64 0}
!446 = !DILocation(line: 208, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !421, file: !3, line: 208, column: 9)
!448 = !DILocation(line: 208, column: 11, scope: !447)
!449 = !DILocation(line: 208, column: 9, scope: !421)
!450 = !DILocation(line: 209, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 208, column: 25)
!452 = !DILocation(line: 210, column: 17, scope: !451)
!453 = !DILocation(line: 210, column: 9, scope: !451)
!454 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !455)
!455 = distinct !DILocation(line: 211, column: 9, scope: !451)
!456 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !455)
!457 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !455)
!458 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !455)
!459 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !455)
!460 = !DILocation(line: 76, column: 9, scope: !67, inlinedAt: !455)
!461 = !DILocation(line: 78, column: 5, scope: !67, inlinedAt: !455)
!462 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !455)
!463 = !DILocation(line: 0, scope: !89, inlinedAt: !455)
!464 = !DILocation(line: 79, column: 15, scope: !89, inlinedAt: !455)
!465 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !455)
!466 = !DILocation(line: 80, column: 14, scope: !89, inlinedAt: !455)
!467 = !DILocation(line: 80, column: 12, scope: !89, inlinedAt: !455)
!468 = !DILocation(line: 81, column: 12, scope: !89, inlinedAt: !455)
!469 = !DILocation(line: 82, column: 10, scope: !89, inlinedAt: !455)
!470 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !455)
!471 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !472)
!472 = distinct !DILocation(line: 212, column: 9, scope: !451)
!473 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !472)
!474 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !472)
!475 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !472)
!476 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !472)
!477 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !472)
!478 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !472)
!479 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !472)
!480 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !472)
!481 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !472)
!482 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !472)
!483 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !472)
!484 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !472)
!485 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !472)
!486 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !487)
!487 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !472)
!488 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !487)
!489 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !487)
!490 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !487)
!491 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !487)
!492 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !487)
!493 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !487)
!494 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !487)
!495 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !487)
!496 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !487)
!497 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !487)
!498 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !487)
!499 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !472)
!500 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !472)
!501 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !472)
!502 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !472)
!503 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !472)
!504 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !472)
!505 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !472)
!506 = !DILocation(line: 213, column: 5, scope: !451)
!507 = !DILocation(line: 214, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 213, column: 32)
!509 = distinct !DILexicalBlock(scope: !447, file: !3, line: 213, column: 16)
!510 = !DILocation(line: 215, column: 17, scope: !508)
!511 = !DILocation(line: 215, column: 20, scope: !508)
!512 = !DILocation(line: 215, column: 9, scope: !508)
!513 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !514)
!514 = distinct !DILocation(line: 216, column: 9, scope: !508)
!515 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !514)
!516 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !514)
!517 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !514)
!518 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !514)
!519 = !DILocation(line: 76, column: 9, scope: !67, inlinedAt: !514)
!520 = !DILocation(line: 78, column: 5, scope: !67, inlinedAt: !514)
!521 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !514)
!522 = !DILocation(line: 0, scope: !89, inlinedAt: !514)
!523 = !DILocation(line: 79, column: 15, scope: !89, inlinedAt: !514)
!524 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !514)
!525 = !DILocation(line: 80, column: 14, scope: !89, inlinedAt: !514)
!526 = !DILocation(line: 80, column: 12, scope: !89, inlinedAt: !514)
!527 = !DILocation(line: 81, column: 12, scope: !89, inlinedAt: !514)
!528 = !DILocation(line: 82, column: 10, scope: !89, inlinedAt: !514)
!529 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !514)
!530 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !531)
!531 = distinct !DILocation(line: 217, column: 9, scope: !508)
!532 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !531)
!533 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !531)
!534 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !531)
!535 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !531)
!536 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !531)
!537 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !531)
!538 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !531)
!539 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !531)
!540 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !531)
!541 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !531)
!542 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !531)
!543 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !531)
!544 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !531)
!545 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !546)
!546 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !531)
!547 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !546)
!548 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !546)
!549 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !546)
!550 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !546)
!551 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !546)
!552 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !546)
!553 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !546)
!554 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !546)
!555 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !546)
!556 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !546)
!557 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !546)
!558 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !531)
!559 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !531)
!560 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !531)
!561 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !531)
!562 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !531)
!563 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !531)
!564 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !531)
!565 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !531)
!566 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !531)
!567 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !531)
!568 = !DILocation(line: 219, column: 1, scope: !421)
!569 = distinct !DISubprogram(name: "mp_encode_int", scope: !3, file: !3, line: 221, type: !570, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !58, !8, !25}
!572 = !{!573, !574, !575, !576, !577}
!573 = !DILocalVariable(name: "L", arg: 1, scope: !569, file: !3, line: 221, type: !58)
!574 = !DILocalVariable(name: "buf", arg: 2, scope: !569, file: !3, line: 221, type: !8)
!575 = !DILocalVariable(name: "n", arg: 3, scope: !569, file: !3, line: 221, type: !25)
!576 = !DILocalVariable(name: "b", scope: !569, file: !3, line: 222, type: !429)
!577 = !DILocalVariable(name: "enclen", scope: !569, file: !3, line: 223, type: !30)
!578 = !DILocation(line: 221, column: 31, scope: !569)
!579 = !DILocation(line: 221, column: 42, scope: !569)
!580 = !DILocation(line: 221, column: 55, scope: !569)
!581 = !DILocation(line: 222, column: 5, scope: !569)
!582 = !DILocation(line: 222, column: 19, scope: !569)
!583 = !DILocation(line: 225, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !569, file: !3, line: 225, column: 9)
!585 = !DILocation(line: 225, column: 9, scope: !569)
!586 = !DILocation(line: 226, column: 15, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !3, line: 226, column: 13)
!588 = distinct !DILexicalBlock(scope: !584, file: !3, line: 225, column: 17)
!589 = !DILocation(line: 226, column: 13, scope: !588)
!590 = !DILocation(line: 227, column: 20, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 226, column: 23)
!592 = !DILocation(line: 227, column: 18, scope: !591)
!593 = !DILocation(line: 223, column: 9, scope: !569)
!594 = !DILocation(line: 229, column: 9, scope: !591)
!595 = !DILocation(line: 229, column: 22, scope: !596)
!596 = distinct !DILexicalBlock(scope: !587, file: !3, line: 229, column: 20)
!597 = !DILocation(line: 229, column: 20, scope: !587)
!598 = !DILocation(line: 230, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 229, column: 31)
!600 = !DILocation(line: 231, column: 20, scope: !599)
!601 = !DILocation(line: 231, column: 13, scope: !599)
!602 = !DILocation(line: 231, column: 18, scope: !599)
!603 = !DILocation(line: 233, column: 9, scope: !599)
!604 = !DILocation(line: 233, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !596, file: !3, line: 233, column: 20)
!606 = !DILocation(line: 233, column: 20, scope: !596)
!607 = !DILocation(line: 234, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 233, column: 33)
!609 = !DILocation(line: 235, column: 33, scope: !608)
!610 = !DILocation(line: 235, column: 20, scope: !608)
!611 = !DILocation(line: 235, column: 13, scope: !608)
!612 = !DILocation(line: 235, column: 18, scope: !608)
!613 = !DILocation(line: 236, column: 20, scope: !608)
!614 = !DILocation(line: 236, column: 13, scope: !608)
!615 = !DILocation(line: 236, column: 18, scope: !608)
!616 = !DILocation(line: 238, column: 9, scope: !608)
!617 = !DILocation(line: 238, column: 22, scope: !618)
!618 = distinct !DILexicalBlock(scope: !605, file: !3, line: 238, column: 20)
!619 = !DILocation(line: 238, column: 20, scope: !605)
!620 = !DILocation(line: 239, column: 18, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 238, column: 39)
!622 = !DILocation(line: 240, column: 37, scope: !621)
!623 = !DILocation(line: 240, column: 20, scope: !621)
!624 = !DILocation(line: 240, column: 13, scope: !621)
!625 = !DILocation(line: 240, column: 18, scope: !621)
!626 = !DILocation(line: 241, column: 35, scope: !621)
!627 = !DILocation(line: 241, column: 20, scope: !621)
!628 = !DILocation(line: 241, column: 13, scope: !621)
!629 = !DILocation(line: 241, column: 18, scope: !621)
!630 = !DILocation(line: 242, column: 33, scope: !621)
!631 = !DILocation(line: 242, column: 20, scope: !621)
!632 = !DILocation(line: 242, column: 13, scope: !621)
!633 = !DILocation(line: 242, column: 18, scope: !621)
!634 = !DILocation(line: 243, column: 20, scope: !621)
!635 = !DILocation(line: 243, column: 13, scope: !621)
!636 = !DILocation(line: 243, column: 18, scope: !621)
!637 = !DILocation(line: 245, column: 9, scope: !621)
!638 = !DILocation(line: 246, column: 18, scope: !639)
!639 = distinct !DILexicalBlock(scope: !618, file: !3, line: 245, column: 16)
!640 = !DILocation(line: 247, column: 47, scope: !639)
!641 = !DILocation(line: 247, column: 20, scope: !639)
!642 = !DILocation(line: 247, column: 13, scope: !639)
!643 = !DILocation(line: 247, column: 18, scope: !639)
!644 = !DILocation(line: 248, column: 45, scope: !639)
!645 = !DILocation(line: 248, column: 20, scope: !639)
!646 = !DILocation(line: 248, column: 13, scope: !639)
!647 = !DILocation(line: 248, column: 18, scope: !639)
!648 = !DILocation(line: 249, column: 43, scope: !639)
!649 = !DILocation(line: 249, column: 20, scope: !639)
!650 = !DILocation(line: 249, column: 13, scope: !639)
!651 = !DILocation(line: 249, column: 18, scope: !639)
!652 = !DILocation(line: 250, column: 41, scope: !639)
!653 = !DILocation(line: 250, column: 20, scope: !639)
!654 = !DILocation(line: 250, column: 13, scope: !639)
!655 = !DILocation(line: 250, column: 18, scope: !639)
!656 = !DILocation(line: 251, column: 37, scope: !639)
!657 = !DILocation(line: 251, column: 20, scope: !639)
!658 = !DILocation(line: 251, column: 13, scope: !639)
!659 = !DILocation(line: 251, column: 18, scope: !639)
!660 = !DILocation(line: 252, column: 35, scope: !639)
!661 = !DILocation(line: 252, column: 20, scope: !639)
!662 = !DILocation(line: 252, column: 13, scope: !639)
!663 = !DILocation(line: 252, column: 18, scope: !639)
!664 = !DILocation(line: 253, column: 33, scope: !639)
!665 = !DILocation(line: 253, column: 20, scope: !639)
!666 = !DILocation(line: 253, column: 13, scope: !639)
!667 = !DILocation(line: 253, column: 18, scope: !639)
!668 = !DILocation(line: 254, column: 20, scope: !639)
!669 = !DILocation(line: 254, column: 13, scope: !639)
!670 = !DILocation(line: 254, column: 18, scope: !639)
!671 = !DILocation(line: 258, column: 15, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 258, column: 13)
!673 = distinct !DILexicalBlock(scope: !584, file: !3, line: 257, column: 12)
!674 = !DILocation(line: 258, column: 13, scope: !673)
!675 = !DILocation(line: 259, column: 21, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 258, column: 23)
!677 = !DILocation(line: 259, column: 18, scope: !676)
!678 = !DILocation(line: 261, column: 9, scope: !676)
!679 = !DILocation(line: 261, column: 22, scope: !680)
!680 = distinct !DILexicalBlock(scope: !672, file: !3, line: 261, column: 20)
!681 = !DILocation(line: 261, column: 20, scope: !672)
!682 = !DILocation(line: 262, column: 18, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !3, line: 261, column: 31)
!684 = !DILocation(line: 263, column: 20, scope: !683)
!685 = !DILocation(line: 263, column: 13, scope: !683)
!686 = !DILocation(line: 263, column: 18, scope: !683)
!687 = !DILocation(line: 265, column: 9, scope: !683)
!688 = !DILocation(line: 265, column: 22, scope: !689)
!689 = distinct !DILexicalBlock(scope: !680, file: !3, line: 265, column: 20)
!690 = !DILocation(line: 265, column: 20, scope: !680)
!691 = !DILocation(line: 266, column: 18, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 265, column: 33)
!693 = !DILocation(line: 267, column: 33, scope: !692)
!694 = !DILocation(line: 267, column: 20, scope: !692)
!695 = !DILocation(line: 267, column: 13, scope: !692)
!696 = !DILocation(line: 267, column: 18, scope: !692)
!697 = !DILocation(line: 268, column: 20, scope: !692)
!698 = !DILocation(line: 268, column: 13, scope: !692)
!699 = !DILocation(line: 268, column: 18, scope: !692)
!700 = !DILocation(line: 270, column: 9, scope: !692)
!701 = !DILocation(line: 270, column: 22, scope: !702)
!702 = distinct !DILexicalBlock(scope: !689, file: !3, line: 270, column: 20)
!703 = !DILocation(line: 270, column: 20, scope: !689)
!704 = !DILocation(line: 271, column: 18, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 270, column: 40)
!706 = !DILocation(line: 272, column: 37, scope: !705)
!707 = !DILocation(line: 272, column: 20, scope: !705)
!708 = !DILocation(line: 272, column: 13, scope: !705)
!709 = !DILocation(line: 272, column: 18, scope: !705)
!710 = !DILocation(line: 273, column: 35, scope: !705)
!711 = !DILocation(line: 273, column: 20, scope: !705)
!712 = !DILocation(line: 273, column: 13, scope: !705)
!713 = !DILocation(line: 273, column: 18, scope: !705)
!714 = !DILocation(line: 274, column: 33, scope: !705)
!715 = !DILocation(line: 274, column: 20, scope: !705)
!716 = !DILocation(line: 274, column: 13, scope: !705)
!717 = !DILocation(line: 274, column: 18, scope: !705)
!718 = !DILocation(line: 275, column: 20, scope: !705)
!719 = !DILocation(line: 275, column: 13, scope: !705)
!720 = !DILocation(line: 275, column: 18, scope: !705)
!721 = !DILocation(line: 277, column: 9, scope: !705)
!722 = !DILocation(line: 278, column: 18, scope: !723)
!723 = distinct !DILexicalBlock(scope: !702, file: !3, line: 277, column: 16)
!724 = !DILocation(line: 279, column: 47, scope: !723)
!725 = !DILocation(line: 279, column: 20, scope: !723)
!726 = !DILocation(line: 279, column: 13, scope: !723)
!727 = !DILocation(line: 279, column: 18, scope: !723)
!728 = !DILocation(line: 280, column: 45, scope: !723)
!729 = !DILocation(line: 280, column: 20, scope: !723)
!730 = !DILocation(line: 280, column: 13, scope: !723)
!731 = !DILocation(line: 280, column: 18, scope: !723)
!732 = !DILocation(line: 281, column: 43, scope: !723)
!733 = !DILocation(line: 281, column: 20, scope: !723)
!734 = !DILocation(line: 281, column: 13, scope: !723)
!735 = !DILocation(line: 281, column: 18, scope: !723)
!736 = !DILocation(line: 282, column: 41, scope: !723)
!737 = !DILocation(line: 282, column: 20, scope: !723)
!738 = !DILocation(line: 282, column: 13, scope: !723)
!739 = !DILocation(line: 282, column: 18, scope: !723)
!740 = !DILocation(line: 283, column: 37, scope: !723)
!741 = !DILocation(line: 283, column: 20, scope: !723)
!742 = !DILocation(line: 283, column: 13, scope: !723)
!743 = !DILocation(line: 283, column: 18, scope: !723)
!744 = !DILocation(line: 284, column: 35, scope: !723)
!745 = !DILocation(line: 284, column: 20, scope: !723)
!746 = !DILocation(line: 284, column: 13, scope: !723)
!747 = !DILocation(line: 284, column: 18, scope: !723)
!748 = !DILocation(line: 285, column: 33, scope: !723)
!749 = !DILocation(line: 285, column: 20, scope: !723)
!750 = !DILocation(line: 285, column: 13, scope: !723)
!751 = !DILocation(line: 285, column: 18, scope: !723)
!752 = !DILocation(line: 286, column: 20, scope: !723)
!753 = !DILocation(line: 286, column: 13, scope: !723)
!754 = !DILocation(line: 286, column: 18, scope: !723)
!755 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !756)
!756 = distinct !DILocation(line: 290, column: 5, scope: !569)
!757 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !756)
!758 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !756)
!759 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !756)
!760 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !756)
!761 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !756)
!762 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !756)
!763 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !756)
!764 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !756)
!765 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !756)
!766 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !756)
!767 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !756)
!768 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !756)
!769 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !756)
!770 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !756)
!771 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !772)
!772 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !756)
!773 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !772)
!774 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !772)
!775 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !772)
!776 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !772)
!777 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !772)
!778 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !772)
!779 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !772)
!780 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !772)
!781 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !772)
!782 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !772)
!783 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !772)
!784 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !756)
!785 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !756)
!786 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !756)
!787 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !756)
!788 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !756)
!789 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !756)
!790 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !756)
!791 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !756)
!792 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !756)
!793 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !756)
!794 = !DILocation(line: 291, column: 1, scope: !569)
!795 = distinct !DISubprogram(name: "mp_encode_array", scope: !3, file: !3, line: 293, type: !570, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !796)
!796 = !{!797, !798, !799, !800, !801}
!797 = !DILocalVariable(name: "L", arg: 1, scope: !795, file: !3, line: 293, type: !58)
!798 = !DILocalVariable(name: "buf", arg: 2, scope: !795, file: !3, line: 293, type: !8)
!799 = !DILocalVariable(name: "n", arg: 3, scope: !795, file: !3, line: 293, type: !25)
!800 = !DILocalVariable(name: "b", scope: !795, file: !3, line: 294, type: !288)
!801 = !DILocalVariable(name: "enclen", scope: !795, file: !3, line: 295, type: !30)
!802 = !DILocation(line: 293, column: 33, scope: !795)
!803 = !DILocation(line: 293, column: 44, scope: !795)
!804 = !DILocation(line: 293, column: 57, scope: !795)
!805 = !DILocation(line: 294, column: 5, scope: !795)
!806 = !DILocation(line: 294, column: 19, scope: !795)
!807 = !DILocation(line: 297, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !3, line: 297, column: 9)
!809 = !DILocation(line: 297, column: 9, scope: !795)
!810 = !DILocation(line: 298, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !3, line: 297, column: 18)
!812 = !DILocation(line: 298, column: 14, scope: !811)
!813 = !DILocation(line: 295, column: 9, scope: !795)
!814 = !DILocation(line: 300, column: 5, scope: !811)
!815 = !DILocation(line: 300, column: 18, scope: !816)
!816 = distinct !DILexicalBlock(scope: !808, file: !3, line: 300, column: 16)
!817 = !DILocation(line: 300, column: 16, scope: !808)
!818 = !DILocation(line: 301, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !816, file: !3, line: 300, column: 28)
!820 = !DILocation(line: 302, column: 29, scope: !819)
!821 = !DILocation(line: 302, column: 16, scope: !819)
!822 = !DILocation(line: 302, column: 9, scope: !819)
!823 = !DILocation(line: 302, column: 14, scope: !819)
!824 = !DILocation(line: 303, column: 16, scope: !819)
!825 = !DILocation(line: 303, column: 9, scope: !819)
!826 = !DILocation(line: 303, column: 14, scope: !819)
!827 = !DILocation(line: 305, column: 5, scope: !819)
!828 = !DILocation(line: 306, column: 14, scope: !829)
!829 = distinct !DILexicalBlock(scope: !816, file: !3, line: 305, column: 12)
!830 = !DILocation(line: 307, column: 33, scope: !829)
!831 = !DILocation(line: 307, column: 16, scope: !829)
!832 = !DILocation(line: 307, column: 9, scope: !829)
!833 = !DILocation(line: 307, column: 14, scope: !829)
!834 = !DILocation(line: 308, column: 31, scope: !829)
!835 = !DILocation(line: 308, column: 16, scope: !829)
!836 = !DILocation(line: 308, column: 9, scope: !829)
!837 = !DILocation(line: 308, column: 14, scope: !829)
!838 = !DILocation(line: 309, column: 29, scope: !829)
!839 = !DILocation(line: 309, column: 16, scope: !829)
!840 = !DILocation(line: 309, column: 9, scope: !829)
!841 = !DILocation(line: 309, column: 14, scope: !829)
!842 = !DILocation(line: 310, column: 16, scope: !829)
!843 = !DILocation(line: 310, column: 9, scope: !829)
!844 = !DILocation(line: 310, column: 14, scope: !829)
!845 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !846)
!846 = distinct !DILocation(line: 313, column: 5, scope: !795)
!847 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !846)
!848 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !846)
!849 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !846)
!850 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !846)
!851 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !846)
!852 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !846)
!853 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !846)
!854 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !846)
!855 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !846)
!856 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !846)
!857 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !846)
!858 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !846)
!859 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !846)
!860 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !846)
!861 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !862)
!862 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !846)
!863 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !862)
!864 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !862)
!865 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !862)
!866 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !862)
!867 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !862)
!868 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !862)
!869 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !862)
!870 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !862)
!871 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !862)
!872 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !862)
!873 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !862)
!874 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !846)
!875 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !846)
!876 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !846)
!877 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !846)
!878 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !846)
!879 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !846)
!880 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !846)
!881 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !846)
!882 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !846)
!883 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !846)
!884 = !DILocation(line: 314, column: 1, scope: !795)
!885 = distinct !DISubprogram(name: "mp_encode_map", scope: !3, file: !3, line: 316, type: !570, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !886)
!886 = !{!887, !888, !889, !890, !891}
!887 = !DILocalVariable(name: "L", arg: 1, scope: !885, file: !3, line: 316, type: !58)
!888 = !DILocalVariable(name: "buf", arg: 2, scope: !885, file: !3, line: 316, type: !8)
!889 = !DILocalVariable(name: "n", arg: 3, scope: !885, file: !3, line: 316, type: !25)
!890 = !DILocalVariable(name: "b", scope: !885, file: !3, line: 317, type: !288)
!891 = !DILocalVariable(name: "enclen", scope: !885, file: !3, line: 318, type: !30)
!892 = !DILocation(line: 316, column: 31, scope: !885)
!893 = !DILocation(line: 316, column: 42, scope: !885)
!894 = !DILocation(line: 316, column: 55, scope: !885)
!895 = !DILocation(line: 317, column: 5, scope: !885)
!896 = !DILocation(line: 317, column: 19, scope: !885)
!897 = !DILocation(line: 320, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !885, file: !3, line: 320, column: 9)
!899 = !DILocation(line: 320, column: 9, scope: !885)
!900 = !DILocation(line: 321, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 320, column: 18)
!902 = !DILocation(line: 321, column: 14, scope: !901)
!903 = !DILocation(line: 318, column: 9, scope: !885)
!904 = !DILocation(line: 323, column: 5, scope: !901)
!905 = !DILocation(line: 323, column: 18, scope: !906)
!906 = distinct !DILexicalBlock(scope: !898, file: !3, line: 323, column: 16)
!907 = !DILocation(line: 323, column: 16, scope: !898)
!908 = !DILocation(line: 324, column: 14, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 323, column: 28)
!910 = !DILocation(line: 325, column: 29, scope: !909)
!911 = !DILocation(line: 325, column: 16, scope: !909)
!912 = !DILocation(line: 325, column: 9, scope: !909)
!913 = !DILocation(line: 325, column: 14, scope: !909)
!914 = !DILocation(line: 326, column: 16, scope: !909)
!915 = !DILocation(line: 326, column: 9, scope: !909)
!916 = !DILocation(line: 326, column: 14, scope: !909)
!917 = !DILocation(line: 328, column: 5, scope: !909)
!918 = !DILocation(line: 329, column: 14, scope: !919)
!919 = distinct !DILexicalBlock(scope: !906, file: !3, line: 328, column: 12)
!920 = !DILocation(line: 330, column: 33, scope: !919)
!921 = !DILocation(line: 330, column: 16, scope: !919)
!922 = !DILocation(line: 330, column: 9, scope: !919)
!923 = !DILocation(line: 330, column: 14, scope: !919)
!924 = !DILocation(line: 331, column: 31, scope: !919)
!925 = !DILocation(line: 331, column: 16, scope: !919)
!926 = !DILocation(line: 331, column: 9, scope: !919)
!927 = !DILocation(line: 331, column: 14, scope: !919)
!928 = !DILocation(line: 332, column: 29, scope: !919)
!929 = !DILocation(line: 332, column: 16, scope: !919)
!930 = !DILocation(line: 332, column: 9, scope: !919)
!931 = !DILocation(line: 332, column: 14, scope: !919)
!932 = !DILocation(line: 333, column: 16, scope: !919)
!933 = !DILocation(line: 333, column: 9, scope: !919)
!934 = !DILocation(line: 333, column: 14, scope: !919)
!935 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !936)
!936 = distinct !DILocation(line: 336, column: 5, scope: !885)
!937 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !936)
!938 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !936)
!939 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !936)
!940 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !936)
!941 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !936)
!942 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !936)
!943 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !936)
!944 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !936)
!945 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !936)
!946 = !DILocation(line: 120, column: 35, scope: !170, inlinedAt: !936)
!947 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !936)
!948 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !936)
!949 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !936)
!950 = !DILocation(line: 122, column: 65, scope: !170, inlinedAt: !936)
!951 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !952)
!952 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !936)
!953 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !952)
!954 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !952)
!955 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !952)
!956 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !952)
!957 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !952)
!958 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !952)
!959 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !952)
!960 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !952)
!961 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !952)
!962 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !952)
!963 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !952)
!964 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !936)
!965 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !936)
!966 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !936)
!967 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !936)
!968 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !936)
!969 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !936)
!970 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !936)
!971 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !936)
!972 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !936)
!973 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !936)
!974 = !DILocation(line: 337, column: 1, scope: !885)
!975 = distinct !DISubprogram(name: "mp_encode_lua_string", scope: !3, file: !3, line: 341, type: !213, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !976)
!976 = !{!977, !978, !979, !980}
!977 = !DILocalVariable(name: "L", arg: 1, scope: !975, file: !3, line: 341, type: !58)
!978 = !DILocalVariable(name: "buf", arg: 2, scope: !975, file: !3, line: 341, type: !8)
!979 = !DILocalVariable(name: "len", scope: !975, file: !3, line: 342, type: !14)
!980 = !DILocalVariable(name: "s", scope: !975, file: !3, line: 343, type: !50)
!981 = !DILocation(line: 341, column: 38, scope: !975)
!982 = !DILocation(line: 341, column: 49, scope: !975)
!983 = !DILocation(line: 342, column: 5, scope: !975)
!984 = !DILocation(line: 342, column: 12, scope: !975)
!985 = !DILocation(line: 345, column: 9, scope: !975)
!986 = !DILocation(line: 343, column: 17, scope: !975)
!987 = !DILocation(line: 346, column: 51, scope: !975)
!988 = !DILocation(line: 346, column: 5, scope: !975)
!989 = !DILocation(line: 347, column: 1, scope: !975)
!990 = distinct !DISubprogram(name: "mp_encode_lua_bool", scope: !3, file: !3, line: 349, type: !213, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !991)
!991 = !{!992, !993, !994}
!992 = !DILocalVariable(name: "L", arg: 1, scope: !990, file: !3, line: 349, type: !58)
!993 = !DILocalVariable(name: "buf", arg: 2, scope: !990, file: !3, line: 349, type: !8)
!994 = !DILocalVariable(name: "b", scope: !990, file: !3, line: 350, type: !7)
!995 = !DILocation(line: 349, column: 36, scope: !990)
!996 = !DILocation(line: 349, column: 47, scope: !990)
!997 = !DILocation(line: 350, column: 19, scope: !990)
!998 = !DILocation(line: 350, column: 5, scope: !990)
!999 = !DILocation(line: 350, column: 23, scope: !990)
!1000 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 351, column: 5, scope: !990)
!1002 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !1001)
!1003 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !1001)
!1004 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !1001)
!1005 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !1001)
!1006 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !1001)
!1007 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !1001)
!1008 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !1001)
!1009 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !1001)
!1010 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !1001)
!1011 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !1001)
!1012 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !1001)
!1013 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !1001)
!1014 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !1001)
!1016 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1015)
!1017 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1015)
!1018 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1015)
!1019 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1015)
!1020 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1015)
!1021 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1015)
!1022 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1015)
!1023 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1015)
!1024 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1015)
!1025 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1015)
!1026 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1015)
!1027 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !1001)
!1028 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !1001)
!1029 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !1001)
!1030 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !1001)
!1031 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !1001)
!1032 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !1001)
!1033 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !1001)
!1034 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !1001)
!1035 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !1001)
!1036 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !1001)
!1037 = !DILocation(line: 352, column: 1, scope: !990)
!1038 = distinct !DISubprogram(name: "mp_encode_lua_integer", scope: !3, file: !3, line: 355, type: !213, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DILocalVariable(name: "L", arg: 1, scope: !1038, file: !3, line: 355, type: !58)
!1041 = !DILocalVariable(name: "buf", arg: 2, scope: !1038, file: !3, line: 355, type: !8)
!1042 = !DILocalVariable(name: "i", scope: !1038, file: !3, line: 359, type: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !54, line: 103, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1045, line: 49, baseType: !29)
!1045 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1046 = !DILocation(line: 355, column: 39, scope: !1038)
!1047 = !DILocation(line: 355, column: 50, scope: !1038)
!1048 = !DILocation(line: 359, column: 21, scope: !1038)
!1049 = !DILocation(line: 359, column: 17, scope: !1038)
!1050 = !DILocation(line: 361, column: 5, scope: !1038)
!1051 = !DILocation(line: 362, column: 1, scope: !1038)
!1052 = distinct !DISubprogram(name: "mp_encode_lua_number", scope: !3, file: !3, line: 367, type: !213, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "L", arg: 1, scope: !1052, file: !3, line: 367, type: !58)
!1055 = !DILocalVariable(name: "buf", arg: 2, scope: !1052, file: !3, line: 367, type: !8)
!1056 = !DILocalVariable(name: "n", scope: !1052, file: !3, line: 368, type: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !54, line: 99, baseType: !21)
!1058 = !DILocation(line: 367, column: 38, scope: !1052)
!1059 = !DILocation(line: 367, column: 49, scope: !1052)
!1060 = !DILocation(line: 368, column: 20, scope: !1052)
!1061 = !DILocation(line: 368, column: 16, scope: !1052)
!1062 = !DILocation(line: 370, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 370, column: 9)
!1064 = !DILocation(line: 370, column: 9, scope: !1052)
!1065 = !DILocation(line: 355, column: 39, scope: !1038, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 371, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 370, column: 33)
!1068 = !DILocation(line: 355, column: 50, scope: !1038, inlinedAt: !1066)
!1069 = !DILocation(line: 359, column: 21, scope: !1038, inlinedAt: !1066)
!1070 = !DILocation(line: 359, column: 17, scope: !1038, inlinedAt: !1066)
!1071 = !DILocation(line: 361, column: 5, scope: !1038, inlinedAt: !1066)
!1072 = !DILocation(line: 362, column: 1, scope: !1038, inlinedAt: !1066)
!1073 = !DILocation(line: 372, column: 5, scope: !1067)
!1074 = !DILocation(line: 373, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 372, column: 12)
!1076 = !DILocation(line: 375, column: 1, scope: !1052)
!1077 = distinct !DISubprogram(name: "mp_encode_lua_table_as_array", scope: !3, file: !3, line: 380, type: !1078, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !58, !8, !30}
!1080 = !{!1081, !1082, !1083, !1084, !1085}
!1081 = !DILocalVariable(name: "L", arg: 1, scope: !1077, file: !3, line: 380, type: !58)
!1082 = !DILocalVariable(name: "buf", arg: 2, scope: !1077, file: !3, line: 380, type: !8)
!1083 = !DILocalVariable(name: "level", arg: 3, scope: !1077, file: !3, line: 380, type: !30)
!1084 = !DILocalVariable(name: "len", scope: !1077, file: !3, line: 382, type: !14)
!1085 = !DILocalVariable(name: "j", scope: !1077, file: !3, line: 382, type: !14)
!1086 = !DILocation(line: 380, column: 46, scope: !1077)
!1087 = !DILocation(line: 380, column: 57, scope: !1077)
!1088 = !DILocation(line: 380, column: 66, scope: !1077)
!1089 = !DILocation(line: 382, column: 18, scope: !1077)
!1090 = !DILocation(line: 382, column: 12, scope: !1077)
!1091 = !DILocation(line: 387, column: 5, scope: !1077)
!1092 = !DILocation(line: 388, column: 5, scope: !1077)
!1093 = !DILocation(line: 382, column: 36, scope: !1077)
!1094 = !DILocation(line: 389, column: 10, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 389, column: 5)
!1096 = !DILocation(line: 389, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 389, column: 5)
!1098 = !DILocation(line: 389, column: 5, scope: !1095)
!1099 = !DILocation(line: 390, column: 26, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 389, column: 32)
!1101 = !DILocation(line: 390, column: 9, scope: !1100)
!1102 = !DILocation(line: 391, column: 9, scope: !1100)
!1103 = !DILocation(line: 392, column: 9, scope: !1100)
!1104 = !DILocation(line: 389, column: 28, scope: !1097)
!1105 = !DILocation(line: 389, column: 5, scope: !1097)
!1106 = distinct !{!1106, !1098, !1107}
!1107 = !DILocation(line: 393, column: 5, scope: !1095)
!1108 = !DILocation(line: 394, column: 1, scope: !1077)
!1109 = distinct !DISubprogram(name: "mp_encode_lua_type", scope: !3, file: !3, line: 482, type: !1078, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DILocalVariable(name: "L", arg: 1, scope: !1109, file: !3, line: 482, type: !58)
!1112 = !DILocalVariable(name: "buf", arg: 2, scope: !1109, file: !3, line: 482, type: !8)
!1113 = !DILocalVariable(name: "level", arg: 3, scope: !1109, file: !3, line: 482, type: !30)
!1114 = !DILocalVariable(name: "t", scope: !1109, file: !3, line: 483, type: !30)
!1115 = !DILocalVariable(name: "b", scope: !1116, file: !3, line: 476, type: !1120)
!1116 = distinct !DISubprogram(name: "mp_encode_lua_null", scope: !3, file: !3, line: 475, type: !213, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1117)
!1117 = !{!1118, !1119, !1115}
!1118 = !DILocalVariable(name: "L", arg: 1, scope: !1116, file: !3, line: 475, type: !58)
!1119 = !DILocalVariable(name: "buf", arg: 2, scope: !1116, file: !3, line: 475, type: !8)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 1)
!1123 = !DILocation(line: 476, column: 19, scope: !1116, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 503, column: 14, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 488, column: 15)
!1126 = !DILocation(line: 482, column: 36, scope: !1109)
!1127 = !DILocation(line: 482, column: 47, scope: !1109)
!1128 = !DILocation(line: 482, column: 56, scope: !1109)
!1129 = !DILocation(line: 483, column: 13, scope: !1109)
!1130 = !DILocation(line: 483, column: 9, scope: !1109)
!1131 = !DILocation(line: 487, column: 11, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 487, column: 9)
!1133 = !DILocation(line: 487, column: 34, scope: !1132)
!1134 = !DILocation(line: 487, column: 25, scope: !1132)
!1135 = !DILocation(line: 488, column: 5, scope: !1109)
!1136 = !DILocation(line: 341, column: 38, scope: !975, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 489, column: 23, scope: !1125)
!1138 = !DILocation(line: 341, column: 49, scope: !975, inlinedAt: !1137)
!1139 = !DILocation(line: 342, column: 5, scope: !975, inlinedAt: !1137)
!1140 = !DILocation(line: 342, column: 12, scope: !975, inlinedAt: !1137)
!1141 = !DILocation(line: 345, column: 9, scope: !975, inlinedAt: !1137)
!1142 = !DILocation(line: 343, column: 17, scope: !975, inlinedAt: !1137)
!1143 = !DILocation(line: 346, column: 51, scope: !975, inlinedAt: !1137)
!1144 = !DILocation(line: 346, column: 5, scope: !975, inlinedAt: !1137)
!1145 = !DILocation(line: 347, column: 1, scope: !975, inlinedAt: !1137)
!1146 = !DILocation(line: 489, column: 52, scope: !1125)
!1147 = !DILocation(line: 490, column: 24, scope: !1125)
!1148 = !DILocation(line: 490, column: 51, scope: !1125)
!1149 = !DILocation(line: 493, column: 9, scope: !1125)
!1150 = !DILocation(line: 493, column: 38, scope: !1125)
!1151 = !DILocalVariable(name: "L", arg: 1, scope: !1152, file: !3, line: 468, type: !58)
!1152 = distinct !DISubprogram(name: "mp_encode_lua_table", scope: !3, file: !3, line: 468, type: !1078, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1153)
!1153 = !{!1151, !1154, !1155}
!1154 = !DILocalVariable(name: "buf", arg: 2, scope: !1152, file: !3, line: 468, type: !8)
!1155 = !DILocalVariable(name: "level", arg: 3, scope: !1152, file: !3, line: 468, type: !30)
!1156 = !DILocation(line: 468, column: 37, scope: !1152, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 502, column: 22, scope: !1125)
!1158 = !DILocation(line: 468, column: 48, scope: !1152, inlinedAt: !1157)
!1159 = !DILocation(line: 468, column: 57, scope: !1152, inlinedAt: !1157)
!1160 = !DILocation(line: 469, column: 9, scope: !1161, inlinedAt: !1157)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 469, column: 9)
!1162 = !DILocation(line: 469, column: 9, scope: !1152, inlinedAt: !1157)
!1163 = !DILocation(line: 470, column: 9, scope: !1161, inlinedAt: !1157)
!1164 = !DILocation(line: 472, column: 9, scope: !1161, inlinedAt: !1157)
!1165 = !DILocation(line: 473, column: 1, scope: !1152, inlinedAt: !1157)
!1166 = !DILocation(line: 502, column: 56, scope: !1125)
!1167 = !DILocation(line: 475, column: 36, scope: !1116, inlinedAt: !1124)
!1168 = !DILocation(line: 475, column: 47, scope: !1116, inlinedAt: !1124)
!1169 = !DILocation(line: 476, column: 5, scope: !1116, inlinedAt: !1124)
!1170 = !DILocation(line: 478, column: 10, scope: !1116, inlinedAt: !1124)
!1171 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 479, column: 5, scope: !1116, inlinedAt: !1124)
!1173 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !1172)
!1174 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !1172)
!1175 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !1172)
!1176 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !1172)
!1177 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !1172)
!1178 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !1172)
!1179 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !1172)
!1180 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !1172)
!1181 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !1172)
!1182 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !1172)
!1183 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !1172)
!1184 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !1172)
!1185 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !1172)
!1187 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1186)
!1188 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1186)
!1189 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1186)
!1190 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1186)
!1191 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1186)
!1192 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1186)
!1193 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1186)
!1194 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1186)
!1195 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1186)
!1196 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1186)
!1197 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1186)
!1198 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !1172)
!1199 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !1172)
!1200 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !1172)
!1201 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !1172)
!1202 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !1172)
!1203 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !1172)
!1204 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !1172)
!1205 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !1172)
!1206 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !1172)
!1207 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !1172)
!1208 = !DILocation(line: 480, column: 1, scope: !1116, inlinedAt: !1124)
!1209 = !DILocation(line: 503, column: 41, scope: !1125)
!1210 = !DILocation(line: 0, scope: !1125)
!1211 = !DILocation(line: 505, column: 5, scope: !1109)
!1212 = !DILocation(line: 506, column: 1, scope: !1109)
!1213 = distinct !DISubprogram(name: "mp_encode_lua_table_as_map", scope: !3, file: !3, line: 397, type: !1078, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DILocalVariable(name: "L", arg: 1, scope: !1213, file: !3, line: 397, type: !58)
!1216 = !DILocalVariable(name: "buf", arg: 2, scope: !1213, file: !3, line: 397, type: !8)
!1217 = !DILocalVariable(name: "level", arg: 3, scope: !1213, file: !3, line: 397, type: !30)
!1218 = !DILocalVariable(name: "len", scope: !1213, file: !3, line: 398, type: !14)
!1219 = !DILocation(line: 397, column: 44, scope: !1213)
!1220 = !DILocation(line: 397, column: 55, scope: !1213)
!1221 = !DILocation(line: 397, column: 64, scope: !1213)
!1222 = !DILocation(line: 398, column: 12, scope: !1213)
!1223 = !DILocation(line: 404, column: 5, scope: !1213)
!1224 = !DILocation(line: 405, column: 5, scope: !1213)
!1225 = !DILocation(line: 406, column: 5, scope: !1213)
!1226 = !DILocation(line: 406, column: 11, scope: !1213)
!1227 = !DILocation(line: 407, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 406, column: 27)
!1229 = !DILocation(line: 408, column: 12, scope: !1228)
!1230 = distinct !{!1230, !1225, !1231}
!1231 = !DILocation(line: 409, column: 5, scope: !1213)
!1232 = !DILocation(line: 0, scope: !1228)
!1233 = !DILocation(line: 412, column: 5, scope: !1213)
!1234 = !DILocation(line: 413, column: 5, scope: !1213)
!1235 = !DILocation(line: 414, column: 5, scope: !1213)
!1236 = !DILocation(line: 414, column: 11, scope: !1213)
!1237 = !DILocation(line: 416, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 414, column: 27)
!1239 = !DILocation(line: 417, column: 9, scope: !1238)
!1240 = !DILocation(line: 418, column: 9, scope: !1238)
!1241 = distinct !{!1241, !1235, !1242}
!1242 = !DILocation(line: 419, column: 5, scope: !1213)
!1243 = !DILocation(line: 420, column: 1, scope: !1213)
!1244 = distinct !DISubprogram(name: "table_is_an_array", scope: !3, file: !3, line: 425, type: !56, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250}
!1246 = !DILocalVariable(name: "L", arg: 1, scope: !1244, file: !3, line: 425, type: !58)
!1247 = !DILocalVariable(name: "count", scope: !1244, file: !3, line: 426, type: !30)
!1248 = !DILocalVariable(name: "max", scope: !1244, file: !3, line: 426, type: !30)
!1249 = !DILocalVariable(name: "n", scope: !1244, file: !3, line: 428, type: !1057)
!1250 = !DILocalVariable(name: "stacktop", scope: !1244, file: !3, line: 434, type: !30)
!1251 = !DILocation(line: 425, column: 34, scope: !1244)
!1252 = !DILocation(line: 426, column: 9, scope: !1244)
!1253 = !DILocation(line: 426, column: 20, scope: !1244)
!1254 = !DILocation(line: 436, column: 16, scope: !1244)
!1255 = !DILocation(line: 434, column: 9, scope: !1244)
!1256 = !DILocation(line: 438, column: 5, scope: !1244)
!1257 = !DILocation(line: 439, column: 5, scope: !1244)
!1258 = !DILocation(line: 439, column: 11, scope: !1244)
!1259 = !DILocation(line: 441, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 439, column: 27)
!1261 = !DILocation(line: 444, column: 29, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 444, column: 13)
!1263 = !DILocation(line: 444, column: 26, scope: !1262)
!1264 = !DILocation(line: 444, column: 45, scope: !1262)
!1265 = !DILocation(line: 444, column: 53, scope: !1262)
!1266 = !DILocation(line: 428, column: 16, scope: !1244)
!1267 = !DILocation(line: 444, column: 74, scope: !1262)
!1268 = !DILocation(line: 444, column: 79, scope: !1262)
!1269 = !DILocation(line: 445, column: 14, scope: !1262)
!1270 = !DILocation(line: 444, column: 13, scope: !1260)
!1271 = !DILocation(line: 450, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 449, column: 9)
!1273 = !DILocation(line: 451, column: 13, scope: !1272)
!1274 = !DILocation(line: 453, column: 20, scope: !1260)
!1275 = !DILocation(line: 453, column: 18, scope: !1260)
!1276 = !DILocation(line: 453, column: 16, scope: !1260)
!1277 = !DILocation(line: 453, column: 15, scope: !1260)
!1278 = !DILocation(line: 454, column: 14, scope: !1260)
!1279 = distinct !{!1279, !1257, !1280}
!1280 = !DILocation(line: 455, column: 5, scope: !1244)
!1281 = !DILocation(line: 0, scope: !1260)
!1282 = !DILocation(line: 461, column: 5, scope: !1244)
!1283 = !DILocation(line: 462, column: 16, scope: !1244)
!1284 = !DILocation(line: 462, column: 5, scope: !1244)
!1285 = !DILocation(line: 0, scope: !1244)
!1286 = !DILocation(line: 0, scope: !1272)
!1287 = !DILocation(line: 463, column: 1, scope: !1244)
!1288 = !DILocation(line: 468, column: 37, scope: !1152)
!1289 = !DILocation(line: 468, column: 48, scope: !1152)
!1290 = !DILocation(line: 468, column: 57, scope: !1152)
!1291 = !DILocation(line: 469, column: 9, scope: !1161)
!1292 = !DILocation(line: 469, column: 9, scope: !1152)
!1293 = !DILocation(line: 470, column: 9, scope: !1161)
!1294 = !DILocation(line: 472, column: 9, scope: !1161)
!1295 = !DILocation(line: 473, column: 1, scope: !1152)
!1296 = !DILocation(line: 475, column: 36, scope: !1116)
!1297 = !DILocation(line: 475, column: 47, scope: !1116)
!1298 = !DILocation(line: 476, column: 5, scope: !1116)
!1299 = !DILocation(line: 476, column: 19, scope: !1116)
!1300 = !DILocation(line: 478, column: 10, scope: !1116)
!1301 = !DILocation(line: 118, column: 31, scope: !161, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 479, column: 5, scope: !1116)
!1303 = !DILocation(line: 118, column: 42, scope: !161, inlinedAt: !1302)
!1304 = !DILocation(line: 118, column: 68, scope: !161, inlinedAt: !1302)
!1305 = !DILocation(line: 118, column: 78, scope: !161, inlinedAt: !1302)
!1306 = !DILocation(line: 119, column: 14, scope: !171, inlinedAt: !1302)
!1307 = !DILocation(line: 119, column: 19, scope: !171, inlinedAt: !1302)
!1308 = !DILocation(line: 119, column: 9, scope: !161, inlinedAt: !1302)
!1309 = !DILocation(line: 125, column: 17, scope: !161, inlinedAt: !1302)
!1310 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !1302)
!1311 = !DILocation(line: 120, column: 32, scope: !170, inlinedAt: !1302)
!1312 = !DILocation(line: 120, column: 40, scope: !170, inlinedAt: !1302)
!1313 = !DILocation(line: 120, column: 16, scope: !170, inlinedAt: !1302)
!1314 = !DILocation(line: 122, column: 53, scope: !170, inlinedAt: !1302)
!1315 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 122, column: 34, scope: !170, inlinedAt: !1302)
!1317 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1316)
!1318 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1316)
!1319 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1316)
!1320 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1316)
!1321 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1316)
!1322 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1316)
!1323 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1316)
!1324 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1316)
!1325 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1316)
!1326 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1316)
!1327 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1316)
!1328 = !DILocation(line: 122, column: 16, scope: !170, inlinedAt: !1302)
!1329 = !DILocation(line: 123, column: 36, scope: !170, inlinedAt: !1302)
!1330 = !DILocation(line: 123, column: 29, scope: !170, inlinedAt: !1302)
!1331 = !DILocation(line: 123, column: 19, scope: !170, inlinedAt: !1302)
!1332 = !DILocation(line: 124, column: 5, scope: !170, inlinedAt: !1302)
!1333 = !DILocation(line: 125, column: 18, scope: !161, inlinedAt: !1302)
!1334 = !DILocation(line: 125, column: 5, scope: !161, inlinedAt: !1302)
!1335 = !DILocation(line: 126, column: 14, scope: !161, inlinedAt: !1302)
!1336 = !DILocation(line: 127, column: 15, scope: !161, inlinedAt: !1302)
!1337 = !DILocation(line: 128, column: 1, scope: !161, inlinedAt: !1302)
!1338 = !DILocation(line: 480, column: 1, scope: !1116)
!1339 = distinct !DISubprogram(name: "mp_pack", scope: !3, file: !3, line: 512, type: !56, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DILocalVariable(name: "L", arg: 1, scope: !1339, file: !3, line: 512, type: !58)
!1342 = !DILocalVariable(name: "nargs", scope: !1339, file: !3, line: 513, type: !30)
!1343 = !DILocalVariable(name: "i", scope: !1339, file: !3, line: 514, type: !30)
!1344 = !DILocalVariable(name: "buf", scope: !1339, file: !3, line: 515, type: !8)
!1345 = !DILocation(line: 512, column: 24, scope: !1339)
!1346 = !DILocation(line: 513, column: 17, scope: !1339)
!1347 = !DILocation(line: 513, column: 9, scope: !1339)
!1348 = !DILocation(line: 517, column: 15, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 517, column: 9)
!1350 = !DILocation(line: 517, column: 9, scope: !1339)
!1351 = !DILocation(line: 518, column: 16, scope: !1349)
!1352 = !DILocation(line: 518, column: 9, scope: !1349)
!1353 = !DILocation(line: 520, column: 10, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 520, column: 9)
!1355 = !DILocation(line: 520, column: 9, scope: !1339)
!1356 = !DILocation(line: 521, column: 16, scope: !1354)
!1357 = !DILocation(line: 521, column: 9, scope: !1354)
!1358 = !DILocation(line: 107, column: 31, scope: !130, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 523, column: 11, scope: !1339)
!1360 = !DILocation(line: 108, column: 13, scope: !130, inlinedAt: !1359)
!1361 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 111, column: 20, scope: !130, inlinedAt: !1359)
!1363 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1362)
!1364 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1362)
!1365 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1362)
!1366 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1362)
!1367 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1362)
!1368 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1362)
!1369 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1362)
!1370 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1362)
!1371 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1362)
!1372 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1362)
!1373 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1362)
!1374 = !DILocation(line: 111, column: 11, scope: !130, inlinedAt: !1359)
!1375 = !DILocation(line: 113, column: 10, scope: !130, inlinedAt: !1359)
!1376 = !DILocation(line: 113, column: 12, scope: !130, inlinedAt: !1359)
!1377 = !DILocation(line: 114, column: 21, scope: !130, inlinedAt: !1359)
!1378 = !DILocation(line: 114, column: 10, scope: !130, inlinedAt: !1359)
!1379 = !DILocation(line: 114, column: 14, scope: !130, inlinedAt: !1359)
!1380 = !DILocation(line: 115, column: 5, scope: !130, inlinedAt: !1359)
!1381 = !DILocation(line: 515, column: 13, scope: !1339)
!1382 = !DILocation(line: 514, column: 9, scope: !1339)
!1383 = !DILocation(line: 524, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 524, column: 5)
!1385 = !DILocation(line: 524, column: 18, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 524, column: 5)
!1387 = !DILocation(line: 524, column: 5, scope: !1384)
!1388 = !DILocation(line: 527, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 524, column: 33)
!1390 = !DILocation(line: 528, column: 9, scope: !1389)
!1391 = !DILocation(line: 530, column: 9, scope: !1389)
!1392 = !DILocation(line: 532, column: 39, scope: !1389)
!1393 = !DILocation(line: 532, column: 46, scope: !1389)
!1394 = !DILocation(line: 532, column: 9, scope: !1389)
!1395 = !DILocation(line: 537, column: 27, scope: !1389)
!1396 = !DILocation(line: 537, column: 19, scope: !1389)
!1397 = !DILocation(line: 538, column: 18, scope: !1389)
!1398 = !DILocation(line: 524, column: 29, scope: !1386)
!1399 = !DILocation(line: 524, column: 5, scope: !1386)
!1400 = distinct !{!1400, !1387, !1401}
!1401 = !DILocation(line: 539, column: 5, scope: !1384)
!1402 = !DILocation(line: 131, column: 24, scope: !212, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 540, column: 5, scope: !1339)
!1404 = !DILocation(line: 131, column: 43, scope: !212, inlinedAt: !1403)
!1405 = !DILocation(line: 130, column: 29, scope: !212, inlinedAt: !1403)
!1406 = !DILocation(line: 130, column: 40, scope: !212, inlinedAt: !1403)
!1407 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 131, column: 5, scope: !212, inlinedAt: !1403)
!1409 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1408)
!1410 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1408)
!1411 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1408)
!1412 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1408)
!1413 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1408)
!1414 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1408)
!1415 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1408)
!1416 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1408)
!1417 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1408)
!1418 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1408)
!1419 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1408)
!1420 = !DILocation(line: 98, column: 29, scope: !103, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 132, column: 5, scope: !212, inlinedAt: !1403)
!1422 = !DILocation(line: 98, column: 38, scope: !103, inlinedAt: !1421)
!1423 = !DILocation(line: 98, column: 53, scope: !103, inlinedAt: !1421)
!1424 = !DILocation(line: 98, column: 66, scope: !103, inlinedAt: !1421)
!1425 = !DILocation(line: 99, column: 13, scope: !103, inlinedAt: !1421)
!1426 = !DILocation(line: 100, column: 5, scope: !103, inlinedAt: !1421)
!1427 = !DILocation(line: 100, column: 11, scope: !103, inlinedAt: !1421)
!1428 = !DILocation(line: 102, column: 21, scope: !103, inlinedAt: !1421)
!1429 = !DILocation(line: 104, column: 26, scope: !103, inlinedAt: !1421)
!1430 = !DILocation(line: 104, column: 12, scope: !103, inlinedAt: !1421)
!1431 = !DILocation(line: 105, column: 1, scope: !103, inlinedAt: !1421)
!1432 = !DILocation(line: 104, column: 5, scope: !103, inlinedAt: !1421)
!1433 = !DILocation(line: 133, column: 1, scope: !212, inlinedAt: !1403)
!1434 = !DILocation(line: 543, column: 5, scope: !1339)
!1435 = !DILocation(line: 544, column: 5, scope: !1339)
!1436 = !DILocation(line: 0, scope: !1354)
!1437 = !DILocation(line: 0, scope: !1349)
!1438 = !DILocation(line: 545, column: 1, scope: !1339)
!1439 = distinct !DISubprogram(name: "mp_decode_to_lua_array", scope: !3, file: !3, line: 551, type: !1440, isLocal: false, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !58, !255, !14}
!1442 = !{!1443, !1444, !1445, !1446}
!1443 = !DILocalVariable(name: "L", arg: 1, scope: !1439, file: !3, line: 551, type: !58)
!1444 = !DILocalVariable(name: "c", arg: 2, scope: !1439, file: !3, line: 551, type: !255)
!1445 = !DILocalVariable(name: "len", arg: 3, scope: !1439, file: !3, line: 551, type: !14)
!1446 = !DILocalVariable(name: "index", scope: !1439, file: !3, line: 553, type: !30)
!1447 = !DILocation(line: 551, column: 40, scope: !1439)
!1448 = !DILocation(line: 551, column: 51, scope: !1439)
!1449 = !DILocation(line: 551, column: 61, scope: !1439)
!1450 = !DILocation(line: 552, column: 5, scope: !1439)
!1451 = !DILocation(line: 553, column: 9, scope: !1439)
!1452 = !DILocation(line: 555, column: 5, scope: !1439)
!1453 = !DILocation(line: 556, column: 5, scope: !1439)
!1454 = !DILocation(line: 557, column: 5, scope: !1439)
!1455 = !DILocation(line: 557, column: 14, scope: !1439)
!1456 = !DILocation(line: 558, column: 26, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 557, column: 18)
!1458 = !DILocation(line: 558, column: 9, scope: !1457)
!1459 = !DILocation(line: 559, column: 9, scope: !1457)
!1460 = !DILocation(line: 560, column: 16, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 560, column: 13)
!1462 = !DILocation(line: 560, column: 13, scope: !1461)
!1463 = !DILocation(line: 560, column: 13, scope: !1457)
!1464 = !DILocation(line: 558, column: 31, scope: !1457)
!1465 = !DILocation(line: 561, column: 9, scope: !1457)
!1466 = distinct !{!1466, !1454, !1467}
!1467 = !DILocation(line: 562, column: 5, scope: !1439)
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 563, column: 1, scope: !1439)
!1470 = distinct !DISubprogram(name: "mp_decode_to_lua_type", scope: !3, file: !3, line: 579, type: !1471, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !58, !255}
!1473 = !{!1474, !1475, !1476, !1479, !1481, !1483, !1485, !1487, !1489, !1491, !1493, !1495, !1500, !1503}
!1474 = !DILocalVariable(name: "L", arg: 1, scope: !1470, file: !3, line: 579, type: !58)
!1475 = !DILocalVariable(name: "c", arg: 2, scope: !1470, file: !3, line: 579, type: !255)
!1476 = !DILocalVariable(name: "f", scope: !1477, file: !3, line: 680, type: !433)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 679, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 591, column: 21)
!1479 = !DILocalVariable(name: "d", scope: !1480, file: !3, line: 691, type: !21)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 690, column: 9)
!1481 = !DILocalVariable(name: "l", scope: !1482, file: !3, line: 701, type: !14)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 700, column: 9)
!1483 = !DILocalVariable(name: "l", scope: !1484, file: !3, line: 710, type: !14)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 709, column: 9)
!1485 = !DILocalVariable(name: "l", scope: !1486, file: !3, line: 719, type: !14)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 718, column: 9)
!1487 = !DILocalVariable(name: "l", scope: !1488, file: !3, line: 732, type: !14)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 731, column: 9)
!1489 = !DILocalVariable(name: "l", scope: !1490, file: !3, line: 740, type: !14)
!1490 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 739, column: 9)
!1491 = !DILocalVariable(name: "l", scope: !1492, file: !3, line: 751, type: !14)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 750, column: 9)
!1493 = !DILocalVariable(name: "l", scope: !1494, file: !3, line: 759, type: !14)
!1494 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 758, column: 9)
!1495 = !DILocalVariable(name: "l", scope: !1496, file: !3, line: 775, type: !14)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 774, column: 46)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 774, column: 20)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 771, column: 20)
!1499 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 768, column: 13)
!1500 = !DILocalVariable(name: "l", scope: !1501, file: !3, line: 780, type: !14)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 779, column: 46)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 779, column: 20)
!1503 = !DILocalVariable(name: "l", scope: !1504, file: !3, line: 784, type: !14)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 783, column: 46)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 783, column: 20)
!1506 = !DILocation(line: 579, column: 39, scope: !1470)
!1507 = !DILocation(line: 579, column: 50, scope: !1470)
!1508 = !DILocation(line: 580, column: 5, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 580, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 580, column: 5)
!1511 = !DILocation(line: 580, column: 5, scope: !1510)
!1512 = !DILocation(line: 580, column: 5, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 580, column: 5)
!1514 = !DILocation(line: 587, column: 5, scope: !1470)
!1515 = !DILocation(line: 591, column: 15, scope: !1470)
!1516 = !DILocation(line: 591, column: 12, scope: !1470)
!1517 = !DILocation(line: 591, column: 5, scope: !1470)
!1518 = !DILocation(line: 593, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 593, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 593, column: 9)
!1521 = !DILocation(line: 593, column: 9, scope: !1520)
!1522 = !DILocation(line: 593, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 593, column: 9)
!1524 = !DILocation(line: 594, column: 9, scope: !1478)
!1525 = !DILocation(line: 595, column: 9, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 595, column: 9)
!1527 = !DILocation(line: 596, column: 9, scope: !1478)
!1528 = !DILocation(line: 598, column: 9, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 598, column: 9)
!1530 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 598, column: 9)
!1531 = !DILocation(line: 598, column: 9, scope: !1530)
!1532 = !DILocation(line: 598, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 598, column: 9)
!1534 = !DILocation(line: 599, column: 40, scope: !1478)
!1535 = !DILocation(line: 599, column: 27, scope: !1478)
!1536 = !DILocation(line: 599, column: 9, scope: !1478)
!1537 = !DILocation(line: 600, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 600, column: 9)
!1539 = !DILocation(line: 601, column: 9, scope: !1478)
!1540 = !DILocation(line: 603, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 603, column: 9)
!1542 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 603, column: 9)
!1543 = !DILocation(line: 603, column: 9, scope: !1542)
!1544 = !DILocation(line: 603, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 603, column: 9)
!1546 = !DILocation(line: 604, column: 9, scope: !1478)
!1547 = !DILocation(line: 607, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 607, column: 9)
!1549 = !DILocation(line: 608, column: 9, scope: !1478)
!1550 = !DILocation(line: 610, column: 9, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 610, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 610, column: 9)
!1553 = !DILocation(line: 610, column: 9, scope: !1552)
!1554 = !DILocation(line: 610, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 610, column: 9)
!1556 = !DILocation(line: 612, column: 14, scope: !1478)
!1557 = !DILocation(line: 612, column: 22, scope: !1478)
!1558 = !DILocation(line: 611, column: 27, scope: !1478)
!1559 = !DILocation(line: 613, column: 14, scope: !1478)
!1560 = !DILocation(line: 612, column: 28, scope: !1478)
!1561 = !DILocation(line: 611, column: 9, scope: !1478)
!1562 = !DILocation(line: 614, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 614, column: 9)
!1564 = !DILocation(line: 615, column: 9, scope: !1478)
!1565 = !DILocation(line: 617, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 617, column: 9)
!1567 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 617, column: 9)
!1568 = !DILocation(line: 617, column: 9, scope: !1567)
!1569 = !DILocation(line: 617, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 617, column: 9)
!1571 = !DILocation(line: 618, column: 9, scope: !1478)
!1572 = !DILocation(line: 623, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 623, column: 9)
!1574 = !DILocation(line: 624, column: 9, scope: !1478)
!1575 = !DILocation(line: 626, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 626, column: 9)
!1577 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 626, column: 9)
!1578 = !DILocation(line: 626, column: 9, scope: !1577)
!1579 = !DILocation(line: 626, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 626, column: 9)
!1581 = !DILocation(line: 628, column: 23, scope: !1478)
!1582 = !DILocation(line: 628, column: 14, scope: !1478)
!1583 = !DILocation(line: 628, column: 31, scope: !1478)
!1584 = !DILocation(line: 629, column: 23, scope: !1478)
!1585 = !DILocation(line: 629, column: 14, scope: !1478)
!1586 = !DILocation(line: 629, column: 31, scope: !1478)
!1587 = !DILocation(line: 628, column: 38, scope: !1478)
!1588 = !DILocation(line: 630, column: 23, scope: !1478)
!1589 = !DILocation(line: 630, column: 14, scope: !1478)
!1590 = !DILocation(line: 630, column: 31, scope: !1478)
!1591 = !DILocation(line: 629, column: 38, scope: !1478)
!1592 = !DILocation(line: 631, column: 23, scope: !1478)
!1593 = !DILocation(line: 631, column: 14, scope: !1478)
!1594 = !DILocation(line: 630, column: 37, scope: !1478)
!1595 = !DILocation(line: 628, column: 13, scope: !1478)
!1596 = !DILocation(line: 627, column: 9, scope: !1478)
!1597 = !DILocation(line: 632, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 632, column: 9)
!1599 = !DILocation(line: 633, column: 9, scope: !1478)
!1600 = !DILocation(line: 635, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 635, column: 9)
!1602 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 635, column: 9)
!1603 = !DILocation(line: 635, column: 9, scope: !1602)
!1604 = !DILocation(line: 635, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 635, column: 9)
!1606 = !DILocation(line: 636, column: 9, scope: !1478)
!1607 = !DILocation(line: 645, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 645, column: 9)
!1609 = !DILocation(line: 646, column: 9, scope: !1478)
!1610 = !DILocation(line: 648, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 648, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 648, column: 9)
!1613 = !DILocation(line: 648, column: 9, scope: !1612)
!1614 = !DILocation(line: 648, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 648, column: 9)
!1616 = !DILocation(line: 654, column: 23, scope: !1478)
!1617 = !DILocation(line: 654, column: 14, scope: !1478)
!1618 = !DILocation(line: 654, column: 31, scope: !1478)
!1619 = !DILocation(line: 655, column: 23, scope: !1478)
!1620 = !DILocation(line: 655, column: 14, scope: !1478)
!1621 = !DILocation(line: 655, column: 31, scope: !1478)
!1622 = !DILocation(line: 654, column: 38, scope: !1478)
!1623 = !DILocation(line: 656, column: 23, scope: !1478)
!1624 = !DILocation(line: 656, column: 14, scope: !1478)
!1625 = !DILocation(line: 656, column: 31, scope: !1478)
!1626 = !DILocation(line: 655, column: 38, scope: !1478)
!1627 = !DILocation(line: 657, column: 23, scope: !1478)
!1628 = !DILocation(line: 657, column: 14, scope: !1478)
!1629 = !DILocation(line: 657, column: 31, scope: !1478)
!1630 = !DILocation(line: 656, column: 38, scope: !1478)
!1631 = !DILocation(line: 658, column: 23, scope: !1478)
!1632 = !DILocation(line: 658, column: 14, scope: !1478)
!1633 = !DILocation(line: 658, column: 31, scope: !1478)
!1634 = !DILocation(line: 657, column: 38, scope: !1478)
!1635 = !DILocation(line: 659, column: 23, scope: !1478)
!1636 = !DILocation(line: 659, column: 14, scope: !1478)
!1637 = !DILocation(line: 659, column: 31, scope: !1478)
!1638 = !DILocation(line: 658, column: 38, scope: !1478)
!1639 = !DILocation(line: 660, column: 23, scope: !1478)
!1640 = !DILocation(line: 660, column: 14, scope: !1478)
!1641 = !DILocation(line: 660, column: 31, scope: !1478)
!1642 = !DILocation(line: 659, column: 38, scope: !1478)
!1643 = !DILocation(line: 661, column: 23, scope: !1478)
!1644 = !DILocation(line: 661, column: 14, scope: !1478)
!1645 = !DILocation(line: 660, column: 37, scope: !1478)
!1646 = !DILocation(line: 654, column: 13, scope: !1478)
!1647 = !DILocation(line: 650, column: 9, scope: !1478)
!1648 = !DILocation(line: 662, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 662, column: 9)
!1650 = !DILocation(line: 663, column: 9, scope: !1478)
!1651 = !DILocation(line: 665, column: 9, scope: !1478)
!1652 = !DILocation(line: 666, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 666, column: 9)
!1654 = !DILocation(line: 667, column: 9, scope: !1478)
!1655 = !DILocation(line: 669, column: 9, scope: !1478)
!1656 = !DILocation(line: 670, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 670, column: 9)
!1658 = !DILocation(line: 671, column: 9, scope: !1478)
!1659 = !DILocation(line: 673, column: 9, scope: !1478)
!1660 = !DILocation(line: 674, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 674, column: 9)
!1662 = !DILocation(line: 675, column: 9, scope: !1478)
!1663 = !DILocation(line: 677, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 677, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 677, column: 9)
!1666 = !DILocation(line: 677, column: 9, scope: !1665)
!1667 = !DILocation(line: 677, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 677, column: 9)
!1669 = !DILocation(line: 680, column: 13, scope: !1477)
!1670 = !DILocation(line: 681, column: 27, scope: !1477)
!1671 = !DILocation(line: 681, column: 13, scope: !1477)
!1672 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 682, column: 13, scope: !1477)
!1674 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1673)
!1675 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1673)
!1676 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1673)
!1677 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1673)
!1678 = !DILocation(line: 76, column: 9, scope: !67, inlinedAt: !1673)
!1679 = !DILocation(line: 78, column: 5, scope: !67, inlinedAt: !1673)
!1680 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1673)
!1681 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1673)
!1682 = !DILocation(line: 0, scope: !89, inlinedAt: !1673)
!1683 = !DILocation(line: 79, column: 15, scope: !89, inlinedAt: !1673)
!1684 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1673)
!1685 = !DILocation(line: 80, column: 14, scope: !89, inlinedAt: !1673)
!1686 = !DILocation(line: 80, column: 12, scope: !89, inlinedAt: !1673)
!1687 = !DILocation(line: 81, column: 12, scope: !89, inlinedAt: !1673)
!1688 = !DILocation(line: 82, column: 10, scope: !89, inlinedAt: !1673)
!1689 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !1673)
!1690 = !DILocation(line: 683, column: 30, scope: !1477)
!1691 = !DILocation(line: 680, column: 19, scope: !1477)
!1692 = !DILocation(line: 683, column: 13, scope: !1477)
!1693 = !DILocation(line: 684, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 684, column: 13)
!1695 = !DILocation(line: 685, column: 9, scope: !1478)
!1696 = !DILocation(line: 686, column: 9, scope: !1478)
!1697 = !DILocation(line: 688, column: 9, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 688, column: 9)
!1699 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 688, column: 9)
!1700 = !DILocation(line: 688, column: 9, scope: !1699)
!1701 = !DILocation(line: 688, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 688, column: 9)
!1703 = !DILocation(line: 691, column: 13, scope: !1480)
!1704 = !DILocation(line: 692, column: 27, scope: !1480)
!1705 = !DILocation(line: 692, column: 13, scope: !1480)
!1706 = !DILocation(line: 69, column: 23, scope: !67, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 693, column: 13, scope: !1480)
!1708 = !DILocation(line: 69, column: 35, scope: !67, inlinedAt: !1707)
!1709 = !DILocation(line: 70, column: 22, scope: !67, inlinedAt: !1707)
!1710 = !DILocation(line: 73, column: 9, scope: !67, inlinedAt: !1707)
!1711 = !DILocation(line: 74, column: 20, scope: !67, inlinedAt: !1707)
!1712 = !DILocation(line: 76, column: 9, scope: !67, inlinedAt: !1707)
!1713 = !DILocation(line: 78, column: 5, scope: !67, inlinedAt: !1707)
!1714 = !DILocation(line: 71, column: 44, scope: !67, inlinedAt: !1707)
!1715 = !DILocation(line: 71, column: 22, scope: !67, inlinedAt: !1707)
!1716 = !DILocation(line: 0, scope: !89, inlinedAt: !1707)
!1717 = !DILocation(line: 79, column: 15, scope: !89, inlinedAt: !1707)
!1718 = !DILocation(line: 72, column: 21, scope: !67, inlinedAt: !1707)
!1719 = !DILocation(line: 80, column: 14, scope: !89, inlinedAt: !1707)
!1720 = !DILocation(line: 80, column: 12, scope: !89, inlinedAt: !1707)
!1721 = !DILocation(line: 81, column: 12, scope: !89, inlinedAt: !1707)
!1722 = !DILocation(line: 82, column: 10, scope: !89, inlinedAt: !1707)
!1723 = !DILocation(line: 85, column: 1, scope: !67, inlinedAt: !1707)
!1724 = !DILocation(line: 694, column: 30, scope: !1480)
!1725 = !DILocation(line: 691, column: 20, scope: !1480)
!1726 = !DILocation(line: 694, column: 13, scope: !1480)
!1727 = !DILocation(line: 695, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 695, column: 13)
!1729 = !DILocation(line: 696, column: 9, scope: !1478)
!1730 = !DILocation(line: 697, column: 9, scope: !1478)
!1731 = !DILocation(line: 699, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 699, column: 9)
!1733 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 699, column: 9)
!1734 = !DILocation(line: 699, column: 9, scope: !1733)
!1735 = !DILocation(line: 699, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 699, column: 9)
!1737 = !DILocation(line: 701, column: 24, scope: !1482)
!1738 = !DILocation(line: 701, column: 20, scope: !1482)
!1739 = !DILocation(line: 702, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 702, column: 13)
!1741 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 702, column: 13)
!1742 = !DILocation(line: 702, column: 13, scope: !1741)
!1743 = !DILocation(line: 702, column: 13, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 702, column: 13)
!1745 = !DILocation(line: 703, column: 42, scope: !1482)
!1746 = !DILocation(line: 703, column: 13, scope: !1482)
!1747 = !DILocation(line: 704, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 704, column: 13)
!1749 = !DILocation(line: 705, column: 9, scope: !1478)
!1750 = !DILocation(line: 0, scope: !1744)
!1751 = !DILocation(line: 708, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 708, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 708, column: 9)
!1754 = !DILocation(line: 708, column: 9, scope: !1753)
!1755 = !DILocation(line: 708, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 708, column: 9)
!1757 = !DILocation(line: 710, column: 25, scope: !1484)
!1758 = !DILocation(line: 710, column: 33, scope: !1484)
!1759 = !DILocation(line: 710, column: 41, scope: !1484)
!1760 = !DILocation(line: 710, column: 39, scope: !1484)
!1761 = !DILocation(line: 710, column: 20, scope: !1484)
!1762 = !DILocation(line: 711, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 711, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 711, column: 13)
!1765 = !DILocation(line: 711, column: 13, scope: !1764)
!1766 = !DILocation(line: 711, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 711, column: 13)
!1768 = !DILocation(line: 712, column: 42, scope: !1484)
!1769 = !DILocation(line: 712, column: 13, scope: !1484)
!1770 = !DILocation(line: 713, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 713, column: 13)
!1772 = !DILocation(line: 714, column: 9, scope: !1478)
!1773 = !DILocation(line: 0, scope: !1767)
!1774 = !DILocation(line: 717, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 717, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 717, column: 9)
!1777 = !DILocation(line: 717, column: 9, scope: !1776)
!1778 = !DILocation(line: 717, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 717, column: 9)
!1780 = !DILocation(line: 719, column: 33, scope: !1486)
!1781 = !DILocation(line: 719, column: 25, scope: !1486)
!1782 = !DILocation(line: 719, column: 41, scope: !1486)
!1783 = !DILocation(line: 720, column: 33, scope: !1486)
!1784 = !DILocation(line: 720, column: 25, scope: !1486)
!1785 = !DILocation(line: 720, column: 41, scope: !1486)
!1786 = !DILocation(line: 719, column: 48, scope: !1486)
!1787 = !DILocation(line: 721, column: 33, scope: !1486)
!1788 = !DILocation(line: 721, column: 25, scope: !1486)
!1789 = !DILocation(line: 721, column: 41, scope: !1486)
!1790 = !DILocation(line: 720, column: 48, scope: !1486)
!1791 = !DILocation(line: 722, column: 32, scope: !1486)
!1792 = !DILocation(line: 722, column: 24, scope: !1486)
!1793 = !DILocation(line: 721, column: 47, scope: !1486)
!1794 = !DILocation(line: 719, column: 20, scope: !1486)
!1795 = !DILocation(line: 723, column: 13, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 723, column: 13)
!1797 = !DILocation(line: 724, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 724, column: 13)
!1799 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 724, column: 13)
!1800 = !DILocation(line: 724, column: 13, scope: !1799)
!1801 = !DILocation(line: 724, column: 13, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 724, column: 13)
!1803 = !DILocation(line: 725, column: 13, scope: !1486)
!1804 = !DILocation(line: 726, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 726, column: 13)
!1806 = !DILocation(line: 727, column: 9, scope: !1478)
!1807 = !DILocation(line: 0, scope: !1802)
!1808 = !DILocation(line: 730, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 730, column: 9)
!1810 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 730, column: 9)
!1811 = !DILocation(line: 730, column: 9, scope: !1810)
!1812 = !DILocation(line: 730, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 730, column: 9)
!1814 = !DILocation(line: 732, column: 25, scope: !1488)
!1815 = !DILocation(line: 732, column: 33, scope: !1488)
!1816 = !DILocation(line: 732, column: 41, scope: !1488)
!1817 = !DILocation(line: 732, column: 39, scope: !1488)
!1818 = !DILocation(line: 732, column: 20, scope: !1488)
!1819 = !DILocation(line: 733, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 733, column: 13)
!1821 = !DILocation(line: 734, column: 13, scope: !1488)
!1822 = !DILocation(line: 736, column: 9, scope: !1478)
!1823 = !DILocation(line: 738, column: 9, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 738, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 738, column: 9)
!1826 = !DILocation(line: 738, column: 9, scope: !1825)
!1827 = !DILocation(line: 738, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 738, column: 9)
!1829 = !DILocation(line: 740, column: 33, scope: !1490)
!1830 = !DILocation(line: 740, column: 25, scope: !1490)
!1831 = !DILocation(line: 740, column: 41, scope: !1490)
!1832 = !DILocation(line: 741, column: 33, scope: !1490)
!1833 = !DILocation(line: 741, column: 25, scope: !1490)
!1834 = !DILocation(line: 741, column: 41, scope: !1490)
!1835 = !DILocation(line: 740, column: 48, scope: !1490)
!1836 = !DILocation(line: 742, column: 33, scope: !1490)
!1837 = !DILocation(line: 742, column: 25, scope: !1490)
!1838 = !DILocation(line: 742, column: 41, scope: !1490)
!1839 = !DILocation(line: 741, column: 48, scope: !1490)
!1840 = !DILocation(line: 743, column: 32, scope: !1490)
!1841 = !DILocation(line: 743, column: 24, scope: !1490)
!1842 = !DILocation(line: 742, column: 47, scope: !1490)
!1843 = !DILocation(line: 740, column: 20, scope: !1490)
!1844 = !DILocation(line: 744, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 744, column: 13)
!1846 = !DILocation(line: 745, column: 13, scope: !1490)
!1847 = !DILocation(line: 747, column: 9, scope: !1478)
!1848 = !DILocation(line: 749, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 749, column: 9)
!1850 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 749, column: 9)
!1851 = !DILocation(line: 749, column: 9, scope: !1850)
!1852 = !DILocation(line: 749, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 749, column: 9)
!1854 = !DILocation(line: 751, column: 25, scope: !1492)
!1855 = !DILocation(line: 751, column: 33, scope: !1492)
!1856 = !DILocation(line: 751, column: 41, scope: !1492)
!1857 = !DILocation(line: 751, column: 39, scope: !1492)
!1858 = !DILocation(line: 751, column: 20, scope: !1492)
!1859 = !DILocation(line: 752, column: 13, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 752, column: 13)
!1861 = !DILocation(line: 753, column: 13, scope: !1492)
!1862 = !DILocation(line: 755, column: 9, scope: !1478)
!1863 = !DILocation(line: 757, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 757, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 757, column: 9)
!1866 = !DILocation(line: 757, column: 9, scope: !1865)
!1867 = !DILocation(line: 757, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 757, column: 9)
!1869 = !DILocation(line: 759, column: 33, scope: !1494)
!1870 = !DILocation(line: 759, column: 25, scope: !1494)
!1871 = !DILocation(line: 759, column: 41, scope: !1494)
!1872 = !DILocation(line: 760, column: 33, scope: !1494)
!1873 = !DILocation(line: 760, column: 25, scope: !1494)
!1874 = !DILocation(line: 760, column: 41, scope: !1494)
!1875 = !DILocation(line: 759, column: 48, scope: !1494)
!1876 = !DILocation(line: 761, column: 33, scope: !1494)
!1877 = !DILocation(line: 761, column: 25, scope: !1494)
!1878 = !DILocation(line: 761, column: 41, scope: !1494)
!1879 = !DILocation(line: 760, column: 48, scope: !1494)
!1880 = !DILocation(line: 762, column: 32, scope: !1494)
!1881 = !DILocation(line: 762, column: 24, scope: !1494)
!1882 = !DILocation(line: 761, column: 47, scope: !1494)
!1883 = !DILocation(line: 759, column: 20, scope: !1494)
!1884 = !DILocation(line: 763, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 763, column: 13)
!1886 = !DILocation(line: 764, column: 13, scope: !1494)
!1887 = !DILocation(line: 766, column: 9, scope: !1478)
!1888 = !DILocation(line: 768, column: 30, scope: !1499)
!1889 = !DILocation(line: 768, column: 13, scope: !1478)
!1890 = !DILocation(line: 769, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 768, column: 36)
!1892 = !DILocation(line: 770, column: 13, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 770, column: 13)
!1894 = !DILocation(line: 771, column: 9, scope: !1891)
!1895 = !DILocation(line: 771, column: 29, scope: !1498)
!1896 = !DILocation(line: 771, column: 37, scope: !1498)
!1897 = !DILocation(line: 771, column: 20, scope: !1499)
!1898 = !DILocation(line: 772, column: 31, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 771, column: 46)
!1900 = !DILocation(line: 772, column: 13, scope: !1899)
!1901 = !DILocation(line: 773, column: 13, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 773, column: 13)
!1903 = !DILocation(line: 774, column: 9, scope: !1899)
!1904 = !DILocation(line: 774, column: 37, scope: !1497)
!1905 = !DILocation(line: 774, column: 20, scope: !1498)
!1906 = !DILocation(line: 775, column: 32, scope: !1496)
!1907 = !DILocation(line: 775, column: 24, scope: !1496)
!1908 = !DILocation(line: 775, column: 20, scope: !1496)
!1909 = !DILocation(line: 776, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 776, column: 13)
!1911 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 776, column: 13)
!1912 = !DILocation(line: 776, column: 13, scope: !1911)
!1913 = !DILocation(line: 776, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 776, column: 13)
!1915 = !DILocation(line: 777, column: 42, scope: !1496)
!1916 = !DILocation(line: 777, column: 13, scope: !1496)
!1917 = !DILocation(line: 778, column: 13, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 778, column: 13)
!1919 = !DILocation(line: 779, column: 9, scope: !1497)
!1920 = !DILocation(line: 0, scope: !1914)
!1921 = !DILocation(line: 779, column: 29, scope: !1502)
!1922 = !DILocation(line: 779, column: 37, scope: !1502)
!1923 = !DILocation(line: 779, column: 20, scope: !1497)
!1924 = !DILocation(line: 780, column: 32, scope: !1501)
!1925 = !DILocation(line: 780, column: 24, scope: !1501)
!1926 = !DILocation(line: 780, column: 20, scope: !1501)
!1927 = !DILocation(line: 781, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 781, column: 13)
!1929 = !DILocation(line: 782, column: 13, scope: !1501)
!1930 = !DILocation(line: 783, column: 9, scope: !1501)
!1931 = !DILocation(line: 783, column: 37, scope: !1505)
!1932 = !DILocation(line: 783, column: 20, scope: !1502)
!1933 = !DILocation(line: 784, column: 32, scope: !1504)
!1934 = !DILocation(line: 784, column: 24, scope: !1504)
!1935 = !DILocation(line: 784, column: 20, scope: !1504)
!1936 = !DILocation(line: 785, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 785, column: 13)
!1938 = !DILocation(line: 786, column: 13, scope: !1504)
!1939 = !DILocation(line: 787, column: 9, scope: !1504)
!1940 = !DILocation(line: 788, column: 16, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 787, column: 16)
!1942 = !DILocation(line: 788, column: 20, scope: !1941)
!1943 = !DILocation(line: 791, column: 1, scope: !1470)
!1944 = distinct !DISubprogram(name: "mp_decode_to_lua_hash", scope: !3, file: !3, line: 565, type: !1440, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DILocalVariable(name: "L", arg: 1, scope: !1944, file: !3, line: 565, type: !58)
!1947 = !DILocalVariable(name: "c", arg: 2, scope: !1944, file: !3, line: 565, type: !255)
!1948 = !DILocalVariable(name: "len", arg: 3, scope: !1944, file: !3, line: 565, type: !14)
!1949 = !DILocation(line: 565, column: 39, scope: !1944)
!1950 = !DILocation(line: 565, column: 50, scope: !1944)
!1951 = !DILocation(line: 565, column: 60, scope: !1944)
!1952 = !DILocation(line: 566, column: 5, scope: !1944)
!1953 = !DILocation(line: 567, column: 5, scope: !1944)
!1954 = !DILocation(line: 568, column: 5, scope: !1944)
!1955 = !DILocation(line: 568, column: 14, scope: !1944)
!1956 = !DILocation(line: 569, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 568, column: 18)
!1958 = !DILocation(line: 570, column: 16, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 570, column: 13)
!1960 = !DILocation(line: 570, column: 13, scope: !1959)
!1961 = !DILocation(line: 570, column: 13, scope: !1957)
!1962 = !DILocation(line: 571, column: 9, scope: !1957)
!1963 = !DILocation(line: 572, column: 16, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 572, column: 13)
!1965 = !DILocation(line: 572, column: 13, scope: !1964)
!1966 = !DILocation(line: 572, column: 13, scope: !1957)
!1967 = !DILocation(line: 573, column: 9, scope: !1957)
!1968 = distinct !{!1968, !1954, !1969}
!1969 = !DILocation(line: 574, column: 5, scope: !1944)
!1970 = !DILocation(line: 575, column: 1, scope: !1944)
!1971 = distinct !DISubprogram(name: "mp_unpack_full", scope: !3, file: !3, line: 793, type: !1972, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!30, !58, !30, !30}
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983}
!1975 = !DILocalVariable(name: "L", arg: 1, scope: !1971, file: !3, line: 793, type: !58)
!1976 = !DILocalVariable(name: "limit", arg: 2, scope: !1971, file: !3, line: 793, type: !30)
!1977 = !DILocalVariable(name: "offset", arg: 3, scope: !1971, file: !3, line: 793, type: !30)
!1978 = !DILocalVariable(name: "len", scope: !1971, file: !3, line: 794, type: !14)
!1979 = !DILocalVariable(name: "s", scope: !1971, file: !3, line: 795, type: !50)
!1980 = !DILocalVariable(name: "c", scope: !1971, file: !3, line: 796, type: !256)
!1981 = !DILocalVariable(name: "cnt", scope: !1971, file: !3, line: 797, type: !30)
!1982 = !DILocalVariable(name: "decode_all", scope: !1971, file: !3, line: 798, type: !30)
!1983 = !DILocalVariable(name: "offset", scope: !1984, file: !3, line: 830, type: !30)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 826, column: 22)
!1985 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 826, column: 9)
!1986 = !DILocation(line: 793, column: 31, scope: !1971)
!1987 = !DILocation(line: 793, column: 38, scope: !1971)
!1988 = !DILocation(line: 793, column: 49, scope: !1971)
!1989 = !DILocation(line: 794, column: 5, scope: !1971)
!1990 = !DILocation(line: 796, column: 5, scope: !1971)
!1991 = !DILocation(line: 798, column: 24, scope: !1971)
!1992 = !DILocation(line: 798, column: 30, scope: !1971)
!1993 = !DILocation(line: 798, column: 33, scope: !1971)
!1994 = !DILocation(line: 0, scope: !1971)
!1995 = !DILocation(line: 794, column: 12, scope: !1971)
!1996 = !DILocation(line: 800, column: 9, scope: !1971)
!1997 = !DILocation(line: 795, column: 17, scope: !1971)
!1998 = !DILocation(line: 802, column: 20, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 802, column: 9)
!2000 = !DILocation(line: 805, column: 21, scope: !1999)
!2001 = !DILocation(line: 803, column: 16, scope: !1999)
!2002 = !DILocation(line: 803, column: 9, scope: !1999)
!2003 = !DILocation(line: 806, column: 14, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 806, column: 14)
!2005 = !DILocation(line: 806, column: 23, scope: !2004)
!2006 = !DILocation(line: 806, column: 21, scope: !2004)
!2007 = !DILocation(line: 806, column: 14, scope: !1999)
!2008 = !DILocation(line: 807, column: 16, scope: !2004)
!2009 = !DILocation(line: 807, column: 9, scope: !2004)
!2010 = !DILocation(line: 810, column: 9, scope: !1971)
!2011 = !DILocation(line: 810, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 810, column: 9)
!2013 = !DILocation(line: 812, column: 44, scope: !1971)
!2014 = !DILocation(line: 812, column: 55, scope: !1971)
!2015 = !DILocation(line: 796, column: 12, scope: !1971)
!2016 = !DILocation(line: 154, column: 26, scope: !252, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 812, column: 5, scope: !1971)
!2018 = !DILocation(line: 154, column: 55, scope: !252, inlinedAt: !2017)
!2019 = !DILocation(line: 154, column: 65, scope: !252, inlinedAt: !2017)
!2020 = !DILocation(line: 155, column: 13, scope: !252, inlinedAt: !2017)
!2021 = !DILocation(line: 155, column: 15, scope: !252, inlinedAt: !2017)
!2022 = !DILocation(line: 156, column: 13, scope: !252, inlinedAt: !2017)
!2023 = !DILocation(line: 156, column: 18, scope: !252, inlinedAt: !2017)
!2024 = !DILocation(line: 157, column: 13, scope: !252, inlinedAt: !2017)
!2025 = !DILocation(line: 157, column: 17, scope: !252, inlinedAt: !2017)
!2026 = !DILocation(line: 158, column: 1, scope: !252, inlinedAt: !2017)
!2027 = !DILocation(line: 797, column: 9, scope: !1971)
!2028 = !DILocation(line: 816, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 816, column: 5)
!2030 = !DILocation(line: 816, column: 25, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 816, column: 5)
!2032 = !DILocation(line: 816, column: 29, scope: !2031)
!2033 = !DILocation(line: 816, column: 36, scope: !2031)
!2034 = !DILocation(line: 816, column: 5, scope: !2029)
!2035 = distinct !{!2035, !2034, !2036}
!2036 = !DILocation(line: 824, column: 5, scope: !2029)
!2037 = !DILocation(line: 817, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 816, column: 52)
!2039 = !DILocation(line: 819, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 819, column: 13)
!2041 = !DILocation(line: 819, column: 19, scope: !2040)
!2042 = !DILocation(line: 819, column: 13, scope: !2038)
!2043 = !DILocation(line: 820, column: 20, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 819, column: 40)
!2045 = !DILocation(line: 820, column: 13, scope: !2044)
!2046 = !DILocation(line: 821, column: 26, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 821, column: 20)
!2048 = !DILocation(line: 821, column: 20, scope: !2040)
!2049 = !DILocation(line: 822, column: 20, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 821, column: 50)
!2051 = !DILocation(line: 822, column: 13, scope: !2050)
!2052 = !DILocation(line: 816, column: 48, scope: !2031)
!2053 = !DILocation(line: 816, column: 5, scope: !2031)
!2054 = !DILocation(line: 816, column: 20, scope: !2031)
!2055 = !DILocation(line: 0, scope: !2031)
!2056 = !DILocation(line: 826, column: 9, scope: !1971)
!2057 = !DILocation(line: 830, column: 22, scope: !1984)
!2058 = !DILocation(line: 830, column: 26, scope: !1984)
!2059 = !DILocation(line: 832, column: 9, scope: !1984)
!2060 = !DILocation(line: 835, column: 30, scope: !1984)
!2061 = !DILocation(line: 835, column: 35, scope: !1984)
!2062 = !DILocation(line: 835, column: 28, scope: !1984)
!2063 = !DILocation(line: 835, column: 9, scope: !1984)
!2064 = !DILocation(line: 842, column: 9, scope: !1984)
!2065 = !DILocation(line: 843, column: 13, scope: !1984)
!2066 = !DILocation(line: 844, column: 5, scope: !1984)
!2067 = !DILocation(line: 0, scope: !1999)
!2068 = !DILocation(line: 847, column: 1, scope: !1971)
!2069 = distinct !DISubprogram(name: "mp_unpack", scope: !3, file: !3, line: 849, type: !56, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2070)
!2070 = !{!2071}
!2071 = !DILocalVariable(name: "L", arg: 1, scope: !2069, file: !3, line: 849, type: !58)
!2072 = !DILocation(line: 849, column: 26, scope: !2069)
!2073 = !DILocation(line: 850, column: 12, scope: !2069)
!2074 = !DILocation(line: 850, column: 5, scope: !2069)
!2075 = distinct !DISubprogram(name: "mp_unpack_one", scope: !3, file: !3, line: 853, type: !56, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2076)
!2076 = !{!2077, !2078}
!2077 = !DILocalVariable(name: "L", arg: 1, scope: !2075, file: !3, line: 853, type: !58)
!2078 = !DILocalVariable(name: "offset", scope: !2075, file: !3, line: 854, type: !30)
!2079 = !DILocation(line: 853, column: 30, scope: !2075)
!2080 = !DILocation(line: 854, column: 18, scope: !2075)
!2081 = !DILocation(line: 854, column: 9, scope: !2075)
!2082 = !DILocation(line: 856, column: 5, scope: !2075)
!2083 = !DILocation(line: 857, column: 12, scope: !2075)
!2084 = !DILocation(line: 857, column: 5, scope: !2075)
!2085 = distinct !DISubprogram(name: "mp_unpack_limit", scope: !3, file: !3, line: 860, type: !56, isLocal: false, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "L", arg: 1, scope: !2085, file: !3, line: 860, type: !58)
!2088 = !DILocalVariable(name: "limit", scope: !2085, file: !3, line: 861, type: !30)
!2089 = !DILocalVariable(name: "offset", scope: !2085, file: !3, line: 862, type: !30)
!2090 = !DILocation(line: 860, column: 32, scope: !2085)
!2091 = !DILocation(line: 861, column: 17, scope: !2085)
!2092 = !DILocation(line: 861, column: 9, scope: !2085)
!2093 = !DILocation(line: 862, column: 18, scope: !2085)
!2094 = !DILocation(line: 862, column: 9, scope: !2085)
!2095 = !DILocation(line: 864, column: 5, scope: !2085)
!2096 = !DILocation(line: 866, column: 12, scope: !2085)
!2097 = !DILocation(line: 866, column: 5, scope: !2085)
!2098 = distinct !DISubprogram(name: "mp_safe", scope: !3, file: !3, line: 869, type: !56, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2099)
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DILocalVariable(name: "L", arg: 1, scope: !2098, file: !3, line: 869, type: !58)
!2101 = !DILocalVariable(name: "argc", scope: !2098, file: !3, line: 870, type: !30)
!2102 = !DILocalVariable(name: "err", scope: !2098, file: !3, line: 870, type: !30)
!2103 = !DILocalVariable(name: "total_results", scope: !2098, file: !3, line: 870, type: !30)
!2104 = !DILocation(line: 869, column: 24, scope: !2098)
!2105 = !DILocation(line: 872, column: 12, scope: !2098)
!2106 = !DILocation(line: 870, column: 9, scope: !2098)
!2107 = !DILocation(line: 876, column: 5, scope: !2098)
!2108 = !DILocation(line: 877, column: 5, scope: !2098)
!2109 = !DILocation(line: 879, column: 11, scope: !2098)
!2110 = !DILocation(line: 870, column: 15, scope: !2098)
!2111 = !DILocation(line: 880, column: 21, scope: !2098)
!2112 = !DILocation(line: 870, column: 20, scope: !2098)
!2113 = !DILocation(line: 882, column: 10, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 882, column: 9)
!2115 = !DILocation(line: 882, column: 9, scope: !2098)
!2116 = !DILocation(line: 885, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 884, column: 12)
!2118 = !DILocation(line: 886, column: 9, scope: !2117)
!2119 = !DILocation(line: 887, column: 9, scope: !2117)
!2120 = !DILocation(line: 0, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 882, column: 15)
!2122 = !DILocation(line: 889, column: 1, scope: !2098)
!2123 = distinct !DISubprogram(name: "luaopen_create", scope: !3, file: !3, line: 900, type: !56, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2124)
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "L", arg: 1, scope: !2123, file: !3, line: 900, type: !58)
!2126 = !DILocalVariable(name: "i", scope: !2123, file: !3, line: 901, type: !30)
!2127 = !DILocation(line: 900, column: 31, scope: !2123)
!2128 = !DILocation(line: 904, column: 5, scope: !2123)
!2129 = !DILocation(line: 901, column: 9, scope: !2123)
!2130 = !DILocation(line: 906, column: 10, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 906, column: 5)
!2132 = !DILocation(line: 906, column: 5, scope: !2131)
!2133 = !DILocation(line: 907, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 906, column: 60)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 906, column: 5)
!2136 = !DILocation(line: 908, column: 9, scope: !2134)
!2137 = !DILocation(line: 906, column: 5, scope: !2135)
!2138 = !DILocation(line: 912, column: 5, scope: !2123)
!2139 = !DILocation(line: 913, column: 5, scope: !2123)
!2140 = !DILocation(line: 914, column: 5, scope: !2123)
!2141 = !DILocation(line: 915, column: 5, scope: !2123)
!2142 = !DILocation(line: 916, column: 5, scope: !2123)
!2143 = !DILocation(line: 917, column: 5, scope: !2123)
!2144 = !DILocation(line: 918, column: 5, scope: !2123)
!2145 = !DILocation(line: 919, column: 5, scope: !2123)
!2146 = !DILocation(line: 920, column: 5, scope: !2123)
!2147 = distinct !DISubprogram(name: "luaopen_cmsgpack", scope: !3, file: !3, line: 923, type: !56, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2148)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "L", arg: 1, scope: !2147, file: !3, line: 923, type: !58)
!2150 = !DILocation(line: 923, column: 44, scope: !2147)
!2151 = !DILocation(line: 924, column: 5, scope: !2147)
!2152 = !DILocation(line: 928, column: 5, scope: !2147)
!2153 = !DILocation(line: 929, column: 5, scope: !2147)
!2154 = !DILocation(line: 932, column: 5, scope: !2147)
!2155 = distinct !DISubprogram(name: "luaopen_cmsgpack_safe", scope: !3, file: !3, line: 935, type: !56, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2156)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "L", arg: 1, scope: !2155, file: !3, line: 935, type: !58)
!2158 = !DILocalVariable(name: "i", scope: !2155, file: !3, line: 936, type: !30)
!2159 = !DILocation(line: 935, column: 49, scope: !2155)
!2160 = !DILocation(line: 923, column: 44, scope: !2147, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 938, column: 5, scope: !2155)
!2162 = !DILocation(line: 924, column: 5, scope: !2147, inlinedAt: !2161)
!2163 = !DILocation(line: 928, column: 5, scope: !2147, inlinedAt: !2161)
!2164 = !DILocation(line: 929, column: 5, scope: !2147, inlinedAt: !2161)
!2165 = !DILocation(line: 932, column: 5, scope: !2147, inlinedAt: !2161)
!2166 = !DILocation(line: 936, column: 9, scope: !2155)
!2167 = !DILocation(line: 941, column: 10, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 941, column: 5)
!2169 = !DILocation(line: 941, column: 5, scope: !2168)
!2170 = !DILocation(line: 942, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 941, column: 60)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 941, column: 5)
!2173 = !DILocation(line: 943, column: 9, scope: !2171)
!2174 = !DILocation(line: 944, column: 9, scope: !2171)
!2175 = !DILocation(line: 941, column: 5, scope: !2172)
!2176 = !DILocation(line: 949, column: 5, scope: !2155)
!2177 = !DILocation(line: 950, column: 5, scope: !2155)
!2178 = !DILocation(line: 953, column: 5, scope: !2155)
