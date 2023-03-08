; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i64 @wcslcat(i32*, i32*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = load i32, i32* %0, align 4, !dbg !30, !tbaa !31
  %5 = icmp eq i32 %4, 0, !dbg !35
  %6 = icmp ne i64 %2, 0, !dbg !36
  %7 = xor i1 %5, true, !dbg !37
  %8 = and i1 %6, %7, !dbg !37
  br i1 %8, label %9, label %22, !dbg !38

; <label>:9:                                      ; preds = %3, %9
  %10 = phi i1 [ %18, %9 ], [ %5, %3 ]
  %11 = phi i64 [ %15, %9 ], [ %2, %3 ]
  %12 = phi i32* [ %16, %9 ], [ %0, %3 ]
  %13 = xor i1 %10, true, !dbg !37
  %14 = sext i1 %13 to i64, !dbg !37
  %15 = add i64 %11, %14, !dbg !37
  %16 = getelementptr inbounds i32, i32* %12, i64 1, !dbg !39
  %17 = load i32, i32* %16, align 4, !dbg !30, !tbaa !31
  %18 = icmp eq i32 %17, 0, !dbg !35
  %19 = icmp ne i64 %15, 0, !dbg !36
  %20 = xor i1 %18, true, !dbg !37
  %21 = and i1 %19, %20, !dbg !37
  br i1 %21, label %9, label %22, !dbg !38, !llvm.loop !40

; <label>:22:                                     ; preds = %9, %3
  %23 = phi i32* [ %0, %3 ], [ %16, %9 ], !dbg !41
  %24 = ptrtoint i32* %23 to i64, !dbg !42
  %25 = ptrtoint i32* %0 to i64, !dbg !42
  %26 = sub i64 %24, %25, !dbg !42
  %27 = ashr exact i64 %26, 2, !dbg !42
  %28 = sub i64 %2, %27, !dbg !44
  %29 = icmp eq i64 %28, 0, !dbg !45
  br i1 %29, label %33, label %30, !dbg !47

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %1, align 4, !dbg !48, !tbaa !31
  %32 = icmp eq i32 %31, 0, !dbg !49
  br i1 %32, label %50, label %35, !dbg !50

; <label>:33:                                     ; preds = %22
  %34 = tail call i64 @wcslen(i32* %1) #3, !dbg !51
  br label %57, !dbg !52

; <label>:35:                                     ; preds = %30, %44
  %36 = phi i32 [ %48, %44 ], [ %31, %30 ]
  %37 = phi i64 [ %46, %44 ], [ %28, %30 ]
  %38 = phi i32* [ %47, %44 ], [ %1, %30 ]
  %39 = phi i32* [ %45, %44 ], [ %23, %30 ]
  %40 = icmp eq i64 %37, 1, !dbg !53
  br i1 %40, label %44, label %41, !dbg !56

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i32, i32* %39, i64 1, !dbg !57
  store i32 %36, i32* %39, align 4, !dbg !59, !tbaa !31
  %43 = add i64 %37, -1, !dbg !60
  br label %44, !dbg !61

; <label>:44:                                     ; preds = %35, %41
  %45 = phi i32* [ %42, %41 ], [ %39, %35 ], !dbg !41
  %46 = phi i64 [ %43, %41 ], [ 1, %35 ], !dbg !41
  %47 = getelementptr inbounds i32, i32* %38, i64 1, !dbg !62
  %48 = load i32, i32* %47, align 4, !dbg !48, !tbaa !31
  %49 = icmp eq i32 %48, 0, !dbg !49
  br i1 %49, label %50, label %35, !dbg !50, !llvm.loop !63

; <label>:50:                                     ; preds = %44, %30
  %51 = phi i32* [ %23, %30 ], [ %45, %44 ], !dbg !65
  %52 = phi i32* [ %1, %30 ], [ %47, %44 ], !dbg !66
  store i32 0, i32* %51, align 4, !dbg !67, !tbaa !31
  %53 = ptrtoint i32* %52 to i64, !dbg !68
  %54 = ptrtoint i32* %1 to i64, !dbg !68
  %55 = sub i64 %53, %54, !dbg !68
  %56 = ashr exact i64 %55, 2, !dbg !68
  br label %57, !dbg !69

; <label>:57:                                     ; preds = %50, %33
  %58 = phi i64 [ %34, %33 ], [ %56, %50 ]
  %59 = add i64 %58, %27, !dbg !41
  ret i64 %59, !dbg !70
}

; Function Attrs: noredzone
declare dso_local i64 @wcslen(i32*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcslcat", scope: !1, file: !1, line: 78, type: !8, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !16, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !11, line: 83, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!18 = !{!19, !20, !21, !22, !23, !24, !25}
!19 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 78, type: !13)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 78, type: !16)
!21 = !DILocalVariable(name: "siz", arg: 3, scope: !7, file: !1, line: 78, type: !10)
!22 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 83, type: !13)
!23 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 84, type: !16)
!24 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 85, type: !10)
!25 = !DILocalVariable(name: "dlen", scope: !7, file: !1, line: 86, type: !10)
!26 = !DILocation(line: 78, column: 1, scope: !7)
!27 = !DILocation(line: 83, column: 12, scope: !7)
!28 = !DILocation(line: 84, column: 19, scope: !7)
!29 = !DILocation(line: 85, column: 10, scope: !7)
!30 = !DILocation(line: 89, column: 10, scope: !7)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 89, column: 13, scope: !7)
!36 = !DILocation(line: 89, column: 28, scope: !7)
!37 = !DILocation(line: 89, column: 21, scope: !7)
!38 = !DILocation(line: 89, column: 3, scope: !7)
!39 = !DILocation(line: 90, column: 6, scope: !7)
!40 = distinct !{!40, !38, !39}
!41 = !DILocation(line: 0, scope: !7)
!42 = !DILocation(line: 91, column: 12, scope: !7)
!43 = !DILocation(line: 86, column: 10, scope: !7)
!44 = !DILocation(line: 92, column: 11, scope: !7)
!45 = !DILocation(line: 94, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !1, line: 94, column: 7)
!47 = !DILocation(line: 94, column: 7, scope: !7)
!48 = !DILocation(line: 96, column: 10, scope: !7)
!49 = !DILocation(line: 96, column: 13, scope: !7)
!50 = !DILocation(line: 96, column: 3, scope: !7)
!51 = !DILocation(line: 95, column: 20, scope: !46)
!52 = !DILocation(line: 95, column: 5, scope: !46)
!53 = !DILocation(line: 98, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 98, column: 11)
!55 = distinct !DILexicalBlock(scope: !7, file: !1, line: 97, column: 5)
!56 = !DILocation(line: 98, column: 11, scope: !55)
!57 = !DILocation(line: 100, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 99, column: 2)
!59 = !DILocation(line: 100, column: 9, scope: !58)
!60 = !DILocation(line: 101, column: 5, scope: !58)
!61 = !DILocation(line: 102, column: 2, scope: !58)
!62 = !DILocation(line: 103, column: 8, scope: !55)
!63 = distinct !{!63, !50, !64}
!64 = !DILocation(line: 104, column: 5, scope: !7)
!65 = !DILocation(line: 0, scope: !58)
!66 = !DILocation(line: 0, scope: !55)
!67 = !DILocation(line: 105, column: 6, scope: !7)
!68 = !DILocation(line: 107, column: 21, scope: !7)
!69 = !DILocation(line: 107, column: 3, scope: !7)
!70 = !DILocation(line: 108, column: 1, scope: !7)
