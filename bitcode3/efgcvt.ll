; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/efgcvt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/efgcvt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

; Function Attrs: noredzone nounwind
define dso_local i8* @fcvt(double, i32, i32*, i32*) local_unnamed_addr #0 !dbg !10 {
  %5 = tail call i8* @fcvtbuf(double %0, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !23
  ret i8* %5, !dbg !24
}

; Function Attrs: noredzone
declare dso_local i8* @fcvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @fcvtf(float, i32, i32*, i32*) local_unnamed_addr #0 !dbg !25 {
  %5 = fpext float %0 to double, !dbg !34
  %6 = tail call i8* @fcvtbuf(double %5, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !37
  ret i8* %6, !dbg !38
}

; Function Attrs: noredzone nounwind
define dso_local i8* @gcvtf(float, i32, i8*) local_unnamed_addr #0 !dbg !39 {
  %4 = fpext float %0 to double, !dbg !48
  %5 = fcmp olt float %0, 0.000000e+00, !dbg !61
  br i1 %5, label %6, label %9, !dbg !63

; <label>:6:                                      ; preds = %3
  store i8 45, i8* %2, align 1, !dbg !64, !tbaa !66
  %7 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !69
  %8 = add nsw i32 %1, -1, !dbg !70
  br label %9, !dbg !71

; <label>:9:                                      ; preds = %3, %6
  %10 = phi i8* [ %7, %6 ], [ %2, %3 ]
  %11 = phi i32 [ %8, %6 ], [ %1, %3 ]
  %12 = tail call %struct._reent* @__getreent() #3, !dbg !72
  %13 = tail call i8* @_gcvt(%struct._reent* %12, double %4, i32 %11, i8* %10, i8 signext 103, i32 0) #3, !dbg !73
  %14 = icmp eq i8* %13, null, !dbg !73
  %15 = select i1 %14, i8* null, i8* %2, !dbg !73
  ret i8* %15, !dbg !74
}

; Function Attrs: noredzone nounwind
define dso_local i8* @gcvt(double, i32, i8*) local_unnamed_addr #0 !dbg !51 {
  %4 = fcmp olt double %0, 0.000000e+00, !dbg !77
  br i1 %4, label %5, label %8, !dbg !78

; <label>:5:                                      ; preds = %3
  store i8 45, i8* %2, align 1, !dbg !79, !tbaa !66
  %6 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !80
  %7 = add nsw i32 %1, -1, !dbg !81
  br label %8, !dbg !82

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i8* [ %6, %5 ], [ %2, %3 ]
  %10 = phi i32 [ %7, %5 ], [ %1, %3 ]
  %11 = tail call %struct._reent* @__getreent() #3, !dbg !83
  %12 = tail call i8* @_gcvt(%struct._reent* %11, double %0, i32 %10, i8* %9, i8 signext 103, i32 0) #3, !dbg !84
  %13 = icmp eq i8* %12, null, !dbg !84
  %14 = select i1 %13, i8* null, i8* %2, !dbg !84
  ret i8* %14, !dbg !85
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ecvt(double, i32, i32*, i32*) local_unnamed_addr #0 !dbg !86 {
  %5 = tail call i8* @ecvtbuf(double %0, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !93
  ret i8* %5, !dbg !94
}

; Function Attrs: noredzone
declare dso_local i8* @ecvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @ecvtf(float, i32, i32*, i32*) local_unnamed_addr #0 !dbg !95 {
  %5 = fpext float %0 to double, !dbg !102
  %6 = tail call i8* @ecvtbuf(double %5, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !105
  ret i8* %6, !dbg !106
}

; Function Attrs: noredzone
declare dso_local i8* @_gcvt(%struct._reent*, double, i32, i8*, i8 signext, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/efgcvt.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "fcvt", scope: !1, file: !1, line: 143, type: !11, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !5, !15, !16, !16}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "d", arg: 1, scope: !10, file: !1, line: 143, type: !5)
!19 = !DILocalVariable(name: "ndigit", arg: 2, scope: !10, file: !1, line: 143, type: !15)
!20 = !DILocalVariable(name: "decpt", arg: 3, scope: !10, file: !1, line: 143, type: !16)
!21 = !DILocalVariable(name: "sign", arg: 4, scope: !10, file: !1, line: 143, type: !16)
!22 = !DILocation(line: 143, column: 1, scope: !10)
!23 = !DILocation(line: 149, column: 10, scope: !10)
!24 = !DILocation(line: 149, column: 3, scope: !10)
!25 = distinct !DISubprogram(name: "fcvtf", scope: !1, file: !1, line: 153, type: !26, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!13, !4, !15, !16, !16}
!28 = !{!29, !30, !31, !32}
!29 = !DILocalVariable(name: "d", arg: 1, scope: !25, file: !1, line: 153, type: !4)
!30 = !DILocalVariable(name: "ndigit", arg: 2, scope: !25, file: !1, line: 153, type: !15)
!31 = !DILocalVariable(name: "decpt", arg: 3, scope: !25, file: !1, line: 153, type: !16)
!32 = !DILocalVariable(name: "sign", arg: 4, scope: !25, file: !1, line: 153, type: !16)
!33 = !DILocation(line: 153, column: 1, scope: !25)
!34 = !DILocation(line: 159, column: 16, scope: !25)
!35 = !DILocation(line: 143, column: 1, scope: !10, inlinedAt: !36)
!36 = distinct !DILocation(line: 159, column: 10, scope: !25)
!37 = !DILocation(line: 149, column: 10, scope: !10, inlinedAt: !36)
!38 = !DILocation(line: 159, column: 3, scope: !25)
!39 = distinct !DISubprogram(name: "gcvtf", scope: !1, file: !1, line: 164, type: !40, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!13, !4, !15, !13}
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(name: "d", arg: 1, scope: !39, file: !1, line: 164, type: !4)
!44 = !DILocalVariable(name: "ndigit", arg: 2, scope: !39, file: !1, line: 164, type: !15)
!45 = !DILocalVariable(name: "buf", arg: 3, scope: !39, file: !1, line: 164, type: !13)
!46 = !DILocalVariable(name: "asd", scope: !39, file: !1, line: 169, type: !5)
!47 = !DILocation(line: 164, column: 1, scope: !39)
!48 = !DILocation(line: 169, column: 16, scope: !39)
!49 = !DILocation(line: 169, column: 10, scope: !39)
!50 = !DILocalVariable(name: "d", arg: 1, scope: !51, file: !1, line: 196, type: !5)
!51 = distinct !DISubprogram(name: "gcvt", scope: !1, file: !1, line: 196, type: !52, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!13, !5, !15, !13}
!54 = !{!50, !55, !56, !57}
!55 = !DILocalVariable(name: "ndigit", arg: 2, scope: !51, file: !1, line: 196, type: !15)
!56 = !DILocalVariable(name: "buf", arg: 3, scope: !51, file: !1, line: 196, type: !13)
!57 = !DILocalVariable(name: "tbuf", scope: !51, file: !1, line: 201, type: !13)
!58 = !DILocation(line: 196, column: 1, scope: !51, inlinedAt: !59)
!59 = distinct !DILocation(line: 170, column: 10, scope: !39)
!60 = !DILocation(line: 201, column: 9, scope: !51, inlinedAt: !59)
!61 = !DILocation(line: 202, column: 9, scope: !62, inlinedAt: !59)
!62 = distinct !DILexicalBlock(scope: !51, file: !1, line: 202, column: 7)
!63 = !DILocation(line: 202, column: 7, scope: !51, inlinedAt: !59)
!64 = !DILocation(line: 203, column: 10, scope: !65, inlinedAt: !59)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 202, column: 14)
!66 = !{!67, !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 204, column: 8, scope: !65, inlinedAt: !59)
!70 = !DILocation(line: 205, column: 11, scope: !65, inlinedAt: !59)
!71 = !DILocation(line: 206, column: 3, scope: !65, inlinedAt: !59)
!72 = !DILocation(line: 207, column: 18, scope: !51, inlinedAt: !59)
!73 = !DILocation(line: 207, column: 11, scope: !51, inlinedAt: !59)
!74 = !DILocation(line: 170, column: 3, scope: !39)
!75 = !DILocation(line: 196, column: 1, scope: !51)
!76 = !DILocation(line: 201, column: 9, scope: !51)
!77 = !DILocation(line: 202, column: 9, scope: !62)
!78 = !DILocation(line: 202, column: 7, scope: !51)
!79 = !DILocation(line: 203, column: 10, scope: !65)
!80 = !DILocation(line: 204, column: 8, scope: !65)
!81 = !DILocation(line: 205, column: 11, scope: !65)
!82 = !DILocation(line: 206, column: 3, scope: !65)
!83 = !DILocation(line: 207, column: 18, scope: !51)
!84 = !DILocation(line: 207, column: 11, scope: !51)
!85 = !DILocation(line: 207, column: 3, scope: !51)
!86 = distinct !DISubprogram(name: "ecvt", scope: !1, file: !1, line: 175, type: !11, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DILocalVariable(name: "d", arg: 1, scope: !86, file: !1, line: 175, type: !5)
!89 = !DILocalVariable(name: "ndigit", arg: 2, scope: !86, file: !1, line: 175, type: !15)
!90 = !DILocalVariable(name: "decpt", arg: 3, scope: !86, file: !1, line: 175, type: !16)
!91 = !DILocalVariable(name: "sign", arg: 4, scope: !86, file: !1, line: 175, type: !16)
!92 = !DILocation(line: 175, column: 1, scope: !86)
!93 = !DILocation(line: 181, column: 10, scope: !86)
!94 = !DILocation(line: 181, column: 3, scope: !86)
!95 = distinct !DISubprogram(name: "ecvtf", scope: !1, file: !1, line: 185, type: !26, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DILocalVariable(name: "d", arg: 1, scope: !95, file: !1, line: 185, type: !4)
!98 = !DILocalVariable(name: "ndigit", arg: 2, scope: !95, file: !1, line: 185, type: !15)
!99 = !DILocalVariable(name: "decpt", arg: 3, scope: !95, file: !1, line: 185, type: !16)
!100 = !DILocalVariable(name: "sign", arg: 4, scope: !95, file: !1, line: 185, type: !16)
!101 = !DILocation(line: 185, column: 1, scope: !95)
!102 = !DILocation(line: 191, column: 16, scope: !95)
!103 = !DILocation(line: 175, column: 1, scope: !86, inlinedAt: !104)
!104 = distinct !DILocation(line: 191, column: 10, scope: !95)
!105 = !DILocation(line: 181, column: 10, scope: !86, inlinedAt: !104)
!106 = !DILocation(line: 191, column: 3, scope: !95)
