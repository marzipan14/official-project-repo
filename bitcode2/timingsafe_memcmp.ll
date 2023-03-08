; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @timingsafe_memcmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %4 = icmp eq i64 %2, 0, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %4, label %27, label %5, !dbg !46

; <label>:5:                                      ; preds = %3, %5
  %6 = phi i64 [ %25, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %22, %5 ], [ 0, %3 ]
  %8 = phi i32 [ %24, %5 ], [ 0, %3 ]
  %9 = getelementptr inbounds i8, i8* %0, i64 %6, !dbg !47
  %10 = load i8, i8* %9, align 1, !dbg !47, !tbaa !48
  %11 = zext i8 %10 to i32, !dbg !47
  %12 = getelementptr inbounds i8, i8* %1, i64 %6, !dbg !51
  %13 = load i8, i8* %12, align 1, !dbg !51, !tbaa !48
  %14 = zext i8 %13 to i32, !dbg !51
  %15 = sub nsw i32 %11, %14, !dbg !52
  %16 = ashr i32 %15, 8, !dbg !53
  %17 = sub nsw i32 %14, %11, !dbg !55
  %18 = ashr i32 %17, 8, !dbg !56
  %19 = sub nsw i32 %16, %18, !dbg !58
  %20 = xor i32 %8, -1, !dbg !60
  %21 = and i32 %19, %20, !dbg !61
  %22 = or i32 %21, %7, !dbg !62
  %23 = or i32 %18, %8, !dbg !63
  %24 = or i32 %23, %16, !dbg !64
  %25 = add nuw i64 %6, 1, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  %26 = icmp eq i64 %25, %2, !dbg !45
  br i1 %26, label %27, label %5, !dbg !46, !llvm.loop !67

; <label>:27:                                     ; preds = %5, %3
  %28 = phi i32 [ 0, %3 ], [ %22, %5 ], !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  ret i32 %28, !dbg !70
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "timingsafe_memcmp", scope: !1, file: !1, line: 22, type: !8, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !13}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !26, !27, !28, !29, !30, !34, !35}
!19 = !DILocalVariable(name: "b1", arg: 1, scope: !7, file: !1, line: 22, type: !11)
!20 = !DILocalVariable(name: "b2", arg: 2, scope: !7, file: !1, line: 22, type: !11)
!21 = !DILocalVariable(name: "len", arg: 3, scope: !7, file: !1, line: 22, type: !13)
!22 = !DILocalVariable(name: "p1", scope: !7, file: !1, line: 24, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DILocalVariable(name: "p2", scope: !7, file: !1, line: 24, type: !23)
!27 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 25, type: !13)
!28 = !DILocalVariable(name: "res", scope: !7, file: !1, line: 26, type: !10)
!29 = !DILocalVariable(name: "done", scope: !7, file: !1, line: 26, type: !10)
!30 = !DILocalVariable(name: "lt", scope: !31, file: !1, line: 30, type: !10)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 28, column: 35)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 28, column: 9)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 9)
!34 = !DILocalVariable(name: "gt", scope: !31, file: !1, line: 33, type: !10)
!35 = !DILocalVariable(name: "cmp", scope: !31, file: !1, line: 36, type: !10)
!36 = !DILocation(line: 22, column: 31, scope: !7)
!37 = !DILocation(line: 22, column: 47, scope: !7)
!38 = !DILocation(line: 22, column: 58, scope: !7)
!39 = !DILocation(line: 24, column: 30, scope: !7)
!40 = !DILocation(line: 24, column: 40, scope: !7)
!41 = !DILocation(line: 26, column: 13, scope: !7)
!42 = !DILocation(line: 26, column: 22, scope: !7)
!43 = !DILocation(line: 25, column: 16, scope: !7)
!44 = !DILocation(line: 28, column: 14, scope: !33)
!45 = !DILocation(line: 28, column: 23, scope: !32)
!46 = !DILocation(line: 28, column: 9, scope: !33)
!47 = !DILocation(line: 30, column: 27, scope: !31)
!48 = !{!49, !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 30, column: 35, scope: !31)
!52 = !DILocation(line: 30, column: 33, scope: !31)
!53 = !DILocation(line: 30, column: 42, scope: !31)
!54 = !DILocation(line: 30, column: 21, scope: !31)
!55 = !DILocation(line: 33, column: 33, scope: !31)
!56 = !DILocation(line: 33, column: 42, scope: !31)
!57 = !DILocation(line: 33, column: 21, scope: !31)
!58 = !DILocation(line: 36, column: 30, scope: !31)
!59 = !DILocation(line: 36, column: 21, scope: !31)
!60 = !DILocation(line: 39, column: 30, scope: !31)
!61 = !DILocation(line: 39, column: 28, scope: !31)
!62 = !DILocation(line: 39, column: 21, scope: !31)
!63 = !DILocation(line: 42, column: 28, scope: !31)
!64 = !DILocation(line: 42, column: 22, scope: !31)
!65 = !DILocation(line: 28, column: 31, scope: !32)
!66 = !DILocation(line: 28, column: 9, scope: !32)
!67 = distinct !{!67, !46, !68}
!68 = !DILocation(line: 43, column: 9, scope: !33)
!69 = !DILocation(line: 0, scope: !31)
!70 = !DILocation(line: 45, column: 9, scope: !7)
