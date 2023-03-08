; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strlcat(i8*, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !31
  br i1 %4, label %14, label %5, !dbg !32

; <label>:5:                                      ; preds = %3, %11
  %6 = phi i64 [ %8, %11 ], [ %2, %3 ]
  %7 = phi i8* [ %12, %11 ], [ %0, %3 ]
  %8 = add i64 %6, -1, !dbg !33
  %9 = load i8, i8* %7, align 1, !dbg !34, !tbaa !35
  %10 = icmp eq i8 %9, 0, !dbg !38
  br i1 %10, label %14, label %11, !dbg !39

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !40
  %13 = icmp eq i64 %8, 0, !dbg !31
  br i1 %13, label %14, label %5, !dbg !32, !llvm.loop !41

; <label>:14:                                     ; preds = %11, %5, %3
  %15 = phi i8* [ %0, %3 ], [ %7, %5 ], [ %12, %11 ], !dbg !42
  %16 = ptrtoint i8* %15 to i64, !dbg !43
  %17 = ptrtoint i8* %0 to i64, !dbg !43
  %18 = sub i64 %16, %17, !dbg !43
  %19 = sub i64 %2, %18, !dbg !45
  %20 = icmp eq i64 %19, 0, !dbg !46
  br i1 %20, label %24, label %21, !dbg !48

; <label>:21:                                     ; preds = %14
  %22 = load i8, i8* %1, align 1, !dbg !49, !tbaa !35
  %23 = icmp eq i8 %22, 0, !dbg !50
  br i1 %23, label %41, label %26, !dbg !51

; <label>:24:                                     ; preds = %14
  %25 = tail call i64 @strlen(i8* %1) #3, !dbg !52
  br label %47, !dbg !53

; <label>:26:                                     ; preds = %21, %35
  %27 = phi i8 [ %39, %35 ], [ %22, %21 ]
  %28 = phi i64 [ %37, %35 ], [ %19, %21 ]
  %29 = phi i8* [ %38, %35 ], [ %1, %21 ]
  %30 = phi i8* [ %36, %35 ], [ %15, %21 ]
  %31 = icmp eq i64 %28, 1, !dbg !54
  br i1 %31, label %35, label %32, !dbg !57

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !58
  store i8 %27, i8* %30, align 1, !dbg !60, !tbaa !35
  %34 = add i64 %28, -1, !dbg !61
  br label %35, !dbg !62

; <label>:35:                                     ; preds = %26, %32
  %36 = phi i8* [ %33, %32 ], [ %30, %26 ], !dbg !42
  %37 = phi i64 [ %34, %32 ], [ 1, %26 ], !dbg !42
  %38 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !63
  %39 = load i8, i8* %38, align 1, !dbg !49, !tbaa !35
  %40 = icmp eq i8 %39, 0, !dbg !50
  br i1 %40, label %41, label %26, !dbg !51, !llvm.loop !64

; <label>:41:                                     ; preds = %35, %21
  %42 = phi i8* [ %15, %21 ], [ %36, %35 ], !dbg !66
  %43 = phi i8* [ %1, %21 ], [ %38, %35 ], !dbg !67
  store i8 0, i8* %42, align 1, !dbg !68, !tbaa !35
  %44 = ptrtoint i8* %43 to i64, !dbg !69
  %45 = ptrtoint i8* %1 to i64, !dbg !69
  %46 = sub i64 %44, %45, !dbg !69
  br label %47, !dbg !70

; <label>:47:                                     ; preds = %41, %24
  %48 = phi i64 [ %25, %24 ], [ %46, %41 ]
  %49 = add i64 %48, %18, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  ret i64 %49, !dbg !71
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strlcat", scope: !1, file: !1, line: 45, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !17, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 45, type: !15)
!21 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 45, type: !17)
!22 = !DILocalVariable(name: "siz", arg: 3, scope: !7, file: !1, line: 45, type: !10)
!23 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 50, type: !15)
!24 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 51, type: !17)
!25 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 52, type: !10)
!26 = !DILocalVariable(name: "dlen", scope: !7, file: !1, line: 53, type: !10)
!27 = !DILocation(line: 45, column: 1, scope: !7)
!28 = !DILocation(line: 50, column: 24, scope: !7)
!29 = !DILocation(line: 51, column: 30, scope: !7)
!30 = !DILocation(line: 52, column: 25, scope: !7)
!31 = !DILocation(line: 56, column: 20, scope: !7)
!32 = !DILocation(line: 56, column: 25, scope: !7)
!33 = !DILocation(line: 56, column: 17, scope: !7)
!34 = !DILocation(line: 56, column: 28, scope: !7)
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 56, column: 31, scope: !7)
!39 = !DILocation(line: 56, column: 9, scope: !7)
!40 = !DILocation(line: 57, column: 18, scope: !7)
!41 = distinct !{!41, !39, !40}
!42 = !DILocation(line: 0, scope: !7)
!43 = !DILocation(line: 58, column: 18, scope: !7)
!44 = !DILocation(line: 53, column: 16, scope: !7)
!45 = !DILocation(line: 59, column: 17, scope: !7)
!46 = !DILocation(line: 61, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 13)
!48 = !DILocation(line: 61, column: 13, scope: !7)
!49 = !DILocation(line: 63, column: 16, scope: !7)
!50 = !DILocation(line: 63, column: 19, scope: !7)
!51 = !DILocation(line: 63, column: 9, scope: !7)
!52 = !DILocation(line: 62, column: 31, scope: !47)
!53 = !DILocation(line: 62, column: 17, scope: !47)
!54 = !DILocation(line: 64, column: 23, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 64, column: 21)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 28)
!57 = !DILocation(line: 64, column: 21, scope: !56)
!58 = !DILocation(line: 65, column: 27, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 64, column: 29)
!60 = !DILocation(line: 65, column: 30, scope: !59)
!61 = !DILocation(line: 66, column: 26, scope: !59)
!62 = !DILocation(line: 67, column: 17, scope: !59)
!63 = !DILocation(line: 68, column: 18, scope: !56)
!64 = distinct !{!64, !51, !65}
!65 = !DILocation(line: 69, column: 9, scope: !7)
!66 = !DILocation(line: 0, scope: !59)
!67 = !DILocation(line: 0, scope: !56)
!68 = !DILocation(line: 70, column: 12, scope: !7)
!69 = !DILocation(line: 72, column: 26, scope: !7)
!70 = !DILocation(line: 72, column: 9, scope: !7)
!71 = !DILocation(line: 73, column: 1, scope: !7)
