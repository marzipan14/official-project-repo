; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_fputc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !25 {
  %4 = alloca i32, align 4
  %5 = icmp eq %struct._reent* %0, null, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %5, label %11, label %6, !dbg !261

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !261
  %8 = load i32, i32* %7, align 8, !dbg !261, !tbaa !263
  %9 = icmp eq i32 %8, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %9, label %10, label %11, !dbg !260

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br label %11, !dbg !261

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = bitcast i32* %4 to i8*, !dbg !272
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !272
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #4, !dbg !272
  %14 = call i32 @_putc_r(%struct._reent* %0, i32 %1, %struct.__sFILE* %2) #4, !dbg !273
  %15 = load i32, i32* %4, align 4, !dbg !275, !tbaa !276
  %16 = call i32 @pthread_setcancelstate(i32 %15, i32* nonnull %4) #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  ret i32 %14, !dbg !278
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_putc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fputc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !279 {
  %3 = alloca i32, align 4
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !292
  %5 = icmp eq %struct._reent* %4, null, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %5, label %11, label %6, !dbg !295

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !295
  %8 = load i32, i32* %7, align 8, !dbg !295, !tbaa !263
  %9 = icmp eq i32 %8, 0, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %9, label %10, label %11, !dbg !294

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br label %11, !dbg !295

; <label>:11:                                     ; preds = %6, %2, %10
  %12 = bitcast i32* %3 to i8*, !dbg !297
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !297
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !297
  %14 = call i32 @_putc_r(%struct._reent* %4, i32 %0, %struct.__sFILE* %1) #4, !dbg !298
  %15 = load i32, i32* %3, align 4, !dbg !300, !tbaa !276
  %16 = call i32 @pthread_setcancelstate(i32 %15, i32* nonnull %3) #4, !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  ret i32 %14, !dbg !302
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 435, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!8 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!9 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!14 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "_fputc_r", scope: !1, file: !1, line: 114, type: !26, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !250)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !28, !5, !247}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !30, line: 569, size: 14912, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !33, !115, !116, !117, !118, !122, !123, !126, !127, !131, !143, !144, !145, !147, !148, !149, !211, !232, !233, !238, !245}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !29, file: !30, line: 571, baseType: !5, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !29, file: !30, line: 576, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !30, line: 287, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !30, line: 181, size: 1408, elements: !37)
!37 = !{!38, !41, !42, !43, !45, !46, !51, !52, !54, !63, !69, !74, !78, !79, !80, !81, !85, !89, !90, !91, !93, !94, !98, !114}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !36, file: !30, line: 182, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !36, file: !30, line: 183, baseType: !5, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !36, file: !30, line: 184, baseType: !5, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !30, line: 185, baseType: !44, size: 16, offset: 128)
!44 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !36, file: !30, line: 186, baseType: !44, size: 16, offset: 144)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !36, file: !30, line: 187, baseType: !47, size: 128, offset: 192)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !30, line: 117, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !47, file: !30, line: 118, baseType: !39, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !47, file: !30, line: 119, baseType: !5, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !36, file: !30, line: 188, baseType: !5, size: 32, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !36, file: !30, line: 195, baseType: !53, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !36, file: !30, line: 197, baseType: !55, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !28, !53, !61, !5}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !59, line: 145, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !36, file: !30, line: 199, baseType: !64, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!58, !28, !53, !67, !5}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !36, file: !30, line: 202, baseType: !70, size: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !28, !53, !73, !5}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !59, line: 114, baseType: !60)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !36, file: !30, line: 203, baseType: !75, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!5, !28, !53}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !36, file: !30, line: 206, baseType: !47, size: 128, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !36, file: !30, line: 207, baseType: !39, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !36, file: !30, line: 208, baseType: !5, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !36, file: !30, line: 211, baseType: !82, size: 24, offset: 928)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !36, file: !30, line: 212, baseType: !86, size: 8, offset: 952)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !36, file: !30, line: 215, baseType: !47, size: 128, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !36, file: !30, line: 218, baseType: !5, size: 32, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !30, line: 219, baseType: !92, size: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !59, line: 44, baseType: !60)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !36, file: !30, line: 222, baseType: !28, size: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !30, line: 226, baseType: !95, size: 32, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !59, line: 175, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !97, line: 12, baseType: !5)
!97 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !36, file: !30, line: 228, baseType: !99, size: 64, offset: 1312)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !59, line: 171, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 163, size: 64, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !100, file: !59, line: 165, baseType: !5, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !100, file: !59, line: 170, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !59, line: 166, size: 32, elements: !105)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !104, file: !59, line: 168, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !108, line: 124, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !104, file: !59, line: 169, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !30, line: 229, baseType: !5, size: 32, offset: 1376)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !29, file: !30, line: 576, baseType: !34, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !29, file: !30, line: 576, baseType: !34, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !29, file: !30, line: 578, baseType: !5, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !29, file: !30, line: 579, baseType: !119, size: 200, offset: 288)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 200, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 25)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !29, file: !30, line: 582, baseType: !5, size: 32, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !29, file: !30, line: 583, baseType: !124, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !30, line: 40, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !29, file: !30, line: 585, baseType: !5, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !29, file: !30, line: 587, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !28}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !29, file: !30, line: 590, baseType: !132, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !30, line: 47, size: 256, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !133, file: !30, line: 49, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !133, file: !30, line: 50, baseType: !5, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !133, file: !30, line: 50, baseType: !5, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !133, file: !30, line: 50, baseType: !5, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !133, file: !30, line: 50, baseType: !5, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !133, file: !30, line: 51, baseType: !141, size: 32, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 32, elements: !87)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !30, line: 25, baseType: !109)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !29, file: !30, line: 591, baseType: !5, size: 32, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !29, file: !30, line: 592, baseType: !132, size: 64, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !29, file: !30, line: 593, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !29, file: !30, line: 596, baseType: !5, size: 32, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !29, file: !30, line: 597, baseType: !61, size: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !29, file: !30, line: 632, baseType: !150, size: 2880, offset: 1152)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !29, file: !30, line: 599, size: 2880, elements: !151)
!151 = !{!152, !202}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !150, file: !30, line: 622, baseType: !153, size: 1728)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !30, line: 601, size: 1728, elements: !154)
!154 = !{!155, !156, !157, !161, !173, !174, !176, !184, !185, !186, !187, !191, !195, !196, !197, !198, !199, !200, !201}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !153, file: !30, line: 603, baseType: !109, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !153, file: !30, line: 604, baseType: !61, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !153, file: !30, line: 605, baseType: !158, size: 208, offset: 128)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 208, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 26)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !153, file: !30, line: 606, baseType: !162, size: 288, offset: 352)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !30, line: 55, size: 288, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !162, file: !30, line: 57, baseType: !5, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !162, file: !30, line: 58, baseType: !5, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !162, file: !30, line: 59, baseType: !5, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !162, file: !30, line: 60, baseType: !5, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !162, file: !30, line: 61, baseType: !5, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !162, file: !30, line: 62, baseType: !5, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !162, file: !30, line: 63, baseType: !5, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !162, file: !30, line: 64, baseType: !5, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !162, file: !30, line: 65, baseType: !5, size: 32, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !153, file: !30, line: 607, baseType: !5, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !153, file: !30, line: 608, baseType: !175, size: 64, offset: 704)
!175 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !153, file: !30, line: 609, baseType: !177, size: 112, offset: 768)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !30, line: 319, size: 112, elements: !178)
!178 = !{!179, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !177, file: !30, line: 320, baseType: !180, size: 48)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !83)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !177, file: !30, line: 321, baseType: !180, size: 48, offset: 48)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !177, file: !30, line: 322, baseType: !181, size: 16, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !153, file: !30, line: 610, baseType: !99, size: 64, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !153, file: !30, line: 611, baseType: !99, size: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !153, file: !30, line: 612, baseType: !99, size: 64, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !153, file: !30, line: 613, baseType: !188, size: 64, offset: 1088)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !153, file: !30, line: 614, baseType: !192, size: 192, offset: 1152)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !153, file: !30, line: 615, baseType: !5, size: 32, offset: 1344)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !153, file: !30, line: 616, baseType: !99, size: 64, offset: 1376)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !153, file: !30, line: 617, baseType: !99, size: 64, offset: 1440)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !153, file: !30, line: 618, baseType: !99, size: 64, offset: 1504)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !153, file: !30, line: 619, baseType: !99, size: 64, offset: 1568)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !153, file: !30, line: 620, baseType: !99, size: 64, offset: 1632)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !153, file: !30, line: 621, baseType: !5, size: 32, offset: 1696)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !150, file: !30, line: 631, baseType: !203, size: 2880)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !30, line: 626, size: 2880, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !203, file: !30, line: 629, baseType: !206, size: 1920)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1920, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 30)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !203, file: !30, line: 630, baseType: !210, size: 960, offset: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 960, elements: !207)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !29, file: !30, line: 636, baseType: !212, size: 64, offset: 4032)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !30, line: 93, size: 6336, elements: !214)
!214 = !{!215, !216, !217, !224}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !213, file: !30, line: 94, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !213, file: !30, line: 95, baseType: !5, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !213, file: !30, line: 97, baseType: !218, size: 2048, offset: 128)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, elements: !222)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !{!223}
!223 = !DISubrange(count: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !213, file: !30, line: 98, baseType: !225, size: 4160, offset: 2176)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !30, line: 74, size: 4160, elements: !226)
!226 = !{!227, !229, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !225, file: !30, line: 75, baseType: !228, size: 2048)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !225, file: !30, line: 76, baseType: !228, size: 2048, offset: 2048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !225, file: !30, line: 78, baseType: !142, size: 32, offset: 4096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !225, file: !30, line: 81, baseType: !142, size: 32, offset: 4128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !29, file: !30, line: 637, baseType: !213, size: 6336, offset: 4096)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !29, file: !30, line: 641, baseType: !234, size: 64, offset: 10432)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !5}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !29, file: !30, line: 646, baseType: !239, size: 192, offset: 10496)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !30, line: 291, size: 192, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !239, file: !30, line: 293, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !239, file: !30, line: 294, baseType: !5, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !239, file: !30, line: 295, baseType: !34, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !29, file: !30, line: 648, baseType: !246, size: 4224, offset: 10688)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 4224, elements: !83)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 66, baseType: !35)
!249 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!250 = !{!251, !252, !253, !254, !255, !257}
!251 = !DILocalVariable(name: "ptr", arg: 1, scope: !25, file: !1, line: 114, type: !28)
!252 = !DILocalVariable(name: "ch", arg: 2, scope: !25, file: !1, line: 114, type: !5)
!253 = !DILocalVariable(name: "file", arg: 3, scope: !25, file: !1, line: 114, type: !247)
!254 = !DILocalVariable(name: "result", scope: !25, file: !1, line: 119, type: !5)
!255 = !DILocalVariable(name: "_check_init_ptr", scope: !256, file: !1, line: 120, type: !28)
!256 = distinct !DILexicalBlock(scope: !25, file: !1, line: 120, column: 3)
!257 = !DILocalVariable(name: "__oldfpcancel", scope: !258, file: !1, line: 121, type: !5)
!258 = distinct !DILexicalBlock(scope: !25, file: !1, line: 121, column: 4)
!259 = !DILocation(line: 114, column: 1, scope: !25)
!260 = !DILocation(line: 120, column: 3, scope: !256)
!261 = !DILocation(line: 120, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 120, column: 3)
!263 = !{!264, !265, i64 80}
!264 = !{!"_reent", !265, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !265, i64 32, !266, i64 36, !265, i64 64, !268, i64 72, !265, i64 80, !268, i64 88, !268, i64 96, !265, i64 104, !268, i64 112, !268, i64 120, !265, i64 128, !268, i64 136, !266, i64 144, !268, i64 504, !269, i64 512, !268, i64 1304, !271, i64 1312, !266, i64 1336}
!265 = !{!"int", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !{!"any pointer", !266, i64 0}
!269 = !{!"_atexit", !268, i64 0, !265, i64 8, !266, i64 16, !270, i64 272}
!270 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !265, i64 512, !265, i64 516}
!271 = !{!"_glue", !268, i64 0, !265, i64 8, !268, i64 16}
!272 = !DILocation(line: 121, column: 4, scope: !258)
!273 = !DILocation(line: 122, column: 12, scope: !258)
!274 = !DILocation(line: 119, column: 7, scope: !25)
!275 = !DILocation(line: 123, column: 3, scope: !258)
!276 = !{!265, !265, i64 0}
!277 = !DILocation(line: 123, column: 3, scope: !25)
!278 = !DILocation(line: 124, column: 3, scope: !25)
!279 = distinct !DISubprogram(name: "fputc", scope: !1, file: !1, line: 129, type: !280, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!5, !5, !247}
!282 = !{!283, !284, !285, !286, !287, !289}
!283 = !DILocalVariable(name: "ch", arg: 1, scope: !279, file: !1, line: 129, type: !5)
!284 = !DILocalVariable(name: "file", arg: 2, scope: !279, file: !1, line: 129, type: !247)
!285 = !DILocalVariable(name: "result", scope: !279, file: !1, line: 134, type: !5)
!286 = !DILocalVariable(name: "reent", scope: !279, file: !1, line: 135, type: !28)
!287 = !DILocalVariable(name: "_check_init_ptr", scope: !288, file: !1, line: 137, type: !28)
!288 = distinct !DILexicalBlock(scope: !279, file: !1, line: 137, column: 3)
!289 = !DILocalVariable(name: "__oldfpcancel", scope: !290, file: !1, line: 138, type: !5)
!290 = distinct !DILexicalBlock(scope: !279, file: !1, line: 138, column: 4)
!291 = !DILocation(line: 129, column: 1, scope: !279)
!292 = !DILocation(line: 135, column: 26, scope: !279)
!293 = !DILocation(line: 135, column: 18, scope: !279)
!294 = !DILocation(line: 137, column: 3, scope: !288)
!295 = !DILocation(line: 137, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !1, line: 137, column: 3)
!297 = !DILocation(line: 138, column: 4, scope: !290)
!298 = !DILocation(line: 139, column: 12, scope: !290)
!299 = !DILocation(line: 134, column: 7, scope: !279)
!300 = !DILocation(line: 140, column: 3, scope: !290)
!301 = !DILocation(line: 140, column: 3, scope: !279)
!302 = !DILocation(line: 141, column: 3, scope: !279)
