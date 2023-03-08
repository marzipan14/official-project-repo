; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_delete.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_delete.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_delete(i8** nocapture, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !10 {
  %4 = icmp eq i8* %2, null, !dbg !32
  br i1 %4, label %27, label %5, !dbg !34

; <label>:5:                                      ; preds = %3
  %6 = tail call i64 @strlen(i8* nonnull %2) #3, !dbg !35
  %7 = shl i64 %6, 32, !dbg !37
  %8 = add i64 %7, 4294967296, !dbg !37
  %9 = ashr exact i64 %8, 32, !dbg !37
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !37
  %11 = load i8*, i8** %0, align 8, !dbg !38, !tbaa !39
  %12 = load i64, i64* %1, align 8, !dbg !43, !tbaa !44
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !46
  %14 = ptrtoint i8* %13 to i64, !dbg !47
  %15 = ptrtoint i8* %10 to i64, !dbg !47
  %16 = sub i64 %14, %15, !dbg !47
  %17 = tail call i8* @memmove(i8* nonnull %2, i8* nonnull %10, i64 %16) #3, !dbg !48
  %18 = load i64, i64* %1, align 8, !dbg !49, !tbaa !44
  %19 = sub i64 %18, %9, !dbg !49
  store i64 %19, i64* %1, align 8, !dbg !49, !tbaa !44
  %20 = load i8*, i8** %0, align 8, !dbg !50, !tbaa !39
  %21 = tail call i8* @realloc(i8* %20, i64 %19) #3, !dbg !52
  store i8* %21, i8** %0, align 8, !dbg !53, !tbaa !39
  %22 = icmp eq i8* %21, null, !dbg !53
  br i1 %22, label %27, label %23, !dbg !54

; <label>:23:                                     ; preds = %5
  %24 = load i64, i64* %1, align 8, !dbg !55, !tbaa !44
  %25 = icmp eq i64 %24, 0, !dbg !57
  br i1 %25, label %26, label %27, !dbg !58

; <label>:26:                                     ; preds = %23
  tail call void @free(i8* nonnull %21) #3, !dbg !59
  store i8* null, i8** %0, align 8, !dbg !61, !tbaa !39
  br label %27, !dbg !62

; <label>:27:                                     ; preds = %26, %23, %3, %5
  %28 = phi i32 [ 12, %5 ], [ 0, %3 ], [ 0, %23 ], [ 0, %26 ], !dbg !63
  ret i32 %28, !dbg !64
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_delete.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_delete", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !4}
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
!23 = !{!24, !25, !26, !27, !28}
!24 = !DILocalVariable(name: "argz", arg: 1, scope: !10, file: !1, line: 14, type: !16)
!25 = !DILocalVariable(name: "argz_len", arg: 2, scope: !10, file: !1, line: 14, type: !17)
!26 = !DILocalVariable(name: "entry", arg: 3, scope: !10, file: !1, line: 14, type: !4)
!27 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 19, type: !15)
!28 = !DILocalVariable(name: "moveto", scope: !10, file: !1, line: 20, type: !4)
!29 = !DILocation(line: 14, column: 1, scope: !10)
!30 = !DILocation(line: 19, column: 7, scope: !10)
!31 = !DILocation(line: 20, column: 9, scope: !10)
!32 = !DILocation(line: 22, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 22, column: 7)
!34 = !DILocation(line: 22, column: 7, scope: !10)
!35 = !DILocation(line: 24, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 23, column: 5)
!37 = !DILocation(line: 25, column: 13, scope: !36)
!38 = !DILocation(line: 27, column: 30, scope: !36)
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 27, column: 38, scope: !36)
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !41, i64 0}
!46 = !DILocation(line: 27, column: 36, scope: !36)
!47 = !DILocation(line: 27, column: 48, scope: !36)
!48 = !DILocation(line: 27, column: 7, scope: !36)
!49 = !DILocation(line: 29, column: 17, scope: !36)
!50 = !DILocation(line: 31, column: 36, scope: !51)
!51 = distinct !DILexicalBlock(scope: !36, file: !1, line: 31, column: 10)
!52 = !DILocation(line: 31, column: 28, scope: !51)
!53 = !DILocation(line: 31, column: 18, scope: !51)
!54 = !DILocation(line: 31, column: 10, scope: !36)
!55 = !DILocation(line: 34, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !36, file: !1, line: 34, column: 11)
!57 = !DILocation(line: 34, column: 21, scope: !56)
!58 = !DILocation(line: 34, column: 11, scope: !36)
!59 = !DILocation(line: 36, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 35, column: 9)
!61 = !DILocation(line: 37, column: 17, scope: !60)
!62 = !DILocation(line: 38, column: 9, scope: !60)
!63 = !DILocation(line: 0, scope: !51)
!64 = !DILocation(line: 41, column: 1, scope: !10)
