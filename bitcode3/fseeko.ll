; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fseeko.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fseeko.c"
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
define dso_local i32 @_fseeko_r(%struct._reent*, %struct.__sFILE*, i64, i32) local_unnamed_addr #0 !dbg !32 {
  %5 = alloca i32, align 4
  %6 = icmp eq %struct._reent* %0, null, !dbg !316
  br i1 %6, label %12, label %7, !dbg !316

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !316
  %9 = load i32, i32* %8, align 8, !dbg !316, !tbaa !318
  %10 = icmp eq i32 %9, 0, !dbg !316
  br i1 %10, label %11, label %12, !dbg !315

; <label>:11:                                     ; preds = %7
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !316
  br label %12, !dbg !316

; <label>:12:                                     ; preds = %7, %4, %11
  %13 = bitcast i32* %5 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !327
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #4, !dbg !327
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !328
  %16 = load i16, i16* %15, align 8, !dbg !328, !tbaa !330
  %17 = and i16 %16, 264, !dbg !336
  %18 = icmp eq i16 %17, 264, !dbg !336
  br i1 %18, label %19, label %21, !dbg !336

; <label>:19:                                     ; preds = %12
  %20 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !337
  br label %21, !dbg !339

; <label>:21:                                     ; preds = %12, %19
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 10, !dbg !340
  %23 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %22, align 8, !dbg !340, !tbaa !342
  %24 = icmp eq i64 (%struct._reent*, i8*, i64, i32)* %23, null, !dbg !344
  br i1 %24, label %25, label %29, !dbg !345

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !346
  store i32 29, i32* %26, align 8, !dbg !348, !tbaa !349
  %27 = load i32, i32* %5, align 4, !dbg !350, !tbaa !351
  %28 = call i32 @pthread_setcancelstate(i32 %27, i32* nonnull %5) #4, !dbg !350
  br label %115, !dbg !352

; <label>:29:                                     ; preds = %21
  switch i32 %3, label %84 [
    i32 1, label %30
    i32 0, label %88
    i32 2, label %88
  ], !dbg !353

; <label>:30:                                     ; preds = %29
  %31 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !354
  %32 = load i16, i16* %15, align 8, !dbg !356, !tbaa !330
  %33 = and i16 %32, 4096, !dbg !358
  %34 = icmp eq i16 %33, 0, !dbg !358
  br i1 %34, label %38, label %35, !dbg !359

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 19, !dbg !360
  %37 = load i64, i64* %36, align 8, !dbg !360, !tbaa !361
  br label %48, !dbg !362

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !363
  %40 = load i8*, i8** %39, align 8, !dbg !363, !tbaa !365
  %41 = call i64 %23(%struct._reent* %0, i8* %40, i64 0, i32 1) #4, !dbg !366
  %42 = icmp eq i64 %41, -1, !dbg !367
  br i1 %42, label %45, label %43, !dbg !369

; <label>:43:                                     ; preds = %38
  %44 = load i16, i16* %15, align 8, !dbg !370, !tbaa !330
  br label %48, !dbg !369

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %5, align 4, !dbg !372, !tbaa !351
  %47 = call i32 @pthread_setcancelstate(i32 %46, i32* nonnull %5) #4, !dbg !372
  br label %115, !dbg !374

; <label>:48:                                     ; preds = %43, %35
  %49 = phi i16 [ %32, %35 ], [ %44, %43 ], !dbg !370
  %50 = phi i64 [ %37, %35 ], [ %41, %43 ], !dbg !375
  %51 = sext i16 %49 to i32, !dbg !376
  %52 = and i32 %51, 4, !dbg !377
  %53 = icmp eq i32 %52, 0, !dbg !377
  br i1 %53, label %67, label %54, !dbg !378

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !379
  %56 = load i32, i32* %55, align 8, !dbg !379, !tbaa !381
  %57 = sext i32 %56 to i64, !dbg !382
  %58 = sub nsw i64 %50, %57, !dbg !383
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !384
  %60 = load i8*, i8** %59, align 8, !dbg !384, !tbaa !386
  %61 = icmp eq i8* %60, null, !dbg !384
  br i1 %61, label %81, label %62, !dbg !387

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !388
  %64 = load i32, i32* %63, align 8, !dbg !388, !tbaa !389
  %65 = sext i32 %64 to i64, !dbg !390
  %66 = sub nsw i64 %58, %65, !dbg !391
  br label %81, !dbg !392

; <label>:67:                                     ; preds = %48
  %68 = and i32 %51, 8, !dbg !393
  %69 = icmp eq i32 %68, 0, !dbg !393
  br i1 %69, label %81, label %70, !dbg !395

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !396
  %72 = load i8*, i8** %71, align 8, !dbg !396, !tbaa !397
  %73 = icmp eq i8* %72, null, !dbg !398
  br i1 %73, label %81, label %74, !dbg !399

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !400
  %76 = bitcast i8** %75 to i64*, !dbg !400
  %77 = load i64, i64* %76, align 8, !dbg !400, !tbaa !401
  %78 = ptrtoint i8* %72 to i64, !dbg !402
  %79 = add i64 %50, %78, !dbg !402
  %80 = sub i64 %79, %77, !dbg !403
  br label %81, !dbg !404

; <label>:81:                                     ; preds = %54, %70, %67, %74, %62
  %82 = phi i64 [ %66, %62 ], [ %58, %54 ], [ %80, %74 ], [ %50, %70 ], [ %50, %67 ], !dbg !405
  %83 = add nsw i64 %82, %2, !dbg !406
  br label %88, !dbg !408

; <label>:84:                                     ; preds = %29
  %85 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !409
  store i32 22, i32* %85, align 8, !dbg !410, !tbaa !349
  %86 = load i32, i32* %5, align 4, !dbg !411, !tbaa !351
  %87 = call i32 @pthread_setcancelstate(i32 %86, i32* nonnull %5) #4, !dbg !411
  br label %115, !dbg !412

; <label>:88:                                     ; preds = %29, %29, %81
  %89 = phi i32 [ 0, %81 ], [ %3, %29 ], [ %3, %29 ]
  %90 = phi i64 [ %83, %81 ], [ %2, %29 ], [ %2, %29 ]
  %91 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !413
  %92 = load i8*, i8** %91, align 8, !dbg !413, !tbaa !401
  %93 = icmp eq i8* %92, null, !dbg !415
  br i1 %93, label %94, label %95, !dbg !416

; <label>:94:                                     ; preds = %88
  call void @__smakebuf_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !417
  br label %95, !dbg !417

; <label>:95:                                     ; preds = %88, %94
  %96 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !418
  %97 = icmp eq i32 %96, 0, !dbg !418
  br i1 %97, label %98, label %103, !dbg !420

; <label>:98:                                     ; preds = %95
  %99 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !421
  %100 = load i8*, i8** %99, align 8, !dbg !421, !tbaa !365
  %101 = call i64 %23(%struct._reent* %0, i8* %100, i64 %90, i32 %89) #4, !dbg !422
  %102 = icmp eq i64 %101, -1, !dbg !423
  br i1 %102, label %103, label %106, !dbg !424

; <label>:103:                                    ; preds = %95, %98
  %104 = load i32, i32* %5, align 4, !dbg !425, !tbaa !351
  %105 = call i32 @pthread_setcancelstate(i32 %104, i32* nonnull %5) #4, !dbg !425
  br label %115, !dbg !427

; <label>:106:                                    ; preds = %98
  %107 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !428
  %108 = load i8*, i8** %107, align 8, !dbg !428, !tbaa !386
  %109 = icmp eq i8* %108, null, !dbg !428
  br i1 %109, label %116, label %110, !dbg !430

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !431
  %112 = icmp eq i8* %108, %111, !dbg !431
  br i1 %112, label %114, label %113, !dbg !434

; <label>:113:                                    ; preds = %110
  call void @free(i8* nonnull %108) #4, !dbg !431
  br label %114, !dbg !431

; <label>:114:                                    ; preds = %110, %113
  store i8* null, i8** %107, align 8, !dbg !434, !tbaa !386
  br label %116, !dbg !434

; <label>:115:                                    ; preds = %25, %84, %103, %45
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !435
  br label %128

; <label>:116:                                    ; preds = %106, %114
  %117 = bitcast i8** %91 to i64*, !dbg !436
  %118 = load i64, i64* %117, align 8, !dbg !436, !tbaa !401
  %119 = bitcast %struct.__sFILE* %1 to i64*, !dbg !437
  store i64 %118, i64* %119, align 8, !dbg !437, !tbaa !397
  %120 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !438
  store i32 0, i32* %120, align 8, !dbg !439, !tbaa !381
  %121 = load i16, i16* %15, align 8, !dbg !440, !tbaa !330
  %122 = and i16 %121, -2081, !dbg !440
  store i16 %122, i16* %15, align 8, !dbg !441, !tbaa !330
  %123 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 22, !dbg !442
  %124 = bitcast %struct._mbstate_t* %123 to i8*, !dbg !443
  %125 = call i8* @memset(i8* nonnull %124, i32 0, i64 8) #4, !dbg !444
  %126 = load i32, i32* %5, align 4, !dbg !445, !tbaa !351
  %127 = call i32 @pthread_setcancelstate(i32 %126, i32* nonnull %5) #4, !dbg !445
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !435
  br label %128

; <label>:128:                                    ; preds = %115, %116
  %129 = phi i32 [ 0, %116 ], [ -1, %115 ]
  ret i32 %129, !dbg !446
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

; Function Attrs: noredzone
declare dso_local void @__smakebuf_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fseeko(%struct.__sFILE*, i64, i32) local_unnamed_addr #0 !dbg !447 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !455
  %5 = tail call i32 @_fseeko_r(%struct._reent* %4, %struct.__sFILE* %0, i64 %1, i32 %2) #6, !dbg !456
  ret i32 %5, !dbg !457
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

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fseeko.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !24, line: 114, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = distinct !DISubprogram(name: "_fseeko_r", scope: !1, file: !1, line: 120, type: !33, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !35, !248, !93, !5}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !37, line: 569, size: 14912, elements: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !{!39, !40, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !36, file: !37, line: 571, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !37, line: 287, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !37, line: 181, size: 1408, elements: !44)
!44 = !{!45, !48, !49, !50, !52, !53, !58, !59, !60, !65, !71, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !43, file: !37, line: 182, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !43, file: !37, line: 183, baseType: !5, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !43, file: !37, line: 184, baseType: !5, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !37, line: 185, baseType: !51, size: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !43, file: !37, line: 186, baseType: !51, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !43, file: !37, line: 187, baseType: !54, size: 128, offset: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !37, line: 117, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !37, line: 118, baseType: !46, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !37, line: 119, baseType: !5, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !43, file: !37, line: 188, baseType: !5, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !43, file: !37, line: 195, baseType: !22, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !43, file: !37, line: 197, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !35, !22, !26, !5}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !24, line: 145, baseType: !25)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !43, file: !37, line: 199, baseType: !66, size: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!64, !35, !22, !69, !5}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !43, file: !37, line: 202, baseType: !72, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!23, !35, !22, !23, !5}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !43, file: !37, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !35, !22}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !43, file: !37, line: 206, baseType: !54, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !43, file: !37, line: 207, baseType: !46, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !43, file: !37, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !43, file: !37, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !43, file: !37, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !43, file: !37, line: 215, baseType: !54, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !43, file: !37, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !37, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !24, line: 44, baseType: !25)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !43, file: !37, line: 222, baseType: !35, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !37, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !24, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !43, file: !37, line: 228, baseType: !100, size: 64, offset: 1312)
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
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !37, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !36, file: !37, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !36, file: !37, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !36, file: !37, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !36, file: !37, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !37, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !36, file: !37, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !36, file: !37, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !35}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !36, file: !37, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !37, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !37, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !37, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !37, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !37, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !37, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !37, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !37, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !36, file: !37, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !36, file: !37, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !36, file: !37, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !36, file: !37, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !36, file: !37, line: 597, baseType: !26, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !36, file: !37, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !37, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !37, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !37, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !37, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !37, line: 604, baseType: !26, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !37, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !37, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !37, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !37, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !37, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !37, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !37, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !37, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !37, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !37, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !37, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !37, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !37, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !37, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !37, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !37, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !37, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !37, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !37, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !37, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !37, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !37, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !37, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !37, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !37, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !37, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !37, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !37, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !37, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !37, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !37, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !37, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !37, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !37, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !37, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !36, file: !37, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !37, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !37, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !37, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !37, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !37, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !37, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !37, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !37, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !37, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !37, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !36, file: !37, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !36, file: !37, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !36, file: !37, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !37, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !37, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !37, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !37, line: 295, baseType: !41, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !36, file: !37, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !42)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !264, !308, !309, !311}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !32, file: !1, line: 120, type: !35)
!253 = !DILocalVariable(name: "fp", arg: 2, scope: !32, file: !1, line: 120, type: !248)
!254 = !DILocalVariable(name: "offset", arg: 3, scope: !32, file: !1, line: 120, type: !93)
!255 = !DILocalVariable(name: "whence", arg: 4, scope: !32, file: !1, line: 120, type: !5)
!256 = !DILocalVariable(name: "seekfn", scope: !32, file: !1, line: 126, type: !72)
!257 = !DILocalVariable(name: "target", scope: !32, file: !1, line: 127, type: !23)
!258 = !DILocalVariable(name: "curoff", scope: !32, file: !1, line: 128, type: !23)
!259 = !DILocalVariable(name: "n", scope: !32, file: !1, line: 129, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !261, line: 40, baseType: !262)
!261 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 129, baseType: !263)
!263 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!264 = !DILocalVariable(name: "st", scope: !32, file: !1, line: 133, type: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !266, line: 27, size: 704, elements: !267)
!266 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!267 = !{!268, !272, !275, !280, !283, !286, !289, !290, !293, !300, !301, !302, !305}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !265, file: !266, line: 29, baseType: !269, size: 16)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !270, line: 177, baseType: !271)
!270 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !24, line: 54, baseType: !51)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !265, file: !266, line: 30, baseType: !273, size: 16, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !270, line: 155, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !24, line: 73, baseType: !182)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !265, file: !266, line: 31, baseType: !276, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !270, line: 205, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !24, line: 88, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !279, line: 79, baseType: !110)
!279 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !265, file: !266, line: 32, baseType: !281, size: 16, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !270, line: 210, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !24, line: 210, baseType: !182)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !265, file: !266, line: 33, baseType: !284, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !270, line: 181, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !24, line: 58, baseType: !182)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !265, file: !266, line: 34, baseType: !287, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !270, line: 185, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !24, line: 61, baseType: !182)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !265, file: !266, line: 35, baseType: !269, size: 16, offset: 112)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !265, file: !266, line: 36, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !270, line: 173, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 100, baseType: !93)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !265, file: !266, line: 37, baseType: !294, size: 128, offset: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !295, line: 52, size: 128, elements: !296)
!295 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !294, file: !295, line: 53, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !295, line: 34, baseType: !25)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !294, file: !295, line: 54, baseType: !25, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !265, file: !266, line: 38, baseType: !294, size: 128, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !265, file: !266, line: 39, baseType: !294, size: 128, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !265, file: !266, line: 40, baseType: !303, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !270, line: 118, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !24, line: 32, baseType: !25)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !265, file: !266, line: 41, baseType: !306, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !270, line: 113, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !24, line: 28, baseType: !25)
!308 = !DILocalVariable(name: "havepos", scope: !32, file: !1, line: 135, type: !5)
!309 = !DILocalVariable(name: "_check_init_ptr", scope: !310, file: !1, line: 139, type: !35)
!310 = distinct !DILexicalBlock(scope: !32, file: !1, line: 139, column: 3)
!311 = !DILocalVariable(name: "__oldfpcancel", scope: !312, file: !1, line: 141, type: !5)
!312 = distinct !DILexicalBlock(scope: !32, file: !1, line: 141, column: 3)
!313 = !DILocation(line: 120, column: 1, scope: !32)
!314 = !DILocation(line: 128, column: 11, scope: !32)
!315 = !DILocation(line: 139, column: 3, scope: !310)
!316 = !DILocation(line: 139, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !1, line: 139, column: 3)
!318 = !{!319, !320, i64 80}
!319 = !{!"_reent", !320, i64 0, !323, i64 8, !323, i64 16, !323, i64 24, !320, i64 32, !321, i64 36, !320, i64 64, !323, i64 72, !320, i64 80, !323, i64 88, !323, i64 96, !320, i64 104, !323, i64 112, !323, i64 120, !320, i64 128, !323, i64 136, !321, i64 144, !323, i64 504, !324, i64 512, !323, i64 1304, !326, i64 1312, !321, i64 1336}
!320 = !{!"int", !321, i64 0}
!321 = !{!"omnipotent char", !322, i64 0}
!322 = !{!"Simple C/C++ TBAA"}
!323 = !{!"any pointer", !321, i64 0}
!324 = !{!"_atexit", !323, i64 0, !320, i64 8, !321, i64 16, !325, i64 272}
!325 = !{!"_on_exit_args", !321, i64 0, !321, i64 256, !320, i64 512, !320, i64 516}
!326 = !{!"_glue", !323, i64 0, !320, i64 8, !323, i64 16}
!327 = !DILocation(line: 141, column: 3, scope: !312)
!328 = !DILocation(line: 146, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !312, file: !1, line: 146, column: 7)
!330 = !{!331, !332, i64 16}
!331 = !{!"__sFILE", !323, i64 0, !320, i64 8, !320, i64 12, !332, i64 16, !332, i64 18, !333, i64 24, !320, i64 40, !323, i64 48, !323, i64 56, !323, i64 64, !323, i64 72, !323, i64 80, !333, i64 88, !323, i64 104, !320, i64 112, !321, i64 116, !321, i64 119, !333, i64 120, !320, i64 136, !334, i64 144, !323, i64 152, !320, i64 160, !335, i64 164, !320, i64 172}
!332 = !{!"short", !321, i64 0}
!333 = !{!"__sbuf", !323, i64 0, !320, i64 8}
!334 = !{!"long", !321, i64 0}
!335 = !{!"", !320, i64 0, !321, i64 4}
!336 = !DILocation(line: 146, column: 27, scope: !329)
!337 = !DILocation(line: 149, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !1, line: 147, column: 5)
!339 = !DILocation(line: 150, column: 5, scope: !338)
!340 = !DILocation(line: 154, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !312, file: !1, line: 154, column: 7)
!342 = !{!331, !323, i64 72}
!343 = !DILocation(line: 126, column: 11, scope: !32)
!344 = !DILocation(line: 154, column: 28, scope: !341)
!345 = !DILocation(line: 154, column: 7, scope: !312)
!346 = !DILocation(line: 156, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !1, line: 155, column: 5)
!348 = !DILocation(line: 156, column: 19, scope: !347)
!349 = !{!319, !320, i64 0}
!350 = !DILocation(line: 157, column: 7, scope: !347)
!351 = !{!320, !320, i64 0}
!352 = !DILocation(line: 158, column: 7, scope: !347)
!353 = !DILocation(line: 166, column: 3, scope: !312)
!354 = !DILocation(line: 174, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !312, file: !1, line: 167, column: 5)
!356 = !DILocation(line: 175, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !1, line: 175, column: 11)
!358 = !DILocation(line: 175, column: 22, scope: !357)
!359 = !DILocation(line: 175, column: 11, scope: !355)
!360 = !DILocation(line: 176, column: 15, scope: !357)
!361 = !{!331, !334, i64 144}
!362 = !DILocation(line: 176, column: 2, scope: !357)
!363 = !DILocation(line: 179, column: 30, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !1, line: 178, column: 2)
!365 = !{!331, !323, i64 48}
!366 = !DILocation(line: 179, column: 13, scope: !364)
!367 = !DILocation(line: 180, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !1, line: 180, column: 8)
!369 = !DILocation(line: 180, column: 8, scope: !364)
!370 = !DILocation(line: 186, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !355, file: !1, line: 186, column: 11)
!372 = !DILocation(line: 182, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !1, line: 181, column: 6)
!374 = !DILocation(line: 183, column: 8, scope: !373)
!375 = !DILocation(line: 0, scope: !364)
!376 = !DILocation(line: 186, column: 11, scope: !371)
!377 = !DILocation(line: 186, column: 22, scope: !371)
!378 = !DILocation(line: 186, column: 11, scope: !355)
!379 = !DILocation(line: 188, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !371, file: !1, line: 187, column: 2)
!381 = !{!331, !320, i64 8}
!382 = !DILocation(line: 188, column: 14, scope: !380)
!383 = !DILocation(line: 188, column: 11, scope: !380)
!384 = !DILocation(line: 189, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !1, line: 189, column: 8)
!386 = !{!331, !323, i64 88}
!387 = !DILocation(line: 189, column: 8, scope: !380)
!388 = !DILocation(line: 190, column: 20, scope: !385)
!389 = !{!331, !320, i64 112}
!390 = !DILocation(line: 190, column: 16, scope: !385)
!391 = !DILocation(line: 190, column: 13, scope: !385)
!392 = !DILocation(line: 190, column: 6, scope: !385)
!393 = !DILocation(line: 192, column: 27, scope: !394)
!394 = distinct !DILexicalBlock(scope: !371, file: !1, line: 192, column: 16)
!395 = !DILocation(line: 192, column: 35, scope: !394)
!396 = !DILocation(line: 192, column: 42, scope: !394)
!397 = !{!331, !323, i64 0}
!398 = !DILocation(line: 192, column: 45, scope: !394)
!399 = !DILocation(line: 192, column: 16, scope: !371)
!400 = !DILocation(line: 193, column: 29, scope: !394)
!401 = !{!331, !323, i64 24}
!402 = !DILocation(line: 193, column: 19, scope: !394)
!403 = !DILocation(line: 193, column: 9, scope: !394)
!404 = !DILocation(line: 193, column: 2, scope: !394)
!405 = !DILocation(line: 0, scope: !357)
!406 = !DILocation(line: 195, column: 14, scope: !355)
!407 = !DILocation(line: 135, column: 7, scope: !32)
!408 = !DILocation(line: 198, column: 7, scope: !355)
!409 = !DILocation(line: 206, column: 12, scope: !355)
!410 = !DILocation(line: 206, column: 19, scope: !355)
!411 = !DILocation(line: 207, column: 7, scope: !355)
!412 = !DILocation(line: 208, column: 7, scope: !355)
!413 = !DILocation(line: 220, column: 15, scope: !414)
!414 = distinct !DILexicalBlock(scope: !312, file: !1, line: 220, column: 7)
!415 = !DILocation(line: 220, column: 21, scope: !414)
!416 = !DILocation(line: 220, column: 7, scope: !312)
!417 = !DILocation(line: 221, column: 5, scope: !414)
!418 = !DILocation(line: 358, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !312, file: !1, line: 358, column: 7)
!420 = !DILocation(line: 359, column: 7, scope: !419)
!421 = !DILocation(line: 359, column: 27, scope: !419)
!422 = !DILocation(line: 359, column: 10, scope: !419)
!423 = !DILocation(line: 359, column: 52, scope: !419)
!424 = !DILocation(line: 358, column: 7, scope: !312)
!425 = !DILocation(line: 361, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 360, column: 5)
!427 = !DILocation(line: 362, column: 7, scope: !426)
!428 = !DILocation(line: 365, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !312, file: !1, line: 365, column: 7)
!430 = !DILocation(line: 365, column: 7, scope: !312)
!431 = !DILocation(line: 366, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 366, column: 5)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 366, column: 5)
!434 = !DILocation(line: 366, column: 5, scope: !433)
!435 = !DILocation(line: 379, column: 3, scope: !32)
!436 = !DILocation(line: 367, column: 20, scope: !312)
!437 = !DILocation(line: 367, column: 10, scope: !312)
!438 = !DILocation(line: 368, column: 7, scope: !312)
!439 = !DILocation(line: 368, column: 10, scope: !312)
!440 = !DILocation(line: 370, column: 14, scope: !312)
!441 = !DILocation(line: 377, column: 14, scope: !312)
!442 = !DILocation(line: 378, column: 16, scope: !312)
!443 = !DILocation(line: 378, column: 11, scope: !312)
!444 = !DILocation(line: 378, column: 3, scope: !312)
!445 = !DILocation(line: 379, column: 3, scope: !312)
!446 = !DILocation(line: 381, column: 1, scope: !32)
!447 = distinct !DISubprogram(name: "fseeko", scope: !1, file: !1, line: 386, type: !448, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!5, !248, !93, !5}
!450 = !{!451, !452, !453}
!451 = !DILocalVariable(name: "fp", arg: 1, scope: !447, file: !1, line: 386, type: !248)
!452 = !DILocalVariable(name: "offset", arg: 2, scope: !447, file: !1, line: 386, type: !93)
!453 = !DILocalVariable(name: "whence", arg: 3, scope: !447, file: !1, line: 386, type: !5)
!454 = !DILocation(line: 386, column: 1, scope: !447)
!455 = !DILocation(line: 391, column: 21, scope: !447)
!456 = !DILocation(line: 391, column: 10, scope: !447)
!457 = !DILocation(line: 391, column: 3, scope: !447)
