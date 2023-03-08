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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_bit(%struct.lua_State*) local_unnamed_addr #0 !dbg !46 {
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x41D56A8CDDC00000) #4, !dbg !54
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !73
  %3 = fadd double %2, 0x4338000000000000, !dbg !75
  %4 = bitcast double %3 to i64, !dbg !75
  %5 = trunc i64 %4 to i32, !dbg !76
  %6 = icmp eq i32 %5, 0, !dbg !78
  br i1 %6, label %7, label %13, !dbg !80

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #4, !dbg !81
  %9 = icmp eq i32 %8, 0, !dbg !81
  br i1 %9, label %10, label %12, !dbg !82

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !83
  br label %12, !dbg !85

; <label>:12:                                     ; preds = %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br label %15, !dbg !88

; <label>:13:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  %14 = icmp eq i32 %5, 1437217655, !dbg !89
  br i1 %14, label %19, label %15, !dbg !88

; <label>:15:                                     ; preds = %12, %13
  %16 = icmp eq i32 %5, 1127743488, !dbg !90
  %17 = select i1 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), !dbg !92
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %17) #4, !dbg !94
  br label %19, !dbg !95

; <label>:19:                                     ; preds = %13, %15
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([13 x %struct.luaL_Reg], [13 x %struct.luaL_Reg]* @bit_funcs, i64 0, i64 0)) #4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  ret i32 1, !dbg !97
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
define internal i32 @bit_tobit(%struct.lua_State*) #0 !dbg !98 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !105
  %3 = fadd double %2, 0x4338000000000000, !dbg !107
  %4 = bitcast double %3 to i64, !dbg !107
  %5 = trunc i64 %4 to i32, !dbg !108
  %6 = icmp eq i32 %5, 0, !dbg !110
  br i1 %6, label %7, label %12, !dbg !111

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !112
  %9 = icmp eq i32 %8, 0, !dbg !112
  br i1 %9, label %10, label %12, !dbg !113

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !114
  br label %12, !dbg !115

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %13 = sitofp i32 %5 to double, !dbg !117
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %13) #4, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  ret i32 1, !dbg !117
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bnot(%struct.lua_State*) #0 !dbg !118 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !125
  %3 = fadd double %2, 0x4338000000000000, !dbg !127
  %4 = bitcast double %3 to i64, !dbg !127
  %5 = trunc i64 %4 to i32, !dbg !128
  %6 = icmp eq i32 %5, 0, !dbg !130
  br i1 %6, label %7, label %12, !dbg !131

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !132
  %9 = icmp eq i32 %8, 0, !dbg !132
  br i1 %9, label %10, label %12, !dbg !133

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !134
  br label %12, !dbg !135

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %13 = xor i32 %5, -1, !dbg !137
  %14 = sitofp i32 %13 to double, !dbg !137
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #4, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  ret i32 1, !dbg !137
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_band(%struct.lua_State*) #0 !dbg !138 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !147
  %3 = fadd double %2, 0x4338000000000000, !dbg !149
  %4 = bitcast double %3 to i64, !dbg !149
  %5 = trunc i64 %4 to i32, !dbg !150
  %6 = icmp eq i32 %5, 0, !dbg !152
  br i1 %6, label %7, label %12, !dbg !153

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !154
  %9 = icmp eq i32 %8, 0, !dbg !154
  br i1 %9, label %10, label %12, !dbg !155

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !156
  br label %12, !dbg !157

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !159
  %14 = icmp sgt i32 %13, 1, !dbg !161
  br i1 %14, label %15, label %32, !dbg !159

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !166
  %19 = fadd double %18, 0x4338000000000000, !dbg !168
  %20 = bitcast double %19 to i64, !dbg !168
  %21 = trunc i64 %20 to i32, !dbg !169
  %22 = icmp eq i32 %21, 0, !dbg !171
  br i1 %22, label %23, label %28, !dbg !172

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !173
  %25 = icmp eq i32 %24, 0, !dbg !173
  br i1 %25, label %26, label %28, !dbg !174

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !175
  br label %28, !dbg !176

; <label>:28:                                     ; preds = %15, %23, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %29 = and i32 %16, %21, !dbg !161
  %30 = add nsw i32 %17, -1, !dbg !161
  %31 = icmp sgt i32 %17, 2, !dbg !161
  br i1 %31, label %15, label %32, !dbg !159, !llvm.loop !178

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !143
  %34 = sitofp i32 %33 to double, !dbg !143
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  ret i32 1, !dbg !143
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bor(%struct.lua_State*) #0 !dbg !179 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !188
  %3 = fadd double %2, 0x4338000000000000, !dbg !190
  %4 = bitcast double %3 to i64, !dbg !190
  %5 = trunc i64 %4 to i32, !dbg !191
  %6 = icmp eq i32 %5, 0, !dbg !193
  br i1 %6, label %7, label %12, !dbg !194

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !195
  %9 = icmp eq i32 %8, 0, !dbg !195
  br i1 %9, label %10, label %12, !dbg !196

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !197
  br label %12, !dbg !198

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !200
  %14 = icmp sgt i32 %13, 1, !dbg !202
  br i1 %14, label %15, label %32, !dbg !200

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !207
  %19 = fadd double %18, 0x4338000000000000, !dbg !209
  %20 = bitcast double %19 to i64, !dbg !209
  %21 = trunc i64 %20 to i32, !dbg !210
  %22 = icmp eq i32 %21, 0, !dbg !212
  br i1 %22, label %23, label %28, !dbg !213

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !214
  %25 = icmp eq i32 %24, 0, !dbg !214
  br i1 %25, label %26, label %28, !dbg !215

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !216
  br label %28, !dbg !217

; <label>:28:                                     ; preds = %15, %23, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %29 = or i32 %16, %21, !dbg !202
  %30 = add nsw i32 %17, -1, !dbg !202
  %31 = icmp sgt i32 %17, 2, !dbg !202
  br i1 %31, label %15, label %32, !dbg !200, !llvm.loop !219

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !184
  %34 = sitofp i32 %33 to double, !dbg !184
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  ret i32 1, !dbg !184
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bxor(%struct.lua_State*) #0 !dbg !220 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !229
  %3 = fadd double %2, 0x4338000000000000, !dbg !231
  %4 = bitcast double %3 to i64, !dbg !231
  %5 = trunc i64 %4 to i32, !dbg !232
  %6 = icmp eq i32 %5, 0, !dbg !234
  br i1 %6, label %7, label %12, !dbg !235

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !236
  %9 = icmp eq i32 %8, 0, !dbg !236
  br i1 %9, label %10, label %12, !dbg !237

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !238
  br label %12, !dbg !239

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %13 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !241
  %14 = icmp sgt i32 %13, 1, !dbg !243
  br i1 %14, label %15, label %32, !dbg !241

; <label>:15:                                     ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ %5, %12 ]
  %17 = phi i32 [ %30, %28 ], [ %13, %12 ]
  %18 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %17) #4, !dbg !248
  %19 = fadd double %18, 0x4338000000000000, !dbg !250
  %20 = bitcast double %19 to i64, !dbg !250
  %21 = trunc i64 %20 to i32, !dbg !251
  %22 = icmp eq i32 %21, 0, !dbg !253
  br i1 %22, label %23, label %28, !dbg !254

; <label>:23:                                     ; preds = %15
  %24 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %17) #4, !dbg !255
  %25 = icmp eq i32 %24, 0, !dbg !255
  br i1 %25, label %26, label %28, !dbg !256

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !257
  br label %28, !dbg !258

; <label>:28:                                     ; preds = %15, %23, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %29 = xor i32 %16, %21, !dbg !243
  %30 = add nsw i32 %17, -1, !dbg !243
  %31 = icmp sgt i32 %17, 2, !dbg !243
  br i1 %31, label %15, label %32, !dbg !241, !llvm.loop !260

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i32 [ %5, %12 ], [ %29, %28 ], !dbg !225
  %34 = sitofp i32 %33 to double, !dbg !225
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  ret i32 1, !dbg !225
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_lshift(%struct.lua_State*) #0 !dbg !261 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !270
  %3 = fadd double %2, 0x4338000000000000, !dbg !272
  %4 = bitcast double %3 to i64, !dbg !272
  %5 = trunc i64 %4 to i32, !dbg !273
  %6 = icmp eq i32 %5, 0, !dbg !275
  br i1 %6, label %7, label %12, !dbg !276

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !277
  %9 = icmp eq i32 %8, 0, !dbg !277
  br i1 %9, label %10, label %12, !dbg !278

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !279
  br label %12, !dbg !280

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !285
  %14 = fadd double %13, 0x4338000000000000, !dbg !287
  %15 = bitcast double %14 to i64, !dbg !287
  %16 = trunc i64 %15 to i32, !dbg !288
  %17 = icmp eq i32 %16, 0, !dbg !290
  br i1 %17, label %18, label %23, !dbg !291

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !292
  %20 = icmp eq i32 %19, 0, !dbg !292
  br i1 %20, label %21, label %23, !dbg !293

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !294
  br label %23, !dbg !295

; <label>:23:                                     ; preds = %12, %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  %24 = and i32 %16, 31, !dbg !266
  %25 = shl i32 %5, %24, !dbg !266
  %26 = sitofp i32 %25 to double, !dbg !266
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i32 1, !dbg !266
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_rshift(%struct.lua_State*) #0 !dbg !297 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !306
  %3 = fadd double %2, 0x4338000000000000, !dbg !308
  %4 = bitcast double %3 to i64, !dbg !308
  %5 = trunc i64 %4 to i32, !dbg !309
  %6 = icmp eq i32 %5, 0, !dbg !311
  br i1 %6, label %7, label %12, !dbg !312

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !313
  %9 = icmp eq i32 %8, 0, !dbg !313
  br i1 %9, label %10, label %12, !dbg !314

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !315
  br label %12, !dbg !316

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !321
  %14 = fadd double %13, 0x4338000000000000, !dbg !323
  %15 = bitcast double %14 to i64, !dbg !323
  %16 = trunc i64 %15 to i32, !dbg !324
  %17 = icmp eq i32 %16, 0, !dbg !326
  br i1 %17, label %18, label %23, !dbg !327

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !328
  %20 = icmp eq i32 %19, 0, !dbg !328
  br i1 %20, label %21, label %23, !dbg !329

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !330
  br label %23, !dbg !331

; <label>:23:                                     ; preds = %12, %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  %24 = and i32 %16, 31, !dbg !302
  %25 = lshr i32 %5, %24, !dbg !302
  %26 = sitofp i32 %25 to double, !dbg !302
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  ret i32 1, !dbg !302
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_arshift(%struct.lua_State*) #0 !dbg !333 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !342
  %3 = fadd double %2, 0x4338000000000000, !dbg !344
  %4 = bitcast double %3 to i64, !dbg !344
  %5 = trunc i64 %4 to i32, !dbg !345
  %6 = icmp eq i32 %5, 0, !dbg !347
  br i1 %6, label %7, label %12, !dbg !348

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !349
  %9 = icmp eq i32 %8, 0, !dbg !349
  br i1 %9, label %10, label %12, !dbg !350

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !351
  br label %12, !dbg !352

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !357
  %14 = fadd double %13, 0x4338000000000000, !dbg !359
  %15 = bitcast double %14 to i64, !dbg !359
  %16 = trunc i64 %15 to i32, !dbg !360
  %17 = icmp eq i32 %16, 0, !dbg !362
  br i1 %17, label %18, label %23, !dbg !363

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !364
  %20 = icmp eq i32 %19, 0, !dbg !364
  br i1 %20, label %21, label %23, !dbg !365

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !366
  br label %23, !dbg !367

; <label>:23:                                     ; preds = %12, %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %24 = and i32 %16, 31, !dbg !338
  %25 = ashr i32 %5, %24, !dbg !338
  %26 = sitofp i32 %25 to double, !dbg !338
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %26) #4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret i32 1, !dbg !338
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_rol(%struct.lua_State*) #0 !dbg !369 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !378
  %3 = fadd double %2, 0x4338000000000000, !dbg !380
  %4 = bitcast double %3 to i64, !dbg !380
  %5 = trunc i64 %4 to i32, !dbg !381
  %6 = icmp eq i32 %5, 0, !dbg !383
  br i1 %6, label %7, label %12, !dbg !384

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !385
  %9 = icmp eq i32 %8, 0, !dbg !385
  br i1 %9, label %10, label %12, !dbg !386

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !387
  br label %12, !dbg !388

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !393
  %14 = fadd double %13, 0x4338000000000000, !dbg !395
  %15 = bitcast double %14 to i64, !dbg !395
  %16 = trunc i64 %15 to i32, !dbg !396
  %17 = icmp eq i32 %16, 0, !dbg !398
  br i1 %17, label %18, label %23, !dbg !399

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !400
  %20 = icmp eq i32 %19, 0, !dbg !400
  br i1 %20, label %21, label %23, !dbg !401

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !402
  br label %23, !dbg !403

; <label>:23:                                     ; preds = %12, %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %24 = and i32 %16, 31, !dbg !374
  %25 = shl i32 %5, %24, !dbg !374
  %26 = sub nsw i32 32, %24, !dbg !374
  %27 = lshr i32 %5, %26, !dbg !374
  %28 = or i32 %27, %25, !dbg !374
  %29 = sitofp i32 %28 to double, !dbg !374
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %29) #4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  ret i32 1, !dbg !374
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_ror(%struct.lua_State*) #0 !dbg !405 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !414
  %3 = fadd double %2, 0x4338000000000000, !dbg !416
  %4 = bitcast double %3 to i64, !dbg !416
  %5 = trunc i64 %4 to i32, !dbg !417
  %6 = icmp eq i32 %5, 0, !dbg !419
  br i1 %6, label %7, label %12, !dbg !420

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !421
  %9 = icmp eq i32 %8, 0, !dbg !421
  br i1 %9, label %10, label %12, !dbg !422

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !423
  br label %12, !dbg !424

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  %13 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !429
  %14 = fadd double %13, 0x4338000000000000, !dbg !431
  %15 = bitcast double %14 to i64, !dbg !431
  %16 = trunc i64 %15 to i32, !dbg !432
  %17 = icmp eq i32 %16, 0, !dbg !434
  br i1 %17, label %18, label %23, !dbg !435

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !436
  %20 = icmp eq i32 %19, 0, !dbg !436
  br i1 %20, label %21, label %23, !dbg !437

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !438
  br label %23, !dbg !439

; <label>:23:                                     ; preds = %12, %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %24 = and i32 %16, 31, !dbg !410
  %25 = sub nsw i32 32, %24, !dbg !410
  %26 = shl i32 %5, %25, !dbg !410
  %27 = lshr i32 %5, %24, !dbg !410
  %28 = or i32 %26, %27, !dbg !410
  %29 = sitofp i32 %28 to double, !dbg !410
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %29) #4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  ret i32 1, !dbg !410
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_bswap(%struct.lua_State*) #0 !dbg !441 {
  %2 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !449
  %3 = fadd double %2, 0x4338000000000000, !dbg !451
  %4 = bitcast double %3 to i64, !dbg !451
  %5 = trunc i64 %4 to i32, !dbg !452
  %6 = icmp eq i32 %5, 0, !dbg !454
  br i1 %6, label %7, label %12, !dbg !455

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !456
  %9 = icmp eq i32 %8, 0, !dbg !456
  br i1 %9, label %10, label %12, !dbg !457

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !458
  br label %12, !dbg !459

; <label>:12:                                     ; preds = %1, %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  %13 = tail call i32 @llvm.bswap.i32(i32 %5), !dbg !462
  %14 = sitofp i32 %13 to double, !dbg !463
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #4, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  ret i32 1, !dbg !463
}

; Function Attrs: noredzone nounwind
define internal i32 @bit_tohex(%struct.lua_State*) #0 !dbg !464 {
  %2 = alloca [8 x i8], align 1
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #4, !dbg !479
  %4 = fadd double %3, 0x4338000000000000, !dbg !481
  %5 = bitcast double %4 to i64, !dbg !481
  %6 = trunc i64 %5 to i32, !dbg !482
  %7 = icmp eq i32 %6, 0, !dbg !484
  br i1 %7, label %8, label %13, !dbg !485

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #4, !dbg !486
  %10 = icmp eq i32 %9, 0, !dbg !486
  br i1 %10, label %11, label %13, !dbg !487

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !488
  br label %13, !dbg !489

; <label>:13:                                     ; preds = %1, %8, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !492
  %15 = icmp eq i32 %14, -1, !dbg !492
  br i1 %15, label %28, label %16, !dbg !492

; <label>:16:                                     ; preds = %13
  %17 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 2) #4, !dbg !496
  %18 = fadd double %17, 0x4338000000000000, !dbg !498
  %19 = bitcast double %18 to i64, !dbg !498
  %20 = trunc i64 %19 to i32, !dbg !499
  %21 = icmp eq i32 %20, 0, !dbg !501
  br i1 %21, label %22, label %27, !dbg !502

; <label>:22:                                     ; preds = %16
  %23 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 2) #4, !dbg !503
  %24 = icmp eq i32 %23, 0, !dbg !503
  br i1 %24, label %25, label %27, !dbg !504

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @luaL_typerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !505
  br label %27, !dbg !506

; <label>:27:                                     ; preds = %16, %22, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br label %28, !dbg !492

; <label>:28:                                     ; preds = %13, %27
  %29 = phi i32 [ %20, %27 ], [ 8, %13 ], !dbg !492
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #5, !dbg !509
  %31 = icmp slt i32 %29, 0, !dbg !511
  %32 = sub nsw i32 0, %29, !dbg !513
  %33 = select i1 %31, i32 %32, i32 %29, !dbg !515
  %34 = select i1 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), !dbg !515
  %35 = icmp slt i32 %33, 8, !dbg !517
  %36 = select i1 %35, i32 %33, i32 8, !dbg !517
  %37 = icmp sgt i32 %33, 0, !dbg !519
  br i1 %37, label %38, label %51, !dbg !522

; <label>:38:                                     ; preds = %28
  %39 = zext i32 %36 to i64, !dbg !523
  br label %40, !dbg !523

; <label>:40:                                     ; preds = %38, %40
  %41 = phi i64 [ %39, %38 ], [ %43, %40 ]
  %42 = phi i32 [ %6, %38 ], [ %49, %40 ]
  %43 = add i64 %41, -1, !dbg !523
  %44 = and i32 %42, 15, !dbg !524
  %45 = zext i32 %44 to i64, !dbg !526
  %46 = getelementptr inbounds i8, i8* %34, i64 %45, !dbg !526
  %47 = load i8, i8* %46, align 1, !dbg !526, !tbaa !527
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %43, !dbg !530
  store i8 %47, i8* %48, align 1, !dbg !531, !tbaa !527
  %49 = lshr i32 %42, 4, !dbg !532
  %50 = icmp sgt i64 %41, 1, !dbg !519
  br i1 %50, label %40, label %51, !dbg !522, !llvm.loop !533

; <label>:51:                                     ; preds = %40, %28
  %52 = zext i32 %36 to i64, !dbg !535
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %30, i64 %52) #4, !dbg !536
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #5, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  ret i32 1, !dbg !538
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
!78 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !71)
!79 = distinct !DILexicalBlock(scope: !56, file: !3, line: 86, column: 7)
!80 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !71)
!81 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !71)
!82 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !71)
!83 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !71)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 86, column: 40)
!85 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !71)
!86 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !71)
!87 = !DILocation(line: 165, column: 9, scope: !46)
!88 = !DILocation(line: 168, column: 7, scope: !46)
!89 = !DILocation(line: 168, column: 9, scope: !52)
!90 = !DILocation(line: 175, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !51, file: !3, line: 175, column: 9)
!92 = !DILocation(line: 175, column: 9, scope: !51)
!93 = !DILocation(line: 169, column: 17, scope: !51)
!94 = !DILocation(line: 180, column: 5, scope: !51)
!95 = !DILocation(line: 181, column: 3, scope: !51)
!96 = !DILocation(line: 183, column: 3, scope: !46)
!97 = !DILocation(line: 187, column: 3, scope: !46)
!98 = distinct !DISubprogram(name: "bit_tobit", scope: !3, file: !3, line: 96, type: !35, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!99 = !{!100}
!100 = !DILocalVariable(name: "L", arg: 1, scope: !98, file: !3, line: 96, type: !37)
!101 = !DILocation(line: 96, column: 33, scope: !98)
!102 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !103)
!103 = distinct !DILocation(line: 96, column: 38, scope: !98)
!104 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !103)
!105 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !103)
!106 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !103)
!107 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !103)
!108 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !103)
!109 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !103)
!110 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !103)
!111 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !103)
!112 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !103)
!113 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !103)
!114 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !103)
!115 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !103)
!116 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !103)
!117 = !DILocation(line: 96, column: 38, scope: !98)
!118 = distinct !DISubprogram(name: "bit_bnot", scope: !3, file: !3, line: 97, type: !35, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !119)
!119 = !{!120}
!120 = !DILocalVariable(name: "L", arg: 1, scope: !118, file: !3, line: 97, type: !37)
!121 = !DILocation(line: 97, column: 32, scope: !118)
!122 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !123)
!123 = distinct !DILocation(line: 97, column: 37, scope: !118)
!124 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !123)
!125 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !123)
!126 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !123)
!127 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !123)
!128 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !123)
!129 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !123)
!130 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !123)
!131 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !123)
!132 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !123)
!133 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !123)
!134 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !123)
!135 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !123)
!136 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !123)
!137 = !DILocation(line: 97, column: 37, scope: !118)
!138 = distinct !DISubprogram(name: "bit_band", scope: !3, file: !3, line: 102, type: !35, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "L", arg: 1, scope: !138, file: !3, line: 102, type: !37)
!141 = !DILocalVariable(name: "i", scope: !138, file: !3, line: 102, type: !18)
!142 = !DILocalVariable(name: "b", scope: !138, file: !3, line: 102, type: !9)
!143 = !DILocation(line: 102, column: 1, scope: !138)
!144 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !145)
!145 = distinct !DILocation(line: 102, column: 1, scope: !138)
!146 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !145)
!147 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !145)
!148 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !145)
!149 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !145)
!150 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !145)
!151 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !145)
!152 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !145)
!153 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !145)
!154 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !145)
!155 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !145)
!156 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !145)
!157 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !145)
!158 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !145)
!159 = !DILocation(line: 102, column: 1, scope: !160)
!160 = distinct !DILexicalBlock(scope: !138, file: !3, line: 102, column: 1)
!161 = !DILocation(line: 102, column: 1, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !3, line: 102, column: 1)
!163 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !164)
!164 = distinct !DILocation(line: 102, column: 1, scope: !162)
!165 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !164)
!166 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !164)
!167 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !164)
!168 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !164)
!169 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !164)
!170 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !164)
!171 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !164)
!172 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !164)
!173 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !164)
!174 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !164)
!175 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !164)
!176 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !164)
!177 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !164)
!178 = distinct !{!178, !159, !159}
!179 = distinct !DISubprogram(name: "bit_bor", scope: !3, file: !3, line: 103, type: !35, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !180)
!180 = !{!181, !182, !183}
!181 = !DILocalVariable(name: "L", arg: 1, scope: !179, file: !3, line: 103, type: !37)
!182 = !DILocalVariable(name: "i", scope: !179, file: !3, line: 103, type: !18)
!183 = !DILocalVariable(name: "b", scope: !179, file: !3, line: 103, type: !9)
!184 = !DILocation(line: 103, column: 1, scope: !179)
!185 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !186)
!186 = distinct !DILocation(line: 103, column: 1, scope: !179)
!187 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !186)
!188 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !186)
!189 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !186)
!190 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !186)
!191 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !186)
!192 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !186)
!193 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !186)
!194 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !186)
!195 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !186)
!196 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !186)
!197 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !186)
!198 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !186)
!199 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !186)
!200 = !DILocation(line: 103, column: 1, scope: !201)
!201 = distinct !DILexicalBlock(scope: !179, file: !3, line: 103, column: 1)
!202 = !DILocation(line: 103, column: 1, scope: !203)
!203 = distinct !DILexicalBlock(scope: !201, file: !3, line: 103, column: 1)
!204 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !205)
!205 = distinct !DILocation(line: 103, column: 1, scope: !203)
!206 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !205)
!207 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !205)
!208 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !205)
!209 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !205)
!210 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !205)
!211 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !205)
!212 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !205)
!213 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !205)
!214 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !205)
!215 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !205)
!216 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !205)
!217 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !205)
!218 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !205)
!219 = distinct !{!219, !200, !200}
!220 = distinct !DISubprogram(name: "bit_bxor", scope: !3, file: !3, line: 104, type: !35, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !221)
!221 = !{!222, !223, !224}
!222 = !DILocalVariable(name: "L", arg: 1, scope: !220, file: !3, line: 104, type: !37)
!223 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 104, type: !18)
!224 = !DILocalVariable(name: "b", scope: !220, file: !3, line: 104, type: !9)
!225 = !DILocation(line: 104, column: 1, scope: !220)
!226 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !227)
!227 = distinct !DILocation(line: 104, column: 1, scope: !220)
!228 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !227)
!229 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !227)
!230 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !227)
!231 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !227)
!232 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !227)
!233 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !227)
!234 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !227)
!235 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !227)
!236 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !227)
!237 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !227)
!238 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !227)
!239 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !227)
!240 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !227)
!241 = !DILocation(line: 104, column: 1, scope: !242)
!242 = distinct !DILexicalBlock(scope: !220, file: !3, line: 104, column: 1)
!243 = !DILocation(line: 104, column: 1, scope: !244)
!244 = distinct !DILexicalBlock(scope: !242, file: !3, line: 104, column: 1)
!245 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !246)
!246 = distinct !DILocation(line: 104, column: 1, scope: !244)
!247 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !246)
!248 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !246)
!249 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !246)
!250 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !246)
!251 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !246)
!252 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !246)
!253 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !246)
!254 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !246)
!255 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !246)
!256 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !246)
!257 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !246)
!258 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !246)
!259 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !246)
!260 = distinct !{!260, !241, !241}
!261 = distinct !DISubprogram(name: "bit_lshift", scope: !3, file: !3, line: 114, type: !35, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !262)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "L", arg: 1, scope: !261, file: !3, line: 114, type: !37)
!264 = !DILocalVariable(name: "b", scope: !261, file: !3, line: 114, type: !9)
!265 = !DILocalVariable(name: "n", scope: !261, file: !3, line: 114, type: !9)
!266 = !DILocation(line: 114, column: 1, scope: !261)
!267 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !268)
!268 = distinct !DILocation(line: 114, column: 1, scope: !261)
!269 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !268)
!270 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !268)
!271 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !268)
!272 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !268)
!273 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !268)
!274 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !268)
!275 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !268)
!276 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !268)
!277 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !268)
!278 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !268)
!279 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !268)
!280 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !268)
!281 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !268)
!282 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !283)
!283 = distinct !DILocation(line: 114, column: 1, scope: !261)
!284 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !283)
!285 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !283)
!286 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !283)
!287 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !283)
!288 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !283)
!289 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !283)
!290 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !283)
!291 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !283)
!292 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !283)
!293 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !283)
!294 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !283)
!295 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !283)
!296 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !283)
!297 = distinct !DISubprogram(name: "bit_rshift", scope: !3, file: !3, line: 115, type: !35, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !298)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "L", arg: 1, scope: !297, file: !3, line: 115, type: !37)
!300 = !DILocalVariable(name: "b", scope: !297, file: !3, line: 115, type: !9)
!301 = !DILocalVariable(name: "n", scope: !297, file: !3, line: 115, type: !9)
!302 = !DILocation(line: 115, column: 1, scope: !297)
!303 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !304)
!304 = distinct !DILocation(line: 115, column: 1, scope: !297)
!305 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !304)
!306 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !304)
!307 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !304)
!308 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !304)
!309 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !304)
!310 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !304)
!311 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !304)
!312 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !304)
!313 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !304)
!314 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !304)
!315 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !304)
!316 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !304)
!317 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !304)
!318 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !319)
!319 = distinct !DILocation(line: 115, column: 1, scope: !297)
!320 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !319)
!321 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !319)
!322 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !319)
!323 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !319)
!324 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !319)
!325 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !319)
!326 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !319)
!327 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !319)
!328 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !319)
!329 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !319)
!330 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !319)
!331 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !319)
!332 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !319)
!333 = distinct !DISubprogram(name: "bit_arshift", scope: !3, file: !3, line: 116, type: !35, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !334)
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(name: "L", arg: 1, scope: !333, file: !3, line: 116, type: !37)
!336 = !DILocalVariable(name: "b", scope: !333, file: !3, line: 116, type: !9)
!337 = !DILocalVariable(name: "n", scope: !333, file: !3, line: 116, type: !9)
!338 = !DILocation(line: 116, column: 1, scope: !333)
!339 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !340)
!340 = distinct !DILocation(line: 116, column: 1, scope: !333)
!341 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !340)
!342 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !340)
!343 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !340)
!344 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !340)
!345 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !340)
!346 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !340)
!347 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !340)
!348 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !340)
!349 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !340)
!350 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !340)
!351 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !340)
!352 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !340)
!353 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !340)
!354 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !355)
!355 = distinct !DILocation(line: 116, column: 1, scope: !333)
!356 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !355)
!357 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !355)
!358 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !355)
!359 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !355)
!360 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !355)
!361 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !355)
!362 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !355)
!363 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !355)
!364 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !355)
!365 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !355)
!366 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !355)
!367 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !355)
!368 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !355)
!369 = distinct !DISubprogram(name: "bit_rol", scope: !3, file: !3, line: 117, type: !35, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !370)
!370 = !{!371, !372, !373}
!371 = !DILocalVariable(name: "L", arg: 1, scope: !369, file: !3, line: 117, type: !37)
!372 = !DILocalVariable(name: "b", scope: !369, file: !3, line: 117, type: !9)
!373 = !DILocalVariable(name: "n", scope: !369, file: !3, line: 117, type: !9)
!374 = !DILocation(line: 117, column: 1, scope: !369)
!375 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !376)
!376 = distinct !DILocation(line: 117, column: 1, scope: !369)
!377 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !376)
!378 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !376)
!379 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !376)
!380 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !376)
!381 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !376)
!382 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !376)
!383 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !376)
!384 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !376)
!385 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !376)
!386 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !376)
!387 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !376)
!388 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !376)
!389 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !376)
!390 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !391)
!391 = distinct !DILocation(line: 117, column: 1, scope: !369)
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
!402 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !391)
!403 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !391)
!404 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !391)
!405 = distinct !DISubprogram(name: "bit_ror", scope: !3, file: !3, line: 118, type: !35, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !406)
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(name: "L", arg: 1, scope: !405, file: !3, line: 118, type: !37)
!408 = !DILocalVariable(name: "b", scope: !405, file: !3, line: 118, type: !9)
!409 = !DILocalVariable(name: "n", scope: !405, file: !3, line: 118, type: !9)
!410 = !DILocation(line: 118, column: 1, scope: !405)
!411 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !412)
!412 = distinct !DILocation(line: 118, column: 1, scope: !405)
!413 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !412)
!414 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !412)
!415 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !412)
!416 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !412)
!417 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !412)
!418 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !412)
!419 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !412)
!420 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !412)
!421 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !412)
!422 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !412)
!423 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !412)
!424 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !412)
!425 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !412)
!426 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !427)
!427 = distinct !DILocation(line: 118, column: 1, scope: !405)
!428 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !427)
!429 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !427)
!430 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !427)
!431 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !427)
!432 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !427)
!433 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !427)
!434 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !427)
!435 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !427)
!436 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !427)
!437 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !427)
!438 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !427)
!439 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !427)
!440 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !427)
!441 = distinct !DISubprogram(name: "bit_bswap", scope: !3, file: !3, line: 120, type: !35, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !442)
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "L", arg: 1, scope: !441, file: !3, line: 120, type: !37)
!444 = !DILocalVariable(name: "b", scope: !441, file: !3, line: 122, type: !9)
!445 = !DILocation(line: 120, column: 33, scope: !441)
!446 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !447)
!447 = distinct !DILocation(line: 122, column: 13, scope: !441)
!448 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !447)
!449 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !447)
!450 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !447)
!451 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !447)
!452 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !447)
!453 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !447)
!454 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !447)
!455 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !447)
!456 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !447)
!457 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !447)
!458 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !447)
!459 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !447)
!460 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !447)
!461 = !DILocation(line: 122, column: 9, scope: !441)
!462 = !DILocation(line: 123, column: 61, scope: !441)
!463 = !DILocation(line: 124, column: 3, scope: !441)
!464 = distinct !DISubprogram(name: "bit_tohex", scope: !3, file: !3, line: 127, type: !35, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470, !474}
!466 = !DILocalVariable(name: "L", arg: 1, scope: !464, file: !3, line: 127, type: !37)
!467 = !DILocalVariable(name: "b", scope: !464, file: !3, line: 129, type: !9)
!468 = !DILocalVariable(name: "n", scope: !464, file: !3, line: 130, type: !15)
!469 = !DILocalVariable(name: "hexdigits", scope: !464, file: !3, line: 131, type: !29)
!470 = !DILocalVariable(name: "buf", scope: !464, file: !3, line: 132, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 8)
!474 = !DILocalVariable(name: "i", scope: !464, file: !3, line: 133, type: !18)
!475 = !DILocation(line: 127, column: 33, scope: !464)
!476 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !477)
!477 = distinct !DILocation(line: 129, column: 13, scope: !464)
!478 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !477)
!479 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !477)
!480 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !477)
!481 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !477)
!482 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !477)
!483 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !477)
!484 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !477)
!485 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !477)
!486 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !477)
!487 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !477)
!488 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !477)
!489 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !477)
!490 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !477)
!491 = !DILocation(line: 129, column: 9, scope: !464)
!492 = !DILocation(line: 130, column: 13, scope: !464)
!493 = !DILocation(line: 57, column: 30, scope: !56, inlinedAt: !494)
!494 = distinct !DILocation(line: 130, column: 43, scope: !464)
!495 = !DILocation(line: 57, column: 37, scope: !56, inlinedAt: !494)
!496 = !DILocation(line: 62, column: 10, scope: !56, inlinedAt: !494)
!497 = !DILocation(line: 59, column: 10, scope: !56, inlinedAt: !494)
!498 = !DILocation(line: 67, column: 8, scope: !56, inlinedAt: !494)
!499 = !DILocation(line: 71, column: 7, scope: !56, inlinedAt: !494)
!500 = !DILocation(line: 60, column: 9, scope: !56, inlinedAt: !494)
!501 = !DILocation(line: 86, column: 9, scope: !79, inlinedAt: !494)
!502 = !DILocation(line: 86, column: 14, scope: !79, inlinedAt: !494)
!503 = !DILocation(line: 86, column: 18, scope: !79, inlinedAt: !494)
!504 = !DILocation(line: 86, column: 7, scope: !56, inlinedAt: !494)
!505 = !DILocation(line: 87, column: 5, scope: !84, inlinedAt: !494)
!506 = !DILocation(line: 88, column: 3, scope: !84, inlinedAt: !494)
!507 = !DILocation(line: 90, column: 3, scope: !56, inlinedAt: !494)
!508 = !DILocation(line: 130, column: 9, scope: !464)
!509 = !DILocation(line: 132, column: 3, scope: !464)
!510 = !DILocation(line: 132, column: 8, scope: !464)
!511 = !DILocation(line: 134, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !464, file: !3, line: 134, column: 7)
!513 = !DILocation(line: 134, column: 20, scope: !514)
!514 = distinct !DILexicalBlock(scope: !512, file: !3, line: 134, column: 14)
!515 = !DILocation(line: 134, column: 7, scope: !464)
!516 = !DILocation(line: 131, column: 15, scope: !464)
!517 = !DILocation(line: 135, column: 7, scope: !464)
!518 = !DILocation(line: 133, column: 7, scope: !464)
!519 = !DILocation(line: 136, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 136, column: 3)
!521 = distinct !DILexicalBlock(scope: !464, file: !3, line: 136, column: 3)
!522 = !DILocation(line: 136, column: 3, scope: !521)
!523 = !DILocation(line: 136, column: 20, scope: !520)
!524 = !DILocation(line: 136, column: 55, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !3, line: 136, column: 32)
!526 = !DILocation(line: 136, column: 43, scope: !525)
!527 = !{!528, !528, i64 0}
!528 = !{!"omnipotent char", !529, i64 0}
!529 = !{!"Simple C/C++ TBAA"}
!530 = !DILocation(line: 136, column: 34, scope: !525)
!531 = !DILocation(line: 136, column: 41, scope: !525)
!532 = !DILocation(line: 136, column: 64, scope: !525)
!533 = distinct !{!533, !522, !534}
!534 = !DILocation(line: 136, column: 71, scope: !521)
!535 = !DILocation(line: 137, column: 27, scope: !464)
!536 = !DILocation(line: 137, column: 3, scope: !464)
!537 = !DILocation(line: 139, column: 1, scope: !464)
!538 = !DILocation(line: 138, column: 3, scope: !464)
