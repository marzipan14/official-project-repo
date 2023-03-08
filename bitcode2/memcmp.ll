; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #0 !dbg !13 {
  %4 = icmp ult i64 %2, 8, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %4, label %33, label %5, !dbg !36

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %0 to i64, !dbg !37
  %7 = ptrtoint i8* %1 to i64, !dbg !37
  %8 = or i64 %7, %6, !dbg !37
  %9 = and i64 %8, 7, !dbg !37
  %10 = icmp eq i64 %9, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %10, label %12, label %11, !dbg !38

; <label>:11:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %38, !dbg !39

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %0 to i64*, !dbg !40
  %14 = bitcast i8* %1 to i64*, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br label %15, !dbg !46

; <label>:15:                                     ; preds = %12, %22
  %16 = phi i64* [ %24, %22 ], [ %14, %12 ]
  %17 = phi i64* [ %23, %22 ], [ %13, %12 ]
  %18 = phi i64 [ %25, %22 ], [ %2, %12 ]
  %19 = load i64, i64* %17, align 8, !dbg !46, !tbaa !49
  %20 = load i64, i64* %16, align 8, !dbg !53, !tbaa !49
  %21 = icmp eq i64 %19, %20, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %21, label %22, label %27, !dbg !55

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i64, i64* %17, i64 1, !dbg !56
  %24 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !57
  %25 = add i64 %18, -8, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  %26 = icmp ugt i64 %25, 7, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %26, label %15, label %27, !dbg !45, !llvm.loop !60

; <label>:27:                                     ; preds = %22, %15
  %28 = phi i64 [ %25, %22 ], [ %18, %15 ]
  %29 = phi i64* [ %23, %22 ], [ %17, %15 ], !dbg !62
  %30 = phi i64* [ %24, %22 ], [ %16, %15 ], !dbg !62
  %31 = bitcast i64* %29 to i8*, !dbg !63
  %32 = bitcast i64* %30 to i8*, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %33, !dbg !65

; <label>:33:                                     ; preds = %27, %3
  %34 = phi i64 [ %2, %3 ], [ %28, %27 ]
  %35 = phi i8* [ %0, %3 ], [ %31, %27 ], !dbg !66
  %36 = phi i8* [ %1, %3 ], [ %32, %27 ], !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %37 = icmp eq i64 %34, 0, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %37, label %58, label %38, !dbg !39

; <label>:38:                                     ; preds = %11, %33
  %39 = phi i64 [ %34, %33 ], [ %2, %11 ]
  %40 = phi i8* [ %36, %33 ], [ %1, %11 ]
  %41 = phi i8* [ %35, %33 ], [ %0, %11 ]
  br label %42, !dbg !67

; <label>:42:                                     ; preds = %38, %54
  %43 = phi i64 [ %46, %54 ], [ %39, %38 ]
  %44 = phi i8* [ %56, %54 ], [ %40, %38 ]
  %45 = phi i8* [ %55, %54 ], [ %41, %38 ]
  %46 = add i64 %43, -1, !dbg !67
  %47 = load i8, i8* %45, align 1, !dbg !68, !tbaa !71
  %48 = load i8, i8* %44, align 1, !dbg !72, !tbaa !71
  %49 = icmp eq i8 %47, %48, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %49, label %54, label %50, !dbg !74

; <label>:50:                                     ; preds = %42
  %51 = zext i8 %47 to i32, !dbg !68
  %52 = zext i8 %48 to i32, !dbg !72
  %53 = sub nsw i32 %51, %52, !dbg !75
  br label %58, !dbg !76

; <label>:54:                                     ; preds = %42
  %55 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !77
  %56 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %57 = icmp eq i64 %46, 0, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %57, label %58, label %42, !dbg !39, !llvm.loop !79

; <label>:58:                                     ; preds = %54, %33, %50
  %59 = phi i32 [ %53, %50 ], [ 0, %33 ], [ 0, %54 ], !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  ret i32 %59, !dbg !83
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "memcmp", scope: !1, file: !1, line: 53, type: !14, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !17, !19}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !22, line: 129, baseType: !8)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DILocalVariable(name: "m1", arg: 1, scope: !13, file: !1, line: 53, type: !17)
!25 = !DILocalVariable(name: "m2", arg: 2, scope: !13, file: !1, line: 53, type: !17)
!26 = !DILocalVariable(name: "n", arg: 3, scope: !13, file: !1, line: 53, type: !19)
!27 = !DILocalVariable(name: "s1", scope: !13, file: !1, line: 73, type: !4)
!28 = !DILocalVariable(name: "s2", scope: !13, file: !1, line: 74, type: !4)
!29 = !DILocalVariable(name: "a1", scope: !13, file: !1, line: 75, type: !7)
!30 = !DILocalVariable(name: "a2", scope: !13, file: !1, line: 76, type: !7)
!31 = !DILocation(line: 53, column: 1, scope: !13)
!32 = !DILocation(line: 73, column: 18, scope: !13)
!33 = !DILocation(line: 74, column: 18, scope: !13)
!34 = !DILocation(line: 81, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !13, file: !1, line: 81, column: 7)
!36 = !DILocation(line: 81, column: 21, scope: !35)
!37 = !DILocation(line: 81, column: 25, scope: !35)
!38 = !DILocation(line: 81, column: 7, scope: !13)
!39 = !DILocation(line: 102, column: 3, scope: !13)
!40 = !DILocation(line: 85, column: 12, scope: !41)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 82, column: 5)
!42 = !DILocation(line: 75, column: 18, scope: !13)
!43 = !DILocation(line: 86, column: 12, scope: !41)
!44 = !DILocation(line: 76, column: 18, scope: !13)
!45 = !DILocation(line: 87, column: 7, scope: !41)
!46 = !DILocation(line: 89, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 89, column: 15)
!48 = distinct !DILexicalBlock(scope: !41, file: !1, line: 88, column: 9)
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 89, column: 22, scope: !47)
!54 = !DILocation(line: 89, column: 19, scope: !47)
!55 = !DILocation(line: 89, column: 15, scope: !48)
!56 = !DILocation(line: 91, column: 13, scope: !48)
!57 = !DILocation(line: 92, column: 13, scope: !48)
!58 = !DILocation(line: 93, column: 13, scope: !48)
!59 = !DILocation(line: 87, column: 16, scope: !41)
!60 = distinct !{!60, !45, !61}
!61 = !DILocation(line: 94, column: 9, scope: !41)
!62 = !DILocation(line: 0, scope: !48)
!63 = !DILocation(line: 98, column: 12, scope: !41)
!64 = !DILocation(line: 99, column: 12, scope: !41)
!65 = !DILocation(line: 100, column: 5, scope: !41)
!66 = !DILocation(line: 0, scope: !41)
!67 = !DILocation(line: 102, column: 11, scope: !13)
!68 = !DILocation(line: 104, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 104, column: 11)
!70 = distinct !DILexicalBlock(scope: !13, file: !1, line: 103, column: 5)
!71 = !{!51, !51, i64 0}
!72 = !DILocation(line: 104, column: 18, scope: !69)
!73 = !DILocation(line: 104, column: 15, scope: !69)
!74 = !DILocation(line: 104, column: 11, scope: !70)
!75 = !DILocation(line: 105, column: 13, scope: !69)
!76 = !DILocation(line: 105, column: 2, scope: !69)
!77 = !DILocation(line: 106, column: 9, scope: !70)
!78 = !DILocation(line: 107, column: 9, scope: !70)
!79 = distinct !{!79, !39, !80}
!80 = !DILocation(line: 108, column: 5, scope: !13)
!81 = !DILocation(line: 0, scope: !13)
!82 = !DILocation(line: 0, scope: !69)
!83 = !DILocation(line: 112, column: 1, scope: !13)
