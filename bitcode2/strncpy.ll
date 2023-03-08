; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strncpy(i8* noalias returned, i8* noalias, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = ptrtoint i8* %1 to i64, !dbg !37
  %5 = ptrtoint i8* %0 to i64, !dbg !37
  %6 = or i64 %4, %5, !dbg !37
  %7 = and i64 %6, 7, !dbg !37
  %8 = icmp ne i64 %7, 0, !dbg !37
  %9 = icmp ult i64 %2, 8, !dbg !39
  %10 = or i1 %9, %8, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %10, label %35, label %11, !dbg !40

; <label>:11:                                     ; preds = %3
  %12 = bitcast i8* %0 to i64*, !dbg !41
  %13 = bitcast i8* %1 to i64*, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br label %14, !dbg !47

; <label>:14:                                     ; preds = %11, %24
  %15 = phi i64* [ %13, %11 ], [ %26, %24 ]
  %16 = phi i64* [ %12, %11 ], [ %27, %24 ]
  %17 = phi i64 [ %2, %11 ], [ %25, %24 ]
  %18 = load i64, i64* %15, align 8, !dbg !48, !tbaa !49
  %19 = add nsw i64 %18, -72340172838076673, !dbg !48
  %20 = and i64 %18, -9187201950435737472, !dbg !48
  %21 = xor i64 %20, -9187201950435737472, !dbg !48
  %22 = and i64 %21, %19, !dbg !48
  %23 = icmp eq i64 %22, 0, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %23, label %24, label %29, !dbg !46

; <label>:24:                                     ; preds = %14
  %25 = add i64 %17, -8, !dbg !54
  %26 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !56
  %27 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !57
  store i64 %18, i64* %16, align 8, !dbg !58, !tbaa !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  %28 = icmp ugt i64 %25, 7, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %28, label %14, label %29, !dbg !47, !llvm.loop !60

; <label>:29:                                     ; preds = %14, %24
  %30 = phi i64 [ %25, %24 ], [ %17, %14 ]
  %31 = phi i64* [ %27, %24 ], [ %16, %14 ], !dbg !62
  %32 = phi i64* [ %26, %24 ], [ %15, %14 ], !dbg !62
  %33 = bitcast i64* %31 to i8*, !dbg !63
  %34 = bitcast i64* %32 to i8*, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %35, !dbg !65

; <label>:35:                                     ; preds = %29, %3
  %36 = phi i64 [ %2, %3 ], [ %30, %29 ]
  %37 = phi i8* [ %0, %3 ], [ %33, %29 ], !dbg !66
  %38 = phi i8* [ %1, %3 ], [ %34, %29 ], !dbg !66
  %39 = icmp eq i64 %36, 0, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %39, label %40, label %41, !dbg !68

; <label>:40:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br label %79, !dbg !69

; <label>:41:                                     ; preds = %35, %41
  %42 = phi i64 [ %45, %41 ], [ %36, %35 ]
  %43 = phi i8* [ %48, %41 ], [ %37, %35 ], !dbg !70
  %44 = phi i8* [ %46, %41 ], [ %38, %35 ], !dbg !70
  %45 = add i64 %42, -1, !dbg !73
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !74
  %47 = load i8, i8* %44, align 1, !dbg !75, !tbaa !76
  %48 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !77
  store i8 %47, i8* %43, align 1, !dbg !78, !tbaa !76
  %49 = icmp ne i8 %47, 0, !dbg !79
  %50 = icmp ne i64 %45, 0, !dbg !67
  %51 = and i1 %50, %49, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %51, label %41, label %52, !dbg !80, !llvm.loop !81

; <label>:52:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %53 = icmp eq i64 %45, 0, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %53, label %79, label %54, !dbg !69

; <label>:54:                                     ; preds = %52
  %55 = add i64 %42, -2, !dbg !84
  %56 = and i64 %45, 3, !dbg !84
  %57 = icmp eq i64 %56, 0, !dbg !84
  br i1 %57, label %66, label %58, !dbg !84

; <label>:58:                                     ; preds = %54, %58
  %59 = phi i8* [ %63, %58 ], [ %48, %54 ]
  %60 = phi i64 [ %62, %58 ], [ %45, %54 ]
  %61 = phi i64 [ %64, %58 ], [ %56, %54 ]
  %62 = add i64 %60, -1, !dbg !84
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !85
  store i8 0, i8* %59, align 1, !dbg !86, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %64 = add i64 %61, -1, !dbg !69
  %65 = icmp eq i64 %64, 0, !dbg !69
  br i1 %65, label %66, label %58, !dbg !69, !llvm.loop !87

; <label>:66:                                     ; preds = %58, %54
  %67 = phi i8* [ %48, %54 ], [ %63, %58 ]
  %68 = phi i64 [ %45, %54 ], [ %62, %58 ]
  %69 = icmp ult i64 %55, 3, !dbg !84
  br i1 %69, label %79, label %70, !dbg !84

; <label>:70:                                     ; preds = %66, %70
  %71 = phi i8* [ %77, %70 ], [ %67, %66 ]
  %72 = phi i64 [ %76, %70 ], [ %68, %66 ]
  %73 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !85
  store i8 0, i8* %71, align 1, !dbg !86, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %74 = getelementptr inbounds i8, i8* %71, i64 2, !dbg !85
  store i8 0, i8* %73, align 1, !dbg !86, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %75 = getelementptr inbounds i8, i8* %71, i64 3, !dbg !85
  store i8 0, i8* %74, align 1, !dbg !86, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %76 = add i64 %72, -4, !dbg !84
  %77 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !85
  store i8 0, i8* %75, align 1, !dbg !86, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %78 = icmp eq i64 %76, 0, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %78, label %79, label %70, !dbg !69, !llvm.loop !89

; <label>:79:                                     ; preds = %66, %70, %40, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  ret i8* %0, !dbg !91
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "strncpy", scope: !1, file: !1, line: 69, type: !13, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !16, !19}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !22, line: 129, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 69, type: !15)
!26 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 69, type: !16)
!27 = !DILocalVariable(name: "count", arg: 3, scope: !12, file: !1, line: 69, type: !19)
!28 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 91, type: !6)
!29 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 92, type: !17)
!30 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 93, type: !5)
!31 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 94, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!34 = !DILocation(line: 69, column: 1, scope: !12)
!35 = !DILocation(line: 91, column: 9, scope: !12)
!36 = !DILocation(line: 92, column: 16, scope: !12)
!37 = !DILocation(line: 97, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 97, column: 7)
!39 = !DILocation(line: 97, column: 33, scope: !38)
!40 = !DILocation(line: 97, column: 29, scope: !38)
!41 = !DILocation(line: 99, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 98, column: 5)
!43 = !DILocation(line: 93, column: 9, scope: !12)
!44 = !DILocation(line: 100, column: 21, scope: !42)
!45 = !DILocation(line: 94, column: 16, scope: !12)
!46 = !DILocation(line: 104, column: 7, scope: !42)
!47 = !DILocation(line: 104, column: 41, scope: !42)
!48 = !DILocation(line: 104, column: 45, scope: !42)
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 104, column: 44, scope: !42)
!54 = !DILocation(line: 106, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !42, file: !1, line: 105, column: 2)
!56 = !DILocation(line: 107, column: 33, scope: !55)
!57 = !DILocation(line: 107, column: 16, scope: !55)
!58 = !DILocation(line: 107, column: 19, scope: !55)
!59 = !DILocation(line: 104, column: 20, scope: !42)
!60 = distinct !{!60, !46, !61}
!61 = !DILocation(line: 108, column: 2, scope: !42)
!62 = !DILocation(line: 0, scope: !55)
!63 = !DILocation(line: 110, column: 13, scope: !42)
!64 = !DILocation(line: 111, column: 13, scope: !42)
!65 = !DILocation(line: 112, column: 5, scope: !42)
!66 = !DILocation(line: 0, scope: !42)
!67 = !DILocation(line: 114, column: 16, scope: !12)
!68 = !DILocation(line: 114, column: 3, scope: !12)
!69 = !DILocation(line: 121, column: 3, scope: !12)
!70 = !DILocation(line: 0, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 117, column: 11)
!72 = distinct !DILexicalBlock(scope: !12, file: !1, line: 115, column: 5)
!73 = !DILocation(line: 116, column: 7, scope: !72)
!74 = !DILocation(line: 117, column: 25, scope: !71)
!75 = !DILocation(line: 117, column: 21, scope: !71)
!76 = !{!51, !51, i64 0}
!77 = !DILocation(line: 117, column: 16, scope: !71)
!78 = !DILocation(line: 117, column: 19, scope: !71)
!79 = !DILocation(line: 117, column: 29, scope: !71)
!80 = !DILocation(line: 117, column: 11, scope: !72)
!81 = distinct !{!81, !68, !82}
!82 = !DILocation(line: 119, column: 5, scope: !12)
!83 = !DILocation(line: 121, column: 18, scope: !12)
!84 = !DILocation(line: 121, column: 15, scope: !12)
!85 = !DILocation(line: 122, column: 9, scope: !12)
!86 = !DILocation(line: 122, column: 12, scope: !12)
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !69, !90}
!90 = !DILocation(line: 122, column: 14, scope: !12)
!91 = !DILocation(line: 124, column: 3, scope: !12)
