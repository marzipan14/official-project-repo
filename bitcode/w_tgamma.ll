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
  %7 = fsub double -0.000000e+00, %4, !dbg !35
  %8 = select i1 %6, double %7, double %4, !dbg !36
  %9 = load i32, i32* @__fdlib_version, align 4, !dbg !37, !tbaa !39
  %10 = icmp eq i32 %9, -1, !dbg !40
  br i1 %10, label %26, label %11, !dbg !41

; <label>:11:                                     ; preds = %1
  %12 = call i32 @finite(double %8) #5, !dbg !42
  %13 = icmp eq i32 %12, 0, !dbg !42
  br i1 %13, label %14, label %26, !dbg !44

; <label>:14:                                     ; preds = %11
  %15 = call i32 @finite(double %0) #5, !dbg !45
  %16 = icmp eq i32 %15, 0, !dbg !45
  br i1 %16, label %26, label %17, !dbg !46

; <label>:17:                                     ; preds = %14
  %18 = call double @floor(double %0) #5, !dbg !47
  %19 = fcmp oeq double %18, %0, !dbg !50
  %20 = fcmp ole double %0, 0.000000e+00, !dbg !51
  %21 = and i1 %20, %19, !dbg !52
  br i1 %21, label %22, label %24, !dbg !52

; <label>:22:                                     ; preds = %17
  %23 = call double @__kernel_standard(double %0, double %0, i32 41) #5, !dbg !53
  br label %26, !dbg !54

; <label>:24:                                     ; preds = %17
  %25 = call double @__kernel_standard(double %0, double %0, i32 40) #5, !dbg !55
  br label %26, !dbg !56

; <label>:26:                                     ; preds = %11, %14, %1, %24, %22
  %27 = phi double [ %23, %22 ], [ %25, %24 ], [ %8, %1 ], [ %8, %14 ], [ %8, %11 ], !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret double %27, !dbg !58
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
!35 = !DILocation(line: 32, column: 29, scope: !29)
!36 = !DILocation(line: 32, column: 6, scope: !15)
!37 = !DILocation(line: 36, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 36, column: 5)
!39 = !{!32, !32, i64 0}
!40 = !DILocation(line: 36, column: 18, scope: !38)
!41 = !DILocation(line: 36, column: 5, scope: !15)
!42 = !DILocation(line: 38, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !15, file: !1, line: 38, column: 5)
!44 = !DILocation(line: 38, column: 15, scope: !43)
!45 = !DILocation(line: 38, column: 17, scope: !43)
!46 = !DILocation(line: 38, column: 5, scope: !15)
!47 = !DILocation(line: 39, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 39, column: 7)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 38, column: 28)
!50 = !DILocation(line: 39, column: 15, scope: !48)
!51 = !DILocation(line: 39, column: 21, scope: !48)
!52 = !DILocation(line: 39, column: 18, scope: !48)
!53 = !DILocation(line: 40, column: 13, scope: !48)
!54 = !DILocation(line: 40, column: 6, scope: !48)
!55 = !DILocation(line: 42, column: 13, scope: !48)
!56 = !DILocation(line: 42, column: 6, scope: !48)
!57 = !DILocation(line: 0, scope: !48)
!58 = !DILocation(line: 46, column: 1, scope: !15)
