; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_insert.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_insert.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_insert(i8**, i64*, i8*, i8*) local_unnamed_addr #0 !dbg !11 {
  %5 = icmp eq i8* %2, null, !dbg !38
  br i1 %5, label %6, label %8, !dbg !40

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @argz_add(i8** %0, i64* %1, i8* %3) #3, !dbg !41
  br label %48, !dbg !42

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** %0, align 8, !dbg !43, !tbaa !45
  %10 = icmp ugt i8* %9, %2, !dbg !49
  %11 = ptrtoint i8* %9 to i64, !dbg !50
  br i1 %10, label %48, label %12, !dbg !50

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %1, align 8, !dbg !51, !tbaa !52
  %14 = getelementptr inbounds i8, i8* %9, i64 %13, !dbg !54
  %15 = icmp ugt i8* %14, %2, !dbg !55
  br i1 %15, label %16, label %48, !dbg !56

; <label>:16:                                     ; preds = %12, %19
  %17 = phi i8* [ %20, %19 ], [ %2, %12 ]
  %18 = icmp eq i8* %17, %9, !dbg !57
  br i1 %18, label %25, label %19, !dbg !58

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !59
  %21 = load i8, i8* %20, align 1, !dbg !59, !tbaa !60
  %22 = icmp eq i8 %21, 0, !dbg !58
  br i1 %22, label %23, label %16, !dbg !61, !llvm.loop !62

; <label>:23:                                     ; preds = %19
  %24 = ptrtoint i8* %17 to i64, !dbg !64
  br label %25, !dbg !61

; <label>:25:                                     ; preds = %16, %23
  %26 = phi i64 [ %24, %23 ], [ %11, %16 ], !dbg !64
  %27 = sub i64 %26, %11, !dbg !64
  %28 = tail call i64 @strlen(i8* %3) #3, !dbg !66
  %29 = load i8*, i8** %0, align 8, !dbg !67, !tbaa !45
  %30 = load i64, i64* %1, align 8, !dbg !69, !tbaa !52
  %31 = shl i64 %28, 32, !dbg !70
  %32 = add i64 %31, 4294967296, !dbg !70
  %33 = ashr exact i64 %32, 32, !dbg !70
  %34 = add i64 %33, %30, !dbg !71
  %35 = tail call i8* @realloc(i8* %29, i64 %34) #3, !dbg !72
  store i8* %35, i8** %0, align 8, !dbg !73, !tbaa !45
  %36 = icmp eq i8* %35, null, !dbg !73
  br i1 %36, label %48, label %37, !dbg !74

; <label>:37:                                     ; preds = %25
  %38 = getelementptr inbounds i8, i8* %35, i64 %27, !dbg !75
  %39 = getelementptr inbounds i8, i8* %38, i64 %33, !dbg !76
  %40 = load i64, i64* %1, align 8, !dbg !77, !tbaa !52
  %41 = sub i64 %40, %27, !dbg !78
  %42 = tail call i8* @memmove(i8* nonnull %39, i8* nonnull %38, i64 %41) #3, !dbg !79
  %43 = load i8*, i8** %0, align 8, !dbg !80, !tbaa !45
  %44 = getelementptr inbounds i8, i8* %43, i64 %27, !dbg !81
  %45 = tail call i8* @memcpy(i8* %44, i8* %3, i64 %33) #3, !dbg !82
  %46 = load i64, i64* %1, align 8, !dbg !83, !tbaa !52
  %47 = add i64 %46, %33, !dbg !83
  store i64 %47, i64* %1, align 8, !dbg !83, !tbaa !52
  br label %48, !dbg !84

; <label>:48:                                     ; preds = %25, %8, %12, %37, %6
  %49 = phi i32 [ %7, %6 ], [ 0, %37 ], [ 22, %12 ], [ 22, %8 ], [ 12, %25 ], !dbg !85
  ret i32 %49, !dbg !86
}

; Function Attrs: noredzone
declare dso_local i32 @argz_add(i8**, i64*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_insert.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "argz_insert", scope: !1, file: !1, line: 16, type: !12, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !18, !5, !24}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !15, line: 5, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !22, line: 129, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DILocalVariable(name: "argz", arg: 1, scope: !11, file: !1, line: 16, type: !17)
!28 = !DILocalVariable(name: "argz_len", arg: 2, scope: !11, file: !1, line: 16, type: !18)
!29 = !DILocalVariable(name: "before", arg: 3, scope: !11, file: !1, line: 16, type: !5)
!30 = !DILocalVariable(name: "entry", arg: 4, scope: !11, file: !1, line: 16, type: !24)
!31 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 22, type: !16)
!32 = !DILocalVariable(name: "delta", scope: !11, file: !1, line: 23, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !34, line: 49, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!36 = !DILocation(line: 16, column: 1, scope: !11)
!37 = !DILocation(line: 22, column: 7, scope: !11)
!38 = !DILocation(line: 25, column: 14, scope: !39)
!39 = distinct !DILexicalBlock(scope: !11, file: !1, line: 25, column: 7)
!40 = !DILocation(line: 25, column: 7, scope: !11)
!41 = !DILocation(line: 26, column: 12, scope: !39)
!42 = !DILocation(line: 26, column: 5, scope: !39)
!43 = !DILocation(line: 28, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !11, file: !1, line: 28, column: 7)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 28, column: 14, scope: !44)
!50 = !DILocation(line: 28, column: 22, scope: !44)
!51 = !DILocation(line: 28, column: 43, scope: !44)
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !47, i64 0}
!54 = !DILocation(line: 28, column: 41, scope: !44)
!55 = !DILocation(line: 28, column: 32, scope: !44)
!56 = !DILocation(line: 28, column: 7, scope: !11)
!57 = !DILocation(line: 31, column: 17, scope: !11)
!58 = !DILocation(line: 31, column: 26, scope: !11)
!59 = !DILocation(line: 31, column: 29, scope: !11)
!60 = !{!47, !47, i64 0}
!61 = !DILocation(line: 31, column: 3, scope: !11)
!62 = distinct !{!62, !61, !63}
!63 = !DILocation(line: 32, column: 11, scope: !11)
!64 = !DILocation(line: 35, column: 18, scope: !11)
!65 = !DILocation(line: 23, column: 13, scope: !11)
!66 = !DILocation(line: 37, column: 9, scope: !11)
!67 = !DILocation(line: 39, column: 32, scope: !68)
!68 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 6)
!69 = !DILocation(line: 39, column: 39, scope: !68)
!70 = !DILocation(line: 39, column: 51, scope: !68)
!71 = !DILocation(line: 39, column: 49, scope: !68)
!72 = !DILocation(line: 39, column: 24, scope: !68)
!73 = !DILocation(line: 39, column: 14, scope: !68)
!74 = !DILocation(line: 39, column: 6, scope: !11)
!75 = !DILocation(line: 42, column: 17, scope: !11)
!76 = !DILocation(line: 42, column: 25, scope: !11)
!77 = !DILocation(line: 42, column: 48, scope: !11)
!78 = !DILocation(line: 42, column: 58, scope: !11)
!79 = !DILocation(line: 42, column: 3, scope: !11)
!80 = !DILocation(line: 43, column: 10, scope: !11)
!81 = !DILocation(line: 43, column: 16, scope: !11)
!82 = !DILocation(line: 43, column: 3, scope: !11)
!83 = !DILocation(line: 45, column: 13, scope: !11)
!84 = !DILocation(line: 47, column: 3, scope: !11)
!85 = !DILocation(line: 0, scope: !68)
!86 = !DILocation(line: 48, column: 1, scope: !11)
