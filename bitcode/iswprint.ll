; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswprint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswprint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @iswprint(i32) local_unnamed_addr #0 !dbg !12 {
  %2 = icmp ult i32 %0, 256, !dbg !18
  br i1 %2, label %3, label %11, !dbg !19

; <label>:3:                                      ; preds = %1
  %4 = tail call i8* @__locale_ctype_ptr() #3, !dbg !20
  %5 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !20
  %6 = sext i32 %0 to i64, !dbg !20
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !20
  %8 = load i8, i8* %7, align 1, !dbg !20, !tbaa !21
  %9 = and i8 %8, -105, !dbg !20
  %10 = zext i8 %9 to i32, !dbg !20
  br label %11, !dbg !19

; <label>:11:                                     ; preds = %1, %3
  %12 = phi i32 [ %10, %3 ], [ 0, %1 ], !dbg !19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  ret i32 %12, !dbg !24
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswprint.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5, line: 124, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "iswprint", scope: !1, file: !1, line: 81, type: !13, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !4}
!15 = !{!16}
!16 = !DILocalVariable(name: "c", arg: 1, scope: !12, file: !1, line: 81, type: !4)
!17 = !DILocation(line: 81, column: 1, scope: !12)
!18 = !DILocation(line: 504, column: 13, scope: !12)
!19 = !DILocation(line: 504, column: 11, scope: !12)
!20 = !DILocation(line: 504, column: 31, scope: !12)
!21 = !{!22, !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 504, column: 3, scope: !12)
