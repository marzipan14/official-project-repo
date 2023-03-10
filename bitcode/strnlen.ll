; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnlen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnlen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = icmp eq i64 %1, 0, !dbg !24
  br i1 %3, label %13, label %4, !dbg !25

; <label>:4:                                      ; preds = %2, %10
  %5 = phi i64 [ %7, %10 ], [ %1, %2 ]
  %6 = phi i8* [ %11, %10 ], [ %0, %2 ]
  %7 = add i64 %5, -1, !dbg !26
  %8 = load i8, i8* %6, align 1, !dbg !27, !tbaa !28
  %9 = icmp eq i8 %8, 0, !dbg !25
  br i1 %9, label %13, label %10, !dbg !31

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !32
  %12 = icmp eq i64 %7, 0, !dbg !24
  br i1 %12, label %13, label %4, !dbg !25, !llvm.loop !33

; <label>:13:                                     ; preds = %10, %4, %2
  %14 = phi i8* [ %0, %2 ], [ %6, %4 ], [ %11, %10 ]
  %15 = ptrtoint i8* %14 to i64, !dbg !34
  %16 = ptrtoint i8* %0 to i64, !dbg !34
  %17 = sub i64 %15, %16, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i64 %17, !dbg !35
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnlen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strnlen", scope: !1, file: !1, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "str", arg: 1, scope: !7, file: !1, line: 39, type: !15)
!20 = !DILocalVariable(name: "n", arg: 2, scope: !7, file: !1, line: 39, type: !10)
!21 = !DILocalVariable(name: "start", scope: !7, file: !1, line: 43, type: !15)
!22 = !DILocation(line: 39, column: 1, scope: !7)
!23 = !DILocation(line: 43, column: 16, scope: !7)
!24 = !DILocation(line: 45, column: 14, scope: !7)
!25 = !DILocation(line: 45, column: 18, scope: !7)
!26 = !DILocation(line: 45, column: 11, scope: !7)
!27 = !DILocation(line: 45, column: 21, scope: !7)
!28 = !{!29, !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 45, column: 3, scope: !7)
!32 = !DILocation(line: 46, column: 8, scope: !7)
!33 = distinct !{!33, !31, !32}
!34 = !DILocation(line: 48, column: 14, scope: !7)
!35 = !DILocation(line: 48, column: 3, scope: !7)
