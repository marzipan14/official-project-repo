; ModuleID = '/root/.unikraft/libs/newlib/resource.c'
source_filename = "/root/.unikraft/libs/newlib/resource.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.rusage = type { %struct.timeval, %struct.timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.timeval = type { i64, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getrlimit(i32, %struct.rlimit* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  ret i32 0, !dbg !24
}

; Function Attrs: noredzone nounwind
define dso_local i32 @setrlimit(i32, %struct.rlimit* nocapture readnone) local_unnamed_addr #0 !dbg !25 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i32 0, !dbg !35
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getrusage(i32, %struct.rusage* nocapture readnone) local_unnamed_addr #0 !dbg !36 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  ret i32 0, !dbg !75
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/resource.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "getrlimit", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !13, line: 21, size: 128, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/lib/posix-process/musl-imported/include/sys/resource.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !12, file: !13, line: 22, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !13, line: 19, baseType: !17)
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !12, file: !13, line: 23, baseType: !16, size: 64, offset: 64)
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "resource", arg: 1, scope: !7, file: !1, line: 41, type: !10)
!21 = !DILocalVariable(name: "rlim", arg: 2, scope: !7, file: !1, line: 41, type: !11)
!22 = !DILocation(line: 41, column: 19, scope: !7)
!23 = !DILocation(line: 41, column: 53, scope: !7)
!24 = !DILocation(line: 43, column: 2, scope: !7)
!25 = distinct !DISubprogram(name: "setrlimit", scope: !1, file: !1, line: 46, type: !26, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !30)
!26 = !DISubroutineType(types: !27)
!27 = !{!10, !10, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "resource", arg: 1, scope: !25, file: !1, line: 46, type: !10)
!32 = !DILocalVariable(name: "rlim", arg: 2, scope: !25, file: !1, line: 46, type: !28)
!33 = !DILocation(line: 46, column: 19, scope: !25)
!34 = !DILocation(line: 46, column: 59, scope: !25)
!35 = !DILocation(line: 48, column: 2, scope: !25)
!36 = distinct !DISubprogram(name: "getrusage", scope: !1, file: !1, line: 51, type: !37, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !70)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !10, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !13, line: 26, size: 2176, elements: !41)
!41 = !{!42, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !40, file: !13, line: 27, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !44, line: 44, size: 128, elements: !45)
!44 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !{!46, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !43, file: !44, line: 45, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !44, line: 34, baseType: !48)
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !43, file: !44, line: 46, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !44, line: 39, baseType: !48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !40, file: !13, line: 28, baseType: !43, size: 128, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !40, file: !13, line: 30, baseType: !48, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !40, file: !13, line: 31, baseType: !48, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !40, file: !13, line: 32, baseType: !48, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !40, file: !13, line: 33, baseType: !48, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !40, file: !13, line: 34, baseType: !48, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !40, file: !13, line: 35, baseType: !48, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !40, file: !13, line: 36, baseType: !48, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !40, file: !13, line: 37, baseType: !48, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !40, file: !13, line: 38, baseType: !48, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !40, file: !13, line: 39, baseType: !48, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !40, file: !13, line: 40, baseType: !48, size: 64, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !40, file: !13, line: 41, baseType: !48, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !40, file: !13, line: 42, baseType: !48, size: 64, offset: 1024)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !40, file: !13, line: 43, baseType: !48, size: 64, offset: 1088)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !40, file: !13, line: 45, baseType: !67, size: 1024, offset: 1152)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 16)
!70 = !{!71, !72}
!71 = !DILocalVariable(name: "who", arg: 1, scope: !36, file: !1, line: 51, type: !10)
!72 = !DILocalVariable(name: "usage", arg: 2, scope: !36, file: !1, line: 51, type: !39)
!73 = !DILocation(line: 51, column: 19, scope: !36)
!74 = !DILocation(line: 51, column: 48, scope: !36)
!75 = !DILocation(line: 53, column: 2, scope: !36)
