; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_tgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_tgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @tgammaf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !26
  %4 = call float @__ieee754_gammaf_r(float %0, i32* nonnull %2) #5, !dbg !28
  %5 = load i32, i32* %2, align 4, !dbg !30, !tbaa !32
  %6 = icmp slt i32 %5, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %6, label %7, label %9, !dbg !37

; <label>:7:                                      ; preds = %1
  %8 = fsub float -0.000000e+00, %4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %9, !dbg !39

; <label>:9:                                      ; preds = %7, %1
  %10 = phi float [ %8, %7 ], [ %4, %1 ], !dbg !40
  %11 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %12 = icmp eq i32 %11, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %12, label %31, label %13, !dbg !45

; <label>:13:                                     ; preds = %9
  %14 = call i32 @finitef(float %10) #5, !dbg !46
  %15 = icmp eq i32 %14, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %15, label %16, label %31, !dbg !48

; <label>:16:                                     ; preds = %13
  %17 = call i32 @finitef(float %0) #5, !dbg !49
  %18 = icmp eq i32 %17, 0, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %18, label %31, label %19, !dbg !50

; <label>:19:                                     ; preds = %16
  %20 = call float @floorf(float %0) #5, !dbg !51
  %21 = fcmp oeq float %20, %0, !dbg !54
  %22 = fcmp ole float %0, 0.000000e+00, !dbg !55
  %23 = and i1 %22, %21, !dbg !56
  %24 = fpext float %0 to double, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %23, label %25, label %28, !dbg !56

; <label>:25:                                     ; preds = %19
  %26 = call double @__kernel_standard(double %24, double %24, i32 141) #5, !dbg !58
  %27 = fptrunc double %26 to float, !dbg !59
  br label %31, !dbg !60

; <label>:28:                                     ; preds = %19
  %29 = call double @__kernel_standard(double %24, double %24, i32 140) #5, !dbg !61
  %30 = fptrunc double %29 to float, !dbg !62
  br label %31, !dbg !63

; <label>:31:                                     ; preds = %13, %16, %9, %28, %25
  %32 = phi float [ %27, %25 ], [ %30, %28 ], [ %10, %9 ], [ %10, %16 ], [ %10, %13 ], !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  ret float %32, !dbg !65
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_gammaf_r(float, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local float @floorf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @__kernel_standard(double, double, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_tgamma.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "tgammaf", scope: !1, file: !1, line: 20, type: !19, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 20, type: !12)
!23 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 26, type: !12)
!24 = !DILocalVariable(name: "local_signgam", scope: !18, file: !1, line: 27, type: !5)
!25 = !DILocation(line: 20, column: 22, scope: !18)
!26 = !DILocation(line: 27, column: 2, scope: !18)
!27 = !DILocation(line: 27, column: 6, scope: !18)
!28 = !DILocation(line: 28, column: 6, scope: !18)
!29 = !DILocation(line: 26, column: 15, scope: !18)
!30 = !DILocation(line: 29, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !18, file: !1, line: 29, column: 6)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 29, column: 20, scope: !31)
!37 = !DILocation(line: 29, column: 6, scope: !18)
!38 = !DILocation(line: 29, column: 29, scope: !31)
!39 = !DILocation(line: 29, column: 25, scope: !31)
!40 = !DILocation(line: 0, scope: !18)
!41 = !DILocation(line: 33, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 33, column: 5)
!43 = !{!34, !34, i64 0}
!44 = !DILocation(line: 33, column: 18, scope: !42)
!45 = !DILocation(line: 33, column: 5, scope: !18)
!46 = !DILocation(line: 35, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 5)
!48 = !DILocation(line: 35, column: 16, scope: !47)
!49 = !DILocation(line: 35, column: 18, scope: !47)
!50 = !DILocation(line: 35, column: 5, scope: !18)
!51 = !DILocation(line: 36, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 36, column: 7)
!53 = distinct !DILexicalBlock(scope: !47, file: !1, line: 35, column: 30)
!54 = !DILocation(line: 36, column: 16, scope: !52)
!55 = !DILocation(line: 36, column: 22, scope: !52)
!56 = !DILocation(line: 36, column: 19, scope: !52)
!57 = !DILocation(line: 0, scope: !52)
!58 = !DILocation(line: 38, column: 20, scope: !52)
!59 = !DILocation(line: 38, column: 13, scope: !52)
!60 = !DILocation(line: 38, column: 6, scope: !52)
!61 = !DILocation(line: 41, column: 20, scope: !52)
!62 = !DILocation(line: 41, column: 13, scope: !52)
!63 = !DILocation(line: 41, column: 6, scope: !52)
!64 = !DILocation(line: 0, scope: !42)
!65 = !DILocation(line: 45, column: 1, scope: !18)
