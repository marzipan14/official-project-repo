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
  br i1 %5, label %119, label %6, !dbg !60

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @strlen(i8* nonnull %4) #5, !dbg !61
  %8 = getelementptr inbounds i8, i8* %4, i64 %7, !dbg !62
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !64
  %10 = sext i32 %0 to i64, !dbg !67
  %11 = icmp slt i32 %0, 1, !dbg !69
  %12 = load i8*, i8** %1, align 8, !dbg !71, !tbaa !51
  %13 = icmp eq i8* %12, null, !dbg !72
  %14 = and i1 %11, %13, !dbg !73
  br i1 %14, label %15, label %19, !dbg !73

; <label>:15:                                     ; preds = %30, %6
  %16 = phi i8* [ %9, %6 ], [ %31, %30 ], !dbg !74
  %17 = load i8*, i8** %3, align 8, !dbg !75, !tbaa !51
  %18 = icmp eq i8* %17, null, !dbg !78
  br i1 %18, label %53, label %38, !dbg !78

; <label>:19:                                     ; preds = %6, %30
  %20 = phi i8* [ %35, %30 ], [ %12, %6 ]
  %21 = phi i8* [ %31, %30 ], [ %9, %6 ]
  %22 = phi i64 [ %32, %30 ], [ 0, %6 ]
  %23 = icmp eq i8* %20, null, !dbg !79
  %24 = icmp ult i8* %20, %21, !dbg !82
  %25 = or i1 %23, %24, !dbg !83
  br i1 %25, label %30, label %26, !dbg !83

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* nonnull %20) #5, !dbg !84
  %28 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !85
  %29 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !86
  br label %30, !dbg !87

; <label>:30:                                     ; preds = %19, %26
  %31 = phi i8* [ %29, %26 ], [ %21, %19 ], !dbg !88
  %32 = add nuw i64 %22, 1, !dbg !89
  %33 = icmp sge i64 %32, %10, !dbg !69
  %34 = getelementptr inbounds i8*, i8** %1, i64 %32
  %35 = load i8*, i8** %34, align 8, !dbg !71, !tbaa !51
  %36 = icmp eq i8* %35, null, !dbg !72
  %37 = and i1 %33, %36, !dbg !73
  br i1 %37, label %15, label %19, !dbg !73, !llvm.loop !90

; <label>:38:                                     ; preds = %15, %47
  %39 = phi i64 [ %49, %47 ], [ 0, %15 ]
  %40 = phi i8* [ %51, %47 ], [ %17, %15 ]
  %41 = phi i8* [ %48, %47 ], [ %16, %15 ]
  %42 = icmp ult i8* %40, %41, !dbg !93
  br i1 %42, label %47, label %43, !dbg !96

; <label>:43:                                     ; preds = %38
  %44 = tail call i64 @strlen(i8* nonnull %40) #5, !dbg !97
  %45 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !98
  %46 = getelementptr inbounds i8, i8* %45, i64 %44, !dbg !99
  br label %47, !dbg !100

; <label>:47:                                     ; preds = %38, %43
  %48 = phi i8* [ %41, %38 ], [ %46, %43 ], !dbg !101
  %49 = add nuw i64 %39, 1, !dbg !102
  %50 = getelementptr inbounds i8*, i8** %3, i64 %49, !dbg !75
  %51 = load i8*, i8** %50, align 8, !dbg !75, !tbaa !51
  %52 = icmp eq i8* %51, null, !dbg !78
  br i1 %52, label %53, label %38, !dbg !78, !llvm.loop !103

; <label>:53:                                     ; preds = %47, %15
  %54 = phi i8* [ %16, %15 ], [ %48, %47 ], !dbg !74
  %55 = load i8*, i8** %1, align 8, !dbg !105, !tbaa !51
  %56 = tail call i8* @strdup(i8* %55) #5, !dbg !107
  store i8* %56, i8** @SPT.0, align 8, !dbg !108, !tbaa !109
  %57 = icmp eq i8* %56, null, !dbg !108
  br i1 %57, label %117, label %58, !dbg !113

; <label>:58:                                     ; preds = %53
  %59 = load i8**, i8*** @environ, align 8, !dbg !125, !tbaa !51
  %60 = icmp eq i8** %59, %3, !dbg !127
  br i1 %60, label %61, label %96, !dbg !128

; <label>:61:                                     ; preds = %58
  %62 = tail call i8* @malloc(i64 8) #5, !dbg !129
  store i8* %62, i8** bitcast (i8*** @spt_clearenv.tmp to i8**), align 8, !dbg !133, !tbaa !51
  %63 = icmp eq i8* %62, null, !dbg !133
  br i1 %63, label %67, label %64, !dbg !134

; <label>:64:                                     ; preds = %61
  %65 = ptrtoint i8* %62 to i64, !dbg !134
  %66 = bitcast i8* %62 to i8**, !dbg !129
  store i8* null, i8** %66, align 8, !dbg !135, !tbaa !51
  store i64 %65, i64* bitcast (i8*** @environ to i64*), align 8, !dbg !136, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %71, !dbg !138

; <label>:67:                                     ; preds = %61
  %68 = tail call i32* @__errno() #5, !dbg !139
  %69 = load i32, i32* %68, align 4, !dbg !139, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  %70 = icmp eq i32 %69, 0, !dbg !142
  br i1 %70, label %71, label %95, !dbg !138

; <label>:71:                                     ; preds = %67, %64
  %72 = load i8*, i8** %3, align 8, !dbg !144, !tbaa !51
  %73 = icmp eq i8* %72, null, !dbg !147
  br i1 %73, label %96, label %74, !dbg !147

; <label>:74:                                     ; preds = %71, %90
  %75 = phi i64 [ %91, %90 ], [ 0, %71 ]
  %76 = phi i8* [ %93, %90 ], [ %72, %71 ]
  %77 = phi i8** [ %92, %90 ], [ %3, %71 ]
  %78 = tail call i8* @strchr(i8* nonnull %76, i32 61) #5, !dbg !148
  %79 = icmp eq i8* %78, null, !dbg !152
  br i1 %79, label %90, label %80, !dbg !153

; <label>:80:                                     ; preds = %74
  store i8 0, i8* %78, align 1, !dbg !154, !tbaa !155
  %81 = load i8*, i8** %77, align 8, !dbg !156, !tbaa !51
  %82 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !157
  %83 = tail call i32 @setenv(i8* %81, i8* nonnull %82, i32 1) #5, !dbg !158
  %84 = icmp eq i32 %83, 0, !dbg !159
  br i1 %84, label %85, label %86, !dbg !160

; <label>:85:                                     ; preds = %80
  store i8 61, i8* %78, align 1, !dbg !161, !tbaa !155
  br label %90, !dbg !162

; <label>:86:                                     ; preds = %80
  %87 = tail call i32* @__errno() #5, !dbg !163
  %88 = load i32, i32* %87, align 4, !dbg !163, !tbaa !140
  store i8 61, i8* %78, align 1, !dbg !161, !tbaa !155
  %89 = icmp eq i32 %88, 0, !dbg !164
  br i1 %89, label %90, label %95, !dbg !162

; <label>:90:                                     ; preds = %86, %85, %74
  %91 = add nuw i64 %75, 1, !dbg !166
  %92 = getelementptr inbounds i8*, i8** %3, i64 %91, !dbg !144
  %93 = load i8*, i8** %92, align 8, !dbg !144, !tbaa !51
  %94 = icmp eq i8* %93, null, !dbg !147
  br i1 %94, label %96, label %74, !dbg !147, !llvm.loop !167

; <label>:95:                                     ; preds = %86, %67
  store i8** %3, i8*** @environ, align 8, !dbg !170, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br label %119

; <label>:96:                                     ; preds = %90, %58, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br label %97, !dbg !185

; <label>:97:                                     ; preds = %110, %96
  %98 = phi i64 [ %111, %110 ], [ 1, %96 ], !dbg !187
  %99 = icmp slt i64 %98, %10, !dbg !189
  %100 = getelementptr inbounds i8*, i8** %1, i64 %98
  %101 = load i8*, i8** %100, align 8, !dbg !187, !tbaa !51
  %102 = icmp eq i8* %101, null, !dbg !187
  br i1 %99, label %105, label %103, !dbg !190

; <label>:103:                                    ; preds = %97
  br i1 %102, label %104, label %106, !dbg !191

; <label>:104:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %116, !dbg !194

; <label>:105:                                    ; preds = %97
  br i1 %102, label %110, label %106, !dbg !195

; <label>:106:                                    ; preds = %105, %103
  %107 = tail call i8* @strdup(i8* nonnull %101) #5, !dbg !197
  %108 = icmp eq i8* %107, null, !dbg !200
  br i1 %108, label %112, label %109, !dbg !201

; <label>:109:                                    ; preds = %106
  store i8* %107, i8** %100, align 8, !dbg !202, !tbaa !51
  br label %110, !dbg !203

; <label>:110:                                    ; preds = %109, %105
  %111 = add nuw i64 %98, 1, !dbg !204
  br label %97, !dbg !205, !llvm.loop !206

; <label>:112:                                    ; preds = %106
  %113 = tail call i32* @__errno() #5, !dbg !209
  %114 = load i32, i32* %113, align 4, !dbg !209, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  %115 = icmp eq i32 %114, 0, !dbg !210
  br i1 %115, label %116, label %119, !dbg !194

; <label>:116:                                    ; preds = %104, %112
  store i8* %8, i8** @SPT.3, align 8, !dbg !211, !tbaa !212
  store i8* %4, i8** @SPT.1, align 8, !dbg !213, !tbaa !214
  store i8* %54, i8** @SPT.2, align 8, !dbg !215, !tbaa !216
  br label %119, !dbg !217

; <label>:117:                                    ; preds = %53
  %118 = tail call i32* @__errno() #5, !dbg !218
  br label %119, !dbg !219

; <label>:119:                                    ; preds = %95, %117, %112, %2, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  ret void, !dbg !220
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
define dso_local void @setproctitle(i8*, ...) local_unnamed_addr #0 !dbg !221 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !251
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !253
  %6 = load i8*, i8** @SPT.1, align 8, !dbg !255, !tbaa !214
  %7 = icmp eq i8* %6, null, !dbg !257
  br i1 %7, label %57, label %8, !dbg !258

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i8* %0, null, !dbg !259
  br i1 %9, label %13, label %10, !dbg !261

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !262
  call void @llvm.va_start(i8* nonnull %5), !dbg !262
  %12 = call i32 @vsnprintf(i8* nonnull %4, i64 256, i8* nonnull %0, %struct.__va_list_tag* nonnull %11) #5, !dbg !264
  call void @llvm.va_end(i8* nonnull %5), !dbg !266
  br label %16, !dbg !267

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** @SPT.0, align 8, !dbg !268, !tbaa !109
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14) #5, !dbg !270
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ], !dbg !271
  %18 = icmp slt i32 %17, 1, !dbg !272
  br i1 %18, label %19, label %21, !dbg !274

; <label>:19:                                     ; preds = %16
  %20 = call i32* @__errno() #5, !dbg !275
  br label %57, !dbg !278

; <label>:21:                                     ; preds = %16
  %22 = load i1, i1* @SPT.4, align 8
  %23 = load i8*, i8** @SPT.1, align 8, !dbg !279, !tbaa !214
  %24 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !279, !tbaa !216
  %25 = ptrtoint i8* %23 to i64, !dbg !279
  %26 = sub i64 %24, %25, !dbg !279
  br i1 %22, label %29, label %27, !dbg !282

; <label>:27:                                     ; preds = %21
  %28 = call i8* @memset(i8* %23, i32 0, i64 %26) #5, !dbg !283
  store i1 true, i1* @SPT.4, align 8
  br label %33, !dbg !284

; <label>:29:                                     ; preds = %21
  %30 = icmp ult i64 %26, 256, !dbg !300
  %31 = select i1 %30, i64 %26, i64 256, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %32 = call i8* @memset(i8* %23, i32 0, i64 %31) #5, !dbg !302
  br label %33

; <label>:33:                                     ; preds = %29, %27
  %34 = sext i32 %17 to i64, !dbg !303
  %35 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !304, !tbaa !216
  %36 = load i64, i64* bitcast (i8** @SPT.1 to i64*), align 8, !dbg !305, !tbaa !214
  %37 = sub i64 %35, %36, !dbg !306
  %38 = icmp ult i64 %37, 256, !dbg !310
  %39 = select i1 %38, i64 %37, i64 256, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  %40 = add nsw i64 %39, -1, !dbg !312
  %41 = icmp ugt i64 %40, %34, !dbg !316
  %42 = select i1 %41, i64 %34, i64 %40, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %43 = inttoptr i64 %36 to i8*, !dbg !318
  %44 = call i8* @memcpy(i8* %43, i8* nonnull %4, i64 %42) #5, !dbg !319
  %45 = load i8*, i8** @SPT.1, align 8, !dbg !320, !tbaa !214
  %46 = getelementptr inbounds i8, i8* %45, i64 %42, !dbg !321
  %47 = load i8*, i8** @SPT.3, align 8, !dbg !323, !tbaa !212
  %48 = icmp ult i8* %46, %47, !dbg !325
  br i1 %48, label %49, label %50, !dbg !326

; <label>:49:                                     ; preds = %33
  store i8 46, i8* %47, align 1, !dbg !327, !tbaa !155
  br label %57, !dbg !329

; <label>:50:                                     ; preds = %33
  %51 = icmp eq i8* %46, %47, !dbg !330
  br i1 %51, label %52, label %57, !dbg !332

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !333
  %54 = load i8*, i8** @SPT.2, align 8, !dbg !334, !tbaa !216
  %55 = icmp ult i8* %53, %54, !dbg !335
  br i1 %55, label %56, label %57, !dbg !336

; <label>:56:                                     ; preds = %52
  store i8 32, i8* %46, align 1, !dbg !337, !tbaa !155
  store i8 0, i8* %53, align 1, !dbg !339, !tbaa !155
  br label %57, !dbg !340

; <label>:57:                                     ; preds = %49, %56, %52, %50, %1, %19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !278
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  ret void, !dbg !278
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
!69 = !DILocation(line: 163, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !68, file: !3, line: 163, column: 2)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 163, column: 37, scope: !70)
!73 = !DILocation(line: 163, column: 23, scope: !70)
!74 = !DILocation(line: 161, column: 6, scope: !35)
!75 = !DILocation(line: 170, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 170, column: 2)
!77 = distinct !DILexicalBlock(scope: !35, file: !3, line: 170, column: 2)
!78 = !DILocation(line: 170, column: 2, scope: !77)
!79 = !DILocation(line: 164, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 164, column: 7)
!81 = distinct !DILexicalBlock(scope: !70, file: !3, line: 163, column: 55)
!82 = !DILocation(line: 164, column: 27, scope: !80)
!83 = !DILocation(line: 164, column: 16, scope: !80)
!84 = !DILocation(line: 167, column: 19, scope: !81)
!85 = !DILocation(line: 167, column: 17, scope: !81)
!86 = !DILocation(line: 167, column: 35, scope: !81)
!87 = !DILocation(line: 168, column: 2, scope: !81)
!88 = !DILocation(line: 0, scope: !35)
!89 = !DILocation(line: 163, column: 51, scope: !70)
!90 = distinct !{!90, !91, !92}
!91 = !DILocation(line: 163, column: 2, scope: !68)
!92 = !DILocation(line: 168, column: 2, scope: !68)
!93 = !DILocation(line: 171, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 171, column: 7)
!95 = distinct !DILexicalBlock(scope: !76, file: !3, line: 170, column: 28)
!96 = !DILocation(line: 171, column: 7, scope: !95)
!97 = !DILocation(line: 174, column: 19, scope: !95)
!98 = !DILocation(line: 174, column: 17, scope: !95)
!99 = !DILocation(line: 174, column: 35, scope: !95)
!100 = !DILocation(line: 175, column: 2, scope: !95)
!101 = !DILocation(line: 0, scope: !95)
!102 = !DILocation(line: 170, column: 24, scope: !76)
!103 = distinct !{!103, !78, !104}
!104 = !DILocation(line: 175, column: 2, scope: !77)
!105 = !DILocation(line: 177, column: 26, scope: !106)
!106 = distinct !DILexicalBlock(scope: !35, file: !3, line: 177, column: 6)
!107 = !DILocation(line: 177, column: 19, scope: !106)
!108 = !DILocation(line: 177, column: 17, scope: !106)
!109 = !{!110, !52, i64 0}
!110 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !111, i64 32, !112, i64 36}
!111 = !{!"_Bool", !53, i64 0}
!112 = !{!"int", !53, i64 0}
!113 = !DILocation(line: 177, column: 6, scope: !35)
!114 = !DILocalVariable(name: "oldenv", arg: 1, scope: !115, file: !3, line: 103, type: !25)
!115 = distinct !DISubprogram(name: "spt_copyenv", scope: !3, file: !3, line: 103, type: !116, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !25}
!118 = !{!114, !119, !120, !121}
!119 = !DILocalVariable(name: "eq", scope: !115, file: !3, line: 105, type: !19)
!120 = !DILocalVariable(name: "i", scope: !115, file: !3, line: 106, type: !6)
!121 = !DILocalVariable(name: "error", scope: !115, file: !3, line: 106, type: !6)
!122 = !DILocation(line: 103, column: 30, scope: !115, inlinedAt: !123)
!123 = distinct !DILocation(line: 198, column: 15, scope: !124)
!124 = distinct !DILexicalBlock(scope: !35, file: !3, line: 198, column: 6)
!125 = !DILocation(line: 108, column: 6, scope: !126, inlinedAt: !123)
!126 = distinct !DILexicalBlock(scope: !115, file: !3, line: 108, column: 6)
!127 = !DILocation(line: 108, column: 14, scope: !126, inlinedAt: !123)
!128 = !DILocation(line: 108, column: 6, scope: !115, inlinedAt: !123)
!129 = !DILocation(line: 92, column: 14, scope: !130, inlinedAt: !131)
!130 = distinct !DILexicalBlock(scope: !2, file: !3, line: 92, column: 6)
!131 = distinct !DILocation(line: 111, column: 15, scope: !132, inlinedAt: !123)
!132 = distinct !DILexicalBlock(scope: !115, file: !3, line: 111, column: 6)
!133 = !DILocation(line: 92, column: 12, scope: !130, inlinedAt: !131)
!134 = !DILocation(line: 92, column: 6, scope: !2, inlinedAt: !131)
!135 = !DILocation(line: 95, column: 10, scope: !2, inlinedAt: !131)
!136 = !DILocation(line: 96, column: 10, scope: !2, inlinedAt: !131)
!137 = !DILocation(line: 100, column: 1, scope: !2, inlinedAt: !131)
!138 = !DILocation(line: 111, column: 6, scope: !115, inlinedAt: !123)
!139 = !DILocation(line: 93, column: 10, scope: !130, inlinedAt: !131)
!140 = !{!112, !112, i64 0}
!141 = !DILocation(line: 106, column: 9, scope: !115, inlinedAt: !123)
!142 = !DILocation(line: 111, column: 13, scope: !132, inlinedAt: !123)
!143 = !DILocation(line: 106, column: 6, scope: !115, inlinedAt: !123)
!144 = !DILocation(line: 114, column: 14, scope: !145, inlinedAt: !123)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 114, column: 2)
!146 = distinct !DILexicalBlock(scope: !115, file: !3, line: 114, column: 2)
!147 = !DILocation(line: 114, column: 2, scope: !146, inlinedAt: !123)
!148 = !DILocation(line: 115, column: 14, scope: !149, inlinedAt: !123)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 115, column: 7)
!150 = distinct !DILexicalBlock(scope: !145, file: !3, line: 114, column: 30)
!151 = !DILocation(line: 105, column: 8, scope: !115, inlinedAt: !123)
!152 = !DILocation(line: 115, column: 12, scope: !149, inlinedAt: !123)
!153 = !DILocation(line: 115, column: 7, scope: !150, inlinedAt: !123)
!154 = !DILocation(line: 118, column: 7, scope: !150, inlinedAt: !123)
!155 = !{!53, !53, i64 0}
!156 = !DILocation(line: 119, column: 24, scope: !150, inlinedAt: !123)
!157 = !DILocation(line: 119, column: 38, scope: !150, inlinedAt: !123)
!158 = !DILocation(line: 119, column: 17, scope: !150, inlinedAt: !123)
!159 = !DILocation(line: 119, column: 14, scope: !150, inlinedAt: !123)
!160 = !DILocation(line: 119, column: 11, scope: !150, inlinedAt: !123)
!161 = !DILocation(line: 120, column: 7, scope: !150, inlinedAt: !123)
!162 = !DILocation(line: 122, column: 7, scope: !150, inlinedAt: !123)
!163 = !DILocation(line: 119, column: 48, scope: !150, inlinedAt: !123)
!164 = !DILocation(line: 122, column: 7, scope: !165, inlinedAt: !123)
!165 = distinct !DILexicalBlock(scope: !150, file: !3, line: 122, column: 7)
!166 = !DILocation(line: 114, column: 26, scope: !145, inlinedAt: !123)
!167 = distinct !{!167, !168, !169}
!168 = !DILocation(line: 114, column: 2, scope: !146)
!169 = !DILocation(line: 124, column: 2, scope: !146)
!170 = !DILocation(line: 128, column: 10, scope: !115, inlinedAt: !123)
!171 = !DILocation(line: 131, column: 1, scope: !115, inlinedAt: !123)
!172 = !DILocalVariable(name: "argc", arg: 1, scope: !173, file: !3, line: 134, type: !6)
!173 = distinct !DISubprogram(name: "spt_copyargs", scope: !3, file: !3, line: 134, type: !174, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !6, !25}
!176 = !{!172, !177, !178, !179}
!177 = !DILocalVariable(name: "argv", arg: 2, scope: !173, file: !3, line: 134, type: !25)
!178 = !DILocalVariable(name: "tmp", scope: !173, file: !3, line: 135, type: !19)
!179 = !DILocalVariable(name: "i", scope: !173, file: !3, line: 136, type: !6)
!180 = !DILocation(line: 134, column: 29, scope: !173, inlinedAt: !181)
!181 = distinct !DILocation(line: 201, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !35, file: !3, line: 201, column: 6)
!183 = !DILocation(line: 134, column: 41, scope: !173, inlinedAt: !181)
!184 = !DILocation(line: 136, column: 6, scope: !173, inlinedAt: !181)
!185 = !DILocation(line: 138, column: 7, scope: !186, inlinedAt: !181)
!186 = distinct !DILexicalBlock(scope: !173, file: !3, line: 138, column: 2)
!187 = !DILocation(line: 0, scope: !188, inlinedAt: !181)
!188 = distinct !DILexicalBlock(scope: !186, file: !3, line: 138, column: 2)
!189 = !DILocation(line: 138, column: 16, scope: !188, inlinedAt: !181)
!190 = !DILocation(line: 138, column: 23, scope: !188, inlinedAt: !181)
!191 = !DILocation(line: 138, column: 2, scope: !186, inlinedAt: !181)
!192 = !DILocation(line: 149, column: 1, scope: !173, inlinedAt: !181)
!193 = !DILocation(line: 155, column: 9, scope: !35)
!194 = !DILocation(line: 201, column: 6, scope: !35)
!195 = !DILocation(line: 139, column: 7, scope: !196, inlinedAt: !181)
!196 = distinct !DILexicalBlock(scope: !188, file: !3, line: 138, column: 55)
!197 = !DILocation(line: 142, column: 15, scope: !198, inlinedAt: !181)
!198 = distinct !DILexicalBlock(scope: !196, file: !3, line: 142, column: 7)
!199 = !DILocation(line: 135, column: 8, scope: !173, inlinedAt: !181)
!200 = !DILocation(line: 142, column: 13, scope: !198, inlinedAt: !181)
!201 = !DILocation(line: 142, column: 7, scope: !196, inlinedAt: !181)
!202 = !DILocation(line: 145, column: 11, scope: !196, inlinedAt: !181)
!203 = !DILocation(line: 146, column: 2, scope: !196, inlinedAt: !181)
!204 = !DILocation(line: 138, column: 51, scope: !188, inlinedAt: !181)
!205 = !DILocation(line: 138, column: 2, scope: !188, inlinedAt: !181)
!206 = distinct !{!206, !207, !208}
!207 = !DILocation(line: 138, column: 2, scope: !186)
!208 = !DILocation(line: 146, column: 2, scope: !186)
!209 = !DILocation(line: 143, column: 11, scope: !198, inlinedAt: !181)
!210 = !DILocation(line: 201, column: 13, scope: !182)
!211 = !DILocation(line: 204, column: 11, scope: !35)
!212 = !{!110, !52, i64 24}
!213 = !DILocation(line: 205, column: 11, scope: !35)
!214 = !{!110, !52, i64 8}
!215 = !DILocation(line: 206, column: 11, scope: !35)
!216 = !{!110, !52, i64 16}
!217 = !DILocation(line: 208, column: 2, scope: !35)
!218 = !DILocation(line: 210, column: 10, scope: !35)
!219 = !DILocation(line: 210, column: 2, scope: !35)
!220 = !DILocation(line: 213, column: 1, scope: !35)
!221 = distinct !DISubprogram(name: "setproctitle", scope: !3, file: !3, line: 220, type: !222, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !15, null}
!224 = !{!225, !226, !230, !247, !248, !249}
!225 = !DILocalVariable(name: "fmt", arg: 1, scope: !221, file: !3, line: 220, type: !15)
!226 = !DILocalVariable(name: "buf", scope: !221, file: !3, line: 221, type: !227)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 256)
!230 = !DILocalVariable(name: "ap", scope: !221, file: !3, line: 222, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !232, line: 46, baseType: !233)
!232 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !234, line: 51, baseType: !235)
!234 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 222, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 192, elements: !245)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 222, size: 192, elements: !238)
!238 = !{!239, !241, !242, !244}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !237, file: !3, line: 222, baseType: !240, size: 32)
!240 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !237, file: !3, line: 222, baseType: !240, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !237, file: !3, line: 222, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !237, file: !3, line: 222, baseType: !243, size: 64, offset: 128)
!245 = !{!246}
!246 = !DISubrange(count: 1)
!247 = !DILocalVariable(name: "nul", scope: !221, file: !3, line: 223, type: !19)
!248 = !DILocalVariable(name: "len", scope: !221, file: !3, line: 224, type: !6)
!249 = !DILocalVariable(name: "error", scope: !221, file: !3, line: 224, type: !6)
!250 = !DILocation(line: 220, column: 31, scope: !221)
!251 = !DILocation(line: 221, column: 2, scope: !221)
!252 = !DILocation(line: 221, column: 7, scope: !221)
!253 = !DILocation(line: 222, column: 2, scope: !221)
!254 = !DILocation(line: 222, column: 10, scope: !221)
!255 = !DILocation(line: 226, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !221, file: !3, line: 226, column: 6)
!257 = !DILocation(line: 226, column: 7, scope: !256)
!258 = !DILocation(line: 226, column: 6, scope: !221)
!259 = !DILocation(line: 229, column: 6, scope: !260)
!260 = distinct !DILexicalBlock(scope: !221, file: !3, line: 229, column: 6)
!261 = !DILocation(line: 229, column: 6, scope: !221)
!262 = !DILocation(line: 230, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 229, column: 11)
!264 = !DILocation(line: 231, column: 9, scope: !263)
!265 = !DILocation(line: 224, column: 6, scope: !221)
!266 = !DILocation(line: 232, column: 3, scope: !263)
!267 = !DILocation(line: 233, column: 2, scope: !263)
!268 = !DILocation(line: 234, column: 45, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !3, line: 233, column: 9)
!270 = !DILocation(line: 234, column: 9, scope: !269)
!271 = !DILocation(line: 0, scope: !269)
!272 = !DILocation(line: 237, column: 10, scope: !273)
!273 = distinct !DILexicalBlock(scope: !221, file: !3, line: 237, column: 6)
!274 = !DILocation(line: 237, column: 6, scope: !221)
!275 = !DILocation(line: 238, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 238, column: 3)
!277 = !DILocation(line: 224, column: 11, scope: !221)
!278 = !DILocation(line: 261, column: 1, scope: !221)
!279 = !DILocation(line: 0, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 240, column: 18)
!281 = distinct !DILexicalBlock(scope: !221, file: !3, line: 240, column: 6)
!282 = !DILocation(line: 240, column: 6, scope: !221)
!283 = !DILocation(line: 241, column: 3, scope: !280)
!284 = !DILocation(line: 243, column: 2, scope: !280)
!285 = !DILocalVariable(name: "a", arg: 1, scope: !286, file: !3, line: 74, type: !289)
!286 = distinct !DISubprogram(name: "spt_min", scope: !3, file: !3, line: 74, type: !287, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !294)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !289, !289}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !290, line: 40, baseType: !291)
!290 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !292, line: 129, baseType: !293)
!292 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!293 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!294 = !{!285, !295}
!295 = !DILocalVariable(name: "b", arg: 2, scope: !286, file: !3, line: 74, type: !289)
!296 = !DILocation(line: 74, column: 37, scope: !286, inlinedAt: !297)
!297 = distinct !DILocation(line: 244, column: 23, scope: !298)
!298 = distinct !DILexicalBlock(scope: !281, file: !3, line: 243, column: 9)
!299 = !DILocation(line: 74, column: 47, scope: !286, inlinedAt: !297)
!300 = !DILocation(line: 75, column: 9, scope: !286, inlinedAt: !297)
!301 = !DILocation(line: 75, column: 2, scope: !286, inlinedAt: !297)
!302 = !DILocation(line: 244, column: 3, scope: !298)
!303 = !DILocation(line: 247, column: 16, scope: !221)
!304 = !DILocation(line: 247, column: 45, scope: !221)
!305 = !DILocation(line: 247, column: 55, scope: !221)
!306 = !DILocation(line: 247, column: 49, scope: !221)
!307 = !DILocation(line: 74, column: 37, scope: !286, inlinedAt: !308)
!308 = distinct !DILocation(line: 247, column: 21, scope: !221)
!309 = !DILocation(line: 74, column: 47, scope: !286, inlinedAt: !308)
!310 = !DILocation(line: 75, column: 9, scope: !286, inlinedAt: !308)
!311 = !DILocation(line: 75, column: 2, scope: !286, inlinedAt: !308)
!312 = !DILocation(line: 247, column: 61, scope: !221)
!313 = !DILocation(line: 74, column: 37, scope: !286, inlinedAt: !314)
!314 = distinct !DILocation(line: 247, column: 8, scope: !221)
!315 = !DILocation(line: 74, column: 47, scope: !286, inlinedAt: !314)
!316 = !DILocation(line: 75, column: 9, scope: !286, inlinedAt: !314)
!317 = !DILocation(line: 75, column: 2, scope: !286, inlinedAt: !314)
!318 = !DILocation(line: 248, column: 13, scope: !221)
!319 = !DILocation(line: 248, column: 2, scope: !221)
!320 = !DILocation(line: 249, column: 13, scope: !221)
!321 = !DILocation(line: 249, column: 9, scope: !221)
!322 = !DILocation(line: 223, column: 8, scope: !221)
!323 = !DILocation(line: 251, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !221, file: !3, line: 251, column: 6)
!325 = !DILocation(line: 251, column: 10, scope: !324)
!326 = !DILocation(line: 251, column: 6, scope: !221)
!327 = !DILocation(line: 252, column: 12, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 251, column: 21)
!329 = !DILocation(line: 253, column: 2, scope: !328)
!330 = !DILocation(line: 253, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !3, line: 253, column: 13)
!332 = !DILocation(line: 253, column: 28, scope: !331)
!333 = !DILocation(line: 253, column: 32, scope: !331)
!334 = !DILocation(line: 253, column: 45, scope: !331)
!335 = !DILocation(line: 253, column: 39, scope: !331)
!336 = !DILocation(line: 253, column: 13, scope: !324)
!337 = !DILocation(line: 254, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !3, line: 253, column: 50)
!339 = !DILocation(line: 255, column: 10, scope: !338)
!340 = !DILocation(line: 256, column: 2, scope: !338)
