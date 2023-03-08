; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc.c"
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
define dso_local i32 @_putc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !27 {
  %4 = alloca i32, align 4
  %5 = icmp eq %struct._reent* %0, null, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %5, label %11, label %6, !dbg !262

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !262
  %8 = load i32, i32* %7, align 8, !dbg !262, !tbaa !264
  %9 = icmp eq i32 %8, 0, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %9, label %10, label %11, !dbg !261

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %11, !dbg !262

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = bitcast i32* %4 to i8*, !dbg !273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !273
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #4, !dbg !273
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2, !dbg !283
  %15 = load i32, i32* %14, align 4, !dbg !285, !tbaa !286
  %16 = add nsw i32 %15, -1, !dbg !285
  store i32 %16, i32* %14, align 4, !dbg !285, !tbaa !286
  %17 = icmp sgt i32 %15, 0, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %17, label %18, label %20, !dbg !293

; <label>:18:                                     ; preds = %11
  %19 = and i32 %1, 255, !dbg !294
  br label %27, !dbg !293

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6, !dbg !295
  %22 = load i32, i32* %21, align 8, !dbg !295, !tbaa !296
  %23 = icmp sgt i32 %15, %22, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %23, label %24, label %33, !dbg !298

; <label>:24:                                     ; preds = %20
  %25 = and i32 %1, 255, !dbg !299
  %26 = icmp eq i32 %25, 10, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %26, label %33, label %27, !dbg !300

; <label>:27:                                     ; preds = %24, %18
  %28 = phi i32 [ %19, %18 ], [ %25, %24 ], !dbg !294
  %29 = trunc i32 %1 to i8, !dbg !301
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !302
  %31 = load i8*, i8** %30, align 8, !dbg !303, !tbaa !304
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !303
  store i8* %32, i8** %30, align 8, !dbg !303, !tbaa !304
  store i8 %29, i8* %31, align 1, !dbg !305, !tbaa !306
  br label %35, !dbg !307

; <label>:33:                                     ; preds = %24, %20
  %34 = call i32 @__swbuf_r(%struct._reent* %0, i32 %1, %struct.__sFILE* nonnull %2) #4, !dbg !308
  br label %35, !dbg !309

; <label>:35:                                     ; preds = %27, %33
  %36 = phi i32 [ %28, %27 ], [ %34, %33 ], !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  %37 = load i32, i32* %4, align 4, !dbg !314, !tbaa !315
  %38 = call i32 @pthread_setcancelstate(i32 %37, i32* nonnull %4) #4, !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  ret i32 %36, !dbg !317
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @putc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !318 {
  %3 = alloca i32, align 4
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !331
  %5 = icmp eq %struct._reent* %4, null, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %5, label %11, label %6, !dbg !334

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !334
  %8 = load i32, i32* %7, align 8, !dbg !334, !tbaa !264
  %9 = icmp eq i32 %8, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %9, label %10, label %11, !dbg !333

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br label %11, !dbg !334

; <label>:11:                                     ; preds = %6, %2, %10
  %12 = bitcast i32* %3 to i8*, !dbg !336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !336
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !336
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !341
  %15 = load i32, i32* %14, align 4, !dbg !342, !tbaa !286
  %16 = add nsw i32 %15, -1, !dbg !342
  store i32 %16, i32* %14, align 4, !dbg !342, !tbaa !286
  %17 = icmp sgt i32 %15, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %17, label %18, label %20, !dbg !344

; <label>:18:                                     ; preds = %11
  %19 = and i32 %0, 255, !dbg !345
  br label %27, !dbg !344

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 6, !dbg !346
  %22 = load i32, i32* %21, align 8, !dbg !346, !tbaa !296
  %23 = icmp sgt i32 %15, %22, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %23, label %24, label %33, !dbg !348

; <label>:24:                                     ; preds = %20
  %25 = and i32 %0, 255, !dbg !349
  %26 = icmp eq i32 %25, 10, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %26, label %33, label %27, !dbg !350

; <label>:27:                                     ; preds = %24, %18
  %28 = phi i32 [ %19, %18 ], [ %25, %24 ], !dbg !345
  %29 = trunc i32 %0 to i8, !dbg !351
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !352
  %31 = load i8*, i8** %30, align 8, !dbg !353, !tbaa !304
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !353
  store i8* %32, i8** %30, align 8, !dbg !353, !tbaa !304
  store i8 %29, i8* %31, align 1, !dbg !354, !tbaa !306
  br label %35, !dbg !355

; <label>:33:                                     ; preds = %24, %20
  %34 = call i32 @__swbuf_r(%struct._reent* %4, i32 %0, %struct.__sFILE* nonnull %1) #4, !dbg !356
  br label %35, !dbg !357

; <label>:35:                                     ; preds = %27, %33
  %36 = phi i32 [ %28, %27 ], [ %34, %33 ], !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  %37 = load i32, i32* %3, align 4, !dbg !362, !tbaa !315
  %38 = call i32 @pthread_setcancelstate(i32 %37, i32* nonnull %3) #4, !dbg !362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  ret i32 %36, !dbg !364
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

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22}
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "_putc_r", scope: !1, file: !1, line: 93, type: !28, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!28 = !DISubroutineType(types: !29)
!29 = !{!5, !30, !5, !248}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !32, line: 569, size: 14912, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34, !35, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !31, file: !32, line: 571, baseType: !5, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !31, file: !32, line: 576, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !32, line: 287, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 181, size: 1408, elements: !39)
!39 = !{!40, !43, !44, !45, !47, !48, !53, !54, !56, !64, !70, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !38, file: !32, line: 182, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !38, file: !32, line: 183, baseType: !5, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !38, file: !32, line: 184, baseType: !5, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !32, line: 185, baseType: !46, size: 16, offset: 128)
!46 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !38, file: !32, line: 186, baseType: !46, size: 16, offset: 144)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !38, file: !32, line: 187, baseType: !49, size: 128, offset: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 117, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !49, file: !32, line: 118, baseType: !41, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !49, file: !32, line: 119, baseType: !5, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !38, file: !32, line: 188, baseType: !5, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !38, file: !32, line: 195, baseType: !55, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !38, file: !32, line: 197, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !30, !55, !63, !5}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !61, line: 145, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !38, file: !32, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!60, !30, !55, !68, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !38, file: !32, line: 202, baseType: !71, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !30, !55, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !61, line: 114, baseType: !62)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !38, file: !32, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !30, !55}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !38, file: !32, line: 206, baseType: !49, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !38, file: !32, line: 207, baseType: !41, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !38, file: !32, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !38, file: !32, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !38, file: !32, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !38, file: !32, line: 215, baseType: !49, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !38, file: !32, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !32, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !61, line: 44, baseType: !62)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !38, file: !32, line: 222, baseType: !30, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !38, file: !32, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !61, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !38, file: !32, line: 228, baseType: !100, size: 64, offset: 1312)
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
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !38, file: !32, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !31, file: !32, line: 576, baseType: !36, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !31, file: !32, line: 576, baseType: !36, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !31, file: !32, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !31, file: !32, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !31, file: !32, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !31, file: !32, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !32, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !31, file: !32, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !31, file: !32, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !30}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !31, file: !32, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !32, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !32, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !32, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !32, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !32, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !32, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !32, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !32, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !31, file: !32, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !31, file: !32, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !31, file: !32, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !31, file: !32, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !31, file: !32, line: 597, baseType: !63, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !31, file: !32, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !32, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !32, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !32, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !32, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !32, line: 604, baseType: !63, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !32, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !32, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !32, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !32, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !32, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !32, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !32, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !32, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !32, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !32, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !32, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !32, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !32, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !32, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !32, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !32, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !32, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !32, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !32, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !32, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !32, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !32, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !32, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !32, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !32, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !32, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !32, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !32, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !32, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !32, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !32, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !32, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !32, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !32, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !32, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !31, file: !32, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !32, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !32, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !32, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !32, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !32, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !32, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !32, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !32, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !32, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !32, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !31, file: !32, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !31, file: !32, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !31, file: !32, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !32, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !32, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !32, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !32, line: 295, baseType: !36, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !31, file: !32, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !37)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !{!252, !253, !254, !255, !256, !258}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !27, file: !1, line: 93, type: !30)
!253 = !DILocalVariable(name: "c", arg: 2, scope: !27, file: !1, line: 93, type: !5)
!254 = !DILocalVariable(name: "fp", arg: 3, scope: !27, file: !1, line: 93, type: !248)
!255 = !DILocalVariable(name: "result", scope: !27, file: !1, line: 98, type: !5)
!256 = !DILocalVariable(name: "_check_init_ptr", scope: !257, file: !1, line: 99, type: !30)
!257 = distinct !DILexicalBlock(scope: !27, file: !1, line: 99, column: 3)
!258 = !DILocalVariable(name: "__oldfpcancel", scope: !259, file: !1, line: 100, type: !5)
!259 = distinct !DILexicalBlock(scope: !27, file: !1, line: 100, column: 3)
!260 = !DILocation(line: 93, column: 1, scope: !27)
!261 = !DILocation(line: 99, column: 3, scope: !257)
!262 = !DILocation(line: 99, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !257, file: !1, line: 99, column: 3)
!264 = !{!265, !266, i64 80}
!265 = !{!"_reent", !266, i64 0, !269, i64 8, !269, i64 16, !269, i64 24, !266, i64 32, !267, i64 36, !266, i64 64, !269, i64 72, !266, i64 80, !269, i64 88, !269, i64 96, !266, i64 104, !269, i64 112, !269, i64 120, !266, i64 128, !269, i64 136, !267, i64 144, !269, i64 504, !270, i64 512, !269, i64 1304, !272, i64 1312, !267, i64 1336}
!266 = !{!"int", !267, i64 0}
!267 = !{!"omnipotent char", !268, i64 0}
!268 = !{!"Simple C/C++ TBAA"}
!269 = !{!"any pointer", !267, i64 0}
!270 = !{!"_atexit", !269, i64 0, !266, i64 8, !267, i64 16, !271, i64 272}
!271 = !{!"_on_exit_args", !267, i64 0, !267, i64 256, !266, i64 512, !266, i64 516}
!272 = !{!"_glue", !269, i64 0, !266, i64 8, !269, i64 16}
!273 = !DILocation(line: 100, column: 3, scope: !259)
!274 = !DILocalVariable(name: "_ptr", arg: 1, scope: !275, file: !250, line: 687, type: !30)
!275 = distinct !DISubprogram(name: "__sputc_r", scope: !250, file: !250, line: 687, type: !28, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !276)
!276 = !{!274, !277, !278}
!277 = !DILocalVariable(name: "_c", arg: 2, scope: !275, file: !250, line: 687, type: !5)
!278 = !DILocalVariable(name: "_p", arg: 3, scope: !275, file: !250, line: 687, type: !248)
!279 = !DILocation(line: 687, column: 47, scope: !275, inlinedAt: !280)
!280 = distinct !DILocation(line: 101, column: 12, scope: !259)
!281 = !DILocation(line: 687, column: 57, scope: !275, inlinedAt: !280)
!282 = !DILocation(line: 687, column: 67, scope: !275, inlinedAt: !280)
!283 = !DILocation(line: 692, column: 12, scope: !284, inlinedAt: !280)
!284 = distinct !DILexicalBlock(scope: !275, file: !250, line: 692, column: 6)
!285 = !DILocation(line: 692, column: 6, scope: !284, inlinedAt: !280)
!286 = !{!287, !266, i64 12}
!287 = !{!"__sFILE", !269, i64 0, !266, i64 8, !266, i64 12, !288, i64 16, !288, i64 18, !289, i64 24, !266, i64 40, !269, i64 48, !269, i64 56, !269, i64 64, !269, i64 72, !269, i64 80, !289, i64 88, !269, i64 104, !266, i64 112, !267, i64 116, !267, i64 119, !289, i64 120, !266, i64 136, !290, i64 144, !269, i64 152, !266, i64 160, !291, i64 164, !266, i64 172}
!288 = !{!"short", !267, i64 0}
!289 = !{!"__sbuf", !269, i64 0, !266, i64 8}
!290 = !{!"long", !267, i64 0}
!291 = !{!"", !266, i64 0, !267, i64 4}
!292 = !DILocation(line: 692, column: 15, scope: !284, inlinedAt: !280)
!293 = !DILocation(line: 692, column: 20, scope: !284, inlinedAt: !280)
!294 = !DILocation(line: 693, column: 10, scope: !284, inlinedAt: !280)
!295 = !DILocation(line: 692, column: 38, scope: !284, inlinedAt: !280)
!296 = !{!287, !266, i64 40}
!297 = !DILocation(line: 692, column: 31, scope: !284, inlinedAt: !280)
!298 = !DILocation(line: 692, column: 47, scope: !284, inlinedAt: !280)
!299 = !DILocation(line: 692, column: 59, scope: !284, inlinedAt: !280)
!300 = !DILocation(line: 692, column: 6, scope: !275, inlinedAt: !280)
!301 = !DILocation(line: 693, column: 23, scope: !284, inlinedAt: !280)
!302 = !DILocation(line: 693, column: 16, scope: !284, inlinedAt: !280)
!303 = !DILocation(line: 693, column: 18, scope: !284, inlinedAt: !280)
!304 = !{!287, !269, i64 0}
!305 = !DILocation(line: 693, column: 21, scope: !284, inlinedAt: !280)
!306 = !{!267, !267, i64 0}
!307 = !DILocation(line: 693, column: 3, scope: !284, inlinedAt: !280)
!308 = !DILocation(line: 695, column: 11, scope: !284, inlinedAt: !280)
!309 = !DILocation(line: 695, column: 3, scope: !284, inlinedAt: !280)
!310 = !DILocation(line: 0, scope: !284, inlinedAt: !280)
!311 = !DILocation(line: 0, scope: !259)
!312 = !DILocation(line: 696, column: 1, scope: !275, inlinedAt: !280)
!313 = !DILocation(line: 98, column: 7, scope: !27)
!314 = !DILocation(line: 102, column: 3, scope: !259)
!315 = !{!266, !266, i64 0}
!316 = !DILocation(line: 102, column: 3, scope: !27)
!317 = !DILocation(line: 103, column: 3, scope: !27)
!318 = distinct !DISubprogram(name: "putc", scope: !1, file: !1, line: 108, type: !319, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{!5, !5, !248}
!321 = !{!322, !323, !324, !325, !326, !328}
!322 = !DILocalVariable(name: "c", arg: 1, scope: !318, file: !1, line: 108, type: !5)
!323 = !DILocalVariable(name: "fp", arg: 2, scope: !318, file: !1, line: 108, type: !248)
!324 = !DILocalVariable(name: "result", scope: !318, file: !1, line: 113, type: !5)
!325 = !DILocalVariable(name: "reent", scope: !318, file: !1, line: 114, type: !30)
!326 = !DILocalVariable(name: "_check_init_ptr", scope: !327, file: !1, line: 116, type: !30)
!327 = distinct !DILexicalBlock(scope: !318, file: !1, line: 116, column: 3)
!328 = !DILocalVariable(name: "__oldfpcancel", scope: !329, file: !1, line: 117, type: !5)
!329 = distinct !DILexicalBlock(scope: !318, file: !1, line: 117, column: 3)
!330 = !DILocation(line: 108, column: 1, scope: !318)
!331 = !DILocation(line: 114, column: 26, scope: !318)
!332 = !DILocation(line: 114, column: 18, scope: !318)
!333 = !DILocation(line: 116, column: 3, scope: !327)
!334 = !DILocation(line: 116, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !327, file: !1, line: 116, column: 3)
!336 = !DILocation(line: 117, column: 3, scope: !329)
!337 = !DILocation(line: 687, column: 47, scope: !275, inlinedAt: !338)
!338 = distinct !DILocation(line: 118, column: 12, scope: !329)
!339 = !DILocation(line: 687, column: 57, scope: !275, inlinedAt: !338)
!340 = !DILocation(line: 687, column: 67, scope: !275, inlinedAt: !338)
!341 = !DILocation(line: 692, column: 12, scope: !284, inlinedAt: !338)
!342 = !DILocation(line: 692, column: 6, scope: !284, inlinedAt: !338)
!343 = !DILocation(line: 692, column: 15, scope: !284, inlinedAt: !338)
!344 = !DILocation(line: 692, column: 20, scope: !284, inlinedAt: !338)
!345 = !DILocation(line: 693, column: 10, scope: !284, inlinedAt: !338)
!346 = !DILocation(line: 692, column: 38, scope: !284, inlinedAt: !338)
!347 = !DILocation(line: 692, column: 31, scope: !284, inlinedAt: !338)
!348 = !DILocation(line: 692, column: 47, scope: !284, inlinedAt: !338)
!349 = !DILocation(line: 692, column: 59, scope: !284, inlinedAt: !338)
!350 = !DILocation(line: 692, column: 6, scope: !275, inlinedAt: !338)
!351 = !DILocation(line: 693, column: 23, scope: !284, inlinedAt: !338)
!352 = !DILocation(line: 693, column: 16, scope: !284, inlinedAt: !338)
!353 = !DILocation(line: 693, column: 18, scope: !284, inlinedAt: !338)
!354 = !DILocation(line: 693, column: 21, scope: !284, inlinedAt: !338)
!355 = !DILocation(line: 693, column: 3, scope: !284, inlinedAt: !338)
!356 = !DILocation(line: 695, column: 11, scope: !284, inlinedAt: !338)
!357 = !DILocation(line: 695, column: 3, scope: !284, inlinedAt: !338)
!358 = !DILocation(line: 0, scope: !284, inlinedAt: !338)
!359 = !DILocation(line: 0, scope: !329)
!360 = !DILocation(line: 696, column: 1, scope: !275, inlinedAt: !338)
!361 = !DILocation(line: 113, column: 7, scope: !318)
!362 = !DILocation(line: 119, column: 3, scope: !329)
!363 = !DILocation(line: 119, column: 3, scope: !318)
!364 = !DILocation(line: 120, column: 3, scope: !318)
