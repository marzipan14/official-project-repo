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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_fseeko_r(%struct._reent*, %struct.__sFILE*, i64, i32) local_unnamed_addr #0 !dbg !32 {
  %5 = alloca i32, align 4
  %6 = icmp eq %struct._reent* %0, null, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %6, label %12, label %7, !dbg !316

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !316
  %9 = load i32, i32* %8, align 8, !dbg !316, !tbaa !318
  %10 = icmp eq i32 %9, 0, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %10, label %11, label %12, !dbg !315

; <label>:11:                                     ; preds = %7
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br label %12, !dbg !316

; <label>:12:                                     ; preds = %7, %4, %11
  %13 = bitcast i32* %5 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !327
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #4, !dbg !327
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !328
  %16 = load i16, i16* %15, align 8, !dbg !328, !tbaa !330
  %17 = sext i16 %16 to i32, !dbg !336
  %18 = and i32 %17, 256, !dbg !337
  %19 = icmp eq i32 %18, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %19, label %25, label %20, !dbg !338

; <label>:20:                                     ; preds = %12
  %21 = and i32 %17, 8, !dbg !339
  %22 = icmp eq i32 %21, 0, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %22, label %25, label %23, !dbg !340

; <label>:23:                                     ; preds = %20
  %24 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br label %25, !dbg !343

; <label>:25:                                     ; preds = %20, %12, %23
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 10, !dbg !344
  %27 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %26, align 8, !dbg !344, !tbaa !346
  %28 = icmp eq i64 (%struct._reent*, i8*, i64, i32)* %27, null, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %28, label %29, label %33, !dbg !349

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !350
  store i32 29, i32* %30, align 8, !dbg !352, !tbaa !353
  %31 = load i32, i32* %5, align 4, !dbg !354, !tbaa !355
  %32 = call i32 @pthread_setcancelstate(i32 %31, i32* nonnull %5) #4, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !357
  br label %131

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  switch i32 %3, label %88 [
    i32 1, label %34
    i32 0, label %92
    i32 2, label %92
  ], !dbg !358

; <label>:34:                                     ; preds = %33
  %35 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !359
  %36 = load i16, i16* %15, align 8, !dbg !361, !tbaa !330
  %37 = and i16 %36, 4096, !dbg !363
  %38 = icmp eq i16 %37, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %38, label %42, label %39, !dbg !364

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 19, !dbg !365
  %41 = load i64, i64* %40, align 8, !dbg !365, !tbaa !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br label %52, !dbg !367

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !368
  %44 = load i8*, i8** %43, align 8, !dbg !368, !tbaa !370
  %45 = call i64 %27(%struct._reent* %0, i8* %44, i64 0, i32 1) #4, !dbg !371
  %46 = icmp eq i64 %45, -1, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %46, label %49, label %47, !dbg !374

; <label>:47:                                     ; preds = %42
  %48 = load i16, i16* %15, align 8, !dbg !375, !tbaa !330
  br label %52, !dbg !374

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %5, align 4, !dbg !377, !tbaa !355
  %51 = call i32 @pthread_setcancelstate(i32 %50, i32* nonnull %5) #4, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !357
  br label %131

; <label>:52:                                     ; preds = %47, %39
  %53 = phi i16 [ %36, %39 ], [ %48, %47 ], !dbg !375
  %54 = phi i64 [ %41, %39 ], [ %45, %47 ], !dbg !380
  %55 = sext i16 %53 to i32, !dbg !381
  %56 = and i32 %55, 4, !dbg !382
  %57 = icmp eq i32 %56, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %57, label %71, label %58, !dbg !383

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !384
  %60 = load i32, i32* %59, align 8, !dbg !384, !tbaa !386
  %61 = sext i32 %60 to i64, !dbg !387
  %62 = sub nsw i64 %54, %61, !dbg !388
  %63 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !389
  %64 = load i8*, i8** %63, align 8, !dbg !389, !tbaa !391
  %65 = icmp eq i8* %64, null, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %65, label %85, label %66, !dbg !392

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !393
  %68 = load i32, i32* %67, align 8, !dbg !393, !tbaa !394
  %69 = sext i32 %68 to i64, !dbg !395
  %70 = sub nsw i64 %62, %69, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br label %85, !dbg !397

; <label>:71:                                     ; preds = %52
  %72 = and i32 %55, 8, !dbg !398
  %73 = icmp eq i32 %72, 0, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %73, label %85, label %74, !dbg !400

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !401
  %76 = load i8*, i8** %75, align 8, !dbg !401, !tbaa !402
  %77 = icmp eq i8* %76, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %77, label %85, label %78, !dbg !404

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !405
  %80 = bitcast i8** %79 to i64*, !dbg !405
  %81 = load i64, i64* %80, align 8, !dbg !405, !tbaa !406
  %82 = ptrtoint i8* %76 to i64, !dbg !407
  %83 = add i64 %54, %82, !dbg !407
  %84 = sub i64 %83, %81, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br label %85, !dbg !409

; <label>:85:                                     ; preds = %58, %74, %71, %78, %66
  %86 = phi i64 [ %70, %66 ], [ %62, %58 ], [ %84, %78 ], [ %54, %74 ], [ %54, %71 ], !dbg !410
  %87 = add nsw i64 %86, %2, !dbg !411
  br label %92, !dbg !413

; <label>:88:                                     ; preds = %33
  %89 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !414
  store i32 22, i32* %89, align 8, !dbg !415, !tbaa !353
  %90 = load i32, i32* %5, align 4, !dbg !416, !tbaa !355
  %91 = call i32 @pthread_setcancelstate(i32 %90, i32* nonnull %5) #4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !357
  br label %131

; <label>:92:                                     ; preds = %33, %33, %85
  %93 = phi i32 [ 0, %85 ], [ %3, %33 ], [ %3, %33 ]
  %94 = phi i64 [ %87, %85 ], [ %2, %33 ], [ %2, %33 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %95 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !419
  %96 = load i8*, i8** %95, align 8, !dbg !419, !tbaa !406
  %97 = icmp eq i8* %96, null, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %97, label %98, label %99, !dbg !422

; <label>:98:                                     ; preds = %92
  call void @__smakebuf_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br label %99, !dbg !423

; <label>:99:                                     ; preds = %92, %98
  %100 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !424
  %101 = icmp eq i32 %100, 0, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %101, label %102, label %107, !dbg !426

; <label>:102:                                    ; preds = %99
  %103 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !427
  %104 = load i8*, i8** %103, align 8, !dbg !427, !tbaa !370
  %105 = call i64 %27(%struct._reent* %0, i8* %104, i64 %94, i32 %93) #4, !dbg !428
  %106 = icmp eq i64 %105, -1, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %106, label %107, label %110, !dbg !430

; <label>:107:                                    ; preds = %99, %102
  %108 = load i32, i32* %5, align 4, !dbg !431, !tbaa !355
  %109 = call i32 @pthread_setcancelstate(i32 %108, i32* nonnull %5) #4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !357
  br label %131

; <label>:110:                                    ; preds = %102
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !434
  %112 = load i8*, i8** %111, align 8, !dbg !434, !tbaa !391
  %113 = icmp eq i8* %112, null, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br i1 %113, label %119, label %114, !dbg !436

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !437
  %116 = icmp eq i8* %112, %115, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %116, label %118, label %117, !dbg !440

; <label>:117:                                    ; preds = %114
  call void @free(i8* nonnull %112) #4, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br label %118, !dbg !437

; <label>:118:                                    ; preds = %114, %117
  store i8* null, i8** %111, align 8, !dbg !440, !tbaa !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br label %119, !dbg !440

; <label>:119:                                    ; preds = %110, %118
  %120 = bitcast i8** %95 to i64*, !dbg !441
  %121 = load i64, i64* %120, align 8, !dbg !441, !tbaa !406
  %122 = bitcast %struct.__sFILE* %1 to i64*, !dbg !442
  store i64 %121, i64* %122, align 8, !dbg !442, !tbaa !402
  %123 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !443
  store i32 0, i32* %123, align 8, !dbg !444, !tbaa !386
  %124 = load i16, i16* %15, align 8, !dbg !445, !tbaa !330
  %125 = and i16 %124, -2081, !dbg !445
  store i16 %125, i16* %15, align 8, !dbg !446, !tbaa !330
  %126 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 22, !dbg !447
  %127 = bitcast %struct._mbstate_t* %126 to i8*, !dbg !448
  %128 = call i8* @memset(i8* nonnull %127, i32 0, i64 8) #4, !dbg !449
  %129 = load i32, i32* %5, align 4, !dbg !450, !tbaa !355
  %130 = call i32 @pthread_setcancelstate(i32 %129, i32* nonnull %5) #4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %131, !dbg !451

; <label>:131:                                    ; preds = %49, %107, %88, %29, %119
  %132 = phi i32 [ 0, %119 ], [ -1, %49 ], [ -1, %29 ], [ -1, %88 ], [ -1, %107 ], !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  ret i32 %132, !dbg !453
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
define dso_local i32 @fseeko(%struct.__sFILE*, i64, i32) local_unnamed_addr #0 !dbg !454 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !462
  %5 = tail call i32 @_fseeko_r(%struct._reent* %4, %struct.__sFILE* %0, i64 %1, i32 %2) #6, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  ret i32 %5, !dbg !464
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
!336 = !DILocation(line: 146, column: 7, scope: !329)
!337 = !DILocation(line: 146, column: 18, scope: !329)
!338 = !DILocation(line: 146, column: 27, scope: !329)
!339 = !DILocation(line: 146, column: 41, scope: !329)
!340 = !DILocation(line: 146, column: 7, scope: !312)
!341 = !DILocation(line: 149, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !329, file: !1, line: 147, column: 5)
!343 = !DILocation(line: 150, column: 5, scope: !342)
!344 = !DILocation(line: 154, column: 21, scope: !345)
!345 = distinct !DILexicalBlock(scope: !312, file: !1, line: 154, column: 7)
!346 = !{!331, !323, i64 72}
!347 = !DILocation(line: 126, column: 11, scope: !32)
!348 = !DILocation(line: 154, column: 28, scope: !345)
!349 = !DILocation(line: 154, column: 7, scope: !312)
!350 = !DILocation(line: 156, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 155, column: 5)
!352 = !DILocation(line: 156, column: 19, scope: !351)
!353 = !{!319, !320, i64 0}
!354 = !DILocation(line: 157, column: 7, scope: !351)
!355 = !{!320, !320, i64 0}
!356 = !DILocation(line: 158, column: 7, scope: !351)
!357 = !DILocation(line: 379, column: 3, scope: !32)
!358 = !DILocation(line: 166, column: 3, scope: !312)
!359 = !DILocation(line: 174, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !312, file: !1, line: 167, column: 5)
!361 = !DILocation(line: 175, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !360, file: !1, line: 175, column: 11)
!363 = !DILocation(line: 175, column: 22, scope: !362)
!364 = !DILocation(line: 175, column: 11, scope: !360)
!365 = !DILocation(line: 176, column: 15, scope: !362)
!366 = !{!331, !334, i64 144}
!367 = !DILocation(line: 176, column: 2, scope: !362)
!368 = !DILocation(line: 179, column: 30, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !1, line: 178, column: 2)
!370 = !{!331, !323, i64 48}
!371 = !DILocation(line: 179, column: 13, scope: !369)
!372 = !DILocation(line: 180, column: 15, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 180, column: 8)
!374 = !DILocation(line: 180, column: 8, scope: !369)
!375 = !DILocation(line: 186, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !360, file: !1, line: 186, column: 11)
!377 = !DILocation(line: 182, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !1, line: 181, column: 6)
!379 = !DILocation(line: 183, column: 8, scope: !378)
!380 = !DILocation(line: 0, scope: !369)
!381 = !DILocation(line: 186, column: 11, scope: !376)
!382 = !DILocation(line: 186, column: 22, scope: !376)
!383 = !DILocation(line: 186, column: 11, scope: !360)
!384 = !DILocation(line: 188, column: 18, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !1, line: 187, column: 2)
!386 = !{!331, !320, i64 8}
!387 = !DILocation(line: 188, column: 14, scope: !385)
!388 = !DILocation(line: 188, column: 11, scope: !385)
!389 = !DILocation(line: 189, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 189, column: 8)
!391 = !{!331, !323, i64 88}
!392 = !DILocation(line: 189, column: 8, scope: !385)
!393 = !DILocation(line: 190, column: 20, scope: !390)
!394 = !{!331, !320, i64 112}
!395 = !DILocation(line: 190, column: 16, scope: !390)
!396 = !DILocation(line: 190, column: 13, scope: !390)
!397 = !DILocation(line: 190, column: 6, scope: !390)
!398 = !DILocation(line: 192, column: 27, scope: !399)
!399 = distinct !DILexicalBlock(scope: !376, file: !1, line: 192, column: 16)
!400 = !DILocation(line: 192, column: 35, scope: !399)
!401 = !DILocation(line: 192, column: 42, scope: !399)
!402 = !{!331, !323, i64 0}
!403 = !DILocation(line: 192, column: 45, scope: !399)
!404 = !DILocation(line: 192, column: 16, scope: !376)
!405 = !DILocation(line: 193, column: 29, scope: !399)
!406 = !{!331, !323, i64 24}
!407 = !DILocation(line: 193, column: 19, scope: !399)
!408 = !DILocation(line: 193, column: 9, scope: !399)
!409 = !DILocation(line: 193, column: 2, scope: !399)
!410 = !DILocation(line: 0, scope: !362)
!411 = !DILocation(line: 195, column: 14, scope: !360)
!412 = !DILocation(line: 135, column: 7, scope: !32)
!413 = !DILocation(line: 198, column: 7, scope: !360)
!414 = !DILocation(line: 206, column: 12, scope: !360)
!415 = !DILocation(line: 206, column: 19, scope: !360)
!416 = !DILocation(line: 207, column: 7, scope: !360)
!417 = !DILocation(line: 208, column: 7, scope: !360)
!418 = !DILocation(line: 0, scope: !360)
!419 = !DILocation(line: 220, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !312, file: !1, line: 220, column: 7)
!421 = !DILocation(line: 220, column: 21, scope: !420)
!422 = !DILocation(line: 220, column: 7, scope: !312)
!423 = !DILocation(line: 221, column: 5, scope: !420)
!424 = !DILocation(line: 358, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !312, file: !1, line: 358, column: 7)
!426 = !DILocation(line: 359, column: 7, scope: !425)
!427 = !DILocation(line: 359, column: 27, scope: !425)
!428 = !DILocation(line: 359, column: 10, scope: !425)
!429 = !DILocation(line: 359, column: 52, scope: !425)
!430 = !DILocation(line: 358, column: 7, scope: !312)
!431 = !DILocation(line: 361, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !425, file: !1, line: 360, column: 5)
!433 = !DILocation(line: 362, column: 7, scope: !432)
!434 = !DILocation(line: 365, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !312, file: !1, line: 365, column: 7)
!436 = !DILocation(line: 365, column: 7, scope: !312)
!437 = !DILocation(line: 366, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 366, column: 5)
!439 = distinct !DILexicalBlock(scope: !435, file: !1, line: 366, column: 5)
!440 = !DILocation(line: 366, column: 5, scope: !439)
!441 = !DILocation(line: 367, column: 20, scope: !312)
!442 = !DILocation(line: 367, column: 10, scope: !312)
!443 = !DILocation(line: 368, column: 7, scope: !312)
!444 = !DILocation(line: 368, column: 10, scope: !312)
!445 = !DILocation(line: 370, column: 14, scope: !312)
!446 = !DILocation(line: 377, column: 14, scope: !312)
!447 = !DILocation(line: 378, column: 16, scope: !312)
!448 = !DILocation(line: 378, column: 11, scope: !312)
!449 = !DILocation(line: 378, column: 3, scope: !312)
!450 = !DILocation(line: 379, column: 3, scope: !312)
!451 = !DILocation(line: 380, column: 3, scope: !32)
!452 = !DILocation(line: 0, scope: !351)
!453 = !DILocation(line: 381, column: 1, scope: !32)
!454 = distinct !DISubprogram(name: "fseeko", scope: !1, file: !1, line: 386, type: !455, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!5, !248, !93, !5}
!457 = !{!458, !459, !460}
!458 = !DILocalVariable(name: "fp", arg: 1, scope: !454, file: !1, line: 386, type: !248)
!459 = !DILocalVariable(name: "offset", arg: 2, scope: !454, file: !1, line: 386, type: !93)
!460 = !DILocalVariable(name: "whence", arg: 3, scope: !454, file: !1, line: 386, type: !5)
!461 = !DILocation(line: 386, column: 1, scope: !454)
!462 = !DILocation(line: 391, column: 21, scope: !454)
!463 = !DILocation(line: 391, column: 10, scope: !454)
!464 = !DILocation(line: 391, column: 3, scope: !454)
