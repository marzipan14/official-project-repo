; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sqrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @sqrt(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !34
  %4 = tail call double @__ieee754_sqrt(double %0) #5, !dbg !35
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !37, !tbaa !39
  %6 = icmp eq i32 %5, -1, !dbg !42
  br i1 %6, label %39, label %7, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !44
  %9 = icmp ne i32 %8, 0, !dbg !44
  %10 = fcmp olt double %0, 0.000000e+00, !dbg !45
  %11 = and i1 %10, %9, !dbg !47
  br i1 %11, label %12, label %39, !dbg !47

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !48
  store i32 1, i32* %13, align 8, !dbg !50, !tbaa !51
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !56
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !57, !tbaa !58
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !59
  store i32 0, i32* %15, align 8, !dbg !60, !tbaa !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !62
  store double %0, double* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !65
  store double %0, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !68, !tbaa !39
  %19 = icmp eq i32 %18, 0, !dbg !70
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !71
  %21 = select i1 %19, double 0.000000e+00, double 0x7FF8000000000000, !dbg !72
  store double %21, double* %20, align 8, !dbg !71, !tbaa !73
  %22 = icmp eq i32 %18, 2, !dbg !74
  br i1 %22, label %23, label %25, !dbg !76

; <label>:23:                                     ; preds = %12
  %24 = tail call i32* @__errno() #5, !dbg !77
  br label %30, !dbg !77

; <label>:25:                                     ; preds = %12
  %26 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !79
  %27 = icmp eq i32 %26, 0, !dbg !79
  br i1 %27, label %28, label %32, !dbg !81

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !82
  br label %30, !dbg !84

; <label>:30:                                     ; preds = %23, %28
  %31 = phi i32* [ %29, %28 ], [ %24, %23 ]
  store i32 33, i32* %31, align 4, !dbg !85, !tbaa !86
  br label %32, !dbg !87

; <label>:32:                                     ; preds = %30, %25
  %33 = load i32, i32* %15, align 8, !dbg !87, !tbaa !61
  %34 = icmp eq i32 %33, 0, !dbg !89
  br i1 %34, label %37, label %35, !dbg !90

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno() #5, !dbg !91
  store i32 %33, i32* %36, align 4, !dbg !92, !tbaa !86
  br label %37, !dbg !91

; <label>:37:                                     ; preds = %32, %35
  %38 = load double, double* %20, align 8, !dbg !93, !tbaa !73
  br label %39, !dbg !94

; <label>:39:                                     ; preds = %7, %1, %37
  %40 = phi double [ %38, %37 ], [ %4, %7 ], [ %4, %1 ], !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !96
  ret double %40, !dbg !96
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sqrt.c", directory: "/root/.unikraft/apps/redis/build")
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
!15 = distinct !DISubprogram(name: "sqrt", scope: !1, file: !1, line: 58, type: !16, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !32}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 58, type: !18)
!21 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 67, type: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !23)
!23 = !{!24, !25, !28, !29, !30, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !4, line: 581, baseType: !5, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !4, line: 582, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !22, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !22, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !22, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !22, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!32 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 68, type: !18)
!33 = !DILocation(line: 58, column: 21, scope: !15)
!34 = !DILocation(line: 67, column: 2, scope: !15)
!35 = !DILocation(line: 69, column: 6, scope: !15)
!36 = !DILocation(line: 68, column: 9, scope: !15)
!37 = !DILocation(line: 70, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 70, column: 5)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 70, column: 18, scope: !38)
!43 = !DILocation(line: 70, column: 28, scope: !38)
!44 = !DILocation(line: 70, column: 31, scope: !38)
!45 = !DILocation(line: 71, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !15, file: !1, line: 71, column: 5)
!47 = !DILocation(line: 70, column: 5, scope: !15)
!48 = !DILocation(line: 72, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 71, column: 12)
!50 = !DILocation(line: 72, column: 13, scope: !49)
!51 = !{!52, !53, i64 0}
!52 = !{!"exception", !53, i64 0, !54, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !53, i64 40}
!53 = !{!"int", !40, i64 0}
!54 = !{!"any pointer", !40, i64 0}
!55 = !{!"double", !40, i64 0}
!56 = !DILocation(line: 73, column: 8, scope: !49)
!57 = !DILocation(line: 73, column: 13, scope: !49)
!58 = !{!52, !54, i64 8}
!59 = !DILocation(line: 74, column: 8, scope: !49)
!60 = !DILocation(line: 74, column: 12, scope: !49)
!61 = !{!52, !53, i64 40}
!62 = !DILocation(line: 75, column: 19, scope: !49)
!63 = !DILocation(line: 75, column: 24, scope: !49)
!64 = !{!52, !55, i64 24}
!65 = !DILocation(line: 75, column: 8, scope: !49)
!66 = !DILocation(line: 75, column: 13, scope: !49)
!67 = !{!52, !55, i64 16}
!68 = !DILocation(line: 76, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !1, line: 76, column: 8)
!70 = !DILocation(line: 76, column: 21, scope: !69)
!71 = !DILocation(line: 0, scope: !69)
!72 = !DILocation(line: 77, column: 6, scope: !69)
!73 = !{!52, !55, i64 32}
!74 = !DILocation(line: 80, column: 28, scope: !75)
!75 = distinct !DILexicalBlock(scope: !49, file: !1, line: 80, column: 15)
!76 = !DILocation(line: 80, column: 15, scope: !49)
!77 = !DILocation(line: 81, column: 13, scope: !75)
!78 = !DILocation(line: 67, column: 19, scope: !15)
!79 = !DILocation(line: 82, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 82, column: 20)
!81 = !DILocation(line: 82, column: 20, scope: !75)
!82 = !DILocation(line: 83, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 82, column: 36)
!84 = !DILocation(line: 84, column: 11, scope: !83)
!85 = !DILocation(line: 0, scope: !75)
!86 = !{!53, !53, i64 0}
!87 = !DILocation(line: 85, column: 19, scope: !88)
!88 = distinct !DILexicalBlock(scope: !49, file: !1, line: 85, column: 15)
!89 = !DILocation(line: 85, column: 23, scope: !88)
!90 = !DILocation(line: 85, column: 15, scope: !49)
!91 = !DILocation(line: 86, column: 6, scope: !88)
!92 = !DILocation(line: 86, column: 12, scope: !88)
!93 = !DILocation(line: 87, column: 15, scope: !49)
!94 = !DILocation(line: 87, column: 4, scope: !49)
!95 = !DILocation(line: 0, scope: !46)
!96 = !DILocation(line: 91, column: 1, scope: !15)
