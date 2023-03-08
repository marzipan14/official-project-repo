; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c"
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
define dso_local i64 @_strtoumax_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !309
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !314
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !314, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %8, label %9, label %10, !dbg !309

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br label %10, !dbg !309

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %12 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i64 %12, !dbg !329
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoumax_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !330 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %6, !dbg !355

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !356
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !358
  %9 = load i8, i8* %7, align 1, !dbg !359, !tbaa !360
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !362
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !362
  %12 = sext i8 %9 to i64, !dbg !362
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !362
  %14 = load i8, i8* %13, align 1, !dbg !362, !tbaa !360
  %15 = and i8 %14, 8, !dbg !362
  %16 = icmp eq i8 %15, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %16, label %17, label %6, !dbg !363, !llvm.loop !364

; <label>:17:                                     ; preds = %6
  %18 = icmp eq i8 %9, 45, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %18, label %21, label %19, !dbg !368

; <label>:19:                                     ; preds = %17
  %20 = icmp eq i8 %9, 43, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %20, label %21, label %25, !dbg !372

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %19 ]
  %23 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !373
  %24 = load i8, i8* %8, align 1, !dbg !373, !tbaa !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %25, !dbg !375

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8 [ %9, %19 ], [ %24, %21 ], !dbg !356
  %27 = phi i8* [ %8, %19 ], [ %23, %21 ], !dbg !356
  %28 = phi i32 [ 0, %19 ], [ %22, %21 ], !dbg !377
  %29 = or i32 %3, 16, !dbg !375
  %30 = icmp eq i32 %29, 16, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %30, label %31, label %42, !dbg !375

; <label>:31:                                     ; preds = %25
  %32 = icmp eq i8 %26, 48, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %32, label %33, label %42, !dbg !379

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %27, align 1, !dbg !380, !tbaa !360
  %35 = icmp eq i8 %34, 120, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %35, label %38, label %36, !dbg !382

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i8 %34, 88, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br i1 %37, label %38, label %42, !dbg !384

; <label>:38:                                     ; preds = %36, %33
  %39 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !385
  %40 = load i8, i8* %39, align 1, !dbg !385, !tbaa !360
  %41 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br label %51, !dbg !392

; <label>:42:                                     ; preds = %25, %36, %31
  %43 = icmp eq i32 %3, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br i1 %43, label %44, label %47, !dbg !389

; <label>:44:                                     ; preds = %42
  %45 = icmp eq i8 %26, 48, !dbg !396
  %46 = select i1 %45, i32 8, i32 10, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %47, !dbg !398

; <label>:47:                                     ; preds = %44, %42
  %48 = phi i32 [ %46, %44 ], [ %3, %42 ], !dbg !399
  %49 = add i32 %48, -2, !dbg !392
  %50 = icmp ugt i32 %49, 34, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %50, label %114, label %51, !dbg !392

; <label>:51:                                     ; preds = %38, %47
  %52 = phi i32 [ 16, %38 ], [ %48, %47 ]
  %53 = phi i8 [ %40, %38 ], [ %26, %47 ]
  %54 = phi i8* [ %41, %38 ], [ %27, %47 ]
  %55 = sext i32 %52 to i64, !dbg !400
  %56 = udiv i64 -1, %55, !dbg !401
  %57 = urem i64 -1, %55, !dbg !403
  %58 = trunc i64 %57 to i32, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %59 = icmp sgt i8 %53, 47, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %59, label %64, label %60, !dbg !412

; <label>:60:                                     ; preds = %99, %51
  %61 = phi i64 [ 0, %51 ], [ %100, %99 ], !dbg !413
  %62 = phi i8* [ %54, %51 ], [ %102, %99 ], !dbg !414
  %63 = phi i32 [ 0, %51 ], [ %101, %99 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br label %74, !dbg !417

; <label>:64:                                     ; preds = %51, %99
  %65 = phi i32 [ %101, %99 ], [ 0, %51 ]
  %66 = phi i8* [ %102, %99 ], [ %54, %51 ]
  %67 = phi i8 [ %103, %99 ], [ %53, %51 ]
  %68 = phi i64 [ %100, %99 ], [ 0, %51 ]
  %69 = icmp slt i8 %67, 58, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %69, label %82, label %70, !dbg !420

; <label>:70:                                     ; preds = %64
  %71 = icmp sgt i8 %67, 64, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %71, label %72, label %74, !dbg !417

; <label>:72:                                     ; preds = %70
  %73 = icmp slt i8 %67, 91, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %73, label %82, label %78, !dbg !423

; <label>:74:                                     ; preds = %70, %60
  %75 = phi i64 [ %61, %60 ], [ %68, %70 ]
  %76 = phi i8* [ %62, %60 ], [ %66, %70 ]
  %77 = phi i32 [ %63, %60 ], [ %65, %70 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br label %105, !dbg !424

; <label>:78:                                     ; preds = %72
  %79 = icmp sgt i8 %67, 96, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %79, label %80, label %105, !dbg !424

; <label>:80:                                     ; preds = %78
  %81 = icmp slt i8 %67, 123, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %81, label %82, label %105, !dbg !428

; <label>:82:                                     ; preds = %80, %72, %64
  %83 = phi i8 [ -48, %64 ], [ -55, %72 ], [ -87, %80 ]
  %84 = add i8 %67, %83, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %85 = sext i8 %84 to i32, !dbg !430
  %86 = icmp sgt i32 %52, %85, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %86, label %87, label %105, !dbg !433

; <label>:87:                                     ; preds = %82
  %88 = icmp slt i32 %65, 0, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %88, label %99, label %89, !dbg !435

; <label>:89:                                     ; preds = %87
  %90 = icmp ugt i64 %68, %56, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %90, label %99, label %91, !dbg !437

; <label>:91:                                     ; preds = %89
  %92 = icmp eq i64 %68, %56, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %92, label %93, label %95, !dbg !439

; <label>:93:                                     ; preds = %91
  %94 = icmp sgt i32 %85, %58, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %94, label %99, label %95, !dbg !441

; <label>:95:                                     ; preds = %93, %91
  %96 = mul i64 %68, %55, !dbg !442
  %97 = sext i8 %84 to i64, !dbg !444
  %98 = add i64 %96, %97, !dbg !445
  br label %99

; <label>:99:                                     ; preds = %87, %89, %93, %95
  %100 = phi i64 [ %98, %95 ], [ %68, %93 ], [ %68, %89 ], [ %68, %87 ], !dbg !446
  %101 = phi i32 [ 1, %95 ], [ -1, %93 ], [ -1, %89 ], [ -1, %87 ], !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %102 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !447
  %103 = load i8, i8* %66, align 1, !dbg !448, !tbaa !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  %104 = icmp sgt i8 %103, 47, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %104, label %64, label %60, !dbg !412, !llvm.loop !450

; <label>:105:                                    ; preds = %82, %78, %80, %74
  %106 = phi i64 [ %75, %74 ], [ %68, %80 ], [ %68, %78 ], [ %68, %82 ]
  %107 = phi i8* [ %76, %74 ], [ %66, %80 ], [ %66, %78 ], [ %66, %82 ]
  %108 = phi i32 [ %77, %74 ], [ %65, %80 ], [ %65, %78 ], [ %65, %82 ]
  %109 = icmp slt i32 %108, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %109, label %110, label %112, !dbg !455

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !456
  store i32 34, i32* %111, align 8, !dbg !458, !tbaa !459
  br label %122, !dbg !460

; <label>:112:                                    ; preds = %105
  %113 = icmp eq i32 %108, 0, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %113, label %114, label %118, !dbg !463

; <label>:114:                                    ; preds = %112, %47
  %115 = phi i64 [ 0, %47 ], [ %106, %112 ], !dbg !413
  %116 = phi i8* [ %27, %47 ], [ %107, %112 ], !dbg !387
  %117 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !464
  store i32 22, i32* %117, align 8, !dbg !466, !tbaa !459
  br label %122, !dbg !467

; <label>:118:                                    ; preds = %112
  %119 = icmp eq i32 %28, 0, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %119, label %126, label %120, !dbg !470

; <label>:120:                                    ; preds = %118
  %121 = sub i64 0, %106, !dbg !471
  br label %122, !dbg !472

; <label>:122:                                    ; preds = %110, %120, %114
  %123 = phi i64 [ %121, %120 ], [ -1, %110 ], [ %115, %114 ]
  %124 = phi i8* [ %107, %120 ], [ %107, %110 ], [ %116, %114 ]
  %125 = phi i32 [ -1, %120 ], [ -1, %110 ], [ 0, %114 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br label %126, !dbg !474

; <label>:126:                                    ; preds = %122, %118
  %127 = phi i64 [ %106, %118 ], [ %123, %122 ], !dbg !476
  %128 = phi i8* [ %107, %118 ], [ %124, %122 ], !dbg !387
  %129 = phi i32 [ -1, %118 ], [ %125, %122 ], !dbg !477
  %130 = icmp eq i8** %2, null, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %130, label %135, label %131, !dbg !478

; <label>:131:                                    ; preds = %126
  %132 = icmp eq i32 %129, 0, !dbg !479
  %133 = getelementptr inbounds i8, i8* %128, i64 -1, !dbg !480
  %134 = select i1 %132, i8* %1, i8* %133, !dbg !479
  store i8* %134, i8** %2, align 8, !dbg !481, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br label %135, !dbg !483

; <label>:135:                                    ; preds = %126, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  ret i64 %127, !dbg !484
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoumax_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !485 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !497
  %6 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  ret i64 %6, !dbg !499
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoumax(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !500 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !510
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !511
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !513
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !513, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %8, label %9, label %10, !dbg !511

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %10, !dbg !511

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %12 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  ret i64 %12, !dbg !518
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_strtoumax_r", scope: !1, file: !1, line: 130, type: !16, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !300)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !23, !297, !298, !7}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !19, line: 72, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !21, line: 222, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !25, line: 569, size: 14912, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !106, !107, !108, !109, !113, !114, !178, !179, !183, !195, !196, !197, !199, !200, !201, !263, !282, !283, !288, !295}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !24, file: !25, line: 571, baseType: !7, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !25, line: 287, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !25, line: 181, size: 1408, elements: !32)
!32 = !{!33, !35, !36, !37, !39, !40, !45, !46, !47, !54, !60, !65, !69, !70, !71, !72, !76, !80, !81, !82, !84, !85, !89, !105}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !31, file: !25, line: 182, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !31, file: !25, line: 183, baseType: !7, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !31, file: !25, line: 184, baseType: !7, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !31, file: !25, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !31, file: !25, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !31, file: !25, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !25, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !25, line: 118, baseType: !34, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !25, line: 119, baseType: !7, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !31, file: !25, line: 188, baseType: !7, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !31, file: !25, line: 195, baseType: !8, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !31, file: !25, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !23, !8, !9, !7}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !52, line: 145, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !31, file: !25, line: 199, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!51, !23, !8, !58, !7}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !31, file: !25, line: 202, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !23, !8, !64, !7}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !52, line: 114, baseType: !53)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !31, file: !25, line: 203, baseType: !66, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!7, !23, !8}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !31, file: !25, line: 206, baseType: !41, size: 128, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !31, file: !25, line: 207, baseType: !34, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !31, file: !25, line: 208, baseType: !7, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !31, file: !25, line: 211, baseType: !73, size: 24, offset: 928)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !31, file: !25, line: 212, baseType: !77, size: 8, offset: 952)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !31, file: !25, line: 215, baseType: !41, size: 128, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !31, file: !25, line: 218, baseType: !7, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !31, file: !25, line: 219, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !52, line: 44, baseType: !53)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !31, file: !25, line: 222, baseType: !23, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !31, file: !25, line: 226, baseType: !86, size: 32, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !52, line: 175, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !88, line: 12, baseType: !7)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !31, file: !25, line: 228, baseType: !90, size: 64, offset: 1312)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !52, line: 171, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 163, size: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !91, file: !52, line: 165, baseType: !7, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !91, file: !52, line: 170, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !52, line: 166, size: 32, elements: !96)
!96 = !{!97, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !95, file: !52, line: 168, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !99, line: 124, baseType: !100)
!99 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !95, file: !52, line: 169, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !31, file: !25, line: 229, baseType: !7, size: 32, offset: 1376)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !24, file: !25, line: 578, baseType: !7, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !24, file: !25, line: 579, baseType: !110, size: 200, offset: 288)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 25)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !24, file: !25, line: 582, baseType: !7, size: 32, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !24, file: !25, line: 583, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !117, line: 178, size: 3392, elements: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !{!119, !124, !132, !140, !141, !142, !170, !174, !177}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !116, file: !117, line: 180, baseType: !120, size: 1792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !121)
!121 = !{!122, !123}
!122 = !DISubrange(count: 7)
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !116, file: !117, line: 181, baseType: !125, size: 64, offset: 1792)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!7, !23, !9, !128, !129}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !99, line: 83, baseType: !7)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !131, line: 86, baseType: !90)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !116, file: !117, line: 183, baseType: !133, size: 64, offset: 1856)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!7, !23, !136, !58, !137, !129}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 40, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !52, line: 129, baseType: !22)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !116, file: !117, line: 185, baseType: !7, size: 32, offset: 1920)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !116, file: !117, line: 186, baseType: !9, size: 64, offset: 1984)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !116, file: !117, line: 187, baseType: !143, size: 768, offset: 2048)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !144, line: 42, size: 768, elements: !145)
!144 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !143, file: !144, line: 44, baseType: !9, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !143, file: !144, line: 45, baseType: !9, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !143, file: !144, line: 46, baseType: !9, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !143, file: !144, line: 47, baseType: !9, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !143, file: !144, line: 48, baseType: !9, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !143, file: !144, line: 49, baseType: !9, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !143, file: !144, line: 50, baseType: !9, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !143, file: !144, line: 51, baseType: !9, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !143, file: !144, line: 52, baseType: !9, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !143, file: !144, line: 53, baseType: !9, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !143, file: !144, line: 54, baseType: !10, size: 8, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !143, file: !144, line: 55, baseType: !10, size: 8, offset: 648)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !143, file: !144, line: 56, baseType: !10, size: 8, offset: 656)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !143, file: !144, line: 57, baseType: !10, size: 8, offset: 664)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !143, file: !144, line: 58, baseType: !10, size: 8, offset: 672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !143, file: !144, line: 59, baseType: !10, size: 8, offset: 680)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !143, file: !144, line: 60, baseType: !10, size: 8, offset: 688)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !143, file: !144, line: 61, baseType: !10, size: 8, offset: 696)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !143, file: !144, line: 62, baseType: !10, size: 8, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !143, file: !144, line: 63, baseType: !10, size: 8, offset: 712)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !143, file: !144, line: 64, baseType: !10, size: 8, offset: 720)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !143, file: !144, line: 65, baseType: !10, size: 8, offset: 728)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !143, file: !144, line: 66, baseType: !10, size: 8, offset: 736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !143, file: !144, line: 67, baseType: !10, size: 8, offset: 744)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !116, file: !117, line: 189, baseType: !171, size: 16, offset: 2816)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !116, file: !117, line: 190, baseType: !175, size: 256, offset: 2832)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !176)
!176 = !{!123}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !116, file: !117, line: 191, baseType: !175, size: 256, offset: 3088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !24, file: !25, line: 585, baseType: !7, size: 32, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !24, file: !25, line: 587, baseType: !180, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !23}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !24, file: !25, line: 590, baseType: !184, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !25, line: 47, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !185, file: !25, line: 49, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !185, file: !25, line: 51, baseType: !193, size: 32, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32, elements: !78)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !25, line: 25, baseType: !100)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !24, file: !25, line: 591, baseType: !7, size: 32, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !24, file: !25, line: 592, baseType: !184, size: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !24, file: !25, line: 593, baseType: !198, size: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !24, file: !25, line: 596, baseType: !7, size: 32, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !24, file: !25, line: 597, baseType: !9, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !24, file: !25, line: 632, baseType: !202, size: 2880, offset: 1152)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !24, file: !25, line: 599, size: 2880, elements: !203)
!203 = !{!204, !254}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !202, file: !25, line: 622, baseType: !205, size: 1728)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !25, line: 601, size: 1728, elements: !206)
!206 = !{!207, !208, !209, !213, !225, !226, !228, !236, !237, !238, !239, !243, !247, !248, !249, !250, !251, !252, !253}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !205, file: !25, line: 603, baseType: !100, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !205, file: !25, line: 604, baseType: !9, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !205, file: !25, line: 605, baseType: !210, size: 208, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 26)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !205, file: !25, line: 606, baseType: !214, size: 288, offset: 352)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !25, line: 55, size: 288, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !214, file: !25, line: 57, baseType: !7, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !214, file: !25, line: 58, baseType: !7, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !214, file: !25, line: 59, baseType: !7, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !214, file: !25, line: 60, baseType: !7, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !214, file: !25, line: 61, baseType: !7, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !214, file: !25, line: 62, baseType: !7, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !214, file: !25, line: 63, baseType: !7, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !214, file: !25, line: 64, baseType: !7, size: 32, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !214, file: !25, line: 65, baseType: !7, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !205, file: !25, line: 607, baseType: !7, size: 32, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !205, file: !25, line: 608, baseType: !227, size: 64, offset: 704)
!227 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !205, file: !25, line: 609, baseType: !229, size: 112, offset: 768)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !25, line: 319, size: 112, elements: !230)
!230 = !{!231, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !229, file: !25, line: 320, baseType: !232, size: 48)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 48, elements: !74)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !229, file: !25, line: 321, baseType: !232, size: 48, offset: 48)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !229, file: !25, line: 322, baseType: !233, size: 16, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !205, file: !25, line: 610, baseType: !90, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !205, file: !25, line: 611, baseType: !90, size: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !205, file: !25, line: 612, baseType: !90, size: 64, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !205, file: !25, line: 613, baseType: !240, size: 64, offset: 1088)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !205, file: !25, line: 614, baseType: !244, size: 192, offset: 1152)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 24)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !205, file: !25, line: 615, baseType: !7, size: 32, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !205, file: !25, line: 616, baseType: !90, size: 64, offset: 1376)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !205, file: !25, line: 617, baseType: !90, size: 64, offset: 1440)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !205, file: !25, line: 618, baseType: !90, size: 64, offset: 1504)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !205, file: !25, line: 619, baseType: !90, size: 64, offset: 1568)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !205, file: !25, line: 620, baseType: !90, size: 64, offset: 1632)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !205, file: !25, line: 621, baseType: !7, size: 32, offset: 1696)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !202, file: !25, line: 631, baseType: !255, size: 2880)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !25, line: 626, size: 2880, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !255, file: !25, line: 629, baseType: !258, size: 1920)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1920, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 30)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !255, file: !25, line: 630, baseType: !262, size: 960, offset: 1920)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 960, elements: !259)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !24, file: !25, line: 636, baseType: !264, size: 64, offset: 4032)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !25, line: 93, size: 6336, elements: !266)
!266 = !{!267, !268, !269, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !265, file: !25, line: 94, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !265, file: !25, line: 95, baseType: !7, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !265, file: !25, line: 97, baseType: !270, size: 2048, offset: 128)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, elements: !176)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !265, file: !25, line: 98, baseType: !275, size: 4160, offset: 2176)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !25, line: 74, size: 4160, elements: !276)
!276 = !{!277, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !275, file: !25, line: 75, baseType: !278, size: 2048)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !176)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !275, file: !25, line: 76, baseType: !278, size: 2048, offset: 2048)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !275, file: !25, line: 78, baseType: !194, size: 32, offset: 4096)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !275, file: !25, line: 81, baseType: !194, size: 32, offset: 4128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !24, file: !25, line: 637, baseType: !265, size: 6336, offset: 4096)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !24, file: !25, line: 641, baseType: !284, size: 64, offset: 10432)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !7}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !24, file: !25, line: 646, baseType: !289, size: 192, offset: 10496)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !25, line: 291, size: 192, elements: !290)
!290 = !{!291, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !289, file: !25, line: 293, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !289, file: !25, line: 294, baseType: !7, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !289, file: !25, line: 295, baseType: !29, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !24, file: !25, line: 648, baseType: !296, size: 4224, offset: 10688)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 4224, elements: !74)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(name: "rptr", arg: 1, scope: !15, file: !1, line: 130, type: !23)
!302 = !DILocalVariable(name: "nptr", arg: 2, scope: !15, file: !1, line: 130, type: !297)
!303 = !DILocalVariable(name: "endptr", arg: 3, scope: !15, file: !1, line: 131, type: !298)
!304 = !DILocalVariable(name: "base", arg: 4, scope: !15, file: !1, line: 131, type: !7)
!305 = !DILocation(line: 130, column: 29, scope: !15)
!306 = !DILocation(line: 130, column: 58, scope: !15)
!307 = !DILocation(line: 131, column: 25, scope: !15)
!308 = !DILocation(line: 131, column: 37, scope: !15)
!309 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !313)
!310 = distinct !DISubprogram(name: "__get_current_locale", scope: !117, file: !117, line: 228, type: !311, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!311 = !DISubroutineType(types: !312)
!312 = !{!115}
!313 = distinct !DILocation(line: 133, column: 48, scope: !15)
!314 = !DILocation(line: 230, column: 18, scope: !310, inlinedAt: !313)
!315 = !{!316, !320, i64 72}
!316 = !{!"_reent", !317, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !317, i64 32, !318, i64 36, !317, i64 64, !320, i64 72, !317, i64 80, !320, i64 88, !320, i64 96, !317, i64 104, !320, i64 112, !320, i64 120, !317, i64 128, !320, i64 136, !318, i64 144, !320, i64 504, !321, i64 512, !320, i64 1304, !323, i64 1312, !318, i64 1336}
!317 = !{!"int", !318, i64 0}
!318 = !{!"omnipotent char", !319, i64 0}
!319 = !{!"Simple C/C++ TBAA"}
!320 = !{!"any pointer", !318, i64 0}
!321 = !{!"_atexit", !320, i64 0, !317, i64 8, !318, i64 16, !322, i64 272}
!322 = !{!"_on_exit_args", !318, i64 0, !318, i64 256, !317, i64 512, !317, i64 516}
!323 = !{!"_glue", !320, i64 0, !317, i64 8, !320, i64 16}
!324 = !DILocation(line: 213, column: 3, scope: !325, inlinedAt: !326)
!325 = distinct !DISubprogram(name: "__get_global_locale", scope: !117, file: !117, line: 210, type: !311, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!326 = distinct !DILocation(line: 230, column: 29, scope: !310, inlinedAt: !313)
!327 = !DILocation(line: 230, column: 3, scope: !310, inlinedAt: !313)
!328 = !DILocation(line: 133, column: 9, scope: !15)
!329 = !DILocation(line: 133, column: 2, scope: !15)
!330 = distinct !DISubprogram(name: "_strtoumax_l", scope: !1, file: !1, line: 60, type: !331, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !335)
!331 = !DISubroutineType(types: !332)
!332 = !{!18, !23, !297, !298, !7, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !334, line: 10, baseType: !115)
!334 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!336 = !DILocalVariable(name: "rptr", arg: 1, scope: !330, file: !1, line: 60, type: !23)
!337 = !DILocalVariable(name: "nptr", arg: 2, scope: !330, file: !1, line: 60, type: !297)
!338 = !DILocalVariable(name: "endptr", arg: 3, scope: !330, file: !1, line: 61, type: !298)
!339 = !DILocalVariable(name: "base", arg: 4, scope: !330, file: !1, line: 61, type: !7)
!340 = !DILocalVariable(name: "loc", arg: 5, scope: !330, file: !1, line: 61, type: !333)
!341 = !DILocalVariable(name: "s", scope: !330, file: !1, line: 63, type: !58)
!342 = !DILocalVariable(name: "acc", scope: !330, file: !1, line: 64, type: !18)
!343 = !DILocalVariable(name: "c", scope: !330, file: !1, line: 65, type: !10)
!344 = !DILocalVariable(name: "cutoff", scope: !330, file: !1, line: 66, type: !18)
!345 = !DILocalVariable(name: "neg", scope: !330, file: !1, line: 67, type: !7)
!346 = !DILocalVariable(name: "any", scope: !330, file: !1, line: 67, type: !7)
!347 = !DILocalVariable(name: "cutlim", scope: !330, file: !1, line: 67, type: !7)
!348 = !DILocation(line: 60, column: 29, scope: !330)
!349 = !DILocation(line: 60, column: 59, scope: !330)
!350 = !DILocation(line: 61, column: 26, scope: !330)
!351 = !DILocation(line: 61, column: 38, scope: !330)
!352 = !DILocation(line: 61, column: 53, scope: !330)
!353 = !DILocation(line: 63, column: 14, scope: !330)
!354 = !DILocation(line: 67, column: 6, scope: !330)
!355 = !DILocation(line: 72, column: 2, scope: !330)
!356 = !DILocation(line: 0, scope: !357)
!357 = distinct !DILexicalBlock(scope: !330, file: !1, line: 72, column: 5)
!358 = !DILocation(line: 73, column: 9, scope: !357)
!359 = !DILocation(line: 73, column: 7, scope: !357)
!360 = !{!318, !318, i64 0}
!361 = !DILocation(line: 65, column: 7, scope: !330)
!362 = !DILocation(line: 74, column: 11, scope: !330)
!363 = !DILocation(line: 74, column: 2, scope: !357)
!364 = distinct !{!364, !355, !365}
!365 = !DILocation(line: 74, column: 28, scope: !330)
!366 = !DILocation(line: 75, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !330, file: !1, line: 75, column: 6)
!368 = !DILocation(line: 75, column: 6, scope: !330)
!369 = !DILocation(line: 80, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 80, column: 7)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 78, column: 9)
!372 = !DILocation(line: 80, column: 7, scope: !371)
!373 = !DILocation(line: 0, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !1, line: 75, column: 16)
!375 = !DILocation(line: 83, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !330, file: !1, line: 83, column: 6)
!377 = !DILocation(line: 0, scope: !371)
!378 = !DILocation(line: 84, column: 8, scope: !376)
!379 = !DILocation(line: 84, column: 15, scope: !376)
!380 = !DILocation(line: 84, column: 19, scope: !376)
!381 = !DILocation(line: 84, column: 22, scope: !376)
!382 = !DILocation(line: 84, column: 29, scope: !376)
!383 = !DILocation(line: 84, column: 35, scope: !376)
!384 = !DILocation(line: 83, column: 6, scope: !330)
!385 = !DILocation(line: 85, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !376, file: !1, line: 84, column: 44)
!387 = !DILocation(line: 86, column: 5, scope: !386)
!388 = !DILocation(line: 88, column: 2, scope: !386)
!389 = !DILocation(line: 89, column: 6, scope: !330)
!390 = !DILocation(line: 67, column: 15, scope: !330)
!391 = !DILocation(line: 64, column: 12, scope: !330)
!392 = !DILocation(line: 92, column: 15, scope: !393)
!393 = distinct !DILexicalBlock(scope: !330, file: !1, line: 92, column: 6)
!394 = !DILocation(line: 89, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !330, file: !1, line: 89, column: 6)
!396 = !DILocation(line: 90, column: 12, scope: !395)
!397 = !DILocation(line: 90, column: 10, scope: !395)
!398 = !DILocation(line: 90, column: 3, scope: !395)
!399 = !DILocation(line: 0, scope: !386)
!400 = !DILocation(line: 95, column: 25, scope: !330)
!401 = !DILocation(line: 95, column: 23, scope: !330)
!402 = !DILocation(line: 66, column: 12, scope: !330)
!403 = !DILocation(line: 96, column: 23, scope: !330)
!404 = !DILocation(line: 96, column: 11, scope: !330)
!405 = !DILocation(line: 67, column: 20, scope: !330)
!406 = !DILocation(line: 97, column: 2, scope: !330)
!407 = !DILocation(line: 98, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 98, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 97, column: 22)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 97, column: 2)
!411 = distinct !DILexicalBlock(scope: !330, file: !1, line: 97, column: 2)
!412 = !DILocation(line: 98, column: 16, scope: !408)
!413 = !DILocation(line: 91, column: 6, scope: !330)
!414 = !DILocation(line: 0, scope: !410)
!415 = !DILocation(line: 0, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !1, line: 108, column: 7)
!417 = !DILocation(line: 100, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !408, file: !1, line: 100, column: 12)
!419 = !DILocation(line: 98, column: 21, scope: !408)
!420 = !DILocation(line: 98, column: 7, scope: !409)
!421 = !DILocation(line: 100, column: 14, scope: !418)
!422 = !DILocation(line: 100, column: 26, scope: !418)
!423 = !DILocation(line: 100, column: 12, scope: !408)
!424 = !DILocation(line: 102, column: 21, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !1, line: 102, column: 12)
!426 = !DILocation(line: 102, column: 14, scope: !425)
!427 = !DILocation(line: 102, column: 26, scope: !425)
!428 = !DILocation(line: 102, column: 12, scope: !418)
!429 = !DILocation(line: 0, scope: !408)
!430 = !DILocation(line: 106, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !409, file: !1, line: 106, column: 7)
!432 = !DILocation(line: 106, column: 9, scope: !431)
!433 = !DILocation(line: 106, column: 7, scope: !409)
!434 = !DILocation(line: 108, column: 11, scope: !416)
!435 = !DILocation(line: 108, column: 15, scope: !416)
!436 = !DILocation(line: 108, column: 22, scope: !416)
!437 = !DILocation(line: 108, column: 31, scope: !416)
!438 = !DILocation(line: 108, column: 39, scope: !416)
!439 = !DILocation(line: 108, column: 49, scope: !416)
!440 = !DILocation(line: 108, column: 54, scope: !416)
!441 = !DILocation(line: 108, column: 7, scope: !409)
!442 = !DILocation(line: 112, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !416, file: !1, line: 110, column: 8)
!444 = !DILocation(line: 113, column: 11, scope: !443)
!445 = !DILocation(line: 113, column: 8, scope: !443)
!446 = !DILocation(line: 0, scope: !443)
!447 = !DILocation(line: 97, column: 18, scope: !410)
!448 = !DILocation(line: 97, column: 16, scope: !410)
!449 = !DILocation(line: 97, column: 2, scope: !410)
!450 = distinct !{!450, !451, !452}
!451 = !DILocation(line: 97, column: 2, scope: !411)
!452 = !DILocation(line: 115, column: 2, scope: !411)
!453 = !DILocation(line: 116, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !330, file: !1, line: 116, column: 6)
!455 = !DILocation(line: 116, column: 6, scope: !330)
!456 = !DILocation(line: 118, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 116, column: 15)
!458 = !DILocation(line: 118, column: 16, scope: !457)
!459 = !{!316, !317, i64 0}
!460 = !DILocation(line: 119, column: 2, scope: !457)
!461 = !DILocation(line: 119, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 119, column: 13)
!463 = !DILocation(line: 119, column: 13, scope: !454)
!464 = !DILocation(line: 121, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 119, column: 19)
!466 = !DILocation(line: 121, column: 16, scope: !465)
!467 = !DILocation(line: 122, column: 2, scope: !465)
!468 = !DILocation(line: 122, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !1, line: 122, column: 13)
!470 = !DILocation(line: 122, column: 13, scope: !462)
!471 = !DILocation(line: 123, column: 9, scope: !469)
!472 = !DILocation(line: 123, column: 3, scope: !469)
!473 = !DILocation(line: 0, scope: !457)
!474 = !DILocation(line: 124, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !330, file: !1, line: 124, column: 6)
!476 = !DILocation(line: 0, scope: !330)
!477 = !DILocation(line: 91, column: 12, scope: !330)
!478 = !DILocation(line: 124, column: 6, scope: !330)
!479 = !DILocation(line: 125, column: 22, scope: !475)
!480 = !DILocation(line: 125, column: 30, scope: !475)
!481 = !DILocation(line: 125, column: 11, scope: !475)
!482 = !{!320, !320, i64 0}
!483 = !DILocation(line: 125, column: 3, scope: !475)
!484 = !DILocation(line: 126, column: 2, scope: !330)
!485 = distinct !DISubprogram(name: "strtoumax_l", scope: !1, file: !1, line: 139, type: !486, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!18, !297, !298, !7, !333}
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "nptr", arg: 1, scope: !485, file: !1, line: 139, type: !297)
!490 = !DILocalVariable(name: "endptr", arg: 2, scope: !485, file: !1, line: 139, type: !298)
!491 = !DILocalVariable(name: "base", arg: 3, scope: !485, file: !1, line: 139, type: !7)
!492 = !DILocalVariable(name: "loc", arg: 4, scope: !485, file: !1, line: 140, type: !333)
!493 = !DILocation(line: 139, column: 37, scope: !485)
!494 = !DILocation(line: 139, column: 62, scope: !485)
!495 = !DILocation(line: 139, column: 74, scope: !485)
!496 = !DILocation(line: 140, column: 15, scope: !485)
!497 = !DILocation(line: 142, column: 22, scope: !485)
!498 = !DILocation(line: 142, column: 9, scope: !485)
!499 = !DILocation(line: 142, column: 2, scope: !485)
!500 = distinct !DISubprogram(name: "strtoumax", scope: !1, file: !1, line: 146, type: !501, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!18, !297, !298, !7}
!503 = !{!504, !505, !506}
!504 = !DILocalVariable(name: "nptr", arg: 1, scope: !500, file: !1, line: 146, type: !297)
!505 = !DILocalVariable(name: "endptr", arg: 2, scope: !500, file: !1, line: 146, type: !298)
!506 = !DILocalVariable(name: "base", arg: 3, scope: !500, file: !1, line: 146, type: !7)
!507 = !DILocation(line: 146, column: 34, scope: !500)
!508 = !DILocation(line: 146, column: 58, scope: !500)
!509 = !DILocation(line: 146, column: 70, scope: !500)
!510 = !DILocation(line: 148, column: 22, scope: !500)
!511 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !512)
!512 = distinct !DILocation(line: 148, column: 50, scope: !500)
!513 = !DILocation(line: 230, column: 18, scope: !310, inlinedAt: !512)
!514 = !DILocation(line: 213, column: 3, scope: !325, inlinedAt: !515)
!515 = distinct !DILocation(line: 230, column: 29, scope: !310, inlinedAt: !512)
!516 = !DILocation(line: 230, column: 3, scope: !310, inlinedAt: !512)
!517 = !DILocation(line: 148, column: 9, scope: !500)
!518 = !DILocation(line: 148, column: 2, scope: !500)
