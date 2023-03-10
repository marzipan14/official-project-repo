; ModuleID = '/root/.unikraft/libs/lwip/serv.c'
source_filename = "/root/.unikraft/libs/lwip/serv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.servent = type { i8*, i8**, i32, i8* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local noalias %struct.servent* @getservbyname(i8* nocapture readnone, i8* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  ret %struct.servent* null, !dbg !29
}

; Function Attrs: noredzone nounwind
define dso_local noalias %struct.servent* @getservbyport(i32, i8* nocapture readnone) local_unnamed_addr #0 !dbg !30 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  ret %struct.servent* null, !dbg !38
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getservbyport_r(i32, i8* nocapture readnone, %struct.servent* nocapture readnone, i8* nocapture readnone, i64, %struct.servent** nocapture readnone) local_unnamed_addr #0 !dbg !39 {
  %7 = tail call i32* @__errno() #3, !dbg !61
  store i32 88, i32* %7, align 4, !dbg !62, !tbaa !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  ret i32 -11, !dbg !67
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/lwip/serv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "getservbyname", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !22, !22}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "servent", file: !12, line: 35, size: 256, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !17, !19, !21}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "s_name", scope: !11, file: !12, line: 36, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "s_aliases", scope: !11, file: !12, line: 37, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !11, file: !12, line: 38, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "s_proto", scope: !11, file: !12, line: 39, baseType: !15, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "name", arg: 1, scope: !7, file: !1, line: 42, type: !22)
!26 = !DILocalVariable(name: "proto", arg: 2, scope: !7, file: !1, line: 43, type: !22)
!27 = !DILocation(line: 42, column: 43, scope: !7)
!28 = !DILocation(line: 43, column: 14, scope: !7)
!29 = !DILocation(line: 45, column: 2, scope: !7)
!30 = distinct !DISubprogram(name: "getservbyport", scope: !1, file: !1, line: 48, type: !31, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!10, !20, !22}
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "port", arg: 1, scope: !30, file: !1, line: 48, type: !20)
!35 = !DILocalVariable(name: "proto", arg: 2, scope: !30, file: !1, line: 49, type: !22)
!36 = !DILocation(line: 48, column: 35, scope: !30)
!37 = !DILocation(line: 49, column: 14, scope: !30)
!38 = !DILocation(line: 51, column: 2, scope: !30)
!39 = distinct !DISubprogram(name: "getservbyport_r", scope: !1, file: !1, line: 54, type: !40, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !48)
!40 = !DISubroutineType(types: !41)
!41 = !{!20, !20, !22, !10, !15, !42, !47}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 40, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !45, line: 129, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DILocalVariable(name: "port", arg: 1, scope: !39, file: !1, line: 54, type: !20)
!50 = !DILocalVariable(name: "prots", arg: 2, scope: !39, file: !1, line: 54, type: !22)
!51 = !DILocalVariable(name: "se", arg: 3, scope: !39, file: !1, line: 55, type: !10)
!52 = !DILocalVariable(name: "buf", arg: 4, scope: !39, file: !1, line: 55, type: !15)
!53 = !DILocalVariable(name: "buflen", arg: 5, scope: !39, file: !1, line: 56, type: !42)
!54 = !DILocalVariable(name: "res", arg: 6, scope: !39, file: !1, line: 56, type: !47)
!55 = !DILocation(line: 54, column: 25, scope: !39)
!56 = !DILocation(line: 54, column: 52, scope: !39)
!57 = !DILocation(line: 55, column: 23, scope: !39)
!58 = !DILocation(line: 55, column: 42, scope: !39)
!59 = !DILocation(line: 56, column: 14, scope: !39)
!60 = !DILocation(line: 56, column: 48, scope: !39)
!61 = !DILocation(line: 58, column: 2, scope: !39)
!62 = !DILocation(line: 58, column: 8, scope: !39)
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 59, column: 2, scope: !39)
