; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread.c"
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
define dso_local i64 @_fread_r(%struct._reent*, i8* noalias, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !36 {
  %6 = alloca i32, align 4
  %7 = mul i64 %3, %2, !dbg !281
  %8 = icmp eq i64 %7, 0, !dbg !284
  br i1 %8, label %121, label %9, !dbg !285

; <label>:9:                                      ; preds = %5
  %10 = icmp eq %struct._reent* %0, null, !dbg !287
  br i1 %10, label %16, label %11, !dbg !287

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !287
  %13 = load i32, i32* %12, align 8, !dbg !287, !tbaa !289
  %14 = icmp eq i32 %13, 0, !dbg !287
  br i1 %14, label %15, label %16, !dbg !286

; <label>:15:                                     ; preds = %11
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !287
  br label %16, !dbg !287

; <label>:16:                                     ; preds = %11, %9, %15
  %17 = bitcast i32* %6 to i8*, !dbg !298
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5, !dbg !298
  %18 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #4, !dbg !298
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !299
  %20 = load i32, i32* %19, align 8, !dbg !299, !tbaa !301
  %21 = icmp slt i32 %20, 0, !dbg !307
  br i1 %21, label %22, label %23, !dbg !308

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %19, align 8, !dbg !309, !tbaa !301
  br label %23, !dbg !310

; <label>:23:                                     ; preds = %22, %16
  %24 = phi i32 [ 0, %22 ], [ %20, %16 ]
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !313
  %26 = load i16, i16* %25, align 8, !dbg !313, !tbaa !314
  %27 = and i16 %26, 2, !dbg !315
  %28 = icmp eq i16 %27, 0, !dbg !315
  br i1 %28, label %29, label %34, !dbg !316

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0
  %31 = sext i32 %24 to i64, !dbg !318
  %32 = icmp ugt i64 %7, %31, !dbg !320
  %33 = load i8*, i8** %30, align 8, !dbg !321, !tbaa !322
  br i1 %32, label %84, label %104, !dbg !323

; <label>:34:                                     ; preds = %23
  %35 = sext i32 %24 to i64, !dbg !324
  %36 = icmp ugt i64 %7, %35, !dbg !325
  %37 = select i1 %36, i64 %35, i64 %7, !dbg !326
  %38 = trunc i64 %37 to i32, !dbg !326
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !328
  %40 = load i8*, i8** %39, align 8, !dbg !328, !tbaa !322
  %41 = shl i64 %37, 32, !dbg !329
  %42 = ashr exact i64 %41, 32, !dbg !329
  %43 = call i8* @memcpy(i8* %1, i8* %40, i64 %42) #4, !dbg !330
  %44 = load i8*, i8** %39, align 8, !dbg !331, !tbaa !322
  %45 = getelementptr inbounds i8, i8* %44, i64 %42, !dbg !331
  store i8* %45, i8** %39, align 8, !dbg !331, !tbaa !322
  %46 = load i32, i32* %19, align 8, !dbg !332, !tbaa !301
  %47 = sub nsw i32 %46, %38, !dbg !332
  store i32 %47, i32* %19, align 8, !dbg !332, !tbaa !301
  %48 = getelementptr inbounds i8, i8* %1, i64 %42, !dbg !333
  %49 = sub i64 %7, %42, !dbg !334
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !335
  %51 = load i8*, i8** %50, align 8, !dbg !335, !tbaa !337
  %52 = icmp ne i8* %51, null, !dbg !335
  %53 = icmp ne i64 %49, 0, !dbg !338
  %54 = and i1 %53, %52, !dbg !339
  br i1 %54, label %55, label %60, !dbg !339

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 15, i64 0, !dbg !340
  %57 = icmp eq i8* %51, %56, !dbg !340
  br i1 %57, label %59, label %58, !dbg !343

; <label>:58:                                     ; preds = %55
  call void @free(i8* nonnull %51) #4, !dbg !340
  br label %59, !dbg !340

; <label>:59:                                     ; preds = %55, %58
  store i8* null, i8** %50, align 8, !dbg !343, !tbaa !337
  br label %60, !dbg !343

; <label>:60:                                     ; preds = %59, %34
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5
  %62 = getelementptr inbounds %struct.__sbuf, %struct.__sbuf* %61, i64 0, i32 0
  %63 = bitcast %struct.__sbuf* %61 to i64*
  %64 = bitcast %struct.__sFILE* %4 to i64*
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1
  br label %66, !dbg !344

; <label>:66:                                     ; preds = %70, %60
  %67 = phi i8* [ %48, %60 ], [ %79, %70 ], !dbg !345
  %68 = phi i64 [ %49, %60 ], [ %78, %70 ], !dbg !345
  %69 = icmp eq i64 %68, 0, !dbg !346
  br i1 %69, label %118, label %70, !dbg !344

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %63, align 8, !dbg !348, !tbaa !349
  %72 = load i64, i64* %64, align 8, !dbg !351, !tbaa !322
  %73 = load i32, i32* %65, align 8, !dbg !353, !tbaa !354
  store i8* %67, i8** %62, align 8, !dbg !356, !tbaa !349
  %74 = trunc i64 %68 to i32, !dbg !357
  store i32 %74, i32* %65, align 8, !dbg !358, !tbaa !354
  store i8* %67, i8** %39, align 8, !dbg !359, !tbaa !322
  %75 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #4, !dbg !360
  store i64 %71, i64* %63, align 8, !dbg !361, !tbaa !349
  store i32 %73, i32* %65, align 8, !dbg !362, !tbaa !354
  store i64 %72, i64* %64, align 8, !dbg !363, !tbaa !322
  %76 = load i32, i32* %19, align 8, !dbg !364, !tbaa !301
  %77 = sext i32 %76 to i64, !dbg !365
  %78 = sub i64 %68, %77, !dbg !366
  %79 = getelementptr inbounds i8, i8* %67, i64 %77, !dbg !367
  store i32 0, i32* %19, align 8, !dbg !368, !tbaa !301
  %80 = icmp eq i32 %75, 0, !dbg !369
  br i1 %80, label %66, label %81, !dbg !371

; <label>:81:                                     ; preds = %70
  %82 = load i32, i32* %6, align 4, !dbg !372, !tbaa !374
  %83 = call i32 @pthread_setcancelstate(i32 %82, i32* nonnull %6) #4, !dbg !372
  br label %114

; <label>:84:                                     ; preds = %29, %95
  %85 = phi i8* [ %100, %95 ], [ %33, %29 ]
  %86 = phi i64 [ %98, %95 ], [ %31, %29 ]
  %87 = phi i64 [ %92, %95 ], [ %7, %29 ]
  %88 = phi i8* [ %96, %95 ], [ %1, %29 ]
  %89 = call i8* @memcpy(i8* %88, i8* %85, i64 %86) #4, !dbg !375
  %90 = load i8*, i8** %30, align 8, !dbg !377, !tbaa !322
  %91 = getelementptr inbounds i8, i8* %90, i64 %86, !dbg !377
  store i8* %91, i8** %30, align 8, !dbg !377, !tbaa !322
  %92 = sub i64 %87, %86, !dbg !378
  %93 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #4, !dbg !379
  %94 = icmp eq i32 %93, 0, !dbg !379
  br i1 %94, label %95, label %101, !dbg !381, !llvm.loop !382

; <label>:95:                                     ; preds = %84
  %96 = getelementptr inbounds i8, i8* %88, i64 %86, !dbg !384
  %97 = load i32, i32* %19, align 8, !dbg !385, !tbaa !301
  %98 = sext i32 %97 to i64, !dbg !318
  %99 = icmp ugt i64 %92, %98, !dbg !320
  %100 = load i8*, i8** %30, align 8, !dbg !321, !tbaa !322
  br i1 %99, label %84, label %104, !dbg !323

; <label>:101:                                    ; preds = %84
  %102 = load i32, i32* %6, align 4, !dbg !386, !tbaa !374
  %103 = call i32 @pthread_setcancelstate(i32 %102, i32* nonnull %6) #4, !dbg !386
  br label %114, !dbg !388

; <label>:104:                                    ; preds = %95, %29
  %105 = phi i8* [ %1, %29 ], [ %96, %95 ], !dbg !389
  %106 = phi i64 [ %7, %29 ], [ %92, %95 ], !dbg !389
  %107 = phi i8* [ %33, %29 ], [ %100, %95 ], !dbg !321
  %108 = call i8* @memcpy(i8* %105, i8* %107, i64 %106) #4, !dbg !390
  %109 = load i32, i32* %19, align 8, !dbg !391, !tbaa !301
  %110 = trunc i64 %106 to i32, !dbg !391
  %111 = sub i32 %109, %110, !dbg !391
  store i32 %111, i32* %19, align 8, !dbg !391, !tbaa !301
  %112 = load i8*, i8** %30, align 8, !dbg !392, !tbaa !322
  %113 = getelementptr inbounds i8, i8* %112, i64 %106, !dbg !392
  store i8* %113, i8** %30, align 8, !dbg !392, !tbaa !322
  br label %118

; <label>:114:                                    ; preds = %81, %101
  %115 = phi i64 [ %92, %101 ], [ %78, %81 ]
  %116 = sub i64 %7, %115, !dbg !393
  %117 = udiv i64 %116, %2, !dbg !393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !394
  br label %121

; <label>:118:                                    ; preds = %66, %104
  %119 = load i32, i32* %6, align 4, !dbg !395, !tbaa !374
  %120 = call i32 @pthread_setcancelstate(i32 %119, i32* nonnull %6) #4, !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !394
  br label %121

; <label>:121:                                    ; preds = %118, %114, %5
  %122 = phi i64 [ 0, %5 ], [ %3, %118 ], [ %117, %114 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  ret i64 %122, !dbg !396
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
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @fread(i8* noalias, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !397 {
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !406
  %6 = tail call i64 @_fread_r(%struct._reent* %5, i8* %0, i64 %1, i64 %2, %struct.__sFILE* %3) #6, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  ret i64 %6, !dbg !408
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

!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !28, !30}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 40, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !26, line: 129, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!36 = distinct !DISubprogram(name: "_fread_r", scope: !1, file: !1, line: 177, type: !37, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !258)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !41, !253, !23, !23, !254}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 58, baseType: !27)
!40 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !43, line: 569, size: 14912, elements: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !{!45, !46, !121, !122, !123, !124, !128, !129, !132, !133, !137, !149, !150, !151, !153, !154, !155, !217, !238, !239, !244, !251}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !42, file: !43, line: 571, baseType: !5, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !43, line: 287, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !43, line: 181, size: 1408, elements: !50)
!50 = !{!51, !52, !53, !54, !56, !57, !62, !63, !64, !70, !76, !81, !85, !86, !87, !88, !92, !96, !97, !98, !100, !101, !105, !120}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !49, file: !43, line: 182, baseType: !30, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !49, file: !43, line: 183, baseType: !5, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !49, file: !43, line: 184, baseType: !5, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !43, line: 185, baseType: !55, size: 16, offset: 128)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !49, file: !43, line: 186, baseType: !55, size: 16, offset: 144)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !49, file: !43, line: 187, baseType: !58, size: 128, offset: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !43, line: 117, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !58, file: !43, line: 118, baseType: !30, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !58, file: !43, line: 119, baseType: !5, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !49, file: !43, line: 188, baseType: !5, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !49, file: !43, line: 195, baseType: !22, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !49, file: !43, line: 197, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !41, !22, !28, !5}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !26, line: 145, baseType: !69)
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !49, file: !43, line: 199, baseType: !71, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!68, !41, !22, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !49, file: !43, line: 202, baseType: !77, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !41, !22, !80, !5}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !26, line: 114, baseType: !69)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !49, file: !43, line: 203, baseType: !82, size: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!5, !41, !22}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !49, file: !43, line: 206, baseType: !58, size: 128, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !49, file: !43, line: 207, baseType: !30, size: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !49, file: !43, line: 208, baseType: !5, size: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !49, file: !43, line: 211, baseType: !89, size: 24, offset: 928)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !49, file: !43, line: 212, baseType: !93, size: 8, offset: 952)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !49, file: !43, line: 215, baseType: !58, size: 128, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !49, file: !43, line: 218, baseType: !5, size: 32, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !43, line: 219, baseType: !99, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !26, line: 44, baseType: !69)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !49, file: !43, line: 222, baseType: !41, size: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !43, line: 226, baseType: !102, size: 32, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !26, line: 175, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !104, line: 12, baseType: !5)
!104 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !49, file: !43, line: 228, baseType: !106, size: 64, offset: 1312)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !26, line: 171, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 163, size: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !107, file: !26, line: 165, baseType: !5, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !107, file: !26, line: 170, baseType: !111, size: 32, offset: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !26, line: 166, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !111, file: !26, line: 168, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !40, line: 124, baseType: !115)
!115 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !111, file: !26, line: 169, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !43, line: 229, baseType: !5, size: 32, offset: 1376)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !42, file: !43, line: 578, baseType: !5, size: 32, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !42, file: !43, line: 579, baseType: !125, size: 200, offset: 288)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !42, file: !43, line: 582, baseType: !5, size: 32, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !42, file: !43, line: 583, baseType: !130, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !43, line: 40, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !42, file: !43, line: 585, baseType: !5, size: 32, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !42, file: !43, line: 587, baseType: !134, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !41}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !42, file: !43, line: 590, baseType: !138, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !43, line: 47, size: 256, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !139, file: !43, line: 49, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !139, file: !43, line: 50, baseType: !5, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !139, file: !43, line: 50, baseType: !5, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !139, file: !43, line: 50, baseType: !5, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !139, file: !43, line: 50, baseType: !5, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !139, file: !43, line: 51, baseType: !147, size: 32, offset: 192)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32, elements: !94)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !43, line: 25, baseType: !115)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !42, file: !43, line: 591, baseType: !5, size: 32, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !42, file: !43, line: 592, baseType: !138, size: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !42, file: !43, line: 593, baseType: !152, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !42, file: !43, line: 596, baseType: !5, size: 32, offset: 1024)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !42, file: !43, line: 597, baseType: !28, size: 64, offset: 1088)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !42, file: !43, line: 632, baseType: !156, size: 2880, offset: 1152)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !43, line: 599, size: 2880, elements: !157)
!157 = !{!158, !208}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !156, file: !43, line: 622, baseType: !159, size: 1728)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !43, line: 601, size: 1728, elements: !160)
!160 = !{!161, !162, !163, !167, !179, !180, !182, !190, !191, !192, !193, !197, !201, !202, !203, !204, !205, !206, !207}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !159, file: !43, line: 603, baseType: !115, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !159, file: !43, line: 604, baseType: !28, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !159, file: !43, line: 605, baseType: !164, size: 208, offset: 128)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 208, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 26)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !159, file: !43, line: 606, baseType: !168, size: 288, offset: 352)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !43, line: 55, size: 288, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !168, file: !43, line: 57, baseType: !5, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !168, file: !43, line: 58, baseType: !5, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !168, file: !43, line: 59, baseType: !5, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !168, file: !43, line: 60, baseType: !5, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !168, file: !43, line: 61, baseType: !5, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !168, file: !43, line: 62, baseType: !5, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !168, file: !43, line: 63, baseType: !5, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !168, file: !43, line: 64, baseType: !5, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !168, file: !43, line: 65, baseType: !5, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !159, file: !43, line: 607, baseType: !5, size: 32, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !159, file: !43, line: 608, baseType: !181, size: 64, offset: 704)
!181 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !159, file: !43, line: 609, baseType: !183, size: 112, offset: 768)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !43, line: 319, size: 112, elements: !184)
!184 = !{!185, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !183, file: !43, line: 320, baseType: !186, size: 48)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 48, elements: !90)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !183, file: !43, line: 321, baseType: !186, size: 48, offset: 48)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !183, file: !43, line: 322, baseType: !187, size: 16, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !159, file: !43, line: 610, baseType: !106, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !159, file: !43, line: 611, baseType: !106, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !159, file: !43, line: 612, baseType: !106, size: 64, offset: 1024)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !159, file: !43, line: 613, baseType: !194, size: 64, offset: 1088)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !159, file: !43, line: 614, baseType: !198, size: 192, offset: 1152)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 24)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !159, file: !43, line: 615, baseType: !5, size: 32, offset: 1344)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !159, file: !43, line: 616, baseType: !106, size: 64, offset: 1376)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !159, file: !43, line: 617, baseType: !106, size: 64, offset: 1440)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !159, file: !43, line: 618, baseType: !106, size: 64, offset: 1504)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !159, file: !43, line: 619, baseType: !106, size: 64, offset: 1568)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !159, file: !43, line: 620, baseType: !106, size: 64, offset: 1632)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !159, file: !43, line: 621, baseType: !5, size: 32, offset: 1696)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !156, file: !43, line: 631, baseType: !209, size: 2880)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !43, line: 626, size: 2880, elements: !210)
!210 = !{!211, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !209, file: !43, line: 629, baseType: !212, size: 1920)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 30)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !209, file: !43, line: 630, baseType: !216, size: 960, offset: 1920)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 960, elements: !213)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !42, file: !43, line: 636, baseType: !218, size: 64, offset: 4032)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !43, line: 93, size: 6336, elements: !220)
!220 = !{!221, !222, !223, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !219, file: !43, line: 94, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !219, file: !43, line: 95, baseType: !5, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !219, file: !43, line: 97, baseType: !224, size: 2048, offset: 128)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2048, elements: !228)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !{!229}
!229 = !DISubrange(count: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !219, file: !43, line: 98, baseType: !231, size: 4160, offset: 2176)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !43, line: 74, size: 4160, elements: !232)
!232 = !{!233, !235, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !231, file: !43, line: 75, baseType: !234, size: 2048)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !228)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !231, file: !43, line: 76, baseType: !234, size: 2048, offset: 2048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !231, file: !43, line: 78, baseType: !148, size: 32, offset: 4096)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !231, file: !43, line: 81, baseType: !148, size: 32, offset: 4128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !42, file: !43, line: 637, baseType: !219, size: 6336, offset: 4096)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !42, file: !43, line: 641, baseType: !240, size: 64, offset: 10432)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !5}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !42, file: !43, line: 646, baseType: !245, size: 192, offset: 10496)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !43, line: 291, size: 192, elements: !246)
!246 = !{!247, !249, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !245, file: !43, line: 293, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !245, file: !43, line: 294, baseType: !5, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !245, file: !43, line: 295, baseType: !47, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !42, file: !43, line: 648, baseType: !252, size: 4224, offset: 10688)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 4224, elements: !90)
!253 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !257, line: 66, baseType: !48)
!257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !270, !272, !275, !277, !278, !279}
!259 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 177, type: !41)
!260 = !DILocalVariable(name: "buf", arg: 2, scope: !36, file: !1, line: 177, type: !253)
!261 = !DILocalVariable(name: "size", arg: 3, scope: !36, file: !1, line: 177, type: !23)
!262 = !DILocalVariable(name: "count", arg: 4, scope: !36, file: !1, line: 177, type: !23)
!263 = !DILocalVariable(name: "fp", arg: 5, scope: !36, file: !1, line: 177, type: !254)
!264 = !DILocalVariable(name: "resid", scope: !36, file: !1, line: 184, type: !23)
!265 = !DILocalVariable(name: "p", scope: !36, file: !1, line: 185, type: !28)
!266 = !DILocalVariable(name: "r", scope: !36, file: !1, line: 186, type: !5)
!267 = !DILocalVariable(name: "total", scope: !36, file: !1, line: 187, type: !23)
!268 = !DILocalVariable(name: "_check_init_ptr", scope: !269, file: !1, line: 192, type: !41)
!269 = distinct !DILexicalBlock(scope: !36, file: !1, line: 192, column: 3)
!270 = !DILocalVariable(name: "__oldfpcancel", scope: !271, file: !1, line: 194, type: !5)
!271 = distinct !DILexicalBlock(scope: !36, file: !1, line: 194, column: 3)
!272 = !DILocalVariable(name: "copy_size", scope: !273, file: !1, line: 207, type: !5)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 205, column: 5)
!274 = distinct !DILexicalBlock(scope: !271, file: !1, line: 204, column: 7)
!275 = !DILocalVariable(name: "rc", scope: !276, file: !1, line: 221, type: !5)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 220, column: 2)
!277 = !DILocalVariable(name: "old_base", scope: !276, file: !1, line: 223, type: !22)
!278 = !DILocalVariable(name: "old_p", scope: !276, file: !1, line: 224, type: !22)
!279 = !DILocalVariable(name: "old_size", scope: !276, file: !1, line: 225, type: !5)
!280 = !DILocation(line: 177, column: 1, scope: !36)
!281 = !DILocation(line: 189, column: 22, scope: !282)
!282 = distinct !DILexicalBlock(scope: !36, file: !1, line: 189, column: 7)
!283 = !DILocation(line: 184, column: 19, scope: !36)
!284 = !DILocation(line: 189, column: 30, scope: !282)
!285 = !DILocation(line: 189, column: 7, scope: !36)
!286 = !DILocation(line: 192, column: 3, scope: !269)
!287 = !DILocation(line: 192, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !269, file: !1, line: 192, column: 3)
!289 = !{!290, !291, i64 80}
!290 = !{!"_reent", !291, i64 0, !294, i64 8, !294, i64 16, !294, i64 24, !291, i64 32, !292, i64 36, !291, i64 64, !294, i64 72, !291, i64 80, !294, i64 88, !294, i64 96, !291, i64 104, !294, i64 112, !294, i64 120, !291, i64 128, !294, i64 136, !292, i64 144, !294, i64 504, !295, i64 512, !294, i64 1304, !297, i64 1312, !292, i64 1336}
!291 = !{!"int", !292, i64 0}
!292 = !{!"omnipotent char", !293, i64 0}
!293 = !{!"Simple C/C++ TBAA"}
!294 = !{!"any pointer", !292, i64 0}
!295 = !{!"_atexit", !294, i64 0, !291, i64 8, !292, i64 16, !296, i64 272}
!296 = !{!"_on_exit_args", !292, i64 0, !292, i64 256, !291, i64 512, !291, i64 516}
!297 = !{!"_glue", !294, i64 0, !291, i64 8, !294, i64 16}
!298 = !DILocation(line: 194, column: 3, scope: !271)
!299 = !DILocation(line: 196, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !271, file: !1, line: 196, column: 7)
!301 = !{!302, !291, i64 8}
!302 = !{!"__sFILE", !294, i64 0, !291, i64 8, !291, i64 12, !303, i64 16, !303, i64 18, !304, i64 24, !291, i64 40, !294, i64 48, !294, i64 56, !294, i64 64, !294, i64 72, !294, i64 80, !304, i64 88, !294, i64 104, !291, i64 112, !292, i64 116, !292, i64 119, !304, i64 120, !291, i64 136, !305, i64 144, !294, i64 152, !291, i64 160, !306, i64 164, !291, i64 172}
!303 = !{!"short", !292, i64 0}
!304 = !{!"__sbuf", !294, i64 0, !291, i64 8}
!305 = !{!"long", !292, i64 0}
!306 = !{!"", !291, i64 0, !292, i64 4}
!307 = !DILocation(line: 196, column: 14, scope: !300)
!308 = !DILocation(line: 196, column: 7, scope: !271)
!309 = !DILocation(line: 197, column: 12, scope: !300)
!310 = !DILocation(line: 197, column: 5, scope: !300)
!311 = !DILocation(line: 187, column: 10, scope: !36)
!312 = !DILocation(line: 185, column: 18, scope: !36)
!313 = !DILocation(line: 204, column: 11, scope: !274)
!314 = !{!302, !303, i64 16}
!315 = !DILocation(line: 204, column: 18, scope: !274)
!316 = !DILocation(line: 204, column: 7, scope: !271)
!317 = !DILocation(line: 186, column: 16, scope: !36)
!318 = !DILocation(line: 255, column: 22, scope: !319)
!319 = distinct !DILexicalBlock(scope: !274, file: !1, line: 254, column: 5)
!320 = !DILocation(line: 255, column: 20, scope: !319)
!321 = !DILocation(line: 0, scope: !319)
!322 = !{!302, !294, i64 0}
!323 = !DILocation(line: 255, column: 7, scope: !319)
!324 = !DILocation(line: 207, column: 31, scope: !273)
!325 = !DILocation(line: 207, column: 29, scope: !273)
!326 = !DILocation(line: 207, column: 23, scope: !273)
!327 = !DILocation(line: 207, column: 11, scope: !273)
!328 = !DILocation(line: 208, column: 47, scope: !273)
!329 = !DILocation(line: 208, column: 51, scope: !273)
!330 = !DILocation(line: 208, column: 18, scope: !273)
!331 = !DILocation(line: 209, column: 14, scope: !273)
!332 = !DILocation(line: 210, column: 14, scope: !273)
!333 = !DILocation(line: 211, column: 9, scope: !273)
!334 = !DILocation(line: 212, column: 13, scope: !273)
!335 = !DILocation(line: 215, column: 11, scope: !336)
!336 = distinct !DILexicalBlock(scope: !273, file: !1, line: 215, column: 11)
!337 = !{!302, !294, i64 88}
!338 = !DILocation(line: 215, column: 31, scope: !336)
!339 = !DILocation(line: 215, column: 22, scope: !336)
!340 = !DILocation(line: 216, column: 2, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 216, column: 2)
!342 = distinct !DILexicalBlock(scope: !336, file: !1, line: 216, column: 2)
!343 = !DILocation(line: 216, column: 2, scope: !342)
!344 = !DILocation(line: 219, column: 7, scope: !273)
!345 = !DILocation(line: 0, scope: !276)
!346 = !DILocation(line: 219, column: 20, scope: !273)
!347 = !DILocation(line: 221, column: 8, scope: !276)
!348 = !DILocation(line: 223, column: 29, scope: !276)
!349 = !{!302, !294, i64 24}
!350 = !DILocation(line: 223, column: 10, scope: !276)
!351 = !DILocation(line: 224, column: 23, scope: !276)
!352 = !DILocation(line: 224, column: 11, scope: !276)
!353 = !DILocation(line: 225, column: 27, scope: !276)
!354 = !{!302, !291, i64 32}
!355 = !DILocation(line: 225, column: 8, scope: !276)
!356 = !DILocation(line: 227, column: 18, scope: !276)
!357 = !DILocation(line: 228, column: 20, scope: !276)
!358 = !DILocation(line: 228, column: 18, scope: !276)
!359 = !DILocation(line: 229, column: 11, scope: !276)
!360 = !DILocation(line: 230, column: 9, scope: !276)
!361 = !DILocation(line: 232, column: 18, scope: !276)
!362 = !DILocation(line: 233, column: 18, scope: !276)
!363 = !DILocation(line: 234, column: 11, scope: !276)
!364 = !DILocation(line: 235, column: 17, scope: !276)
!365 = !DILocation(line: 235, column: 13, scope: !276)
!366 = !DILocation(line: 235, column: 10, scope: !276)
!367 = !DILocation(line: 236, column: 6, scope: !276)
!368 = !DILocation(line: 237, column: 11, scope: !276)
!369 = !DILocation(line: 238, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !276, file: !1, line: 238, column: 8)
!371 = !DILocation(line: 238, column: 8, scope: !276)
!372 = !DILocation(line: 247, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 239, column: 6)
!374 = !{!291, !291, i64 0}
!375 = !DILocation(line: 257, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !319, file: !1, line: 256, column: 2)
!377 = !DILocation(line: 258, column: 11, scope: !376)
!378 = !DILocation(line: 261, column: 10, scope: !376)
!379 = !DILocation(line: 262, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 262, column: 8)
!381 = !DILocation(line: 262, column: 8, scope: !376)
!382 = distinct !{!382, !323, !383}
!383 = !DILocation(line: 275, column: 2, scope: !319)
!384 = !DILocation(line: 260, column: 6, scope: !376)
!385 = !DILocation(line: 255, column: 31, scope: !319)
!386 = !DILocation(line: 272, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !1, line: 263, column: 6)
!388 = !DILocation(line: 273, column: 8, scope: !387)
!389 = !DILocation(line: 0, scope: !376)
!390 = !DILocation(line: 276, column: 18, scope: !319)
!391 = !DILocation(line: 277, column: 14, scope: !319)
!392 = !DILocation(line: 278, column: 14, scope: !319)
!393 = !DILocation(line: 0, scope: !373)
!394 = !DILocation(line: 289, column: 3, scope: !36)
!395 = !DILocation(line: 289, column: 3, scope: !271)
!396 = !DILocation(line: 291, column: 1, scope: !36)
!397 = distinct !DISubprogram(name: "fread", scope: !1, file: !1, line: 295, type: !398, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!39, !253, !23, !23, !254}
!400 = !{!401, !402, !403, !404}
!401 = !DILocalVariable(name: "buf", arg: 1, scope: !397, file: !1, line: 295, type: !253)
!402 = !DILocalVariable(name: "size", arg: 2, scope: !397, file: !1, line: 295, type: !23)
!403 = !DILocalVariable(name: "count", arg: 3, scope: !397, file: !1, line: 295, type: !23)
!404 = !DILocalVariable(name: "fp", arg: 4, scope: !397, file: !1, line: 295, type: !254)
!405 = !DILocation(line: 295, column: 1, scope: !397)
!406 = !DILocation(line: 301, column: 21, scope: !397)
!407 = !DILocation(line: 301, column: 11, scope: !397)
!408 = !DILocation(line: 301, column: 4, scope: !397)
