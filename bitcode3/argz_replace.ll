; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_replace.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_replace.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_replace(i8** nocapture, i64* nocapture, i8*, i8*, i32* nocapture) local_unnamed_addr #0 !dbg !10 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = tail call i64 @strlen(i8* %2) #4, !dbg !45
  %9 = tail call i64 @strlen(i8* %3) #4, !dbg !46
  %10 = bitcast i8** %6 to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !47
  %11 = bitcast i8** %0 to i64*, !dbg !48
  %12 = load i64, i64* %11, align 8, !dbg !48, !tbaa !49
  %13 = bitcast i8** %6 to i64*, !dbg !53
  store i64 %12, i64* %13, align 8, !dbg !53, !tbaa !49
  %14 = bitcast i64* %7 to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !54
  %15 = load i64, i64* %1, align 8, !dbg !55, !tbaa !56
  store i64 %15, i64* %7, align 8, !dbg !58, !tbaa !56
  store i32 0, i32* %4, align 4, !dbg !64, !tbaa !65
  %16 = icmp eq i64 %15, 0, !dbg !67
  br i1 %16, label %94, label %17, !dbg !67

; <label>:17:                                     ; preds = %5
  %18 = sub i64 %9, %8, !dbg !68
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  br label %21, !dbg !67

; <label>:21:                                     ; preds = %17, %29
  %22 = phi i64 [ %15, %17 ], [ %30, %29 ]
  %23 = call i32 @_buf_findstr(i8* %2, i8** nonnull %6, i64* nonnull %7) #4, !dbg !69
  %24 = icmp eq i32 %23, 0, !dbg !69
  br i1 %24, label %29, label %25, !dbg !72

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4, !dbg !73, !tbaa !65
  %27 = add i32 %26, 1, !dbg !73
  store i32 %27, i32* %4, align 4, !dbg !73, !tbaa !65
  %28 = add i64 %22, %20, !dbg !75
  br label %29, !dbg !76

; <label>:29:                                     ; preds = %21, %25
  %30 = phi i64 [ %28, %25 ], [ %22, %21 ], !dbg !77
  %31 = load i64, i64* %7, align 8, !dbg !78, !tbaa !56
  %32 = icmp eq i64 %31, 0, !dbg !67
  br i1 %32, label %33, label %21, !dbg !67, !llvm.loop !79

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %4, align 4, !dbg !81, !tbaa !65
  %35 = icmp eq i32 %34, 0, !dbg !81
  br i1 %35, label %94, label %36, !dbg !83

; <label>:36:                                     ; preds = %33
  %37 = call i8* @malloc(i64 %30) #4, !dbg !84
  %38 = icmp eq i8* %37, null, !dbg !87
  br i1 %38, label %94, label %39, !dbg !88

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %11, align 8, !dbg !89, !tbaa !49
  store i64 %40, i64* %13, align 8, !dbg !90, !tbaa !49
  %41 = load i64, i64* %1, align 8, !dbg !91, !tbaa !56
  store i64 %41, i64* %7, align 8, !dbg !92, !tbaa !56
  %42 = inttoptr i64 %40 to i8*, !dbg !93
  %43 = icmp eq i64 %41, 0, !dbg !94
  br i1 %43, label %74, label %44, !dbg !94

; <label>:44:                                     ; preds = %39
  %45 = shl i64 %8, 32
  %46 = ashr exact i64 %45, 32
  %47 = shl i64 %9, 32
  %48 = ashr exact i64 %47, 32
  br label %49, !dbg !94

; <label>:49:                                     ; preds = %44, %66
  %50 = phi i8* [ %37, %44 ], [ %68, %66 ]
  %51 = phi i8* [ %42, %44 ], [ %67, %66 ]
  %52 = call i32 @_buf_findstr(i8* %2, i8** nonnull %6, i64* nonnull %7) #4, !dbg !95
  %53 = icmp eq i32 %52, 0, !dbg !95
  br i1 %53, label %66, label %54, !dbg !98

; <label>:54:                                     ; preds = %49
  %55 = load i64, i64* %13, align 8, !dbg !99, !tbaa !49
  %56 = ptrtoint i8* %51 to i64, !dbg !101
  %57 = add i64 %46, %56, !dbg !101
  %58 = sub i64 %55, %57, !dbg !102
  %59 = call i8* @memcpy(i8* %50, i8* %51, i64 %58) #4, !dbg !103
  %60 = load i64, i64* %13, align 8, !dbg !104, !tbaa !49
  %61 = sub i64 %60, %57, !dbg !105
  %62 = getelementptr inbounds i8, i8* %50, i64 %61, !dbg !106
  %63 = call i8* @memcpy(i8* %62, i8* %3, i64 %48) #4, !dbg !107
  %64 = getelementptr inbounds i8, i8* %62, i64 %48, !dbg !108
  %65 = load i8*, i8** %6, align 8, !dbg !109, !tbaa !49
  br label %66, !dbg !110

; <label>:66:                                     ; preds = %49, %54
  %67 = phi i8* [ %65, %54 ], [ %51, %49 ], !dbg !111
  %68 = phi i8* [ %64, %54 ], [ %50, %49 ], !dbg !111
  %69 = load i64, i64* %7, align 8, !dbg !112, !tbaa !56
  %70 = icmp eq i64 %69, 0, !dbg !94
  br i1 %70, label %71, label %49, !dbg !94, !llvm.loop !113

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %0, align 8, !dbg !115, !tbaa !49
  %73 = load i64, i64* %1, align 8, !dbg !116, !tbaa !56
  br label %74, !dbg !115

; <label>:74:                                     ; preds = %71, %39
  %75 = phi i64 [ 0, %39 ], [ %73, %71 ], !dbg !116
  %76 = phi i8* [ %42, %39 ], [ %72, %71 ], !dbg !115
  %77 = phi i8* [ %42, %39 ], [ %67, %71 ], !dbg !117
  %78 = phi i8* [ %37, %39 ], [ %68, %71 ], !dbg !117
  %79 = getelementptr inbounds i8, i8* %76, i64 %75, !dbg !118
  %80 = ptrtoint i8* %79 to i64, !dbg !119
  %81 = ptrtoint i8* %77 to i64, !dbg !119
  %82 = sub i64 %80, %81, !dbg !119
  %83 = call i8* @memcpy(i8* %78, i8* %77, i64 %82) #4, !dbg !120
  %84 = load i8*, i8** %0, align 8, !dbg !121, !tbaa !49
  %85 = call i8* @realloc(i8* %84, i64 %30) #4, !dbg !123
  %86 = icmp eq i8* %85, null, !dbg !124
  br i1 %86, label %87, label %88, !dbg !125

; <label>:87:                                     ; preds = %74
  call void @free(i8* nonnull %37) #4, !dbg !126
  br label %94, !dbg !128

; <label>:88:                                     ; preds = %74
  store i8* %85, i8** %0, align 8, !dbg !129, !tbaa !49
  %89 = call i8* @memcpy(i8* nonnull %85, i8* nonnull %37, i64 %30) #4, !dbg !130
  store i64 %30, i64* %1, align 8, !dbg !131, !tbaa !56
  %90 = icmp eq i64 %30, 0, !dbg !132
  br i1 %90, label %91, label %93, !dbg !134

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %0, align 8, !dbg !135, !tbaa !49
  call void @free(i8* %92) #4, !dbg !137
  store i8* null, i8** %0, align 8, !dbg !138, !tbaa !49
  br label %93, !dbg !139

; <label>:93:                                     ; preds = %91, %88
  call void @free(i8* nonnull %37) #4, !dbg !140
  br label %94, !dbg !141

; <label>:94:                                     ; preds = %5, %93, %33, %36, %87
  %95 = phi i32 [ 12, %87 ], [ 12, %36 ], [ 0, %33 ], [ 0, %93 ], [ 0, %5 ], !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !143
  ret i32 %95, !dbg !143
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_buf_findstr(i8*, i8**, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_replace.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_replace", scope: !1, file: !1, line: 16, type: !11, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !23, !23, !25}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !14, line: 5, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !{!28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!28 = !DILocalVariable(name: "argz", arg: 1, scope: !10, file: !1, line: 16, type: !16)
!29 = !DILocalVariable(name: "argz_len", arg: 2, scope: !10, file: !1, line: 16, type: !17)
!30 = !DILocalVariable(name: "str", arg: 3, scope: !10, file: !1, line: 16, type: !23)
!31 = !DILocalVariable(name: "with", arg: 4, scope: !10, file: !1, line: 16, type: !23)
!32 = !DILocalVariable(name: "replace_count", arg: 5, scope: !10, file: !1, line: 16, type: !25)
!33 = !DILocalVariable(name: "str_len", scope: !10, file: !1, line: 23, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!35 = !DILocalVariable(name: "with_len", scope: !10, file: !1, line: 24, type: !34)
!36 = !DILocalVariable(name: "len_diff", scope: !10, file: !1, line: 25, type: !34)
!37 = !DILocalVariable(name: "buf_iter", scope: !10, file: !1, line: 27, type: !4)
!38 = !DILocalVariable(name: "buf_len", scope: !10, file: !1, line: 28, type: !18)
!39 = !DILocalVariable(name: "last_iter", scope: !10, file: !1, line: 29, type: !4)
!40 = !DILocalVariable(name: "new_argz", scope: !10, file: !1, line: 30, type: !4)
!41 = !DILocalVariable(name: "new_argz_len", scope: !10, file: !1, line: 31, type: !18)
!42 = !DILocalVariable(name: "new_argz_iter", scope: !10, file: !1, line: 32, type: !4)
!43 = !DILocalVariable(name: "argz_realloc", scope: !10, file: !1, line: 33, type: !4)
!44 = !DILocation(line: 16, column: 1, scope: !10)
!45 = !DILocation(line: 23, column: 23, scope: !10)
!46 = !DILocation(line: 24, column: 24, scope: !10)
!47 = !DILocation(line: 27, column: 3, scope: !10)
!48 = !DILocation(line: 27, column: 20, scope: !10)
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 27, column: 9, scope: !10)
!54 = !DILocation(line: 28, column: 3, scope: !10)
!55 = !DILocation(line: 28, column: 20, scope: !10)
!56 = !{!57, !57, i64 0}
!57 = !{!"long", !51, i64 0}
!58 = !DILocation(line: 28, column: 10, scope: !10)
!59 = !DILocation(line: 29, column: 9, scope: !10)
!60 = !DILocation(line: 30, column: 9, scope: !10)
!61 = !DILocation(line: 31, column: 10, scope: !10)
!62 = !DILocation(line: 32, column: 9, scope: !10)
!63 = !DILocation(line: 33, column: 9, scope: !10)
!64 = !DILocation(line: 35, column: 18, scope: !10)
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !51, i64 0}
!67 = !DILocation(line: 38, column: 3, scope: !10)
!68 = !DILocation(line: 25, column: 33, scope: !10)
!69 = !DILocation(line: 40, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 40, column: 10)
!71 = distinct !DILexicalBlock(scope: !10, file: !1, line: 39, column: 5)
!72 = !DILocation(line: 40, column: 10, scope: !71)
!73 = !DILocation(line: 42, column: 26, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 41, column: 9)
!75 = !DILocation(line: 43, column: 24, scope: !74)
!76 = !DILocation(line: 44, column: 9, scope: !74)
!77 = !DILocation(line: 0, scope: !10)
!78 = !DILocation(line: 38, column: 9, scope: !10)
!79 = distinct !{!79, !67, !80}
!80 = !DILocation(line: 45, column: 5, scope: !10)
!81 = !DILocation(line: 47, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !10, file: !1, line: 47, column: 7)
!83 = !DILocation(line: 47, column: 7, scope: !10)
!84 = !DILocation(line: 49, column: 32, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 49, column: 11)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 48, column: 5)
!87 = !DILocation(line: 49, column: 22, scope: !85)
!88 = !DILocation(line: 49, column: 11, scope: !86)
!89 = !DILocation(line: 52, column: 18, scope: !86)
!90 = !DILocation(line: 52, column: 16, scope: !86)
!91 = !DILocation(line: 53, column: 17, scope: !86)
!92 = !DILocation(line: 53, column: 15, scope: !86)
!93 = !DILocation(line: 54, column: 19, scope: !86)
!94 = !DILocation(line: 57, column: 7, scope: !86)
!95 = !DILocation(line: 59, column: 15, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 59, column: 15)
!97 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 9)
!98 = !DILocation(line: 59, column: 15, scope: !97)
!99 = !DILocation(line: 63, column: 48, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 60, column: 13)
!101 = !DILocation(line: 63, column: 57, scope: !100)
!102 = !DILocation(line: 63, column: 69, scope: !100)
!103 = !DILocation(line: 63, column: 15, scope: !100)
!104 = !DILocation(line: 64, column: 33, scope: !100)
!105 = !DILocation(line: 64, column: 54, scope: !100)
!106 = !DILocation(line: 64, column: 29, scope: !100)
!107 = !DILocation(line: 66, column: 15, scope: !100)
!108 = !DILocation(line: 67, column: 29, scope: !100)
!109 = !DILocation(line: 68, column: 27, scope: !100)
!110 = !DILocation(line: 69, column: 13, scope: !100)
!111 = !DILocation(line: 0, scope: !86)
!112 = !DILocation(line: 57, column: 13, scope: !86)
!113 = distinct !{!113, !94, !114}
!114 = !DILocation(line: 70, column: 9, scope: !86)
!115 = !DILocation(line: 72, column: 40, scope: !86)
!116 = !DILocation(line: 72, column: 48, scope: !86)
!117 = !DILocation(line: 0, scope: !100)
!118 = !DILocation(line: 72, column: 46, scope: !86)
!119 = !DILocation(line: 72, column: 58, scope: !86)
!120 = !DILocation(line: 72, column: 7, scope: !86)
!121 = !DILocation(line: 75, column: 43, scope: !122)
!122 = distinct !DILexicalBlock(scope: !86, file: !1, line: 75, column: 10)
!123 = !DILocation(line: 75, column: 35, scope: !122)
!124 = !DILocation(line: 75, column: 25, scope: !122)
!125 = !DILocation(line: 75, column: 10, scope: !86)
!126 = !DILocation(line: 77, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 76, column: 9)
!128 = !DILocation(line: 78, column: 11, scope: !127)
!129 = !DILocation(line: 80, column: 13, scope: !86)
!130 = !DILocation(line: 82, column: 7, scope: !86)
!131 = !DILocation(line: 83, column: 17, scope: !86)
!132 = !DILocation(line: 85, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !86, file: !1, line: 85, column: 11)
!134 = !DILocation(line: 85, column: 11, scope: !86)
!135 = !DILocation(line: 87, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 86, column: 9)
!137 = !DILocation(line: 87, column: 11, scope: !136)
!138 = !DILocation(line: 88, column: 17, scope: !136)
!139 = !DILocation(line: 89, column: 9, scope: !136)
!140 = !DILocation(line: 90, column: 7, scope: !86)
!141 = !DILocation(line: 91, column: 5, scope: !86)
!142 = !DILocation(line: 0, scope: !85)
!143 = !DILocation(line: 94, column: 1, scope: !10)
