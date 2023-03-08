; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscasecmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscasecmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @wcscasecmp(i32* nocapture readonly, i32* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  br label %3, !dbg !27

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32* [ %1, %2 ], [ %9, %3 ]
  %5 = phi i32* [ %0, %2 ], [ %6, %3 ]
  %6 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !28
  %7 = load i32, i32* %5, align 4, !dbg !29, !tbaa !30
  %8 = tail call i32 @towlower(i32 %7) #3, !dbg !34
  %9 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !36
  %10 = load i32, i32* %4, align 4, !dbg !37, !tbaa !30
  %11 = tail call i32 @towlower(i32 %10) #3, !dbg !38
  %12 = sub nsw i32 %8, %11, !dbg !40
  %13 = icmp eq i32 %12, 0, !dbg !42
  %14 = icmp ne i32 %11, 0, !dbg !43
  %15 = and i1 %14, %13, !dbg !44
  br i1 %15, label %3, label %16, !llvm.loop !45

; <label>:16:                                     ; preds = %3
  ret i32 %12, !dbg !48
}

; Function Attrs: noredzone
declare dso_local i32 @towlower(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscasecmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcscasecmp", scope: !1, file: !1, line: 45, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !24}
!16 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 45, type: !11)
!17 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 45, type: !11)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 49, type: !10)
!19 = !DILocalVariable(name: "c1", scope: !20, file: !1, line: 52, type: !23)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 51, column: 5)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 50, column: 3)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 3)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DILocalVariable(name: "c2", scope: !20, file: !1, line: 53, type: !23)
!25 = !DILocation(line: 45, column: 1, scope: !7)
!26 = !DILocation(line: 49, column: 7, scope: !7)
!27 = !DILocation(line: 50, column: 3, scope: !7)
!28 = !DILocation(line: 52, column: 35, scope: !20)
!29 = !DILocation(line: 52, column: 32, scope: !20)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 52, column: 22, scope: !20)
!35 = !DILocation(line: 52, column: 17, scope: !20)
!36 = !DILocation(line: 53, column: 35, scope: !20)
!37 = !DILocation(line: 53, column: 32, scope: !20)
!38 = !DILocation(line: 53, column: 22, scope: !20)
!39 = !DILocation(line: 53, column: 17, scope: !20)
!40 = !DILocation(line: 54, column: 20, scope: !41)
!41 = distinct !DILexicalBlock(scope: !20, file: !1, line: 54, column: 11)
!42 = !DILocation(line: 54, column: 26, scope: !41)
!43 = !DILocation(line: 54, column: 39, scope: !41)
!44 = !DILocation(line: 55, column: 9, scope: !41)
!45 = distinct !{!45, !46, !47}
!46 = !DILocation(line: 50, column: 3, scope: !22)
!47 = !DILocation(line: 56, column: 5, scope: !22)
!48 = !DILocation(line: 57, column: 3, scope: !7)
