; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_strip.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_strip.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @envz_strip(i8** nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !10 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  %3 = load i8*, i8** %0, align 8, !dbg !32, !tbaa !33
  %4 = load i64, i64* %1, align 8, !dbg !37, !tbaa !38
  %5 = tail call i8* @argz_next(i8* %3, i64 %4, i8* null) #3, !dbg !40
  %6 = icmp eq i8* %5, null, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %6, label %47, label %7, !dbg !31

; <label>:7:                                      ; preds = %2, %35
  %8 = phi i8* [ %39, %35 ], [ %5, %2 ]
  %9 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %10 = tail call i8* @strchr(i8* nonnull %8, i32 61) #3, !dbg !41
  %11 = icmp eq i8* %10, null, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %11, label %14, label %12, !dbg !44

; <label>:12:                                     ; preds = %7
  %13 = load i64, i64* %1, align 8, !dbg !37, !tbaa !38
  br label %35, !dbg !44

; <label>:14:                                     ; preds = %7
  %15 = tail call i64 @strlen(i8* nonnull %8) #3, !dbg !45
  %16 = load i8*, i8** %0, align 8, !dbg !47, !tbaa !33
  %17 = load i64, i64* %1, align 8, !dbg !49, !tbaa !38
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !50
  %19 = shl i64 %15, 32, !dbg !51
  %20 = add i64 %19, 4294967296, !dbg !51
  %21 = ashr exact i64 %20, 32, !dbg !51
  %22 = getelementptr inbounds i8, i8* %8, i64 %21, !dbg !51
  %23 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !52
  %24 = icmp eq i8* %18, %23, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %24, label %32, label %25, !dbg !54

; <label>:25:                                     ; preds = %14
  %26 = ptrtoint i8* %18 to i64, !dbg !55
  %27 = ptrtoint i8* %8 to i64, !dbg !55
  %28 = add i64 %21, %27, !dbg !55
  %29 = sub i64 %26, %28, !dbg !57
  %30 = tail call i8* @memmove(i8* nonnull %8, i8* nonnull %22, i64 %29) #3, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  %31 = load i64, i64* %1, align 8, !dbg !60, !tbaa !38
  br label %32, !dbg !59

; <label>:32:                                     ; preds = %14, %25
  %33 = phi i64 [ %17, %14 ], [ %31, %25 ], !dbg !60
  %34 = sub i64 %33, %21, !dbg !60
  store i64 %34, i64* %1, align 8, !dbg !60, !tbaa !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %35, !dbg !61

; <label>:35:                                     ; preds = %12, %32
  %36 = phi i64 [ %13, %12 ], [ %34, %32 ], !dbg !37
  %37 = phi i32 [ %9, %12 ], [ 1, %32 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  %38 = load i8*, i8** %0, align 8, !dbg !32, !tbaa !33
  %39 = tail call i8* @argz_next(i8* %38, i64 %36, i8* nonnull %8) #3, !dbg !40
  %40 = icmp eq i8* %39, null, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %40, label %41, label %7, !dbg !31, !llvm.loop !63

; <label>:41:                                     ; preds = %35
  %42 = icmp eq i32 %37, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %42, label %48, label %43, !dbg !67

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %0, align 8, !dbg !68, !tbaa !33
  %45 = load i64, i64* %1, align 8, !dbg !70, !tbaa !38
  %46 = tail call i8* @realloc(i8* %44, i64 %45) #3, !dbg !71
  store i8* %46, i8** %0, align 8, !dbg !72, !tbaa !33
  br label %47, !dbg !73

; <label>:47:                                     ; preds = %2, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br label %48, !dbg !75

; <label>:48:                                     ; preds = %47, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  ret void, !dbg !75
}

; Function Attrs: noredzone
declare dso_local i8* @argz_next(i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_strip.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_strip", scope: !1, file: !1, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !26}
!21 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 15, type: !13)
!22 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 15, type: !14)
!23 = !DILocalVariable(name: "entry", scope: !10, file: !1, line: 19, type: !4)
!24 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 20, type: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "null_found", scope: !10, file: !1, line: 21, type: !25)
!27 = !DILocation(line: 15, column: 1, scope: !10)
!28 = !DILocation(line: 19, column: 9, scope: !10)
!29 = !DILocation(line: 20, column: 7, scope: !10)
!30 = !DILocation(line: 21, column: 7, scope: !10)
!31 = !DILocation(line: 23, column: 3, scope: !10)
!32 = !DILocation(line: 23, column: 28, scope: !10)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 23, column: 35, scope: !10)
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !35, i64 0}
!40 = !DILocation(line: 23, column: 18, scope: !10)
!41 = !DILocation(line: 25, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 10)
!43 = distinct !DILexicalBlock(scope: !10, file: !1, line: 24, column: 5)
!44 = !DILocation(line: 25, column: 10, scope: !43)
!45 = !DILocation(line: 28, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 26, column: 9)
!47 = !DILocation(line: 31, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 14)
!49 = !DILocation(line: 31, column: 22, scope: !48)
!50 = !DILocation(line: 31, column: 20, scope: !48)
!51 = !DILocation(line: 31, column: 41, scope: !48)
!52 = !DILocation(line: 31, column: 47, scope: !48)
!53 = !DILocation(line: 31, column: 32, scope: !48)
!54 = !DILocation(line: 31, column: 14, scope: !46)
!55 = !DILocation(line: 33, column: 61, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !1, line: 32, column: 13)
!57 = !DILocation(line: 33, column: 69, scope: !56)
!58 = !DILocation(line: 33, column: 15, scope: !56)
!59 = !DILocation(line: 34, column: 13, scope: !56)
!60 = !DILocation(line: 35, column: 21, scope: !46)
!61 = !DILocation(line: 36, column: 9, scope: !46)
!62 = !DILocation(line: 0, scope: !46)
!63 = distinct !{!63, !31, !64}
!64 = !DILocation(line: 37, column: 5, scope: !10)
!65 = !DILocation(line: 38, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !10, file: !1, line: 38, column: 6)
!67 = !DILocation(line: 38, column: 6, scope: !10)
!68 = !DILocation(line: 40, column: 31, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 39, column: 5)
!70 = !DILocation(line: 40, column: 38, scope: !69)
!71 = !DILocation(line: 40, column: 23, scope: !69)
!72 = !DILocation(line: 40, column: 13, scope: !69)
!73 = !DILocation(line: 41, column: 5, scope: !69)
!74 = !DILocation(line: 0, scope: !69)
!75 = !DILocation(line: 42, column: 1, scope: !10)
