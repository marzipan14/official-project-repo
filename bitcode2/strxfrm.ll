; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strxfrm.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strxfrm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strxfrm(i8* noalias nocapture, i8* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  %4 = icmp eq i64 %2, 0, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %4, label %5, label %10, !dbg !28

; <label>:5:                                      ; preds = %18, %3
  %6 = phi i8* [ %1, %3 ], [ %20, %18 ]
  %7 = phi i64 [ 0, %3 ], [ %21, %18 ], !dbg !30
  %8 = load i8, i8* %6, align 1, !dbg !33, !tbaa !34
  %9 = icmp eq i8 %8, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %9, label %30, label %23, !dbg !37

; <label>:10:                                     ; preds = %3, %18
  %11 = phi i64 [ %15, %18 ], [ %2, %3 ]
  %12 = phi i64 [ %21, %18 ], [ 0, %3 ]
  %13 = phi i8* [ %20, %18 ], [ %1, %3 ]
  %14 = phi i8* [ %19, %18 ], [ %0, %3 ]
  %15 = add i64 %11, -1, !dbg !38
  %16 = load i8, i8* %13, align 1, !dbg !39, !tbaa !34
  store i8 %16, i8* %14, align 1, !dbg !40, !tbaa !34
  %17 = icmp eq i8 %16, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %17, label %30, label %18, !dbg !42

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !43
  %20 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !44
  %21 = add nuw i64 %12, 1, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  %22 = icmp eq i64 %15, 0, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %22, label %5, label %10, !dbg !28, !llvm.loop !46

; <label>:23:                                     ; preds = %5, %23
  %24 = phi i64 [ %27, %23 ], [ %7, %5 ]
  %25 = phi i8* [ %26, %23 ], [ %6, %5 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !48
  %27 = add i64 %24, 1, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %28 = load i8, i8* %26, align 1, !dbg !33, !tbaa !34
  %29 = icmp eq i8 %28, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %29, label %30, label %23, !dbg !37, !llvm.loop !51

; <label>:30:                                     ; preds = %10, %23, %5
  %31 = phi i64 [ %7, %5 ], [ %27, %23 ], [ %12, %10 ], !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i64 %31, !dbg !54
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strxfrm.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strxfrm", scope: !1, file: !1, line: 56, type: !8, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !18, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 56, type: !15)
!23 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 56, type: !18)
!24 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 56, type: !10)
!25 = !DILocalVariable(name: "res", scope: !7, file: !1, line: 61, type: !10)
!26 = !DILocation(line: 56, column: 1, scope: !7)
!27 = !DILocation(line: 61, column: 10, scope: !7)
!28 = !DILocation(line: 63, column: 3, scope: !7)
!29 = !DILocation(line: 63, column: 14, scope: !7)
!30 = !DILocation(line: 0, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 65, column: 11)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 5)
!33 = !DILocation(line: 70, column: 10, scope: !7)
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 70, column: 3, scope: !7)
!38 = !DILocation(line: 63, column: 11, scope: !7)
!39 = !DILocation(line: 65, column: 20, scope: !31)
!40 = !DILocation(line: 65, column: 18, scope: !31)
!41 = !DILocation(line: 65, column: 27, scope: !31)
!42 = !DILocation(line: 65, column: 11, scope: !32)
!43 = !DILocation(line: 65, column: 15, scope: !31)
!44 = !DILocation(line: 65, column: 23, scope: !31)
!45 = !DILocation(line: 66, column: 9, scope: !31)
!46 = distinct !{!46, !28, !47}
!47 = !DILocation(line: 69, column: 5, scope: !7)
!48 = !DILocation(line: 72, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !7, file: !1, line: 71, column: 5)
!50 = !DILocation(line: 73, column: 7, scope: !49)
!51 = distinct !{!51, !37, !52}
!52 = !DILocation(line: 74, column: 5, scope: !7)
!53 = !DILocation(line: 0, scope: !7)
!54 = !DILocation(line: 77, column: 1, scope: !7)
