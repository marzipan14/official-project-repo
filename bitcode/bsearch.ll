; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/bsearch.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/bsearch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0 !dbg !11 {
  %6 = icmp ne i64 %2, 0, !dbg !37
  %7 = icmp ne i64 %3, 0, !dbg !39
  %8 = and i1 %7, %6, !dbg !40
  br i1 %8, label %9, label %26, !dbg !40

; <label>:9:                                      ; preds = %5, %22
  %10 = phi i64 [ %24, %22 ], [ 0, %5 ]
  %11 = phi i64 [ %23, %22 ], [ %2, %5 ]
  %12 = add i64 %10, %11, !dbg !41
  %13 = lshr i64 %12, 1, !dbg !43
  %14 = mul i64 %13, %3, !dbg !45
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !46
  %16 = tail call i32 %4(i8* %0, i8* %15) #2, !dbg !48
  %17 = icmp slt i32 %16, 0, !dbg !50
  br i1 %17, label %22, label %18, !dbg !52

; <label>:18:                                     ; preds = %9
  %19 = icmp eq i32 %16, 0, !dbg !53
  br i1 %19, label %26, label %20, !dbg !55

; <label>:20:                                     ; preds = %18
  %21 = add nuw i64 %13, 1, !dbg !56
  br label %22

; <label>:22:                                     ; preds = %9, %20
  %23 = phi i64 [ %11, %20 ], [ %13, %9 ], !dbg !57
  %24 = phi i64 [ %21, %20 ], [ %10, %9 ], !dbg !58
  %25 = icmp ult i64 %24, %23, !dbg !59
  br i1 %25, label %9, label %26, !dbg !60, !llvm.loop !61

; <label>:26:                                     ; preds = %18, %22, %5
  %27 = phi i8* [ null, %5 ], [ %15, %18 ], [ null, %22 ], !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  ret i8* %27, !dbg !63
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/bsearch.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "bsearch", scope: !1, file: !1, line: 67, type: !12, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !14, !16, !16, !19}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 58, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !14, !14}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DILocalVariable(name: "key", arg: 1, scope: !11, file: !1, line: 67, type: !14)
!25 = !DILocalVariable(name: "base", arg: 2, scope: !11, file: !1, line: 67, type: !14)
!26 = !DILocalVariable(name: "nmemb", arg: 3, scope: !11, file: !1, line: 67, type: !16)
!27 = !DILocalVariable(name: "size", arg: 4, scope: !11, file: !1, line: 67, type: !16)
!28 = !DILocalVariable(name: "compar", arg: 5, scope: !11, file: !1, line: 67, type: !19)
!29 = !DILocalVariable(name: "current", scope: !11, file: !1, line: 74, type: !4)
!30 = !DILocalVariable(name: "lower", scope: !11, file: !1, line: 75, type: !16)
!31 = !DILocalVariable(name: "upper", scope: !11, file: !1, line: 76, type: !16)
!32 = !DILocalVariable(name: "index", scope: !11, file: !1, line: 77, type: !16)
!33 = !DILocalVariable(name: "result", scope: !11, file: !1, line: 78, type: !22)
!34 = !DILocation(line: 67, column: 1, scope: !11)
!35 = !DILocation(line: 75, column: 10, scope: !11)
!36 = !DILocation(line: 76, column: 10, scope: !11)
!37 = !DILocation(line: 80, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !11, file: !1, line: 80, column: 7)
!39 = !DILocation(line: 80, column: 26, scope: !38)
!40 = !DILocation(line: 80, column: 18, scope: !38)
!41 = !DILocation(line: 85, column: 22, scope: !42)
!42 = distinct !DILexicalBlock(scope: !11, file: !1, line: 84, column: 5)
!43 = !DILocation(line: 85, column: 31, scope: !42)
!44 = !DILocation(line: 77, column: 10, scope: !11)
!45 = !DILocation(line: 86, column: 50, scope: !42)
!46 = !DILocation(line: 86, column: 41, scope: !42)
!47 = !DILocation(line: 74, column: 8, scope: !11)
!48 = !DILocation(line: 88, column: 16, scope: !42)
!49 = !DILocation(line: 78, column: 7, scope: !11)
!50 = !DILocation(line: 90, column: 18, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 90, column: 11)
!52 = !DILocation(line: 90, column: 11, scope: !42)
!53 = !DILocation(line: 92, column: 23, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 92, column: 16)
!55 = !DILocation(line: 92, column: 16, scope: !51)
!56 = !DILocation(line: 93, column: 23, scope: !54)
!57 = !DILocation(line: 0, scope: !11)
!58 = !DILocation(line: 0, scope: !54)
!59 = !DILocation(line: 83, column: 16, scope: !11)
!60 = !DILocation(line: 83, column: 3, scope: !11)
!61 = distinct !{!61, !60, !62}
!62 = !DILocation(line: 96, column: 5, scope: !11)
!63 = !DILocation(line: 99, column: 1, scope: !11)
