; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/seed48.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/seed48.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }

@_seed48_r.sseed = internal global [3 x i16] zeroinitializer, align 2, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i16* @_seed48_r(%struct._reent* nocapture, i16* nocapture readonly) local_unnamed_addr #0 !dbg !2 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !238
  %4 = bitcast i8** %3 to %struct._rand48*, !dbg !238
  %5 = bitcast i8** %3 to [3 x i16]*, !dbg !238
  %6 = bitcast i8** %3 to i16*, !dbg !238
  %7 = load i16, i16* %6, align 8, !dbg !238, !tbaa !239
  store i16 %7, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 0), align 2, !dbg !242, !tbaa !243
  %8 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1, !dbg !245
  %9 = load i16, i16* %8, align 2, !dbg !245, !tbaa !239
  store i16 %9, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 1), align 2, !dbg !246, !tbaa !243
  %10 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2, !dbg !247
  %11 = load i16, i16* %10, align 4, !dbg !247, !tbaa !239
  store i16 %11, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 2), align 2, !dbg !248, !tbaa !243
  %12 = load i16, i16* %1, align 2, !dbg !249, !tbaa !243
  store i16 %12, i16* %6, align 8, !dbg !250, !tbaa !239
  %13 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !251
  %14 = load i16, i16* %13, align 2, !dbg !251, !tbaa !243
  store i16 %14, i16* %8, align 2, !dbg !252, !tbaa !239
  %15 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !253
  %16 = load i16, i16* %15, align 2, !dbg !253, !tbaa !243
  store i16 %16, i16* %10, align 4, !dbg !254, !tbaa !239
  %17 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 0, !dbg !255
  store i16 -6547, i16* %17, align 2, !dbg !256, !tbaa !239
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !257
  %19 = bitcast i8** %18 to i16*, !dbg !257
  store i16 -8468, i16* %19, align 2, !dbg !258, !tbaa !239
  %20 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 2, !dbg !259
  store i16 5, i16* %20, align 2, !dbg !260, !tbaa !239
  %21 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 2, !dbg !261
  store i16 11, i16* %21, align 4, !dbg !262, !tbaa !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  ret i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 0), !dbg !263
}

; Function Attrs: noredzone nounwind
define dso_local i16* @seed48(i16* nocapture readonly) local_unnamed_addr #0 !dbg !264 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !270
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !273
  %4 = bitcast i8** %3 to %struct._rand48*, !dbg !273
  %5 = bitcast i8** %3 to [3 x i16]*, !dbg !273
  %6 = bitcast i8** %3 to i16*, !dbg !273
  %7 = load i16, i16* %6, align 8, !dbg !273, !tbaa !239
  store i16 %7, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 0), align 2, !dbg !274, !tbaa !243
  %8 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1, !dbg !275
  %9 = load i16, i16* %8, align 2, !dbg !275, !tbaa !239
  store i16 %9, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 1), align 2, !dbg !276, !tbaa !243
  %10 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2, !dbg !277
  %11 = load i16, i16* %10, align 4, !dbg !277, !tbaa !239
  store i16 %11, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 2), align 2, !dbg !278, !tbaa !243
  %12 = load i16, i16* %0, align 2, !dbg !279, !tbaa !243
  store i16 %12, i16* %6, align 8, !dbg !280, !tbaa !239
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !281
  %14 = load i16, i16* %13, align 2, !dbg !281, !tbaa !243
  store i16 %14, i16* %8, align 2, !dbg !282, !tbaa !239
  %15 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !283
  %16 = load i16, i16* %15, align 2, !dbg !283, !tbaa !243
  store i16 %16, i16* %10, align 4, !dbg !284, !tbaa !239
  %17 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 0, !dbg !285
  store i16 -6547, i16* %17, align 2, !dbg !286, !tbaa !239
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !287
  %19 = bitcast i8** %18 to i16*, !dbg !287
  store i16 -8468, i16* %19, align 2, !dbg !288, !tbaa !239
  %20 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 2, !dbg !289
  store i16 5, i16* %20, align 2, !dbg !290, !tbaa !239
  %21 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 2, !dbg !291
  store i16 11, i16* %21, align 4, !dbg !292, !tbaa !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  ret i16* getelementptr inbounds ([3 x i16], [3 x i16]* @_seed48_r.sseed, i64 0, i64 0), !dbg !294
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!233, !234, !235}
!llvm.ident = !{!236}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sseed", scope: !2, file: !3, line: 21, type: !161, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_seed48_r", scope: !3, file: !3, line: 17, type: !4, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !230)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/seed48.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !10, line: 569, size: 14912, elements: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !14, !96, !97, !98, !99, !103, !104, !107, !108, !112, !124, !125, !126, !128, !129, !130, !191, !212, !213, !218, !225}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !9, file: !10, line: 571, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !9, file: !10, line: 576, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !10, line: 287, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !10, line: 181, size: 1408, elements: !18)
!18 = !{!19, !22, !23, !24, !26, !27, !32, !33, !35, !44, !50, !55, !59, !60, !61, !62, !66, !70, !71, !72, !74, !75, !79, !95}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !17, file: !10, line: 182, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !17, file: !10, line: 183, baseType: !13, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !17, file: !10, line: 184, baseType: !13, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !10, line: 185, baseType: !25, size: 16, offset: 128)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !17, file: !10, line: 186, baseType: !25, size: 16, offset: 144)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !17, file: !10, line: 187, baseType: !28, size: 128, offset: 192)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !10, line: 117, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !28, file: !10, line: 118, baseType: !20, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !28, file: !10, line: 119, baseType: !13, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !17, file: !10, line: 188, baseType: !13, size: 32, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !17, file: !10, line: 195, baseType: !34, size: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !17, file: !10, line: 197, baseType: !36, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !8, !34, !42, !13}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !40, line: 145, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !17, file: !10, line: 199, baseType: !45, size: 64, offset: 512)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!39, !8, !34, !48, !13}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !17, file: !10, line: 202, baseType: !51, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !8, !34, !54, !13}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !40, line: 114, baseType: !41)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !17, file: !10, line: 203, baseType: !56, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!13, !8, !34}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !17, file: !10, line: 206, baseType: !28, size: 128, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !17, file: !10, line: 207, baseType: !20, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !17, file: !10, line: 208, baseType: !13, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !17, file: !10, line: 211, baseType: !63, size: 24, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !17, file: !10, line: 212, baseType: !67, size: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !17, file: !10, line: 215, baseType: !28, size: 128, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !17, file: !10, line: 218, baseType: !13, size: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !10, line: 219, baseType: !73, size: 64, offset: 1152)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !40, line: 44, baseType: !41)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !17, file: !10, line: 222, baseType: !8, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !17, file: !10, line: 226, baseType: !76, size: 32, offset: 1280)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !40, line: 175, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !78, line: 12, baseType: !13)
!78 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !17, file: !10, line: 228, baseType: !80, size: 64, offset: 1312)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !40, line: 171, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 163, size: 64, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !81, file: !40, line: 165, baseType: !13, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !81, file: !40, line: 170, baseType: !85, size: 32, offset: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !40, line: 166, size: 32, elements: !86)
!86 = !{!87, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !85, file: !40, line: 168, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !89, line: 124, baseType: !90)
!89 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !85, file: !40, line: 169, baseType: !92, size: 32)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !17, file: !10, line: 229, baseType: !13, size: 32, offset: 1376)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !9, file: !10, line: 576, baseType: !15, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !9, file: !10, line: 576, baseType: !15, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !9, file: !10, line: 578, baseType: !13, size: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !9, file: !10, line: 579, baseType: !100, size: 200, offset: 288)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 200, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 25)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !9, file: !10, line: 582, baseType: !13, size: 32, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !9, file: !10, line: 583, baseType: !105, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !10, line: 40, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !9, file: !10, line: 585, baseType: !13, size: 32, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !9, file: !10, line: 587, baseType: !109, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !8}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !9, file: !10, line: 590, baseType: !113, size: 64, offset: 768)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !10, line: 47, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !114, file: !10, line: 49, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !114, file: !10, line: 50, baseType: !13, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !114, file: !10, line: 50, baseType: !13, size: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !114, file: !10, line: 50, baseType: !13, size: 32, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !114, file: !10, line: 50, baseType: !13, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !114, file: !10, line: 51, baseType: !122, size: 32, offset: 192)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !68)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !10, line: 25, baseType: !90)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !9, file: !10, line: 591, baseType: !13, size: 32, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !9, file: !10, line: 592, baseType: !113, size: 64, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !9, file: !10, line: 593, baseType: !127, size: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !9, file: !10, line: 596, baseType: !13, size: 32, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !9, file: !10, line: 597, baseType: !42, size: 64, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !9, file: !10, line: 632, baseType: !131, size: 2880, offset: 1152)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !10, line: 599, size: 2880, elements: !132)
!132 = !{!133, !182}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !131, file: !10, line: 622, baseType: !134, size: 1728)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !10, line: 601, size: 1728, elements: !135)
!135 = !{!136, !137, !138, !142, !154, !155, !157, !164, !165, !166, !167, !171, !175, !176, !177, !178, !179, !180, !181}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !134, file: !10, line: 603, baseType: !90, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !134, file: !10, line: 604, baseType: !42, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !134, file: !10, line: 605, baseType: !139, size: 208, offset: 128)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 208, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 26)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !134, file: !10, line: 606, baseType: !143, size: 288, offset: 352)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !10, line: 55, size: 288, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !143, file: !10, line: 57, baseType: !13, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !143, file: !10, line: 58, baseType: !13, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !143, file: !10, line: 59, baseType: !13, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !143, file: !10, line: 60, baseType: !13, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !143, file: !10, line: 61, baseType: !13, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !143, file: !10, line: 62, baseType: !13, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !143, file: !10, line: 63, baseType: !13, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !143, file: !10, line: 64, baseType: !13, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !143, file: !10, line: 65, baseType: !13, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !134, file: !10, line: 607, baseType: !13, size: 32, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !134, file: !10, line: 608, baseType: !156, size: 64, offset: 704)
!156 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !134, file: !10, line: 609, baseType: !158, size: 112, offset: 768)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !10, line: 319, size: 112, elements: !159)
!159 = !{!160, !162, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !158, file: !10, line: 320, baseType: !161, size: 48)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !158, file: !10, line: 321, baseType: !161, size: 48, offset: 48)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !158, file: !10, line: 322, baseType: !7, size: 16, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !134, file: !10, line: 610, baseType: !80, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !134, file: !10, line: 611, baseType: !80, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !134, file: !10, line: 612, baseType: !80, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !134, file: !10, line: 613, baseType: !168, size: 64, offset: 1088)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !134, file: !10, line: 614, baseType: !172, size: 192, offset: 1152)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 192, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 24)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !134, file: !10, line: 615, baseType: !13, size: 32, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !134, file: !10, line: 616, baseType: !80, size: 64, offset: 1376)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !134, file: !10, line: 617, baseType: !80, size: 64, offset: 1440)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !134, file: !10, line: 618, baseType: !80, size: 64, offset: 1504)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !134, file: !10, line: 619, baseType: !80, size: 64, offset: 1568)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !134, file: !10, line: 620, baseType: !80, size: 64, offset: 1632)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !134, file: !10, line: 621, baseType: !13, size: 32, offset: 1696)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !131, file: !10, line: 631, baseType: !183, size: 2880)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !10, line: 626, size: 2880, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !183, file: !10, line: 629, baseType: !186, size: 1920)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1920, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 30)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !183, file: !10, line: 630, baseType: !190, size: 960, offset: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 960, elements: !187)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !9, file: !10, line: 636, baseType: !192, size: 64, offset: 4032)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !10, line: 93, size: 6336, elements: !194)
!194 = !{!195, !196, !197, !204}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !193, file: !10, line: 94, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !193, file: !10, line: 95, baseType: !13, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !193, file: !10, line: 97, baseType: !198, size: 2048, offset: 128)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2048, elements: !202)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null}
!202 = !{!203}
!203 = !DISubrange(count: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !193, file: !10, line: 98, baseType: !205, size: 4160, offset: 2176)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !10, line: 74, size: 4160, elements: !206)
!206 = !{!207, !209, !210, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !205, file: !10, line: 75, baseType: !208, size: 2048)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !202)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !205, file: !10, line: 76, baseType: !208, size: 2048, offset: 2048)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !205, file: !10, line: 78, baseType: !123, size: 32, offset: 4096)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !205, file: !10, line: 81, baseType: !123, size: 32, offset: 4128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !9, file: !10, line: 637, baseType: !193, size: 6336, offset: 4096)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !9, file: !10, line: 641, baseType: !214, size: 64, offset: 10432)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !13}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !9, file: !10, line: 646, baseType: !219, size: 192, offset: 10496)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !10, line: 291, size: 192, elements: !220)
!220 = !{!221, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !219, file: !10, line: 293, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !219, file: !10, line: 294, baseType: !13, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !219, file: !10, line: 295, baseType: !15, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !9, file: !10, line: 648, baseType: !226, size: 4224, offset: 10688)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4224, elements: !64)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !229)
!228 = !{}
!229 = !{!0}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "r", arg: 1, scope: !2, file: !3, line: 17, type: !8)
!232 = !DILocalVariable(name: "xseed", arg: 2, scope: !2, file: !3, line: 17, type: !6)
!233 = !{i32 2, !"Dwarf Version", i32 4}
!234 = !{i32 2, !"Debug Info Version", i32 3}
!235 = !{i32 1, !"wchar_size", i32 4}
!236 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!237 = !DILocation(line: 17, column: 1, scope: !2)
!238 = !DILocation(line: 24, column: 14, scope: !2)
!239 = !{!240, !240, i64 0}
!240 = !{!"omnipotent char", !241, i64 0}
!241 = !{!"Simple C/C++ TBAA"}
!242 = !DILocation(line: 24, column: 12, scope: !2)
!243 = !{!244, !244, i64 0}
!244 = !{!"short", !240, i64 0}
!245 = !DILocation(line: 25, column: 14, scope: !2)
!246 = !DILocation(line: 25, column: 12, scope: !2)
!247 = !DILocation(line: 26, column: 14, scope: !2)
!248 = !DILocation(line: 26, column: 12, scope: !2)
!249 = !DILocation(line: 27, column: 22, scope: !2)
!250 = !DILocation(line: 27, column: 20, scope: !2)
!251 = !DILocation(line: 28, column: 22, scope: !2)
!252 = !DILocation(line: 28, column: 20, scope: !2)
!253 = !DILocation(line: 29, column: 22, scope: !2)
!254 = !DILocation(line: 29, column: 20, scope: !2)
!255 = !DILocation(line: 30, column: 3, scope: !2)
!256 = !DILocation(line: 30, column: 20, scope: !2)
!257 = !DILocation(line: 31, column: 3, scope: !2)
!258 = !DILocation(line: 31, column: 20, scope: !2)
!259 = !DILocation(line: 32, column: 3, scope: !2)
!260 = !DILocation(line: 32, column: 20, scope: !2)
!261 = !DILocation(line: 33, column: 3, scope: !2)
!262 = !DILocation(line: 33, column: 16, scope: !2)
!263 = !DILocation(line: 34, column: 3, scope: !2)
!264 = distinct !DISubprogram(name: "seed48", scope: !3, file: !3, line: 39, type: !265, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!6, !6}
!267 = !{!268}
!268 = !DILocalVariable(name: "xseed", arg: 1, scope: !264, file: !3, line: 39, type: !6)
!269 = !DILocation(line: 39, column: 1, scope: !264)
!270 = !DILocation(line: 42, column: 21, scope: !264)
!271 = !DILocation(line: 17, column: 1, scope: !2, inlinedAt: !272)
!272 = distinct !DILocation(line: 42, column: 10, scope: !264)
!273 = !DILocation(line: 24, column: 14, scope: !2, inlinedAt: !272)
!274 = !DILocation(line: 24, column: 12, scope: !2, inlinedAt: !272)
!275 = !DILocation(line: 25, column: 14, scope: !2, inlinedAt: !272)
!276 = !DILocation(line: 25, column: 12, scope: !2, inlinedAt: !272)
!277 = !DILocation(line: 26, column: 14, scope: !2, inlinedAt: !272)
!278 = !DILocation(line: 26, column: 12, scope: !2, inlinedAt: !272)
!279 = !DILocation(line: 27, column: 22, scope: !2, inlinedAt: !272)
!280 = !DILocation(line: 27, column: 20, scope: !2, inlinedAt: !272)
!281 = !DILocation(line: 28, column: 22, scope: !2, inlinedAt: !272)
!282 = !DILocation(line: 28, column: 20, scope: !2, inlinedAt: !272)
!283 = !DILocation(line: 29, column: 22, scope: !2, inlinedAt: !272)
!284 = !DILocation(line: 29, column: 20, scope: !2, inlinedAt: !272)
!285 = !DILocation(line: 30, column: 3, scope: !2, inlinedAt: !272)
!286 = !DILocation(line: 30, column: 20, scope: !2, inlinedAt: !272)
!287 = !DILocation(line: 31, column: 3, scope: !2, inlinedAt: !272)
!288 = !DILocation(line: 31, column: 20, scope: !2, inlinedAt: !272)
!289 = !DILocation(line: 32, column: 3, scope: !2, inlinedAt: !272)
!290 = !DILocation(line: 32, column: 20, scope: !2, inlinedAt: !272)
!291 = !DILocation(line: 33, column: 3, scope: !2, inlinedAt: !272)
!292 = !DILocation(line: 33, column: 16, scope: !2, inlinedAt: !272)
!293 = !DILocation(line: 34, column: 3, scope: !2, inlinedAt: !272)
!294 = !DILocation(line: 42, column: 3, scope: !264)
