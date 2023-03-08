; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create_sep.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create_sep.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_create_sep(i8*, i32, i8** nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !10 {
  %5 = alloca [2 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #4, !dbg !45
  %8 = bitcast i8** %6 to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !47
  store i8* null, i8** %6, align 8, !dbg !48, !tbaa !49
  store i64 0, i64* %3, align 8, !dbg !56, !tbaa !57
  %9 = icmp eq i8* %0, null, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %9, label %13, label %10, !dbg !61

; <label>:10:                                     ; preds = %4
  %11 = load i8, i8* %0, align 1, !dbg !62, !tbaa !63
  %12 = icmp eq i8 %11, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %12, label %13, label %14, !dbg !65

; <label>:13:                                     ; preds = %4, %10
  store i8* null, i8** %2, align 8, !dbg !66, !tbaa !49
  br label %54, !dbg !68

; <label>:14:                                     ; preds = %10
  %15 = trunc i32 %1 to i8, !dbg !69
  store i8 %15, i8* %7, align 1, !dbg !70, !tbaa !63
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1, !dbg !71
  store i8 0, i8* %16, align 1, !dbg !72, !tbaa !63
  %17 = tail call i8* @strdup(i8* nonnull %0) #5, !dbg !73
  store i8* %17, i8** %6, align 8, !dbg !74, !tbaa !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  %18 = call i8* @strsep(i8** nonnull %6, i8* nonnull %7) #5, !dbg !76
  %19 = icmp eq i8* %18, null, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %19, label %32, label %20, !dbg !75

; <label>:20:                                     ; preds = %14, %20
  %21 = phi i8* [ %30, %20 ], [ %18, %14 ]
  %22 = phi i32 [ %29, %20 ], [ 0, %14 ]
  %23 = call i64 @strlen(i8* nonnull %21) #5, !dbg !77
  %24 = shl i64 %23, 32, !dbg !79
  %25 = add i64 %24, 4294967296, !dbg !79
  %26 = ashr exact i64 %25, 32, !dbg !79
  %27 = load i64, i64* %3, align 8, !dbg !80, !tbaa !57
  %28 = add i64 %26, %27, !dbg !80
  store i64 %28, i64* %3, align 8, !dbg !80, !tbaa !57
  %29 = add nuw nsw i32 %22, 1, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  %30 = call i8* @strsep(i8** nonnull %6, i8* nonnull %7) #5, !dbg !76
  %31 = icmp eq i8* %30, null, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %31, label %32, label %20, !dbg !75, !llvm.loop !82

; <label>:32:                                     ; preds = %20, %14
  %33 = phi i32 [ 0, %14 ], [ %29, %20 ], !dbg !84
  %34 = load i64, i64* %3, align 8, !dbg !85, !tbaa !57
  %35 = call i8* @malloc(i64 %34) #5, !dbg !87
  store i8* %35, i8** %2, align 8, !dbg !88, !tbaa !49
  %36 = icmp eq i8* %35, null, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %36, label %54, label %37, !dbg !89

; <label>:37:                                     ; preds = %32
  call void @free(i8* %17) #5, !dbg !90
  %38 = call i8* @strdup(i8* nonnull %0) #5, !dbg !91
  store i8* %38, i8** %6, align 8, !dbg !92, !tbaa !49
  %39 = load i8*, i8** %2, align 8, !dbg !93, !tbaa !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %40 = icmp eq i32 %33, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %40, label %53, label %41, !dbg !98

; <label>:41:                                     ; preds = %37, %41
  %42 = phi i8* [ %50, %41 ], [ %39, %37 ]
  %43 = phi i32 [ %51, %41 ], [ 0, %37 ]
  %44 = call i8* @strsep(i8** nonnull %6, i8* nonnull %7) #5, !dbg !99
  %45 = call i64 @strlen(i8* %44) #5, !dbg !101
  %46 = shl i64 %45, 32, !dbg !102
  %47 = add i64 %46, 4294967296, !dbg !102
  %48 = ashr exact i64 %47, 32, !dbg !102
  %49 = call i8* @memcpy(i8* %42, i8* %44, i64 %48) #5, !dbg !103
  %50 = getelementptr inbounds i8, i8* %42, i64 %48, !dbg !104
  %51 = add nuw nsw i32 %43, 1, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %52 = icmp eq i32 %51, %33, !dbg !96
  br i1 %52, label %53, label %41, !dbg !98, !llvm.loop !107

; <label>:53:                                     ; preds = %41, %37
  call void @free(i8* %38) #5, !dbg !109
  br label %54, !dbg !110

; <label>:54:                                     ; preds = %32, %53, %13
  %55 = phi i32 [ 0, %13 ], [ 0, %53 ], [ 12, %32 ], !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #4, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  ret i32 %55, !dbg !113
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @strdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strsep(i8**, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create_sep.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_create_sep", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !15, !18, !19}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !14, line: 5, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !23, line: 129, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !37, !38, !39, !40}
!26 = !DILocalVariable(name: "string", arg: 1, scope: !10, file: !1, line: 14, type: !16)
!27 = !DILocalVariable(name: "sep", arg: 2, scope: !10, file: !1, line: 14, type: !15)
!28 = !DILocalVariable(name: "argz", arg: 3, scope: !10, file: !1, line: 14, type: !18)
!29 = !DILocalVariable(name: "argz_len", arg: 4, scope: !10, file: !1, line: 14, type: !19)
!30 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 20, type: !15)
!31 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 21, type: !15)
!32 = !DILocalVariable(name: "num_strings", scope: !10, file: !1, line: 22, type: !15)
!33 = !DILocalVariable(name: "delim", scope: !10, file: !1, line: 23, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DILocalVariable(name: "running", scope: !10, file: !1, line: 24, type: !4)
!38 = !DILocalVariable(name: "old_running", scope: !10, file: !1, line: 25, type: !4)
!39 = !DILocalVariable(name: "token", scope: !10, file: !1, line: 26, type: !4)
!40 = !DILocalVariable(name: "iter", scope: !10, file: !1, line: 27, type: !4)
!41 = !DILocation(line: 14, column: 1, scope: !10)
!42 = !DILocation(line: 20, column: 7, scope: !10)
!43 = !DILocation(line: 21, column: 7, scope: !10)
!44 = !DILocation(line: 22, column: 7, scope: !10)
!45 = !DILocation(line: 23, column: 3, scope: !10)
!46 = !DILocation(line: 23, column: 8, scope: !10)
!47 = !DILocation(line: 24, column: 3, scope: !10)
!48 = !DILocation(line: 24, column: 9, scope: !10)
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 25, column: 9, scope: !10)
!54 = !DILocation(line: 26, column: 9, scope: !10)
!55 = !DILocation(line: 27, column: 9, scope: !10)
!56 = !DILocation(line: 29, column: 13, scope: !10)
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !51, i64 0}
!59 = !DILocation(line: 31, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 7)
!61 = !DILocation(line: 31, column: 15, scope: !60)
!62 = !DILocation(line: 31, column: 18, scope: !60)
!63 = !{!51, !51, i64 0}
!64 = !DILocation(line: 31, column: 28, scope: !60)
!65 = !DILocation(line: 31, column: 7, scope: !10)
!66 = !DILocation(line: 33, column: 12, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 32, column: 5)
!68 = !DILocation(line: 34, column: 7, scope: !67)
!69 = !DILocation(line: 37, column: 14, scope: !10)
!70 = !DILocation(line: 37, column: 12, scope: !10)
!71 = !DILocation(line: 38, column: 3, scope: !10)
!72 = !DILocation(line: 38, column: 12, scope: !10)
!73 = !DILocation(line: 40, column: 13, scope: !10)
!74 = !DILocation(line: 40, column: 11, scope: !10)
!75 = !DILocation(line: 43, column: 3, scope: !10)
!76 = !DILocation(line: 43, column: 19, scope: !10)
!77 = !DILocation(line: 45, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !10, file: !1, line: 44, column: 5)
!79 = !DILocation(line: 46, column: 20, scope: !78)
!80 = !DILocation(line: 46, column: 17, scope: !78)
!81 = !DILocation(line: 47, column: 18, scope: !78)
!82 = distinct !{!82, !75, !83}
!83 = !DILocation(line: 48, column: 5, scope: !10)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 50, column: 31, scope: !86)
!86 = distinct !DILexicalBlock(scope: !10, file: !1, line: 50, column: 6)
!87 = !DILocation(line: 50, column: 24, scope: !86)
!88 = !DILocation(line: 50, column: 14, scope: !86)
!89 = !DILocation(line: 50, column: 6, scope: !10)
!90 = !DILocation(line: 53, column: 3, scope: !10)
!91 = !DILocation(line: 55, column: 13, scope: !10)
!92 = !DILocation(line: 55, column: 11, scope: !10)
!93 = !DILocation(line: 58, column: 10, scope: !10)
!94 = !DILocation(line: 59, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !10, file: !1, line: 59, column: 3)
!96 = !DILocation(line: 59, column: 17, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !1, line: 59, column: 3)
!98 = !DILocation(line: 59, column: 3, scope: !95)
!99 = !DILocation(line: 61, column: 15, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 60, column: 5)
!101 = !DILocation(line: 62, column: 13, scope: !100)
!102 = !DILocation(line: 63, column: 27, scope: !100)
!103 = !DILocation(line: 63, column: 7, scope: !100)
!104 = !DILocation(line: 64, column: 12, scope: !100)
!105 = !DILocation(line: 59, column: 33, scope: !97)
!106 = !DILocation(line: 59, column: 3, scope: !97)
!107 = distinct !{!107, !98, !108}
!108 = !DILocation(line: 65, column: 5, scope: !95)
!109 = !DILocation(line: 67, column: 3, scope: !10)
!110 = !DILocation(line: 68, column: 3, scope: !10)
!111 = !DILocation(line: 0, scope: !86)
!112 = !DILocation(line: 0, scope: !67)
!113 = !DILocation(line: 69, column: 1, scope: !10)
