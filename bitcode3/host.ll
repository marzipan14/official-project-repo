; ModuleID = '/root/.unikraft/libs/lwip/host.c'
source_filename = "/root/.unikraft/libs/lwip/host.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }

; Function Attrs: noredzone nounwind
define dso_local %struct.hostent* @gethostbyname(i8*) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call %struct.hostent* @lwip_gethostbyname(i8* %0) #4, !dbg !28
  ret %struct.hostent* %2, !dbg !29
}

; Function Attrs: noredzone
declare dso_local %struct.hostent* @lwip_gethostbyname(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) local_unnamed_addr #0 !dbg !30 {
  %7 = tail call i32 @lwip_gethostbyname_r(i8* %0, %struct.hostent* %1, i8* %2, i64 %3, %struct.hostent** %4, i32* %5) #4, !dbg !53
  ret i32 %7, !dbg !54
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind readnone
define dso_local noalias %struct.hostent* @gethostbyaddr(i8* nocapture readnone, i32, i32) local_unnamed_addr #2 !dbg !55 {
  ret %struct.hostent* null, !dbg !76
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/lwip/host.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "gethostbyname", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !23}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !12, line: 92, size: 256, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !17, !19, !21, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !11, file: !12, line: 93, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !11, file: !12, line: 94, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !11, file: !12, line: 96, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !11, file: !12, line: 97, baseType: !20, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !11, file: !12, line: 98, baseType: !18, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!25 = !{!26}
!26 = !DILocalVariable(name: "name", arg: 1, scope: !7, file: !1, line: 42, type: !23)
!27 = !DILocation(line: 42, column: 43, scope: !7)
!28 = !DILocation(line: 44, column: 9, scope: !7)
!29 = !DILocation(line: 44, column: 2, scope: !7)
!30 = distinct !DISubprogram(name: "gethostbyname_r", scope: !1, file: !1, line: 47, type: !31, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !40)
!31 = !DISubroutineType(types: !32)
!32 = !{!20, !23, !10, !15, !33, !38, !39}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 40, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !36, line: 129, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DILocalVariable(name: "name", arg: 1, scope: !30, file: !1, line: 47, type: !23)
!42 = !DILocalVariable(name: "ret", arg: 2, scope: !30, file: !1, line: 48, type: !10)
!43 = !DILocalVariable(name: "buf", arg: 3, scope: !30, file: !1, line: 48, type: !15)
!44 = !DILocalVariable(name: "buflen", arg: 4, scope: !30, file: !1, line: 48, type: !33)
!45 = !DILocalVariable(name: "result", arg: 5, scope: !30, file: !1, line: 49, type: !38)
!46 = !DILocalVariable(name: "h_errnop", arg: 6, scope: !30, file: !1, line: 49, type: !39)
!47 = !DILocation(line: 47, column: 33, scope: !30)
!48 = !DILocation(line: 48, column: 19, scope: !30)
!49 = !DILocation(line: 48, column: 30, scope: !30)
!50 = !DILocation(line: 48, column: 42, scope: !30)
!51 = !DILocation(line: 49, column: 20, scope: !30)
!52 = !DILocation(line: 49, column: 33, scope: !30)
!53 = !DILocation(line: 51, column: 9, scope: !30)
!54 = !DILocation(line: 51, column: 2, scope: !30)
!55 = distinct !DISubprogram(name: "gethostbyaddr", scope: !1, file: !1, line: 55, type: !56, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !69)
!56 = !DISubroutineType(types: !57)
!57 = !{!10, !58, !60, !20}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !61, line: 113, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !63, line: 129, baseType: !64)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 48, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 79, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(name: "addr", arg: 1, scope: !55, file: !1, line: 55, type: !58)
!71 = !DILocalVariable(name: "len", arg: 2, scope: !55, file: !1, line: 56, type: !60)
!72 = !DILocalVariable(name: "type", arg: 3, scope: !55, file: !1, line: 56, type: !20)
!73 = !DILocation(line: 55, column: 43, scope: !55)
!74 = !DILocation(line: 56, column: 12, scope: !55)
!75 = !DILocation(line: 56, column: 30, scope: !55)
!76 = !DILocation(line: 58, column: 2, scope: !55)
