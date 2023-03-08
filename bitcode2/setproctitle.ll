; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/setproctitle.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/setproctitle.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@environ = external dso_local local_unnamed_addr global i8**, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@spt_clearenv.tmp = internal unnamed_addr global i8** null, align 8, !dbg !0
@__A_VARIABLE = internal global i32 0
@SPT.0 = internal unnamed_addr global i8* null, align 8, !dbg !26
@SPT.1 = internal unnamed_addr global i8* null, align 8, !dbg !27
@SPT.2 = internal unnamed_addr global i8* null, align 8, !dbg !28
@SPT.3 = internal unnamed_addr global i8* null, align 8, !dbg !29
@SPT.4 = internal unnamed_addr global i1 false, align 8, !dbg !30

; Function Attrs: noredzone nounwind
define dso_local void @spt_init(i32, i8** nocapture) local_unnamed_addr #0 !dbg !35 {
  %3 = load i8**, i8*** @environ, align 8, !dbg !50, !tbaa !51
  %4 = load i8*, i8** %1, align 8, !dbg !56, !tbaa !51
  %5 = icmp eq i8* %4, null, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %5, label %123, label %6, !dbg !60

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @strlen(i8* nonnull %4) #5, !dbg !61
  %8 = getelementptr inbounds i8, i8* %4, i64 %7, !dbg !62
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  %10 = sext i32 %0 to i64, !dbg !67
  br label %11, !dbg !67

; <label>:11:                                     ; preds = %30, %6
  %12 = phi i64 [ %32, %30 ], [ 0, %6 ], !dbg !69
  %13 = phi i8* [ %31, %30 ], [ %9, %6 ], !dbg !69
  %14 = icmp slt i64 %12, %10, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %14, label %19, label %15, !dbg !72

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %16 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !74
  %17 = load i8*, i8** %16, align 8, !dbg !74, !tbaa !51
  %18 = icmp eq i8* %17, null, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %18, label %33, label %23, !dbg !75

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds i8*, i8** %1, i64 %12
  %21 = load i8*, i8** %20, align 8, !dbg !79, !tbaa !51
  %22 = icmp eq i8* %21, null, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %22, label %30, label %23, !dbg !80

; <label>:23:                                     ; preds = %15, %19
  %24 = phi i8* [ %21, %19 ], [ %17, %15 ]
  %25 = icmp ult i8* %24, %13, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %25, label %30, label %26, !dbg !82

; <label>:26:                                     ; preds = %23
  %27 = tail call i64 @strlen(i8* nonnull %24) #5, !dbg !83
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !84
  %29 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br label %30, !dbg !86

; <label>:30:                                     ; preds = %19, %23, %26
  %31 = phi i8* [ %13, %23 ], [ %29, %26 ], [ %13, %19 ], !dbg !87
  %32 = add nuw i64 %12, 1, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %11, !dbg !89, !llvm.loop !90

; <label>:33:                                     ; preds = %15
  %34 = load i8*, i8** %3, align 8, !dbg !92, !tbaa !51
  %35 = icmp eq i8* %34, null, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %35, label %51, label %36, !dbg !95

; <label>:36:                                     ; preds = %33, %45
  %37 = phi i64 [ %47, %45 ], [ 0, %33 ]
  %38 = phi i8* [ %49, %45 ], [ %34, %33 ]
  %39 = phi i8* [ %46, %45 ], [ %13, %33 ]
  %40 = icmp ult i8* %38, %39, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %40, label %45, label %41, !dbg !99

; <label>:41:                                     ; preds = %36
  %42 = tail call i64 @strlen(i8* nonnull %38) #5, !dbg !100
  %43 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !101
  %44 = getelementptr inbounds i8, i8* %43, i64 %42, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br label %45, !dbg !103

; <label>:45:                                     ; preds = %36, %41
  %46 = phi i8* [ %39, %36 ], [ %44, %41 ], !dbg !104
  %47 = add nuw i64 %37, 1, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  %48 = getelementptr inbounds i8*, i8** %3, i64 %47, !dbg !92
  %49 = load i8*, i8** %48, align 8, !dbg !92, !tbaa !51
  %50 = icmp eq i8* %49, null, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %50, label %51, label %36, !dbg !95, !llvm.loop !107

; <label>:51:                                     ; preds = %45, %33
  %52 = phi i8* [ %13, %33 ], [ %46, %45 ], !dbg !69
  %53 = load i8*, i8** %1, align 8, !dbg !109, !tbaa !51
  %54 = tail call i8* @strdup(i8* %53) #5, !dbg !111
  store i8* %54, i8** @SPT.0, align 8, !dbg !112, !tbaa !113
  %55 = icmp eq i8* %54, null, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %55, label %120, label %56, !dbg !117

; <label>:56:                                     ; preds = %51
  %57 = load i8**, i8*** @environ, align 8, !dbg !129, !tbaa !51
  %58 = icmp eq i8** %57, %3, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %58, label %59, label %94, !dbg !132

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @malloc(i64 8) #5, !dbg !133
  store i8* %60, i8** bitcast (i8*** @spt_clearenv.tmp to i8**), align 8, !dbg !137, !tbaa !51
  %61 = icmp eq i8* %60, null, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %61, label %65, label %62, !dbg !138

; <label>:62:                                     ; preds = %59
  %63 = ptrtoint i8* %60 to i64, !dbg !138
  %64 = bitcast i8* %60 to i8**, !dbg !133
  store i8* null, i8** %64, align 8, !dbg !139, !tbaa !51
  store i64 %63, i64* bitcast (i8*** @environ to i64*), align 8, !dbg !140, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br label %69, !dbg !143

; <label>:65:                                     ; preds = %59
  %66 = tail call i32* @__errno() #5, !dbg !144
  %67 = load i32, i32* %66, align 4, !dbg !144, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  %68 = icmp eq i32 %67, 0, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %68, label %69, label %93, !dbg !143

; <label>:69:                                     ; preds = %65, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  %70 = load i8*, i8** %3, align 8, !dbg !152, !tbaa !51
  %71 = icmp eq i8* %70, null, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %71, label %94, label %72, !dbg !154

; <label>:72:                                     ; preds = %69, %88
  %73 = phi i64 [ %89, %88 ], [ 0, %69 ]
  %74 = phi i8* [ %91, %88 ], [ %70, %69 ]
  %75 = phi i8** [ %90, %88 ], [ %3, %69 ]
  %76 = tail call i8* @strchr(i8* nonnull %74, i32 61) #5, !dbg !155
  %77 = icmp eq i8* %76, null, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %77, label %88, label %78, !dbg !160

; <label>:78:                                     ; preds = %72
  store i8 0, i8* %76, align 1, !dbg !161, !tbaa !162
  %79 = load i8*, i8** %75, align 8, !dbg !163, !tbaa !51
  %80 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !164
  %81 = tail call i32 @setenv(i8* %79, i8* nonnull %80, i32 1) #5, !dbg !165
  %82 = icmp eq i32 %81, 0, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br i1 %82, label %83, label %84, !dbg !167

; <label>:83:                                     ; preds = %78
  store i8 61, i8* %76, align 1, !dbg !168, !tbaa !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br label %88, !dbg !169

; <label>:84:                                     ; preds = %78
  %85 = tail call i32* @__errno() #5, !dbg !170
  %86 = load i32, i32* %85, align 4, !dbg !170, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  store i8 61, i8* %76, align 1, !dbg !168, !tbaa !162
  %87 = icmp eq i32 %86, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %87, label %88, label %93, !dbg !169

; <label>:88:                                     ; preds = %84, %83, %72
  %89 = add nuw i64 %73, 1, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !152
  %91 = load i8*, i8** %90, align 8, !dbg !152, !tbaa !51
  %92 = icmp eq i8* %91, null, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %92, label %94, label %72, !dbg !154, !llvm.loop !175

; <label>:93:                                     ; preds = %84, %65
  store i8** %3, i8*** @environ, align 8, !dbg !178, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br label %122

; <label>:94:                                     ; preds = %88, %69, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br label %95, !dbg !196

; <label>:95:                                     ; preds = %113, %94
  %96 = phi i64 [ %114, %113 ], [ 1, %94 ], !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  %97 = icmp slt i64 %96, %10, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %97, label %103, label %98, !dbg !202

; <label>:98:                                     ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  %99 = getelementptr inbounds i8*, i8** %1, i64 %96, !dbg !204
  %100 = load i8*, i8** %99, align 8, !dbg !204, !tbaa !51
  %101 = icmp eq i8* %100, null, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %101, label %102, label %107, !dbg !205

; <label>:102:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br label %119, !dbg !210

; <label>:103:                                    ; preds = %95
  %104 = getelementptr inbounds i8*, i8** %1, i64 %96
  %105 = load i8*, i8** %104, align 8, !dbg !211, !tbaa !51
  %106 = icmp eq i8* %105, null, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  br i1 %106, label %113, label %107, !dbg !213

; <label>:107:                                    ; preds = %103, %98
  %108 = phi i8* [ %105, %103 ], [ %100, %98 ]
  %109 = phi i8** [ %104, %103 ], [ %99, %98 ]
  %110 = tail call i8* @strdup(i8* nonnull %108) #5, !dbg !214
  %111 = icmp eq i8* %110, null, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %111, label %115, label %112, !dbg !218

; <label>:112:                                    ; preds = %107
  store i8* %110, i8** %109, align 8, !dbg !219, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %113, !dbg !220

; <label>:113:                                    ; preds = %112, %103
  %114 = add nuw i64 %96, 1, !dbg !221
  br label %95, !dbg !222, !llvm.loop !223

; <label>:115:                                    ; preds = %107
  %116 = tail call i32* @__errno() #5, !dbg !226
  %117 = load i32, i32* %116, align 4, !dbg !226, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %118 = icmp eq i32 %117, 0, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %118, label %119, label %123, !dbg !210

; <label>:119:                                    ; preds = %102, %115
  store i8* %8, i8** @SPT.3, align 8, !dbg !229, !tbaa !230
  store i8* %4, i8** @SPT.1, align 8, !dbg !231, !tbaa !232
  store i8* %52, i8** @SPT.2, align 8, !dbg !233, !tbaa !234
  br label %123, !dbg !235

; <label>:120:                                    ; preds = %51
  %121 = tail call i32* @__errno() #5, !dbg !236
  br label %122, !dbg !237

; <label>:122:                                    ; preds = %120, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br label %123, !dbg !238

; <label>:123:                                    ; preds = %115, %122, %2, %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  ret void, !dbg !238
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @setproctitle(i8*, ...) local_unnamed_addr #0 !dbg !240 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !270
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !272
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !272
  %6 = load i8*, i8** @SPT.1, align 8, !dbg !274, !tbaa !232
  %7 = icmp eq i8* %6, null, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %7, label %57, label %8, !dbg !277

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i8* %0, null, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %9, label %13, label %10, !dbg !280

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !281
  call void @llvm.va_start(i8* nonnull %5), !dbg !281
  %12 = call i32 @vsnprintf(i8* nonnull %4, i64 256, i8* nonnull %0, %struct.__va_list_tag* nonnull %11) #5, !dbg !283
  call void @llvm.va_end(i8* nonnull %5), !dbg !285
  br label %16, !dbg !286

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** @SPT.0, align 8, !dbg !287, !tbaa !113
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14) #5, !dbg !289
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ], !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = icmp slt i32 %17, 1, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %18, label %19, label %21, !dbg !293

; <label>:19:                                     ; preds = %16
  %20 = call i32* @__errno() #5, !dbg !294
  br label %57, !dbg !297

; <label>:21:                                     ; preds = %16
  %22 = load i1, i1* @SPT.4, align 8
  %23 = load i8*, i8** @SPT.1, align 8, !dbg !298, !tbaa !232
  %24 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !298, !tbaa !234
  %25 = ptrtoint i8* %23 to i64, !dbg !298
  %26 = sub i64 %24, %25, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %22, label %29, label %27, !dbg !301

; <label>:27:                                     ; preds = %21
  %28 = call i8* @memset(i8* %23, i32 0, i64 %26) #5, !dbg !302
  store i1 true, i1* @SPT.4, align 8
  br label %33, !dbg !303

; <label>:29:                                     ; preds = %21
  %30 = icmp ult i64 %26, 256, !dbg !319
  %31 = select i1 %30, i64 %26, i64 256, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  %32 = call i8* @memset(i8* %23, i32 0, i64 %31) #5, !dbg !321
  br label %33

; <label>:33:                                     ; preds = %29, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = sext i32 %17 to i64, !dbg !322
  %35 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !323, !tbaa !234
  %36 = load i64, i64* bitcast (i8** @SPT.1 to i64*), align 8, !dbg !324, !tbaa !232
  %37 = sub i64 %35, %36, !dbg !325
  %38 = icmp ult i64 %37, 256, !dbg !329
  %39 = select i1 %38, i64 %37, i64 256, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  %40 = add nsw i64 %39, -1, !dbg !331
  %41 = icmp ugt i64 %40, %34, !dbg !335
  %42 = select i1 %41, i64 %34, i64 %40, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %43 = inttoptr i64 %36 to i8*, !dbg !337
  %44 = call i8* @memcpy(i8* %43, i8* nonnull %4, i64 %42) #5, !dbg !338
  %45 = load i8*, i8** @SPT.1, align 8, !dbg !339, !tbaa !232
  %46 = getelementptr inbounds i8, i8* %45, i64 %42, !dbg !340
  %47 = load i8*, i8** @SPT.3, align 8, !dbg !342, !tbaa !230
  %48 = icmp ult i8* %46, %47, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %48, label %49, label %50, !dbg !345

; <label>:49:                                     ; preds = %33
  store i8 46, i8* %47, align 1, !dbg !346, !tbaa !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br label %57, !dbg !348

; <label>:50:                                     ; preds = %33
  %51 = icmp eq i8* %46, %47, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %51, label %52, label %57, !dbg !351

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !352
  %54 = load i8*, i8** @SPT.2, align 8, !dbg !353, !tbaa !234
  %55 = icmp ult i8* %53, %54, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %55, label %56, label %57, !dbg !355

; <label>:56:                                     ; preds = %52
  store i8 32, i8* %46, align 1, !dbg !356, !tbaa !162
  store i8 0, i8* %53, align 1, !dbg !358, !tbaa !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br label %57, !dbg !359

; <label>:57:                                     ; preds = %49, %56, %52, %50, %1, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  ret void, !dbg !297
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @setenv(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !3, line: 90, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "spt_clearenv", scope: !3, file: !3, line: 83, type: !4, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/setproctitle.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !9)
!8 = !{}
!9 = !{!10, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "SPT", scope: !7, file: !3, line: 67, type: !12, isLocal: true, isDefinition: true)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 55, size: 320, elements: !13)
!13 = !{!14, !18, !20, !21, !22, !24}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "arg0", scope: !12, file: !3, line: 57, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !12, file: !3, line: 60, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !12, file: !3, line: 60, baseType: !19, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nul", scope: !12, file: !3, line: 63, baseType: !19, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !12, file: !3, line: 65, baseType: !23, size: 8, offset: 256)
!23 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !12, file: !3, line: 66, baseType: !6, size: 32, offset: 288)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!26 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!27 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!28 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!29 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_LLVM_fragment, 192, 64))
!30 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 8))
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!35 = distinct !DISubprogram(name: "spt_init", scope: !3, file: !3, line: 152, type: !36, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !6, !25}
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DILocalVariable(name: "argc", arg: 1, scope: !35, file: !3, line: 152, type: !6)
!40 = !DILocalVariable(name: "argv", arg: 2, scope: !35, file: !3, line: 152, type: !25)
!41 = !DILocalVariable(name: "envp", scope: !35, file: !3, line: 153, type: !25)
!42 = !DILocalVariable(name: "base", scope: !35, file: !3, line: 154, type: !19)
!43 = !DILocalVariable(name: "end", scope: !35, file: !3, line: 154, type: !19)
!44 = !DILocalVariable(name: "nul", scope: !35, file: !3, line: 154, type: !19)
!45 = !DILocalVariable(name: "tmp", scope: !35, file: !3, line: 154, type: !19)
!46 = !DILocalVariable(name: "i", scope: !35, file: !3, line: 155, type: !6)
!47 = !DILocalVariable(name: "error", scope: !35, file: !3, line: 155, type: !6)
!48 = !DILocation(line: 152, column: 19, scope: !35)
!49 = !DILocation(line: 152, column: 31, scope: !35)
!50 = !DILocation(line: 153, column: 23, scope: !35)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 153, column: 16, scope: !35)
!56 = !DILocation(line: 157, column: 15, scope: !57)
!57 = distinct !DILexicalBlock(scope: !35, file: !3, line: 157, column: 6)
!58 = !DILocation(line: 154, column: 8, scope: !35)
!59 = !DILocation(line: 157, column: 13, scope: !57)
!60 = !DILocation(line: 157, column: 6, scope: !35)
!61 = !DILocation(line: 160, column: 14, scope: !35)
!62 = !DILocation(line: 160, column: 9, scope: !35)
!63 = !DILocation(line: 154, column: 21, scope: !35)
!64 = !DILocation(line: 161, column: 12, scope: !35)
!65 = !DILocation(line: 154, column: 15, scope: !35)
!66 = !DILocation(line: 155, column: 6, scope: !35)
!67 = !DILocation(line: 163, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !35, file: !3, line: 163, column: 2)
!69 = !DILocation(line: 161, column: 6, scope: !35)
!70 = !DILocation(line: 163, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 163, column: 2)
!72 = !DILocation(line: 163, column: 23, scope: !71)
!73 = !DILocation(line: 163, column: 37, scope: !71)
!74 = !DILocation(line: 163, column: 40, scope: !71)
!75 = !DILocation(line: 163, column: 2, scope: !68)
!76 = !DILocation(line: 0, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 164, column: 7)
!78 = distinct !DILexicalBlock(scope: !71, file: !3, line: 163, column: 55)
!79 = !DILocation(line: 164, column: 8, scope: !77)
!80 = !DILocation(line: 164, column: 16, scope: !77)
!81 = !DILocation(line: 164, column: 27, scope: !77)
!82 = !DILocation(line: 164, column: 7, scope: !78)
!83 = !DILocation(line: 167, column: 19, scope: !78)
!84 = !DILocation(line: 167, column: 17, scope: !78)
!85 = !DILocation(line: 167, column: 35, scope: !78)
!86 = !DILocation(line: 168, column: 2, scope: !78)
!87 = !DILocation(line: 0, scope: !35)
!88 = !DILocation(line: 163, column: 51, scope: !71)
!89 = !DILocation(line: 163, column: 2, scope: !71)
!90 = distinct !{!90, !75, !91}
!91 = !DILocation(line: 168, column: 2, scope: !68)
!92 = !DILocation(line: 170, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 170, column: 2)
!94 = distinct !DILexicalBlock(scope: !35, file: !3, line: 170, column: 2)
!95 = !DILocation(line: 170, column: 2, scope: !94)
!96 = !DILocation(line: 171, column: 15, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 171, column: 7)
!98 = distinct !DILexicalBlock(scope: !93, file: !3, line: 170, column: 28)
!99 = !DILocation(line: 171, column: 7, scope: !98)
!100 = !DILocation(line: 174, column: 19, scope: !98)
!101 = !DILocation(line: 174, column: 17, scope: !98)
!102 = !DILocation(line: 174, column: 35, scope: !98)
!103 = !DILocation(line: 175, column: 2, scope: !98)
!104 = !DILocation(line: 0, scope: !98)
!105 = !DILocation(line: 170, column: 24, scope: !93)
!106 = !DILocation(line: 170, column: 2, scope: !93)
!107 = distinct !{!107, !95, !108}
!108 = !DILocation(line: 175, column: 2, scope: !94)
!109 = !DILocation(line: 177, column: 26, scope: !110)
!110 = distinct !DILexicalBlock(scope: !35, file: !3, line: 177, column: 6)
!111 = !DILocation(line: 177, column: 19, scope: !110)
!112 = !DILocation(line: 177, column: 17, scope: !110)
!113 = !{!114, !52, i64 0}
!114 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !115, i64 32, !116, i64 36}
!115 = !{!"_Bool", !53, i64 0}
!116 = !{!"int", !53, i64 0}
!117 = !DILocation(line: 177, column: 6, scope: !35)
!118 = !DILocalVariable(name: "oldenv", arg: 1, scope: !119, file: !3, line: 103, type: !25)
!119 = distinct !DISubprogram(name: "spt_copyenv", scope: !3, file: !3, line: 103, type: !120, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !25}
!122 = !{!118, !123, !124, !125}
!123 = !DILocalVariable(name: "eq", scope: !119, file: !3, line: 105, type: !19)
!124 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 106, type: !6)
!125 = !DILocalVariable(name: "error", scope: !119, file: !3, line: 106, type: !6)
!126 = !DILocation(line: 103, column: 30, scope: !119, inlinedAt: !127)
!127 = distinct !DILocation(line: 198, column: 15, scope: !128)
!128 = distinct !DILexicalBlock(scope: !35, file: !3, line: 198, column: 6)
!129 = !DILocation(line: 108, column: 6, scope: !130, inlinedAt: !127)
!130 = distinct !DILexicalBlock(scope: !119, file: !3, line: 108, column: 6)
!131 = !DILocation(line: 108, column: 14, scope: !130, inlinedAt: !127)
!132 = !DILocation(line: 108, column: 6, scope: !119, inlinedAt: !127)
!133 = !DILocation(line: 92, column: 14, scope: !134, inlinedAt: !135)
!134 = distinct !DILexicalBlock(scope: !2, file: !3, line: 92, column: 6)
!135 = distinct !DILocation(line: 111, column: 15, scope: !136, inlinedAt: !127)
!136 = distinct !DILexicalBlock(scope: !119, file: !3, line: 111, column: 6)
!137 = !DILocation(line: 92, column: 12, scope: !134, inlinedAt: !135)
!138 = !DILocation(line: 92, column: 6, scope: !2, inlinedAt: !135)
!139 = !DILocation(line: 95, column: 10, scope: !2, inlinedAt: !135)
!140 = !DILocation(line: 96, column: 10, scope: !2, inlinedAt: !135)
!141 = !DILocation(line: 98, column: 2, scope: !2, inlinedAt: !135)
!142 = !DILocation(line: 100, column: 1, scope: !2, inlinedAt: !135)
!143 = !DILocation(line: 111, column: 6, scope: !119, inlinedAt: !127)
!144 = !DILocation(line: 93, column: 10, scope: !134, inlinedAt: !135)
!145 = !{!116, !116, i64 0}
!146 = !DILocation(line: 93, column: 3, scope: !134, inlinedAt: !135)
!147 = !DILocation(line: 106, column: 9, scope: !119, inlinedAt: !127)
!148 = !DILocation(line: 111, column: 13, scope: !136, inlinedAt: !127)
!149 = !DILocation(line: 106, column: 6, scope: !119, inlinedAt: !127)
!150 = !DILocation(line: 114, column: 7, scope: !151, inlinedAt: !127)
!151 = distinct !DILexicalBlock(scope: !119, file: !3, line: 114, column: 2)
!152 = !DILocation(line: 114, column: 14, scope: !153, inlinedAt: !127)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 114, column: 2)
!154 = !DILocation(line: 114, column: 2, scope: !151, inlinedAt: !127)
!155 = !DILocation(line: 115, column: 14, scope: !156, inlinedAt: !127)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 115, column: 7)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 114, column: 30)
!158 = !DILocation(line: 105, column: 8, scope: !119, inlinedAt: !127)
!159 = !DILocation(line: 115, column: 12, scope: !156, inlinedAt: !127)
!160 = !DILocation(line: 115, column: 7, scope: !157, inlinedAt: !127)
!161 = !DILocation(line: 118, column: 7, scope: !157, inlinedAt: !127)
!162 = !{!53, !53, i64 0}
!163 = !DILocation(line: 119, column: 24, scope: !157, inlinedAt: !127)
!164 = !DILocation(line: 119, column: 38, scope: !157, inlinedAt: !127)
!165 = !DILocation(line: 119, column: 17, scope: !157, inlinedAt: !127)
!166 = !DILocation(line: 119, column: 14, scope: !157, inlinedAt: !127)
!167 = !DILocation(line: 119, column: 11, scope: !157, inlinedAt: !127)
!168 = !DILocation(line: 120, column: 7, scope: !157, inlinedAt: !127)
!169 = !DILocation(line: 122, column: 7, scope: !157, inlinedAt: !127)
!170 = !DILocation(line: 119, column: 48, scope: !157, inlinedAt: !127)
!171 = !DILocation(line: 122, column: 7, scope: !172, inlinedAt: !127)
!172 = distinct !DILexicalBlock(scope: !157, file: !3, line: 122, column: 7)
!173 = !DILocation(line: 114, column: 26, scope: !153, inlinedAt: !127)
!174 = !DILocation(line: 114, column: 2, scope: !153, inlinedAt: !127)
!175 = distinct !{!175, !176, !177}
!176 = !DILocation(line: 114, column: 2, scope: !151)
!177 = !DILocation(line: 124, column: 2, scope: !151)
!178 = !DILocation(line: 128, column: 10, scope: !119, inlinedAt: !127)
!179 = !DILocation(line: 130, column: 2, scope: !119, inlinedAt: !127)
!180 = !DILocation(line: 131, column: 1, scope: !119, inlinedAt: !127)
!181 = !DILocation(line: 0, scope: !128)
!182 = !DILocation(line: 198, column: 6, scope: !35)
!183 = !DILocalVariable(name: "argc", arg: 1, scope: !184, file: !3, line: 134, type: !6)
!184 = distinct !DISubprogram(name: "spt_copyargs", scope: !3, file: !3, line: 134, type: !185, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!6, !6, !25}
!187 = !{!183, !188, !189, !190}
!188 = !DILocalVariable(name: "argv", arg: 2, scope: !184, file: !3, line: 134, type: !25)
!189 = !DILocalVariable(name: "tmp", scope: !184, file: !3, line: 135, type: !19)
!190 = !DILocalVariable(name: "i", scope: !184, file: !3, line: 136, type: !6)
!191 = !DILocation(line: 134, column: 29, scope: !184, inlinedAt: !192)
!192 = distinct !DILocation(line: 201, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !35, file: !3, line: 201, column: 6)
!194 = !DILocation(line: 134, column: 41, scope: !184, inlinedAt: !192)
!195 = !DILocation(line: 136, column: 6, scope: !184, inlinedAt: !192)
!196 = !DILocation(line: 138, column: 7, scope: !197, inlinedAt: !192)
!197 = distinct !DILexicalBlock(scope: !184, file: !3, line: 138, column: 2)
!198 = !DILocation(line: 0, scope: !199, inlinedAt: !192)
!199 = distinct !DILexicalBlock(scope: !197, file: !3, line: 138, column: 2)
!200 = !DILocation(line: 0, scope: !193)
!201 = !DILocation(line: 138, column: 16, scope: !199, inlinedAt: !192)
!202 = !DILocation(line: 138, column: 23, scope: !199, inlinedAt: !192)
!203 = !DILocation(line: 138, column: 37, scope: !199, inlinedAt: !192)
!204 = !DILocation(line: 138, column: 40, scope: !199, inlinedAt: !192)
!205 = !DILocation(line: 138, column: 2, scope: !197, inlinedAt: !192)
!206 = !DILocation(line: 0, scope: !207, inlinedAt: !192)
!207 = distinct !DILexicalBlock(scope: !199, file: !3, line: 138, column: 55)
!208 = !DILocation(line: 149, column: 1, scope: !184, inlinedAt: !192)
!209 = !DILocation(line: 155, column: 9, scope: !35)
!210 = !DILocation(line: 201, column: 6, scope: !35)
!211 = !DILocation(line: 139, column: 8, scope: !212, inlinedAt: !192)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 139, column: 7)
!213 = !DILocation(line: 139, column: 7, scope: !207, inlinedAt: !192)
!214 = !DILocation(line: 142, column: 15, scope: !215, inlinedAt: !192)
!215 = distinct !DILexicalBlock(scope: !207, file: !3, line: 142, column: 7)
!216 = !DILocation(line: 135, column: 8, scope: !184, inlinedAt: !192)
!217 = !DILocation(line: 142, column: 13, scope: !215, inlinedAt: !192)
!218 = !DILocation(line: 142, column: 7, scope: !207, inlinedAt: !192)
!219 = !DILocation(line: 145, column: 11, scope: !207, inlinedAt: !192)
!220 = !DILocation(line: 146, column: 2, scope: !207, inlinedAt: !192)
!221 = !DILocation(line: 138, column: 51, scope: !199, inlinedAt: !192)
!222 = !DILocation(line: 138, column: 2, scope: !199, inlinedAt: !192)
!223 = distinct !{!223, !224, !225}
!224 = !DILocation(line: 138, column: 2, scope: !197)
!225 = !DILocation(line: 146, column: 2, scope: !197)
!226 = !DILocation(line: 143, column: 11, scope: !215, inlinedAt: !192)
!227 = !DILocation(line: 143, column: 4, scope: !215, inlinedAt: !192)
!228 = !DILocation(line: 201, column: 13, scope: !193)
!229 = !DILocation(line: 204, column: 11, scope: !35)
!230 = !{!114, !52, i64 24}
!231 = !DILocation(line: 205, column: 11, scope: !35)
!232 = !{!114, !52, i64 8}
!233 = !DILocation(line: 206, column: 11, scope: !35)
!234 = !{!114, !52, i64 16}
!235 = !DILocation(line: 208, column: 2, scope: !35)
!236 = !DILocation(line: 210, column: 10, scope: !35)
!237 = !DILocation(line: 210, column: 2, scope: !35)
!238 = !DILocation(line: 213, column: 1, scope: !35)
!239 = !DILocation(line: 0, scope: !57)
!240 = distinct !DISubprogram(name: "setproctitle", scope: !3, file: !3, line: 220, type: !241, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !15, null}
!243 = !{!244, !245, !249, !266, !267, !268}
!244 = !DILocalVariable(name: "fmt", arg: 1, scope: !240, file: !3, line: 220, type: !15)
!245 = !DILocalVariable(name: "buf", scope: !240, file: !3, line: 221, type: !246)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 256)
!249 = !DILocalVariable(name: "ap", scope: !240, file: !3, line: 222, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !251, line: 46, baseType: !252)
!251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !253, line: 51, baseType: !254)
!253 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 222, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 192, elements: !264)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 222, size: 192, elements: !257)
!257 = !{!258, !260, !261, !263}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !256, file: !3, line: 222, baseType: !259, size: 32)
!259 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !256, file: !3, line: 222, baseType: !259, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !256, file: !3, line: 222, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !256, file: !3, line: 222, baseType: !262, size: 64, offset: 128)
!264 = !{!265}
!265 = !DISubrange(count: 1)
!266 = !DILocalVariable(name: "nul", scope: !240, file: !3, line: 223, type: !19)
!267 = !DILocalVariable(name: "len", scope: !240, file: !3, line: 224, type: !6)
!268 = !DILocalVariable(name: "error", scope: !240, file: !3, line: 224, type: !6)
!269 = !DILocation(line: 220, column: 31, scope: !240)
!270 = !DILocation(line: 221, column: 2, scope: !240)
!271 = !DILocation(line: 221, column: 7, scope: !240)
!272 = !DILocation(line: 222, column: 2, scope: !240)
!273 = !DILocation(line: 222, column: 10, scope: !240)
!274 = !DILocation(line: 226, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !240, file: !3, line: 226, column: 6)
!276 = !DILocation(line: 226, column: 7, scope: !275)
!277 = !DILocation(line: 226, column: 6, scope: !240)
!278 = !DILocation(line: 229, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !240, file: !3, line: 229, column: 6)
!280 = !DILocation(line: 229, column: 6, scope: !240)
!281 = !DILocation(line: 230, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 229, column: 11)
!283 = !DILocation(line: 231, column: 9, scope: !282)
!284 = !DILocation(line: 224, column: 6, scope: !240)
!285 = !DILocation(line: 232, column: 3, scope: !282)
!286 = !DILocation(line: 233, column: 2, scope: !282)
!287 = !DILocation(line: 234, column: 45, scope: !288)
!288 = distinct !DILexicalBlock(scope: !279, file: !3, line: 233, column: 9)
!289 = !DILocation(line: 234, column: 9, scope: !288)
!290 = !DILocation(line: 0, scope: !288)
!291 = !DILocation(line: 237, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !240, file: !3, line: 237, column: 6)
!293 = !DILocation(line: 237, column: 6, scope: !240)
!294 = !DILocation(line: 238, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 238, column: 3)
!296 = !DILocation(line: 224, column: 11, scope: !240)
!297 = !DILocation(line: 261, column: 1, scope: !240)
!298 = !DILocation(line: 0, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 240, column: 18)
!300 = distinct !DILexicalBlock(scope: !240, file: !3, line: 240, column: 6)
!301 = !DILocation(line: 240, column: 6, scope: !240)
!302 = !DILocation(line: 241, column: 3, scope: !299)
!303 = !DILocation(line: 243, column: 2, scope: !299)
!304 = !DILocalVariable(name: "a", arg: 1, scope: !305, file: !3, line: 74, type: !308)
!305 = distinct !DISubprogram(name: "spt_min", scope: !3, file: !3, line: 74, type: !306, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !313)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !308, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !309, line: 40, baseType: !310)
!309 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !311, line: 129, baseType: !312)
!311 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!312 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!313 = !{!304, !314}
!314 = !DILocalVariable(name: "b", arg: 2, scope: !305, file: !3, line: 74, type: !308)
!315 = !DILocation(line: 74, column: 37, scope: !305, inlinedAt: !316)
!316 = distinct !DILocation(line: 244, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !300, file: !3, line: 243, column: 9)
!318 = !DILocation(line: 74, column: 47, scope: !305, inlinedAt: !316)
!319 = !DILocation(line: 75, column: 9, scope: !305, inlinedAt: !316)
!320 = !DILocation(line: 75, column: 2, scope: !305, inlinedAt: !316)
!321 = !DILocation(line: 244, column: 3, scope: !317)
!322 = !DILocation(line: 247, column: 16, scope: !240)
!323 = !DILocation(line: 247, column: 45, scope: !240)
!324 = !DILocation(line: 247, column: 55, scope: !240)
!325 = !DILocation(line: 247, column: 49, scope: !240)
!326 = !DILocation(line: 74, column: 37, scope: !305, inlinedAt: !327)
!327 = distinct !DILocation(line: 247, column: 21, scope: !240)
!328 = !DILocation(line: 74, column: 47, scope: !305, inlinedAt: !327)
!329 = !DILocation(line: 75, column: 9, scope: !305, inlinedAt: !327)
!330 = !DILocation(line: 75, column: 2, scope: !305, inlinedAt: !327)
!331 = !DILocation(line: 247, column: 61, scope: !240)
!332 = !DILocation(line: 74, column: 37, scope: !305, inlinedAt: !333)
!333 = distinct !DILocation(line: 247, column: 8, scope: !240)
!334 = !DILocation(line: 74, column: 47, scope: !305, inlinedAt: !333)
!335 = !DILocation(line: 75, column: 9, scope: !305, inlinedAt: !333)
!336 = !DILocation(line: 75, column: 2, scope: !305, inlinedAt: !333)
!337 = !DILocation(line: 248, column: 13, scope: !240)
!338 = !DILocation(line: 248, column: 2, scope: !240)
!339 = !DILocation(line: 249, column: 13, scope: !240)
!340 = !DILocation(line: 249, column: 9, scope: !240)
!341 = !DILocation(line: 223, column: 8, scope: !240)
!342 = !DILocation(line: 251, column: 16, scope: !343)
!343 = distinct !DILexicalBlock(scope: !240, file: !3, line: 251, column: 6)
!344 = !DILocation(line: 251, column: 10, scope: !343)
!345 = !DILocation(line: 251, column: 6, scope: !240)
!346 = !DILocation(line: 252, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 251, column: 21)
!348 = !DILocation(line: 253, column: 2, scope: !347)
!349 = !DILocation(line: 253, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !3, line: 253, column: 13)
!351 = !DILocation(line: 253, column: 28, scope: !350)
!352 = !DILocation(line: 253, column: 32, scope: !350)
!353 = !DILocation(line: 253, column: 45, scope: !350)
!354 = !DILocation(line: 253, column: 39, scope: !350)
!355 = !DILocation(line: 253, column: 13, scope: !343)
!356 = !DILocation(line: 254, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !350, file: !3, line: 253, column: 50)
!358 = !DILocation(line: 255, column: 10, scope: !357)
!359 = !DILocation(line: 256, column: 2, scope: !357)
!360 = !DILocation(line: 0, scope: !275)
