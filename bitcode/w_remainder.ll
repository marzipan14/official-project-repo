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
  br i1 %7, label %38, label %8, !dbg !45

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !46
  %10 = icmp ne i32 %9, 0, !dbg !46
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !47
  %12 = and i1 %11, %10, !dbg !49
  br i1 %12, label %13, label %38, !dbg !49

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !50
  store i32 1, i32* %14, align 8, !dbg !52, !tbaa !53
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !58
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !59, !tbaa !60
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !61
  store i32 0, i32* %16, align 8, !dbg !62, !tbaa !63
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !64
  store double %0, double* %17, align 8, !dbg !65, !tbaa !66
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !67
  store double %1, double* %18, align 8, !dbg !68, !tbaa !69
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !70
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !71, !tbaa !72
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !73, !tbaa !41
  %21 = icmp eq i32 %20, 2, !dbg !75
  br i1 %21, label %22, label %24, !dbg !76

; <label>:22:                                     ; preds = %13
  %23 = tail call i32* @__errno() #5, !dbg !77
  br label %29, !dbg !77

; <label>:24:                                     ; preds = %13
  %25 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !79
  %26 = icmp eq i32 %25, 0, !dbg !79
  br i1 %26, label %27, label %31, !dbg !81

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno() #5, !dbg !82
  br label %29, !dbg !84

; <label>:29:                                     ; preds = %22, %27
  %30 = phi i32* [ %28, %27 ], [ %23, %22 ]
  store i32 33, i32* %30, align 4, !dbg !85, !tbaa !86
  br label %31, !dbg !87

; <label>:31:                                     ; preds = %29, %24
  %32 = load i32, i32* %16, align 8, !dbg !87, !tbaa !63
  %33 = icmp eq i32 %32, 0, !dbg !89
  br i1 %33, label %36, label %34, !dbg !90

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !91
  store i32 %32, i32* %35, align 4, !dbg !92, !tbaa !86
  br label %36, !dbg !91

; <label>:36:                                     ; preds = %31, %34
  %37 = load double, double* %19, align 8, !dbg !93, !tbaa !72
  br label %38, !dbg !94

; <label>:38:                                     ; preds = %8, %2, %36
  %39 = phi double [ %37, %36 ], [ %5, %8 ], [ %5, %2 ], !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret double %39, !dbg !96
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
!47 = !DILocation(line: 70, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !15, file: !1, line: 70, column: 5)
!49 = !DILocation(line: 69, column: 5, scope: !15)
!50 = !DILocation(line: 72, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 70, column: 13)
!52 = !DILocation(line: 72, column: 22, scope: !51)
!53 = !{!54, !55, i64 0}
!54 = !{!"exception", !55, i64 0, !56, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !55, i64 40}
!55 = !{!"int", !42, i64 0}
!56 = !{!"any pointer", !42, i64 0}
!57 = !{!"double", !42, i64 0}
!58 = !DILocation(line: 73, column: 17, scope: !51)
!59 = !DILocation(line: 73, column: 22, scope: !51)
!60 = !{!54, !56, i64 8}
!61 = !DILocation(line: 74, column: 10, scope: !51)
!62 = !DILocation(line: 74, column: 14, scope: !51)
!63 = !{!54, !55, i64 40}
!64 = !DILocation(line: 75, column: 10, scope: !51)
!65 = !DILocation(line: 75, column: 15, scope: !51)
!66 = !{!54, !57, i64 16}
!67 = !DILocation(line: 76, column: 10, scope: !51)
!68 = !DILocation(line: 76, column: 15, scope: !51)
!69 = !{!54, !57, i64 24}
!70 = !DILocation(line: 77, column: 17, scope: !51)
!71 = !DILocation(line: 77, column: 24, scope: !51)
!72 = !{!54, !57, i64 32}
!73 = !DILocation(line: 78, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !51, file: !1, line: 78, column: 17)
!75 = !DILocation(line: 78, column: 30, scope: !74)
!76 = !DILocation(line: 78, column: 17, scope: !51)
!77 = !DILocation(line: 79, column: 16, scope: !74)
!78 = !DILocation(line: 67, column: 19, scope: !15)
!79 = !DILocation(line: 80, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 80, column: 22)
!81 = !DILocation(line: 80, column: 22, scope: !74)
!82 = !DILocation(line: 81, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 80, column: 38)
!84 = !DILocation(line: 82, column: 13, scope: !83)
!85 = !DILocation(line: 0, scope: !74)
!86 = !{!55, !55, i64 0}
!87 = !DILocation(line: 83, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !51, file: !1, line: 83, column: 10)
!89 = !DILocation(line: 83, column: 18, scope: !88)
!90 = !DILocation(line: 83, column: 10, scope: !51)
!91 = !DILocation(line: 84, column: 9, scope: !88)
!92 = !DILocation(line: 84, column: 15, scope: !88)
!93 = !DILocation(line: 85, column: 24, scope: !51)
!94 = !DILocation(line: 85, column: 13, scope: !51)
!95 = !DILocation(line: 0, scope: !48)
!96 = !DILocation(line: 89, column: 1, scope: !15)
