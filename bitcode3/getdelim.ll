; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getdelim.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getdelim.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i64 @__getdelim(i8**, i64*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !34 {
  %5 = alloca i32, align 4
  %6 = icmp eq %struct.__sFILE* %3, null, !dbg !274
  %7 = icmp eq i8** %0, null, !dbg !276
  %8 = or i1 %7, %6, !dbg !277
  %9 = icmp eq i64* %1, null, !dbg !278
  %10 = or i1 %9, %8, !dbg !277
  br i1 %10, label %11, label %13, !dbg !277

; <label>:11:                                     ; preds = %4
  %12 = tail call i32* @__errno() #4, !dbg !279
  store i32 22, i32* %12, align 4, !dbg !281, !tbaa !282
  br label %75, !dbg !286

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %0, align 8, !dbg !287, !tbaa !288
  %15 = icmp eq i8* %14, null, !dbg !291
  br i1 %15, label %19, label %16, !dbg !293

; <label>:16:                                     ; preds = %13
  %17 = load i64, i64* %1, align 8, !dbg !294, !tbaa !295
  %18 = icmp ult i64 %17, 4, !dbg !297
  br i1 %18, label %19, label %23, !dbg !298

; <label>:19:                                     ; preds = %16, %13
  %20 = tail call i8* @realloc(i8* %14, i64 128) #4, !dbg !299
  %21 = icmp eq i8* %20, null, !dbg !301
  br i1 %21, label %75, label %22, !dbg !303

; <label>:22:                                     ; preds = %19
  store i8* %20, i8** %0, align 8, !dbg !304, !tbaa !288
  store i64 128, i64* %1, align 8, !dbg !305, !tbaa !295
  br label %23, !dbg !306

; <label>:23:                                     ; preds = %16, %22
  %24 = phi i8* [ %20, %22 ], [ %14, %16 ], !dbg !307
  %25 = tail call %struct._reent* @__getreent() #4, !dbg !308
  %26 = icmp eq %struct._reent* %25, null, !dbg !309
  br i1 %26, label %32, label %27, !dbg !309

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct._reent, %struct._reent* %25, i64 0, i32 8, !dbg !309
  %29 = load i32, i32* %28, align 8, !dbg !309, !tbaa !311
  %30 = icmp eq i32 %29, 0, !dbg !309
  br i1 %30, label %31, label %32, !dbg !308

; <label>:31:                                     ; preds = %27
  tail call void @__sinit(%struct._reent* nonnull %25) #4, !dbg !309
  br label %32, !dbg !309

; <label>:32:                                     ; preds = %27, %23, %31
  %33 = bitcast i32* %5 to i8*, !dbg !316
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #5, !dbg !316
  %34 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #4, !dbg !316
  %35 = load i64, i64* %1, align 8, !dbg !317, !tbaa !295
  br label %36, !dbg !321

; <label>:36:                                     ; preds = %57, %32
  %37 = phi i8* [ %24, %32 ], [ %55, %57 ]
  %38 = phi i8* [ %24, %32 ], [ %63, %57 ]
  %39 = phi i64 [ %35, %32 ], [ %64, %57 ]
  br label %40, !dbg !322

; <label>:40:                                     ; preds = %36, %48
  %41 = phi i64 [ %43, %48 ], [ %39, %36 ], !dbg !324
  %42 = phi i8* [ %50, %48 ], [ %38, %36 ], !dbg !325
  %43 = add i64 %41, -1, !dbg !322
  %44 = icmp eq i64 %43, 0, !dbg !329
  br i1 %44, label %52, label %45, !dbg !330

; <label>:45:                                     ; preds = %40
  %46 = call i32 @getc_unlocked(%struct.__sFILE* %3) #4, !dbg !331
  %47 = icmp eq i32 %46, -1, !dbg !333
  br i1 %47, label %65, label %48, !dbg !334

; <label>:48:                                     ; preds = %45
  %49 = trunc i32 %46 to i8, !dbg !335
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !336
  store i8 %49, i8* %42, align 1, !dbg !337, !tbaa !338
  %51 = icmp eq i32 %46, %2, !dbg !339
  br i1 %51, label %65, label %40, !dbg !341, !llvm.loop !342

; <label>:52:                                     ; preds = %40
  %53 = load i64, i64* %1, align 8, !dbg !344, !tbaa !295
  %54 = shl i64 %53, 1, !dbg !347
  %55 = call i8* @realloc(i8* %37, i64 %54) #4, !dbg !349
  %56 = icmp eq i8* %55, null, !dbg !350
  br i1 %56, label %65, label %57, !dbg !352

; <label>:57:                                     ; preds = %52
  %58 = ptrtoint i8* %42 to i64, !dbg !353
  %59 = ptrtoint i8* %37 to i64, !dbg !353
  %60 = sub i64 %58, %59, !dbg !353
  store i8* %55, i8** %0, align 8, !dbg !354, !tbaa !288
  store i64 %54, i64* %1, align 8, !dbg !355, !tbaa !295
  %61 = shl i64 %60, 32, !dbg !356
  %62 = ashr exact i64 %61, 32, !dbg !356
  %63 = getelementptr inbounds i8, i8* %55, i64 %62, !dbg !356
  %64 = sub i64 %54, %62, !dbg !357
  br label %36

; <label>:65:                                     ; preds = %52, %48, %45
  %66 = phi i8* [ %50, %48 ], [ %42, %45 ], [ %42, %52 ], !dbg !358
  %67 = phi i8* [ %37, %45 ], [ %37, %48 ], [ null, %52 ], !dbg !359
  %68 = load i32, i32* %5, align 4, !dbg !360, !tbaa !282
  %69 = call i32 @pthread_setcancelstate(i32 %68, i32* nonnull %5) #4, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #5, !dbg !361
  %70 = icmp eq i8* %66, %67, !dbg !362
  br i1 %70, label %75, label %71, !dbg !364

; <label>:71:                                     ; preds = %65
  store i8 0, i8* %66, align 1, !dbg !365, !tbaa !338
  %72 = ptrtoint i8* %66 to i64, !dbg !366
  %73 = ptrtoint i8* %67 to i64, !dbg !366
  %74 = sub i64 %72, %73, !dbg !366
  br label %75, !dbg !367

; <label>:75:                                     ; preds = %65, %19, %71, %11
  %76 = phi i64 [ -1, %11 ], [ %74, %71 ], [ -1, %19 ], [ -1, %65 ], !dbg !307
  ret i64 %76, !dbg !368
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @getc_unlocked(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getdelim.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 200, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !28, line: 145, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!34 = distinct !DISubprogram(name: "__getdelim", scope: !1, file: !1, line: 51, type: !35, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !257)
!35 = !DISubroutineType(types: !36)
!36 = !{!25, !37, !38, !5, !42}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 58, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 66, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !46, line: 287, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !46, line: 181, size: 1408, elements: !48)
!48 = !{!49, !52, !53, !54, !56, !57, !62, !63, !64, !224, !230, !235, !239, !240, !241, !242, !244, !246, !247, !248, !250, !251, !255, !256}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !47, file: !46, line: 182, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !47, file: !46, line: 183, baseType: !5, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !47, file: !46, line: 184, baseType: !5, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !46, line: 185, baseType: !55, size: 16, offset: 128)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !47, file: !46, line: 186, baseType: !55, size: 16, offset: 144)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !47, file: !46, line: 187, baseType: !58, size: 128, offset: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !46, line: 117, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !58, file: !46, line: 118, baseType: !50, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !58, file: !46, line: 119, baseType: !5, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !47, file: !46, line: 188, baseType: !5, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !47, file: !46, line: 195, baseType: !22, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !47, file: !46, line: 197, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!27, !68, !22, !23, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !46, line: 569, size: 14912, elements: !70)
!70 = !{!71, !72, !74, !75, !76, !77, !81, !82, !85, !86, !90, !105, !106, !107, !109, !110, !111, !188, !209, !210, !215, !222}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !69, file: !46, line: 571, baseType: !5, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !69, file: !46, line: 576, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !69, file: !46, line: 576, baseType: !73, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !69, file: !46, line: 576, baseType: !73, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !69, file: !46, line: 578, baseType: !5, size: 32, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !69, file: !46, line: 579, baseType: !78, size: 200, offset: 288)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 25)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !69, file: !46, line: 582, baseType: !5, size: 32, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !69, file: !46, line: 583, baseType: !83, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !46, line: 40, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !69, file: !46, line: 585, baseType: !5, size: 32, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !69, file: !46, line: 587, baseType: !87, size: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !68}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !69, file: !46, line: 590, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !46, line: 47, size: 256, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !46, line: 49, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !92, file: !46, line: 50, baseType: !5, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !92, file: !46, line: 50, baseType: !5, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !92, file: !46, line: 50, baseType: !5, size: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !92, file: !46, line: 50, baseType: !5, size: 32, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !92, file: !46, line: 51, baseType: !100, size: 32, offset: 192)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 32, elements: !103)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !46, line: 25, baseType: !102)
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !69, file: !46, line: 591, baseType: !5, size: 32, offset: 832)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !69, file: !46, line: 592, baseType: !91, size: 64, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !69, file: !46, line: 593, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !69, file: !46, line: 596, baseType: !5, size: 32, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !69, file: !46, line: 597, baseType: !23, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !69, file: !46, line: 632, baseType: !112, size: 2880, offset: 1152)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !46, line: 599, size: 2880, elements: !113)
!113 = !{!114, !179}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !112, file: !46, line: 622, baseType: !115, size: 1728)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !46, line: 601, size: 1728, elements: !116)
!116 = !{!117, !118, !119, !123, !135, !136, !138, !148, !162, !163, !164, !168, !172, !173, !174, !175, !176, !177, !178}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !115, file: !46, line: 603, baseType: !102, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !115, file: !46, line: 604, baseType: !23, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !115, file: !46, line: 605, baseType: !120, size: 208, offset: 128)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 208, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 26)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !115, file: !46, line: 606, baseType: !124, size: 288, offset: 352)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !46, line: 55, size: 288, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !124, file: !46, line: 57, baseType: !5, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !124, file: !46, line: 58, baseType: !5, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !124, file: !46, line: 59, baseType: !5, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !124, file: !46, line: 60, baseType: !5, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !124, file: !46, line: 61, baseType: !5, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !124, file: !46, line: 62, baseType: !5, size: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !124, file: !46, line: 63, baseType: !5, size: 32, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !124, file: !46, line: 64, baseType: !5, size: 32, offset: 224)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !124, file: !46, line: 65, baseType: !5, size: 32, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !115, file: !46, line: 607, baseType: !5, size: 32, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !115, file: !46, line: 608, baseType: !137, size: 64, offset: 704)
!137 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !115, file: !46, line: 609, baseType: !139, size: 112, offset: 768)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !46, line: 319, size: 112, elements: !140)
!140 = !{!141, !146, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !139, file: !46, line: 320, baseType: !142, size: 48)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 48, elements: !144)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !139, file: !46, line: 321, baseType: !142, size: 48, offset: 48)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !139, file: !46, line: 322, baseType: !143, size: 16, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !115, file: !46, line: 610, baseType: !149, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !28, line: 171, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 163, size: 64, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !150, file: !28, line: 165, baseType: !5, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !150, file: !28, line: 170, baseType: !154, size: 32, offset: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !28, line: 166, size: 32, elements: !155)
!155 = !{!156, !158}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !154, file: !28, line: 168, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !40, line: 124, baseType: !102)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !154, file: !28, line: 169, baseType: !159, size: 32)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 4)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !115, file: !46, line: 611, baseType: !149, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !115, file: !46, line: 612, baseType: !149, size: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !115, file: !46, line: 613, baseType: !165, size: 64, offset: 1088)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !115, file: !46, line: 614, baseType: !169, size: 192, offset: 1152)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 24)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !115, file: !46, line: 615, baseType: !5, size: 32, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !115, file: !46, line: 616, baseType: !149, size: 64, offset: 1376)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !115, file: !46, line: 617, baseType: !149, size: 64, offset: 1440)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !115, file: !46, line: 618, baseType: !149, size: 64, offset: 1504)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !115, file: !46, line: 619, baseType: !149, size: 64, offset: 1568)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !115, file: !46, line: 620, baseType: !149, size: 64, offset: 1632)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !115, file: !46, line: 621, baseType: !5, size: 32, offset: 1696)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !112, file: !46, line: 631, baseType: !180, size: 2880)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !46, line: 626, size: 2880, elements: !181)
!181 = !{!182, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !180, file: !46, line: 629, baseType: !183, size: 1920)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1920, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 30)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !180, file: !46, line: 630, baseType: !187, size: 960, offset: 1920)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 960, elements: !184)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !69, file: !46, line: 636, baseType: !189, size: 64, offset: 4032)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !46, line: 93, size: 6336, elements: !191)
!191 = !{!192, !193, !194, !201}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !190, file: !46, line: 94, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !190, file: !46, line: 95, baseType: !5, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !190, file: !46, line: 97, baseType: !195, size: 2048, offset: 128)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 2048, elements: !199)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null}
!199 = !{!200}
!200 = !DISubrange(count: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !190, file: !46, line: 98, baseType: !202, size: 4160, offset: 2176)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !46, line: 74, size: 4160, elements: !203)
!203 = !{!204, !206, !207, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !202, file: !46, line: 75, baseType: !205, size: 2048)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !199)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !202, file: !46, line: 76, baseType: !205, size: 2048, offset: 2048)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !202, file: !46, line: 78, baseType: !101, size: 32, offset: 4096)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !202, file: !46, line: 81, baseType: !101, size: 32, offset: 4128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !69, file: !46, line: 637, baseType: !190, size: 6336, offset: 4096)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !69, file: !46, line: 641, baseType: !211, size: 64, offset: 10432)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !5}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !69, file: !46, line: 646, baseType: !216, size: 192, offset: 10496)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !46, line: 291, size: 192, elements: !217)
!217 = !{!218, !220, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !46, line: 293, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !216, file: !46, line: 294, baseType: !5, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !216, file: !46, line: 295, baseType: !73, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !69, file: !46, line: 648, baseType: !223, size: 4224, offset: 10688)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 4224, elements: !144)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !47, file: !46, line: 199, baseType: !225, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!27, !68, !22, !228, !5}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !47, file: !46, line: 202, baseType: !231, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !68, !22, !234, !5}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !28, line: 114, baseType: !29)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !47, file: !46, line: 203, baseType: !236, size: 64, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!5, !68, !22}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !47, file: !46, line: 206, baseType: !58, size: 128, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !47, file: !46, line: 207, baseType: !50, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !47, file: !46, line: 208, baseType: !5, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !47, file: !46, line: 211, baseType: !243, size: 24, offset: 928)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 24, elements: !144)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !47, file: !46, line: 212, baseType: !245, size: 8, offset: 952)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, elements: !103)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !47, file: !46, line: 215, baseType: !58, size: 128, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !47, file: !46, line: 218, baseType: !5, size: 32, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !46, line: 219, baseType: !249, size: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !28, line: 44, baseType: !29)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !47, file: !46, line: 222, baseType: !68, size: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !46, line: 226, baseType: !252, size: 32, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !28, line: 175, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !254, line: 12, baseType: !5)
!254 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !47, file: !46, line: 228, baseType: !149, size: 64, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !46, line: 229, baseType: !5, size: 32, offset: 1376)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271}
!258 = !DILocalVariable(name: "bufptr", arg: 1, scope: !34, file: !1, line: 51, type: !37)
!259 = !DILocalVariable(name: "n", arg: 2, scope: !34, file: !1, line: 51, type: !38)
!260 = !DILocalVariable(name: "delim", arg: 3, scope: !34, file: !1, line: 51, type: !5)
!261 = !DILocalVariable(name: "fp", arg: 4, scope: !34, file: !1, line: 51, type: !42)
!262 = !DILocalVariable(name: "buf", scope: !34, file: !1, line: 57, type: !23)
!263 = !DILocalVariable(name: "ptr", scope: !34, file: !1, line: 58, type: !23)
!264 = !DILocalVariable(name: "newsize", scope: !34, file: !1, line: 59, type: !39)
!265 = !DILocalVariable(name: "numbytes", scope: !34, file: !1, line: 59, type: !39)
!266 = !DILocalVariable(name: "pos", scope: !34, file: !1, line: 60, type: !5)
!267 = !DILocalVariable(name: "ch", scope: !34, file: !1, line: 61, type: !5)
!268 = !DILocalVariable(name: "cont", scope: !34, file: !1, line: 62, type: !5)
!269 = !DILocalVariable(name: "_check_init_ptr", scope: !270, file: !1, line: 82, type: !68)
!270 = distinct !DILexicalBlock(scope: !34, file: !1, line: 82, column: 3)
!271 = !DILocalVariable(name: "__oldfpcancel", scope: !272, file: !1, line: 84, type: !5)
!272 = distinct !DILexicalBlock(scope: !34, file: !1, line: 84, column: 3)
!273 = !DILocation(line: 51, column: 1, scope: !34)
!274 = !DILocation(line: 64, column: 10, scope: !275)
!275 = distinct !DILexicalBlock(scope: !34, file: !1, line: 64, column: 7)
!276 = !DILocation(line: 64, column: 28, scope: !275)
!277 = !DILocation(line: 64, column: 18, scope: !275)
!278 = !DILocation(line: 64, column: 41, scope: !275)
!279 = !DILocation(line: 66, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 65, column: 5)
!281 = !DILocation(line: 66, column: 13, scope: !280)
!282 = !{!283, !283, i64 0}
!283 = !{!"int", !284, i64 0}
!284 = !{!"omnipotent char", !285, i64 0}
!285 = !{!"Simple C/C++ TBAA"}
!286 = !DILocation(line: 67, column: 7, scope: !280)
!287 = !DILocation(line: 70, column: 9, scope: !34)
!288 = !{!289, !289, i64 0}
!289 = !{!"any pointer", !284, i64 0}
!290 = !DILocation(line: 57, column: 9, scope: !34)
!291 = !DILocation(line: 71, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !34, file: !1, line: 71, column: 7)
!293 = !DILocation(line: 71, column: 19, scope: !292)
!294 = !DILocation(line: 71, column: 22, scope: !292)
!295 = !{!296, !296, i64 0}
!296 = !{!"long", !284, i64 0}
!297 = !DILocation(line: 71, column: 25, scope: !292)
!298 = !DILocation(line: 71, column: 7, scope: !34)
!299 = !DILocation(line: 73, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !1, line: 72, column: 5)
!301 = !DILocation(line: 74, column: 15, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !1, line: 74, column: 11)
!303 = !DILocation(line: 74, column: 11, scope: !300)
!304 = !DILocation(line: 78, column: 15, scope: !300)
!305 = !DILocation(line: 79, column: 10, scope: !300)
!306 = !DILocation(line: 80, column: 5, scope: !300)
!307 = !DILocation(line: 0, scope: !34)
!308 = !DILocation(line: 82, column: 3, scope: !270)
!309 = !DILocation(line: 82, column: 3, scope: !310)
!310 = distinct !DILexicalBlock(scope: !270, file: !1, line: 82, column: 3)
!311 = !{!312, !283, i64 80}
!312 = !{!"_reent", !283, i64 0, !289, i64 8, !289, i64 16, !289, i64 24, !283, i64 32, !284, i64 36, !283, i64 64, !289, i64 72, !283, i64 80, !289, i64 88, !289, i64 96, !283, i64 104, !289, i64 112, !289, i64 120, !283, i64 128, !289, i64 136, !284, i64 144, !289, i64 504, !313, i64 512, !289, i64 1304, !315, i64 1312, !284, i64 1336}
!313 = !{!"_atexit", !289, i64 0, !283, i64 8, !284, i64 16, !314, i64 272}
!314 = !{!"_on_exit_args", !284, i64 0, !284, i64 256, !283, i64 512, !283, i64 516}
!315 = !{!"_glue", !289, i64 0, !283, i64 8, !289, i64 16}
!316 = !DILocation(line: 84, column: 3, scope: !272)
!317 = !DILocation(line: 86, column: 14, scope: !272)
!318 = !DILocation(line: 59, column: 19, scope: !34)
!319 = !DILocation(line: 58, column: 9, scope: !34)
!320 = !DILocation(line: 62, column: 7, scope: !34)
!321 = !DILocation(line: 91, column: 3, scope: !272)
!322 = !DILocation(line: 94, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !272, file: !1, line: 92, column: 5)
!324 = !DILocation(line: 0, scope: !323)
!325 = !DILocation(line: 0, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 102, column: 13)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 96, column: 15)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 95, column: 9)
!329 = !DILocation(line: 94, column: 25, scope: !323)
!330 = !DILocation(line: 94, column: 7, scope: !323)
!331 = !DILocation(line: 96, column: 21, scope: !327)
!332 = !DILocation(line: 61, column: 7, scope: !34)
!333 = !DILocation(line: 96, column: 41, scope: !327)
!334 = !DILocation(line: 96, column: 15, scope: !328)
!335 = !DILocation(line: 103, column: 24, scope: !326)
!336 = !DILocation(line: 103, column: 19, scope: !326)
!337 = !DILocation(line: 103, column: 22, scope: !326)
!338 = !{!284, !284, i64 0}
!339 = !DILocation(line: 104, column: 22, scope: !340)
!340 = distinct !DILexicalBlock(scope: !326, file: !1, line: 104, column: 19)
!341 = !DILocation(line: 104, column: 19, scope: !326)
!342 = distinct !{!342, !330, !343}
!343 = !DILocation(line: 110, column: 9, scope: !323)
!344 = !DILocation(line: 116, column: 22, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 113, column: 9)
!346 = distinct !DILexicalBlock(scope: !323, file: !1, line: 112, column: 11)
!347 = !DILocation(line: 116, column: 25, scope: !345)
!348 = !DILocation(line: 59, column: 10, scope: !34)
!349 = !DILocation(line: 117, column: 17, scope: !345)
!350 = !DILocation(line: 118, column: 19, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 118, column: 15)
!352 = !DILocation(line: 118, column: 15, scope: !345)
!353 = !DILocation(line: 115, column: 21, scope: !345)
!354 = !DILocation(line: 125, column: 19, scope: !345)
!355 = !DILocation(line: 126, column: 14, scope: !345)
!356 = !DILocation(line: 127, column: 21, scope: !345)
!357 = !DILocation(line: 128, column: 30, scope: !345)
!358 = !DILocation(line: 87, column: 7, scope: !272)
!359 = !DILocation(line: 0, scope: !300)
!360 = !DILocation(line: 132, column: 3, scope: !272)
!361 = !DILocation(line: 132, column: 3, scope: !34)
!362 = !DILocation(line: 135, column: 11, scope: !363)
!363 = distinct !DILexicalBlock(scope: !34, file: !1, line: 135, column: 7)
!364 = !DILocation(line: 135, column: 7, scope: !34)
!365 = !DILocation(line: 139, column: 8, scope: !34)
!366 = !DILocation(line: 140, column: 24, scope: !34)
!367 = !DILocation(line: 140, column: 3, scope: !34)
!368 = !DILocation(line: 141, column: 1, scope: !34)
