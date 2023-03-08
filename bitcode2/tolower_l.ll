; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/tolower_l.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/tolower_l.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type opaque

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @tolower_l(i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %1) #3, !dbg !20
  %4 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !20
  %5 = sext i32 %0 to i64, !dbg !20
  %6 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !20
  %7 = load i8, i8* %6, align 1, !dbg !20, !tbaa !21
  %8 = and i8 %7, 3, !dbg !20
  %9 = icmp eq i8 %8, 1, !dbg !20
  %10 = add nsw i32 %0, 32, !dbg !24
  %11 = select i1 %9, i32 %10, i32 %0, !dbg !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  ret i32 %11, !dbg !25
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/tolower_l.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "tolower_l", scope: !1, file: !1, line: 13, type: !10, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !14, line: 9, flags: DIFlagFwdDecl)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "c", arg: 1, scope: !9, file: !1, line: 13, type: !4)
!17 = !DILocalVariable(name: "locale", arg: 2, scope: !9, file: !1, line: 13, type: !12)
!18 = !DILocation(line: 13, column: 16, scope: !9)
!19 = !DILocation(line: 13, column: 38, scope: !9)
!20 = !DILocation(line: 34, column: 10, scope: !9)
!21 = !{!22, !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 34, column: 44, scope: !9)
!25 = !DILocation(line: 34, column: 3, scope: !9)
