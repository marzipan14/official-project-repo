; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/a64l.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/a64l.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0
@switch.table.a64l = private unnamed_addr constant [76 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63]

; Function Attrs: noredzone nounwind
define dso_local i64 @a64l(i8* readonly) local_unnamed_addr #0 !dbg !10 {
  %2 = icmp eq i8* %0, null, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %2, label %36, label %3, !dbg !29

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  %4 = load i8, i8* %0, align 1, !dbg !35, !tbaa !39
  %5 = icmp eq i8 %4, 0, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %5, label %6, label %7, !dbg !42

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %38, !dbg !42

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %9 = load i8, i8* %8, align 1, !dbg !35, !tbaa !39
  %10 = icmp eq i8 %9, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %10, label %38, label %40, !dbg !42

; <label>:11:                                     ; preds = %67, %23
  %12 = phi i64 [ %27, %23 ], [ 0, %67 ]
  %13 = phi i8* [ %14, %23 ], [ %68, %67 ]
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !45
  %15 = load i8, i8* %14, align 1, !dbg !47, !tbaa !39
  %16 = sext i8 %15 to i32, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  %17 = add nsw i32 %16, -47, !dbg !50
  %18 = icmp ult i32 %17, 76, !dbg !50
  br i1 %18, label %19, label %23, !dbg !50

; <label>:19:                                     ; preds = %11
  %20 = sext i32 %17 to i64, !dbg !50
  %21 = getelementptr inbounds [76 x i32], [76 x i32]* @switch.table.a64l, i64 0, i64 %20, !dbg !50
  %22 = load i32, i32* %21, align 4, !dbg !50
  br label %23, !dbg !50

; <label>:23:                                     ; preds = %11, %19
  %24 = phi i32 [ %22, %19 ], [ 0, %11 ], !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  %25 = shl i64 %12, 6, !dbg !54
  %26 = sext i32 %24 to i64, !dbg !55
  %27 = add i64 %25, %26, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %28 = icmp ugt i8* %14, %0, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %28, label %11, label %29, !dbg !57, !llvm.loop !59

; <label>:29:                                     ; preds = %23
  %30 = trunc i64 %27 to i32, !dbg !61
  %31 = icmp slt i32 %30, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  %32 = add i64 %27, -4294967296, !dbg !64
  %33 = select i1 %31, i64 %32, i64 %27, !dbg !63
  br label %34, !dbg !63

; <label>:34:                                     ; preds = %29, %69
  %35 = phi i64 [ 0, %69 ], [ %33, %29 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %36, !dbg !66

; <label>:36:                                     ; preds = %34, %1
  %37 = phi i64 [ 0, %1 ], [ %35, %34 ], !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret i64 %37, !dbg !66

; <label>:38:                                     ; preds = %7, %6
  %39 = phi i8* [ %0, %6 ], [ %8, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %44, !dbg !42

; <label>:40:                                     ; preds = %7
  %41 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %42 = load i8, i8* %41, align 1, !dbg !35, !tbaa !39
  %43 = icmp eq i8 %42, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %43, label %44, label %46, !dbg !42

; <label>:44:                                     ; preds = %40, %38
  %45 = phi i8* [ %39, %38 ], [ %41, %40 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %50, !dbg !42

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %48 = load i8, i8* %47, align 1, !dbg !35, !tbaa !39
  %49 = icmp eq i8 %48, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %49, label %50, label %52, !dbg !42

; <label>:50:                                     ; preds = %46, %44
  %51 = phi i8* [ %45, %44 ], [ %47, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %64, !dbg !42

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %54 = load i8, i8* %53, align 1, !dbg !35, !tbaa !39
  %55 = icmp eq i8 %54, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %55, label %64, label %56, !dbg !42

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %58 = load i8, i8* %57, align 1, !dbg !35, !tbaa !39
  %59 = icmp eq i8 %58, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %59, label %62, label %60, !dbg !42

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br label %62, !dbg !44

; <label>:62:                                     ; preds = %60, %56
  %63 = phi i8* [ %57, %56 ], [ %61, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br label %67, !dbg !57

; <label>:64:                                     ; preds = %52, %50
  %65 = phi i8* [ %51, %50 ], [ %53, %52 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  %66 = icmp ugt i8* %65, %0, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %66, label %67, label %69, !dbg !57

; <label>:67:                                     ; preds = %62, %64
  %68 = phi i8* [ %65, %64 ], [ %63, %62 ]
  br label %11, !dbg !45

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br label %34, !dbg !63
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
!30 = !DILocation(line: 0, scope: !31)
!31 = distinct !DILexicalBlock(scope: !10, file: !1, line: 82, column: 3)
!32 = !DILocation(line: 72, column: 7, scope: !10)
!33 = !DILocation(line: 70, column: 15, scope: !10)
!34 = !DILocation(line: 82, column: 3, scope: !31)
!35 = !DILocation(line: 84, column: 11, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 84, column: 11)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 83, column: 5)
!38 = distinct !DILexicalBlock(scope: !31, file: !1, line: 82, column: 3)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 84, column: 11, scope: !37)
!43 = !DILocation(line: 82, column: 3, scope: !38)
!44 = !DILocation(line: 85, column: 2, scope: !36)
!45 = !DILocation(line: 90, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !10, file: !1, line: 89, column: 5)
!47 = !DILocation(line: 90, column: 12, scope: !46)
!48 = !DILocation(line: 71, column: 8, scope: !10)
!49 = !DILocation(line: 104, column: 15, scope: !46)
!50 = !DILocation(line: 104, column: 7, scope: !46)
!51 = !DILocation(line: 0, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 105, column: 2)
!53 = !DILocation(line: 72, column: 10, scope: !10)
!54 = !DILocation(line: 183, column: 24, scope: !46)
!55 = !DILocation(line: 183, column: 32, scope: !46)
!56 = !DILocation(line: 183, column: 30, scope: !46)
!57 = !DILocation(line: 88, column: 3, scope: !10)
!58 = !DILocation(line: 88, column: 14, scope: !10)
!59 = distinct !{!59, !57, !60}
!60 = !DILocation(line: 184, column: 5, scope: !10)
!61 = !DILocation(line: 188, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !10, file: !1, line: 188, column: 7)
!63 = !DILocation(line: 188, column: 7, scope: !10)
!64 = !DILocation(line: 189, column: 39, scope: !62)
!65 = !DILocation(line: 0, scope: !62)
!66 = !DILocation(line: 193, column: 1, scope: !10)
!67 = !DILocation(line: 0, scope: !10)
