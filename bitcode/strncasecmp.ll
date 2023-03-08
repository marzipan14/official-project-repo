; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @strncasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !9 {
  %4 = icmp eq i64 %2, 0, !dbg !37
  br i1 %4, label %40, label %5, !dbg !38

; <label>:5:                                      ; preds = %3, %35
  %6 = phi i8* [ %37, %35 ], [ %0, %3 ]
  %7 = phi i8* [ %36, %35 ], [ %1, %3 ]
  %8 = phi i64 [ %38, %35 ], [ %2, %3 ]
  %9 = load i8, i8* %6, align 1, !dbg !39, !tbaa !40
  %10 = tail call i8* @__locale_ctype_ptr() #3, !dbg !39
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !39
  %12 = sext i8 %9 to i32, !dbg !39
  %13 = sext i8 %9 to i64, !dbg !39
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !39
  %15 = load i8, i8* %14, align 1, !dbg !39, !tbaa !40
  %16 = and i8 %15, 3, !dbg !39
  %17 = icmp eq i8 %16, 1, !dbg !39
  %18 = add nsw i32 %12, 32, !dbg !39
  %19 = select i1 %17, i32 %18, i32 %12, !dbg !39
  %20 = load i8, i8* %7, align 1, !dbg !44, !tbaa !40
  %21 = tail call i8* @__locale_ctype_ptr() #3, !dbg !44
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !44
  %23 = sext i8 %20 to i32, !dbg !44
  %24 = sext i8 %20 to i64, !dbg !44
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !44
  %26 = load i8, i8* %25, align 1, !dbg !44, !tbaa !40
  %27 = and i8 %26, 3, !dbg !44
  %28 = icmp eq i8 %27, 1, !dbg !44
  %29 = add nsw i32 %23, 32, !dbg !44
  %30 = select i1 %28, i32 %29, i32 %23, !dbg !44
  %31 = sub nsw i32 %19, %30, !dbg !46
  %32 = icmp eq i32 %31, 0, !dbg !48
  %33 = icmp ne i32 %30, 0, !dbg !49
  %34 = and i1 %33, %32, !dbg !50
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %5
  %36 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !44
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !39
  %38 = add i64 %8, -1, !dbg !51
  %39 = icmp eq i64 %38, 0, !dbg !37
  br i1 %39, label %40, label %5, !dbg !38, !llvm.loop !52

; <label>:40:                                     ; preds = %5, %35, %3
  %41 = phi i32 [ 0, %3 ], [ %31, %5 ], [ 0, %35 ], !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  ret i32 %41, !dbg !55
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncasecmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "strncasecmp", scope: !1, file: !1, line: 47, type: !10, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !12, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !30, !32, !33}
!21 = !DILocalVariable(name: "s1", arg: 1, scope: !9, file: !1, line: 47, type: !12)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !9, file: !1, line: 47, type: !12)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !9, file: !1, line: 47, type: !15)
!24 = !DILocalVariable(name: "d", scope: !9, file: !1, line: 52, type: !4)
!25 = !DILocalVariable(name: "c1", scope: !26, file: !1, line: 55, type: !29)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 54, column: 5)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 53, column: 3)
!28 = distinct !DILexicalBlock(scope: !9, file: !1, line: 53, column: 3)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!30 = !DILocalVariable(name: "__x", scope: !31, file: !1, line: 55, type: !13)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 55, column: 23)
!32 = !DILocalVariable(name: "c2", scope: !26, file: !1, line: 56, type: !29)
!33 = !DILocalVariable(name: "__x", scope: !34, file: !1, line: 56, type: !13)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 56, column: 23)
!35 = !DILocation(line: 47, column: 1, scope: !9)
!36 = !DILocation(line: 52, column: 7, scope: !9)
!37 = !DILocation(line: 53, column: 13, scope: !27)
!38 = !DILocation(line: 53, column: 3, scope: !28)
!39 = !DILocation(line: 55, column: 23, scope: !31)
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 55, column: 18, scope: !26)
!44 = !DILocation(line: 56, column: 23, scope: !34)
!45 = !DILocation(line: 56, column: 18, scope: !26)
!46 = !DILocation(line: 57, column: 20, scope: !47)
!47 = distinct !DILexicalBlock(scope: !26, file: !1, line: 57, column: 11)
!48 = !DILocation(line: 57, column: 26, scope: !47)
!49 = !DILocation(line: 57, column: 39, scope: !47)
!50 = !DILocation(line: 58, column: 9, scope: !47)
!51 = !DILocation(line: 53, column: 20, scope: !27)
!52 = distinct !{!52, !38, !53}
!53 = !DILocation(line: 59, column: 5, scope: !28)
!54 = !DILocation(line: 0, scope: !9)
!55 = !DILocation(line: 60, column: 3, scope: !9)
