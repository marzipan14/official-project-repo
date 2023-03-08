; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strspn(i8*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  %3 = load i8, i8* %0, align 1, !dbg !26, !tbaa !27
  %4 = icmp eq i8 %3, 0, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  br i1 %4, label %24, label %5, !dbg !25

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %1, align 1, !dbg !30, !tbaa !27
  %7 = icmp eq i8 %6, 0
  br label %8, !dbg !34

; <label>:8:                                      ; preds = %5, %20
  %9 = phi i8 [ %22, %20 ], [ %3, %5 ]
  %10 = phi i8* [ %21, %20 ], [ %0, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %7, label %11, label %12, !dbg !36

; <label>:11:                                     ; preds = %8, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br label %24, !dbg !37

; <label>:12:                                     ; preds = %8, %16
  %13 = phi i8 [ %18, %16 ], [ %6, %8 ]
  %14 = phi i8* [ %17, %16 ], [ %1, %8 ]
  %15 = icmp eq i8 %9, %13, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %15, label %20, label %16, !dbg !41

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %18 = load i8, i8* %17, align 1, !dbg !30, !tbaa !27
  %19 = icmp eq i8 %18, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %19, label %11, label %12, !dbg !36, !llvm.loop !44

; <label>:20:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %21 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  %22 = load i8, i8* %21, align 1, !dbg !26, !tbaa !27
  %23 = icmp eq i8 %22, 0, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  br i1 %23, label %24, label %8, !dbg !25, !llvm.loop !47

; <label>:24:                                     ; preds = %20, %2, %11
  %25 = phi i8* [ %10, %11 ], [ %0, %2 ], [ %21, %20 ]
  %26 = ptrtoint i8* %25 to i64, !dbg !49
  %27 = ptrtoint i8* %0 to i64, !dbg !49
  %28 = sub i64 %26, %27, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  ret i64 %28, !dbg !50
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strspn", scope: !1, file: !1, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22}
!19 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 39, type: !15)
!20 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 39, type: !15)
!21 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 43, type: !15)
!22 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 44, type: !15)
!23 = !DILocation(line: 39, column: 1, scope: !7)
!24 = !DILocation(line: 43, column: 16, scope: !7)
!25 = !DILocation(line: 46, column: 3, scope: !7)
!26 = !DILocation(line: 46, column: 10, scope: !7)
!27 = !{!28, !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 48, column: 20, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 48, column: 7)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 48, column: 7)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 47, column: 5)
!34 = !DILocation(line: 48, column: 12, scope: !32)
!35 = !DILocation(line: 44, column: 16, scope: !7)
!36 = !DILocation(line: 48, column: 7, scope: !32)
!37 = !DILocation(line: 53, column: 11, scope: !33)
!38 = !DILocation(line: 50, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 50, column: 8)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 49, column: 2)
!41 = !DILocation(line: 50, column: 8, scope: !40)
!42 = !DILocation(line: 48, column: 25, scope: !31)
!43 = !DILocation(line: 48, column: 7, scope: !31)
!44 = distinct !{!44, !36, !45}
!45 = !DILocation(line: 52, column: 2, scope: !32)
!46 = !DILocation(line: 55, column: 9, scope: !33)
!47 = distinct !{!47, !25, !48}
!48 = !DILocation(line: 56, column: 5, scope: !7)
!49 = !DILocation(line: 58, column: 13, scope: !7)
!50 = !DILocation(line: 58, column: 3, scope: !7)
