; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memrchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memrchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memrchr(i8*, i32, i64) local_unnamed_addr #0 !dbg !16 {
  %4 = getelementptr inbounds i8, i8* %0, i64 %2, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  %5 = trunc i32 %1 to i8
  br label %6, !dbg !40

; <label>:6:                                      ; preds = %15, %3
  %7 = phi i64 [ %2, %3 ], [ %16, %15 ]
  %8 = phi i8* [ %4, %3 ], [ %9, %15 ]
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !41
  %10 = ptrtoint i8* %8 to i64, !dbg !43
  %11 = and i64 %10, 7, !dbg !43
  %12 = icmp eq i64 %11, 0, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %12, label %19, label %13, !dbg !40

; <label>:13:                                     ; preds = %6
  %14 = icmp eq i64 %7, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %14, label %65, label %15, !dbg !46

; <label>:15:                                     ; preds = %13
  %16 = add i64 %7, -1, !dbg !44
  %17 = load i8, i8* %9, align 1, !dbg !47, !tbaa !49
  %18 = icmp eq i8 %17, %5, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %18, label %67, label %6, !dbg !53, !llvm.loop !55

; <label>:19:                                     ; preds = %6
  %20 = icmp ult i64 %7, 8, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %20, label %52, label %21, !dbg !59

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %8, i64 -8, !dbg !60
  %23 = and i32 %1, 255, !dbg !63
  %24 = shl nuw nsw i32 %23, 8, !dbg !64
  %25 = or i32 %24, %23, !dbg !65
  %26 = shl nuw i32 %25, 16, !dbg !66
  %27 = or i32 %26, %25, !dbg !67
  %28 = zext i32 %27 to i64, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %29 = shl nuw i64 %28, 32, !dbg !73
  %30 = or i64 %29, %28, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %31 = bitcast i8* %22 to i64*, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br label %32, !dbg !79

; <label>:32:                                     ; preds = %21, %42
  %33 = phi i64* [ %44, %42 ], [ %31, %21 ]
  %34 = phi i64 [ %43, %42 ], [ %7, %21 ]
  %35 = load i64, i64* %33, align 8, !dbg !79, !tbaa !82
  %36 = xor i64 %35, %30, !dbg !79
  %37 = add i64 %36, -72340172838076673, !dbg !79
  %38 = and i64 %36, -9187201950435737472, !dbg !79
  %39 = xor i64 %38, -9187201950435737472, !dbg !79
  %40 = and i64 %39, %37, !dbg !79
  %41 = icmp eq i64 %40, 0, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %41, label %42, label %46, !dbg !84

; <label>:42:                                     ; preds = %32
  %43 = add i64 %34, -8, !dbg !85
  %44 = getelementptr inbounds i64, i64* %33, i64 -1, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  %45 = icmp ugt i64 %43, 7, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %45, label %32, label %46, !dbg !78, !llvm.loop !88

; <label>:46:                                     ; preds = %42, %32
  %47 = phi i64 [ %43, %42 ], [ %34, %32 ]
  %48 = phi i64* [ %44, %42 ], [ %33, %32 ]
  %49 = getelementptr inbounds i64, i64* %48, i64 1, !dbg !90
  %50 = bitcast i64* %49 to i8*, !dbg !90
  %51 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %52, !dbg !92

; <label>:52:                                     ; preds = %46, %19
  %53 = phi i64 [ %7, %19 ], [ %47, %46 ]
  %54 = phi i8* [ %9, %19 ], [ %51, %46 ], !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %55 = icmp eq i64 %53, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %55, label %65, label %56, !dbg !94

; <label>:56:                                     ; preds = %52, %62
  %57 = phi i64 [ %59, %62 ], [ %53, %52 ]
  %58 = phi i8* [ %63, %62 ], [ %54, %52 ]
  %59 = add i64 %57, -1, !dbg !95
  %60 = load i8, i8* %58, align 1, !dbg !96, !tbaa !49
  %61 = icmp eq i8 %60, %5, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %61, label %65, label %62, !dbg !100

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %64 = icmp eq i64 %59, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %64, label %65, label %56, !dbg !94, !llvm.loop !102

; <label>:65:                                     ; preds = %13, %62, %56, %52
  %66 = phi i8* [ null, %52 ], [ null, %62 ], [ %58, %56 ], [ null, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br label %67, !dbg !105

; <label>:67:                                     ; preds = %15, %65
  %68 = phi i8* [ %66, %65 ], [ %9, %15 ], !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  ret i8* %68, !dbg !105
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memrchr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !9, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "memrchr", scope: !1, file: !1, line: 72, type: !17, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!17 = !DISubroutineType(types: !18)
!18 = !{!8, !19, !21, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 40, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !25, line: 129, baseType: !10)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34}
!27 = !DILocalVariable(name: "src_void", arg: 1, scope: !16, file: !1, line: 72, type: !19)
!28 = !DILocalVariable(name: "c", arg: 2, scope: !16, file: !1, line: 72, type: !21)
!29 = !DILocalVariable(name: "length", arg: 3, scope: !16, file: !1, line: 72, type: !22)
!30 = !DILocalVariable(name: "src", scope: !16, file: !1, line: 77, type: !4)
!31 = !DILocalVariable(name: "d", scope: !16, file: !1, line: 78, type: !6)
!32 = !DILocalVariable(name: "asrc", scope: !16, file: !1, line: 81, type: !9)
!33 = !DILocalVariable(name: "mask", scope: !16, file: !1, line: 82, type: !10)
!34 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 83, type: !35)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 72, column: 1, scope: !16)
!37 = !DILocation(line: 77, column: 65, scope: !16)
!38 = !DILocation(line: 77, column: 25, scope: !16)
!39 = !DILocation(line: 78, column: 17, scope: !16)
!40 = !DILocation(line: 85, column: 3, scope: !16)
!41 = !DILocation(line: 0, scope: !42)
!42 = distinct !DILexicalBlock(scope: !16, file: !1, line: 86, column: 5)
!43 = !DILocation(line: 85, column: 10, scope: !16)
!44 = !DILocation(line: 87, column: 18, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 87, column: 11)
!46 = !DILocation(line: 87, column: 11, scope: !42)
!47 = !DILocation(line: 89, column: 11, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 89, column: 11)
!49 = !{!50, !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 89, column: 16, scope: !48)
!53 = !DILocation(line: 89, column: 11, scope: !42)
!54 = !DILocation(line: 0, scope: !16)
!55 = distinct !{!55, !40, !56}
!56 = !DILocation(line: 92, column: 5, scope: !16)
!57 = !DILocation(line: 94, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !16, file: !1, line: 94, column: 7)
!59 = !DILocation(line: 94, column: 7, scope: !16)
!60 = !DILocation(line: 104, column: 50, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 95, column: 5)
!62 = !DILocation(line: 81, column: 18, scope: !16)
!63 = !DILocation(line: 105, column: 14, scope: !61)
!64 = !DILocation(line: 105, column: 16, scope: !61)
!65 = !DILocation(line: 105, column: 21, scope: !61)
!66 = !DILocation(line: 106, column: 19, scope: !61)
!67 = !DILocation(line: 106, column: 25, scope: !61)
!68 = !DILocation(line: 82, column: 18, scope: !16)
!69 = !DILocation(line: 83, column: 16, scope: !16)
!70 = !DILocation(line: 107, column: 12, scope: !71)
!71 = distinct !DILexicalBlock(scope: !61, file: !1, line: 107, column: 7)
!72 = !DILocation(line: 107, column: 7, scope: !71)
!73 = !DILocation(line: 108, column: 22, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 107, column: 7)
!75 = !DILocation(line: 108, column: 28, scope: !74)
!76 = !DILocation(line: 107, column: 7, scope: !74)
!77 = !DILocation(line: 104, column: 14, scope: !61)
!78 = !DILocation(line: 110, column: 7, scope: !61)
!79 = !DILocation(line: 112, column: 15, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 112, column: 15)
!81 = distinct !DILexicalBlock(scope: !61, file: !1, line: 111, column: 9)
!82 = !{!83, !83, i64 0}
!83 = !{!"long", !50, i64 0}
!84 = !DILocation(line: 112, column: 15, scope: !81)
!85 = !DILocation(line: 114, column: 18, scope: !81)
!86 = !DILocation(line: 115, column: 15, scope: !81)
!87 = !DILocation(line: 110, column: 21, scope: !61)
!88 = distinct !{!88, !78, !89}
!89 = !DILocation(line: 116, column: 9, scope: !61)
!90 = !DILocation(line: 121, column: 36, scope: !61)
!91 = !DILocation(line: 121, column: 49, scope: !61)
!92 = !DILocation(line: 122, column: 5, scope: !61)
!93 = !DILocation(line: 0, scope: !61)
!94 = !DILocation(line: 126, column: 3, scope: !16)
!95 = !DILocation(line: 126, column: 16, scope: !16)
!96 = !DILocation(line: 128, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 128, column: 11)
!98 = distinct !DILexicalBlock(scope: !16, file: !1, line: 127, column: 5)
!99 = !DILocation(line: 128, column: 16, scope: !97)
!100 = !DILocation(line: 128, column: 11, scope: !98)
!101 = !DILocation(line: 130, column: 10, scope: !98)
!102 = distinct !{!102, !94, !103}
!103 = !DILocation(line: 131, column: 5, scope: !16)
!104 = !DILocation(line: 0, scope: !45)
!105 = !DILocation(line: 134, column: 1, scope: !16)
