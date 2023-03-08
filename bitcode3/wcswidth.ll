; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcswidth.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcswidth.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @wcswidth(i32* readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = icmp eq i32* %0, null, !dbg !31
  %4 = icmp eq i64 %1, 0, !dbg !33
  %5 = or i1 %3, %4, !dbg !34
  br i1 %5, label %22, label %6, !dbg !34

; <label>:6:                                      ; preds = %2, %18
  %7 = phi i64 [ %20, %18 ], [ %1, %2 ]
  %8 = phi i32* [ %19, %18 ], [ %0, %2 ]
  %9 = phi i32 [ %14, %18 ], [ 0, %2 ], !dbg !30
  %10 = load i32, i32* %8, align 4, !dbg !35, !tbaa !36
  %11 = tail call i32 @__wcwidth(i32 %10) #3, !dbg !41
  %12 = icmp slt i32 %11, 0, !dbg !44
  %13 = select i1 %12, i32 0, i32 %11, !dbg !45
  %14 = add nuw nsw i32 %13, %9, !dbg !45
  br i1 %12, label %22, label %15

; <label>:15:                                     ; preds = %6
  %16 = load i32, i32* %8, align 4, !dbg !46, !tbaa !36
  %17 = icmp eq i32 %16, 0, !dbg !46
  br i1 %17, label %22, label %18, !dbg !47

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !48
  %20 = add i64 %7, -1, !dbg !49
  %21 = icmp eq i64 %20, 0, !dbg !50
  br i1 %21, label %22, label %6, !dbg !51, !llvm.loop !52

; <label>:22:                                     ; preds = %6, %15, %18, %2
  %23 = phi i32 [ 0, %2 ], [ %14, %15 ], [ %14, %18 ], [ -1, %6 ], !dbg !55
  ret i32 %23, !dbg !56
}

; Function Attrs: noredzone
declare dso_local i32 @__wcwidth(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcswidth.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcswidth", scope: !1, file: !1, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !15}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "pwcs", arg: 1, scope: !7, file: !1, line: 43, type: !11)
!22 = !DILocalVariable(name: "n", arg: 2, scope: !7, file: !1, line: 43, type: !15)
!23 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 48, type: !10)
!24 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 48, type: !10)
!25 = !DILocalVariable(name: "wi", scope: !26, file: !1, line: 52, type: !27)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 6)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !14, line: 124, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 43, column: 1, scope: !7)
!30 = !DILocation(line: 48, column: 10, scope: !7)
!31 = !DILocation(line: 49, column: 8, scope: !32)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 7)
!33 = !DILocation(line: 49, column: 18, scope: !32)
!34 = !DILocation(line: 49, column: 13, scope: !32)
!35 = !DILocation(line: 52, column: 17, scope: !26)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 52, column: 12, scope: !26)
!41 = !DILocation(line: 68, column: 14, scope: !42)
!42 = distinct !DILexicalBlock(scope: !26, file: !1, line: 68, column: 9)
!43 = !DILocation(line: 48, column: 7, scope: !7)
!44 = !DILocation(line: 68, column: 30, scope: !42)
!45 = !DILocation(line: 68, column: 9, scope: !26)
!46 = !DILocation(line: 71, column: 12, scope: !7)
!47 = !DILocation(line: 71, column: 20, scope: !7)
!48 = !DILocation(line: 71, column: 17, scope: !7)
!49 = !DILocation(line: 71, column: 23, scope: !7)
!50 = !DILocation(line: 71, column: 27, scope: !7)
!51 = !DILocation(line: 71, column: 3, scope: !26)
!52 = distinct !{!52, !53, !54}
!53 = !DILocation(line: 51, column: 3, scope: !7)
!54 = !DILocation(line: 71, column: 30, scope: !7)
!55 = !DILocation(line: 0, scope: !42)
!56 = !DILocation(line: 73, column: 1, scope: !7)
