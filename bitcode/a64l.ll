; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/a64l.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/a64l.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0
@switch.table.a64l = private unnamed_addr constant [76 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63]

; Function Attrs: noredzone nounwind
define dso_local i64 @a64l(i8* readonly) local_unnamed_addr #0 !dbg !10 {
  %2 = icmp eq i8* %0, null, !dbg !27
  br i1 %2, label %53, label %3, !dbg !29

; <label>:3:                                      ; preds = %1
  %4 = load i8, i8* %0, align 1, !dbg !32, !tbaa !37
  %5 = icmp eq i8 %4, 0, !dbg !32
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !40
  %7 = select i1 %5, i8* %0, i8* %6, !dbg !41
  %8 = load i8, i8* %7, align 1, !dbg !32, !tbaa !37
  %9 = icmp eq i8 %8, 0, !dbg !32
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !40
  %11 = select i1 %9, i8* %7, i8* %10, !dbg !41
  %12 = load i8, i8* %11, align 1, !dbg !32, !tbaa !37
  %13 = icmp eq i8 %12, 0, !dbg !32
  %14 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !40
  %15 = select i1 %13, i8* %11, i8* %14, !dbg !41
  %16 = load i8, i8* %15, align 1, !dbg !32, !tbaa !37
  %17 = icmp eq i8 %16, 0, !dbg !32
  %18 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !40
  %19 = select i1 %17, i8* %15, i8* %18, !dbg !41
  %20 = load i8, i8* %19, align 1, !dbg !32, !tbaa !37
  %21 = icmp eq i8 %20, 0, !dbg !32
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !40
  %23 = select i1 %21, i8* %19, i8* %22, !dbg !41
  %24 = load i8, i8* %23, align 1, !dbg !32, !tbaa !37
  %25 = icmp eq i8 %24, 0, !dbg !32
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !40
  %27 = select i1 %25, i8* %23, i8* %26, !dbg !41
  %28 = icmp ugt i8* %27, %0, !dbg !42
  br i1 %28, label %29, label %47, !dbg !43

; <label>:29:                                     ; preds = %3, %41
  %30 = phi i64 [ %45, %41 ], [ 0, %3 ]
  %31 = phi i8* [ %32, %41 ], [ %27, %3 ]
  %32 = getelementptr inbounds i8, i8* %31, i64 -1, !dbg !44
  %33 = load i8, i8* %32, align 1, !dbg !46, !tbaa !37
  %34 = sext i8 %33 to i32, !dbg !48
  %35 = add nsw i32 %34, -47, !dbg !49
  %36 = icmp ult i32 %35, 76, !dbg !49
  br i1 %36, label %37, label %41, !dbg !49

; <label>:37:                                     ; preds = %29
  %38 = sext i32 %35 to i64, !dbg !49
  %39 = getelementptr inbounds [76 x i32], [76 x i32]* @switch.table.a64l, i64 0, i64 %38, !dbg !49
  %40 = load i32, i32* %39, align 4, !dbg !49
  br label %41, !dbg !49

; <label>:41:                                     ; preds = %29, %37
  %42 = phi i32 [ %40, %37 ], [ 0, %29 ], !dbg !50
  %43 = shl i64 %30, 6, !dbg !53
  %44 = sext i32 %42 to i64, !dbg !54
  %45 = add i64 %43, %44, !dbg !55
  %46 = icmp ugt i8* %32, %0, !dbg !42
  br i1 %46, label %29, label %47, !dbg !43, !llvm.loop !56

; <label>:47:                                     ; preds = %41, %3
  %48 = phi i64 [ 0, %3 ], [ %45, %41 ], !dbg !58
  %49 = trunc i64 %48 to i32, !dbg !59
  %50 = icmp slt i32 %49, 0, !dbg !59
  %51 = add i64 %48, -4294967296, !dbg !61
  %52 = select i1 %50, i64 %51, i64 %48, !dbg !62
  br label %53, !dbg !62

; <label>:53:                                     ; preds = %47, %1
  %54 = phi i64 [ 0, %1 ], [ %52, %47 ], !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  ret i64 %54, !dbg !64
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/a64l.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "a64l", scope: !1, file: !1, line: 67, type: !11, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{!5, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !22, !23}
!17 = !DILocalVariable(name: "input", arg: 1, scope: !10, file: !1, line: 67, type: !13)
!18 = !DILocalVariable(name: "ptr", scope: !10, file: !1, line: 70, type: !13)
!19 = !DILocalVariable(name: "ch", scope: !10, file: !1, line: 71, type: !15)
!20 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 72, type: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "digit", scope: !10, file: !1, line: 72, type: !21)
!23 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 73, type: !24)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocation(line: 67, column: 1, scope: !10)
!26 = !DILocation(line: 73, column: 17, scope: !10)
!27 = !DILocation(line: 75, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 75, column: 7)
!29 = !DILocation(line: 75, column: 7, scope: !10)
!30 = !DILocation(line: 72, column: 7, scope: !10)
!31 = !DILocation(line: 70, column: 15, scope: !10)
!32 = !DILocation(line: 84, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 84, column: 11)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 83, column: 5)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 82, column: 3)
!36 = distinct !DILexicalBlock(scope: !10, file: !1, line: 82, column: 3)
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 85, column: 2, scope: !33)
!41 = !DILocation(line: 84, column: 11, scope: !34)
!42 = !DILocation(line: 88, column: 14, scope: !10)
!43 = !DILocation(line: 88, column: 3, scope: !10)
!44 = !DILocation(line: 90, column: 14, scope: !45)
!45 = distinct !DILexicalBlock(scope: !10, file: !1, line: 89, column: 5)
!46 = !DILocation(line: 90, column: 12, scope: !45)
!47 = !DILocation(line: 71, column: 8, scope: !10)
!48 = !DILocation(line: 104, column: 15, scope: !45)
!49 = !DILocation(line: 104, column: 7, scope: !45)
!50 = !DILocation(line: 0, scope: !51)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 105, column: 2)
!52 = !DILocation(line: 72, column: 10, scope: !10)
!53 = !DILocation(line: 183, column: 24, scope: !45)
!54 = !DILocation(line: 183, column: 32, scope: !45)
!55 = !DILocation(line: 183, column: 30, scope: !45)
!56 = distinct !{!56, !43, !57}
!57 = !DILocation(line: 184, column: 5, scope: !10)
!58 = !DILocation(line: 0, scope: !45)
!59 = !DILocation(line: 188, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !10, file: !1, line: 188, column: 7)
!61 = !DILocation(line: 189, column: 39, scope: !60)
!62 = !DILocation(line: 188, column: 7, scope: !10)
!63 = !DILocation(line: 0, scope: !10)
!64 = !DILocation(line: 193, column: 1, scope: !10)
