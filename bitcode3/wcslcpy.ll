; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i64 @wcslcpy(i32* nocapture, i32*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !29
  br i1 %4, label %22, label %5, !dbg !31

; <label>:5:                                      ; preds = %3
  %6 = add i64 %2, -1, !dbg !32
  %7 = icmp eq i64 %6, 0, !dbg !33
  br i1 %7, label %19, label %8, !dbg !34

; <label>:8:                                      ; preds = %5, %16
  %9 = phi i32* [ %14, %16 ], [ %0, %5 ], !dbg !35
  %10 = phi i32* [ %12, %16 ], [ %1, %5 ], !dbg !35
  %11 = phi i64 [ %17, %16 ], [ %6, %5 ], !dbg !39
  %12 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !40
  %13 = load i32, i32* %10, align 4, !dbg !41, !tbaa !42
  %14 = getelementptr inbounds i32, i32* %9, i64 1, !dbg !46
  store i32 %13, i32* %9, align 4, !dbg !47, !tbaa !42
  %15 = icmp eq i32 %13, 0, !dbg !48
  br i1 %15, label %29, label %16, !dbg !49

; <label>:16:                                     ; preds = %8
  %17 = add i64 %11, -1, !dbg !50
  %18 = icmp eq i64 %17, 0, !dbg !51
  br i1 %18, label %19, label %8, !dbg !52, !llvm.loop !53

; <label>:19:                                     ; preds = %16, %5
  %20 = phi i32* [ %1, %5 ], [ %12, %16 ]
  %21 = phi i32* [ %0, %5 ], [ %14, %16 ]
  store i32 0, i32* %21, align 4, !dbg !56, !tbaa !42
  br label %22, !dbg !60

; <label>:22:                                     ; preds = %3, %19
  %23 = phi i32* [ %1, %3 ], [ %20, %19 ]
  br label %24, !dbg !61

; <label>:24:                                     ; preds = %22, %24
  %25 = phi i32* [ %26, %24 ], [ %23, %22 ], !dbg !62
  %26 = getelementptr inbounds i32, i32* %25, i64 1, !dbg !61
  %27 = load i32, i32* %25, align 4, !dbg !63, !tbaa !42
  %28 = icmp eq i32 %27, 0, !dbg !64
  br i1 %28, label %29, label %24, !dbg !64, !llvm.loop !65

; <label>:29:                                     ; preds = %8, %24
  %30 = phi i32* [ %26, %24 ], [ %12, %8 ], !dbg !35
  %31 = ptrtoint i32* %30 to i64, !dbg !67
  %32 = ptrtoint i32* %1 to i64, !dbg !67
  %33 = sub i64 %31, %32, !dbg !67
  %34 = ashr exact i64 %33, 2, !dbg !67
  %35 = add nsw i64 %34, -1, !dbg !68
  ret i64 %35, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcslcpy", scope: !1, file: !1, line: 72, type: !8, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !16, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !11, line: 83, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 72, type: !13)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 72, type: !16)
!21 = !DILocalVariable(name: "siz", arg: 3, scope: !7, file: !1, line: 72, type: !10)
!22 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 77, type: !13)
!23 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 78, type: !16)
!24 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 79, type: !10)
!25 = !DILocation(line: 72, column: 1, scope: !7)
!26 = !DILocation(line: 77, column: 12, scope: !7)
!27 = !DILocation(line: 78, column: 19, scope: !7)
!28 = !DILocation(line: 79, column: 10, scope: !7)
!29 = !DILocation(line: 82, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 82, column: 7)
!31 = !DILocation(line: 82, column: 14, scope: !30)
!32 = !DILocation(line: 82, column: 17, scope: !30)
!33 = !DILocation(line: 82, column: 21, scope: !30)
!34 = !DILocation(line: 82, column: 7, scope: !7)
!35 = !DILocation(line: 0, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 86, column: 8)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 85, column: 2)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 83, column: 5)
!39 = !DILocation(line: 0, scope: !38)
!40 = !DILocation(line: 86, column: 18, scope: !36)
!41 = !DILocation(line: 86, column: 16, scope: !36)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 86, column: 11, scope: !36)
!47 = !DILocation(line: 86, column: 14, scope: !36)
!48 = !DILocation(line: 86, column: 22, scope: !36)
!49 = !DILocation(line: 86, column: 8, scope: !37)
!50 = !DILocation(line: 89, column: 14, scope: !38)
!51 = !DILocation(line: 89, column: 18, scope: !38)
!52 = !DILocation(line: 88, column: 2, scope: !37)
!53 = distinct !{!53, !54, !55}
!54 = !DILocation(line: 84, column: 7, scope: !38)
!55 = !DILocation(line: 89, column: 22, scope: !38)
!56 = !DILocation(line: 96, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 95, column: 11)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 94, column: 5)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 93, column: 7)
!60 = !DILocation(line: 96, column: 2, scope: !57)
!61 = !DILocation(line: 97, column: 16, scope: !58)
!62 = !DILocation(line: 0, scope: !58)
!63 = !DILocation(line: 97, column: 14, scope: !58)
!64 = !DILocation(line: 97, column: 7, scope: !58)
!65 = distinct !{!65, !64, !66}
!66 = !DILocation(line: 98, column: 2, scope: !58)
!67 = !DILocation(line: 101, column: 13, scope: !7)
!68 = !DILocation(line: 101, column: 19, scope: !7)
!69 = !DILocation(line: 101, column: 3, scope: !7)
