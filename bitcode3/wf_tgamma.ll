; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_tgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_tgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noredzone nounwind
define dso_local float @tgammaf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !26
  %4 = call float @__ieee754_gammaf_r(float %0, i32* nonnull %2) #5, !dbg !28
  %5 = load i32, i32* %2, align 4, !dbg !30, !tbaa !32
  %6 = icmp slt i32 %5, 0, !dbg !36
  %7 = fsub float -0.000000e+00, %4, !dbg !37
  %8 = select i1 %6, float %7, float %4, !dbg !38
  %9 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %10 = icmp eq i32 %9, -1, !dbg !42
  br i1 %10, label %29, label %11, !dbg !43

; <label>:11:                                     ; preds = %1
  %12 = call i32 @finitef(float %8) #5, !dbg !44
  %13 = icmp eq i32 %12, 0, !dbg !44
  br i1 %13, label %14, label %29, !dbg !46

; <label>:14:                                     ; preds = %11
  %15 = call i32 @finitef(float %0) #5, !dbg !47
  %16 = icmp eq i32 %15, 0, !dbg !47
  br i1 %16, label %29, label %17, !dbg !48

; <label>:17:                                     ; preds = %14
  %18 = call float @floorf(float %0) #5, !dbg !49
  %19 = fcmp oeq float %18, %0, !dbg !52
  %20 = fcmp ole float %0, 0.000000e+00, !dbg !53
  %21 = and i1 %20, %19, !dbg !54
  %22 = fpext float %0 to double, !dbg !55
  br i1 %21, label %23, label %26, !dbg !54

; <label>:23:                                     ; preds = %17
  %24 = call double @__kernel_standard(double %22, double %22, i32 141) #5, !dbg !56
  %25 = fptrunc double %24 to float, !dbg !57
  br label %29, !dbg !58

; <label>:26:                                     ; preds = %17
  %27 = call double @__kernel_standard(double %22, double %22, i32 140) #5, !dbg !59
  %28 = fptrunc double %27 to float, !dbg !60
  br label %29, !dbg !61

; <label>:29:                                     ; preds = %11, %14, %1, %26, %23
  %30 = phi float [ %25, %23 ], [ %28, %26 ], [ %8, %1 ], [ %8, %14 ], [ %8, %11 ], !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !62
  ret float %30, !dbg !62
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
!37 = !DILocation(line: 29, column: 29, scope: !31)
!38 = !DILocation(line: 29, column: 6, scope: !18)
!39 = !DILocation(line: 33, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 33, column: 5)
!41 = !{!34, !34, i64 0}
!42 = !DILocation(line: 33, column: 18, scope: !40)
!43 = !DILocation(line: 33, column: 5, scope: !18)
!44 = !DILocation(line: 35, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 5)
!46 = !DILocation(line: 35, column: 16, scope: !45)
!47 = !DILocation(line: 35, column: 18, scope: !45)
!48 = !DILocation(line: 35, column: 5, scope: !18)
!49 = !DILocation(line: 36, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 36, column: 7)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 35, column: 30)
!52 = !DILocation(line: 36, column: 16, scope: !50)
!53 = !DILocation(line: 36, column: 22, scope: !50)
!54 = !DILocation(line: 36, column: 19, scope: !50)
!55 = !DILocation(line: 0, scope: !50)
!56 = !DILocation(line: 38, column: 20, scope: !50)
!57 = !DILocation(line: 38, column: 13, scope: !50)
!58 = !DILocation(line: 38, column: 6, scope: !50)
!59 = !DILocation(line: 41, column: 20, scope: !50)
!60 = !DILocation(line: 41, column: 13, scope: !50)
!61 = !DILocation(line: 41, column: 6, scope: !50)
!62 = !DILocation(line: 45, column: 1, scope: !18)
