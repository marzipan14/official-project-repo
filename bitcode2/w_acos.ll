; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acos.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acos.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @acos(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !34
  %4 = tail call double @__ieee754_acos(double %0) #5, !dbg !35
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !37, !tbaa !39
  %6 = icmp eq i32 %5, -1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %6, label %39, label %7, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !44
  %9 = icmp eq i32 %8, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %9, label %39, label %10, !dbg !45

; <label>:10:                                     ; preds = %7
  %11 = tail call double @fabs(double %0) #5, !dbg !46
  %12 = fcmp ogt double %11, 1.000000e+00, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %12, label %13, label %39, !dbg !49

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !50
  store i32 1, i32* %14, align 8, !dbg !52, !tbaa !53
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !59, !tbaa !60
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !61
  store i32 0, i32* %16, align 8, !dbg !62, !tbaa !63
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !64
  store double %0, double* %17, align 8, !dbg !65, !tbaa !66
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !67
  store double %0, double* %18, align 8, !dbg !68, !tbaa !69
  %19 = tail call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !70
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !71
  store double %19, double* %20, align 8, !dbg !72, !tbaa !73
  %21 = load i32, i32* @__fdlib_version, align 4, !dbg !74, !tbaa !39
  %22 = icmp eq i32 %21, 2, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %22, label %23, label %25, !dbg !77

; <label>:23:                                     ; preds = %13
  %24 = tail call i32* @__errno() #5, !dbg !78
  br label %30, !dbg !78

; <label>:25:                                     ; preds = %13
  %26 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !80
  %27 = icmp eq i32 %26, 0, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %27, label %28, label %32, !dbg !82

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !83
  br label %30, !dbg !85

; <label>:30:                                     ; preds = %23, %28
  %31 = phi i32* [ %29, %28 ], [ %24, %23 ]
  store i32 33, i32* %31, align 4, !dbg !86, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br label %32, !dbg !88

; <label>:32:                                     ; preds = %30, %25
  %33 = load i32, i32* %16, align 8, !dbg !88, !tbaa !63
  %34 = icmp eq i32 %33, 0, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %34, label %37, label %35, !dbg !91

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno() #5, !dbg !92
  store i32 %33, i32* %36, align 4, !dbg !93, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %37, !dbg !92

; <label>:37:                                     ; preds = %32, %35
  %38 = load double, double* %20, align 8, !dbg !94, !tbaa !73
  br label %39, !dbg !95

; <label>:39:                                     ; preds = %10, %1, %7, %37
  %40 = phi double [ %38, %37 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  ret double %40, !dbg !98
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_acos(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @nan(i8*) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acos.c", directory: "/root/.unikraft/apps/redis/build")
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
!15 = distinct !DISubprogram(name: "acos", scope: !1, file: !1, line: 86, type: !16, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 86, type: !18)
!21 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 95, type: !18)
!22 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 96, type: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !24)
!24 = !{!25, !26, !29, !30, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !4, line: 581, baseType: !5, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !4, line: 582, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !23, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !23, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !23, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !23, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!33 = !DILocation(line: 86, column: 21, scope: !15)
!34 = !DILocation(line: 96, column: 9, scope: !15)
!35 = !DILocation(line: 97, column: 13, scope: !15)
!36 = !DILocation(line: 95, column: 9, scope: !15)
!37 = !DILocation(line: 98, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 98, column: 5)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 98, column: 18, scope: !38)
!43 = !DILocation(line: 98, column: 28, scope: !38)
!44 = !DILocation(line: 98, column: 31, scope: !38)
!45 = !DILocation(line: 98, column: 5, scope: !15)
!46 = !DILocation(line: 99, column: 5, scope: !47)
!47 = distinct !DILexicalBlock(scope: !15, file: !1, line: 99, column: 5)
!48 = !DILocation(line: 99, column: 12, scope: !47)
!49 = !DILocation(line: 99, column: 5, scope: !15)
!50 = !DILocation(line: 101, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 99, column: 18)
!52 = !DILocation(line: 101, column: 15, scope: !51)
!53 = !{!54, !55, i64 0}
!54 = !{!"exception", !55, i64 0, !56, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !55, i64 40}
!55 = !{!"int", !40, i64 0}
!56 = !{!"any pointer", !40, i64 0}
!57 = !{!"double", !40, i64 0}
!58 = !DILocation(line: 102, column: 10, scope: !51)
!59 = !DILocation(line: 102, column: 15, scope: !51)
!60 = !{!54, !56, i64 8}
!61 = !DILocation(line: 103, column: 10, scope: !51)
!62 = !DILocation(line: 103, column: 14, scope: !51)
!63 = !{!54, !55, i64 40}
!64 = !DILocation(line: 104, column: 21, scope: !51)
!65 = !DILocation(line: 104, column: 26, scope: !51)
!66 = !{!54, !57, i64 24}
!67 = !DILocation(line: 104, column: 10, scope: !51)
!68 = !DILocation(line: 104, column: 15, scope: !51)
!69 = !{!54, !57, i64 16}
!70 = !DILocation(line: 105, column: 19, scope: !51)
!71 = !DILocation(line: 105, column: 10, scope: !51)
!72 = !DILocation(line: 105, column: 17, scope: !51)
!73 = !{!54, !57, i64 32}
!74 = !DILocation(line: 106, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !51, file: !1, line: 106, column: 10)
!76 = !DILocation(line: 106, column: 23, scope: !75)
!77 = !DILocation(line: 106, column: 10, scope: !51)
!78 = !DILocation(line: 107, column: 9, scope: !75)
!79 = !DILocation(line: 96, column: 26, scope: !15)
!80 = !DILocation(line: 108, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 108, column: 15)
!82 = !DILocation(line: 108, column: 15, scope: !75)
!83 = !DILocation(line: 109, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 108, column: 31)
!85 = !DILocation(line: 110, column: 13, scope: !84)
!86 = !DILocation(line: 0, scope: !75)
!87 = !{!55, !55, i64 0}
!88 = !DILocation(line: 111, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !51, file: !1, line: 111, column: 17)
!90 = !DILocation(line: 111, column: 25, scope: !89)
!91 = !DILocation(line: 111, column: 17, scope: !51)
!92 = !DILocation(line: 112, column: 9, scope: !89)
!93 = !DILocation(line: 112, column: 15, scope: !89)
!94 = !DILocation(line: 113, column: 17, scope: !51)
!95 = !DILocation(line: 113, column: 6, scope: !51)
!96 = !DILocation(line: 0, scope: !47)
!97 = !DILocation(line: 0, scope: !38)
!98 = !DILocation(line: 117, column: 1, scope: !15)
