; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hsearch_data = type { %struct.internal_head*, i64 }
%struct.internal_head = type { %struct.internal_entry* }
%struct.internal_entry = type { %struct.anon, %struct.entry }
%struct.anon = type { %struct.internal_entry* }
%struct.entry = type { i8*, i8* }

@__default_hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @hcreate_r(i64, %struct.hsearch_data* nocapture) local_unnamed_addr #0 !dbg !20 {
  %3 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %1, i64 0, i32 0, !dbg !57
  %4 = load %struct.internal_head*, %struct.internal_head** %3, align 8, !dbg !57, !tbaa !59
  %5 = icmp eq %struct.internal_head* %4, null, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %5, label %8, label %6, !dbg !66

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno() #3, !dbg !67
  store i32 22, i32* %7, align 4, !dbg !69, !tbaa !70
  br label %72, !dbg !72

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %0, 16, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %9, label %10, label %11, !dbg !75

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br label %13, !dbg !77

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i64 %0, 288230376151711744, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %12, label %13, label %15, !dbg !77

; <label>:13:                                     ; preds = %11, %10
  %14 = phi i64 [ 16, %10 ], [ 288230376151711744, %11 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br label %15, !dbg !81

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i64 [ %0, %11 ], [ %14, %13 ], !dbg !83
  %17 = add i64 %16, -1, !dbg !81
  %18 = and i64 %17, %16, !dbg !84
  %19 = icmp eq i64 %18, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %19, label %30, label %20, !dbg !86

; <label>:20:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br label %21, !dbg !92

; <label>:21:                                     ; preds = %20, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %20 ]
  %23 = phi i64 [ %24, %21 ], [ %16, %20 ]
  %24 = lshr i64 %23, 1, !dbg !92
  %25 = add nuw nsw i32 %22, 1, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %26 = icmp eq i64 %24, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %26, label %27, label %21, !dbg !91, !llvm.loop !97

; <label>:27:                                     ; preds = %21
  %28 = shl i32 2, %22, !dbg !99
  %29 = sext i32 %28 to i64, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br label %30, !dbg !101

; <label>:30:                                     ; preds = %15, %27
  %31 = phi i64 [ %29, %27 ], [ %16, %15 ], !dbg !80
  %32 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %1, i64 0, i32 1, !dbg !102
  store i64 %31, i64* %32, align 8, !dbg !103, !tbaa !104
  %33 = shl i64 %31, 3, !dbg !105
  %34 = tail call i8* @malloc(i64 %33) #3, !dbg !106
  %35 = bitcast %struct.hsearch_data* %1 to i8**, !dbg !107
  store i8* %34, i8** %35, align 8, !dbg !107, !tbaa !59
  %36 = icmp eq i8* %34, null, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  %37 = bitcast i8* %34 to %struct.internal_head*, !dbg !110
  br i1 %36, label %38, label %40, !dbg !110

; <label>:38:                                     ; preds = %30
  %39 = tail call i32* @__errno() #3, !dbg !111
  store i32 12, i32* %39, align 4, !dbg !113, !tbaa !70
  br label %72, !dbg !114

; <label>:40:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %41 = load i64, i64* %32, align 8, !dbg !118, !tbaa !104
  %42 = icmp eq i64 %41, 0, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br i1 %42, label %72, label %43, !dbg !121

; <label>:43:                                     ; preds = %40
  %44 = add i64 %41, -1, !dbg !122
  %45 = and i64 %41, 3, !dbg !122
  %46 = icmp ult i64 %44, 3, !dbg !122
  br i1 %46, label %62, label %47, !dbg !122

; <label>:47:                                     ; preds = %43
  %48 = sub i64 %41, %45, !dbg !122
  br label %49, !dbg !122

; <label>:49:                                     ; preds = %49, %47
  %50 = phi i64 [ 0, %47 ], [ %59, %49 ]
  %51 = phi i64 [ %48, %47 ], [ %60, %49 ]
  %52 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %37, i64 %50, i32 0, !dbg !122
  store %struct.internal_entry* null, %struct.internal_entry** %52, align 8, !dbg !122, !tbaa !124
  %53 = or i64 %50, 1, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %54 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %37, i64 %53, i32 0, !dbg !122
  store %struct.internal_entry* null, %struct.internal_entry** %54, align 8, !dbg !122, !tbaa !124
  %55 = or i64 %50, 2, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %56 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %37, i64 %55, i32 0, !dbg !122
  store %struct.internal_entry* null, %struct.internal_entry** %56, align 8, !dbg !122, !tbaa !124
  %57 = or i64 %50, 3, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %58 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %37, i64 %57, i32 0, !dbg !122
  store %struct.internal_entry* null, %struct.internal_entry** %58, align 8, !dbg !122, !tbaa !124
  %59 = add i64 %50, 4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %60 = add i64 %51, -4, !dbg !121
  %61 = icmp eq i64 %60, 0, !dbg !121
  br i1 %61, label %62, label %49, !dbg !121, !llvm.loop !128

; <label>:62:                                     ; preds = %49, %43
  %63 = phi i64 [ 0, %43 ], [ %59, %49 ]
  %64 = icmp eq i64 %45, 0, !dbg !121
  br i1 %64, label %72, label %65, !dbg !121

; <label>:65:                                     ; preds = %62, %65
  %66 = phi i64 [ %69, %65 ], [ %63, %62 ]
  %67 = phi i64 [ %70, %65 ], [ %45, %62 ]
  %68 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %37, i64 %66, i32 0, !dbg !122
  store %struct.internal_entry* null, %struct.internal_entry** %68, align 8, !dbg !122, !tbaa !124
  %69 = add nuw i64 %66, 1, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %70 = add i64 %67, -1, !dbg !121
  %71 = icmp eq i64 %70, 0, !dbg !121
  br i1 %71, label %72, label %65, !dbg !121, !llvm.loop !130

; <label>:72:                                     ; preds = %62, %65, %40, %38, %6
  %73 = phi i32 [ 0, %6 ], [ 0, %38 ], [ 1, %40 ], [ 1, %65 ], [ 1, %62 ], !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  ret i32 %73, !dbg !134
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @hdestroy_r(%struct.hsearch_data* nocapture) local_unnamed_addr #0 !dbg !135 {
  %2 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %0, i64 0, i32 0, !dbg !141
  %3 = load %struct.internal_head*, %struct.internal_head** %2, align 8, !dbg !141, !tbaa !59
  %4 = icmp eq %struct.internal_head* %3, null, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %4, label %7, label %5, !dbg !144

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.internal_head* %3 to i8*, !dbg !145
  tail call void @free(i8* %6) #3, !dbg !146
  store %struct.internal_head* null, %struct.internal_head** %2, align 8, !dbg !147, !tbaa !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br label %7, !dbg !148

; <label>:7:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  ret void, !dbg !148
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @hsearch_r(i8*, i8*, i32, %struct.entry** nocapture, %struct.hsearch_data* nocapture readonly) local_unnamed_addr #0 !dbg !149 {
  %6 = tail call i64 @strlen(i8* %0) #3, !dbg !170
  %7 = load i32 (i8*, i64)*, i32 (i8*, i64)** @__default_hash, align 8, !dbg !172, !tbaa !173
  %8 = tail call i32 %7(i8* %0, i64 %6) #3, !dbg !174
  %9 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %4, i64 0, i32 0, !dbg !176
  %10 = load %struct.internal_head*, %struct.internal_head** %9, align 8, !dbg !176, !tbaa !59
  %11 = zext i32 %8 to i64, !dbg !177
  %12 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %4, i64 0, i32 1, !dbg !178
  %13 = load i64, i64* %12, align 8, !dbg !178, !tbaa !104
  %14 = add i64 %13, 4294967295, !dbg !179
  %15 = and i64 %14, %11, !dbg !180
  %16 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %10, i64 %15, i32 0, !dbg !181
  %17 = load %struct.internal_entry*, %struct.internal_entry** %16, align 8, !dbg !181, !tbaa !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  %18 = icmp eq %struct.internal_entry* %17, null, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %18, label %31, label %19, !dbg !183

; <label>:19:                                     ; preds = %5, %25
  %20 = phi %struct.internal_entry* [ %27, %25 ], [ %17, %5 ]
  %21 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 1, i32 0, !dbg !185
  %22 = load i8*, i8** %21, align 8, !dbg !185, !tbaa !188
  %23 = tail call i32 @strcmp(i8* %22, i8* %0) #3, !dbg !192
  %24 = icmp eq i32 %23, 0, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br i1 %24, label %29, label %25, !dbg !194

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 0, i32 0, !dbg !195
  %27 = load %struct.internal_entry*, %struct.internal_entry** %26, align 8, !dbg !195, !tbaa !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  %28 = icmp eq %struct.internal_entry* %27, null, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %28, label %31, label %19, !dbg !183, !llvm.loop !197

; <label>:29:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  %30 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 1, !dbg !200
  store %struct.entry* %30, %struct.entry** %3, align 8, !dbg !203, !tbaa !173
  br label %48, !dbg !204

; <label>:31:                                     ; preds = %25, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  %32 = icmp eq i32 %2, 0, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %32, label %33, label %34, !dbg !207

; <label>:33:                                     ; preds = %31
  store %struct.entry* null, %struct.entry** %3, align 8, !dbg !208, !tbaa !173
  br label %48, !dbg !210

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @malloc(i64 24) #3, !dbg !211
  %36 = icmp eq i8* %35, null, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br i1 %36, label %37, label %38, !dbg !214

; <label>:37:                                     ; preds = %34
  store %struct.entry* null, %struct.entry** %3, align 8, !dbg !215, !tbaa !173
  br label %48, !dbg !217

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !218
  %40 = bitcast i8* %39 to i8**, !dbg !219
  store i8* %0, i8** %40, align 8, !dbg !220, !tbaa !188
  %41 = getelementptr inbounds i8, i8* %35, i64 16, !dbg !221
  %42 = bitcast i8* %41 to i8**, !dbg !221
  store i8* %1, i8** %42, align 8, !dbg !222, !tbaa !223
  %43 = bitcast %struct.internal_entry** %16 to i64*, !dbg !224
  %44 = load i64, i64* %43, align 8, !dbg !224, !tbaa !124
  %45 = bitcast i8* %35 to i64*, !dbg !224
  store i64 %44, i64* %45, align 8, !dbg !224, !tbaa !196
  %46 = bitcast %struct.internal_entry** %16 to i8**, !dbg !224
  store i8* %35, i8** %46, align 8, !dbg !224, !tbaa !124
  %47 = bitcast %struct.entry** %3 to i8**, !dbg !226
  store i8* %39, i8** %47, align 8, !dbg !226, !tbaa !173
  br label %48, !dbg !227

; <label>:48:                                     ; preds = %38, %37, %33, %29
  %49 = phi i32 [ 1, %29 ], [ 0, %33 ], [ 0, %37 ], [ 1, %38 ], !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  ret i32 %49, !dbg !230
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 21, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "FIND", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "ENTER", value: 1, isUnsigned: true)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 40, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !14, line: 129, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "hcreate_r", scope: !1, file: !1, line: 82, type: !21, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !50)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !11, !24}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsearch_data", file: !4, line: 39, size: 128, elements: !26)
!26 = !{!27, !47}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !25, file: !4, line: 41, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_head", file: !1, line: 66, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "slh_first", scope: !29, file: !1, line: 66, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_entry", file: !1, line: 62, size: 192, elements: !34)
!34 = !{!35, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !33, file: !1, line: 63, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !33, file: !1, line: 63, size: 64, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !36, file: !1, line: 63, baseType: !32, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !33, file: !1, line: 64, baseType: !40, size: 128, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY", file: !4, line: 19, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry", file: !4, line: 16, size: 128, elements: !42)
!42 = !{!43, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !41, file: !4, line: 17, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !4, line: 18, baseType: !10, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "htablesize", scope: !25, file: !4, line: 42, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 58, baseType: !15)
!49 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(name: "nel", arg: 1, scope: !20, file: !1, line: 82, type: !11)
!52 = !DILocalVariable(name: "htab", arg: 2, scope: !20, file: !1, line: 82, type: !24)
!53 = !DILocalVariable(name: "idx", scope: !20, file: !1, line: 84, type: !11)
!54 = !DILocalVariable(name: "p2", scope: !20, file: !1, line: 85, type: !5)
!55 = !DILocation(line: 82, column: 18, scope: !20)
!56 = !DILocation(line: 82, column: 44, scope: !20)
!57 = !DILocation(line: 88, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !20, file: !1, line: 88, column: 6)
!59 = !{!60, !61, i64 0}
!60 = !{!"hsearch_data", !61, i64 0, !64, i64 8}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !DILocation(line: 88, column: 19, scope: !58)
!66 = !DILocation(line: 88, column: 6, scope: !20)
!67 = !DILocation(line: 89, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 88, column: 28)
!69 = !DILocation(line: 89, column: 9, scope: !68)
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !62, i64 0}
!72 = !DILocation(line: 90, column: 3, scope: !68)
!73 = !DILocation(line: 94, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !20, file: !1, line: 94, column: 6)
!75 = !DILocation(line: 94, column: 6, scope: !20)
!76 = !DILocation(line: 95, column: 3, scope: !74)
!77 = !DILocation(line: 98, column: 6, scope: !20)
!78 = !DILocation(line: 98, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !20, file: !1, line: 98, column: 6)
!80 = !DILocation(line: 0, scope: !79)
!81 = !DILocation(line: 102, column: 18, scope: !82)
!82 = distinct !DILexicalBlock(scope: !20, file: !1, line: 102, column: 6)
!83 = !DILocation(line: 0, scope: !74)
!84 = !DILocation(line: 102, column: 11, scope: !82)
!85 = !DILocation(line: 102, column: 24, scope: !82)
!86 = !DILocation(line: 102, column: 6, scope: !20)
!87 = !DILocation(line: 85, column: 15, scope: !20)
!88 = !DILocation(line: 103, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 103, column: 3)
!90 = distinct !DILexicalBlock(scope: !82, file: !1, line: 102, column: 30)
!91 = !DILocation(line: 103, column: 3, scope: !89)
!92 = !DILocation(line: 104, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 103, column: 3)
!94 = !DILocation(line: 103, column: 28, scope: !93)
!95 = !DILocation(line: 103, column: 3, scope: !93)
!96 = !DILocation(line: 103, column: 20, scope: !93)
!97 = distinct !{!97, !91, !98}
!98 = !DILocation(line: 104, column: 12, scope: !89)
!99 = !DILocation(line: 105, column: 11, scope: !90)
!100 = !DILocation(line: 105, column: 9, scope: !90)
!101 = !DILocation(line: 106, column: 2, scope: !90)
!102 = !DILocation(line: 109, column: 8, scope: !20)
!103 = !DILocation(line: 109, column: 19, scope: !20)
!104 = !{!60, !64, i64 8}
!105 = !DILocation(line: 110, column: 41, scope: !20)
!106 = !DILocation(line: 110, column: 17, scope: !20)
!107 = !DILocation(line: 110, column: 15, scope: !20)
!108 = !DILocation(line: 111, column: 19, scope: !109)
!109 = distinct !DILexicalBlock(scope: !20, file: !1, line: 111, column: 6)
!110 = !DILocation(line: 111, column: 6, scope: !20)
!111 = !DILocation(line: 112, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 111, column: 28)
!113 = !DILocation(line: 112, column: 9, scope: !112)
!114 = !DILocation(line: 113, column: 3, scope: !112)
!115 = !DILocation(line: 84, column: 9, scope: !20)
!116 = !DILocation(line: 117, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !20, file: !1, line: 117, column: 2)
!118 = !DILocation(line: 117, column: 28, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !1, line: 117, column: 2)
!120 = !DILocation(line: 117, column: 20, scope: !119)
!121 = !DILocation(line: 117, column: 2, scope: !117)
!122 = !DILocation(line: 118, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 118, column: 3)
!124 = !{!125, !61, i64 0}
!125 = !{!"internal_head", !61, i64 0}
!126 = !DILocation(line: 117, column: 43, scope: !119)
!127 = !DILocation(line: 117, column: 2, scope: !119)
!128 = distinct !{!128, !121, !129}
!129 = !DILocation(line: 118, column: 3, scope: !117)
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !DILocation(line: 0, scope: !20)
!133 = !DILocation(line: 0, scope: !68)
!134 = !DILocation(line: 121, column: 1, scope: !20)
!135 = distinct !DISubprogram(name: "hdestroy_r", scope: !1, file: !1, line: 124, type: !136, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !24}
!138 = !{!139}
!139 = !DILocalVariable(name: "htab", arg: 1, scope: !135, file: !1, line: 124, type: !24)
!140 = !DILocation(line: 124, column: 33, scope: !135)
!141 = !DILocation(line: 130, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 130, column: 6)
!143 = !DILocation(line: 130, column: 19, scope: !142)
!144 = !DILocation(line: 130, column: 6, scope: !135)
!145 = !DILocation(line: 143, column: 7, scope: !135)
!146 = !DILocation(line: 143, column: 2, scope: !135)
!147 = !DILocation(line: 144, column: 15, scope: !135)
!148 = !DILocation(line: 145, column: 1, scope: !135)
!149 = distinct !DISubprogram(name: "hsearch_r", scope: !1, file: !1, line: 148, type: !150, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !155)
!150 = !DISubroutineType(types: !151)
!151 = !{!23, !40, !152, !153, !24}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !4, line: 23, baseType: !3)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !165}
!156 = !DILocalVariable(name: "item", arg: 1, scope: !149, file: !1, line: 148, type: !40)
!157 = !DILocalVariable(name: "action", arg: 2, scope: !149, file: !1, line: 148, type: !152)
!158 = !DILocalVariable(name: "retval", arg: 3, scope: !149, file: !1, line: 148, type: !153)
!159 = !DILocalVariable(name: "htab", arg: 4, scope: !149, file: !1, line: 148, type: !24)
!160 = !DILocalVariable(name: "head", scope: !149, file: !1, line: 150, type: !28)
!161 = !DILocalVariable(name: "ie", scope: !149, file: !1, line: 151, type: !32)
!162 = !DILocalVariable(name: "hashval", scope: !149, file: !1, line: 152, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !164, line: 79, baseType: !5)
!164 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !DILocalVariable(name: "len", scope: !149, file: !1, line: 153, type: !11)
!166 = !DILocation(line: 148, column: 17, scope: !149)
!167 = !DILocation(line: 148, column: 30, scope: !149)
!168 = !DILocation(line: 148, column: 46, scope: !149)
!169 = !DILocation(line: 148, column: 75, scope: !149)
!170 = !DILocation(line: 155, column: 8, scope: !149)
!171 = !DILocation(line: 153, column: 9, scope: !149)
!172 = !DILocation(line: 156, column: 14, scope: !149)
!173 = !{!61, !61, i64 0}
!174 = !DILocation(line: 156, column: 12, scope: !149)
!175 = !DILocation(line: 152, column: 13, scope: !149)
!176 = !DILocation(line: 158, column: 24, scope: !149)
!177 = !DILocation(line: 158, column: 31, scope: !149)
!178 = !DILocation(line: 158, column: 48, scope: !149)
!179 = !DILocation(line: 158, column: 59, scope: !149)
!180 = !DILocation(line: 158, column: 39, scope: !149)
!181 = !DILocation(line: 159, column: 7, scope: !149)
!182 = !DILocation(line: 151, column: 25, scope: !149)
!183 = !DILocation(line: 160, column: 2, scope: !149)
!184 = !DILocation(line: 160, column: 12, scope: !149)
!185 = !DILocation(line: 161, column: 22, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 161, column: 7)
!187 = distinct !DILexicalBlock(scope: !149, file: !1, line: 160, column: 21)
!188 = !{!189, !61, i64 8}
!189 = !{!"internal_entry", !190, i64 0, !191, i64 8}
!190 = !{!"", !61, i64 0}
!191 = !{!"entry", !61, i64 0, !61, i64 8}
!192 = !DILocation(line: 161, column: 7, scope: !186)
!193 = !DILocation(line: 161, column: 37, scope: !186)
!194 = !DILocation(line: 161, column: 7, scope: !187)
!195 = !DILocation(line: 163, column: 8, scope: !187)
!196 = !{!189, !61, i64 0}
!197 = distinct !{!197, !183, !198}
!198 = !DILocation(line: 164, column: 2, scope: !149)
!199 = !DILocation(line: 166, column: 6, scope: !149)
!200 = !DILocation(line: 168, column: 28, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 167, column: 11)
!202 = distinct !DILexicalBlock(scope: !149, file: !1, line: 166, column: 6)
!203 = !DILocation(line: 168, column: 21, scope: !201)
!204 = !DILocation(line: 169, column: 13, scope: !201)
!205 = !DILocation(line: 171, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 171, column: 11)
!207 = !DILocation(line: 171, column: 11, scope: !202)
!208 = !DILocation(line: 173, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 172, column: 11)
!210 = !DILocation(line: 174, column: 13, scope: !209)
!211 = !DILocation(line: 177, column: 7, scope: !149)
!212 = !DILocation(line: 178, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !149, file: !1, line: 178, column: 6)
!214 = !DILocation(line: 178, column: 6, scope: !149)
!215 = !DILocation(line: 180, column: 21, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !1, line: 179, column: 11)
!217 = !DILocation(line: 181, column: 13, scope: !216)
!218 = !DILocation(line: 183, column: 6, scope: !149)
!219 = !DILocation(line: 183, column: 10, scope: !149)
!220 = !DILocation(line: 183, column: 14, scope: !149)
!221 = !DILocation(line: 184, column: 10, scope: !149)
!222 = !DILocation(line: 184, column: 15, scope: !149)
!223 = !{!189, !61, i64 16}
!224 = !DILocation(line: 186, column: 2, scope: !225)
!225 = distinct !DILexicalBlock(scope: !149, file: !1, line: 186, column: 2)
!226 = !DILocation(line: 187, column: 17, scope: !149)
!227 = !DILocation(line: 188, column: 2, scope: !149)
!228 = !DILocation(line: 0, scope: !149)
!229 = !DILocation(line: 0, scope: !201)
!230 = !DILocation(line: 189, column: 1, scope: !149)
