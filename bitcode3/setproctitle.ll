; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/setproctitle.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/setproctitle.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@environ = external dso_local local_unnamed_addr global i8**, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@spt_clearenv.tmp = internal unnamed_addr global i8** null, align 8, !dbg !0
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
  br i1 %5, label %118, label %6, !dbg !60

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
  br i1 %57, label %116, label %58, !dbg !113

; <label>:58:                                     ; preds = %53
  %59 = load i8**, i8*** @environ, align 8, !dbg !125, !tbaa !51
  %60 = icmp eq i8** %59, %3, !dbg !127
  br i1 %60, label %61, label %74, !dbg !128

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
  br label %71, !dbg !137

; <label>:67:                                     ; preds = %61
  %68 = tail call i32* @__errno() #5, !dbg !138
  %69 = load i32, i32* %68, align 4, !dbg !138, !tbaa !139
  %70 = icmp eq i32 %69, 0, !dbg !141
  br i1 %70, label %71, label %96, !dbg !137

; <label>:71:                                     ; preds = %67, %64
  %72 = load i8*, i8** %3, align 8, !dbg !143, !tbaa !51
  %73 = icmp eq i8* %72, null, !dbg !146
  br i1 %73, label %74, label %75, !dbg !146

; <label>:74:                                     ; preds = %91, %58, %71
  br label %97, !dbg !147

; <label>:75:                                     ; preds = %71, %91
  %76 = phi i64 [ %92, %91 ], [ 0, %71 ]
  %77 = phi i8* [ %94, %91 ], [ %72, %71 ]
  %78 = phi i8** [ %93, %91 ], [ %3, %71 ]
  %79 = tail call i8* @strchr(i8* nonnull %77, i32 61) #5, !dbg !160
  %80 = icmp eq i8* %79, null, !dbg !164
  br i1 %80, label %91, label %81, !dbg !165

; <label>:81:                                     ; preds = %75
  store i8 0, i8* %79, align 1, !dbg !166, !tbaa !167
  %82 = load i8*, i8** %78, align 8, !dbg !168, !tbaa !51
  %83 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !169
  %84 = tail call i32 @setenv(i8* %82, i8* nonnull %83, i32 1) #5, !dbg !170
  %85 = icmp eq i32 %84, 0, !dbg !171
  br i1 %85, label %86, label %87, !dbg !172

; <label>:86:                                     ; preds = %81
  store i8 61, i8* %79, align 1, !dbg !173, !tbaa !167
  br label %91, !dbg !174

; <label>:87:                                     ; preds = %81
  %88 = tail call i32* @__errno() #5, !dbg !175
  %89 = load i32, i32* %88, align 4, !dbg !175, !tbaa !139
  store i8 61, i8* %79, align 1, !dbg !173, !tbaa !167
  %90 = icmp eq i32 %89, 0, !dbg !176
  br i1 %90, label %91, label %96, !dbg !174

; <label>:91:                                     ; preds = %87, %86, %75
  %92 = add nuw i64 %76, 1, !dbg !178
  %93 = getelementptr inbounds i8*, i8** %3, i64 %92, !dbg !143
  %94 = load i8*, i8** %93, align 8, !dbg !143, !tbaa !51
  %95 = icmp eq i8* %94, null, !dbg !146
  br i1 %95, label %74, label %75, !dbg !146, !llvm.loop !179

; <label>:96:                                     ; preds = %87, %67
  store i8** %3, i8*** @environ, align 8, !dbg !182, !tbaa !51
  br label %118

; <label>:97:                                     ; preds = %74, %109
  %98 = phi i64 [ %110, %109 ], [ 1, %74 ], !dbg !183
  %99 = icmp slt i64 %98, %10, !dbg !147
  %100 = getelementptr inbounds i8*, i8** %1, i64 %98
  %101 = load i8*, i8** %100, align 8, !dbg !183, !tbaa !51
  %102 = icmp eq i8* %101, null, !dbg !183
  br i1 %99, label %104, label %103, !dbg !185

; <label>:103:                                    ; preds = %97
  br i1 %102, label %115, label %105, !dbg !186

; <label>:104:                                    ; preds = %97
  br i1 %102, label %109, label %105, !dbg !187

; <label>:105:                                    ; preds = %104, %103
  %106 = tail call i8* @strdup(i8* nonnull %101) #5, !dbg !189
  %107 = icmp eq i8* %106, null, !dbg !192
  br i1 %107, label %111, label %108, !dbg !193

; <label>:108:                                    ; preds = %105
  store i8* %106, i8** %100, align 8, !dbg !194, !tbaa !51
  br label %109, !dbg !195

; <label>:109:                                    ; preds = %108, %104
  %110 = add nuw i64 %98, 1, !dbg !196
  br label %97, !dbg !197, !llvm.loop !198

; <label>:111:                                    ; preds = %105
  %112 = tail call i32* @__errno() #5, !dbg !201
  %113 = load i32, i32* %112, align 4, !dbg !201, !tbaa !139
  %114 = icmp eq i32 %113, 0, !dbg !203
  br i1 %114, label %115, label %118, !dbg !204

; <label>:115:                                    ; preds = %103, %111
  store i8* %8, i8** @SPT.3, align 8, !dbg !205, !tbaa !206
  store i8* %4, i8** @SPT.1, align 8, !dbg !207, !tbaa !208
  store i8* %54, i8** @SPT.2, align 8, !dbg !209, !tbaa !210
  br label %118, !dbg !211

; <label>:116:                                    ; preds = %53
  %117 = tail call i32* @__errno() #5, !dbg !212
  br label %118, !dbg !213

; <label>:118:                                    ; preds = %96, %116, %111, %2, %115
  ret void, !dbg !214
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
define dso_local void @setproctitle(i8*, ...) local_unnamed_addr #0 !dbg !215 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !245
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !245
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !247
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !247
  %6 = load i8*, i8** @SPT.1, align 8, !dbg !249, !tbaa !208
  %7 = icmp eq i8* %6, null, !dbg !251
  br i1 %7, label %57, label %8, !dbg !252

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i8* %0, null, !dbg !253
  br i1 %9, label %13, label %10, !dbg !255

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !256
  call void @llvm.va_start(i8* nonnull %5), !dbg !256
  %12 = call i32 @vsnprintf(i8* nonnull %4, i64 256, i8* nonnull %0, %struct.__va_list_tag* nonnull %11) #5, !dbg !258
  call void @llvm.va_end(i8* nonnull %5), !dbg !260
  br label %16, !dbg !261

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** @SPT.0, align 8, !dbg !262, !tbaa !109
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14) #5, !dbg !264
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ], !dbg !265
  %18 = icmp slt i32 %17, 1, !dbg !266
  br i1 %18, label %19, label %21, !dbg !268

; <label>:19:                                     ; preds = %16
  %20 = call i32* @__errno() #5, !dbg !269
  br label %57, !dbg !272

; <label>:21:                                     ; preds = %16
  %22 = load i1, i1* @SPT.4, align 8
  %23 = load i8*, i8** @SPT.1, align 8, !dbg !273, !tbaa !208
  %24 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !273, !tbaa !210
  %25 = ptrtoint i8* %23 to i64, !dbg !273
  %26 = sub i64 %24, %25, !dbg !273
  br i1 %22, label %29, label %27, !dbg !276

; <label>:27:                                     ; preds = %21
  %28 = call i8* @memset(i8* %23, i32 0, i64 %26) #5, !dbg !277
  store i1 true, i1* @SPT.4, align 8
  br label %33, !dbg !278

; <label>:29:                                     ; preds = %21
  %30 = icmp ult i64 %26, 256, !dbg !294
  %31 = select i1 %30, i64 %26, i64 256, !dbg !294
  %32 = call i8* @memset(i8* %23, i32 0, i64 %31) #5, !dbg !295
  br label %33

; <label>:33:                                     ; preds = %29, %27
  %34 = sext i32 %17 to i64, !dbg !296
  %35 = load i64, i64* bitcast (i8** @SPT.2 to i64*), align 8, !dbg !297, !tbaa !210
  %36 = load i64, i64* bitcast (i8** @SPT.1 to i64*), align 8, !dbg !298, !tbaa !208
  %37 = sub i64 %35, %36, !dbg !299
  %38 = icmp ult i64 %37, 256, !dbg !303
  %39 = select i1 %38, i64 %37, i64 256, !dbg !303
  %40 = add nsw i64 %39, -1, !dbg !304
  %41 = icmp ugt i64 %40, %34, !dbg !308
  %42 = select i1 %41, i64 %34, i64 %40, !dbg !308
  %43 = inttoptr i64 %36 to i8*, !dbg !309
  %44 = call i8* @memcpy(i8* %43, i8* nonnull %4, i64 %42) #5, !dbg !310
  %45 = load i8*, i8** @SPT.1, align 8, !dbg !311, !tbaa !208
  %46 = getelementptr inbounds i8, i8* %45, i64 %42, !dbg !312
  %47 = load i8*, i8** @SPT.3, align 8, !dbg !314, !tbaa !206
  %48 = icmp ult i8* %46, %47, !dbg !316
  br i1 %48, label %49, label %50, !dbg !317

; <label>:49:                                     ; preds = %33
  store i8 46, i8* %47, align 1, !dbg !318, !tbaa !167
  br label %57, !dbg !320

; <label>:50:                                     ; preds = %33
  %51 = icmp eq i8* %46, %47, !dbg !321
  br i1 %51, label %52, label %57, !dbg !323

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !324
  %54 = load i8*, i8** @SPT.2, align 8, !dbg !325, !tbaa !210
  %55 = icmp ult i8* %53, %54, !dbg !326
  br i1 %55, label %56, label %57, !dbg !327

; <label>:56:                                     ; preds = %52
  store i8 32, i8* %46, align 1, !dbg !328, !tbaa !167
  store i8 0, i8* %53, align 1, !dbg !330, !tbaa !167
  br label %57, !dbg !331

; <label>:57:                                     ; preds = %49, %56, %52, %50, %1, %19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !272
  ret void, !dbg !272
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
!137 = !DILocation(line: 111, column: 6, scope: !115, inlinedAt: !123)
!138 = !DILocation(line: 93, column: 10, scope: !130, inlinedAt: !131)
!139 = !{!112, !112, i64 0}
!140 = !DILocation(line: 106, column: 9, scope: !115, inlinedAt: !123)
!141 = !DILocation(line: 111, column: 13, scope: !132, inlinedAt: !123)
!142 = !DILocation(line: 106, column: 6, scope: !115, inlinedAt: !123)
!143 = !DILocation(line: 114, column: 14, scope: !144, inlinedAt: !123)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 114, column: 2)
!145 = distinct !DILexicalBlock(scope: !115, file: !3, line: 114, column: 2)
!146 = !DILocation(line: 114, column: 2, scope: !145, inlinedAt: !123)
!147 = !DILocation(line: 138, column: 16, scope: !148, inlinedAt: !158)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 138, column: 2)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 138, column: 2)
!150 = distinct !DISubprogram(name: "spt_copyargs", scope: !3, file: !3, line: 134, type: !151, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!6, !6, !25}
!153 = !{!154, !155, !156, !157}
!154 = !DILocalVariable(name: "argc", arg: 1, scope: !150, file: !3, line: 134, type: !6)
!155 = !DILocalVariable(name: "argv", arg: 2, scope: !150, file: !3, line: 134, type: !25)
!156 = !DILocalVariable(name: "tmp", scope: !150, file: !3, line: 135, type: !19)
!157 = !DILocalVariable(name: "i", scope: !150, file: !3, line: 136, type: !6)
!158 = distinct !DILocation(line: 201, column: 15, scope: !159)
!159 = distinct !DILexicalBlock(scope: !35, file: !3, line: 201, column: 6)
!160 = !DILocation(line: 115, column: 14, scope: !161, inlinedAt: !123)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 115, column: 7)
!162 = distinct !DILexicalBlock(scope: !144, file: !3, line: 114, column: 30)
!163 = !DILocation(line: 105, column: 8, scope: !115, inlinedAt: !123)
!164 = !DILocation(line: 115, column: 12, scope: !161, inlinedAt: !123)
!165 = !DILocation(line: 115, column: 7, scope: !162, inlinedAt: !123)
!166 = !DILocation(line: 118, column: 7, scope: !162, inlinedAt: !123)
!167 = !{!53, !53, i64 0}
!168 = !DILocation(line: 119, column: 24, scope: !162, inlinedAt: !123)
!169 = !DILocation(line: 119, column: 38, scope: !162, inlinedAt: !123)
!170 = !DILocation(line: 119, column: 17, scope: !162, inlinedAt: !123)
!171 = !DILocation(line: 119, column: 14, scope: !162, inlinedAt: !123)
!172 = !DILocation(line: 119, column: 11, scope: !162, inlinedAt: !123)
!173 = !DILocation(line: 120, column: 7, scope: !162, inlinedAt: !123)
!174 = !DILocation(line: 122, column: 7, scope: !162, inlinedAt: !123)
!175 = !DILocation(line: 119, column: 48, scope: !162, inlinedAt: !123)
!176 = !DILocation(line: 122, column: 7, scope: !177, inlinedAt: !123)
!177 = distinct !DILexicalBlock(scope: !162, file: !3, line: 122, column: 7)
!178 = !DILocation(line: 114, column: 26, scope: !144, inlinedAt: !123)
!179 = distinct !{!179, !180, !181}
!180 = !DILocation(line: 114, column: 2, scope: !145)
!181 = !DILocation(line: 124, column: 2, scope: !145)
!182 = !DILocation(line: 128, column: 10, scope: !115, inlinedAt: !123)
!183 = !DILocation(line: 0, scope: !148, inlinedAt: !158)
!184 = !DILocation(line: 136, column: 6, scope: !150, inlinedAt: !158)
!185 = !DILocation(line: 138, column: 23, scope: !148, inlinedAt: !158)
!186 = !DILocation(line: 138, column: 2, scope: !149, inlinedAt: !158)
!187 = !DILocation(line: 139, column: 7, scope: !188, inlinedAt: !158)
!188 = distinct !DILexicalBlock(scope: !148, file: !3, line: 138, column: 55)
!189 = !DILocation(line: 142, column: 15, scope: !190, inlinedAt: !158)
!190 = distinct !DILexicalBlock(scope: !188, file: !3, line: 142, column: 7)
!191 = !DILocation(line: 135, column: 8, scope: !150, inlinedAt: !158)
!192 = !DILocation(line: 142, column: 13, scope: !190, inlinedAt: !158)
!193 = !DILocation(line: 142, column: 7, scope: !188, inlinedAt: !158)
!194 = !DILocation(line: 145, column: 11, scope: !188, inlinedAt: !158)
!195 = !DILocation(line: 146, column: 2, scope: !188, inlinedAt: !158)
!196 = !DILocation(line: 138, column: 51, scope: !148, inlinedAt: !158)
!197 = !DILocation(line: 138, column: 2, scope: !148, inlinedAt: !158)
!198 = distinct !{!198, !199, !200}
!199 = !DILocation(line: 138, column: 2, scope: !149)
!200 = !DILocation(line: 146, column: 2, scope: !149)
!201 = !DILocation(line: 143, column: 11, scope: !190, inlinedAt: !158)
!202 = !DILocation(line: 155, column: 9, scope: !35)
!203 = !DILocation(line: 201, column: 13, scope: !159)
!204 = !DILocation(line: 201, column: 6, scope: !35)
!205 = !DILocation(line: 204, column: 11, scope: !35)
!206 = !{!110, !52, i64 24}
!207 = !DILocation(line: 205, column: 11, scope: !35)
!208 = !{!110, !52, i64 8}
!209 = !DILocation(line: 206, column: 11, scope: !35)
!210 = !{!110, !52, i64 16}
!211 = !DILocation(line: 208, column: 2, scope: !35)
!212 = !DILocation(line: 210, column: 10, scope: !35)
!213 = !DILocation(line: 210, column: 2, scope: !35)
!214 = !DILocation(line: 213, column: 1, scope: !35)
!215 = distinct !DISubprogram(name: "setproctitle", scope: !3, file: !3, line: 220, type: !216, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !15, null}
!218 = !{!219, !220, !224, !241, !242, !243}
!219 = !DILocalVariable(name: "fmt", arg: 1, scope: !215, file: !3, line: 220, type: !15)
!220 = !DILocalVariable(name: "buf", scope: !215, file: !3, line: 221, type: !221)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 256)
!224 = !DILocalVariable(name: "ap", scope: !215, file: !3, line: 222, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !226, line: 46, baseType: !227)
!226 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !228, line: 51, baseType: !229)
!228 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 222, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 192, elements: !239)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 222, size: 192, elements: !232)
!232 = !{!233, !235, !236, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !231, file: !3, line: 222, baseType: !234, size: 32)
!234 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !231, file: !3, line: 222, baseType: !234, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !231, file: !3, line: 222, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !231, file: !3, line: 222, baseType: !237, size: 64, offset: 128)
!239 = !{!240}
!240 = !DISubrange(count: 1)
!241 = !DILocalVariable(name: "nul", scope: !215, file: !3, line: 223, type: !19)
!242 = !DILocalVariable(name: "len", scope: !215, file: !3, line: 224, type: !6)
!243 = !DILocalVariable(name: "error", scope: !215, file: !3, line: 224, type: !6)
!244 = !DILocation(line: 220, column: 31, scope: !215)
!245 = !DILocation(line: 221, column: 2, scope: !215)
!246 = !DILocation(line: 221, column: 7, scope: !215)
!247 = !DILocation(line: 222, column: 2, scope: !215)
!248 = !DILocation(line: 222, column: 10, scope: !215)
!249 = !DILocation(line: 226, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !215, file: !3, line: 226, column: 6)
!251 = !DILocation(line: 226, column: 7, scope: !250)
!252 = !DILocation(line: 226, column: 6, scope: !215)
!253 = !DILocation(line: 229, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !215, file: !3, line: 229, column: 6)
!255 = !DILocation(line: 229, column: 6, scope: !215)
!256 = !DILocation(line: 230, column: 3, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 229, column: 11)
!258 = !DILocation(line: 231, column: 9, scope: !257)
!259 = !DILocation(line: 224, column: 6, scope: !215)
!260 = !DILocation(line: 232, column: 3, scope: !257)
!261 = !DILocation(line: 233, column: 2, scope: !257)
!262 = !DILocation(line: 234, column: 45, scope: !263)
!263 = distinct !DILexicalBlock(scope: !254, file: !3, line: 233, column: 9)
!264 = !DILocation(line: 234, column: 9, scope: !263)
!265 = !DILocation(line: 0, scope: !263)
!266 = !DILocation(line: 237, column: 10, scope: !267)
!267 = distinct !DILexicalBlock(scope: !215, file: !3, line: 237, column: 6)
!268 = !DILocation(line: 237, column: 6, scope: !215)
!269 = !DILocation(line: 238, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 238, column: 3)
!271 = !DILocation(line: 224, column: 11, scope: !215)
!272 = !DILocation(line: 261, column: 1, scope: !215)
!273 = !DILocation(line: 0, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 240, column: 18)
!275 = distinct !DILexicalBlock(scope: !215, file: !3, line: 240, column: 6)
!276 = !DILocation(line: 240, column: 6, scope: !215)
!277 = !DILocation(line: 241, column: 3, scope: !274)
!278 = !DILocation(line: 243, column: 2, scope: !274)
!279 = !DILocalVariable(name: "a", arg: 1, scope: !280, file: !3, line: 74, type: !283)
!280 = distinct !DISubprogram(name: "spt_min", scope: !3, file: !3, line: 74, type: !281, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !288)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !283, !283}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !284, line: 40, baseType: !285)
!284 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !286, line: 129, baseType: !287)
!286 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!287 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!288 = !{!279, !289}
!289 = !DILocalVariable(name: "b", arg: 2, scope: !280, file: !3, line: 74, type: !283)
!290 = !DILocation(line: 74, column: 37, scope: !280, inlinedAt: !291)
!291 = distinct !DILocation(line: 244, column: 23, scope: !292)
!292 = distinct !DILexicalBlock(scope: !275, file: !3, line: 243, column: 9)
!293 = !DILocation(line: 74, column: 47, scope: !280, inlinedAt: !291)
!294 = !DILocation(line: 75, column: 9, scope: !280, inlinedAt: !291)
!295 = !DILocation(line: 244, column: 3, scope: !292)
!296 = !DILocation(line: 247, column: 16, scope: !215)
!297 = !DILocation(line: 247, column: 45, scope: !215)
!298 = !DILocation(line: 247, column: 55, scope: !215)
!299 = !DILocation(line: 247, column: 49, scope: !215)
!300 = !DILocation(line: 74, column: 37, scope: !280, inlinedAt: !301)
!301 = distinct !DILocation(line: 247, column: 21, scope: !215)
!302 = !DILocation(line: 74, column: 47, scope: !280, inlinedAt: !301)
!303 = !DILocation(line: 75, column: 9, scope: !280, inlinedAt: !301)
!304 = !DILocation(line: 247, column: 61, scope: !215)
!305 = !DILocation(line: 74, column: 37, scope: !280, inlinedAt: !306)
!306 = distinct !DILocation(line: 247, column: 8, scope: !215)
!307 = !DILocation(line: 74, column: 47, scope: !280, inlinedAt: !306)
!308 = !DILocation(line: 75, column: 9, scope: !280, inlinedAt: !306)
!309 = !DILocation(line: 248, column: 13, scope: !215)
!310 = !DILocation(line: 248, column: 2, scope: !215)
!311 = !DILocation(line: 249, column: 13, scope: !215)
!312 = !DILocation(line: 249, column: 9, scope: !215)
!313 = !DILocation(line: 223, column: 8, scope: !215)
!314 = !DILocation(line: 251, column: 16, scope: !315)
!315 = distinct !DILexicalBlock(scope: !215, file: !3, line: 251, column: 6)
!316 = !DILocation(line: 251, column: 10, scope: !315)
!317 = !DILocation(line: 251, column: 6, scope: !215)
!318 = !DILocation(line: 252, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 251, column: 21)
!320 = !DILocation(line: 253, column: 2, scope: !319)
!321 = !DILocation(line: 253, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 253, column: 13)
!323 = !DILocation(line: 253, column: 28, scope: !322)
!324 = !DILocation(line: 253, column: 32, scope: !322)
!325 = !DILocation(line: 253, column: 45, scope: !322)
!326 = !DILocation(line: 253, column: 39, scope: !322)
!327 = !DILocation(line: 253, column: 13, scope: !315)
!328 = !DILocation(line: 254, column: 12, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 253, column: 50)
!330 = !DILocation(line: 255, column: 10, scope: !329)
!331 = !DILocation(line: 256, column: 2, scope: !329)
