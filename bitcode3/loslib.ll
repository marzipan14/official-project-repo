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

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_os(%struct.lua_State*) local_unnamed_addr #0 !dbg !56 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0)) #6, !dbg !60
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
  store i64 %16, i64* %2, align 8, !dbg !131, !tbaa !132
  %17 = load i8, i8* %6, align 1, !dbg !136, !tbaa !138
  %18 = icmp eq i8 %17, 33, !dbg !139
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
  %27 = icmp eq %struct.tm* %25, null, !dbg !149
  br i1 %27, label %28, label %29, !dbg !150

; <label>:28:                                     ; preds = %24
  call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !151
  br label %97, !dbg !151

; <label>:29:                                     ; preds = %24
  %30 = call i32 @strcmp(i8* nonnull %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !152
  %31 = icmp eq i32 %30, 0, !dbg !153
  br i1 %31, label %32, label %65, !dbg !154

; <label>:32:                                     ; preds = %29
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #6, !dbg !155
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 0, !dbg !157
  %34 = load i32, i32* %33, align 8, !dbg !157, !tbaa !158
  %35 = sext i32 %34 to i64, !dbg !173
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %35) #6, !dbg !174
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !175
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 1, !dbg !176
  %37 = load i32, i32* %36, align 4, !dbg !176, !tbaa !177
  %38 = sext i32 %37 to i64, !dbg !182
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %38) #6, !dbg !183
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !184
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 2, !dbg !185
  %40 = load i32, i32* %39, align 8, !dbg !185, !tbaa !186
  %41 = sext i32 %40 to i64, !dbg !191
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %41) #6, !dbg !192
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !193
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 3, !dbg !194
  %43 = load i32, i32* %42, align 4, !dbg !194, !tbaa !195
  %44 = sext i32 %43 to i64, !dbg !200
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %44) #6, !dbg !201
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !202
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 4, !dbg !203
  %46 = load i32, i32* %45, align 8, !dbg !203, !tbaa !204
  %47 = add nsw i32 %46, 1, !dbg !205
  %48 = sext i32 %47 to i64, !dbg !210
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #6, !dbg !211
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !212
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 5, !dbg !213
  %50 = load i32, i32* %49, align 4, !dbg !213, !tbaa !214
  %51 = add nsw i32 %50, 1900, !dbg !215
  %52 = sext i32 %51 to i64, !dbg !220
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %52) #6, !dbg !221
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !222
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 6, !dbg !223
  %54 = load i32, i32* %53, align 8, !dbg !223, !tbaa !224
  %55 = add nsw i32 %54, 1, !dbg !225
  %56 = sext i32 %55 to i64, !dbg !230
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %56) #6, !dbg !231
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !232
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 7, !dbg !233
  %58 = load i32, i32* %57, align 4, !dbg !233, !tbaa !234
  %59 = add nsw i32 %58, 1, !dbg !235
  %60 = sext i32 %59 to i64, !dbg !240
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %60) #6, !dbg !241
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !242
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %25, i64 0, i32 8, !dbg !243
  %62 = load i32, i32* %61, align 8, !dbg !243, !tbaa !244
  %63 = icmp slt i32 %62, 0, !dbg !253
  br i1 %63, label %97, label %64, !dbg !255

; <label>:64:                                     ; preds = %32
  call void @lua_pushboolean(%struct.lua_State* %0, i32 %62) #6, !dbg !256
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !257
  br label %97, !dbg !258

; <label>:65:                                     ; preds = %29
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %66) #7, !dbg !259
  %67 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %67) #7, !dbg !261
  store i8 37, i8* %66, align 1, !dbg !262, !tbaa !138
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2, !dbg !263
  store i8 0, i8* %68, align 1, !dbg !264, !tbaa !138
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #6, !dbg !266
  %69 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %70 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 1024
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %72 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  br label %73, !dbg !267

; <label>:73:                                     ; preds = %93, %65
  %74 = phi i8* [ %26, %65 ], [ %95, %93 ], !dbg !268
  %75 = load i8, i8* %74, align 1, !dbg !269, !tbaa !138
  switch i8 %75, label %80 [
    i8 0, label %96
    i8 37, label %76
  ], !dbg !270

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !271
  %78 = load i8, i8* %77, align 1, !dbg !272, !tbaa !138
  %79 = icmp eq i8 %78, 0, !dbg !273
  br i1 %79, label %80, label %91, !dbg !274

; <label>:80:                                     ; preds = %73, %76
  %81 = load i8*, i8** %69, align 8, !dbg !275, !tbaa !276
  %82 = icmp ult i8* %81, %70, !dbg !275
  br i1 %82, label %87, label %83, !dbg !275

; <label>:83:                                     ; preds = %80
  %84 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #6, !dbg !275
  %85 = load i8, i8* %74, align 1, !dbg !275, !tbaa !138
  %86 = load i8*, i8** %69, align 8, !dbg !275, !tbaa !276
  br label %87, !dbg !275

; <label>:87:                                     ; preds = %83, %80
  %88 = phi i8* [ %86, %83 ], [ %81, %80 ], !dbg !275
  %89 = phi i8 [ %85, %83 ], [ %75, %80 ], !dbg !275
  %90 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !275
  store i8* %90, i8** %69, align 8, !dbg !275, !tbaa !276
  store i8 %89, i8* %88, align 1, !dbg !275, !tbaa !138
  br label %93, !dbg !275

; <label>:91:                                     ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %71) #7, !dbg !278
  store i8 %78, i8* %72, align 1, !dbg !280, !tbaa !138
  %92 = call i64 @strftime(i8* nonnull %71, i64 200, i8* nonnull %66, %struct.tm* nonnull %25) #6, !dbg !281
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* nonnull %71, i64 %92) #6, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %71) #7, !dbg !284
  br label %93

; <label>:93:                                     ; preds = %87, %91
  %94 = phi i8* [ %74, %87 ], [ %77, %91 ], !dbg !285
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !286
  br label %73, !dbg !287, !llvm.loop !288

; <label>:96:                                     ; preds = %73
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #6, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %67) #7, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %66) #7, !dbg !291
  br label %97

; <label>:97:                                     ; preds = %64, %32, %96, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !292
  ret i32 1, !dbg !293
}

; Function Attrs: noredzone nounwind
define internal i32 @os_difftime(%struct.lua_State*) #0 !dbg !294 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #6, !dbg !298
  %3 = fptosi double %2 to i64, !dbg !299
  %4 = tail call double @luaL_optnumber(%struct.lua_State* %0, i32 2, double 0.000000e+00) #6, !dbg !300
  %5 = fptosi double %4 to i64, !dbg !301
  %6 = tail call double @difftime(i64 %3, i64 %5) #6, !dbg !302
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %6) #6, !dbg !303
  ret i32 1, !dbg !304
}

; Function Attrs: noredzone nounwind
define internal i32 @os_execute(%struct.lua_State*) #0 !dbg !305 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6, !dbg !309
  %3 = tail call i32 @system(i8* %2) #6, !dbg !310
  %4 = sext i32 %3 to i64, !dbg !310
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #6, !dbg !311
  ret i32 1, !dbg !312
}

; Function Attrs: noredzone noreturn nounwind
define internal i32 @os_exit(%struct.lua_State*) #3 !dbg !313 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 0) #6, !dbg !317
  %3 = trunc i64 %2 to i32, !dbg !317
  tail call void @exit(i32 %3) #8, !dbg !318
  unreachable, !dbg !318
}

; Function Attrs: noredzone nounwind
define internal i32 @os_getenv(%struct.lua_State*) #0 !dbg !319 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !323
  %3 = tail call i8* @getenv(i8* %2) #6, !dbg !324
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #6, !dbg !325
  ret i32 1, !dbg !326
}

; Function Attrs: noredzone nounwind
define internal i32 @os_remove(%struct.lua_State*) #0 !dbg !327 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !332
  %3 = tail call i32 @remove(i8* %2) #6, !dbg !334
  %4 = icmp eq i32 %3, 0, !dbg !335
  %5 = tail call i32* @__errno() #6, !dbg !347
  %6 = load i32, i32* %5, align 4, !dbg !347, !tbaa !348
  br i1 %4, label %7, label %8, !dbg !350

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !351
  br label %12, !dbg !354

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !355
  %9 = tail call i8* @strerror(i32 %6) #6, !dbg !357
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %2, i8* %9) #6, !dbg !358
  %11 = sext i32 %6 to i64, !dbg !359
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #6, !dbg !360
  br label %12, !dbg !361

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i32 [ 1, %7 ], [ 3, %8 ], !dbg !362
  ret i32 %13, !dbg !363
}

; Function Attrs: noredzone nounwind
define internal i32 @os_rename(%struct.lua_State*) #0 !dbg !364 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6, !dbg !370
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6, !dbg !372
  %4 = tail call i32 @rename(i8* %2, i8* %3) #6, !dbg !374
  %5 = icmp eq i32 %4, 0, !dbg !375
  %6 = tail call i32* @__errno() #6, !dbg !379
  %7 = load i32, i32* %6, align 4, !dbg !379, !tbaa !348
  br i1 %5, label %8, label %9, !dbg !381

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6, !dbg !382
  br label %13, !dbg !383

; <label>:9:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !384
  %10 = tail call i8* @strerror(i32 %7) #6, !dbg !385
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %2, i8* %10) #6, !dbg !386
  %12 = sext i32 %7 to i64, !dbg !387
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #6, !dbg !388
  br label %13, !dbg !389

; <label>:13:                                     ; preds = %8, %9
  %14 = phi i32 [ 1, %8 ], [ 3, %9 ], !dbg !390
  ret i32 %14, !dbg !391
}

; Function Attrs: noredzone nounwind
define internal i32 @os_setlocale(%struct.lua_State*) #0 !dbg !18 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6, !dbg !393
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i64 0, i64 0)) #6, !dbg !395
  %4 = sext i32 %3 to i64, !dbg !397
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %4, !dbg !397
  %6 = load i32, i32* %5, align 4, !dbg !397, !tbaa !348
  %7 = tail call i8* @setlocale(i32 %6, i8* %2) #6, !dbg !398
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %7) #6, !dbg !399
  ret i32 1, !dbg !400
}

; Function Attrs: noredzone nounwind
define internal i32 @os_time(%struct.lua_State*) #0 !dbg !401 {
  %2 = alloca %struct.tm, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6, !dbg !409
  %4 = icmp slt i32 %3, 1, !dbg !409
  br i1 %4, label %5, label %7, !dbg !410

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #6, !dbg !411
  br label %73, !dbg !413

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.tm* %2 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #7, !dbg !414
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6, !dbg !415
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6, !dbg !416
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !429
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !430
  %10 = icmp eq i32 %9, 0, !dbg !430
  br i1 %10, label %14, label %11, !dbg !432

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !433
  %13 = trunc i64 %12 to i32, !dbg !434
  br label %14, !dbg !436

; <label>:14:                                     ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], !dbg !437
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !439
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0, !dbg !440
  store i32 %15, i32* %16, align 8, !dbg !441, !tbaa !158
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !446
  %17 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !447
  %18 = icmp eq i32 %17, 0, !dbg !447
  br i1 %18, label %22, label %19, !dbg !448

; <label>:19:                                     ; preds = %14
  %20 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !449
  %21 = trunc i64 %20 to i32, !dbg !450
  br label %22, !dbg !452

; <label>:22:                                     ; preds = %14, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %14 ], !dbg !453
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !454
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1, !dbg !455
  store i32 %23, i32* %24, align 4, !dbg !456, !tbaa !177
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !461
  %25 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !462
  %26 = icmp eq i32 %25, 0, !dbg !462
  br i1 %26, label %30, label %27, !dbg !463

; <label>:27:                                     ; preds = %22
  %28 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !464
  %29 = trunc i64 %28 to i32, !dbg !465
  br label %30, !dbg !467

; <label>:30:                                     ; preds = %22, %27
  %31 = phi i32 [ %29, %27 ], [ 12, %22 ], !dbg !468
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !469
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2, !dbg !470
  store i32 %31, i32* %32, align 8, !dbg !471, !tbaa !186
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !476
  %33 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !477
  %34 = icmp eq i32 %33, 0, !dbg !477
  br i1 %34, label %38, label %35, !dbg !478

; <label>:35:                                     ; preds = %30
  %36 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !479
  %37 = trunc i64 %36 to i32, !dbg !480
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !482
  br label %40, !dbg !483

; <label>:38:                                     ; preds = %30
  %39 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !484
  br label %40, !dbg !486

; <label>:40:                                     ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ], !dbg !487
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3, !dbg !488
  store i32 %41, i32* %42, align 4, !dbg !489, !tbaa !195
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !494
  %43 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !495
  %44 = icmp eq i32 %43, 0, !dbg !495
  br i1 %44, label %48, label %45, !dbg !496

; <label>:45:                                     ; preds = %40
  %46 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !497
  %47 = trunc i64 %46 to i32, !dbg !498
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !500
  br label %50, !dbg !501

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !502
  br label %50, !dbg !503

; <label>:50:                                     ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ], !dbg !504
  %52 = add nsw i32 %51, -1, !dbg !505
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4, !dbg !506
  store i32 %52, i32* %53, align 8, !dbg !507, !tbaa !204
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !512
  %54 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #6, !dbg !513
  %55 = icmp eq i32 %54, 0, !dbg !513
  br i1 %55, label %59, label %56, !dbg !514

; <label>:56:                                     ; preds = %50
  %57 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #6, !dbg !515
  %58 = trunc i64 %57 to i32, !dbg !516
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !518
  br label %61, !dbg !519

; <label>:59:                                     ; preds = %50
  %60 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !520
  br label %61, !dbg !521

; <label>:61:                                     ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ], !dbg !522
  %63 = add nsw i32 %62, -1900, !dbg !523
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5, !dbg !524
  store i32 %63, i32* %64, align 4, !dbg !525, !tbaa !214
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !535
  %65 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6, !dbg !536
  %66 = icmp eq i32 %65, 0, !dbg !536
  br i1 %66, label %69, label %67, !dbg !536

; <label>:67:                                     ; preds = %61
  %68 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6, !dbg !537
  br label %69, !dbg !536

; <label>:69:                                     ; preds = %61, %67
  %70 = phi i32 [ %68, %67 ], [ -1, %61 ], !dbg !536
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6, !dbg !539
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8, !dbg !540
  store i32 %70, i32* %71, align 8, !dbg !541, !tbaa !244
  %72 = call i64 @mktime(%struct.tm* nonnull %2) #6, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #7, !dbg !544
  br label %73

; <label>:73:                                     ; preds = %69, %5
  %74 = phi i64 [ %6, %5 ], [ %72, %69 ], !dbg !545
  %75 = icmp eq i64 %74, -1, !dbg !546
  br i1 %75, label %76, label %77, !dbg !548

; <label>:76:                                     ; preds = %73
  call void @lua_pushnil(%struct.lua_State* %0) #6, !dbg !549
  br label %79, !dbg !549

; <label>:77:                                     ; preds = %73
  %78 = sitofp i64 %74 to double, !dbg !550
  call void @lua_pushnumber(%struct.lua_State* %0, double %78) #6, !dbg !551
  br label %79

; <label>:79:                                     ; preds = %77, %76
  ret i32 1, !dbg !552
}

; Function Attrs: noredzone nounwind
define internal i32 @os_tmpname(%struct.lua_State*) #0 !dbg !553 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !559
  %4 = call i8* @tmpnam(i8* nonnull %3) #6, !dbg !561
  %5 = icmp eq i8* %4, null, !dbg !561
  br i1 %5, label %6, label %8, !dbg !563

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !564
  br label %9, !dbg !566

; <label>:8:                                      ; preds = %1
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %3) #6, !dbg !567
  br label %9, !dbg !568

; <label>:9:                                      ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 1, %8 ], !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !570
  ret i32 %10, !dbg !570
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
!176 = !DILocation(line: 139, column: 29, scope: !156)
!177 = !{!159, !160, i64 4}
!178 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !179)
!179 = distinct !DILocation(line: 139, column: 5, scope: !156)
!180 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !179)
!181 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !179)
!182 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !179)
!183 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !179)
!184 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !179)
!185 = !DILocation(line: 140, column: 30, scope: !156)
!186 = !{!159, !160, i64 8}
!187 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !188)
!188 = distinct !DILocation(line: 140, column: 5, scope: !156)
!189 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !188)
!190 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !188)
!191 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !188)
!192 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !188)
!193 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !188)
!194 = !DILocation(line: 141, column: 29, scope: !156)
!195 = !{!159, !160, i64 12}
!196 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !197)
!197 = distinct !DILocation(line: 141, column: 5, scope: !156)
!198 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !197)
!199 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !197)
!200 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !197)
!201 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !197)
!202 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !197)
!203 = !DILocation(line: 142, column: 31, scope: !156)
!204 = !{!159, !160, i64 16}
!205 = !DILocation(line: 142, column: 37, scope: !156)
!206 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !207)
!207 = distinct !DILocation(line: 142, column: 5, scope: !156)
!208 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !207)
!209 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !207)
!210 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !207)
!211 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !207)
!212 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !207)
!213 = !DILocation(line: 143, column: 30, scope: !156)
!214 = !{!159, !160, i64 20}
!215 = !DILocation(line: 143, column: 37, scope: !156)
!216 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !217)
!217 = distinct !DILocation(line: 143, column: 5, scope: !156)
!218 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !217)
!219 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !217)
!220 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !217)
!221 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !217)
!222 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !217)
!223 = !DILocation(line: 144, column: 30, scope: !156)
!224 = !{!159, !160, i64 24}
!225 = !DILocation(line: 144, column: 37, scope: !156)
!226 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !227)
!227 = distinct !DILocation(line: 144, column: 5, scope: !156)
!228 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !227)
!229 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !227)
!230 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !227)
!231 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !227)
!232 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !227)
!233 = !DILocation(line: 145, column: 30, scope: !156)
!234 = !{!159, !160, i64 28}
!235 = !DILocation(line: 145, column: 37, scope: !156)
!236 = !DILocation(line: 88, column: 34, scope: !163, inlinedAt: !237)
!237 = distinct !DILocation(line: 145, column: 5, scope: !156)
!238 = !DILocation(line: 88, column: 49, scope: !163, inlinedAt: !237)
!239 = !DILocation(line: 88, column: 58, scope: !163, inlinedAt: !237)
!240 = !DILocation(line: 89, column: 22, scope: !163, inlinedAt: !237)
!241 = !DILocation(line: 89, column: 3, scope: !163, inlinedAt: !237)
!242 = !DILocation(line: 90, column: 3, scope: !163, inlinedAt: !237)
!243 = !DILocation(line: 146, column: 35, scope: !156)
!244 = !{!159, !160, i64 32}
!245 = !DILocalVariable(name: "L", arg: 1, scope: !246, file: !3, line: 93, type: !21)
!246 = distinct !DISubprogram(name: "setboolfield", scope: !3, file: !3, line: 93, type: !164, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !247)
!247 = !{!245, !248, !249}
!248 = !DILocalVariable(name: "key", arg: 2, scope: !246, file: !3, line: 93, type: !27)
!249 = !DILocalVariable(name: "value", arg: 3, scope: !246, file: !3, line: 93, type: !14)
!250 = !DILocation(line: 93, column: 38, scope: !246, inlinedAt: !251)
!251 = distinct !DILocation(line: 146, column: 5, scope: !156)
!252 = !DILocation(line: 93, column: 62, scope: !246, inlinedAt: !251)
!253 = !DILocation(line: 94, column: 13, scope: !254, inlinedAt: !251)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 94, column: 7)
!255 = !DILocation(line: 94, column: 7, scope: !246, inlinedAt: !251)
!256 = !DILocation(line: 96, column: 3, scope: !246, inlinedAt: !251)
!257 = !DILocation(line: 97, column: 3, scope: !246, inlinedAt: !251)
!258 = !DILocation(line: 98, column: 1, scope: !246, inlinedAt: !251)
!259 = !DILocation(line: 149, column: 5, scope: !93)
!260 = !DILocation(line: 149, column: 10, scope: !93)
!261 = !DILocation(line: 150, column: 5, scope: !93)
!262 = !DILocation(line: 151, column: 11, scope: !93)
!263 = !DILocation(line: 151, column: 18, scope: !93)
!264 = !DILocation(line: 151, column: 24, scope: !93)
!265 = !DILocation(line: 150, column: 17, scope: !93)
!266 = !DILocation(line: 152, column: 5, scope: !93)
!267 = !DILocation(line: 153, column: 5, scope: !93)
!268 = !DILocation(line: 0, scope: !115)
!269 = !DILocation(line: 153, column: 12, scope: !115)
!270 = !DILocation(line: 153, column: 5, scope: !116)
!271 = !DILocation(line: 154, column: 28, scope: !113)
!272 = !DILocation(line: 154, column: 24, scope: !113)
!273 = !DILocation(line: 154, column: 33, scope: !113)
!274 = !DILocation(line: 154, column: 11, scope: !114)
!275 = !DILocation(line: 155, column: 9, scope: !113)
!276 = !{!277, !161, i64 0}
!277 = !{!"luaL_Buffer", !161, i64 0, !160, i64 8, !161, i64 16, !134, i64 24}
!278 = !DILocation(line: 158, column: 9, scope: !112)
!279 = !DILocation(line: 158, column: 14, scope: !112)
!280 = !DILocation(line: 159, column: 15, scope: !112)
!281 = !DILocation(line: 160, column: 18, scope: !112)
!282 = !DILocation(line: 157, column: 16, scope: !112)
!283 = !DILocation(line: 161, column: 9, scope: !112)
!284 = !DILocation(line: 162, column: 7, scope: !113)
!285 = !DILocation(line: 0, scope: !112)
!286 = !DILocation(line: 153, column: 17, scope: !115)
!287 = !DILocation(line: 153, column: 5, scope: !115)
!288 = distinct !{!288, !270, !289}
!289 = !DILocation(line: 163, column: 5, scope: !116)
!290 = !DILocation(line: 164, column: 5, scope: !93)
!291 = !DILocation(line: 165, column: 3, scope: !94)
!292 = !DILocation(line: 167, column: 1, scope: !71)
!293 = !DILocation(line: 166, column: 3, scope: !71)
!294 = distinct !DISubprogram(name: "os_difftime", scope: !3, file: !3, line: 195, type: !19, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "L", arg: 1, scope: !294, file: !3, line: 195, type: !21)
!297 = !DILocation(line: 195, column: 36, scope: !294)
!298 = !DILocation(line: 196, column: 39, scope: !294)
!299 = !DILocation(line: 196, column: 30, scope: !294)
!300 = !DILocation(line: 197, column: 39, scope: !294)
!301 = !DILocation(line: 197, column: 30, scope: !294)
!302 = !DILocation(line: 196, column: 21, scope: !294)
!303 = !DILocation(line: 196, column: 3, scope: !294)
!304 = !DILocation(line: 198, column: 3, scope: !294)
!305 = distinct !DISubprogram(name: "os_execute", scope: !3, file: !3, line: 38, type: !19, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !306)
!306 = !{!307}
!307 = !DILocalVariable(name: "L", arg: 1, scope: !305, file: !3, line: 38, type: !21)
!308 = !DILocation(line: 38, column: 35, scope: !305)
!309 = !DILocation(line: 39, column: 29, scope: !305)
!310 = !DILocation(line: 39, column: 22, scope: !305)
!311 = !DILocation(line: 39, column: 3, scope: !305)
!312 = !DILocation(line: 40, column: 3, scope: !305)
!313 = distinct !DISubprogram(name: "os_exit", scope: !3, file: !3, line: 216, type: !19, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "L", arg: 1, scope: !313, file: !3, line: 216, type: !21)
!316 = !DILocation(line: 216, column: 32, scope: !313)
!317 = !DILocation(line: 217, column: 8, scope: !313)
!318 = !DILocation(line: 217, column: 3, scope: !313)
!319 = distinct !DISubprogram(name: "os_getenv", scope: !3, file: !3, line: 68, type: !19, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !320)
!320 = !{!321}
!321 = !DILocalVariable(name: "L", arg: 1, scope: !319, file: !3, line: 68, type: !21)
!322 = !DILocation(line: 68, column: 34, scope: !319)
!323 = !DILocation(line: 69, column: 28, scope: !319)
!324 = !DILocation(line: 69, column: 21, scope: !319)
!325 = !DILocation(line: 69, column: 3, scope: !319)
!326 = !DILocation(line: 70, column: 3, scope: !319)
!327 = distinct !DISubprogram(name: "os_remove", scope: !3, file: !3, line: 44, type: !19, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "L", arg: 1, scope: !327, file: !3, line: 44, type: !21)
!330 = !DILocalVariable(name: "filename", scope: !327, file: !3, line: 45, type: !27)
!331 = !DILocation(line: 44, column: 34, scope: !327)
!332 = !DILocation(line: 45, column: 26, scope: !327)
!333 = !DILocation(line: 45, column: 15, scope: !327)
!334 = !DILocation(line: 46, column: 27, scope: !327)
!335 = !DILocation(line: 46, column: 44, scope: !327)
!336 = !DILocalVariable(name: "L", arg: 1, scope: !337, file: !3, line: 23, type: !21)
!337 = distinct !DISubprogram(name: "os_pushresult", scope: !3, file: !3, line: 23, type: !338, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!14, !21, !14, !27}
!340 = !{!336, !341, !342, !343}
!341 = !DILocalVariable(name: "i", arg: 2, scope: !337, file: !3, line: 23, type: !14)
!342 = !DILocalVariable(name: "filename", arg: 3, scope: !337, file: !3, line: 23, type: !27)
!343 = !DILocalVariable(name: "en", scope: !337, file: !3, line: 24, type: !14)
!344 = !DILocation(line: 23, column: 38, scope: !337, inlinedAt: !345)
!345 = distinct !DILocation(line: 46, column: 10, scope: !327)
!346 = !DILocation(line: 23, column: 60, scope: !337, inlinedAt: !345)
!347 = !DILocation(line: 24, column: 12, scope: !337, inlinedAt: !345)
!348 = !{!160, !160, i64 0}
!349 = !DILocation(line: 24, column: 7, scope: !337, inlinedAt: !345)
!350 = !DILocation(line: 25, column: 7, scope: !337, inlinedAt: !345)
!351 = !DILocation(line: 26, column: 5, scope: !352, inlinedAt: !345)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 25, column: 10)
!353 = distinct !DILexicalBlock(scope: !337, file: !3, line: 25, column: 7)
!354 = !DILocation(line: 27, column: 5, scope: !352, inlinedAt: !345)
!355 = !DILocation(line: 30, column: 5, scope: !356, inlinedAt: !345)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 29, column: 8)
!357 = !DILocation(line: 31, column: 44, scope: !356, inlinedAt: !345)
!358 = !DILocation(line: 31, column: 5, scope: !356, inlinedAt: !345)
!359 = !DILocation(line: 32, column: 24, scope: !356, inlinedAt: !345)
!360 = !DILocation(line: 32, column: 5, scope: !356, inlinedAt: !345)
!361 = !DILocation(line: 33, column: 5, scope: !356, inlinedAt: !345)
!362 = !DILocation(line: 0, scope: !356, inlinedAt: !345)
!363 = !DILocation(line: 46, column: 3, scope: !327)
!364 = distinct !DISubprogram(name: "os_rename", scope: !3, file: !3, line: 50, type: !19, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !365)
!365 = !{!366, !367, !368}
!366 = !DILocalVariable(name: "L", arg: 1, scope: !364, file: !3, line: 50, type: !21)
!367 = !DILocalVariable(name: "fromname", scope: !364, file: !3, line: 51, type: !27)
!368 = !DILocalVariable(name: "toname", scope: !364, file: !3, line: 52, type: !27)
!369 = !DILocation(line: 50, column: 34, scope: !364)
!370 = !DILocation(line: 51, column: 26, scope: !364)
!371 = !DILocation(line: 51, column: 15, scope: !364)
!372 = !DILocation(line: 52, column: 24, scope: !364)
!373 = !DILocation(line: 52, column: 15, scope: !364)
!374 = !DILocation(line: 53, column: 27, scope: !364)
!375 = !DILocation(line: 53, column: 52, scope: !364)
!376 = !DILocation(line: 23, column: 38, scope: !337, inlinedAt: !377)
!377 = distinct !DILocation(line: 53, column: 10, scope: !364)
!378 = !DILocation(line: 23, column: 60, scope: !337, inlinedAt: !377)
!379 = !DILocation(line: 24, column: 12, scope: !337, inlinedAt: !377)
!380 = !DILocation(line: 24, column: 7, scope: !337, inlinedAt: !377)
!381 = !DILocation(line: 25, column: 7, scope: !337, inlinedAt: !377)
!382 = !DILocation(line: 26, column: 5, scope: !352, inlinedAt: !377)
!383 = !DILocation(line: 27, column: 5, scope: !352, inlinedAt: !377)
!384 = !DILocation(line: 30, column: 5, scope: !356, inlinedAt: !377)
!385 = !DILocation(line: 31, column: 44, scope: !356, inlinedAt: !377)
!386 = !DILocation(line: 31, column: 5, scope: !356, inlinedAt: !377)
!387 = !DILocation(line: 32, column: 24, scope: !356, inlinedAt: !377)
!388 = !DILocation(line: 32, column: 5, scope: !356, inlinedAt: !377)
!389 = !DILocation(line: 33, column: 5, scope: !356, inlinedAt: !377)
!390 = !DILocation(line: 0, scope: !356, inlinedAt: !377)
!391 = !DILocation(line: 53, column: 3, scope: !364)
!392 = !DILocation(line: 204, column: 37, scope: !18)
!393 = !DILocation(line: 209, column: 19, scope: !18)
!394 = !DILocation(line: 209, column: 15, scope: !18)
!395 = !DILocation(line: 210, column: 12, scope: !18)
!396 = !DILocation(line: 210, column: 7, scope: !18)
!397 = !DILocation(line: 211, column: 31, scope: !18)
!398 = !DILocation(line: 211, column: 21, scope: !18)
!399 = !DILocation(line: 211, column: 3, scope: !18)
!400 = !DILocation(line: 212, column: 3, scope: !18)
!401 = distinct !DISubprogram(name: "os_time", scope: !3, file: !3, line: 170, type: !19, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !402)
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(name: "L", arg: 1, scope: !401, file: !3, line: 170, type: !21)
!404 = !DILocalVariable(name: "t", scope: !401, file: !3, line: 171, type: !9)
!405 = !DILocalVariable(name: "ts", scope: !406, file: !3, line: 175, type: !78)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 174, column: 8)
!407 = distinct !DILexicalBlock(scope: !401, file: !3, line: 172, column: 7)
!408 = !DILocation(line: 170, column: 32, scope: !401)
!409 = !DILocation(line: 172, column: 7, scope: !407)
!410 = !DILocation(line: 172, column: 7, scope: !401)
!411 = !DILocation(line: 173, column: 9, scope: !407)
!412 = !DILocation(line: 171, column: 10, scope: !401)
!413 = !DILocation(line: 173, column: 5, scope: !407)
!414 = !DILocation(line: 175, column: 5, scope: !406)
!415 = !DILocation(line: 176, column: 5, scope: !406)
!416 = !DILocation(line: 177, column: 5, scope: !406)
!417 = !DILocalVariable(name: "L", arg: 1, scope: !418, file: !3, line: 109, type: !21)
!418 = distinct !DISubprogram(name: "getfield", scope: !3, file: !3, line: 109, type: !419, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!14, !21, !27, !14}
!421 = !{!417, !422, !423, !424}
!422 = !DILocalVariable(name: "key", arg: 2, scope: !418, file: !3, line: 109, type: !27)
!423 = !DILocalVariable(name: "d", arg: 3, scope: !418, file: !3, line: 109, type: !14)
!424 = !DILocalVariable(name: "res", scope: !418, file: !3, line: 110, type: !14)
!425 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !426)
!426 = distinct !DILocation(line: 178, column: 17, scope: !406)
!427 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !426)
!428 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !426)
!429 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !426)
!430 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !426)
!431 = distinct !DILexicalBlock(scope: !418, file: !3, line: 112, column: 7)
!432 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !426)
!433 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !426)
!434 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !426)
!435 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !426)
!436 = !DILocation(line: 113, column: 5, scope: !431, inlinedAt: !426)
!437 = !DILocation(line: 0, scope: !438, inlinedAt: !426)
!438 = distinct !DILexicalBlock(scope: !431, file: !3, line: 114, column: 8)
!439 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !426)
!440 = !DILocation(line: 178, column: 8, scope: !406)
!441 = !DILocation(line: 178, column: 15, scope: !406)
!442 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !443)
!443 = distinct !DILocation(line: 179, column: 17, scope: !406)
!444 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !443)
!445 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !443)
!446 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !443)
!447 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !443)
!448 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !443)
!449 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !443)
!450 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !443)
!451 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !443)
!452 = !DILocation(line: 113, column: 5, scope: !431, inlinedAt: !443)
!453 = !DILocation(line: 0, scope: !438, inlinedAt: !443)
!454 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !443)
!455 = !DILocation(line: 179, column: 8, scope: !406)
!456 = !DILocation(line: 179, column: 15, scope: !406)
!457 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !458)
!458 = distinct !DILocation(line: 180, column: 18, scope: !406)
!459 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !458)
!460 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !458)
!461 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !458)
!462 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !458)
!463 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !458)
!464 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !458)
!465 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !458)
!466 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !458)
!467 = !DILocation(line: 113, column: 5, scope: !431, inlinedAt: !458)
!468 = !DILocation(line: 0, scope: !438, inlinedAt: !458)
!469 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !458)
!470 = !DILocation(line: 180, column: 8, scope: !406)
!471 = !DILocation(line: 180, column: 16, scope: !406)
!472 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !473)
!473 = distinct !DILocation(line: 181, column: 18, scope: !406)
!474 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !473)
!475 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !473)
!476 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !473)
!477 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !473)
!478 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !473)
!479 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !473)
!480 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !473)
!481 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !473)
!482 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !473)
!483 = !DILocation(line: 120, column: 3, scope: !418, inlinedAt: !473)
!484 = !DILocation(line: 116, column: 14, scope: !485, inlinedAt: !473)
!485 = distinct !DILexicalBlock(scope: !438, file: !3, line: 115, column: 9)
!486 = !DILocation(line: 116, column: 7, scope: !485, inlinedAt: !473)
!487 = !DILocation(line: 0, scope: !485, inlinedAt: !473)
!488 = !DILocation(line: 181, column: 8, scope: !406)
!489 = !DILocation(line: 181, column: 16, scope: !406)
!490 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !491)
!491 = distinct !DILocation(line: 182, column: 17, scope: !406)
!492 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !491)
!493 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !491)
!494 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !491)
!495 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !491)
!496 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !491)
!497 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !491)
!498 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !491)
!499 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !491)
!500 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !491)
!501 = !DILocation(line: 120, column: 3, scope: !418, inlinedAt: !491)
!502 = !DILocation(line: 116, column: 14, scope: !485, inlinedAt: !491)
!503 = !DILocation(line: 116, column: 7, scope: !485, inlinedAt: !491)
!504 = !DILocation(line: 0, scope: !485, inlinedAt: !491)
!505 = !DILocation(line: 182, column: 42, scope: !406)
!506 = !DILocation(line: 182, column: 8, scope: !406)
!507 = !DILocation(line: 182, column: 15, scope: !406)
!508 = !DILocation(line: 109, column: 33, scope: !418, inlinedAt: !509)
!509 = distinct !DILocation(line: 183, column: 18, scope: !406)
!510 = !DILocation(line: 109, column: 48, scope: !418, inlinedAt: !509)
!511 = !DILocation(line: 109, column: 57, scope: !418, inlinedAt: !509)
!512 = !DILocation(line: 111, column: 3, scope: !418, inlinedAt: !509)
!513 = !DILocation(line: 112, column: 7, scope: !431, inlinedAt: !509)
!514 = !DILocation(line: 112, column: 7, scope: !418, inlinedAt: !509)
!515 = !DILocation(line: 113, column: 16, scope: !431, inlinedAt: !509)
!516 = !DILocation(line: 113, column: 11, scope: !431, inlinedAt: !509)
!517 = !DILocation(line: 110, column: 7, scope: !418, inlinedAt: !509)
!518 = !DILocation(line: 119, column: 3, scope: !418, inlinedAt: !509)
!519 = !DILocation(line: 120, column: 3, scope: !418, inlinedAt: !509)
!520 = !DILocation(line: 116, column: 14, scope: !485, inlinedAt: !509)
!521 = !DILocation(line: 116, column: 7, scope: !485, inlinedAt: !509)
!522 = !DILocation(line: 0, scope: !485, inlinedAt: !509)
!523 = !DILocation(line: 183, column: 42, scope: !406)
!524 = !DILocation(line: 183, column: 8, scope: !406)
!525 = !DILocation(line: 183, column: 16, scope: !406)
!526 = !DILocalVariable(name: "L", arg: 1, scope: !527, file: !3, line: 100, type: !21)
!527 = distinct !DISubprogram(name: "getboolfield", scope: !3, file: !3, line: 100, type: !528, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!14, !21, !27}
!530 = !{!526, !531, !532}
!531 = !DILocalVariable(name: "key", arg: 2, scope: !527, file: !3, line: 100, type: !27)
!532 = !DILocalVariable(name: "res", scope: !527, file: !3, line: 101, type: !14)
!533 = !DILocation(line: 100, column: 37, scope: !527, inlinedAt: !534)
!534 = distinct !DILocation(line: 184, column: 19, scope: !406)
!535 = !DILocation(line: 102, column: 3, scope: !527, inlinedAt: !534)
!536 = !DILocation(line: 103, column: 9, scope: !527, inlinedAt: !534)
!537 = !DILocation(line: 103, column: 33, scope: !527, inlinedAt: !534)
!538 = !DILocation(line: 101, column: 7, scope: !527, inlinedAt: !534)
!539 = !DILocation(line: 104, column: 3, scope: !527, inlinedAt: !534)
!540 = !DILocation(line: 184, column: 8, scope: !406)
!541 = !DILocation(line: 184, column: 17, scope: !406)
!542 = !DILocation(line: 175, column: 15, scope: !406)
!543 = !DILocation(line: 185, column: 9, scope: !406)
!544 = !DILocation(line: 186, column: 3, scope: !407)
!545 = !DILocation(line: 0, scope: !406)
!546 = !DILocation(line: 187, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !401, file: !3, line: 187, column: 7)
!548 = !DILocation(line: 187, column: 7, scope: !401)
!549 = !DILocation(line: 188, column: 5, scope: !547)
!550 = !DILocation(line: 190, column: 23, scope: !547)
!551 = !DILocation(line: 190, column: 5, scope: !547)
!552 = !DILocation(line: 191, column: 3, scope: !401)
!553 = distinct !DISubprogram(name: "os_tmpname", scope: !3, file: !3, line: 57, type: !19, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !554)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "L", arg: 1, scope: !553, file: !3, line: 57, type: !21)
!556 = !DILocalVariable(name: "buff", scope: !553, file: !3, line: 58, type: !108)
!557 = !DILocalVariable(name: "err", scope: !553, file: !3, line: 59, type: !14)
!558 = !DILocation(line: 57, column: 35, scope: !553)
!559 = !DILocation(line: 58, column: 3, scope: !553)
!560 = !DILocation(line: 58, column: 8, scope: !553)
!561 = !DILocation(line: 60, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !553, file: !3, line: 60, column: 3)
!563 = !DILocation(line: 61, column: 7, scope: !553)
!564 = !DILocation(line: 62, column: 12, scope: !565)
!565 = distinct !DILexicalBlock(scope: !553, file: !3, line: 61, column: 7)
!566 = !DILocation(line: 62, column: 5, scope: !565)
!567 = !DILocation(line: 63, column: 3, scope: !553)
!568 = !DILocation(line: 64, column: 3, scope: !553)
!569 = !DILocation(line: 0, scope: !553)
!570 = !DILocation(line: 65, column: 1, scope: !553)
