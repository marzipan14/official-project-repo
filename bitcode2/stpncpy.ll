; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @stpncpy(i8* noalias, i8* noalias, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = ptrtoint i8* %1 to i64, !dbg !35
  %5 = ptrtoint i8* %0 to i64, !dbg !35
  %6 = or i64 %4, %5, !dbg !35
  %7 = and i64 %6, 7, !dbg !35
  %8 = icmp ne i64 %7, 0, !dbg !35
  %9 = icmp ult i64 %2, 8, !dbg !37
  %10 = or i1 %9, %8, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %10, label %35, label %11, !dbg !38

; <label>:11:                                     ; preds = %3
  %12 = bitcast i8* %0 to i64*, !dbg !39
  %13 = bitcast i8* %1 to i64*, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br label %14, !dbg !45

; <label>:14:                                     ; preds = %11, %24
  %15 = phi i64* [ %13, %11 ], [ %26, %24 ]
  %16 = phi i64* [ %12, %11 ], [ %27, %24 ]
  %17 = phi i64 [ %2, %11 ], [ %25, %24 ]
  %18 = load i64, i64* %15, align 8, !dbg !46, !tbaa !47
  %19 = add nsw i64 %18, -72340172838076673, !dbg !46
  %20 = and i64 %18, -9187201950435737472, !dbg !46
  %21 = xor i64 %20, -9187201950435737472, !dbg !46
  %22 = and i64 %21, %19, !dbg !46
  %23 = icmp eq i64 %22, 0, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %23, label %24, label %29, !dbg !44

; <label>:24:                                     ; preds = %14
  %25 = add i64 %17, -8, !dbg !52
  %26 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !54
  %27 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !55
  store i64 %18, i64* %16, align 8, !dbg !56, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %28 = icmp ugt i64 %25, 7, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %28, label %14, label %29, !dbg !45, !llvm.loop !58

; <label>:29:                                     ; preds = %14, %24
  %30 = phi i64 [ %25, %24 ], [ %17, %14 ]
  %31 = phi i64* [ %27, %24 ], [ %16, %14 ], !dbg !60
  %32 = phi i64* [ %26, %24 ], [ %15, %14 ], !dbg !60
  %33 = bitcast i64* %31 to i8*, !dbg !61
  %34 = bitcast i64* %32 to i8*, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br label %35, !dbg !63

; <label>:35:                                     ; preds = %29, %3
  %36 = phi i8* [ %0, %3 ], [ %33, %29 ]
  %37 = phi i8* [ %1, %3 ], [ %34, %29 ]
  %38 = phi i64 [ %2, %3 ], [ %30, %29 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br label %39, !dbg !64

; <label>:39:                                     ; preds = %45, %35
  %40 = phi i8* [ %36, %35 ], [ %49, %45 ]
  %41 = phi i8* [ %37, %35 ], [ %47, %45 ]
  %42 = phi i64 [ %38, %35 ], [ %46, %45 ]
  %43 = icmp eq i64 %42, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %43, label %44, label %45, !dbg !64

; <label>:44:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %80, !dbg !66

; <label>:45:                                     ; preds = %39
  %46 = add i64 %42, -1, !dbg !67
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !69
  %48 = load i8, i8* %41, align 1, !dbg !71, !tbaa !72
  %49 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !73
  store i8 %48, i8* %40, align 1, !dbg !74, !tbaa !72
  %50 = icmp eq i8 %48, 0, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %50, label %51, label %39, !dbg !76, !llvm.loop !77

; <label>:51:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %52 = icmp eq i64 %46, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %52, label %80, label %53, !dbg !66

; <label>:53:                                     ; preds = %51
  %54 = add i64 %42, -2, !dbg !82
  %55 = and i64 %46, 3, !dbg !82
  %56 = icmp eq i64 %55, 0, !dbg !82
  br i1 %56, label %65, label %57, !dbg !82

; <label>:57:                                     ; preds = %53, %57
  %58 = phi i64 [ %61, %57 ], [ %46, %53 ]
  %59 = phi i8* [ %62, %57 ], [ %49, %53 ]
  %60 = phi i64 [ %63, %57 ], [ %55, %53 ]
  %61 = add i64 %58, -1, !dbg !82
  %62 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !83
  store i8 0, i8* %59, align 1, !dbg !84, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %63 = add i64 %60, -1, !dbg !66
  %64 = icmp eq i64 %63, 0, !dbg !66
  br i1 %64, label %65, label %57, !dbg !66, !llvm.loop !85

; <label>:65:                                     ; preds = %57, %53
  %66 = phi i64 [ %46, %53 ], [ %61, %57 ]
  %67 = phi i8* [ %49, %53 ], [ %62, %57 ]
  %68 = icmp ult i64 %54, 3, !dbg !82
  br i1 %68, label %78, label %69, !dbg !82

; <label>:69:                                     ; preds = %65, %69
  %70 = phi i64 [ %75, %69 ], [ %66, %65 ]
  %71 = phi i8* [ %76, %69 ], [ %67, %65 ]
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !83
  store i8 0, i8* %71, align 1, !dbg !84, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %73 = getelementptr inbounds i8, i8* %71, i64 2, !dbg !83
  store i8 0, i8* %72, align 1, !dbg !84, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %74 = getelementptr inbounds i8, i8* %71, i64 3, !dbg !83
  store i8 0, i8* %73, align 1, !dbg !84, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %75 = add i64 %70, -4, !dbg !82
  %76 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !83
  store i8 0, i8* %74, align 1, !dbg !84, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %77 = icmp eq i64 %75, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %77, label %78, label %69, !dbg !66, !llvm.loop !87

; <label>:78:                                     ; preds = %69, %65
  %79 = getelementptr i8, i8* %40, i64 %42, !dbg !82
  br label %80, !dbg !89

; <label>:80:                                     ; preds = %44, %78, %51
  %81 = phi i8* [ %40, %51 ], [ %40, %78 ], [ null, %44 ]
  %82 = phi i8* [ %49, %51 ], [ %79, %78 ], [ %40, %44 ], !dbg !90
  %83 = icmp eq i8* %81, null, !dbg !89
  %84 = select i1 %83, i8* %82, i8* %81, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  ret i8* %84, !dbg !91
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "stpncpy", scope: !1, file: !1, line: 71, type: !13, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
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
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DILocalVariable(name: "dst", arg: 1, scope: !12, file: !1, line: 71, type: !15)
!26 = !DILocalVariable(name: "src", arg: 2, scope: !12, file: !1, line: 71, type: !16)
!27 = !DILocalVariable(name: "count", arg: 3, scope: !12, file: !1, line: 71, type: !19)
!28 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 76, type: !6)
!29 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 79, type: !5)
!30 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 80, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !DILocation(line: 71, column: 1, scope: !12)
!34 = !DILocation(line: 76, column: 9, scope: !12)
!35 = !DILocation(line: 83, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !12, file: !1, line: 83, column: 7)
!37 = !DILocation(line: 83, column: 33, scope: !36)
!38 = !DILocation(line: 83, column: 29, scope: !36)
!39 = !DILocation(line: 85, column: 21, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 84, column: 5)
!41 = !DILocation(line: 79, column: 9, scope: !12)
!42 = !DILocation(line: 86, column: 21, scope: !40)
!43 = !DILocation(line: 80, column: 16, scope: !12)
!44 = !DILocation(line: 90, column: 7, scope: !40)
!45 = !DILocation(line: 90, column: 41, scope: !40)
!46 = !DILocation(line: 90, column: 45, scope: !40)
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 90, column: 44, scope: !40)
!52 = !DILocation(line: 92, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 91, column: 2)
!54 = !DILocation(line: 93, column: 33, scope: !53)
!55 = !DILocation(line: 93, column: 16, scope: !53)
!56 = !DILocation(line: 93, column: 19, scope: !53)
!57 = !DILocation(line: 90, column: 20, scope: !40)
!58 = distinct !{!58, !44, !59}
!59 = !DILocation(line: 94, column: 2, scope: !40)
!60 = !DILocation(line: 0, scope: !53)
!61 = !DILocation(line: 96, column: 13, scope: !40)
!62 = !DILocation(line: 97, column: 13, scope: !40)
!63 = !DILocation(line: 98, column: 5, scope: !40)
!64 = !DILocation(line: 101, column: 3, scope: !12)
!65 = !DILocation(line: 101, column: 16, scope: !12)
!66 = !DILocation(line: 111, column: 3, scope: !12)
!67 = !DILocation(line: 103, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !12, file: !1, line: 102, column: 5)
!69 = !DILocation(line: 104, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !68, file: !1, line: 104, column: 11)
!71 = !DILocation(line: 104, column: 21, scope: !70)
!72 = !{!49, !49, i64 0}
!73 = !DILocation(line: 104, column: 16, scope: !70)
!74 = !DILocation(line: 104, column: 19, scope: !70)
!75 = !DILocation(line: 104, column: 29, scope: !70)
!76 = !DILocation(line: 104, column: 11, scope: !68)
!77 = distinct !{!77, !64, !78}
!78 = !DILocation(line: 109, column: 5, scope: !12)
!79 = !DILocation(line: 107, column: 4, scope: !80)
!80 = distinct !DILexicalBlock(scope: !70, file: !1, line: 105, column: 2)
!81 = !DILocation(line: 111, column: 18, scope: !12)
!82 = !DILocation(line: 111, column: 15, scope: !12)
!83 = !DILocation(line: 112, column: 9, scope: !12)
!84 = !DILocation(line: 112, column: 12, scope: !12)
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !66, !88}
!88 = !DILocation(line: 112, column: 14, scope: !12)
!89 = !DILocation(line: 114, column: 10, scope: !12)
!90 = !DILocation(line: 0, scope: !12)
!91 = !DILocation(line: 114, column: 3, scope: !12)
