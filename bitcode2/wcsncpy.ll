; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsncpy(i32* noalias returned, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %4, label %5, label %6, !dbg !28

; <label>:5:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br label %44, !dbg !29

; <label>:6:                                      ; preds = %3, %6
  %7 = phi i32* [ %11, %6 ], [ %1, %3 ]
  %8 = phi i64 [ %10, %6 ], [ %2, %3 ]
  %9 = phi i32* [ %13, %6 ], [ %0, %3 ], !dbg !30
  %10 = add i64 %8, -1, !dbg !33
  %11 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !34
  %12 = load i32, i32* %7, align 4, !dbg !35, !tbaa !36
  %13 = getelementptr inbounds i32, i32* %9, i64 1, !dbg !40
  store i32 %12, i32* %9, align 4, !dbg !41, !tbaa !36
  %14 = icmp ne i32 %12, 0, !dbg !42
  %15 = icmp ne i64 %10, 0, !dbg !27
  %16 = and i1 %15, %14, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %16, label %6, label %17, !dbg !43, !llvm.loop !44

; <label>:17:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %18 = icmp eq i64 %10, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %18, label %44, label %19, !dbg !29

; <label>:19:                                     ; preds = %17
  %20 = add i64 %8, -2, !dbg !47
  %21 = and i64 %10, 3, !dbg !47
  %22 = icmp eq i64 %21, 0, !dbg !47
  br i1 %22, label %31, label %23, !dbg !47

; <label>:23:                                     ; preds = %19, %23
  %24 = phi i32* [ %28, %23 ], [ %13, %19 ]
  %25 = phi i64 [ %27, %23 ], [ %10, %19 ]
  %26 = phi i64 [ %29, %23 ], [ %21, %19 ]
  %27 = add i64 %25, -1, !dbg !47
  %28 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !48
  store i32 0, i32* %24, align 4, !dbg !49, !tbaa !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %29 = add i64 %26, -1, !dbg !29
  %30 = icmp eq i64 %29, 0, !dbg !29
  br i1 %30, label %31, label %23, !dbg !29, !llvm.loop !50

; <label>:31:                                     ; preds = %23, %19
  %32 = phi i32* [ %13, %19 ], [ %28, %23 ]
  %33 = phi i64 [ %10, %19 ], [ %27, %23 ]
  %34 = icmp ult i64 %20, 3, !dbg !47
  br i1 %34, label %44, label %35, !dbg !47

; <label>:35:                                     ; preds = %31, %35
  %36 = phi i32* [ %42, %35 ], [ %32, %31 ]
  %37 = phi i64 [ %41, %35 ], [ %33, %31 ]
  %38 = getelementptr inbounds i32, i32* %36, i64 1, !dbg !48
  store i32 0, i32* %36, align 4, !dbg !49, !tbaa !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %39 = getelementptr inbounds i32, i32* %36, i64 2, !dbg !48
  store i32 0, i32* %38, align 4, !dbg !49, !tbaa !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %40 = getelementptr inbounds i32, i32* %36, i64 3, !dbg !48
  store i32 0, i32* %39, align 4, !dbg !49, !tbaa !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %41 = add i64 %37, -4, !dbg !47
  %42 = getelementptr inbounds i32, i32* %36, i64 4, !dbg !48
  store i32 0, i32* %40, align 4, !dbg !49, !tbaa !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %43 = icmp eq i64 %41, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %43, label %44, label %35, !dbg !29, !llvm.loop !52

; <label>:44:                                     ; preds = %31, %35, %5, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i32* %0, !dbg !54
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcsncpy", scope: !1, file: !1, line: 44, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !15, !18}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 58, baseType: !19)
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 44, type: !14)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 44, type: !15)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 44, type: !18)
!24 = !DILocalVariable(name: "dscan", scope: !7, file: !1, line: 49, type: !10)
!25 = !DILocation(line: 44, column: 1, scope: !7)
!26 = !DILocation(line: 49, column: 12, scope: !7)
!27 = !DILocation(line: 51, column: 11, scope: !7)
!28 = !DILocation(line: 51, column: 3, scope: !7)
!29 = !DILocation(line: 56, column: 3, scope: !7)
!30 = !DILocation(line: 0, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 54, column: 10)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 5)
!33 = !DILocation(line: 53, column: 7, scope: !32)
!34 = !DILocation(line: 54, column: 25, scope: !31)
!35 = !DILocation(line: 54, column: 22, scope: !31)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 54, column: 17, scope: !31)
!41 = !DILocation(line: 54, column: 20, scope: !31)
!42 = !DILocation(line: 54, column: 29, scope: !31)
!43 = !DILocation(line: 54, column: 10, scope: !32)
!44 = distinct !{!44, !28, !45}
!45 = !DILocation(line: 55, column: 5, scope: !7)
!46 = !DILocation(line: 56, column: 13, scope: !7)
!47 = !DILocation(line: 56, column: 10, scope: !7)
!48 = !DILocation(line: 56, column: 25, scope: !7)
!49 = !DILocation(line: 56, column: 28, scope: !7)
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !29, !53}
!53 = !DILocation(line: 56, column: 30, scope: !7)
!54 = !DILocation(line: 58, column: 3, scope: !7)
