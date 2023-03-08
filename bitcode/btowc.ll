; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/btowc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/btowc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local local_unnamed_addr global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @btowc(i32) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct._mbstate_t, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = bitcast %struct._mbstate_t* %2 to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !42
  %6 = bitcast i32* %3 to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #4, !dbg !46
  %7 = icmp eq i32 %0, -1, !dbg !47
  br i1 %7, label %25, label %8, !dbg !49

; <label>:8:                                      ; preds = %1
  %9 = trunc i32 %0 to i8, !dbg !50
  store i8 %9, i8* %4, align 1, !dbg !51, !tbaa !52
  %10 = call i8* @memset(i8* nonnull %5, i32 0, i64 8) #5, !dbg !55
  %11 = call %struct._reent* @__getreent() #5, !dbg !56
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %11, i64 0, i32 7, !dbg !317
  %13 = load %struct.__locale_t*, %struct.__locale_t** %12, align 8, !dbg !317, !tbaa !318
  %14 = icmp eq %struct.__locale_t* %13, null, !dbg !56
  br i1 %14, label %15, label %16, !dbg !56

; <label>:15:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br label %16, !dbg !56

; <label>:16:                                     ; preds = %8, %15
  %17 = phi %struct.__locale_t* [ @__global_locale, %15 ], [ %13, %8 ], !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %18 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %17, i64 0, i32 2, !dbg !329
  %19 = load i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)** %18, align 8, !dbg !329, !tbaa !330
  %20 = call %struct._reent* @__getreent() #5, !dbg !333
  %21 = call i32 %19(%struct._reent* %20, i32* nonnull %3, i8* nonnull %4, i64 1, %struct._mbstate_t* nonnull %2) #5, !dbg !329
  %22 = icmp ugt i32 %21, 1, !dbg !336
  %23 = load i32, i32* %3, align 4, !dbg !338
  %24 = select i1 %22, i32 -1, i32 %23, !dbg !336
  br label %25, !dbg !336

; <label>:25:                                     ; preds = %16, %1
  %26 = phi i32 [ -1, %1 ], [ %24, %16 ], !dbg !339
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #4, !dbg !340
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !340
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret i32 %26, !dbg !340
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/btowc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5, line: 124, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "btowc", scope: !1, file: !1, line: 9, type: !16, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !37, !38, !40}
!20 = !DILocalVariable(name: "c", arg: 1, scope: !15, file: !1, line: 9, type: !18)
!21 = !DILocalVariable(name: "mbs", scope: !15, file: !1, line: 11, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !23, line: 86, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !25, line: 171, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 163, size: 64, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !26, file: !25, line: 165, baseType: !18, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !26, file: !25, line: 170, baseType: !30, size: 32, offset: 32)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !25, line: 166, size: 32, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !30, file: !25, line: 168, baseType: !4, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !30, file: !25, line: 169, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DILocalVariable(name: "retval", scope: !15, file: !1, line: 12, type: !18)
!38 = !DILocalVariable(name: "pwc", scope: !15, file: !1, line: 13, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !5, line: 83, baseType: !18)
!40 = !DILocalVariable(name: "b", scope: !15, file: !1, line: 14, type: !7)
!41 = !DILocation(line: 9, column: 12, scope: !15)
!42 = !DILocation(line: 11, column: 3, scope: !15)
!43 = !DILocation(line: 12, column: 7, scope: !15)
!44 = !DILocation(line: 13, column: 3, scope: !15)
!45 = !DILocation(line: 14, column: 17, scope: !15)
!46 = !DILocation(line: 14, column: 3, scope: !15)
!47 = !DILocation(line: 16, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !15, file: !1, line: 16, column: 7)
!49 = !DILocation(line: 16, column: 7, scope: !15)
!50 = !DILocation(line: 19, column: 7, scope: !15)
!51 = !DILocation(line: 19, column: 5, scope: !15)
!52 = !{!53, !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 22, column: 3, scope: !15)
!56 = !DILocation(line: 230, column: 10, scope: !57, inlinedAt: !316)
!57 = distinct !DISubprogram(name: "__get_current_locale", scope: !58, file: !58, line: 228, type: !59, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DISubroutineType(types: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !58, line: 178, size: 3392, elements: !63)
!63 = !{!64, !69, !270, !279, !280, !281, !309, !313, !315}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !62, file: !58, line: 180, baseType: !65, size: 1792)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !66)
!66 = !{!67, !68}
!67 = !DISubrange(count: 7)
!68 = !DISubrange(count: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !62, file: !58, line: 181, baseType: !70, size: 64, offset: 1792)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!18, !73, !104, !39, !269}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !75, line: 569, size: 14912, elements: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !{!77, !78, !140, !141, !142, !143, !147, !148, !149, !150, !154, !166, !167, !168, !170, !171, !172, !234, !254, !255, !260, !267}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !74, file: !75, line: 571, baseType: !18, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !74, file: !75, line: 576, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !75, line: 287, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !75, line: 181, size: 1408, elements: !82)
!82 = !{!83, !85, !86, !87, !89, !90, !95, !96, !98, !105, !109, !114, !118, !119, !120, !121, !125, !129, !130, !131, !133, !134, !138, !139}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !81, file: !75, line: 182, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !81, file: !75, line: 183, baseType: !18, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !81, file: !75, line: 184, baseType: !18, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !75, line: 185, baseType: !88, size: 16, offset: 128)
!88 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !81, file: !75, line: 186, baseType: !88, size: 16, offset: 144)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !81, file: !75, line: 187, baseType: !91, size: 128, offset: 192)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !75, line: 117, size: 128, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !91, file: !75, line: 118, baseType: !84, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !91, file: !75, line: 119, baseType: !18, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !81, file: !75, line: 188, baseType: !18, size: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !81, file: !75, line: 195, baseType: !97, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !81, file: !75, line: 197, baseType: !99, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !73, !97, !104, !18}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !25, line: 145, baseType: !103)
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !81, file: !75, line: 199, baseType: !106, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!102, !73, !97, !8, !18}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !81, file: !75, line: 202, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !73, !97, !113, !18}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !25, line: 114, baseType: !103)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !81, file: !75, line: 203, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!18, !73, !97}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !81, file: !75, line: 206, baseType: !91, size: 128, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !81, file: !75, line: 207, baseType: !84, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !81, file: !75, line: 208, baseType: !18, size: 32, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !81, file: !75, line: 211, baseType: !122, size: 24, offset: 928)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !81, file: !75, line: 212, baseType: !126, size: 8, offset: 952)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 1)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !81, file: !75, line: 215, baseType: !91, size: 128, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !81, file: !75, line: 218, baseType: !18, size: 32, offset: 1088)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !75, line: 219, baseType: !132, size: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !25, line: 44, baseType: !103)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !81, file: !75, line: 222, baseType: !73, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !75, line: 226, baseType: !135, size: 32, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !25, line: 175, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !137, line: 12, baseType: !18)
!137 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !81, file: !75, line: 228, baseType: !24, size: 64, offset: 1312)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !75, line: 229, baseType: !18, size: 32, offset: 1376)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !74, file: !75, line: 576, baseType: !79, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !74, file: !75, line: 576, baseType: !79, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !74, file: !75, line: 578, baseType: !18, size: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !74, file: !75, line: 579, baseType: !144, size: 200, offset: 288)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 25)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !74, file: !75, line: 582, baseType: !18, size: 32, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !74, file: !75, line: 583, baseType: !61, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !74, file: !75, line: 585, baseType: !18, size: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !74, file: !75, line: 587, baseType: !151, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !73}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !74, file: !75, line: 590, baseType: !155, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !75, line: 47, size: 256, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !156, file: !75, line: 49, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !156, file: !75, line: 50, baseType: !18, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !156, file: !75, line: 50, baseType: !18, size: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !156, file: !75, line: 50, baseType: !18, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !156, file: !75, line: 50, baseType: !18, size: 32, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !156, file: !75, line: 51, baseType: !164, size: 32, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 32, elements: !127)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !75, line: 25, baseType: !6)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !74, file: !75, line: 591, baseType: !18, size: 32, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !74, file: !75, line: 592, baseType: !155, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !74, file: !75, line: 593, baseType: !169, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !74, file: !75, line: 596, baseType: !18, size: 32, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !74, file: !75, line: 597, baseType: !104, size: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !74, file: !75, line: 632, baseType: !173, size: 2880, offset: 1152)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !75, line: 599, size: 2880, elements: !174)
!174 = !{!175, !225}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !173, file: !75, line: 622, baseType: !176, size: 1728)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !75, line: 601, size: 1728, elements: !177)
!177 = !{!178, !179, !180, !184, !196, !197, !199, !207, !208, !209, !210, !214, !218, !219, !220, !221, !222, !223, !224}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !176, file: !75, line: 603, baseType: !6, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !176, file: !75, line: 604, baseType: !104, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !176, file: !75, line: 605, baseType: !181, size: 208, offset: 128)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 26)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !176, file: !75, line: 606, baseType: !185, size: 288, offset: 352)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !75, line: 55, size: 288, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !185, file: !75, line: 57, baseType: !18, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !185, file: !75, line: 58, baseType: !18, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !185, file: !75, line: 59, baseType: !18, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !185, file: !75, line: 60, baseType: !18, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !185, file: !75, line: 61, baseType: !18, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !185, file: !75, line: 62, baseType: !18, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !185, file: !75, line: 63, baseType: !18, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !185, file: !75, line: 64, baseType: !18, size: 32, offset: 224)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !185, file: !75, line: 65, baseType: !18, size: 32, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !176, file: !75, line: 607, baseType: !18, size: 32, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !176, file: !75, line: 608, baseType: !198, size: 64, offset: 704)
!198 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !176, file: !75, line: 609, baseType: !200, size: 112, offset: 768)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !75, line: 319, size: 112, elements: !201)
!201 = !{!202, !205, !206}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !200, file: !75, line: 320, baseType: !203, size: 48)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 48, elements: !123)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !200, file: !75, line: 321, baseType: !203, size: 48, offset: 48)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !200, file: !75, line: 322, baseType: !204, size: 16, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !176, file: !75, line: 610, baseType: !24, size: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !176, file: !75, line: 611, baseType: !24, size: 64, offset: 960)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !176, file: !75, line: 612, baseType: !24, size: 64, offset: 1024)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !176, file: !75, line: 613, baseType: !211, size: 64, offset: 1088)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !176, file: !75, line: 614, baseType: !215, size: 192, offset: 1152)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 24)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !176, file: !75, line: 615, baseType: !18, size: 32, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !176, file: !75, line: 616, baseType: !24, size: 64, offset: 1376)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !176, file: !75, line: 617, baseType: !24, size: 64, offset: 1440)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !176, file: !75, line: 618, baseType: !24, size: 64, offset: 1504)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !176, file: !75, line: 619, baseType: !24, size: 64, offset: 1568)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !176, file: !75, line: 620, baseType: !24, size: 64, offset: 1632)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !176, file: !75, line: 621, baseType: !18, size: 32, offset: 1696)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !173, file: !75, line: 631, baseType: !226, size: 2880)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !75, line: 626, size: 2880, elements: !227)
!227 = !{!228, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !226, file: !75, line: 629, baseType: !229, size: 1920)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1920, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 30)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !226, file: !75, line: 630, baseType: !233, size: 960, offset: 1920)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 960, elements: !230)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !74, file: !75, line: 636, baseType: !235, size: 64, offset: 4032)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !75, line: 93, size: 6336, elements: !237)
!237 = !{!238, !239, !240, !246}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !236, file: !75, line: 94, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !236, file: !75, line: 95, baseType: !18, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !236, file: !75, line: 97, baseType: !241, size: 2048, offset: 128)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 2048, elements: !245)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null}
!245 = !{!68}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !236, file: !75, line: 98, baseType: !247, size: 4160, offset: 2176)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !75, line: 74, size: 4160, elements: !248)
!248 = !{!249, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !247, file: !75, line: 75, baseType: !250, size: 2048)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2048, elements: !245)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !247, file: !75, line: 76, baseType: !250, size: 2048, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !247, file: !75, line: 78, baseType: !165, size: 32, offset: 4096)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !247, file: !75, line: 81, baseType: !165, size: 32, offset: 4128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !74, file: !75, line: 637, baseType: !236, size: 6336, offset: 4096)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !74, file: !75, line: 641, baseType: !256, size: 64, offset: 10432)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !18}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !74, file: !75, line: 646, baseType: !261, size: 192, offset: 10496)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !75, line: 291, size: 192, elements: !262)
!262 = !{!263, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !261, file: !75, line: 293, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !261, file: !75, line: 294, baseType: !18, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !261, file: !75, line: 295, baseType: !79, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !74, file: !75, line: 648, baseType: !268, size: 4224, offset: 10688)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 4224, elements: !123)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !62, file: !58, line: 183, baseType: !271, size: 64, offset: 1856)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!18, !73, !274, !8, !275, !269}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !276, line: 40, baseType: !277)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !25, line: 129, baseType: !278)
!278 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !62, file: !58, line: 185, baseType: !18, size: 32, offset: 1920)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !62, file: !58, line: 186, baseType: !104, size: 64, offset: 1984)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !62, file: !58, line: 187, baseType: !282, size: 768, offset: 2048)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !283, line: 42, size: 768, elements: !284)
!283 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !282, file: !283, line: 44, baseType: !104, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !282, file: !283, line: 45, baseType: !104, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !282, file: !283, line: 46, baseType: !104, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !282, file: !283, line: 47, baseType: !104, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !282, file: !283, line: 48, baseType: !104, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !282, file: !283, line: 49, baseType: !104, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !282, file: !283, line: 50, baseType: !104, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !282, file: !283, line: 51, baseType: !104, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !282, file: !283, line: 52, baseType: !104, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !282, file: !283, line: 53, baseType: !104, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !282, file: !283, line: 54, baseType: !10, size: 8, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !282, file: !283, line: 55, baseType: !10, size: 8, offset: 648)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !282, file: !283, line: 56, baseType: !10, size: 8, offset: 656)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !282, file: !283, line: 57, baseType: !10, size: 8, offset: 664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !282, file: !283, line: 58, baseType: !10, size: 8, offset: 672)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !282, file: !283, line: 59, baseType: !10, size: 8, offset: 680)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !282, file: !283, line: 60, baseType: !10, size: 8, offset: 688)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !282, file: !283, line: 61, baseType: !10, size: 8, offset: 696)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !282, file: !283, line: 62, baseType: !10, size: 8, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !282, file: !283, line: 63, baseType: !10, size: 8, offset: 712)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !282, file: !283, line: 64, baseType: !10, size: 8, offset: 720)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !282, file: !283, line: 65, baseType: !10, size: 8, offset: 728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !282, file: !283, line: 66, baseType: !10, size: 8, offset: 736)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !282, file: !283, line: 67, baseType: !10, size: 8, offset: 744)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !62, file: !58, line: 189, baseType: !310, size: 16, offset: 2816)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 2)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !62, file: !58, line: 190, baseType: !314, size: 256, offset: 2832)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !245)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !62, file: !58, line: 191, baseType: !314, size: 256, offset: 3088)
!316 = distinct !DILocation(line: 26, column: 12, scope: !15)
!317 = !DILocation(line: 230, column: 18, scope: !57, inlinedAt: !316)
!318 = !{!319, !321, i64 72}
!319 = !{!"_reent", !320, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !320, i64 32, !53, i64 36, !320, i64 64, !321, i64 72, !320, i64 80, !321, i64 88, !321, i64 96, !320, i64 104, !321, i64 112, !321, i64 120, !320, i64 128, !321, i64 136, !53, i64 144, !321, i64 504, !322, i64 512, !321, i64 1304, !324, i64 1312, !53, i64 1336}
!320 = !{!"int", !53, i64 0}
!321 = !{!"any pointer", !53, i64 0}
!322 = !{!"_atexit", !321, i64 0, !320, i64 8, !53, i64 16, !323, i64 272}
!323 = !{!"_on_exit_args", !53, i64 0, !53, i64 256, !320, i64 512, !320, i64 516}
!324 = !{!"_glue", !321, i64 0, !320, i64 8, !321, i64 16}
!325 = !DILocation(line: 213, column: 3, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "__get_global_locale", scope: !58, file: !58, line: 210, type: !59, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!327 = distinct !DILocation(line: 230, column: 29, scope: !57, inlinedAt: !316)
!328 = !DILocation(line: 230, column: 3, scope: !57, inlinedAt: !316)
!329 = !DILocation(line: 26, column: 12, scope: !15)
!330 = !{!331, !321, i64 232}
!331 = !{!"__locale_t", !53, i64 0, !321, i64 224, !321, i64 232, !320, i64 240, !321, i64 248, !332, i64 256, !53, i64 352, !53, i64 354, !53, i64 386}
!332 = !{!"lconv", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !53, i64 80, !53, i64 81, !53, i64 82, !53, i64 83, !53, i64 84, !53, i64 85, !53, i64 86, !53, i64 87, !53, i64 88, !53, i64 89, !53, i64 90, !53, i64 91, !53, i64 92, !53, i64 93}
!333 = !DILocation(line: 26, column: 22, scope: !15)
!334 = !DILocation(line: 11, column: 13, scope: !15)
!335 = !DILocation(line: 13, column: 11, scope: !15)
!336 = !DILocation(line: 28, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !15, file: !1, line: 28, column: 7)
!338 = !DILocation(line: 31, column: 18, scope: !15)
!339 = !DILocation(line: 0, scope: !15)
!340 = !DILocation(line: 32, column: 1, scope: !15)
