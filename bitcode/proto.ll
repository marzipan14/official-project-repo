; ModuleID = '/root/.unikraft/libs/lwip/proto.c'
source_filename = "/root/.unikraft/libs/lwip/proto.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.protoent = type { i8*, i8**, i32 }

@idx = internal unnamed_addr global i64 0, align 8, !dbg !0
@getprotoent.p = internal global %struct.protoent zeroinitializer, align 8, !dbg !10
@getprotoent.aliases = internal global i8* null, align 8, !dbg !23
@protos = internal constant [239 x i8] c"\00ip\00\01icmp\00\02igmp\00\03ggp\00\04ipencap\00\05st\00\06tcp\00\08egp\00\0Cpup\00\11udp\00\14hmp\00\16xns-idp\00\1Brdp\00\1Diso-tp4\00$xtp\00%ddp\00&idpr-cmtp\00)ipv6\00+ipv6-route\00,ipv6-frag\00-idrp\00.rsvp\00/gre\002esp\003ah\009skip\00:ipv6-icmp\00;ipv6-nonxt\00<ipv6-opts\00Irspf\00Qvmtp\00Yospf\00^ipip\00bencap\00gpim\00\FFraw\00", align 16, !dbg !27
@__A_VARIABLE = internal global i32 0

; Function Attrs: norecurse noredzone nounwind
define dso_local void @endprotoent() local_unnamed_addr #0 !dbg !43 {
  store i64 0, i64* @idx, align 8, !dbg !46, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  ret void, !dbg !51
}

; Function Attrs: noredzone nounwind
define dso_local void @setprotoent(i32) local_unnamed_addr #1 !dbg !52 {
  store i64 0, i64* @idx, align 8, !dbg !58, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  ret void, !dbg !59
}

; Function Attrs: noredzone nounwind
define dso_local %struct.protoent* @getprotoent() local_unnamed_addr #1 !dbg !12 {
  %1 = load i64, i64* @idx, align 8, !dbg !60, !tbaa !47
  %2 = icmp ugt i64 %1, 238, !dbg !62
  br i1 %2, label %13, label %3, !dbg !63

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %1, !dbg !64
  %5 = load i8, i8* %4, align 1, !dbg !64, !tbaa !65
  %6 = zext i8 %5 to i32, !dbg !64
  store i32 %6, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 2), align 8, !dbg !66, !tbaa !67
  %7 = add i64 %1, 1, !dbg !71
  %8 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %7, !dbg !72
  store i8* %8, i8** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 0), align 8, !dbg !73, !tbaa !74
  store i8** @getprotoent.aliases, i8*** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 1), align 8, !dbg !75, !tbaa !76
  %9 = tail call i64 @strlen(i8* nonnull %8) #4, !dbg !77
  %10 = add i64 %9, 2, !dbg !78
  %11 = load i64, i64* @idx, align 8, !dbg !79, !tbaa !47
  %12 = add i64 %10, %11, !dbg !79
  store i64 %12, i64* @idx, align 8, !dbg !79, !tbaa !47
  br label %13, !dbg !80

; <label>:13:                                     ; preds = %0, %3
  %14 = phi %struct.protoent* [ @getprotoent.p, %3 ], [ null, %0 ], !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  ret %struct.protoent* %14, !dbg !82
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.protoent* @getprotobyname(i8*) local_unnamed_addr #1 !dbg !83 {
  store i64 0, i64* @idx, align 8, !dbg !90, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %6, !dbg !93

; <label>:2:                                      ; preds = %6
  %3 = load i64, i64* @idx, align 8, !dbg !95, !tbaa !47
  %4 = icmp ugt i64 %3, 238, !dbg !96
  br i1 %4, label %5, label %6, !dbg !93

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %20, !dbg !99

; <label>:6:                                      ; preds = %1, %2
  %7 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %8 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %7, !dbg !100
  %9 = load i8, i8* %8, align 1, !dbg !100, !tbaa !65
  %10 = zext i8 %9 to i32, !dbg !100
  store i32 %10, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 2), align 8, !dbg !101, !tbaa !67
  %11 = add i64 %7, 1, !dbg !102
  %12 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %11, !dbg !103
  store i8* %12, i8** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 0), align 8, !dbg !104, !tbaa !74
  store i8** @getprotoent.aliases, i8*** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 1), align 8, !dbg !105, !tbaa !76
  %13 = tail call i64 @strlen(i8* nonnull %12) #4, !dbg !106
  %14 = add i64 %13, 2, !dbg !107
  %15 = load i64, i64* @idx, align 8, !dbg !108, !tbaa !47
  %16 = add i64 %14, %15, !dbg !108
  store i64 %16, i64* @idx, align 8, !dbg !108, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  %17 = load i8*, i8** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 0), align 8, !dbg !109, !tbaa !74
  %18 = tail call i32 @strcmp(i8* %0, i8* %17) #4, !dbg !110
  %19 = icmp eq i32 %18, 0, !dbg !99
  br i1 %19, label %20, label %2, !dbg !111, !llvm.loop !112

; <label>:20:                                     ; preds = %6, %5
  %21 = phi %struct.protoent* [ null, %5 ], [ @getprotoent.p, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  ret %struct.protoent* %21, !dbg !115
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.protoent* @getprotobynumber(i32) local_unnamed_addr #1 !dbg !116 {
  store i64 0, i64* @idx, align 8, !dbg !123, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br label %5, !dbg !126

; <label>:2:                                      ; preds = %5
  %3 = icmp ugt i64 %15, 238, !dbg !128
  br i1 %3, label %4, label %5, !dbg !126

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br label %18, !dbg !131

; <label>:5:                                      ; preds = %1, %2
  %6 = phi i64 [ 0, %1 ], [ %15, %2 ]
  %7 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %6, !dbg !132
  %8 = load i8, i8* %7, align 1, !dbg !132, !tbaa !65
  %9 = zext i8 %8 to i32, !dbg !132
  store i32 %9, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 2), align 8, !dbg !133, !tbaa !67
  %10 = add i64 %6, 1, !dbg !134
  %11 = getelementptr inbounds [239 x i8], [239 x i8]* @protos, i64 0, i64 %10, !dbg !135
  store i8* %11, i8** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 0), align 8, !dbg !136, !tbaa !74
  store i8** @getprotoent.aliases, i8*** getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 1), align 8, !dbg !137, !tbaa !76
  %12 = tail call i64 @strlen(i8* nonnull %11) #4, !dbg !138
  %13 = add i64 %12, 2, !dbg !139
  %14 = load i64, i64* @idx, align 8, !dbg !140, !tbaa !47
  %15 = add i64 %13, %14, !dbg !140
  store i64 %15, i64* @idx, align 8, !dbg !140, !tbaa !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  %16 = load i32, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @getprotoent.p, i64 0, i32 2), align 8, !dbg !141, !tbaa !67
  %17 = icmp eq i32 %16, %0, !dbg !142
  br i1 %17, label %18, label %2, !dbg !143, !llvm.loop !144

; <label>:18:                                     ; preds = %5, %4
  %19 = phi %struct.protoent* [ null, %4 ], [ @getprotoent.p, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret %struct.protoent* %19, !dbg !147
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "idx", scope: !2, file: !3, line: 30, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/proto.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!9 = !{!10, !23, !0, !27}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "p", scope: !12, file: !3, line: 82, type: !16, isLocal: true, isDefinition: true)
!12 = distinct !DISubprogram(name: "getprotoent", scope: !3, file: !3, line: 80, type: !13, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "protoent", file: !17, line: 42, size: 192, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !20, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "p_name", scope: !16, file: !17, line: 43, baseType: !6, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "p_aliases", scope: !16, file: !17, line: 44, baseType: !8, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "p_proto", scope: !16, file: !17, line: 45, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "aliases", scope: !12, file: !3, line: 83, type: !25, isLocal: true, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "protos", scope: !2, file: !3, line: 31, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1912, elements: !32)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 239)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 40, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !37, line: 129, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!43 = distinct !DISubprogram(name: "endprotoent", scope: !3, file: !3, line: 70, type: !44, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!44 = !DISubroutineType(types: !45)
!45 = !{null}
!46 = !DILocation(line: 72, column: 6, scope: !43)
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 73, column: 1, scope: !43)
!52 = distinct !DISubprogram(name: "setprotoent", scope: !3, file: !3, line: 75, type: !53, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !22}
!55 = !{!56}
!56 = !DILocalVariable(name: "stayopen", arg: 1, scope: !52, file: !3, line: 75, type: !22)
!57 = !DILocation(line: 75, column: 22, scope: !52)
!58 = !DILocation(line: 77, column: 6, scope: !52)
!59 = !DILocation(line: 78, column: 1, scope: !52)
!60 = !DILocation(line: 85, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !12, file: !3, line: 85, column: 6)
!62 = !DILocation(line: 85, column: 10, scope: !61)
!63 = !DILocation(line: 85, column: 6, scope: !12)
!64 = !DILocation(line: 87, column: 14, scope: !12)
!65 = !{!49, !49, i64 0}
!66 = !DILocation(line: 87, column: 12, scope: !12)
!67 = !{!68, !70, i64 16}
!68 = !{!"protoent", !69, i64 0, !69, i64 8, !70, i64 16}
!69 = !{!"any pointer", !49, i64 0}
!70 = !{!"int", !49, i64 0}
!71 = !DILocation(line: 88, column: 32, scope: !12)
!72 = !DILocation(line: 88, column: 22, scope: !12)
!73 = !DILocation(line: 88, column: 11, scope: !12)
!74 = !{!68, !69, i64 0}
!75 = !DILocation(line: 89, column: 14, scope: !12)
!76 = !{!68, !69, i64 8}
!77 = !DILocation(line: 90, column: 9, scope: !12)
!78 = !DILocation(line: 90, column: 26, scope: !12)
!79 = !DILocation(line: 90, column: 6, scope: !12)
!80 = !DILocation(line: 91, column: 2, scope: !12)
!81 = !DILocation(line: 0, scope: !12)
!82 = !DILocation(line: 92, column: 1, scope: !12)
!83 = distinct !DISubprogram(name: "getprotobyname", scope: !3, file: !3, line: 94, type: !84, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!15, !25}
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "name", arg: 1, scope: !83, file: !3, line: 94, type: !25)
!88 = !DILocalVariable(name: "p", scope: !83, file: !3, line: 96, type: !15)
!89 = !DILocation(line: 94, column: 45, scope: !83)
!90 = !DILocation(line: 72, column: 6, scope: !43, inlinedAt: !91)
!91 = distinct !DILocation(line: 98, column: 2, scope: !83)
!92 = !DILocation(line: 73, column: 1, scope: !43, inlinedAt: !91)
!93 = !DILocation(line: 85, column: 6, scope: !12, inlinedAt: !94)
!94 = distinct !DILocation(line: 99, column: 9, scope: !83)
!95 = !DILocation(line: 85, column: 6, scope: !61, inlinedAt: !94)
!96 = !DILocation(line: 85, column: 10, scope: !61, inlinedAt: !94)
!97 = !DILocation(line: 92, column: 1, scope: !12, inlinedAt: !94)
!98 = !DILocation(line: 96, column: 19, scope: !83)
!99 = !DILocation(line: 100, column: 11, scope: !83)
!100 = !DILocation(line: 87, column: 14, scope: !12, inlinedAt: !94)
!101 = !DILocation(line: 87, column: 12, scope: !12, inlinedAt: !94)
!102 = !DILocation(line: 88, column: 32, scope: !12, inlinedAt: !94)
!103 = !DILocation(line: 88, column: 22, scope: !12, inlinedAt: !94)
!104 = !DILocation(line: 88, column: 11, scope: !12, inlinedAt: !94)
!105 = !DILocation(line: 89, column: 14, scope: !12, inlinedAt: !94)
!106 = !DILocation(line: 90, column: 9, scope: !12, inlinedAt: !94)
!107 = !DILocation(line: 90, column: 26, scope: !12, inlinedAt: !94)
!108 = !DILocation(line: 90, column: 6, scope: !12, inlinedAt: !94)
!109 = !DILocation(line: 100, column: 30, scope: !83)
!110 = !DILocation(line: 100, column: 14, scope: !83)
!111 = !DILocation(line: 99, column: 5, scope: !83)
!112 = distinct !{!112, !113, !114}
!113 = !DILocation(line: 99, column: 2, scope: !83)
!114 = !DILocation(line: 100, column: 37, scope: !83)
!115 = !DILocation(line: 101, column: 2, scope: !83)
!116 = distinct !DISubprogram(name: "getprotobynumber", scope: !3, file: !3, line: 104, type: !117, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!15, !22}
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "num", arg: 1, scope: !116, file: !3, line: 104, type: !22)
!121 = !DILocalVariable(name: "p", scope: !116, file: !3, line: 106, type: !15)
!122 = !DILocation(line: 104, column: 39, scope: !116)
!123 = !DILocation(line: 72, column: 6, scope: !43, inlinedAt: !124)
!124 = distinct !DILocation(line: 108, column: 2, scope: !116)
!125 = !DILocation(line: 73, column: 1, scope: !43, inlinedAt: !124)
!126 = !DILocation(line: 85, column: 6, scope: !12, inlinedAt: !127)
!127 = distinct !DILocation(line: 109, column: 9, scope: !116)
!128 = !DILocation(line: 85, column: 10, scope: !61, inlinedAt: !127)
!129 = !DILocation(line: 92, column: 1, scope: !12, inlinedAt: !127)
!130 = !DILocation(line: 106, column: 19, scope: !116)
!131 = !DILocation(line: 110, column: 11, scope: !116)
!132 = !DILocation(line: 87, column: 14, scope: !12, inlinedAt: !127)
!133 = !DILocation(line: 87, column: 12, scope: !12, inlinedAt: !127)
!134 = !DILocation(line: 88, column: 32, scope: !12, inlinedAt: !127)
!135 = !DILocation(line: 88, column: 22, scope: !12, inlinedAt: !127)
!136 = !DILocation(line: 88, column: 11, scope: !12, inlinedAt: !127)
!137 = !DILocation(line: 89, column: 14, scope: !12, inlinedAt: !127)
!138 = !DILocation(line: 90, column: 9, scope: !12, inlinedAt: !127)
!139 = !DILocation(line: 90, column: 26, scope: !12, inlinedAt: !127)
!140 = !DILocation(line: 90, column: 6, scope: !12, inlinedAt: !127)
!141 = !DILocation(line: 110, column: 17, scope: !116)
!142 = !DILocation(line: 110, column: 25, scope: !116)
!143 = !DILocation(line: 109, column: 5, scope: !116)
!144 = distinct !{!144, !145, !146}
!145 = !DILocation(line: 109, column: 2, scope: !116)
!146 = !DILocation(line: 110, column: 31, scope: !116)
!147 = !DILocation(line: 111, column: 2, scope: !116)
