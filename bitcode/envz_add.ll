; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_add.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_add.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @envz_add(i8**, i64*, i8*, i8*) local_unnamed_addr #0 !dbg !10 {
  tail call void @envz_remove(i8** %0, i64* %1, i8* %2) #3, !dbg !39
  %5 = icmp eq i8* %3, null, !dbg !40
  br i1 %5, label %26, label %6, !dbg !42

; <label>:6:                                      ; preds = %4
  %7 = tail call i64 @strlen(i8* %2) #3, !dbg !43
  %8 = tail call i64 @strlen(i8* nonnull %3) #3, !dbg !45
  %9 = add i64 %8, %7, !dbg !46
  %10 = shl i64 %9, 32, !dbg !48
  %11 = add i64 %10, 8589934592, !dbg !48
  %12 = ashr exact i64 %11, 32, !dbg !48
  %13 = tail call i8* @malloc(i64 %12) #3, !dbg !49
  %14 = icmp eq i8* %13, null, !dbg !50
  br i1 %14, label %28, label %15, !dbg !51

; <label>:15:                                     ; preds = %6
  %16 = shl i64 %7, 32, !dbg !52
  %17 = ashr exact i64 %16, 32, !dbg !52
  %18 = tail call i8* @memcpy(i8* nonnull %13, i8* %2, i64 %17) #3, !dbg !53
  %19 = getelementptr inbounds i8, i8* %13, i64 %17, !dbg !54
  store i8 61, i8* %19, align 1, !dbg !55, !tbaa !56
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !59
  %21 = shl i64 %8, 32, !dbg !60
  %22 = add i64 %21, 4294967296, !dbg !60
  %23 = ashr exact i64 %22, 32, !dbg !60
  %24 = tail call i8* @memcpy(i8* nonnull %20, i8* nonnull %3, i64 %23) #3, !dbg !61
  %25 = tail call i32 @argz_add(i8** %0, i64* %1, i8* nonnull %13) #3, !dbg !62
  tail call void @free(i8* nonnull %13) #3, !dbg !63
  br label %28, !dbg !64

; <label>:26:                                     ; preds = %4
  %27 = tail call i32 @argz_add(i8** %0, i64* %1, i8* %2) #3, !dbg !65
  br label %28

; <label>:28:                                     ; preds = %15, %26, %6
  %29 = phi i32 [ 12, %6 ], [ %25, %15 ], [ %27, %26 ], !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  ret i32 %29, !dbg !68
}

; Function Attrs: noredzone
declare dso_local void @envz_remove(i8**, i64*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @argz_add(i8**, i64*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_add.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_add", scope: !1, file: !1, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !23, !23}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !14, line: 5, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33}
!26 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 15, type: !16)
!27 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 15, type: !17)
!28 = !DILocalVariable(name: "name", arg: 3, scope: !10, file: !1, line: 15, type: !23)
!29 = !DILocalVariable(name: "value", arg: 4, scope: !10, file: !1, line: 15, type: !23)
!30 = !DILocalVariable(name: "concat", scope: !10, file: !1, line: 21, type: !4)
!31 = !DILocalVariable(name: "name_len", scope: !10, file: !1, line: 22, type: !15)
!32 = !DILocalVariable(name: "val_len", scope: !10, file: !1, line: 23, type: !15)
!33 = !DILocalVariable(name: "retval", scope: !10, file: !1, line: 24, type: !15)
!34 = !DILocation(line: 15, column: 1, scope: !10)
!35 = !DILocation(line: 21, column: 9, scope: !10)
!36 = !DILocation(line: 22, column: 7, scope: !10)
!37 = !DILocation(line: 23, column: 7, scope: !10)
!38 = !DILocation(line: 24, column: 7, scope: !10)
!39 = !DILocation(line: 26, column: 3, scope: !10)
!40 = !DILocation(line: 28, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !10, file: !1, line: 28, column: 7)
!42 = !DILocation(line: 28, column: 7, scope: !10)
!43 = !DILocation(line: 30, column: 18, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 29, column: 5)
!45 = !DILocation(line: 31, column: 17, scope: !44)
!46 = !DILocation(line: 32, column: 46, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 32, column: 10)
!48 = !DILocation(line: 32, column: 37, scope: !47)
!49 = !DILocation(line: 32, column: 30, scope: !47)
!50 = !DILocation(line: 32, column: 19, scope: !47)
!51 = !DILocation(line: 32, column: 10, scope: !44)
!52 = !DILocation(line: 35, column: 28, scope: !44)
!53 = !DILocation(line: 35, column: 7, scope: !44)
!54 = !DILocation(line: 36, column: 7, scope: !44)
!55 = !DILocation(line: 36, column: 24, scope: !44)
!56 = !{!57, !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 37, column: 32, scope: !44)
!60 = !DILocation(line: 37, column: 44, scope: !44)
!61 = !DILocation(line: 37, column: 7, scope: !44)
!62 = !DILocation(line: 39, column: 16, scope: !44)
!63 = !DILocation(line: 40, column: 7, scope: !44)
!64 = !DILocation(line: 41, column: 5, scope: !44)
!65 = !DILocation(line: 44, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !41, file: !1, line: 43, column: 5)
!67 = !DILocation(line: 0, scope: !47)
!68 = !DILocation(line: 47, column: 1, scope: !10)
