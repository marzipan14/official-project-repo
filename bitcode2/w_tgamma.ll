; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_tgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_tgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @tgamma(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !24
  %4 = call double @__ieee754_gamma_r(double %0, i32* nonnull %2) #5, !dbg !26
  %5 = load i32, i32* %2, align 4, !dbg !28, !tbaa !30
  %6 = icmp slt i32 %5, 0, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  br i1 %6, label %7, label %9, !dbg !35

; <label>:7:                                      ; preds = %1
  %8 = fsub double -0.000000e+00, %4, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br label %9, !dbg !37

; <label>:9:                                      ; preds = %7, %1
  %10 = phi double [ %8, %7 ], [ %4, %1 ], !dbg !38
  %11 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %12 = icmp eq i32 %11, -1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %12, label %28, label %13, !dbg !43

; <label>:13:                                     ; preds = %9
  %14 = call i32 @finite(double %10) #5, !dbg !44
  %15 = icmp eq i32 %14, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %15, label %16, label %28, !dbg !46

; <label>:16:                                     ; preds = %13
  %17 = call i32 @finite(double %0) #5, !dbg !47
  %18 = icmp eq i32 %17, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %18, label %28, label %19, !dbg !48

; <label>:19:                                     ; preds = %16
  %20 = call double @floor(double %0) #5, !dbg !49
  %21 = fcmp oeq double %20, %0, !dbg !52
  %22 = fcmp ole double %0, 0.000000e+00, !dbg !53
  %23 = and i1 %22, %21, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %23, label %24, label %26, !dbg !54

; <label>:24:                                     ; preds = %19
  %25 = call double @__kernel_standard(double %0, double %0, i32 41) #5, !dbg !55
  br label %28, !dbg !56

; <label>:26:                                     ; preds = %19
  %27 = call double @__kernel_standard(double %0, double %0, i32 40) #5, !dbg !57
  br label %28, !dbg !58

; <label>:28:                                     ; preds = %13, %16, %9, %26, %24
  %29 = phi double [ %25, %24 ], [ %27, %26 ], [ %10, %9 ], [ %10, %16 ], [ %10, %13 ], !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  ret double %29, !dbg !61
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_gamma_r(double, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

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

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_tgamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!15 = distinct !DISubprogram(name: "tgamma", scope: !1, file: !1, line: 23, type: !16, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 23, type: !18)
!21 = !DILocalVariable(name: "y", scope: !15, file: !1, line: 29, type: !18)
!22 = !DILocalVariable(name: "local_signgam", scope: !15, file: !1, line: 30, type: !5)
!23 = !DILocation(line: 23, column: 23, scope: !15)
!24 = !DILocation(line: 30, column: 2, scope: !15)
!25 = !DILocation(line: 30, column: 6, scope: !15)
!26 = !DILocation(line: 31, column: 6, scope: !15)
!27 = !DILocation(line: 29, column: 16, scope: !15)
!28 = !DILocation(line: 32, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !15, file: !1, line: 32, column: 6)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 32, column: 20, scope: !29)
!35 = !DILocation(line: 32, column: 6, scope: !15)
!36 = !DILocation(line: 32, column: 29, scope: !29)
!37 = !DILocation(line: 32, column: 25, scope: !29)
!38 = !DILocation(line: 0, scope: !15)
!39 = !DILocation(line: 36, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !15, file: !1, line: 36, column: 5)
!41 = !{!32, !32, i64 0}
!42 = !DILocation(line: 36, column: 18, scope: !40)
!43 = !DILocation(line: 36, column: 5, scope: !15)
!44 = !DILocation(line: 38, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !15, file: !1, line: 38, column: 5)
!46 = !DILocation(line: 38, column: 15, scope: !45)
!47 = !DILocation(line: 38, column: 17, scope: !45)
!48 = !DILocation(line: 38, column: 5, scope: !15)
!49 = !DILocation(line: 39, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 39, column: 7)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 38, column: 28)
!52 = !DILocation(line: 39, column: 15, scope: !50)
!53 = !DILocation(line: 39, column: 21, scope: !50)
!54 = !DILocation(line: 39, column: 18, scope: !50)
!55 = !DILocation(line: 40, column: 13, scope: !50)
!56 = !DILocation(line: 40, column: 6, scope: !50)
!57 = !DILocation(line: 42, column: 13, scope: !50)
!58 = !DILocation(line: 42, column: 6, scope: !50)
!59 = !DILocation(line: 0, scope: !50)
!60 = !DILocation(line: 0, scope: !40)
!61 = !DILocation(line: 46, column: 1, scope: !15)
