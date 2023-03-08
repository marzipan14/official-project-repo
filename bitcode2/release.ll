; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/release.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/release.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"c5ee3442\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"86\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"5.0.6ukhost-157260550886c5ee3442\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: norecurse noredzone nounwind
define dso_local i8* @redisGitSHA1() local_unnamed_addr #0 !dbg !10 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !15
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), !dbg !15
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i8* @redisGitDirty() local_unnamed_addr #0 !dbg !16 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !17
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), !dbg !17
}

; Function Attrs: noredzone nounwind
define dso_local i64 @redisBuildId() local_unnamed_addr #1 !dbg !18 {
  %1 = tail call i64 @strlen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !28
  %2 = tail call i64 @crc64(i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %1) #3, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  ret i64 %2, !dbg !30
}

; Function Attrs: noredzone
declare dso_local i64 @crc64(i64, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

attributes #0 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/release.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "redisGitSHA1", scope: !1, file: !1, line: 40, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 41, column: 5, scope: !10)
!16 = distinct !DISubprogram(name: "redisGitDirty", scope: !1, file: !1, line: 44, type: !11, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!17 = !DILocation(line: 45, column: 5, scope: !16)
!18 = distinct !DISubprogram(name: "redisBuildId", scope: !1, file: !1, line: 48, type: !19, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DILocalVariable(name: "buildid", scope: !18, file: !1, line: 49, type: !13)
!28 = !DILocation(line: 51, column: 44, scope: !18)
!29 = !DILocation(line: 51, column: 12, scope: !18)
!30 = !DILocation(line: 51, column: 5, scope: !18)
