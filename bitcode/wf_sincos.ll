; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sincos.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sincos.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @sincosf(float, float* nocapture, float* nocapture) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call float @sinf(float %0) #3, !dbg !19
  store float %4, float* %1, align 4, !dbg !20, !tbaa !21
  %5 = tail call float @cosf(float %0) #3, !dbg !25
  store float %5, float* %2, align 4, !dbg !26, !tbaa !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  ret void, !dbg !27
}

; Function Attrs: noredzone
declare dso_local float @sinf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @cosf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sincos.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "sincosf", scope: !1, file: !1, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11, !11}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !{!13, !14, !15}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocalVariable(name: "sinx", arg: 2, scope: !7, file: !1, line: 7, type: !11)
!15 = !DILocalVariable(name: "cosx", arg: 3, scope: !7, file: !1, line: 7, type: !11)
!16 = !DILocation(line: 7, column: 21, scope: !7)
!17 = !DILocation(line: 7, column: 31, scope: !7)
!18 = !DILocation(line: 7, column: 44, scope: !7)
!19 = !DILocation(line: 15, column: 11, scope: !7)
!20 = !DILocation(line: 15, column: 9, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 16, column: 11, scope: !7)
!26 = !DILocation(line: 16, column: 9, scope: !7)
!27 = !DILocation(line: 17, column: 1, scope: !7)
