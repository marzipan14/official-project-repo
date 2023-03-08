; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_llrint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_llrint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TWO23 = internal unnamed_addr constant [2 x float] [float 0x4160000000000000, float 0xC160000000000000], align 4, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @llrintf(float) local_unnamed_addr #0 !dbg !21 {
  %2 = alloca float, align 4
  %3 = bitcast float* %2 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !50
  %4 = bitcast float %0 to i32, !dbg !52
  %5 = lshr i32 %4, 31, !dbg !54
  %6 = lshr i32 %4, 23, !dbg !56
  %7 = and i32 %6, 255, !dbg !56
  %8 = icmp ult i32 %7, 190, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %8, label %9, label %38, !dbg !59

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %7, 126, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %10, label %45, label %11, !dbg !61

; <label>:11:                                     ; preds = %9
  %12 = icmp ugt i32 %7, 149, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %12, label %13, label %20, !dbg !63

; <label>:13:                                     ; preds = %11
  %14 = and i32 %4, 8388607, !dbg !64
  %15 = or i32 %14, 8388608, !dbg !65
  %16 = zext i32 %15 to i64, !dbg !66
  %17 = add nsw i32 %7, -150, !dbg !67
  %18 = zext i32 %17 to i64, !dbg !68
  %19 = shl i64 %16, %18, !dbg !68
  br label %40, !dbg !70

; <label>:20:                                     ; preds = %11
  %21 = zext i32 %5 to i64, !dbg !71
  %22 = getelementptr inbounds [2 x float], [2 x float]* @TWO23, i64 0, i64 %21, !dbg !71
  %23 = load float, float* %22, align 4, !dbg !71, !tbaa !72
  %24 = fadd float %23, %0, !dbg !76
  store volatile float %24, float* %2, align 4, !dbg !77, !tbaa !72
  %25 = load volatile float, float* %2, align 4, !dbg !78, !tbaa !72
  %26 = fsub float %25, %23, !dbg !79
  %27 = bitcast float %26 to i32, !dbg !81
  %28 = and i32 %27, 2147483647, !dbg !82
  %29 = icmp eq i32 %28, 0, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %29, label %45, label %30, !dbg !85

; <label>:30:                                     ; preds = %20
  %31 = lshr i32 %27, 23, !dbg !86
  %32 = and i32 %31, 255, !dbg !87
  %33 = and i32 %27, 8388607, !dbg !88
  %34 = or i32 %33, 8388608, !dbg !89
  %35 = sub nsw i32 150, %32, !dbg !90
  %36 = lshr i32 %34, %35, !dbg !91
  %37 = zext i32 %36 to i64, !dbg !92
  br label %40

; <label>:38:                                     ; preds = %1
  %39 = fptosi float %0 to i64, !dbg !93
  br label %45, !dbg !95

; <label>:40:                                     ; preds = %30, %13
  %41 = phi i64 [ %19, %13 ], [ %37, %30 ], !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = icmp eq i32 %5, 0, !dbg !97
  %43 = sub nsw i64 0, %41, !dbg !98
  %44 = select i1 %42, i64 %41, i64 %43, !dbg !97
  br label %45, !dbg !99

; <label>:45:                                     ; preds = %20, %9, %40, %38
  %46 = phi i64 [ %44, %40 ], [ %39, %38 ], [ 0, %9 ], [ 0, %20 ], !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  ret i64 %46, !dbg !102
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO23", scope: !2, file: !3, line: 35, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_llrint.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !15)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "llrintf", scope: !3, file: !3, line: 41, type: !22, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!7, !14}
!24 = !{!25, !26, !28, !29, !30, !31, !33, !34, !42}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !3, line: 41, type: !14)
!26 = !DILocalVariable(name: "j0", scope: !21, file: !3, line: 47, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 77, baseType: !6)
!28 = !DILocalVariable(name: "sx", scope: !21, file: !3, line: 47, type: !27)
!29 = !DILocalVariable(name: "i0", scope: !21, file: !3, line: 48, type: !8)
!30 = !DILocalVariable(name: "t", scope: !21, file: !3, line: 49, type: !14)
!31 = !DILocalVariable(name: "w", scope: !21, file: !3, line: 50, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!33 = !DILocalVariable(name: "result", scope: !21, file: !3, line: 51, type: !7)
!34 = !DILocalVariable(name: "gf_u", scope: !35, file: !3, line: 53, type: !36)
!35 = distinct !DILexicalBlock(scope: !21, file: !3, line: 53, column: 3)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !37, line: 347, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 343, size: 32, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !37, line: 345, baseType: !14, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !38, file: !37, line: 346, baseType: !8, size: 32)
!42 = !DILocalVariable(name: "gf_u", scope: !43, file: !3, line: 71, type: !36)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 71, column: 11)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 68, column: 9)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 65, column: 16)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 63, column: 11)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 62, column: 5)
!48 = distinct !DILexicalBlock(scope: !21, file: !3, line: 61, column: 7)
!49 = !DILocation(line: 41, column: 30, scope: !21)
!50 = !DILocation(line: 50, column: 3, scope: !21)
!51 = !DILocation(line: 50, column: 18, scope: !21)
!52 = !DILocation(line: 53, column: 3, scope: !35)
!53 = !DILocation(line: 48, column: 14, scope: !21)
!54 = !DILocation(line: 56, column: 12, scope: !21)
!55 = !DILocation(line: 47, column: 16, scope: !21)
!56 = !DILocation(line: 59, column: 27, scope: !21)
!57 = !DILocation(line: 47, column: 13, scope: !21)
!58 = !DILocation(line: 61, column: 10, scope: !48)
!59 = !DILocation(line: 61, column: 7, scope: !21)
!60 = !DILocation(line: 63, column: 14, scope: !46)
!61 = !DILocation(line: 63, column: 11, scope: !47)
!62 = !DILocation(line: 65, column: 19, scope: !45)
!63 = !DILocation(line: 65, column: 16, scope: !46)
!64 = !DILocation(line: 66, column: 39, scope: !45)
!65 = !DILocation(line: 66, column: 51, scope: !45)
!66 = !DILocation(line: 66, column: 18, scope: !45)
!67 = !DILocation(line: 66, column: 70, scope: !45)
!68 = !DILocation(line: 66, column: 63, scope: !45)
!69 = !DILocation(line: 51, column: 17, scope: !21)
!70 = !DILocation(line: 66, column: 9, scope: !45)
!71 = !DILocation(line: 69, column: 15, scope: !44)
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 69, column: 25, scope: !44)
!77 = !DILocation(line: 69, column: 13, scope: !44)
!78 = !DILocation(line: 70, column: 15, scope: !44)
!79 = !DILocation(line: 70, column: 17, scope: !44)
!80 = !DILocation(line: 49, column: 9, scope: !21)
!81 = !DILocation(line: 71, column: 11, scope: !43)
!82 = !DILocation(line: 74, column: 19, scope: !83)
!83 = distinct !DILexicalBlock(scope: !44, file: !3, line: 74, column: 15)
!84 = !DILocation(line: 74, column: 45, scope: !83)
!85 = !DILocation(line: 74, column: 15, scope: !44)
!86 = !DILocation(line: 76, column: 21, scope: !44)
!87 = !DILocation(line: 76, column: 28, scope: !44)
!88 = !DILocation(line: 77, column: 14, scope: !44)
!89 = !DILocation(line: 78, column: 14, scope: !44)
!90 = !DILocation(line: 79, column: 30, scope: !44)
!91 = !DILocation(line: 79, column: 23, scope: !44)
!92 = !DILocation(line: 79, column: 20, scope: !44)
!93 = !DILocation(line: 84, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !48, file: !3, line: 83, column: 5)
!95 = !DILocation(line: 84, column: 7, scope: !94)
!96 = !DILocation(line: 0, scope: !44)
!97 = !DILocation(line: 86, column: 10, scope: !21)
!98 = !DILocation(line: 86, column: 15, scope: !21)
!99 = !DILocation(line: 86, column: 3, scope: !21)
!100 = !DILocation(line: 0, scope: !94)
!101 = !DILocation(line: 0, scope: !46)
!102 = !DILocation(line: 87, column: 1, scope: !21)
