; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_fmod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_fmod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"fmod\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @fmod(double, double) local_unnamed_addr #0 !dbg !15 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !36
  %5 = tail call double @__ieee754_fmod(double %0, double %1) #5, !dbg !37
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %7 = icmp eq i32 %6, -1, !dbg !44
  br i1 %7, label %44, label %8, !dbg !45

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !46
  %10 = icmp eq i32 %9, 0, !dbg !46
  br i1 %10, label %44, label %11, !dbg !47

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !48
  %13 = icmp ne i32 %12, 0, !dbg !48
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !49
  %15 = and i1 %14, %13, !dbg !51
  br i1 %15, label %16, label %44, !dbg !51

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !52
  store i32 1, i32* %17, align 8, !dbg !54, !tbaa !55
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8, !dbg !61, !tbaa !62
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !63
  store double %0, double* %19, align 8, !dbg !64, !tbaa !65
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !66
  store double %1, double* %20, align 8, !dbg !67, !tbaa !68
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !69
  store i32 0, i32* %21, align 8, !dbg !70, !tbaa !71
  %22 = load i32, i32* @__fdlib_version, align 4, !dbg !72, !tbaa !41
  %23 = icmp eq i32 %22, 0, !dbg !74
  %24 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  br i1 %23, label %25, label %26, !dbg !76

; <label>:25:                                     ; preds = %16
  store double %0, double* %24, align 8, !dbg !77, !tbaa !78
  br label %30, !dbg !79

; <label>:26:                                     ; preds = %16
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !80, !tbaa !78
  %27 = icmp eq i32 %22, 2, !dbg !81
  br i1 %27, label %28, label %30, !dbg !79

; <label>:28:                                     ; preds = %26
  %29 = tail call i32* @__errno() #5, !dbg !83
  br label %35, !dbg !83

; <label>:30:                                     ; preds = %25, %26
  %31 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !85
  %32 = icmp eq i32 %31, 0, !dbg !85
  br i1 %32, label %33, label %37, !dbg !87

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !88
  br label %35, !dbg !90

; <label>:35:                                     ; preds = %28, %33
  %36 = phi i32* [ %34, %33 ], [ %29, %28 ]
  store i32 33, i32* %36, align 4, !dbg !91, !tbaa !92
  br label %37, !dbg !93

; <label>:37:                                     ; preds = %35, %30
  %38 = load i32, i32* %21, align 8, !dbg !93, !tbaa !71
  %39 = icmp eq i32 %38, 0, !dbg !95
  br i1 %39, label %42, label %40, !dbg !96

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !97
  store i32 %38, i32* %41, align 4, !dbg !98, !tbaa !92
  br label %42, !dbg !97

; <label>:42:                                     ; preds = %37, %40
  %43 = load double, double* %24, align 8, !dbg !99, !tbaa !78
  br label %44, !dbg !100

; <label>:44:                                     ; preds = %11, %2, %8, %42
  %45 = phi double [ %43, %42 ], [ %5, %11 ], [ %5, %8 ], [ %5, %2 ], !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !102
  ret double %45, !dbg !102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_fmod(double, double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_fmod.c", directory: "/root/.unikraft/apps/redis/build")
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
!15 = distinct !DISubprogram(name: "fmod", scope: !1, file: !1, line: 70, type: !16, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 70, type: !18)
!21 = !DILocalVariable(name: "y", arg: 2, scope: !15, file: !1, line: 70, type: !18)
!22 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 79, type: !18)
!23 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 80, type: !24)
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
!34 = !DILocation(line: 70, column: 21, scope: !15)
!35 = !DILocation(line: 70, column: 31, scope: !15)
!36 = !DILocation(line: 80, column: 2, scope: !15)
!37 = !DILocation(line: 81, column: 6, scope: !15)
!38 = !DILocation(line: 79, column: 9, scope: !15)
!39 = !DILocation(line: 82, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !15, file: !1, line: 82, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 82, column: 18, scope: !40)
!45 = !DILocation(line: 82, column: 28, scope: !40)
!46 = !DILocation(line: 82, column: 30, scope: !40)
!47 = !DILocation(line: 82, column: 38, scope: !40)
!48 = !DILocation(line: 82, column: 40, scope: !40)
!49 = !DILocation(line: 83, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !15, file: !1, line: 83, column: 5)
!51 = !DILocation(line: 82, column: 5, scope: !15)
!52 = !DILocation(line: 85, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 83, column: 13)
!54 = !DILocation(line: 85, column: 22, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !42, i64 0}
!58 = !{!"any pointer", !42, i64 0}
!59 = !{!"double", !42, i64 0}
!60 = !DILocation(line: 86, column: 17, scope: !53)
!61 = !DILocation(line: 86, column: 22, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 87, column: 10, scope: !53)
!64 = !DILocation(line: 87, column: 15, scope: !53)
!65 = !{!56, !59, i64 16}
!66 = !DILocation(line: 88, column: 10, scope: !53)
!67 = !DILocation(line: 88, column: 15, scope: !53)
!68 = !{!56, !59, i64 24}
!69 = !DILocation(line: 89, column: 10, scope: !53)
!70 = !DILocation(line: 89, column: 14, scope: !53)
!71 = !{!56, !57, i64 40}
!72 = !DILocation(line: 90, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !53, file: !1, line: 90, column: 17)
!74 = !DILocation(line: 90, column: 30, scope: !73)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 90, column: 17, scope: !53)
!77 = !DILocation(line: 91, column: 27, scope: !73)
!78 = !{!56, !59, i64 32}
!79 = !DILocation(line: 94, column: 17, scope: !53)
!80 = !DILocation(line: 93, column: 20, scope: !73)
!81 = !DILocation(line: 94, column: 30, scope: !82)
!82 = distinct !DILexicalBlock(scope: !53, file: !1, line: 94, column: 17)
!83 = !DILocation(line: 95, column: 16, scope: !82)
!84 = !DILocation(line: 80, column: 19, scope: !15)
!85 = !DILocation(line: 96, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 96, column: 22)
!87 = !DILocation(line: 96, column: 22, scope: !82)
!88 = !DILocation(line: 97, column: 19, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 96, column: 38)
!90 = !DILocation(line: 98, column: 13, scope: !89)
!91 = !DILocation(line: 0, scope: !82)
!92 = !{!57, !57, i64 0}
!93 = !DILocation(line: 99, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !53, file: !1, line: 99, column: 10)
!95 = !DILocation(line: 99, column: 18, scope: !94)
!96 = !DILocation(line: 99, column: 10, scope: !53)
!97 = !DILocation(line: 100, column: 9, scope: !94)
!98 = !DILocation(line: 100, column: 15, scope: !94)
!99 = !DILocation(line: 101, column: 24, scope: !53)
!100 = !DILocation(line: 101, column: 13, scope: !53)
!101 = !DILocation(line: 0, scope: !50)
!102 = !DILocation(line: 105, column: 1, scope: !15)
