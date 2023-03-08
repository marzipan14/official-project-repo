; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fclose.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fclose.c"
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
define dso_local i32 @_fclose_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !29 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.__sFILE* %1, null, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %4, label %59, label %5, !dbg !261

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct._reent* %0, null, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %6, label %12, label %7, !dbg !263

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !263
  %9 = load i32, i32* %8, align 8, !dbg !263, !tbaa !265
  %10 = icmp eq i32 %9, 0, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %10, label %11, label %12, !dbg !262

; <label>:11:                                     ; preds = %7
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br label %12, !dbg !263

; <label>:12:                                     ; preds = %7, %5, %11
  %13 = bitcast i32* %3 to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !274
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !276
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !277
  %16 = load i16, i16* %15, align 8, !dbg !277, !tbaa !279
  %17 = icmp eq i16 %16, 0, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %17, label %18, label %21, !dbg !286

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !287, !tbaa !289
  %20 = call i32 @pthread_setcancelstate(i32 %19, i32* nonnull %3) #4, !dbg !290
  br label %57, !dbg !291

; <label>:21:                                     ; preds = %12
  %22 = call i32 @__sflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !292
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 11, !dbg !294
  %24 = load i32 (%struct._reent*, i8*)*, i32 (%struct._reent*, i8*)** %23, align 8, !dbg !294, !tbaa !296
  %25 = icmp eq i32 (%struct._reent*, i8*)* %24, null, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %25, label %32, label %26, !dbg !298

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !299
  %28 = load i8*, i8** %27, align 8, !dbg !299, !tbaa !300
  %29 = call i32 %24(%struct._reent* %0, i8* %28) #4, !dbg !301
  %30 = icmp slt i32 %29, 0, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %30, label %31, label %32, !dbg !303

; <label>:31:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br label %32, !dbg !304

; <label>:32:                                     ; preds = %21, %31, %26
  %33 = phi i32 [ -1, %31 ], [ %22, %26 ], [ %22, %21 ], !dbg !305
  %34 = load i16, i16* %15, align 8, !dbg !306, !tbaa !279
  %35 = trunc i16 %34 to i8, !dbg !308
  %36 = icmp slt i8 %35, 0, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %36, label %37, label %40, !dbg !309

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !310
  %39 = load i8*, i8** %38, align 8, !dbg !310, !tbaa !311
  call void @free(i8* %39) #4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br label %40, !dbg !310

; <label>:40:                                     ; preds = %37, %32
  %41 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !312
  %42 = load i8*, i8** %41, align 8, !dbg !312, !tbaa !314
  %43 = icmp eq i8* %42, null, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %43, label %49, label %44, !dbg !315

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !316
  %46 = icmp eq i8* %42, %45, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %46, label %48, label %47, !dbg !319

; <label>:47:                                     ; preds = %44
  call void @free(i8* nonnull %42) #4, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br label %48, !dbg !316

; <label>:48:                                     ; preds = %44, %47
  store i8* null, i8** %41, align 8, !dbg !319, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br label %49, !dbg !319

; <label>:49:                                     ; preds = %40, %48
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 17, i32 0, !dbg !320
  %51 = load i8*, i8** %50, align 8, !dbg !320, !tbaa !322
  %52 = icmp eq i8* %51, null, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %52, label %54, label %53, !dbg !323

; <label>:53:                                     ; preds = %49
  call void @free(i8* nonnull %51) #4, !dbg !324
  store i8* null, i8** %50, align 8, !dbg !324, !tbaa !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br label %54, !dbg !324

; <label>:54:                                     ; preds = %49, %53
  call void @__sfp_lock_acquire() #4, !dbg !326
  store i16 0, i16* %15, align 8, !dbg !327, !tbaa !279
  call void @__sfp_lock_release() #4, !dbg !328
  %55 = load i32, i32* %3, align 4, !dbg !329, !tbaa !289
  %56 = call i32 @pthread_setcancelstate(i32 %55, i32* nonnull %3) #4, !dbg !330
  br label %57, !dbg !331

; <label>:57:                                     ; preds = %54, %18
  %58 = phi i32 [ 0, %18 ], [ %33, %54 ], !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !333
  br label %59

; <label>:59:                                     ; preds = %2, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %2 ], !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  ret i32 %60, !dbg !333
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
declare dso_local i32 @__sflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #0 !dbg !334 {
  %2 = tail call %struct._reent* @__getreent() #4, !dbg !340
  %3 = tail call i32 @_fclose_r(%struct._reent* %2, %struct.__sFILE* %0) #6, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  ret i32 %3, !dbg !342
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fclose.c", directory: "/root/.unikraft/apps/redis/build")
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
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "_fclose_r", scope: !1, file: !1, line: 68, type: !30, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!30 = !DISubroutineType(types: !31)
!31 = !{!5, !32, !248}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !34, line: 569, size: 14912, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36, !37, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !33, file: !34, line: 571, baseType: !5, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !34, line: 287, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !34, line: 181, size: 1408, elements: !41)
!41 = !{!42, !45, !46, !47, !49, !50, !55, !56, !57, !64, !70, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !34, line: 182, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !34, line: 183, baseType: !5, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !34, line: 184, baseType: !5, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !34, line: 185, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !34, line: 186, baseType: !48, size: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !34, line: 187, baseType: !51, size: 128, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !34, line: 117, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !34, line: 118, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !34, line: 119, baseType: !5, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !34, line: 188, baseType: !5, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !34, line: 195, baseType: !22, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !34, line: 197, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !32, !22, !23, !5}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !62, line: 145, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !34, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!61, !32, !22, !68, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !34, line: 202, baseType: !71, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !32, !22, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !62, line: 114, baseType: !63)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !34, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !32, !22}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !34, line: 206, baseType: !51, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !40, file: !34, line: 207, baseType: !43, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !34, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !34, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !34, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !34, line: 215, baseType: !51, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !34, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !34, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !62, line: 44, baseType: !63)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !40, file: !34, line: 222, baseType: !32, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !34, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !62, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !40, file: !34, line: 228, baseType: !100, size: 64, offset: 1312)
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
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !34, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !33, file: !34, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !33, file: !34, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !33, file: !34, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !33, file: !34, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !34, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !33, file: !34, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !33, file: !34, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !32}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !33, file: !34, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !34, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !34, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !34, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !34, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !33, file: !34, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !33, file: !34, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !33, file: !34, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !33, file: !34, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !33, file: !34, line: 597, baseType: !23, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !33, file: !34, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !34, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !34, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !34, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !34, line: 604, baseType: !23, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !34, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !34, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !34, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !34, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !34, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !34, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !34, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !34, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !34, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !34, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !34, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !34, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !34, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !34, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !34, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !34, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !34, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !34, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !34, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !34, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !34, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !34, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !34, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !34, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !34, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !34, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !34, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !34, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !34, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !34, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !34, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !34, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !34, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !34, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !34, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !33, file: !34, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !34, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !34, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !34, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !34, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !34, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !34, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !34, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !34, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !34, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !34, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !33, file: !34, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !33, file: !34, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !33, file: !34, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !34, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !34, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !34, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !34, line: 295, baseType: !38, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !33, file: !34, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !39)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !{!252, !253, !254, !255, !257}
!252 = !DILocalVariable(name: "rptr", arg: 1, scope: !29, file: !1, line: 68, type: !32)
!253 = !DILocalVariable(name: "fp", arg: 2, scope: !29, file: !1, line: 68, type: !248)
!254 = !DILocalVariable(name: "r", scope: !29, file: !1, line: 72, type: !5)
!255 = !DILocalVariable(name: "_check_init_ptr", scope: !256, file: !1, line: 77, type: !32)
!256 = distinct !DILexicalBlock(scope: !29, file: !1, line: 77, column: 3)
!257 = !DILocalVariable(name: "__oldcancel", scope: !29, file: !1, line: 82, type: !5)
!258 = !DILocation(line: 68, column: 1, scope: !29)
!259 = !DILocation(line: 74, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !29, file: !1, line: 74, column: 7)
!261 = !DILocation(line: 74, column: 7, scope: !29)
!262 = !DILocation(line: 77, column: 3, scope: !256)
!263 = !DILocation(line: 77, column: 3, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !1, line: 77, column: 3)
!265 = !{!266, !267, i64 80}
!266 = !{!"_reent", !267, i64 0, !270, i64 8, !270, i64 16, !270, i64 24, !267, i64 32, !268, i64 36, !267, i64 64, !270, i64 72, !267, i64 80, !270, i64 88, !270, i64 96, !267, i64 104, !270, i64 112, !270, i64 120, !267, i64 128, !270, i64 136, !268, i64 144, !270, i64 504, !271, i64 512, !270, i64 1304, !273, i64 1312, !268, i64 1336}
!267 = !{!"int", !268, i64 0}
!268 = !{!"omnipotent char", !269, i64 0}
!269 = !{!"Simple C/C++ TBAA"}
!270 = !{!"any pointer", !268, i64 0}
!271 = !{!"_atexit", !270, i64 0, !267, i64 8, !268, i64 16, !272, i64 272}
!272 = !{!"_on_exit_args", !268, i64 0, !268, i64 256, !267, i64 512, !267, i64 516}
!273 = !{!"_glue", !270, i64 0, !267, i64 8, !270, i64 16}
!274 = !DILocation(line: 82, column: 3, scope: !29)
!275 = !DILocation(line: 82, column: 7, scope: !29)
!276 = !DILocation(line: 83, column: 3, scope: !29)
!277 = !DILocation(line: 88, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !29, file: !1, line: 88, column: 7)
!279 = !{!280, !281, i64 16}
!280 = !{!"__sFILE", !270, i64 0, !267, i64 8, !267, i64 12, !281, i64 16, !281, i64 18, !282, i64 24, !267, i64 40, !270, i64 48, !270, i64 56, !270, i64 64, !270, i64 72, !270, i64 80, !282, i64 88, !270, i64 104, !267, i64 112, !268, i64 116, !268, i64 119, !282, i64 120, !267, i64 136, !283, i64 144, !270, i64 152, !267, i64 160, !284, i64 164, !267, i64 172}
!281 = !{!"short", !268, i64 0}
!282 = !{!"__sbuf", !270, i64 0, !267, i64 8}
!283 = !{!"long", !268, i64 0}
!284 = !{!"", !267, i64 0, !268, i64 4}
!285 = !DILocation(line: 88, column: 18, scope: !278)
!286 = !DILocation(line: 88, column: 7, scope: !29)
!287 = !DILocation(line: 93, column: 31, scope: !288)
!288 = distinct !DILexicalBlock(scope: !278, file: !1, line: 89, column: 5)
!289 = !{!267, !267, i64 0}
!290 = !DILocation(line: 93, column: 7, scope: !288)
!291 = !DILocation(line: 95, column: 7, scope: !288)
!292 = !DILocation(line: 104, column: 7, scope: !29)
!293 = !DILocation(line: 72, column: 7, scope: !29)
!294 = !DILocation(line: 106, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !29, file: !1, line: 106, column: 7)
!296 = !{!280, !270, i64 80}
!297 = !DILocation(line: 106, column: 18, scope: !295)
!298 = !DILocation(line: 106, column: 26, scope: !295)
!299 = !DILocation(line: 106, column: 51, scope: !295)
!300 = !{!280, !270, i64 48}
!301 = !DILocation(line: 106, column: 29, scope: !295)
!302 = !DILocation(line: 106, column: 60, scope: !295)
!303 = !DILocation(line: 106, column: 7, scope: !29)
!304 = !DILocation(line: 107, column: 5, scope: !295)
!305 = !DILocation(line: 0, scope: !29)
!306 = !DILocation(line: 108, column: 11, scope: !307)
!307 = distinct !DILexicalBlock(scope: !29, file: !1, line: 108, column: 7)
!308 = !DILocation(line: 108, column: 18, scope: !307)
!309 = !DILocation(line: 108, column: 7, scope: !29)
!310 = !DILocation(line: 109, column: 5, scope: !307)
!311 = !{!280, !270, i64 24}
!312 = !DILocation(line: 110, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !29, file: !1, line: 110, column: 7)
!314 = !{!280, !270, i64 88}
!315 = !DILocation(line: 110, column: 7, scope: !29)
!316 = !DILocation(line: 111, column: 5, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 111, column: 5)
!318 = distinct !DILexicalBlock(scope: !313, file: !1, line: 111, column: 5)
!319 = !DILocation(line: 111, column: 5, scope: !318)
!320 = !DILocation(line: 112, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !29, file: !1, line: 112, column: 7)
!322 = !{!280, !270, i64 120}
!323 = !DILocation(line: 112, column: 7, scope: !29)
!324 = !DILocation(line: 113, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 113, column: 5)
!326 = !DILocation(line: 114, column: 3, scope: !29)
!327 = !DILocation(line: 115, column: 14, scope: !29)
!328 = !DILocation(line: 122, column: 3, scope: !29)
!329 = !DILocation(line: 124, column: 27, scope: !29)
!330 = !DILocation(line: 124, column: 3, scope: !29)
!331 = !DILocation(line: 127, column: 3, scope: !29)
!332 = !DILocation(line: 0, scope: !288)
!333 = !DILocation(line: 128, column: 1, scope: !29)
!334 = distinct !DISubprogram(name: "fclose", scope: !1, file: !1, line: 133, type: !335, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!5, !248}
!337 = !{!338}
!338 = !DILocalVariable(name: "fp", arg: 1, scope: !334, file: !1, line: 133, type: !248)
!339 = !DILocation(line: 133, column: 1, scope: !334)
!340 = !DILocation(line: 136, column: 20, scope: !334)
!341 = !DILocation(line: 136, column: 10, scope: !334)
!342 = !DILocation(line: 136, column: 3, scope: !334)
