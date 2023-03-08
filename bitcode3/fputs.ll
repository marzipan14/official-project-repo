; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs.c"
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
define dso_local i32 @_fputs_r(%struct._reent*, i8* noalias nocapture readonly, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !28 {
  %4 = alloca i32, align 4
  %5 = icmp eq %struct._reent* %0, null, !dbg !265
  br i1 %5, label %11, label %6, !dbg !265

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !265
  %8 = load i32, i32* %7, align 8, !dbg !265, !tbaa !267
  %9 = icmp eq i32 %8, 0, !dbg !265
  br i1 %9, label %10, label %11, !dbg !264

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !265
  br label %11, !dbg !265

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = bitcast i32* %4 to i8*, !dbg !276
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !276
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #4, !dbg !276
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !277
  %15 = load i16, i16* %14, align 8, !dbg !277, !tbaa !279
  %16 = and i16 %15, 8, !dbg !277
  %17 = icmp eq i16 %16, 0, !dbg !277
  br i1 %17, label %22, label %18, !dbg !277

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !277
  %20 = load i8*, i8** %19, align 8, !dbg !277, !tbaa !285
  %21 = icmp eq i8* %20, null, !dbg !277
  br i1 %21, label %22, label %25, !dbg !277

; <label>:22:                                     ; preds = %18, %11
  %23 = call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #4, !dbg !277
  %24 = icmp eq i32 %23, 0, !dbg !277
  br i1 %24, label %25, label %59, !dbg !286

; <label>:25:                                     ; preds = %22, %18
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %29, !dbg !287

; <label>:29:                                     ; preds = %53, %25
  %30 = phi i8* [ %1, %25 ], [ %34, %53 ], !dbg !288
  %31 = load i8, i8* %30, align 1, !dbg !291, !tbaa !292
  %32 = icmp eq i8 %31, 0, !dbg !287
  br i1 %32, label %56, label %33, !dbg !287

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !293
  %35 = sext i8 %31 to i32, !dbg !294
  %36 = load i32, i32* %26, align 4, !dbg !306, !tbaa !308
  %37 = add nsw i32 %36, -1, !dbg !306
  store i32 %37, i32* %26, align 4, !dbg !306, !tbaa !308
  %38 = icmp sgt i32 %36, 0, !dbg !309
  br i1 %38, label %39, label %41, !dbg !310

; <label>:39:                                     ; preds = %33
  %40 = and i32 %35, 255, !dbg !311
  br label %47, !dbg !310

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %28, align 8, !dbg !312, !tbaa !313
  %43 = icmp sle i32 %36, %42, !dbg !314
  %44 = and i32 %35, 255, !dbg !315
  %45 = icmp eq i32 %44, 10, !dbg !315
  %46 = or i1 %45, %43, !dbg !316
  br i1 %46, label %51, label %47, !dbg !316

; <label>:47:                                     ; preds = %41, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %41 ], !dbg !311
  %49 = load i8*, i8** %27, align 8, !dbg !317, !tbaa !318
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !317
  store i8* %50, i8** %27, align 8, !dbg !317, !tbaa !318
  store i8 %31, i8* %49, align 1, !dbg !319, !tbaa !292
  br label %53, !dbg !320

; <label>:51:                                     ; preds = %41
  %52 = call i32 @__swbuf_r(%struct._reent* %0, i32 %35, %struct.__sFILE* nonnull %2) #4, !dbg !321
  br label %53, !dbg !322

; <label>:53:                                     ; preds = %47, %51
  %54 = phi i32 [ %48, %47 ], [ %52, %51 ], !dbg !323
  %55 = icmp eq i32 %54, -1, !dbg !324
  br i1 %55, label %59, label %29, !dbg !325, !llvm.loop !326

; <label>:56:                                     ; preds = %29
  %57 = load i32, i32* %4, align 4, !dbg !328, !tbaa !329
  %58 = call i32 @pthread_setcancelstate(i32 %57, i32* nonnull %4) #4, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !330
  br label %62

; <label>:59:                                     ; preds = %53, %22
  %60 = load i32, i32* %4, align 4, !dbg !331, !tbaa !329
  %61 = call i32 @pthread_setcancelstate(i32 %60, i32* nonnull %4) #4, !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !330
  br label %62

; <label>:62:                                     ; preds = %56, %59
  %63 = phi i32 [ -1, %59 ], [ 0, %56 ]
  ret i32 %63, !dbg !332
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
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fputs(i8* noalias nocapture readonly, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !333 {
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !340
  %4 = tail call i32 @_fputs_r(%struct._reent* %3, i8* %0, %struct.__sFILE* %1) #6, !dbg !341
  ret i32 %4, !dbg !342
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!28 = distinct !DISubprogram(name: "_fputs_r", scope: !1, file: !1, line: 113, type: !29, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!29 = !DISubroutineType(types: !30)
!30 = !{!5, !31, !248, !249}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !33, line: 569, size: 14912, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !32, file: !33, line: 571, baseType: !5, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !32, file: !33, line: 576, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !33, line: 287, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !33, line: 181, size: 1408, elements: !40)
!40 = !{!41, !44, !45, !46, !48, !49, !54, !55, !56, !64, !70, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !39, file: !33, line: 182, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !39, file: !33, line: 183, baseType: !5, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !39, file: !33, line: 184, baseType: !5, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !33, line: 185, baseType: !47, size: 16, offset: 128)
!47 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !39, file: !33, line: 186, baseType: !47, size: 16, offset: 144)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !39, file: !33, line: 187, baseType: !50, size: 128, offset: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !33, line: 117, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !50, file: !33, line: 118, baseType: !42, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !50, file: !33, line: 119, baseType: !5, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !39, file: !33, line: 188, baseType: !5, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !39, file: !33, line: 195, baseType: !22, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !39, file: !33, line: 197, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !31, !22, !63, !5}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !61, line: 145, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !39, file: !33, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!60, !31, !22, !68, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !39, file: !33, line: 202, baseType: !71, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !31, !22, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !61, line: 114, baseType: !62)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !39, file: !33, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !31, !22}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !39, file: !33, line: 206, baseType: !50, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !39, file: !33, line: 207, baseType: !42, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !39, file: !33, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !39, file: !33, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !39, file: !33, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !39, file: !33, line: 215, baseType: !50, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !39, file: !33, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !33, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !61, line: 44, baseType: !62)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !39, file: !33, line: 222, baseType: !31, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !39, file: !33, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !61, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !39, file: !33, line: 228, baseType: !100, size: 64, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !61, line: 171, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 163, size: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !101, file: !61, line: 165, baseType: !5, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !101, file: !61, line: 170, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !61, line: 166, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !105, file: !61, line: 168, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !109, line: 124, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !105, file: !61, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !39, file: !33, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !32, file: !33, line: 576, baseType: !37, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !32, file: !33, line: 576, baseType: !37, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !32, file: !33, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !32, file: !33, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !32, file: !33, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !32, file: !33, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !33, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !32, file: !33, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !32, file: !33, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !31}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !32, file: !33, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !33, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !33, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !33, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !33, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !33, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !33, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !33, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !33, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !32, file: !33, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !32, file: !33, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !32, file: !33, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !32, file: !33, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !32, file: !33, line: 597, baseType: !63, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !32, file: !33, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !33, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !33, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !33, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !33, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !33, line: 604, baseType: !63, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !33, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !33, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !33, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !33, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !33, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !33, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !33, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !33, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !33, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !33, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !33, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !33, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !33, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !33, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !33, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !33, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !33, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !33, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !33, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !33, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !33, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !33, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !33, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !33, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !33, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !33, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !33, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !33, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !33, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !33, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !33, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !33, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !33, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !33, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !33, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !32, file: !33, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !33, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !33, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !33, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !33, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !33, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !33, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !33, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !33, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !33, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !33, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !32, file: !33, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !32, file: !33, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !32, file: !33, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !33, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !33, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !33, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !33, line: 295, baseType: !37, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !32, file: !33, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !252, line: 66, baseType: !38)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !{!254, !255, !256, !257, !258, !260}
!254 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 113, type: !31)
!255 = !DILocalVariable(name: "s", arg: 2, scope: !28, file: !1, line: 113, type: !248)
!256 = !DILocalVariable(name: "fp", arg: 3, scope: !28, file: !1, line: 113, type: !249)
!257 = !DILocalVariable(name: "p", scope: !28, file: !1, line: 136, type: !68)
!258 = !DILocalVariable(name: "_check_init_ptr", scope: !259, file: !1, line: 138, type: !31)
!259 = distinct !DILexicalBlock(scope: !28, file: !1, line: 138, column: 3)
!260 = !DILocalVariable(name: "__oldfpcancel", scope: !261, file: !1, line: 140, type: !5)
!261 = distinct !DILexicalBlock(scope: !28, file: !1, line: 140, column: 3)
!262 = !DILocation(line: 113, column: 1, scope: !28)
!263 = !DILocation(line: 136, column: 16, scope: !28)
!264 = !DILocation(line: 138, column: 3, scope: !259)
!265 = !DILocation(line: 138, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !1, line: 138, column: 3)
!267 = !{!268, !269, i64 80}
!268 = !{!"_reent", !269, i64 0, !272, i64 8, !272, i64 16, !272, i64 24, !269, i64 32, !270, i64 36, !269, i64 64, !272, i64 72, !269, i64 80, !272, i64 88, !272, i64 96, !269, i64 104, !272, i64 112, !272, i64 120, !269, i64 128, !272, i64 136, !270, i64 144, !272, i64 504, !273, i64 512, !272, i64 1304, !275, i64 1312, !270, i64 1336}
!269 = !{!"int", !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C/C++ TBAA"}
!272 = !{!"any pointer", !270, i64 0}
!273 = !{!"_atexit", !272, i64 0, !269, i64 8, !270, i64 16, !274, i64 272}
!274 = !{!"_on_exit_args", !270, i64 0, !270, i64 256, !269, i64 512, !269, i64 516}
!275 = !{!"_glue", !272, i64 0, !269, i64 8, !272, i64 16}
!276 = !DILocation(line: 140, column: 3, scope: !261)
!277 = !DILocation(line: 143, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !261, file: !1, line: 143, column: 7)
!279 = !{!280, !281, i64 16}
!280 = !{!"__sFILE", !272, i64 0, !269, i64 8, !269, i64 12, !281, i64 16, !281, i64 18, !282, i64 24, !269, i64 40, !272, i64 48, !272, i64 56, !272, i64 64, !272, i64 72, !272, i64 80, !282, i64 88, !272, i64 104, !269, i64 112, !270, i64 116, !270, i64 119, !282, i64 120, !269, i64 136, !283, i64 144, !272, i64 152, !269, i64 160, !284, i64 164, !269, i64 172}
!281 = !{!"short", !270, i64 0}
!282 = !{!"__sbuf", !272, i64 0, !269, i64 8}
!283 = !{!"long", !270, i64 0}
!284 = !{!"", !269, i64 0, !270, i64 4}
!285 = !{!280, !272, i64 24}
!286 = !DILocation(line: 143, column: 7, scope: !261)
!287 = !DILocation(line: 146, column: 3, scope: !261)
!288 = !DILocation(line: 0, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 148, column: 11)
!290 = distinct !DILexicalBlock(scope: !261, file: !1, line: 147, column: 5)
!291 = !DILocation(line: 146, column: 10, scope: !261)
!292 = !{!270, !270, i64 0}
!293 = !DILocation(line: 148, column: 29, scope: !289)
!294 = !DILocation(line: 148, column: 27, scope: !289)
!295 = !DILocalVariable(name: "_ptr", arg: 1, scope: !296, file: !252, line: 687, type: !31)
!296 = distinct !DISubprogram(name: "__sputc_r", scope: !252, file: !252, line: 687, type: !297, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!5, !31, !5, !250}
!299 = !{!295, !300, !301}
!300 = !DILocalVariable(name: "_c", arg: 2, scope: !296, file: !252, line: 687, type: !5)
!301 = !DILocalVariable(name: "_p", arg: 3, scope: !296, file: !252, line: 687, type: !250)
!302 = !DILocation(line: 687, column: 47, scope: !296, inlinedAt: !303)
!303 = distinct !DILocation(line: 148, column: 11, scope: !289)
!304 = !DILocation(line: 687, column: 57, scope: !296, inlinedAt: !303)
!305 = !DILocation(line: 687, column: 67, scope: !296, inlinedAt: !303)
!306 = !DILocation(line: 692, column: 6, scope: !307, inlinedAt: !303)
!307 = distinct !DILexicalBlock(scope: !296, file: !252, line: 692, column: 6)
!308 = !{!280, !269, i64 12}
!309 = !DILocation(line: 692, column: 15, scope: !307, inlinedAt: !303)
!310 = !DILocation(line: 692, column: 20, scope: !307, inlinedAt: !303)
!311 = !DILocation(line: 693, column: 10, scope: !307, inlinedAt: !303)
!312 = !DILocation(line: 692, column: 38, scope: !307, inlinedAt: !303)
!313 = !{!280, !269, i64 40}
!314 = !DILocation(line: 692, column: 31, scope: !307, inlinedAt: !303)
!315 = !DILocation(line: 692, column: 59, scope: !307, inlinedAt: !303)
!316 = !DILocation(line: 692, column: 47, scope: !307, inlinedAt: !303)
!317 = !DILocation(line: 693, column: 18, scope: !307, inlinedAt: !303)
!318 = !{!280, !272, i64 0}
!319 = !DILocation(line: 693, column: 21, scope: !307, inlinedAt: !303)
!320 = !DILocation(line: 693, column: 3, scope: !307, inlinedAt: !303)
!321 = !DILocation(line: 695, column: 11, scope: !307, inlinedAt: !303)
!322 = !DILocation(line: 695, column: 3, scope: !307, inlinedAt: !303)
!323 = !DILocation(line: 0, scope: !307, inlinedAt: !303)
!324 = !DILocation(line: 148, column: 37, scope: !289)
!325 = !DILocation(line: 148, column: 11, scope: !290)
!326 = distinct !{!326, !287, !327}
!327 = !DILocation(line: 150, column: 5, scope: !261)
!328 = !DILocation(line: 151, column: 3, scope: !261)
!329 = !{!269, !269, i64 0}
!330 = !DILocation(line: 155, column: 3, scope: !28)
!331 = !DILocation(line: 155, column: 3, scope: !261)
!332 = !DILocation(line: 158, column: 1, scope: !28)
!333 = distinct !DISubprogram(name: "fputs", scope: !1, file: !1, line: 162, type: !334, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!5, !248, !249}
!336 = !{!337, !338}
!337 = !DILocalVariable(name: "s", arg: 1, scope: !333, file: !1, line: 162, type: !248)
!338 = !DILocalVariable(name: "fp", arg: 2, scope: !333, file: !1, line: 162, type: !249)
!339 = !DILocation(line: 162, column: 1, scope: !333)
!340 = !DILocation(line: 166, column: 20, scope: !333)
!341 = !DILocation(line: 166, column: 10, scope: !333)
!342 = !DILocation(line: 166, column: 3, scope: !333)
