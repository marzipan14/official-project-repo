; ModuleID = '/root/.unikraft/libs/newlib/console.c'
source_filename = "/root/.unikraft/libs/newlib/console.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

@grantpt._x = internal unnamed_addr global i1 false, align 4, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @isatty(i32) local_unnamed_addr #0 !dbg !72 {
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %3) #4, !dbg !79
  %4 = ptrtoint %struct.stat* %2 to i64, !dbg !80
  %5 = add i64 %4, 65536, !dbg !81
  %6 = inttoptr i64 %5 to %struct.stat*, !dbg !82
  %7 = call i32 @fstat(i32 %0, %struct.stat* %6) #5, !dbg !84
  %8 = icmp slt i32 %7, 0, !dbg !86
  br i1 %8, label %14, label %9, !dbg !88

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 2, !dbg !89
  %11 = load i32, i32* %10, align 4, !dbg !89, !tbaa !91
  %12 = and i32 %11, 61440, !dbg !89
  %13 = icmp eq i32 %12, 8192, !dbg !89
  br i1 %13, label %17, label %14, !dbg !99

; <label>:14:                                     ; preds = %9, %1
  %15 = phi i32 [ 9, %1 ], [ 25, %9 ]
  %16 = call i32* @__errno() #5, !dbg !100
  store i32 %15, i32* %16, align 4, !dbg !100, !tbaa !102
  br label %17, !dbg !103

; <label>:17:                                     ; preds = %14, %9
  %18 = phi i32 [ 1, %9 ], [ 0, %14 ], !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %3) #4, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  ret i32 %18, !dbg !103
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @ttyname(i32) local_unnamed_addr #0 !dbg !105 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  ret i8* null, !dbg !113
}

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @ctermid(i8* nocapture readnone) local_unnamed_addr #0 !dbg !114 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret i8* null, !dbg !120
}

; Function Attrs: noredzone nounwind
define dso_local i32 @grantpt(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = load i1, i1* @grantpt._x, align 4
  br i1 %2, label %4, label %3, !dbg !122

; <label>:3:                                      ; preds = %1
  store i1 true, i1* @grantpt._x, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  br label %4, !dbg !151

; <label>:4:                                      ; preds = %1, %3
  %5 = tail call i32* @__errno() #5, !dbg !152
  store i32 134, i32* %5, align 4, !dbg !153, !tbaa !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  ret i32 -1, !dbg !154
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "_x", scope: !2, file: !3, line: 74, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "grantpt", scope: !3, file: !3, line: 72, type: !4, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !66)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/console.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !9, globals: !64)
!8 = !{}
!9 = !{!10, !60}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !12, line: 27, size: 704, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !20, !24, !30, !33, !36, !39, !40, !45, !52, !53, !54, !57}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !11, file: !12, line: 29, baseType: !15, size: 16)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !18, line: 54, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !11, file: !12, line: 30, baseType: !21, size: 16, offset: 16)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !16, line: 155, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !18, line: 73, baseType: !23)
!23 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !11, file: !12, line: 31, baseType: !25, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !16, line: 205, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !18, line: 88, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !28, line: 79, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !11, file: !12, line: 32, baseType: !31, size: 16, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !16, line: 210, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !18, line: 210, baseType: !23)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !11, file: !12, line: 33, baseType: !34, size: 16, offset: 80)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !16, line: 181, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !18, line: 58, baseType: !23)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !11, file: !12, line: 34, baseType: !37, size: 16, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !16, line: 185, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !18, line: 61, baseType: !23)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !11, file: !12, line: 35, baseType: !15, size: 16, offset: 112)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !11, file: !12, line: 36, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 173, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !18, line: 100, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !18, line: 44, baseType: !44)
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !11, file: !12, line: 37, baseType: !46, size: 128, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !47, line: 52, size: 128, elements: !48)
!47 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !46, file: !47, line: 53, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !47, line: 34, baseType: !44)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !46, file: !47, line: 54, baseType: !44, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !11, file: !12, line: 38, baseType: !46, size: 128, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !11, file: !12, line: 39, baseType: !46, size: 128, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !11, file: !12, line: 40, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !16, line: 118, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !18, line: 32, baseType: !44)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !11, file: !12, line: 41, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !16, line: 113, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !18, line: 28, baseType: !44)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !61, line: 82, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !28, line: 232, baseType: !63)
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !{!65}
!65 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!66 = !{!67}
!67 = !DILocalVariable(name: "fd", arg: 1, scope: !2, file: !3, line: 72, type: !6)
!68 = !{i32 2, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!72 = distinct !DISubprogram(name: "isatty", scope: !3, file: !3, line: 44, type: !4, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DILocalVariable(name: "fd", arg: 1, scope: !72, file: !3, line: 44, type: !6)
!75 = !DILocalVariable(name: "buf", scope: !72, file: !3, line: 46, type: !11)
!76 = !DILocalVariable(name: "_dss_buf", scope: !72, file: !3, line: 47, type: !10)
!77 = !DILocalVariable(name: "ret", scope: !72, file: !3, line: 48, type: !6)
!78 = !DILocation(line: 44, column: 16, scope: !72)
!79 = !DILocation(line: 46, column: 2, scope: !72)
!80 = !DILocation(line: 47, column: 43, scope: !72)
!81 = !DILocation(line: 47, column: 62, scope: !72)
!82 = !DILocation(line: 47, column: 26, scope: !72)
!83 = !DILocation(line: 47, column: 15, scope: !72)
!84 = !DILocation(line: 49, column: 2, scope: !72)
!85 = !DILocation(line: 48, column: 6, scope: !72)
!86 = !DILocation(line: 51, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !72, file: !3, line: 51, column: 6)
!88 = !DILocation(line: 51, column: 6, scope: !72)
!89 = !DILocation(line: 55, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !72, file: !3, line: 55, column: 6)
!91 = !{!92, !96, i64 4}
!92 = !{!"stat", !93, i64 0, !93, i64 2, !96, i64 4, !93, i64 8, !93, i64 10, !93, i64 12, !93, i64 14, !97, i64 16, !98, i64 24, !98, i64 40, !98, i64 56, !97, i64 72, !97, i64 80}
!93 = !{!"short", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!"int", !94, i64 0}
!97 = !{!"long", !94, i64 0}
!98 = !{!"timespec", !97, i64 0, !97, i64 8}
!99 = !DILocation(line: 55, column: 6, scope: !72)
!100 = !DILocation(line: 0, scope: !101)
!101 = distinct !DILexicalBlock(scope: !87, file: !3, line: 51, column: 15)
!102 = !{!96, !96, i64 0}
!103 = !DILocation(line: 60, column: 1, scope: !72)
!104 = !DILocation(line: 0, scope: !72)
!105 = distinct !DISubprogram(name: "ttyname", scope: !3, file: !3, line: 62, type: !106, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !6}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !{!111}
!111 = !DILocalVariable(name: "fd", arg: 1, scope: !105, file: !3, line: 62, type: !6)
!112 = !DILocation(line: 62, column: 19, scope: !105)
!113 = !DILocation(line: 64, column: 2, scope: !105)
!114 = distinct !DISubprogram(name: "ctermid", scope: !3, file: !3, line: 67, type: !115, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!108, !108}
!117 = !{!118}
!118 = !DILocalVariable(name: "s", arg: 1, scope: !114, file: !3, line: 67, type: !108)
!119 = !DILocation(line: 67, column: 21, scope: !114)
!120 = !DILocation(line: 69, column: 2, scope: !114)
!121 = !DILocation(line: 72, column: 17, scope: !2)
!122 = !DILocation(line: 74, column: 2, scope: !123)
!123 = distinct !DILexicalBlock(scope: !2, file: !3, line: 74, column: 2)
!124 = !DILocalVariable(name: "fmt", arg: 1, scope: !125, file: !126, line: 178, type: !129)
!125 = distinct !DISubprogram(name: "uk_pr_warn", scope: !126, file: !126, line: 178, type: !127, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !131)
!126 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, null}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!131 = !{!124, !132}
!132 = !DILocalVariable(name: "argp", scope: !125, file: !126, line: 180, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !134, line: 32, baseType: !135)
!134 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 180, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !144)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 180, size: 192, elements: !138)
!138 = !{!139, !140, !141, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !137, file: !3, line: 180, baseType: !29, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !137, file: !3, line: 180, baseType: !29, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !137, file: !3, line: 180, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !137, file: !3, line: 180, baseType: !142, size: 64, offset: 128)
!144 = !{!145}
!145 = !DISubrange(count: 1)
!146 = !DILocation(line: 178, column: 43, scope: !125, inlinedAt: !147)
!147 = distinct !DILocation(line: 74, column: 2, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 74, column: 2)
!149 = distinct !DILexicalBlock(scope: !123, file: !3, line: 74, column: 2)
!150 = !DILocation(line: 184, column: 1, scope: !125, inlinedAt: !147)
!151 = !DILocation(line: 74, column: 2, scope: !148)
!152 = !DILocation(line: 75, column: 2, scope: !2)
!153 = !DILocation(line: 75, column: 8, scope: !2)
!154 = !DILocation(line: 76, column: 2, scope: !2)
