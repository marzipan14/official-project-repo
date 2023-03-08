; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @stpcpy(i8* noalias, i8* noalias) local_unnamed_addr #0 !dbg !12 {
  %3 = ptrtoint i8* %1 to i64, !dbg !27
  %4 = ptrtoint i8* %0 to i64, !dbg !27
  %5 = or i64 %3, %4, !dbg !27
  %6 = and i64 %5, 7, !dbg !27
  %7 = icmp eq i64 %6, 0, !dbg !27
  br i1 %7, label %8, label %34, !dbg !29

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8* %0 to i64*, !dbg !30
  %10 = bitcast i8* %1 to i64*, !dbg !33
  %11 = load i64, i64* %10, align 8, !dbg !35, !tbaa !36
  %12 = add nsw i64 %11, -72340172838076673, !dbg !35
  %13 = and i64 %11, -9187201950435737472, !dbg !35
  %14 = xor i64 %13, -9187201950435737472, !dbg !35
  %15 = and i64 %14, %12, !dbg !35
  %16 = icmp eq i64 %15, 0, !dbg !40
  br i1 %16, label %17, label %29, !dbg !41

; <label>:17:                                     ; preds = %8, %17
  %18 = phi i64 [ %23, %17 ], [ %11, %8 ]
  %19 = phi i64* [ %21, %17 ], [ %10, %8 ]
  %20 = phi i64* [ %22, %17 ], [ %9, %8 ]
  %21 = getelementptr inbounds i64, i64* %19, i64 1, !dbg !42
  %22 = getelementptr inbounds i64, i64* %20, i64 1, !dbg !44
  store i64 %18, i64* %20, align 8, !dbg !45, !tbaa !36
  %23 = load i64, i64* %21, align 8, !dbg !35, !tbaa !36
  %24 = add nsw i64 %23, -72340172838076673, !dbg !35
  %25 = and i64 %23, -9187201950435737472, !dbg !35
  %26 = xor i64 %25, -9187201950435737472, !dbg !35
  %27 = and i64 %26, %24, !dbg !35
  %28 = icmp eq i64 %27, 0, !dbg !40
  br i1 %28, label %17, label %29, !dbg !41, !llvm.loop !46

; <label>:29:                                     ; preds = %17, %8
  %30 = phi i64* [ %9, %8 ], [ %22, %17 ], !dbg !48
  %31 = phi i64* [ %10, %8 ], [ %21, %17 ], !dbg !48
  %32 = bitcast i64* %30 to i8*, !dbg !49
  %33 = bitcast i64* %31 to i8*, !dbg !50
  br label %34, !dbg !51

; <label>:34:                                     ; preds = %2, %29
  %35 = phi i8* [ %32, %29 ], [ %0, %2 ]
  %36 = phi i8* [ %33, %29 ], [ %1, %2 ]
  br label %37, !dbg !52

; <label>:37:                                     ; preds = %34, %37
  %38 = phi i8* [ %42, %37 ], [ %35, %34 ]
  %39 = phi i8* [ %40, %37 ], [ %36, %34 ]
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !52
  %41 = load i8, i8* %39, align 1, !dbg !53, !tbaa !54
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !55
  store i8 %41, i8* %38, align 1, !dbg !56, !tbaa !54
  %43 = icmp eq i8 %41, 0, !dbg !57
  br i1 %43, label %44, label %37, !dbg !57, !llvm.loop !58

; <label>:44:                                     ; preds = %37
  ret i8* %38, !dbg !60
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpcpy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "stpcpy", scope: !1, file: !1, line: 62, type: !13, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !16}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "dst", arg: 1, scope: !12, file: !1, line: 62, type: !15)
!21 = !DILocalVariable(name: "src", arg: 2, scope: !12, file: !1, line: 62, type: !16)
!22 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 67, type: !5)
!23 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 68, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !DILocation(line: 62, column: 1, scope: !12)
!27 = !DILocation(line: 71, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !12, file: !1, line: 71, column: 7)
!29 = !DILocation(line: 71, column: 7, scope: !12)
!30 = !DILocation(line: 73, column: 21, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 72, column: 5)
!32 = !DILocation(line: 67, column: 9, scope: !12)
!33 = !DILocation(line: 74, column: 21, scope: !31)
!34 = !DILocation(line: 68, column: 16, scope: !12)
!35 = !DILocation(line: 78, column: 15, scope: !31)
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 78, column: 14, scope: !31)
!41 = !DILocation(line: 78, column: 7, scope: !31)
!42 = !DILocation(line: 80, column: 40, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 79, column: 9)
!44 = !DILocation(line: 80, column: 23, scope: !43)
!45 = !DILocation(line: 80, column: 26, scope: !43)
!46 = distinct !{!46, !41, !47}
!47 = !DILocation(line: 81, column: 9, scope: !31)
!48 = !DILocation(line: 0, scope: !43)
!49 = !DILocation(line: 83, column: 13, scope: !31)
!50 = !DILocation(line: 84, column: 13, scope: !31)
!51 = !DILocation(line: 85, column: 5, scope: !31)
!52 = !DILocation(line: 88, column: 24, scope: !12)
!53 = !DILocation(line: 88, column: 20, scope: !12)
!54 = !{!38, !38, i64 0}
!55 = !DILocation(line: 88, column: 15, scope: !12)
!56 = !DILocation(line: 88, column: 18, scope: !12)
!57 = !DILocation(line: 88, column: 3, scope: !12)
!58 = distinct !{!58, !57, !59}
!59 = !DILocation(line: 89, column: 5, scope: !12)
!60 = !DILocation(line: 90, column: 3, scope: !12)
