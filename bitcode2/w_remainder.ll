; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_remainder.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_remainder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"remainder\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @remainder(double, double) local_unnamed_addr #0 !dbg !15 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !36
  %5 = tail call double @__ieee754_remainder(double %0, double %1) #5, !dbg !37
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %7 = icmp eq i32 %6, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %7, label %38, label %8, !dbg !45

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !46
  %10 = icmp eq i32 %9, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %10, label %38, label %11, !dbg !47

; <label>:11:                                     ; preds = %8
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %12, label %13, label %38, !dbg !50

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !51
  store i32 1, i32* %14, align 8, !dbg !53, !tbaa !54
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !59
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !60, !tbaa !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !62
  store i32 0, i32* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !65
  store double %0, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !68
  store double %1, double* %18, align 8, !dbg !69, !tbaa !70
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !71
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !72, !tbaa !73
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !74, !tbaa !41
  %21 = icmp eq i32 %20, 2, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %21, label %22, label %24, !dbg !77

; <label>:22:                                     ; preds = %13
  %23 = tail call i32* @__errno() #5, !dbg !78
  br label %29, !dbg !78

; <label>:24:                                     ; preds = %13
  %25 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !80
  %26 = icmp eq i32 %25, 0, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %26, label %27, label %31, !dbg !82

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno() #5, !dbg !83
  br label %29, !dbg !85

; <label>:29:                                     ; preds = %22, %27
  %30 = phi i32* [ %28, %27 ], [ %23, %22 ]
  store i32 33, i32* %30, align 4, !dbg !86, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br label %31, !dbg !88

; <label>:31:                                     ; preds = %29, %24
  %32 = load i32, i32* %16, align 8, !dbg !88, !tbaa !64
  %33 = icmp eq i32 %32, 0, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %33, label %36, label %34, !dbg !91

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !92
  store i32 %32, i32* %35, align 4, !dbg !93, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %36, !dbg !92

; <label>:36:                                     ; preds = %31, %34
  %37 = load double, double* %19, align 8, !dbg !94, !tbaa !73
  br label %38, !dbg !95

; <label>:38:                                     ; preds = %11, %2, %8, %36
  %39 = phi double [ %37, %36 ], [ %5, %8 ], [ %5, %2 ], [ %5, %11 ], !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  ret double %39, !dbg !98
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_remainder(double, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_remainder.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "remainder", scope: !1, file: !1, line: 57, type: !16, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 57, type: !18)
!21 = !DILocalVariable(name: "y", arg: 2, scope: !15, file: !1, line: 57, type: !18)
!22 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 66, type: !18)
!23 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 67, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !25)
!25 = !{!26, !27, !30, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !4, line: 581, baseType: !5, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !4, line: 582, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !24, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !24, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !24, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !24, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!34 = !DILocation(line: 57, column: 26, scope: !15)
!35 = !DILocation(line: 57, column: 36, scope: !15)
!36 = !DILocation(line: 67, column: 2, scope: !15)
!37 = !DILocation(line: 68, column: 6, scope: !15)
!38 = !DILocation(line: 66, column: 9, scope: !15)
!39 = !DILocation(line: 69, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !15, file: !1, line: 69, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 69, column: 18, scope: !40)
!45 = !DILocation(line: 69, column: 28, scope: !40)
!46 = !DILocation(line: 69, column: 31, scope: !40)
!47 = !DILocation(line: 69, column: 5, scope: !15)
!48 = !DILocation(line: 70, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !15, file: !1, line: 70, column: 5)
!50 = !DILocation(line: 70, column: 5, scope: !15)
!51 = !DILocation(line: 72, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 70, column: 13)
!53 = !DILocation(line: 72, column: 22, scope: !52)
!54 = !{!55, !56, i64 0}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 73, column: 17, scope: !52)
!60 = !DILocation(line: 73, column: 22, scope: !52)
!61 = !{!55, !57, i64 8}
!62 = !DILocation(line: 74, column: 10, scope: !52)
!63 = !DILocation(line: 74, column: 14, scope: !52)
!64 = !{!55, !56, i64 40}
!65 = !DILocation(line: 75, column: 10, scope: !52)
!66 = !DILocation(line: 75, column: 15, scope: !52)
!67 = !{!55, !58, i64 16}
!68 = !DILocation(line: 76, column: 10, scope: !52)
!69 = !DILocation(line: 76, column: 15, scope: !52)
!70 = !{!55, !58, i64 24}
!71 = !DILocation(line: 77, column: 17, scope: !52)
!72 = !DILocation(line: 77, column: 24, scope: !52)
!73 = !{!55, !58, i64 32}
!74 = !DILocation(line: 78, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !52, file: !1, line: 78, column: 17)
!76 = !DILocation(line: 78, column: 30, scope: !75)
!77 = !DILocation(line: 78, column: 17, scope: !52)
!78 = !DILocation(line: 79, column: 16, scope: !75)
!79 = !DILocation(line: 67, column: 19, scope: !15)
!80 = !DILocation(line: 80, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 80, column: 22)
!82 = !DILocation(line: 80, column: 22, scope: !75)
!83 = !DILocation(line: 81, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 80, column: 38)
!85 = !DILocation(line: 82, column: 13, scope: !84)
!86 = !DILocation(line: 0, scope: !75)
!87 = !{!56, !56, i64 0}
!88 = !DILocation(line: 83, column: 14, scope: !89)
!89 = distinct !DILexicalBlock(scope: !52, file: !1, line: 83, column: 10)
!90 = !DILocation(line: 83, column: 18, scope: !89)
!91 = !DILocation(line: 83, column: 10, scope: !52)
!92 = !DILocation(line: 84, column: 9, scope: !89)
!93 = !DILocation(line: 84, column: 15, scope: !89)
!94 = !DILocation(line: 85, column: 24, scope: !52)
!95 = !DILocation(line: 85, column: 13, scope: !52)
!96 = !DILocation(line: 0, scope: !49)
!97 = !DILocation(line: 0, scope: !40)
!98 = !DILocation(line: 89, column: 1, scope: !15)
