; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcscat(i32* noalias returned, i32* noalias nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  %3 = load i32, i32* %0, align 4, !dbg !27, !tbaa !28
  %4 = icmp eq i32 %3, 0, !dbg !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  br i1 %4, label %10, label %5, !dbg !26

; <label>:5:                                      ; preds = %2, %5
  %6 = phi i32* [ %7, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  %8 = load i32, i32* %7, align 4, !dbg !27, !tbaa !28
  %9 = icmp eq i32 %8, 0, !dbg !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  br i1 %9, label %10, label %5, !dbg !26, !llvm.loop !33

; <label>:10:                                     ; preds = %5, %2
  %11 = phi i32* [ %0, %2 ], [ %7, %5 ], !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %12 = load i32, i32* %1, align 4, !dbg !38, !tbaa !28
  %13 = icmp eq i32 %12, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %13, label %22, label %14, !dbg !37

; <label>:14:                                     ; preds = %10, %14
  %15 = phi i32 [ %20, %14 ], [ %12, %10 ]
  %16 = phi i32* [ %18, %14 ], [ %1, %10 ]
  %17 = phi i32* [ %19, %14 ], [ %11, %10 ]
  %18 = getelementptr inbounds i32, i32* %16, i64 1, !dbg !39
  %19 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !40
  store i32 %15, i32* %17, align 4, !dbg !41, !tbaa !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %20 = load i32, i32* %18, align 4, !dbg !38, !tbaa !28
  %21 = icmp eq i32 %20, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %21, label %22, label %14, !dbg !37, !llvm.loop !42

; <label>:22:                                     ; preds = %14, %10
  %23 = phi i32* [ %11, %10 ], [ %19, %14 ], !dbg !34
  store i32 0, i32* %23, align 4, !dbg !43, !tbaa !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  ret i32* %0, !dbg !44
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcscat", scope: !1, file: !1, line: 69, type: !8, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !{!19, !20, !21, !22, !23}
!19 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 69, type: !14)
!20 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 69, type: !15)
!21 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 73, type: !10)
!22 = !DILocalVariable(name: "q", scope: !7, file: !1, line: 74, type: !10)
!23 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 75, type: !16)
!24 = !DILocation(line: 69, column: 1, scope: !7)
!25 = !DILocation(line: 73, column: 12, scope: !7)
!26 = !DILocation(line: 78, column: 3, scope: !7)
!27 = !DILocation(line: 78, column: 10, scope: !7)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 79, column: 6, scope: !7)
!33 = distinct !{!33, !26, !32}
!34 = !DILocation(line: 0, scope: !7)
!35 = !DILocation(line: 74, column: 12, scope: !7)
!36 = !DILocation(line: 75, column: 19, scope: !7)
!37 = !DILocation(line: 82, column: 3, scope: !7)
!38 = !DILocation(line: 82, column: 10, scope: !7)
!39 = !DILocation(line: 83, column: 14, scope: !7)
!40 = !DILocation(line: 83, column: 7, scope: !7)
!41 = !DILocation(line: 83, column: 10, scope: !7)
!42 = distinct !{!42, !37, !39}
!43 = !DILocation(line: 84, column: 6, scope: !7)
!44 = !DILocation(line: 85, column: 3, scope: !7)
