; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets.c"
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

; Function Attrs: noredzone nounwind
define dso_local i8* @_fgets_r(%struct._reent*, i8* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !29 {
  %5 = alloca i32, align 4
  %6 = icmp slt i32 %2, 2, !dbg !271
  br i1 %6, label %70, label %7, !dbg !273

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct._reent* %0, null, !dbg !276
  br i1 %8, label %14, label %9, !dbg !276

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !276
  %11 = load i32, i32* %10, align 8, !dbg !276, !tbaa !278
  %12 = icmp eq i32 %11, 0, !dbg !276
  br i1 %12, label %13, label %14, !dbg !275

; <label>:13:                                     ; preds = %9
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !276
  br label %14, !dbg !276

; <label>:14:                                     ; preds = %9, %7, %13
  %15 = bitcast i32* %5 to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !287
  %16 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #4, !dbg !287
  %17 = add nsw i32 %2, -1, !dbg !288
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 0
  br label %20, !dbg !289

; <label>:20:                                     ; preds = %55, %14
  %21 = phi i8* [ %1, %14 ], [ %61, %55 ], !dbg !290
  %22 = phi i32 [ %17, %14 ], [ %62, %55 ], !dbg !292
  %23 = load i32, i32* %18, align 8, !dbg !293, !tbaa !295
  %24 = icmp eq i32 %23, 0, !dbg !301
  br i1 %24, label %25, label %35, !dbg !302

; <label>:25:                                     ; preds = %20
  %26 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #4, !dbg !303
  %27 = icmp eq i32 %26, 0, !dbg !303
  br i1 %27, label %33, label %28, !dbg !306

; <label>:28:                                     ; preds = %25
  %29 = icmp eq i8* %21, %1, !dbg !307
  br i1 %29, label %30, label %66, !dbg !310

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %5, align 4, !dbg !311, !tbaa !313
  %32 = call i32 @pthread_setcancelstate(i32 %31, i32* nonnull %5) #4, !dbg !311
  br label %64, !dbg !314

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %18, align 8, !dbg !315, !tbaa !295
  br label %35, !dbg !316

; <label>:35:                                     ; preds = %33, %20
  %36 = phi i32 [ %34, %33 ], [ %23, %20 ]
  %37 = load i8*, i8** %19, align 8, !dbg !317, !tbaa !318
  %38 = icmp ugt i32 %36, %22, !dbg !320
  %39 = select i1 %38, i32 %22, i32 %36, !dbg !322
  %40 = sext i32 %39 to i64, !dbg !323
  %41 = call i8* @memchr(i8* %37, i32 10, i64 %40) #4, !dbg !325
  %42 = icmp eq i8* %41, null, !dbg !327
  br i1 %42, label %55, label %43, !dbg !329

; <label>:43:                                     ; preds = %35
  %44 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !330
  %45 = ptrtoint i8* %44 to i64, !dbg !332
  %46 = ptrtoint i8* %37 to i64, !dbg !332
  %47 = sub i64 %45, %46, !dbg !332
  %48 = load i32, i32* %18, align 8, !dbg !333, !tbaa !295
  %49 = trunc i64 %47 to i32, !dbg !333
  %50 = sub i32 %48, %49, !dbg !333
  store i32 %50, i32* %18, align 8, !dbg !333, !tbaa !295
  store i8* %44, i8** %19, align 8, !dbg !334, !tbaa !318
  %51 = call i8* @memcpy(i8* %21, i8* %37, i64 %47) #4, !dbg !335
  %52 = getelementptr inbounds i8, i8* %21, i64 %47, !dbg !336
  store i8 0, i8* %52, align 1, !dbg !337, !tbaa !338
  %53 = load i32, i32* %5, align 4, !dbg !339, !tbaa !313
  %54 = call i32 @pthread_setcancelstate(i32 %53, i32* nonnull %5) #4, !dbg !339
  br label %64, !dbg !340

; <label>:55:                                     ; preds = %35
  %56 = load i32, i32* %18, align 8, !dbg !341, !tbaa !295
  %57 = sub i32 %56, %39, !dbg !341
  store i32 %57, i32* %18, align 8, !dbg !341, !tbaa !295
  %58 = load i8*, i8** %19, align 8, !dbg !342, !tbaa !318
  %59 = getelementptr inbounds i8, i8* %58, i64 %40, !dbg !342
  store i8* %59, i8** %19, align 8, !dbg !342, !tbaa !318
  %60 = call i8* @memcpy(i8* %21, i8* %37, i64 %40) #4, !dbg !343
  %61 = getelementptr inbounds i8, i8* %21, i64 %40, !dbg !344
  %62 = sub i32 %22, %39, !dbg !345
  %63 = icmp eq i32 %62, 0, !dbg !346
  br i1 %63, label %66, label %20, !dbg !347, !llvm.loop !348

; <label>:64:                                     ; preds = %30, %43
  %65 = phi i8* [ %1, %43 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !350
  br label %70

; <label>:66:                                     ; preds = %55, %28
  %67 = phi i8* [ %21, %28 ], [ %61, %55 ], !dbg !290
  store i8 0, i8* %67, align 1, !dbg !351, !tbaa !338
  %68 = load i32, i32* %5, align 4, !dbg !352, !tbaa !313
  %69 = call i32 @pthread_setcancelstate(i32 %68, i32* nonnull %5) #4, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !350
  br label %70

; <label>:70:                                     ; preds = %4, %64, %66
  %71 = phi i8* [ %1, %66 ], [ %65, %64 ], [ null, %4 ]
  ret i8* %71
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
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @fgets(i8* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !353 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !361
  %5 = tail call i8* @_fgets_r(%struct._reent* %4, i8* %0, i32 %1, %struct.__sFILE* %2) #6, !dbg !362
  ret i8* %5, !dbg !363
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
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !24}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "_fgets_r", scope: !1, file: !1, line: 125, type: !30, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !34, !248, !5, !249}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !36, line: 569, size: 14912, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !35, file: !36, line: 571, baseType: !5, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !36, line: 287, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 181, size: 1408, elements: !43)
!43 = !{!44, !45, !46, !47, !49, !50, !55, !56, !57, !64, !70, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !42, file: !36, line: 182, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !42, file: !36, line: 183, baseType: !5, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !42, file: !36, line: 184, baseType: !5, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !36, line: 185, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !42, file: !36, line: 186, baseType: !48, size: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !42, file: !36, line: 187, baseType: !51, size: 128, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !36, line: 117, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !36, line: 118, baseType: !22, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !36, line: 119, baseType: !5, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !42, file: !36, line: 188, baseType: !5, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !42, file: !36, line: 195, baseType: !24, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !42, file: !36, line: 197, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !34, !24, !32, !5}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !62, line: 145, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !36, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!61, !34, !24, !68, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !36, line: 202, baseType: !71, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !34, !24, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !62, line: 114, baseType: !63)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !36, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !34, !24}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !36, line: 206, baseType: !51, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !42, file: !36, line: 207, baseType: !22, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !36, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !36, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !36, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !36, line: 215, baseType: !51, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !36, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !36, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !62, line: 44, baseType: !63)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !42, file: !36, line: 222, baseType: !34, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !36, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !62, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !42, file: !36, line: 228, baseType: !100, size: 64, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !62, line: 171, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 163, size: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !101, file: !62, line: 165, baseType: !5, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !101, file: !62, line: 170, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !62, line: 166, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !105, file: !62, line: 168, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !109, line: 124, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !105, file: !62, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !36, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !35, file: !36, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !35, file: !36, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !35, file: !36, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !35, file: !36, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !36, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !35, file: !36, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !35, file: !36, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !34}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !35, file: !36, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !36, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !36, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !36, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !36, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !36, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !36, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !36, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !36, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !35, file: !36, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !35, file: !36, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !35, file: !36, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !35, file: !36, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !35, file: !36, line: 597, baseType: !32, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !35, file: !36, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !36, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !36, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !36, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !36, line: 604, baseType: !32, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !36, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !36, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !36, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !36, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !36, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !36, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !36, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !36, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !36, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !36, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !36, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !36, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !36, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !36, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !36, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !36, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !36, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !36, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !36, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !36, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !36, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !36, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !36, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !36, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !36, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !36, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !36, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !36, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !36, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !36, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !36, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !36, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !36, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !36, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !36, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !35, file: !36, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !36, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !36, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !36, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !36, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !36, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !36, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !36, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !36, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !36, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !36, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !35, file: !36, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !35, file: !36, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !35, file: !36, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !36, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !36, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !36, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !36, line: 295, baseType: !40, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !35, file: !36, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !252, line: 66, baseType: !41)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !{!254, !255, !256, !257, !258, !263, !264, !265, !266, !268}
!254 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !1, line: 125, type: !34)
!255 = !DILocalVariable(name: "buf", arg: 2, scope: !29, file: !1, line: 125, type: !248)
!256 = !DILocalVariable(name: "n", arg: 3, scope: !29, file: !1, line: 125, type: !5)
!257 = !DILocalVariable(name: "fp", arg: 4, scope: !29, file: !1, line: 125, type: !249)
!258 = !DILocalVariable(name: "len", scope: !29, file: !1, line: 131, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !260, line: 40, baseType: !261)
!260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !62, line: 129, baseType: !262)
!262 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!263 = !DILocalVariable(name: "s", scope: !29, file: !1, line: 132, type: !32)
!264 = !DILocalVariable(name: "p", scope: !29, file: !1, line: 133, type: !22)
!265 = !DILocalVariable(name: "t", scope: !29, file: !1, line: 133, type: !22)
!266 = !DILocalVariable(name: "_check_init_ptr", scope: !267, file: !1, line: 140, type: !34)
!267 = distinct !DILexicalBlock(scope: !29, file: !1, line: 140, column: 3)
!268 = !DILocalVariable(name: "__oldfpcancel", scope: !269, file: !1, line: 142, type: !5)
!269 = distinct !DILexicalBlock(scope: !29, file: !1, line: 142, column: 3)
!270 = !DILocation(line: 125, column: 1, scope: !29)
!271 = !DILocation(line: 135, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !29, file: !1, line: 135, column: 7)
!273 = !DILocation(line: 135, column: 7, scope: !29)
!274 = !DILocation(line: 132, column: 9, scope: !29)
!275 = !DILocation(line: 140, column: 3, scope: !267)
!276 = !DILocation(line: 140, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !1, line: 140, column: 3)
!278 = !{!279, !280, i64 80}
!279 = !{!"_reent", !280, i64 0, !283, i64 8, !283, i64 16, !283, i64 24, !280, i64 32, !281, i64 36, !280, i64 64, !283, i64 72, !280, i64 80, !283, i64 88, !283, i64 96, !280, i64 104, !283, i64 112, !283, i64 120, !280, i64 128, !283, i64 136, !281, i64 144, !283, i64 504, !284, i64 512, !283, i64 1304, !286, i64 1312, !281, i64 1336}
!280 = !{!"int", !281, i64 0}
!281 = !{!"omnipotent char", !282, i64 0}
!282 = !{!"Simple C/C++ TBAA"}
!283 = !{!"any pointer", !281, i64 0}
!284 = !{!"_atexit", !283, i64 0, !280, i64 8, !281, i64 16, !285, i64 272}
!285 = !{!"_on_exit_args", !281, i64 0, !281, i64 256, !280, i64 512, !280, i64 516}
!286 = !{!"_glue", !283, i64 0, !280, i64 8, !283, i64 16}
!287 = !DILocation(line: 142, column: 3, scope: !269)
!288 = !DILocation(line: 165, column: 4, scope: !269)
!289 = !DILocation(line: 166, column: 3, scope: !269)
!290 = !DILocation(line: 0, scope: !291)
!291 = distinct !DILexicalBlock(scope: !269, file: !1, line: 167, column: 5)
!292 = !DILocation(line: 0, scope: !269)
!293 = !DILocation(line: 171, column: 22, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 171, column: 11)
!295 = !{!296, !280, i64 8}
!296 = !{!"__sFILE", !283, i64 0, !280, i64 8, !280, i64 12, !297, i64 16, !297, i64 18, !298, i64 24, !280, i64 40, !283, i64 48, !283, i64 56, !283, i64 64, !283, i64 72, !283, i64 80, !298, i64 88, !283, i64 104, !280, i64 112, !281, i64 116, !281, i64 119, !298, i64 120, !280, i64 136, !299, i64 144, !283, i64 152, !280, i64 160, !300, i64 164, !280, i64 172}
!297 = !{!"short", !281, i64 0}
!298 = !{!"__sbuf", !283, i64 0, !280, i64 8}
!299 = !{!"long", !281, i64 0}
!300 = !{!"", !280, i64 0, !281, i64 4}
!301 = !DILocation(line: 171, column: 26, scope: !294)
!302 = !DILocation(line: 171, column: 11, scope: !291)
!303 = !DILocation(line: 173, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 173, column: 8)
!305 = distinct !DILexicalBlock(scope: !294, file: !1, line: 172, column: 2)
!306 = !DILocation(line: 173, column: 8, scope: !305)
!307 = !DILocation(line: 176, column: 14, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 176, column: 12)
!309 = distinct !DILexicalBlock(scope: !304, file: !1, line: 174, column: 6)
!310 = !DILocation(line: 176, column: 12, scope: !309)
!311 = !DILocation(line: 178, column: 19, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 177, column: 17)
!313 = !{!280, !280, i64 0}
!314 = !DILocation(line: 179, column: 19, scope: !312)
!315 = !DILocation(line: 183, column: 14, scope: !305)
!316 = !DILocation(line: 184, column: 2, scope: !305)
!317 = !DILocation(line: 185, column: 15, scope: !291)
!318 = !{!296, !283, i64 0}
!319 = !DILocation(line: 133, column: 18, scope: !29)
!320 = !DILocation(line: 193, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !291, file: !1, line: 193, column: 11)
!322 = !DILocation(line: 193, column: 11, scope: !291)
!323 = !DILocation(line: 0, scope: !305)
!324 = !DILocation(line: 131, column: 10, scope: !29)
!325 = !DILocation(line: 195, column: 29, scope: !291)
!326 = !DILocation(line: 133, column: 22, scope: !29)
!327 = !DILocation(line: 196, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !291, file: !1, line: 196, column: 11)
!329 = !DILocation(line: 196, column: 11, scope: !291)
!330 = !DILocation(line: 198, column: 10, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 197, column: 2)
!332 = !DILocation(line: 198, column: 14, scope: !331)
!333 = !DILocation(line: 199, column: 11, scope: !331)
!334 = !DILocation(line: 200, column: 11, scope: !331)
!335 = !DILocation(line: 201, column: 15, scope: !331)
!336 = !DILocation(line: 202, column: 4, scope: !331)
!337 = !DILocation(line: 202, column: 11, scope: !331)
!338 = !{!281, !281, i64 0}
!339 = !DILocation(line: 203, column: 11, scope: !331)
!340 = !DILocation(line: 204, column: 4, scope: !331)
!341 = !DILocation(line: 206, column: 14, scope: !291)
!342 = !DILocation(line: 207, column: 14, scope: !291)
!343 = !DILocation(line: 208, column: 18, scope: !291)
!344 = !DILocation(line: 209, column: 9, scope: !291)
!345 = !DILocation(line: 211, column: 13, scope: !269)
!346 = !DILocation(line: 211, column: 21, scope: !269)
!347 = !DILocation(line: 210, column: 5, scope: !291)
!348 = distinct !{!348, !289, !349}
!349 = !DILocation(line: 211, column: 25, scope: !269)
!350 = !DILocation(line: 213, column: 3, scope: !29)
!351 = !DILocation(line: 212, column: 6, scope: !269)
!352 = !DILocation(line: 213, column: 3, scope: !269)
!353 = distinct !DISubprogram(name: "fgets", scope: !1, file: !1, line: 220, type: !354, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!32, !248, !5, !249}
!356 = !{!357, !358, !359}
!357 = !DILocalVariable(name: "buf", arg: 1, scope: !353, file: !1, line: 220, type: !248)
!358 = !DILocalVariable(name: "n", arg: 2, scope: !353, file: !1, line: 220, type: !5)
!359 = !DILocalVariable(name: "fp", arg: 3, scope: !353, file: !1, line: 220, type: !249)
!360 = !DILocation(line: 220, column: 1, scope: !353)
!361 = !DILocation(line: 225, column: 20, scope: !353)
!362 = !DILocation(line: 225, column: 10, scope: !353)
!363 = !DILocation(line: 225, column: 3, scope: !353)
