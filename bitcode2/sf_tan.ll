; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @tanf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [2 x float], align 4
  %3 = bitcast [2 x float]* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !34
  %4 = bitcast float %0 to i32, !dbg !37
  %5 = and i32 %4, 2147483647, !dbg !39
  %6 = icmp ult i32 %5, 1061752795, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %6, label %7, label %9, !dbg !42

; <label>:7:                                      ; preds = %1
  %8 = tail call float @__kernel_tanf(float %0, float 0.000000e+00, i32 1) #5, !dbg !43
  br label %23, !dbg !44

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %5, 2139095040, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %10, label %13, label %11, !dbg !47

; <label>:11:                                     ; preds = %9
  %12 = fsub float %0, %0, !dbg !48
  br label %23, !dbg !49

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0, !dbg !50
  %15 = call i32 @__ieee754_rem_pio2f(float %0, float* nonnull %14) #5, !dbg !52
  %16 = load float, float* %14, align 4, !dbg !54, !tbaa !55
  %17 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1, !dbg !59
  %18 = load float, float* %17, align 4, !dbg !59, !tbaa !55
  %19 = shl i32 %15, 1, !dbg !60
  %20 = and i32 %19, 2, !dbg !60
  %21 = sub nsw i32 1, %20, !dbg !61
  %22 = call float @__kernel_tanf(float %16, float %18, i32 %21) #5, !dbg !62
  br label %23, !dbg !63

; <label>:23:                                     ; preds = %13, %11, %7
  %24 = phi float [ %8, %7 ], [ %22, %13 ], [ %12, %11 ], !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret float %24, !dbg !66
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local float @__kernel_tanf(float, float, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__ieee754_rem_pio2f(float, float*) local_unnamed_addr #3

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tan.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "tanf", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
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
!54 = !DILocation(line: 40, column: 27, scope: !51)
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 40, column: 32, scope: !51)
!60 = !DILocation(line: 40, column: 45, scope: !51)
!61 = !DILocation(line: 40, column: 38, scope: !51)
!62 = !DILocation(line: 40, column: 13, scope: !51)
!63 = !DILocation(line: 40, column: 6, scope: !51)
!64 = !DILocation(line: 0, scope: !46)
!65 = !DILocation(line: 0, scope: !41)
!66 = !DILocation(line: 43, column: 1, scope: !7)
