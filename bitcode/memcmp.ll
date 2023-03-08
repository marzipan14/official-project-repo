; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #0 !dbg !13 {
  %4 = icmp ult i64 %2, 8, !dbg !34
  br i1 %4, label %32, label %5, !dbg !36

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %0 to i64, !dbg !37
  %7 = ptrtoint i8* %1 to i64, !dbg !37
  %8 = or i64 %7, %6, !dbg !37
  %9 = and i64 %8, 7, !dbg !37
  %10 = icmp eq i64 %9, 0, !dbg !37
  br i1 %10, label %11, label %37, !dbg !38

; <label>:11:                                     ; preds = %5
  %12 = bitcast i8* %0 to i64*, !dbg !39
  %13 = bitcast i8* %1 to i64*, !dbg !42
  br label %14, !dbg !44

; <label>:14:                                     ; preds = %11, %21
  %15 = phi i64* [ %23, %21 ], [ %13, %11 ]
  %16 = phi i64* [ %22, %21 ], [ %12, %11 ]
  %17 = phi i64 [ %24, %21 ], [ %2, %11 ]
  %18 = load i64, i64* %16, align 8, !dbg !44, !tbaa !47
  %19 = load i64, i64* %15, align 8, !dbg !51, !tbaa !47
  %20 = icmp eq i64 %18, %19, !dbg !52
  br i1 %20, label %21, label %26, !dbg !53

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !54
  %23 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !55
  %24 = add i64 %17, -8, !dbg !56
  %25 = icmp ugt i64 %24, 7, !dbg !57
  br i1 %25, label %14, label %26, !dbg !58, !llvm.loop !59

; <label>:26:                                     ; preds = %21, %14
  %27 = phi i64 [ %24, %21 ], [ %17, %14 ]
  %28 = phi i64* [ %22, %21 ], [ %16, %14 ], !dbg !61
  %29 = phi i64* [ %23, %21 ], [ %15, %14 ], !dbg !61
  %30 = bitcast i64* %28 to i8*, !dbg !62
  %31 = bitcast i64* %29 to i8*, !dbg !63
  br label %32, !dbg !64

; <label>:32:                                     ; preds = %26, %3
  %33 = phi i64 [ %2, %3 ], [ %27, %26 ]
  %34 = phi i8* [ %0, %3 ], [ %30, %26 ], !dbg !65
  %35 = phi i8* [ %1, %3 ], [ %31, %26 ], !dbg !65
  %36 = icmp eq i64 %33, 0, !dbg !66
  br i1 %36, label %57, label %37, !dbg !66

; <label>:37:                                     ; preds = %5, %32
  %38 = phi i64 [ %2, %5 ], [ %33, %32 ]
  %39 = phi i8* [ %1, %5 ], [ %35, %32 ]
  %40 = phi i8* [ %0, %5 ], [ %34, %32 ]
  br label %41, !dbg !67

; <label>:41:                                     ; preds = %37, %53
  %42 = phi i64 [ %45, %53 ], [ %38, %37 ]
  %43 = phi i8* [ %55, %53 ], [ %39, %37 ]
  %44 = phi i8* [ %54, %53 ], [ %40, %37 ]
  %45 = add i64 %42, -1, !dbg !67
  %46 = load i8, i8* %44, align 1, !dbg !68, !tbaa !71
  %47 = load i8, i8* %43, align 1, !dbg !72, !tbaa !71
  %48 = icmp eq i8 %46, %47, !dbg !73
  br i1 %48, label %53, label %49, !dbg !74

; <label>:49:                                     ; preds = %41
  %50 = zext i8 %46 to i32, !dbg !68
  %51 = zext i8 %47 to i32, !dbg !72
  %52 = sub nsw i32 %50, %51, !dbg !75
  br label %57, !dbg !76

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !77
  %55 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !78
  %56 = icmp eq i64 %45, 0, !dbg !66
  br i1 %56, label %57, label %41, !dbg !66, !llvm.loop !79

; <label>:57:                                     ; preds = %53, %32, %49
  %58 = phi i32 [ %52, %49 ], [ 0, %32 ], [ 0, %53 ], !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  ret i32 %58, !dbg !82
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "memcmp", scope: !1, file: !1, line: 53, type: !14, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !17, !19}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !22, line: 129, baseType: !8)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DILocalVariable(name: "m1", arg: 1, scope: !13, file: !1, line: 53, type: !17)
!25 = !DILocalVariable(name: "m2", arg: 2, scope: !13, file: !1, line: 53, type: !17)
!26 = !DILocalVariable(name: "n", arg: 3, scope: !13, file: !1, line: 53, type: !19)
!27 = !DILocalVariable(name: "s1", scope: !13, file: !1, line: 73, type: !4)
!28 = !DILocalVariable(name: "s2", scope: !13, file: !1, line: 74, type: !4)
!29 = !DILocalVariable(name: "a1", scope: !13, file: !1, line: 75, type: !7)
!30 = !DILocalVariable(name: "a2", scope: !13, file: !1, line: 76, type: !7)
!31 = !DILocation(line: 53, column: 1, scope: !13)
!32 = !DILocation(line: 73, column: 18, scope: !13)
!33 = !DILocation(line: 74, column: 18, scope: !13)
!34 = !DILocation(line: 81, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !13, file: !1, line: 81, column: 7)
!36 = !DILocation(line: 81, column: 21, scope: !35)
!37 = !DILocation(line: 81, column: 25, scope: !35)
!38 = !DILocation(line: 81, column: 7, scope: !13)
!39 = !DILocation(line: 85, column: 12, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 82, column: 5)
!41 = !DILocation(line: 75, column: 18, scope: !13)
!42 = !DILocation(line: 86, column: 12, scope: !40)
!43 = !DILocation(line: 76, column: 18, scope: !13)
!44 = !DILocation(line: 89, column: 15, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 89, column: 15)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 88, column: 9)
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 89, column: 22, scope: !45)
!52 = !DILocation(line: 89, column: 19, scope: !45)
!53 = !DILocation(line: 89, column: 15, scope: !46)
!54 = !DILocation(line: 91, column: 13, scope: !46)
!55 = !DILocation(line: 92, column: 13, scope: !46)
!56 = !DILocation(line: 93, column: 13, scope: !46)
!57 = !DILocation(line: 87, column: 16, scope: !40)
!58 = !DILocation(line: 87, column: 7, scope: !40)
!59 = distinct !{!59, !58, !60}
!60 = !DILocation(line: 94, column: 9, scope: !40)
!61 = !DILocation(line: 0, scope: !46)
!62 = !DILocation(line: 98, column: 12, scope: !40)
!63 = !DILocation(line: 99, column: 12, scope: !40)
!64 = !DILocation(line: 100, column: 5, scope: !40)
!65 = !DILocation(line: 0, scope: !40)
!66 = !DILocation(line: 102, column: 3, scope: !13)
!67 = !DILocation(line: 102, column: 11, scope: !13)
!68 = !DILocation(line: 104, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 104, column: 11)
!70 = distinct !DILexicalBlock(scope: !13, file: !1, line: 103, column: 5)
!71 = !{!49, !49, i64 0}
!72 = !DILocation(line: 104, column: 18, scope: !69)
!73 = !DILocation(line: 104, column: 15, scope: !69)
!74 = !DILocation(line: 104, column: 11, scope: !70)
!75 = !DILocation(line: 105, column: 13, scope: !69)
!76 = !DILocation(line: 105, column: 2, scope: !69)
!77 = !DILocation(line: 106, column: 9, scope: !70)
!78 = !DILocation(line: 107, column: 9, scope: !70)
!79 = distinct !{!79, !66, !80}
!80 = !DILocation(line: 108, column: 5, scope: !13)
!81 = !DILocation(line: 0, scope: !13)
!82 = !DILocation(line: 112, column: 1, scope: !13)
