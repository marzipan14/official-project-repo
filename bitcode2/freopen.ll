; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/freopen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/freopen.c"
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
define dso_local %struct.__sFILE* @_freopen_r(%struct._reent*, i8* noalias, i8* noalias, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !29 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %5 to i8*, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !267
  %8 = icmp eq %struct._reent* %0, null, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %8, label %14, label %9, !dbg !270

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !270
  %11 = load i32, i32* %10, align 8, !dbg !270, !tbaa !272
  %12 = icmp eq i32 %11, 0, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %12, label %13, label %14, !dbg !269

; <label>:13:                                     ; preds = %9
  tail call void @__sinit(%struct._reent* nonnull %0) #5, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br label %14, !dbg !270

; <label>:14:                                     ; preds = %9, %4, %13
  %15 = bitcast i32* %6 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #4, !dbg !281
  %16 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !283
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 23, !dbg !284
  %18 = call i32 @__sflags(%struct._reent* %0, i8* %2, i32* nonnull %5) #5, !dbg !287
  %19 = icmp eq i32 %18, 0, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %19, label %20, label %24, !dbg !291

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %6, align 4, !dbg !292, !tbaa !294
  %22 = call i32 @pthread_setcancelstate(i32 %21, i32* nonnull %6) #5, !dbg !295
  %23 = call i32 @_fclose_r(%struct._reent* %0, %struct.__sFILE* %3) #5, !dbg !296
  br label %117, !dbg !297

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 3, !dbg !298
  %26 = load i16, i16* %25, align 8, !dbg !298, !tbaa !300
  %27 = icmp eq i16 %26, 0, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %27, label %28, label %29, !dbg !307

; <label>:28:                                     ; preds = %24
  store i16 32, i16* %25, align 8, !dbg !308, !tbaa !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br label %44, !dbg !309

; <label>:29:                                     ; preds = %24
  %30 = and i16 %26, 8, !dbg !310
  %31 = icmp eq i16 %30, 0, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br i1 %31, label %34, label %32, !dbg !313

; <label>:32:                                     ; preds = %29
  %33 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #5, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br label %34, !dbg !314

; <label>:34:                                     ; preds = %29, %32
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 11, !dbg !315
  %36 = load i32 (%struct._reent*, i8*)*, i32 (%struct._reent*, i8*)** %35, align 8, !dbg !315, !tbaa !317
  %37 = icmp ne i32 (%struct._reent*, i8*)* %36, null, !dbg !318
  %38 = icmp ne i8* %1, null, !dbg !319
  %39 = and i1 %38, %37, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %39, label %40, label %44, !dbg !320

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 7, !dbg !321
  %42 = load i8*, i8** %41, align 8, !dbg !321, !tbaa !322
  %43 = call i32 %36(%struct._reent* %0, i8* %42) #5, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br label %46, !dbg !324

; <label>:44:                                     ; preds = %34, %28
  %45 = icmp eq i8* %1, null, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %45, label %51, label %46, !dbg !324

; <label>:46:                                     ; preds = %40, %44
  %47 = load i32, i32* %5, align 4, !dbg !327, !tbaa !294
  %48 = call i32 @_open_r(%struct._reent* %0, i8* nonnull %1, i32 %47, i32 438) #5, !dbg !329
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !331
  %50 = load i32, i32* %49, align 8, !dbg !331, !tbaa !332
  br label %59, !dbg !333

; <label>:51:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  %52 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 11, !dbg !336
  %53 = load i32 (%struct._reent*, i8*)*, i32 (%struct._reent*, i8*)** %52, align 8, !dbg !336, !tbaa !317
  %54 = icmp eq i32 (%struct._reent*, i8*)* %53, null, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %54, label %62, label %55, !dbg !341

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 7, !dbg !342
  %57 = load i8*, i8** %56, align 8, !dbg !342, !tbaa !322
  %58 = call i32 %53(%struct._reent* %0, i8* %57) #5, !dbg !343
  br label %59, !dbg !343

; <label>:59:                                     ; preds = %46, %55
  %60 = phi i32 [ -1, %55 ], [ %48, %46 ]
  %61 = phi i32 [ 9, %55 ], [ %50, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br label %62, !dbg !345

; <label>:62:                                     ; preds = %59, %51
  %63 = phi i32 [ -1, %51 ], [ %60, %59 ], !dbg !347
  %64 = phi i32 [ 9, %51 ], [ %61, %59 ], !dbg !348
  %65 = load i16, i16* %25, align 8, !dbg !345, !tbaa !300
  %66 = trunc i16 %65 to i8, !dbg !349
  %67 = icmp slt i8 %66, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 5, i32 0, !dbg !348
  br i1 %67, label %69, label %71, !dbg !350

; <label>:69:                                     ; preds = %62
  %70 = load i8*, i8** %68, align 8, !dbg !351, !tbaa !352
  call void @free(i8* %70) #5, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br label %71, !dbg !351

; <label>:71:                                     ; preds = %62, %69
  %72 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 2, !dbg !353
  store i32 0, i32* %72, align 4, !dbg !354, !tbaa !355
  %73 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 1, !dbg !356
  store i32 0, i32* %73, align 8, !dbg !357, !tbaa !358
  %74 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 0, !dbg !359
  store i8* null, i8** %74, align 8, !dbg !360, !tbaa !361
  store i8* null, i8** %68, align 8, !dbg !362, !tbaa !352
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 5, i32 1, !dbg !363
  store i32 0, i32* %75, align 8, !dbg !364, !tbaa !365
  %76 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 6, !dbg !366
  store i32 0, i32* %76, align 8, !dbg !367, !tbaa !368
  %77 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 12, i32 0, !dbg !369
  %78 = load i8*, i8** %77, align 8, !dbg !369, !tbaa !371
  %79 = icmp eq i8* %78, null, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %79, label %85, label %80, !dbg !372

; <label>:80:                                     ; preds = %71
  %81 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 15, i64 0, !dbg !373
  %82 = icmp eq i8* %78, %81, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %82, label %84, label %83, !dbg !376

; <label>:83:                                     ; preds = %80
  call void @free(i8* nonnull %78) #5, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %84, !dbg !373

; <label>:84:                                     ; preds = %80, %83
  store i8* null, i8** %77, align 8, !dbg !376, !tbaa !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %85, !dbg !376

; <label>:85:                                     ; preds = %71, %84
  %86 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 12, i32 1, !dbg !377
  store i32 0, i32* %86, align 8, !dbg !378, !tbaa !379
  %87 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 17, i32 0, !dbg !380
  %88 = load i8*, i8** %87, align 8, !dbg !380, !tbaa !382
  %89 = icmp eq i8* %88, null, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %89, label %91, label %90, !dbg !383

; <label>:90:                                     ; preds = %85
  call void @free(i8* nonnull %88) #5, !dbg !384
  store i8* null, i8** %87, align 8, !dbg !384, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br label %91, !dbg !384

; <label>:91:                                     ; preds = %85, %90
  %92 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 17, i32 1, !dbg !386
  store i32 0, i32* %92, align 8, !dbg !387, !tbaa !388
  %93 = load i16, i16* %25, align 8, !dbg !389, !tbaa !300
  %94 = and i16 %93, -8193, !dbg !389
  store i16 %94, i16* %25, align 8, !dbg !389, !tbaa !300
  %95 = load i32, i32* %17, align 4, !dbg !390, !tbaa !391
  %96 = and i32 %95, -8193, !dbg !390
  store i32 %96, i32* %17, align 4, !dbg !390, !tbaa !391
  %97 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 22, !dbg !392
  %98 = bitcast %struct._mbstate_t* %97 to i8*, !dbg !393
  %99 = call i8* @memset(i8* nonnull %98, i32 0, i64 8) #5, !dbg !394
  %100 = icmp slt i32 %63, 0, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %100, label %101, label %105, !dbg !397

; <label>:101:                                    ; preds = %91
  call void @__sfp_lock_acquire() #5, !dbg !398
  store i16 0, i16* %25, align 8, !dbg !400, !tbaa !300
  %102 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !401
  store i32 %64, i32* %102, align 8, !dbg !402, !tbaa !332
  call void @__sfp_lock_release() #5, !dbg !403
  %103 = load i32, i32* %6, align 4, !dbg !404, !tbaa !294
  %104 = call i32 @pthread_setcancelstate(i32 %103, i32* nonnull %6) #5, !dbg !405
  br label %117, !dbg !406

; <label>:105:                                    ; preds = %91
  %106 = trunc i32 %18 to i16, !dbg !407
  store i16 %106, i16* %25, align 8, !dbg !408, !tbaa !300
  %107 = trunc i32 %63 to i16, !dbg !409
  %108 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 4, !dbg !410
  store i16 %107, i16* %108, align 2, !dbg !411, !tbaa !412
  %109 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 7, !dbg !413
  %110 = bitcast i8** %109 to %struct.__sFILE**, !dbg !414
  store %struct.__sFILE* %3, %struct.__sFILE** %110, align 8, !dbg !414, !tbaa !322
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 8, !dbg !415
  %112 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %111 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !416
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %112, align 8, !dbg !416, !tbaa !417
  %113 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 10, !dbg !418
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %113, align 8, !dbg !419, !tbaa !420
  %114 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 11, !dbg !421
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %114, align 8, !dbg !422, !tbaa !317
  %115 = load i32, i32* %6, align 4, !dbg !423, !tbaa !294
  %116 = call i32 @pthread_setcancelstate(i32 %115, i32* nonnull %6) #5, !dbg !424
  br label %117, !dbg !425

; <label>:117:                                    ; preds = %105, %101, %20
  %118 = phi %struct.__sFILE* [ null, %20 ], [ null, %101 ], [ %3, %105 ], !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4, !dbg !427
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret %struct.__sFILE* %118, !dbg !427
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
declare dso_local i32 @__sflags(%struct._reent*, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_fclose_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_open_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @__sread(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__swrite(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__sseek(%struct._reent*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__sclose(%struct._reent*, i8*) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @freopen(i8* noalias, i8* noalias, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !428 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !436
  %5 = tail call %struct.__sFILE* @_freopen_r(%struct._reent* %4, i8* %0, i8* %1, %struct.__sFILE* %2) #6, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  ret %struct.__sFILE* %5, !dbg !438
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/freopen.c", directory: "/root/.unikraft/apps/redis/build")
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
!29 = distinct !DISubprogram(name: "_freopen_r", scope: !1, file: !1, line: 91, type: !30, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !61, !251, !251, !252}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !34, line: 66, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !36, line: 287, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 181, size: 1408, elements: !38)
!38 = !{!39, !42, !43, !44, !46, !47, !52, !53, !54, !218, !224, !229, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !249, !250}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !37, file: !36, line: 182, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !37, file: !36, line: 183, baseType: !5, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !37, file: !36, line: 184, baseType: !5, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !36, line: 185, baseType: !45, size: 16, offset: 128)
!45 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !37, file: !36, line: 186, baseType: !45, size: 16, offset: 144)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !37, file: !36, line: 187, baseType: !48, size: 128, offset: 192)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !36, line: 117, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !48, file: !36, line: 118, baseType: !40, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !48, file: !36, line: 119, baseType: !5, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !37, file: !36, line: 188, baseType: !5, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !37, file: !36, line: 195, baseType: !22, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !37, file: !36, line: 197, baseType: !55, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !61, !22, !23, !5}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !59, line: 145, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !36, line: 569, size: 14912, elements: !63)
!63 = !{!64, !65, !67, !68, !69, !70, !74, !75, !78, !79, !83, !98, !99, !100, !102, !103, !104, !182, !203, !204, !209, !216}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !62, file: !36, line: 571, baseType: !5, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !62, file: !36, line: 576, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !62, file: !36, line: 576, baseType: !66, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !62, file: !36, line: 576, baseType: !66, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !62, file: !36, line: 578, baseType: !5, size: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !62, file: !36, line: 579, baseType: !71, size: 200, offset: 288)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 25)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !62, file: !36, line: 582, baseType: !5, size: 32, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !62, file: !36, line: 583, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !36, line: 40, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !62, file: !36, line: 585, baseType: !5, size: 32, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !62, file: !36, line: 587, baseType: !80, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !61}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !62, file: !36, line: 590, baseType: !84, size: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !36, line: 47, size: 256, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !85, file: !36, line: 49, baseType: !84, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !85, file: !36, line: 50, baseType: !5, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !85, file: !36, line: 50, baseType: !5, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !85, file: !36, line: 50, baseType: !5, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !85, file: !36, line: 50, baseType: !5, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !85, file: !36, line: 51, baseType: !93, size: 32, offset: 192)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32, elements: !96)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !36, line: 25, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !62, file: !36, line: 591, baseType: !5, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !62, file: !36, line: 592, baseType: !84, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !62, file: !36, line: 593, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !62, file: !36, line: 596, baseType: !5, size: 32, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !62, file: !36, line: 597, baseType: !23, size: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !62, file: !36, line: 632, baseType: !105, size: 2880, offset: 1152)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !36, line: 599, size: 2880, elements: !106)
!106 = !{!107, !173}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !105, file: !36, line: 622, baseType: !108, size: 1728)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !36, line: 601, size: 1728, elements: !109)
!109 = !{!110, !111, !112, !116, !128, !129, !131, !141, !156, !157, !158, !162, !166, !167, !168, !169, !170, !171, !172}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !108, file: !36, line: 603, baseType: !95, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !108, file: !36, line: 604, baseType: !23, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !108, file: !36, line: 605, baseType: !113, size: 208, offset: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 208, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 26)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !108, file: !36, line: 606, baseType: !117, size: 288, offset: 352)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !36, line: 55, size: 288, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !117, file: !36, line: 57, baseType: !5, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !117, file: !36, line: 58, baseType: !5, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !117, file: !36, line: 59, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !117, file: !36, line: 60, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !117, file: !36, line: 61, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !117, file: !36, line: 62, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !117, file: !36, line: 63, baseType: !5, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !117, file: !36, line: 64, baseType: !5, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !117, file: !36, line: 65, baseType: !5, size: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !108, file: !36, line: 607, baseType: !5, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !108, file: !36, line: 608, baseType: !130, size: 64, offset: 704)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !108, file: !36, line: 609, baseType: !132, size: 112, offset: 768)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !36, line: 319, size: 112, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !132, file: !36, line: 320, baseType: !135, size: 48)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !137)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !132, file: !36, line: 321, baseType: !135, size: 48, offset: 48)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !132, file: !36, line: 322, baseType: !136, size: 16, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !108, file: !36, line: 610, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !59, line: 171, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 163, size: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !59, line: 165, baseType: !5, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !143, file: !59, line: 170, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !59, line: 166, size: 32, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !147, file: !59, line: 168, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !151, line: 124, baseType: !95)
!151 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !147, file: !59, line: 169, baseType: !153, size: 32)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !108, file: !36, line: 611, baseType: !142, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !108, file: !36, line: 612, baseType: !142, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !108, file: !36, line: 613, baseType: !159, size: 64, offset: 1088)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !108, file: !36, line: 614, baseType: !163, size: 192, offset: 1152)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !108, file: !36, line: 615, baseType: !5, size: 32, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !108, file: !36, line: 616, baseType: !142, size: 64, offset: 1376)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !108, file: !36, line: 617, baseType: !142, size: 64, offset: 1440)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !108, file: !36, line: 618, baseType: !142, size: 64, offset: 1504)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !108, file: !36, line: 619, baseType: !142, size: 64, offset: 1568)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !108, file: !36, line: 620, baseType: !142, size: 64, offset: 1632)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !108, file: !36, line: 621, baseType: !5, size: 32, offset: 1696)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !105, file: !36, line: 631, baseType: !174, size: 2880)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !36, line: 626, size: 2880, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !174, file: !36, line: 629, baseType: !177, size: 1920)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1920, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 30)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !174, file: !36, line: 630, baseType: !181, size: 960, offset: 1920)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !178)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !62, file: !36, line: 636, baseType: !183, size: 64, offset: 4032)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !36, line: 93, size: 6336, elements: !185)
!185 = !{!186, !187, !188, !195}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !184, file: !36, line: 94, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !184, file: !36, line: 95, baseType: !5, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !184, file: !36, line: 97, baseType: !189, size: 2048, offset: 128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !193)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null}
!193 = !{!194}
!194 = !DISubrange(count: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !184, file: !36, line: 98, baseType: !196, size: 4160, offset: 2176)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !36, line: 74, size: 4160, elements: !197)
!197 = !{!198, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !196, file: !36, line: 75, baseType: !199, size: 2048)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !193)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !196, file: !36, line: 76, baseType: !199, size: 2048, offset: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !196, file: !36, line: 78, baseType: !94, size: 32, offset: 4096)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !196, file: !36, line: 81, baseType: !94, size: 32, offset: 4128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !62, file: !36, line: 637, baseType: !184, size: 6336, offset: 4096)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !62, file: !36, line: 641, baseType: !205, size: 64, offset: 10432)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !5}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !62, file: !36, line: 646, baseType: !210, size: 192, offset: 10496)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !36, line: 291, size: 192, elements: !211)
!211 = !{!212, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !210, file: !36, line: 293, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !210, file: !36, line: 294, baseType: !5, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !210, file: !36, line: 295, baseType: !66, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !62, file: !36, line: 648, baseType: !217, size: 4224, offset: 10688)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 4224, elements: !137)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !37, file: !36, line: 199, baseType: !219, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!58, !61, !22, !222, !5}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !37, file: !36, line: 202, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !61, !22, !228, !5}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !59, line: 114, baseType: !60)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !37, file: !36, line: 203, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!5, !61, !22}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !37, file: !36, line: 206, baseType: !48, size: 128, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !37, file: !36, line: 207, baseType: !40, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !37, file: !36, line: 208, baseType: !5, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !37, file: !36, line: 211, baseType: !237, size: 24, offset: 928)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 24, elements: !137)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !37, file: !36, line: 212, baseType: !239, size: 8, offset: 952)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !37, file: !36, line: 215, baseType: !48, size: 128, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !37, file: !36, line: 218, baseType: !5, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !36, line: 219, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !59, line: 44, baseType: !60)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !37, file: !36, line: 222, baseType: !61, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !37, file: !36, line: 226, baseType: !246, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !59, line: 175, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !248, line: 12, baseType: !5)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !37, file: !36, line: 228, baseType: !142, size: 64, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !37, file: !36, line: 229, baseType: !5, size: 32, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !265}
!254 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !1, line: 91, type: !61)
!255 = !DILocalVariable(name: "file", arg: 2, scope: !29, file: !1, line: 91, type: !251)
!256 = !DILocalVariable(name: "mode", arg: 3, scope: !29, file: !1, line: 91, type: !251)
!257 = !DILocalVariable(name: "fp", arg: 4, scope: !29, file: !1, line: 91, type: !252)
!258 = !DILocalVariable(name: "f", scope: !29, file: !1, line: 97, type: !5)
!259 = !DILocalVariable(name: "flags", scope: !29, file: !1, line: 98, type: !5)
!260 = !DILocalVariable(name: "oflags", scope: !29, file: !1, line: 98, type: !5)
!261 = !DILocalVariable(name: "oflags2", scope: !29, file: !1, line: 98, type: !5)
!262 = !DILocalVariable(name: "e", scope: !29, file: !1, line: 99, type: !5)
!263 = !DILocalVariable(name: "_check_init_ptr", scope: !264, file: !1, line: 101, type: !61)
!264 = distinct !DILexicalBlock(scope: !29, file: !1, line: 101, column: 3)
!265 = !DILocalVariable(name: "__oldcancel", scope: !29, file: !1, line: 106, type: !5)
!266 = !DILocation(line: 91, column: 1, scope: !29)
!267 = !DILocation(line: 98, column: 3, scope: !29)
!268 = !DILocation(line: 99, column: 7, scope: !29)
!269 = !DILocation(line: 101, column: 3, scope: !264)
!270 = !DILocation(line: 101, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !1, line: 101, column: 3)
!272 = !{!273, !274, i64 80}
!273 = !{!"_reent", !274, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !274, i64 32, !275, i64 36, !274, i64 64, !277, i64 72, !274, i64 80, !277, i64 88, !277, i64 96, !274, i64 104, !277, i64 112, !277, i64 120, !274, i64 128, !277, i64 136, !275, i64 144, !277, i64 504, !278, i64 512, !277, i64 1304, !280, i64 1312, !275, i64 1336}
!274 = !{!"int", !275, i64 0}
!275 = !{!"omnipotent char", !276, i64 0}
!276 = !{!"Simple C/C++ TBAA"}
!277 = !{!"any pointer", !275, i64 0}
!278 = !{!"_atexit", !277, i64 0, !274, i64 8, !275, i64 16, !279, i64 272}
!279 = !{!"_on_exit_args", !275, i64 0, !275, i64 256, !274, i64 512, !274, i64 516}
!280 = !{!"_glue", !277, i64 0, !274, i64 8, !277, i64 16}
!281 = !DILocation(line: 106, column: 3, scope: !29)
!282 = !DILocation(line: 106, column: 7, scope: !29)
!283 = !DILocation(line: 107, column: 3, scope: !29)
!284 = !DILocation(line: 109, column: 17, scope: !29)
!285 = !DILocation(line: 98, column: 22, scope: !29)
!286 = !DILocation(line: 98, column: 14, scope: !29)
!287 = !DILocation(line: 113, column: 16, scope: !288)
!288 = distinct !DILexicalBlock(scope: !29, file: !1, line: 113, column: 7)
!289 = !DILocation(line: 98, column: 7, scope: !29)
!290 = !DILocation(line: 113, column: 47, scope: !288)
!291 = !DILocation(line: 113, column: 7, scope: !29)
!292 = !DILocation(line: 118, column: 31, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !1, line: 114, column: 5)
!294 = !{!274, !274, i64 0}
!295 = !DILocation(line: 118, column: 7, scope: !293)
!296 = !DILocation(line: 120, column: 7, scope: !293)
!297 = !DILocation(line: 121, column: 7, scope: !293)
!298 = !DILocation(line: 132, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !29, file: !1, line: 132, column: 7)
!300 = !{!301, !302, i64 16}
!301 = !{!"__sFILE", !277, i64 0, !274, i64 8, !274, i64 12, !302, i64 16, !302, i64 18, !303, i64 24, !274, i64 40, !277, i64 48, !277, i64 56, !277, i64 64, !277, i64 72, !277, i64 80, !303, i64 88, !277, i64 104, !274, i64 112, !275, i64 116, !275, i64 119, !303, i64 120, !274, i64 136, !304, i64 144, !277, i64 152, !274, i64 160, !305, i64 164, !274, i64 172}
!302 = !{!"short", !275, i64 0}
!303 = !{!"__sbuf", !277, i64 0, !274, i64 8}
!304 = !{!"long", !275, i64 0}
!305 = !{!"", !274, i64 0, !275, i64 4}
!306 = !DILocation(line: 132, column: 18, scope: !299)
!307 = !DILocation(line: 132, column: 7, scope: !29)
!308 = !DILocation(line: 133, column: 16, scope: !299)
!309 = !DILocation(line: 133, column: 5, scope: !299)
!310 = !DILocation(line: 136, column: 22, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 136, column: 11)
!312 = distinct !DILexicalBlock(scope: !299, file: !1, line: 135, column: 5)
!313 = !DILocation(line: 136, column: 11, scope: !312)
!314 = !DILocation(line: 137, column: 2, scope: !311)
!315 = !DILocation(line: 142, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 142, column: 11)
!317 = !{!301, !277, i64 80}
!318 = !DILocation(line: 142, column: 22, scope: !316)
!319 = !DILocation(line: 142, column: 38, scope: !316)
!320 = !DILocation(line: 142, column: 30, scope: !316)
!321 = !DILocation(line: 143, column: 23, scope: !316)
!322 = !{!301, !277, i64 48}
!323 = !DILocation(line: 143, column: 2, scope: !316)
!324 = !DILocation(line: 151, column: 7, scope: !29)
!325 = !DILocation(line: 151, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !29, file: !1, line: 151, column: 7)
!327 = !DILocation(line: 153, column: 40, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !1, line: 152, column: 5)
!329 = !DILocation(line: 153, column: 11, scope: !328)
!330 = !DILocation(line: 97, column: 16, scope: !29)
!331 = !DILocation(line: 154, column: 16, scope: !328)
!332 = !{!273, !274, i64 0}
!333 = !DILocation(line: 155, column: 5, scope: !328)
!334 = !DILocation(line: 185, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !326, file: !1, line: 157, column: 5)
!336 = !DILocation(line: 188, column: 12, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 188, column: 8)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 186, column: 2)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 185, column: 11)
!340 = !DILocation(line: 188, column: 19, scope: !337)
!341 = !DILocation(line: 188, column: 8, scope: !338)
!342 = !DILocation(line: 189, column: 27, scope: !337)
!343 = !DILocation(line: 189, column: 6, scope: !337)
!344 = !DILocation(line: 0, scope: !328)
!345 = !DILocation(line: 200, column: 11, scope: !346)
!346 = distinct !DILexicalBlock(scope: !29, file: !1, line: 200, column: 7)
!347 = !DILocation(line: 0, scope: !335)
!348 = !DILocation(line: 0, scope: !29)
!349 = !DILocation(line: 200, column: 18, scope: !346)
!350 = !DILocation(line: 200, column: 7, scope: !29)
!351 = !DILocation(line: 201, column: 5, scope: !346)
!352 = !{!301, !277, i64 24}
!353 = !DILocation(line: 202, column: 7, scope: !29)
!354 = !DILocation(line: 202, column: 10, scope: !29)
!355 = !{!301, !274, i64 12}
!356 = !DILocation(line: 203, column: 7, scope: !29)
!357 = !DILocation(line: 203, column: 10, scope: !29)
!358 = !{!301, !274, i64 8}
!359 = !DILocation(line: 204, column: 7, scope: !29)
!360 = !DILocation(line: 204, column: 10, scope: !29)
!361 = !{!301, !277, i64 0}
!362 = !DILocation(line: 205, column: 17, scope: !29)
!363 = !DILocation(line: 206, column: 11, scope: !29)
!364 = !DILocation(line: 206, column: 17, scope: !29)
!365 = !{!301, !274, i64 32}
!366 = !DILocation(line: 207, column: 7, scope: !29)
!367 = !DILocation(line: 207, column: 16, scope: !29)
!368 = !{!301, !274, i64 40}
!369 = !DILocation(line: 208, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !29, file: !1, line: 208, column: 7)
!371 = !{!301, !277, i64 88}
!372 = !DILocation(line: 208, column: 7, scope: !29)
!373 = !DILocation(line: 209, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 209, column: 5)
!375 = distinct !DILexicalBlock(scope: !370, file: !1, line: 209, column: 5)
!376 = !DILocation(line: 209, column: 5, scope: !375)
!377 = !DILocation(line: 210, column: 11, scope: !29)
!378 = !DILocation(line: 210, column: 17, scope: !29)
!379 = !{!301, !274, i64 96}
!380 = !DILocation(line: 211, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !29, file: !1, line: 211, column: 7)
!382 = !{!301, !277, i64 120}
!383 = !DILocation(line: 211, column: 7, scope: !29)
!384 = !DILocation(line: 212, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 212, column: 5)
!386 = !DILocation(line: 213, column: 11, scope: !29)
!387 = !DILocation(line: 213, column: 17, scope: !29)
!388 = !{!301, !274, i64 128}
!389 = !DILocation(line: 214, column: 14, scope: !29)
!390 = !DILocation(line: 215, column: 15, scope: !29)
!391 = !{!301, !274, i64 172}
!392 = !DILocation(line: 216, column: 16, scope: !29)
!393 = !DILocation(line: 216, column: 11, scope: !29)
!394 = !DILocation(line: 216, column: 3, scope: !29)
!395 = !DILocation(line: 218, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !29, file: !1, line: 218, column: 7)
!397 = !DILocation(line: 218, column: 7, scope: !29)
!398 = !DILocation(line: 220, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !1, line: 219, column: 5)
!400 = !DILocation(line: 221, column: 18, scope: !399)
!401 = !DILocation(line: 222, column: 12, scope: !399)
!402 = !DILocation(line: 222, column: 19, scope: !399)
!403 = !DILocation(line: 228, column: 7, scope: !399)
!404 = !DILocation(line: 230, column: 31, scope: !399)
!405 = !DILocation(line: 230, column: 7, scope: !399)
!406 = !DILocation(line: 232, column: 7, scope: !399)
!407 = !DILocation(line: 235, column: 16, scope: !29)
!408 = !DILocation(line: 235, column: 14, scope: !29)
!409 = !DILocation(line: 236, column: 15, scope: !29)
!410 = !DILocation(line: 236, column: 7, scope: !29)
!411 = !DILocation(line: 236, column: 13, scope: !29)
!412 = !{!301, !302, i64 18}
!413 = !DILocation(line: 237, column: 7, scope: !29)
!414 = !DILocation(line: 237, column: 15, scope: !29)
!415 = !DILocation(line: 238, column: 7, scope: !29)
!416 = !DILocation(line: 238, column: 13, scope: !29)
!417 = !{!277, !277, i64 0}
!418 = !DILocation(line: 240, column: 7, scope: !29)
!419 = !DILocation(line: 240, column: 13, scope: !29)
!420 = !{!301, !277, i64 72}
!421 = !DILocation(line: 241, column: 7, scope: !29)
!422 = !DILocation(line: 241, column: 14, scope: !29)
!423 = !DILocation(line: 251, column: 27, scope: !29)
!424 = !DILocation(line: 251, column: 3, scope: !29)
!425 = !DILocation(line: 253, column: 3, scope: !29)
!426 = !DILocation(line: 0, scope: !293)
!427 = !DILocation(line: 254, column: 1, scope: !29)
!428 = distinct !DISubprogram(name: "freopen", scope: !1, file: !1, line: 259, type: !429, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!32, !251, !251, !252}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "file", arg: 1, scope: !428, file: !1, line: 259, type: !251)
!433 = !DILocalVariable(name: "mode", arg: 2, scope: !428, file: !1, line: 259, type: !251)
!434 = !DILocalVariable(name: "fp", arg: 3, scope: !428, file: !1, line: 259, type: !252)
!435 = !DILocation(line: 259, column: 1, scope: !428)
!436 = !DILocation(line: 264, column: 22, scope: !428)
!437 = !DILocation(line: 264, column: 10, scope: !428)
!438 = !DILocation(line: 264, column: 3, scope: !428)
