; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/l64a.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/l64a.c"
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

@R64_ARRAY = internal unnamed_addr constant [65 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @l64a(i64) local_unnamed_addr #0 !dbg !17 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !25
  %3 = tail call i8* @_l64a_r(%struct._reent* %2, i64 %0) #4, !dbg !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  ret i8* %3, !dbg !27
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @_l64a_r(%struct._reent*, i64) local_unnamed_addr #0 !dbg !28 {
  %3 = and i64 %1, 4294967295, !dbg !256
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 17, !dbg !258
  %5 = bitcast i8** %4 to i8*, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %6 = icmp eq i64 %3, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %6, label %7, label %9, !dbg !269

; <label>:7:                                      ; preds = %38, %31, %24, %17, %9, %2
  %8 = phi i8* [ %5, %2 ], [ %13, %9 ], [ %21, %17 ], [ %28, %24 ], [ %35, %31 ], [ %42, %38 ]
  store i8 0, i8* %8, align 1, !dbg !270, !tbaa !272
  br label %16, !dbg !275

; <label>:9:                                      ; preds = %2
  %10 = and i64 %1, 63, !dbg !276
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %10, !dbg !278
  %12 = load i8, i8* %11, align 1, !dbg !278, !tbaa !272
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !279
  store i8 %12, i8* %5, align 1, !dbg !280, !tbaa !272
  %14 = lshr i64 %3, 6, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %15 = icmp eq i64 %14, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %15, label %7, label %17, !dbg !269

; <label>:16:                                     ; preds = %45, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  ret i8* %5, !dbg !284

; <label>:17:                                     ; preds = %9
  %18 = and i64 %14, 63, !dbg !276
  %19 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %18, !dbg !278
  %20 = load i8, i8* %19, align 1, !dbg !278, !tbaa !272
  %21 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !279
  store i8 %20, i8* %13, align 1, !dbg !280, !tbaa !272
  %22 = lshr i64 %3, 12, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %23 = icmp eq i64 %22, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %23, label %7, label %24, !dbg !269

; <label>:24:                                     ; preds = %17
  %25 = and i64 %22, 63, !dbg !276
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %25, !dbg !278
  %27 = load i8, i8* %26, align 1, !dbg !278, !tbaa !272
  %28 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !279
  store i8 %27, i8* %21, align 1, !dbg !280, !tbaa !272
  %29 = lshr i64 %3, 18, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %30 = icmp eq i64 %29, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %30, label %7, label %31, !dbg !269

; <label>:31:                                     ; preds = %24
  %32 = and i64 %29, 63, !dbg !276
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %32, !dbg !278
  %34 = load i8, i8* %33, align 1, !dbg !278, !tbaa !272
  %35 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !279
  store i8 %34, i8* %28, align 1, !dbg !280, !tbaa !272
  %36 = lshr i64 %3, 24, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %37 = icmp eq i64 %36, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %37, label %7, label %38, !dbg !269

; <label>:38:                                     ; preds = %31
  %39 = and i64 %36, 63, !dbg !276
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %39, !dbg !278
  %41 = load i8, i8* %40, align 1, !dbg !278, !tbaa !272
  %42 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !279
  store i8 %41, i8* %35, align 1, !dbg !280, !tbaa !272
  %43 = lshr i64 %3, 30, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %44 = icmp eq i64 %43, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %44, label %7, label %45, !dbg !269

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %43, !dbg !278
  %47 = load i8, i8* %46, align 1, !dbg !278, !tbaa !272
  store i8 %47, i8* %42, align 1, !dbg !280, !tbaa !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br label %16, !dbg !284
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "R64_ARRAY", scope: !2, file: !3, line: 27, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/l64a.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !{!0}
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 520, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 65)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "l64a", scope: !3, file: !3, line: 30, type: !18, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !{!23}
!23 = !DILocalVariable(name: "value", arg: 1, scope: !17, file: !3, line: 30, type: !21)
!24 = !DILocation(line: 30, column: 1, scope: !17)
!25 = !DILocation(line: 33, column: 19, scope: !17)
!26 = !DILocation(line: 33, column: 10, scope: !17)
!27 = !DILocation(line: 33, column: 3, scope: !17)
!28 = distinct !DISubprogram(name: "_l64a_r", scope: !3, file: !3, line: 37, type: !29, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !247)
!29 = !DISubroutineType(types: !30)
!30 = !{!20, !31, !21}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !33, line: 569, size: 14912, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !37, !115, !116, !117, !118, !122, !123, !126, !127, !131, !143, !144, !145, !147, !148, !149, !211, !232, !233, !238, !245}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !32, file: !33, line: 571, baseType: !36, size: 32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !32, file: !33, line: 576, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !33, line: 287, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !33, line: 181, size: 1408, elements: !41)
!41 = !{!42, !45, !46, !47, !49, !50, !55, !56, !58, !64, !69, !74, !78, !79, !80, !81, !85, !89, !90, !91, !93, !94, !98, !114}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !33, line: 182, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !33, line: 183, baseType: !36, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !33, line: 184, baseType: !36, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !33, line: 185, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !33, line: 186, baseType: !48, size: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !33, line: 187, baseType: !51, size: 128, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !33, line: 117, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !33, line: 118, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !33, line: 119, baseType: !36, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !33, line: 188, baseType: !36, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !33, line: 195, baseType: !57, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !33, line: 197, baseType: !59, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !31, !57, !20, !36}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !63, line: 145, baseType: !21)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !33, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!62, !31, !57, !68, !36}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !33, line: 202, baseType: !70, size: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !31, !57, !73, !36}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !63, line: 114, baseType: !21)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !33, line: 203, baseType: !75, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!36, !31, !57}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !33, line: 206, baseType: !51, size: 128, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !40, file: !33, line: 207, baseType: !43, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !33, line: 208, baseType: !36, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !33, line: 211, baseType: !82, size: 24, offset: 928)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !33, line: 212, baseType: !86, size: 8, offset: 952)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !33, line: 215, baseType: !51, size: 128, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !33, line: 218, baseType: !36, size: 32, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !33, line: 219, baseType: !92, size: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !63, line: 44, baseType: !21)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !40, file: !33, line: 222, baseType: !31, size: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !33, line: 226, baseType: !95, size: 32, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !63, line: 175, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !97, line: 12, baseType: !36)
!97 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !40, file: !33, line: 228, baseType: !99, size: 64, offset: 1312)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !63, line: 171, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 163, size: 64, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !100, file: !63, line: 165, baseType: !36, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !100, file: !63, line: 170, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !63, line: 166, size: 32, elements: !105)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !104, file: !63, line: 168, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !108, line: 124, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !104, file: !63, line: 169, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !33, line: 229, baseType: !36, size: 32, offset: 1376)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !32, file: !33, line: 576, baseType: !38, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !32, file: !33, line: 576, baseType: !38, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !32, file: !33, line: 578, baseType: !36, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !32, file: !33, line: 579, baseType: !119, size: 200, offset: 288)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 25)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !32, file: !33, line: 582, baseType: !36, size: 32, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !32, file: !33, line: 583, baseType: !124, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !33, line: 40, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !32, file: !33, line: 585, baseType: !36, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !32, file: !33, line: 587, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !31}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !32, file: !33, line: 590, baseType: !132, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !33, line: 47, size: 256, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !133, file: !33, line: 49, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !133, file: !33, line: 50, baseType: !36, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !133, file: !33, line: 50, baseType: !36, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !133, file: !33, line: 50, baseType: !36, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !133, file: !33, line: 50, baseType: !36, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !133, file: !33, line: 51, baseType: !141, size: 32, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 32, elements: !87)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !33, line: 25, baseType: !109)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !32, file: !33, line: 591, baseType: !36, size: 32, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !32, file: !33, line: 592, baseType: !132, size: 64, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !32, file: !33, line: 593, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !32, file: !33, line: 596, baseType: !36, size: 32, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !32, file: !33, line: 597, baseType: !20, size: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !32, file: !33, line: 632, baseType: !150, size: 2880, offset: 1152)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !33, line: 599, size: 2880, elements: !151)
!151 = !{!152, !202}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !150, file: !33, line: 622, baseType: !153, size: 1728)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 601, size: 1728, elements: !154)
!154 = !{!155, !156, !157, !161, !173, !174, !176, !184, !185, !186, !187, !191, !195, !196, !197, !198, !199, !200, !201}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !153, file: !33, line: 603, baseType: !109, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !153, file: !33, line: 604, baseType: !20, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !153, file: !33, line: 605, baseType: !158, size: 208, offset: 128)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 26)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !153, file: !33, line: 606, baseType: !162, size: 288, offset: 352)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !33, line: 55, size: 288, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !162, file: !33, line: 57, baseType: !36, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !162, file: !33, line: 58, baseType: !36, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !162, file: !33, line: 59, baseType: !36, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !162, file: !33, line: 60, baseType: !36, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !162, file: !33, line: 61, baseType: !36, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !162, file: !33, line: 62, baseType: !36, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !162, file: !33, line: 63, baseType: !36, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !162, file: !33, line: 64, baseType: !36, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !162, file: !33, line: 65, baseType: !36, size: 32, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !153, file: !33, line: 607, baseType: !36, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !153, file: !33, line: 608, baseType: !175, size: 64, offset: 704)
!175 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !153, file: !33, line: 609, baseType: !177, size: 112, offset: 768)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !33, line: 319, size: 112, elements: !178)
!178 = !{!179, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !177, file: !33, line: 320, baseType: !180, size: 48)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !83)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !177, file: !33, line: 321, baseType: !180, size: 48, offset: 48)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !177, file: !33, line: 322, baseType: !181, size: 16, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !153, file: !33, line: 610, baseType: !99, size: 64, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !153, file: !33, line: 611, baseType: !99, size: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !153, file: !33, line: 612, baseType: !99, size: 64, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !153, file: !33, line: 613, baseType: !188, size: 64, offset: 1088)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !153, file: !33, line: 614, baseType: !192, size: 192, offset: 1152)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !153, file: !33, line: 615, baseType: !36, size: 32, offset: 1344)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !153, file: !33, line: 616, baseType: !99, size: 64, offset: 1376)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !153, file: !33, line: 617, baseType: !99, size: 64, offset: 1440)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !153, file: !33, line: 618, baseType: !99, size: 64, offset: 1504)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !153, file: !33, line: 619, baseType: !99, size: 64, offset: 1568)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !153, file: !33, line: 620, baseType: !99, size: 64, offset: 1632)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !153, file: !33, line: 621, baseType: !36, size: 32, offset: 1696)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !150, file: !33, line: 631, baseType: !203, size: 2880)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 626, size: 2880, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !203, file: !33, line: 629, baseType: !206, size: 1920)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1920, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 30)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !203, file: !33, line: 630, baseType: !210, size: 960, offset: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 960, elements: !207)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !32, file: !33, line: 636, baseType: !212, size: 64, offset: 4032)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !33, line: 93, size: 6336, elements: !214)
!214 = !{!215, !216, !217, !224}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !213, file: !33, line: 94, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !213, file: !33, line: 95, baseType: !36, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !213, file: !33, line: 97, baseType: !218, size: 2048, offset: 128)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, elements: !222)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !{!223}
!223 = !DISubrange(count: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !213, file: !33, line: 98, baseType: !225, size: 4160, offset: 2176)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !33, line: 74, size: 4160, elements: !226)
!226 = !{!227, !229, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !225, file: !33, line: 75, baseType: !228, size: 2048)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2048, elements: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !225, file: !33, line: 76, baseType: !228, size: 2048, offset: 2048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !225, file: !33, line: 78, baseType: !142, size: 32, offset: 4096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !225, file: !33, line: 81, baseType: !142, size: 32, offset: 4128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !32, file: !33, line: 637, baseType: !213, size: 6336, offset: 4096)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !32, file: !33, line: 641, baseType: !234, size: 64, offset: 10432)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !36}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !32, file: !33, line: 646, baseType: !239, size: 192, offset: 10496)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !33, line: 291, size: 192, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !239, file: !33, line: 293, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !239, file: !33, line: 294, baseType: !36, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !239, file: !33, line: 295, baseType: !38, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !32, file: !33, line: 648, baseType: !246, size: 4224, offset: 10688)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4224, elements: !83)
!247 = !{!248, !249, !250, !251, !252, !253, !254}
!248 = !DILocalVariable(name: "rptr", arg: 1, scope: !28, file: !3, line: 37, type: !31)
!249 = !DILocalVariable(name: "value", arg: 2, scope: !28, file: !3, line: 37, type: !21)
!250 = !DILocalVariable(name: "ptr", scope: !28, file: !3, line: 41, type: !20)
!251 = !DILocalVariable(name: "result", scope: !28, file: !3, line: 42, type: !20)
!252 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 43, type: !36)
!253 = !DILocalVariable(name: "index", scope: !28, file: !3, line: 43, type: !36)
!254 = !DILocalVariable(name: "tmp", scope: !28, file: !3, line: 44, type: !6)
!255 = !DILocation(line: 37, column: 1, scope: !28)
!256 = !DILocation(line: 44, column: 44, scope: !28)
!257 = !DILocation(line: 44, column: 17, scope: !28)
!258 = !DILocation(line: 47, column: 12, scope: !28)
!259 = !DILocation(line: 42, column: 9, scope: !28)
!260 = !DILocation(line: 41, column: 9, scope: !28)
!261 = !DILocation(line: 43, column: 7, scope: !28)
!262 = !DILocation(line: 50, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !28, file: !3, line: 50, column: 3)
!264 = !DILocation(line: 50, column: 3, scope: !263)
!265 = !DILocation(line: 52, column: 15, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 52, column: 11)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 51, column: 5)
!268 = distinct !DILexicalBlock(scope: !263, file: !3, line: 50, column: 3)
!269 = !DILocation(line: 52, column: 11, scope: !267)
!270 = !DILocation(line: 54, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !3, line: 53, column: 2)
!272 = !{!273, !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !DILocation(line: 55, column: 4, scope: !271)
!276 = !DILocation(line: 58, column: 15, scope: !267)
!277 = !DILocation(line: 43, column: 10, scope: !28)
!278 = !DILocation(line: 59, column: 16, scope: !267)
!279 = !DILocation(line: 59, column: 11, scope: !267)
!280 = !DILocation(line: 59, column: 14, scope: !267)
!281 = !DILocation(line: 60, column: 11, scope: !267)
!282 = !DILocation(line: 50, column: 3, scope: !268)
!283 = !DILocation(line: 0, scope: !271)
!284 = !DILocation(line: 63, column: 3, scope: !28)
