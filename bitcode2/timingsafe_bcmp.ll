; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @timingsafe_bcmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  %4 = icmp eq i64 %2, 0, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %4, label %47, label %5, !dbg !38

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !39
  %7 = icmp eq i64 %2, 1, !dbg !39
  br i1 %7, label %31, label %8, !dbg !39

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !39
  br label %10, !dbg !39

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %28, %10 ]
  %12 = phi i8* [ %1, %8 ], [ %24, %10 ]
  %13 = phi i8* [ %0, %8 ], [ %22, %10 ]
  %14 = phi i64 [ %9, %8 ], [ %29, %10 ]
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !39
  %16 = load i8, i8* %13, align 1, !dbg !40, !tbaa !41
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !44
  %18 = load i8, i8* %12, align 1, !dbg !45, !tbaa !41
  %19 = xor i8 %18, %16, !dbg !46
  %20 = zext i8 %19 to i32, !dbg !46
  %21 = or i32 %11, %20, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %22 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !39
  %23 = load i8, i8* %15, align 1, !dbg !40, !tbaa !41
  %24 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !44
  %25 = load i8, i8* %17, align 1, !dbg !45, !tbaa !41
  %26 = xor i8 %25, %23, !dbg !46
  %27 = zext i8 %26 to i32, !dbg !46
  %28 = or i32 %21, %27, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %29 = add i64 %14, -2, !dbg !38
  %30 = icmp eq i64 %29, 0, !dbg !38
  br i1 %30, label %31, label %10, !dbg !38, !llvm.loop !49

; <label>:31:                                     ; preds = %10, %5
  %32 = phi i32 [ undef, %5 ], [ %28, %10 ]
  %33 = phi i32 [ 0, %5 ], [ %28, %10 ]
  %34 = phi i8* [ %1, %5 ], [ %24, %10 ]
  %35 = phi i8* [ %0, %5 ], [ %22, %10 ]
  %36 = icmp eq i64 %6, 0, !dbg !38
  br i1 %36, label %43, label %37, !dbg !38

; <label>:37:                                     ; preds = %31
  %38 = load i8, i8* %35, align 1, !dbg !40, !tbaa !41
  %39 = load i8, i8* %34, align 1, !dbg !45, !tbaa !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %40 = xor i8 %39, %38, !dbg !46
  %41 = zext i8 %40 to i32, !dbg !46
  %42 = or i32 %33, %41, !dbg !47
  br label %43, !dbg !51

; <label>:43:                                     ; preds = %31, %37
  %44 = phi i32 [ %32, %31 ], [ %42, %37 ], !dbg !47
  %45 = icmp ne i32 %44, 0, !dbg !51
  %46 = zext i1 %45 to i32, !dbg !51
  br label %47, !dbg !51

; <label>:47:                                     ; preds = %43, %3
  %48 = phi i32 [ 0, %3 ], [ %46, %43 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  ret i32 %48, !dbg !52
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "timingsafe_bcmp", scope: !1, file: !1, line: 21, type: !8, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !13}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !26, !27}
!19 = !DILocalVariable(name: "b1", arg: 1, scope: !7, file: !1, line: 21, type: !11)
!20 = !DILocalVariable(name: "b2", arg: 2, scope: !7, file: !1, line: 21, type: !11)
!21 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 21, type: !13)
!22 = !DILocalVariable(name: "p1", scope: !7, file: !1, line: 23, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DILocalVariable(name: "p2", scope: !7, file: !1, line: 23, type: !23)
!27 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 24, type: !10)
!28 = !DILocation(line: 21, column: 29, scope: !7)
!29 = !DILocation(line: 21, column: 45, scope: !7)
!30 = !DILocation(line: 21, column: 56, scope: !7)
!31 = !DILocation(line: 23, column: 23, scope: !7)
!32 = !DILocation(line: 23, column: 33, scope: !7)
!33 = !DILocation(line: 24, column: 6, scope: !7)
!34 = !DILocation(line: 26, column: 2, scope: !7)
!35 = !DILocation(line: 26, column: 11, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 26, column: 2)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 2)
!38 = !DILocation(line: 26, column: 2, scope: !37)
!39 = !DILocation(line: 27, column: 13, scope: !36)
!40 = !DILocation(line: 27, column: 10, scope: !36)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 27, column: 21, scope: !36)
!45 = !DILocation(line: 27, column: 18, scope: !36)
!46 = !DILocation(line: 27, column: 16, scope: !36)
!47 = !DILocation(line: 27, column: 7, scope: !36)
!48 = !DILocation(line: 26, column: 2, scope: !36)
!49 = distinct !{!49, !38, !50}
!50 = !DILocation(line: 27, column: 21, scope: !37)
!51 = !DILocation(line: 28, column: 14, scope: !7)
!52 = !DILocation(line: 28, column: 2, scope: !7)
