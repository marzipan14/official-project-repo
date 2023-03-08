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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %5, label %7, label %6, !dbg !48

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %8, !dbg !50

; <label>:7:                                      ; preds = %3
  store i8* null, i8** %1, align 8, !dbg !52, !tbaa !45
  br label %41, !dbg !54

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %15, %8 ]
  %10 = phi i8* [ %4, %6 ], [ %17, %8 ]
  %11 = tail call i64 @strlen(i8* nonnull %10) #3, !dbg !50
  %12 = add i64 %11, 1, !dbg !55
  %13 = load i64, i64* %2, align 8, !dbg !56, !tbaa !39
  %14 = add i64 %12, %13, !dbg !56
  store i64 %14, i64* %2, align 8, !dbg !56, !tbaa !39
  %15 = add nuw i64 %9, 1, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  %16 = getelementptr inbounds i8*, i8** %0, i64 %15, !dbg !58
  %17 = load i8*, i8** %16, align 8, !dbg !58, !tbaa !45
  %18 = icmp eq i8* %17, null, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %18, label %19, label %8, !dbg !49, !llvm.loop !59

; <label>:19:                                     ; preds = %8
  %20 = tail call i8* @malloc(i64 %14) #3, !dbg !61
  store i8* %20, i8** %1, align 8, !dbg !63, !tbaa !45
  %21 = icmp eq i8* %20, null, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %21, label %42, label %22, !dbg !64

; <label>:22:                                     ; preds = %19
  %23 = trunc i64 %15 to i32, !dbg !67
  %24 = icmp eq i32 %23, 0, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %24, label %41, label %25, !dbg !71

; <label>:25:                                     ; preds = %22
  %26 = and i64 %15, 4294967295
  br label %27, !dbg !72

; <label>:27:                                     ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %39, %27 ]
  %29 = phi i8* [ %20, %25 ], [ %38, %27 ]
  %30 = getelementptr inbounds i8*, i8** %0, i64 %28, !dbg !72
  %31 = load i8*, i8** %30, align 8, !dbg !72, !tbaa !45
  %32 = tail call i64 @strlen(i8* %31) #3, !dbg !74
  %33 = load i8*, i8** %30, align 8, !dbg !75, !tbaa !45
  %34 = shl i64 %32, 32, !dbg !76
  %35 = add i64 %34, 4294967296, !dbg !76
  %36 = ashr exact i64 %35, 32, !dbg !76
  %37 = tail call i8* @memcpy(i8* %29, i8* %33, i64 %36) #3, !dbg !77
  %38 = getelementptr inbounds i8, i8* %29, i64 %36, !dbg !78
  %39 = add nuw nsw i64 %28, 1, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %40 = icmp eq i64 %39, %26, !dbg !69
  br i1 %40, label %41, label %27, !dbg !71, !llvm.loop !81

; <label>:41:                                     ; preds = %27, %22, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %42, !dbg !84

; <label>:42:                                     ; preds = %41, %19
  %43 = phi i32 [ 12, %19 ], [ 0, %41 ], !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  ret i32 %43, !dbg !84
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
!49 = !DILocation(line: 32, column: 3, scope: !11)
!50 = !DILocation(line: 34, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !11, file: !1, line: 33, column: 5)
!52 = !DILocation(line: 28, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !44, file: !1, line: 27, column: 5)
!54 = !DILocation(line: 29, column: 7, scope: !53)
!55 = !DILocation(line: 34, column: 40, scope: !51)
!56 = !DILocation(line: 34, column: 17, scope: !51)
!57 = !DILocation(line: 35, column: 11, scope: !51)
!58 = !DILocation(line: 32, column: 10, scope: !11)
!59 = distinct !{!59, !49, !60}
!60 = !DILocation(line: 36, column: 5, scope: !11)
!61 = !DILocation(line: 39, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 6)
!63 = !DILocation(line: 39, column: 14, scope: !62)
!64 = !DILocation(line: 39, column: 6, scope: !11)
!65 = !DILocation(line: 0, scope: !66)
!66 = distinct !DILexicalBlock(scope: !11, file: !1, line: 43, column: 3)
!67 = !DILocation(line: 39, column: 31, scope: !62)
!68 = !DILocation(line: 22, column: 9, scope: !11)
!69 = !DILocation(line: 43, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 43, column: 3)
!71 = !DILocation(line: 43, column: 3, scope: !66)
!72 = !DILocation(line: 45, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 44, column: 5)
!74 = !DILocation(line: 45, column: 13, scope: !73)
!75 = !DILocation(line: 46, column: 20, scope: !73)
!76 = !DILocation(line: 46, column: 29, scope: !73)
!77 = !DILocation(line: 46, column: 7, scope: !73)
!78 = !DILocation(line: 47, column: 12, scope: !73)
!79 = !DILocation(line: 43, column: 25, scope: !70)
!80 = !DILocation(line: 43, column: 3, scope: !70)
!81 = distinct !{!81, !71, !82}
!82 = !DILocation(line: 48, column: 5, scope: !66)
!83 = !DILocation(line: 0, scope: !53)
!84 = !DILocation(line: 50, column: 1, scope: !11)
!85 = !DILocation(line: 0, scope: !62)
