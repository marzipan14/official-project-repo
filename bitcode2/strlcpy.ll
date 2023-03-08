; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strlcpy(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br i1 %4, label %5, label %6, !dbg !32

; <label>:5:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br label %24, !dbg !34

; <label>:6:                                      ; preds = %3
  %7 = add i64 %2, -1, !dbg !37
  %8 = icmp eq i64 %7, 0, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %8, label %21, label %9, !dbg !39

; <label>:9:                                      ; preds = %6, %17
  %10 = phi i8* [ %15, %17 ], [ %0, %6 ], !dbg !40
  %11 = phi i8* [ %13, %17 ], [ %1, %6 ], !dbg !40
  %12 = phi i64 [ %18, %17 ], [ %7, %6 ], !dbg !44
  %13 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !45
  %14 = load i8, i8* %11, align 1, !dbg !46, !tbaa !47
  %15 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !50
  store i8 %14, i8* %10, align 1, !dbg !51, !tbaa !47
  %16 = icmp eq i8 %14, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %16, label %20, label %17, !dbg !53

; <label>:17:                                     ; preds = %9
  %18 = add i64 %12, -1, !dbg !54
  %19 = icmp eq i64 %18, 0, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %19, label %21, label %9, !dbg !56, !llvm.loop !57

; <label>:20:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br label %31

; <label>:21:                                     ; preds = %17, %6
  %22 = phi i8* [ %1, %6 ], [ %13, %17 ]
  %23 = phi i8* [ %0, %6 ], [ %15, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store i8 0, i8* %23, align 1, !dbg !60, !tbaa !47
  br label %24, !dbg !62

; <label>:24:                                     ; preds = %5, %21
  %25 = phi i8* [ %22, %21 ], [ %1, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br label %26, !dbg !64

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i8* [ %25, %24 ], [ %28, %26 ], !dbg !65
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !66
  %29 = load i8, i8* %27, align 1, !dbg !67, !tbaa !47
  %30 = icmp eq i8 %29, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %30, label %31, label %26, !dbg !64, !llvm.loop !68

; <label>:31:                                     ; preds = %26, %20
  %32 = phi i8* [ %13, %20 ], [ %28, %26 ], !dbg !40
  %33 = ptrtoint i8* %32 to i64, !dbg !70
  %34 = ptrtoint i8* %1 to i64, !dbg !70
  %35 = xor i64 %34, -1, !dbg !71
  %36 = add i64 %33, %35, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  ret i64 %36, !dbg !72
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
!33 = !DILocation(line: 61, column: 13, scope: !7)
!34 = !DILocation(line: 62, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 61, column: 21)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 13)
!37 = !DILocation(line: 53, column: 23, scope: !31)
!38 = !DILocation(line: 53, column: 27, scope: !31)
!39 = !DILocation(line: 53, column: 13, scope: !7)
!40 = !DILocation(line: 0, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 55, column: 29)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 20)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 53, column: 33)
!44 = !DILocation(line: 0, scope: !43)
!45 = !DILocation(line: 55, column: 39, scope: !41)
!46 = !DILocation(line: 55, column: 37, scope: !41)
!47 = !{!48, !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 55, column: 32, scope: !41)
!51 = !DILocation(line: 55, column: 35, scope: !41)
!52 = !DILocation(line: 55, column: 43, scope: !41)
!53 = !DILocation(line: 55, column: 29, scope: !42)
!54 = !DILocation(line: 57, column: 26, scope: !43)
!55 = !DILocation(line: 57, column: 30, scope: !43)
!56 = !DILocation(line: 57, column: 17, scope: !42)
!57 = distinct !{!57, !58, !59}
!58 = !DILocation(line: 54, column: 17, scope: !43)
!59 = !DILocation(line: 57, column: 34, scope: !43)
!60 = !DILocation(line: 63, column: 28, scope: !61)
!61 = distinct !DILexicalBlock(scope: !35, file: !1, line: 62, column: 21)
!62 = !DILocation(line: 63, column: 25, scope: !61)
!63 = !DILocation(line: 0, scope: !61)
!64 = !DILocation(line: 64, column: 17, scope: !35)
!65 = !DILocation(line: 0, scope: !35)
!66 = !DILocation(line: 64, column: 26, scope: !35)
!67 = !DILocation(line: 64, column: 24, scope: !35)
!68 = distinct !{!68, !64, !69}
!69 = !DILocation(line: 65, column: 25, scope: !35)
!70 = !DILocation(line: 68, column: 18, scope: !7)
!71 = !DILocation(line: 68, column: 24, scope: !7)
!72 = !DILocation(line: 68, column: 9, scope: !7)
