; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @_buf_findstr(i8* nocapture readonly, i8** nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !7 {
  %4 = load i64, i64* %2, align 8, !dbg !33, !tbaa !36
  %5 = icmp eq i64 %4, 0, !dbg !40
  br i1 %5, label %42, label %6, !dbg !41

; <label>:6:                                      ; preds = %3
  %7 = load i8, i8* %0, align 1, !tbaa !42
  %8 = load i8*, i8** %1, align 8, !tbaa !43
  %9 = icmp eq i8 %7, 0
  br label %10, !dbg !41

; <label>:10:                                     ; preds = %6, %36
  %11 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %12 = getelementptr inbounds i8, i8* %8, i64 %11, !dbg !45
  %13 = load i8, i8* %12, align 1, !dbg !45, !tbaa !42
  %14 = icmp eq i8 %7, %13, !dbg !48
  br i1 %14, label %15, label %36, !dbg !49

; <label>:15:                                     ; preds = %10
  br i1 %9, label %29, label %16, !dbg !50

; <label>:16:                                     ; preds = %15, %26
  %17 = phi i64 [ %18, %26 ], [ %11, %15 ]
  %18 = add nuw i64 %17, 1, !dbg !52
  %19 = sub i64 %18, %11, !dbg !53
  %20 = shl i64 %19, 32, !dbg !54
  %21 = ashr exact i64 %20, 32, !dbg !54
  %22 = getelementptr inbounds i8, i8* %0, i64 %21, !dbg !54
  %23 = load i8, i8* %22, align 1, !dbg !54, !tbaa !42
  %24 = icmp eq i8 %23, 0, !dbg !54
  %25 = getelementptr inbounds i8, i8* %8, i64 %18, !dbg !55
  br i1 %24, label %31, label %26, !dbg !50, !llvm.loop !56

; <label>:26:                                     ; preds = %16
  %27 = load i8, i8* %25, align 1, !dbg !58, !tbaa !42
  %28 = icmp eq i8 %23, %27, !dbg !59
  br i1 %28, label %16, label %36, !dbg !57

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds i8, i8* %8, i64 %11, !dbg !45
  br label %31, !dbg !55

; <label>:31:                                     ; preds = %16, %29
  %32 = phi i64 [ %11, %29 ], [ %18, %16 ]
  %33 = phi i8* [ %30, %29 ], [ %25, %16 ], !dbg !55
  %34 = and i64 %32, 4294967295, !dbg !55
  store i8* %33, i8** %1, align 8, !dbg !60, !tbaa !43
  %35 = sub i64 %4, %34, !dbg !63
  br label %46, !dbg !64

; <label>:36:                                     ; preds = %26, %10
  %37 = add nuw i64 %11, 1, !dbg !65
  %38 = icmp ugt i64 %4, %37, !dbg !40
  br i1 %38, label %10, label %39, !dbg !41, !llvm.loop !66

; <label>:39:                                     ; preds = %36
  %40 = and i64 %37, 4294967295, !dbg !68
  %41 = icmp eq i64 %4, %40, !dbg !69
  br i1 %41, label %42, label %49, !dbg !71

; <label>:42:                                     ; preds = %3, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %3 ]
  %44 = load i8*, i8** %1, align 8, !dbg !72, !tbaa !43
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !72
  store i8* %45, i8** %1, align 8, !dbg !72, !tbaa !43
  br label %46, !dbg !74

; <label>:46:                                     ; preds = %31, %42
  %47 = phi i64 [ 0, %42 ], [ %35, %31 ]
  %48 = phi i32 [ 0, %42 ], [ 1, %31 ]
  store i64 %47, i64* %2, align 8, !dbg !75, !tbaa !36
  br label %49, !dbg !76

; <label>:49:                                     ; preds = %46, %39
  %50 = phi i32 [ 0, %39 ], [ %48, %46 ], !dbg !77
  ret i32 %50, !dbg !76
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_buf_findstr", scope: !1, file: !1, line: 17, type: !8, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14, !16}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 40, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !7, file: !1, line: 17, type: !11)
!24 = !DILocalVariable(name: "buf", arg: 2, scope: !7, file: !1, line: 17, type: !14)
!25 = !DILocalVariable(name: "buf_len", arg: 3, scope: !7, file: !1, line: 17, type: !16)
!26 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 19, type: !10)
!27 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 20, type: !10)
!28 = !DILocation(line: 17, column: 26, scope: !7)
!29 = !DILocation(line: 17, column: 38, scope: !7)
!30 = !DILocation(line: 17, column: 51, scope: !7)
!31 = !DILocation(line: 19, column: 7, scope: !7)
!32 = !DILocation(line: 20, column: 7, scope: !7)
!33 = !DILocation(line: 22, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 22, column: 3)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 3)
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 22, column: 17, scope: !34)
!41 = !DILocation(line: 22, column: 3, scope: !35)
!42 = !{!38, !38, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !38, i64 0}
!45 = !DILocation(line: 24, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 11)
!47 = distinct !DILexicalBlock(scope: !34, file: !1, line: 23, column: 5)
!48 = !DILocation(line: 24, column: 18, scope: !46)
!49 = !DILocation(line: 24, column: 11, scope: !47)
!50 = !DILocation(line: 27, column: 29, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 25, column: 9)
!52 = !DILocation(line: 27, column: 60, scope: !51)
!53 = !DILocation(line: 27, column: 24, scope: !51)
!54 = !DILocation(line: 27, column: 18, scope: !51)
!55 = !DILocation(line: 0, scope: !51)
!56 = distinct !{!56, !57, !52}
!57 = !DILocation(line: 27, column: 11, scope: !51)
!58 = !DILocation(line: 27, column: 47, scope: !51)
!59 = !DILocation(line: 27, column: 44, scope: !51)
!60 = !DILocation(line: 30, column: 20, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 29, column: 13)
!62 = distinct !DILexicalBlock(scope: !51, file: !1, line: 28, column: 14)
!63 = !DILocation(line: 31, column: 24, scope: !61)
!64 = !DILocation(line: 32, column: 15, scope: !61)
!65 = !DILocation(line: 22, column: 30, scope: !34)
!66 = distinct !{!66, !41, !67}
!67 = !DILocation(line: 35, column: 5, scope: !35)
!68 = !DILocation(line: 22, column: 15, scope: !34)
!69 = !DILocation(line: 37, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 7)
!71 = !DILocation(line: 37, column: 7, scope: !7)
!72 = !DILocation(line: 39, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 38, column: 5)
!74 = !DILocation(line: 41, column: 5, scope: !73)
!75 = !DILocation(line: 0, scope: !61)
!76 = !DILocation(line: 44, column: 1, scope: !7)
!77 = !DILocation(line: 0, scope: !7)
