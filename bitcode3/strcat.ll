; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strcat(i8* noalias returned, i8* noalias) local_unnamed_addr #0 !dbg !13 {
  %3 = ptrtoint i8* %0 to i64, !dbg !29
  %4 = and i64 %3, 7, !dbg !29
  %5 = icmp eq i64 %4, 0, !dbg !29
  br i1 %5, label %6, label %19, !dbg !30

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %0 to i64*, !dbg !31
  br label %8, !dbg !33

; <label>:8:                                      ; preds = %8, %6
  %9 = phi i64* [ %7, %6 ], [ %16, %8 ], !dbg !34
  %10 = load i64, i64* %9, align 8, !dbg !35, !tbaa !36
  %11 = add i64 %10, -72340172838076673, !dbg !35
  %12 = and i64 %10, -9187201950435737472, !dbg !35
  %13 = xor i64 %12, -9187201950435737472, !dbg !35
  %14 = and i64 %13, %11, !dbg !35
  %15 = icmp eq i64 %14, 0, !dbg !40
  %16 = getelementptr inbounds i64, i64* %9, i64 1, !dbg !41
  br i1 %15, label %8, label %17, !dbg !33, !llvm.loop !42

; <label>:17:                                     ; preds = %8
  %18 = bitcast i64* %9 to i8*, !dbg !43
  br label %19, !dbg !44

; <label>:19:                                     ; preds = %17, %2
  %20 = phi i8* [ %0, %2 ], [ %18, %17 ]
  br label %21, !dbg !45

; <label>:21:                                     ; preds = %19, %21
  %22 = phi i8* [ %25, %21 ], [ %20, %19 ], !dbg !46
  %23 = load i8, i8* %22, align 1, !dbg !45, !tbaa !47
  %24 = icmp eq i8 %23, 0, !dbg !48
  %25 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !49
  br i1 %24, label %26, label %21, !dbg !48, !llvm.loop !50

; <label>:26:                                     ; preds = %21
  %27 = tail call i8* @strcpy(i8* %22, i8* %1) #3, !dbg !51
  ret i8* %0, !dbg !52
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "strcat", scope: !1, file: !1, line: 63, type: !14, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{!7, !16, !17}
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "s1", arg: 1, scope: !13, file: !1, line: 63, type: !16)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !13, file: !1, line: 63, type: !17)
!23 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 77, type: !7)
!24 = !DILocalVariable(name: "aligned_s1", scope: !25, file: !1, line: 83, type: !5)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 82, column: 5)
!26 = distinct !DILexicalBlock(scope: !13, file: !1, line: 81, column: 7)
!27 = !DILocation(line: 63, column: 1, scope: !13)
!28 = !DILocation(line: 77, column: 9, scope: !13)
!29 = !DILocation(line: 81, column: 7, scope: !26)
!30 = !DILocation(line: 81, column: 7, scope: !13)
!31 = !DILocation(line: 83, column: 35, scope: !25)
!32 = !DILocation(line: 83, column: 22, scope: !25)
!33 = !DILocation(line: 84, column: 7, scope: !25)
!34 = !DILocation(line: 0, scope: !25)
!35 = !DILocation(line: 84, column: 15, scope: !25)
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 84, column: 14, scope: !25)
!41 = !DILocation(line: 85, column: 12, scope: !25)
!42 = distinct !{!42, !33, !41}
!43 = !DILocation(line: 87, column: 12, scope: !25)
!44 = !DILocation(line: 88, column: 5, scope: !25)
!45 = !DILocation(line: 90, column: 10, scope: !13)
!46 = !DILocation(line: 0, scope: !13)
!47 = !{!38, !38, i64 0}
!48 = !DILocation(line: 90, column: 3, scope: !13)
!49 = !DILocation(line: 91, column: 7, scope: !13)
!50 = distinct !{!50, !48, !49}
!51 = !DILocation(line: 100, column: 3, scope: !13)
!52 = !DILocation(line: 102, column: 3, scope: !13)
