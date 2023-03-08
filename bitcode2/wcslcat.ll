; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcslcat(i32*, i32*, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %4 = load i32, i32* %0, align 4, !dbg !31, !tbaa !32
  %5 = icmp eq i32 %4, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %5, label %6, label %8, !dbg !37

; <label>:6:                                      ; preds = %12, %3
  %7 = phi i32* [ %0, %3 ], [ %14, %12 ], !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br label %17, !dbg !30

; <label>:8:                                      ; preds = %3, %12
  %9 = phi i64 [ %13, %12 ], [ %2, %3 ]
  %10 = phi i32* [ %14, %12 ], [ %0, %3 ]
  %11 = icmp eq i64 %9, 0, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %11, label %17, label %12, !dbg !30

; <label>:12:                                     ; preds = %8
  %13 = add i64 %9, -1, !dbg !40
  %14 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %15 = load i32, i32* %14, align 4, !dbg !31, !tbaa !32
  %16 = icmp eq i32 %15, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %16, label %6, label %8, !dbg !37, !llvm.loop !42

; <label>:17:                                     ; preds = %8, %6
  %18 = phi i32* [ %7, %6 ], [ %10, %8 ]
  %19 = ptrtoint i32* %18 to i64, !dbg !43
  %20 = ptrtoint i32* %0 to i64, !dbg !43
  %21 = sub i64 %19, %20, !dbg !43
  %22 = ashr exact i64 %21, 2, !dbg !43
  %23 = sub i64 %2, %22, !dbg !45
  %24 = icmp eq i64 %23, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %24, label %28, label %25, !dbg !48

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %1, align 4, !dbg !49, !tbaa !32
  %27 = icmp eq i32 %26, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %27, label %45, label %30, !dbg !51

; <label>:28:                                     ; preds = %17
  %29 = tail call i64 @wcslen(i32* %1) #3, !dbg !52
  br label %52, !dbg !53

; <label>:30:                                     ; preds = %25, %39
  %31 = phi i32 [ %43, %39 ], [ %26, %25 ]
  %32 = phi i64 [ %41, %39 ], [ %23, %25 ]
  %33 = phi i32* [ %42, %39 ], [ %1, %25 ]
  %34 = phi i32* [ %40, %39 ], [ %18, %25 ]
  %35 = icmp eq i64 %32, 1, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %35, label %39, label %36, !dbg !57

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds i32, i32* %34, i64 1, !dbg !58
  store i32 %31, i32* %34, align 4, !dbg !60, !tbaa !32
  %38 = add i64 %32, -1, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %39, !dbg !62

; <label>:39:                                     ; preds = %30, %36
  %40 = phi i32* [ %37, %36 ], [ %34, %30 ], !dbg !38
  %41 = phi i64 [ %38, %36 ], [ 1, %30 ], !dbg !38
  %42 = getelementptr inbounds i32, i32* %33, i64 1, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  %43 = load i32, i32* %42, align 4, !dbg !49, !tbaa !32
  %44 = icmp eq i32 %43, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %44, label %45, label %30, !dbg !51, !llvm.loop !64

; <label>:45:                                     ; preds = %39, %25
  %46 = phi i32* [ %18, %25 ], [ %40, %39 ], !dbg !66
  %47 = phi i32* [ %1, %25 ], [ %42, %39 ], !dbg !67
  store i32 0, i32* %46, align 4, !dbg !68, !tbaa !32
  %48 = ptrtoint i32* %47 to i64, !dbg !69
  %49 = ptrtoint i32* %1 to i64, !dbg !69
  %50 = sub i64 %48, %49, !dbg !69
  %51 = ashr exact i64 %50, 2, !dbg !69
  br label %52, !dbg !70

; <label>:52:                                     ; preds = %45, %28
  %53 = phi i64 [ %29, %28 ], [ %51, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %54 = add i64 %53, %22, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  ret i64 %54, !dbg !72
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
!30 = !DILocation(line: 89, column: 3, scope: !7)
!31 = !DILocation(line: 89, column: 10, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 89, column: 13, scope: !7)
!37 = !DILocation(line: 89, column: 21, scope: !7)
!38 = !DILocation(line: 0, scope: !7)
!39 = !DILocation(line: 89, column: 28, scope: !7)
!40 = !DILocation(line: 89, column: 25, scope: !7)
!41 = !DILocation(line: 90, column: 6, scope: !7)
!42 = distinct !{!42, !30, !41}
!43 = !DILocation(line: 91, column: 12, scope: !7)
!44 = !DILocation(line: 86, column: 10, scope: !7)
!45 = !DILocation(line: 92, column: 11, scope: !7)
!46 = !DILocation(line: 94, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 94, column: 7)
!48 = !DILocation(line: 94, column: 7, scope: !7)
!49 = !DILocation(line: 96, column: 10, scope: !7)
!50 = !DILocation(line: 96, column: 13, scope: !7)
!51 = !DILocation(line: 96, column: 3, scope: !7)
!52 = !DILocation(line: 95, column: 20, scope: !47)
!53 = !DILocation(line: 95, column: 5, scope: !47)
!54 = !DILocation(line: 98, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 98, column: 11)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 97, column: 5)
!57 = !DILocation(line: 98, column: 11, scope: !56)
!58 = !DILocation(line: 100, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 99, column: 2)
!60 = !DILocation(line: 100, column: 9, scope: !59)
!61 = !DILocation(line: 101, column: 5, scope: !59)
!62 = !DILocation(line: 102, column: 2, scope: !59)
!63 = !DILocation(line: 103, column: 8, scope: !56)
!64 = distinct !{!64, !51, !65}
!65 = !DILocation(line: 104, column: 5, scope: !7)
!66 = !DILocation(line: 0, scope: !59)
!67 = !DILocation(line: 0, scope: !56)
!68 = !DILocation(line: 105, column: 6, scope: !7)
!69 = !DILocation(line: 107, column: 21, scope: !7)
!70 = !DILocation(line: 107, column: 3, scope: !7)
!71 = !DILocation(line: 0, scope: !47)
!72 = !DILocation(line: 108, column: 1, scope: !7)
