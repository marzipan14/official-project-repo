; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strlcat(i8*, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  %4 = icmp eq i64 %2, 0, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %4, label %14, label %5, !dbg !33

; <label>:5:                                      ; preds = %3, %11
  %6 = phi i64 [ %8, %11 ], [ %2, %3 ]
  %7 = phi i8* [ %12, %11 ], [ %0, %3 ]
  %8 = add i64 %6, -1, !dbg !34
  %9 = load i8, i8* %7, align 1, !dbg !35, !tbaa !36
  %10 = icmp eq i8 %9, 0, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %10, label %16, label %11, !dbg !31

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  %13 = icmp eq i64 %8, 0, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %13, label %14, label %5, !dbg !33, !llvm.loop !41

; <label>:14:                                     ; preds = %11, %3
  %15 = phi i8* [ %0, %3 ], [ %12, %11 ], !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br label %16

; <label>:16:                                     ; preds = %5, %14
  %17 = phi i8* [ %15, %14 ], [ %7, %5 ]
  %18 = ptrtoint i8* %17 to i64, !dbg !43
  %19 = ptrtoint i8* %0 to i64, !dbg !43
  %20 = sub i64 %18, %19, !dbg !43
  %21 = sub i64 %2, %20, !dbg !45
  %22 = icmp eq i64 %21, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %22, label %26, label %23, !dbg !48

; <label>:23:                                     ; preds = %16
  %24 = load i8, i8* %1, align 1, !dbg !49, !tbaa !36
  %25 = icmp eq i8 %24, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %25, label %43, label %28, !dbg !51

; <label>:26:                                     ; preds = %16
  %27 = tail call i64 @strlen(i8* %1) #3, !dbg !52
  br label %49, !dbg !53

; <label>:28:                                     ; preds = %23, %37
  %29 = phi i8 [ %41, %37 ], [ %24, %23 ]
  %30 = phi i64 [ %39, %37 ], [ %21, %23 ]
  %31 = phi i8* [ %40, %37 ], [ %1, %23 ]
  %32 = phi i8* [ %38, %37 ], [ %17, %23 ]
  %33 = icmp eq i64 %30, 1, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %33, label %37, label %34, !dbg !57

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !58
  store i8 %29, i8* %32, align 1, !dbg !60, !tbaa !36
  %36 = add i64 %30, -1, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %37, !dbg !62

; <label>:37:                                     ; preds = %28, %34
  %38 = phi i8* [ %35, %34 ], [ %32, %28 ], !dbg !42
  %39 = phi i64 [ %36, %34 ], [ 1, %28 ], !dbg !42
  %40 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  %41 = load i8, i8* %40, align 1, !dbg !49, !tbaa !36
  %42 = icmp eq i8 %41, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %42, label %43, label %28, !dbg !51, !llvm.loop !64

; <label>:43:                                     ; preds = %37, %23
  %44 = phi i8* [ %17, %23 ], [ %38, %37 ], !dbg !66
  %45 = phi i8* [ %1, %23 ], [ %40, %37 ], !dbg !67
  store i8 0, i8* %44, align 1, !dbg !68, !tbaa !36
  %46 = ptrtoint i8* %45 to i64, !dbg !69
  %47 = ptrtoint i8* %1 to i64, !dbg !69
  %48 = sub i64 %46, %47, !dbg !69
  br label %49, !dbg !70

; <label>:49:                                     ; preds = %43, %26
  %50 = phi i64 [ %27, %26 ], [ %48, %43 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %51 = add i64 %50, %20, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  ret i64 %51, !dbg !72
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlcat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strlcat", scope: !1, file: !1, line: 45, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !17, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 45, type: !15)
!21 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 45, type: !17)
!22 = !DILocalVariable(name: "siz", arg: 3, scope: !7, file: !1, line: 45, type: !10)
!23 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 50, type: !15)
!24 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 51, type: !17)
!25 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 52, type: !10)
!26 = !DILocalVariable(name: "dlen", scope: !7, file: !1, line: 53, type: !10)
!27 = !DILocation(line: 45, column: 1, scope: !7)
!28 = !DILocation(line: 50, column: 24, scope: !7)
!29 = !DILocation(line: 51, column: 30, scope: !7)
!30 = !DILocation(line: 52, column: 25, scope: !7)
!31 = !DILocation(line: 56, column: 9, scope: !7)
!32 = !DILocation(line: 56, column: 20, scope: !7)
!33 = !DILocation(line: 56, column: 25, scope: !7)
!34 = !DILocation(line: 56, column: 17, scope: !7)
!35 = !DILocation(line: 56, column: 28, scope: !7)
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 56, column: 31, scope: !7)
!40 = !DILocation(line: 57, column: 18, scope: !7)
!41 = distinct !{!41, !31, !40}
!42 = !DILocation(line: 0, scope: !7)
!43 = !DILocation(line: 58, column: 18, scope: !7)
!44 = !DILocation(line: 53, column: 16, scope: !7)
!45 = !DILocation(line: 59, column: 17, scope: !7)
!46 = !DILocation(line: 61, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 13)
!48 = !DILocation(line: 61, column: 13, scope: !7)
!49 = !DILocation(line: 63, column: 16, scope: !7)
!50 = !DILocation(line: 63, column: 19, scope: !7)
!51 = !DILocation(line: 63, column: 9, scope: !7)
!52 = !DILocation(line: 62, column: 31, scope: !47)
!53 = !DILocation(line: 62, column: 17, scope: !47)
!54 = !DILocation(line: 64, column: 23, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 64, column: 21)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 28)
!57 = !DILocation(line: 64, column: 21, scope: !56)
!58 = !DILocation(line: 65, column: 27, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 64, column: 29)
!60 = !DILocation(line: 65, column: 30, scope: !59)
!61 = !DILocation(line: 66, column: 26, scope: !59)
!62 = !DILocation(line: 67, column: 17, scope: !59)
!63 = !DILocation(line: 68, column: 18, scope: !56)
!64 = distinct !{!64, !51, !65}
!65 = !DILocation(line: 69, column: 9, scope: !7)
!66 = !DILocation(line: 0, scope: !59)
!67 = !DILocation(line: 0, scope: !56)
!68 = !DILocation(line: 70, column: 12, scope: !7)
!69 = !DILocation(line: 72, column: 26, scope: !7)
!70 = !DILocation(line: 72, column: 9, scope: !7)
!71 = !DILocation(line: 0, scope: !47)
!72 = !DILocation(line: 73, column: 1, scope: !7)
