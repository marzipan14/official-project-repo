; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ftello.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ftello.c"
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
define dso_local i64 @_ftello_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !30 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct._reent* %0, null, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %4, label %10, label %5, !dbg !261

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !261
  %7 = load i32, i32* %6, align 8, !dbg !261, !tbaa !263
  %8 = icmp eq i32 %7, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %8, label %9, label %10, !dbg !260

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br label %10, !dbg !261

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = bitcast i32* %3 to i8*, !dbg !272
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !272
  %12 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !272
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 10, !dbg !273
  %14 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %13, align 8, !dbg !273, !tbaa !275
  %15 = icmp eq i64 (%struct._reent*, i8*, i64, i32)* %14, null, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %15, label %16, label %20, !dbg !282

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !283
  store i32 29, i32* %17, align 8, !dbg !285, !tbaa !286
  %18 = load i32, i32* %3, align 4, !dbg !287, !tbaa !288
  %19 = call i32 @pthread_setcancelstate(i32 %18, i32* nonnull %3) #4, !dbg !287
  br label %79, !dbg !289

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !290
  %22 = load i16, i16* %21, align 8, !dbg !290, !tbaa !292
  %23 = and i16 %22, 8, !dbg !293
  %24 = icmp eq i16 %23, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %24, label %28, label %25, !dbg !294

; <label>:25:                                     ; preds = %20
  %26 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %27 = load i16, i16* %21, align 8, !dbg !296, !tbaa !292
  br label %28, !dbg !295

; <label>:28:                                     ; preds = %20, %25
  %29 = phi i16 [ %22, %20 ], [ %27, %25 ], !dbg !296
  %30 = and i16 %29, 4096, !dbg !298
  %31 = icmp eq i16 %30, 0, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %31, label %35, label %32, !dbg !299

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 19, !dbg !300
  %34 = load i64, i64* %33, align 8, !dbg !300, !tbaa !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br label %46, !dbg !303

; <label>:35:                                     ; preds = %28
  %36 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %13, align 8, !dbg !304, !tbaa !275
  %37 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !306
  %38 = load i8*, i8** %37, align 8, !dbg !306, !tbaa !307
  %39 = call i64 %36(%struct._reent* %0, i8* %38, i64 0, i32 1) #4, !dbg !308
  %40 = icmp eq i64 %39, -1, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %40, label %43, label %41, !dbg !311

; <label>:41:                                     ; preds = %35
  %42 = load i16, i16* %21, align 8, !dbg !312, !tbaa !292
  br label %46, !dbg !311

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* %3, align 4, !dbg !314, !tbaa !288
  %45 = call i32 @pthread_setcancelstate(i32 %44, i32* nonnull %3) #4, !dbg !314
  br label %79, !dbg !316

; <label>:46:                                     ; preds = %41, %32
  %47 = phi i16 [ %29, %32 ], [ %42, %41 ], !dbg !312
  %48 = phi i64 [ %34, %32 ], [ %39, %41 ], !dbg !317
  %49 = sext i16 %47 to i32, !dbg !318
  %50 = and i32 %49, 4, !dbg !319
  %51 = icmp eq i32 %50, 0, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %51, label %65, label %52, !dbg !320

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !321
  %54 = load i32, i32* %53, align 8, !dbg !321, !tbaa !323
  %55 = sext i32 %54 to i64, !dbg !324
  %56 = sub nsw i64 %48, %55, !dbg !325
  %57 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !326
  %58 = load i8*, i8** %57, align 8, !dbg !326, !tbaa !328
  %59 = icmp eq i8* %58, null, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %59, label %80, label %60, !dbg !329

; <label>:60:                                     ; preds = %52
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !330
  %62 = load i32, i32* %61, align 8, !dbg !330, !tbaa !331
  %63 = sext i32 %62 to i64, !dbg !332
  %64 = sub nsw i64 %56, %63, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br label %80, !dbg !334

; <label>:65:                                     ; preds = %46
  %66 = and i32 %49, 8, !dbg !335
  %67 = icmp eq i32 %66, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %67, label %80, label %68, !dbg !337

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !338
  %70 = load i8*, i8** %69, align 8, !dbg !338, !tbaa !339
  %71 = icmp eq i8* %70, null, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %71, label %80, label %72, !dbg !341

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !342
  %74 = bitcast i8** %73 to i64*, !dbg !342
  %75 = load i64, i64* %74, align 8, !dbg !342, !tbaa !344
  %76 = ptrtoint i8* %70 to i64, !dbg !345
  %77 = add i64 %48, %76, !dbg !345
  %78 = sub i64 %77, %75, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br label %80, !dbg !347

; <label>:79:                                     ; preds = %16, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !349
  br label %84

; <label>:80:                                     ; preds = %52, %68, %65, %72, %60
  %81 = phi i64 [ %64, %60 ], [ %56, %52 ], [ %78, %72 ], [ %48, %68 ], [ %48, %65 ], !dbg !350
  %82 = load i32, i32* %3, align 4, !dbg !351, !tbaa !288
  %83 = call i32 @pthread_setcancelstate(i32 %82, i32* nonnull %3) #4, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %84, !dbg !352

; <label>:84:                                     ; preds = %79, %80
  %85 = phi i64 [ %81, %80 ], [ -1, %79 ], !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  ret i64 %85, !dbg !354
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
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @ftello(%struct.__sFILE*) local_unnamed_addr #0 !dbg !355 {
  %2 = tail call %struct._reent* @__getreent() #4, !dbg !364
  %3 = tail call i64 @_ftello_r(%struct._reent* %2, %struct.__sFILE* %0) #6, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  ret i64 %3, !dbg !366
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

!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ftello.c", directory: "/root/.unikraft/apps/redis/build")
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
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !24, line: 114, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!30 = distinct !DISubprogram(name: "_ftello_r", scope: !1, file: !1, line: 102, type: !31, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !248}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !24, line: 44, baseType: !25)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !36, line: 569, size: 14912, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !35, file: !36, line: 571, baseType: !5, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !36, line: 287, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 181, size: 1408, elements: !43)
!43 = !{!44, !47, !48, !49, !51, !52, !57, !58, !59, !66, !72, !76, !80, !81, !82, !83, !87, !91, !92, !93, !94, !95, !99, !115}
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
!62 = !{!63, !34, !22, !64, !5}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !24, line: 145, baseType: !25)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !36, line: 199, baseType: !67, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!63, !34, !22, !70, !5}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !36, line: 202, baseType: !73, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!23, !34, !22, !23, !5}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !36, line: 203, baseType: !77, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!5, !34, !22}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !36, line: 206, baseType: !53, size: 128, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !42, file: !36, line: 207, baseType: !45, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !36, line: 208, baseType: !5, size: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !36, line: 211, baseType: !84, size: 24, offset: 928)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !36, line: 212, baseType: !88, size: 8, offset: 952)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !36, line: 215, baseType: !53, size: 128, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !36, line: 218, baseType: !5, size: 32, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !36, line: 219, baseType: !33, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !42, file: !36, line: 222, baseType: !34, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !36, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !24, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !42, file: !36, line: 228, baseType: !100, size: 64, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !24, line: 171, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 163, size: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !101, file: !24, line: 165, baseType: !5, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !101, file: !24, line: 170, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !24, line: 166, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !105, file: !24, line: 168, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !109, line: 124, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !105, file: !24, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !36, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !35, file: !36, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !35, file: !36, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 200, elements: !121)
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
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !89)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !36, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !35, file: !36, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !35, file: !36, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !35, file: !36, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !35, file: !36, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !35, file: !36, line: 597, baseType: !64, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !35, file: !36, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !36, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !36, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !36, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !36, line: 604, baseType: !64, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !36, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 208, elements: !160)
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
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !85)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !36, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !36, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !36, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !36, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !36, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !36, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !36, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !194)
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
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1920, elements: !208)
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
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !223)
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
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4224, elements: !85)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !41)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !{!252, !253, !254, !255, !257}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !30, file: !1, line: 102, type: !34)
!253 = !DILocalVariable(name: "fp", arg: 2, scope: !30, file: !1, line: 102, type: !248)
!254 = !DILocalVariable(name: "pos", scope: !30, file: !1, line: 106, type: !23)
!255 = !DILocalVariable(name: "_check_init_ptr", scope: !256, file: !1, line: 110, type: !34)
!256 = distinct !DILexicalBlock(scope: !30, file: !1, line: 110, column: 3)
!257 = !DILocalVariable(name: "__oldfpcancel", scope: !258, file: !1, line: 112, type: !5)
!258 = distinct !DILexicalBlock(scope: !30, file: !1, line: 112, column: 3)
!259 = !DILocation(line: 102, column: 1, scope: !30)
!260 = !DILocation(line: 110, column: 3, scope: !256)
!261 = !DILocation(line: 110, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 110, column: 3)
!263 = !{!264, !265, i64 80}
!264 = !{!"_reent", !265, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !265, i64 32, !266, i64 36, !265, i64 64, !268, i64 72, !265, i64 80, !268, i64 88, !268, i64 96, !265, i64 104, !268, i64 112, !268, i64 120, !265, i64 128, !268, i64 136, !266, i64 144, !268, i64 504, !269, i64 512, !268, i64 1304, !271, i64 1312, !266, i64 1336}
!265 = !{!"int", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !{!"any pointer", !266, i64 0}
!269 = !{!"_atexit", !268, i64 0, !265, i64 8, !266, i64 16, !270, i64 272}
!270 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !265, i64 512, !265, i64 516}
!271 = !{!"_glue", !268, i64 0, !265, i64 8, !268, i64 16}
!272 = !DILocation(line: 112, column: 3, scope: !258)
!273 = !DILocation(line: 114, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !1, line: 114, column: 7)
!275 = !{!276, !268, i64 72}
!276 = !{!"__sFILE", !268, i64 0, !265, i64 8, !265, i64 12, !277, i64 16, !277, i64 18, !278, i64 24, !265, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !278, i64 88, !268, i64 104, !265, i64 112, !266, i64 116, !266, i64 119, !278, i64 120, !265, i64 136, !279, i64 144, !268, i64 152, !265, i64 160, !280, i64 164, !265, i64 172}
!277 = !{!"short", !266, i64 0}
!278 = !{!"__sbuf", !268, i64 0, !265, i64 8}
!279 = !{!"long", !266, i64 0}
!280 = !{!"", !265, i64 0, !266, i64 4}
!281 = !DILocation(line: 114, column: 17, scope: !274)
!282 = !DILocation(line: 114, column: 7, scope: !258)
!283 = !DILocation(line: 116, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !274, file: !1, line: 115, column: 5)
!285 = !DILocation(line: 116, column: 19, scope: !284)
!286 = !{!264, !265, i64 0}
!287 = !DILocation(line: 117, column: 7, scope: !284)
!288 = !{!265, !265, i64 0}
!289 = !DILocation(line: 118, column: 7, scope: !284)
!290 = !DILocation(line: 125, column: 11, scope: !291)
!291 = distinct !DILexicalBlock(scope: !258, file: !1, line: 125, column: 7)
!292 = !{!276, !277, i64 16}
!293 = !DILocation(line: 125, column: 18, scope: !291)
!294 = !DILocation(line: 125, column: 7, scope: !258)
!295 = !DILocation(line: 126, column: 5, scope: !291)
!296 = !DILocation(line: 127, column: 11, scope: !297)
!297 = distinct !DILexicalBlock(scope: !258, file: !1, line: 127, column: 7)
!298 = !DILocation(line: 127, column: 18, scope: !297)
!299 = !DILocation(line: 127, column: 7, scope: !258)
!300 = !DILocation(line: 128, column: 15, scope: !297)
!301 = !{!276, !279, i64 144}
!302 = !DILocation(line: 106, column: 11, scope: !30)
!303 = !DILocation(line: 128, column: 5, scope: !297)
!304 = !DILocation(line: 131, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !1, line: 130, column: 5)
!306 = !DILocation(line: 131, column: 33, scope: !305)
!307 = !{!276, !268, i64 48}
!308 = !DILocation(line: 131, column: 13, scope: !305)
!309 = !DILocation(line: 132, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !1, line: 132, column: 11)
!311 = !DILocation(line: 132, column: 11, scope: !305)
!312 = !DILocation(line: 138, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !258, file: !1, line: 138, column: 7)
!314 = !DILocation(line: 134, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !1, line: 133, column: 9)
!316 = !DILocation(line: 135, column: 11, scope: !315)
!317 = !DILocation(line: 0, scope: !305)
!318 = !DILocation(line: 138, column: 7, scope: !313)
!319 = !DILocation(line: 138, column: 18, scope: !313)
!320 = !DILocation(line: 138, column: 7, scope: !258)
!321 = !DILocation(line: 145, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !313, file: !1, line: 139, column: 5)
!323 = !{!276, !265, i64 8}
!324 = !DILocation(line: 145, column: 14, scope: !322)
!325 = !DILocation(line: 145, column: 11, scope: !322)
!326 = !DILocation(line: 146, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 146, column: 11)
!328 = !{!276, !268, i64 88}
!329 = !DILocation(line: 146, column: 11, scope: !322)
!330 = !DILocation(line: 147, column: 13, scope: !327)
!331 = !{!276, !265, i64 112}
!332 = !DILocation(line: 147, column: 9, scope: !327)
!333 = !DILocation(line: 147, column: 6, scope: !327)
!334 = !DILocation(line: 147, column: 2, scope: !327)
!335 = !DILocation(line: 149, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !313, file: !1, line: 149, column: 12)
!337 = !DILocation(line: 149, column: 33, scope: !336)
!338 = !DILocation(line: 149, column: 40, scope: !336)
!339 = !{!276, !268, i64 0}
!340 = !DILocation(line: 149, column: 43, scope: !336)
!341 = !DILocation(line: 149, column: 12, scope: !313)
!342 = !DILocation(line: 156, column: 31, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !1, line: 150, column: 5)
!344 = !{!276, !268, i64 24}
!345 = !DILocation(line: 156, column: 21, scope: !343)
!346 = !DILocation(line: 156, column: 11, scope: !343)
!347 = !DILocation(line: 157, column: 5, scope: !343)
!348 = !DILocation(line: 0, scope: !315)
!349 = !DILocation(line: 159, column: 3, scope: !30)
!350 = !DILocation(line: 0, scope: !297)
!351 = !DILocation(line: 159, column: 3, scope: !258)
!352 = !DILocation(line: 160, column: 3, scope: !30)
!353 = !DILocation(line: 0, scope: !284)
!354 = !DILocation(line: 161, column: 1, scope: !30)
!355 = distinct !DISubprogram(name: "ftello", scope: !1, file: !1, line: 166, type: !356, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !361)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !248}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !359, line: 173, baseType: !360)
!359 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 100, baseType: !33)
!361 = !{!362}
!362 = !DILocalVariable(name: "fp", arg: 1, scope: !355, file: !1, line: 166, type: !248)
!363 = !DILocation(line: 166, column: 1, scope: !355)
!364 = !DILocation(line: 169, column: 21, scope: !355)
!365 = !DILocation(line: 169, column: 10, scope: !355)
!366 = !DILocation(line: 169, column: 3, scope: !355)
