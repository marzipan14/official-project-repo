; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoimax.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoimax.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @_strtoimax_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !20 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !311
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !316
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !316, !tbaa !317
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %8, label %9, label %10, !dbg !311

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br label %10, !dbg !311

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  %12 = tail call fastcc i64 @_strtoimax_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  ret i64 %12, !dbg !331
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoimax_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !332 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br label %6, !dbg !357

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !358
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !360
  %9 = load i8, i8* %7, align 1, !dbg !361, !tbaa !362
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !364
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !364
  %12 = sext i8 %9 to i64, !dbg !364
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !364
  %14 = load i8, i8* %13, align 1, !dbg !364, !tbaa !362
  %15 = and i8 %14, 8, !dbg !364
  %16 = icmp eq i8 %15, 0, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %16, label %17, label %6, !dbg !365, !llvm.loop !366

; <label>:17:                                     ; preds = %6
  %18 = icmp eq i8 %9, 45, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %18, label %21, label %19, !dbg !370

; <label>:19:                                     ; preds = %17
  %20 = icmp eq i8 %9, 43, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %20, label %21, label %25, !dbg !374

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %19 ]
  %23 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !375
  %24 = load i8, i8* %8, align 1, !dbg !375, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br label %25, !dbg !377

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8* [ %8, %19 ], [ %23, %21 ], !dbg !358
  %27 = phi i8 [ %9, %19 ], [ %24, %21 ], !dbg !358
  %28 = phi i32 [ 0, %19 ], [ %22, %21 ], !dbg !379
  %29 = or i32 %3, 16, !dbg !377
  %30 = icmp eq i32 %29, 16, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %30, label %31, label %42, !dbg !377

; <label>:31:                                     ; preds = %25
  %32 = icmp eq i8 %27, 48, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %32, label %33, label %42, !dbg !381

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %26, align 1, !dbg !382, !tbaa !362
  %35 = icmp eq i8 %34, 120, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br i1 %35, label %38, label %36, !dbg !384

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i8 %34, 88, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %37, label %38, label %42, !dbg !386

; <label>:38:                                     ; preds = %33, %36
  %39 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !387
  %40 = load i8, i8* %39, align 1, !dbg !387, !tbaa !362
  %41 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br label %47, !dbg !391

; <label>:42:                                     ; preds = %25, %36, %31
  %43 = icmp eq i32 %3, 0, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %43, label %44, label %51, !dbg !391

; <label>:44:                                     ; preds = %42
  %45 = icmp eq i8 %27, 48, !dbg !394
  %46 = select i1 %45, i32 8, i32 10, !dbg !395
  br label %47, !dbg !396

; <label>:47:                                     ; preds = %44, %38
  %48 = phi i8 [ %40, %38 ], [ %27, %44 ]
  %49 = phi i8* [ %41, %38 ], [ %26, %44 ]
  %50 = phi i32 [ 16, %38 ], [ %46, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br label %51, !dbg !398

; <label>:51:                                     ; preds = %47, %42
  %52 = phi i8 [ %27, %42 ], [ %48, %47 ]
  %53 = phi i8* [ %26, %42 ], [ %49, %47 ]
  %54 = phi i32 [ %3, %42 ], [ %50, %47 ], !dbg !399
  %55 = icmp ne i32 %28, 0, !dbg !398
  %56 = select i1 %55, i64 -9223372036854775808, i64 9223372036854775807, !dbg !398
  %57 = sext i32 %54 to i64, !dbg !401
  %58 = urem i64 %56, %57, !dbg !402
  %59 = trunc i64 %58 to i32, !dbg !403
  %60 = udiv i64 %56, %57, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %61 = icmp sgt i8 %52, 47, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %61, label %66, label %62, !dbg !414

; <label>:62:                                     ; preds = %101, %51
  %63 = phi i8* [ %53, %51 ], [ %104, %101 ], !dbg !415
  %64 = phi i64 [ undef, %51 ], [ %102, %101 ]
  %65 = phi i32 [ undef, %51 ], [ %103, %101 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br label %76, !dbg !416

; <label>:66:                                     ; preds = %51, %101
  %67 = phi i32 [ %103, %101 ], [ undef, %51 ]
  %68 = phi i8 [ %105, %101 ], [ %52, %51 ]
  %69 = phi i64 [ %102, %101 ], [ undef, %51 ]
  %70 = phi i8* [ %104, %101 ], [ %53, %51 ]
  %71 = icmp slt i8 %68, 58, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %71, label %84, label %72, !dbg !419

; <label>:72:                                     ; preds = %66
  %73 = icmp sgt i8 %68, 64, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %73, label %74, label %76, !dbg !416

; <label>:74:                                     ; preds = %72
  %75 = icmp slt i8 %68, 91, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %75, label %84, label %80, !dbg !422

; <label>:76:                                     ; preds = %72, %62
  %77 = phi i8* [ %63, %62 ], [ %70, %72 ]
  %78 = phi i64 [ %64, %62 ], [ %69, %72 ]
  %79 = phi i32 [ %65, %62 ], [ %67, %72 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br label %107, !dbg !423

; <label>:80:                                     ; preds = %74
  %81 = icmp sgt i8 %68, 96, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %81, label %82, label %107, !dbg !423

; <label>:82:                                     ; preds = %80
  %83 = icmp slt i8 %68, 123, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %83, label %84, label %107, !dbg !427

; <label>:84:                                     ; preds = %82, %74, %66
  %85 = phi i8 [ -48, %66 ], [ -55, %74 ], [ -87, %82 ]
  %86 = add i8 %68, %85, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %87 = sext i8 %86 to i32, !dbg !429
  %88 = icmp sgt i32 %54, %87, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %88, label %89, label %107, !dbg !432

; <label>:89:                                     ; preds = %84
  %90 = icmp slt i32 %67, 0, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %90, label %101, label %91, !dbg !435

; <label>:91:                                     ; preds = %89
  %92 = icmp ugt i64 %69, %60, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %92, label %101, label %93, !dbg !437

; <label>:93:                                     ; preds = %91
  %94 = icmp eq i64 %69, %60, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %94, label %95, label %97, !dbg !439

; <label>:95:                                     ; preds = %93
  %96 = icmp sgt i32 %87, %59, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %96, label %101, label %97, !dbg !441

; <label>:97:                                     ; preds = %95, %93
  %98 = mul i64 %69, %57, !dbg !442
  %99 = sext i8 %86 to i64, !dbg !444
  %100 = add i64 %98, %99, !dbg !445
  br label %101

; <label>:101:                                    ; preds = %89, %91, %95, %97
  %102 = phi i64 [ %100, %97 ], [ %69, %95 ], [ %69, %91 ], [ %69, %89 ]
  %103 = phi i32 [ 1, %97 ], [ -1, %95 ], [ -1, %91 ], [ -1, %89 ], !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %104 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !447
  %105 = load i8, i8* %70, align 1, !dbg !448, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  %106 = icmp sgt i8 %105, 47, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %106, label %66, label %62, !dbg !414, !llvm.loop !450

; <label>:107:                                    ; preds = %84, %80, %82, %76
  %108 = phi i8* [ %77, %76 ], [ %70, %82 ], [ %70, %80 ], [ %70, %84 ]
  %109 = phi i64 [ %78, %76 ], [ %69, %82 ], [ %69, %80 ], [ %69, %84 ]
  %110 = phi i32 [ %79, %76 ], [ %67, %82 ], [ %67, %80 ], [ %67, %84 ]
  %111 = icmp slt i32 %110, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %111, label %112, label %114, !dbg !455

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !456
  store i32 34, i32* %113, align 8, !dbg !458, !tbaa !459
  br label %121, !dbg !460

; <label>:114:                                    ; preds = %107
  %115 = icmp eq i32 %110, 0, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %115, label %116, label %118, !dbg !463

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !464
  store i32 22, i32* %117, align 8, !dbg !466, !tbaa !459
  br label %121, !dbg !467

; <label>:118:                                    ; preds = %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %55, label %119, label %123, !dbg !468

; <label>:119:                                    ; preds = %118
  %120 = sub i64 0, %109, !dbg !469
  br label %121, !dbg !471

; <label>:121:                                    ; preds = %112, %119, %116
  %122 = phi i64 [ %109, %116 ], [ %120, %119 ], [ %56, %112 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br label %123, !dbg !473

; <label>:123:                                    ; preds = %121, %118
  %124 = phi i64 [ %109, %118 ], [ %122, %121 ]
  %125 = icmp eq i8** %2, null, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %125, label %130, label %126, !dbg !475

; <label>:126:                                    ; preds = %123
  %127 = icmp eq i32 %110, 0, !dbg !476
  %128 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !477
  %129 = select i1 %127, i8* %1, i8* %128, !dbg !476
  store i8* %129, i8** %2, align 8, !dbg !478, !tbaa !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br label %130, !dbg !480

; <label>:130:                                    ; preds = %123, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  ret i64 %124, !dbg !481
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoimax_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !482 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !494
  %6 = tail call fastcc i64 @_strtoimax_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret i64 %6, !dbg !496
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoimax(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !497 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !507
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !508
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !510
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !510, !tbaa !317
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %8, label %9, label %10, !dbg !508

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br label %10, !dbg !508

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  %12 = tail call fastcc i64 @_strtoimax_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  ret i64 %12, !dbg !515
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoimax.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !13, !14}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 72, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !11, line: 222, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "_strtoimax_r", scope: !1, file: !1, line: 148, type: !21, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !302)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !26, !299, !300, !7}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 67, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !11, line: 214, baseType: !25)
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !28, line: 569, size: 14912, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !31, !108, !109, !110, !111, !115, !116, !180, !181, !185, !197, !198, !199, !201, !202, !203, !265, !284, !285, !290, !297}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !27, file: !28, line: 571, baseType: !7, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !28, line: 287, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !28, line: 181, size: 1408, elements: !35)
!35 = !{!36, !38, !39, !40, !42, !43, !48, !49, !50, !56, !62, !67, !71, !72, !73, !74, !78, !82, !83, !84, !86, !87, !91, !107}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !34, file: !28, line: 182, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !34, file: !28, line: 183, baseType: !7, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !34, file: !28, line: 184, baseType: !7, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !28, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !34, file: !28, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !34, file: !28, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !28, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !28, line: 118, baseType: !37, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !28, line: 119, baseType: !7, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !34, file: !28, line: 188, baseType: !7, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !34, file: !28, line: 195, baseType: !13, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !34, file: !28, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !26, !13, !14, !7}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !55, line: 145, baseType: !25)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !34, file: !28, line: 199, baseType: !57, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!54, !26, !13, !60, !7}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !34, file: !28, line: 202, baseType: !63, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !26, !13, !66, !7}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !55, line: 114, baseType: !25)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !34, file: !28, line: 203, baseType: !68, size: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!7, !26, !13}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !34, file: !28, line: 206, baseType: !44, size: 128, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !34, file: !28, line: 207, baseType: !37, size: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !34, file: !28, line: 208, baseType: !7, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !34, file: !28, line: 211, baseType: !75, size: 24, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !34, file: !28, line: 212, baseType: !79, size: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !34, file: !28, line: 215, baseType: !44, size: 128, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !34, file: !28, line: 218, baseType: !7, size: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !28, line: 219, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !25)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !34, file: !28, line: 222, baseType: !26, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !28, line: 226, baseType: !88, size: 32, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !55, line: 175, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !90, line: 12, baseType: !7)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !34, file: !28, line: 228, baseType: !92, size: 64, offset: 1312)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !55, line: 171, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 163, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !93, file: !55, line: 165, baseType: !7, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !93, file: !55, line: 170, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !55, line: 166, size: 32, elements: !98)
!98 = !{!99, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !97, file: !55, line: 168, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !101, line: 124, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !97, file: !55, line: 169, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !28, line: 229, baseType: !7, size: 32, offset: 1376)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !27, file: !28, line: 578, baseType: !7, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !27, file: !28, line: 579, baseType: !112, size: 200, offset: 288)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !27, file: !28, line: 582, baseType: !7, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !27, file: !28, line: 583, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !119, line: 178, size: 3392, elements: !120)
!119 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!120 = !{!121, !126, !134, !142, !143, !144, !172, !176, !179}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !118, file: !119, line: 180, baseType: !122, size: 1792)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1792, elements: !123)
!123 = !{!124, !125}
!124 = !DISubrange(count: 7)
!125 = !DISubrange(count: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !118, file: !119, line: 181, baseType: !127, size: 64, offset: 1792)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!7, !26, !14, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 83, baseType: !7)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !133, line: 86, baseType: !92)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !118, file: !119, line: 183, baseType: !135, size: 64, offset: 1856)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!7, !26, !138, !60, !139, !131}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 40, baseType: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !12)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !118, file: !119, line: 185, baseType: !7, size: 32, offset: 1920)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !118, file: !119, line: 186, baseType: !14, size: 64, offset: 1984)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !118, file: !119, line: 187, baseType: !145, size: 768, offset: 2048)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !146, line: 42, size: 768, elements: !147)
!146 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !145, file: !146, line: 44, baseType: !14, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !145, file: !146, line: 45, baseType: !14, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !145, file: !146, line: 46, baseType: !14, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !145, file: !146, line: 47, baseType: !14, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !145, file: !146, line: 48, baseType: !14, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !145, file: !146, line: 49, baseType: !14, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !145, file: !146, line: 50, baseType: !14, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !145, file: !146, line: 51, baseType: !14, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !145, file: !146, line: 52, baseType: !14, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !145, file: !146, line: 53, baseType: !14, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !145, file: !146, line: 54, baseType: !15, size: 8, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !145, file: !146, line: 55, baseType: !15, size: 8, offset: 648)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !145, file: !146, line: 56, baseType: !15, size: 8, offset: 656)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !145, file: !146, line: 57, baseType: !15, size: 8, offset: 664)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !145, file: !146, line: 58, baseType: !15, size: 8, offset: 672)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !145, file: !146, line: 59, baseType: !15, size: 8, offset: 680)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !145, file: !146, line: 60, baseType: !15, size: 8, offset: 688)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !145, file: !146, line: 61, baseType: !15, size: 8, offset: 696)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !145, file: !146, line: 62, baseType: !15, size: 8, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !145, file: !146, line: 63, baseType: !15, size: 8, offset: 712)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !145, file: !146, line: 64, baseType: !15, size: 8, offset: 720)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !145, file: !146, line: 65, baseType: !15, size: 8, offset: 728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !145, file: !146, line: 66, baseType: !15, size: 8, offset: 736)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !145, file: !146, line: 67, baseType: !15, size: 8, offset: 744)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !118, file: !119, line: 189, baseType: !173, size: 16, offset: 2816)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !118, file: !119, line: 190, baseType: !177, size: 256, offset: 2832)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !178)
!178 = !{!125}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !118, file: !119, line: 191, baseType: !177, size: 256, offset: 3088)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !27, file: !28, line: 585, baseType: !7, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !27, file: !28, line: 587, baseType: !182, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !26}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !27, file: !28, line: 590, baseType: !186, size: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !28, line: 47, size: 256, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !187, file: !28, line: 49, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !187, file: !28, line: 50, baseType: !7, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !187, file: !28, line: 50, baseType: !7, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !187, file: !28, line: 50, baseType: !7, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !187, file: !28, line: 50, baseType: !7, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !187, file: !28, line: 51, baseType: !195, size: 32, offset: 192)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 32, elements: !80)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !28, line: 25, baseType: !102)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !27, file: !28, line: 591, baseType: !7, size: 32, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !27, file: !28, line: 592, baseType: !186, size: 64, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !27, file: !28, line: 593, baseType: !200, size: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !27, file: !28, line: 596, baseType: !7, size: 32, offset: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !27, file: !28, line: 597, baseType: !14, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !27, file: !28, line: 632, baseType: !204, size: 2880, offset: 1152)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !28, line: 599, size: 2880, elements: !205)
!205 = !{!206, !256}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !204, file: !28, line: 622, baseType: !207, size: 1728)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !28, line: 601, size: 1728, elements: !208)
!208 = !{!209, !210, !211, !215, !227, !228, !230, !238, !239, !240, !241, !245, !249, !250, !251, !252, !253, !254, !255}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !207, file: !28, line: 603, baseType: !102, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !207, file: !28, line: 604, baseType: !14, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !207, file: !28, line: 605, baseType: !212, size: 208, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 26)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !207, file: !28, line: 606, baseType: !216, size: 288, offset: 352)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !28, line: 55, size: 288, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !216, file: !28, line: 57, baseType: !7, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !216, file: !28, line: 58, baseType: !7, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !216, file: !28, line: 59, baseType: !7, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !216, file: !28, line: 60, baseType: !7, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !216, file: !28, line: 61, baseType: !7, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !216, file: !28, line: 62, baseType: !7, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !216, file: !28, line: 63, baseType: !7, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !216, file: !28, line: 64, baseType: !7, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !216, file: !28, line: 65, baseType: !7, size: 32, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !207, file: !28, line: 607, baseType: !7, size: 32, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !207, file: !28, line: 608, baseType: !229, size: 64, offset: 704)
!229 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !207, file: !28, line: 609, baseType: !231, size: 112, offset: 768)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !28, line: 319, size: 112, elements: !232)
!232 = !{!233, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !231, file: !28, line: 320, baseType: !234, size: 48)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 48, elements: !76)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !231, file: !28, line: 321, baseType: !234, size: 48, offset: 48)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !231, file: !28, line: 322, baseType: !235, size: 16, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !207, file: !28, line: 610, baseType: !92, size: 64, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !207, file: !28, line: 611, baseType: !92, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !207, file: !28, line: 612, baseType: !92, size: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !207, file: !28, line: 613, baseType: !242, size: 64, offset: 1088)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !207, file: !28, line: 614, baseType: !246, size: 192, offset: 1152)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 24)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !207, file: !28, line: 615, baseType: !7, size: 32, offset: 1344)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !207, file: !28, line: 616, baseType: !92, size: 64, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !207, file: !28, line: 617, baseType: !92, size: 64, offset: 1440)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !207, file: !28, line: 618, baseType: !92, size: 64, offset: 1504)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !207, file: !28, line: 619, baseType: !92, size: 64, offset: 1568)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !207, file: !28, line: 620, baseType: !92, size: 64, offset: 1632)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !207, file: !28, line: 621, baseType: !7, size: 32, offset: 1696)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !204, file: !28, line: 631, baseType: !257, size: 2880)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !28, line: 626, size: 2880, elements: !258)
!258 = !{!259, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !257, file: !28, line: 629, baseType: !260, size: 1920)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1920, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 30)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !257, file: !28, line: 630, baseType: !264, size: 960, offset: 1920)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 960, elements: !261)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !27, file: !28, line: 636, baseType: !266, size: 64, offset: 4032)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !28, line: 93, size: 6336, elements: !268)
!268 = !{!269, !270, !271, !276}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !267, file: !28, line: 94, baseType: !266, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !267, file: !28, line: 95, baseType: !7, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !267, file: !28, line: 97, baseType: !272, size: 2048, offset: 128)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 2048, elements: !178)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !267, file: !28, line: 98, baseType: !277, size: 4160, offset: 2176)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !28, line: 74, size: 4160, elements: !278)
!278 = !{!279, !281, !282, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !277, file: !28, line: 75, baseType: !280, size: 2048)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !178)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !277, file: !28, line: 76, baseType: !280, size: 2048, offset: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !277, file: !28, line: 78, baseType: !196, size: 32, offset: 4096)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !277, file: !28, line: 81, baseType: !196, size: 32, offset: 4128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !27, file: !28, line: 637, baseType: !267, size: 6336, offset: 4096)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !27, file: !28, line: 641, baseType: !286, size: 64, offset: 10432)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !7}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !27, file: !28, line: 646, baseType: !291, size: 192, offset: 10496)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !28, line: 291, size: 192, elements: !292)
!292 = !{!293, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !291, file: !28, line: 293, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !291, file: !28, line: 294, baseType: !7, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !291, file: !28, line: 295, baseType: !32, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !27, file: !28, line: 648, baseType: !298, size: 4224, offset: 10688)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 4224, elements: !76)
!299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!302 = !{!303, !304, !305, !306}
!303 = !DILocalVariable(name: "rptr", arg: 1, scope: !20, file: !1, line: 148, type: !26)
!304 = !DILocalVariable(name: "nptr", arg: 2, scope: !20, file: !1, line: 148, type: !299)
!305 = !DILocalVariable(name: "endptr", arg: 3, scope: !20, file: !1, line: 149, type: !300)
!306 = !DILocalVariable(name: "base", arg: 4, scope: !20, file: !1, line: 149, type: !7)
!307 = !DILocation(line: 148, column: 29, scope: !20)
!308 = !DILocation(line: 148, column: 58, scope: !20)
!309 = !DILocation(line: 149, column: 25, scope: !20)
!310 = !DILocation(line: 149, column: 37, scope: !20)
!311 = !DILocation(line: 230, column: 10, scope: !312, inlinedAt: !315)
!312 = distinct !DISubprogram(name: "__get_current_locale", scope: !119, file: !119, line: 228, type: !313, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!313 = !DISubroutineType(types: !314)
!314 = !{!117}
!315 = distinct !DILocation(line: 151, column: 48, scope: !20)
!316 = !DILocation(line: 230, column: 18, scope: !312, inlinedAt: !315)
!317 = !{!318, !322, i64 72}
!318 = !{!"_reent", !319, i64 0, !322, i64 8, !322, i64 16, !322, i64 24, !319, i64 32, !320, i64 36, !319, i64 64, !322, i64 72, !319, i64 80, !322, i64 88, !322, i64 96, !319, i64 104, !322, i64 112, !322, i64 120, !319, i64 128, !322, i64 136, !320, i64 144, !322, i64 504, !323, i64 512, !322, i64 1304, !325, i64 1312, !320, i64 1336}
!319 = !{!"int", !320, i64 0}
!320 = !{!"omnipotent char", !321, i64 0}
!321 = !{!"Simple C/C++ TBAA"}
!322 = !{!"any pointer", !320, i64 0}
!323 = !{!"_atexit", !322, i64 0, !319, i64 8, !320, i64 16, !324, i64 272}
!324 = !{!"_on_exit_args", !320, i64 0, !320, i64 256, !319, i64 512, !319, i64 516}
!325 = !{!"_glue", !322, i64 0, !319, i64 8, !322, i64 16}
!326 = !DILocation(line: 213, column: 3, scope: !327, inlinedAt: !328)
!327 = distinct !DISubprogram(name: "__get_global_locale", scope: !119, file: !119, line: 210, type: !313, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!328 = distinct !DILocation(line: 230, column: 29, scope: !312, inlinedAt: !315)
!329 = !DILocation(line: 230, column: 3, scope: !312, inlinedAt: !315)
!330 = !DILocation(line: 151, column: 9, scope: !20)
!331 = !DILocation(line: 151, column: 2, scope: !20)
!332 = distinct !DISubprogram(name: "_strtoimax_l", scope: !1, file: !1, line: 60, type: !333, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !337)
!333 = !DISubroutineType(types: !334)
!334 = !{!23, !26, !299, !300, !7, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !336, line: 10, baseType: !117)
!336 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!338 = !DILocalVariable(name: "rptr", arg: 1, scope: !332, file: !1, line: 60, type: !26)
!339 = !DILocalVariable(name: "nptr", arg: 2, scope: !332, file: !1, line: 60, type: !299)
!340 = !DILocalVariable(name: "endptr", arg: 3, scope: !332, file: !1, line: 61, type: !300)
!341 = !DILocalVariable(name: "base", arg: 4, scope: !332, file: !1, line: 61, type: !7)
!342 = !DILocalVariable(name: "loc", arg: 5, scope: !332, file: !1, line: 61, type: !335)
!343 = !DILocalVariable(name: "s", scope: !332, file: !1, line: 63, type: !60)
!344 = !DILocalVariable(name: "acc", scope: !332, file: !1, line: 64, type: !8)
!345 = !DILocalVariable(name: "c", scope: !332, file: !1, line: 65, type: !15)
!346 = !DILocalVariable(name: "cutoff", scope: !332, file: !1, line: 66, type: !8)
!347 = !DILocalVariable(name: "neg", scope: !332, file: !1, line: 67, type: !7)
!348 = !DILocalVariable(name: "any", scope: !332, file: !1, line: 67, type: !7)
!349 = !DILocalVariable(name: "cutlim", scope: !332, file: !1, line: 67, type: !7)
!350 = !DILocation(line: 60, column: 29, scope: !332)
!351 = !DILocation(line: 60, column: 59, scope: !332)
!352 = !DILocation(line: 61, column: 26, scope: !332)
!353 = !DILocation(line: 61, column: 38, scope: !332)
!354 = !DILocation(line: 61, column: 53, scope: !332)
!355 = !DILocation(line: 63, column: 14, scope: !332)
!356 = !DILocation(line: 67, column: 6, scope: !332)
!357 = !DILocation(line: 74, column: 2, scope: !332)
!358 = !DILocation(line: 0, scope: !359)
!359 = distinct !DILexicalBlock(scope: !332, file: !1, line: 74, column: 5)
!360 = !DILocation(line: 75, column: 9, scope: !359)
!361 = !DILocation(line: 75, column: 7, scope: !359)
!362 = !{!320, !320, i64 0}
!363 = !DILocation(line: 65, column: 7, scope: !332)
!364 = !DILocation(line: 76, column: 11, scope: !332)
!365 = !DILocation(line: 76, column: 2, scope: !359)
!366 = distinct !{!366, !357, !367}
!367 = !DILocation(line: 76, column: 28, scope: !332)
!368 = !DILocation(line: 77, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !332, file: !1, line: 77, column: 6)
!370 = !DILocation(line: 77, column: 6, scope: !332)
!371 = !DILocation(line: 82, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 82, column: 7)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 80, column: 9)
!374 = !DILocation(line: 82, column: 7, scope: !373)
!375 = !DILocation(line: 0, scope: !376)
!376 = distinct !DILexicalBlock(scope: !369, file: !1, line: 77, column: 16)
!377 = !DILocation(line: 85, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !332, file: !1, line: 85, column: 6)
!379 = !DILocation(line: 0, scope: !373)
!380 = !DILocation(line: 86, column: 8, scope: !378)
!381 = !DILocation(line: 86, column: 15, scope: !378)
!382 = !DILocation(line: 86, column: 19, scope: !378)
!383 = !DILocation(line: 86, column: 22, scope: !378)
!384 = !DILocation(line: 86, column: 29, scope: !378)
!385 = !DILocation(line: 86, column: 35, scope: !378)
!386 = !DILocation(line: 85, column: 6, scope: !332)
!387 = !DILocation(line: 87, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !378, file: !1, line: 86, column: 44)
!389 = !DILocation(line: 88, column: 5, scope: !388)
!390 = !DILocation(line: 90, column: 2, scope: !388)
!391 = !DILocation(line: 91, column: 6, scope: !332)
!392 = !DILocation(line: 91, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !332, file: !1, line: 91, column: 6)
!394 = !DILocation(line: 92, column: 12, scope: !393)
!395 = !DILocation(line: 92, column: 10, scope: !393)
!396 = !DILocation(line: 92, column: 3, scope: !393)
!397 = !DILocation(line: 0, scope: !393)
!398 = !DILocation(line: 112, column: 11, scope: !332)
!399 = !DILocation(line: 0, scope: !388)
!400 = !DILocation(line: 66, column: 12, scope: !332)
!401 = !DILocation(line: 113, column: 20, scope: !332)
!402 = !DILocation(line: 113, column: 18, scope: !332)
!403 = !DILocation(line: 113, column: 11, scope: !332)
!404 = !DILocation(line: 67, column: 20, scope: !332)
!405 = !DILocation(line: 114, column: 9, scope: !332)
!406 = !DILocation(line: 115, column: 2, scope: !332)
!407 = !DILocation(line: 67, column: 15, scope: !332)
!408 = !DILocation(line: 64, column: 12, scope: !332)
!409 = !DILocation(line: 116, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 116, column: 7)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 115, column: 22)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 115, column: 2)
!413 = distinct !DILexicalBlock(scope: !332, file: !1, line: 115, column: 2)
!414 = !DILocation(line: 116, column: 16, scope: !410)
!415 = !DILocation(line: 0, scope: !412)
!416 = !DILocation(line: 118, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !410, file: !1, line: 118, column: 12)
!418 = !DILocation(line: 116, column: 21, scope: !410)
!419 = !DILocation(line: 116, column: 7, scope: !411)
!420 = !DILocation(line: 118, column: 14, scope: !417)
!421 = !DILocation(line: 118, column: 26, scope: !417)
!422 = !DILocation(line: 118, column: 12, scope: !410)
!423 = !DILocation(line: 120, column: 21, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !1, line: 120, column: 12)
!425 = !DILocation(line: 120, column: 14, scope: !424)
!426 = !DILocation(line: 120, column: 26, scope: !424)
!427 = !DILocation(line: 120, column: 12, scope: !417)
!428 = !DILocation(line: 0, scope: !410)
!429 = !DILocation(line: 124, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !411, file: !1, line: 124, column: 7)
!431 = !DILocation(line: 124, column: 9, scope: !430)
!432 = !DILocation(line: 124, column: 7, scope: !411)
!433 = !DILocation(line: 126, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !411, file: !1, line: 126, column: 7)
!435 = !DILocation(line: 126, column: 15, scope: !434)
!436 = !DILocation(line: 126, column: 22, scope: !434)
!437 = !DILocation(line: 126, column: 31, scope: !434)
!438 = !DILocation(line: 126, column: 39, scope: !434)
!439 = !DILocation(line: 126, column: 49, scope: !434)
!440 = !DILocation(line: 126, column: 54, scope: !434)
!441 = !DILocation(line: 126, column: 7, scope: !411)
!442 = !DILocation(line: 130, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !1, line: 128, column: 8)
!444 = !DILocation(line: 131, column: 11, scope: !443)
!445 = !DILocation(line: 131, column: 8, scope: !443)
!446 = !DILocation(line: 0, scope: !443)
!447 = !DILocation(line: 115, column: 18, scope: !412)
!448 = !DILocation(line: 115, column: 16, scope: !412)
!449 = !DILocation(line: 115, column: 2, scope: !412)
!450 = distinct !{!450, !451, !452}
!451 = !DILocation(line: 115, column: 2, scope: !413)
!452 = !DILocation(line: 133, column: 2, scope: !413)
!453 = !DILocation(line: 134, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !332, file: !1, line: 134, column: 6)
!455 = !DILocation(line: 134, column: 6, scope: !332)
!456 = !DILocation(line: 136, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 134, column: 15)
!458 = !DILocation(line: 136, column: 16, scope: !457)
!459 = !{!318, !319, i64 0}
!460 = !DILocation(line: 137, column: 2, scope: !457)
!461 = !DILocation(line: 137, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 137, column: 13)
!463 = !DILocation(line: 137, column: 13, scope: !454)
!464 = !DILocation(line: 139, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 137, column: 19)
!466 = !DILocation(line: 139, column: 16, scope: !465)
!467 = !DILocation(line: 140, column: 2, scope: !465)
!468 = !DILocation(line: 140, column: 13, scope: !462)
!469 = !DILocation(line: 141, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !1, line: 140, column: 13)
!471 = !DILocation(line: 141, column: 3, scope: !470)
!472 = !DILocation(line: 0, scope: !457)
!473 = !DILocation(line: 142, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !332, file: !1, line: 142, column: 6)
!475 = !DILocation(line: 142, column: 6, scope: !332)
!476 = !DILocation(line: 143, column: 22, scope: !474)
!477 = !DILocation(line: 143, column: 30, scope: !474)
!478 = !DILocation(line: 143, column: 11, scope: !474)
!479 = !{!322, !322, i64 0}
!480 = !DILocation(line: 143, column: 3, scope: !474)
!481 = !DILocation(line: 144, column: 2, scope: !332)
!482 = distinct !DISubprogram(name: "strtoimax_l", scope: !1, file: !1, line: 157, type: !483, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!23, !299, !300, !7, !335}
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(name: "nptr", arg: 1, scope: !482, file: !1, line: 157, type: !299)
!487 = !DILocalVariable(name: "endptr", arg: 2, scope: !482, file: !1, line: 157, type: !300)
!488 = !DILocalVariable(name: "base", arg: 3, scope: !482, file: !1, line: 157, type: !7)
!489 = !DILocalVariable(name: "loc", arg: 4, scope: !482, file: !1, line: 158, type: !335)
!490 = !DILocation(line: 157, column: 37, scope: !482)
!491 = !DILocation(line: 157, column: 62, scope: !482)
!492 = !DILocation(line: 157, column: 74, scope: !482)
!493 = !DILocation(line: 158, column: 15, scope: !482)
!494 = !DILocation(line: 160, column: 22, scope: !482)
!495 = !DILocation(line: 160, column: 9, scope: !482)
!496 = !DILocation(line: 160, column: 2, scope: !482)
!497 = distinct !DISubprogram(name: "strtoimax", scope: !1, file: !1, line: 164, type: !498, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!23, !299, !300, !7}
!500 = !{!501, !502, !503}
!501 = !DILocalVariable(name: "nptr", arg: 1, scope: !497, file: !1, line: 164, type: !299)
!502 = !DILocalVariable(name: "endptr", arg: 2, scope: !497, file: !1, line: 164, type: !300)
!503 = !DILocalVariable(name: "base", arg: 3, scope: !497, file: !1, line: 164, type: !7)
!504 = !DILocation(line: 164, column: 34, scope: !497)
!505 = !DILocation(line: 164, column: 58, scope: !497)
!506 = !DILocation(line: 164, column: 70, scope: !497)
!507 = !DILocation(line: 166, column: 22, scope: !497)
!508 = !DILocation(line: 230, column: 10, scope: !312, inlinedAt: !509)
!509 = distinct !DILocation(line: 166, column: 50, scope: !497)
!510 = !DILocation(line: 230, column: 18, scope: !312, inlinedAt: !509)
!511 = !DILocation(line: 213, column: 3, scope: !327, inlinedAt: !512)
!512 = distinct !DILocation(line: 230, column: 29, scope: !312, inlinedAt: !509)
!513 = !DILocation(line: 230, column: 3, scope: !312, inlinedAt: !509)
!514 = !DILocation(line: 166, column: 9, scope: !497)
!515 = !DILocation(line: 166, column: 2, scope: !497)
