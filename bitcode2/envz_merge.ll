; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_merge.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_merge.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @envz_merge(i8**, i64*, i8*, i64, i32) local_unnamed_addr #0 !dbg !10 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %6 = tail call i8* @argz_next(i8* %2, i64 %3, i8* null) #3, !dbg !43
  %7 = icmp eq i8* %6, null, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %7, label %39, label %8, !dbg !45

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i32 %4, 0
  br label %10, !dbg !45

; <label>:10:                                     ; preds = %8, %35
  %11 = phi i8* [ %6, %8 ], [ %37, %35 ]
  %12 = phi i32 [ 0, %8 ], [ %36, %35 ]
  %13 = icmp eq i32 %12, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %13, label %14, label %39, !dbg !42

; <label>:14:                                     ; preds = %10
  %15 = tail call i8* @strdup(i8* nonnull %11) #3, !dbg !47
  %16 = tail call i8* @strchr(i8* %15, i32 61) #3, !dbg !47
  %17 = icmp ne i8* %16, null, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %9, label %18, label %29, !dbg !53

; <label>:18:                                     ; preds = %14
  br i1 %17, label %19, label %20, !dbg !56

; <label>:19:                                     ; preds = %18
  store i8 0, i8* %16, align 1, !dbg !57, !tbaa !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %20, !dbg !61

; <label>:20:                                     ; preds = %19, %18
  %21 = load i8*, i8** %0, align 8, !dbg !62, !tbaa !64
  %22 = load i64, i64* %1, align 8, !dbg !66, !tbaa !67
  %23 = tail call i8* @envz_entry(i8* %21, i64 %22, i8* %15) #3, !dbg !69
  %24 = icmp eq i8* %23, null, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %24, label %25, label %27, !dbg !70

; <label>:25:                                     ; preds = %20
  %26 = tail call i32 @argz_add(i8** nonnull %0, i64* nonnull %1, i8* nonnull %11) #3, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br label %27, !dbg !73

; <label>:27:                                     ; preds = %20, %25
  %28 = phi i32 [ 0, %20 ], [ %26, %25 ], !dbg !74
  tail call void @free(i8* %15) #3, !dbg !75
  br label %35, !dbg !76

; <label>:29:                                     ; preds = %14
  br i1 %17, label %30, label %32, !dbg !77

; <label>:30:                                     ; preds = %29
  store i8 0, i8* %16, align 1, !dbg !78, !tbaa !58
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !81
  br label %32, !dbg !82

; <label>:32:                                     ; preds = %29, %30
  %33 = phi i8* [ %31, %30 ], [ null, %29 ], !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = tail call i32 @envz_add(i8** %0, i64* %1, i8* %15, i8* %33) #3, !dbg !85
  tail call void @free(i8* %15) #3, !dbg !86
  br label %35

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i32 [ %34, %32 ], [ %28, %27 ], !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %37 = tail call i8* @argz_next(i8* %2, i64 %3, i8* nonnull %11) #3, !dbg !43
  %38 = icmp eq i8* %37, null, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %38, label %39, label %10, !dbg !45, !llvm.loop !88

; <label>:39:                                     ; preds = %10, %35, %5
  %40 = phi i32 [ 0, %5 ], [ %36, %35 ], [ %12, %10 ], !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  ret i32 %40, !dbg !90
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
!42 = !DILocation(line: 28, column: 3, scope: !10)
!43 = !DILocation(line: 28, column: 18, scope: !10)
!44 = !DILocation(line: 28, column: 16, scope: !10)
!45 = !DILocation(line: 28, column: 62, scope: !10)
!46 = !DILocation(line: 28, column: 65, scope: !10)
!47 = !DILocation(line: 0, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 31, column: 9)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 11)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 29, column: 5)
!51 = !DILocation(line: 0, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 34, column: 14)
!53 = !DILocation(line: 30, column: 11, scope: !50)
!54 = !DILocation(line: 0, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 44, column: 9)
!56 = !DILocation(line: 34, column: 14, scope: !48)
!57 = !DILocation(line: 35, column: 24, scope: !52)
!58 = !{!59, !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 35, column: 13, scope: !52)
!62 = !DILocation(line: 37, column: 26, scope: !63)
!63 = distinct !DILexicalBlock(scope: !48, file: !1, line: 37, column: 14)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !59, i64 0}
!66 = !DILocation(line: 37, column: 33, scope: !63)
!67 = !{!68, !68, i64 0}
!68 = !{!"long", !59, i64 0}
!69 = !DILocation(line: 37, column: 15, scope: !63)
!70 = !DILocation(line: 37, column: 14, scope: !48)
!71 = !DILocation(line: 39, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 38, column: 13)
!73 = !DILocation(line: 40, column: 13, scope: !72)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 41, column: 11, scope: !48)
!76 = !DILocation(line: 42, column: 9, scope: !48)
!77 = !DILocation(line: 47, column: 14, scope: !55)
!78 = !DILocation(line: 49, column: 26, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 13)
!80 = distinct !DILexicalBlock(scope: !55, file: !1, line: 47, column: 14)
!81 = !DILocation(line: 50, column: 35, scope: !79)
!82 = !DILocation(line: 51, column: 13, scope: !79)
!83 = !DILocation(line: 0, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 53, column: 13)
!85 = !DILocation(line: 57, column: 20, scope: !55)
!86 = !DILocation(line: 58, column: 11, scope: !55)
!87 = !DILocation(line: 0, scope: !10)
!88 = distinct !{!88, !42, !89}
!89 = !DILocation(line: 60, column: 5, scope: !10)
!90 = !DILocation(line: 61, column: 3, scope: !10)
