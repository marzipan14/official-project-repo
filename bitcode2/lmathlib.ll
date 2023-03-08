; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmathlib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmathlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@.str = private unnamed_addr constant [5 x i8] c"math\00", align 1
@mathlib = internal constant [29 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan2 }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cosh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_frexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ldexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log10 }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_pow }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sinh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tanh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_math(%struct.lua_State*) local_unnamed_addr #0 !dbg !35 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([29 x %struct.luaL_Reg], [29 x %struct.luaL_Reg]* @mathlib, i64 0, i64 0)) #4, !dbg !39
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x400921FB54442D18) #4, !dbg !40
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !41
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x7FF0000000000000) #4, !dbg !42
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !43
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !44
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  ret i32 1, !dbg !46
}

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @math_abs(%struct.lua_State*) #0 !dbg !47 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !51
  %3 = tail call double @fabs(double %2) #4, !dbg !52
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i32 1, !dbg !54
}

; Function Attrs: noredzone nounwind
define internal i32 @math_acos(%struct.lua_State*) #0 !dbg !55 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !59
  %3 = tail call double @acos(double %2) #4, !dbg !60
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  ret i32 1, !dbg !62
}

; Function Attrs: noredzone nounwind
define internal i32 @math_asin(%struct.lua_State*) #0 !dbg !63 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !67
  %3 = tail call double @asin(double %2) #4, !dbg !68
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  ret i32 1, !dbg !70
}

; Function Attrs: noredzone nounwind
define internal i32 @math_atan2(%struct.lua_State*) #0 !dbg !71 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !75
  %3 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #4, !dbg !76
  %4 = tail call double @atan2(double %2, double %3) #4, !dbg !77
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #4, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  ret i32 1, !dbg !79
}

; Function Attrs: noredzone nounwind
define internal i32 @math_atan(%struct.lua_State*) #0 !dbg !80 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !84
  %3 = tail call double @atan(double %2) #4, !dbg !85
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  ret i32 1, !dbg !87
}

; Function Attrs: noredzone nounwind
define internal i32 @math_ceil(%struct.lua_State*) #0 !dbg !88 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !92
  %3 = tail call double @ceil(double %2) #4, !dbg !93
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  ret i32 1, !dbg !95
}

; Function Attrs: noredzone nounwind
define internal i32 @math_cosh(%struct.lua_State*) #0 !dbg !96 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !100
  %3 = tail call double @cosh(double %2) #4, !dbg !101
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  ret i32 1, !dbg !103
}

; Function Attrs: noredzone nounwind
define internal i32 @math_cos(%struct.lua_State*) #0 !dbg !104 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !108
  %3 = tail call double @cos(double %2) #4, !dbg !109
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  ret i32 1, !dbg !111
}

; Function Attrs: noredzone nounwind
define internal i32 @math_deg(%struct.lua_State*) #0 !dbg !112 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !116
  %3 = fdiv double %2, 0x3F91DF46A2529D39, !dbg !117
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  ret i32 1, !dbg !119
}

; Function Attrs: noredzone nounwind
define internal i32 @math_exp(%struct.lua_State*) #0 !dbg !120 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !124
  %3 = tail call double @exp(double %2) #4, !dbg !125
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  ret i32 1, !dbg !127
}

; Function Attrs: noredzone nounwind
define internal i32 @math_floor(%struct.lua_State*) #0 !dbg !128 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !132
  %3 = tail call double @floor(double %2) #4, !dbg !133
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  ret i32 1, !dbg !135
}

; Function Attrs: noredzone nounwind
define internal i32 @math_fmod(%struct.lua_State*) #0 !dbg !136 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !140
  %3 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #4, !dbg !141
  %4 = tail call double @fmod(double %2, double %3) #4, !dbg !142
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret i32 1, !dbg !144
}

; Function Attrs: noredzone nounwind
define internal i32 @math_frexp(%struct.lua_State*) #0 !dbg !145 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !150
  %4 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !151
  %5 = call double @frexp(double %4, i32* nonnull %2) #4, !dbg !153
  call void @lua_pushnumber(%struct.lua_State* %0, double %5) #4, !dbg !154
  %6 = load i32, i32* %2, align 4, !dbg !155, !tbaa !156
  %7 = sext i32 %6 to i64, !dbg !155
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %7) #4, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !162
  ret i32 2, !dbg !162
}

; Function Attrs: noredzone nounwind
define internal i32 @math_ldexp(%struct.lua_State*) #0 !dbg !163 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !167
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !168
  %4 = trunc i64 %3 to i32, !dbg !168
  %5 = tail call double @ldexp(double %2, i32 %4) #4, !dbg !169
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %5) #4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  ret i32 1, !dbg !171
}

; Function Attrs: noredzone nounwind
define internal i32 @math_log10(%struct.lua_State*) #0 !dbg !172 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !176
  %3 = tail call double @log10(double %2) #4, !dbg !177
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  ret i32 1, !dbg !179
}

; Function Attrs: noredzone nounwind
define internal i32 @math_log(%struct.lua_State*) #0 !dbg !180 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !184
  %3 = tail call double @log(double %2) #4, !dbg !185
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  ret i32 1, !dbg !187
}

; Function Attrs: noredzone nounwind
define internal i32 @math_max(%struct.lua_State*) #0 !dbg !188 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !199
  %3 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  %4 = icmp slt i32 %2, 2, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %4, label %15, label %5, !dbg !206

; <label>:5:                                      ; preds = %1, %11
  %6 = phi double [ %12, %11 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %11 ], [ 2, %1 ]
  %8 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %7) #4, !dbg !207
  %9 = fcmp ogt double %8, %6, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %9, label %10, label %11, !dbg !211

; <label>:10:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br label %11, !dbg !212

; <label>:11:                                     ; preds = %10, %5
  %12 = phi double [ %8, %10 ], [ %6, %5 ], !dbg !213
  %13 = add nuw nsw i32 %7, 1, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %14 = icmp eq i32 %7, %2, !dbg !205
  br i1 %14, label %15, label %5, !dbg !206, !llvm.loop !216

; <label>:15:                                     ; preds = %11, %1
  %16 = phi double [ %3, %1 ], [ %12, %11 ], !dbg !218
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %16) #4, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  ret i32 1, !dbg !220
}

; Function Attrs: noredzone nounwind
define internal i32 @math_min(%struct.lua_State*) #0 !dbg !221 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !232
  %3 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %4 = icmp slt i32 %2, 2, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %4, label %15, label %5, !dbg !239

; <label>:5:                                      ; preds = %1, %11
  %6 = phi double [ %12, %11 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %11 ], [ 2, %1 ]
  %8 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %7) #4, !dbg !240
  %9 = fcmp olt double %8, %6, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %9, label %10, label %11, !dbg !244

; <label>:10:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br label %11, !dbg !245

; <label>:11:                                     ; preds = %10, %5
  %12 = phi double [ %8, %10 ], [ %6, %5 ], !dbg !246
  %13 = add nuw nsw i32 %7, 1, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %14 = icmp eq i32 %7, %2, !dbg !238
  br i1 %14, label %15, label %5, !dbg !239, !llvm.loop !249

; <label>:15:                                     ; preds = %11, %1
  %16 = phi double [ %3, %1 ], [ %12, %11 ], !dbg !251
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %16) #4, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  ret i32 1, !dbg !253
}

; Function Attrs: noredzone nounwind
define internal i32 @math_modf(%struct.lua_State*) #0 !dbg !254 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*, !dbg !260
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !260
  %4 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !261
  %5 = call double @modf(double %4, double* nonnull %2) #4, !dbg !263
  %6 = load double, double* %2, align 8, !dbg !265, !tbaa !266
  call void @lua_pushnumber(%struct.lua_State* %0, double %6) #4, !dbg !268
  call void @lua_pushnumber(%struct.lua_State* %0, double %5) #4, !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  ret i32 2, !dbg !271
}

; Function Attrs: noredzone nounwind
define internal i32 @math_pow(%struct.lua_State*) #0 !dbg !272 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !276
  %3 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #4, !dbg !277
  %4 = tail call double @pow(double %2, double %3) #4, !dbg !278
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i32 1, !dbg !280
}

; Function Attrs: noredzone nounwind
define internal i32 @math_rad(%struct.lua_State*) #0 !dbg !281 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !285
  %3 = fmul double %2, 0x3F91DF46A2529D39, !dbg !286
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  ret i32 1, !dbg !288
}

; Function Attrs: noredzone nounwind
define internal i32 @math_random(%struct.lua_State*) #0 !dbg !289 {
  %2 = tail call i32 @rand() #4, !dbg !300
  %3 = srem i32 %2, 2147483647, !dbg !301
  %4 = sitofp i32 %3 to double, !dbg !302
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !dbg !303
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
  ], !dbg !306

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %5) #4, !dbg !307
  br label %37, !dbg !309

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #4, !dbg !310
  %10 = trunc i64 %9 to i32, !dbg !310
  %11 = icmp sgt i32 %10, 0, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %11, label %14, label %12, !dbg !312

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br label %14, !dbg !312

; <label>:14:                                     ; preds = %12, %8
  %15 = sitofp i32 %10 to double, !dbg !313
  %16 = fmul double %5, %15, !dbg !314
  %17 = tail call double @floor(double %16) #4, !dbg !315
  %18 = fadd double %17, 1.000000e+00, !dbg !316
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %18) #4, !dbg !317
  br label %37

; <label>:19:                                     ; preds = %1
  %20 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #4, !dbg !318
  %21 = trunc i64 %20 to i32, !dbg !318
  %22 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !320
  %23 = trunc i64 %22 to i32, !dbg !320
  %24 = icmp slt i32 %23, %21, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %24, label %25, label %27, !dbg !322

; <label>:25:                                     ; preds = %19
  %26 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br label %27, !dbg !322

; <label>:27:                                     ; preds = %19, %25
  %28 = sub i32 1, %21, !dbg !323
  %29 = add i32 %28, %23, !dbg !324
  %30 = sitofp i32 %29 to double, !dbg !325
  %31 = fmul double %5, %30, !dbg !326
  %32 = tail call double @floor(double %31) #4, !dbg !327
  %33 = sitofp i32 %21 to double, !dbg !328
  %34 = fadd double %32, %33, !dbg !329
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #4, !dbg !330
  br label %37

; <label>:35:                                     ; preds = %1
  %36 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !331
  br label %38, !dbg !332

; <label>:37:                                     ; preds = %27, %14, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38, !dbg !333

; <label>:38:                                     ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 1, %37 ], !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  ret i32 %39, !dbg !336
}

; Function Attrs: noredzone nounwind
define internal i32 @math_randomseed(%struct.lua_State*) #0 !dbg !337 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #4, !dbg !341
  %3 = trunc i64 %2 to i32, !dbg !341
  tail call void @srand(i32 %3) #4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  ret i32 0, !dbg !343
}

; Function Attrs: noredzone nounwind
define internal i32 @math_sinh(%struct.lua_State*) #0 !dbg !344 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !348
  %3 = tail call double @sinh(double %2) #4, !dbg !349
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  ret i32 1, !dbg !351
}

; Function Attrs: noredzone nounwind
define internal i32 @math_sin(%struct.lua_State*) #0 !dbg !352 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !356
  %3 = tail call double @sin(double %2) #4, !dbg !357
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  ret i32 1, !dbg !359
}

; Function Attrs: noredzone nounwind
define internal i32 @math_sqrt(%struct.lua_State*) #0 !dbg !360 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !364
  %3 = tail call double @sqrt(double %2) #4, !dbg !365
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  ret i32 1, !dbg !367
}

; Function Attrs: noredzone nounwind
define internal i32 @math_tanh(%struct.lua_State*) #0 !dbg !368 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !372
  %3 = tail call double @tanh(double %2) #4, !dbg !373
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  ret i32 1, !dbg !375
}

; Function Attrs: noredzone nounwind
define internal i32 @math_tan(%struct.lua_State*) #0 !dbg !376 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #4, !dbg !380
  %3 = tail call double @tan(double %2) #4, !dbg !381
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #4, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  ret i32 1, !dbg !383
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @acos(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @asin(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @atan2(double, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @atan(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @ceil(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @cosh(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @exp(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fmod(double, double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @frexp(double, i32*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @ldexp(double, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @log10(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @log(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @modf(double, double*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @sinh(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @tanh(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @tan(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mathlib", scope: !2, file: !3, line: 215, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmathlib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !8, line: 99, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3712, elements: !29)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !14, line: 38, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !14, line: 35, size: 128, elements: !16)
!16 = !{!17, !21}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !14, line: 36, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !15, file: !14, line: 37, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !8, line: 52, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!6, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !8, line: 50, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !8, line: 50, flags: DIFlagFwdDecl)
!29 = !{!30}
!30 = !DISubrange(count: 29)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!35 = distinct !DISubprogram(name: "luaopen_math", scope: !3, file: !3, line: 251, type: !24, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !36)
!36 = !{!37}
!37 = !DILocalVariable(name: "L", arg: 1, scope: !35, file: !3, line: 251, type: !26)
!38 = !DILocation(line: 251, column: 41, scope: !35)
!39 = !DILocation(line: 252, column: 3, scope: !35)
!40 = !DILocation(line: 253, column: 3, scope: !35)
!41 = !DILocation(line: 254, column: 3, scope: !35)
!42 = !DILocation(line: 255, column: 3, scope: !35)
!43 = !DILocation(line: 256, column: 3, scope: !35)
!44 = !DILocation(line: 258, column: 3, scope: !35)
!45 = !DILocation(line: 259, column: 3, scope: !35)
!46 = !DILocation(line: 261, column: 3, scope: !35)
!47 = distinct !DISubprogram(name: "math_abs", scope: !3, file: !3, line: 26, type: !24, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !48)
!48 = !{!49}
!49 = !DILocalVariable(name: "L", arg: 1, scope: !47, file: !3, line: 26, type: !26)
!50 = !DILocation(line: 26, column: 33, scope: !47)
!51 = !DILocation(line: 27, column: 26, scope: !47)
!52 = !DILocation(line: 27, column: 21, scope: !47)
!53 = !DILocation(line: 27, column: 3, scope: !47)
!54 = !DILocation(line: 28, column: 3, scope: !47)
!55 = distinct !DISubprogram(name: "math_acos", scope: !3, file: !3, line: 66, type: !24, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !56)
!56 = !{!57}
!57 = !DILocalVariable(name: "L", arg: 1, scope: !55, file: !3, line: 66, type: !26)
!58 = !DILocation(line: 66, column: 34, scope: !55)
!59 = !DILocation(line: 67, column: 26, scope: !55)
!60 = !DILocation(line: 67, column: 21, scope: !55)
!61 = !DILocation(line: 67, column: 3, scope: !55)
!62 = !DILocation(line: 68, column: 3, scope: !55)
!63 = distinct !DISubprogram(name: "math_asin", scope: !3, file: !3, line: 61, type: !24, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !64)
!64 = !{!65}
!65 = !DILocalVariable(name: "L", arg: 1, scope: !63, file: !3, line: 61, type: !26)
!66 = !DILocation(line: 61, column: 34, scope: !63)
!67 = !DILocation(line: 62, column: 26, scope: !63)
!68 = !DILocation(line: 62, column: 21, scope: !63)
!69 = !DILocation(line: 62, column: 3, scope: !63)
!70 = !DILocation(line: 63, column: 3, scope: !63)
!71 = distinct !DISubprogram(name: "math_atan2", scope: !3, file: !3, line: 76, type: !24, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!72 = !{!73}
!73 = !DILocalVariable(name: "L", arg: 1, scope: !71, file: !3, line: 76, type: !26)
!74 = !DILocation(line: 76, column: 35, scope: !71)
!75 = !DILocation(line: 77, column: 27, scope: !71)
!76 = !DILocation(line: 77, column: 51, scope: !71)
!77 = !DILocation(line: 77, column: 21, scope: !71)
!78 = !DILocation(line: 77, column: 3, scope: !71)
!79 = !DILocation(line: 78, column: 3, scope: !71)
!80 = distinct !DISubprogram(name: "math_atan", scope: !3, file: !3, line: 71, type: !24, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!81 = !{!82}
!82 = !DILocalVariable(name: "L", arg: 1, scope: !80, file: !3, line: 71, type: !26)
!83 = !DILocation(line: 71, column: 34, scope: !80)
!84 = !DILocation(line: 72, column: 26, scope: !80)
!85 = !DILocation(line: 72, column: 21, scope: !80)
!86 = !DILocation(line: 72, column: 3, scope: !80)
!87 = !DILocation(line: 73, column: 3, scope: !80)
!88 = distinct !DISubprogram(name: "math_ceil", scope: !3, file: !3, line: 81, type: !24, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !89)
!89 = !{!90}
!90 = !DILocalVariable(name: "L", arg: 1, scope: !88, file: !3, line: 81, type: !26)
!91 = !DILocation(line: 81, column: 34, scope: !88)
!92 = !DILocation(line: 82, column: 26, scope: !88)
!93 = !DILocation(line: 82, column: 21, scope: !88)
!94 = !DILocation(line: 82, column: 3, scope: !88)
!95 = !DILocation(line: 83, column: 3, scope: !88)
!96 = distinct !DISubprogram(name: "math_cosh", scope: !3, file: !3, line: 46, type: !24, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !97)
!97 = !{!98}
!98 = !DILocalVariable(name: "L", arg: 1, scope: !96, file: !3, line: 46, type: !26)
!99 = !DILocation(line: 46, column: 34, scope: !96)
!100 = !DILocation(line: 47, column: 26, scope: !96)
!101 = !DILocation(line: 47, column: 21, scope: !96)
!102 = !DILocation(line: 47, column: 3, scope: !96)
!103 = !DILocation(line: 48, column: 3, scope: !96)
!104 = distinct !DISubprogram(name: "math_cos", scope: !3, file: !3, line: 41, type: !24, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !105)
!105 = !{!106}
!106 = !DILocalVariable(name: "L", arg: 1, scope: !104, file: !3, line: 41, type: !26)
!107 = !DILocation(line: 41, column: 33, scope: !104)
!108 = !DILocation(line: 42, column: 25, scope: !104)
!109 = !DILocation(line: 42, column: 21, scope: !104)
!110 = !DILocation(line: 42, column: 3, scope: !104)
!111 = !DILocation(line: 43, column: 3, scope: !104)
!112 = distinct !DISubprogram(name: "math_deg", scope: !3, file: !3, line: 129, type: !24, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!113 = !{!114}
!114 = !DILocalVariable(name: "L", arg: 1, scope: !112, file: !3, line: 129, type: !26)
!115 = !DILocation(line: 129, column: 33, scope: !112)
!116 = !DILocation(line: 130, column: 21, scope: !112)
!117 = !DILocation(line: 130, column: 43, scope: !112)
!118 = !DILocation(line: 130, column: 3, scope: !112)
!119 = !DILocation(line: 131, column: 3, scope: !112)
!120 = distinct !DISubprogram(name: "math_exp", scope: !3, file: !3, line: 124, type: !24, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !121)
!121 = !{!122}
!122 = !DILocalVariable(name: "L", arg: 1, scope: !120, file: !3, line: 124, type: !26)
!123 = !DILocation(line: 124, column: 33, scope: !120)
!124 = !DILocation(line: 125, column: 25, scope: !120)
!125 = !DILocation(line: 125, column: 21, scope: !120)
!126 = !DILocation(line: 125, column: 3, scope: !120)
!127 = !DILocation(line: 126, column: 3, scope: !120)
!128 = distinct !DISubprogram(name: "math_floor", scope: !3, file: !3, line: 86, type: !24, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !129)
!129 = !{!130}
!130 = !DILocalVariable(name: "L", arg: 1, scope: !128, file: !3, line: 86, type: !26)
!131 = !DILocation(line: 86, column: 35, scope: !128)
!132 = !DILocation(line: 87, column: 27, scope: !128)
!133 = !DILocation(line: 87, column: 21, scope: !128)
!134 = !DILocation(line: 87, column: 3, scope: !128)
!135 = !DILocation(line: 88, column: 3, scope: !128)
!136 = distinct !DISubprogram(name: "math_fmod", scope: !3, file: !3, line: 91, type: !24, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "L", arg: 1, scope: !136, file: !3, line: 91, type: !26)
!139 = !DILocation(line: 91, column: 34, scope: !136)
!140 = !DILocation(line: 92, column: 26, scope: !136)
!141 = !DILocation(line: 92, column: 50, scope: !136)
!142 = !DILocation(line: 92, column: 21, scope: !136)
!143 = !DILocation(line: 92, column: 3, scope: !136)
!144 = !DILocation(line: 93, column: 3, scope: !136)
!145 = distinct !DISubprogram(name: "math_frexp", scope: !3, file: !3, line: 139, type: !24, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !146)
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "L", arg: 1, scope: !145, file: !3, line: 139, type: !26)
!148 = !DILocalVariable(name: "e", scope: !145, file: !3, line: 140, type: !6)
!149 = !DILocation(line: 139, column: 35, scope: !145)
!150 = !DILocation(line: 140, column: 3, scope: !145)
!151 = !DILocation(line: 141, column: 27, scope: !145)
!152 = !DILocation(line: 140, column: 7, scope: !145)
!153 = !DILocation(line: 141, column: 21, scope: !145)
!154 = !DILocation(line: 141, column: 3, scope: !145)
!155 = !DILocation(line: 142, column: 22, scope: !145)
!156 = !{!157, !157, i64 0}
!157 = !{!"int", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C/C++ TBAA"}
!160 = !DILocation(line: 142, column: 3, scope: !145)
!161 = !DILocation(line: 144, column: 1, scope: !145)
!162 = !DILocation(line: 143, column: 3, scope: !145)
!163 = distinct !DISubprogram(name: "math_ldexp", scope: !3, file: !3, line: 146, type: !24, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !164)
!164 = !{!165}
!165 = !DILocalVariable(name: "L", arg: 1, scope: !163, file: !3, line: 146, type: !26)
!166 = !DILocation(line: 146, column: 35, scope: !163)
!167 = !DILocation(line: 147, column: 27, scope: !163)
!168 = !DILocation(line: 147, column: 51, scope: !163)
!169 = !DILocation(line: 147, column: 21, scope: !163)
!170 = !DILocation(line: 147, column: 3, scope: !163)
!171 = !DILocation(line: 148, column: 3, scope: !163)
!172 = distinct !DISubprogram(name: "math_log10", scope: !3, file: !3, line: 119, type: !24, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !173)
!173 = !{!174}
!174 = !DILocalVariable(name: "L", arg: 1, scope: !172, file: !3, line: 119, type: !26)
!175 = !DILocation(line: 119, column: 35, scope: !172)
!176 = !DILocation(line: 120, column: 27, scope: !172)
!177 = !DILocation(line: 120, column: 21, scope: !172)
!178 = !DILocation(line: 120, column: 3, scope: !172)
!179 = !DILocation(line: 121, column: 3, scope: !172)
!180 = distinct !DISubprogram(name: "math_log", scope: !3, file: !3, line: 114, type: !24, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "L", arg: 1, scope: !180, file: !3, line: 114, type: !26)
!183 = !DILocation(line: 114, column: 33, scope: !180)
!184 = !DILocation(line: 115, column: 25, scope: !180)
!185 = !DILocation(line: 115, column: 21, scope: !180)
!186 = !DILocation(line: 115, column: 3, scope: !180)
!187 = !DILocation(line: 116, column: 3, scope: !180)
!188 = distinct !DISubprogram(name: "math_max", scope: !3, file: !3, line: 167, type: !24, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DILocalVariable(name: "L", arg: 1, scope: !188, file: !3, line: 167, type: !26)
!191 = !DILocalVariable(name: "n", scope: !188, file: !3, line: 168, type: !6)
!192 = !DILocalVariable(name: "dmax", scope: !188, file: !3, line: 169, type: !7)
!193 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 170, type: !6)
!194 = !DILocalVariable(name: "d", scope: !195, file: !3, line: 172, type: !7)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 171, column: 24)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 171, column: 3)
!197 = distinct !DILexicalBlock(scope: !188, file: !3, line: 171, column: 3)
!198 = !DILocation(line: 167, column: 33, scope: !188)
!199 = !DILocation(line: 168, column: 11, scope: !188)
!200 = !DILocation(line: 168, column: 7, scope: !188)
!201 = !DILocation(line: 169, column: 21, scope: !188)
!202 = !DILocation(line: 169, column: 14, scope: !188)
!203 = !DILocation(line: 170, column: 7, scope: !188)
!204 = !DILocation(line: 171, column: 8, scope: !197)
!205 = !DILocation(line: 171, column: 14, scope: !196)
!206 = !DILocation(line: 171, column: 3, scope: !197)
!207 = !DILocation(line: 172, column: 20, scope: !195)
!208 = !DILocation(line: 172, column: 16, scope: !195)
!209 = !DILocation(line: 173, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !195, file: !3, line: 173, column: 9)
!211 = !DILocation(line: 173, column: 9, scope: !195)
!212 = !DILocation(line: 174, column: 7, scope: !210)
!213 = !DILocation(line: 0, scope: !188)
!214 = !DILocation(line: 171, column: 20, scope: !196)
!215 = !DILocation(line: 171, column: 3, scope: !196)
!216 = distinct !{!216, !206, !217}
!217 = !DILocation(line: 175, column: 3, scope: !197)
!218 = !DILocation(line: 0, scope: !210)
!219 = !DILocation(line: 176, column: 3, scope: !188)
!220 = !DILocation(line: 177, column: 3, scope: !188)
!221 = distinct !DISubprogram(name: "math_min", scope: !3, file: !3, line: 153, type: !24, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !222)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DILocalVariable(name: "L", arg: 1, scope: !221, file: !3, line: 153, type: !26)
!224 = !DILocalVariable(name: "n", scope: !221, file: !3, line: 154, type: !6)
!225 = !DILocalVariable(name: "dmin", scope: !221, file: !3, line: 155, type: !7)
!226 = !DILocalVariable(name: "i", scope: !221, file: !3, line: 156, type: !6)
!227 = !DILocalVariable(name: "d", scope: !228, file: !3, line: 158, type: !7)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 157, column: 24)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 157, column: 3)
!230 = distinct !DILexicalBlock(scope: !221, file: !3, line: 157, column: 3)
!231 = !DILocation(line: 153, column: 33, scope: !221)
!232 = !DILocation(line: 154, column: 11, scope: !221)
!233 = !DILocation(line: 154, column: 7, scope: !221)
!234 = !DILocation(line: 155, column: 21, scope: !221)
!235 = !DILocation(line: 155, column: 14, scope: !221)
!236 = !DILocation(line: 156, column: 7, scope: !221)
!237 = !DILocation(line: 157, column: 8, scope: !230)
!238 = !DILocation(line: 157, column: 14, scope: !229)
!239 = !DILocation(line: 157, column: 3, scope: !230)
!240 = !DILocation(line: 158, column: 20, scope: !228)
!241 = !DILocation(line: 158, column: 16, scope: !228)
!242 = !DILocation(line: 159, column: 11, scope: !243)
!243 = distinct !DILexicalBlock(scope: !228, file: !3, line: 159, column: 9)
!244 = !DILocation(line: 159, column: 9, scope: !228)
!245 = !DILocation(line: 160, column: 7, scope: !243)
!246 = !DILocation(line: 0, scope: !221)
!247 = !DILocation(line: 157, column: 20, scope: !229)
!248 = !DILocation(line: 157, column: 3, scope: !229)
!249 = distinct !{!249, !239, !250}
!250 = !DILocation(line: 161, column: 3, scope: !230)
!251 = !DILocation(line: 0, scope: !243)
!252 = !DILocation(line: 162, column: 3, scope: !221)
!253 = !DILocation(line: 163, column: 3, scope: !221)
!254 = distinct !DISubprogram(name: "math_modf", scope: !3, file: !3, line: 96, type: !24, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !255)
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "L", arg: 1, scope: !254, file: !3, line: 96, type: !26)
!257 = !DILocalVariable(name: "ip", scope: !254, file: !3, line: 97, type: !9)
!258 = !DILocalVariable(name: "fp", scope: !254, file: !3, line: 98, type: !9)
!259 = !DILocation(line: 96, column: 34, scope: !254)
!260 = !DILocation(line: 97, column: 3, scope: !254)
!261 = !DILocation(line: 98, column: 20, scope: !254)
!262 = !DILocation(line: 97, column: 10, scope: !254)
!263 = !DILocation(line: 98, column: 15, scope: !254)
!264 = !DILocation(line: 98, column: 10, scope: !254)
!265 = !DILocation(line: 99, column: 21, scope: !254)
!266 = !{!267, !267, i64 0}
!267 = !{!"double", !158, i64 0}
!268 = !DILocation(line: 99, column: 3, scope: !254)
!269 = !DILocation(line: 100, column: 3, scope: !254)
!270 = !DILocation(line: 102, column: 1, scope: !254)
!271 = !DILocation(line: 101, column: 3, scope: !254)
!272 = distinct !DISubprogram(name: "math_pow", scope: !3, file: !3, line: 109, type: !24, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "L", arg: 1, scope: !272, file: !3, line: 109, type: !26)
!275 = !DILocation(line: 109, column: 33, scope: !272)
!276 = !DILocation(line: 110, column: 25, scope: !272)
!277 = !DILocation(line: 110, column: 49, scope: !272)
!278 = !DILocation(line: 110, column: 21, scope: !272)
!279 = !DILocation(line: 110, column: 3, scope: !272)
!280 = !DILocation(line: 111, column: 3, scope: !272)
!281 = distinct !DISubprogram(name: "math_rad", scope: !3, file: !3, line: 134, type: !24, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "L", arg: 1, scope: !281, file: !3, line: 134, type: !26)
!284 = !DILocation(line: 134, column: 33, scope: !281)
!285 = !DILocation(line: 135, column: 21, scope: !281)
!286 = !DILocation(line: 135, column: 43, scope: !281)
!287 = !DILocation(line: 135, column: 3, scope: !281)
!288 = !DILocation(line: 136, column: 3, scope: !281)
!289 = distinct !DISubprogram(name: "math_random", scope: !3, file: !3, line: 181, type: !24, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !290)
!290 = !{!291, !292, !293, !296, !298}
!291 = !DILocalVariable(name: "L", arg: 1, scope: !289, file: !3, line: 181, type: !26)
!292 = !DILocalVariable(name: "r", scope: !289, file: !3, line: 184, type: !7)
!293 = !DILocalVariable(name: "u", scope: !294, file: !3, line: 191, type: !6)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 190, column: 13)
!295 = distinct !DILexicalBlock(scope: !289, file: !3, line: 185, column: 26)
!296 = !DILocalVariable(name: "l", scope: !297, file: !3, line: 197, type: !6)
!297 = distinct !DILexicalBlock(scope: !295, file: !3, line: 196, column: 13)
!298 = !DILocalVariable(name: "u", scope: !297, file: !3, line: 198, type: !6)
!299 = !DILocation(line: 181, column: 36, scope: !289)
!300 = !DILocation(line: 184, column: 31, scope: !289)
!301 = !DILocation(line: 184, column: 37, scope: !289)
!302 = !DILocation(line: 184, column: 18, scope: !289)
!303 = !DILocation(line: 184, column: 48, scope: !289)
!304 = !DILocation(line: 184, column: 14, scope: !289)
!305 = !DILocation(line: 185, column: 11, scope: !289)
!306 = !DILocation(line: 185, column: 3, scope: !289)
!307 = !DILocation(line: 187, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !3, line: 186, column: 13)
!309 = !DILocation(line: 188, column: 7, scope: !308)
!310 = !DILocation(line: 191, column: 15, scope: !294)
!311 = !DILocation(line: 191, column: 11, scope: !294)
!312 = !DILocation(line: 192, column: 7, scope: !294)
!313 = !DILocation(line: 193, column: 33, scope: !294)
!314 = !DILocation(line: 193, column: 32, scope: !294)
!315 = !DILocation(line: 193, column: 25, scope: !294)
!316 = !DILocation(line: 193, column: 35, scope: !294)
!317 = !DILocation(line: 193, column: 7, scope: !294)
!318 = !DILocation(line: 197, column: 15, scope: !297)
!319 = !DILocation(line: 197, column: 11, scope: !297)
!320 = !DILocation(line: 198, column: 15, scope: !297)
!321 = !DILocation(line: 198, column: 11, scope: !297)
!322 = !DILocation(line: 199, column: 7, scope: !297)
!323 = !DILocation(line: 200, column: 35, scope: !297)
!324 = !DILocation(line: 200, column: 37, scope: !297)
!325 = !DILocation(line: 200, column: 33, scope: !297)
!326 = !DILocation(line: 200, column: 32, scope: !297)
!327 = !DILocation(line: 200, column: 25, scope: !297)
!328 = !DILocation(line: 200, column: 42, scope: !297)
!329 = !DILocation(line: 200, column: 41, scope: !297)
!330 = !DILocation(line: 200, column: 7, scope: !297)
!331 = !DILocation(line: 203, column: 21, scope: !295)
!332 = !DILocation(line: 203, column: 14, scope: !295)
!333 = !DILocation(line: 205, column: 3, scope: !289)
!334 = !DILocation(line: 0, scope: !289)
!335 = !DILocation(line: 0, scope: !295)
!336 = !DILocation(line: 206, column: 1, scope: !289)
!337 = distinct !DISubprogram(name: "math_randomseed", scope: !3, file: !3, line: 209, type: !24, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !338)
!338 = !{!339}
!339 = !DILocalVariable(name: "L", arg: 1, scope: !337, file: !3, line: 209, type: !26)
!340 = !DILocation(line: 209, column: 40, scope: !337)
!341 = !DILocation(line: 210, column: 9, scope: !337)
!342 = !DILocation(line: 210, column: 3, scope: !337)
!343 = !DILocation(line: 211, column: 3, scope: !337)
!344 = distinct !DISubprogram(name: "math_sinh", scope: !3, file: !3, line: 36, type: !24, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "L", arg: 1, scope: !344, file: !3, line: 36, type: !26)
!347 = !DILocation(line: 36, column: 34, scope: !344)
!348 = !DILocation(line: 37, column: 26, scope: !344)
!349 = !DILocation(line: 37, column: 21, scope: !344)
!350 = !DILocation(line: 37, column: 3, scope: !344)
!351 = !DILocation(line: 38, column: 3, scope: !344)
!352 = distinct !DISubprogram(name: "math_sin", scope: !3, file: !3, line: 31, type: !24, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !353)
!353 = !{!354}
!354 = !DILocalVariable(name: "L", arg: 1, scope: !352, file: !3, line: 31, type: !26)
!355 = !DILocation(line: 31, column: 33, scope: !352)
!356 = !DILocation(line: 32, column: 25, scope: !352)
!357 = !DILocation(line: 32, column: 21, scope: !352)
!358 = !DILocation(line: 32, column: 3, scope: !352)
!359 = !DILocation(line: 33, column: 3, scope: !352)
!360 = distinct !DISubprogram(name: "math_sqrt", scope: !3, file: !3, line: 104, type: !24, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !361)
!361 = !{!362}
!362 = !DILocalVariable(name: "L", arg: 1, scope: !360, file: !3, line: 104, type: !26)
!363 = !DILocation(line: 104, column: 34, scope: !360)
!364 = !DILocation(line: 105, column: 26, scope: !360)
!365 = !DILocation(line: 105, column: 21, scope: !360)
!366 = !DILocation(line: 105, column: 3, scope: !360)
!367 = !DILocation(line: 106, column: 3, scope: !360)
!368 = distinct !DISubprogram(name: "math_tanh", scope: !3, file: !3, line: 56, type: !24, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !369)
!369 = !{!370}
!370 = !DILocalVariable(name: "L", arg: 1, scope: !368, file: !3, line: 56, type: !26)
!371 = !DILocation(line: 56, column: 34, scope: !368)
!372 = !DILocation(line: 57, column: 26, scope: !368)
!373 = !DILocation(line: 57, column: 21, scope: !368)
!374 = !DILocation(line: 57, column: 3, scope: !368)
!375 = !DILocation(line: 58, column: 3, scope: !368)
!376 = distinct !DISubprogram(name: "math_tan", scope: !3, file: !3, line: 51, type: !24, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !377)
!377 = !{!378}
!378 = !DILocalVariable(name: "L", arg: 1, scope: !376, file: !3, line: 51, type: !26)
!379 = !DILocation(line: 51, column: 33, scope: !376)
!380 = !DILocation(line: 52, column: 25, scope: !376)
!381 = !DILocation(line: 52, column: 21, scope: !376)
!382 = !DILocation(line: 52, column: 3, scope: !376)
!383 = !DILocation(line: 53, column: 3, scope: !376)
