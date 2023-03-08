; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsstr(i32* noalias, i32* noalias) local_unnamed_addr #0 !dbg !12 {
  %3 = load i32, i32* %1, align 4, !dbg !25, !tbaa !27
  %4 = icmp eq i32 %3, 0, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %4, label %5, label %6, !dbg !31

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br label %37, !dbg !32

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @wcslen(i32* %0) #3, !dbg !34
  %8 = tail call i64 @wcslen(i32* nonnull %1) #3, !dbg !36
  %9 = icmp ult i64 %7, %8, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %9, label %37, label %10, !dbg !38

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %0, align 4, !dbg !41, !tbaa !27
  %12 = icmp eq i32 %11, 0, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %12, label %37, label %13, !dbg !42

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %1, align 4, !tbaa !27
  %15 = icmp eq i32 %14, 0
  br label %16, !dbg !42

; <label>:16:                                     ; preds = %13, %33
  %17 = phi i32 [ %11, %13 ], [ %35, %33 ]
  %18 = phi i32* [ %0, %13 ], [ %34, %33 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %15, label %31, label %19, !dbg !47

; <label>:19:                                     ; preds = %16
  %20 = icmp eq i32 %17, %14, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %20, label %21, label %33, !dbg !51

; <label>:21:                                     ; preds = %19, %28
  %22 = phi i32* [ %24, %28 ], [ %1, %19 ]
  %23 = phi i32* [ %25, %28 ], [ %18, %19 ]
  %24 = getelementptr inbounds i32, i32* %22, i64 1, !dbg !52
  %25 = getelementptr inbounds i32, i32* %23, i64 1, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  %26 = load i32, i32* %24, align 4, !dbg !54, !tbaa !27
  %27 = icmp eq i32 %26, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %27, label %31, label %28, !dbg !47, !llvm.loop !55

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %25, align 4, !dbg !57, !tbaa !27
  %30 = icmp eq i32 %29, %26, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %30, label %21, label %33, !dbg !51

; <label>:31:                                     ; preds = %16, %21
  %32 = phi i32* [ %18, %21 ], [ %0, %16 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br label %37, !dbg !59

; <label>:33:                                     ; preds = %28, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  %34 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %35 = load i32, i32* %34, align 4, !dbg !41, !tbaa !27
  %36 = icmp eq i32 %35, 0, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %36, label %37, label %16, !dbg !42, !llvm.loop !63

; <label>:37:                                     ; preds = %33, %10, %6, %31, %5
  %38 = phi i32* [ %32, %31 ], [ %0, %5 ], [ null, %6 ], [ null, %10 ], [ null, %33 ], !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret i32* %38, !dbg !66
}

; Function Attrs: noredzone
declare dso_local i64 @wcslen(i32*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "wcsstr", scope: !1, file: !1, line: 69, type: !13, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !{!19, !20, !21, !22, !23}
!19 = !DILocalVariable(name: "big", arg: 1, scope: !12, file: !1, line: 69, type: !15)
!20 = !DILocalVariable(name: "little", arg: 2, scope: !12, file: !1, line: 69, type: !15)
!21 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 73, type: !16)
!22 = !DILocalVariable(name: "q", scope: !12, file: !1, line: 74, type: !16)
!23 = !DILocalVariable(name: "r", scope: !12, file: !1, line: 75, type: !16)
!24 = !DILocation(line: 69, column: 1, scope: !12)
!25 = !DILocation(line: 77, column: 8, scope: !26)
!26 = distinct !DILexicalBlock(scope: !12, file: !1, line: 77, column: 7)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 77, column: 7, scope: !12)
!32 = !DILocation(line: 80, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 78, column: 5)
!34 = !DILocation(line: 82, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !12, file: !1, line: 82, column: 7)
!36 = !DILocation(line: 82, column: 22, scope: !35)
!37 = !DILocation(line: 82, column: 20, scope: !35)
!38 = !DILocation(line: 82, column: 7, scope: !12)
!39 = !DILocation(line: 0, scope: !12)
!40 = !DILocation(line: 73, column: 19, scope: !12)
!41 = !DILocation(line: 87, column: 10, scope: !12)
!42 = !DILocation(line: 87, column: 3, scope: !12)
!43 = !DILocation(line: 0, scope: !44)
!44 = distinct !DILexicalBlock(scope: !12, file: !1, line: 88, column: 5)
!45 = !DILocation(line: 75, column: 19, scope: !12)
!46 = !DILocation(line: 74, column: 19, scope: !12)
!47 = !DILocation(line: 91, column: 7, scope: !44)
!48 = !DILocation(line: 93, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 93, column: 8)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 92, column: 2)
!51 = !DILocation(line: 93, column: 8, scope: !50)
!52 = !DILocation(line: 95, column: 5, scope: !50)
!53 = !DILocation(line: 96, column: 5, scope: !50)
!54 = !DILocation(line: 91, column: 14, scope: !44)
!55 = distinct !{!55, !47, !56}
!56 = !DILocation(line: 97, column: 2, scope: !44)
!57 = !DILocation(line: 93, column: 8, scope: !49)
!58 = !DILocation(line: 98, column: 11, scope: !44)
!59 = !DILocation(line: 101, column: 4, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 99, column: 2)
!61 = distinct !DILexicalBlock(scope: !44, file: !1, line: 98, column: 11)
!62 = !DILocation(line: 103, column: 8, scope: !44)
!63 = distinct !{!63, !42, !64}
!64 = !DILocation(line: 104, column: 5, scope: !12)
!65 = !DILocation(line: 0, scope: !33)
!66 = !DILocation(line: 106, column: 1, scope: !12)
