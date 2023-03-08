; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strcpy(i8* returned, i8*) local_unnamed_addr #0 !dbg !12 {
  %3 = ptrtoint i8* %1 to i64, !dbg !29
  %4 = ptrtoint i8* %0 to i64, !dbg !29
  %5 = or i64 %3, %4, !dbg !29
  %6 = and i64 %5, 7, !dbg !29
  %7 = icmp eq i64 %6, 0, !dbg !29
  br i1 %7, label %8, label %34, !dbg !31

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8* %0 to i64*, !dbg !32
  %10 = bitcast i8* %1 to i64*, !dbg !35
  %11 = load i64, i64* %10, align 8, !dbg !37, !tbaa !38
  %12 = add nsw i64 %11, -72340172838076673, !dbg !37
  %13 = and i64 %11, -9187201950435737472, !dbg !37
  %14 = xor i64 %13, -9187201950435737472, !dbg !37
  %15 = and i64 %14, %12, !dbg !37
  %16 = icmp eq i64 %15, 0, !dbg !42
  br i1 %16, label %17, label %29, !dbg !43

; <label>:17:                                     ; preds = %8, %17
  %18 = phi i64 [ %23, %17 ], [ %11, %8 ]
  %19 = phi i64* [ %21, %17 ], [ %10, %8 ]
  %20 = phi i64* [ %22, %17 ], [ %9, %8 ]
  %21 = getelementptr inbounds i64, i64* %19, i64 1, !dbg !44
  %22 = getelementptr inbounds i64, i64* %20, i64 1, !dbg !46
  store i64 %18, i64* %20, align 8, !dbg !47, !tbaa !38
  %23 = load i64, i64* %21, align 8, !dbg !37, !tbaa !38
  %24 = add nsw i64 %23, -72340172838076673, !dbg !37
  %25 = and i64 %23, -9187201950435737472, !dbg !37
  %26 = xor i64 %25, -9187201950435737472, !dbg !37
  %27 = and i64 %26, %24, !dbg !37
  %28 = icmp eq i64 %27, 0, !dbg !42
  br i1 %28, label %17, label %29, !dbg !43, !llvm.loop !48

; <label>:29:                                     ; preds = %17, %8
  %30 = phi i64* [ %9, %8 ], [ %22, %17 ], !dbg !50
  %31 = phi i64* [ %10, %8 ], [ %21, %17 ], !dbg !50
  %32 = bitcast i64* %30 to i8*, !dbg !51
  %33 = bitcast i64* %31 to i8*, !dbg !52
  br label %34, !dbg !53

; <label>:34:                                     ; preds = %2, %29
  %35 = phi i8* [ %32, %29 ], [ %0, %2 ]
  %36 = phi i8* [ %33, %29 ], [ %1, %2 ]
  br label %37, !dbg !54

; <label>:37:                                     ; preds = %34, %37
  %38 = phi i8* [ %42, %37 ], [ %35, %34 ], !dbg !55
  %39 = phi i8* [ %40, %37 ], [ %36, %34 ], !dbg !55
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !54
  %41 = load i8, i8* %39, align 1, !dbg !56, !tbaa !57
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !58
  store i8 %41, i8* %38, align 1, !dbg !59, !tbaa !57
  %43 = icmp eq i8 %41, 0, !dbg !60
  br i1 %43, label %44, label %37, !dbg !60, !llvm.loop !61

; <label>:44:                                     ; preds = %37
  ret i8* %0, !dbg !63
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "strcpy", scope: !1, file: !1, line: 61, type: !13, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !6, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 61, type: !6)
!19 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 61, type: !15)
!20 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 73, type: !6)
!21 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 74, type: !15)
!22 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 75, type: !5)
!23 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 76, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !DILocation(line: 61, column: 1, scope: !12)
!27 = !DILocation(line: 73, column: 9, scope: !12)
!28 = !DILocation(line: 74, column: 16, scope: !12)
!29 = !DILocation(line: 79, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !12, file: !1, line: 79, column: 7)
!31 = !DILocation(line: 79, column: 7, scope: !12)
!32 = !DILocation(line: 81, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 80, column: 5)
!34 = !DILocation(line: 75, column: 9, scope: !12)
!35 = !DILocation(line: 82, column: 21, scope: !33)
!36 = !DILocation(line: 76, column: 16, scope: !12)
!37 = !DILocation(line: 86, column: 15, scope: !33)
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 86, column: 14, scope: !33)
!43 = !DILocation(line: 86, column: 7, scope: !33)
!44 = !DILocation(line: 88, column: 40, scope: !45)
!45 = distinct !DILexicalBlock(scope: !33, file: !1, line: 87, column: 9)
!46 = !DILocation(line: 88, column: 23, scope: !45)
!47 = !DILocation(line: 88, column: 26, scope: !45)
!48 = distinct !{!48, !43, !49}
!49 = !DILocation(line: 89, column: 9, scope: !33)
!50 = !DILocation(line: 0, scope: !45)
!51 = !DILocation(line: 91, column: 13, scope: !33)
!52 = !DILocation(line: 92, column: 13, scope: !33)
!53 = !DILocation(line: 93, column: 5, scope: !33)
!54 = !DILocation(line: 95, column: 24, scope: !12)
!55 = !DILocation(line: 0, scope: !12)
!56 = !DILocation(line: 95, column: 20, scope: !12)
!57 = !{!40, !40, i64 0}
!58 = !DILocation(line: 95, column: 15, scope: !12)
!59 = !DILocation(line: 95, column: 18, scope: !12)
!60 = !DILocation(line: 95, column: 3, scope: !12)
!61 = distinct !{!61, !60, !62}
!62 = !DILocation(line: 96, column: 5, scope: !12)
!63 = !DILocation(line: 97, column: 3, scope: !12)
