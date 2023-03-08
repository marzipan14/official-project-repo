; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_buf_findstr(i8* nocapture readonly, i8** nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  %4 = load i64, i64* %2, align 8, !dbg !35, !tbaa !37
  %5 = icmp eq i64 %4, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %5, label %6, label %7, !dbg !42

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br label %43, !dbg !43

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %0, align 1, !tbaa !44
  %9 = load i8*, i8** %1, align 8, !tbaa !45
  %10 = icmp eq i8 %8, 0
  br label %11, !dbg !42

; <label>:11:                                     ; preds = %7, %37
  %12 = phi i64 [ 0, %7 ], [ %38, %37 ]
  %13 = getelementptr inbounds i8, i8* %9, i64 %12, !dbg !47
  %14 = load i8, i8* %13, align 1, !dbg !47, !tbaa !44
  %15 = icmp eq i8 %8, %14, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %15, label %16, label %37, !dbg !51

; <label>:16:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %10, label %32, label %17, !dbg !54

; <label>:17:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br label %18, !dbg !52

; <label>:18:                                     ; preds = %17, %27
  %19 = phi i64 [ %12, %17 ], [ %20, %27 ]
  %20 = add nuw i64 %19, 1, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  %21 = sub i64 %20, %12, !dbg !56
  %22 = shl i64 %21, 32, !dbg !57
  %23 = ashr exact i64 %22, 32, !dbg !57
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !57
  %25 = load i8, i8* %24, align 1, !dbg !57, !tbaa !44
  %26 = icmp eq i8 %25, 0, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %26, label %32, label %27, !dbg !54, !llvm.loop !58

; <label>:27:                                     ; preds = %18
  %28 = getelementptr inbounds i8, i8* %9, i64 %20
  %29 = load i8, i8* %28, align 1, !dbg !59, !tbaa !44
  %30 = icmp eq i8 %25, %29, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %30, label %18, label %31, !dbg !52

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %37

; <label>:32:                                     ; preds = %16, %18
  %33 = phi i64 [ %20, %18 ], [ %12, %16 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  %34 = and i64 %33, 4294967295, !dbg !62
  %35 = getelementptr inbounds i8, i8* %9, i64 %34, !dbg !62
  store i8* %35, i8** %1, align 8, !dbg !62, !tbaa !45
  %36 = sub i64 %4, %34, !dbg !65
  store i64 %36, i64* %2, align 8, !dbg !65, !tbaa !37
  br label %47, !dbg !66

; <label>:37:                                     ; preds = %31, %11
  %38 = add nuw i64 %12, 1, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  %39 = icmp ugt i64 %4, %38, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %39, label %11, label %40, !dbg !42, !llvm.loop !69

; <label>:40:                                     ; preds = %37
  %41 = and i64 %38, 4294967295, !dbg !71
  %42 = icmp eq i64 %4, %41, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %42, label %43, label %47, !dbg !43

; <label>:43:                                     ; preds = %6, %40
  %44 = phi i64 [ 0, %6 ], [ %41, %40 ]
  %45 = load i8*, i8** %1, align 8, !dbg !74, !tbaa !45
  %46 = getelementptr inbounds i8, i8* %45, i64 %44, !dbg !74
  store i8* %46, i8** %1, align 8, !dbg !74, !tbaa !45
  store i64 0, i64* %2, align 8, !dbg !76, !tbaa !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br label %47, !dbg !77

; <label>:47:                                     ; preds = %40, %43, %32
  %48 = phi i32 [ 1, %32 ], [ 0, %43 ], [ 0, %40 ], !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  ret i32 %48, !dbg !80
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/buf_findstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_buf_findstr", scope: !1, file: !1, line: 17, type: !8, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14, !16}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 40, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !7, file: !1, line: 17, type: !11)
!24 = !DILocalVariable(name: "buf", arg: 2, scope: !7, file: !1, line: 17, type: !14)
!25 = !DILocalVariable(name: "buf_len", arg: 3, scope: !7, file: !1, line: 17, type: !16)
!26 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 19, type: !10)
!27 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 20, type: !10)
!28 = !DILocation(line: 17, column: 26, scope: !7)
!29 = !DILocation(line: 17, column: 38, scope: !7)
!30 = !DILocation(line: 17, column: 51, scope: !7)
!31 = !DILocation(line: 19, column: 7, scope: !7)
!32 = !DILocation(line: 20, column: 7, scope: !7)
!33 = !DILocation(line: 22, column: 8, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 3)
!35 = !DILocation(line: 22, column: 19, scope: !36)
!36 = distinct !DILexicalBlock(scope: !34, file: !1, line: 22, column: 3)
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 22, column: 17, scope: !36)
!42 = !DILocation(line: 22, column: 3, scope: !34)
!43 = !DILocation(line: 37, column: 7, scope: !7)
!44 = !{!39, !39, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !39, i64 0}
!47 = !DILocation(line: 24, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 24, column: 11)
!49 = distinct !DILexicalBlock(scope: !36, file: !1, line: 23, column: 5)
!50 = !DILocation(line: 24, column: 18, scope: !48)
!51 = !DILocation(line: 24, column: 11, scope: !49)
!52 = !DILocation(line: 27, column: 11, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 9)
!54 = !DILocation(line: 27, column: 29, scope: !53)
!55 = !DILocation(line: 27, column: 60, scope: !53)
!56 = !DILocation(line: 27, column: 24, scope: !53)
!57 = !DILocation(line: 27, column: 18, scope: !53)
!58 = distinct !{!58, !52, !55}
!59 = !DILocation(line: 27, column: 47, scope: !53)
!60 = !DILocation(line: 27, column: 44, scope: !53)
!61 = !DILocation(line: 28, column: 14, scope: !53)
!62 = !DILocation(line: 30, column: 20, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 29, column: 13)
!64 = distinct !DILexicalBlock(scope: !53, file: !1, line: 28, column: 14)
!65 = !DILocation(line: 31, column: 24, scope: !63)
!66 = !DILocation(line: 32, column: 15, scope: !63)
!67 = !DILocation(line: 22, column: 30, scope: !36)
!68 = !DILocation(line: 22, column: 3, scope: !36)
!69 = distinct !{!69, !42, !70}
!70 = !DILocation(line: 35, column: 5, scope: !34)
!71 = !DILocation(line: 22, column: 15, scope: !36)
!72 = !DILocation(line: 37, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 7)
!74 = !DILocation(line: 39, column: 12, scope: !75)
!75 = distinct !DILexicalBlock(scope: !73, file: !1, line: 38, column: 5)
!76 = !DILocation(line: 40, column: 16, scope: !75)
!77 = !DILocation(line: 41, column: 5, scope: !75)
!78 = !DILocation(line: 0, scope: !7)
!79 = !DILocation(line: 0, scope: !63)
!80 = !DILocation(line: 44, column: 1, scope: !7)
