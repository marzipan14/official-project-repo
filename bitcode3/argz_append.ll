; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_append.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_append.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_append(i8** nocapture, i64* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !10 {
  %5 = icmp eq i64 %3, 0, !dbg !34
  br i1 %5, label %15, label %6, !dbg !35

; <label>:6:                                      ; preds = %4
  %7 = load i64, i64* %1, align 8, !dbg !36, !tbaa !37
  %8 = add i64 %7, %3, !dbg !42
  store i64 %8, i64* %1, align 8, !dbg !42, !tbaa !37
  %9 = load i8*, i8** %0, align 8, !dbg !43, !tbaa !45
  %10 = tail call i8* @realloc(i8* %9, i64 %8) #3, !dbg !47
  store i8* %10, i8** %0, align 8, !dbg !48, !tbaa !45
  %11 = icmp eq i8* %10, null, !dbg !48
  br i1 %11, label %15, label %12, !dbg !49

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %10, i64 %7, !dbg !50
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* %2, i64 %3) #3, !dbg !51
  br label %15

; <label>:15:                                     ; preds = %4, %12, %6
  %16 = phi i32 [ 12, %6 ], [ 0, %12 ], [ 0, %4 ]
  ret i32 %16, !dbg !52
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_append.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_append", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !23, !18}
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
!25 = !{!26, !27, !28, !29, !30}
!26 = !DILocalVariable(name: "argz", arg: 1, scope: !10, file: !1, line: 14, type: !16)
!27 = !DILocalVariable(name: "argz_len", arg: 2, scope: !10, file: !1, line: 14, type: !17)
!28 = !DILocalVariable(name: "buf", arg: 3, scope: !10, file: !1, line: 14, type: !23)
!29 = !DILocalVariable(name: "buf_len", arg: 4, scope: !10, file: !1, line: 14, type: !18)
!30 = !DILocalVariable(name: "last", scope: !31, file: !1, line: 22, type: !18)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 21, column: 5)
!32 = distinct !DILexicalBlock(scope: !10, file: !1, line: 20, column: 7)
!33 = !DILocation(line: 14, column: 1, scope: !10)
!34 = !DILocation(line: 20, column: 7, scope: !32)
!35 = !DILocation(line: 20, column: 7, scope: !10)
!36 = !DILocation(line: 22, column: 21, scope: !31)
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 22, column: 14, scope: !31)
!42 = !DILocation(line: 24, column: 17, scope: !31)
!43 = !DILocation(line: 26, column: 36, scope: !44)
!44 = distinct !DILexicalBlock(scope: !31, file: !1, line: 26, column: 10)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !39, i64 0}
!47 = !DILocation(line: 26, column: 28, scope: !44)
!48 = !DILocation(line: 26, column: 18, scope: !44)
!49 = !DILocation(line: 26, column: 10, scope: !31)
!50 = !DILocation(line: 29, column: 20, scope: !31)
!51 = !DILocation(line: 29, column: 7, scope: !31)
!52 = !DILocation(line: 32, column: 1, scope: !10)
