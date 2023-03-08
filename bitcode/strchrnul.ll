; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchrnul.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchrnul.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strchrnul(i8*, i32) local_unnamed_addr #0 !dbg !10 {
  %3 = tail call i8* @strchr(i8* %0, i32 %1) #3, !dbg !21
  %4 = icmp eq i8* %3, null, !dbg !23
  br i1 %4, label %5, label %8, !dbg !23

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @strlen(i8* %0) #3, !dbg !24
  %7 = getelementptr inbounds i8, i8* %0, i64 %6, !dbg !25
  br label %8, !dbg !23

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i8* [ %7, %5 ], [ %3, %2 ], !dbg !23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  ret i8* %9, !dbg !26
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchrnul.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "strchrnul", scope: !1, file: !1, line: 40, type: !11, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "s1", arg: 1, scope: !10, file: !1, line: 40, type: !13)
!18 = !DILocalVariable(name: "i", arg: 2, scope: !10, file: !1, line: 40, type: !15)
!19 = !DILocalVariable(name: "s", scope: !10, file: !1, line: 44, type: !4)
!20 = !DILocation(line: 40, column: 1, scope: !10)
!21 = !DILocation(line: 44, column: 13, scope: !10)
!22 = !DILocation(line: 44, column: 9, scope: !10)
!23 = !DILocation(line: 46, column: 10, scope: !10)
!24 = !DILocation(line: 46, column: 31, scope: !10)
!25 = !DILocation(line: 46, column: 29, scope: !10)
!26 = !DILocation(line: 46, column: 3, scope: !10)
