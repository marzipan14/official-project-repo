; ModuleID = '/root/.unikraft/libs/lwip/inet.c'
source_filename = "/root/.unikraft/libs/lwip/inet.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i8, i8, [14 x i8] }

@.str = private unnamed_addr constant [69 x i8] c"The node or service is not known; or both node and service are NULL.\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"The requested service is not available for the requested socket type.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"The name server returned a permanent failure indication.\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"The requested address family is not supported.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"The buffer pointed to by host or serv was too small.\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Error on getaddrinfo.\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @inet_ntop(i32, i8*, i8*, i32) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call i8* @lwip_inet_ntop(i32 %0, i8* %1, i8* %2, i32 %3) #3, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  ret i8* %5, !dbg !36
}

; Function Attrs: noredzone
declare dso_local i8* @lwip_inet_ntop(i32, i8*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @inet_pton(i32, i8*, i8*) local_unnamed_addr #0 !dbg !37 {
  %4 = tail call i32 @lwip_inet_pton(i32 %0, i8* %1, i8* %2) #3, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  ret i32 %4, !dbg !49
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_inet_pton(i32, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #0 !dbg !50 {
  %5 = tail call i32 @lwip_getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #3, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  ret i32 %5, !dbg !92
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #0 !dbg !93 {
  tail call void @lwip_freeaddrinfo(%struct.addrinfo* %0) #3, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret void, !dbg !100
}

; Function Attrs: noredzone
declare dso_local void @lwip_freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @gai_strerror(i32) local_unnamed_addr #0 !dbg !101 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  switch i32 %0, label %7 [
    i32 200, label %8
    i32 201, label %2
    i32 202, label %3
    i32 203, label %4
    i32 204, label %5
    i32 -12, label %6
  ], !dbg !107

; <label>:2:                                      ; preds = %1
  br label %8, !dbg !108

; <label>:3:                                      ; preds = %1
  br label %8, !dbg !110

; <label>:4:                                      ; preds = %1
  br label %8, !dbg !111

; <label>:5:                                      ; preds = %1
  br label %8, !dbg !112

; <label>:6:                                      ; preds = %1
  br label %8, !dbg !113

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !114

; <label>:8:                                      ; preds = %1, %7, %6, %5, %4, %3, %2
  %9 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %7 ], [ getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), %6 ], [ getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %5 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %4 ], [ getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), %3 ], [ getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), %2 ], [ getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %1 ], !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  ret i8* %9, !dbg !116
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/lwip/inet.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "inet_ntop", scope: !1, file: !1, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !14, !16, !17}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !18, line: 113, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 48, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 79, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30}
!27 = !DILocalVariable(name: "af", arg: 1, scope: !7, file: !1, line: 39, type: !13)
!28 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 39, type: !14)
!29 = !DILocalVariable(name: "dst", arg: 3, scope: !7, file: !1, line: 39, type: !16)
!30 = !DILocalVariable(name: "size", arg: 4, scope: !7, file: !1, line: 39, type: !17)
!31 = !DILocation(line: 39, column: 27, scope: !7)
!32 = !DILocation(line: 39, column: 43, scope: !7)
!33 = !DILocation(line: 39, column: 54, scope: !7)
!34 = !DILocation(line: 39, column: 69, scope: !7)
!35 = !DILocation(line: 41, column: 9, scope: !7)
!36 = !DILocation(line: 41, column: 2, scope: !7)
!37 = distinct !DISubprogram(name: "inet_pton", scope: !1, file: !1, line: 44, type: !38, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!13, !13, !10, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !{!42, !43, !44}
!42 = !DILocalVariable(name: "af", arg: 1, scope: !37, file: !1, line: 44, type: !13)
!43 = !DILocalVariable(name: "src", arg: 2, scope: !37, file: !1, line: 44, type: !10)
!44 = !DILocalVariable(name: "dst", arg: 3, scope: !37, file: !1, line: 44, type: !40)
!45 = !DILocation(line: 44, column: 19, scope: !37)
!46 = !DILocation(line: 44, column: 35, scope: !37)
!47 = !DILocation(line: 44, column: 46, scope: !37)
!48 = !DILocation(line: 46, column: 9, scope: !37)
!49 = !DILocation(line: 46, column: 2, scope: !37)
!50 = distinct !DISubprogram(name: "getaddrinfo", scope: !1, file: !1, line: 50, type: !51, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !82)
!51 = !DISubroutineType(types: !52)
!52 = !{!13, !10, !10, !53, !81}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !56, line: 103, size: 384, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59, !60, !61, !62, !63, !78, !79}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !55, file: !56, line: 104, baseType: !13, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !55, file: !56, line: 105, baseType: !13, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !55, file: !56, line: 106, baseType: !13, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !55, file: !56, line: 107, baseType: !13, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !55, file: !56, line: 108, baseType: !17, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !55, file: !56, line: 109, baseType: !64, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !18, line: 94, size: 128, elements: !66)
!66 = !{!67, !72, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sa_len", scope: !65, file: !18, line: 95, baseType: !68, size: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !20, line: 125, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 43, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !65, file: !18, line: 96, baseType: !73, size: 8, offset: 8)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !18, line: 63, baseType: !68)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !65, file: !18, line: 97, baseType: !75, size: 112, offset: 16)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 112, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 14)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !55, file: !56, line: 110, baseType: !16, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !55, file: !56, line: 111, baseType: !80, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!82 = !{!83, !84, !85, !86}
!83 = !DILocalVariable(name: "node", arg: 1, scope: !50, file: !1, line: 50, type: !10)
!84 = !DILocalVariable(name: "service", arg: 2, scope: !50, file: !1, line: 50, type: !10)
!85 = !DILocalVariable(name: "hints", arg: 3, scope: !50, file: !1, line: 51, type: !53)
!86 = !DILocalVariable(name: "res", arg: 4, scope: !50, file: !1, line: 52, type: !81)
!87 = !DILocation(line: 50, column: 29, scope: !50)
!88 = !DILocation(line: 50, column: 47, scope: !50)
!89 = !DILocation(line: 51, column: 26, scope: !50)
!90 = !DILocation(line: 52, column: 21, scope: !50)
!91 = !DILocation(line: 54, column: 9, scope: !50)
!92 = !DILocation(line: 54, column: 2, scope: !50)
!93 = distinct !DISubprogram(name: "freeaddrinfo", scope: !1, file: !1, line: 57, type: !94, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !80}
!96 = !{!97}
!97 = !DILocalVariable(name: "res", arg: 1, scope: !93, file: !1, line: 57, type: !80)
!98 = !DILocation(line: 57, column: 36, scope: !93)
!99 = !DILocation(line: 59, column: 9, scope: !93)
!100 = !DILocation(line: 59, column: 2, scope: !93)
!101 = distinct !DISubprogram(name: "gai_strerror", scope: !1, file: !1, line: 66, type: !102, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!10, !13}
!104 = !{!105}
!105 = !DILocalVariable(name: "errcode", arg: 1, scope: !101, file: !1, line: 66, type: !13)
!106 = !DILocation(line: 66, column: 30, scope: !101)
!107 = !DILocation(line: 68, column: 2, scope: !101)
!108 = !DILocation(line: 73, column: 3, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 68, column: 19)
!110 = !DILocation(line: 75, column: 3, scope: !109)
!111 = !DILocation(line: 77, column: 3, scope: !109)
!112 = !DILocation(line: 79, column: 3, scope: !109)
!113 = !DILocation(line: 81, column: 3, scope: !109)
!114 = !DILocation(line: 84, column: 3, scope: !109)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 86, column: 1, scope: !101)
