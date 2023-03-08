; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @__sccl(i8* nocapture, i8* readonly) local_unnamed_addr #0 !dbg !7 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !24
  %4 = load i8, i8* %1, align 1, !dbg !25, !tbaa !26
  %5 = icmp eq i8 %4, 94, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %5, label %6, label %9, !dbg !31

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !33
  %8 = load i8, i8* %3, align 1, !dbg !35, !tbaa !26
  br label %9, !dbg !36

; <label>:9:                                      ; preds = %2, %6
  %10 = phi i8* [ %7, %6 ], [ %3, %2 ], !dbg !37
  %11 = phi i8 [ %8, %6 ], [ %4, %2 ]
  %12 = phi i8 [ 1, %6 ], [ 0, %2 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %13, !dbg !42

; <label>:13:                                     ; preds = %13, %9
  %14 = phi i64 [ 0, %9 ], [ %22, %13 ]
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !43
  store i8 %12, i8* %15, align 1, !dbg !45, !tbaa !26
  %16 = or i64 %14, 1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %17 = getelementptr inbounds i8, i8* %0, i64 %16, !dbg !43
  store i8 %12, i8* %17, align 1, !dbg !45, !tbaa !26
  %18 = or i64 %14, 2, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !43
  store i8 %12, i8* %19, align 1, !dbg !45, !tbaa !26
  %20 = or i64 %14, 3, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !43
  store i8 %12, i8* %21, align 1, !dbg !45, !tbaa !26
  %22 = add nuw nsw i64 %14, 4, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %23 = icmp eq i64 %22, 256, !dbg !48
  br i1 %23, label %24, label %13, !dbg !42, !llvm.loop !49

; <label>:24:                                     ; preds = %13
  %25 = icmp eq i8 %11, 0, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %25, label %26, label %28, !dbg !53

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !54
  br label %63, !dbg !55

; <label>:28:                                     ; preds = %24
  %29 = zext i8 %11 to i32, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  %30 = xor i8 %12, 1
  br label %31, !dbg !56

; <label>:31:                                     ; preds = %60, %28
  %32 = phi i8* [ %10, %28 ], [ %42, %60 ], !dbg !57
  %33 = phi i32 [ %29, %28 ], [ %61, %60 ], !dbg !61
  %34 = sext i32 %33 to i64, !dbg !63
  %35 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !63
  store i8 %30, i8* %35, align 1, !dbg !64, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br label %39, !dbg !63

; <label>:36:                                     ; preds = %53
  %37 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !65
  %38 = trunc i64 %55 to i32, !dbg !66
  br label %39, !dbg !66

; <label>:39:                                     ; preds = %36, %31
  %40 = phi i8* [ %32, %31 ], [ %37, %36 ], !dbg !61
  %41 = phi i32 [ %33, %31 ], [ %38, %36 ], !dbg !67
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !66
  %43 = load i8, i8* %40, align 1, !dbg !69, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  switch i8 %43, label %58 [
    i8 0, label %62
    i8 45, label %44
    i8 93, label %63
  ], !dbg !70

; <label>:44:                                     ; preds = %39
  %45 = load i8, i8* %42, align 1, !dbg !71, !tbaa !26
  %46 = icmp eq i8 %45, 93, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %46, label %60, label %47, !dbg !74

; <label>:47:                                     ; preds = %44
  %48 = zext i8 %45 to i32, !dbg !71
  %49 = icmp sgt i32 %41, %48, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %49, label %60, label %50, !dbg !76

; <label>:50:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  %51 = sext i32 %41 to i64, !dbg !77
  %52 = zext i8 %45 to i64, !dbg !77
  br label %53, !dbg !77

; <label>:53:                                     ; preds = %53, %50
  %54 = phi i64 [ %55, %53 ], [ %51, %50 ], !dbg !67
  %55 = add nsw i64 %54, 1, !dbg !78
  %56 = getelementptr inbounds i8, i8* %0, i64 %55, !dbg !79
  store i8 %30, i8* %56, align 1, !dbg !80, !tbaa !26
  %57 = icmp slt i64 %55, %52, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %57, label %53, label %36, !dbg !82, !llvm.loop !83

; <label>:58:                                     ; preds = %39
  %59 = zext i8 %43 to i32, !dbg !69
  br label %60, !dbg !85

; <label>:60:                                     ; preds = %44, %47, %58
  %61 = phi i32 [ %59, %58 ], [ 45, %47 ], [ 45, %44 ], !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %31, !dbg !88, !llvm.loop !89

; <label>:62:                                     ; preds = %39
  br label %63, !dbg !92

; <label>:63:                                     ; preds = %39, %62, %26
  %64 = phi i8* [ %27, %26 ], [ %40, %62 ], [ %42, %39 ], !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  ret i8* %64, !dbg !93
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__sccl", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !12, line: 87, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !21, !22}
!17 = !DILocalVariable(name: "tab", arg: 1, scope: !7, file: !1, line: 34, type: !14)
!18 = !DILocalVariable(name: "fmt", arg: 2, scope: !7, file: !1, line: 34, type: !10)
!19 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 38, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 38, type: !20)
!22 = !DILocalVariable(name: "v", scope: !7, file: !1, line: 38, type: !20)
!23 = !DILocation(line: 34, column: 1, scope: !7)
!24 = !DILocation(line: 41, column: 11, scope: !7)
!25 = !DILocation(line: 41, column: 7, scope: !7)
!26 = !{!27, !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 42, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!31 = !DILocation(line: 42, column: 7, scope: !7)
!32 = !DILocation(line: 38, column: 22, scope: !7)
!33 = !DILocation(line: 45, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 43, column: 5)
!35 = !DILocation(line: 45, column: 11, scope: !34)
!36 = !DILocation(line: 46, column: 5, scope: !34)
!37 = !DILocation(line: 0, scope: !7)
!38 = !DILocation(line: 38, column: 16, scope: !7)
!39 = !DILocation(line: 38, column: 19, scope: !7)
!40 = !DILocation(line: 50, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 3)
!42 = !DILocation(line: 50, column: 3, scope: !41)
!43 = !DILocation(line: 51, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 50, column: 3)
!45 = !DILocation(line: 51, column: 12, scope: !44)
!46 = !DILocation(line: 50, column: 25, scope: !44)
!47 = !DILocation(line: 50, column: 3, scope: !44)
!48 = !DILocation(line: 50, column: 17, scope: !44)
!49 = distinct !{!49, !42, !50}
!50 = !DILocation(line: 51, column: 14, scope: !41)
!51 = !DILocation(line: 52, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 7)
!53 = !DILocation(line: 52, column: 7, scope: !7)
!54 = !DILocation(line: 53, column: 16, scope: !52)
!55 = !DILocation(line: 53, column: 5, scope: !52)
!56 = !DILocation(line: 64, column: 3, scope: !7)
!57 = !DILocation(line: 0, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 65, column: 5)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 64, column: 3)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 3)
!61 = !DILocation(line: 0, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 70, column: 2)
!63 = !DILocation(line: 66, column: 7, scope: !58)
!64 = !DILocation(line: 66, column: 14, scope: !58)
!65 = !DILocation(line: 94, column: 7, scope: !62)
!66 = !DILocation(line: 68, column: 15, scope: !58)
!67 = !DILocation(line: 0, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 96, column: 6)
!69 = !DILocation(line: 68, column: 11, scope: !58)
!70 = !DILocation(line: 69, column: 7, scope: !58)
!71 = !DILocation(line: 88, column: 8, scope: !62)
!72 = !DILocation(line: 89, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !1, line: 89, column: 8)
!74 = !DILocation(line: 89, column: 17, scope: !73)
!75 = !DILocation(line: 89, column: 22, scope: !73)
!76 = !DILocation(line: 89, column: 8, scope: !62)
!77 = !DILocation(line: 95, column: 4, scope: !62)
!78 = !DILocation(line: 97, column: 12, scope: !68)
!79 = !DILocation(line: 97, column: 8, scope: !68)
!80 = !DILocation(line: 97, column: 17, scope: !68)
!81 = !DILocation(line: 99, column: 13, scope: !62)
!82 = !DILocation(line: 98, column: 6, scope: !68)
!83 = distinct !{!83, !77, !84}
!84 = !DILocation(line: 99, column: 16, scope: !62)
!85 = !DILocation(line: 123, column: 4, scope: !62)
!86 = !DILocation(line: 0, scope: !87)
!87 = distinct !DILexicalBlock(scope: !73, file: !1, line: 90, column: 6)
!88 = !DILocation(line: 64, column: 3, scope: !59)
!89 = distinct !{!89, !90, !91}
!90 = !DILocation(line: 64, column: 3, scope: !60)
!91 = !DILocation(line: 125, column: 5, scope: !60)
!92 = !DILocation(line: 0, scope: !52)
!93 = !DILocation(line: 127, column: 1, scope: !7)
