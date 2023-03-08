; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @strnstr(i8*, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call i64 @strnlen(i8* %1, i64 %2) #3, !dbg !30
  %5 = icmp ult i64 %4, %2, !dbg !32
  br i1 %5, label %10, label %6, !dbg !33

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 %4, !dbg !34
  %8 = load i8, i8* %7, align 1, !dbg !34, !tbaa !35
  %9 = icmp eq i8 %8, 0, !dbg !34
  br i1 %9, label %10, label %20, !dbg !38

; <label>:10:                                     ; preds = %6, %3
  %11 = tail call i8* @memmem(i8* %0, i64 %2, i8* %1, i64 %4) #3, !dbg !39
  %12 = icmp eq i8* %11, null, !dbg !41
  br i1 %12, label %19, label %13, !dbg !43

; <label>:13:                                     ; preds = %10
  %14 = ptrtoint i8* %11 to i64, !dbg !44
  %15 = ptrtoint i8* %0 to i64, !dbg !44
  %16 = sub i64 %14, %15, !dbg !44
  %17 = tail call i8* @memchr(i8* %0, i32 0, i64 %16) #3, !dbg !45
  %18 = icmp eq i8* %17, null, !dbg !45
  br i1 %18, label %20, label %19, !dbg !46

; <label>:19:                                     ; preds = %10, %13
  br label %20

; <label>:20:                                     ; preds = %6, %19, %13
  %21 = phi i8* [ %11, %13 ], [ null, %19 ], [ null, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i8* %21, !dbg !47
}

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmem(i8*, i64, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strnstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strnstr", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !17, line: 129, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(name: "haystack", arg: 1, scope: !7, file: !1, line: 41, type: !12)
!21 = !DILocalVariable(name: "needle", arg: 2, scope: !7, file: !1, line: 41, type: !12)
!22 = !DILocalVariable(name: "haystack_len", arg: 3, scope: !7, file: !1, line: 41, type: !14)
!23 = !DILocalVariable(name: "needle_len", scope: !7, file: !1, line: 43, type: !14)
!24 = !DILocalVariable(name: "x", scope: !25, file: !1, line: 46, type: !10)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 45, column: 57)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 45, column: 7)
!27 = !DILocation(line: 41, column: 21, scope: !7)
!28 = !DILocation(line: 41, column: 43, scope: !7)
!29 = !DILocation(line: 41, column: 58, scope: !7)
!30 = !DILocation(line: 43, column: 23, scope: !7)
!31 = !DILocation(line: 43, column: 10, scope: !7)
!32 = !DILocation(line: 45, column: 18, scope: !26)
!33 = !DILocation(line: 45, column: 33, scope: !26)
!34 = !DILocation(line: 45, column: 37, scope: !26)
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 45, column: 7, scope: !7)
!39 = !DILocation(line: 46, column: 15, scope: !25)
!40 = !DILocation(line: 46, column: 11, scope: !25)
!41 = !DILocation(line: 47, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !25, file: !1, line: 47, column: 9)
!43 = !DILocation(line: 47, column: 11, scope: !42)
!44 = !DILocation(line: 47, column: 37, scope: !42)
!45 = !DILocation(line: 47, column: 15, scope: !42)
!46 = !DILocation(line: 47, column: 9, scope: !25)
!47 = !DILocation(line: 51, column: 1, scope: !7)
