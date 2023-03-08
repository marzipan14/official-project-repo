; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_create(i8** nocapture readonly, i8** nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !11 {
  store i64 0, i64* %2, align 8, !dbg !38, !tbaa !39
  %4 = load i8*, i8** %0, align 8, !dbg !43, !tbaa !45
  %5 = icmp eq i8* %4, null, !dbg !47
  br i1 %5, label %6, label %7, !dbg !48

; <label>:6:                                      ; preds = %3
  store i8* null, i8** %1, align 8, !dbg !49, !tbaa !45
  br label %40, !dbg !51

; <label>:7:                                      ; preds = %3, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %3 ]
  %9 = phi i8* [ %16, %7 ], [ %4, %3 ]
  %10 = tail call i64 @strlen(i8* nonnull %9) #3, !dbg !52
  %11 = add i64 %10, 1, !dbg !54
  %12 = load i64, i64* %2, align 8, !dbg !55, !tbaa !39
  %13 = add i64 %11, %12, !dbg !55
  store i64 %13, i64* %2, align 8, !dbg !55, !tbaa !39
  %14 = add nuw i64 %8, 1, !dbg !56
  %15 = getelementptr inbounds i8*, i8** %0, i64 %14, !dbg !57
  %16 = load i8*, i8** %15, align 8, !dbg !57, !tbaa !45
  %17 = icmp eq i8* %16, null, !dbg !58
  br i1 %17, label %18, label %7, !dbg !58, !llvm.loop !59

; <label>:18:                                     ; preds = %7
  %19 = tail call i8* @malloc(i64 %13) #3, !dbg !61
  store i8* %19, i8** %1, align 8, !dbg !63, !tbaa !45
  %20 = icmp eq i8* %19, null, !dbg !63
  br i1 %20, label %40, label %21, !dbg !64

; <label>:21:                                     ; preds = %18
  %22 = trunc i64 %14 to i32, !dbg !65
  %23 = icmp eq i32 %22, 0, !dbg !67
  br i1 %23, label %40, label %24, !dbg !70

; <label>:24:                                     ; preds = %21
  %25 = and i64 %14, 4294967295
  br label %26, !dbg !71

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %38, %26 ]
  %28 = phi i8* [ %19, %24 ], [ %37, %26 ]
  %29 = getelementptr inbounds i8*, i8** %0, i64 %27, !dbg !71
  %30 = load i8*, i8** %29, align 8, !dbg !71, !tbaa !45
  %31 = tail call i64 @strlen(i8* %30) #3, !dbg !73
  %32 = load i8*, i8** %29, align 8, !dbg !74, !tbaa !45
  %33 = shl i64 %31, 32, !dbg !75
  %34 = add i64 %33, 4294967296, !dbg !75
  %35 = ashr exact i64 %34, 32, !dbg !75
  %36 = tail call i8* @memcpy(i8* %28, i8* %32, i64 %35) #3, !dbg !76
  %37 = getelementptr inbounds i8, i8* %28, i64 %35, !dbg !77
  %38 = add nuw nsw i64 %27, 1, !dbg !78
  %39 = icmp eq i64 %38, %25, !dbg !67
  br i1 %39, label %40, label %26, !dbg !70, !llvm.loop !79

; <label>:40:                                     ; preds = %26, %21, %18, %6
  %41 = phi i32 [ 0, %6 ], [ 12, %18 ], [ 0, %21 ], [ 0, %26 ], !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  ret i32 %41, !dbg !82
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_create.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "argz_create", scope: !1, file: !1, line: 14, type: !12, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !15, line: 5, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 129, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30, !31, !32, !33}
!27 = !DILocalVariable(name: "argv", arg: 1, scope: !11, file: !1, line: 14, type: !17)
!28 = !DILocalVariable(name: "argz", arg: 2, scope: !11, file: !1, line: 14, type: !19)
!29 = !DILocalVariable(name: "argz_len", arg: 3, scope: !11, file: !1, line: 14, type: !20)
!30 = !DILocalVariable(name: "argc", scope: !11, file: !1, line: 19, type: !16)
!31 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 20, type: !16)
!32 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 21, type: !16)
!33 = !DILocalVariable(name: "iter", scope: !11, file: !1, line: 22, type: !5)
!34 = !DILocation(line: 14, column: 1, scope: !11)
!35 = !DILocation(line: 19, column: 7, scope: !11)
!36 = !DILocation(line: 20, column: 7, scope: !11)
!37 = !DILocation(line: 21, column: 7, scope: !11)
!38 = !DILocation(line: 24, column: 13, scope: !11)
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 26, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !11, file: !1, line: 26, column: 7)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !41, i64 0}
!47 = !DILocation(line: 26, column: 13, scope: !44)
!48 = !DILocation(line: 26, column: 7, scope: !11)
!49 = !DILocation(line: 28, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 27, column: 5)
!51 = !DILocation(line: 29, column: 7, scope: !50)
!52 = !DILocation(line: 34, column: 21, scope: !53)
!53 = distinct !DILexicalBlock(scope: !11, file: !1, line: 33, column: 5)
!54 = !DILocation(line: 34, column: 40, scope: !53)
!55 = !DILocation(line: 34, column: 17, scope: !53)
!56 = !DILocation(line: 35, column: 11, scope: !53)
!57 = !DILocation(line: 32, column: 10, scope: !11)
!58 = !DILocation(line: 32, column: 3, scope: !11)
!59 = distinct !{!59, !58, !60}
!60 = !DILocation(line: 36, column: 5, scope: !11)
!61 = !DILocation(line: 39, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 6)
!63 = !DILocation(line: 39, column: 14, scope: !62)
!64 = !DILocation(line: 39, column: 6, scope: !11)
!65 = !DILocation(line: 39, column: 31, scope: !62)
!66 = !DILocation(line: 22, column: 9, scope: !11)
!67 = !DILocation(line: 43, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 43, column: 3)
!69 = distinct !DILexicalBlock(scope: !11, file: !1, line: 43, column: 3)
!70 = !DILocation(line: 43, column: 3, scope: !69)
!71 = !DILocation(line: 45, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 44, column: 5)
!73 = !DILocation(line: 45, column: 13, scope: !72)
!74 = !DILocation(line: 46, column: 20, scope: !72)
!75 = !DILocation(line: 46, column: 29, scope: !72)
!76 = !DILocation(line: 46, column: 7, scope: !72)
!77 = !DILocation(line: 47, column: 12, scope: !72)
!78 = !DILocation(line: 43, column: 25, scope: !68)
!79 = distinct !{!79, !70, !80}
!80 = !DILocation(line: 48, column: 5, scope: !69)
!81 = !DILocation(line: 0, scope: !62)
!82 = !DILocation(line: 50, column: 1, scope: !11)
