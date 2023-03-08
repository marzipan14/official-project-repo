; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_cos.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_cos.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @cos(double) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [2 x double], align 16
  %3 = bitcast [2 x double]* %2 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #4, !dbg !38
  %4 = bitcast double %0 to i64, !dbg !41
  %5 = lshr i64 %4, 32, !dbg !41
  %6 = trunc i64 %5 to i32, !dbg !41
  %7 = and i32 %6, 2147483647, !dbg !43
  %8 = icmp ult i32 %7, 1072243196, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %8, label %9, label %11, !dbg !46

; <label>:9:                                      ; preds = %1
  %10 = tail call double @__kernel_cos(double %0, double 0.000000e+00) #5, !dbg !47
  br label %41, !dbg !48

; <label>:11:                                     ; preds = %1
  %12 = icmp ugt i32 %7, 2146435071, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %12, label %13, label %15, !dbg !51

; <label>:13:                                     ; preds = %11
  %14 = fsub double %0, %0, !dbg !52
  br label %41, !dbg !53

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 0, !dbg !54
  %17 = call i32 @__ieee754_rem_pio2(double %0, double* nonnull %16) #5, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  %18 = trunc i32 %17 to i2, !dbg !58
  switch i2 %18, label %36 [
    i2 0, label %19
    i2 1, label %24
    i2 -2, label %30
  ], !dbg !58

; <label>:19:                                     ; preds = %15
  %20 = load double, double* %16, align 16, !dbg !59, !tbaa !61
  %21 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1, !dbg !65
  %22 = load double, double* %21, align 8, !dbg !65, !tbaa !61
  %23 = call double @__kernel_cos(double %20, double %22) #5, !dbg !66
  br label %41, !dbg !67

; <label>:24:                                     ; preds = %15
  %25 = load double, double* %16, align 16, !dbg !68, !tbaa !61
  %26 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1, !dbg !69
  %27 = load double, double* %26, align 8, !dbg !69, !tbaa !61
  %28 = call double @__kernel_sin(double %25, double %27, i32 1) #5, !dbg !70
  %29 = fsub double -0.000000e+00, %28, !dbg !71
  br label %41, !dbg !72

; <label>:30:                                     ; preds = %15
  %31 = load double, double* %16, align 16, !dbg !73, !tbaa !61
  %32 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1, !dbg !74
  %33 = load double, double* %32, align 8, !dbg !74, !tbaa !61
  %34 = call double @__kernel_cos(double %31, double %33) #5, !dbg !75
  %35 = fsub double -0.000000e+00, %34, !dbg !76
  br label %41, !dbg !77

; <label>:36:                                     ; preds = %15
  %37 = load double, double* %16, align 16, !dbg !78, !tbaa !61
  %38 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1, !dbg !79
  %39 = load double, double* %38, align 8, !dbg !79, !tbaa !61
  %40 = call double @__kernel_sin(double %37, double %39, i32 1) #5, !dbg !80
  br label %41, !dbg !81

; <label>:41:                                     ; preds = %36, %30, %24, %19, %13, %9
  %42 = phi double [ %10, %9 ], [ %14, %13 ], [ %40, %36 ], [ %35, %30 ], [ %29, %24 ], [ %23, %19 ], !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #4, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  ret double %42, !dbg !84
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @__kernel_cos(double, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__ieee754_rem_pio2(double, double*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @__kernel_sin(double, double, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_cos.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "cos", scope: !1, file: !1, line: 50, type: !8, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !18, !22, !23}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 50, type: !10)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 56, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DILocalVariable(name: "z", scope: !7, file: !1, line: 56, type: !10)
!18 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 57, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 77, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 57, type: !19)
!23 = !DILocalVariable(name: "gh_u", scope: !24, file: !1, line: 60, type: !25)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 60, column: 2)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !26, line: 278, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 270, size: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !27, file: !26, line: 272, baseType: !10, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !27, file: !26, line: 277, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !27, file: !26, line: 273, size: 64, elements: !32)
!32 = !{!33, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !31, file: !26, line: 275, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !35)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !31, file: !26, line: 276, baseType: !34, size: 32, offset: 32)
!37 = !DILocation(line: 50, column: 20, scope: !7)
!38 = !DILocation(line: 56, column: 2, scope: !7)
!39 = !DILocation(line: 56, column: 9, scope: !7)
!40 = !DILocation(line: 56, column: 14, scope: !7)
!41 = !DILocation(line: 60, column: 2, scope: !24)
!42 = !DILocation(line: 57, column: 14, scope: !7)
!43 = !DILocation(line: 63, column: 5, scope: !7)
!44 = !DILocation(line: 64, column: 8, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 5)
!46 = !DILocation(line: 64, column: 5, scope: !7)
!47 = !DILocation(line: 64, column: 30, scope: !45)
!48 = !DILocation(line: 64, column: 23, scope: !45)
!49 = !DILocation(line: 67, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 67, column: 11)
!51 = !DILocation(line: 67, column: 11, scope: !45)
!52 = !DILocation(line: 67, column: 35, scope: !50)
!53 = !DILocation(line: 67, column: 27, scope: !50)
!54 = !DILocation(line: 71, column: 31, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 70, column: 7)
!56 = !DILocation(line: 71, column: 10, scope: !55)
!57 = !DILocation(line: 57, column: 12, scope: !7)
!58 = !DILocation(line: 72, column: 6, scope: !55)
!59 = !DILocation(line: 73, column: 32, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 72, column: 18)
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 73, column: 37, scope: !60)
!66 = !DILocation(line: 73, column: 19, scope: !60)
!67 = !DILocation(line: 73, column: 11, scope: !60)
!68 = !DILocation(line: 74, column: 32, scope: !60)
!69 = !DILocation(line: 74, column: 37, scope: !60)
!70 = !DILocation(line: 74, column: 19, scope: !60)
!71 = !DILocation(line: 74, column: 18, scope: !60)
!72 = !DILocation(line: 74, column: 11, scope: !60)
!73 = !DILocation(line: 75, column: 32, scope: !60)
!74 = !DILocation(line: 75, column: 37, scope: !60)
!75 = !DILocation(line: 75, column: 19, scope: !60)
!76 = !DILocation(line: 75, column: 18, scope: !60)
!77 = !DILocation(line: 75, column: 11, scope: !60)
!78 = !DILocation(line: 77, column: 32, scope: !60)
!79 = !DILocation(line: 77, column: 37, scope: !60)
!80 = !DILocation(line: 77, column: 19, scope: !60)
!81 = !DILocation(line: 77, column: 11, scope: !60)
!82 = !DILocation(line: 0, scope: !60)
!83 = !DILocation(line: 0, scope: !45)
!84 = !DILocation(line: 80, column: 1, scope: !7)
