; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcpncpy(i32* noalias, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br label %4, !dbg !27

; <label>:4:                                      ; preds = %10, %3
  %5 = phi i32* [ %0, %3 ], [ %14, %10 ]
  %6 = phi i32* [ %1, %3 ], [ %12, %10 ]
  %7 = phi i64 [ %2, %3 ], [ %11, %10 ]
  %8 = icmp eq i64 %7, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br i1 %8, label %9, label %10, !dbg !27

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br label %45, !dbg !29

; <label>:10:                                     ; preds = %4
  %11 = add i64 %7, -1, !dbg !30
  %12 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !32
  %13 = load i32, i32* %6, align 4, !dbg !34, !tbaa !35
  %14 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !39
  store i32 %13, i32* %5, align 4, !dbg !40, !tbaa !35
  %15 = icmp eq i32 %13, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %15, label %16, label %4, !dbg !42, !llvm.loop !43

; <label>:16:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %17 = icmp eq i64 %11, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %17, label %45, label %18, !dbg !29

; <label>:18:                                     ; preds = %16
  %19 = add i64 %7, -2, !dbg !48
  %20 = and i64 %11, 3, !dbg !48
  %21 = icmp eq i64 %20, 0, !dbg !48
  br i1 %21, label %30, label %22, !dbg !48

; <label>:22:                                     ; preds = %18, %22
  %23 = phi i64 [ %26, %22 ], [ %11, %18 ]
  %24 = phi i32* [ %27, %22 ], [ %14, %18 ]
  %25 = phi i64 [ %28, %22 ], [ %20, %18 ]
  %26 = add i64 %23, -1, !dbg !48
  %27 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !49
  store i32 0, i32* %24, align 4, !dbg !50, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %28 = add i64 %25, -1, !dbg !29
  %29 = icmp eq i64 %28, 0, !dbg !29
  br i1 %29, label %30, label %22, !dbg !29, !llvm.loop !51

; <label>:30:                                     ; preds = %22, %18
  %31 = phi i64 [ %11, %18 ], [ %26, %22 ]
  %32 = phi i32* [ %14, %18 ], [ %27, %22 ]
  %33 = icmp ult i64 %19, 3, !dbg !48
  br i1 %33, label %43, label %34, !dbg !48

; <label>:34:                                     ; preds = %30, %34
  %35 = phi i64 [ %40, %34 ], [ %31, %30 ]
  %36 = phi i32* [ %41, %34 ], [ %32, %30 ]
  %37 = getelementptr inbounds i32, i32* %36, i64 1, !dbg !49
  store i32 0, i32* %36, align 4, !dbg !50, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %38 = getelementptr inbounds i32, i32* %36, i64 2, !dbg !49
  store i32 0, i32* %37, align 4, !dbg !50, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %39 = getelementptr inbounds i32, i32* %36, i64 3, !dbg !49
  store i32 0, i32* %38, align 4, !dbg !50, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %40 = add i64 %35, -4, !dbg !48
  %41 = getelementptr inbounds i32, i32* %36, i64 4, !dbg !49
  store i32 0, i32* %39, align 4, !dbg !50, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %42 = icmp eq i64 %40, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %42, label %43, label %34, !dbg !29, !llvm.loop !53

; <label>:43:                                     ; preds = %34, %30
  %44 = getelementptr i32, i32* %5, i64 %7, !dbg !48
  br label %45, !dbg !55

; <label>:45:                                     ; preds = %9, %43, %16
  %46 = phi i32* [ %5, %16 ], [ %5, %43 ], [ null, %9 ]
  %47 = phi i32* [ %14, %16 ], [ %44, %43 ], [ %5, %9 ], !dbg !56
  %48 = icmp eq i32* %46, null, !dbg !55
  %49 = select i1 %48, i32* %47, i32* %46, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  ret i32* %49, !dbg !57
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcpncpy", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
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
!21 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 42, type: !14)
!22 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 42, type: !15)
!23 = !DILocalVariable(name: "count", arg: 3, scope: !7, file: !1, line: 42, type: !18)
!24 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 47, type: !10)
!25 = !DILocation(line: 42, column: 1, scope: !7)
!26 = !DILocation(line: 47, column: 12, scope: !7)
!27 = !DILocation(line: 49, column: 3, scope: !7)
!28 = !DILocation(line: 49, column: 16, scope: !7)
!29 = !DILocation(line: 58, column: 3, scope: !7)
!30 = !DILocation(line: 51, column: 7, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 5)
!32 = !DILocation(line: 52, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !31, file: !1, line: 52, column: 11)
!34 = !DILocation(line: 52, column: 21, scope: !33)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 52, column: 16, scope: !33)
!40 = !DILocation(line: 52, column: 19, scope: !33)
!41 = !DILocation(line: 52, column: 29, scope: !33)
!42 = !DILocation(line: 52, column: 11, scope: !31)
!43 = distinct !{!43, !27, !44}
!44 = !DILocation(line: 57, column: 5, scope: !7)
!45 = !DILocation(line: 55, column: 4, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 53, column: 2)
!47 = !DILocation(line: 58, column: 18, scope: !7)
!48 = !DILocation(line: 58, column: 15, scope: !7)
!49 = !DILocation(line: 59, column: 9, scope: !7)
!50 = !DILocation(line: 59, column: 12, scope: !7)
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !29, !54}
!54 = !DILocation(line: 59, column: 14, scope: !7)
!55 = !DILocation(line: 61, column: 10, scope: !7)
!56 = !DILocation(line: 0, scope: !7)
!57 = !DILocation(line: 61, column: 3, scope: !7)
