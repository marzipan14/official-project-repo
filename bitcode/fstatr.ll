; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/fstatr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/fstatr.c"
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
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

@errno = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_fstat_r(%struct._reent* nocapture, i32, %struct.stat*) local_unnamed_addr #0 !dbg !62 {
  %4 = alloca %struct.stat, align 8
  store i32 0, i32* @errno, align 4, !dbg !289, !tbaa !290
  %5 = bitcast %struct.stat* %4 to i8*, !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %5) #4, !dbg !294
  %6 = ptrtoint %struct.stat* %4 to i64, !dbg !295
  %7 = add i64 %6, 65536, !dbg !296
  %8 = inttoptr i64 %7 to %struct.stat*, !dbg !297
  %9 = call i32 @fstat(i32 %1, %struct.stat* %8) #5, !dbg !299
  %10 = bitcast %struct.stat* %2 to i8*, !dbg !301
  %11 = inttoptr i64 %7 to i8*, !dbg !302
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 88) #5, !dbg !303
  %13 = icmp eq i32 %9, -1, !dbg !304
  %14 = load i32, i32* @errno, align 4, !dbg !306
  %15 = icmp ne i32 %14, 0, !dbg !307
  %16 = and i1 %13, %15, !dbg !308
  br i1 %16, label %17, label %19, !dbg !308

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !309
  store i32 %14, i32* %18, align 8, !dbg !310, !tbaa !311
  br label %19, !dbg !317

; <label>:19:                                     ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %5) #4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  ret i32 %9, !dbg !319
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/fstatr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !54}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6, line: 27, size: 704, elements: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !{!8, !14, !18, !24, !27, !30, !33, !34, !39, !46, !47, !48, !51}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5, file: !6, line: 29, baseType: !9, size: 16)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !10, line: 177, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !12, line: 54, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5, file: !6, line: 30, baseType: !15, size: 16, offset: 16)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !10, line: 155, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !12, line: 73, baseType: !17)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5, file: !6, line: 31, baseType: !19, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !10, line: 205, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !12, line: 88, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5, file: !6, line: 32, baseType: !25, size: 16, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !10, line: 210, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !12, line: 210, baseType: !17)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5, file: !6, line: 33, baseType: !28, size: 16, offset: 80)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !10, line: 181, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !12, line: 58, baseType: !17)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5, file: !6, line: 34, baseType: !31, size: 16, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !10, line: 185, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !12, line: 61, baseType: !17)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5, file: !6, line: 35, baseType: !9, size: 16, offset: 112)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5, file: !6, line: 36, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !10, line: 173, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !12, line: 100, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !12, line: 44, baseType: !38)
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5, file: !6, line: 37, baseType: !40, size: 128, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !41, line: 52, size: 128, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !40, file: !41, line: 53, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !41, line: 34, baseType: !38)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !40, file: !41, line: 54, baseType: !38, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5, file: !6, line: 38, baseType: !40, size: 128, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5, file: !6, line: 39, baseType: !40, size: 128, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5, file: !6, line: 40, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !10, line: 118, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !12, line: 32, baseType: !38)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5, file: !6, line: 41, baseType: !52, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !10, line: 113, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !12, line: 28, baseType: !38)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 82, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !22, line: 232, baseType: !57)
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !{i32 2, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!62 = distinct !DISubprogram(name: "_fstat_r", scope: !1, file: !1, line: 55, type: !63, isLocal: false, isDefinition: true, scopeLine: 59, isOptimized: true, unit: !0, retainedNodes: !279)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !66, !65, !4}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !68, line: 569, size: 14912, elements: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !{!70, !71, !148, !149, !150, !151, !155, !156, !159, !160, !164, !176, !177, !178, !180, !181, !182, !243, !264, !265, !270, !277}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !67, file: !68, line: 571, baseType: !65, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !67, file: !68, line: 576, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !68, line: 287, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !68, line: 181, size: 1408, elements: !75)
!75 = !{!76, !79, !80, !81, !82, !83, !88, !89, !91, !98, !104, !109, !113, !114, !115, !116, !120, !124, !125, !126, !127, !128, !132, !147}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !74, file: !68, line: 182, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !74, file: !68, line: 183, baseType: !65, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !74, file: !68, line: 184, baseType: !65, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !68, line: 185, baseType: !13, size: 16, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !74, file: !68, line: 186, baseType: !13, size: 16, offset: 144)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !74, file: !68, line: 187, baseType: !84, size: 128, offset: 192)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !68, line: 117, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !84, file: !68, line: 118, baseType: !77, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !84, file: !68, line: 119, baseType: !65, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !74, file: !68, line: 188, baseType: !65, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !74, file: !68, line: 195, baseType: !90, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !74, file: !68, line: 197, baseType: !92, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !66, !90, !96, !65}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !12, line: 145, baseType: !38)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !74, file: !68, line: 199, baseType: !99, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!95, !66, !90, !102, !65}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !74, file: !68, line: 202, baseType: !105, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !66, !90, !108, !65}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !12, line: 114, baseType: !38)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !74, file: !68, line: 203, baseType: !110, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!65, !66, !90}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !74, file: !68, line: 206, baseType: !84, size: 128, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !74, file: !68, line: 207, baseType: !77, size: 64, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !74, file: !68, line: 208, baseType: !65, size: 32, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !74, file: !68, line: 211, baseType: !117, size: 24, offset: 928)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 24, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 3)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !74, file: !68, line: 212, baseType: !121, size: 8, offset: 952)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 1)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !74, file: !68, line: 215, baseType: !84, size: 128, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !74, file: !68, line: 218, baseType: !65, size: 32, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !68, line: 219, baseType: !37, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !74, file: !68, line: 222, baseType: !66, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !68, line: 226, baseType: !129, size: 32, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !12, line: 175, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !131, line: 12, baseType: !65)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !74, file: !68, line: 228, baseType: !133, size: 64, offset: 1312)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !12, line: 171, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 163, size: 64, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !134, file: !12, line: 165, baseType: !65, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !134, file: !12, line: 170, baseType: !138, size: 32, offset: 32)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !12, line: 166, size: 32, elements: !139)
!139 = !{!140, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !138, file: !12, line: 168, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !142, line: 124, baseType: !23)
!142 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !138, file: !12, line: 169, baseType: !144, size: 32)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 4)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !68, line: 229, baseType: !65, size: 32, offset: 1376)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !67, file: !68, line: 576, baseType: !72, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !67, file: !68, line: 576, baseType: !72, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !67, file: !68, line: 578, baseType: !65, size: 32, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !67, file: !68, line: 579, baseType: !152, size: 200, offset: 288)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 200, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 25)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !67, file: !68, line: 582, baseType: !65, size: 32, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !67, file: !68, line: 583, baseType: !157, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !68, line: 40, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !67, file: !68, line: 585, baseType: !65, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !67, file: !68, line: 587, baseType: !161, size: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !66}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !67, file: !68, line: 590, baseType: !165, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !68, line: 47, size: 256, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !166, file: !68, line: 49, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !166, file: !68, line: 50, baseType: !65, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !166, file: !68, line: 50, baseType: !65, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !166, file: !68, line: 50, baseType: !65, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !166, file: !68, line: 50, baseType: !65, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !166, file: !68, line: 51, baseType: !174, size: 32, offset: 192)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32, elements: !122)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !68, line: 25, baseType: !23)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !67, file: !68, line: 591, baseType: !65, size: 32, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !67, file: !68, line: 592, baseType: !165, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !67, file: !68, line: 593, baseType: !179, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !67, file: !68, line: 596, baseType: !65, size: 32, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !67, file: !68, line: 597, baseType: !96, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !67, file: !68, line: 632, baseType: !183, size: 2880, offset: 1152)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !68, line: 599, size: 2880, elements: !184)
!184 = !{!185, !234}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !183, file: !68, line: 622, baseType: !186, size: 1728)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !68, line: 601, size: 1728, elements: !187)
!187 = !{!188, !189, !190, !194, !206, !207, !209, !216, !217, !218, !219, !223, !227, !228, !229, !230, !231, !232, !233}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !186, file: !68, line: 603, baseType: !23, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !186, file: !68, line: 604, baseType: !96, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !186, file: !68, line: 605, baseType: !191, size: 208, offset: 128)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 208, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 26)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !186, file: !68, line: 606, baseType: !195, size: 288, offset: 352)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !68, line: 55, size: 288, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !195, file: !68, line: 57, baseType: !65, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !195, file: !68, line: 58, baseType: !65, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !195, file: !68, line: 59, baseType: !65, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !195, file: !68, line: 60, baseType: !65, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !195, file: !68, line: 61, baseType: !65, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !195, file: !68, line: 62, baseType: !65, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !195, file: !68, line: 63, baseType: !65, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !195, file: !68, line: 64, baseType: !65, size: 32, offset: 224)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !195, file: !68, line: 65, baseType: !65, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !186, file: !68, line: 607, baseType: !65, size: 32, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !186, file: !68, line: 608, baseType: !208, size: 64, offset: 704)
!208 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !186, file: !68, line: 609, baseType: !210, size: 112, offset: 768)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !68, line: 319, size: 112, elements: !211)
!211 = !{!212, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !210, file: !68, line: 320, baseType: !213, size: 48)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, elements: !118)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !210, file: !68, line: 321, baseType: !213, size: 48, offset: 48)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !210, file: !68, line: 322, baseType: !17, size: 16, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !186, file: !68, line: 610, baseType: !133, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !186, file: !68, line: 611, baseType: !133, size: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !186, file: !68, line: 612, baseType: !133, size: 64, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !186, file: !68, line: 613, baseType: !220, size: 64, offset: 1088)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !186, file: !68, line: 614, baseType: !224, size: 192, offset: 1152)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 24)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !186, file: !68, line: 615, baseType: !65, size: 32, offset: 1344)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !186, file: !68, line: 616, baseType: !133, size: 64, offset: 1376)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !186, file: !68, line: 617, baseType: !133, size: 64, offset: 1440)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !186, file: !68, line: 618, baseType: !133, size: 64, offset: 1504)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !186, file: !68, line: 619, baseType: !133, size: 64, offset: 1568)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !186, file: !68, line: 620, baseType: !133, size: 64, offset: 1632)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !186, file: !68, line: 621, baseType: !65, size: 32, offset: 1696)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !183, file: !68, line: 631, baseType: !235, size: 2880)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !68, line: 626, size: 2880, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !235, file: !68, line: 629, baseType: !238, size: 1920)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1920, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 30)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !235, file: !68, line: 630, baseType: !242, size: 960, offset: 1920)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 960, elements: !239)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !67, file: !68, line: 636, baseType: !244, size: 64, offset: 4032)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !68, line: 93, size: 6336, elements: !246)
!246 = !{!247, !248, !249, !256}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !245, file: !68, line: 94, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !245, file: !68, line: 95, baseType: !65, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !245, file: !68, line: 97, baseType: !250, size: 2048, offset: 128)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 2048, elements: !254)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null}
!254 = !{!255}
!255 = !DISubrange(count: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !245, file: !68, line: 98, baseType: !257, size: 4160, offset: 2176)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !68, line: 74, size: 4160, elements: !258)
!258 = !{!259, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !257, file: !68, line: 75, baseType: !260, size: 2048)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2048, elements: !254)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !257, file: !68, line: 76, baseType: !260, size: 2048, offset: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !257, file: !68, line: 78, baseType: !175, size: 32, offset: 4096)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !257, file: !68, line: 81, baseType: !175, size: 32, offset: 4128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !67, file: !68, line: 637, baseType: !245, size: 6336, offset: 4096)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !67, file: !68, line: 641, baseType: !266, size: 64, offset: 10432)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !65}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !67, file: !68, line: 646, baseType: !271, size: 192, offset: 10496)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !68, line: 291, size: 192, elements: !272)
!272 = !{!273, !275, !276}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !271, file: !68, line: 293, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !271, file: !68, line: 294, baseType: !65, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !271, file: !68, line: 295, baseType: !72, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !67, file: !68, line: 648, baseType: !278, size: 4224, offset: 10688)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 4224, elements: !118)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DILocalVariable(name: "ptr", arg: 1, scope: !62, file: !1, line: 56, type: !66)
!281 = !DILocalVariable(name: "fd", arg: 2, scope: !62, file: !1, line: 57, type: !65)
!282 = !DILocalVariable(name: "pstat", arg: 3, scope: !62, file: !1, line: 58, type: !4)
!283 = !DILocalVariable(name: "ret", scope: !62, file: !1, line: 60, type: !65)
!284 = !DILocalVariable(name: "_pstat", scope: !62, file: !1, line: 63, type: !5)
!285 = !DILocalVariable(name: "_dss__pstat", scope: !62, file: !1, line: 64, type: !4)
!286 = !DILocation(line: 56, column: 21, scope: !62)
!287 = !DILocation(line: 57, column: 10, scope: !62)
!288 = !DILocation(line: 58, column: 19, scope: !62)
!289 = !DILocation(line: 62, column: 9, scope: !62)
!290 = !{!291, !291, i64 0}
!291 = !{!"int", !292, i64 0}
!292 = !{!"omnipotent char", !293, i64 0}
!293 = !{!"Simple C/C++ TBAA"}
!294 = !DILocation(line: 63, column: 3, scope: !62)
!295 = !DILocation(line: 64, column: 47, scope: !62)
!296 = !DILocation(line: 64, column: 69, scope: !62)
!297 = !DILocation(line: 64, column: 30, scope: !62)
!298 = !DILocation(line: 64, column: 16, scope: !62)
!299 = !DILocation(line: 65, column: 3, scope: !62)
!300 = !DILocation(line: 60, column: 7, scope: !62)
!301 = !DILocation(line: 66, column: 10, scope: !62)
!302 = !DILocation(line: 66, column: 17, scope: !62)
!303 = !DILocation(line: 66, column: 3, scope: !62)
!304 = !DILocation(line: 67, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !62, file: !1, line: 67, column: 7)
!306 = !DILocation(line: 67, column: 20, scope: !305)
!307 = !DILocation(line: 67, column: 26, scope: !305)
!308 = !DILocation(line: 67, column: 17, scope: !305)
!309 = !DILocation(line: 68, column: 10, scope: !305)
!310 = !DILocation(line: 68, column: 17, scope: !305)
!311 = !{!312, !291, i64 0}
!312 = !{!"_reent", !291, i64 0, !313, i64 8, !313, i64 16, !313, i64 24, !291, i64 32, !292, i64 36, !291, i64 64, !313, i64 72, !291, i64 80, !313, i64 88, !313, i64 96, !291, i64 104, !313, i64 112, !313, i64 120, !291, i64 128, !313, i64 136, !292, i64 144, !313, i64 504, !314, i64 512, !313, i64 1304, !316, i64 1312, !292, i64 1336}
!313 = !{!"any pointer", !292, i64 0}
!314 = !{!"_atexit", !313, i64 0, !291, i64 8, !292, i64 16, !315, i64 272}
!315 = !{!"_on_exit_args", !292, i64 0, !292, i64 256, !291, i64 512, !291, i64 516}
!316 = !{!"_glue", !313, i64 0, !291, i64 8, !313, i64 16}
!317 = !DILocation(line: 68, column: 5, scope: !305)
!318 = !DILocation(line: 70, column: 1, scope: !62)
!319 = !DILocation(line: 69, column: 3, scope: !62)
