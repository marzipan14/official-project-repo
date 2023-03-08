; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/tmpnam.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/tmpnam.c"
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

@.str = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s/%s%x.%x\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i8* @_tmpnam_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !11 {
  %3 = icmp eq i8* %1, null, !dbg !237
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 5, i64 0, !dbg !239
  %5 = select i1 %3, i8* %4, i8* %1, !dbg !242
  %6 = tail call i32 @_getpid_r(%struct._reent* %0) #3, !dbg !243
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 4, !dbg !245
  br label %8, !dbg !262

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32, i32* %7, align 4, !dbg !263, !tbaa !264
  %10 = tail call i32 (%struct._reent*, i8*, i8*, ...) @_sprintf_r(%struct._reent* %0, i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %9) #3, !dbg !268
  %11 = load i32, i32* %7, align 4, !dbg !269, !tbaa !264
  %12 = add nsw i32 %11, 1, !dbg !269
  store i32 %12, i32* %7, align 4, !dbg !269, !tbaa !264
  %13 = tail call i32 @_open_r(%struct._reent* %0, i8* %5, i32 0, i32 0) #3, !dbg !270
  %14 = icmp eq i32 %13, -1, !dbg !272
  br i1 %14, label %15, label %20, !dbg !274

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !275
  %17 = load i32, i32* %16, align 8, !dbg !275, !tbaa !278
  %18 = icmp eq i32 %17, 88, !dbg !284
  br i1 %18, label %19, label %22, !dbg !285

; <label>:19:                                     ; preds = %15
  store i8 0, i8* %5, align 1, !dbg !286, !tbaa !288
  br label %25, !dbg !289

; <label>:20:                                     ; preds = %8
  %21 = tail call i32 @_close_r(%struct._reent* nonnull %0, i32 %13) #3, !dbg !290
  br label %8

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %7, align 8, !dbg !291, !tbaa !293
  %24 = add nsw i32 %23, 1, !dbg !291
  store i32 %24, i32* %7, align 8, !dbg !291, !tbaa !293
  br label %25, !dbg !294

; <label>:25:                                     ; preds = %19, %22
  %26 = phi i8* [ %5, %22 ], [ null, %19 ], !dbg !295
  ret i8* %26, !dbg !296
}

; Function Attrs: noredzone
declare dso_local i32 @_getpid_r(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @_tempnam_r(%struct._reent*, i8*, i8*) local_unnamed_addr #0 !dbg !297 {
  %4 = icmp eq i8* %2, null, !dbg !308
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %2, !dbg !308
  %6 = icmp eq i8* %1, null, !dbg !310
  br i1 %6, label %7, label %11, !dbg !312

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !313
  %9 = icmp eq i8* %8, null, !dbg !314
  %10 = select i1 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8, !dbg !315
  br label %11, !dbg !315

; <label>:11:                                     ; preds = %7, %3
  %12 = phi i8* [ %10, %7 ], [ %1, %3 ]
  %13 = tail call i64 @strlen(i8* %12) #3, !dbg !316
  %14 = tail call i64 @strlen(i8* %5) #3, !dbg !317
  %15 = add i64 %14, %13, !dbg !318
  %16 = shl i64 %15, 32, !dbg !319
  %17 = add i64 %16, 81604378624, !dbg !319
  %18 = ashr exact i64 %17, 32, !dbg !319
  %19 = tail call i8* @malloc(i64 %18) #3, !dbg !319
  %20 = icmp eq i8* %19, null, !dbg !321
  br i1 %20, label %41, label %21, !dbg !323

; <label>:21:                                     ; preds = %11
  %22 = tail call i32 @_getpid_r(%struct._reent* %0) #3, !dbg !324
  %23 = ptrtoint %struct._reent* %0 to i64, !dbg !327
  %24 = trunc i64 %23 to i32, !dbg !328
  %25 = xor i32 %22, %24, !dbg !329
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 4, !dbg !330
  br label %27, !dbg !333

; <label>:27:                                     ; preds = %39, %21
  %28 = load i32, i32* %26, align 4, !dbg !334, !tbaa !264
  %29 = tail call i32 (%struct._reent*, i8*, i8*, ...) @_sprintf_r(%struct._reent* %0, i8* nonnull %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %5, i32 %25, i32 %28) #3, !dbg !335
  %30 = load i32, i32* %26, align 4, !dbg !336, !tbaa !264
  %31 = add nsw i32 %30, 1, !dbg !336
  store i32 %31, i32* %26, align 4, !dbg !336, !tbaa !264
  %32 = tail call i32 @_open_r(%struct._reent* %0, i8* nonnull %19, i32 0, i32 0) #3, !dbg !337
  %33 = icmp eq i32 %32, -1, !dbg !339
  br i1 %33, label %34, label %39, !dbg !340

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !341
  %36 = load i32, i32* %35, align 8, !dbg !341, !tbaa !278
  %37 = icmp eq i32 %36, 88, !dbg !342
  br i1 %37, label %38, label %41, !dbg !343

; <label>:38:                                     ; preds = %34
  store i8 0, i8* %19, align 1, !dbg !344, !tbaa !288
  br label %41, !dbg !345

; <label>:39:                                     ; preds = %27
  %40 = tail call i32 @_close_r(%struct._reent* nonnull %0, i32 %32) #3, !dbg !346
  br label %27

; <label>:41:                                     ; preds = %11, %34, %38
  %42 = phi i8* [ null, %38 ], [ %19, %34 ], [ null, %11 ], !dbg !347
  ret i8* %42, !dbg !348
}

; Function Attrs: noredzone
declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @tempnam(i8*, i8*) local_unnamed_addr #0 !dbg !349 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !356
  %4 = tail call i8* @_tempnam_r(%struct._reent* %3, i8* %0, i8* %1) #5, !dbg !357
  ret i8* %4, !dbg !358
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @tmpnam(i8*) local_unnamed_addr #0 !dbg !359 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !365
  %3 = tail call i8* @_tmpnam_r(%struct._reent* %2, i8* %0) #5, !dbg !366
  ret i8* %3, !dbg !367
}

; Function Attrs: noredzone
declare dso_local i32 @_sprintf_r(%struct._reent*, i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_open_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_close_r(%struct._reent*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/tmpnam.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "_tmpnam_r", scope: !1, file: !1, line: 139, type: !12, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !231)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !16, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !17, file: !18, line: 571, baseType: !5, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !25)
!25 = !{!26, !29, !30, !31, !33, !34, !39, !40, !41, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !24, file: !18, line: 182, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !24, file: !18, line: 183, baseType: !5, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !24, file: !18, line: 184, baseType: !5, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !18, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !24, file: !18, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !24, file: !18, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !18, line: 118, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !18, line: 119, baseType: !5, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !24, file: !18, line: 188, baseType: !5, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !24, file: !18, line: 195, baseType: !4, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !24, file: !18, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !16, !4, !14, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !6)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !24, file: !18, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!45, !16, !4, !51, !5}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !24, file: !18, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !16, !4, !57, !5}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !24, file: !18, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!5, !16, !4}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !24, file: !18, line: 206, baseType: !35, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !24, file: !18, line: 207, baseType: !27, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !24, file: !18, line: 208, baseType: !5, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !24, file: !18, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !24, file: !18, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !24, file: !18, line: 215, baseType: !35, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !24, file: !18, line: 218, baseType: !5, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !18, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !6)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !24, file: !18, line: 222, baseType: !16, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !18, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !5)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !24, file: !18, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !46, line: 165, baseType: !5, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !46, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !46, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !46, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !46, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !18, line: 229, baseType: !5, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !17, file: !18, line: 578, baseType: !5, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !17, file: !18, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !17, file: !18, line: 582, baseType: !5, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !17, file: !18, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !18, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !5, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !16}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !18, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !18, line: 50, baseType: !5, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !18, line: 50, baseType: !5, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !18, line: 50, baseType: !5, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !18, line: 50, baseType: !5, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !18, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !5, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !5, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !14, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !18, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !18, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !18, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !18, line: 604, baseType: !14, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !18, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !18, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !18, line: 57, baseType: !5, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !18, line: 58, baseType: !5, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !18, line: 59, baseType: !5, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !18, line: 60, baseType: !5, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !18, line: 61, baseType: !5, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !18, line: 62, baseType: !5, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !18, line: 63, baseType: !5, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !18, line: 64, baseType: !5, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !18, line: 65, baseType: !5, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !18, line: 607, baseType: !5, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !18, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !18, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !162)
!162 = !{!163, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !18, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !67)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !18, line: 321, baseType: !164, size: 48, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !18, line: 322, baseType: !165, size: 16, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !18, line: 610, baseType: !83, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !18, line: 611, baseType: !83, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !18, line: 612, baseType: !83, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !18, line: 613, baseType: !172, size: 64, offset: 1088)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !18, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !18, line: 615, baseType: !5, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !18, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !18, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !18, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !18, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !18, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !18, line: 621, baseType: !5, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !18, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !18, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !18, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !18, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !17, file: !18, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !18, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !18, line: 95, baseType: !5, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !197, file: !18, line: 97, baseType: !202, size: 2048, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !197, file: !18, line: 98, baseType: !209, size: 4160, offset: 2176)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !210)
!210 = !{!211, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !209, file: !18, line: 75, baseType: !212, size: 2048)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !18, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !18, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !18, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !17, file: !18, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !17, file: !18, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !5}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !17, file: !18, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !18, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !18, line: 294, baseType: !5, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !18, line: 295, baseType: !22, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !17, file: !18, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4224, elements: !67)
!231 = !{!232, !233, !234, !235}
!232 = !DILocalVariable(name: "p", arg: 1, scope: !11, file: !1, line: 139, type: !16)
!233 = !DILocalVariable(name: "s", arg: 2, scope: !11, file: !1, line: 139, type: !14)
!234 = !DILocalVariable(name: "result", scope: !11, file: !1, line: 143, type: !14)
!235 = !DILocalVariable(name: "pid", scope: !11, file: !1, line: 144, type: !5)
!236 = !DILocation(line: 139, column: 1, scope: !11)
!237 = !DILocation(line: 146, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !11, file: !1, line: 146, column: 7)
!239 = !DILocation(line: 150, column: 16, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !1, line: 147, column: 5)
!241 = !DILocation(line: 143, column: 9, scope: !11)
!242 = !DILocation(line: 146, column: 7, scope: !11)
!243 = !DILocation(line: 156, column: 9, scope: !11)
!244 = !DILocation(line: 144, column: 7, scope: !11)
!245 = !DILocation(line: 158, column: 50, scope: !246)
!246 = distinct !DILexicalBlock(scope: !11, file: !1, line: 158, column: 7)
!247 = !DILocalVariable(name: "ptr", arg: 1, scope: !248, file: !1, line: 107, type: !16)
!248 = distinct !DISubprogram(name: "worker", scope: !1, file: !1, line: 107, type: !249, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!5, !16, !14, !51, !51, !5, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!252 = !{!247, !253, !254, !255, !256, !257, !258}
!253 = !DILocalVariable(name: "result", arg: 2, scope: !248, file: !1, line: 107, type: !14)
!254 = !DILocalVariable(name: "part1", arg: 3, scope: !248, file: !1, line: 107, type: !51)
!255 = !DILocalVariable(name: "part2", arg: 4, scope: !248, file: !1, line: 107, type: !51)
!256 = !DILocalVariable(name: "part3", arg: 5, scope: !248, file: !1, line: 107, type: !5)
!257 = !DILocalVariable(name: "part4", arg: 6, scope: !248, file: !1, line: 107, type: !251)
!258 = !DILocalVariable(name: "t", scope: !259, file: !1, line: 120, type: !5)
!259 = distinct !DILexicalBlock(scope: !248, file: !1, line: 119, column: 5)
!260 = !DILocation(line: 107, column: 1, scope: !248, inlinedAt: !261)
!261 = distinct !DILocation(line: 158, column: 7, scope: !246)
!262 = !DILocation(line: 118, column: 3, scope: !248, inlinedAt: !261)
!263 = !DILocation(line: 121, column: 67, scope: !259, inlinedAt: !261)
!264 = !{!265, !265, i64 0}
!265 = !{!"int", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !DILocation(line: 121, column: 7, scope: !259, inlinedAt: !261)
!269 = !DILocation(line: 122, column: 15, scope: !259, inlinedAt: !261)
!270 = !DILocation(line: 123, column: 11, scope: !259, inlinedAt: !261)
!271 = !DILocation(line: 120, column: 11, scope: !259, inlinedAt: !261)
!272 = !DILocation(line: 124, column: 13, scope: !273, inlinedAt: !261)
!273 = distinct !DILexicalBlock(scope: !259, file: !1, line: 124, column: 11)
!274 = !DILocation(line: 124, column: 11, scope: !259, inlinedAt: !261)
!275 = !DILocation(line: 126, column: 13, scope: !276, inlinedAt: !261)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 126, column: 8)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 125, column: 2)
!278 = !{!279, !265, i64 0}
!279 = !{!"_reent", !265, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !265, i64 32, !266, i64 36, !265, i64 64, !280, i64 72, !265, i64 80, !280, i64 88, !280, i64 96, !265, i64 104, !280, i64 112, !280, i64 120, !265, i64 128, !280, i64 136, !266, i64 144, !280, i64 504, !281, i64 512, !280, i64 1304, !283, i64 1312, !266, i64 1336}
!280 = !{!"any pointer", !266, i64 0}
!281 = !{!"_atexit", !280, i64 0, !265, i64 8, !266, i64 16, !282, i64 272}
!282 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !265, i64 512, !265, i64 516}
!283 = !{!"_glue", !280, i64 0, !265, i64 8, !280, i64 16}
!284 = !DILocation(line: 126, column: 20, scope: !276, inlinedAt: !261)
!285 = !DILocation(line: 126, column: 8, scope: !277, inlinedAt: !261)
!286 = !DILocation(line: 128, column: 18, scope: !287, inlinedAt: !261)
!287 = distinct !DILexicalBlock(scope: !276, file: !1, line: 127, column: 6)
!288 = !{!266, !266, i64 0}
!289 = !DILocation(line: 158, column: 7, scope: !11)
!290 = !DILocation(line: 133, column: 7, scope: !259, inlinedAt: !261)
!291 = !DILocation(line: 160, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !246, file: !1, line: 159, column: 5)
!293 = !{!279, !265, i64 32}
!294 = !DILocation(line: 161, column: 7, scope: !292)
!295 = !DILocation(line: 0, scope: !11)
!296 = !DILocation(line: 165, column: 1, scope: !11)
!297 = distinct !DISubprogram(name: "_tempnam_r", scope: !1, file: !1, line: 168, type: !298, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!14, !16, !51, !51}
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DILocalVariable(name: "p", arg: 1, scope: !297, file: !1, line: 168, type: !16)
!302 = !DILocalVariable(name: "dir", arg: 2, scope: !297, file: !1, line: 168, type: !51)
!303 = !DILocalVariable(name: "pfx", arg: 3, scope: !297, file: !1, line: 168, type: !51)
!304 = !DILocalVariable(name: "filename", scope: !297, file: !1, line: 173, type: !14)
!305 = !DILocalVariable(name: "length", scope: !297, file: !1, line: 174, type: !5)
!306 = !DILocalVariable(name: "prefix", scope: !297, file: !1, line: 175, type: !51)
!307 = !DILocation(line: 168, column: 1, scope: !297)
!308 = !DILocation(line: 175, column: 25, scope: !297)
!309 = !DILocation(line: 175, column: 16, scope: !297)
!310 = !DILocation(line: 176, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !297, file: !1, line: 176, column: 7)
!312 = !DILocation(line: 176, column: 19, scope: !311)
!313 = !DILocation(line: 176, column: 29, scope: !311)
!314 = !DILocation(line: 176, column: 48, scope: !311)
!315 = !DILocation(line: 176, column: 7, scope: !297)
!316 = !DILocation(line: 180, column: 12, scope: !297)
!317 = !DILocation(line: 180, column: 27, scope: !297)
!318 = !DILocation(line: 180, column: 25, scope: !297)
!319 = !DILocation(line: 182, column: 14, scope: !297)
!320 = !DILocation(line: 173, column: 9, scope: !297)
!321 = !DILocation(line: 183, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !297, file: !1, line: 183, column: 7)
!323 = !DILocation(line: 183, column: 7, scope: !297)
!324 = !DILocation(line: 186, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 185, column: 11)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 184, column: 5)
!327 = !DILocation(line: 186, column: 29, scope: !325)
!328 = !DILocation(line: 186, column: 23, scope: !325)
!329 = !DILocation(line: 186, column: 21, scope: !325)
!330 = !DILocation(line: 186, column: 51, scope: !325)
!331 = !DILocation(line: 107, column: 1, scope: !248, inlinedAt: !332)
!332 = distinct !DILocation(line: 185, column: 13, scope: !325)
!333 = !DILocation(line: 118, column: 3, scope: !248, inlinedAt: !332)
!334 = !DILocation(line: 121, column: 67, scope: !259, inlinedAt: !332)
!335 = !DILocation(line: 121, column: 7, scope: !259, inlinedAt: !332)
!336 = !DILocation(line: 122, column: 15, scope: !259, inlinedAt: !332)
!337 = !DILocation(line: 123, column: 11, scope: !259, inlinedAt: !332)
!338 = !DILocation(line: 120, column: 11, scope: !259, inlinedAt: !332)
!339 = !DILocation(line: 124, column: 13, scope: !273, inlinedAt: !332)
!340 = !DILocation(line: 124, column: 11, scope: !259, inlinedAt: !332)
!341 = !DILocation(line: 126, column: 13, scope: !276, inlinedAt: !332)
!342 = !DILocation(line: 126, column: 20, scope: !276, inlinedAt: !332)
!343 = !DILocation(line: 126, column: 8, scope: !277, inlinedAt: !332)
!344 = !DILocation(line: 128, column: 18, scope: !287, inlinedAt: !332)
!345 = !DILocation(line: 185, column: 11, scope: !326)
!346 = !DILocation(line: 133, column: 7, scope: !259, inlinedAt: !332)
!347 = !DILocation(line: 0, scope: !325)
!348 = !DILocation(line: 190, column: 1, scope: !297)
!349 = distinct !DISubprogram(name: "tempnam", scope: !1, file: !1, line: 195, type: !350, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!14, !51, !51}
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "dir", arg: 1, scope: !349, file: !1, line: 195, type: !51)
!354 = !DILocalVariable(name: "pfx", arg: 2, scope: !349, file: !1, line: 195, type: !51)
!355 = !DILocation(line: 195, column: 1, scope: !349)
!356 = !DILocation(line: 199, column: 22, scope: !349)
!357 = !DILocation(line: 199, column: 10, scope: !349)
!358 = !DILocation(line: 199, column: 3, scope: !349)
!359 = distinct !DISubprogram(name: "tmpnam", scope: !1, file: !1, line: 203, type: !360, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!14, !14}
!362 = !{!363}
!363 = !DILocalVariable(name: "s", arg: 1, scope: !359, file: !1, line: 203, type: !14)
!364 = !DILocation(line: 203, column: 1, scope: !359)
!365 = !DILocation(line: 206, column: 21, scope: !359)
!366 = !DILocation(line: 206, column: 10, scope: !359)
!367 = !DILocation(line: 206, column: 3, scope: !359)
