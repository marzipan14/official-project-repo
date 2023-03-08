; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strlcpy(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !30
  br i1 %4, label %22, label %5, !dbg !32

; <label>:5:                                      ; preds = %3
  %6 = add i64 %2, -1, !dbg !33
  %7 = icmp eq i64 %6, 0, !dbg !34
  br i1 %7, label %19, label %8, !dbg !35

; <label>:8:                                      ; preds = %5, %16
  %9 = phi i8* [ %14, %16 ], [ %0, %5 ], !dbg !36
  %10 = phi i8* [ %12, %16 ], [ %1, %5 ], !dbg !36
  %11 = phi i64 [ %17, %16 ], [ %6, %5 ], !dbg !40
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !41
  %13 = load i8, i8* %10, align 1, !dbg !42, !tbaa !43
  %14 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !46
  store i8 %13, i8* %9, align 1, !dbg !47, !tbaa !43
  %15 = icmp eq i8 %13, 0, !dbg !48
  br i1 %15, label %29, label %16, !dbg !49

; <label>:16:                                     ; preds = %8
  %17 = add i64 %11, -1, !dbg !50
  %18 = icmp eq i64 %17, 0, !dbg !51
  br i1 %18, label %19, label %8, !dbg !52, !llvm.loop !53

; <label>:19:                                     ; preds = %16, %5
  %20 = phi i8* [ %1, %5 ], [ %12, %16 ]
  %21 = phi i8* [ %0, %5 ], [ %14, %16 ]
  store i8 0, i8* %21, align 1, !dbg !56, !tbaa !43
  br label %22, !dbg !60

; <label>:22:                                     ; preds = %3, %19
  %23 = phi i8* [ %1, %3 ], [ %20, %19 ]
  br label %24, !dbg !61

; <label>:24:                                     ; preds = %22, %24
  %25 = phi i8* [ %26, %24 ], [ %23, %22 ], !dbg !62
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !61
  %27 = load i8, i8* %25, align 1, !dbg !63, !tbaa !43
  %28 = icmp eq i8 %27, 0, !dbg !64
  br i1 %28, label %29, label %24, !dbg !64, !llvm.loop !65

; <label>:29:                                     ; preds = %8, %24
  %30 = phi i8* [ %26, %24 ], [ %12, %8 ], !dbg !36
  %31 = ptrtoint i8* %30 to i64, !dbg !67
  %32 = ptrtoint i8* %1 to i64, !dbg !67
  %33 = xor i64 %32, -1, !dbg !68
  %34 = add i64 %31, %33, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  ret i64 %34, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strlcpy", scope: !1, file: !1, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !17, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 43, type: !15)
!21 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 43, type: !17)
!22 = !DILocalVariable(name: "siz", arg: 3, scope: !7, file: !1, line: 43, type: !10)
!23 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 48, type: !15)
!24 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 49, type: !17)
!25 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 50, type: !10)
!26 = !DILocation(line: 43, column: 1, scope: !7)
!27 = !DILocation(line: 48, column: 24, scope: !7)
!28 = !DILocation(line: 49, column: 30, scope: !7)
!29 = !DILocation(line: 50, column: 25, scope: !7)
!30 = !DILocation(line: 53, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 13)
!32 = !DILocation(line: 53, column: 20, scope: !31)
!33 = !DILocation(line: 53, column: 23, scope: !31)
!34 = !DILocation(line: 53, column: 27, scope: !31)
!35 = !DILocation(line: 53, column: 13, scope: !7)
!36 = !DILocation(line: 0, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 55, column: 29)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 54, column: 20)
!39 = distinct !DILexicalBlock(scope: !31, file: !1, line: 53, column: 33)
!40 = !DILocation(line: 0, scope: !39)
!41 = !DILocation(line: 55, column: 39, scope: !37)
!42 = !DILocation(line: 55, column: 37, scope: !37)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 55, column: 32, scope: !37)
!47 = !DILocation(line: 55, column: 35, scope: !37)
!48 = !DILocation(line: 55, column: 43, scope: !37)
!49 = !DILocation(line: 55, column: 29, scope: !38)
!50 = !DILocation(line: 57, column: 26, scope: !39)
!51 = !DILocation(line: 57, column: 30, scope: !39)
!52 = !DILocation(line: 57, column: 17, scope: !38)
!53 = distinct !{!53, !54, !55}
!54 = !DILocation(line: 54, column: 17, scope: !39)
!55 = !DILocation(line: 57, column: 34, scope: !39)
!56 = !DILocation(line: 63, column: 28, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 62, column: 21)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 61, column: 21)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 13)
!60 = !DILocation(line: 63, column: 25, scope: !57)
!61 = !DILocation(line: 64, column: 26, scope: !58)
!62 = !DILocation(line: 0, scope: !58)
!63 = !DILocation(line: 64, column: 24, scope: !58)
!64 = !DILocation(line: 64, column: 17, scope: !58)
!65 = distinct !{!65, !64, !66}
!66 = !DILocation(line: 65, column: 25, scope: !58)
!67 = !DILocation(line: 68, column: 18, scope: !7)
!68 = !DILocation(line: 68, column: 24, scope: !7)
!69 = !DILocation(line: 68, column: 9, scope: !7)
