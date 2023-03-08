; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_entry.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_entry.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @envz_entry(i8*, i64, i8*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i8** %4 to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !27
  store i8* %0, i8** %4, align 8, !dbg !28, !tbaa !29
  %7 = bitcast i64* %5 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !33
  store i64 %1, i64* %5, align 8, !dbg !34, !tbaa !35
  %8 = icmp eq i64 %1, 0, !dbg !37
  br i1 %8, label %31, label %9, !dbg !37

; <label>:9:                                      ; preds = %3, %28
  %10 = call i32 @_buf_findstr(i8* %2, i8** nonnull %4, i64* nonnull %5) #5, !dbg !38
  %11 = icmp ne i32 %10, 0, !dbg !38
  %12 = load i8*, i8** %4, align 8, !dbg !41
  %13 = icmp ne i8* %12, null, !dbg !41
  %14 = and i1 %11, %13, !dbg !44
  br i1 %14, label %15, label %28, !dbg !44

; <label>:15:                                     ; preds = %9
  %16 = load i8, i8* %12, align 1, !dbg !45, !tbaa !48
  switch i8 %16, label %28 [
    i8 61, label %17
    i8 0, label %17
  ], !dbg !49

; <label>:17:                                     ; preds = %15, %15
  br label %18, !dbg !50

; <label>:18:                                     ; preds = %17, %18
  %19 = phi i8* [ %20, %18 ], [ %12, %17 ]
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !50
  store i8* %20, i8** %4, align 8, !dbg !50, !tbaa !29
  %21 = load i8, i8* %20, align 1, !dbg !52, !tbaa !48
  %22 = icmp eq i8 %21, 0, !dbg !53
  %23 = icmp ne i8* %20, %0, !dbg !54
  %24 = xor i1 %22, true, !dbg !55
  %25 = and i1 %23, %24, !dbg !55
  br i1 %25, label %18, label %26, !dbg !56, !llvm.loop !57

; <label>:26:                                     ; preds = %18
  br i1 %22, label %27, label %31, !dbg !59

; <label>:27:                                     ; preds = %26
  store i8* %19, i8** %4, align 8, !dbg !60, !tbaa !29
  br label %31, !dbg !62

; <label>:28:                                     ; preds = %15, %9
  %29 = load i64, i64* %5, align 8, !dbg !63, !tbaa !35
  %30 = icmp eq i64 %29, 0, !dbg !37
  br i1 %30, label %31, label %9, !dbg !37, !llvm.loop !64

; <label>:31:                                     ; preds = %28, %26, %27, %3
  %32 = phi i8* [ null, %3 ], [ %19, %27 ], [ %20, %26 ], [ null, %28 ], !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !67
  ret i8* %32, !dbg !67
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @_buf_findstr(i8*, i8**, i64*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_entry.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_entry", scope: !1, file: !1, line: 16, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 16, type: !13)
!22 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 16, type: !15)
!23 = !DILocalVariable(name: "name", arg: 3, scope: !10, file: !1, line: 16, type: !13)
!24 = !DILocalVariable(name: "buf_ptr", scope: !10, file: !1, line: 21, type: !4)
!25 = !DILocalVariable(name: "buf_len", scope: !10, file: !1, line: 22, type: !15)
!26 = !DILocation(line: 16, column: 1, scope: !10)
!27 = !DILocation(line: 21, column: 3, scope: !10)
!28 = !DILocation(line: 21, column: 9, scope: !10)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 22, column: 3, scope: !10)
!34 = !DILocation(line: 22, column: 10, scope: !10)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !31, i64 0}
!37 = !DILocation(line: 24, column: 3, scope: !10)
!38 = !DILocation(line: 26, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 11)
!40 = distinct !DILexicalBlock(scope: !10, file: !1, line: 25, column: 5)
!41 = !DILocation(line: 28, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 28, column: 15)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 9)
!44 = !DILocation(line: 26, column: 11, scope: !40)
!45 = !DILocation(line: 30, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 30, column: 19)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 29, column: 13)
!48 = !{!31, !31, i64 0}
!49 = !DILocation(line: 30, column: 35, scope: !46)
!50 = !DILocation(line: 0, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 17)
!52 = !DILocation(line: 35, column: 25, scope: !51)
!53 = !DILocation(line: 35, column: 34, scope: !51)
!54 = !DILocation(line: 35, column: 53, scope: !51)
!55 = !DILocation(line: 35, column: 42, scope: !51)
!56 = !DILocation(line: 35, column: 19, scope: !51)
!57 = distinct !{!57, !56, !58}
!58 = !DILocation(line: 35, column: 69, scope: !51)
!59 = !DILocation(line: 37, column: 22, scope: !51)
!60 = !DILocation(line: 38, column: 28, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !1, line: 37, column: 22)
!62 = !DILocation(line: 38, column: 21, scope: !61)
!63 = !DILocation(line: 24, column: 9, scope: !10)
!64 = distinct !{!64, !37, !65}
!65 = !DILocation(line: 44, column: 5, scope: !10)
!66 = !DILocation(line: 0, scope: !10)
!67 = !DILocation(line: 46, column: 1, scope: !10)
