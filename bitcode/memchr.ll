; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #0 !dbg !16 {
  %4 = ptrtoint i8* %0 to i64, !dbg !39
  %5 = and i64 %4, 7, !dbg !39
  %6 = icmp eq i64 %5, 0, !dbg !40
  br i1 %6, label %22, label %7, !dbg !40

; <label>:7:                                      ; preds = %3
  %8 = trunc i32 %1 to i8
  br label %9, !dbg !40

; <label>:9:                                      ; preds = %7, %17
  %10 = phi i8* [ %0, %7 ], [ %18, %17 ]
  %11 = phi i64 [ %2, %7 ], [ %12, %17 ]
  %12 = add i64 %11, -1, !dbg !41
  %13 = icmp eq i64 %11, 0, !dbg !41
  br i1 %13, label %69, label %14, !dbg !44

; <label>:14:                                     ; preds = %9
  %15 = load i8, i8* %10, align 1, !dbg !45, !tbaa !47
  %16 = icmp eq i8 %15, %8, !dbg !50
  br i1 %16, label %69, label %17, !dbg !51

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !52
  %19 = ptrtoint i8* %18 to i64, !dbg !39
  %20 = and i64 %19, 7, !dbg !39
  %21 = icmp eq i64 %20, 0, !dbg !40
  br i1 %21, label %22, label %9, !dbg !40, !llvm.loop !53

; <label>:22:                                     ; preds = %17, %3
  %23 = phi i64 [ %2, %3 ], [ %12, %17 ]
  %24 = phi i8* [ %0, %3 ], [ %18, %17 ], !dbg !55
  %25 = icmp ult i64 %23, 8, !dbg !56
  br i1 %25, label %54, label %26, !dbg !58

; <label>:26:                                     ; preds = %22
  %27 = and i32 %1, 255, !dbg !60
  %28 = shl nuw nsw i32 %27, 8, !dbg !62
  %29 = or i32 %28, %27, !dbg !63
  %30 = shl nuw i32 %29, 16, !dbg !64
  %31 = or i32 %30, %29, !dbg !65
  %32 = zext i32 %31 to i64, !dbg !65
  %33 = shl nuw i64 %32, 32, !dbg !68
  %34 = or i64 %33, %32, !dbg !71
  %35 = bitcast i8* %24 to i64*, !dbg !72
  br label %36, !dbg !73

; <label>:36:                                     ; preds = %26, %46
  %37 = phi i64* [ %48, %46 ], [ %35, %26 ]
  %38 = phi i64 [ %47, %46 ], [ %23, %26 ]
  %39 = load i64, i64* %37, align 8, !dbg !73, !tbaa !76
  %40 = xor i64 %39, %34, !dbg !73
  %41 = add i64 %40, -72340172838076673, !dbg !73
  %42 = and i64 %40, -9187201950435737472, !dbg !73
  %43 = xor i64 %42, -9187201950435737472, !dbg !73
  %44 = and i64 %43, %41, !dbg !73
  %45 = icmp eq i64 %44, 0, !dbg !73
  br i1 %45, label %46, label %50, !dbg !78

; <label>:46:                                     ; preds = %36
  %47 = add i64 %38, -8, !dbg !79
  %48 = getelementptr inbounds i64, i64* %37, i64 1, !dbg !80
  %49 = icmp ugt i64 %47, 7, !dbg !81
  br i1 %49, label %36, label %50, !dbg !82, !llvm.loop !83

; <label>:50:                                     ; preds = %46, %36
  %51 = phi i64 [ %47, %46 ], [ %38, %36 ]
  %52 = phi i64* [ %48, %46 ], [ %37, %36 ]
  %53 = bitcast i64* %52 to i8*, !dbg !85
  br label %54, !dbg !86

; <label>:54:                                     ; preds = %50, %22
  %55 = phi i64 [ %23, %22 ], [ %51, %50 ]
  %56 = phi i8* [ %24, %22 ], [ %53, %50 ], !dbg !87
  %57 = icmp eq i64 %55, 0, !dbg !88
  br i1 %57, label %69, label %58, !dbg !88

; <label>:58:                                     ; preds = %54
  %59 = trunc i32 %1 to i8
  br label %60, !dbg !88

; <label>:60:                                     ; preds = %58, %66
  %61 = phi i64 [ %55, %58 ], [ %63, %66 ]
  %62 = phi i8* [ %56, %58 ], [ %67, %66 ]
  %63 = add i64 %61, -1, !dbg !89
  %64 = load i8, i8* %62, align 1, !dbg !90, !tbaa !47
  %65 = icmp eq i8 %64, %59, !dbg !93
  br i1 %65, label %69, label %66, !dbg !94

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !95
  %68 = icmp eq i64 %63, 0, !dbg !88
  br i1 %68, label %69, label %60, !dbg !88, !llvm.loop !96

; <label>:69:                                     ; preds = %14, %9, %60, %66, %54
  %70 = phi i8* [ null, %54 ], [ %62, %60 ], [ null, %66 ], [ %10, %14 ], [ null, %9 ], !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  ret i8* %70, !dbg !99
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memchr.c", directory: "/root/.unikraft/apps/redis/build")
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
!16 = distinct !DISubprogram(name: "memchr", scope: !1, file: !1, line: 72, type: !17, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
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
!37 = !DILocation(line: 77, column: 25, scope: !16)
!38 = !DILocation(line: 78, column: 17, scope: !16)
!39 = !DILocation(line: 85, column: 10, scope: !16)
!40 = !DILocation(line: 85, column: 3, scope: !16)
!41 = !DILocation(line: 87, column: 18, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 87, column: 11)
!43 = distinct !DILexicalBlock(scope: !16, file: !1, line: 86, column: 5)
!44 = !DILocation(line: 87, column: 11, scope: !43)
!45 = !DILocation(line: 89, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 89, column: 11)
!47 = !{!48, !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 89, column: 16, scope: !46)
!51 = !DILocation(line: 89, column: 11, scope: !43)
!52 = !DILocation(line: 91, column: 10, scope: !43)
!53 = distinct !{!53, !40, !54}
!54 = !DILocation(line: 92, column: 5, scope: !16)
!55 = !DILocation(line: 0, scope: !43)
!56 = !DILocation(line: 94, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !16, file: !1, line: 94, column: 7)
!58 = !DILocation(line: 94, column: 7, scope: !16)
!59 = !DILocation(line: 81, column: 18, scope: !16)
!60 = !DILocation(line: 105, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 95, column: 5)
!62 = !DILocation(line: 105, column: 16, scope: !61)
!63 = !DILocation(line: 105, column: 21, scope: !61)
!64 = !DILocation(line: 106, column: 19, scope: !61)
!65 = !DILocation(line: 106, column: 25, scope: !61)
!66 = !DILocation(line: 82, column: 18, scope: !16)
!67 = !DILocation(line: 83, column: 16, scope: !16)
!68 = !DILocation(line: 108, column: 22, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 107, column: 7)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 107, column: 7)
!71 = !DILocation(line: 108, column: 28, scope: !69)
!72 = !DILocation(line: 104, column: 14, scope: !61)
!73 = !DILocation(line: 112, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 112, column: 15)
!75 = distinct !DILexicalBlock(scope: !61, file: !1, line: 111, column: 9)
!76 = !{!77, !77, i64 0}
!77 = !{!"long", !48, i64 0}
!78 = !DILocation(line: 112, column: 15, scope: !75)
!79 = !DILocation(line: 114, column: 18, scope: !75)
!80 = !DILocation(line: 115, column: 15, scope: !75)
!81 = !DILocation(line: 110, column: 21, scope: !61)
!82 = !DILocation(line: 110, column: 7, scope: !61)
!83 = distinct !{!83, !82, !84}
!84 = !DILocation(line: 116, column: 9, scope: !61)
!85 = !DILocation(line: 121, column: 13, scope: !61)
!86 = !DILocation(line: 122, column: 5, scope: !61)
!87 = !DILocation(line: 0, scope: !61)
!88 = !DILocation(line: 126, column: 3, scope: !16)
!89 = !DILocation(line: 126, column: 16, scope: !16)
!90 = !DILocation(line: 128, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 128, column: 11)
!92 = distinct !DILexicalBlock(scope: !16, file: !1, line: 127, column: 5)
!93 = !DILocation(line: 128, column: 16, scope: !91)
!94 = !DILocation(line: 128, column: 11, scope: !92)
!95 = !DILocation(line: 130, column: 10, scope: !92)
!96 = distinct !{!96, !88, !97}
!97 = !DILocation(line: 131, column: 5, scope: !16)
!98 = !DILocation(line: 0, scope: !16)
!99 = !DILocation(line: 134, column: 1, scope: !16)
