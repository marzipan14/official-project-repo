; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @acosh(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !34
  %4 = tail call double @__ieee754_acosh(double %0) #5, !dbg !35
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !37, !tbaa !39
  %6 = icmp eq i32 %5, -1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %6, label %37, label %7, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !44
  %9 = icmp eq i32 %8, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %9, label %37, label %10, !dbg !45

; <label>:10:                                     ; preds = %7
  %11 = fcmp olt double %0, 1.000000e+00, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %11, label %12, label %37, !dbg !48

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !49
  store i32 1, i32* %13, align 8, !dbg !51, !tbaa !52
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !57
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !58, !tbaa !59
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !60
  store i32 0, i32* %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !63
  store double %0, double* %16, align 8, !dbg !64, !tbaa !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !66
  store double %0, double* %17, align 8, !dbg !67, !tbaa !68
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !69
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !70, !tbaa !71
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !72, !tbaa !39
  %20 = icmp eq i32 %19, 2, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %20, label %21, label %23, !dbg !75

; <label>:21:                                     ; preds = %12
  %22 = tail call i32* @__errno() #5, !dbg !76
  br label %28, !dbg !76

; <label>:23:                                     ; preds = %12
  %24 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !78
  %25 = icmp eq i32 %24, 0, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %25, label %26, label %30, !dbg !80

; <label>:26:                                     ; preds = %23
  %27 = call i32* @__errno() #5, !dbg !81
  br label %28, !dbg !83

; <label>:28:                                     ; preds = %21, %26
  %29 = phi i32* [ %27, %26 ], [ %22, %21 ]
  store i32 33, i32* %29, align 4, !dbg !84, !tbaa !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br label %30, !dbg !86

; <label>:30:                                     ; preds = %28, %23
  %31 = load i32, i32* %15, align 8, !dbg !86, !tbaa !62
  %32 = icmp eq i32 %31, 0, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %32, label %35, label %33, !dbg !89

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !90
  store i32 %31, i32* %34, align 4, !dbg !91, !tbaa !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br label %35, !dbg !90

; <label>:35:                                     ; preds = %30, %33
  %36 = load double, double* %18, align 8, !dbg !92, !tbaa !71
  br label %37, !dbg !93

; <label>:37:                                     ; preds = %10, %1, %7, %35
  %38 = phi double [ %36, %35 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret double %38, !dbg !96
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_acosh(double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c", directory: "/root/.unikraft/apps/redis/build")
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
!15 = distinct !DISubprogram(name: "acosh", scope: !1, file: !1, line: 90, type: !16, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 90, type: !18)
!21 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 99, type: !18)
!22 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 100, type: !23)
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
!33 = !DILocation(line: 90, column: 22, scope: !15)
!34 = !DILocation(line: 100, column: 2, scope: !15)
!35 = !DILocation(line: 101, column: 6, scope: !15)
!36 = !DILocation(line: 99, column: 9, scope: !15)
!37 = !DILocation(line: 102, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 102, column: 5)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 102, column: 18, scope: !38)
!43 = !DILocation(line: 102, column: 28, scope: !38)
!44 = !DILocation(line: 102, column: 31, scope: !38)
!45 = !DILocation(line: 102, column: 5, scope: !15)
!46 = !DILocation(line: 103, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !15, file: !1, line: 103, column: 5)
!48 = !DILocation(line: 103, column: 5, scope: !15)
!49 = !DILocation(line: 105, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 103, column: 12)
!51 = !DILocation(line: 105, column: 22, scope: !50)
!52 = !{!53, !54, i64 0}
!53 = !{!"exception", !54, i64 0, !55, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !54, i64 40}
!54 = !{!"int", !40, i64 0}
!55 = !{!"any pointer", !40, i64 0}
!56 = !{!"double", !40, i64 0}
!57 = !DILocation(line: 106, column: 17, scope: !50)
!58 = !DILocation(line: 106, column: 22, scope: !50)
!59 = !{!53, !55, i64 8}
!60 = !DILocation(line: 107, column: 10, scope: !50)
!61 = !DILocation(line: 107, column: 14, scope: !50)
!62 = !{!53, !54, i64 40}
!63 = !DILocation(line: 108, column: 21, scope: !50)
!64 = !DILocation(line: 108, column: 26, scope: !50)
!65 = !{!53, !56, i64 24}
!66 = !DILocation(line: 108, column: 10, scope: !50)
!67 = !DILocation(line: 108, column: 15, scope: !50)
!68 = !{!53, !56, i64 16}
!69 = !DILocation(line: 109, column: 17, scope: !50)
!70 = !DILocation(line: 109, column: 24, scope: !50)
!71 = !{!53, !56, i64 32}
!72 = !DILocation(line: 110, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !50, file: !1, line: 110, column: 17)
!74 = !DILocation(line: 110, column: 30, scope: !73)
!75 = !DILocation(line: 110, column: 17, scope: !50)
!76 = !DILocation(line: 111, column: 16, scope: !73)
!77 = !DILocation(line: 100, column: 19, scope: !15)
!78 = !DILocation(line: 112, column: 23, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 112, column: 22)
!80 = !DILocation(line: 112, column: 22, scope: !73)
!81 = !DILocation(line: 113, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 112, column: 38)
!83 = !DILocation(line: 114, column: 13, scope: !82)
!84 = !DILocation(line: 0, scope: !73)
!85 = !{!54, !54, i64 0}
!86 = !DILocation(line: 115, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !50, file: !1, line: 115, column: 10)
!88 = !DILocation(line: 115, column: 18, scope: !87)
!89 = !DILocation(line: 115, column: 10, scope: !50)
!90 = !DILocation(line: 116, column: 9, scope: !87)
!91 = !DILocation(line: 116, column: 15, scope: !87)
!92 = !DILocation(line: 117, column: 17, scope: !50)
!93 = !DILocation(line: 117, column: 6, scope: !50)
!94 = !DILocation(line: 0, scope: !47)
!95 = !DILocation(line: 0, scope: !38)
!96 = !DILocation(line: 121, column: 1, scope: !15)
