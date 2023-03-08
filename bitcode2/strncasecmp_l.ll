; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp_l.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp_l.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type opaque

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @strncasecmp_l(i8* nocapture readonly, i8* nocapture readonly, i64, %struct.__locale_t*) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %5 = icmp eq i64 %2, 0, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %5, label %25, label %6, !dbg !41

; <label>:6:                                      ; preds = %4, %20
  %7 = phi i8* [ %22, %20 ], [ %0, %4 ]
  %8 = phi i8* [ %21, %20 ], [ %1, %4 ]
  %9 = phi i64 [ %23, %20 ], [ %2, %4 ]
  %10 = load i8, i8* %7, align 1, !dbg !42, !tbaa !43
  %11 = sext i8 %10 to i32, !dbg !42
  %12 = tail call i32 @tolower_l(i32 %11, %struct.__locale_t* %3) #3, !dbg !46
  %13 = load i8, i8* %8, align 1, !dbg !48, !tbaa !43
  %14 = sext i8 %13 to i32, !dbg !48
  %15 = tail call i32 @tolower_l(i32 %14, %struct.__locale_t* %3) #3, !dbg !49
  %16 = sub nsw i32 %12, %15, !dbg !51
  %17 = icmp eq i32 %16, 0, !dbg !53
  %18 = icmp ne i32 %15, 0, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  %19 = and i1 %18, %17, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !58
  %22 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !59
  %23 = add i64 %9, -1, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  %24 = icmp eq i64 %23, 0, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %24, label %25, label %6, !dbg !41, !llvm.loop !62

; <label>:25:                                     ; preds = %6, %20, %4
  %26 = phi i32 [ 0, %4 ], [ %16, %6 ], [ 0, %20 ], !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  ret i32 %26, !dbg !65
}

; Function Attrs: noredzone
declare dso_local i32 @tolower_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp_l.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strncasecmp_l", scope: !1, file: !1, line: 44, type: !8, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !14, !19}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !17, line: 129, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !21, line: 9, flags: DIFlagFwdDecl)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26, !27, !28, !33}
!23 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 44, type: !11)
!24 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 44, type: !11)
!25 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 44, type: !14)
!26 = !DILocalVariable(name: "locale", arg: 4, scope: !7, file: !1, line: 45, type: !19)
!27 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 47, type: !10)
!28 = !DILocalVariable(name: "c1", scope: !29, file: !1, line: 50, type: !32)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 49, column: 5)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 48, column: 3)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 48, column: 3)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DILocalVariable(name: "c2", scope: !29, file: !1, line: 51, type: !32)
!34 = !DILocation(line: 44, column: 28, scope: !7)
!35 = !DILocation(line: 44, column: 44, scope: !7)
!36 = !DILocation(line: 44, column: 55, scope: !7)
!37 = !DILocation(line: 45, column: 28, scope: !7)
!38 = !DILocation(line: 47, column: 7, scope: !7)
!39 = !DILocation(line: 48, column: 3, scope: !7)
!40 = !DILocation(line: 48, column: 13, scope: !30)
!41 = !DILocation(line: 48, column: 3, scope: !31)
!42 = !DILocation(line: 50, column: 33, scope: !29)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 50, column: 22, scope: !29)
!47 = !DILocation(line: 50, column: 17, scope: !29)
!48 = !DILocation(line: 51, column: 33, scope: !29)
!49 = !DILocation(line: 51, column: 22, scope: !29)
!50 = !DILocation(line: 51, column: 17, scope: !29)
!51 = !DILocation(line: 52, column: 20, scope: !52)
!52 = distinct !DILexicalBlock(scope: !29, file: !1, line: 52, column: 11)
!53 = !DILocation(line: 52, column: 26, scope: !52)
!54 = !DILocation(line: 52, column: 39, scope: !52)
!55 = !DILocation(line: 52, column: 32, scope: !52)
!56 = !DILocation(line: 0, scope: !30)
!57 = !DILocation(line: 53, column: 9, scope: !52)
!58 = !DILocation(line: 51, column: 36, scope: !29)
!59 = !DILocation(line: 50, column: 36, scope: !29)
!60 = !DILocation(line: 48, column: 20, scope: !30)
!61 = !DILocation(line: 48, column: 3, scope: !30)
!62 = distinct !{!62, !41, !63}
!63 = !DILocation(line: 54, column: 5, scope: !31)
!64 = !DILocation(line: 0, scope: !7)
!65 = !DILocation(line: 55, column: 3, scope: !7)
