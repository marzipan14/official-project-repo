; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_bit.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_bit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@.str = private unnamed_addr constant [37 x i8] c"compiled with incompatible luaconf.h\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"not compiled with SWAPPED_DOUBLE\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bit library self-test failed (%s)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@bit_funcs = internal constant [13 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_tobit }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_bnot }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_band }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_bor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_bxor }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_lshift }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_rshift }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_arshift }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_rol }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_ror }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_bswap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @bit_tohex }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tobit\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bnot\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"band\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bor\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bxor\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"lshift\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rshift\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"arshift\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"bswap\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"tohex\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_bit(%struct.lua_State*) local_unnamed_addr #0 !dbg !46 {
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x41D56A8CDDC00000) #4, !dbg !54
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !73
  %3 = fadd double %2, 0x4338000000000000, !dbg !75
  %4 = bitcast double %3 to i64, !dbg !75
  %5 = trunc i64 %4 to i32, !dbg !76
  switch i32 %5, label %11 [
    i32 0, label %6
    i32 1437217655, label %15
  ], !dbg !78

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #4, !dbg !80
  %8 = icmp eq i32 %7, 0, !dbg !80
  br i1 %8, label %9, label %11, !dbg !81

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !82
  br label %11, !dbg !84

; <label>:11:                                     ; preds = %1, %9, %6
  %12 = icmp eq i32 %5, 1127743488, !dbg !85
  %13 = select i1 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), !dbg !87
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %13) #4, !dbg !89
  br label %15, !dbg !90

; <label>:15:                                     ; preds = %1, %11
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([13 x %struct.luaL_Reg], [13 x %struct.luaL_Reg]* @bit_funcs, i64 0, i64 0)) #4, !dbg !91
  ret i32 1, !dbg !92
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_typerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @bit_tobit(%struct.lua_State*) #0 !dbg !93 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !100
  %3 = fadd double %2, 0x4338000000000000, !dbg !102
  %4 = bitcast double %3 to i64, !dbg !102
  %5 = trunc i64 %4 to i32, !dbg !103
  %6 = icmp eq i32 %5, 0, !dbg !105
  br i1 %6, label %7, label %12, !dbg !106

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !107
  %9 = icmp eq i32 %8, 0, !dbg !107
  br i1 %9, label %10, label %12, !dbg !108

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !109
  br label %12, !dbg !110

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = sitofp i32 %5 to double, !dbg !111
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %13) #4, !dbg !111
  ret i32 1, !dbg !111
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bnot(%struct.lua_State*) #0 !dbg !112 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !119
  %3 = fadd double %2, 0x4338000000000000, !dbg !121
  %4 = bitcast double %3 to i64, !dbg !121
  %5 = trunc i64 %4 to i32, !dbg !122
  %6 = icmp eq i32 %5, 0, !dbg !124
  br i1 %6, label %7, label %12, !dbg !125

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !126
  %9 = icmp eq i32 %8, 0, !dbg !126
  br i1 %9, label %10, label %12, !dbg !127

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !128
  br label %12, !dbg !129

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = xor i32 %5, -1, !dbg !130
  %14 = sitofp i32 %13 to double, !dbg !130
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #4, !dbg !130
  ret i32 1, !dbg !130
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_band(%struct.lua_State*) #0 !dbg !131 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !140
  %3 = fadd double %2, 0x4338000000000000, !dbg !142
  %4 = bitcast double %3 to i64, !dbg !142
  %5 = trunc i64 %4 to i32, !dbg !143
  %6 = icmp eq i32 %5, 0, !dbg !145
  br i1 %6, label %7, label %12, !dbg !146

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !147
  %9 = icmp eq i32 %8, 0, !dbg !147
  br i1 %9, label %10, label %12, !dbg !148

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !149
  br label %12, !dbg !150

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !151
  %14 = icmp sgt i32 %13, 1, !dbg !153
  br i1 %14, label %15, label %32, !dbg !151

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !158
  %19 = fadd double %18, 0x4338000000000000, !dbg !160
  %20 = bitcast double %19 to i64, !dbg !160
  %21 = trunc i64 %20 to i32, !dbg !161
  %22 = icmp eq i32 %21, 0, !dbg !163
  br i1 %22, label %23, label %28, !dbg !164

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !165
  %25 = icmp eq i32 %24, 0, !dbg !165
  br i1 %25, label %26, label %28, !dbg !166

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !167
  br label %28, !dbg !168

; <label>:28:                                     ; preds = %15, %23, %26
  %29 = and i32 %16, %21, !dbg !153
  %30 = add nsw i32 %17, -1, !dbg !153
  %31 = icmp sgt i32 %17, 2, !dbg !153
  br i1 %31, label %15, label %32, !dbg !151, !llvm.loop !169

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !136
  %34 = sitofp i32 %33 to double, !dbg !136
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !136
  ret i32 1, !dbg !136
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bor(%struct.lua_State*) #0 !dbg !170 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !179
  %3 = fadd double %2, 0x4338000000000000, !dbg !181
  %4 = bitcast double %3 to i64, !dbg !181
  %5 = trunc i64 %4 to i32, !dbg !182
  %6 = icmp eq i32 %5, 0, !dbg !184
  br i1 %6, label %7, label %12, !dbg !185

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !186
  %9 = icmp eq i32 %8, 0, !dbg !186
  br i1 %9, label %10, label %12, !dbg !187

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !188
  br label %12, !dbg !189

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !190
  %14 = icmp sgt i32 %13, 1, !dbg !192
  br i1 %14, label %15, label %32, !dbg !190

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !197
  %19 = fadd double %18, 0x4338000000000000, !dbg !199
  %20 = bitcast double %19 to i64, !dbg !199
  %21 = trunc i64 %20 to i32, !dbg !200
  %22 = icmp eq i32 %21, 0, !dbg !202
  br i1 %22, label %23, label %28, !dbg !203

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !204
  %25 = icmp eq i32 %24, 0, !dbg !204
  br i1 %25, label %26, label %28, !dbg !205

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !206
  br label %28, !dbg !207

; <label>:28:                                     ; preds = %15, %23, %26
  %29 = or i32 %16, %21, !dbg !192
  %30 = add nsw i32 %17, -1, !dbg !192
  %31 = icmp sgt i32 %17, 2, !dbg !192
  br i1 %31, label %15, label %32, !dbg !190, !llvm.loop !208

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !175
  %34 = sitofp i32 %33 to double, !dbg !175
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !175
  ret i32 1, !dbg !175
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bxor(%struct.lua_State*) #0 !dbg !209 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !218
  %3 = fadd double %2, 0x4338000000000000, !dbg !220
  %4 = bitcast double %3 to i64, !dbg !220
  %5 = trunc i64 %4 to i32, !dbg !221
  %6 = icmp eq i32 %5, 0, !dbg !223
  br i1 %6, label %7, label %12, !dbg !224

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !225
  %9 = icmp eq i32 %8, 0, !dbg !225
  br i1 %9, label %10, label %12, !dbg !226

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !227
  br label %12, !dbg !228

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !229
  %14 = icmp sgt i32 %13, 1, !dbg !231
  br i1 %14, label %15, label %32, !dbg !229

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !236
  %19 = fadd double %18, 0x4338000000000000, !dbg !238
  %20 = bitcast double %19 to i64, !dbg !238
  %21 = trunc i64 %20 to i32, !dbg !239
  %22 = icmp eq i32 %21, 0, !dbg !241
  br i1 %22, label %23, label %28, !dbg !242

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !243
  %25 = icmp eq i32 %24, 0, !dbg !243
  br i1 %25, label %26, label %28, !dbg !244

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !245
  br label %28, !dbg !246

; <label>:28:                                     ; preds = %15, %23, %26
  %29 = xor i32 %16, %21, !dbg !231
  %30 = add nsw i32 %17, -1, !dbg !231
  %31 = icmp sgt i32 %17, 2, !dbg !231
  br i1 %31, label %15, label %32, !dbg !229, !llvm.loop !247

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !214
  %34 = sitofp i32 %33 to double, !dbg !214
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !214
  ret i32 1, !dbg !214
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_lshift(%struct.lua_State*) #0 !dbg !248 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !257
  %3 = fadd double %2, 0x4338000000000000, !dbg !259
  %4 = bitcast double %3 to i64, !dbg !259
  %5 = trunc i64 %4 to i32, !dbg !260
  %6 = icmp eq i32 %5, 0, !dbg !262
  br i1 %6, label %7, label %12, !dbg !263

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !264
  %9 = icmp eq i32 %8, 0, !dbg !264
  br i1 %9, label %10, label %12, !dbg !265

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !266
  br label %12, !dbg !267

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !271
  %14 = fadd double %13, 0x4338000000000000, !dbg !273
  %15 = bitcast double %14 to i64, !dbg !273
  %16 = trunc i64 %15 to i32, !dbg !274
  %17 = icmp eq i32 %16, 0, !dbg !276
  br i1 %17, label %18, label %23, !dbg !277

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !278
  %20 = icmp eq i32 %19, 0, !dbg !278
  br i1 %20, label %21, label %23, !dbg !279

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !280
  br label %23, !dbg !281

; <label>:23:                                     ; preds = %12, %18, %21
  %24 = and i32 %16, 31, !dbg !253
  %25 = shl i32 %5, %24, !dbg !253
  %26 = sitofp i32 %25 to double, !dbg !253
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !253
  ret i32 1, !dbg !253
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_rshift(%struct.lua_State*) #0 !dbg !282 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !291
  %3 = fadd double %2, 0x4338000000000000, !dbg !293
  %4 = bitcast double %3 to i64, !dbg !293
  %5 = trunc i64 %4 to i32, !dbg !294
  %6 = icmp eq i32 %5, 0, !dbg !296
  br i1 %6, label %7, label %12, !dbg !297

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !298
  %9 = icmp eq i32 %8, 0, !dbg !298
  br i1 %9, label %10, label %12, !dbg !299

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !300
  br label %12, !dbg !301

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !305
  %14 = fadd double %13, 0x4338000000000000, !dbg !307
  %15 = bitcast double %14 to i64, !dbg !307
  %16 = trunc i64 %15 to i32, !dbg !308
  %17 = icmp eq i32 %16, 0, !dbg !310
  br i1 %17, label %18, label %23, !dbg !311

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !312
  %20 = icmp eq i32 %19, 0, !dbg !312
  br i1 %20, label %21, label %23, !dbg !313

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !314
  br label %23, !dbg !315

; <label>:23:                                     ; preds = %12, %18, %21
  %24 = and i32 %16, 31, !dbg !287
  %25 = lshr i32 %5, %24, !dbg !287
  %26 = sitofp i32 %25 to double, !dbg !287
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !287
  ret i32 1, !dbg !287
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_arshift(%struct.lua_State*) #0 !dbg !316 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !325
  %3 = fadd double %2, 0x4338000000000000, !dbg !327
  %4 = bitcast double %3 to i64, !dbg !327
  %5 = trunc i64 %4 to i32, !dbg !328
  %6 = icmp eq i32 %5, 0, !dbg !330
  br i1 %6, label %7, label %12, !dbg !331

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !332
  %9 = icmp eq i32 %8, 0, !dbg !332
  br i1 %9, label %10, label %12, !dbg !333

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !334
  br label %12, !dbg !335

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !339
  %14 = fadd double %13, 0x4338000000000000, !dbg !341
  %15 = bitcast double %14 to i64, !dbg !341
  %16 = trunc i64 %15 to i32, !dbg !342
  %17 = icmp eq i32 %16, 0, !dbg !344
  br i1 %17, label %18, label %23, !dbg !345

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !346
  %20 = icmp eq i32 %19, 0, !dbg !346
  br i1 %20, label %21, label %23, !dbg !347

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !348
  br label %23, !dbg !349

; <label>:23:                                     ; preds = %12, %18, %21
  %24 = and i32 %16, 31, !dbg !321
  %25 = ashr i32 %5, %24, !dbg !321
  %26 = sitofp i32 %25 to double, !dbg !321
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !321
  ret i32 1, !dbg !321
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_rol(%struct.lua_State*) #0 !dbg !350 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !359
  %3 = fadd double %2, 0x4338000000000000, !dbg !361
  %4 = bitcast double %3 to i64, !dbg !361
  %5 = trunc i64 %4 to i32, !dbg !362
  %6 = icmp eq i32 %5, 0, !dbg !364
  br i1 %6, label %7, label %12, !dbg !365

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !366
  %9 = icmp eq i32 %8, 0, !dbg !366
  br i1 %9, label %10, label %12, !dbg !367

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !368
  br label %12, !dbg !369

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !373
  %14 = fadd double %13, 0x4338000000000000, !dbg !375
  %15 = bitcast double %14 to i64, !dbg !375
  %16 = trunc i64 %15 to i32, !dbg !376
  %17 = icmp eq i32 %16, 0, !dbg !378
  br i1 %17, label %18, label %23, !dbg !379

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !380
  %20 = icmp eq i32 %19, 0, !dbg !380
  br i1 %20, label %21, label %23, !dbg !381

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !382
  br label %23, !dbg !383

; <label>:23:                                     ; preds = %12, %18, %21
  %24 = and i32 %16, 31, !dbg !355
  %25 = shl i32 %5, %24, !dbg !355
  %26 = sub nsw i32 32, %24, !dbg !355
  %27 = lshr i32 %5, %26, !dbg !355
  %28 = or i32 %27, %25, !dbg !355
  %29 = sitofp i32 %28 to double, !dbg !355
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %29) #4, !dbg !355
  ret i32 1, !dbg !355
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_ror(%struct.lua_State*) #0 !dbg !384 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !393
  %3 = fadd double %2, 0x4338000000000000, !dbg !395
  %4 = bitcast double %3 to i64, !dbg !395
  %5 = trunc i64 %4 to i32, !dbg !396
  %6 = icmp eq i32 %5, 0, !dbg !398
  br i1 %6, label %7, label %12, !dbg !399

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !400
  %9 = icmp eq i32 %8, 0, !dbg !400
  br i1 %9, label %10, label %12, !dbg !401

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !402
  br label %12, !dbg !403

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !407
  %14 = fadd double %13, 0x4338000000000000, !dbg !409
  %15 = bitcast double %14 to i64, !dbg !409
  %16 = trunc i64 %15 to i32, !dbg !410
  %17 = icmp eq i32 %16, 0, !dbg !412
  br i1 %17, label %18, label %23, !dbg !413

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !414
  %20 = icmp eq i32 %19, 0, !dbg !414
  br i1 %20, label %21, label %23, !dbg !415

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !416
  br label %23, !dbg !417

; <label>:23:                                     ; preds = %12, %18, %21
  %24 = and i32 %16, 31, !dbg !389
  %25 = sub nsw i32 32, %24, !dbg !389
  %26 = shl i32 %5, %25, !dbg !389
  %27 = lshr i32 %5, %24, !dbg !389
  %28 = or i32 %26, %27, !dbg !389
  %29 = sitofp i32 %28 to double, !dbg !389
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %29) #4, !dbg !389
  ret i32 1, !dbg !389
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bswap(%struct.lua_State*) #0 !dbg !418 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !426
  %3 = fadd double %2, 0x4338000000000000, !dbg !428
  %4 = bitcast double %3 to i64, !dbg !428
  %5 = trunc i64 %4 to i32, !dbg !429
  %6 = icmp eq i32 %5, 0, !dbg !431
  br i1 %6, label %7, label %12, !dbg !432

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !433
  %9 = icmp eq i32 %8, 0, !dbg !433
  br i1 %9, label %10, label %12, !dbg !434

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !435
  br label %12, !dbg !436

; <label>:12:                                     ; preds = %1, %7, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %5), !dbg !438
  %14 = sitofp i32 %13 to double, !dbg !439
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #4, !dbg !439
  ret i32 1, !dbg !439
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_tohex(%struct.lua_State*) #0 !dbg !440 {
  %2 = alloca [8 x i8], align 1
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !455
  %4 = fadd double %3, 0x4338000000000000, !dbg !457
  %5 = bitcast double %4 to i64, !dbg !457
  %6 = trunc i64 %5 to i32, !dbg !458
  %7 = icmp eq i32 %6, 0, !dbg !460
  br i1 %7, label %8, label %13, !dbg !461

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !462
  %10 = icmp eq i32 %9, 0, !dbg !462
  br i1 %10, label %11, label %13, !dbg !463

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !464
  br label %13, !dbg !465

; <label>:13:                                     ; preds = %1, %8, %11
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !467
  %15 = icmp eq i32 %14, -1, !dbg !467
  br i1 %15, label %27, label %16, !dbg !467

; <label>:16:                                     ; preds = %13
  %17 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !471
  %18 = fadd double %17, 0x4338000000000000, !dbg !473
  %19 = bitcast double %18 to i64, !dbg !473
  %20 = trunc i64 %19 to i32, !dbg !474
  %21 = icmp eq i32 %20, 0, !dbg !476
  br i1 %21, label %22, label %27, !dbg !477

; <label>:22:                                     ; preds = %16
  %23 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !478
  %24 = icmp eq i32 %23, 0, !dbg !478
  br i1 %24, label %25, label %27, !dbg !479

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !480
  br label %27, !dbg !481

; <label>:27:                                     ; preds = %25, %22, %16, %13
  %28 = phi i32 [ 8, %13 ], [ %20, %16 ], [ 0, %22 ], [ 0, %25 ], !dbg !467
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #5, !dbg !483
  %30 = icmp slt i32 %28, 0, !dbg !485
  %31 = sub nsw i32 0, %28, !dbg !487
  %32 = select i1 %30, i32 %31, i32 %28, !dbg !489
  %33 = select i1 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), !dbg !489
  %34 = icmp slt i32 %32, 8, !dbg !491
  %35 = select i1 %34, i32 %32, i32 8, !dbg !491
  %36 = icmp sgt i32 %32, 0, !dbg !493
  br i1 %36, label %37, label %50, !dbg !496

; <label>:37:                                     ; preds = %27
  %38 = zext i32 %35 to i64, !dbg !497
  br label %39, !dbg !497

; <label>:39:                                     ; preds = %37, %39
  %40 = phi i64 [ %38, %37 ], [ %42, %39 ]
  %41 = phi i32 [ %6, %37 ], [ %48, %39 ]
  %42 = add i64 %40, -1, !dbg !497
  %43 = and i32 %41, 15, !dbg !498
  %44 = zext i32 %43 to i64, !dbg !500
  %45 = getelementptr inbounds i8, i8* %33, i64 %44, !dbg !500
  %46 = load i8, i8* %45, align 1, !dbg !500, !tbaa !501
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %42, !dbg !504
  store i8 %46, i8* %47, align 1, !dbg !505, !tbaa !501
  %48 = lshr i32 %41, 4, !dbg !506
  %49 = icmp sgt i64 %40, 1, !dbg !493
  br i1 %49, label %39, label %50, !dbg !496, !llvm.loop !507

; <label>:50:                                     ; preds = %39, %27
  %51 = zext i32 %35 to i64, !dbg !509
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %29, i64 %51) #4, !dbg !510
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #5, !dbg !511
  ret i32 1, !dbg !512
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bit_funcs", scope: !2, file: !3, line: 141, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_bit.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !15, !18, !19}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "UBits", file: !3, line: 45, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 48, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 79, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBits", file: !3, line: 44, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !11, line: 44, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !13, line: 77, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 58, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!0}
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1664, elements: !40)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !26, line: 35, size: 128, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 36, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !25, file: !26, line: 37, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !7, line: 52, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!18, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !7, line: 50, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !7, line: 50, flags: DIFlagFwdDecl)
!40 = !{!41}
!41 = !DISubrange(count: 13)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!46 = distinct !DISubprogram(name: "luaopen_bit", scope: !3, file: !3, line: 163, type: !35, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: "L", arg: 1, scope: !46, file: !3, line: 163, type: !37)
!49 = !DILocalVariable(name: "b", scope: !46, file: !3, line: 165, type: !9)
!50 = !DILocalVariable(name: "msg", scope: !51, file: !3, line: 169, type: !29)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 168, column: 43)
!52 = distinct !DILexicalBlock(scope: !46, file: !3, line: 168, column: 7)
!53 = !DILocation(line: 163, column: 39, scope: !46)
!54 = !DILocation(line: 166, column: 3, scope: !46)
!55 = !DILocalVariable(name: "L", arg: 1, scope: !56, file: !3, line: 57, type: !37)
!56 = distinct !DISubprogram(name: "barg", scope: !3, file: !3, line: 57, type: !57, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!9, !37, !18}
!59 = !{!55, !60, !61, !69}
!60 = !DILocalVariable(name: "idx", arg: 2, scope: !56, file: !3, line: 57, type: !18)
!61 = !DILocalVariable(name: "bn", scope: !56, file: !3, line: 59, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "BitNum", file: !3, line: 54, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3, line: 47, size: 64, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !63, file: !3, line: 48, baseType: !6, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !63, file: !3, line: 50, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 60, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 105, baseType: !21)
!69 = !DILocalVariable(name: "b", scope: !56, file: !3, line: 60, type: !9)
!70 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !71)
!71 = distinct !DILocation(line: 167, column: 7, scope: !46)
!72 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !71)
!73 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !71)
!74 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !71)
!75 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !71)
!76 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !71)
!77 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !71)
!78 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !71)
!79 = distinct !DILexicalBlock(scope: !56, file: !3, line: 86, column: 7)
!80 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !71)
!81 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !71)
!82 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !71)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 86, column: 40)
!84 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !71)
!85 = !DILocation(line: 175, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !51, file: !3, line: 175, column: 9)
!87 = !DILocation(line: 175, column: 9, scope: !51)
!88 = !DILocation(line: 169, column: 17, scope: !51)
!89 = !DILocation(line: 180, column: 5, scope: !51)
!90 = !DILocation(line: 181, column: 3, scope: !51)
!91 = !DILocation(line: 183, column: 3, scope: !46)
!92 = !DILocation(line: 187, column: 3, scope: !46)
!93 = distinct !DISubprogram(name: "bit_tobit", scope: !3, file: !3, line: 96, type: !35, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !94)
!94 = !{!95}
!95 = !DILocalVariable(name: "L", arg: 1, scope: !93, file: !3, line: 96, type: !37)
!96 = !DILocation(line: 96, column: 33, scope: !93)
!97 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !98)
!98 = distinct !DILocation(line: 96, column: 38, scope: !93)
!99 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !98)
!100 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !98)
!101 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !98)
!102 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !98)
!103 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !98)
!104 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !98)
!105 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !98)
!106 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !98)
!107 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !98)
!108 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !98)
!109 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !98)
!110 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !98)
!111 = !DILocation(line: 96, column: 38, scope: !93)
!112 = distinct !DISubprogram(name: "bit_bnot", scope: !3, file: !3, line: 97, type: !35, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!113 = !{!114}
!114 = !DILocalVariable(name: "L", arg: 1, scope: !112, file: !3, line: 97, type: !37)
!115 = !DILocation(line: 97, column: 32, scope: !112)
!116 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !117)
!117 = distinct !DILocation(line: 97, column: 37, scope: !112)
!118 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !117)
!119 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !117)
!120 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !117)
!121 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !117)
!122 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !117)
!123 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !117)
!124 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !117)
!125 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !117)
!126 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !117)
!127 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !117)
!128 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !117)
!129 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !117)
!130 = !DILocation(line: 97, column: 37, scope: !112)
!131 = distinct !DISubprogram(name: "bit_band", scope: !3, file: !3, line: 102, type: !35, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !132)
!132 = !{!133, !134, !135}
!133 = !DILocalVariable(name: "L", arg: 1, scope: !131, file: !3, line: 102, type: !37)
!134 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 102, type: !18)
!135 = !DILocalVariable(name: "b", scope: !131, file: !3, line: 102, type: !9)
!136 = !DILocation(line: 102, column: 1, scope: !131)
!137 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !138)
!138 = distinct !DILocation(line: 102, column: 1, scope: !131)
!139 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !138)
!140 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !138)
!141 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !138)
!142 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !138)
!143 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !138)
!144 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !138)
!145 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !138)
!146 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !138)
!147 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !138)
!148 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !138)
!149 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !138)
!150 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !138)
!151 = !DILocation(line: 102, column: 1, scope: !152)
!152 = distinct !DILexicalBlock(scope: !131, file: !3, line: 102, column: 1)
!153 = !DILocation(line: 102, column: 1, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !3, line: 102, column: 1)
!155 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !156)
!156 = distinct !DILocation(line: 102, column: 1, scope: !154)
!157 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !156)
!158 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !156)
!159 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !156)
!160 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !156)
!161 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !156)
!162 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !156)
!163 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !156)
!164 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !156)
!165 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !156)
!166 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !156)
!167 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !156)
!168 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !156)
!169 = distinct !{!169, !151, !151}
!170 = distinct !DISubprogram(name: "bit_bor", scope: !3, file: !3, line: 103, type: !35, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !171)
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: "L", arg: 1, scope: !170, file: !3, line: 103, type: !37)
!173 = !DILocalVariable(name: "i", scope: !170, file: !3, line: 103, type: !18)
!174 = !DILocalVariable(name: "b", scope: !170, file: !3, line: 103, type: !9)
!175 = !DILocation(line: 103, column: 1, scope: !170)
!176 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !177)
!177 = distinct !DILocation(line: 103, column: 1, scope: !170)
!178 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !177)
!179 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !177)
!180 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !177)
!181 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !177)
!182 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !177)
!183 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !177)
!184 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !177)
!185 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !177)
!186 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !177)
!187 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !177)
!188 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !177)
!189 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !177)
!190 = !DILocation(line: 103, column: 1, scope: !191)
!191 = distinct !DILexicalBlock(scope: !170, file: !3, line: 103, column: 1)
!192 = !DILocation(line: 103, column: 1, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !3, line: 103, column: 1)
!194 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !195)
!195 = distinct !DILocation(line: 103, column: 1, scope: !193)
!196 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !195)
!197 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !195)
!198 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !195)
!199 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !195)
!200 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !195)
!201 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !195)
!202 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !195)
!203 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !195)
!204 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !195)
!205 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !195)
!206 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !195)
!207 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !195)
!208 = distinct !{!208, !190, !190}
!209 = distinct !DISubprogram(name: "bit_bxor", scope: !3, file: !3, line: 104, type: !35, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !210)
!210 = !{!211, !212, !213}
!211 = !DILocalVariable(name: "L", arg: 1, scope: !209, file: !3, line: 104, type: !37)
!212 = !DILocalVariable(name: "i", scope: !209, file: !3, line: 104, type: !18)
!213 = !DILocalVariable(name: "b", scope: !209, file: !3, line: 104, type: !9)
!214 = !DILocation(line: 104, column: 1, scope: !209)
!215 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !216)
!216 = distinct !DILocation(line: 104, column: 1, scope: !209)
!217 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !216)
!218 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !216)
!219 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !216)
!220 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !216)
!221 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !216)
!222 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !216)
!223 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !216)
!224 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !216)
!225 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !216)
!226 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !216)
!227 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !216)
!228 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !216)
!229 = !DILocation(line: 104, column: 1, scope: !230)
!230 = distinct !DILexicalBlock(scope: !209, file: !3, line: 104, column: 1)
!231 = !DILocation(line: 104, column: 1, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !3, line: 104, column: 1)
!233 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !234)
!234 = distinct !DILocation(line: 104, column: 1, scope: !232)
!235 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !234)
!236 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !234)
!237 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !234)
!238 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !234)
!239 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !234)
!240 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !234)
!241 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !234)
!242 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !234)
!243 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !234)
!244 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !234)
!245 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !234)
!246 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !234)
!247 = distinct !{!247, !229, !229}
!248 = distinct !DISubprogram(name: "bit_lshift", scope: !3, file: !3, line: 114, type: !35, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !249)
!249 = !{!250, !251, !252}
!250 = !DILocalVariable(name: "L", arg: 1, scope: !248, file: !3, line: 114, type: !37)
!251 = !DILocalVariable(name: "b", scope: !248, file: !3, line: 114, type: !9)
!252 = !DILocalVariable(name: "n", scope: !248, file: !3, line: 114, type: !9)
!253 = !DILocation(line: 114, column: 1, scope: !248)
!254 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !255)
!255 = distinct !DILocation(line: 114, column: 1, scope: !248)
!256 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !255)
!257 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !255)
!258 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !255)
!259 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !255)
!260 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !255)
!261 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !255)
!262 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !255)
!263 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !255)
!264 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !255)
!265 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !255)
!266 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !255)
!267 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !255)
!268 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !269)
!269 = distinct !DILocation(line: 114, column: 1, scope: !248)
!270 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !269)
!271 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !269)
!272 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !269)
!273 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !269)
!274 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !269)
!275 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !269)
!276 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !269)
!277 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !269)
!278 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !269)
!279 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !269)
!280 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !269)
!281 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !269)
!282 = distinct !DISubprogram(name: "bit_rshift", scope: !3, file: !3, line: 115, type: !35, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !283)
!283 = !{!284, !285, !286}
!284 = !DILocalVariable(name: "L", arg: 1, scope: !282, file: !3, line: 115, type: !37)
!285 = !DILocalVariable(name: "b", scope: !282, file: !3, line: 115, type: !9)
!286 = !DILocalVariable(name: "n", scope: !282, file: !3, line: 115, type: !9)
!287 = !DILocation(line: 115, column: 1, scope: !282)
!288 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !289)
!289 = distinct !DILocation(line: 115, column: 1, scope: !282)
!290 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !289)
!291 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !289)
!292 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !289)
!293 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !289)
!294 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !289)
!295 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !289)
!296 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !289)
!297 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !289)
!298 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !289)
!299 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !289)
!300 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !289)
!301 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !289)
!302 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !303)
!303 = distinct !DILocation(line: 115, column: 1, scope: !282)
!304 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !303)
!305 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !303)
!306 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !303)
!307 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !303)
!308 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !303)
!309 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !303)
!310 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !303)
!311 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !303)
!312 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !303)
!313 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !303)
!314 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !303)
!315 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !303)
!316 = distinct !DISubprogram(name: "bit_arshift", scope: !3, file: !3, line: 116, type: !35, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !317)
!317 = !{!318, !319, !320}
!318 = !DILocalVariable(name: "L", arg: 1, scope: !316, file: !3, line: 116, type: !37)
!319 = !DILocalVariable(name: "b", scope: !316, file: !3, line: 116, type: !9)
!320 = !DILocalVariable(name: "n", scope: !316, file: !3, line: 116, type: !9)
!321 = !DILocation(line: 116, column: 1, scope: !316)
!322 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !323)
!323 = distinct !DILocation(line: 116, column: 1, scope: !316)
!324 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !323)
!325 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !323)
!326 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !323)
!327 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !323)
!328 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !323)
!329 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !323)
!330 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !323)
!331 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !323)
!332 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !323)
!333 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !323)
!334 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !323)
!335 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !323)
!336 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !337)
!337 = distinct !DILocation(line: 116, column: 1, scope: !316)
!338 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !337)
!339 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !337)
!340 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !337)
!341 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !337)
!342 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !337)
!343 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !337)
!344 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !337)
!345 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !337)
!346 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !337)
!347 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !337)
!348 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !337)
!349 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !337)
!350 = distinct !DISubprogram(name: "bit_rol", scope: !3, file: !3, line: 117, type: !35, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !351)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "L", arg: 1, scope: !350, file: !3, line: 117, type: !37)
!353 = !DILocalVariable(name: "b", scope: !350, file: !3, line: 117, type: !9)
!354 = !DILocalVariable(name: "n", scope: !350, file: !3, line: 117, type: !9)
!355 = !DILocation(line: 117, column: 1, scope: !350)
!356 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !357)
!357 = distinct !DILocation(line: 117, column: 1, scope: !350)
!358 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !357)
!359 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !357)
!360 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !357)
!361 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !357)
!362 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !357)
!363 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !357)
!364 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !357)
!365 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !357)
!366 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !357)
!367 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !357)
!368 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !357)
!369 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !357)
!370 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !371)
!371 = distinct !DILocation(line: 117, column: 1, scope: !350)
!372 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !371)
!373 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !371)
!374 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !371)
!375 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !371)
!376 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !371)
!377 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !371)
!378 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !371)
!379 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !371)
!380 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !371)
!381 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !371)
!382 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !371)
!383 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !371)
!384 = distinct !DISubprogram(name: "bit_ror", scope: !3, file: !3, line: 118, type: !35, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !385)
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(name: "L", arg: 1, scope: !384, file: !3, line: 118, type: !37)
!387 = !DILocalVariable(name: "b", scope: !384, file: !3, line: 118, type: !9)
!388 = !DILocalVariable(name: "n", scope: !384, file: !3, line: 118, type: !9)
!389 = !DILocation(line: 118, column: 1, scope: !384)
!390 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !391)
!391 = distinct !DILocation(line: 118, column: 1, scope: !384)
!392 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !391)
!393 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !391)
!394 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !391)
!395 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !391)
!396 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !391)
!397 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !391)
!398 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !391)
!399 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !391)
!400 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !391)
!401 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !391)
!402 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !391)
!403 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !391)
!404 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !405)
!405 = distinct !DILocation(line: 118, column: 1, scope: !384)
!406 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !405)
!407 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !405)
!408 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !405)
!409 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !405)
!410 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !405)
!411 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !405)
!412 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !405)
!413 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !405)
!414 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !405)
!415 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !405)
!416 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !405)
!417 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !405)
!418 = distinct !DISubprogram(name: "bit_bswap", scope: !3, file: !3, line: 120, type: !35, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !419)
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "L", arg: 1, scope: !418, file: !3, line: 120, type: !37)
!421 = !DILocalVariable(name: "b", scope: !418, file: !3, line: 122, type: !9)
!422 = !DILocation(line: 120, column: 33, scope: !418)
!423 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !424)
!424 = distinct !DILocation(line: 122, column: 13, scope: !418)
!425 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !424)
!426 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !424)
!427 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !424)
!428 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !424)
!429 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !424)
!430 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !424)
!431 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !424)
!432 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !424)
!433 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !424)
!434 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !424)
!435 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !424)
!436 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !424)
!437 = !DILocation(line: 122, column: 9, scope: !418)
!438 = !DILocation(line: 123, column: 61, scope: !418)
!439 = !DILocation(line: 124, column: 3, scope: !418)
!440 = distinct !DISubprogram(name: "bit_tohex", scope: !3, file: !3, line: 127, type: !35, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !441)
!441 = !{!442, !443, !444, !445, !446, !450}
!442 = !DILocalVariable(name: "L", arg: 1, scope: !440, file: !3, line: 127, type: !37)
!443 = !DILocalVariable(name: "b", scope: !440, file: !3, line: 129, type: !9)
!444 = !DILocalVariable(name: "n", scope: !440, file: !3, line: 130, type: !15)
!445 = !DILocalVariable(name: "hexdigits", scope: !440, file: !3, line: 131, type: !29)
!446 = !DILocalVariable(name: "buf", scope: !440, file: !3, line: 132, type: !447)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 8)
!450 = !DILocalVariable(name: "i", scope: !440, file: !3, line: 133, type: !18)
!451 = !DILocation(line: 127, column: 33, scope: !440)
!452 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !453)
!453 = distinct !DILocation(line: 129, column: 13, scope: !440)
!454 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !453)
!455 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !453)
!456 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !453)
!457 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !453)
!458 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !453)
!459 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !453)
!460 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !453)
!461 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !453)
!462 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !453)
!463 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !453)
!464 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !453)
!465 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !453)
!466 = !DILocation(line: 129, column: 9, scope: !440)
!467 = !DILocation(line: 130, column: 13, scope: !440)
!468 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !469)
!469 = distinct !DILocation(line: 130, column: 43, scope: !440)
!470 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !469)
!471 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !469)
!472 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !469)
!473 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !469)
!474 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !469)
!475 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !469)
!476 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !469)
!477 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !469)
!478 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !469)
!479 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !469)
!480 = !DILocation(line: 87, column: 5, scope: !83, inlinedAt: !469)
!481 = !DILocation(line: 88, column: 3, scope: !83, inlinedAt: !469)
!482 = !DILocation(line: 130, column: 9, scope: !440)
!483 = !DILocation(line: 132, column: 3, scope: !440)
!484 = !DILocation(line: 132, column: 8, scope: !440)
!485 = !DILocation(line: 134, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !440, file: !3, line: 134, column: 7)
!487 = !DILocation(line: 134, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !486, file: !3, line: 134, column: 14)
!489 = !DILocation(line: 134, column: 7, scope: !440)
!490 = !DILocation(line: 131, column: 15, scope: !440)
!491 = !DILocation(line: 135, column: 7, scope: !440)
!492 = !DILocation(line: 133, column: 7, scope: !440)
!493 = !DILocation(line: 136, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 136, column: 3)
!495 = distinct !DILexicalBlock(scope: !440, file: !3, line: 136, column: 3)
!496 = !DILocation(line: 136, column: 3, scope: !495)
!497 = !DILocation(line: 136, column: 20, scope: !494)
!498 = !DILocation(line: 136, column: 55, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !3, line: 136, column: 32)
!500 = !DILocation(line: 136, column: 43, scope: !499)
!501 = !{!502, !502, i64 0}
!502 = !{!"omnipotent char", !503, i64 0}
!503 = !{!"Simple C/C++ TBAA"}
!504 = !DILocation(line: 136, column: 34, scope: !499)
!505 = !DILocation(line: 136, column: 41, scope: !499)
!506 = !DILocation(line: 136, column: 64, scope: !499)
!507 = distinct !{!507, !496, !508}
!508 = !DILocation(line: 136, column: 71, scope: !495)
!509 = !DILocation(line: 137, column: 27, scope: !440)
!510 = !DILocation(line: 137, column: 3, scope: !440)
!511 = !DILocation(line: 139, column: 1, scope: !440)
!512 = !DILocation(line: 138, column: 3, scope: !440)
