; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local void @argz_extract(i8*, i64, i8** nocapture) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call i64 @argz_count(i8* %0, i64 %1) #3, !dbg !28
  %5 = icmp ugt i64 %1, 1, !dbg !30
  br i1 %5, label %6, label %49, !dbg !32

; <label>:6:                                      ; preds = %3
  %7 = add i64 %1, -2, !dbg !33
  %8 = icmp eq i64 %7, 0, !dbg !35
  br i1 %8, label %49, label %9, !dbg !37

; <label>:9:                                      ; preds = %6
  %10 = and i64 %7, 1, !dbg !38
  %11 = icmp eq i64 %1, 3, !dbg !38
  br i1 %11, label %34, label %12, !dbg !38

; <label>:12:                                     ; preds = %9
  %13 = sub i64 %7, %10, !dbg !38
  br label %14, !dbg !38

; <label>:14:                                     ; preds = %57, %12
  %15 = phi i64 [ %7, %12 ], [ %59, %57 ]
  %16 = phi i32 [ 0, %12 ], [ %58, %57 ]
  %17 = phi i64 [ %13, %12 ], [ %60, %57 ]
  %18 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !38
  %19 = load i8, i8* %18, align 1, !dbg !38, !tbaa !41
  %20 = icmp eq i8 %19, 0, !dbg !44
  br i1 %20, label %21, label %28, !dbg !45

; <label>:21:                                     ; preds = %14
  %22 = add nsw i32 %16, 1, !dbg !46
  %23 = add i64 %15, 1, !dbg !48
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !49
  %25 = sext i32 %22 to i64, !dbg !50
  %26 = sub i64 %4, %25, !dbg !51
  %27 = getelementptr inbounds i8*, i8** %2, i64 %26, !dbg !52
  store i8* %24, i8** %27, align 8, !dbg !53, !tbaa !54
  br label %28, !dbg !56

; <label>:28:                                     ; preds = %14, %21
  %29 = phi i32 [ %22, %21 ], [ %16, %14 ], !dbg !57
  %30 = add i64 %15, -1, !dbg !58
  %31 = getelementptr inbounds i8, i8* %0, i64 %30, !dbg !38
  %32 = load i8, i8* %31, align 1, !dbg !38, !tbaa !41
  %33 = icmp eq i8 %32, 0, !dbg !44
  br i1 %33, label %51, label %57, !dbg !45

; <label>:34:                                     ; preds = %57, %9
  %35 = phi i64 [ %7, %9 ], [ %59, %57 ]
  %36 = phi i32 [ 0, %9 ], [ %58, %57 ]
  %37 = icmp eq i64 %10, 0, !dbg !45
  br i1 %37, label %49, label %38, !dbg !45

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !38
  %40 = load i8, i8* %39, align 1, !dbg !38, !tbaa !41
  %41 = icmp eq i8 %40, 0, !dbg !44
  br i1 %41, label %42, label %49, !dbg !45

; <label>:42:                                     ; preds = %38
  %43 = add nsw i32 %36, 1, !dbg !46
  %44 = add i64 %35, 1, !dbg !48
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !49
  %46 = sext i32 %43 to i64, !dbg !50
  %47 = sub i64 %4, %46, !dbg !51
  %48 = getelementptr inbounds i8*, i8** %2, i64 %47, !dbg !52
  store i8* %45, i8** %48, align 8, !dbg !53, !tbaa !54
  br label %49, !dbg !56

; <label>:49:                                     ; preds = %34, %38, %42, %6, %3
  store i8* %0, i8** %2, align 8, !dbg !59, !tbaa !54
  %50 = getelementptr inbounds i8*, i8** %2, i64 %4, !dbg !60
  store i8* null, i8** %50, align 8, !dbg !61, !tbaa !54
  ret void, !dbg !62

; <label>:51:                                     ; preds = %28
  %52 = add nsw i32 %29, 1, !dbg !46
  %53 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !49
  %54 = sext i32 %52 to i64, !dbg !50
  %55 = sub i64 %4, %54, !dbg !51
  %56 = getelementptr inbounds i8*, i8** %2, i64 %55, !dbg !52
  store i8* %53, i8** %56, align 8, !dbg !53, !tbaa !54
  br label %57, !dbg !56

; <label>:57:                                     ; preds = %51, %28
  %58 = phi i32 [ %52, %51 ], [ %29, %28 ], !dbg !57
  %59 = add i64 %15, -2, !dbg !58
  %60 = add i64 %17, -2, !dbg !37
  %61 = icmp eq i64 %60, 0, !dbg !37
  br i1 %61, label %34, label %14, !dbg !37, !llvm.loop !63
}

; Function Attrs: noredzone
declare dso_local i64 @argz_count(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_extract.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "argz_extract", scope: !1, file: !1, line: 12, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argz", arg: 1, scope: !7, file: !1, line: 12, type: !10)
!18 = !DILocalVariable(name: "argz_len", arg: 2, scope: !7, file: !1, line: 12, type: !12)
!19 = !DILocalVariable(name: "argv", arg: 3, scope: !7, file: !1, line: 12, type: !15)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 17, type: !12)
!21 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 18, type: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 19, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!25 = !DILocation(line: 12, column: 1, scope: !7)
!26 = !DILocation(line: 17, column: 10, scope: !7)
!27 = !DILocation(line: 18, column: 7, scope: !7)
!28 = !DILocation(line: 19, column: 24, scope: !7)
!29 = !DILocation(line: 19, column: 16, scope: !7)
!30 = !DILocation(line: 21, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!32 = !DILocation(line: 21, column: 7, scope: !7)
!33 = !DILocation(line: 22, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 5)
!35 = !DILocation(line: 22, column: 30, scope: !36)
!36 = distinct !DILexicalBlock(scope: !34, file: !1, line: 22, column: 5)
!37 = !DILocation(line: 22, column: 5, scope: !34)
!38 = !DILocation(line: 24, column: 6, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 6)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 23, column: 7)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 24, column: 14, scope: !39)
!45 = !DILocation(line: 24, column: 6, scope: !40)
!46 = !DILocation(line: 26, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 4)
!48 = !DILocation(line: 27, column: 32, scope: !47)
!49 = !DILocation(line: 27, column: 25, scope: !47)
!50 = !DILocation(line: 27, column: 19, scope: !47)
!51 = !DILocation(line: 27, column: 17, scope: !47)
!52 = !DILocation(line: 27, column: 6, scope: !47)
!53 = !DILocation(line: 27, column: 22, scope: !47)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !42, i64 0}
!56 = !DILocation(line: 28, column: 4, scope: !47)
!57 = !DILocation(line: 0, scope: !7)
!58 = !DILocation(line: 22, column: 36, scope: !36)
!59 = !DILocation(line: 30, column: 11, scope: !7)
!60 = !DILocation(line: 31, column: 3, scope: !7)
!61 = !DILocation(line: 31, column: 15, scope: !7)
!62 = !DILocation(line: 32, column: 1, scope: !7)
!63 = distinct !{!63, !37, !64}
!64 = !DILocation(line: 29, column: 7, scope: !34)
