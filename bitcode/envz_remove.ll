; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_remove.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_remove.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @envz_remove(i8** nocapture, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !10 {
  %4 = load i8*, i8** %0, align 8, !dbg !32, !tbaa !33
  %5 = load i64, i64* %1, align 8, !dbg !37, !tbaa !38
  %6 = tail call i8* @envz_entry(i8* %4, i64 %5, i8* %2) #3, !dbg !40
  %7 = icmp eq i8* %6, null, !dbg !41
  br i1 %7, label %34, label %8, !dbg !43

; <label>:8:                                      ; preds = %3
  %9 = tail call i64 @strlen(i8* nonnull %6) #3, !dbg !44
  %10 = load i8*, i8** %0, align 8, !dbg !46, !tbaa !33
  %11 = load i64, i64* %1, align 8, !dbg !48, !tbaa !38
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !49
  %13 = shl i64 %9, 32, !dbg !50
  %14 = add i64 %13, 4294967296, !dbg !50
  %15 = ashr exact i64 %14, 32, !dbg !50
  %16 = getelementptr inbounds i8, i8* %6, i64 %15, !dbg !50
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !51
  %18 = icmp eq i8* %12, %17, !dbg !52
  br i1 %18, label %27, label %19, !dbg !53

; <label>:19:                                     ; preds = %8
  %20 = ptrtoint i8* %12 to i64, !dbg !54
  %21 = ptrtoint i8* %6 to i64, !dbg !54
  %22 = add i64 %15, %21, !dbg !54
  %23 = sub i64 %20, %22, !dbg !56
  %24 = tail call i8* @memmove(i8* nonnull %6, i8* nonnull %16, i64 %23) #3, !dbg !57
  %25 = load i8*, i8** %0, align 8, !dbg !58, !tbaa !33
  %26 = load i64, i64* %1, align 8, !dbg !59, !tbaa !38
  br label %27, !dbg !60

; <label>:27:                                     ; preds = %8, %19
  %28 = phi i64 [ %11, %8 ], [ %26, %19 ], !dbg !59
  %29 = phi i8* [ %10, %8 ], [ %25, %19 ], !dbg !58
  %30 = sub i64 %28, %15, !dbg !61
  %31 = tail call i8* @realloc(i8* %29, i64 %30) #3, !dbg !62
  store i8* %31, i8** %0, align 8, !dbg !63, !tbaa !33
  %32 = load i64, i64* %1, align 8, !dbg !64, !tbaa !38
  %33 = sub i64 %32, %15, !dbg !64
  store i64 %33, i64* %1, align 8, !dbg !64, !tbaa !38
  br label %34, !dbg !65

; <label>:34:                                     ; preds = %3, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret void, !dbg !66
}

; Function Attrs: noredzone
declare dso_local i8* @envz_entry(i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_remove.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_remove", scope: !1, file: !1, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !14, !20}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 15, type: !13)
!24 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 15, type: !14)
!25 = !DILocalVariable(name: "name", arg: 3, scope: !10, file: !1, line: 15, type: !20)
!26 = !DILocalVariable(name: "entry", scope: !10, file: !1, line: 20, type: !4)
!27 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 21, type: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocation(line: 15, column: 1, scope: !10)
!30 = !DILocation(line: 20, column: 9, scope: !10)
!31 = !DILocation(line: 21, column: 7, scope: !10)
!32 = !DILocation(line: 22, column: 23, scope: !10)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 22, column: 30, scope: !10)
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !35, i64 0}
!40 = !DILocation(line: 22, column: 11, scope: !10)
!41 = !DILocation(line: 24, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !10, file: !1, line: 24, column: 7)
!43 = !DILocation(line: 24, column: 7, scope: !10)
!44 = !DILocation(line: 26, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 25, column: 5)
!46 = !DILocation(line: 29, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !45, file: !1, line: 29, column: 11)
!48 = !DILocation(line: 29, column: 19, scope: !47)
!49 = !DILocation(line: 29, column: 17, scope: !47)
!50 = !DILocation(line: 29, column: 38, scope: !47)
!51 = !DILocation(line: 29, column: 44, scope: !47)
!52 = !DILocation(line: 29, column: 29, scope: !47)
!53 = !DILocation(line: 29, column: 11, scope: !45)
!54 = !DILocation(line: 31, column: 57, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !1, line: 30, column: 9)
!56 = !DILocation(line: 31, column: 65, scope: !55)
!57 = !DILocation(line: 31, column: 11, scope: !55)
!58 = !DILocation(line: 34, column: 31, scope: !45)
!59 = !DILocation(line: 34, column: 38, scope: !45)
!60 = !DILocation(line: 32, column: 9, scope: !55)
!61 = !DILocation(line: 34, column: 48, scope: !45)
!62 = !DILocation(line: 34, column: 23, scope: !45)
!63 = !DILocation(line: 34, column: 13, scope: !45)
!64 = !DILocation(line: 35, column: 17, scope: !45)
!65 = !DILocation(line: 36, column: 5, scope: !45)
!66 = !DILocation(line: 37, column: 1, scope: !10)
