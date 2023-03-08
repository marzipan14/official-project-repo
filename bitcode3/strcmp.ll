; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #0 !dbg !15 {
  %3 = ptrtoint i8* %0 to i64, !dbg !27
  %4 = ptrtoint i8* %1 to i64, !dbg !27
  %5 = or i64 %4, %3, !dbg !27
  %6 = and i64 %5, 7, !dbg !27
  %7 = icmp eq i64 %6, 0, !dbg !27
  br i1 %7, label %8, label %34, !dbg !29

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8* %0 to i64*, !dbg !30
  %10 = bitcast i8* %1 to i64*, !dbg !33
  %11 = load i64, i64* %9, align 8, !dbg !35, !tbaa !36
  %12 = load i64, i64* %10, align 8, !dbg !40, !tbaa !36
  %13 = icmp eq i64 %11, %12, !dbg !41
  br i1 %13, label %14, label %29, !dbg !42

; <label>:14:                                     ; preds = %8, %23
  %15 = phi i64 [ %26, %23 ], [ %11, %8 ]
  %16 = phi i64* [ %25, %23 ], [ %10, %8 ]
  %17 = phi i64* [ %24, %23 ], [ %9, %8 ]
  %18 = add i64 %15, -72340172838076673, !dbg !43
  %19 = and i64 %15, -9187201950435737472, !dbg !43
  %20 = xor i64 %19, -9187201950435737472, !dbg !43
  %21 = and i64 %20, %18, !dbg !43
  %22 = icmp eq i64 %21, 0, !dbg !43
  br i1 %22, label %23, label %57, !dbg !46

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds i64, i64* %17, i64 1, !dbg !47
  %25 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !48
  %26 = load i64, i64* %24, align 8, !dbg !35, !tbaa !36
  %27 = load i64, i64* %25, align 8, !dbg !40, !tbaa !36
  %28 = icmp eq i64 %26, %27, !dbg !41
  br i1 %28, label %14, label %29, !dbg !42, !llvm.loop !49

; <label>:29:                                     ; preds = %23, %8
  %30 = phi i64* [ %9, %8 ], [ %24, %23 ], !dbg !51
  %31 = phi i64* [ %10, %8 ], [ %25, %23 ], !dbg !51
  %32 = bitcast i64* %30 to i8*, !dbg !52
  %33 = bitcast i64* %31 to i8*, !dbg !53
  br label %34, !dbg !54

; <label>:34:                                     ; preds = %2, %29
  %35 = phi i8* [ %0, %2 ], [ %32, %29 ]
  %36 = phi i8* [ %1, %2 ], [ %33, %29 ]
  %37 = load i8, i8* %35, align 1, !dbg !55, !tbaa !56
  %38 = icmp eq i8 %37, 0, !dbg !57
  br i1 %38, label %50, label %39, !dbg !58

; <label>:39:                                     ; preds = %34, %45
  %40 = phi i8 [ %48, %45 ], [ %37, %34 ]
  %41 = phi i8* [ %47, %45 ], [ %36, %34 ]
  %42 = phi i8* [ %46, %45 ], [ %35, %34 ]
  %43 = load i8, i8* %41, align 1, !dbg !59, !tbaa !56
  %44 = icmp eq i8 %40, %43, !dbg !60
  br i1 %44, label %45, label %50, !dbg !61

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !62
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !64
  %48 = load i8, i8* %46, align 1, !dbg !55, !tbaa !56
  %49 = icmp eq i8 %48, 0, !dbg !57
  br i1 %49, label %50, label %39, !dbg !58, !llvm.loop !65

; <label>:50:                                     ; preds = %39, %45, %34
  %51 = phi i8* [ %36, %34 ], [ %47, %45 ], [ %41, %39 ]
  %52 = phi i8 [ 0, %34 ], [ 0, %45 ], [ %40, %39 ], !dbg !55
  %53 = zext i8 %52 to i32, !dbg !67
  %54 = load i8, i8* %51, align 1, !dbg !68, !tbaa !56
  %55 = zext i8 %54 to i32, !dbg !69
  %56 = sub nsw i32 %53, %55, !dbg !70
  br label %57, !dbg !71

; <label>:57:                                     ; preds = %14, %50
  %58 = phi i32 [ %56, %50 ], [ 0, %14 ], !dbg !72
  ret i32 %58, !dbg !73
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !9}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "strcmp", scope: !1, file: !1, line: 61, type: !16, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !19}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "s1", arg: 1, scope: !15, file: !1, line: 61, type: !19)
!23 = !DILocalVariable(name: "s2", arg: 2, scope: !15, file: !1, line: 61, type: !19)
!24 = !DILocalVariable(name: "a1", scope: !15, file: !1, line: 74, type: !5)
!25 = !DILocalVariable(name: "a2", scope: !15, file: !1, line: 75, type: !5)
!26 = !DILocation(line: 61, column: 1, scope: !15)
!27 = !DILocation(line: 78, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !15, file: !1, line: 78, column: 7)
!29 = !DILocation(line: 78, column: 7, scope: !15)
!30 = !DILocation(line: 81, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 79, column: 5)
!32 = !DILocation(line: 74, column: 18, scope: !15)
!33 = !DILocation(line: 82, column: 12, scope: !31)
!34 = !DILocation(line: 75, column: 18, scope: !15)
!35 = !DILocation(line: 83, column: 14, scope: !31)
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 83, column: 21, scope: !31)
!41 = !DILocation(line: 83, column: 18, scope: !31)
!42 = !DILocation(line: 83, column: 7, scope: !31)
!43 = !DILocation(line: 87, column: 15, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 87, column: 15)
!45 = distinct !DILexicalBlock(scope: !31, file: !1, line: 84, column: 9)
!46 = !DILocation(line: 87, column: 15, scope: !45)
!47 = !DILocation(line: 90, column: 13, scope: !45)
!48 = !DILocation(line: 91, column: 13, scope: !45)
!49 = distinct !{!49, !42, !50}
!50 = !DILocation(line: 92, column: 9, scope: !31)
!51 = !DILocation(line: 0, scope: !45)
!52 = !DILocation(line: 95, column: 12, scope: !31)
!53 = !DILocation(line: 96, column: 12, scope: !31)
!54 = !DILocation(line: 97, column: 5, scope: !31)
!55 = !DILocation(line: 99, column: 10, scope: !15)
!56 = !{!38, !38, i64 0}
!57 = !DILocation(line: 99, column: 14, scope: !15)
!58 = !DILocation(line: 99, column: 22, scope: !15)
!59 = !DILocation(line: 99, column: 32, scope: !15)
!60 = !DILocation(line: 99, column: 29, scope: !15)
!61 = !DILocation(line: 99, column: 3, scope: !15)
!62 = !DILocation(line: 101, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !15, file: !1, line: 100, column: 5)
!64 = !DILocation(line: 102, column: 9, scope: !63)
!65 = distinct !{!65, !61, !66}
!66 = !DILocation(line: 103, column: 5, scope: !15)
!67 = !DILocation(line: 104, column: 10, scope: !15)
!68 = !DILocation(line: 104, column: 37, scope: !15)
!69 = !DILocation(line: 104, column: 36, scope: !15)
!70 = !DILocation(line: 104, column: 34, scope: !15)
!71 = !DILocation(line: 104, column: 3, scope: !15)
!72 = !DILocation(line: 0, scope: !44)
!73 = !DILocation(line: 106, column: 1, scope: !15)
