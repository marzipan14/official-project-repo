; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strlen(i8*) local_unnamed_addr #0 !dbg !13 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  %2 = ptrtoint i8* %0 to i64, !dbg !29
  %3 = and i64 %2, 7, !dbg !29
  %4 = icmp eq i64 %3, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %4, label %17, label %5, !dbg !28

; <label>:5:                                      ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !30, !tbaa !33
  %7 = icmp eq i8 %6, 0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %7, label %50, label %11, !dbg !36

; <label>:8:                                      ; preds = %11
  %9 = load i8, i8* %13, align 1, !dbg !30, !tbaa !33
  %10 = icmp eq i8 %9, 0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %10, label %48, label %11, !dbg !36, !llvm.loop !37

; <label>:11:                                     ; preds = %5, %8
  %12 = phi i8* [ %13, %8 ], [ %0, %5 ]
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  %14 = ptrtoint i8* %13 to i64, !dbg !29
  %15 = and i64 %14, 7, !dbg !29
  %16 = icmp eq i64 %15, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  br i1 %16, label %17, label %8, !dbg !28, !llvm.loop !37

; <label>:17:                                     ; preds = %11, %1
  %18 = phi i8* [ %0, %1 ], [ %13, %11 ]
  %19 = bitcast i8* %18 to i64*, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %20 = load i64, i64* %19, align 8, !dbg !43, !tbaa !44
  %21 = add i64 %20, -72340172838076673, !dbg !43
  %22 = and i64 %20, -9187201950435737472, !dbg !43
  %23 = xor i64 %22, -9187201950435737472, !dbg !43
  %24 = and i64 %23, %21, !dbg !43
  %25 = icmp eq i64 %24, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %25, label %26, label %35, !dbg !42

; <label>:26:                                     ; preds = %17, %26
  %27 = phi i64* [ %28, %26 ], [ %19, %17 ]
  %28 = getelementptr inbounds i64, i64* %27, i64 1, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %29 = load i64, i64* %28, align 8, !dbg !43, !tbaa !44
  %30 = add i64 %29, -72340172838076673, !dbg !43
  %31 = and i64 %29, -9187201950435737472, !dbg !43
  %32 = xor i64 %31, -9187201950435737472, !dbg !43
  %33 = and i64 %32, %30, !dbg !43
  %34 = icmp eq i64 %33, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %34, label %26, label %35, !dbg !42, !llvm.loop !48

; <label>:35:                                     ; preds = %26, %17
  %36 = phi i64* [ %19, %17 ], [ %28, %26 ], !dbg !49
  %37 = bitcast i64* %36 to i8*, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  %38 = load i8, i8* %37, align 1, !dbg !52, !tbaa !33
  %39 = icmp eq i8 %38, 0, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %39, label %45, label %40, !dbg !51

; <label>:40:                                     ; preds = %35, %40
  %41 = phi i8* [ %42, %40 ], [ %37, %35 ]
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  %43 = load i8, i8* %42, align 1, !dbg !52, !tbaa !33
  %44 = icmp eq i8 %43, 0, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %44, label %45, label %40, !dbg !51, !llvm.loop !54

; <label>:45:                                     ; preds = %40, %35
  %46 = phi i8* [ %37, %35 ], [ %42, %40 ], !dbg !49
  %47 = ptrtoint i8* %46 to i64, !dbg !55
  br label %50, !dbg !56

; <label>:48:                                     ; preds = %8
  %49 = ptrtoint i8* %13 to i64, !dbg !29
  br label %50, !dbg !57

; <label>:50:                                     ; preds = %48, %5, %45
  %51 = phi i64 [ %47, %45 ], [ %2, %5 ], [ %49, %48 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %52 = sub i64 %51, %2, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret i64 %52, !dbg !58
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "strlen", scope: !1, file: !1, line: 57, type: !14, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !20}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 40, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !19, line: 129, baseType: !6)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !13, file: !1, line: 57, type: !20)
!24 = !DILocalVariable(name: "start", scope: !13, file: !1, line: 60, type: !20)
!25 = !DILocalVariable(name: "aligned_addr", scope: !13, file: !1, line: 63, type: !5)
!26 = !DILocation(line: 57, column: 1, scope: !13)
!27 = !DILocation(line: 60, column: 16, scope: !13)
!28 = !DILocation(line: 66, column: 3, scope: !13)
!29 = !DILocation(line: 66, column: 10, scope: !13)
!30 = !DILocation(line: 68, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 68, column: 11)
!32 = distinct !DILexicalBlock(scope: !13, file: !1, line: 67, column: 5)
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 68, column: 11, scope: !32)
!37 = distinct !{!37, !28, !38}
!38 = !DILocation(line: 71, column: 5, scope: !13)
!39 = !DILocation(line: 70, column: 10, scope: !32)
!40 = !DILocation(line: 75, column: 18, scope: !13)
!41 = !DILocation(line: 63, column: 18, scope: !13)
!42 = !DILocation(line: 76, column: 3, scope: !13)
!43 = !DILocation(line: 76, column: 11, scope: !13)
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !34, i64 0}
!46 = !DILocation(line: 76, column: 10, scope: !13)
!47 = !DILocation(line: 77, column: 17, scope: !13)
!48 = distinct !{!48, !42, !47}
!49 = !DILocation(line: 0, scope: !13)
!50 = !DILocation(line: 81, column: 9, scope: !13)
!51 = !DILocation(line: 85, column: 3, scope: !13)
!52 = !DILocation(line: 85, column: 10, scope: !13)
!53 = !DILocation(line: 86, column: 8, scope: !13)
!54 = distinct !{!54, !51, !53}
!55 = !DILocation(line: 87, column: 14, scope: !13)
!56 = !DILocation(line: 87, column: 3, scope: !13)
!57 = !DILocation(line: 0, scope: !31)
!58 = !DILocation(line: 88, column: 1, scope: !13)
