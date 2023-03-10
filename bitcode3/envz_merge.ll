; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_merge.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_merge.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @envz_merge(i8**, i64*, i8*, i64, i32) local_unnamed_addr #0 !dbg !10 {
  %6 = tail call i8* @argz_next(i8* %2, i64 %3, i8* null) #3, !dbg !42
  %7 = icmp eq i8* %6, null, !dbg !43
  br i1 %7, label %38, label %8, !dbg !44

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i32 %4, 0
  br label %10, !dbg !44

; <label>:10:                                     ; preds = %8, %32
  %11 = phi i8* [ %6, %8 ], [ %34, %32 ]
  %12 = tail call i8* @strdup(i8* nonnull %11) #3, !dbg !45
  %13 = tail call i8* @strchr(i8* %12, i32 61) #3, !dbg !45
  %14 = icmp ne i8* %13, null, !dbg !49
  br i1 %9, label %15, label %26, !dbg !51

; <label>:15:                                     ; preds = %10
  br i1 %14, label %16, label %17, !dbg !52

; <label>:16:                                     ; preds = %15
  store i8 0, i8* %13, align 1, !dbg !53, !tbaa !54
  br label %17, !dbg !57

; <label>:17:                                     ; preds = %16, %15
  %18 = load i8*, i8** %0, align 8, !dbg !58, !tbaa !60
  %19 = load i64, i64* %1, align 8, !dbg !62, !tbaa !63
  %20 = tail call i8* @envz_entry(i8* %18, i64 %19, i8* %12) #3, !dbg !65
  %21 = icmp eq i8* %20, null, !dbg !65
  br i1 %21, label %22, label %24, !dbg !66

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @argz_add(i8** nonnull %0, i64* nonnull %1, i8* nonnull %11) #3, !dbg !67
  br label %24, !dbg !69

; <label>:24:                                     ; preds = %17, %22
  %25 = phi i32 [ 0, %17 ], [ %23, %22 ], !dbg !70
  tail call void @free(i8* %12) #3, !dbg !71
  br label %32, !dbg !72

; <label>:26:                                     ; preds = %10
  br i1 %14, label %27, label %29, !dbg !73

; <label>:27:                                     ; preds = %26
  store i8 0, i8* %13, align 1, !dbg !75, !tbaa !54
  %28 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !78
  br label %29, !dbg !79

; <label>:29:                                     ; preds = %26, %27
  %30 = phi i8* [ %28, %27 ], [ null, %26 ], !dbg !80
  %31 = tail call i32 @envz_add(i8** %0, i64* %1, i8* %12, i8* %30) #3, !dbg !82
  tail call void @free(i8* %12) #3, !dbg !83
  br label %32

; <label>:32:                                     ; preds = %29, %24
  %33 = phi i32 [ %31, %29 ], [ %25, %24 ], !dbg !84
  %34 = tail call i8* @argz_next(i8* %2, i64 %3, i8* nonnull %11) #3, !dbg !42
  %35 = icmp ne i8* %34, null, !dbg !43
  %36 = icmp eq i32 %33, 0, !dbg !85
  %37 = and i1 %36, %35, !dbg !44
  br i1 %37, label %10, label %38, !dbg !44, !llvm.loop !86

; <label>:38:                                     ; preds = %32, %5
  %39 = phi i32 [ 0, %5 ], [ %33, %32 ], !dbg !89
  ret i32 %39, !dbg !90
}

; Function Attrs: noredzone
declare dso_local i8* @argz_next(i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strdup(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @envz_entry(i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @argz_add(i8**, i64*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @envz_add(i8**, i64*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_merge.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_merge", scope: !1, file: !1, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !23, !18, !15}
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
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!26 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 15, type: !16)
!27 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 15, type: !17)
!28 = !DILocalVariable(name: "envz2", arg: 3, scope: !10, file: !1, line: 15, type: !23)
!29 = !DILocalVariable(name: "envz2_len", arg: 4, scope: !10, file: !1, line: 15, type: !18)
!30 = !DILocalVariable(name: "override", arg: 5, scope: !10, file: !1, line: 15, type: !15)
!31 = !DILocalVariable(name: "entry", scope: !10, file: !1, line: 22, type: !4)
!32 = !DILocalVariable(name: "name_str", scope: !10, file: !1, line: 23, type: !4)
!33 = !DILocalVariable(name: "val_str", scope: !10, file: !1, line: 24, type: !4)
!34 = !DILocalVariable(name: "name_iter", scope: !10, file: !1, line: 25, type: !4)
!35 = !DILocalVariable(name: "retval", scope: !10, file: !1, line: 26, type: !15)
!36 = !DILocation(line: 15, column: 1, scope: !10)
!37 = !DILocation(line: 22, column: 9, scope: !10)
!38 = !DILocation(line: 23, column: 9, scope: !10)
!39 = !DILocation(line: 24, column: 9, scope: !10)
!40 = !DILocation(line: 25, column: 9, scope: !10)
!41 = !DILocation(line: 26, column: 7, scope: !10)
!42 = !DILocation(line: 28, column: 18, scope: !10)
!43 = !DILocation(line: 28, column: 16, scope: !10)
!44 = !DILocation(line: 28, column: 62, scope: !10)
!45 = !DILocation(line: 0, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 31, column: 9)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 30, column: 11)
!48 = distinct !DILexicalBlock(scope: !10, file: !1, line: 29, column: 5)
!49 = !DILocation(line: 0, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 14)
!51 = !DILocation(line: 30, column: 11, scope: !48)
!52 = !DILocation(line: 34, column: 14, scope: !46)
!53 = !DILocation(line: 35, column: 24, scope: !50)
!54 = !{!55, !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 35, column: 13, scope: !50)
!58 = !DILocation(line: 37, column: 26, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 37, column: 14)
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !55, i64 0}
!62 = !DILocation(line: 37, column: 33, scope: !59)
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !55, i64 0}
!65 = !DILocation(line: 37, column: 15, scope: !59)
!66 = !DILocation(line: 37, column: 14, scope: !46)
!67 = !DILocation(line: 39, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 38, column: 13)
!69 = !DILocation(line: 40, column: 13, scope: !68)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocation(line: 41, column: 11, scope: !46)
!72 = !DILocation(line: 42, column: 9, scope: !46)
!73 = !DILocation(line: 47, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !47, file: !1, line: 44, column: 9)
!75 = !DILocation(line: 49, column: 26, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 48, column: 13)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 47, column: 14)
!78 = !DILocation(line: 50, column: 35, scope: !76)
!79 = !DILocation(line: 51, column: 13, scope: !76)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 53, column: 13)
!82 = !DILocation(line: 57, column: 20, scope: !74)
!83 = !DILocation(line: 58, column: 11, scope: !74)
!84 = !DILocation(line: 0, scope: !10)
!85 = !DILocation(line: 28, column: 65, scope: !10)
!86 = distinct !{!86, !87, !88}
!87 = !DILocation(line: 28, column: 3, scope: !10)
!88 = !DILocation(line: 60, column: 5, scope: !10)
!89 = !DILocation(line: 0, scope: !74)
!90 = !DILocation(line: 61, column: 3, scope: !10)
