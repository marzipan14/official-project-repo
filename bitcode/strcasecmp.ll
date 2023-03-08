; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasecmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasecmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @strcasecmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !9 {
  br label %3, !dbg !31

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i8* [ %1, %2 ], [ %18, %3 ]
  %5 = phi i8* [ %0, %2 ], [ %6, %3 ]
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !32
  %7 = load i8, i8* %5, align 1, !dbg !32, !tbaa !33
  %8 = tail call i8* @__locale_ctype_ptr() #3, !dbg !32
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !32
  %10 = sext i8 %7 to i32, !dbg !32
  %11 = sext i8 %7 to i64, !dbg !32
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !32
  %13 = load i8, i8* %12, align 1, !dbg !32, !tbaa !33
  %14 = and i8 %13, 3, !dbg !32
  %15 = icmp eq i8 %14, 1, !dbg !32
  %16 = add nsw i32 %10, 32, !dbg !32
  %17 = select i1 %15, i32 %16, i32 %10, !dbg !32
  %18 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !37
  %19 = load i8, i8* %4, align 1, !dbg !37, !tbaa !33
  %20 = tail call i8* @__locale_ctype_ptr() #3, !dbg !37
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !37
  %22 = sext i8 %19 to i32, !dbg !37
  %23 = sext i8 %19 to i64, !dbg !37
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !37
  %25 = load i8, i8* %24, align 1, !dbg !37, !tbaa !33
  %26 = and i8 %25, 3, !dbg !37
  %27 = icmp eq i8 %26, 1, !dbg !37
  %28 = add nsw i32 %22, 32, !dbg !37
  %29 = select i1 %27, i32 %28, i32 %22, !dbg !37
  %30 = sub nsw i32 %17, %29, !dbg !39
  %31 = icmp eq i32 %30, 0, !dbg !41
  %32 = icmp ne i32 %29, 0, !dbg !42
  %33 = and i1 %32, %31, !dbg !43
  br i1 %33, label %3, label %34, !llvm.loop !44

; <label>:34:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i32 %30, !dbg !47
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasecmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "strcasecmp", scope: !1, file: !1, line: 45, type: !10, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17, !18, !19, !24, !26, !27}
!16 = !DILocalVariable(name: "s1", arg: 1, scope: !9, file: !1, line: 45, type: !12)
!17 = !DILocalVariable(name: "s2", arg: 2, scope: !9, file: !1, line: 45, type: !12)
!18 = !DILocalVariable(name: "d", scope: !9, file: !1, line: 49, type: !4)
!19 = !DILocalVariable(name: "c1", scope: !20, file: !1, line: 52, type: !23)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 51, column: 5)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 50, column: 3)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 50, column: 3)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DILocalVariable(name: "__x", scope: !25, file: !1, line: 52, type: !13)
!25 = distinct !DILexicalBlock(scope: !20, file: !1, line: 52, column: 23)
!26 = !DILocalVariable(name: "c2", scope: !20, file: !1, line: 53, type: !23)
!27 = !DILocalVariable(name: "__x", scope: !28, file: !1, line: 53, type: !13)
!28 = distinct !DILexicalBlock(scope: !20, file: !1, line: 53, column: 23)
!29 = !DILocation(line: 45, column: 1, scope: !9)
!30 = !DILocation(line: 49, column: 7, scope: !9)
!31 = !DILocation(line: 50, column: 3, scope: !9)
!32 = !DILocation(line: 52, column: 23, scope: !25)
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 52, column: 18, scope: !20)
!37 = !DILocation(line: 53, column: 23, scope: !28)
!38 = !DILocation(line: 53, column: 18, scope: !20)
!39 = !DILocation(line: 54, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !20, file: !1, line: 54, column: 11)
!41 = !DILocation(line: 54, column: 26, scope: !40)
!42 = !DILocation(line: 54, column: 39, scope: !40)
!43 = !DILocation(line: 55, column: 9, scope: !40)
!44 = distinct !{!44, !45, !46}
!45 = !DILocation(line: 50, column: 3, scope: !22)
!46 = !DILocation(line: 56, column: 5, scope: !22)
!47 = !DILocation(line: 57, column: 3, scope: !9)
