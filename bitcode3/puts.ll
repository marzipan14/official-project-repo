; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/puts.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/puts.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @_puts_r(%struct._reent*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 2, !dbg !264
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8, !dbg !264, !tbaa !265
  %6 = icmp eq %struct._reent* %0, null, !dbg !276
  br i1 %6, label %12, label %7, !dbg !276

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !276
  %9 = load i32, i32* %8, align 8, !dbg !276, !tbaa !278
  %10 = icmp eq i32 %9, 0, !dbg !276
  br i1 %10, label %11, label %12, !dbg !275

; <label>:11:                                     ; preds = %7
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !276
  br label %12, !dbg !276

; <label>:12:                                     ; preds = %7, %2, %11
  %13 = bitcast i32* %3 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !279
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !279
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !280
  %16 = load i16, i16* %15, align 8, !dbg !280, !tbaa !282
  %17 = and i16 %16, 8, !dbg !280
  %18 = icmp eq i16 %17, 0, !dbg !280
  br i1 %18, label %23, label %19, !dbg !280

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !280
  %21 = load i8*, i8** %20, align 8, !dbg !280, !tbaa !288
  %22 = icmp eq i8* %21, null, !dbg !280
  br i1 %22, label %23, label %26, !dbg !280

; <label>:23:                                     ; preds = %19, %12
  %24 = call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %5) #4, !dbg !280
  %25 = icmp eq i32 %24, 0, !dbg !280
  br i1 %25, label %26, label %68, !dbg !289

; <label>:26:                                     ; preds = %23, %19
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 6
  br label %30, !dbg !290

; <label>:30:                                     ; preds = %54, %26
  %31 = phi i8* [ %1, %26 ], [ %35, %54 ], !dbg !291
  %32 = load i8, i8* %31, align 1, !dbg !294, !tbaa !295
  %33 = icmp eq i8 %32, 0, !dbg !290
  br i1 %33, label %57, label %34, !dbg !290

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !296
  %36 = sext i8 %32 to i32, !dbg !297
  %37 = load i32, i32* %27, align 4, !dbg !309, !tbaa !311
  %38 = add nsw i32 %37, -1, !dbg !309
  store i32 %38, i32* %27, align 4, !dbg !309, !tbaa !311
  %39 = icmp sgt i32 %37, 0, !dbg !312
  br i1 %39, label %40, label %42, !dbg !313

; <label>:40:                                     ; preds = %34
  %41 = and i32 %36, 255, !dbg !314
  br label %48, !dbg !313

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %29, align 8, !dbg !315, !tbaa !316
  %44 = icmp sle i32 %37, %43, !dbg !317
  %45 = and i32 %36, 255, !dbg !318
  %46 = icmp eq i32 %45, 10, !dbg !318
  %47 = or i1 %46, %44, !dbg !319
  br i1 %47, label %52, label %48, !dbg !319

; <label>:48:                                     ; preds = %42, %40
  %49 = phi i32 [ %41, %40 ], [ %45, %42 ], !dbg !314
  %50 = load i8*, i8** %28, align 8, !dbg !320, !tbaa !321
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !320
  store i8* %51, i8** %28, align 8, !dbg !320, !tbaa !321
  store i8 %32, i8* %50, align 1, !dbg !322, !tbaa !295
  br label %54, !dbg !323

; <label>:52:                                     ; preds = %42
  %53 = call i32 @__swbuf_r(%struct._reent* %0, i32 %36, %struct.__sFILE* nonnull %5) #4, !dbg !324
  br label %54, !dbg !325

; <label>:54:                                     ; preds = %48, %52
  %55 = phi i32 [ %49, %48 ], [ %53, %52 ], !dbg !326
  %56 = icmp eq i32 %55, -1, !dbg !327
  br i1 %56, label %68, label %30, !dbg !328, !llvm.loop !329

; <label>:57:                                     ; preds = %30
  %58 = load i32, i32* %27, align 4, !dbg !336, !tbaa !311
  %59 = add nsw i32 %58, -1, !dbg !336
  store i32 %59, i32* %27, align 4, !dbg !336, !tbaa !311
  %60 = icmp sgt i32 %58, 0, !dbg !337
  br i1 %60, label %61, label %64, !dbg !338

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %28, align 8, !dbg !339, !tbaa !321
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !339
  store i8* %63, i8** %28, align 8, !dbg !339, !tbaa !321
  store i8 10, i8* %62, align 1, !dbg !340, !tbaa !295
  br label %68, !dbg !341

; <label>:64:                                     ; preds = %57
  %65 = call i32 @__swbuf_r(%struct._reent* %0, i32 10, %struct.__sFILE* nonnull %5) #4, !dbg !342
  %66 = icmp eq i32 %65, -1, !dbg !343
  %67 = select i1 %66, i32 -1, i32 10, !dbg !341
  br label %68, !dbg !341

; <label>:68:                                     ; preds = %54, %64, %61, %23
  %69 = phi i32 [ -1, %23 ], [ 10, %61 ], [ %67, %64 ], [ -1, %54 ], !dbg !344
  %70 = load i32, i32* %3, align 4, !dbg !345, !tbaa !346
  %71 = call i32 @pthread_setcancelstate(i32 %70, i32* nonnull %3) #4, !dbg !345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !347
  ret i32 %69, !dbg !348
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
define dso_local i32 @puts(i8* nocapture readonly) local_unnamed_addr #0 !dbg !349 {
  %2 = tail call %struct._reent* @__getreent() #4, !dbg !355
  %3 = tail call i32 @_puts_r(%struct._reent* %2, i8* %0) #6, !dbg !356
  ret i32 %3, !dbg !357
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/puts.c", directory: "/root/.unikraft/apps/redis/build")
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
!28 = distinct !DISubprogram(name: "_puts_r", scope: !1, file: !1, line: 77, type: !29, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!29 = !DISubroutineType(types: !30)
!30 = !{!5, !31, !68}
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
!248 = !{!249, !250, !251, !252, !253, !257, !259}
!249 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 77, type: !31)
!250 = !DILocalVariable(name: "s", arg: 2, scope: !28, file: !1, line: 77, type: !68)
!251 = !DILocalVariable(name: "result", scope: !28, file: !1, line: 105, type: !5)
!252 = !DILocalVariable(name: "p", scope: !28, file: !1, line: 106, type: !68)
!253 = !DILocalVariable(name: "fp", scope: !28, file: !1, line: 107, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !256, line: 66, baseType: !38)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !DILocalVariable(name: "_check_init_ptr", scope: !258, file: !1, line: 111, type: !31)
!258 = distinct !DILexicalBlock(scope: !28, file: !1, line: 111, column: 3)
!259 = !DILocalVariable(name: "__oldfpcancel", scope: !260, file: !1, line: 112, type: !5)
!260 = distinct !DILexicalBlock(scope: !28, file: !1, line: 112, column: 3)
!261 = !DILocation(line: 77, column: 1, scope: !28)
!262 = !DILocation(line: 105, column: 7, scope: !28)
!263 = !DILocation(line: 106, column: 15, scope: !28)
!264 = !DILocation(line: 110, column: 8, scope: !28)
!265 = !{!266, !270, i64 16}
!266 = !{!"_reent", !267, i64 0, !270, i64 8, !270, i64 16, !270, i64 24, !267, i64 32, !268, i64 36, !267, i64 64, !270, i64 72, !267, i64 80, !270, i64 88, !270, i64 96, !267, i64 104, !270, i64 112, !270, i64 120, !267, i64 128, !270, i64 136, !268, i64 144, !270, i64 504, !271, i64 512, !270, i64 1304, !273, i64 1312, !268, i64 1336}
!267 = !{!"int", !268, i64 0}
!268 = !{!"omnipotent char", !269, i64 0}
!269 = !{!"Simple C/C++ TBAA"}
!270 = !{!"any pointer", !268, i64 0}
!271 = !{!"_atexit", !270, i64 0, !267, i64 8, !268, i64 16, !272, i64 272}
!272 = !{!"_on_exit_args", !268, i64 0, !268, i64 256, !267, i64 512, !267, i64 516}
!273 = !{!"_glue", !270, i64 0, !267, i64 8, !270, i64 16}
!274 = !DILocation(line: 107, column: 9, scope: !28)
!275 = !DILocation(line: 111, column: 3, scope: !258)
!276 = !DILocation(line: 111, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !258, file: !1, line: 111, column: 3)
!278 = !{!266, !267, i64 80}
!279 = !DILocation(line: 112, column: 3, scope: !260)
!280 = !DILocation(line: 115, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !260, file: !1, line: 115, column: 7)
!282 = !{!283, !284, i64 16}
!283 = !{!"__sFILE", !270, i64 0, !267, i64 8, !267, i64 12, !284, i64 16, !284, i64 18, !285, i64 24, !267, i64 40, !270, i64 48, !270, i64 56, !270, i64 64, !270, i64 72, !270, i64 80, !285, i64 88, !270, i64 104, !267, i64 112, !268, i64 116, !268, i64 119, !285, i64 120, !267, i64 136, !286, i64 144, !270, i64 152, !267, i64 160, !287, i64 164, !267, i64 172}
!284 = !{!"short", !268, i64 0}
!285 = !{!"__sbuf", !270, i64 0, !267, i64 8}
!286 = !{!"long", !268, i64 0}
!287 = !{!"", !267, i64 0, !268, i64 4}
!288 = !{!283, !270, i64 24}
!289 = !DILocation(line: 115, column: 7, scope: !260)
!290 = !DILocation(line: 118, column: 3, scope: !260)
!291 = !DILocation(line: 0, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 120, column: 11)
!293 = distinct !DILexicalBlock(scope: !260, file: !1, line: 119, column: 5)
!294 = !DILocation(line: 118, column: 10, scope: !260)
!295 = !{!268, !268, i64 0}
!296 = !DILocation(line: 120, column: 29, scope: !292)
!297 = !DILocation(line: 120, column: 27, scope: !292)
!298 = !DILocalVariable(name: "_ptr", arg: 1, scope: !299, file: !256, line: 687, type: !31)
!299 = distinct !DISubprogram(name: "__sputc_r", scope: !256, file: !256, line: 687, type: !300, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !31, !5, !254}
!302 = !{!298, !303, !304}
!303 = !DILocalVariable(name: "_c", arg: 2, scope: !299, file: !256, line: 687, type: !5)
!304 = !DILocalVariable(name: "_p", arg: 3, scope: !299, file: !256, line: 687, type: !254)
!305 = !DILocation(line: 687, column: 47, scope: !299, inlinedAt: !306)
!306 = distinct !DILocation(line: 120, column: 11, scope: !292)
!307 = !DILocation(line: 687, column: 57, scope: !299, inlinedAt: !306)
!308 = !DILocation(line: 687, column: 67, scope: !299, inlinedAt: !306)
!309 = !DILocation(line: 692, column: 6, scope: !310, inlinedAt: !306)
!310 = distinct !DILexicalBlock(scope: !299, file: !256, line: 692, column: 6)
!311 = !{!283, !267, i64 12}
!312 = !DILocation(line: 692, column: 15, scope: !310, inlinedAt: !306)
!313 = !DILocation(line: 692, column: 20, scope: !310, inlinedAt: !306)
!314 = !DILocation(line: 693, column: 10, scope: !310, inlinedAt: !306)
!315 = !DILocation(line: 692, column: 38, scope: !310, inlinedAt: !306)
!316 = !{!283, !267, i64 40}
!317 = !DILocation(line: 692, column: 31, scope: !310, inlinedAt: !306)
!318 = !DILocation(line: 692, column: 59, scope: !310, inlinedAt: !306)
!319 = !DILocation(line: 692, column: 47, scope: !310, inlinedAt: !306)
!320 = !DILocation(line: 693, column: 18, scope: !310, inlinedAt: !306)
!321 = !{!283, !270, i64 0}
!322 = !DILocation(line: 693, column: 21, scope: !310, inlinedAt: !306)
!323 = !DILocation(line: 693, column: 3, scope: !310, inlinedAt: !306)
!324 = !DILocation(line: 695, column: 11, scope: !310, inlinedAt: !306)
!325 = !DILocation(line: 695, column: 3, scope: !310, inlinedAt: !306)
!326 = !DILocation(line: 0, scope: !310, inlinedAt: !306)
!327 = !DILocation(line: 120, column: 37, scope: !292)
!328 = !DILocation(line: 120, column: 11, scope: !293)
!329 = distinct !{!329, !290, !330}
!330 = !DILocation(line: 122, column: 5, scope: !260)
!331 = !DILocation(line: 687, column: 47, scope: !299, inlinedAt: !332)
!332 = distinct !DILocation(line: 123, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !260, file: !1, line: 123, column: 7)
!334 = !DILocation(line: 687, column: 57, scope: !299, inlinedAt: !332)
!335 = !DILocation(line: 687, column: 67, scope: !299, inlinedAt: !332)
!336 = !DILocation(line: 692, column: 6, scope: !310, inlinedAt: !332)
!337 = !DILocation(line: 692, column: 15, scope: !310, inlinedAt: !332)
!338 = !DILocation(line: 692, column: 20, scope: !310, inlinedAt: !332)
!339 = !DILocation(line: 693, column: 18, scope: !310, inlinedAt: !332)
!340 = !DILocation(line: 693, column: 21, scope: !310, inlinedAt: !332)
!341 = !DILocation(line: 123, column: 7, scope: !260)
!342 = !DILocation(line: 695, column: 11, scope: !310, inlinedAt: !332)
!343 = !DILocation(line: 123, column: 33, scope: !333)
!344 = !DILocation(line: 0, scope: !260)
!345 = !DILocation(line: 129, column: 3, scope: !260)
!346 = !{!267, !267, i64 0}
!347 = !DILocation(line: 129, column: 3, scope: !28)
!348 = !DILocation(line: 130, column: 3, scope: !28)
!349 = distinct !DISubprogram(name: "puts", scope: !1, file: !1, line: 137, type: !350, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!5, !68}
!352 = !{!353}
!353 = !DILocalVariable(name: "s", arg: 1, scope: !349, file: !1, line: 137, type: !68)
!354 = !DILocation(line: 137, column: 1, scope: !349)
!355 = !DILocation(line: 140, column: 19, scope: !349)
!356 = !DILocation(line: 140, column: 10, scope: !349)
!357 = !DILocation(line: 140, column: 3, scope: !349)
