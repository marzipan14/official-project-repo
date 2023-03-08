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
  %3 = and i64 %0, 4294967295, !dbg !255
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 17, !dbg !257
  %5 = bitcast i8** %4 to i8*, !dbg !257
  %6 = icmp eq i64 %3, 0, !dbg !261
  br i1 %6, label %7, label %9, !dbg !266

; <label>:7:                                      ; preds = %37, %30, %23, %16, %9, %1
  %8 = phi i8* [ %5, %1 ], [ %13, %9 ], [ %20, %16 ], [ %27, %23 ], [ %34, %30 ], [ %41, %37 ]
  store i8 0, i8* %8, align 1, !dbg !267, !tbaa !269
  br label %47, !dbg !272

; <label>:9:                                      ; preds = %1
  %10 = and i64 %0, 63, !dbg !273
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %10, !dbg !275
  %12 = load i8, i8* %11, align 1, !dbg !275, !tbaa !269
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !276
  store i8 %12, i8* %5, align 1, !dbg !277, !tbaa !269
  %14 = lshr i64 %3, 6, !dbg !278
  %15 = icmp eq i64 %14, 0, !dbg !261
  br i1 %15, label %7, label %16, !dbg !266

; <label>:16:                                     ; preds = %9
  %17 = and i64 %14, 63, !dbg !273
  %18 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %17, !dbg !275
  %19 = load i8, i8* %18, align 1, !dbg !275, !tbaa !269
  %20 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !276
  store i8 %19, i8* %13, align 1, !dbg !277, !tbaa !269
  %21 = lshr i64 %3, 12, !dbg !278
  %22 = icmp eq i64 %21, 0, !dbg !261
  br i1 %22, label %7, label %23, !dbg !266

; <label>:23:                                     ; preds = %16
  %24 = and i64 %21, 63, !dbg !273
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %24, !dbg !275
  %26 = load i8, i8* %25, align 1, !dbg !275, !tbaa !269
  %27 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !276
  store i8 %26, i8* %20, align 1, !dbg !277, !tbaa !269
  %28 = lshr i64 %3, 18, !dbg !278
  %29 = icmp eq i64 %28, 0, !dbg !261
  br i1 %29, label %7, label %30, !dbg !266

; <label>:30:                                     ; preds = %23
  %31 = and i64 %28, 63, !dbg !273
  %32 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %31, !dbg !275
  %33 = load i8, i8* %32, align 1, !dbg !275, !tbaa !269
  %34 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !276
  store i8 %33, i8* %27, align 1, !dbg !277, !tbaa !269
  %35 = lshr i64 %3, 24, !dbg !278
  %36 = icmp eq i64 %35, 0, !dbg !261
  br i1 %36, label %7, label %37, !dbg !266

; <label>:37:                                     ; preds = %30
  %38 = and i64 %35, 63, !dbg !273
  %39 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %38, !dbg !275
  %40 = load i8, i8* %39, align 1, !dbg !275, !tbaa !269
  %41 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !276
  store i8 %40, i8* %34, align 1, !dbg !277, !tbaa !269
  %42 = lshr i64 %3, 30, !dbg !278
  %43 = icmp eq i64 %42, 0, !dbg !261
  br i1 %43, label %7, label %44, !dbg !266

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %42, !dbg !275
  %46 = load i8, i8* %45, align 1, !dbg !275, !tbaa !269
  store i8 %46, i8* %41, align 1, !dbg !277, !tbaa !269
  br label %47, !dbg !279

; <label>:47:                                     ; preds = %7, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i8* %5, !dbg !280
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @_l64a_r(%struct._reent*, i64) local_unnamed_addr #0 !dbg !27 {
  %3 = and i64 %1, 4294967295, !dbg !282
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 17, !dbg !284
  %5 = bitcast i8** %4 to i8*, !dbg !284
  %6 = icmp eq i64 %3, 0, !dbg !288
  br i1 %6, label %7, label %9, !dbg !289

; <label>:7:                                      ; preds = %38, %31, %24, %17, %9, %2
  %8 = phi i8* [ %5, %2 ], [ %13, %9 ], [ %21, %17 ], [ %28, %24 ], [ %35, %31 ], [ %42, %38 ]
  store i8 0, i8* %8, align 1, !dbg !290, !tbaa !269
  br label %16, !dbg !291

; <label>:9:                                      ; preds = %2
  %10 = and i64 %1, 63, !dbg !292
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %10, !dbg !294
  %12 = load i8, i8* %11, align 1, !dbg !294, !tbaa !269
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !295
  store i8 %12, i8* %5, align 1, !dbg !296, !tbaa !269
  %14 = lshr i64 %3, 6, !dbg !297
  %15 = icmp eq i64 %14, 0, !dbg !288
  br i1 %15, label %7, label %17, !dbg !289

; <label>:16:                                     ; preds = %45, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  ret i8* %5, !dbg !298

; <label>:17:                                     ; preds = %9
  %18 = and i64 %14, 63, !dbg !292
  %19 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %18, !dbg !294
  %20 = load i8, i8* %19, align 1, !dbg !294, !tbaa !269
  %21 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !295
  store i8 %20, i8* %13, align 1, !dbg !296, !tbaa !269
  %22 = lshr i64 %3, 12, !dbg !297
  %23 = icmp eq i64 %22, 0, !dbg !288
  br i1 %23, label %7, label %24, !dbg !289

; <label>:24:                                     ; preds = %17
  %25 = and i64 %22, 63, !dbg !292
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %25, !dbg !294
  %27 = load i8, i8* %26, align 1, !dbg !294, !tbaa !269
  %28 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !295
  store i8 %27, i8* %21, align 1, !dbg !296, !tbaa !269
  %29 = lshr i64 %3, 18, !dbg !297
  %30 = icmp eq i64 %29, 0, !dbg !288
  br i1 %30, label %7, label %31, !dbg !289

; <label>:31:                                     ; preds = %24
  %32 = and i64 %29, 63, !dbg !292
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %32, !dbg !294
  %34 = load i8, i8* %33, align 1, !dbg !294, !tbaa !269
  %35 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !295
  store i8 %34, i8* %28, align 1, !dbg !296, !tbaa !269
  %36 = lshr i64 %3, 24, !dbg !297
  %37 = icmp eq i64 %36, 0, !dbg !288
  br i1 %37, label %7, label %38, !dbg !289

; <label>:38:                                     ; preds = %31
  %39 = and i64 %36, 63, !dbg !292
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %39, !dbg !294
  %41 = load i8, i8* %40, align 1, !dbg !294, !tbaa !269
  %42 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !295
  store i8 %41, i8* %35, align 1, !dbg !296, !tbaa !269
  %43 = lshr i64 %3, 30, !dbg !297
  %44 = icmp eq i64 %43, 0, !dbg !288
  br i1 %44, label %7, label %45, !dbg !289

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* @R64_ARRAY, i64 0, i64 %43, !dbg !294
  %47 = load i8, i8* %46, align 1, !dbg !294, !tbaa !269
  store i8 %47, i8* %42, align 1, !dbg !296, !tbaa !269
  br label %16, !dbg !298
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

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
!26 = !DILocalVariable(name: "rptr", arg: 1, scope: !27, file: !3, line: 37, type: !30)
!27 = distinct !DISubprogram(name: "_l64a_r", scope: !3, file: !3, line: 37, type: !28, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !246)
!28 = !DISubroutineType(types: !29)
!29 = !{!20, !30, !21}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !32, line: 569, size: 14912, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34, !36, !114, !115, !116, !117, !121, !122, !125, !126, !130, !142, !143, !144, !146, !147, !148, !210, !231, !232, !237, !244}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !31, file: !32, line: 571, baseType: !35, size: 32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !31, file: !32, line: 576, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !32, line: 287, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 181, size: 1408, elements: !40)
!40 = !{!41, !44, !45, !46, !48, !49, !54, !55, !57, !63, !68, !73, !77, !78, !79, !80, !84, !88, !89, !90, !92, !93, !97, !113}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !39, file: !32, line: 182, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !39, file: !32, line: 183, baseType: !35, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !39, file: !32, line: 184, baseType: !35, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !32, line: 185, baseType: !47, size: 16, offset: 128)
!47 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !39, file: !32, line: 186, baseType: !47, size: 16, offset: 144)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !39, file: !32, line: 187, baseType: !50, size: 128, offset: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 117, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !50, file: !32, line: 118, baseType: !42, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !50, file: !32, line: 119, baseType: !35, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !39, file: !32, line: 188, baseType: !35, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !39, file: !32, line: 195, baseType: !56, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !39, file: !32, line: 197, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !30, !56, !20, !35}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !62, line: 145, baseType: !21)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !39, file: !32, line: 199, baseType: !64, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!61, !30, !56, !67, !35}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !39, file: !32, line: 202, baseType: !69, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !30, !56, !72, !35}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !62, line: 114, baseType: !21)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !39, file: !32, line: 203, baseType: !74, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!35, !30, !56}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !39, file: !32, line: 206, baseType: !50, size: 128, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !39, file: !32, line: 207, baseType: !42, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !39, file: !32, line: 208, baseType: !35, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !39, file: !32, line: 211, baseType: !81, size: 24, offset: 928)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 24, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 3)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !39, file: !32, line: 212, baseType: !85, size: 8, offset: 952)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !39, file: !32, line: 215, baseType: !50, size: 128, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !39, file: !32, line: 218, baseType: !35, size: 32, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !32, line: 219, baseType: !91, size: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !62, line: 44, baseType: !21)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !39, file: !32, line: 222, baseType: !30, size: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !39, file: !32, line: 226, baseType: !94, size: 32, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !62, line: 175, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !96, line: 12, baseType: !35)
!96 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !39, file: !32, line: 228, baseType: !98, size: 64, offset: 1312)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !62, line: 171, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 163, size: 64, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !99, file: !62, line: 165, baseType: !35, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !99, file: !62, line: 170, baseType: !103, size: 32, offset: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !62, line: 166, size: 32, elements: !104)
!104 = !{!105, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !103, file: !62, line: 168, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !107, line: 124, baseType: !108)
!107 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !103, file: !62, line: 169, baseType: !110, size: 32)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !39, file: !32, line: 229, baseType: !35, size: 32, offset: 1376)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !31, file: !32, line: 576, baseType: !37, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !31, file: !32, line: 576, baseType: !37, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !31, file: !32, line: 578, baseType: !35, size: 32, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !31, file: !32, line: 579, baseType: !118, size: 200, offset: 288)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 25)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !31, file: !32, line: 582, baseType: !35, size: 32, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !31, file: !32, line: 583, baseType: !123, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !32, line: 40, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !31, file: !32, line: 585, baseType: !35, size: 32, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !31, file: !32, line: 587, baseType: !127, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !30}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !31, file: !32, line: 590, baseType: !131, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !32, line: 47, size: 256, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !132, file: !32, line: 49, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !132, file: !32, line: 50, baseType: !35, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !132, file: !32, line: 50, baseType: !35, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !132, file: !32, line: 50, baseType: !35, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !132, file: !32, line: 50, baseType: !35, size: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !132, file: !32, line: 51, baseType: !140, size: 32, offset: 192)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 32, elements: !86)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !32, line: 25, baseType: !108)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !31, file: !32, line: 591, baseType: !35, size: 32, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !31, file: !32, line: 592, baseType: !131, size: 64, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !31, file: !32, line: 593, baseType: !145, size: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !31, file: !32, line: 596, baseType: !35, size: 32, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !31, file: !32, line: 597, baseType: !20, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !31, file: !32, line: 632, baseType: !149, size: 2880, offset: 1152)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !32, line: 599, size: 2880, elements: !150)
!150 = !{!151, !201}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !149, file: !32, line: 622, baseType: !152, size: 1728)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !32, line: 601, size: 1728, elements: !153)
!153 = !{!154, !155, !156, !160, !172, !173, !175, !183, !184, !185, !186, !190, !194, !195, !196, !197, !198, !199, !200}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !152, file: !32, line: 603, baseType: !108, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !152, file: !32, line: 604, baseType: !20, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !152, file: !32, line: 605, baseType: !157, size: 208, offset: 128)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 26)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !152, file: !32, line: 606, baseType: !161, size: 288, offset: 352)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !32, line: 55, size: 288, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !161, file: !32, line: 57, baseType: !35, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !161, file: !32, line: 58, baseType: !35, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !161, file: !32, line: 59, baseType: !35, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !161, file: !32, line: 60, baseType: !35, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !161, file: !32, line: 61, baseType: !35, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !161, file: !32, line: 62, baseType: !35, size: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !161, file: !32, line: 63, baseType: !35, size: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !161, file: !32, line: 64, baseType: !35, size: 32, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !161, file: !32, line: 65, baseType: !35, size: 32, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !152, file: !32, line: 607, baseType: !35, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !152, file: !32, line: 608, baseType: !174, size: 64, offset: 704)
!174 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !152, file: !32, line: 609, baseType: !176, size: 112, offset: 768)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !32, line: 319, size: 112, elements: !177)
!177 = !{!178, !181, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !176, file: !32, line: 320, baseType: !179, size: 48)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 48, elements: !82)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !176, file: !32, line: 321, baseType: !179, size: 48, offset: 48)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !176, file: !32, line: 322, baseType: !180, size: 16, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !152, file: !32, line: 610, baseType: !98, size: 64, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !152, file: !32, line: 611, baseType: !98, size: 64, offset: 960)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !152, file: !32, line: 612, baseType: !98, size: 64, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !152, file: !32, line: 613, baseType: !187, size: 64, offset: 1088)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !152, file: !32, line: 614, baseType: !191, size: 192, offset: 1152)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 24)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !152, file: !32, line: 615, baseType: !35, size: 32, offset: 1344)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !152, file: !32, line: 616, baseType: !98, size: 64, offset: 1376)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !152, file: !32, line: 617, baseType: !98, size: 64, offset: 1440)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !152, file: !32, line: 618, baseType: !98, size: 64, offset: 1504)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !152, file: !32, line: 619, baseType: !98, size: 64, offset: 1568)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !152, file: !32, line: 620, baseType: !98, size: 64, offset: 1632)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !152, file: !32, line: 621, baseType: !35, size: 32, offset: 1696)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !149, file: !32, line: 631, baseType: !202, size: 2880)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !32, line: 626, size: 2880, elements: !203)
!203 = !{!204, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !202, file: !32, line: 629, baseType: !205, size: 1920)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1920, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 30)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !202, file: !32, line: 630, baseType: !209, size: 960, offset: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 960, elements: !206)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !31, file: !32, line: 636, baseType: !211, size: 64, offset: 4032)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !32, line: 93, size: 6336, elements: !213)
!213 = !{!214, !215, !216, !223}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !212, file: !32, line: 94, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !212, file: !32, line: 95, baseType: !35, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !212, file: !32, line: 97, baseType: !217, size: 2048, offset: 128)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 2048, elements: !221)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null}
!221 = !{!222}
!222 = !DISubrange(count: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !212, file: !32, line: 98, baseType: !224, size: 4160, offset: 2176)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !32, line: 74, size: 4160, elements: !225)
!225 = !{!226, !228, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !224, file: !32, line: 75, baseType: !227, size: 2048)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, elements: !221)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !224, file: !32, line: 76, baseType: !227, size: 2048, offset: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !224, file: !32, line: 78, baseType: !141, size: 32, offset: 4096)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !224, file: !32, line: 81, baseType: !141, size: 32, offset: 4128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !31, file: !32, line: 637, baseType: !212, size: 6336, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !31, file: !32, line: 641, baseType: !233, size: 64, offset: 10432)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !35}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !31, file: !32, line: 646, baseType: !238, size: 192, offset: 10496)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !32, line: 291, size: 192, elements: !239)
!239 = !{!240, !242, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !238, file: !32, line: 293, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !238, file: !32, line: 294, baseType: !35, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !238, file: !32, line: 295, baseType: !37, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !31, file: !32, line: 648, baseType: !245, size: 4224, offset: 10688)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4224, elements: !82)
!246 = !{!26, !247, !248, !249, !250, !251, !252}
!247 = !DILocalVariable(name: "value", arg: 2, scope: !27, file: !3, line: 37, type: !21)
!248 = !DILocalVariable(name: "ptr", scope: !27, file: !3, line: 41, type: !20)
!249 = !DILocalVariable(name: "result", scope: !27, file: !3, line: 42, type: !20)
!250 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 43, type: !35)
!251 = !DILocalVariable(name: "index", scope: !27, file: !3, line: 43, type: !35)
!252 = !DILocalVariable(name: "tmp", scope: !27, file: !3, line: 44, type: !6)
!253 = !DILocation(line: 37, column: 1, scope: !27, inlinedAt: !254)
!254 = distinct !DILocation(line: 33, column: 10, scope: !17)
!255 = !DILocation(line: 44, column: 44, scope: !27, inlinedAt: !254)
!256 = !DILocation(line: 44, column: 17, scope: !27, inlinedAt: !254)
!257 = !DILocation(line: 47, column: 12, scope: !27, inlinedAt: !254)
!258 = !DILocation(line: 42, column: 9, scope: !27, inlinedAt: !254)
!259 = !DILocation(line: 41, column: 9, scope: !27, inlinedAt: !254)
!260 = !DILocation(line: 43, column: 7, scope: !27, inlinedAt: !254)
!261 = !DILocation(line: 52, column: 15, scope: !262, inlinedAt: !254)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 52, column: 11)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 51, column: 5)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 50, column: 3)
!265 = distinct !DILexicalBlock(scope: !27, file: !3, line: 50, column: 3)
!266 = !DILocation(line: 52, column: 11, scope: !263, inlinedAt: !254)
!267 = !DILocation(line: 54, column: 9, scope: !268, inlinedAt: !254)
!268 = distinct !DILexicalBlock(scope: !262, file: !3, line: 53, column: 2)
!269 = !{!270, !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C/C++ TBAA"}
!272 = !DILocation(line: 55, column: 4, scope: !268, inlinedAt: !254)
!273 = !DILocation(line: 58, column: 15, scope: !263, inlinedAt: !254)
!274 = !DILocation(line: 43, column: 10, scope: !27, inlinedAt: !254)
!275 = !DILocation(line: 59, column: 16, scope: !263, inlinedAt: !254)
!276 = !DILocation(line: 59, column: 11, scope: !263, inlinedAt: !254)
!277 = !DILocation(line: 59, column: 14, scope: !263, inlinedAt: !254)
!278 = !DILocation(line: 60, column: 11, scope: !263, inlinedAt: !254)
!279 = !DILocation(line: 63, column: 3, scope: !27, inlinedAt: !254)
!280 = !DILocation(line: 33, column: 3, scope: !17)
!281 = !DILocation(line: 37, column: 1, scope: !27)
!282 = !DILocation(line: 44, column: 44, scope: !27)
!283 = !DILocation(line: 44, column: 17, scope: !27)
!284 = !DILocation(line: 47, column: 12, scope: !27)
!285 = !DILocation(line: 42, column: 9, scope: !27)
!286 = !DILocation(line: 41, column: 9, scope: !27)
!287 = !DILocation(line: 43, column: 7, scope: !27)
!288 = !DILocation(line: 52, column: 15, scope: !262)
!289 = !DILocation(line: 52, column: 11, scope: !263)
!290 = !DILocation(line: 54, column: 9, scope: !268)
!291 = !DILocation(line: 55, column: 4, scope: !268)
!292 = !DILocation(line: 58, column: 15, scope: !263)
!293 = !DILocation(line: 43, column: 10, scope: !27)
!294 = !DILocation(line: 59, column: 16, scope: !263)
!295 = !DILocation(line: 59, column: 11, scope: !263)
!296 = !DILocation(line: 59, column: 14, scope: !263)
!297 = !DILocation(line: 60, column: 11, scope: !263)
!298 = !DILocation(line: 63, column: 3, scope: !27)
