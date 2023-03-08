; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strncat(i8* noalias returned, i8* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !13 {
  %4 = ptrtoint i8* %0 to i64, !dbg !34
  %5 = and i64 %4, 7, !dbg !34
  %6 = icmp eq i64 %5, 0, !dbg !34
  br i1 %6, label %7, label %20, !dbg !35

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %0 to i64*, !dbg !36
  br label %9, !dbg !38

; <label>:9:                                      ; preds = %9, %7
  %10 = phi i64* [ %8, %7 ], [ %17, %9 ], !dbg !39
  %11 = load i64, i64* %10, align 8, !dbg !40, !tbaa !41
  %12 = add i64 %11, -72340172838076673, !dbg !40
  %13 = and i64 %11, -9187201950435737472, !dbg !40
  %14 = xor i64 %13, -9187201950435737472, !dbg !40
  %15 = and i64 %14, %12, !dbg !40
  %16 = icmp eq i64 %15, 0, !dbg !45
  %17 = getelementptr inbounds i64, i64* %10, i64 1, !dbg !46
  br i1 %16, label %9, label %18, !dbg !38, !llvm.loop !47

; <label>:18:                                     ; preds = %9
  %19 = bitcast i64* %10 to i8*, !dbg !48
  br label %20, !dbg !49

; <label>:20:                                     ; preds = %18, %3
  %21 = phi i8* [ %0, %3 ], [ %19, %18 ]
  br label %22, !dbg !50

; <label>:22:                                     ; preds = %20, %22
  %23 = phi i8* [ %26, %22 ], [ %21, %20 ], !dbg !51
  %24 = load i8, i8* %23, align 1, !dbg !50, !tbaa !52
  %25 = icmp eq i8 %24, 0, !dbg !53
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !54
  br i1 %25, label %27, label %22, !dbg !53, !llvm.loop !55

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i64 %2, 0, !dbg !56
  br i1 %28, label %41, label %29, !dbg !57

; <label>:29:                                     ; preds = %27, %37
  %30 = phi i64 [ %33, %37 ], [ %2, %27 ]
  %31 = phi i8* [ %35, %37 ], [ %23, %27 ]
  %32 = phi i8* [ %38, %37 ], [ %1, %27 ]
  %33 = add i64 %30, -1, !dbg !58
  %34 = load i8, i8* %32, align 1, !dbg !59, !tbaa !52
  %35 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !60
  store i8 %34, i8* %31, align 1, !dbg !61, !tbaa !52
  %36 = icmp eq i8 %34, 0, !dbg !57
  br i1 %36, label %41, label %37, !dbg !62

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !63
  %39 = icmp eq i64 %33, 0, !dbg !64
  br i1 %39, label %40, label %29, !dbg !67

; <label>:40:                                     ; preds = %37
  store i8 0, i8* %35, align 1, !dbg !68, !tbaa !52
  br label %41, !dbg !57

; <label>:41:                                     ; preds = %29, %40, %27
  ret i8* %0, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "strncat", scope: !1, file: !1, line: 68, type: !14, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!14 = !DISubroutineType(types: !15)
!15 = !{!7, !16, !17, !20}
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !23, line: 129, baseType: !6)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DILocalVariable(name: "s1", arg: 1, scope: !13, file: !1, line: 68, type: !16)
!26 = !DILocalVariable(name: "s2", arg: 2, scope: !13, file: !1, line: 68, type: !17)
!27 = !DILocalVariable(name: "n", arg: 3, scope: !13, file: !1, line: 68, type: !20)
!28 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 86, type: !7)
!29 = !DILocalVariable(name: "aligned_s1", scope: !30, file: !1, line: 91, type: !5)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 90, column: 5)
!31 = distinct !DILexicalBlock(scope: !13, file: !1, line: 89, column: 7)
!32 = !DILocation(line: 68, column: 1, scope: !13)
!33 = !DILocation(line: 86, column: 9, scope: !13)
!34 = !DILocation(line: 89, column: 7, scope: !31)
!35 = !DILocation(line: 89, column: 7, scope: !13)
!36 = !DILocation(line: 91, column: 35, scope: !30)
!37 = !DILocation(line: 91, column: 22, scope: !30)
!38 = !DILocation(line: 92, column: 7, scope: !30)
!39 = !DILocation(line: 0, scope: !30)
!40 = !DILocation(line: 92, column: 15, scope: !30)
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 92, column: 14, scope: !30)
!46 = !DILocation(line: 93, column: 12, scope: !30)
!47 = distinct !{!47, !38, !46}
!48 = !DILocation(line: 95, column: 12, scope: !30)
!49 = !DILocation(line: 96, column: 5, scope: !30)
!50 = !DILocation(line: 98, column: 10, scope: !13)
!51 = !DILocation(line: 0, scope: !13)
!52 = !{!43, !43, i64 0}
!53 = !DILocation(line: 98, column: 3, scope: !13)
!54 = !DILocation(line: 99, column: 7, scope: !13)
!55 = distinct !{!55, !53, !54}
!56 = !DILocation(line: 107, column: 14, scope: !13)
!57 = !DILocation(line: 107, column: 19, scope: !13)
!58 = !DILocation(line: 107, column: 11, scope: !13)
!59 = !DILocation(line: 107, column: 31, scope: !13)
!60 = !DILocation(line: 107, column: 26, scope: !13)
!61 = !DILocation(line: 107, column: 29, scope: !13)
!62 = !DILocation(line: 107, column: 3, scope: !13)
!63 = !DILocation(line: 107, column: 34, scope: !13)
!64 = !DILocation(line: 109, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 109, column: 11)
!66 = distinct !DILexicalBlock(scope: !13, file: !1, line: 108, column: 5)
!67 = !DILocation(line: 109, column: 11, scope: !66)
!68 = !DILocation(line: 110, column: 6, scope: !65)
!69 = !DILocation(line: 113, column: 3, scope: !13)
