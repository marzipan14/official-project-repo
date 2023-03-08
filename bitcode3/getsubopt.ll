; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getsubopt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getsubopt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@suboptarg = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local i32 @getsubopt(i8**, i8** nocapture readonly, i8** nocapture) local_unnamed_addr #0 !dbg !12 {
  store i8* null, i8** %2, align 8, !dbg !28, !tbaa !29
  store i8* null, i8** @suboptarg, align 8, !dbg !33, !tbaa !29
  %4 = icmp eq i8** %0, null, !dbg !34
  br i1 %4, label %56, label %5, !dbg !36

; <label>:5:                                      ; preds = %3
  %6 = load i8*, i8** %0, align 8, !dbg !37, !tbaa !29
  %7 = icmp eq i8* %6, null, !dbg !37
  br i1 %7, label %56, label %8, !dbg !38

; <label>:8:                                      ; preds = %5, %11
  %9 = phi i8* [ %12, %11 ], [ %6, %5 ], !dbg !39
  %10 = load i8, i8* %9, align 1, !dbg !43, !tbaa !44
  switch i8 %10, label %14 [
    i8 9, label %11
    i8 44, label %11
    i8 32, label %11
    i8 0, label %13
  ], !dbg !45

; <label>:11:                                     ; preds = %8, %8, %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !46
  br label %8, !dbg !47, !llvm.loop !48

; <label>:13:                                     ; preds = %8
  store i8* %9, i8** %0, align 8, !dbg !51, !tbaa !29
  br label %56, !dbg !54

; <label>:14:                                     ; preds = %8
  store i8* %9, i8** @suboptarg, align 8, !dbg !55, !tbaa !29
  br label %15, !dbg !57

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i8* [ %9, %14 ], [ %17, %15 ], !dbg !58
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !60
  %18 = load i8, i8* %17, align 1, !dbg !61, !tbaa !44
  switch i8 %18, label %15 [
    i8 0, label %40
    i8 61, label %19
    i8 9, label %28
    i8 32, label %28
    i8 44, label %28
  ], !dbg !62

; <label>:19:                                     ; preds = %15
  store i8 0, i8* %17, align 1, !dbg !63, !tbaa !44
  %20 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !68
  store i8* %20, i8** %2, align 8, !dbg !70, !tbaa !29
  br label %21, !dbg !71

; <label>:21:                                     ; preds = %24, %19
  %22 = phi i8* [ %20, %19 ], [ %25, %24 ], !dbg !72
  %23 = load i8, i8* %22, align 1, !dbg !74, !tbaa !44
  switch i8 %23, label %24 [
    i8 0, label %33
    i8 9, label %26
    i8 32, label %26
    i8 44, label %26
  ], !dbg !75

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !76
  br label %21, !dbg !77, !llvm.loop !78

; <label>:26:                                     ; preds = %21, %21, %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !81
  br label %30, !dbg !83

; <label>:28:                                     ; preds = %15, %15, %15
  %29 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !84
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i8* [ %22, %26 ], [ %17, %28 ]
  %32 = phi i8* [ %27, %26 ], [ %29, %28 ]
  store i8 0, i8* %31, align 1, !dbg !85, !tbaa !44
  br label %33, !dbg !86

; <label>:33:                                     ; preds = %21, %30
  %34 = phi i8* [ %32, %30 ], [ %22, %21 ]
  br label %35, !dbg !87

; <label>:35:                                     ; preds = %33, %38
  %36 = phi i8* [ %39, %38 ], [ %34, %33 ], !dbg !90
  %37 = load i8, i8* %36, align 1, !dbg !87, !tbaa !44
  switch i8 %37, label %40 [
    i8 9, label %38
    i8 44, label %38
    i8 32, label %38
  ], !dbg !91

; <label>:38:                                     ; preds = %35, %35, %35
  %39 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !92
  br label %35, !dbg !93, !llvm.loop !94

; <label>:40:                                     ; preds = %15, %35
  %41 = phi i8* [ %36, %35 ], [ %17, %15 ], !dbg !58
  store i8* %41, i8** %0, align 8, !dbg !97, !tbaa !29
  %42 = load i8*, i8** %1, align 8, !dbg !99, !tbaa !29
  %43 = icmp eq i8* %42, null, !dbg !102
  br i1 %43, label %56, label %44, !dbg !102

; <label>:44:                                     ; preds = %40, %51
  %45 = phi i8* [ %54, %51 ], [ %42, %40 ]
  %46 = phi i32 [ %53, %51 ], [ 0, %40 ]
  %47 = phi i8** [ %52, %51 ], [ %1, %40 ]
  %48 = load i8*, i8** @suboptarg, align 8, !dbg !103, !tbaa !29
  %49 = tail call i32 @strcmp(i8* %48, i8* nonnull %45) #3, !dbg !105
  %50 = icmp eq i32 %49, 0, !dbg !105
  br i1 %50, label %56, label %51, !dbg !106

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !107
  %53 = add nuw nsw i32 %46, 1, !dbg !108
  %54 = load i8*, i8** %52, align 8, !dbg !99, !tbaa !29
  %55 = icmp eq i8* %54, null, !dbg !102
  br i1 %55, label %56, label %44, !dbg !102, !llvm.loop !109

; <label>:56:                                     ; preds = %44, %51, %40, %3, %5, %13
  %57 = phi i32 [ -1, %13 ], [ -1, %5 ], [ -1, %3 ], [ -1, %40 ], [ %46, %44 ], [ -1, %51 ], !dbg !111
  ret i32 %57, !dbg !112
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "suboptarg", scope: !2, file: !3, line: 49, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getsubopt.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "getsubopt", scope: !3, file: !3, line: 52, type: !13, isLocal: false, isDefinition: true, scopeLine: 55, isOptimized: true, unit: !2, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !17, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(name: "optionp", arg: 1, scope: !12, file: !3, line: 53, type: !16)
!21 = !DILocalVariable(name: "tokens", arg: 2, scope: !12, file: !3, line: 54, type: !17)
!22 = !DILocalVariable(name: "valuep", arg: 3, scope: !12, file: !3, line: 53, type: !16)
!23 = !DILocalVariable(name: "cnt", scope: !12, file: !3, line: 56, type: !15)
!24 = !DILocalVariable(name: "p", scope: !12, file: !3, line: 57, type: !6)
!25 = !DILocation(line: 53, column: 9, scope: !12)
!26 = !DILocation(line: 54, column: 16, scope: !12)
!27 = !DILocation(line: 53, column: 20, scope: !12)
!28 = !DILocation(line: 59, column: 22, scope: !12)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 59, column: 12, scope: !12)
!34 = !DILocation(line: 61, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !12, file: !3, line: 61, column: 6)
!36 = !DILocation(line: 61, column: 15, scope: !35)
!37 = !DILocation(line: 61, column: 19, scope: !35)
!38 = !DILocation(line: 61, column: 6, scope: !12)
!39 = !DILocation(line: 0, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 65, column: 2)
!41 = distinct !DILexicalBlock(scope: !12, file: !3, line: 65, column: 2)
!42 = !DILocation(line: 57, column: 8, scope: !12)
!43 = !DILocation(line: 65, column: 21, scope: !40)
!44 = !{!31, !31, i64 0}
!45 = !DILocation(line: 65, column: 24, scope: !40)
!46 = !DILocation(line: 65, column: 67, scope: !40)
!47 = !DILocation(line: 65, column: 2, scope: !40)
!48 = distinct !{!48, !49, !50}
!49 = !DILocation(line: 65, column: 2, scope: !41)
!50 = !DILocation(line: 65, column: 71, scope: !41)
!51 = !DILocation(line: 68, column: 12, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 67, column: 11)
!53 = distinct !DILexicalBlock(scope: !12, file: !3, line: 67, column: 6)
!54 = !DILocation(line: 69, column: 3, scope: !52)
!55 = !DILocation(line: 73, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !12, file: !3, line: 73, column: 2)
!57 = !DILocation(line: 73, column: 7, scope: !56)
!58 = !DILocation(line: 0, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 73, column: 2)
!60 = !DILocation(line: 74, column: 7, scope: !59)
!61 = !DILocation(line: 74, column: 6, scope: !59)
!62 = !DILocation(line: 74, column: 11, scope: !59)
!63 = !DILocation(line: 83, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 82, column: 18)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 82, column: 7)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 76, column: 10)
!67 = distinct !DILexicalBlock(scope: !12, file: !3, line: 76, column: 6)
!68 = !DILocation(line: 84, column: 19, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 84, column: 4)
!70 = !DILocation(line: 84, column: 17, scope: !69)
!71 = !DILocation(line: 84, column: 9, scope: !69)
!72 = !DILocation(line: 0, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !3, line: 84, column: 4)
!74 = !DILocation(line: 85, column: 8, scope: !73)
!75 = !DILocation(line: 85, column: 11, scope: !73)
!76 = !DILocation(line: 85, column: 52, scope: !73)
!77 = !DILocation(line: 84, column: 4, scope: !73)
!78 = distinct !{!78, !79, !80}
!79 = !DILocation(line: 84, column: 4, scope: !69)
!80 = !DILocation(line: 85, column: 56, scope: !69)
!81 = !DILocation(line: 87, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !64, file: !3, line: 86, column: 8)
!83 = !DILocation(line: 87, column: 5, scope: !82)
!84 = !DILocation(line: 89, column: 6, scope: !65)
!85 = !DILocation(line: 0, scope: !65)
!86 = !DILocation(line: 91, column: 3, scope: !66)
!87 = !DILocation(line: 91, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 91, column: 3)
!89 = distinct !DILexicalBlock(scope: !66, file: !3, line: 91, column: 3)
!90 = !DILocation(line: 0, scope: !88)
!91 = !DILocation(line: 91, column: 13, scope: !88)
!92 = !DILocation(line: 91, column: 56, scope: !88)
!93 = !DILocation(line: 91, column: 3, scope: !88)
!94 = distinct !{!94, !95, !96}
!95 = !DILocation(line: 91, column: 3, scope: !89)
!96 = !DILocation(line: 91, column: 60, scope: !89)
!97 = !DILocation(line: 95, column: 11, scope: !12)
!98 = !DILocation(line: 56, column: 6, scope: !12)
!99 = !DILocation(line: 97, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 97, column: 2)
!101 = distinct !DILexicalBlock(scope: !12, file: !3, line: 97, column: 2)
!102 = !DILocation(line: 97, column: 2, scope: !101)
!103 = !DILocation(line: 98, column: 15, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 98, column: 7)
!105 = !DILocation(line: 98, column: 8, scope: !104)
!106 = !DILocation(line: 98, column: 7, scope: !100)
!107 = !DILocation(line: 97, column: 25, scope: !100)
!108 = !DILocation(line: 97, column: 35, scope: !100)
!109 = distinct !{!109, !102, !110}
!110 = !DILocation(line: 99, column: 14, scope: !101)
!111 = !DILocation(line: 0, scope: !35)
!112 = !DILocation(line: 101, column: 1, scope: !12)
