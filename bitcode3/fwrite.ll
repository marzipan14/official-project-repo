; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite.c"
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
define dso_local i64 @_fwrite_r(%struct._reent*, i8* noalias nocapture readonly, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !28 {
  %6 = alloca i32, align 4
  %7 = mul i64 %3, %2, !dbg !276
  %8 = icmp eq %struct._reent* %0, null, !dbg !279
  br i1 %8, label %14, label %9, !dbg !279

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !279
  %11 = load i32, i32* %10, align 8, !dbg !279, !tbaa !281
  %12 = icmp eq i32 %11, 0, !dbg !279
  br i1 %12, label %13, label %14, !dbg !278

; <label>:13:                                     ; preds = %9
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !279
  br label %14, !dbg !279

; <label>:14:                                     ; preds = %9, %5, %13
  %15 = bitcast i32* %6 to i8*, !dbg !290
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !290
  %16 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #4, !dbg !290
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !291
  %18 = load i16, i16* %17, align 8, !dbg !291, !tbaa !293
  %19 = and i16 %18, 8, !dbg !291
  %20 = icmp eq i16 %19, 0, !dbg !291
  br i1 %20, label %25, label %21, !dbg !291

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !291
  %23 = load i8*, i8** %22, align 8, !dbg !291, !tbaa !299
  %24 = icmp eq i8* %23, null, !dbg !291
  br i1 %24, label %25, label %30, !dbg !291

; <label>:25:                                     ; preds = %21, %14
  %26 = call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #4, !dbg !291
  %27 = icmp eq i32 %26, 0, !dbg !291
  %28 = icmp ne i64 %7, 0, !dbg !300
  %29 = and i1 %27, %28, !dbg !301
  br i1 %29, label %32, label %63, !dbg !301

; <label>:30:                                     ; preds = %21
  %31 = icmp eq i64 %7, 0, !dbg !300
  br i1 %31, label %63, label %32, !dbg !302

; <label>:32:                                     ; preds = %30, %25
  %33 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 6
  br label %36, !dbg !302

; <label>:36:                                     ; preds = %32, %60
  %37 = phi i64 [ 0, %32 ], [ %61, %60 ]
  %38 = getelementptr inbounds i8, i8* %1, i64 %37, !dbg !303
  %39 = load i8, i8* %38, align 1, !dbg !303, !tbaa !306
  %40 = sext i8 %39 to i32, !dbg !303
  %41 = load i32, i32* %33, align 4, !dbg !318, !tbaa !320
  %42 = add nsw i32 %41, -1, !dbg !318
  store i32 %42, i32* %33, align 4, !dbg !318, !tbaa !320
  %43 = icmp sgt i32 %41, 0, !dbg !321
  br i1 %43, label %50, label %44, !dbg !322

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %35, align 8, !dbg !323, !tbaa !324
  %46 = icmp sle i32 %41, %45, !dbg !325
  %47 = and i32 %40, 255, !dbg !326
  %48 = icmp eq i32 %47, 10, !dbg !326
  %49 = or i1 %48, %46, !dbg !327
  br i1 %49, label %53, label %50, !dbg !327

; <label>:50:                                     ; preds = %44, %36
  %51 = load i8*, i8** %34, align 8, !dbg !328, !tbaa !329
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !328
  store i8* %52, i8** %34, align 8, !dbg !328, !tbaa !329
  store i8 %39, i8* %51, align 1, !dbg !330, !tbaa !306
  br label %60, !dbg !331

; <label>:53:                                     ; preds = %44
  %54 = call i32 @__swbuf_r(%struct._reent* %0, i32 %40, %struct.__sFILE* nonnull %4) #4, !dbg !332
  %55 = icmp eq i32 %54, -1, !dbg !333
  br i1 %55, label %56, label %60, !dbg !331

; <label>:56:                                     ; preds = %53
  %57 = icmp eq i8 %39, 10, !dbg !334
  %58 = zext i1 %57 to i64, !dbg !337
  %59 = add i64 %37, %58, !dbg !337
  br label %63, !dbg !337

; <label>:60:                                     ; preds = %50, %53
  %61 = add nuw i64 %37, 1, !dbg !338
  %62 = icmp ult i64 %61, %7, !dbg !300
  br i1 %62, label %36, label %63, !dbg !302, !llvm.loop !339

; <label>:63:                                     ; preds = %60, %30, %56, %25
  %64 = phi i64 [ 0, %25 ], [ %59, %56 ], [ 0, %30 ], [ %61, %60 ], !dbg !341
  %65 = load i32, i32* %6, align 4, !dbg !342, !tbaa !343
  %66 = call i32 @pthread_setcancelstate(i32 %65, i32* nonnull %6) #4, !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !344
  %67 = udiv i64 %64, %2, !dbg !345
  ret i64 %67, !dbg !346
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
define dso_local i64 @fwrite(i8* noalias nocapture readonly, i64, i64, %struct.__sFILE*) local_unnamed_addr #0 !dbg !347 {
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !356
  %6 = tail call i64 @_fwrite_r(%struct._reent* %5, i8* %0, i64 %1, i64 %2, %struct.__sFILE* %3) #6, !dbg !357
  ret i64 %6, !dbg !358
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite.c", directory: "/root/.unikraft/apps/redis/build")
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
!28 = distinct !DISubprogram(name: "_fwrite_r", scope: !1, file: !1, line: 143, type: !29, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !260)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !34, !250, !253, !253, !256}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 58, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !36, line: 569, size: 14912, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !35, file: !36, line: 571, baseType: !5, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !36, line: 287, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 181, size: 1408, elements: !43)
!43 = !{!44, !47, !48, !49, !51, !52, !57, !58, !59, !67, !73, !78, !82, !83, !84, !85, !89, !93, !94, !95, !97, !98, !102, !117}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !42, file: !36, line: 182, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !42, file: !36, line: 183, baseType: !5, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !42, file: !36, line: 184, baseType: !5, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !36, line: 185, baseType: !50, size: 16, offset: 128)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !42, file: !36, line: 186, baseType: !50, size: 16, offset: 144)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !42, file: !36, line: 187, baseType: !53, size: 128, offset: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !36, line: 117, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !53, file: !36, line: 118, baseType: !45, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !53, file: !36, line: 119, baseType: !5, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !42, file: !36, line: 188, baseType: !5, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !42, file: !36, line: 195, baseType: !22, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !42, file: !36, line: 197, baseType: !60, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !34, !22, !66, !5}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !64, line: 145, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !36, line: 199, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!63, !34, !22, !71, !5}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !36, line: 202, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !34, !22, !77, !5}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !64, line: 114, baseType: !65)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !36, line: 203, baseType: !79, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!5, !34, !22}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !36, line: 206, baseType: !53, size: 128, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !42, file: !36, line: 207, baseType: !45, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !36, line: 208, baseType: !5, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !36, line: 211, baseType: !86, size: 24, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !36, line: 212, baseType: !90, size: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !36, line: 215, baseType: !53, size: 128, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !36, line: 218, baseType: !5, size: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !36, line: 219, baseType: !96, size: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !64, line: 44, baseType: !65)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !42, file: !36, line: 222, baseType: !34, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !36, line: 226, baseType: !99, size: 32, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !64, line: 175, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !101, line: 12, baseType: !5)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !42, file: !36, line: 228, baseType: !103, size: 64, offset: 1312)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !64, line: 171, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 163, size: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !104, file: !64, line: 165, baseType: !5, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !104, file: !64, line: 170, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !64, line: 166, size: 32, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !108, file: !64, line: 168, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !32, line: 124, baseType: !112)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !108, file: !64, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !36, line: 229, baseType: !5, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !35, file: !36, line: 578, baseType: !5, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !35, file: !36, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 200, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !35, file: !36, line: 582, baseType: !5, size: 32, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !35, file: !36, line: 583, baseType: !127, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !36, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !35, file: !36, line: 585, baseType: !5, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !35, file: !36, line: 587, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !34}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !35, file: !36, line: 590, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !36, line: 47, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !36, line: 49, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !136, file: !36, line: 51, baseType: !144, size: 32, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32, elements: !91)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !36, line: 25, baseType: !112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !35, file: !36, line: 591, baseType: !5, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !35, file: !36, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !35, file: !36, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !35, file: !36, line: 596, baseType: !5, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !35, file: !36, line: 597, baseType: !66, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !35, file: !36, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !36, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !36, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !36, line: 603, baseType: !112, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !36, line: 604, baseType: !66, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !36, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !36, line: 606, baseType: !165, size: 288, offset: 352)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !36, line: 55, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !36, line: 57, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !36, line: 58, baseType: !5, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !36, line: 59, baseType: !5, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !36, line: 60, baseType: !5, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !36, line: 61, baseType: !5, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !36, line: 62, baseType: !5, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !36, line: 63, baseType: !5, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !36, line: 64, baseType: !5, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !36, line: 65, baseType: !5, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !36, line: 607, baseType: !5, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !36, line: 608, baseType: !178, size: 64, offset: 704)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !36, line: 609, baseType: !180, size: 112, offset: 768)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !36, line: 319, size: 112, elements: !181)
!181 = !{!182, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !36, line: 320, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !87)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !36, line: 321, baseType: !183, size: 48, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !36, line: 322, baseType: !184, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !36, line: 610, baseType: !103, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !36, line: 611, baseType: !103, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !36, line: 612, baseType: !103, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !36, line: 613, baseType: !191, size: 64, offset: 1088)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !36, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !36, line: 615, baseType: !5, size: 32, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !36, line: 616, baseType: !103, size: 64, offset: 1376)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !36, line: 617, baseType: !103, size: 64, offset: 1440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !36, line: 618, baseType: !103, size: 64, offset: 1504)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !36, line: 619, baseType: !103, size: 64, offset: 1568)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !36, line: 620, baseType: !103, size: 64, offset: 1632)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !36, line: 621, baseType: !5, size: 32, offset: 1696)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !36, line: 631, baseType: !206, size: 2880)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !36, line: 626, size: 2880, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !206, file: !36, line: 629, baseType: !209, size: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1920, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !206, file: !36, line: 630, baseType: !213, size: 960, offset: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 960, elements: !210)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !35, file: !36, line: 636, baseType: !215, size: 64, offset: 4032)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !36, line: 93, size: 6336, elements: !217)
!217 = !{!218, !219, !220, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !36, line: 94, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !216, file: !36, line: 95, baseType: !5, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !216, file: !36, line: 97, baseType: !221, size: 2048, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !225)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !216, file: !36, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !36, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !36, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !225)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !36, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !36, line: 78, baseType: !145, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !36, line: 81, baseType: !145, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !35, file: !36, line: 637, baseType: !216, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !35, file: !36, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !5}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !35, file: !36, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !36, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !36, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !36, line: 294, baseType: !5, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !36, line: 295, baseType: !40, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !35, file: !36, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4224, elements: !87)
!250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !254, line: 40, baseType: !255)
!254 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !64, line: 129, baseType: !33)
!256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !259, line: 66, baseType: !41)
!259 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !271}
!261 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 143, type: !34)
!262 = !DILocalVariable(name: "buf", arg: 2, scope: !28, file: !1, line: 143, type: !250)
!263 = !DILocalVariable(name: "size", arg: 3, scope: !28, file: !1, line: 143, type: !253)
!264 = !DILocalVariable(name: "count", arg: 4, scope: !28, file: !1, line: 143, type: !253)
!265 = !DILocalVariable(name: "fp", arg: 5, scope: !28, file: !1, line: 143, type: !256)
!266 = !DILocalVariable(name: "n", scope: !28, file: !1, line: 150, type: !253)
!267 = !DILocalVariable(name: "i", scope: !28, file: !1, line: 178, type: !253)
!268 = !DILocalVariable(name: "p", scope: !28, file: !1, line: 179, type: !71)
!269 = !DILocalVariable(name: "_check_init_ptr", scope: !270, file: !1, line: 181, type: !34)
!270 = distinct !DILexicalBlock(scope: !28, file: !1, line: 181, column: 3)
!271 = !DILocalVariable(name: "__oldfpcancel", scope: !272, file: !1, line: 183, type: !5)
!272 = distinct !DILexicalBlock(scope: !28, file: !1, line: 183, column: 3)
!273 = !DILocation(line: 143, column: 1, scope: !28)
!274 = !DILocation(line: 178, column: 10, scope: !28)
!275 = !DILocation(line: 179, column: 16, scope: !28)
!276 = !DILocation(line: 180, column: 13, scope: !28)
!277 = !DILocation(line: 150, column: 10, scope: !28)
!278 = !DILocation(line: 181, column: 3, scope: !270)
!279 = !DILocation(line: 181, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !270, file: !1, line: 181, column: 3)
!281 = !{!282, !283, i64 80}
!282 = !{!"_reent", !283, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !283, i64 32, !284, i64 36, !283, i64 64, !286, i64 72, !283, i64 80, !286, i64 88, !286, i64 96, !283, i64 104, !286, i64 112, !286, i64 120, !283, i64 128, !286, i64 136, !284, i64 144, !286, i64 504, !287, i64 512, !286, i64 1304, !289, i64 1312, !284, i64 1336}
!283 = !{!"int", !284, i64 0}
!284 = !{!"omnipotent char", !285, i64 0}
!285 = !{!"Simple C/C++ TBAA"}
!286 = !{!"any pointer", !284, i64 0}
!287 = !{!"_atexit", !286, i64 0, !283, i64 8, !284, i64 16, !288, i64 272}
!288 = !{!"_on_exit_args", !284, i64 0, !284, i64 256, !283, i64 512, !283, i64 516}
!289 = !{!"_glue", !286, i64 0, !283, i64 8, !286, i64 16}
!290 = !DILocation(line: 183, column: 3, scope: !272)
!291 = !DILocation(line: 186, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !272, file: !1, line: 186, column: 7)
!293 = !{!294, !295, i64 16}
!294 = !{!"__sFILE", !286, i64 0, !283, i64 8, !283, i64 12, !295, i64 16, !295, i64 18, !296, i64 24, !283, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !296, i64 88, !286, i64 104, !283, i64 112, !284, i64 116, !284, i64 119, !296, i64 120, !283, i64 136, !297, i64 144, !286, i64 152, !283, i64 160, !298, i64 164, !283, i64 172}
!295 = !{!"short", !284, i64 0}
!296 = !{!"__sbuf", !286, i64 0, !283, i64 8}
!297 = !{!"long", !284, i64 0}
!298 = !{!"", !283, i64 0, !284, i64 4}
!299 = !{!294, !286, i64 24}
!300 = !DILocation(line: 189, column: 12, scope: !272)
!301 = !DILocation(line: 186, column: 7, scope: !272)
!302 = !DILocation(line: 189, column: 3, scope: !272)
!303 = !DILocation(line: 191, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 191, column: 11)
!305 = distinct !DILexicalBlock(scope: !272, file: !1, line: 190, column: 5)
!306 = !{!284, !284, i64 0}
!307 = !DILocalVariable(name: "_ptr", arg: 1, scope: !308, file: !259, line: 687, type: !34)
!308 = distinct !DISubprogram(name: "__sputc_r", scope: !259, file: !259, line: 687, type: !309, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!5, !34, !5, !257}
!311 = !{!307, !312, !313}
!312 = !DILocalVariable(name: "_c", arg: 2, scope: !308, file: !259, line: 687, type: !5)
!313 = !DILocalVariable(name: "_p", arg: 3, scope: !308, file: !259, line: 687, type: !257)
!314 = !DILocation(line: 687, column: 47, scope: !308, inlinedAt: !315)
!315 = distinct !DILocation(line: 191, column: 11, scope: !304)
!316 = !DILocation(line: 687, column: 57, scope: !308, inlinedAt: !315)
!317 = !DILocation(line: 687, column: 67, scope: !308, inlinedAt: !315)
!318 = !DILocation(line: 692, column: 6, scope: !319, inlinedAt: !315)
!319 = distinct !DILexicalBlock(scope: !308, file: !259, line: 692, column: 6)
!320 = !{!294, !283, i64 12}
!321 = !DILocation(line: 692, column: 15, scope: !319, inlinedAt: !315)
!322 = !DILocation(line: 692, column: 20, scope: !319, inlinedAt: !315)
!323 = !DILocation(line: 692, column: 38, scope: !319, inlinedAt: !315)
!324 = !{!294, !283, i64 40}
!325 = !DILocation(line: 692, column: 31, scope: !319, inlinedAt: !315)
!326 = !DILocation(line: 692, column: 59, scope: !319, inlinedAt: !315)
!327 = !DILocation(line: 692, column: 47, scope: !319, inlinedAt: !315)
!328 = !DILocation(line: 693, column: 18, scope: !319, inlinedAt: !315)
!329 = !{!294, !286, i64 0}
!330 = !DILocation(line: 693, column: 21, scope: !319, inlinedAt: !315)
!331 = !DILocation(line: 191, column: 11, scope: !305)
!332 = !DILocation(line: 695, column: 11, scope: !319, inlinedAt: !315)
!333 = !DILocation(line: 191, column: 37, scope: !304)
!334 = !DILocation(line: 192, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 192, column: 7)
!336 = distinct !DILexicalBlock(scope: !304, file: !1, line: 191, column: 45)
!337 = !DILocation(line: 192, column: 7, scope: !336)
!338 = !DILocation(line: 197, column: 8, scope: !305)
!339 = distinct !{!339, !302, !340}
!340 = !DILocation(line: 198, column: 5, scope: !272)
!341 = !DILocation(line: 0, scope: !28)
!342 = !DILocation(line: 201, column: 3, scope: !272)
!343 = !{!283, !283, i64 0}
!344 = !DILocation(line: 201, column: 3, scope: !28)
!345 = !DILocation(line: 202, column: 12, scope: !28)
!346 = !DILocation(line: 202, column: 3, scope: !28)
!347 = distinct !DISubprogram(name: "fwrite", scope: !1, file: !1, line: 208, type: !348, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!31, !250, !253, !253, !257}
!350 = !{!351, !352, !353, !354}
!351 = !DILocalVariable(name: "buf", arg: 1, scope: !347, file: !1, line: 208, type: !250)
!352 = !DILocalVariable(name: "size", arg: 2, scope: !347, file: !1, line: 208, type: !253)
!353 = !DILocalVariable(name: "count", arg: 3, scope: !347, file: !1, line: 208, type: !253)
!354 = !DILocalVariable(name: "fp", arg: 4, scope: !347, file: !1, line: 208, type: !257)
!355 = !DILocation(line: 208, column: 1, scope: !347)
!356 = !DILocation(line: 214, column: 21, scope: !347)
!357 = !DILocation(line: 214, column: 10, scope: !347)
!358 = !DILocation(line: 214, column: 3, scope: !347)
