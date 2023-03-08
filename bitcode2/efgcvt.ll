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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @fcvt(double, i32, i32*, i32*) local_unnamed_addr #0 !dbg !10 {
  %5 = tail call i8* @fcvtbuf(double %0, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  ret i8* %5, !dbg !24
}

; Function Attrs: noredzone
declare dso_local i8* @fcvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @fcvtf(float, i32, i32*, i32*) local_unnamed_addr #0 !dbg !25 {
  %5 = fpext float %0 to double, !dbg !34
  %6 = tail call i8* @fcvtbuf(double %5, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  ret i8* %6, !dbg !39
}

; Function Attrs: noredzone nounwind
define dso_local i8* @gcvtf(float, i32, i8*) local_unnamed_addr #0 !dbg !40 {
  %4 = fpext float %0 to double, !dbg !49
  %5 = fcmp olt float %0, 0.000000e+00, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %5, label %6, label %9, !dbg !64

; <label>:6:                                      ; preds = %3
  store i8 45, i8* %2, align 1, !dbg !65, !tbaa !67
  %7 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !70
  %8 = add nsw i32 %1, -1, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br label %9, !dbg !72

; <label>:9:                                      ; preds = %3, %6
  %10 = phi i8* [ %7, %6 ], [ %2, %3 ]
  %11 = phi i32 [ %8, %6 ], [ %1, %3 ]
  %12 = tail call %struct._reent* @__getreent() #3, !dbg !73
  %13 = tail call i8* @_gcvt(%struct._reent* %12, double %4, i32 %11, i8* %10, i8 signext 103, i32 0) #3, !dbg !74
  %14 = icmp eq i8* %13, null, !dbg !74
  %15 = select i1 %14, i8* null, i8* %2, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  ret i8* %15, !dbg !76
}

; Function Attrs: noredzone nounwind
define dso_local i8* @gcvt(double, i32, i8*) local_unnamed_addr #0 !dbg !52 {
  %4 = fcmp olt double %0, 0.000000e+00, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %4, label %5, label %8, !dbg !80

; <label>:5:                                      ; preds = %3
  store i8 45, i8* %2, align 1, !dbg !81, !tbaa !67
  %6 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !82
  %7 = add nsw i32 %1, -1, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br label %8, !dbg !84

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i8* [ %6, %5 ], [ %2, %3 ]
  %10 = phi i32 [ %7, %5 ], [ %1, %3 ]
  %11 = tail call %struct._reent* @__getreent() #3, !dbg !85
  %12 = tail call i8* @_gcvt(%struct._reent* %11, double %0, i32 %10, i8* %9, i8 signext 103, i32 0) #3, !dbg !86
  %13 = icmp eq i8* %12, null, !dbg !86
  %14 = select i1 %13, i8* null, i8* %2, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  ret i8* %14, !dbg !87
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ecvt(double, i32, i32*, i32*) local_unnamed_addr #0 !dbg !88 {
  %5 = tail call i8* @ecvtbuf(double %0, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret i8* %5, !dbg !96
}

; Function Attrs: noredzone
declare dso_local i8* @ecvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @ecvtf(float, i32, i32*, i32*) local_unnamed_addr #0 !dbg !97 {
  %5 = fpext float %0 to double, !dbg !104
  %6 = tail call i8* @ecvtbuf(double %5, i32 %1, i32* %2, i32* %3, i8* null) #3, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  ret i8* %6, !dbg !109
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
!38 = !DILocation(line: 149, column: 3, scope: !10, inlinedAt: !36)
!39 = !DILocation(line: 159, column: 3, scope: !25)
!40 = distinct !DISubprogram(name: "gcvtf", scope: !1, file: !1, line: 164, type: !41, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!13, !4, !15, !13}
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(name: "d", arg: 1, scope: !40, file: !1, line: 164, type: !4)
!45 = !DILocalVariable(name: "ndigit", arg: 2, scope: !40, file: !1, line: 164, type: !15)
!46 = !DILocalVariable(name: "buf", arg: 3, scope: !40, file: !1, line: 164, type: !13)
!47 = !DILocalVariable(name: "asd", scope: !40, file: !1, line: 169, type: !5)
!48 = !DILocation(line: 164, column: 1, scope: !40)
!49 = !DILocation(line: 169, column: 16, scope: !40)
!50 = !DILocation(line: 169, column: 10, scope: !40)
!51 = !DILocalVariable(name: "d", arg: 1, scope: !52, file: !1, line: 196, type: !5)
!52 = distinct !DISubprogram(name: "gcvt", scope: !1, file: !1, line: 196, type: !53, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!13, !5, !15, !13}
!55 = !{!51, !56, !57, !58}
!56 = !DILocalVariable(name: "ndigit", arg: 2, scope: !52, file: !1, line: 196, type: !15)
!57 = !DILocalVariable(name: "buf", arg: 3, scope: !52, file: !1, line: 196, type: !13)
!58 = !DILocalVariable(name: "tbuf", scope: !52, file: !1, line: 201, type: !13)
!59 = !DILocation(line: 196, column: 1, scope: !52, inlinedAt: !60)
!60 = distinct !DILocation(line: 170, column: 10, scope: !40)
!61 = !DILocation(line: 201, column: 9, scope: !52, inlinedAt: !60)
!62 = !DILocation(line: 202, column: 9, scope: !63, inlinedAt: !60)
!63 = distinct !DILexicalBlock(scope: !52, file: !1, line: 202, column: 7)
!64 = !DILocation(line: 202, column: 7, scope: !52, inlinedAt: !60)
!65 = !DILocation(line: 203, column: 10, scope: !66, inlinedAt: !60)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 202, column: 14)
!67 = !{!68, !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 204, column: 8, scope: !66, inlinedAt: !60)
!71 = !DILocation(line: 205, column: 11, scope: !66, inlinedAt: !60)
!72 = !DILocation(line: 206, column: 3, scope: !66, inlinedAt: !60)
!73 = !DILocation(line: 207, column: 18, scope: !52, inlinedAt: !60)
!74 = !DILocation(line: 207, column: 11, scope: !52, inlinedAt: !60)
!75 = !DILocation(line: 207, column: 3, scope: !52, inlinedAt: !60)
!76 = !DILocation(line: 170, column: 3, scope: !40)
!77 = !DILocation(line: 196, column: 1, scope: !52)
!78 = !DILocation(line: 201, column: 9, scope: !52)
!79 = !DILocation(line: 202, column: 9, scope: !63)
!80 = !DILocation(line: 202, column: 7, scope: !52)
!81 = !DILocation(line: 203, column: 10, scope: !66)
!82 = !DILocation(line: 204, column: 8, scope: !66)
!83 = !DILocation(line: 205, column: 11, scope: !66)
!84 = !DILocation(line: 206, column: 3, scope: !66)
!85 = !DILocation(line: 207, column: 18, scope: !52)
!86 = !DILocation(line: 207, column: 11, scope: !52)
!87 = !DILocation(line: 207, column: 3, scope: !52)
!88 = distinct !DISubprogram(name: "ecvt", scope: !1, file: !1, line: 175, type: !11, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(name: "d", arg: 1, scope: !88, file: !1, line: 175, type: !5)
!91 = !DILocalVariable(name: "ndigit", arg: 2, scope: !88, file: !1, line: 175, type: !15)
!92 = !DILocalVariable(name: "decpt", arg: 3, scope: !88, file: !1, line: 175, type: !16)
!93 = !DILocalVariable(name: "sign", arg: 4, scope: !88, file: !1, line: 175, type: !16)
!94 = !DILocation(line: 175, column: 1, scope: !88)
!95 = !DILocation(line: 181, column: 10, scope: !88)
!96 = !DILocation(line: 181, column: 3, scope: !88)
!97 = distinct !DISubprogram(name: "ecvtf", scope: !1, file: !1, line: 185, type: !26, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DILocalVariable(name: "d", arg: 1, scope: !97, file: !1, line: 185, type: !4)
!100 = !DILocalVariable(name: "ndigit", arg: 2, scope: !97, file: !1, line: 185, type: !15)
!101 = !DILocalVariable(name: "decpt", arg: 3, scope: !97, file: !1, line: 185, type: !16)
!102 = !DILocalVariable(name: "sign", arg: 4, scope: !97, file: !1, line: 185, type: !16)
!103 = !DILocation(line: 185, column: 1, scope: !97)
!104 = !DILocation(line: 191, column: 16, scope: !97)
!105 = !DILocation(line: 175, column: 1, scope: !88, inlinedAt: !106)
!106 = distinct !DILocation(line: 191, column: 10, scope: !97)
!107 = !DILocation(line: 181, column: 10, scope: !88, inlinedAt: !106)
!108 = !DILocation(line: 181, column: 3, scope: !88, inlinedAt: !106)
!109 = !DILocation(line: 191, column: 3, scope: !97)
