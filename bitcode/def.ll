; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #0 !dbg !29 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i16 %2, !dbg !35
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_htonl(i32) local_unnamed_addr #0 !dbg !36 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i32 %2, !dbg !43
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lwip_strnstr(i8*, i8*, i64) local_unnamed_addr #0 !dbg !44 {
  %4 = tail call i64 @strlen(i8* %1) #3, !dbg !58
  %5 = icmp eq i64 %4, 0, !dbg !60
  br i1 %5, label %26, label %6, !dbg !62

; <label>:6:                                      ; preds = %3
  %7 = load i8, i8* %0, align 1, !dbg !64, !tbaa !67
  %8 = icmp eq i8 %7, 0, !dbg !64
  br i1 %8, label %26, label %9, !dbg !70

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i8, i8* %0, i64 %2
  br label %11, !dbg !70

; <label>:11:                                     ; preds = %9, %22
  %12 = phi i8 [ %7, %9 ], [ %24, %22 ]
  %13 = phi i8* [ %0, %9 ], [ %23, %22 ]
  %14 = getelementptr inbounds i8, i8* %13, i64 %4, !dbg !71
  %15 = icmp ugt i8* %14, %10, !dbg !72
  br i1 %15, label %26, label %16, !dbg !73

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %1, align 1, !dbg !74, !tbaa !67
  %18 = icmp eq i8 %12, %17, !dbg !77
  br i1 %18, label %19, label %22, !dbg !78

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strncmp(i8* nonnull %13, i8* nonnull %1, i64 %4) #3, !dbg !79
  %21 = icmp eq i32 %20, 0, !dbg !80
  br i1 %21, label %26, label %22, !dbg !81

; <label>:22:                                     ; preds = %16, %19
  %23 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !82
  %24 = load i8, i8* %23, align 1, !dbg !64, !tbaa !67
  %25 = icmp eq i8 %24, 0, !dbg !64
  br i1 %25, label %26, label %11, !dbg !70, !llvm.loop !83

; <label>:26:                                     ; preds = %19, %11, %22, %6, %3
  %27 = phi i8* [ %0, %3 ], [ null, %6 ], [ %13, %19 ], [ null, %11 ], [ null, %22 ], !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  ret i8* %27, !dbg !86
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_stricmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !87 {
  br label %3, !dbg !105

; <label>:3:                                      ; preds = %18, %2
  %4 = phi i8* [ %1, %2 ], [ %8, %18 ]
  %5 = phi i8* [ %0, %2 ], [ %6, %18 ]
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !106
  %7 = load i8, i8* %5, align 1, !dbg !107, !tbaa !67
  %8 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !109
  %9 = load i8, i8* %4, align 1, !dbg !110, !tbaa !67
  %10 = icmp eq i8 %7, %9, !dbg !112
  br i1 %10, label %18, label %11, !dbg !113

; <label>:11:                                     ; preds = %3
  %12 = or i8 %7, 32, !dbg !114
  %13 = add i8 %12, -97, !dbg !116
  %14 = icmp ult i8 %13, 26, !dbg !116
  %15 = or i8 %9, 32, !dbg !117
  %16 = icmp eq i8 %12, %15, !dbg !118
  %17 = and i1 %14, %16, !dbg !116
  br i1 %17, label %18, label %20, !dbg !116

; <label>:18:                                     ; preds = %11, %3
  %19 = icmp eq i8 %7, 0, !dbg !120
  br i1 %19, label %20, label %3, !dbg !121, !llvm.loop !122

; <label>:20:                                     ; preds = %11, %18
  %21 = phi i32 [ 0, %18 ], [ 1, %11 ], !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  ret i32 %21, !dbg !126
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_strnicmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !127 {
  br label %4, !dbg !146

; <label>:4:                                      ; preds = %20, %3
  %5 = phi i64 [ %2, %3 ], [ %21, %20 ]
  %6 = phi i8* [ %1, %3 ], [ %10, %20 ]
  %7 = phi i8* [ %0, %3 ], [ %8, %20 ]
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !147
  %9 = load i8, i8* %7, align 1, !dbg !148, !tbaa !67
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !150
  %11 = load i8, i8* %6, align 1, !dbg !151, !tbaa !67
  %12 = icmp eq i8 %9, %11, !dbg !153
  br i1 %12, label %20, label %13, !dbg !154

; <label>:13:                                     ; preds = %4
  %14 = or i8 %9, 32, !dbg !155
  %15 = add i8 %14, -97, !dbg !157
  %16 = icmp ult i8 %15, 26, !dbg !157
  %17 = or i8 %11, 32, !dbg !158
  %18 = icmp eq i8 %14, %17, !dbg !159
  %19 = and i1 %16, %18, !dbg !157
  br i1 %19, label %20, label %25, !dbg !157

; <label>:20:                                     ; preds = %13, %4
  %21 = add i64 %5, -1, !dbg !161
  %22 = icmp ne i64 %21, 0, !dbg !162
  %23 = icmp ne i8 %9, 0, !dbg !163
  %24 = and i1 %22, %23, !dbg !164
  br i1 %24, label %4, label %25, !dbg !165, !llvm.loop !166

; <label>:25:                                     ; preds = %13, %20
  %26 = phi i32 [ 0, %20 ], [ 1, %13 ], !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  ret i32 %26, !dbg !170
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_itoa(i8*, i64, i32) local_unnamed_addr #0 !dbg !171 {
  %4 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !187
  %5 = getelementptr inbounds i8, i8* %4, i64 -1, !dbg !188
  %6 = icmp slt i32 %2, 0, !dbg !190
  %7 = sub nsw i32 0, %2, !dbg !191
  %8 = select i1 %6, i32 %7, i32 %2, !dbg !192
  %9 = icmp ult i64 %1, 2, !dbg !194
  br i1 %9, label %10, label %13, !dbg !196

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i64 %1, 1, !dbg !197
  br i1 %11, label %12, label %47, !dbg !200

; <label>:12:                                     ; preds = %10
  store i8 0, i8* %0, align 1, !dbg !201, !tbaa !67
  br label %47, !dbg !203

; <label>:13:                                     ; preds = %3
  br i1 %6, label %14, label %16, !dbg !204

; <label>:14:                                     ; preds = %13
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !205
  store i8 45, i8* %0, align 1, !dbg !208, !tbaa !67
  br label %16, !dbg !209

; <label>:16:                                     ; preds = %14, %13
  %17 = phi i8* [ %15, %14 ], [ %0, %13 ], !dbg !210
  store i8 0, i8* %5, align 1, !dbg !211, !tbaa !67
  %18 = icmp ne i32 %2, 0, !dbg !212
  %19 = icmp ugt i8* %5, %17, !dbg !213
  %20 = and i1 %19, %18, !dbg !214
  br i1 %20, label %21, label %33, !dbg !214

; <label>:21:                                     ; preds = %16, %21
  %22 = phi i32 [ %28, %21 ], [ %8, %16 ]
  %23 = phi i8* [ %27, %21 ], [ %5, %16 ]
  %24 = srem i32 %22, 10, !dbg !215
  %25 = trunc i32 %24 to i8, !dbg !216
  %26 = add i8 %25, 48, !dbg !216
  %27 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !218
  store i8 %26, i8* %27, align 1, !dbg !219, !tbaa !67
  %28 = sdiv i32 %22, 10, !dbg !220
  %29 = add i32 %22, 9, !dbg !212
  %30 = icmp ugt i32 %29, 18, !dbg !212
  %31 = icmp ugt i8* %27, %17, !dbg !213
  %32 = and i1 %31, %30, !dbg !214
  br i1 %32, label %21, label %33, !dbg !214, !llvm.loop !221

; <label>:33:                                     ; preds = %21, %16
  %34 = phi i8 [ 0, %16 ], [ %26, %21 ]
  %35 = phi i8* [ %5, %16 ], [ %27, %21 ], !dbg !224
  %36 = phi i1 [ %18, %16 ], [ %30, %21 ], !dbg !212
  br i1 %36, label %37, label %38, !dbg !225

; <label>:37:                                     ; preds = %33
  store i8 0, i8* %0, align 1, !dbg !226, !tbaa !67
  br label %47, !dbg !229

; <label>:38:                                     ; preds = %33
  %39 = icmp eq i8 %34, 0, !dbg !230
  br i1 %39, label %40, label %42, !dbg !232

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !233
  store i8 48, i8* %17, align 1, !dbg !235, !tbaa !67
  store i8 0, i8* %41, align 1, !dbg !236, !tbaa !67
  br label %47, !dbg !237

; <label>:42:                                     ; preds = %38
  %43 = ptrtoint i8* %4 to i64, !dbg !238
  %44 = ptrtoint i8* %35 to i64, !dbg !238
  %45 = sub i64 %43, %44, !dbg !238
  %46 = tail call i8* @memmove(i8* %17, i8* nonnull %35, i64 %45) #3, !dbg !239
  br label %47, !dbg !240

; <label>:47:                                     ; preds = %10, %12, %42, %40, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !11, !15, !17, !16, !20}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !5, line: 127, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 36, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 57, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !5, line: 129, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !18, line: 49, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !23, line: 129, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "lwip_htons", scope: !1, file: !1, line: 76, type: !30, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!4, !4}
!32 = !{!33}
!33 = !DILocalVariable(name: "n", arg: 1, scope: !29, file: !1, line: 76, type: !4)
!34 = !DILocation(line: 76, column: 18, scope: !29)
!35 = !DILocation(line: 78, column: 3, scope: !29)
!36 = distinct !DISubprogram(name: "lwip_htonl", scope: !1, file: !1, line: 90, type: !37, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !11}
!39 = !{!40}
!40 = !DILocalVariable(name: "n", arg: 1, scope: !36, file: !1, line: 90, type: !11)
!41 = !DILocation(line: 90, column: 18, scope: !36)
!42 = !DILocation(line: 92, column: 10, scope: !36)
!43 = !DILocation(line: 92, column: 3, scope: !36)
!44 = distinct !DISubprogram(name: "lwip_strnstr", scope: !1, file: !1, line: 105, type: !45, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{!15, !47, !47, !20}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DILocalVariable(name: "buffer", arg: 1, scope: !44, file: !1, line: 105, type: !47)
!51 = !DILocalVariable(name: "token", arg: 2, scope: !44, file: !1, line: 105, type: !47)
!52 = !DILocalVariable(name: "n", arg: 3, scope: !44, file: !1, line: 105, type: !20)
!53 = !DILocalVariable(name: "p", scope: !44, file: !1, line: 107, type: !47)
!54 = !DILocalVariable(name: "tokenlen", scope: !44, file: !1, line: 108, type: !20)
!55 = !DILocation(line: 105, column: 26, scope: !44)
!56 = !DILocation(line: 105, column: 46, scope: !44)
!57 = !DILocation(line: 105, column: 60, scope: !44)
!58 = !DILocation(line: 108, column: 21, scope: !44)
!59 = !DILocation(line: 108, column: 10, scope: !44)
!60 = !DILocation(line: 109, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !44, file: !1, line: 109, column: 7)
!62 = !DILocation(line: 109, column: 7, scope: !44)
!63 = !DILocation(line: 107, column: 15, scope: !44)
!64 = !DILocation(line: 112, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 112, column: 3)
!66 = distinct !DILexicalBlock(scope: !44, file: !1, line: 112, column: 3)
!67 = !{!68, !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 112, column: 23, scope: !65)
!71 = !DILocation(line: 112, column: 29, scope: !65)
!72 = !DILocation(line: 112, column: 40, scope: !65)
!73 = !DILocation(line: 112, column: 3, scope: !66)
!74 = !DILocation(line: 113, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 113, column: 9)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 112, column: 61)
!77 = !DILocation(line: 113, column: 13, scope: !75)
!78 = !DILocation(line: 113, column: 24, scope: !75)
!79 = !DILocation(line: 113, column: 28, scope: !75)
!80 = !DILocation(line: 113, column: 56, scope: !75)
!81 = !DILocation(line: 113, column: 9, scope: !76)
!82 = !DILocation(line: 112, column: 57, scope: !65)
!83 = distinct !{!83, !73, !84}
!84 = !DILocation(line: 116, column: 3, scope: !66)
!85 = !DILocation(line: 0, scope: !44)
!86 = !DILocation(line: 118, column: 1, scope: !44)
!87 = distinct !DISubprogram(name: "lwip_stricmp", scope: !1, file: !1, line: 128, type: !88, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !91)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !47, !47}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !{!92, !93, !94, !95, !96, !100}
!92 = !DILocalVariable(name: "str1", arg: 1, scope: !87, file: !1, line: 128, type: !47)
!93 = !DILocalVariable(name: "str2", arg: 2, scope: !87, file: !1, line: 128, type: !47)
!94 = !DILocalVariable(name: "c1", scope: !87, file: !1, line: 130, type: !16)
!95 = !DILocalVariable(name: "c2", scope: !87, file: !1, line: 130, type: !16)
!96 = !DILocalVariable(name: "c1_upc", scope: !97, file: !1, line: 136, type: !16)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 135, column: 19)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 135, column: 9)
!99 = distinct !DILexicalBlock(scope: !87, file: !1, line: 132, column: 6)
!100 = !DILocalVariable(name: "c2_upc", scope: !101, file: !1, line: 140, type: !16)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 137, column: 47)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 137, column: 11)
!103 = !DILocation(line: 128, column: 26, scope: !87)
!104 = !DILocation(line: 128, column: 44, scope: !87)
!105 = !DILocation(line: 132, column: 3, scope: !87)
!106 = !DILocation(line: 133, column: 15, scope: !99)
!107 = !DILocation(line: 133, column: 10, scope: !99)
!108 = !DILocation(line: 130, column: 8, scope: !87)
!109 = !DILocation(line: 134, column: 15, scope: !99)
!110 = !DILocation(line: 134, column: 10, scope: !99)
!111 = !DILocation(line: 130, column: 12, scope: !87)
!112 = !DILocation(line: 135, column: 12, scope: !98)
!113 = !DILocation(line: 135, column: 9, scope: !99)
!114 = !DILocation(line: 136, column: 24, scope: !97)
!115 = !DILocation(line: 136, column: 12, scope: !97)
!116 = !DILocation(line: 137, column: 27, scope: !102)
!117 = !DILocation(line: 140, column: 26, scope: !101)
!118 = !DILocation(line: 141, column: 20, scope: !119)
!119 = distinct !DILexicalBlock(scope: !101, file: !1, line: 141, column: 13)
!120 = !DILocation(line: 151, column: 15, scope: !87)
!121 = !DILocation(line: 151, column: 3, scope: !99)
!122 = distinct !{!122, !105, !123}
!123 = !DILocation(line: 151, column: 19, scope: !87)
!124 = !DILocation(line: 0, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 141, column: 31)
!126 = !DILocation(line: 153, column: 1, scope: !87)
!127 = distinct !DISubprogram(name: "lwip_strnicmp", scope: !1, file: !1, line: 163, type: !128, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!90, !47, !47, !20}
!130 = !{!131, !132, !133, !134, !135, !136, !140}
!131 = !DILocalVariable(name: "str1", arg: 1, scope: !127, file: !1, line: 163, type: !47)
!132 = !DILocalVariable(name: "str2", arg: 2, scope: !127, file: !1, line: 163, type: !47)
!133 = !DILocalVariable(name: "len", arg: 3, scope: !127, file: !1, line: 163, type: !20)
!134 = !DILocalVariable(name: "c1", scope: !127, file: !1, line: 165, type: !16)
!135 = !DILocalVariable(name: "c2", scope: !127, file: !1, line: 165, type: !16)
!136 = !DILocalVariable(name: "c1_upc", scope: !137, file: !1, line: 171, type: !16)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 170, column: 19)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 170, column: 9)
!139 = distinct !DILexicalBlock(scope: !127, file: !1, line: 167, column: 6)
!140 = !DILocalVariable(name: "c2_upc", scope: !141, file: !1, line: 175, type: !16)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 172, column: 47)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 172, column: 11)
!143 = !DILocation(line: 163, column: 27, scope: !127)
!144 = !DILocation(line: 163, column: 45, scope: !127)
!145 = !DILocation(line: 163, column: 58, scope: !127)
!146 = !DILocation(line: 167, column: 3, scope: !127)
!147 = !DILocation(line: 168, column: 15, scope: !139)
!148 = !DILocation(line: 168, column: 10, scope: !139)
!149 = !DILocation(line: 165, column: 8, scope: !127)
!150 = !DILocation(line: 169, column: 15, scope: !139)
!151 = !DILocation(line: 169, column: 10, scope: !139)
!152 = !DILocation(line: 165, column: 12, scope: !127)
!153 = !DILocation(line: 170, column: 12, scope: !138)
!154 = !DILocation(line: 170, column: 9, scope: !139)
!155 = !DILocation(line: 171, column: 24, scope: !137)
!156 = !DILocation(line: 171, column: 12, scope: !137)
!157 = !DILocation(line: 172, column: 27, scope: !142)
!158 = !DILocation(line: 175, column: 26, scope: !141)
!159 = !DILocation(line: 176, column: 20, scope: !160)
!160 = distinct !DILexicalBlock(scope: !141, file: !1, line: 176, column: 13)
!161 = !DILocation(line: 186, column: 8, scope: !139)
!162 = !DILocation(line: 187, column: 17, scope: !127)
!163 = !DILocation(line: 187, column: 30, scope: !127)
!164 = !DILocation(line: 187, column: 23, scope: !127)
!165 = !DILocation(line: 187, column: 3, scope: !139)
!166 = distinct !{!166, !146, !167}
!167 = !DILocation(line: 187, column: 35, scope: !127)
!168 = !DILocation(line: 0, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !1, line: 176, column: 31)
!170 = !DILocation(line: 189, column: 1, scope: !127)
!171 = distinct !DISubprogram(name: "lwip_itoa", scope: !1, file: !1, line: 199, type: !172, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !15, !20, !90}
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DILocalVariable(name: "result", arg: 1, scope: !171, file: !1, line: 199, type: !15)
!176 = !DILocalVariable(name: "bufsize", arg: 2, scope: !171, file: !1, line: 199, type: !20)
!177 = !DILocalVariable(name: "number", arg: 3, scope: !171, file: !1, line: 199, type: !90)
!178 = !DILocalVariable(name: "res", scope: !171, file: !1, line: 201, type: !15)
!179 = !DILocalVariable(name: "tmp", scope: !171, file: !1, line: 202, type: !15)
!180 = !DILocalVariable(name: "n", scope: !171, file: !1, line: 203, type: !90)
!181 = !DILocalVariable(name: "val", scope: !182, file: !1, line: 221, type: !16)
!182 = distinct !DILexicalBlock(scope: !171, file: !1, line: 220, column: 35)
!183 = !DILocation(line: 199, column: 17, scope: !171)
!184 = !DILocation(line: 199, column: 32, scope: !171)
!185 = !DILocation(line: 199, column: 45, scope: !171)
!186 = !DILocation(line: 201, column: 9, scope: !171)
!187 = !DILocation(line: 202, column: 22, scope: !171)
!188 = !DILocation(line: 202, column: 32, scope: !171)
!189 = !DILocation(line: 202, column: 9, scope: !171)
!190 = !DILocation(line: 203, column: 19, scope: !171)
!191 = !DILocation(line: 203, column: 36, scope: !171)
!192 = !DILocation(line: 203, column: 11, scope: !171)
!193 = !DILocation(line: 203, column: 7, scope: !171)
!194 = !DILocation(line: 206, column: 15, scope: !195)
!195 = distinct !DILexicalBlock(scope: !171, file: !1, line: 206, column: 7)
!196 = !DILocation(line: 206, column: 7, scope: !171)
!197 = !DILocation(line: 207, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 207, column: 9)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 206, column: 20)
!200 = !DILocation(line: 207, column: 9, scope: !199)
!201 = !DILocation(line: 208, column: 15, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 207, column: 23)
!203 = !DILocation(line: 209, column: 5, scope: !202)
!204 = !DILocation(line: 214, column: 7, scope: !171)
!205 = !DILocation(line: 215, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 214, column: 19)
!207 = distinct !DILexicalBlock(scope: !171, file: !1, line: 214, column: 7)
!208 = !DILocation(line: 215, column: 12, scope: !206)
!209 = !DILocation(line: 216, column: 3, scope: !206)
!210 = !DILocation(line: 0, scope: !171)
!211 = !DILocation(line: 219, column: 8, scope: !171)
!212 = !DILocation(line: 220, column: 13, scope: !171)
!213 = !DILocation(line: 220, column: 27, scope: !171)
!214 = !DILocation(line: 220, column: 19, scope: !171)
!215 = !DILocation(line: 221, column: 32, scope: !182)
!216 = !DILocation(line: 221, column: 16, scope: !182)
!217 = !DILocation(line: 221, column: 10, scope: !182)
!218 = !DILocation(line: 222, column: 8, scope: !182)
!219 = !DILocation(line: 223, column: 10, scope: !182)
!220 = !DILocation(line: 224, column: 11, scope: !182)
!221 = distinct !{!221, !222, !223}
!222 = !DILocation(line: 220, column: 3, scope: !171)
!223 = !DILocation(line: 225, column: 3, scope: !171)
!224 = !DILocation(line: 0, scope: !182)
!225 = !DILocation(line: 226, column: 7, scope: !171)
!226 = !DILocation(line: 228, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 226, column: 10)
!228 = distinct !DILexicalBlock(scope: !171, file: !1, line: 226, column: 7)
!229 = !DILocation(line: 229, column: 5, scope: !227)
!230 = !DILocation(line: 231, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !171, file: !1, line: 231, column: 7)
!232 = !DILocation(line: 231, column: 7, scope: !171)
!233 = !DILocation(line: 233, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !1, line: 231, column: 18)
!235 = !DILocation(line: 233, column: 12, scope: !234)
!236 = !DILocation(line: 234, column: 12, scope: !234)
!237 = !DILocation(line: 235, column: 5, scope: !234)
!238 = !DILocation(line: 238, column: 49, scope: !171)
!239 = !DILocation(line: 238, column: 3, scope: !171)
!240 = !DILocation(line: 239, column: 1, scope: !171)
