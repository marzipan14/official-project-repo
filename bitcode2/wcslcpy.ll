; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcslcpy(i32* nocapture, i32*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %4, label %5, label %6, !dbg !31

; <label>:5:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br label %24, !dbg !33

; <label>:6:                                      ; preds = %3
  %7 = add i64 %2, -1, !dbg !36
  %8 = icmp eq i64 %7, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %8, label %21, label %9, !dbg !38

; <label>:9:                                      ; preds = %6, %17
  %10 = phi i32* [ %15, %17 ], [ %0, %6 ], !dbg !39
  %11 = phi i32* [ %13, %17 ], [ %1, %6 ], !dbg !39
  %12 = phi i64 [ %18, %17 ], [ %7, %6 ], !dbg !43
  %13 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !44
  %14 = load i32, i32* %11, align 4, !dbg !45, !tbaa !46
  %15 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !50
  store i32 %14, i32* %10, align 4, !dbg !51, !tbaa !46
  %16 = icmp eq i32 %14, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %16, label %20, label %17, !dbg !53

; <label>:17:                                     ; preds = %9
  %18 = add i64 %12, -1, !dbg !54
  %19 = icmp eq i64 %18, 0, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %19, label %21, label %9, !dbg !56, !llvm.loop !57

; <label>:20:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br label %31

; <label>:21:                                     ; preds = %17, %6
  %22 = phi i32* [ %1, %6 ], [ %13, %17 ]
  %23 = phi i32* [ %0, %6 ], [ %15, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  store i32 0, i32* %23, align 4, !dbg !60, !tbaa !46
  br label %24, !dbg !62

; <label>:24:                                     ; preds = %5, %21
  %25 = phi i32* [ %22, %21 ], [ %1, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br label %26, !dbg !64

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i32* [ %25, %24 ], [ %28, %26 ], !dbg !65
  %28 = getelementptr inbounds i32, i32* %27, i64 1, !dbg !66
  %29 = load i32, i32* %27, align 4, !dbg !67, !tbaa !46
  %30 = icmp eq i32 %29, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %30, label %31, label %26, !dbg !64, !llvm.loop !68

; <label>:31:                                     ; preds = %26, %20
  %32 = phi i32* [ %13, %20 ], [ %28, %26 ], !dbg !39
  %33 = ptrtoint i32* %32 to i64, !dbg !70
  %34 = ptrtoint i32* %1 to i64, !dbg !70
  %35 = sub i64 %33, %34, !dbg !70
  %36 = ashr exact i64 %35, 2, !dbg !70
  %37 = add nsw i64 %36, -1, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  ret i64 %37, !dbg !72
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
!32 = !DILocation(line: 93, column: 7, scope: !7)
!33 = !DILocation(line: 95, column: 11, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 94, column: 5)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 93, column: 7)
!36 = !DILocation(line: 82, column: 17, scope: !30)
!37 = !DILocation(line: 82, column: 21, scope: !30)
!38 = !DILocation(line: 82, column: 7, scope: !7)
!39 = !DILocation(line: 0, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 86, column: 8)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 85, column: 2)
!42 = distinct !DILexicalBlock(scope: !30, file: !1, line: 83, column: 5)
!43 = !DILocation(line: 0, scope: !42)
!44 = !DILocation(line: 86, column: 18, scope: !40)
!45 = !DILocation(line: 86, column: 16, scope: !40)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 86, column: 11, scope: !40)
!51 = !DILocation(line: 86, column: 14, scope: !40)
!52 = !DILocation(line: 86, column: 22, scope: !40)
!53 = !DILocation(line: 86, column: 8, scope: !41)
!54 = !DILocation(line: 89, column: 14, scope: !42)
!55 = !DILocation(line: 89, column: 18, scope: !42)
!56 = !DILocation(line: 88, column: 2, scope: !41)
!57 = distinct !{!57, !58, !59}
!58 = !DILocation(line: 84, column: 7, scope: !42)
!59 = !DILocation(line: 89, column: 22, scope: !42)
!60 = !DILocation(line: 96, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !34, file: !1, line: 95, column: 11)
!62 = !DILocation(line: 96, column: 2, scope: !61)
!63 = !DILocation(line: 0, scope: !61)
!64 = !DILocation(line: 97, column: 7, scope: !34)
!65 = !DILocation(line: 0, scope: !34)
!66 = !DILocation(line: 97, column: 16, scope: !34)
!67 = !DILocation(line: 97, column: 14, scope: !34)
!68 = distinct !{!68, !64, !69}
!69 = !DILocation(line: 98, column: 2, scope: !34)
!70 = !DILocation(line: 101, column: 13, scope: !7)
!71 = !DILocation(line: 101, column: 19, scope: !7)
!72 = !DILocation(line: 101, column: 3, scope: !7)
