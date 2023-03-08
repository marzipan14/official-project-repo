; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_add(i8** nocapture, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !11 {
  %4 = load i64, i64* %1, align 8, !dbg !34, !tbaa !35
  %5 = icmp eq i8* %2, null, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %5, label %19, label %6, !dbg !42

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @strlen(i8* nonnull %2) #3, !dbg !43
  %8 = shl i64 %7, 32, !dbg !44
  %9 = add i64 %8, 4294967296, !dbg !44
  %10 = ashr exact i64 %9, 32, !dbg !44
  %11 = load i64, i64* %1, align 8, !dbg !45, !tbaa !35
  %12 = add i64 %10, %11, !dbg !45
  store i64 %12, i64* %1, align 8, !dbg !45, !tbaa !35
  %13 = load i8*, i8** %0, align 8, !dbg !46, !tbaa !48
  %14 = tail call i8* @realloc(i8* %13, i64 %12) #3, !dbg !50
  store i8* %14, i8** %0, align 8, !dbg !51, !tbaa !48
  %15 = icmp eq i8* %14, null, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %15, label %19, label %16, !dbg !52

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %14, i64 %4, !dbg !53
  %18 = tail call i8* @memcpy(i8* nonnull %17, i8* nonnull %2, i64 %10) #3, !dbg !54
  br label %19, !dbg !55

; <label>:19:                                     ; preds = %6, %3, %16
  %20 = phi i32 [ 0, %16 ], [ 0, %3 ], [ 12, %6 ], !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret i32 %20, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "argz_add", scope: !1, file: !1, line: 14, type: !12, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !18, !24}
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
!26 = !{!27, !28, !29, !30, !31}
!27 = !DILocalVariable(name: "argz", arg: 1, scope: !11, file: !1, line: 14, type: !17)
!28 = !DILocalVariable(name: "argz_len", arg: 2, scope: !11, file: !1, line: 14, type: !18)
!29 = !DILocalVariable(name: "str", arg: 3, scope: !11, file: !1, line: 14, type: !24)
!30 = !DILocalVariable(name: "len_to_add", scope: !11, file: !1, line: 19, type: !16)
!31 = !DILocalVariable(name: "last", scope: !11, file: !1, line: 20, type: !19)
!32 = !DILocation(line: 14, column: 1, scope: !11)
!33 = !DILocation(line: 19, column: 7, scope: !11)
!34 = !DILocation(line: 20, column: 17, scope: !11)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 20, column: 10, scope: !11)
!40 = !DILocation(line: 22, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !11, file: !1, line: 22, column: 7)
!42 = !DILocation(line: 22, column: 7, scope: !11)
!43 = !DILocation(line: 25, column: 16, scope: !11)
!44 = !DILocation(line: 26, column: 16, scope: !11)
!45 = !DILocation(line: 26, column: 13, scope: !11)
!46 = !DILocation(line: 28, column: 32, scope: !47)
!47 = distinct !DILexicalBlock(scope: !11, file: !1, line: 28, column: 6)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !37, i64 0}
!50 = !DILocation(line: 28, column: 24, scope: !47)
!51 = !DILocation(line: 28, column: 14, scope: !47)
!52 = !DILocation(line: 28, column: 6, scope: !11)
!53 = !DILocation(line: 31, column: 16, scope: !11)
!54 = !DILocation(line: 31, column: 3, scope: !11)
!55 = !DILocation(line: 32, column: 3, scope: !11)
!56 = !DILocation(line: 0, scope: !47)
!57 = !DILocation(line: 0, scope: !41)
!58 = !DILocation(line: 33, column: 1, scope: !11)
