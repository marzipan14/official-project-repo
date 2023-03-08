; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsspn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsspn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcsspn(i32*, i32* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %3 = load i32, i32* %0, align 4, !dbg !25, !tbaa !26
  %4 = icmp eq i32 %3, 0, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br i1 %4, label %24, label %5, !dbg !24

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !30, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br label %8, !dbg !32

; <label>:8:                                      ; preds = %5, %20
  %9 = phi i32 [ %22, %20 ], [ %3, %5 ]
  %10 = phi i32* [ %21, %20 ], [ %0, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br i1 %7, label %11, label %12, !dbg !32

; <label>:11:                                     ; preds = %8, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br label %24, !dbg !34

; <label>:12:                                     ; preds = %8, %16
  %13 = phi i32 [ %18, %16 ], [ %6, %8 ]
  %14 = phi i32* [ %17, %16 ], [ %1, %8 ]
  %15 = icmp eq i32 %9, %13, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %15, label %20, label %16, !dbg !38

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  %18 = load i32, i32* %17, align 4, !dbg !30, !tbaa !26
  %19 = icmp eq i32 %18, 0, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br i1 %19, label %11, label %12, !dbg !32, !llvm.loop !40

; <label>:20:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  %21 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %22 = load i32, i32* %21, align 4, !dbg !25, !tbaa !26
  %23 = icmp eq i32 %22, 0, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br i1 %23, label %24, label %8, !dbg !24, !llvm.loop !43

; <label>:24:                                     ; preds = %20, %2, %11
  %25 = phi i32* [ %10, %11 ], [ %0, %2 ], [ %21, %20 ]
  %26 = ptrtoint i32* %25 to i64, !dbg !45
  %27 = ptrtoint i32* %0 to i64, !dbg !45
  %28 = sub i64 %26, %27, !dbg !45
  %29 = ashr exact i64 %28, 2, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  ret i64 %29, !dbg !46
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsspn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcsspn", scope: !1, file: !1, line: 64, type: !8, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !11, line: 83, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !7, file: !1, line: 64, type: !13)
!19 = !DILocalVariable(name: "set", arg: 2, scope: !7, file: !1, line: 64, type: !13)
!20 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 68, type: !13)
!21 = !DILocalVariable(name: "q", scope: !7, file: !1, line: 69, type: !13)
!22 = !DILocation(line: 64, column: 1, scope: !7)
!23 = !DILocation(line: 68, column: 19, scope: !7)
!24 = !DILocation(line: 72, column: 3, scope: !7)
!25 = !DILocation(line: 72, column: 10, scope: !7)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 75, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 73, column: 5)
!32 = !DILocation(line: 75, column: 7, scope: !31)
!33 = !DILocation(line: 69, column: 19, scope: !7)
!34 = !DILocation(line: 81, column: 11, scope: !31)
!35 = !DILocation(line: 77, column: 11, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 77, column: 8)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 76, column: 2)
!38 = !DILocation(line: 77, column: 8, scope: !37)
!39 = !DILocation(line: 79, column: 5, scope: !37)
!40 = distinct !{!40, !32, !41}
!41 = !DILocation(line: 80, column: 2, scope: !31)
!42 = !DILocation(line: 83, column: 8, scope: !31)
!43 = distinct !{!43, !24, !44}
!44 = !DILocation(line: 84, column: 5, scope: !7)
!45 = !DILocation(line: 87, column: 13, scope: !7)
!46 = !DILocation(line: 87, column: 3, scope: !7)
