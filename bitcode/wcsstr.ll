; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsstr(i32* noalias, i32* noalias) local_unnamed_addr #0 !dbg !12 {
  %3 = load i32, i32* %1, align 4, !dbg !25, !tbaa !27
  %4 = icmp eq i32 %3, 0, !dbg !25
  br i1 %4, label %34, label %5, !dbg !31

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @wcslen(i32* %0) #3, !dbg !32
  %7 = tail call i64 @wcslen(i32* nonnull %1) #3, !dbg !34
  %8 = icmp ult i64 %6, %7, !dbg !35
  br i1 %8, label %34, label %9, !dbg !36

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %0, align 4, !dbg !38, !tbaa !27
  %11 = icmp eq i32 %10, 0, !dbg !39
  br i1 %11, label %34, label %12, !dbg !39

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4, !tbaa !27
  %14 = icmp eq i32 %13, 0
  br label %15, !dbg !39

; <label>:15:                                     ; preds = %12, %30
  %16 = phi i32 [ %10, %12 ], [ %32, %30 ]
  %17 = phi i32* [ %0, %12 ], [ %31, %30 ]
  br i1 %14, label %34, label %18, !dbg !42

; <label>:18:                                     ; preds = %15
  %19 = icmp eq i32 %16, %13, !dbg !44
  br i1 %19, label %20, label %30, !dbg !47

; <label>:20:                                     ; preds = %18, %27
  %21 = phi i32* [ %23, %27 ], [ %1, %18 ]
  %22 = phi i32* [ %24, %27 ], [ %17, %18 ]
  %23 = getelementptr inbounds i32, i32* %21, i64 1, !dbg !48
  %24 = getelementptr inbounds i32, i32* %22, i64 1, !dbg !49
  %25 = load i32, i32* %23, align 4, !dbg !50, !tbaa !27
  %26 = icmp eq i32 %25, 0, !dbg !42
  br i1 %26, label %34, label %27, !dbg !42, !llvm.loop !51

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %24, align 4, !dbg !53, !tbaa !27
  %29 = icmp eq i32 %28, %25, !dbg !44
  br i1 %29, label %20, label %30, !dbg !47

; <label>:30:                                     ; preds = %27, %18
  %31 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !54
  %32 = load i32, i32* %31, align 4, !dbg !38, !tbaa !27
  %33 = icmp eq i32 %32, 0, !dbg !39
  br i1 %33, label %34, label %15, !dbg !39, !llvm.loop !55

; <label>:34:                                     ; preds = %30, %15, %20, %9, %5, %2
  %35 = phi i32* [ %0, %2 ], [ null, %5 ], [ null, %9 ], [ %17, %20 ], [ %0, %15 ], [ null, %30 ], !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  ret i32* %35, !dbg !59
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
!32 = !DILocation(line: 82, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 82, column: 7)
!34 = !DILocation(line: 82, column: 22, scope: !33)
!35 = !DILocation(line: 82, column: 20, scope: !33)
!36 = !DILocation(line: 82, column: 7, scope: !12)
!37 = !DILocation(line: 73, column: 19, scope: !12)
!38 = !DILocation(line: 87, column: 10, scope: !12)
!39 = !DILocation(line: 87, column: 3, scope: !12)
!40 = !DILocation(line: 75, column: 19, scope: !12)
!41 = !DILocation(line: 74, column: 19, scope: !12)
!42 = !DILocation(line: 91, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !12, file: !1, line: 88, column: 5)
!44 = !DILocation(line: 93, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 93, column: 8)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 92, column: 2)
!47 = !DILocation(line: 93, column: 8, scope: !46)
!48 = !DILocation(line: 95, column: 5, scope: !46)
!49 = !DILocation(line: 96, column: 5, scope: !46)
!50 = !DILocation(line: 91, column: 14, scope: !43)
!51 = distinct !{!51, !42, !52}
!52 = !DILocation(line: 97, column: 2, scope: !43)
!53 = !DILocation(line: 93, column: 8, scope: !45)
!54 = !DILocation(line: 103, column: 8, scope: !43)
!55 = distinct !{!55, !39, !56}
!56 = !DILocation(line: 104, column: 5, scope: !12)
!57 = !DILocation(line: 0, scope: !58)
!58 = distinct !DILexicalBlock(scope: !26, file: !1, line: 78, column: 5)
!59 = !DILocation(line: 106, column: 1, scope: !12)
