; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/setvbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/setvbuf.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @setvbuf(%struct.__sFILE*, i8*, i32, i64) local_unnamed_addr #0 !dbg !32 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call %struct._reent* @__getreent() #4, !dbg !268
  %9 = bitcast i64* %5 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !270
  %10 = bitcast i32* %6 to i8*, !dbg !271
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !271
  %11 = icmp eq %struct._reent* %8, null, !dbg !273
  br i1 %11, label %17, label %12, !dbg !273

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 8, !dbg !273
  %14 = load i32, i32* %13, align 8, !dbg !273, !tbaa !275
  %15 = icmp eq i32 %14, 0, !dbg !273
  br i1 %15, label %16, label %17, !dbg !272

; <label>:16:                                     ; preds = %12
  tail call void @__sinit(%struct._reent* nonnull %8) #4, !dbg !273
  br label %17, !dbg !273

; <label>:17:                                     ; preds = %12, %4, %16
  %18 = icmp eq i32 %2, 2, !dbg !284
  br i1 %18, label %24, label %19, !dbg !286

; <label>:19:                                     ; preds = %17
  %20 = icmp ugt i32 %2, 1, !dbg !287
  %21 = trunc i64 %3 to i32, !dbg !289
  %22 = icmp slt i32 %21, 0, !dbg !290
  %23 = or i1 %20, %22, !dbg !287
  br i1 %23, label %118, label %24, !dbg !287

; <label>:24:                                     ; preds = %19, %17
  %25 = bitcast i32* %7 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5, !dbg !291
  %26 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #4, !dbg !291
  %27 = call i32 @_fflush_r(%struct._reent* %8, %struct.__sFILE* %0) #4, !dbg !292
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 12, i32 0, !dbg !293
  %29 = load i8*, i8** %28, align 8, !dbg !293, !tbaa !295
  %30 = icmp eq i8* %29, null, !dbg !293
  br i1 %30, label %36, label %31, !dbg !301

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 15, i64 0, !dbg !302
  %33 = icmp eq i8* %29, %32, !dbg !302
  br i1 %33, label %35, label %34, !dbg !305

; <label>:34:                                     ; preds = %31
  call void @free(i8* nonnull %29) #4, !dbg !302
  br label %35, !dbg !302

; <label>:35:                                     ; preds = %31, %34
  store i8* null, i8** %28, align 8, !dbg !305, !tbaa !295
  br label %36, !dbg !305

; <label>:36:                                     ; preds = %24, %35
  %37 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 6, !dbg !306
  store i32 0, i32* %37, align 8, !dbg !307, !tbaa !308
  %38 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 1, !dbg !309
  store i32 0, i32* %38, align 8, !dbg !310, !tbaa !311
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !312
  %40 = load i16, i16* %39, align 8, !dbg !312, !tbaa !314
  %41 = trunc i16 %40 to i8, !dbg !315
  %42 = icmp slt i8 %41, 0, !dbg !315
  br i1 %42, label %43, label %47, !dbg !316

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 0, !dbg !317
  %45 = load i8*, i8** %44, align 8, !dbg !317, !tbaa !318
  call void @free(i8* %45) #4, !dbg !317
  %46 = load i16, i16* %39, align 8, !dbg !319, !tbaa !314
  br label %47, !dbg !317

; <label>:47:                                     ; preds = %43, %36
  %48 = phi i16 [ %46, %43 ], [ %40, %36 ], !dbg !319
  %49 = and i16 %48, -3236, !dbg !319
  store i16 %49, i16* %39, align 8, !dbg !319, !tbaa !314
  br i1 %18, label %104, label %50, !dbg !320

; <label>:50:                                     ; preds = %47
  %51 = call i32 @__swhatbuf_r(%struct._reent* %8, %struct.__sFILE* nonnull %0, i64* nonnull %5, i32* nonnull %6) #4, !dbg !323
  %52 = load i16, i16* %39, align 8, !dbg !324, !tbaa !314
  %53 = trunc i32 %51 to i16, !dbg !324
  %54 = or i16 %52, %53, !dbg !324
  store i16 %54, i16* %39, align 8, !dbg !324, !tbaa !314
  %55 = icmp eq i64 %3, 0, !dbg !325
  %56 = load i64, i64* %5, align 8, !dbg !327
  %57 = select i1 %55, i64 %56, i64 %3, !dbg !329
  %58 = select i1 %55, i8* null, i8* %1, !dbg !329
  %59 = icmp eq i8* %58, null, !dbg !330
  br i1 %59, label %60, label %74, !dbg !332

; <label>:60:                                     ; preds = %50
  %61 = call i8* @malloc(i64 %57) #4, !dbg !333
  %62 = icmp eq i8* %61, null, !dbg !336
  br i1 %62, label %63, label %69, !dbg !337

; <label>:63:                                     ; preds = %60
  %64 = load i64, i64* %5, align 8, !dbg !338, !tbaa !341
  %65 = icmp eq i64 %57, %64, !dbg !342
  br i1 %65, label %104, label %66, !dbg !343

; <label>:66:                                     ; preds = %63
  %67 = call i8* @malloc(i64 %64) #4, !dbg !344
  %68 = icmp eq i8* %67, null, !dbg !346
  br i1 %68, label %104, label %69, !dbg !348

; <label>:69:                                     ; preds = %60, %66
  %70 = phi i8* [ %67, %66 ], [ %61, %60 ]
  %71 = phi i64 [ %64, %66 ], [ %57, %60 ]
  %72 = load i16, i16* %39, align 8, !dbg !349, !tbaa !314
  %73 = or i16 %72, 128, !dbg !349
  store i16 %73, i16* %39, align 8, !dbg !349, !tbaa !314
  br label %74, !dbg !350

; <label>:74:                                     ; preds = %69, %50
  %75 = phi i64 [ %71, %69 ], [ %57, %50 ], !dbg !351
  %76 = phi i8* [ %70, %69 ], [ %58, %50 ], !dbg !351
  %77 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 8, !dbg !352
  %78 = load i32, i32* %77, align 8, !dbg !352, !tbaa !275
  %79 = icmp eq i32 %78, 0, !dbg !354
  br i1 %79, label %80, label %81, !dbg !355

; <label>:80:                                     ; preds = %74
  call void @__sinit(%struct._reent* nonnull %8) #4, !dbg !356
  br label %81, !dbg !356

; <label>:81:                                     ; preds = %74, %80
  %82 = icmp eq i32 %2, 1, !dbg !357
  %83 = load i16, i16* %39, align 8, !dbg !359, !tbaa !314
  br i1 %82, label %84, label %86, !dbg !361

; <label>:84:                                     ; preds = %81
  %85 = or i16 %83, 1, !dbg !362
  store i16 %85, i16* %39, align 8, !dbg !362, !tbaa !314
  br label %86, !dbg !363

; <label>:86:                                     ; preds = %81, %84
  %87 = phi i16 [ %85, %84 ], [ %83, %81 ], !dbg !364
  %88 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 0, !dbg !365
  store i8* %76, i8** %88, align 8, !dbg !366, !tbaa !367
  %89 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 0, !dbg !368
  store i8* %76, i8** %89, align 8, !dbg !369, !tbaa !318
  %90 = trunc i64 %75 to i32, !dbg !370
  %91 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 1, !dbg !371
  store i32 %90, i32* %91, align 8, !dbg !372, !tbaa !373
  %92 = sext i16 %87 to i32, !dbg !374
  %93 = and i32 %92, 8, !dbg !375
  %94 = icmp eq i32 %93, 0, !dbg !375
  br i1 %94, label %102, label %95, !dbg !376

; <label>:95:                                     ; preds = %86
  %96 = and i32 %92, 1, !dbg !377
  %97 = icmp eq i32 %96, 0, !dbg !377
  %98 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 2, !dbg !380
  br i1 %97, label %101, label %99, !dbg !382

; <label>:99:                                     ; preds = %95
  store i32 0, i32* %98, align 4, !dbg !383, !tbaa !384
  %100 = sub nsw i32 0, %90, !dbg !385
  store i32 %100, i32* %37, align 8, !dbg !386, !tbaa !308
  br label %115, !dbg !387

; <label>:101:                                    ; preds = %95
  store i32 %90, i32* %98, align 4, !dbg !388, !tbaa !384
  br label %115

; <label>:102:                                    ; preds = %86
  %103 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 2, !dbg !389
  store i32 0, i32* %103, align 4, !dbg !391, !tbaa !384
  br label %115

; <label>:104:                                    ; preds = %63, %47, %66
  %105 = phi i32 [ 0, %47 ], [ -1, %66 ], [ -1, %63 ], !dbg !392
  %106 = load i16, i16* %39, align 8, !dbg !393, !tbaa !314
  %107 = or i16 %106, 2, !dbg !393
  store i16 %107, i16* %39, align 8, !dbg !393, !tbaa !314
  %108 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 2, !dbg !395
  store i32 0, i32* %108, align 4, !dbg !396, !tbaa !384
  %109 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 16, i64 0, !dbg !397
  %110 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 0, !dbg !398
  store i8* %109, i8** %110, align 8, !dbg !399, !tbaa !367
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 0, !dbg !400
  store i8* %109, i8** %111, align 8, !dbg !401, !tbaa !318
  %112 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 1, !dbg !402
  store i32 1, i32* %112, align 8, !dbg !403, !tbaa !373
  %113 = load i32, i32* %7, align 4, !dbg !404, !tbaa !405
  %114 = call i32 @pthread_setcancelstate(i32 %113, i32* nonnull %7) #4, !dbg !404
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5, !dbg !406
  br label %118

; <label>:115:                                    ; preds = %102, %101, %99
  %116 = load i32, i32* %7, align 4, !dbg !407, !tbaa !405
  %117 = call i32 @pthread_setcancelstate(i32 %116, i32* nonnull %7) #4, !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5, !dbg !406
  br label %118

; <label>:118:                                    ; preds = %115, %104, %19
  %119 = phi i32 [ -1, %19 ], [ 0, %115 ], [ %105, %104 ], !dbg !408
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  ret i32 %119, !dbg !409
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__swhatbuf_r(%struct._reent*, %struct.__sFILE*, i64*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/setvbuf.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!5, !22, !23, !24, !26}
!22 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = distinct !DISubprogram(name: "setvbuf", scope: !1, file: !1, line: 99, type: !33, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !35, !24, !5, !251}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 66, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !39, line: 287, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 181, size: 1408, elements: !41)
!41 = !{!42, !43, !44, !45, !47, !48, !53, !54, !55, !218, !224, !229, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !249, !250}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !39, line: 182, baseType: !26, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !39, line: 183, baseType: !5, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !39, line: 184, baseType: !5, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !39, line: 185, baseType: !46, size: 16, offset: 128)
!46 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !39, line: 186, baseType: !46, size: 16, offset: 144)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !39, line: 187, baseType: !49, size: 128, offset: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 117, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !49, file: !39, line: 118, baseType: !26, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !49, file: !39, line: 119, baseType: !5, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !39, line: 188, baseType: !5, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !39, line: 195, baseType: !23, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !39, line: 197, baseType: !56, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !61, !23, !24, !5}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !60, line: 145, baseType: !22)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !39, line: 569, size: 14912, elements: !63)
!63 = !{!64, !65, !67, !68, !69, !70, !74, !75, !78, !79, !83, !98, !99, !100, !102, !103, !104, !182, !203, !204, !209, !216}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !62, file: !39, line: 571, baseType: !5, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !62, file: !39, line: 576, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !62, file: !39, line: 576, baseType: !66, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !62, file: !39, line: 576, baseType: !66, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !62, file: !39, line: 578, baseType: !5, size: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !62, file: !39, line: 579, baseType: !71, size: 200, offset: 288)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 200, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 25)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !62, file: !39, line: 582, baseType: !5, size: 32, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !62, file: !39, line: 583, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !39, line: 40, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !62, file: !39, line: 585, baseType: !5, size: 32, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !62, file: !39, line: 587, baseType: !80, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !61}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !62, file: !39, line: 590, baseType: !84, size: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !39, line: 47, size: 256, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !85, file: !39, line: 49, baseType: !84, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !85, file: !39, line: 50, baseType: !5, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !85, file: !39, line: 50, baseType: !5, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !85, file: !39, line: 50, baseType: !5, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !85, file: !39, line: 50, baseType: !5, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !85, file: !39, line: 51, baseType: !93, size: 32, offset: 192)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32, elements: !96)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !39, line: 25, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !62, file: !39, line: 591, baseType: !5, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !62, file: !39, line: 592, baseType: !84, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !62, file: !39, line: 593, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !62, file: !39, line: 596, baseType: !5, size: 32, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !62, file: !39, line: 597, baseType: !24, size: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !62, file: !39, line: 632, baseType: !105, size: 2880, offset: 1152)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !39, line: 599, size: 2880, elements: !106)
!106 = !{!107, !173}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !105, file: !39, line: 622, baseType: !108, size: 1728)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !39, line: 601, size: 1728, elements: !109)
!109 = !{!110, !111, !112, !116, !128, !129, !131, !141, !156, !157, !158, !162, !166, !167, !168, !169, !170, !171, !172}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !108, file: !39, line: 603, baseType: !95, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !108, file: !39, line: 604, baseType: !24, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !108, file: !39, line: 605, baseType: !113, size: 208, offset: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 208, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 26)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !108, file: !39, line: 606, baseType: !117, size: 288, offset: 352)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !39, line: 55, size: 288, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !117, file: !39, line: 57, baseType: !5, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !117, file: !39, line: 58, baseType: !5, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !117, file: !39, line: 59, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !117, file: !39, line: 60, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !117, file: !39, line: 61, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !117, file: !39, line: 62, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !117, file: !39, line: 63, baseType: !5, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !117, file: !39, line: 64, baseType: !5, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !117, file: !39, line: 65, baseType: !5, size: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !108, file: !39, line: 607, baseType: !5, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !108, file: !39, line: 608, baseType: !130, size: 64, offset: 704)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !108, file: !39, line: 609, baseType: !132, size: 112, offset: 768)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !39, line: 319, size: 112, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !132, file: !39, line: 320, baseType: !135, size: 48)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !137)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !132, file: !39, line: 321, baseType: !135, size: 48, offset: 48)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !132, file: !39, line: 322, baseType: !136, size: 16, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !108, file: !39, line: 610, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !60, line: 171, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 163, size: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !60, line: 165, baseType: !5, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !143, file: !60, line: 170, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !60, line: 166, size: 32, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !147, file: !60, line: 168, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !151, line: 124, baseType: !95)
!151 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !147, file: !60, line: 169, baseType: !153, size: 32)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !108, file: !39, line: 611, baseType: !142, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !108, file: !39, line: 612, baseType: !142, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !108, file: !39, line: 613, baseType: !159, size: 64, offset: 1088)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !108, file: !39, line: 614, baseType: !163, size: 192, offset: 1152)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !108, file: !39, line: 615, baseType: !5, size: 32, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !108, file: !39, line: 616, baseType: !142, size: 64, offset: 1376)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !108, file: !39, line: 617, baseType: !142, size: 64, offset: 1440)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !108, file: !39, line: 618, baseType: !142, size: 64, offset: 1504)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !108, file: !39, line: 619, baseType: !142, size: 64, offset: 1568)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !108, file: !39, line: 620, baseType: !142, size: 64, offset: 1632)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !108, file: !39, line: 621, baseType: !5, size: 32, offset: 1696)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !105, file: !39, line: 631, baseType: !174, size: 2880)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !39, line: 626, size: 2880, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !174, file: !39, line: 629, baseType: !177, size: 1920)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1920, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 30)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !174, file: !39, line: 630, baseType: !181, size: 960, offset: 1920)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !178)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !62, file: !39, line: 636, baseType: !183, size: 64, offset: 4032)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !39, line: 93, size: 6336, elements: !185)
!185 = !{!186, !187, !188, !195}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !184, file: !39, line: 94, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !184, file: !39, line: 95, baseType: !5, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !184, file: !39, line: 97, baseType: !189, size: 2048, offset: 128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !193)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null}
!193 = !{!194}
!194 = !DISubrange(count: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !184, file: !39, line: 98, baseType: !196, size: 4160, offset: 2176)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !39, line: 74, size: 4160, elements: !197)
!197 = !{!198, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !196, file: !39, line: 75, baseType: !199, size: 2048)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !193)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !196, file: !39, line: 76, baseType: !199, size: 2048, offset: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !196, file: !39, line: 78, baseType: !94, size: 32, offset: 4096)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !196, file: !39, line: 81, baseType: !94, size: 32, offset: 4128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !62, file: !39, line: 637, baseType: !184, size: 6336, offset: 4096)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !62, file: !39, line: 641, baseType: !205, size: 64, offset: 10432)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !5}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !62, file: !39, line: 646, baseType: !210, size: 192, offset: 10496)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !39, line: 291, size: 192, elements: !211)
!211 = !{!212, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !210, file: !39, line: 293, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !210, file: !39, line: 294, baseType: !5, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !210, file: !39, line: 295, baseType: !66, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !62, file: !39, line: 648, baseType: !217, size: 4224, offset: 10688)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4224, elements: !137)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !39, line: 199, baseType: !219, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!59, !61, !23, !222, !5}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !39, line: 202, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !61, !23, !228, !5}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !60, line: 114, baseType: !22)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !39, line: 203, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!5, !61, !23}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !39, line: 206, baseType: !49, size: 128, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !40, file: !39, line: 207, baseType: !26, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !39, line: 208, baseType: !5, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !39, line: 211, baseType: !237, size: 24, offset: 928)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !137)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !39, line: 212, baseType: !239, size: 8, offset: 952)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !39, line: 215, baseType: !49, size: 128, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !39, line: 218, baseType: !5, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !39, line: 219, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !60, line: 44, baseType: !22)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !40, file: !39, line: 222, baseType: !61, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !39, line: 226, baseType: !246, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !60, line: 175, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !248, line: 12, baseType: !5)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !40, file: !39, line: 228, baseType: !142, size: 64, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !39, line: 229, baseType: !5, size: 32, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 58, baseType: !252)
!252 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !264}
!254 = !DILocalVariable(name: "fp", arg: 1, scope: !32, file: !1, line: 99, type: !35)
!255 = !DILocalVariable(name: "buf", arg: 2, scope: !32, file: !1, line: 99, type: !24)
!256 = !DILocalVariable(name: "mode", arg: 3, scope: !32, file: !1, line: 99, type: !5)
!257 = !DILocalVariable(name: "size", arg: 4, scope: !32, file: !1, line: 99, type: !251)
!258 = !DILocalVariable(name: "ret", scope: !32, file: !1, line: 105, type: !5)
!259 = !DILocalVariable(name: "reent", scope: !32, file: !1, line: 106, type: !61)
!260 = !DILocalVariable(name: "iosize", scope: !32, file: !1, line: 107, type: !251)
!261 = !DILocalVariable(name: "ttyflag", scope: !32, file: !1, line: 108, type: !5)
!262 = !DILocalVariable(name: "_check_init_ptr", scope: !263, file: !1, line: 110, type: !61)
!263 = distinct !DILexicalBlock(scope: !32, file: !1, line: 110, column: 3)
!264 = !DILocalVariable(name: "__oldfpcancel", scope: !265, file: !1, line: 128, type: !5)
!265 = distinct !DILexicalBlock(scope: !32, file: !1, line: 128, column: 3)
!266 = !DILocation(line: 99, column: 1, scope: !32)
!267 = !DILocation(line: 105, column: 7, scope: !32)
!268 = !DILocation(line: 106, column: 26, scope: !32)
!269 = !DILocation(line: 106, column: 18, scope: !32)
!270 = !DILocation(line: 107, column: 3, scope: !32)
!271 = !DILocation(line: 108, column: 3, scope: !32)
!272 = !DILocation(line: 110, column: 3, scope: !263)
!273 = !DILocation(line: 110, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !263, file: !1, line: 110, column: 3)
!275 = !{!276, !277, i64 80}
!276 = !{!"_reent", !277, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !277, i64 32, !278, i64 36, !277, i64 64, !280, i64 72, !277, i64 80, !280, i64 88, !280, i64 96, !277, i64 104, !280, i64 112, !280, i64 120, !277, i64 128, !280, i64 136, !278, i64 144, !280, i64 504, !281, i64 512, !280, i64 1304, !283, i64 1312, !278, i64 1336}
!277 = !{!"int", !278, i64 0}
!278 = !{!"omnipotent char", !279, i64 0}
!279 = !{!"Simple C/C++ TBAA"}
!280 = !{!"any pointer", !278, i64 0}
!281 = !{!"_atexit", !280, i64 0, !277, i64 8, !278, i64 16, !282, i64 272}
!282 = !{!"_on_exit_args", !278, i64 0, !278, i64 256, !277, i64 512, !277, i64 516}
!283 = !{!"_glue", !280, i64 0, !277, i64 8, !280, i64 16}
!284 = !DILocation(line: 117, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !32, file: !1, line: 117, column: 7)
!286 = !DILocation(line: 117, column: 7, scope: !32)
!287 = !DILocation(line: 118, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 118, column: 9)
!289 = !DILocation(line: 118, column: 47, scope: !288)
!290 = !DILocation(line: 118, column: 72, scope: !288)
!291 = !DILocation(line: 128, column: 3, scope: !265)
!292 = !DILocation(line: 129, column: 3, scope: !265)
!293 = !DILocation(line: 130, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !265, file: !1, line: 130, column: 7)
!295 = !{!296, !280, i64 88}
!296 = !{!"__sFILE", !280, i64 0, !277, i64 8, !277, i64 12, !297, i64 16, !297, i64 18, !298, i64 24, !277, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !298, i64 88, !280, i64 104, !277, i64 112, !278, i64 116, !278, i64 119, !298, i64 120, !277, i64 136, !299, i64 144, !280, i64 152, !277, i64 160, !300, i64 164, !277, i64 172}
!297 = !{!"short", !278, i64 0}
!298 = !{!"__sbuf", !280, i64 0, !277, i64 8}
!299 = !{!"long", !278, i64 0}
!300 = !{!"", !277, i64 0, !278, i64 4}
!301 = !DILocation(line: 130, column: 7, scope: !265)
!302 = !DILocation(line: 131, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 131, column: 5)
!304 = distinct !DILexicalBlock(scope: !294, file: !1, line: 131, column: 5)
!305 = !DILocation(line: 131, column: 5, scope: !304)
!306 = !DILocation(line: 132, column: 16, scope: !265)
!307 = !DILocation(line: 132, column: 25, scope: !265)
!308 = !{!296, !277, i64 40}
!309 = !DILocation(line: 132, column: 7, scope: !265)
!310 = !DILocation(line: 132, column: 10, scope: !265)
!311 = !{!296, !277, i64 8}
!312 = !DILocation(line: 133, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !265, file: !1, line: 133, column: 7)
!314 = !{!296, !297, i64 16}
!315 = !DILocation(line: 133, column: 18, scope: !313)
!316 = !DILocation(line: 133, column: 7, scope: !265)
!317 = !DILocation(line: 134, column: 5, scope: !313)
!318 = !{!296, !280, i64 24}
!319 = !DILocation(line: 135, column: 14, scope: !265)
!320 = !DILocation(line: 137, column: 7, scope: !265)
!321 = !DILocation(line: 107, column: 10, scope: !32)
!322 = !DILocation(line: 108, column: 7, scope: !32)
!323 = !DILocation(line: 145, column: 17, scope: !265)
!324 = !DILocation(line: 145, column: 14, scope: !265)
!325 = !DILocation(line: 146, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !265, file: !1, line: 146, column: 7)
!327 = !DILocation(line: 149, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !1, line: 147, column: 5)
!329 = !DILocation(line: 146, column: 7, scope: !265)
!330 = !DILocation(line: 153, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !265, file: !1, line: 153, column: 7)
!332 = !DILocation(line: 153, column: 7, scope: !265)
!333 = !DILocation(line: 155, column: 18, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 155, column: 11)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 154, column: 5)
!336 = !DILocation(line: 155, column: 33, scope: !334)
!337 = !DILocation(line: 155, column: 11, scope: !335)
!338 = !DILocation(line: 162, column: 16, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 162, column: 8)
!340 = distinct !DILexicalBlock(scope: !334, file: !1, line: 156, column: 2)
!341 = !{!299, !299, i64 0}
!342 = !DILocation(line: 162, column: 13, scope: !339)
!343 = !DILocation(line: 162, column: 8, scope: !340)
!344 = !DILocation(line: 165, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !1, line: 163, column: 6)
!346 = !DILocation(line: 168, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !335, file: !1, line: 168, column: 11)
!348 = !DILocation(line: 168, column: 11, scope: !335)
!349 = !DILocation(line: 179, column: 18, scope: !335)
!350 = !DILocation(line: 180, column: 5, scope: !335)
!351 = !DILocation(line: 0, scope: !328)
!352 = !DILocation(line: 186, column: 15, scope: !353)
!353 = distinct !DILexicalBlock(scope: !265, file: !1, line: 186, column: 7)
!354 = !DILocation(line: 186, column: 8, scope: !353)
!355 = !DILocation(line: 186, column: 7, scope: !265)
!356 = !DILocation(line: 187, column: 5, scope: !353)
!357 = !DILocation(line: 204, column: 12, scope: !358)
!358 = distinct !DILexicalBlock(scope: !265, file: !1, line: 204, column: 7)
!359 = !DILocation(line: 0, scope: !360)
!360 = distinct !DILexicalBlock(scope: !265, file: !1, line: 209, column: 7)
!361 = !DILocation(line: 204, column: 7, scope: !265)
!362 = !DILocation(line: 205, column: 16, scope: !358)
!363 = !DILocation(line: 205, column: 5, scope: !358)
!364 = !DILocation(line: 209, column: 11, scope: !360)
!365 = !DILocation(line: 206, column: 23, scope: !265)
!366 = !DILocation(line: 206, column: 26, scope: !265)
!367 = !{!296, !280, i64 0}
!368 = !DILocation(line: 206, column: 11, scope: !265)
!369 = !DILocation(line: 206, column: 17, scope: !265)
!370 = !DILocation(line: 207, column: 19, scope: !265)
!371 = !DILocation(line: 207, column: 11, scope: !265)
!372 = !DILocation(line: 207, column: 17, scope: !265)
!373 = !{!296, !277, i64 32}
!374 = !DILocation(line: 209, column: 7, scope: !360)
!375 = !DILocation(line: 209, column: 18, scope: !360)
!376 = !DILocation(line: 209, column: 7, scope: !265)
!377 = !DILocation(line: 215, column: 22, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 215, column: 11)
!379 = distinct !DILexicalBlock(scope: !360, file: !1, line: 210, column: 5)
!380 = !DILocation(line: 0, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 216, column: 2)
!382 = !DILocation(line: 215, column: 11, scope: !379)
!383 = !DILocation(line: 217, column: 11, scope: !381)
!384 = !{!296, !277, i64 12}
!385 = !DILocation(line: 218, column: 19, scope: !381)
!386 = !DILocation(line: 218, column: 17, scope: !381)
!387 = !DILocation(line: 219, column: 2, scope: !381)
!388 = !DILocation(line: 221, column: 16, scope: !378)
!389 = !DILocation(line: 226, column: 11, scope: !390)
!390 = distinct !DILexicalBlock(scope: !360, file: !1, line: 224, column: 5)
!391 = !DILocation(line: 226, column: 14, scope: !390)
!392 = !DILocation(line: 0, scope: !340)
!393 = !DILocation(line: 172, column: 22, scope: !394)
!394 = distinct !DILexicalBlock(scope: !347, file: !1, line: 169, column: 9)
!395 = !DILocation(line: 173, column: 15, scope: !394)
!396 = !DILocation(line: 173, column: 18, scope: !394)
!397 = !DILocation(line: 174, column: 36, scope: !394)
!398 = !DILocation(line: 174, column: 31, scope: !394)
!399 = !DILocation(line: 174, column: 34, scope: !394)
!400 = !DILocation(line: 174, column: 19, scope: !394)
!401 = !DILocation(line: 174, column: 25, scope: !394)
!402 = !DILocation(line: 175, column: 19, scope: !394)
!403 = !DILocation(line: 175, column: 25, scope: !394)
!404 = !DILocation(line: 176, column: 11, scope: !394)
!405 = !{!277, !277, i64 0}
!406 = !DILocation(line: 229, column: 3, scope: !32)
!407 = !DILocation(line: 229, column: 3, scope: !265)
!408 = !DILocation(line: 0, scope: !394)
!409 = !DILocation(line: 231, column: 1, scope: !32)
