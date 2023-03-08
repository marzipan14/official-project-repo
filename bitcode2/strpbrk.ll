; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strpbrk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strpbrk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strpbrk(i8* readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !11 {
  %3 = load i8, i8* %0, align 1, !dbg !22, !tbaa !24
  %4 = icmp eq i8 %3, 0, !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %4, label %33, label %5, !dbg !27

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %1, align 1, !dbg !29, !tbaa !24
  %7 = icmp eq i8 %6, 0
  br label %8, !dbg !33

; <label>:8:                                      ; preds = %5, %20
  %9 = phi i8* [ %22, %20 ], [ %0, %5 ]
  %10 = phi i8 [ %23, %20 ], [ %3, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %7, label %20, label %11, !dbg !34

; <label>:11:                                     ; preds = %8, %15
  %12 = phi i8 [ %17, %15 ], [ %6, %8 ]
  %13 = phi i8* [ %16, %15 ], [ %1, %8 ]
  %14 = icmp eq i8 %10, %12, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %14, label %19, label %15, !dbg !38

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  %17 = load i8, i8* %16, align 1, !dbg !29, !tbaa !24
  %18 = icmp eq i8 %17, 0, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %18, label %20, label %11, !dbg !34, !llvm.loop !41

; <label>:19:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br label %25

; <label>:20:                                     ; preds = %15, %8
  %21 = phi i8* [ %1, %8 ], [ %16, %15 ], !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %22 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  %23 = load i8, i8* %22, align 1, !dbg !47, !tbaa !24
  %24 = icmp eq i8 %23, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %24, label %25, label %8, !dbg !46, !llvm.loop !48

; <label>:25:                                     ; preds = %20, %19
  %26 = phi i8* [ %9, %19 ], [ %22, %20 ]
  %27 = phi i8* [ %13, %19 ], [ %21, %20 ], !dbg !28
  %28 = load i8, i8* %27, align 1, !dbg !50, !tbaa !24
  %29 = icmp eq i8 %28, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %29, label %30, label %31, !dbg !53

; <label>:30:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br label %31, !dbg !54

; <label>:31:                                     ; preds = %30, %25
  %32 = phi i8* [ null, %30 ], [ %26, %25 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br label %33, !dbg !55

; <label>:33:                                     ; preds = %2, %31
  %34 = phi i8* [ %32, %31 ], [ null, %2 ], !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  ret i8* %34, !dbg !57
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strpbrk.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "strpbrk", scope: !1, file: !1, line: 34, type: !12, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "s1", arg: 1, scope: !11, file: !1, line: 34, type: !14)
!18 = !DILocalVariable(name: "s2", arg: 2, scope: !11, file: !1, line: 34, type: !14)
!19 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 38, type: !14)
!20 = !DILocation(line: 34, column: 1, scope: !11)
!21 = !DILocation(line: 38, column: 16, scope: !11)
!22 = !DILocation(line: 39, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 7)
!24 = !{!25, !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 39, column: 7, scope: !11)
!28 = !DILocation(line: 0, scope: !11)
!29 = !DILocation(line: 44, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 44, column: 7)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 44, column: 7)
!32 = distinct !DILexicalBlock(scope: !11, file: !1, line: 43, column: 5)
!33 = !DILocation(line: 44, column: 12, scope: !31)
!34 = !DILocation(line: 44, column: 7, scope: !31)
!35 = !DILocation(line: 46, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 46, column: 8)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 2)
!38 = !DILocation(line: 46, column: 8, scope: !37)
!39 = !DILocation(line: 44, column: 25, scope: !30)
!40 = !DILocation(line: 44, column: 7, scope: !30)
!41 = distinct !{!41, !34, !42}
!42 = !DILocation(line: 48, column: 2, scope: !31)
!43 = !DILocation(line: 49, column: 11, scope: !32)
!44 = !DILocation(line: 0, scope: !30)
!45 = !DILocation(line: 51, column: 9, scope: !32)
!46 = !DILocation(line: 42, column: 3, scope: !11)
!47 = !DILocation(line: 42, column: 10, scope: !11)
!48 = distinct !{!48, !46, !49}
!49 = !DILocation(line: 52, column: 5, scope: !11)
!50 = !DILocation(line: 54, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !11, file: !1, line: 54, column: 7)
!52 = !DILocation(line: 54, column: 10, scope: !51)
!53 = !DILocation(line: 54, column: 7, scope: !11)
!54 = !DILocation(line: 55, column: 5, scope: !51)
!55 = !DILocation(line: 57, column: 3, scope: !11)
!56 = !DILocation(line: 0, scope: !23)
!57 = !DILocation(line: 58, column: 1, scope: !11)
