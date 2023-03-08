; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_matherr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_matherr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @matherr(%struct.exception* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  ret i32 0, !dbg !31
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_matherr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "matherr", scope: !1, file: !1, line: 114, type: !8, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !13, line: 578, size: 384, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !16, !19, !21, !22, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !13, line: 581, baseType: !10, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 582, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !12, file: !13, line: 583, baseType: !20, size: 64, offset: 128)
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !12, file: !13, line: 584, baseType: !20, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !12, file: !13, line: 585, baseType: !20, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !12, file: !13, line: 586, baseType: !10, size: 32, offset: 320)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 114, type: !11)
!26 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 120, type: !10)
!27 = !DILocation(line: 114, column: 32, scope: !7)
!28 = !DILocation(line: 120, column: 6, scope: !7)
!29 = !DILocation(line: 121, column: 5, scope: !7)
!30 = !DILocation(line: 0, scope: !7)
!31 = !DILocation(line: 123, column: 1, scope: !7)
