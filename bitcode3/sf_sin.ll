; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_sin.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_sin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @sinf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [2 x float], align 4
  %3 = bitcast [2 x float]* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !34
  %4 = bitcast float %0 to i32, !dbg !37
  %5 = and i32 %4, 2147483647, !dbg !39
  %6 = icmp ult i32 %5, 1061752793, !dbg !40
  br i1 %6, label %7, label %9, !dbg !42

; <label>:7:                                      ; preds = %1
  %8 = tail call float @__kernel_sinf(float %0, float 0.000000e+00, i32 0) #5, !dbg !43
  br label %39, !dbg !44

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %5, 2139095040, !dbg !45
  br i1 %10, label %13, label %11, !dbg !47

; <label>:11:                                     ; preds = %9
  %12 = fsub float %0, %0, !dbg !48
  br label %39, !dbg !49

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0, !dbg !50
  %15 = call i32 @__ieee754_rem_pio2f(float %0, float* nonnull %14) #5, !dbg !52
  %16 = trunc i32 %15 to i2, !dbg !54
  switch i2 %16, label %33 [
    i2 0, label %17
    i2 1, label %22
    i2 -2, label %27
  ], !dbg !54

; <label>:17:                                     ; preds = %13
  %18 = load float, float* %14, align 4, !dbg !55, !tbaa !57
  %19 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1, !dbg !61
  %20 = load float, float* %19, align 4, !dbg !61, !tbaa !57
  %21 = call float @__kernel_sinf(float %18, float %20, i32 1) #5, !dbg !62
  br label %39, !dbg !63

; <label>:22:                                     ; preds = %13
  %23 = load float, float* %14, align 4, !dbg !64, !tbaa !57
  %24 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1, !dbg !65
  %25 = load float, float* %24, align 4, !dbg !65, !tbaa !57
  %26 = call float @__kernel_cosf(float %23, float %25) #5, !dbg !66
  br label %39, !dbg !67

; <label>:27:                                     ; preds = %13
  %28 = load float, float* %14, align 4, !dbg !68, !tbaa !57
  %29 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1, !dbg !69
  %30 = load float, float* %29, align 4, !dbg !69, !tbaa !57
  %31 = call float @__kernel_sinf(float %28, float %30, i32 1) #5, !dbg !70
  %32 = fsub float -0.000000e+00, %31, !dbg !71
  br label %39, !dbg !72

; <label>:33:                                     ; preds = %13
  %34 = load float, float* %14, align 4, !dbg !73, !tbaa !57
  %35 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1, !dbg !74
  %36 = load float, float* %35, align 4, !dbg !74, !tbaa !57
  %37 = call float @__kernel_cosf(float %34, float %36) #5, !dbg !75
  %38 = fsub float -0.000000e+00, %37, !dbg !76
  br label %39, !dbg !77

; <label>:39:                                     ; preds = %33, %27, %22, %17, %11, %7
  %40 = phi float [ %8, %7 ], [ %38, %33 ], [ %32, %27 ], [ %26, %22 ], [ %21, %17 ], [ %12, %11 ], !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !79
  ret float %40, !dbg !79
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local float @__kernel_sinf(float, float, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__ieee754_rem_pio2f(float, float*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local float @__kernel_cosf(float, float) local_unnamed_addr #3

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_sin.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "sinf", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !18, !22, !23}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 19, type: !10)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 25, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DILocalVariable(name: "z", scope: !7, file: !1, line: 25, type: !10)
!18 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 26, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 77, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 26, type: !19)
!23 = !DILocalVariable(name: "gf_u", scope: !24, file: !1, line: 28, type: !25)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 2)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !26, line: 347, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 343, size: 32, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !27, file: !26, line: 345, baseType: !10, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !27, file: !26, line: 346, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 19, column: 19, scope: !7)
!34 = !DILocation(line: 25, column: 2, scope: !7)
!35 = !DILocation(line: 25, column: 8, scope: !7)
!36 = !DILocation(line: 25, column: 13, scope: !7)
!37 = !DILocation(line: 28, column: 2, scope: !24)
!38 = !DILocation(line: 26, column: 14, scope: !7)
!39 = !DILocation(line: 31, column: 5, scope: !7)
!40 = !DILocation(line: 32, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 5)
!42 = !DILocation(line: 32, column: 5, scope: !7)
!43 = !DILocation(line: 32, column: 30, scope: !41)
!44 = !DILocation(line: 32, column: 23, scope: !41)
!45 = !DILocation(line: 35, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 35, column: 11)
!47 = !DILocation(line: 35, column: 11, scope: !41)
!48 = !DILocation(line: 35, column: 45, scope: !46)
!49 = !DILocation(line: 35, column: 37, scope: !46)
!50 = !DILocation(line: 39, column: 32, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 38, column: 7)
!52 = !DILocation(line: 39, column: 10, scope: !51)
!53 = !DILocation(line: 26, column: 12, scope: !7)
!54 = !DILocation(line: 40, column: 6, scope: !51)
!55 = !DILocation(line: 41, column: 33, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 40, column: 18)
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 41, column: 38, scope: !56)
!62 = !DILocation(line: 41, column: 19, scope: !56)
!63 = !DILocation(line: 41, column: 11, scope: !56)
!64 = !DILocation(line: 42, column: 33, scope: !56)
!65 = !DILocation(line: 42, column: 38, scope: !56)
!66 = !DILocation(line: 42, column: 19, scope: !56)
!67 = !DILocation(line: 42, column: 11, scope: !56)
!68 = !DILocation(line: 43, column: 33, scope: !56)
!69 = !DILocation(line: 43, column: 38, scope: !56)
!70 = !DILocation(line: 43, column: 19, scope: !56)
!71 = !DILocation(line: 43, column: 18, scope: !56)
!72 = !DILocation(line: 43, column: 11, scope: !56)
!73 = !DILocation(line: 45, column: 26, scope: !56)
!74 = !DILocation(line: 45, column: 31, scope: !56)
!75 = !DILocation(line: 45, column: 12, scope: !56)
!76 = !DILocation(line: 45, column: 11, scope: !56)
!77 = !DILocation(line: 45, column: 4, scope: !56)
!78 = !DILocation(line: 0, scope: !46)
!79 = !DILocation(line: 48, column: 1, scope: !7)
