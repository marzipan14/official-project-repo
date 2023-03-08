; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush_u.c"
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

@_global_impure_ptr = external dso_local local_unnamed_addr constant %struct._reent*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_fflush_unlocked_r(%struct._reent*, %struct.__sFILE*) #0 !dbg !9 {
  %3 = icmp eq %struct._reent* %0, null, !dbg !243
  br i1 %3, label %9, label %4, !dbg !243

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !243
  %6 = load i32, i32* %5, align 8, !dbg !243, !tbaa !245
  %7 = icmp eq i32 %6, 0, !dbg !243
  br i1 %7, label %8, label %9, !dbg !242

; <label>:8:                                      ; preds = %4
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !243
  br label %9, !dbg !243

; <label>:9:                                      ; preds = %4, %2, %8
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !254
  %11 = load i16, i16* %10, align 8, !dbg !254, !tbaa !256
  %12 = icmp eq i16 %11, 0, !dbg !262
  br i1 %12, label %15, label %13, !dbg !263

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @__sflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !264
  br label %15, !dbg !266

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  ret i32 %16, !dbg !268
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__sflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @fflush_unlocked(%struct.__sFILE*) local_unnamed_addr #0 !dbg !269 {
  %2 = icmp eq %struct.__sFILE* %0, null, !dbg !275
  br i1 %2, label %3, label %6, !dbg !277

; <label>:3:                                      ; preds = %1
  %4 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !278, !tbaa !279
  %5 = tail call i32 @_fwalk_reent(%struct._reent* %4, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fflush_unlocked_r) #3, !dbg !280
  br label %22, !dbg !281

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct._reent* @__getreent() #3, !dbg !282
  %8 = icmp eq %struct._reent* %7, null, !dbg !286
  br i1 %8, label %14, label %9, !dbg !286

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 8, !dbg !286
  %11 = load i32, i32* %10, align 8, !dbg !286, !tbaa !245
  %12 = icmp eq i32 %11, 0, !dbg !286
  br i1 %12, label %13, label %14, !dbg !285

; <label>:13:                                     ; preds = %9
  tail call void @__sinit(%struct._reent* nonnull %7) #3, !dbg !286
  br label %14, !dbg !286

; <label>:14:                                     ; preds = %13, %9, %6
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !287
  %16 = load i16, i16* %15, align 8, !dbg !287, !tbaa !256
  %17 = icmp eq i16 %16, 0, !dbg !288
  br i1 %17, label %20, label %18, !dbg !289

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @__sflush_r(%struct._reent* %7, %struct.__sFILE* nonnull %0) #3, !dbg !290
  br label %20, !dbg !292

; <label>:20:                                     ; preds = %14, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ], !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br label %22, !dbg !295

; <label>:22:                                     ; preds = %20, %3
  %23 = phi i32 [ %5, %3 ], [ %21, %20 ], !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  ret i32 %23, !dbg !297
}

; Function Attrs: noredzone
declare dso_local i32 @_fwalk_reent(%struct._reent*, i32 (%struct._reent*, %struct.__sFILE*)*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "_fflush_unlocked_r", scope: !10, file: !10, line: 253, type: !11, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !235)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !232}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !15, file: !16, line: 571, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !23)
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !39, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !16, line: 182, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !16, line: 184, baseType: !13, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !16, line: 185, baseType: !30, size: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !16, line: 186, baseType: !30, size: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !16, line: 187, baseType: !33, size: 128, offset: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !16, line: 118, baseType: !25, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !16, line: 119, baseType: !13, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !16, line: 195, baseType: !4, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !16, line: 197, baseType: !40, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !14, !4, !46, !13}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !44, line: 145, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !16, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!43, !14, !4, !52, !13}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !16, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !14, !4, !58, !13}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !44, line: 114, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !16, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!13, !14, !4}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !16, line: 206, baseType: !33, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !16, line: 207, baseType: !25, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !16, line: 208, baseType: !13, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !16, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !16, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !16, line: 215, baseType: !33, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !16, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !44, line: 44, baseType: !45)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !16, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !44, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !13)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !16, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !44, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !44, line: 165, baseType: !13, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !44, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !44, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !44, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !44, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !13, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !15, file: !16, line: 582, baseType: !13, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !15, file: !16, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !15, file: !16, line: 585, baseType: !13, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !15, file: !16, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !14}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !15, file: !16, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !16, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !16, line: 50, baseType: !13, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !16, line: 50, baseType: !13, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !16, line: 50, baseType: !13, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !16, line: 50, baseType: !13, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !16, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !15, file: !16, line: 591, baseType: !13, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !15, file: !16, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !15, file: !16, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !15, file: !16, line: 596, baseType: !13, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !15, file: !16, line: 597, baseType: !46, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !15, file: !16, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !16, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !16, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !16, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !16, line: 604, baseType: !46, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !16, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !16, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !16, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !16, line: 57, baseType: !13, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !16, line: 58, baseType: !13, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !16, line: 59, baseType: !13, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !16, line: 60, baseType: !13, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !16, line: 61, baseType: !13, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !16, line: 62, baseType: !13, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !16, line: 63, baseType: !13, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !16, line: 64, baseType: !13, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !16, line: 65, baseType: !13, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !16, line: 607, baseType: !13, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !16, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !16, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !16, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !16, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !16, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !16, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !16, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !16, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !16, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !16, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !16, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !16, line: 615, baseType: !13, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !16, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !16, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !16, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !16, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !16, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !16, line: 621, baseType: !13, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !16, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !16, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !16, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !16, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !15, file: !16, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !16, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !16, line: 95, baseType: !13, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !16, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !16, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !16, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !16, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !16, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !16, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !16, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !15, file: !16, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !15, file: !16, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !13}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !15, file: !16, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !16, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !16, line: 294, baseType: !13, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !16, line: 295, baseType: !20, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !15, file: !16, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !68)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 66, baseType: !21)
!234 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!235 = !{!236, !237, !238, !239}
!236 = !DILocalVariable(name: "ptr", arg: 1, scope: !9, file: !10, line: 253, type: !14)
!237 = !DILocalVariable(name: "fp", arg: 2, scope: !9, file: !10, line: 253, type: !232)
!238 = !DILocalVariable(name: "ret", scope: !9, file: !10, line: 257, type: !13)
!239 = !DILocalVariable(name: "_check_init_ptr", scope: !240, file: !10, line: 275, type: !14)
!240 = distinct !DILexicalBlock(scope: !9, file: !10, line: 275, column: 3)
!241 = !DILocation(line: 253, column: 1, scope: !9)
!242 = !DILocation(line: 275, column: 3, scope: !240)
!243 = !DILocation(line: 275, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !10, line: 275, column: 3)
!245 = !{!246, !247, i64 80}
!246 = !{!"_reent", !247, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !247, i64 32, !248, i64 36, !247, i64 64, !250, i64 72, !247, i64 80, !250, i64 88, !250, i64 96, !247, i64 104, !250, i64 112, !250, i64 120, !247, i64 128, !250, i64 136, !248, i64 144, !250, i64 504, !251, i64 512, !250, i64 1304, !253, i64 1312, !248, i64 1336}
!247 = !{!"int", !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C/C++ TBAA"}
!250 = !{!"any pointer", !248, i64 0}
!251 = !{!"_atexit", !250, i64 0, !247, i64 8, !248, i64 16, !252, i64 272}
!252 = !{!"_on_exit_args", !248, i64 0, !248, i64 256, !247, i64 512, !247, i64 516}
!253 = !{!"_glue", !250, i64 0, !247, i64 8, !250, i64 16}
!254 = !DILocation(line: 277, column: 12, scope: !255)
!255 = distinct !DILexicalBlock(scope: !9, file: !10, line: 277, column: 7)
!256 = !{!257, !258, i64 16}
!257 = !{!"__sFILE", !250, i64 0, !247, i64 8, !247, i64 12, !258, i64 16, !258, i64 18, !259, i64 24, !247, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !259, i64 88, !250, i64 104, !247, i64 112, !248, i64 116, !248, i64 119, !259, i64 120, !247, i64 136, !260, i64 144, !250, i64 152, !247, i64 160, !261, i64 164, !247, i64 172}
!258 = !{!"short", !248, i64 0}
!259 = !{!"__sbuf", !250, i64 0, !247, i64 8}
!260 = !{!"long", !248, i64 0}
!261 = !{!"", !247, i64 0, !248, i64 4}
!262 = !DILocation(line: 277, column: 8, scope: !255)
!263 = !DILocation(line: 277, column: 7, scope: !9)
!264 = !DILocation(line: 281, column: 9, scope: !9)
!265 = !DILocation(line: 257, column: 7, scope: !9)
!266 = !DILocation(line: 283, column: 3, scope: !9)
!267 = !DILocation(line: 0, scope: !255)
!268 = !DILocation(line: 284, column: 1, scope: !9)
!269 = distinct !DISubprogram(name: "fflush_unlocked", scope: !10, file: !10, line: 289, type: !270, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!13, !232}
!272 = !{!273}
!273 = !DILocalVariable(name: "fp", arg: 1, scope: !269, file: !10, line: 289, type: !232)
!274 = !DILocation(line: 289, column: 1, scope: !269)
!275 = !DILocation(line: 292, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !10, line: 292, column: 7)
!277 = !DILocation(line: 292, column: 7, scope: !269)
!278 = !DILocation(line: 293, column: 26, scope: !276)
!279 = !{!250, !250, i64 0}
!280 = !DILocation(line: 293, column: 12, scope: !276)
!281 = !DILocation(line: 293, column: 5, scope: !276)
!282 = !DILocation(line: 295, column: 21, scope: !269)
!283 = !DILocation(line: 253, column: 1, scope: !9, inlinedAt: !284)
!284 = distinct !DILocation(line: 295, column: 10, scope: !269)
!285 = !DILocation(line: 275, column: 3, scope: !240, inlinedAt: !284)
!286 = !DILocation(line: 275, column: 3, scope: !244, inlinedAt: !284)
!287 = !DILocation(line: 277, column: 12, scope: !255, inlinedAt: !284)
!288 = !DILocation(line: 277, column: 8, scope: !255, inlinedAt: !284)
!289 = !DILocation(line: 277, column: 7, scope: !9, inlinedAt: !284)
!290 = !DILocation(line: 281, column: 9, scope: !9, inlinedAt: !284)
!291 = !DILocation(line: 257, column: 7, scope: !9, inlinedAt: !284)
!292 = !DILocation(line: 283, column: 3, scope: !9, inlinedAt: !284)
!293 = !DILocation(line: 0, scope: !255, inlinedAt: !284)
!294 = !DILocation(line: 284, column: 1, scope: !9, inlinedAt: !284)
!295 = !DILocation(line: 295, column: 3, scope: !269)
!296 = !DILocation(line: 0, scope: !269)
!297 = !DILocation(line: 296, column: 1, scope: !269)
