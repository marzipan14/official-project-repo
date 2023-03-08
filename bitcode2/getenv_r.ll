; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv_r.c"
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

@environ = external dso_local local_unnamed_addr global i8**, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_findenv_r(%struct._reent*, i8*, i32* nocapture) local_unnamed_addr #0 !dbg !15 {
  tail call void @__env_lock(%struct._reent* %0) #4, !dbg !245
  %4 = load i8**, i8*** @environ, align 8, !dbg !246, !tbaa !248
  %5 = icmp eq i8** %4, null, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %5, label %6, label %7, !dbg !252

; <label>:6:                                      ; preds = %3
  tail call void @__env_unlock(%struct._reent* %0) #4, !dbg !253
  br label %52, !dbg !255

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  %8 = load i8, i8* %1, align 1, !dbg !258, !tbaa !259
  %9 = icmp eq i8 %8, 0, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %9, label %19, label %10, !dbg !260

; <label>:10:                                     ; preds = %7, %15
  %11 = phi i8 [ %17, %15 ], [ %8, %7 ]
  %12 = phi i8* [ %16, %15 ], [ %1, %7 ]
  %13 = icmp eq i8 %11, 61, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br i1 %13, label %14, label %15, !dbg !257

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %51, !dbg !262

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  %17 = load i8, i8* %16, align 1, !dbg !258, !tbaa !259
  %18 = icmp eq i8 %17, 0, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %18, label %19, label %10, !dbg !260, !llvm.loop !264

; <label>:19:                                     ; preds = %15, %7
  %20 = phi i8* [ %1, %7 ], [ %16, %15 ], !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  %21 = load i8*, i8** %4, align 8, !dbg !271, !tbaa !248
  %22 = icmp eq i8* %21, null, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %22, label %51, label %23, !dbg !273

; <label>:23:                                     ; preds = %19
  %24 = ptrtoint i8* %20 to i64, !dbg !274
  %25 = ptrtoint i8* %1 to i64, !dbg !274
  %26 = sub i64 %24, %25, !dbg !274
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  br label %29, !dbg !273

; <label>:29:                                     ; preds = %23, %47
  %30 = phi i8* [ %21, %23 ], [ %49, %47 ]
  %31 = phi i8** [ %4, %23 ], [ %48, %47 ]
  %32 = tail call i32 @strncmp(i8* nonnull %30, i8* %1, i64 %28) #4, !dbg !275
  %33 = icmp eq i32 %32, 0, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %33, label %34, label %47, !dbg !277

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %31, align 8, !dbg !278, !tbaa !248
  %36 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !280
  %37 = load i8, i8* %36, align 1, !dbg !281, !tbaa !259
  %38 = icmp eq i8 %37, 61, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %38, label %39, label %47, !dbg !283

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !280
  %41 = load i64, i64* bitcast (i8*** @environ to i64*), align 8, !dbg !284, !tbaa !248
  %42 = ptrtoint i8** %31 to i64, !dbg !286
  %43 = sub i64 %42, %41, !dbg !286
  %44 = lshr exact i64 %43, 3, !dbg !286
  %45 = trunc i64 %44 to i32, !dbg !287
  store i32 %45, i32* %2, align 4, !dbg !288, !tbaa !289
  tail call void @__env_unlock(%struct._reent* %0) #4, !dbg !291
  %46 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !292
  br label %52, !dbg !293

; <label>:47:                                     ; preds = %29, %34
  %48 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %49 = load i8*, i8** %48, align 8, !dbg !271, !tbaa !248
  %50 = icmp eq i8* %49, null, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %50, label %51, label %29, !dbg !273, !llvm.loop !296

; <label>:51:                                     ; preds = %47, %19, %14
  tail call void @__env_unlock(%struct._reent* %0) #4, !dbg !298
  br label %52, !dbg !299

; <label>:52:                                     ; preds = %51, %39, %6
  %53 = phi i8* [ %46, %39 ], [ null, %51 ], [ null, %6 ], !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  ret i8* %53, !dbg !301
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @__env_lock(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__env_unlock(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @_getenv_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !302 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !310
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5, !dbg !310
  %5 = call i8* @_findenv_r(%struct._reent* %0, i8* %1, i32* nonnull %3) #6, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret i8* %5, !dbg !314
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "p_environ", scope: !0, file: !1, line: 71, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_findenv_r", scope: !1, file: !1, line: 83, type: !16, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !18, !56, !236}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !20, line: 569, size: 14912, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !24, !104, !105, !106, !107, !111, !112, !115, !116, !120, !132, !133, !134, !136, !137, !138, !200, !221, !222, !227, !234}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !19, file: !20, line: 571, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !19, file: !20, line: 576, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !20, line: 287, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !20, line: 181, size: 1408, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !45, !52, !58, !63, !67, !68, !69, !70, !74, !78, !79, !80, !82, !83, !87, !103}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !20, line: 182, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !20, line: 183, baseType: !23, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !20, line: 184, baseType: !23, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !20, line: 185, baseType: !35, size: 16, offset: 128)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !20, line: 186, baseType: !35, size: 16, offset: 144)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !20, line: 187, baseType: !38, size: 128, offset: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !20, line: 117, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !38, file: !20, line: 118, baseType: !30, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !38, file: !20, line: 119, baseType: !23, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !20, line: 188, baseType: !23, size: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !20, line: 195, baseType: !44, size: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !20, line: 197, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !18, !44, !4, !23}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !50, line: 145, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !20, line: 199, baseType: !53, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!49, !18, !44, !56, !23}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !20, line: 202, baseType: !59, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !18, !44, !62, !23}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !50, line: 114, baseType: !51)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !20, line: 203, baseType: !64, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!23, !18, !44}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !20, line: 206, baseType: !38, size: 128, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !27, file: !20, line: 207, baseType: !30, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !20, line: 208, baseType: !23, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !20, line: 211, baseType: !71, size: 24, offset: 928)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !20, line: 212, baseType: !75, size: 8, offset: 952)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !20, line: 215, baseType: !38, size: 128, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !20, line: 218, baseType: !23, size: 32, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !20, line: 219, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !50, line: 44, baseType: !51)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !27, file: !20, line: 222, baseType: !18, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !20, line: 226, baseType: !84, size: 32, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !50, line: 175, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !86, line: 12, baseType: !23)
!86 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !27, file: !20, line: 228, baseType: !88, size: 64, offset: 1312)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !50, line: 171, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 163, size: 64, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !89, file: !50, line: 165, baseType: !23, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !89, file: !50, line: 170, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !50, line: 166, size: 32, elements: !94)
!94 = !{!95, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !93, file: !50, line: 168, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !97, line: 124, baseType: !98)
!97 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !93, file: !50, line: 169, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !20, line: 229, baseType: !23, size: 32, offset: 1376)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !19, file: !20, line: 576, baseType: !25, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !19, file: !20, line: 576, baseType: !25, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !19, file: !20, line: 578, baseType: !23, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !19, file: !20, line: 579, baseType: !108, size: 200, offset: 288)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 25)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !19, file: !20, line: 582, baseType: !23, size: 32, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !19, file: !20, line: 583, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !20, line: 40, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !19, file: !20, line: 585, baseType: !23, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !19, file: !20, line: 587, baseType: !117, size: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !18}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !19, file: !20, line: 590, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !20, line: 47, size: 256, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !122, file: !20, line: 49, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !122, file: !20, line: 50, baseType: !23, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !122, file: !20, line: 50, baseType: !23, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !122, file: !20, line: 50, baseType: !23, size: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !122, file: !20, line: 50, baseType: !23, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !122, file: !20, line: 51, baseType: !130, size: 32, offset: 192)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !76)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !20, line: 25, baseType: !98)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !19, file: !20, line: 591, baseType: !23, size: 32, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !19, file: !20, line: 592, baseType: !121, size: 64, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !19, file: !20, line: 593, baseType: !135, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !19, file: !20, line: 596, baseType: !23, size: 32, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !19, file: !20, line: 597, baseType: !4, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !19, file: !20, line: 632, baseType: !139, size: 2880, offset: 1152)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !20, line: 599, size: 2880, elements: !140)
!140 = !{!141, !191}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !139, file: !20, line: 622, baseType: !142, size: 1728)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !20, line: 601, size: 1728, elements: !143)
!143 = !{!144, !145, !146, !150, !162, !163, !165, !173, !174, !175, !176, !180, !184, !185, !186, !187, !188, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !142, file: !20, line: 603, baseType: !98, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !142, file: !20, line: 604, baseType: !4, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !142, file: !20, line: 605, baseType: !147, size: 208, offset: 128)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 26)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !142, file: !20, line: 606, baseType: !151, size: 288, offset: 352)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !20, line: 55, size: 288, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !151, file: !20, line: 57, baseType: !23, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !151, file: !20, line: 58, baseType: !23, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !151, file: !20, line: 59, baseType: !23, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !151, file: !20, line: 60, baseType: !23, size: 32, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !151, file: !20, line: 61, baseType: !23, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !151, file: !20, line: 62, baseType: !23, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !151, file: !20, line: 63, baseType: !23, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !151, file: !20, line: 64, baseType: !23, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !151, file: !20, line: 65, baseType: !23, size: 32, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !142, file: !20, line: 607, baseType: !23, size: 32, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !142, file: !20, line: 608, baseType: !164, size: 64, offset: 704)
!164 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !142, file: !20, line: 609, baseType: !166, size: 112, offset: 768)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !20, line: 319, size: 112, elements: !167)
!167 = !{!168, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !166, file: !20, line: 320, baseType: !169, size: 48)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 48, elements: !72)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !166, file: !20, line: 321, baseType: !169, size: 48, offset: 48)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !166, file: !20, line: 322, baseType: !170, size: 16, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !142, file: !20, line: 610, baseType: !88, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !142, file: !20, line: 611, baseType: !88, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !142, file: !20, line: 612, baseType: !88, size: 64, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !142, file: !20, line: 613, baseType: !177, size: 64, offset: 1088)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !142, file: !20, line: 614, baseType: !181, size: 192, offset: 1152)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 24)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !142, file: !20, line: 615, baseType: !23, size: 32, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !142, file: !20, line: 616, baseType: !88, size: 64, offset: 1376)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !142, file: !20, line: 617, baseType: !88, size: 64, offset: 1440)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !142, file: !20, line: 618, baseType: !88, size: 64, offset: 1504)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !142, file: !20, line: 619, baseType: !88, size: 64, offset: 1568)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !142, file: !20, line: 620, baseType: !88, size: 64, offset: 1632)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !142, file: !20, line: 621, baseType: !23, size: 32, offset: 1696)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !139, file: !20, line: 631, baseType: !192, size: 2880)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !20, line: 626, size: 2880, elements: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !192, file: !20, line: 629, baseType: !195, size: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 30)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !192, file: !20, line: 630, baseType: !199, size: 960, offset: 1920)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 960, elements: !196)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !19, file: !20, line: 636, baseType: !201, size: 64, offset: 4032)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !20, line: 93, size: 6336, elements: !203)
!203 = !{!204, !205, !206, !213}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !202, file: !20, line: 94, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !202, file: !20, line: 95, baseType: !23, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !202, file: !20, line: 97, baseType: !207, size: 2048, offset: 128)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 2048, elements: !211)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null}
!211 = !{!212}
!212 = !DISubrange(count: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !202, file: !20, line: 98, baseType: !214, size: 4160, offset: 2176)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !20, line: 74, size: 4160, elements: !215)
!215 = !{!216, !218, !219, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !214, file: !20, line: 75, baseType: !217, size: 2048)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !211)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !214, file: !20, line: 76, baseType: !217, size: 2048, offset: 2048)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !214, file: !20, line: 78, baseType: !131, size: 32, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !214, file: !20, line: 81, baseType: !131, size: 32, offset: 4128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !19, file: !20, line: 637, baseType: !202, size: 6336, offset: 4096)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !19, file: !20, line: 641, baseType: !223, size: 64, offset: 10432)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !23}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !19, file: !20, line: 646, baseType: !228, size: 192, offset: 10496)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !20, line: 291, size: 192, elements: !229)
!229 = !{!230, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !228, file: !20, line: 293, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !228, file: !20, line: 294, baseType: !23, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !228, file: !20, line: 295, baseType: !25, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !19, file: !20, line: 648, baseType: !235, size: 4224, offset: 10688)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4224, elements: !72)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!237 = !{!238, !239, !240, !241, !242, !243}
!238 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !15, file: !1, line: 83, type: !18)
!239 = !DILocalVariable(name: "name", arg: 2, scope: !15, file: !1, line: 83, type: !56)
!240 = !DILocalVariable(name: "offset", arg: 3, scope: !15, file: !1, line: 83, type: !236)
!241 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 88, type: !23)
!242 = !DILocalVariable(name: "p", scope: !15, file: !1, line: 89, type: !10)
!243 = !DILocalVariable(name: "c", scope: !15, file: !1, line: 90, type: !56)
!244 = !DILocation(line: 83, column: 1, scope: !15)
!245 = !DILocation(line: 92, column: 3, scope: !15)
!246 = !DILocation(line: 96, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !15, file: !1, line: 96, column: 7)
!248 = !{!249, !249, i64 0}
!249 = !{!"any pointer", !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C/C++ TBAA"}
!252 = !DILocation(line: 96, column: 7, scope: !15)
!253 = !DILocation(line: 98, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !1, line: 97, column: 5)
!255 = !DILocation(line: 99, column: 7, scope: !254)
!256 = !DILocation(line: 90, column: 16, scope: !15)
!257 = !DILocation(line: 103, column: 3, scope: !15)
!258 = !DILocation(line: 103, column: 10, scope: !15)
!259 = !{!250, !250, i64 0}
!260 = !DILocation(line: 103, column: 13, scope: !15)
!261 = !DILocation(line: 103, column: 19, scope: !15)
!262 = !DILocation(line: 106, column: 6, scope: !15)
!263 = !DILocation(line: 103, column: 29, scope: !15)
!264 = distinct !{!264, !257, !263}
!265 = !DILocation(line: 0, scope: !15)
!266 = !DILocation(line: 89, column: 19, scope: !15)
!267 = !DILocation(line: 109, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 109, column: 5)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 107, column: 5)
!270 = distinct !DILexicalBlock(scope: !15, file: !1, line: 106, column: 6)
!271 = !DILocation(line: 109, column: 26, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 109, column: 5)
!273 = !DILocation(line: 109, column: 5, scope: !268)
!274 = !DILocation(line: 108, column: 13, scope: !269)
!275 = !DILocation(line: 110, column: 12, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !1, line: 110, column: 11)
!277 = !DILocation(line: 110, column: 11, scope: !272)
!278 = !DILocation(line: 111, column: 19, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 111, column: 13)
!280 = !DILocation(line: 111, column: 22, scope: !279)
!281 = !DILocation(line: 111, column: 13, scope: !279)
!282 = !DILocation(line: 111, column: 29, scope: !279)
!283 = !DILocation(line: 111, column: 13, scope: !276)
!284 = !DILocation(line: 113, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !1, line: 112, column: 2)
!286 = !DILocation(line: 113, column: 16, scope: !285)
!287 = !DILocation(line: 113, column: 14, scope: !285)
!288 = !DILocation(line: 113, column: 12, scope: !285)
!289 = !{!290, !290, i64 0}
!290 = !{!"int", !250, i64 0}
!291 = !DILocation(line: 114, column: 4, scope: !285)
!292 = !DILocation(line: 115, column: 21, scope: !285)
!293 = !DILocation(line: 115, column: 4, scope: !285)
!294 = !DILocation(line: 109, column: 30, scope: !272)
!295 = !DILocation(line: 109, column: 5, scope: !272)
!296 = distinct !{!296, !273, !297}
!297 = !DILocation(line: 116, column: 2, scope: !268)
!298 = !DILocation(line: 118, column: 3, scope: !15)
!299 = !DILocation(line: 119, column: 3, scope: !15)
!300 = !DILocation(line: 0, scope: !254)
!301 = !DILocation(line: 120, column: 1, scope: !15)
!302 = distinct !DISubprogram(name: "_getenv_r", scope: !1, file: !1, line: 128, type: !303, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!4, !18, !56}
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !302, file: !1, line: 128, type: !18)
!307 = !DILocalVariable(name: "name", arg: 2, scope: !302, file: !1, line: 128, type: !56)
!308 = !DILocalVariable(name: "offset", scope: !302, file: !1, line: 132, type: !23)
!309 = !DILocation(line: 128, column: 1, scope: !302)
!310 = !DILocation(line: 132, column: 3, scope: !302)
!311 = !DILocation(line: 132, column: 7, scope: !302)
!312 = !DILocation(line: 134, column: 10, scope: !302)
!313 = !DILocation(line: 135, column: 1, scope: !302)
!314 = !DILocation(line: 134, column: 3, scope: !302)
