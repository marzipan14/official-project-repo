; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loslib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loslib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1
@syslib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @os_clock }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @os_date }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @os_difftime }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @os_execute }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @os_exit }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @os_getenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @os_remove }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @os_rename }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @os_setlocale }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @os_time }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @os_tmpname }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"difftime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tmpname\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@os_setlocale.cat = internal unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16, !dbg !16
@os_setlocale.catnames = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !34
@.str.24 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"monetary\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"unable to generate a unique filename\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_os(%struct.lua_State*) local_unnamed_addr #0 !dbg !56 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0)) #6, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  ret i32 1, !dbg !61
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @os_clock(%struct.lua_State*) #0 !dbg !62 {
  %2 = tail call i64 @clock() #6, !dbg !66
  %3 = sitofp i64 %2 to double, !dbg !67
  %4 = fdiv double %3, 1.000000e+06, !dbg !68
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #6, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  ret i32 1, !dbg !70
}

; Function Attrs: noredzone nounwind
define internal i32 @os_date(%struct.lua_State*) #0 !dbg !71 {
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca [200 x i8], align 16
  %6 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64* null) #6, !dbg !127
  %7 = bitcast i64* %2 to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !129
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #6, !dbg !130
  %9 = icmp slt i32 %8, 1, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %9, label %10, label %12, !dbg !130

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @time(i64* null) #6, !dbg !130
  br label %15, !dbg !130

; <label>:12:                                     ; preds = %1
  %13 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #6, !dbg !130
  %14 = fptosi double %13 to i64, !dbg !130
  br label %15, !dbg !130

; <label>:15:                                     ; preds = %12, %10
  %16 = phi i64 [ %11, %10 ], [ %14, %12 ], !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  store i64 %16, i64* %2, align 8, !dbg !131, !tbaa !132
  %17 = load i8, i8* %6, align 1, !dbg !136, !tbaa !138
  %18 = icmp eq i8 %17, 33, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br i1 %18, label %19, label %22, !dbg !140

; <label>:19:                                     ; preds = %15
  %20 = call %struct.tm* @gmtime(i64* nonnull %2) #6, !dbg !141
  %21 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !144
  br label %24, !dbg !145

; <label>:22:                                     ; preds = %15
  %23 = call %struct.tm* @localtime(i64* nonnull %2) #6, !dbg !146
  br label %24

; <label>:24:                                     ; preds = %22, %19
  %25 = phi %struct.tm* [ %20, %19 ], [ %23, %22 ], !dbg !147
  %26 = phi i8* [ %21, %19 ], [ %6, %22 ], !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = icmp eq %struct.tm* %25, null, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  br i1 %27, label %28, label %29, !dbg !150

; <label>:28:                                     ; preds = %24
  call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !151
  br label %104, !dbg !151

; <label>:29:                                     ; preds = %24
  %30 = call i32 @strcmp(i8* nonnull %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !152
  %31 = icmp eq i32 %30, 0, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %31, label %32, label %66, !dbg !154

; <label>:32:                                     ; preds = %29
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #6, !dbg !155
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 0, !dbg !157
  %34 = load i32, i32* %33, align 8, !dbg !157, !tbaa !158
  %35 = sext i32 %34 to i64, !dbg !173
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %35) #6, !dbg !174
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 1, !dbg !177
  %37 = load i32, i32* %36, align 4, !dbg !177, !tbaa !178
  %38 = sext i32 %37 to i64, !dbg !183
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %38) #6, !dbg !184
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 2, !dbg !187
  %40 = load i32, i32* %39, align 8, !dbg !187, !tbaa !188
  %41 = sext i32 %40 to i64, !dbg !193
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %41) #6, !dbg !194
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 3, !dbg !197
  %43 = load i32, i32* %42, align 4, !dbg !197, !tbaa !198
  %44 = sext i32 %43 to i64, !dbg !203
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %44) #6, !dbg !204
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 4, !dbg !207
  %46 = load i32, i32* %45, align 8, !dbg !207, !tbaa !208
  %47 = add nsw i32 %46, 1, !dbg !209
  %48 = sext i32 %47 to i64, !dbg !214
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #6, !dbg !215
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 5, !dbg !218
  %50 = load i32, i32* %49, align 4, !dbg !218, !tbaa !219
  %51 = add nsw i32 %50, 1900, !dbg !220
  %52 = sext i32 %51 to i64, !dbg !225
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %52) #6, !dbg !226
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 6, !dbg !229
  %54 = load i32, i32* %53, align 8, !dbg !229, !tbaa !230
  %55 = add nsw i32 %54, 1, !dbg !231
  %56 = sext i32 %55 to i64, !dbg !236
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %56) #6, !dbg !237
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 7, !dbg !240
  %58 = load i32, i32* %57, align 4, !dbg !240, !tbaa !241
  %59 = add nsw i32 %58, 1, !dbg !242
  %60 = sext i32 %59 to i64, !dbg !247
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %60) #6, !dbg !248
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 8, !dbg !251
  %62 = load i32, i32* %61, align 8, !dbg !251, !tbaa !252
  %63 = icmp slt i32 %62, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %63, label %65, label %64, !dbg !263

; <label>:64:                                     ; preds = %32
  call void @lua_pushboolean(%struct.lua_State* %0, i32 %62) #6, !dbg !264
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br label %65, !dbg !266

; <label>:65:                                     ; preds = %32, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br label %104, !dbg !267

; <label>:66:                                     ; preds = %29
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !268
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %67) #7, !dbg !268
  %68 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %68) #7, !dbg !270
  store i8 37, i8* %67, align 1, !dbg !271, !tbaa !138
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2, !dbg !272
  store i8 0, i8* %69, align 1, !dbg !273, !tbaa !138
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #6, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  %70 = load i8, i8* %26, align 1, !dbg !277, !tbaa !138
  %71 = icmp eq i8 %70, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %71, label %103, label %72, !dbg !278

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %74 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 1024
  %75 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  br label %77, !dbg !278

; <label>:77:                                     ; preds = %72, %98
  %78 = phi i8 [ %70, %72 ], [ %101, %98 ]
  %79 = phi i8* [ %26, %72 ], [ %100, %98 ]
  %80 = icmp eq i8 %78, 37, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %80, label %81, label %85, !dbg !280

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !281
  %83 = load i8, i8* %82, align 1, !dbg !282, !tbaa !138
  %84 = icmp eq i8 %83, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %84, label %85, label %96, !dbg !284

; <label>:85:                                     ; preds = %77, %81
  %86 = load i8*, i8** %73, align 8, !dbg !285, !tbaa !286
  %87 = icmp ult i8* %86, %74, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br i1 %87, label %92, label %88, !dbg !285

; <label>:88:                                     ; preds = %85
  %89 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #6, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  %90 = load i8, i8* %79, align 1, !dbg !285, !tbaa !138
  %91 = load i8*, i8** %73, align 8, !dbg !285, !tbaa !286
  br label %92, !dbg !285

; <label>:92:                                     ; preds = %88, %85
  %93 = phi i8* [ %91, %88 ], [ %86, %85 ], !dbg !285
  %94 = phi i8 [ %90, %88 ], [ %78, %85 ], !dbg !285
  %95 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !285
  store i8* %95, i8** %73, align 8, !dbg !285, !tbaa !286
  store i8 %94, i8* %93, align 1, !dbg !285, !tbaa !138
  br label %98, !dbg !285

; <label>:96:                                     ; preds = %81
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %75) #7, !dbg !288
  store i8 %83, i8* %76, align 1, !dbg !290, !tbaa !138
  %97 = call i64 @strftime(i8* nonnull %75, i64 200, i8* nonnull %67, %struct.tm* nonnull %25) #6, !dbg !291
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* nonnull %75, i64 %97) #6, !dbg !293
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %75) #7, !dbg !294
  br label %98

; <label>:98:                                     ; preds = %92, %96
  %99 = phi i8* [ %79, %92 ], [ %82, %96 ], !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %100 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  %101 = load i8, i8* %100, align 1, !dbg !277, !tbaa !138
  %102 = icmp eq i8 %101, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %102, label %103, label %77, !dbg !278, !llvm.loop !298

; <label>:103:                                    ; preds = %98, %66
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #6, !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %68) #7, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %67) #7, !dbg !301
  br label %104

; <label>:104:                                    ; preds = %65, %103, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 1, !dbg !303
}

; Function Attrs: noredzone nounwind
define internal i32 @os_difftime(%struct.lua_State*) #0 !dbg !304 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #6, !dbg !308
  %3 = fptosi double %2 to i64, !dbg !309
  %4 = tail call double @luaL_optnumber(%struct.lua_State* %0, i32 2, double 0.000000e+00) #6, !dbg !310
  %5 = fptosi double %4 to i64, !dbg !311
  %6 = tail call double @difftime(i64 %3, i64 %5) #6, !dbg !312
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %6) #6, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret i32 1, !dbg !314
}

; Function Attrs: noredzone nounwind
define internal i32 @os_execute(%struct.lua_State*) #0 !dbg !315 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6, !dbg !319
  %3 = tail call i32 @system(i8* %2) #6, !dbg !320
  %4 = sext i32 %3 to i64, !dbg !320
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #6, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  ret i32 1, !dbg !322
}

; Function Attrs: noredzone noreturn nounwind
define internal i32 @os_exit(%struct.lua_State*) #3 !dbg !323 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 0) #6, !dbg !327
  %3 = trunc i64 %2 to i32, !dbg !327
  tail call void @exit(i32 %3) #8, !dbg !328
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @os_getenv(%struct.lua_State*) #0 !dbg !329 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !333
  %3 = tail call i8* @getenv(i8* %2) #6, !dbg !334
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #6, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  ret i32 1, !dbg !336
}

; Function Attrs: noredzone nounwind
define internal i32 @os_remove(%struct.lua_State*) #0 !dbg !337 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !342
  %3 = tail call i32 @remove(i8* %2) #6, !dbg !344
  %4 = icmp eq i32 %3, 0, !dbg !345
  %5 = tail call i32* @__errno() #6, !dbg !357
  %6 = load i32, i32* %5, align 4, !dbg !357, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %4, label %7, label %8, !dbg !360

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !361
  br label %12, !dbg !364

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !365
  %9 = tail call i8* @strerror(i32 %6) #6, !dbg !367
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %2, i8* %9) #6, !dbg !368
  %11 = sext i32 %6 to i64, !dbg !369
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #6, !dbg !370
  br label %12, !dbg !371

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i32 [ 1, %7 ], [ 3, %8 ], !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  ret i32 %13, !dbg !375
}

; Function Attrs: noredzone nounwind
define internal i32 @os_rename(%struct.lua_State*) #0 !dbg !376 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !382
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6, !dbg !384
  %4 = tail call i32 @rename(i8* %2, i8* %3) #6, !dbg !386
  %5 = icmp eq i32 %4, 0, !dbg !387
  %6 = tail call i32* @__errno() #6, !dbg !391
  %7 = load i32, i32* %6, align 4, !dbg !391, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %5, label %8, label %9, !dbg !393

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !394
  br label %13, !dbg !395

; <label>:9:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !396
  %10 = tail call i8* @strerror(i32 %7) #6, !dbg !397
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %2, i8* %10) #6, !dbg !398
  %12 = sext i32 %7 to i64, !dbg !399
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #6, !dbg !400
  br label %13, !dbg !401

; <label>:13:                                     ; preds = %8, %9
  %14 = phi i32 [ 1, %8 ], [ 3, %9 ], !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  ret i32 %14, !dbg !405
}

; Function Attrs: noredzone nounwind
define internal i32 @os_setlocale(%struct.lua_State*) #0 !dbg !18 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6, !dbg !407
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i64 0, i64 0)) #6, !dbg !409
  %4 = sext i32 %3 to i64, !dbg !411
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %4, !dbg !411
  %6 = load i32, i32* %5, align 4, !dbg !411, !tbaa !358
  %7 = tail call i8* @setlocale(i32 %6, i8* %2) #6, !dbg !412
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %7) #6, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  ret i32 1, !dbg !414
}

; Function Attrs: noredzone nounwind
define internal i32 @os_time(%struct.lua_State*) #0 !dbg !415 {
  %2 = alloca %struct.tm, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6, !dbg !423
  %4 = icmp slt i32 %3, 1, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %4, label %5, label %7, !dbg !424

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #6, !dbg !425
  br label %76, !dbg !427

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.tm* %2 to i8*, !dbg !428
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #7, !dbg !428
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6, !dbg !429
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6, !dbg !430
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !443
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !444
  %10 = icmp eq i32 %9, 0, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %10, label %14, label %11, !dbg !446

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !447
  %13 = trunc i64 %12 to i32, !dbg !448
  br label %15, !dbg !450

; <label>:14:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %15

; <label>:15:                                     ; preds = %11, %14
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ], !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0, !dbg !457
  store i32 %16, i32* %17, align 8, !dbg !458, !tbaa !158
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !463
  %18 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !464
  %19 = icmp eq i32 %18, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %19, label %23, label %20, !dbg !465

; <label>:20:                                     ; preds = %15
  %21 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !466
  %22 = trunc i64 %21 to i32, !dbg !467
  br label %24, !dbg !469

; <label>:23:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br label %24

; <label>:24:                                     ; preds = %20, %23
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ], !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1, !dbg !475
  store i32 %25, i32* %26, align 4, !dbg !476, !tbaa !178
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !481
  %27 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !482
  %28 = icmp eq i32 %27, 0, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %28, label %32, label %29, !dbg !483

; <label>:29:                                     ; preds = %24
  %30 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !484
  %31 = trunc i64 %30 to i32, !dbg !485
  br label %33, !dbg !487

; <label>:32:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br label %33

; <label>:33:                                     ; preds = %29, %32
  %34 = phi i32 [ %31, %29 ], [ 12, %32 ], !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2, !dbg !493
  store i32 %34, i32* %35, align 8, !dbg !494, !tbaa !188
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !499
  %36 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !500
  %37 = icmp eq i32 %36, 0, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %37, label %41, label %38, !dbg !501

; <label>:38:                                     ; preds = %33
  %39 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !502
  %40 = trunc i64 %39 to i32, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !506
  br label %43, !dbg !507

; <label>:41:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %42 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !509
  br label %43, !dbg !511

; <label>:43:                                     ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ %42, %41 ], !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3, !dbg !515
  store i32 %44, i32* %45, align 4, !dbg !516, !tbaa !198
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !521
  %46 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !522
  %47 = icmp eq i32 %46, 0, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %47, label %51, label %48, !dbg !523

; <label>:48:                                     ; preds = %43
  %49 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !524
  %50 = trunc i64 %49 to i32, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !528
  br label %53, !dbg !529

; <label>:51:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %52 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !531
  br label %53, !dbg !532

; <label>:53:                                     ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ], !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  %55 = add nsw i32 %54, -1, !dbg !535
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4, !dbg !536
  store i32 %55, i32* %56, align 8, !dbg !537, !tbaa !208
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !542
  %57 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !543
  %58 = icmp eq i32 %57, 0, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %58, label %62, label %59, !dbg !544

; <label>:59:                                     ; preds = %53
  %60 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !545
  %61 = trunc i64 %60 to i32, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !549
  br label %64, !dbg !550

; <label>:62:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  %63 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !552
  br label %64, !dbg !553

; <label>:64:                                     ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ], !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  %66 = add nsw i32 %65, -1900, !dbg !556
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5, !dbg !557
  store i32 %66, i32* %67, align 4, !dbg !558, !tbaa !219
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !568
  %68 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !569
  %69 = icmp eq i32 %68, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %69, label %72, label %70, !dbg !569

; <label>:70:                                     ; preds = %64
  %71 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %72, !dbg !569

; <label>:72:                                     ; preds = %64, %70
  %73 = phi i32 [ %71, %70 ], [ -1, %64 ], !dbg !569
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8, !dbg !574
  store i32 %73, i32* %74, align 8, !dbg !575, !tbaa !252
  %75 = call i64 @mktime(%struct.tm* nonnull %2) #6, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #7, !dbg !578
  br label %76

; <label>:76:                                     ; preds = %72, %5
  %77 = phi i64 [ %6, %5 ], [ %75, %72 ], !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = icmp eq i64 %77, -1, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br i1 %78, label %79, label %80, !dbg !581

; <label>:79:                                     ; preds = %76
  call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !582
  br label %82, !dbg !582

; <label>:80:                                     ; preds = %76
  %81 = sitofp i64 %77 to double, !dbg !583
  call void @lua_pushnumber(%struct.lua_State* %0, double %81) #6, !dbg !584
  br label %82

; <label>:82:                                     ; preds = %80, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i32 1, !dbg !585
}

; Function Attrs: noredzone nounwind
define internal i32 @os_tmpname(%struct.lua_State*) #0 !dbg !586 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !592
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !592
  %4 = call i8* @tmpnam(i8* nonnull %3) #6, !dbg !594
  %5 = icmp eq i8* %4, null, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br i1 %5, label %6, label %8, !dbg !596

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !597
  br label %9, !dbg !599

; <label>:8:                                      ; preds = %1
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %3) #6, !dbg !600
  br label %9, !dbg !601

; <label>:9:                                      ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 1, %8 ], !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret i32 %10, !dbg !604
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @clock() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.tm* @gmtime(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @difftime(i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @system(i8*) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @remove(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @rename(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @mktime(%struct.tm*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @tmpnam(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "syslib", scope: !2, file: !3, line: 220, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loslib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !12, !13, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !10, line: 34, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!0, !16, !34}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "cat", scope: !18, file: !3, line: 205, type: !30, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "os_setlocale", scope: !3, file: !3, line: 204, type: !19, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!14, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !7, line: 50, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !7, line: 50, flags: DIFlagFwdDecl)
!24 = !{!25, !26, !29}
!25 = !DILocalVariable(name: "L", arg: 1, scope: !18, file: !3, line: 204, type: !21)
!26 = !DILocalVariable(name: "l", scope: !18, file: !3, line: 209, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!29 = !DILocalVariable(name: "op", scope: !18, file: !3, line: 210, type: !14)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "catnames", scope: !18, file: !3, line: 207, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 448, elements: !38)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!38 = !{!39}
!39 = !DISubrange(count: 7)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1536, elements: !50)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !43, line: 38, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !43, line: 35, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !43, line: 36, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !44, file: !43, line: 37, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !7, line: 52, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!50 = !{!51}
!51 = !DISubrange(count: 12)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!56 = distinct !DISubprogram(name: "luaopen_os", scope: !3, file: !3, line: 239, type: !19, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !57)
!57 = !{!58}
!58 = !DILocalVariable(name: "L", arg: 1, scope: !56, file: !3, line: 239, type: !21)
!59 = !DILocation(line: 239, column: 39, scope: !56)
!60 = !DILocation(line: 240, column: 3, scope: !56)
!61 = !DILocation(line: 241, column: 3, scope: !56)
!62 = distinct !DISubprogram(name: "os_clock", scope: !3, file: !3, line: 74, type: !19, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !63)
!63 = !{!64}
!64 = !DILocalVariable(name: "L", arg: 1, scope: !62, file: !3, line: 74, type: !21)
!65 = !DILocation(line: 74, column: 33, scope: !62)
!66 = !DILocation(line: 75, column: 34, scope: !62)
!67 = !DILocation(line: 75, column: 22, scope: !62)
!68 = !DILocation(line: 75, column: 42, scope: !62)
!69 = !DILocation(line: 75, column: 3, scope: !62)
!70 = !DILocation(line: 76, column: 3, scope: !62)
!71 = distinct !DISubprogram(name: "os_date", scope: !3, file: !3, line: 124, type: !19, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!72 = !{!73, !74, !75, !76, !92, !99, !111, !122}
!73 = !DILocalVariable(name: "L", arg: 1, scope: !71, file: !3, line: 124, type: !21)
!74 = !DILocalVariable(name: "s", scope: !71, file: !3, line: 125, type: !27)
!75 = !DILocalVariable(name: "t", scope: !71, file: !3, line: 126, type: !9)
!76 = !DILocalVariable(name: "stm", scope: !71, file: !3, line: 127, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !79, line: 31, size: 448, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !78, file: !79, line: 32, baseType: !14, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !78, file: !79, line: 33, baseType: !14, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !78, file: !79, line: 34, baseType: !14, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !78, file: !79, line: 35, baseType: !14, size: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !78, file: !79, line: 36, baseType: !14, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !78, file: !79, line: 37, baseType: !14, size: 32, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !78, file: !79, line: 38, baseType: !14, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !78, file: !79, line: 39, baseType: !14, size: 32, offset: 224)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !78, file: !79, line: 40, baseType: !14, size: 32, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !78, file: !79, line: 41, baseType: !11, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !78, file: !79, line: 42, baseType: !27, size: 64, offset: 384)
!92 = !DILocalVariable(name: "cc", scope: !93, file: !3, line: 149, type: !96)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 148, column: 8)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 136, column: 12)
!95 = distinct !DILexicalBlock(scope: !71, file: !3, line: 134, column: 7)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 3)
!99 = !DILocalVariable(name: "b", scope: !93, file: !3, line: 150, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !43, line: 134, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !43, line: 129, size: 8384, elements: !102)
!102 = !{!103, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !101, file: !43, line: 130, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !101, file: !43, line: 131, baseType: !14, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !101, file: !43, line: 132, baseType: !21, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !101, file: !43, line: 133, baseType: !108, size: 8192, offset: 192)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1024)
!111 = !DILocalVariable(name: "reslen", scope: !112, file: !3, line: 157, type: !117)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 156, column: 12)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 154, column: 11)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 153, column: 21)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 153, column: 5)
!116 = distinct !DILexicalBlock(scope: !93, file: !3, line: 153, column: 5)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 40, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !120, line: 129, baseType: !121)
!120 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocalVariable(name: "buff", scope: !112, file: !3, line: 158, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1600, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 200)
!126 = !DILocation(line: 124, column: 32, scope: !71)
!127 = !DILocation(line: 125, column: 19, scope: !71)
!128 = !DILocation(line: 125, column: 15, scope: !71)
!129 = !DILocation(line: 126, column: 3, scope: !71)
!130 = !DILocation(line: 126, column: 14, scope: !71)
!131 = !DILocation(line: 126, column: 10, scope: !71)
!132 = !{!133, !133, i64 0}
!133 = !{!"long", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 128, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !71, file: !3, line: 128, column: 7)
!138 = !{!134, !134, i64 0}
!139 = !DILocation(line: 128, column: 10, scope: !137)
!140 = !DILocation(line: 128, column: 7, scope: !71)
!141 = !DILocation(line: 129, column: 11, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 128, column: 18)
!143 = !DILocation(line: 127, column: 14, scope: !71)
!144 = !DILocation(line: 130, column: 6, scope: !142)
!145 = !DILocation(line: 131, column: 3, scope: !142)
!146 = !DILocation(line: 133, column: 11, scope: !137)
!147 = !DILocation(line: 0, scope: !137)
!148 = !DILocation(line: 0, scope: !71)
!149 = !DILocation(line: 134, column: 11, scope: !95)
!150 = !DILocation(line: 134, column: 7, scope: !71)
!151 = !DILocation(line: 135, column: 5, scope: !95)
!152 = !DILocation(line: 136, column: 12, scope: !94)
!153 = !DILocation(line: 136, column: 28, scope: !94)
!154 = !DILocation(line: 136, column: 12, scope: !95)
!155 = !DILocation(line: 137, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !94, file: !3, line: 136, column: 34)
!157 = !DILocation(line: 138, column: 29, scope: !156)
!158 = !{!159, !160, i64 0}
!159 = !{!"tm", !160, i64 0, !160, i64 4, !160, i64 8, !160, i64 12, !160, i64 16, !160, i64 20, !160, i64 24, !160, i64 28, !160, i64 32, !133, i64 40, !161, i64 48}
!160 = !{!"int", !134, i64 0}
!161 = !{!"any pointer", !134, i64 0}
!162 = !DILocalVariable(name: "L", arg: 1, scope: !163, file: !3, line: 88, type: !21)
!163 = distinct !DISubprogram(name: "setfield", scope: !3, file: !3, line: 88, type: !164, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !21, !27, !14}
!166 = !{!162, !167, !168}
!167 = !DILocalVariable(name: "key", arg: 2, scope: !163, file: !3, line: 88, type: !27)
!168 = !DILocalVariable(name: "value", arg: 3, scope: !163, file: !3, line: 88, type: !14)
!169 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !170)
!170 = distinct !DILocation(line: 138, column: 5, scope: !156)
!171 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !170)
!172 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !170)
!173 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !170)
!174 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !170)
!175 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !170)
!176 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !170)
!177 = !DILocation(line: 139, column: 29, scope: !156)
!178 = !{!159, !160, i64 4}
!179 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !180)
!180 = distinct !DILocation(line: 139, column: 5, scope: !156)
!181 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !180)
!182 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !180)
!183 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !180)
!184 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !180)
!185 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !180)
!186 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !180)
!187 = !DILocation(line: 140, column: 30, scope: !156)
!188 = !{!159, !160, i64 8}
!189 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !190)
!190 = distinct !DILocation(line: 140, column: 5, scope: !156)
!191 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !190)
!192 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !190)
!193 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !190)
!194 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !190)
!195 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !190)
!196 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !190)
!197 = !DILocation(line: 141, column: 29, scope: !156)
!198 = !{!159, !160, i64 12}
!199 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !200)
!200 = distinct !DILocation(line: 141, column: 5, scope: !156)
!201 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !200)
!202 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !200)
!203 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !200)
!204 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !200)
!205 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !200)
!206 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !200)
!207 = !DILocation(line: 142, column: 31, scope: !156)
!208 = !{!159, !160, i64 16}
!209 = !DILocation(line: 142, column: 37, scope: !156)
!210 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !211)
!211 = distinct !DILocation(line: 142, column: 5, scope: !156)
!212 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !211)
!213 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !211)
!214 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !211)
!215 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !211)
!216 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !211)
!217 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !211)
!218 = !DILocation(line: 143, column: 30, scope: !156)
!219 = !{!159, !160, i64 20}
!220 = !DILocation(line: 143, column: 37, scope: !156)
!221 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !222)
!222 = distinct !DILocation(line: 143, column: 5, scope: !156)
!223 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !222)
!224 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !222)
!225 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !222)
!226 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !222)
!227 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !222)
!228 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !222)
!229 = !DILocation(line: 144, column: 30, scope: !156)
!230 = !{!159, !160, i64 24}
!231 = !DILocation(line: 144, column: 37, scope: !156)
!232 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !233)
!233 = distinct !DILocation(line: 144, column: 5, scope: !156)
!234 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !233)
!235 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !233)
!236 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !233)
!237 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !233)
!238 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !233)
!239 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !233)
!240 = !DILocation(line: 145, column: 30, scope: !156)
!241 = !{!159, !160, i64 28}
!242 = !DILocation(line: 145, column: 37, scope: !156)
!243 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !244)
!244 = distinct !DILocation(line: 145, column: 5, scope: !156)
!245 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !244)
!246 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !244)
!247 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !244)
!248 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !244)
!249 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !244)
!250 = !DILocation(line: 91, column: 1, scope: !163, inlinedAt: !244)
!251 = !DILocation(line: 146, column: 35, scope: !156)
!252 = !{!159, !160, i64 32}
!253 = !DILocalVariable(name: "L", arg: 1, scope: !254, file: !3, line: 93, type: !21)
!254 = distinct !DISubprogram(name: "setboolfield", scope: !3, file: !3, line: 93, type: !164, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !255)
!255 = !{!253, !256, !257}
!256 = !DILocalVariable(name: "key", arg: 2, scope: !254, file: !3, line: 93, type: !27)
!257 = !DILocalVariable(name: "value", arg: 3, scope: !254, file: !3, line: 93, type: !14)
!258 = !DILocation(line: 93, column: 38, scope: !254, inlinedAt: !259)
!259 = distinct !DILocation(line: 146, column: 5, scope: !156)
!260 = !DILocation(line: 93, column: 62, scope: !254, inlinedAt: !259)
!261 = !DILocation(line: 94, column: 13, scope: !262, inlinedAt: !259)
!262 = distinct !DILexicalBlock(scope: !254, file: !3, line: 94, column: 7)
!263 = !DILocation(line: 94, column: 7, scope: !254, inlinedAt: !259)
!264 = !DILocation(line: 96, column: 3, scope: !254, inlinedAt: !259)
!265 = !DILocation(line: 97, column: 3, scope: !254, inlinedAt: !259)
!266 = !DILocation(line: 98, column: 1, scope: !254, inlinedAt: !259)
!267 = !DILocation(line: 147, column: 3, scope: !156)
!268 = !DILocation(line: 149, column: 5, scope: !93)
!269 = !DILocation(line: 149, column: 10, scope: !93)
!270 = !DILocation(line: 150, column: 5, scope: !93)
!271 = !DILocation(line: 151, column: 11, scope: !93)
!272 = !DILocation(line: 151, column: 18, scope: !93)
!273 = !DILocation(line: 151, column: 24, scope: !93)
!274 = !DILocation(line: 150, column: 17, scope: !93)
!275 = !DILocation(line: 152, column: 5, scope: !93)
!276 = !DILocation(line: 153, column: 5, scope: !93)
!277 = !DILocation(line: 153, column: 12, scope: !115)
!278 = !DILocation(line: 153, column: 5, scope: !116)
!279 = !DILocation(line: 154, column: 14, scope: !113)
!280 = !DILocation(line: 154, column: 21, scope: !113)
!281 = !DILocation(line: 154, column: 28, scope: !113)
!282 = !DILocation(line: 154, column: 24, scope: !113)
!283 = !DILocation(line: 154, column: 33, scope: !113)
!284 = !DILocation(line: 154, column: 11, scope: !114)
!285 = !DILocation(line: 155, column: 9, scope: !113)
!286 = !{!287, !161, i64 0}
!287 = !{!"luaL_Buffer", !161, i64 0, !160, i64 8, !161, i64 16, !134, i64 24}
!288 = !DILocation(line: 158, column: 9, scope: !112)
!289 = !DILocation(line: 158, column: 14, scope: !112)
!290 = !DILocation(line: 159, column: 15, scope: !112)
!291 = !DILocation(line: 160, column: 18, scope: !112)
!292 = !DILocation(line: 157, column: 16, scope: !112)
!293 = !DILocation(line: 161, column: 9, scope: !112)
!294 = !DILocation(line: 162, column: 7, scope: !113)
!295 = !DILocation(line: 0, scope: !112)
!296 = !DILocation(line: 153, column: 17, scope: !115)
!297 = !DILocation(line: 153, column: 5, scope: !115)
!298 = distinct !{!298, !278, !299}
!299 = !DILocation(line: 163, column: 5, scope: !116)
!300 = !DILocation(line: 164, column: 5, scope: !93)
!301 = !DILocation(line: 165, column: 3, scope: !94)
!302 = !DILocation(line: 167, column: 1, scope: !71)
!303 = !DILocation(line: 166, column: 3, scope: !71)
!304 = distinct !DISubprogram(name: "os_difftime", scope: !3, file: !3, line: 195, type: !19, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !305)
!305 = !{!306}
!306 = !DILocalVariable(name: "L", arg: 1, scope: !304, file: !3, line: 195, type: !21)
!307 = !DILocation(line: 195, column: 36, scope: !304)
!308 = !DILocation(line: 196, column: 39, scope: !304)
!309 = !DILocation(line: 196, column: 30, scope: !304)
!310 = !DILocation(line: 197, column: 39, scope: !304)
!311 = !DILocation(line: 197, column: 30, scope: !304)
!312 = !DILocation(line: 196, column: 21, scope: !304)
!313 = !DILocation(line: 196, column: 3, scope: !304)
!314 = !DILocation(line: 198, column: 3, scope: !304)
!315 = distinct !DISubprogram(name: "os_execute", scope: !3, file: !3, line: 38, type: !19, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !316)
!316 = !{!317}
!317 = !DILocalVariable(name: "L", arg: 1, scope: !315, file: !3, line: 38, type: !21)
!318 = !DILocation(line: 38, column: 35, scope: !315)
!319 = !DILocation(line: 39, column: 29, scope: !315)
!320 = !DILocation(line: 39, column: 22, scope: !315)
!321 = !DILocation(line: 39, column: 3, scope: !315)
!322 = !DILocation(line: 40, column: 3, scope: !315)
!323 = distinct !DISubprogram(name: "os_exit", scope: !3, file: !3, line: 216, type: !19, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !324)
!324 = !{!325}
!325 = !DILocalVariable(name: "L", arg: 1, scope: !323, file: !3, line: 216, type: !21)
!326 = !DILocation(line: 216, column: 32, scope: !323)
!327 = !DILocation(line: 217, column: 8, scope: !323)
!328 = !DILocation(line: 217, column: 3, scope: !323)
!329 = distinct !DISubprogram(name: "os_getenv", scope: !3, file: !3, line: 68, type: !19, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !330)
!330 = !{!331}
!331 = !DILocalVariable(name: "L", arg: 1, scope: !329, file: !3, line: 68, type: !21)
!332 = !DILocation(line: 68, column: 34, scope: !329)
!333 = !DILocation(line: 69, column: 28, scope: !329)
!334 = !DILocation(line: 69, column: 21, scope: !329)
!335 = !DILocation(line: 69, column: 3, scope: !329)
!336 = !DILocation(line: 70, column: 3, scope: !329)
!337 = distinct !DISubprogram(name: "os_remove", scope: !3, file: !3, line: 44, type: !19, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !338)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "L", arg: 1, scope: !337, file: !3, line: 44, type: !21)
!340 = !DILocalVariable(name: "filename", scope: !337, file: !3, line: 45, type: !27)
!341 = !DILocation(line: 44, column: 34, scope: !337)
!342 = !DILocation(line: 45, column: 26, scope: !337)
!343 = !DILocation(line: 45, column: 15, scope: !337)
!344 = !DILocation(line: 46, column: 27, scope: !337)
!345 = !DILocation(line: 46, column: 44, scope: !337)
!346 = !DILocalVariable(name: "L", arg: 1, scope: !347, file: !3, line: 23, type: !21)
!347 = distinct !DISubprogram(name: "os_pushresult", scope: !3, file: !3, line: 23, type: !348, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!14, !21, !14, !27}
!350 = !{!346, !351, !352, !353}
!351 = !DILocalVariable(name: "i", arg: 2, scope: !347, file: !3, line: 23, type: !14)
!352 = !DILocalVariable(name: "filename", arg: 3, scope: !347, file: !3, line: 23, type: !27)
!353 = !DILocalVariable(name: "en", scope: !347, file: !3, line: 24, type: !14)
!354 = !DILocation(line: 23, column: 38, scope: !347, inlinedAt: !355)
!355 = distinct !DILocation(line: 46, column: 10, scope: !337)
!356 = !DILocation(line: 23, column: 60, scope: !347, inlinedAt: !355)
!357 = !DILocation(line: 24, column: 12, scope: !347, inlinedAt: !355)
!358 = !{!160, !160, i64 0}
!359 = !DILocation(line: 24, column: 7, scope: !347, inlinedAt: !355)
!360 = !DILocation(line: 25, column: 7, scope: !347, inlinedAt: !355)
!361 = !DILocation(line: 26, column: 5, scope: !362, inlinedAt: !355)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 25, column: 10)
!363 = distinct !DILexicalBlock(scope: !347, file: !3, line: 25, column: 7)
!364 = !DILocation(line: 27, column: 5, scope: !362, inlinedAt: !355)
!365 = !DILocation(line: 30, column: 5, scope: !366, inlinedAt: !355)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 29, column: 8)
!367 = !DILocation(line: 31, column: 44, scope: !366, inlinedAt: !355)
!368 = !DILocation(line: 31, column: 5, scope: !366, inlinedAt: !355)
!369 = !DILocation(line: 32, column: 24, scope: !366, inlinedAt: !355)
!370 = !DILocation(line: 32, column: 5, scope: !366, inlinedAt: !355)
!371 = !DILocation(line: 33, column: 5, scope: !366, inlinedAt: !355)
!372 = !DILocation(line: 0, scope: !366, inlinedAt: !355)
!373 = !DILocation(line: 0, scope: !337)
!374 = !DILocation(line: 35, column: 1, scope: !347, inlinedAt: !355)
!375 = !DILocation(line: 46, column: 3, scope: !337)
!376 = distinct !DISubprogram(name: "os_rename", scope: !3, file: !3, line: 50, type: !19, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !377)
!377 = !{!378, !379, !380}
!378 = !DILocalVariable(name: "L", arg: 1, scope: !376, file: !3, line: 50, type: !21)
!379 = !DILocalVariable(name: "fromname", scope: !376, file: !3, line: 51, type: !27)
!380 = !DILocalVariable(name: "toname", scope: !376, file: !3, line: 52, type: !27)
!381 = !DILocation(line: 50, column: 34, scope: !376)
!382 = !DILocation(line: 51, column: 26, scope: !376)
!383 = !DILocation(line: 51, column: 15, scope: !376)
!384 = !DILocation(line: 52, column: 24, scope: !376)
!385 = !DILocation(line: 52, column: 15, scope: !376)
!386 = !DILocation(line: 53, column: 27, scope: !376)
!387 = !DILocation(line: 53, column: 52, scope: !376)
!388 = !DILocation(line: 23, column: 38, scope: !347, inlinedAt: !389)
!389 = distinct !DILocation(line: 53, column: 10, scope: !376)
!390 = !DILocation(line: 23, column: 60, scope: !347, inlinedAt: !389)
!391 = !DILocation(line: 24, column: 12, scope: !347, inlinedAt: !389)
!392 = !DILocation(line: 24, column: 7, scope: !347, inlinedAt: !389)
!393 = !DILocation(line: 25, column: 7, scope: !347, inlinedAt: !389)
!394 = !DILocation(line: 26, column: 5, scope: !362, inlinedAt: !389)
!395 = !DILocation(line: 27, column: 5, scope: !362, inlinedAt: !389)
!396 = !DILocation(line: 30, column: 5, scope: !366, inlinedAt: !389)
!397 = !DILocation(line: 31, column: 44, scope: !366, inlinedAt: !389)
!398 = !DILocation(line: 31, column: 5, scope: !366, inlinedAt: !389)
!399 = !DILocation(line: 32, column: 24, scope: !366, inlinedAt: !389)
!400 = !DILocation(line: 32, column: 5, scope: !366, inlinedAt: !389)
!401 = !DILocation(line: 33, column: 5, scope: !366, inlinedAt: !389)
!402 = !DILocation(line: 0, scope: !366, inlinedAt: !389)
!403 = !DILocation(line: 0, scope: !376)
!404 = !DILocation(line: 35, column: 1, scope: !347, inlinedAt: !389)
!405 = !DILocation(line: 53, column: 3, scope: !376)
!406 = !DILocation(line: 204, column: 37, scope: !18)
!407 = !DILocation(line: 209, column: 19, scope: !18)
!408 = !DILocation(line: 209, column: 15, scope: !18)
!409 = !DILocation(line: 210, column: 12, scope: !18)
!410 = !DILocation(line: 210, column: 7, scope: !18)
!411 = !DILocation(line: 211, column: 31, scope: !18)
!412 = !DILocation(line: 211, column: 21, scope: !18)
!413 = !DILocation(line: 211, column: 3, scope: !18)
!414 = !DILocation(line: 212, column: 3, scope: !18)
!415 = distinct !DISubprogram(name: "os_time", scope: !3, file: !3, line: 170, type: !19, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !416)
!416 = !{!417, !418, !419}
!417 = !DILocalVariable(name: "L", arg: 1, scope: !415, file: !3, line: 170, type: !21)
!418 = !DILocalVariable(name: "t", scope: !415, file: !3, line: 171, type: !9)
!419 = !DILocalVariable(name: "ts", scope: !420, file: !3, line: 175, type: !78)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 174, column: 8)
!421 = distinct !DILexicalBlock(scope: !415, file: !3, line: 172, column: 7)
!422 = !DILocation(line: 170, column: 32, scope: !415)
!423 = !DILocation(line: 172, column: 7, scope: !421)
!424 = !DILocation(line: 172, column: 7, scope: !415)
!425 = !DILocation(line: 173, column: 9, scope: !421)
!426 = !DILocation(line: 171, column: 10, scope: !415)
!427 = !DILocation(line: 173, column: 5, scope: !421)
!428 = !DILocation(line: 175, column: 5, scope: !420)
!429 = !DILocation(line: 176, column: 5, scope: !420)
!430 = !DILocation(line: 177, column: 5, scope: !420)
!431 = !DILocalVariable(name: "L", arg: 1, scope: !432, file: !3, line: 109, type: !21)
!432 = distinct !DISubprogram(name: "getfield", scope: !3, file: !3, line: 109, type: !433, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!14, !21, !27, !14}
!435 = !{!431, !436, !437, !438}
!436 = !DILocalVariable(name: "key", arg: 2, scope: !432, file: !3, line: 109, type: !27)
!437 = !DILocalVariable(name: "d", arg: 3, scope: !432, file: !3, line: 109, type: !14)
!438 = !DILocalVariable(name: "res", scope: !432, file: !3, line: 110, type: !14)
!439 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !440)
!440 = distinct !DILocation(line: 178, column: 17, scope: !420)
!441 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !440)
!442 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !440)
!443 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !440)
!444 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !440)
!445 = distinct !DILexicalBlock(scope: !432, file: !3, line: 112, column: 7)
!446 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !440)
!447 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !440)
!448 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !440)
!449 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !440)
!450 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !440)
!451 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !440)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 114, column: 8)
!453 = !DILocation(line: 0, scope: !452, inlinedAt: !440)
!454 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !440)
!455 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !440)
!456 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !440)
!457 = !DILocation(line: 178, column: 8, scope: !420)
!458 = !DILocation(line: 178, column: 15, scope: !420)
!459 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !460)
!460 = distinct !DILocation(line: 179, column: 17, scope: !420)
!461 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !460)
!462 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !460)
!463 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !460)
!464 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !460)
!465 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !460)
!466 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !460)
!467 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !460)
!468 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !460)
!469 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !460)
!470 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !460)
!471 = !DILocation(line: 0, scope: !452, inlinedAt: !460)
!472 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !460)
!473 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !460)
!474 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !460)
!475 = !DILocation(line: 179, column: 8, scope: !420)
!476 = !DILocation(line: 179, column: 15, scope: !420)
!477 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !478)
!478 = distinct !DILocation(line: 180, column: 18, scope: !420)
!479 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !478)
!480 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !478)
!481 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !478)
!482 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !478)
!483 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !478)
!484 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !478)
!485 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !478)
!486 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !478)
!487 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !478)
!488 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !478)
!489 = !DILocation(line: 0, scope: !452, inlinedAt: !478)
!490 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !478)
!491 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !478)
!492 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !478)
!493 = !DILocation(line: 180, column: 8, scope: !420)
!494 = !DILocation(line: 180, column: 16, scope: !420)
!495 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !496)
!496 = distinct !DILocation(line: 181, column: 18, scope: !420)
!497 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !496)
!498 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !496)
!499 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !496)
!500 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !496)
!501 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !496)
!502 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !496)
!503 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !496)
!504 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !496)
!505 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !496)
!506 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !496)
!507 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !496)
!508 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !496)
!509 = !DILocation(line: 116, column: 14, scope: !510, inlinedAt: !496)
!510 = distinct !DILexicalBlock(scope: !452, file: !3, line: 115, column: 9)
!511 = !DILocation(line: 116, column: 7, scope: !510, inlinedAt: !496)
!512 = !DILocation(line: 0, scope: !510, inlinedAt: !496)
!513 = !DILocation(line: 0, scope: !420)
!514 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !496)
!515 = !DILocation(line: 181, column: 8, scope: !420)
!516 = !DILocation(line: 181, column: 16, scope: !420)
!517 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !518)
!518 = distinct !DILocation(line: 182, column: 17, scope: !420)
!519 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !518)
!520 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !518)
!521 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !518)
!522 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !518)
!523 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !518)
!524 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !518)
!525 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !518)
!526 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !518)
!527 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !518)
!528 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !518)
!529 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !518)
!530 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !518)
!531 = !DILocation(line: 116, column: 14, scope: !510, inlinedAt: !518)
!532 = !DILocation(line: 116, column: 7, scope: !510, inlinedAt: !518)
!533 = !DILocation(line: 0, scope: !510, inlinedAt: !518)
!534 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !518)
!535 = !DILocation(line: 182, column: 42, scope: !420)
!536 = !DILocation(line: 182, column: 8, scope: !420)
!537 = !DILocation(line: 182, column: 15, scope: !420)
!538 = !DILocation(line: 109, column: 33, scope: !432, inlinedAt: !539)
!539 = distinct !DILocation(line: 183, column: 18, scope: !420)
!540 = !DILocation(line: 109, column: 48, scope: !432, inlinedAt: !539)
!541 = !DILocation(line: 109, column: 57, scope: !432, inlinedAt: !539)
!542 = !DILocation(line: 111, column: 3, scope: !432, inlinedAt: !539)
!543 = !DILocation(line: 112, column: 7, scope: !445, inlinedAt: !539)
!544 = !DILocation(line: 112, column: 7, scope: !432, inlinedAt: !539)
!545 = !DILocation(line: 113, column: 16, scope: !445, inlinedAt: !539)
!546 = !DILocation(line: 113, column: 11, scope: !445, inlinedAt: !539)
!547 = !DILocation(line: 110, column: 7, scope: !432, inlinedAt: !539)
!548 = !DILocation(line: 113, column: 5, scope: !445, inlinedAt: !539)
!549 = !DILocation(line: 119, column: 3, scope: !432, inlinedAt: !539)
!550 = !DILocation(line: 120, column: 3, scope: !432, inlinedAt: !539)
!551 = !DILocation(line: 115, column: 9, scope: !452, inlinedAt: !539)
!552 = !DILocation(line: 116, column: 14, scope: !510, inlinedAt: !539)
!553 = !DILocation(line: 116, column: 7, scope: !510, inlinedAt: !539)
!554 = !DILocation(line: 0, scope: !510, inlinedAt: !539)
!555 = !DILocation(line: 121, column: 1, scope: !432, inlinedAt: !539)
!556 = !DILocation(line: 183, column: 42, scope: !420)
!557 = !DILocation(line: 183, column: 8, scope: !420)
!558 = !DILocation(line: 183, column: 16, scope: !420)
!559 = !DILocalVariable(name: "L", arg: 1, scope: !560, file: !3, line: 100, type: !21)
!560 = distinct !DISubprogram(name: "getboolfield", scope: !3, file: !3, line: 100, type: !561, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!14, !21, !27}
!563 = !{!559, !564, !565}
!564 = !DILocalVariable(name: "key", arg: 2, scope: !560, file: !3, line: 100, type: !27)
!565 = !DILocalVariable(name: "res", scope: !560, file: !3, line: 101, type: !14)
!566 = !DILocation(line: 100, column: 37, scope: !560, inlinedAt: !567)
!567 = distinct !DILocation(line: 184, column: 19, scope: !420)
!568 = !DILocation(line: 102, column: 3, scope: !560, inlinedAt: !567)
!569 = !DILocation(line: 103, column: 9, scope: !560, inlinedAt: !567)
!570 = !DILocation(line: 103, column: 33, scope: !560, inlinedAt: !567)
!571 = !DILocation(line: 101, column: 7, scope: !560, inlinedAt: !567)
!572 = !DILocation(line: 104, column: 3, scope: !560, inlinedAt: !567)
!573 = !DILocation(line: 105, column: 3, scope: !560, inlinedAt: !567)
!574 = !DILocation(line: 184, column: 8, scope: !420)
!575 = !DILocation(line: 184, column: 17, scope: !420)
!576 = !DILocation(line: 175, column: 15, scope: !420)
!577 = !DILocation(line: 185, column: 9, scope: !420)
!578 = !DILocation(line: 186, column: 3, scope: !421)
!579 = !DILocation(line: 187, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !415, file: !3, line: 187, column: 7)
!581 = !DILocation(line: 187, column: 7, scope: !415)
!582 = !DILocation(line: 188, column: 5, scope: !580)
!583 = !DILocation(line: 190, column: 23, scope: !580)
!584 = !DILocation(line: 190, column: 5, scope: !580)
!585 = !DILocation(line: 191, column: 3, scope: !415)
!586 = distinct !DISubprogram(name: "os_tmpname", scope: !3, file: !3, line: 57, type: !19, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !587)
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "L", arg: 1, scope: !586, file: !3, line: 57, type: !21)
!589 = !DILocalVariable(name: "buff", scope: !586, file: !3, line: 58, type: !108)
!590 = !DILocalVariable(name: "err", scope: !586, file: !3, line: 59, type: !14)
!591 = !DILocation(line: 57, column: 35, scope: !586)
!592 = !DILocation(line: 58, column: 3, scope: !586)
!593 = !DILocation(line: 58, column: 8, scope: !586)
!594 = !DILocation(line: 60, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !586, file: !3, line: 60, column: 3)
!596 = !DILocation(line: 61, column: 7, scope: !586)
!597 = !DILocation(line: 62, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !3, line: 61, column: 7)
!599 = !DILocation(line: 62, column: 5, scope: !598)
!600 = !DILocation(line: 63, column: 3, scope: !586)
!601 = !DILocation(line: 64, column: 3, scope: !586)
!602 = !DILocation(line: 0, scope: !586)
!603 = !DILocation(line: 0, scope: !598)
!604 = !DILocation(line: 65, column: 1, scope: !586)
