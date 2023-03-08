; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @argz_extract(i8*, i64, i8** nocapture) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call i64 @argz_count(i8* %0, i64 %1) #3, !dbg !28
  %5 = icmp ugt i64 %1, 1, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br i1 %5, label %6, label %26, !dbg !32

; <label>:6:                                      ; preds = %3
  %7 = add i64 %1, -2, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  %8 = icmp eq i64 %7, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %8, label %26, label %9, !dbg !38

; <label>:9:                                      ; preds = %6, %22
  %10 = phi i64 [ %24, %22 ], [ %7, %6 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %6 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !39
  %13 = load i8, i8* %12, align 1, !dbg !39, !tbaa !42
  %14 = icmp eq i8 %13, 0, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %14, label %15, label %22, !dbg !46

; <label>:15:                                     ; preds = %9
  %16 = add nsw i32 %11, 1, !dbg !47
  %17 = add i64 %10, 1, !dbg !49
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !50
  %19 = sext i32 %16 to i64, !dbg !51
  %20 = sub i64 %4, %19, !dbg !52
  %21 = getelementptr inbounds i8*, i8** %2, i64 %20, !dbg !53
  store i8* %18, i8** %21, align 8, !dbg !54, !tbaa !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br label %22, !dbg !57

; <label>:22:                                     ; preds = %9, %15
  %23 = phi i32 [ %16, %15 ], [ %11, %9 ], !dbg !58
  %24 = add i64 %10, -1, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  %25 = icmp eq i64 %24, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %25, label %26, label %9, !dbg !38, !llvm.loop !61

; <label>:26:                                     ; preds = %22, %6, %3
  store i8* %0, i8** %2, align 8, !dbg !63, !tbaa !55
  %27 = getelementptr inbounds i8*, i8** %2, i64 %4, !dbg !64
  store i8* null, i8** %27, align 8, !dbg !65, !tbaa !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret void, !dbg !66
}

; Function Attrs: noredzone
declare dso_local i64 @argz_count(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "argz_extract", scope: !1, file: !1, line: 12, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argz", arg: 1, scope: !7, file: !1, line: 12, type: !10)
!18 = !DILocalVariable(name: "argz_len", arg: 2, scope: !7, file: !1, line: 12, type: !12)
!19 = !DILocalVariable(name: "argv", arg: 3, scope: !7, file: !1, line: 12, type: !15)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 17, type: !12)
!21 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 18, type: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 19, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!25 = !DILocation(line: 12, column: 1, scope: !7)
!26 = !DILocation(line: 17, column: 10, scope: !7)
!27 = !DILocation(line: 18, column: 7, scope: !7)
!28 = !DILocation(line: 19, column: 24, scope: !7)
!29 = !DILocation(line: 19, column: 16, scope: !7)
!30 = !DILocation(line: 21, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!32 = !DILocation(line: 21, column: 7, scope: !7)
!33 = !DILocation(line: 22, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 5)
!35 = !DILocation(line: 22, column: 10, scope: !34)
!36 = !DILocation(line: 22, column: 30, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 22, column: 5)
!38 = !DILocation(line: 22, column: 5, scope: !34)
!39 = !DILocation(line: 24, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 24, column: 6)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 23, column: 7)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 24, column: 14, scope: !40)
!46 = !DILocation(line: 24, column: 6, scope: !41)
!47 = !DILocation(line: 26, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !1, line: 25, column: 4)
!49 = !DILocation(line: 27, column: 32, scope: !48)
!50 = !DILocation(line: 27, column: 25, scope: !48)
!51 = !DILocation(line: 27, column: 19, scope: !48)
!52 = !DILocation(line: 27, column: 17, scope: !48)
!53 = !DILocation(line: 27, column: 6, scope: !48)
!54 = !DILocation(line: 27, column: 22, scope: !48)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !43, i64 0}
!57 = !DILocation(line: 28, column: 4, scope: !48)
!58 = !DILocation(line: 0, scope: !7)
!59 = !DILocation(line: 22, column: 36, scope: !37)
!60 = !DILocation(line: 22, column: 5, scope: !37)
!61 = distinct !{!61, !38, !62}
!62 = !DILocation(line: 29, column: 7, scope: !34)
!63 = !DILocation(line: 30, column: 11, scope: !7)
!64 = !DILocation(line: 31, column: 3, scope: !7)
!65 = !DILocation(line: 31, column: 15, scope: !7)
!66 = !DILocation(line: 32, column: 1, scope: !7)
