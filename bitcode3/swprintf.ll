; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swprintf.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noredzone nounwind
define dso_local i32 @_swprintf_r(%struct._reent*, i32*, i64, i32*, ...) local_unnamed_addr #0 !dbg !14 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #3, !dbg !259
  %8 = bitcast %struct.__sFILE* %6 to i8*, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %8) #3, !dbg !261
  %9 = icmp ugt i64 %2, 536870911, !dbg !262
  br i1 %9, label %30, label %10, !dbg !264

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !265
  store i16 520, i16* %11, align 8, !dbg !266, !tbaa !267
  %12 = bitcast %struct.__sFILE* %6 to i32**, !dbg !277
  store i32* %1, i32** %12, align 8, !dbg !277, !tbaa !278
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, !dbg !279
  %14 = bitcast %struct.__sbuf* %13 to i32**, !dbg !280
  store i32* %1, i32** %14, align 8, !dbg !280, !tbaa !281
  %15 = icmp ne i64 %2, 0, !dbg !282
  %16 = trunc i64 %2 to i32, !dbg !283
  %17 = shl i32 %16, 2, !dbg !283
  %18 = add i32 %17, -4, !dbg !283
  %19 = select i1 %15, i32 %18, i32 0, !dbg !283
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !284
  store i32 %19, i32* %20, align 4, !dbg !285, !tbaa !286
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !287
  store i32 %19, i32* %21, align 8, !dbg !288, !tbaa !289
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !290
  store i16 -1, i16* %22, align 2, !dbg !291, !tbaa !292
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !293
  call void @llvm.va_start(i8* nonnull %7), !dbg !293
  %24 = call i32 @_svfwprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i32* %3, %struct.__va_list_tag* nonnull %23) #5, !dbg !295
  call void @llvm.va_end(i8* nonnull %7), !dbg !297
  br i1 %15, label %25, label %27, !dbg !298

; <label>:25:                                     ; preds = %10
  %26 = load i32*, i32** %12, align 8, !dbg !299, !tbaa !278
  store i32 0, i32* %26, align 4, !dbg !302, !tbaa !303
  br label %27, !dbg !304

; <label>:27:                                     ; preds = %25, %10
  %28 = sext i32 %24 to i64, !dbg !305
  %29 = icmp ult i64 %28, %2, !dbg !307
  br i1 %29, label %32, label %30, !dbg !308

; <label>:30:                                     ; preds = %27, %4
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !309
  store i32 139, i32* %31, align 8, !dbg !309, !tbaa !311
  br label %32, !dbg !316

; <label>:32:                                     ; preds = %30, %27
  %33 = phi i32 [ %24, %27 ], [ -1, %30 ], !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %8) #3, !dbg !316
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3, !dbg !316
  ret i32 %33, !dbg !316
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @_svfwprintf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @swprintf(i32* noalias, i64, i32* noalias, ...) local_unnamed_addr #0 !dbg !318 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #3, !dbg !332
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #3, !dbg !334
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !335
  %9 = icmp ugt i64 %1, 536870911, !dbg !337
  br i1 %9, label %30, label %10, !dbg !339

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !340
  store i16 520, i16* %11, align 8, !dbg !341, !tbaa !267
  %12 = bitcast %struct.__sFILE* %5 to i32**, !dbg !342
  store i32* %0, i32** %12, align 8, !dbg !342, !tbaa !278
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, !dbg !343
  %14 = bitcast %struct.__sbuf* %13 to i32**, !dbg !344
  store i32* %0, i32** %14, align 8, !dbg !344, !tbaa !281
  %15 = icmp ne i64 %1, 0, !dbg !345
  %16 = trunc i64 %1 to i32, !dbg !346
  %17 = shl i32 %16, 2, !dbg !346
  %18 = add i32 %17, -4, !dbg !346
  %19 = select i1 %15, i32 %18, i32 0, !dbg !346
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !347
  store i32 %19, i32* %20, align 4, !dbg !348, !tbaa !286
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !349
  store i32 %19, i32* %21, align 8, !dbg !350, !tbaa !289
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !351
  store i16 -1, i16* %22, align 2, !dbg !352, !tbaa !292
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !353
  call void @llvm.va_start(i8* nonnull %6), !dbg !353
  %24 = call i32 @_svfwprintf_r(%struct._reent* %8, %struct.__sFILE* nonnull %5, i32* %2, %struct.__va_list_tag* nonnull %23) #5, !dbg !355
  call void @llvm.va_end(i8* nonnull %6), !dbg !357
  br i1 %15, label %25, label %27, !dbg !358

; <label>:25:                                     ; preds = %10
  %26 = load i32*, i32** %12, align 8, !dbg !359, !tbaa !278
  store i32 0, i32* %26, align 4, !dbg !362, !tbaa !303
  br label %27, !dbg !363

; <label>:27:                                     ; preds = %25, %10
  %28 = sext i32 %24 to i64, !dbg !364
  %29 = icmp ult i64 %28, %1, !dbg !366
  br i1 %29, label %32, label %30, !dbg !367

; <label>:30:                                     ; preds = %27, %3
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 0, !dbg !368
  store i32 139, i32* %31, align 8, !dbg !368, !tbaa !311
  br label %32, !dbg !370

; <label>:32:                                     ; preds = %30, %27
  %33 = phi i32 [ %24, %27 ], [ -1, %30 ], !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #3, !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #3, !dbg !370
  ret i32 %33, !dbg !370
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !8, line: 83, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "_swprintf_r", scope: !1, file: !1, line: 556, type: !15, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!15 = !DISubroutineType(types: !16)
!16 = !{!9, !17, !6, !233, !235, null}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !101, !102, !103, !104, !108, !109, !112, !113, !117, !129, !130, !131, !133, !134, !135, !197, !218, !219, !224, !231}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !9, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !28, !29, !30, !32, !33, !38, !39, !41, !50, !56, !61, !65, !66, !67, !68, !72, !76, !77, !78, !80, !81, !85, !100}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !19, line: 182, baseType: !4, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !19, line: 183, baseType: !9, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !19, line: 184, baseType: !9, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !19, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !19, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !19, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !19, line: 118, baseType: !4, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !19, line: 119, baseType: !9, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !19, line: 188, baseType: !9, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !19, line: 195, baseType: !40, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !19, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !17, !40, !48, !9}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!45, !17, !40, !54, !9}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !17, !40, !60, !9}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!9, !17, !40}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !34, size: 128, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !4, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !9, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !69, size: 24, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !73, size: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !34, size: 128, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !9, size: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !82, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !84, line: 12, baseType: !9)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !86, size: 64, offset: 1312)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !46, line: 165, baseType: !9, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !46, line: 170, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !46, line: 166, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !46, line: 168, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !8, line: 124, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !46, line: 169, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !9, size: 32, offset: 1376)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !9, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !105, size: 200, offset: 288)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 200, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 25)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !9, size: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !9, size: 32, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !17}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !119, file: !19, line: 49, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !119, file: !19, line: 50, baseType: !9, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !119, file: !19, line: 50, baseType: !9, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !119, file: !19, line: 50, baseType: !9, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !119, file: !19, line: 50, baseType: !9, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !119, file: !19, line: 51, baseType: !127, size: 32, offset: 192)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !74)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !95)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !9, size: 32, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !118, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !9, size: 32, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !48, size: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !136, size: 2880, offset: 1152)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !137)
!137 = !{!138, !188}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !136, file: !19, line: 622, baseType: !139, size: 1728)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !19, line: 601, size: 1728, elements: !140)
!140 = !{!141, !142, !143, !147, !159, !160, !162, !170, !171, !172, !173, !177, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !139, file: !19, line: 603, baseType: !95, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !139, file: !19, line: 604, baseType: !48, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !139, file: !19, line: 605, baseType: !144, size: 208, offset: 128)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 208, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 26)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !139, file: !19, line: 606, baseType: !148, size: 288, offset: 352)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !148, file: !19, line: 57, baseType: !9, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !148, file: !19, line: 58, baseType: !9, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !148, file: !19, line: 59, baseType: !9, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !148, file: !19, line: 60, baseType: !9, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !148, file: !19, line: 61, baseType: !9, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !148, file: !19, line: 62, baseType: !9, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !148, file: !19, line: 63, baseType: !9, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !148, file: !19, line: 64, baseType: !9, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !148, file: !19, line: 65, baseType: !9, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !139, file: !19, line: 607, baseType: !9, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !139, file: !19, line: 608, baseType: !161, size: 64, offset: 704)
!161 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !139, file: !19, line: 609, baseType: !163, size: 112, offset: 768)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !164)
!164 = !{!165, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !163, file: !19, line: 320, baseType: !166, size: 48)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !70)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !163, file: !19, line: 321, baseType: !166, size: 48, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !163, file: !19, line: 322, baseType: !167, size: 16, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !139, file: !19, line: 610, baseType: !86, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !139, file: !19, line: 611, baseType: !86, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !139, file: !19, line: 612, baseType: !86, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !139, file: !19, line: 613, baseType: !174, size: 64, offset: 1088)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !139, file: !19, line: 614, baseType: !178, size: 192, offset: 1152)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !139, file: !19, line: 615, baseType: !9, size: 32, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !139, file: !19, line: 616, baseType: !86, size: 64, offset: 1376)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !139, file: !19, line: 617, baseType: !86, size: 64, offset: 1440)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !139, file: !19, line: 618, baseType: !86, size: 64, offset: 1504)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !139, file: !19, line: 619, baseType: !86, size: 64, offset: 1568)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !139, file: !19, line: 620, baseType: !86, size: 64, offset: 1632)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !139, file: !19, line: 621, baseType: !9, size: 32, offset: 1696)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !136, file: !19, line: 631, baseType: !189, size: 2880)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !19, line: 626, size: 2880, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !189, file: !19, line: 629, baseType: !192, size: 1920)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 30)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !189, file: !19, line: 630, baseType: !196, size: 960, offset: 1920)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !193)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !198, size: 64, offset: 4032)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !200)
!200 = !{!201, !202, !203, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !199, file: !19, line: 94, baseType: !198, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !199, file: !19, line: 95, baseType: !9, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !199, file: !19, line: 97, baseType: !204, size: 2048, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !208)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !{!209}
!209 = !DISubrange(count: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !199, file: !19, line: 98, baseType: !211, size: 4160, offset: 2176)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !212)
!212 = !{!213, !215, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !211, file: !19, line: 75, baseType: !214, size: 2048)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !208)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !211, file: !19, line: 76, baseType: !214, size: 2048, offset: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !211, file: !19, line: 78, baseType: !128, size: 32, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !211, file: !19, line: 81, baseType: !128, size: 32, offset: 4128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !199, size: 6336, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !220, size: 64, offset: 10432)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !9}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !225, size: 192, offset: 10496)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !226)
!226 = !{!227, !229, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !225, file: !19, line: 293, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !225, file: !19, line: 294, baseType: !9, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !225, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !232, size: 4224, offset: 10688)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !70)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 58, baseType: !234)
!234 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!237 = !{!238, !239, !240, !241, !242, !243, !256}
!238 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 556, type: !17)
!239 = !DILocalVariable(name: "str", arg: 2, scope: !14, file: !1, line: 556, type: !6)
!240 = !DILocalVariable(name: "size", arg: 3, scope: !14, file: !1, line: 556, type: !233)
!241 = !DILocalVariable(name: "fmt", arg: 4, scope: !14, file: !1, line: 556, type: !235)
!242 = !DILocalVariable(name: "ret", scope: !14, file: !1, line: 562, type: !9)
!243 = !DILocalVariable(name: "ap", scope: !14, file: !1, line: 563, type: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !245, line: 46, baseType: !246)
!245 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !247, line: 51, baseType: !248)
!247 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 563, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !74)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 563, size: 192, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !250, file: !1, line: 563, baseType: !95, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !250, file: !1, line: 563, baseType: !95, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !250, file: !1, line: 563, baseType: !40, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !250, file: !1, line: 563, baseType: !40, size: 64, offset: 128)
!256 = !DILocalVariable(name: "f", scope: !14, file: !1, line: 564, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !245, line: 66, baseType: !24)
!258 = !DILocation(line: 556, column: 1, scope: !14)
!259 = !DILocation(line: 563, column: 3, scope: !14)
!260 = !DILocation(line: 563, column: 11, scope: !14)
!261 = !DILocation(line: 564, column: 3, scope: !14)
!262 = !DILocation(line: 566, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !14, file: !1, line: 566, column: 7)
!264 = !DILocation(line: 566, column: 7, scope: !14)
!265 = !DILocation(line: 571, column: 5, scope: !14)
!266 = !DILocation(line: 571, column: 12, scope: !14)
!267 = !{!268, !273, i64 16}
!268 = !{!"__sFILE", !269, i64 0, !272, i64 8, !272, i64 12, !273, i64 16, !273, i64 18, !274, i64 24, !272, i64 40, !269, i64 48, !269, i64 56, !269, i64 64, !269, i64 72, !269, i64 80, !274, i64 88, !269, i64 104, !272, i64 112, !270, i64 116, !270, i64 119, !274, i64 120, !272, i64 136, !275, i64 144, !269, i64 152, !272, i64 160, !276, i64 164, !272, i64 172}
!269 = !{!"any pointer", !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C/C++ TBAA"}
!272 = !{!"int", !270, i64 0}
!273 = !{!"short", !270, i64 0}
!274 = !{!"__sbuf", !269, i64 0, !272, i64 8}
!275 = !{!"long", !270, i64 0}
!276 = !{!"", !272, i64 0, !270, i64 4}
!277 = !DILocation(line: 572, column: 22, scope: !14)
!278 = !{!268, !269, i64 0}
!279 = !DILocation(line: 572, column: 5, scope: !14)
!280 = !DILocation(line: 572, column: 15, scope: !14)
!281 = !{!268, !269, i64 24}
!282 = !DILocation(line: 573, column: 30, scope: !14)
!283 = !DILocation(line: 573, column: 25, scope: !14)
!284 = !DILocation(line: 573, column: 19, scope: !14)
!285 = !DILocation(line: 573, column: 22, scope: !14)
!286 = !{!268, !272, i64 12}
!287 = !DILocation(line: 573, column: 9, scope: !14)
!288 = !DILocation(line: 573, column: 15, scope: !14)
!289 = !{!268, !272, i64 32}
!290 = !DILocation(line: 574, column: 5, scope: !14)
!291 = !DILocation(line: 574, column: 11, scope: !14)
!292 = !{!268, !273, i64 18}
!293 = !DILocation(line: 575, column: 3, scope: !14)
!294 = !DILocation(line: 564, column: 8, scope: !14)
!295 = !DILocation(line: 576, column: 9, scope: !14)
!296 = !DILocation(line: 562, column: 7, scope: !14)
!297 = !DILocation(line: 577, column: 3, scope: !14)
!298 = !DILocation(line: 581, column: 7, scope: !14)
!299 = !DILocation(line: 582, column: 19, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 581, column: 18)
!301 = distinct !DILexicalBlock(scope: !14, file: !1, line: 581, column: 7)
!302 = !DILocation(line: 582, column: 22, scope: !300)
!303 = !{!272, !272, i64 0}
!304 = !DILocation(line: 583, column: 3, scope: !300)
!305 = !DILocation(line: 584, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !14, file: !1, line: 584, column: 6)
!307 = !DILocation(line: 584, column: 10, scope: !306)
!308 = !DILocation(line: 584, column: 6, scope: !14)
!309 = !DILocation(line: 0, scope: !310)
!310 = distinct !DILexicalBlock(scope: !263, file: !1, line: 567, column: 5)
!311 = !{!312, !272, i64 0}
!312 = !{!"_reent", !272, i64 0, !269, i64 8, !269, i64 16, !269, i64 24, !272, i64 32, !270, i64 36, !272, i64 64, !269, i64 72, !272, i64 80, !269, i64 88, !269, i64 96, !272, i64 104, !269, i64 112, !269, i64 120, !272, i64 128, !269, i64 136, !270, i64 144, !269, i64 504, !313, i64 512, !269, i64 1304, !315, i64 1312, !270, i64 1336}
!313 = !{!"_atexit", !269, i64 0, !272, i64 8, !270, i64 16, !314, i64 272}
!314 = !{!"_on_exit_args", !270, i64 0, !270, i64 256, !272, i64 512, !272, i64 516}
!315 = !{!"_glue", !269, i64 0, !272, i64 8, !269, i64 16}
!316 = !DILocation(line: 592, column: 1, scope: !14)
!317 = !DILocation(line: 0, scope: !14)
!318 = distinct !DISubprogram(name: "swprintf", scope: !1, file: !1, line: 597, type: !319, isLocal: false, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !323)
!319 = !DISubroutineType(types: !320)
!320 = !{!9, !321, !233, !322, null}
!321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!322 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!323 = !{!324, !325, !326, !327, !328, !329, !330}
!324 = !DILocalVariable(name: "str", arg: 1, scope: !318, file: !1, line: 597, type: !321)
!325 = !DILocalVariable(name: "size", arg: 2, scope: !318, file: !1, line: 597, type: !233)
!326 = !DILocalVariable(name: "fmt", arg: 3, scope: !318, file: !1, line: 597, type: !322)
!327 = !DILocalVariable(name: "ret", scope: !318, file: !1, line: 602, type: !9)
!328 = !DILocalVariable(name: "ap", scope: !318, file: !1, line: 603, type: !244)
!329 = !DILocalVariable(name: "f", scope: !318, file: !1, line: 604, type: !257)
!330 = !DILocalVariable(name: "ptr", scope: !318, file: !1, line: 605, type: !17)
!331 = !DILocation(line: 597, column: 1, scope: !318)
!332 = !DILocation(line: 603, column: 3, scope: !318)
!333 = !DILocation(line: 603, column: 11, scope: !318)
!334 = !DILocation(line: 604, column: 3, scope: !318)
!335 = !DILocation(line: 605, column: 24, scope: !318)
!336 = !DILocation(line: 605, column: 18, scope: !318)
!337 = !DILocation(line: 607, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !318, file: !1, line: 607, column: 7)
!339 = !DILocation(line: 607, column: 7, scope: !318)
!340 = !DILocation(line: 612, column: 5, scope: !318)
!341 = !DILocation(line: 612, column: 12, scope: !318)
!342 = !DILocation(line: 613, column: 22, scope: !318)
!343 = !DILocation(line: 613, column: 5, scope: !318)
!344 = !DILocation(line: 613, column: 15, scope: !318)
!345 = !DILocation(line: 614, column: 30, scope: !318)
!346 = !DILocation(line: 614, column: 25, scope: !318)
!347 = !DILocation(line: 614, column: 19, scope: !318)
!348 = !DILocation(line: 614, column: 22, scope: !318)
!349 = !DILocation(line: 614, column: 9, scope: !318)
!350 = !DILocation(line: 614, column: 15, scope: !318)
!351 = !DILocation(line: 615, column: 5, scope: !318)
!352 = !DILocation(line: 615, column: 11, scope: !318)
!353 = !DILocation(line: 616, column: 3, scope: !318)
!354 = !DILocation(line: 604, column: 8, scope: !318)
!355 = !DILocation(line: 617, column: 9, scope: !318)
!356 = !DILocation(line: 602, column: 7, scope: !318)
!357 = !DILocation(line: 618, column: 3, scope: !318)
!358 = !DILocation(line: 622, column: 7, scope: !318)
!359 = !DILocation(line: 623, column: 19, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 622, column: 18)
!361 = distinct !DILexicalBlock(scope: !318, file: !1, line: 622, column: 7)
!362 = !DILocation(line: 623, column: 22, scope: !360)
!363 = !DILocation(line: 624, column: 3, scope: !360)
!364 = !DILocation(line: 625, column: 6, scope: !365)
!365 = distinct !DILexicalBlock(scope: !318, file: !1, line: 625, column: 6)
!366 = !DILocation(line: 625, column: 10, scope: !365)
!367 = !DILocation(line: 625, column: 6, scope: !318)
!368 = !DILocation(line: 0, scope: !369)
!369 = distinct !DILexicalBlock(scope: !338, file: !1, line: 608, column: 5)
!370 = !DILocation(line: 633, column: 1, scope: !318)
!371 = !DILocation(line: 0, scope: !318)
