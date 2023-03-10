; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/math/sincosl.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/math/sincosl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @sincosl(x86_fp80, x86_fp80* nocapture, x86_fp80* nocapture) local_unnamed_addr #0 !dbg !7 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = bitcast double* %4 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !22
  %7 = bitcast double* %5 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !22
  %8 = fptrunc x86_fp80 %0 to double, !dbg !23
  call void @sincos(double %8, double* nonnull %4, double* nonnull %5) #5, !dbg !26
  %9 = load double, double* %4, align 8, !dbg !27, !tbaa !28
  %10 = fpext double %9 to x86_fp80, !dbg !27
  store x86_fp80 %10, x86_fp80* %1, align 16, !dbg !32, !tbaa !33
  %11 = load double, double* %5, align 8, !dbg !35, !tbaa !28
  %12 = fpext double %11 to x86_fp80, !dbg !35
  store x86_fp80 %12, x86_fp80* %2, align 16, !dbg !36, !tbaa !33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  ret void, !dbg !37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @sincos(double, double*, double*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/math/sincosl.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "sincosl", scope: !1, file: !1, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11, !11}
!10 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !{!13, !14, !15, !16, !18}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocalVariable(name: "sin", arg: 2, scope: !7, file: !1, line: 5, type: !11)
!15 = !DILocalVariable(name: "cos", arg: 3, scope: !7, file: !1, line: 5, type: !11)
!16 = !DILocalVariable(name: "sind", scope: !7, file: !1, line: 7, type: !17)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DILocalVariable(name: "cosd", scope: !7, file: !1, line: 7, type: !17)
!19 = !DILocation(line: 5, column: 26, scope: !7)
!20 = !DILocation(line: 5, column: 42, scope: !7)
!21 = !DILocation(line: 5, column: 60, scope: !7)
!22 = !DILocation(line: 7, column: 2, scope: !7)
!23 = !DILocation(line: 9, column: 9, scope: !7)
!24 = !DILocation(line: 7, column: 9, scope: !7)
!25 = !DILocation(line: 7, column: 15, scope: !7)
!26 = !DILocation(line: 9, column: 2, scope: !7)
!27 = !DILocation(line: 10, column: 9, scope: !7)
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 10, column: 7, scope: !7)
!33 = !{!34, !34, i64 0}
!34 = !{!"long double", !30, i64 0}
!35 = !DILocation(line: 11, column: 9, scope: !7)
!36 = !DILocation(line: 11, column: 7, scope: !7)
!37 = !DILocation(line: 12, column: 1, scope: !7)
