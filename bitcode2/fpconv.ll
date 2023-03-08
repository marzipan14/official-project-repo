; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@locale_decimal_point = internal unnamed_addr global i8 46, align 1, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c\00", align 1
@__func__.set_number_format = private unnamed_addr constant [18 x i8] c"set_number_format\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"1 <= precision && precision <= 14\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Error: wide characters found or printf() bug.\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @fpconv_strtod(i8*, i8**) local_unnamed_addr #0 !dbg !13 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #5, !dbg !35
  %6 = bitcast i8** %4 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !37
  %7 = load i8, i8* @locale_decimal_point, align 1, !dbg !38, !tbaa !40
  %8 = icmp eq i8 %7, 46, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %8, label %9, label %11, !dbg !44

; <label>:9:                                      ; preds = %2
  %10 = tail call double @strtod(i8* %0, i8** %1) #6, !dbg !45
  br label %72, !dbg !46

; <label>:11:                                     ; preds = %2, %30
  %12 = phi i8* [ %31, %30 ], [ %0, %2 ], !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  %13 = load i8, i8* %12, align 1, !dbg !57, !tbaa !40
  %14 = icmp sgt i8 %13, 47, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %14, label %15, label %18, !dbg !68

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i8 %13, 58, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %16, label %30, label %17, !dbg !70

; <label>:17:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br label %24, !dbg !74

; <label>:18:                                     ; preds = %11
  %19 = icmp eq i8 %13, 45, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %19, label %29, label %20, !dbg !76

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i8 %13, 43, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %21, label %29, label %22, !dbg !73

; <label>:22:                                     ; preds = %20
  %23 = icmp eq i8 %13, 46, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %23, label %29, label %24, !dbg !74

; <label>:24:                                     ; preds = %22, %17
  %25 = or i8 %13, 32, !dbg !79
  %26 = icmp sgt i8 %25, 96, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %26, label %27, label %32, !dbg !83

; <label>:27:                                     ; preds = %24
  %28 = icmp slt i8 %25, 122, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %28, label %29, label %32, !dbg !85

; <label>:29:                                     ; preds = %27, %18, %20, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br label %30, !dbg !86

; <label>:30:                                     ; preds = %29, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  %31 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !87
  br label %11, !dbg !55, !llvm.loop !88

; <label>:32:                                     ; preds = %24, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  %33 = ptrtoint i8* %12 to i64, !dbg !92
  %34 = ptrtoint i8* %0 to i64, !dbg !92
  %35 = sub i64 %33, %34, !dbg !92
  %36 = trunc i64 %35 to i32, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %37 = icmp eq i32 %36, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %37, label %38, label %39, !dbg !98

; <label>:38:                                     ; preds = %32
  store i8* %0, i8** %1, align 8, !dbg !99, !tbaa !101
  br label %72, !dbg !103

; <label>:39:                                     ; preds = %32
  %40 = icmp sgt i32 %36, 31, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %40, label %41, label %52, !dbg !106

; <label>:41:                                     ; preds = %39
  %42 = shl i64 %35, 32, !dbg !107
  %43 = add i64 %42, 4294967296, !dbg !107
  %44 = ashr exact i64 %43, 32, !dbg !107
  %45 = tail call i8* @malloc(i64 %44) #6, !dbg !109
  %46 = icmp eq i8* %45, null, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %46, label %47, label %54, !dbg !113

; <label>:47:                                     ; preds = %41
  %48 = tail call %struct._reent* @__getreent() #6, !dbg !114
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %48, i64 0, i32 3, !dbg !114
  %50 = load %struct.__sFILE*, %struct.__sFILE** %49, align 8, !dbg !114, !tbaa !116
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !122
  tail call void @abort() #7, !dbg !123
  unreachable

; <label>:52:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = shl i64 %35, 32, !dbg !124
  br label %54

; <label>:54:                                     ; preds = %41, %52
  %55 = phi i64 [ %42, %41 ], [ %53, %52 ], !dbg !124
  %56 = phi i8* [ %45, %41 ], [ %5, %52 ], !dbg !125
  %57 = ashr exact i64 %55, 32, !dbg !124
  %58 = call i8* @memcpy(i8* %56, i8* %0, i64 %57) #6, !dbg !127
  %59 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !128
  store i8 0, i8* %59, align 1, !dbg !129, !tbaa !40
  %60 = call i8* @strchr(i8* %56, i32 46) #6, !dbg !130
  %61 = icmp eq i8* %60, null, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br i1 %61, label %64, label %62, !dbg !134

; <label>:62:                                     ; preds = %54
  %63 = load i8, i8* @locale_decimal_point, align 1, !dbg !135, !tbaa !40
  store i8 %63, i8* %60, align 1, !dbg !136, !tbaa !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %64, !dbg !137

; <label>:64:                                     ; preds = %54, %62
  %65 = call double @strtod(i8* %56, i8** nonnull %4) #6, !dbg !139
  %66 = bitcast i8** %4 to i64*, !dbg !141
  %67 = load i64, i64* %66, align 8, !dbg !141, !tbaa !101
  %68 = ptrtoint i8* %56 to i64, !dbg !142
  %69 = sub i64 %67, %68, !dbg !142
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !143
  store i8* %70, i8** %1, align 8, !dbg !144, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %40, label %71, label %72, !dbg !145

; <label>:71:                                     ; preds = %64
  call void @free(i8* %56) #6, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br label %72, !dbg !146

; <label>:72:                                     ; preds = %64, %71, %38, %9
  %73 = phi double [ %10, %9 ], [ 0.000000e+00, %38 ], [ %65, %71 ], [ %65, %64 ], !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #5, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  ret double %73, !dbg !150
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fpconv_g_fmt(i8*, double, i32) local_unnamed_addr #0 !dbg !151 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [6 x i8], align 1
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !168
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !168
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #5, !dbg !170
  %8 = add i32 %2, -1, !dbg !184
  %9 = icmp ult i32 %8, 14, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %9, label %11, label %10, !dbg !184

; <label>:10:                                     ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.set_number_format, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !184
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = trunc i32 %2 to i8
  %13 = urem i8 %12, 10
  %14 = udiv i8 %12, 10
  store i8 37, i8* %7, align 1, !dbg !185, !tbaa !40
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 1, !dbg !186
  store i8 46, i8* %15, align 1, !dbg !187, !tbaa !40
  %16 = add i32 %2, 9, !dbg !189
  %17 = icmp ugt i32 %16, 18, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %17, label %18, label %21, !dbg !191

; <label>:18:                                     ; preds = %11
  %19 = add nuw nsw i8 %14, 48, !dbg !193
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 2, !dbg !195
  store i8 %19, i8* %20, align 1, !dbg !196, !tbaa !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br label %21, !dbg !197

; <label>:21:                                     ; preds = %11, %18
  %22 = phi i32 [ 3, %18 ], [ 2, %11 ], !dbg !198
  %23 = or i8 %13, 48, !dbg !199
  %24 = add nuw nsw i32 %22, 1, !dbg !200
  %25 = zext i32 %22 to i64, !dbg !201
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %25, !dbg !201
  store i8 %23, i8* %26, align 1, !dbg !202, !tbaa !40
  %27 = add nuw nsw i32 %22, 2, !dbg !203
  %28 = zext i32 %24 to i64, !dbg !204
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %28, !dbg !204
  store i8 103, i8* %29, align 1, !dbg !205, !tbaa !40
  %30 = zext i32 %27 to i64, !dbg !206
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %30, !dbg !206
  store i8 0, i8* %31, align 1, !dbg !207, !tbaa !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %32 = load i8, i8* @locale_decimal_point, align 1, !dbg !209, !tbaa !40
  %33 = icmp eq i8 %32, 46, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %33, label %34, label %36, !dbg !212

; <label>:34:                                     ; preds = %21
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 32, i8* nonnull %7, double %1) #6, !dbg !213
  br label %51, !dbg !214

; <label>:36:                                     ; preds = %21
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 32, i8* nonnull %7, double %1) #6, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %38 = load i8, i8* @locale_decimal_point, align 1
  br label %39, !dbg !218

; <label>:39:                                     ; preds = %45, %36
  %40 = phi i8* [ %0, %36 ], [ %47, %45 ]
  %41 = phi i8* [ %6, %36 ], [ %48, %45 ], !dbg !219
  %42 = load i8, i8* %41, align 1, !dbg !220, !tbaa !40
  %43 = icmp eq i8 %42, %38, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %43, label %45, label %44, !dbg !220

; <label>:44:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %45, !dbg !220

; <label>:45:                                     ; preds = %39, %44
  %46 = phi i8 [ %42, %44 ], [ 46, %39 ], !dbg !220
  %47 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !223
  store i8 %46, i8* %40, align 1, !dbg !224, !tbaa !40
  %48 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !225
  %49 = load i8, i8* %41, align 1, !dbg !226, !tbaa !40
  %50 = icmp eq i8 %49, 0, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %50, label %51, label %39, !dbg !227, !llvm.loop !228

; <label>:51:                                     ; preds = %45, %34
  %52 = phi i32 [ %35, %34 ], [ %37, %45 ], !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #5, !dbg !231
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  ret i32 %52, !dbg !231
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fpconv_init() local_unnamed_addr #0 !dbg !232 {
  %1 = alloca [8 x i8], align 1
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !243
  %3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %2, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double 5.000000e-01) #6, !dbg !244
  %4 = load i8, i8* %2, align 1, !dbg !245, !tbaa !40
  %5 = icmp eq i8 %4, 48, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br i1 %5, label %6, label %14, !dbg !248

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2, !dbg !249
  %8 = load i8, i8* %7, align 1, !dbg !249, !tbaa !40
  %9 = icmp eq i8 %8, 53, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %9, label %10, label %14, !dbg !251

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3, !dbg !252
  %12 = load i8, i8* %11, align 1, !dbg !252, !tbaa !40
  %13 = icmp eq i8 %12, 0, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %13, label %19, label %14, !dbg !254

; <label>:14:                                     ; preds = %10, %6, %0
  %15 = call %struct._reent* @__getreent() #6, !dbg !255
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %15, i64 0, i32 3, !dbg !255
  %17 = load %struct.__sFILE*, %struct.__sFILE** %16, align 8, !dbg !255, !tbaa !116
  %18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !257
  call void @abort() #7, !dbg !258
  unreachable

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1, !dbg !259
  %21 = load i8, i8* %20, align 1, !dbg !259, !tbaa !40
  store i8 %21, i8* @locale_decimal_point, align 1, !dbg !260, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  ret void, !dbg !262
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "locale_decimal_point", scope: !2, file: !3, line: 43, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!0}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "fpconv_strtod", scope: !3, file: !3, line: 106, type: !14, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !19}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!20 = !{!21, !22, !23, !27, !28, !29, !30, !32}
!21 = !DILocalVariable(name: "nptr", arg: 1, scope: !13, file: !3, line: 106, type: !17)
!22 = !DILocalVariable(name: "endptr", arg: 2, scope: !13, file: !3, line: 106, type: !19)
!23 = !DILocalVariable(name: "localbuf", scope: !13, file: !3, line: 108, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 32)
!27 = !DILocalVariable(name: "buf", scope: !13, file: !3, line: 109, type: !6)
!28 = !DILocalVariable(name: "endbuf", scope: !13, file: !3, line: 109, type: !6)
!29 = !DILocalVariable(name: "dp", scope: !13, file: !3, line: 109, type: !6)
!30 = !DILocalVariable(name: "buflen", scope: !13, file: !3, line: 110, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "value", scope: !13, file: !3, line: 111, type: !16)
!33 = !DILocation(line: 106, column: 34, scope: !13)
!34 = !DILocation(line: 106, column: 47, scope: !13)
!35 = !DILocation(line: 108, column: 5, scope: !13)
!36 = !DILocation(line: 108, column: 10, scope: !13)
!37 = !DILocation(line: 109, column: 5, scope: !13)
!38 = !DILocation(line: 114, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !13, file: !3, line: 114, column: 9)
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 114, column: 30, scope: !39)
!44 = !DILocation(line: 114, column: 9, scope: !13)
!45 = !DILocation(line: 115, column: 16, scope: !39)
!46 = !DILocation(line: 115, column: 9, scope: !39)
!47 = !DILocation(line: 0, scope: !48, inlinedAt: !54)
!48 = distinct !DISubprogram(name: "strtod_buffer_size", scope: !3, file: !3, line: 94, type: !49, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{!31, !17}
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "s", arg: 1, scope: !48, file: !3, line: 94, type: !17)
!53 = !DILocalVariable(name: "p", scope: !48, file: !3, line: 96, type: !17)
!54 = distinct !DILocation(line: 117, column: 14, scope: !13)
!55 = !DILocation(line: 98, column: 5, scope: !48, inlinedAt: !54)
!56 = !DILocation(line: 96, column: 17, scope: !48, inlinedAt: !54)
!57 = !DILocation(line: 98, column: 35, scope: !48, inlinedAt: !54)
!58 = !DILocalVariable(name: "ch", arg: 1, scope: !59, file: !3, line: 75, type: !7)
!59 = distinct !DISubprogram(name: "valid_number_character", scope: !3, file: !3, line: 75, type: !60, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!31, !7}
!62 = !{!58, !63}
!63 = !DILocalVariable(name: "lower_ch", scope: !59, file: !3, line: 77, type: !7)
!64 = !DILocation(line: 75, column: 47, scope: !59, inlinedAt: !65)
!65 = distinct !DILocation(line: 98, column: 12, scope: !48, inlinedAt: !54)
!66 = !DILocation(line: 79, column: 13, scope: !67, inlinedAt: !65)
!67 = distinct !DILexicalBlock(scope: !59, file: !3, line: 79, column: 9)
!68 = !DILocation(line: 79, column: 19, scope: !67, inlinedAt: !65)
!69 = !DILocation(line: 79, column: 25, scope: !67, inlinedAt: !65)
!70 = !DILocation(line: 79, column: 9, scope: !59, inlinedAt: !65)
!71 = !DILocation(line: 0, scope: !72, inlinedAt: !65)
!72 = distinct !DILexicalBlock(scope: !59, file: !3, line: 81, column: 9)
!73 = !DILocation(line: 81, column: 32, scope: !72, inlinedAt: !65)
!74 = !DILocation(line: 81, column: 9, scope: !59, inlinedAt: !65)
!75 = !DILocation(line: 81, column: 12, scope: !72, inlinedAt: !65)
!76 = !DILocation(line: 81, column: 19, scope: !72, inlinedAt: !65)
!77 = !DILocation(line: 81, column: 25, scope: !72, inlinedAt: !65)
!78 = !DILocation(line: 81, column: 38, scope: !72, inlinedAt: !65)
!79 = !DILocation(line: 85, column: 19, scope: !59, inlinedAt: !65)
!80 = !DILocation(line: 77, column: 10, scope: !59, inlinedAt: !65)
!81 = !DILocation(line: 86, column: 13, scope: !82, inlinedAt: !65)
!82 = distinct !DILexicalBlock(scope: !59, file: !3, line: 86, column: 9)
!83 = !DILocation(line: 86, column: 25, scope: !82, inlinedAt: !65)
!84 = !DILocation(line: 86, column: 37, scope: !82, inlinedAt: !65)
!85 = !DILocation(line: 86, column: 9, scope: !59, inlinedAt: !65)
!86 = !DILocation(line: 90, column: 1, scope: !59, inlinedAt: !65)
!87 = !DILocation(line: 99, column: 10, scope: !48, inlinedAt: !54)
!88 = distinct !{!88, !89, !90}
!89 = !DILocation(line: 98, column: 5, scope: !48)
!90 = !DILocation(line: 99, column: 10, scope: !48)
!91 = !DILocation(line: 89, column: 5, scope: !59, inlinedAt: !65)
!92 = !DILocation(line: 101, column: 14, scope: !48, inlinedAt: !54)
!93 = !DILocation(line: 101, column: 12, scope: !48, inlinedAt: !54)
!94 = !DILocation(line: 101, column: 5, scope: !48, inlinedAt: !54)
!95 = !DILocation(line: 110, column: 9, scope: !13)
!96 = !DILocation(line: 118, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !13, file: !3, line: 118, column: 9)
!98 = !DILocation(line: 118, column: 9, scope: !13)
!99 = !DILocation(line: 120, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 118, column: 18)
!101 = !{!102, !102, i64 0}
!102 = !{!"any pointer", !41, i64 0}
!103 = !DILocation(line: 121, column: 9, scope: !100)
!104 = !DILocation(line: 125, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !13, file: !3, line: 125, column: 9)
!106 = !DILocation(line: 125, column: 9, scope: !13)
!107 = !DILocation(line: 127, column: 22, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 125, column: 41)
!109 = !DILocation(line: 127, column: 15, scope: !108)
!110 = !DILocation(line: 109, column: 11, scope: !13)
!111 = !DILocation(line: 128, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !3, line: 128, column: 13)
!113 = !DILocation(line: 128, column: 13, scope: !108)
!114 = !DILocation(line: 129, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 128, column: 19)
!116 = !{!117, !102, i64 24}
!117 = !{!"_reent", !118, i64 0, !102, i64 8, !102, i64 16, !102, i64 24, !118, i64 32, !41, i64 36, !118, i64 64, !102, i64 72, !118, i64 80, !102, i64 88, !102, i64 96, !118, i64 104, !102, i64 112, !102, i64 120, !118, i64 128, !102, i64 136, !41, i64 144, !102, i64 504, !119, i64 512, !102, i64 1304, !121, i64 1312, !41, i64 1336}
!118 = !{!"int", !41, i64 0}
!119 = !{!"_atexit", !102, i64 0, !118, i64 8, !41, i64 16, !120, i64 272}
!120 = !{!"_on_exit_args", !41, i64 0, !41, i64 256, !118, i64 512, !118, i64 516}
!121 = !{!"_glue", !102, i64 0, !118, i64 8, !102, i64 16}
!122 = !DILocation(line: 129, column: 13, scope: !115)
!123 = !DILocation(line: 130, column: 13, scope: !115)
!124 = !DILocation(line: 136, column: 23, scope: !13)
!125 = !DILocation(line: 0, scope: !126)
!126 = distinct !DILexicalBlock(scope: !105, file: !3, line: 132, column: 12)
!127 = !DILocation(line: 136, column: 5, scope: !13)
!128 = !DILocation(line: 137, column: 5, scope: !13)
!129 = !DILocation(line: 137, column: 17, scope: !13)
!130 = !DILocation(line: 140, column: 10, scope: !13)
!131 = !DILocation(line: 109, column: 26, scope: !13)
!132 = !DILocation(line: 141, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !13, file: !3, line: 141, column: 9)
!134 = !DILocation(line: 141, column: 9, scope: !13)
!135 = !DILocation(line: 142, column: 15, scope: !133)
!136 = !DILocation(line: 142, column: 13, scope: !133)
!137 = !DILocation(line: 142, column: 9, scope: !133)
!138 = !DILocation(line: 109, column: 17, scope: !13)
!139 = !DILocation(line: 144, column: 13, scope: !13)
!140 = !DILocation(line: 111, column: 12, scope: !13)
!141 = !DILocation(line: 145, column: 29, scope: !13)
!142 = !DILocation(line: 145, column: 36, scope: !13)
!143 = !DILocation(line: 145, column: 24, scope: !13)
!144 = !DILocation(line: 145, column: 13, scope: !13)
!145 = !DILocation(line: 146, column: 9, scope: !13)
!146 = !DILocation(line: 147, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !13, file: !3, line: 146, column: 9)
!148 = !DILocation(line: 0, scope: !100)
!149 = !DILocation(line: 0, scope: !39)
!150 = !DILocation(line: 150, column: 1, scope: !13)
!151 = distinct !DISubprogram(name: "fpconv_g_fmt", scope: !3, file: !3, line: 174, type: !152, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!31, !6, !16, !31}
!154 = !{!155, !156, !157, !158, !159, !163, !164}
!155 = !DILocalVariable(name: "str", arg: 1, scope: !151, file: !3, line: 174, type: !6)
!156 = !DILocalVariable(name: "num", arg: 2, scope: !151, file: !3, line: 174, type: !16)
!157 = !DILocalVariable(name: "precision", arg: 3, scope: !151, file: !3, line: 174, type: !31)
!158 = !DILocalVariable(name: "buf", scope: !151, file: !3, line: 176, type: !24)
!159 = !DILocalVariable(name: "fmt", scope: !151, file: !3, line: 177, type: !160)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 6)
!163 = !DILocalVariable(name: "len", scope: !151, file: !3, line: 178, type: !31)
!164 = !DILocalVariable(name: "b", scope: !151, file: !3, line: 179, type: !6)
!165 = !DILocation(line: 174, column: 24, scope: !151)
!166 = !DILocation(line: 174, column: 36, scope: !151)
!167 = !DILocation(line: 174, column: 45, scope: !151)
!168 = !DILocation(line: 176, column: 5, scope: !151)
!169 = !DILocation(line: 176, column: 10, scope: !151)
!170 = !DILocation(line: 177, column: 5, scope: !151)
!171 = !DILocation(line: 177, column: 10, scope: !151)
!172 = !DILocalVariable(name: "fmt", arg: 1, scope: !173, file: !3, line: 153, type: !6)
!173 = distinct !DISubprogram(name: "set_number_format", scope: !3, file: !3, line: 153, type: !174, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !6, !31}
!176 = !{!172, !177, !178, !179, !180}
!177 = !DILocalVariable(name: "precision", arg: 2, scope: !173, file: !3, line: 153, type: !31)
!178 = !DILocalVariable(name: "d1", scope: !173, file: !3, line: 155, type: !31)
!179 = !DILocalVariable(name: "d2", scope: !173, file: !3, line: 155, type: !31)
!180 = !DILocalVariable(name: "i", scope: !173, file: !3, line: 155, type: !31)
!181 = !DILocation(line: 153, column: 37, scope: !173, inlinedAt: !182)
!182 = distinct !DILocation(line: 181, column: 5, scope: !151)
!183 = !DILocation(line: 153, column: 46, scope: !173, inlinedAt: !182)
!184 = !DILocation(line: 157, column: 5, scope: !173, inlinedAt: !182)
!185 = !DILocation(line: 162, column: 12, scope: !173, inlinedAt: !182)
!186 = !DILocation(line: 163, column: 5, scope: !173, inlinedAt: !182)
!187 = !DILocation(line: 163, column: 12, scope: !173, inlinedAt: !182)
!188 = !DILocation(line: 155, column: 17, scope: !173, inlinedAt: !182)
!189 = !DILocation(line: 165, column: 9, scope: !190, inlinedAt: !182)
!190 = distinct !DILexicalBlock(scope: !173, file: !3, line: 165, column: 9)
!191 = !DILocation(line: 165, column: 9, scope: !173, inlinedAt: !182)
!192 = !DILocation(line: 155, column: 9, scope: !173, inlinedAt: !182)
!193 = !DILocation(line: 166, column: 20, scope: !194, inlinedAt: !182)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 165, column: 13)
!195 = !DILocation(line: 166, column: 9, scope: !194, inlinedAt: !182)
!196 = !DILocation(line: 166, column: 18, scope: !194, inlinedAt: !182)
!197 = !DILocation(line: 167, column: 5, scope: !194, inlinedAt: !182)
!198 = !DILocation(line: 0, scope: !173, inlinedAt: !182)
!199 = !DILocation(line: 168, column: 16, scope: !173, inlinedAt: !182)
!200 = !DILocation(line: 168, column: 10, scope: !173, inlinedAt: !182)
!201 = !DILocation(line: 168, column: 5, scope: !173, inlinedAt: !182)
!202 = !DILocation(line: 168, column: 14, scope: !173, inlinedAt: !182)
!203 = !DILocation(line: 169, column: 10, scope: !173, inlinedAt: !182)
!204 = !DILocation(line: 169, column: 5, scope: !173, inlinedAt: !182)
!205 = !DILocation(line: 169, column: 14, scope: !173, inlinedAt: !182)
!206 = !DILocation(line: 170, column: 5, scope: !173, inlinedAt: !182)
!207 = !DILocation(line: 170, column: 12, scope: !173, inlinedAt: !182)
!208 = !DILocation(line: 171, column: 1, scope: !173, inlinedAt: !182)
!209 = !DILocation(line: 184, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !151, file: !3, line: 184, column: 9)
!211 = !DILocation(line: 184, column: 30, scope: !210)
!212 = !DILocation(line: 184, column: 9, scope: !151)
!213 = !DILocation(line: 185, column: 16, scope: !210)
!214 = !DILocation(line: 185, column: 9, scope: !210)
!215 = !DILocation(line: 188, column: 11, scope: !151)
!216 = !DILocation(line: 178, column: 9, scope: !151)
!217 = !DILocation(line: 179, column: 11, scope: !151)
!218 = !DILocation(line: 192, column: 5, scope: !151)
!219 = !DILocation(line: 0, scope: !151)
!220 = !DILocation(line: 193, column: 19, scope: !221)
!221 = distinct !DILexicalBlock(scope: !151, file: !3, line: 192, column: 8)
!222 = !DILocation(line: 193, column: 22, scope: !221)
!223 = !DILocation(line: 193, column: 13, scope: !221)
!224 = !DILocation(line: 193, column: 16, scope: !221)
!225 = !DILocation(line: 194, column: 15, scope: !151)
!226 = !DILocation(line: 194, column: 13, scope: !151)
!227 = !DILocation(line: 194, column: 5, scope: !221)
!228 = distinct !{!228, !218, !229}
!229 = !DILocation(line: 194, column: 17, scope: !151)
!230 = !DILocation(line: 0, scope: !210)
!231 = !DILocation(line: 197, column: 1, scope: !151)
!232 = distinct !DISubprogram(name: "fpconv_init", scope: !3, file: !3, line: 199, type: !233, isLocal: false, isDefinition: true, scopeLine: 200, isOptimized: true, unit: !2, retainedNodes: !4)
!233 = !DISubroutineType(types: !234)
!234 = !{null}
!235 = !DILocalVariable(name: "buf", scope: !236, file: !3, line: 54, type: !238)
!236 = distinct !DISubprogram(name: "fpconv_update_locale", scope: !3, file: !3, line: 52, type: !233, isLocal: true, isDefinition: true, scopeLine: 53, isOptimized: true, unit: !2, retainedNodes: !237)
!237 = !{!235}
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 8)
!241 = !DILocation(line: 54, column: 10, scope: !236, inlinedAt: !242)
!242 = distinct !DILocation(line: 201, column: 5, scope: !232)
!243 = !DILocation(line: 54, column: 5, scope: !236, inlinedAt: !242)
!244 = !DILocation(line: 56, column: 5, scope: !236, inlinedAt: !242)
!245 = !DILocation(line: 60, column: 9, scope: !246, inlinedAt: !242)
!246 = distinct !DILexicalBlock(scope: !236, file: !3, line: 60, column: 9)
!247 = !DILocation(line: 60, column: 16, scope: !246, inlinedAt: !242)
!248 = !DILocation(line: 60, column: 23, scope: !246, inlinedAt: !242)
!249 = !DILocation(line: 60, column: 26, scope: !246, inlinedAt: !242)
!250 = !DILocation(line: 60, column: 33, scope: !246, inlinedAt: !242)
!251 = !DILocation(line: 60, column: 40, scope: !246, inlinedAt: !242)
!252 = !DILocation(line: 60, column: 43, scope: !246, inlinedAt: !242)
!253 = !DILocation(line: 60, column: 50, scope: !246, inlinedAt: !242)
!254 = !DILocation(line: 60, column: 9, scope: !236, inlinedAt: !242)
!255 = !DILocation(line: 61, column: 17, scope: !256, inlinedAt: !242)
!256 = distinct !DILexicalBlock(scope: !246, file: !3, line: 60, column: 56)
!257 = !DILocation(line: 61, column: 9, scope: !256, inlinedAt: !242)
!258 = !DILocation(line: 62, column: 9, scope: !256, inlinedAt: !242)
!259 = !DILocation(line: 65, column: 28, scope: !236, inlinedAt: !242)
!260 = !DILocation(line: 65, column: 26, scope: !236, inlinedAt: !242)
!261 = !DILocation(line: 66, column: 1, scope: !236, inlinedAt: !242)
!262 = !DILocation(line: 202, column: 1, scope: !232)
