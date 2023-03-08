; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strpbrk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strpbrk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @strpbrk(i8* readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !11 {
  %3 = load i8, i8* %0, align 1, !dbg !22, !tbaa !24
  %4 = icmp eq i8 %3, 0, !dbg !22
  br i1 %4, label %30, label %5, !dbg !27

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %1, align 1, !tbaa !24
  %7 = icmp eq i8 %6, 0
  br label %8, !dbg !28

; <label>:8:                                      ; preds = %5, %19
  %9 = phi i8* [ %0, %5 ], [ %21, %19 ]
  %10 = phi i8 [ %3, %5 ], [ %22, %19 ]
  br i1 %7, label %19, label %11, !dbg !29

; <label>:11:                                     ; preds = %8, %15
  %12 = phi i8 [ %17, %15 ], [ %6, %8 ]
  %13 = phi i8* [ %16, %15 ], [ %1, %8 ]
  %14 = icmp eq i8 %10, %12, !dbg !32
  br i1 %14, label %24, label %15, !dbg !36

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !37
  %17 = load i8, i8* %16, align 1, !dbg !38, !tbaa !24
  %18 = icmp eq i8 %17, 0, !dbg !29
  br i1 %18, label %19, label %11, !dbg !29, !llvm.loop !39

; <label>:19:                                     ; preds = %15, %8
  %20 = phi i8* [ %1, %8 ], [ %16, %15 ], !dbg !41
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !42
  %22 = load i8, i8* %21, align 1, !dbg !43, !tbaa !24
  %23 = icmp eq i8 %22, 0, !dbg !28
  br i1 %23, label %24, label %8, !dbg !28, !llvm.loop !44

; <label>:24:                                     ; preds = %19, %11
  %25 = phi i8* [ %9, %11 ], [ %21, %19 ]
  %26 = phi i8* [ %13, %11 ], [ %20, %19 ], !dbg !46
  %27 = load i8, i8* %26, align 1, !dbg !47, !tbaa !24
  %28 = icmp eq i8 %27, 0, !dbg !49
  %29 = select i1 %28, i8* null, i8* %25, !dbg !50
  br label %30, !dbg !51

; <label>:30:                                     ; preds = %2, %24
  %31 = phi i8* [ %29, %24 ], [ null, %2 ], !dbg !52
  ret i8* %31, !dbg !53
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!28 = !DILocation(line: 42, column: 3, scope: !11)
!29 = !DILocation(line: 44, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 44, column: 7)
!31 = distinct !DILexicalBlock(scope: !11, file: !1, line: 43, column: 5)
!32 = !DILocation(line: 46, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 46, column: 8)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 45, column: 2)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 44, column: 7)
!36 = !DILocation(line: 46, column: 8, scope: !34)
!37 = !DILocation(line: 44, column: 25, scope: !35)
!38 = !DILocation(line: 44, column: 20, scope: !35)
!39 = distinct !{!39, !29, !40}
!40 = !DILocation(line: 48, column: 2, scope: !30)
!41 = !DILocation(line: 0, scope: !35)
!42 = !DILocation(line: 51, column: 9, scope: !31)
!43 = !DILocation(line: 42, column: 10, scope: !11)
!44 = distinct !{!44, !28, !45}
!45 = !DILocation(line: 52, column: 5, scope: !11)
!46 = !DILocation(line: 0, scope: !11)
!47 = !DILocation(line: 54, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !11, file: !1, line: 54, column: 7)
!49 = !DILocation(line: 54, column: 10, scope: !48)
!50 = !DILocation(line: 54, column: 7, scope: !11)
!51 = !DILocation(line: 57, column: 3, scope: !11)
!52 = !DILocation(line: 0, scope: !23)
!53 = !DILocation(line: 58, column: 1, scope: !11)
