; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcsnlen(i32*, i64) local_unnamed_addr #0 !dbg !11 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %3 = load i32, i32* %0, align 4, !dbg !25, !tbaa !26
  %4 = icmp eq i32 %3, 0, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %4, label %5, label %7, !dbg !30

; <label>:5:                                      ; preds = %11, %2
  %6 = phi i32* [ %0, %2 ], [ %13, %11 ], !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br label %16, !dbg !24

; <label>:7:                                      ; preds = %2, %11
  %8 = phi i32* [ %13, %11 ], [ %0, %2 ]
  %9 = phi i64 [ %12, %11 ], [ %1, %2 ]
  %10 = icmp eq i64 %9, 0, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br i1 %10, label %16, label %11, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = add i64 %9, -1, !dbg !33
  %13 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %14 = load i32, i32* %13, align 4, !dbg !25, !tbaa !26
  %15 = icmp eq i32 %14, 0, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %15, label %5, label %7, !dbg !30, !llvm.loop !35

; <label>:16:                                     ; preds = %7, %5
  %17 = phi i32* [ %6, %5 ], [ %8, %7 ]
  %18 = ptrtoint i32* %17 to i64, !dbg !36
  %19 = ptrtoint i32* %0 to i64, !dbg !36
  %20 = sub i64 %18, %19, !dbg !36
  %21 = ashr exact i64 %20, 2, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  ret i64 %21, !dbg !37
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "wcsnlen", scope: !1, file: !1, line: 61, type: !12, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !4}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !5, line: 83, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !1, line: 61, type: !14)
!20 = !DILocalVariable(name: "maxlen", arg: 2, scope: !11, file: !1, line: 61, type: !4)
!21 = !DILocalVariable(name: "p", scope: !11, file: !1, line: 65, type: !14)
!22 = !DILocation(line: 61, column: 1, scope: !11)
!23 = !DILocation(line: 65, column: 19, scope: !11)
!24 = !DILocation(line: 68, column: 3, scope: !11)
!25 = !DILocation(line: 68, column: 10, scope: !11)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 68, column: 13, scope: !11)
!31 = !DILocation(line: 0, scope: !11)
!32 = !DILocation(line: 68, column: 25, scope: !11)
!33 = !DILocation(line: 68, column: 22, scope: !11)
!34 = !DILocation(line: 69, column: 6, scope: !11)
!35 = distinct !{!35, !24, !34}
!36 = !DILocation(line: 71, column: 21, scope: !11)
!37 = !DILocation(line: 71, column: 3, scope: !11)
