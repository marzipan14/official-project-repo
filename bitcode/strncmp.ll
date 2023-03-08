; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #0 !dbg !15 {
  %4 = icmp eq i64 %2, 0, !dbg !32
  br i1 %4, label %69, label %5, !dbg !34

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %0 to i64, !dbg !35
  %7 = ptrtoint i8* %1 to i64, !dbg !35
  %8 = or i64 %7, %6, !dbg !35
  %9 = and i64 %8, 7, !dbg !35
  %10 = icmp eq i64 %9, 0, !dbg !35
  br i1 %10, label %11, label %41, !dbg !37

; <label>:11:                                     ; preds = %5
  %12 = bitcast i8* %0 to i64*, !dbg !38
  %13 = bitcast i8* %1 to i64*, !dbg !41
  %14 = icmp ugt i64 %2, 7, !dbg !43
  br i1 %14, label %15, label %35, !dbg !44

; <label>:15:                                     ; preds = %11, %31
  %16 = phi i64* [ %33, %31 ], [ %13, %11 ]
  %17 = phi i64* [ %32, %31 ], [ %12, %11 ]
  %18 = phi i64 [ %23, %31 ], [ %2, %11 ]
  %19 = load i64, i64* %17, align 8, !dbg !45, !tbaa !46
  %20 = load i64, i64* %16, align 8, !dbg !50, !tbaa !46
  %21 = icmp eq i64 %19, %20, !dbg !51
  br i1 %21, label %22, label %35, !dbg !52

; <label>:22:                                     ; preds = %15
  %23 = add i64 %18, -8, !dbg !53
  %24 = icmp eq i64 %23, 0, !dbg !55
  br i1 %24, label %69, label %25, !dbg !57

; <label>:25:                                     ; preds = %22
  %26 = add i64 %19, -72340172838076673, !dbg !58
  %27 = and i64 %19, -9187201950435737472, !dbg !58
  %28 = xor i64 %27, -9187201950435737472, !dbg !58
  %29 = and i64 %28, %26, !dbg !58
  %30 = icmp eq i64 %29, 0, !dbg !58
  br i1 %30, label %31, label %69, !dbg !59

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds i64, i64* %17, i64 1, !dbg !60
  %33 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !61
  %34 = icmp ugt i64 %23, 7, !dbg !43
  br i1 %34, label %15, label %35, !dbg !44, !llvm.loop !62

; <label>:35:                                     ; preds = %15, %31, %11
  %36 = phi i64 [ %2, %11 ], [ %23, %31 ], [ %18, %15 ]
  %37 = phi i64* [ %12, %11 ], [ %32, %31 ], [ %17, %15 ], !dbg !64
  %38 = phi i64* [ %13, %11 ], [ %33, %31 ], [ %16, %15 ], !dbg !64
  %39 = bitcast i64* %37 to i8*, !dbg !65
  %40 = bitcast i64* %38 to i8*, !dbg !66
  br label %41, !dbg !67

; <label>:41:                                     ; preds = %5, %35
  %42 = phi i8* [ %0, %5 ], [ %39, %35 ]
  %43 = phi i8* [ %1, %5 ], [ %40, %35 ]
  %44 = phi i64 [ %2, %5 ], [ %36, %35 ]
  %45 = load i8, i8* %42, align 1, !dbg !68, !tbaa !69
  %46 = load i8, i8* %43, align 1, !dbg !70, !tbaa !69
  %47 = icmp eq i8 %45, %46, !dbg !71
  br i1 %47, label %48, label %63, !dbg !72

; <label>:48:                                     ; preds = %41, %57
  %49 = phi i8 [ %60, %57 ], [ %45, %41 ]
  %50 = phi i64 [ %53, %57 ], [ %44, %41 ]
  %51 = phi i8* [ %59, %57 ], [ %43, %41 ]
  %52 = phi i8* [ %58, %57 ], [ %42, %41 ]
  %53 = add i64 %50, -1, !dbg !73
  %54 = icmp eq i64 %53, 0, !dbg !74
  %55 = icmp eq i8 %49, 0, !dbg !77
  %56 = or i1 %54, %55, !dbg !78
  br i1 %56, label %69, label %57, !dbg !78

; <label>:57:                                     ; preds = %48
  %58 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !79
  %59 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !80
  %60 = load i8, i8* %58, align 1, !dbg !68, !tbaa !69
  %61 = load i8, i8* %59, align 1, !dbg !70, !tbaa !69
  %62 = icmp eq i8 %60, %61, !dbg !71
  br i1 %62, label %48, label %63, !dbg !72, !llvm.loop !81

; <label>:63:                                     ; preds = %57, %41
  %64 = phi i8 [ %46, %41 ], [ %61, %57 ], !dbg !83
  %65 = phi i8 [ %45, %41 ], [ %60, %57 ], !dbg !84
  %66 = zext i8 %65 to i32, !dbg !85
  %67 = zext i8 %64 to i32, !dbg !86
  %68 = sub nsw i32 %66, %67, !dbg !87
  br label %69, !dbg !88

; <label>:69:                                     ; preds = %22, %25, %48, %3, %63
  %70 = phi i32 [ %68, %63 ], [ 0, %3 ], [ 0, %48 ], [ 0, %25 ], [ 0, %22 ], !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  ret i32 %70, !dbg !90
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !9}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "strncmp", scope: !1, file: !1, line: 62, type: !16, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !19, !21}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 129, baseType: !6)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DILocalVariable(name: "s1", arg: 1, scope: !15, file: !1, line: 62, type: !19)
!27 = !DILocalVariable(name: "s2", arg: 2, scope: !15, file: !1, line: 62, type: !19)
!28 = !DILocalVariable(name: "n", arg: 3, scope: !15, file: !1, line: 62, type: !21)
!29 = !DILocalVariable(name: "a1", scope: !15, file: !1, line: 81, type: !5)
!30 = !DILocalVariable(name: "a2", scope: !15, file: !1, line: 82, type: !5)
!31 = !DILocation(line: 62, column: 1, scope: !15)
!32 = !DILocation(line: 84, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !15, file: !1, line: 84, column: 7)
!34 = !DILocation(line: 84, column: 7, scope: !15)
!35 = !DILocation(line: 88, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !15, file: !1, line: 88, column: 7)
!37 = !DILocation(line: 88, column: 7, scope: !15)
!38 = !DILocation(line: 91, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 89, column: 5)
!40 = !DILocation(line: 81, column: 18, scope: !15)
!41 = !DILocation(line: 92, column: 12, scope: !39)
!42 = !DILocation(line: 82, column: 18, scope: !15)
!43 = !DILocation(line: 93, column: 16, scope: !39)
!44 = !DILocation(line: 93, column: 33, scope: !39)
!45 = !DILocation(line: 93, column: 36, scope: !39)
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 93, column: 43, scope: !39)
!51 = !DILocation(line: 93, column: 40, scope: !39)
!52 = !DILocation(line: 93, column: 7, scope: !39)
!53 = !DILocation(line: 95, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !39, file: !1, line: 94, column: 9)
!55 = !DILocation(line: 99, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !54, file: !1, line: 99, column: 15)
!57 = !DILocation(line: 99, column: 22, scope: !56)
!58 = !DILocation(line: 99, column: 25, scope: !56)
!59 = !DILocation(line: 99, column: 15, scope: !54)
!60 = !DILocation(line: 102, column: 13, scope: !54)
!61 = !DILocation(line: 103, column: 13, scope: !54)
!62 = distinct !{!62, !52, !63}
!63 = !DILocation(line: 104, column: 9, scope: !39)
!64 = !DILocation(line: 0, scope: !54)
!65 = !DILocation(line: 107, column: 12, scope: !39)
!66 = !DILocation(line: 108, column: 12, scope: !39)
!67 = !DILocation(line: 109, column: 5, scope: !39)
!68 = !DILocation(line: 111, column: 21, scope: !15)
!69 = !{!48, !48, i64 0}
!70 = !DILocation(line: 111, column: 28, scope: !15)
!71 = !DILocation(line: 111, column: 25, scope: !15)
!72 = !DILocation(line: 111, column: 3, scope: !15)
!73 = !DILocation(line: 111, column: 11, scope: !15)
!74 = !DILocation(line: 115, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 115, column: 11)
!76 = distinct !DILexicalBlock(scope: !15, file: !1, line: 112, column: 5)
!77 = !DILocation(line: 115, column: 25, scope: !75)
!78 = !DILocation(line: 115, column: 18, scope: !75)
!79 = !DILocation(line: 117, column: 9, scope: !76)
!80 = !DILocation(line: 118, column: 9, scope: !76)
!81 = distinct !{!81, !72, !82}
!82 = !DILocation(line: 119, column: 5, scope: !15)
!83 = !DILocation(line: 120, column: 37, scope: !15)
!84 = !DILocation(line: 120, column: 11, scope: !15)
!85 = !DILocation(line: 120, column: 10, scope: !15)
!86 = !DILocation(line: 120, column: 36, scope: !15)
!87 = !DILocation(line: 120, column: 34, scope: !15)
!88 = !DILocation(line: 120, column: 3, scope: !15)
!89 = !DILocation(line: 0, scope: !56)
!90 = !DILocation(line: 122, column: 1, scope: !15)
