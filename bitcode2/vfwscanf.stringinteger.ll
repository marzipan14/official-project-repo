; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__ssvfiwscanf_r.basefix = internal unnamed_addr constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__ssvfiwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca %struct._mbstate_t, align 4
  %6 = alloca [40 x i32], align 16
  %7 = alloca [1 x i8], align 1
  %8 = bitcast %struct._mbstate_t* %5 to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !318
  %9 = bitcast [40 x i32]* %6 to i8*, !dbg !320
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %9) #4, !dbg !320
  %10 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  %11 = load i32, i32* %2, align 4, !dbg !331, !tbaa !332
  %12 = icmp eq i32 %11, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %12, label %1035, label %13, !dbg !339

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %19 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 1
  %21 = ptrtoint [40 x i32]* %6 to i64
  br label %22, !dbg !339

; <label>:22:                                     ; preds = %13, %1018
  %23 = phi i32 [ %11, %13 ], [ %1024, %1018 ]
  %24 = phi i32* [ %2, %13 ], [ %270, %1018 ]
  %25 = phi i8* [ null, %13 ], [ %1023, %1018 ]
  %26 = phi i32 [ 0, %13 ], [ %269, %1018 ]
  %27 = phi i32* [ null, %13 ], [ %268, %1018 ]
  %28 = phi i32* [ null, %13 ], [ %267, %1018 ]
  %29 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ null, %13 ], [ %266, %1018 ]
  %30 = phi i32 [ 0, %13 ], [ %1022, %1018 ]
  %31 = phi i32 [ 0, %13 ], [ %1021, %1018 ]
  %32 = phi i32 [ 0, %13 ], [ %1020, %1018 ]
  %33 = phi i32* [ null, %13 ], [ %1019, %1018 ]
  %34 = sext i32 %31 to i64, !dbg !339
  br label %35, !dbg !339

; <label>:35:                                     ; preds = %22, %105
  %36 = phi i64 [ %34, %22 ], [ %106, %105 ]
  %37 = phi i32 [ %23, %22 ], [ %107, %105 ]
  %38 = phi i32* [ %24, %22 ], [ %85, %105 ]
  %39 = trunc i64 %36 to i32
  %40 = trunc i64 %36 to i8
  %41 = trunc i64 %36 to i16
  br label %42, !dbg !339

; <label>:42:                                     ; preds = %35, %71
  %43 = phi i32 [ %37, %35 ], [ %73, %71 ]
  %44 = phi i32* [ %38, %35 ], [ %72, %71 ]
  %45 = getelementptr inbounds i32, i32* %44, i64 1, !dbg !340
  %46 = call i32 @iswspace(i32 %43) #5, !dbg !341
  %47 = icmp eq i32 %46, 0, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br i1 %47, label %75, label %48, !dbg !343

; <label>:48:                                     ; preds = %42, %65
  %49 = load i32, i32* %14, align 8, !dbg !354, !tbaa !356
  %50 = icmp slt i32 %49, 1, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %50, label %51, label %57, !dbg !364

; <label>:51:                                     ; preds = %48
  %52 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !365
  %53 = icmp eq i32 %52, 0, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %53, label %54, label %56, !dbg !366

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %14, align 8, !dbg !367, !tbaa !356
  br label %57, !dbg !366

; <label>:56:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %69, !dbg !370

; <label>:57:                                     ; preds = %48, %54
  %58 = phi i32 [ %55, %54 ], [ %49, %48 ], !dbg !367
  %59 = load i8*, i8** %15, align 8, !dbg !371, !tbaa !372
  %60 = bitcast i8* %59 to i32*, !dbg !373
  %61 = load i32, i32* %60, align 4, !dbg !373, !tbaa !332
  %62 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !375
  store i8* %62, i8** %15, align 8, !dbg !375, !tbaa !372
  %63 = add i32 %58, -4, !dbg !367
  store i32 %63, i32* %14, align 8, !dbg !367, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  %64 = icmp eq i32 %61, -1, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %64, label %69, label %65, !dbg !370

; <label>:65:                                     ; preds = %57
  %66 = call i32 @iswspace(i32 %61) #5, !dbg !378
  %67 = icmp eq i32 %66, 0, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %67, label %68, label %48, !dbg !379, !llvm.loop !380

; <label>:68:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %61, %struct.__sFILE* nonnull %1) #6, !dbg !383
  br label %69, !dbg !383

; <label>:69:                                     ; preds = %57, %68, %56, %208, %244, %257, %226
  %70 = phi i32* [ %81, %226 ], [ %81, %257 ], [ %81, %244 ], [ %81, %208 ], [ %45, %56 ], [ %45, %68 ], [ %45, %57 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br label %71, !dbg !331

; <label>:71:                                     ; preds = %69, %191
  %72 = phi i32* [ %81, %191 ], [ %70, %69 ]
  %73 = load i32, i32* %72, align 4, !dbg !331, !tbaa !332
  %74 = icmp eq i32 %73, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %74, label %1035, label %42, !dbg !339, !llvm.loop !387

; <label>:75:                                     ; preds = %42
  %76 = icmp eq i32 %43, 37, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %76, label %77, label %83, !dbg !392

; <label>:77:                                     ; preds = %75, %111
  %78 = phi i64 [ %112, %111 ], [ 0, %75 ], !dbg !393
  %79 = phi i32 [ %113, %111 ], [ 0, %75 ], !dbg !385
  %80 = phi i32* [ %114, %111 ], [ %45, %75 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %81 = getelementptr inbounds i32, i32* %80, i64 1, !dbg !396
  %82 = load i32, i32* %80, align 4, !dbg !397, !tbaa !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  switch i32 %82, label %1035 [
    i32 37, label %83
    i32 42, label %109
    i32 108, label %115
    i32 76, label %122
    i32 104, label %124
    i32 106, label %131
    i32 116, label %133
    i32 122, label %135
    i32 48, label %137
    i32 49, label %137
    i32 50, label %137
    i32 51, label %137
    i32 52, label %137
    i32 53, label %137
    i32 54, label %137
    i32 55, label %137
    i32 56, label %137
    i32 57, label %137
    i32 100, label %261
    i32 105, label %262
    i32 111, label %142
    i32 117, label %143
    i32 88, label %144
    i32 120, label %144
    i32 83, label %146
    i32 115, label %148
    i32 91, label %150
    i32 67, label %184
    i32 99, label %186
    i32 112, label %189
    i32 110, label %191
    i32 0, label %1034
  ], !dbg !398

; <label>:83:                                     ; preds = %75, %77
  %84 = phi i32 [ %82, %77 ], [ %43, %75 ], !dbg !393
  %85 = phi i32* [ %81, %77 ], [ %45, %75 ], !dbg !393
  %86 = load i32, i32* %14, align 8, !dbg !402, !tbaa !356
  %87 = icmp slt i32 %86, 1, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %87, label %88, label %94, !dbg !404

; <label>:88:                                     ; preds = %83
  %89 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !405
  %90 = icmp eq i32 %89, 0, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %90, label %91, label %93, !dbg !406

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %14, align 8, !dbg !407, !tbaa !356
  br label %94, !dbg !406

; <label>:93:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %1026, !dbg !411

; <label>:94:                                     ; preds = %83, %91
  %95 = phi i32 [ %92, %91 ], [ %86, %83 ], !dbg !407
  %96 = load i8*, i8** %15, align 8, !dbg !412, !tbaa !372
  %97 = bitcast i8* %96 to i32*, !dbg !413
  %98 = load i32, i32* %97, align 4, !dbg !413, !tbaa !332
  %99 = getelementptr inbounds i8, i8* %96, i64 4, !dbg !415
  store i8* %99, i8** %15, align 8, !dbg !415, !tbaa !372
  %100 = add i32 %95, -4, !dbg !407
  store i32 %100, i32* %14, align 8, !dbg !407, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %101 = icmp eq i32 %98, -1, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %101, label %1026, label %102, !dbg !411

; <label>:102:                                    ; preds = %94
  %103 = icmp eq i32 %84, %98, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %103, label %105, label %104, !dbg !420

; <label>:104:                                    ; preds = %102
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %98, %struct.__sFILE* nonnull %1) #6, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br label %1026, !dbg !423

; <label>:105:                                    ; preds = %102
  %106 = add i64 %36, 1, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  %107 = load i32, i32* %85, align 4, !dbg !331, !tbaa !332
  %108 = icmp eq i32 %107, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %108, label %1035, label %35, !dbg !339, !llvm.loop !387

; <label>:109:                                    ; preds = %77
  %110 = or i32 %79, 16, !dbg !426
  br label %111, !dbg !427

; <label>:111:                                    ; preds = %109, %115, %122, %124, %131, %133, %135, %137
  %112 = phi i64 [ %141, %137 ], [ %78, %135 ], [ %78, %133 ], [ %78, %131 ], [ %78, %124 ], [ %78, %122 ], [ %78, %115 ], [ %78, %109 ]
  %113 = phi i32 [ %79, %137 ], [ %136, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %124 ], [ %123, %122 ], [ %121, %115 ], [ %110, %109 ]
  %114 = phi i32* [ %81, %137 ], [ %81, %135 ], [ %81, %133 ], [ %81, %131 ], [ %129, %124 ], [ %81, %122 ], [ %120, %115 ], [ %81, %109 ]
  br label %77, !dbg !393

; <label>:115:                                    ; preds = %77
  %116 = load i32, i32* %81, align 4, !dbg !428, !tbaa !332
  %117 = icmp eq i32 %116, 108, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %118 = getelementptr inbounds i32, i32* %80, i64 2, !dbg !432
  %119 = select i1 %117, i32 2, i32 1, !dbg !431
  %120 = select i1 %117, i32* %118, i32* %81, !dbg !431
  %121 = or i32 %79, %119, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %111, !dbg !435

; <label>:122:                                    ; preds = %77
  %123 = or i32 %79, 2, !dbg !436
  br label %111, !dbg !437

; <label>:124:                                    ; preds = %77
  %125 = load i32, i32* %81, align 4, !dbg !438, !tbaa !332
  %126 = icmp eq i32 %125, 104, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  %127 = getelementptr inbounds i32, i32* %80, i64 2, !dbg !442
  %128 = select i1 %126, i32 8, i32 4, !dbg !441
  %129 = select i1 %126, i32* %127, i32* %81, !dbg !441
  %130 = or i32 %79, %128, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %111, !dbg !445

; <label>:131:                                    ; preds = %77
  %132 = or i32 %79, 1, !dbg !446
  br label %111, !dbg !448

; <label>:133:                                    ; preds = %77
  %134 = or i32 %79, 1, !dbg !449
  br label %111, !dbg !453

; <label>:135:                                    ; preds = %77
  %136 = or i32 %79, 1, !dbg !454
  br label %111, !dbg !458

; <label>:137:                                    ; preds = %77, %77, %77, %77, %77, %77, %77, %77, %77, %77
  %138 = mul i64 %78, 10, !dbg !459
  %139 = zext i32 %82 to i64, !dbg !460
  %140 = add i64 %138, -48, !dbg !461
  %141 = add i64 %140, %139, !dbg !462
  br label %111, !dbg !463

; <label>:142:                                    ; preds = %77
  br label %262, !dbg !464

; <label>:143:                                    ; preds = %77
  br label %262, !dbg !465

; <label>:144:                                    ; preds = %77, %77
  %145 = or i32 %79, 512, !dbg !466
  br label %262, !dbg !467

; <label>:146:                                    ; preds = %77
  %147 = or i32 %79, 1, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br label %148, !dbg !469

; <label>:148:                                    ; preds = %77, %146
  %149 = phi i32 [ %147, %146 ], [ %79, %77 ], !dbg !385
  br label %262, !dbg !470

; <label>:150:                                    ; preds = %77
  %151 = load i32, i32* %81, align 4, !dbg !471, !tbaa !332
  %152 = icmp eq i32 %151, 94, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %152, label %153, label %156, !dbg !474

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds i32, i32* %80, i64 2, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  %155 = load i32, i32* %154, align 4, !dbg !478, !tbaa !332
  br label %157, !dbg !477

; <label>:156:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %157

; <label>:157:                                    ; preds = %156, %153
  %158 = phi i32 [ %151, %156 ], [ %155, %153 ], !dbg !478
  %159 = phi i32 [ 0, %156 ], [ 1, %153 ], !dbg !480
  %160 = phi i32* [ %81, %156 ], [ %154, %153 ], !dbg !393
  %161 = icmp eq i32 %158, 93, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %161, label %162, label %165, !dbg !482

; <label>:162:                                    ; preds = %157
  %163 = getelementptr inbounds i32, i32* %160, i64 1, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  %164 = load i32, i32* %163, align 4, !dbg !485, !tbaa !332
  br label %165, !dbg !484

; <label>:165:                                    ; preds = %162, %157
  %166 = phi i32 [ %164, %162 ], [ %158, %157 ], !dbg !485
  %167 = phi i32* [ %163, %162 ], [ %160, %157 ], !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %168 = icmp eq i32 %166, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %168, label %169, label %172, !dbg !489

; <label>:169:                                    ; preds = %177, %165
  %170 = phi i32* [ %167, %165 ], [ %176, %177 ], !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %171 = getelementptr inbounds i32, i32* %170, i64 1, !dbg !385
  br label %180, !dbg !487

; <label>:172:                                    ; preds = %165, %177
  %173 = phi i32 [ %178, %177 ], [ %166, %165 ]
  %174 = phi i32* [ %176, %177 ], [ %167, %165 ]
  %175 = icmp eq i32 %173, 93, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %176 = getelementptr inbounds i32, i32* %174, i64 1, !dbg !385
  br i1 %175, label %180, label %177, !dbg !487

; <label>:177:                                    ; preds = %172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %178 = load i32, i32* %176, align 4, !dbg !485, !tbaa !332
  %179 = icmp eq i32 %178, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %179, label %169, label %172, !dbg !489, !llvm.loop !491

; <label>:180:                                    ; preds = %172, %169
  %181 = phi i32* [ %170, %169 ], [ %174, %172 ]
  %182 = phi i32* [ %171, %169 ], [ %176, %172 ]
  %183 = or i32 %79, 64, !dbg !493
  br label %262, !dbg !494

; <label>:184:                                    ; preds = %77
  %185 = or i32 %79, 1, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br label %186, !dbg !496

; <label>:186:                                    ; preds = %77, %184
  %187 = phi i32 [ %185, %184 ], [ %79, %77 ], !dbg !385
  %188 = or i32 %187, 64, !dbg !497
  br label %262, !dbg !498

; <label>:189:                                    ; preds = %77
  %190 = or i32 %79, 544, !dbg !499
  br label %262, !dbg !500

; <label>:191:                                    ; preds = %77
  %192 = and i32 %79, 16, !dbg !501
  %193 = icmp eq i32 %192, 0, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %193, label %194, label %71, !dbg !503

; <label>:194:                                    ; preds = %191
  %195 = and i32 %79, 8, !dbg !504
  %196 = icmp eq i32 %195, 0, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br i1 %196, label %212, label %197, !dbg !506

; <label>:197:                                    ; preds = %194
  %198 = load i32, i32* %16, align 8, !dbg !507
  %199 = icmp ult i32 %198, 41, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %199, label %200, label %205, !dbg !507

; <label>:200:                                    ; preds = %197
  %201 = load i8*, i8** %17, align 8, !dbg !507
  %202 = sext i32 %198 to i64, !dbg !507
  %203 = getelementptr i8, i8* %201, i64 %202, !dbg !507
  %204 = add i32 %198, 8, !dbg !507
  store i32 %204, i32* %16, align 8, !dbg !507
  br label %208, !dbg !507

; <label>:205:                                    ; preds = %197
  %206 = load i8*, i8** %18, align 8, !dbg !507
  %207 = getelementptr i8, i8* %206, i64 8, !dbg !507
  store i8* %207, i8** %18, align 8, !dbg !507
  br label %208, !dbg !507

; <label>:208:                                    ; preds = %205, %200
  %209 = phi i8* [ %203, %200 ], [ %206, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  %210 = bitcast i8* %209 to i8**, !dbg !507
  %211 = load i8*, i8** %210, align 8, !dbg !507
  store i8 %40, i8* %211, align 1, !dbg !510, !tbaa !511
  br label %69, !dbg !512

; <label>:212:                                    ; preds = %194
  %213 = and i32 %79, 4, !dbg !513
  %214 = icmp eq i32 %213, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %214, label %230, label %215, !dbg !515

; <label>:215:                                    ; preds = %212
  %216 = load i32, i32* %16, align 8, !dbg !516
  %217 = icmp ult i32 %216, 41, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %217, label %218, label %223, !dbg !516

; <label>:218:                                    ; preds = %215
  %219 = load i8*, i8** %17, align 8, !dbg !516
  %220 = sext i32 %216 to i64, !dbg !516
  %221 = getelementptr i8, i8* %219, i64 %220, !dbg !516
  %222 = add i32 %216, 8, !dbg !516
  store i32 %222, i32* %16, align 8, !dbg !516
  br label %226, !dbg !516

; <label>:223:                                    ; preds = %215
  %224 = load i8*, i8** %18, align 8, !dbg !516
  %225 = getelementptr i8, i8* %224, i64 8, !dbg !516
  store i8* %225, i8** %18, align 8, !dbg !516
  br label %226, !dbg !516

; <label>:226:                                    ; preds = %223, %218
  %227 = phi i8* [ %221, %218 ], [ %224, %223 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %228 = bitcast i8* %227 to i16**, !dbg !516
  %229 = load i16*, i16** %228, align 8, !dbg !516
  store i16 %41, i16* %229, align 2, !dbg !519, !tbaa !520
  br label %69, !dbg !521

; <label>:230:                                    ; preds = %212
  %231 = and i32 %79, 1, !dbg !522
  %232 = icmp eq i32 %231, 0, !dbg !522
  %233 = load i32, i32* %16, align 8, !dbg !524
  %234 = icmp ult i32 %233, 41, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %232, label %248, label %235, !dbg !526

; <label>:235:                                    ; preds = %230
  br i1 %234, label %236, label %241, !dbg !529

; <label>:236:                                    ; preds = %235
  %237 = load i8*, i8** %17, align 8, !dbg !529
  %238 = sext i32 %233 to i64, !dbg !529
  %239 = getelementptr i8, i8* %237, i64 %238, !dbg !529
  %240 = add i32 %233, 8, !dbg !529
  store i32 %240, i32* %16, align 8, !dbg !529
  br label %244, !dbg !529

; <label>:241:                                    ; preds = %235
  %242 = load i8*, i8** %18, align 8, !dbg !529
  %243 = getelementptr i8, i8* %242, i64 8, !dbg !529
  store i8* %243, i8** %18, align 8, !dbg !529
  br label %244, !dbg !529

; <label>:244:                                    ; preds = %241, %236
  %245 = phi i8* [ %239, %236 ], [ %242, %241 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %246 = bitcast i8* %245 to i64**, !dbg !529
  %247 = load i64*, i64** %246, align 8, !dbg !529
  store i64 %36, i64* %247, align 8, !dbg !531, !tbaa !532
  br label %69, !dbg !533

; <label>:248:                                    ; preds = %230
  br i1 %234, label %249, label %254, !dbg !534

; <label>:249:                                    ; preds = %248
  %250 = load i8*, i8** %17, align 8, !dbg !534
  %251 = sext i32 %233 to i64, !dbg !534
  %252 = getelementptr i8, i8* %250, i64 %251, !dbg !534
  %253 = add i32 %233, 8, !dbg !534
  store i32 %253, i32* %16, align 8, !dbg !534
  br label %257, !dbg !534

; <label>:254:                                    ; preds = %248
  %255 = load i8*, i8** %18, align 8, !dbg !534
  %256 = getelementptr i8, i8* %255, i64 8, !dbg !534
  store i8* %256, i8** %18, align 8, !dbg !534
  br label %257, !dbg !534

; <label>:257:                                    ; preds = %254, %249
  %258 = phi i8* [ %252, %249 ], [ %255, %254 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  %259 = bitcast i8* %258 to i32**, !dbg !534
  %260 = load i32*, i32** %259, align 8, !dbg !534
  store i32 %39, i32* %260, align 4, !dbg !536, !tbaa !332
  br label %69

; <label>:261:                                    ; preds = %77
  br label %262, !dbg !385

; <label>:262:                                    ; preds = %77, %261, %189, %186, %180, %148, %144, %143, %142
  %263 = phi i2 [ -1, %189 ], [ 0, %186 ], [ 1, %180 ], [ -2, %148 ], [ -1, %144 ], [ -1, %143 ], [ -1, %142 ], [ -1, %261 ], [ -1, %77 ]
  %264 = phi i32 [ %190, %189 ], [ %188, %186 ], [ %183, %180 ], [ %149, %148 ], [ %145, %144 ], [ %79, %143 ], [ %79, %142 ], [ %79, %261 ], [ %79, %77 ], !dbg !393
  %265 = phi i32 [ 16, %189 ], [ %30, %186 ], [ %30, %180 ], [ %30, %148 ], [ 16, %144 ], [ 10, %143 ], [ 8, %142 ], [ 10, %261 ], [ 0, %77 ], !dbg !385
  %266 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ @_wcstoul_r, %189 ], [ %29, %186 ], [ %29, %180 ], [ %29, %148 ], [ @_wcstoul_r, %144 ], [ @_wcstoul_r, %143 ], [ @_wcstoul_r, %142 ], [ @_wcstol_r, %261 ], [ @_wcstol_r, %77 ], !dbg !385
  %267 = phi i32* [ %28, %189 ], [ %28, %186 ], [ %81, %180 ], [ %28, %148 ], [ %28, %144 ], [ %28, %143 ], [ %28, %142 ], [ %28, %261 ], [ %28, %77 ], !dbg !537
  %268 = phi i32* [ %27, %189 ], [ %27, %186 ], [ %181, %180 ], [ %27, %148 ], [ %27, %144 ], [ %27, %143 ], [ %27, %142 ], [ %27, %261 ], [ %27, %77 ], !dbg !537
  %269 = phi i32 [ %26, %189 ], [ %26, %186 ], [ %159, %180 ], [ %26, %148 ], [ %26, %144 ], [ %26, %143 ], [ %26, %142 ], [ %26, %261 ], [ %26, %77 ], !dbg !537
  %270 = phi i32* [ %81, %189 ], [ %81, %186 ], [ %182, %180 ], [ %81, %148 ], [ %81, %144 ], [ %81, %143 ], [ %81, %142 ], [ %81, %261 ], [ %81, %77 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  %271 = trunc i64 %36 to i32
  %272 = and i32 %264, 64, !dbg !538
  %273 = icmp eq i32 %272, 0, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %273, label %274, label %299, !dbg !541

; <label>:274:                                    ; preds = %262, %295
  %275 = phi i32 [ %296, %295 ], [ %271, %262 ], !dbg !542
  %276 = load i32, i32* %14, align 8, !dbg !546, !tbaa !356
  %277 = icmp slt i32 %276, 1, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %277, label %278, label %284, !dbg !548

; <label>:278:                                    ; preds = %274
  %279 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !549
  %280 = icmp eq i32 %279, 0, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %280, label %281, label %283, !dbg !550

; <label>:281:                                    ; preds = %278
  %282 = load i32, i32* %14, align 8, !dbg !551, !tbaa !356
  br label %284, !dbg !550

; <label>:283:                                    ; preds = %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %297, !dbg !554

; <label>:284:                                    ; preds = %274, %281
  %285 = phi i32 [ %282, %281 ], [ %276, %274 ], !dbg !551
  %286 = load i8*, i8** %15, align 8, !dbg !555, !tbaa !372
  %287 = bitcast i8* %286 to i32*, !dbg !556
  %288 = load i32, i32* %287, align 4, !dbg !556, !tbaa !332
  %289 = getelementptr inbounds i8, i8* %286, i64 4, !dbg !558
  store i8* %289, i8** %15, align 8, !dbg !558, !tbaa !372
  %290 = add i32 %285, -4, !dbg !551
  store i32 %290, i32* %14, align 8, !dbg !551, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  %291 = icmp eq i32 %288, -1, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %291, label %297, label %292, !dbg !554

; <label>:292:                                    ; preds = %284
  %293 = call i32 @iswspace(i32 %288) #5, !dbg !561
  %294 = icmp eq i32 %293, 0, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %294, label %298, label %295, !dbg !562

; <label>:295:                                    ; preds = %292
  %296 = add nsw i32 %275, 1, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br label %274, !dbg !562, !llvm.loop !564

; <label>:297:                                    ; preds = %284, %283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %1026, !dbg !565

; <label>:298:                                    ; preds = %292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %288, %struct.__sFILE* nonnull %1) #6, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br label %299, !dbg !567

; <label>:299:                                    ; preds = %298, %262
  %300 = phi i32 [ %275, %298 ], [ %271, %262 ], !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  switch i2 %263, label %1017 [
    i2 0, label %301
    i2 1, label %440
    i2 -2, label %635
    i2 -1, label %803
  ], !dbg !569

; <label>:301:                                    ; preds = %299
  %302 = icmp eq i64 %78, 0, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %302, label %303, label %304, !dbg !572

; <label>:303:                                    ; preds = %301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br label %304, !dbg !573

; <label>:304:                                    ; preds = %303, %301
  %305 = phi i64 [ 1, %303 ], [ %78, %301 ], !dbg !393
  %306 = and i32 %264, 1, !dbg !574
  %307 = icmp eq i32 %306, 0, !dbg !574
  %308 = and i32 %264, 16, !dbg !576
  %309 = icmp ne i32 %308, 0, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %307, label %365, label %310, !dbg !579

; <label>:310:                                    ; preds = %304
  br i1 %309, label %326, label %311, !dbg !582

; <label>:311:                                    ; preds = %310
  %312 = load i32, i32* %16, align 8, !dbg !583
  %313 = icmp ult i32 %312, 41, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %313, label %314, label %319, !dbg !583

; <label>:314:                                    ; preds = %311
  %315 = load i8*, i8** %17, align 8, !dbg !583
  %316 = sext i32 %312 to i64, !dbg !583
  %317 = getelementptr i8, i8* %315, i64 %316, !dbg !583
  %318 = add i32 %312, 8, !dbg !583
  store i32 %318, i32* %16, align 8, !dbg !583
  br label %322, !dbg !583

; <label>:319:                                    ; preds = %311
  %320 = load i8*, i8** %18, align 8, !dbg !583
  %321 = getelementptr i8, i8* %320, i64 8, !dbg !583
  store i8* %321, i8** %18, align 8, !dbg !583
  br label %322, !dbg !583

; <label>:322:                                    ; preds = %319, %314
  %323 = phi i8* [ %317, %314 ], [ %320, %319 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %324 = bitcast i8* %323 to i32**, !dbg !583
  %325 = load i32*, i32** %324, align 8, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br label %326, !dbg !585

; <label>:326:                                    ; preds = %310, %322
  %327 = phi i32* [ %33, %310 ], [ %325, %322 ], !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br label %328, !dbg !590

; <label>:328:                                    ; preds = %326, %352
  %329 = phi i64 [ %332, %352 ], [ %305, %326 ]
  %330 = phi i32 [ %354, %352 ], [ 0, %326 ]
  %331 = phi i32* [ %353, %352 ], [ %327, %326 ]
  %332 = add i64 %329, -1, !dbg !590
  %333 = load i32, i32* %14, align 8, !dbg !593, !tbaa !356
  %334 = icmp slt i32 %333, 1, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br i1 %334, label %335, label %341, !dbg !595

; <label>:335:                                    ; preds = %328
  %336 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !596
  %337 = icmp eq i32 %336, 0, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %337, label %338, label %340, !dbg !597

; <label>:338:                                    ; preds = %335
  %339 = load i32, i32* %14, align 8, !dbg !598, !tbaa !356
  br label %341, !dbg !597

; <label>:340:                                    ; preds = %335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br label %357, !dbg !588

; <label>:341:                                    ; preds = %328, %338
  %342 = phi i32 [ %339, %338 ], [ %333, %328 ], !dbg !598
  %343 = load i8*, i8** %15, align 8, !dbg !601, !tbaa !372
  %344 = bitcast i8* %343 to i32*, !dbg !602
  %345 = load i32, i32* %344, align 4, !dbg !602, !tbaa !332
  %346 = getelementptr inbounds i8, i8* %343, i64 4, !dbg !604
  store i8* %346, i8** %15, align 8, !dbg !604, !tbaa !372
  %347 = add i32 %342, -4, !dbg !598
  store i32 %347, i32* %14, align 8, !dbg !598, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  %348 = icmp eq i32 %345, -1, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %348, label %357, label %349, !dbg !588

; <label>:349:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %309, label %352, label %350, !dbg !607

; <label>:350:                                    ; preds = %349
  %351 = getelementptr inbounds i32, i32* %331, i64 1, !dbg !609
  store i32 %345, i32* %331, align 4, !dbg !611, !tbaa !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %352, !dbg !612

; <label>:352:                                    ; preds = %350, %349
  %353 = phi i32* [ %331, %349 ], [ %351, %350 ], !dbg !613
  %354 = add nuw nsw i32 %330, 1, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  %355 = icmp eq i64 %332, 0, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %355, label %356, label %328, !dbg !589, !llvm.loop !616

; <label>:356:                                    ; preds = %352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %359, !dbg !618

; <label>:357:                                    ; preds = %341, %340
  %358 = icmp eq i32 %330, 0, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %358, label %1026, label %359, !dbg !618

; <label>:359:                                    ; preds = %356, %357
  %360 = phi i32 [ %354, %356 ], [ %330, %357 ]
  %361 = phi i32* [ %353, %356 ], [ %331, %357 ]
  %362 = add nsw i32 %360, %300, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %309, label %1018, label %363, !dbg !622

; <label>:363:                                    ; preds = %359
  %364 = add nsw i32 %32, 1, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br label %1018, !dbg !625

; <label>:365:                                    ; preds = %304
  br i1 %309, label %381, label %366, !dbg !626

; <label>:366:                                    ; preds = %365
  %367 = load i32, i32* %16, align 8, !dbg !627
  %368 = icmp ult i32 %367, 41, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %368, label %369, label %374, !dbg !627

; <label>:369:                                    ; preds = %366
  %370 = load i8*, i8** %17, align 8, !dbg !627
  %371 = sext i32 %367 to i64, !dbg !627
  %372 = getelementptr i8, i8* %370, i64 %371, !dbg !627
  %373 = add i32 %367, 8, !dbg !627
  store i32 %373, i32* %16, align 8, !dbg !627
  br label %377, !dbg !627

; <label>:374:                                    ; preds = %366
  %375 = load i8*, i8** %18, align 8, !dbg !627
  %376 = getelementptr i8, i8* %375, i64 8, !dbg !627
  store i8* %376, i8** %18, align 8, !dbg !627
  br label %377, !dbg !627

; <label>:377:                                    ; preds = %374, %369
  %378 = phi i8* [ %372, %369 ], [ %375, %374 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %379 = bitcast i8* %378 to i8**, !dbg !627
  %380 = load i8*, i8** %379, align 8, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br label %381, !dbg !628

; <label>:381:                                    ; preds = %365, %377
  %382 = phi i8* [ %25, %365 ], [ %380, %377 ], !dbg !576
  %383 = call i8* @memset(i8* nonnull %8, i32 0, i64 8) #5, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br label %384, !dbg !632

; <label>:384:                                    ; preds = %381, %424
  %385 = phi i8* [ %426, %424 ], [ %382, %381 ]
  %386 = phi i32 [ %428, %424 ], [ 0, %381 ]
  %387 = phi i64 [ %427, %424 ], [ %305, %381 ]
  %388 = load i32, i32* %14, align 8, !dbg !632, !tbaa !356
  %389 = icmp slt i32 %388, 1, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %389, label %390, label %396, !dbg !636

; <label>:390:                                    ; preds = %384
  %391 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !637
  %392 = icmp eq i32 %391, 0, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %392, label %393, label %395, !dbg !638

; <label>:393:                                    ; preds = %390
  %394 = load i32, i32* %14, align 8, !dbg !639, !tbaa !356
  br label %396, !dbg !638

; <label>:395:                                    ; preds = %390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br label %431, !dbg !630

; <label>:396:                                    ; preds = %384, %393
  %397 = phi i32 [ %394, %393 ], [ %388, %384 ], !dbg !639
  %398 = load i8*, i8** %15, align 8, !dbg !642, !tbaa !372
  %399 = bitcast i8* %398 to i32*, !dbg !643
  %400 = load i32, i32* %399, align 4, !dbg !643, !tbaa !332
  %401 = getelementptr inbounds i8, i8* %398, i64 4, !dbg !645
  store i8* %401, i8** %15, align 8, !dbg !645, !tbaa !372
  %402 = add i32 %397, -4, !dbg !639
  store i32 %402, i32* %14, align 8, !dbg !639, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %403 = icmp eq i32 %400, -1, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %403, label %432, label %404, !dbg !630

; <label>:404:                                    ; preds = %396
  %405 = call i32 @__locale_mb_cur_max() #5, !dbg !648
  %406 = sext i32 %405 to i64, !dbg !648
  %407 = icmp ult i64 %387, %406, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %407, label %412, label %408, !dbg !652

; <label>:408:                                    ; preds = %404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %309, label %412, label %409, !dbg !653

; <label>:409:                                    ; preds = %408
  %410 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %385, i32 %400, %struct._mbstate_t* nonnull %5) #5, !dbg !655
  %411 = icmp eq i64 %410, -1, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %411, label %1026, label %421, !dbg !660

; <label>:412:                                    ; preds = %404, %408
  %413 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %10, i32 %400, %struct._mbstate_t* nonnull %5) #5, !dbg !661
  %414 = icmp eq i64 %413, -1, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br i1 %414, label %1026, label %415, !dbg !665

; <label>:415:                                    ; preds = %412
  %416 = icmp ugt i64 %413, %387, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %416, label %417, label %418, !dbg !668

; <label>:417:                                    ; preds = %415
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %400, %struct.__sFILE* nonnull %1) #6, !dbg !669
  br label %431, !dbg !671

; <label>:418:                                    ; preds = %415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %309, label %424, label %419, !dbg !672

; <label>:419:                                    ; preds = %418
  %420 = call i8* @memcpy(i8* %385, i8* nonnull %10, i64 %413) #5, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br label %421, !dbg !673

; <label>:421:                                    ; preds = %419, %409
  %422 = phi i64 [ %410, %409 ], [ %413, %419 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %423 = getelementptr inbounds i8, i8* %385, i64 %422, !dbg !676
  br label %424, !dbg !678

; <label>:424:                                    ; preds = %418, %421
  %425 = phi i64 [ %422, %421 ], [ %413, %418 ]
  %426 = phi i8* [ %423, %421 ], [ %385, %418 ], !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %427 = sub i64 %387, %425, !dbg !680
  %428 = add nuw nsw i32 %386, 1, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  %429 = icmp eq i64 %427, 0, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %429, label %430, label %384, !dbg !631, !llvm.loop !683

; <label>:430:                                    ; preds = %424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %434, !dbg !685

; <label>:431:                                    ; preds = %417, %395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br label %432, !dbg !687

; <label>:432:                                    ; preds = %396, %431
  %433 = icmp eq i32 %386, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %433, label %1026, label %434, !dbg !685

; <label>:434:                                    ; preds = %430, %432
  %435 = phi i8* [ %426, %430 ], [ %385, %432 ]
  %436 = phi i32 [ %428, %430 ], [ %386, %432 ]
  %437 = add nsw i32 %436, %300, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %309, label %1018, label %438, !dbg !690

; <label>:438:                                    ; preds = %434
  %439 = add nsw i32 %32, 1, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %1018, !dbg !693

; <label>:440:                                    ; preds = %299
  %441 = icmp eq i64 %78, 0, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %441, label %442, label %443, !dbg !696

; <label>:442:                                    ; preds = %440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %443, !dbg !697

; <label>:443:                                    ; preds = %442, %440
  %444 = phi i64 [ -1, %442 ], [ %78, %440 ], !dbg !393
  %445 = and i32 %264, 16, !dbg !698
  %446 = icmp ne i32 %445, 0, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  %447 = and i32 %264, 1, !dbg !701
  %448 = icmp eq i32 %447, 0, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %446, label %449, label %488, !dbg !700

; <label>:449:                                    ; preds = %443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %448, label %565, label %450, !dbg !706

; <label>:450:                                    ; preds = %449
  %451 = icmp eq i32 %269, 0
  %452 = ptrtoint i32* %268 to i64
  %453 = ptrtoint i32* %267 to i64
  %454 = sub i64 %452, %453
  %455 = ashr exact i64 %454, 2
  br label %456, !dbg !707

; <label>:456:                                    ; preds = %483, %450
  %457 = phi i64 [ %444, %450 ], [ %476, %483 ], !dbg !704
  %458 = phi i32 [ 0, %450 ], [ %484, %483 ], !dbg !704
  %459 = load i32, i32* %14, align 8, !dbg !710, !tbaa !356
  %460 = icmp slt i32 %459, 1, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br i1 %460, label %461, label %467, !dbg !712

; <label>:461:                                    ; preds = %456
  %462 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !713
  %463 = icmp eq i32 %462, 0, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %463, label %464, label %466, !dbg !714

; <label>:464:                                    ; preds = %461
  %465 = load i32, i32* %14, align 8, !dbg !715, !tbaa !356
  br label %467, !dbg !714

; <label>:466:                                    ; preds = %461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br label %486, !dbg !718

; <label>:467:                                    ; preds = %456, %464
  %468 = phi i32 [ %465, %464 ], [ %459, %456 ], !dbg !715
  %469 = load i8*, i8** %15, align 8, !dbg !719, !tbaa !372
  %470 = bitcast i8* %469 to i32*, !dbg !720
  %471 = load i32, i32* %470, align 4, !dbg !720, !tbaa !332
  %472 = getelementptr inbounds i8, i8* %469, i64 4, !dbg !722
  store i8* %472, i8** %15, align 8, !dbg !722, !tbaa !372
  %473 = add i32 %468, -4, !dbg !715
  store i32 %473, i32* %14, align 8, !dbg !715, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  %474 = icmp eq i32 %471, -1, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %474, label %486, label %475, !dbg !718

; <label>:475:                                    ; preds = %467
  %476 = add i64 %457, -1, !dbg !725
  %477 = icmp eq i64 %457, 0, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %477, label %485, label %478, !dbg !727

; <label>:478:                                    ; preds = %475
  %479 = call i32* @wmemchr(i32* %267, i32 %471, i64 %455) #5, !dbg !728
  %480 = icmp eq i32* %479, null, !dbg !728
  %481 = icmp ne i32* %479, null, !dbg !728
  %482 = select i1 %451, i1 %481, i1 %480, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %482, label %483, label %485, !dbg !707

; <label>:483:                                    ; preds = %478
  %484 = add nuw nsw i32 %458, 1, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %456, !dbg !707, !llvm.loop !730

; <label>:485:                                    ; preds = %478, %475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %471, %struct.__sFILE* nonnull %1) #6, !dbg !732
  br label %486, !dbg !732

; <label>:486:                                    ; preds = %467, %466, %485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  %487 = icmp eq i32 %458, 0, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %487, label %1035, label %629, !dbg !737

; <label>:488:                                    ; preds = %443
  br i1 %448, label %550, label %489, !dbg !738

; <label>:489:                                    ; preds = %488
  %490 = load i32, i32* %16, align 8, !dbg !739
  %491 = icmp ult i32 %490, 41, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %491, label %492, label %497, !dbg !739

; <label>:492:                                    ; preds = %489
  %493 = load i8*, i8** %17, align 8, !dbg !739
  %494 = sext i32 %490 to i64, !dbg !739
  %495 = getelementptr i8, i8* %493, i64 %494, !dbg !739
  %496 = add i32 %490, 8, !dbg !739
  store i32 %496, i32* %16, align 8, !dbg !739
  br label %500, !dbg !739

; <label>:497:                                    ; preds = %489
  %498 = load i8*, i8** %18, align 8, !dbg !739
  %499 = getelementptr i8, i8* %498, i64 8, !dbg !739
  store i8* %499, i8** %18, align 8, !dbg !739
  br label %500, !dbg !739

; <label>:500:                                    ; preds = %497, %492
  %501 = phi i8* [ %495, %492 ], [ %498, %497 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %502 = bitcast i8* %501 to i32**, !dbg !739
  %503 = load i32*, i32** %502, align 8, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %504 = icmp eq i32 %269, 0
  %505 = ptrtoint i32* %268 to i64
  %506 = ptrtoint i32* %267 to i64
  %507 = sub i64 %505, %506
  %508 = ashr exact i64 %507, 2
  br label %509, !dbg !742

; <label>:509:                                    ; preds = %536, %500
  %510 = phi i64 [ %444, %500 ], [ %529, %536 ], !dbg !743
  %511 = phi i32* [ %503, %500 ], [ %537, %536 ], !dbg !743
  %512 = load i32, i32* %14, align 8, !dbg !746, !tbaa !356
  %513 = icmp slt i32 %512, 1, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %513, label %514, label %520, !dbg !748

; <label>:514:                                    ; preds = %509
  %515 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !749
  %516 = icmp eq i32 %515, 0, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %516, label %517, label %519, !dbg !750

; <label>:517:                                    ; preds = %514
  %518 = load i32, i32* %14, align 8, !dbg !751, !tbaa !356
  br label %520, !dbg !750

; <label>:519:                                    ; preds = %514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br label %538, !dbg !754

; <label>:520:                                    ; preds = %509, %517
  %521 = phi i32 [ %518, %517 ], [ %512, %509 ], !dbg !751
  %522 = load i8*, i8** %15, align 8, !dbg !755, !tbaa !372
  %523 = bitcast i8* %522 to i32*, !dbg !756
  %524 = load i32, i32* %523, align 4, !dbg !756, !tbaa !332
  %525 = getelementptr inbounds i8, i8* %522, i64 4, !dbg !758
  store i8* %525, i8** %15, align 8, !dbg !758, !tbaa !372
  %526 = add i32 %521, -4, !dbg !751
  store i32 %526, i32* %14, align 8, !dbg !751, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %527 = icmp eq i32 %524, -1, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %527, label %538, label %528, !dbg !754

; <label>:528:                                    ; preds = %520
  %529 = add i64 %510, -1, !dbg !761
  %530 = icmp eq i64 %510, 0, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %530, label %539, label %531, !dbg !763

; <label>:531:                                    ; preds = %528
  %532 = call i32* @wmemchr(i32* %267, i32 %524, i64 %508) #5, !dbg !764
  %533 = icmp eq i32* %532, null, !dbg !764
  %534 = icmp ne i32* %532, null, !dbg !764
  %535 = select i1 %504, i1 %534, i1 %533, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %535, label %536, label %540, !dbg !742

; <label>:536:                                    ; preds = %531
  %537 = getelementptr inbounds i32, i32* %511, i64 1, !dbg !765
  store i32 %524, i32* %511, align 4, !dbg !766, !tbaa !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br label %509, !dbg !742, !llvm.loop !767

; <label>:538:                                    ; preds = %520, %519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br label %541, !dbg !769

; <label>:539:                                    ; preds = %528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br label %540

; <label>:540:                                    ; preds = %531, %539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %524, %struct.__sFILE* %1) #6, !dbg !770
  br label %541, !dbg !770

; <label>:541:                                    ; preds = %538, %540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %542 = ptrtoint i32* %511 to i64, !dbg !773
  %543 = ptrtoint i32* %503 to i64, !dbg !773
  %544 = sub i64 %542, %543, !dbg !773
  %545 = lshr exact i64 %544, 2, !dbg !773
  %546 = trunc i64 %545 to i32, !dbg !774
  %547 = icmp eq i32 %546, 0, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %547, label %1035, label %548, !dbg !777

; <label>:548:                                    ; preds = %541
  store i32 0, i32* %511, align 4, !dbg !778, !tbaa !332
  %549 = add nsw i32 %32, 1, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br label %629, !dbg !780

; <label>:550:                                    ; preds = %488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  %551 = load i32, i32* %16, align 8, !dbg !783
  %552 = icmp ult i32 %551, 41, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %552, label %553, label %558, !dbg !783

; <label>:553:                                    ; preds = %550
  %554 = load i8*, i8** %17, align 8, !dbg !783
  %555 = sext i32 %551 to i64, !dbg !783
  %556 = getelementptr i8, i8* %554, i64 %555, !dbg !783
  %557 = add i32 %551, 8, !dbg !783
  store i32 %557, i32* %16, align 8, !dbg !783
  br label %561, !dbg !783

; <label>:558:                                    ; preds = %550
  %559 = load i8*, i8** %18, align 8, !dbg !783
  %560 = getelementptr i8, i8* %559, i64 8, !dbg !783
  store i8* %560, i8** %18, align 8, !dbg !783
  br label %561, !dbg !783

; <label>:561:                                    ; preds = %558, %553
  %562 = phi i8* [ %556, %553 ], [ %559, %558 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %563 = bitcast i8* %562 to i8**, !dbg !783
  %564 = load i8*, i8** %563, align 8, !dbg !783
  br label %565, !dbg !785

; <label>:565:                                    ; preds = %449, %561
  %566 = phi i8* [ %564, %561 ], [ %25, %449 ], !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  %567 = call i8* @memset(i8* nonnull %8, i32 0, i64 8) #5, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %568 = icmp eq i32 %269, 0
  %569 = ptrtoint i32* %268 to i64
  %570 = ptrtoint i32* %267 to i64
  %571 = sub i64 %569, %570
  %572 = ashr exact i64 %571, 2
  br label %573, !dbg !788

; <label>:573:                                    ; preds = %620, %565
  %574 = phi i64 [ %444, %565 ], [ %623, %620 ], !dbg !789
  %575 = phi i32 [ 0, %565 ], [ %624, %620 ], !dbg !789
  %576 = phi i8* [ %566, %565 ], [ %622, %620 ], !dbg !323
  %577 = load i32, i32* %14, align 8, !dbg !793, !tbaa !356
  %578 = icmp slt i32 %577, 1, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %578, label %579, label %585, !dbg !795

; <label>:579:                                    ; preds = %573
  %580 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !796
  %581 = icmp eq i32 %580, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br i1 %581, label %582, label %584, !dbg !797

; <label>:582:                                    ; preds = %579
  %583 = load i32, i32* %14, align 8, !dbg !798, !tbaa !356
  br label %585, !dbg !797

; <label>:584:                                    ; preds = %579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br label %626, !dbg !801

; <label>:585:                                    ; preds = %573, %582
  %586 = phi i32 [ %583, %582 ], [ %577, %573 ], !dbg !798
  %587 = load i8*, i8** %15, align 8, !dbg !802, !tbaa !372
  %588 = bitcast i8* %587 to i32*, !dbg !803
  %589 = load i32, i32* %588, align 4, !dbg !803, !tbaa !332
  %590 = getelementptr inbounds i8, i8* %587, i64 4, !dbg !805
  store i8* %590, i8** %15, align 8, !dbg !805, !tbaa !372
  %591 = add i32 %586, -4, !dbg !798
  store i32 %591, i32* %14, align 8, !dbg !798, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  %592 = icmp eq i32 %589, -1, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br i1 %592, label %626, label %593, !dbg !801

; <label>:593:                                    ; preds = %585
  %594 = add i64 %574, -1, !dbg !808
  %595 = icmp eq i64 %574, 0, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %595, label %625, label %596, !dbg !810

; <label>:596:                                    ; preds = %593
  %597 = call i32* @wmemchr(i32* %267, i32 %589, i64 %572) #5, !dbg !811
  %598 = icmp eq i32* %597, null, !dbg !811
  %599 = icmp ne i32* %597, null, !dbg !811
  %600 = select i1 %568, i1 %599, i1 %598, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br i1 %600, label %601, label %625, !dbg !788

; <label>:601:                                    ; preds = %596
  %602 = call i32 @__locale_mb_cur_max() #5, !dbg !812
  %603 = sext i32 %602 to i64, !dbg !812
  %604 = icmp ult i64 %594, %603, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br i1 %604, label %609, label %605, !dbg !815

; <label>:605:                                    ; preds = %601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %446, label %609, label %606, !dbg !816

; <label>:606:                                    ; preds = %605
  %607 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %576, i32 %589, %struct._mbstate_t* nonnull %5) #5, !dbg !817
  %608 = icmp eq i64 %607, -1, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br i1 %608, label %1026, label %617, !dbg !821

; <label>:609:                                    ; preds = %601, %605
  %610 = call i64 @wcrtomb(i8* nonnull %10, i32 %589, %struct._mbstate_t* nonnull %5) #5, !dbg !822
  %611 = icmp eq i64 %610, -1, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %611, label %1026, label %612, !dbg !826

; <label>:612:                                    ; preds = %609
  %613 = icmp ugt i64 %610, %594, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %613, label %625, label %614, !dbg !829

; <label>:614:                                    ; preds = %612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %446, label %620, label %615, !dbg !830

; <label>:615:                                    ; preds = %614
  %616 = call i8* @memcpy(i8* %576, i8* nonnull %10, i64 %610) #5, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br label %617, !dbg !831

; <label>:617:                                    ; preds = %615, %606
  %618 = phi i64 [ %607, %606 ], [ %610, %615 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %619 = getelementptr inbounds i8, i8* %576, i64 %618, !dbg !834
  br label %620, !dbg !836

; <label>:620:                                    ; preds = %614, %617
  %621 = phi i64 [ %618, %617 ], [ %610, %614 ]
  %622 = phi i8* [ %619, %617 ], [ %576, %614 ], !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  %623 = sub i64 %594, %621, !dbg !838
  %624 = add nuw nsw i32 %575, 1, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br label %573, !dbg !788, !llvm.loop !840

; <label>:625:                                    ; preds = %596, %612, %593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %589, %struct.__sFILE* %1) #6, !dbg !843
  br label %626, !dbg !843

; <label>:626:                                    ; preds = %585, %584, %625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %446, label %629, label %627, !dbg !846

; <label>:627:                                    ; preds = %626
  store i8 0, i8* %576, align 1, !dbg !847, !tbaa !511
  %628 = add nsw i32 %32, 1, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br label %629, !dbg !851

; <label>:629:                                    ; preds = %548, %627, %626, %486
  %630 = phi i32* [ %33, %486 ], [ %511, %548 ], [ %33, %626 ], [ %33, %627 ], !dbg !537
  %631 = phi i32 [ %458, %486 ], [ %546, %548 ], [ %575, %626 ], [ %575, %627 ], !dbg !852
  %632 = phi i32 [ %32, %486 ], [ %549, %548 ], [ %32, %626 ], [ %628, %627 ], !dbg !853
  %633 = phi i8* [ %25, %486 ], [ %25, %548 ], [ %576, %626 ], [ %576, %627 ], !dbg !323
  %634 = add nsw i32 %631, %300, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br label %1018, !dbg !855

; <label>:635:                                    ; preds = %299
  %636 = icmp eq i64 %78, 0, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %636, label %637, label %638, !dbg !858

; <label>:637:                                    ; preds = %635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br label %638, !dbg !859

; <label>:638:                                    ; preds = %637, %635
  %639 = phi i64 [ -1, %637 ], [ %78, %635 ], !dbg !393
  %640 = and i32 %264, 16, !dbg !860
  %641 = icmp ne i32 %640, 0, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  %642 = and i32 %264, 1, !dbg !863
  %643 = icmp eq i32 %642, 0, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %641, label %644, label %674, !dbg !862

; <label>:644:                                    ; preds = %638
  br i1 %643, label %645, label %646, !dbg !866

; <label>:645:                                    ; preds = %644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br label %739, !dbg !868

; <label>:646:                                    ; preds = %644, %671
  %647 = phi i64 [ %666, %671 ], [ %639, %644 ], !dbg !870
  %648 = phi i32 [ %672, %671 ], [ %300, %644 ], !dbg !870
  %649 = load i32, i32* %14, align 8, !dbg !874, !tbaa !356
  %650 = icmp slt i32 %649, 1, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %650, label %651, label %657, !dbg !876

; <label>:651:                                    ; preds = %646
  %652 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !877
  %653 = icmp eq i32 %652, 0, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %653, label %654, label %656, !dbg !878

; <label>:654:                                    ; preds = %651
  %655 = load i32, i32* %14, align 8, !dbg !879, !tbaa !356
  br label %657, !dbg !878

; <label>:656:                                    ; preds = %651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br label %798, !dbg !882

; <label>:657:                                    ; preds = %646, %654
  %658 = phi i32 [ %655, %654 ], [ %649, %646 ], !dbg !879
  %659 = load i8*, i8** %15, align 8, !dbg !883, !tbaa !372
  %660 = bitcast i8* %659 to i32*, !dbg !884
  %661 = load i32, i32* %660, align 4, !dbg !884, !tbaa !332
  %662 = getelementptr inbounds i8, i8* %659, i64 4, !dbg !886
  store i8* %662, i8** %15, align 8, !dbg !886, !tbaa !372
  %663 = add i32 %658, -4, !dbg !879
  store i32 %663, i32* %14, align 8, !dbg !879, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %664 = icmp eq i32 %661, -1, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %664, label %798, label %665, !dbg !882

; <label>:665:                                    ; preds = %657
  %666 = add i64 %647, -1, !dbg !889
  %667 = icmp eq i64 %647, 0, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %667, label %673, label %668, !dbg !891

; <label>:668:                                    ; preds = %665
  %669 = call i32 @iswspace(i32 %661) #5, !dbg !892
  %670 = icmp eq i32 %669, 0, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %670, label %671, label %673, !dbg !894

; <label>:671:                                    ; preds = %668
  %672 = add nsw i32 %648, 1, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br label %646, !dbg !894, !llvm.loop !896

; <label>:673:                                    ; preds = %668, %665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %661, %struct.__sFILE* nonnull %1) #6, !dbg !898
  br label %798, !dbg !898

; <label>:674:                                    ; preds = %638
  br i1 %643, label %724, label %675, !dbg !867

; <label>:675:                                    ; preds = %674
  %676 = load i32, i32* %16, align 8, !dbg !900
  %677 = icmp ult i32 %676, 41, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %677, label %678, label %683, !dbg !900

; <label>:678:                                    ; preds = %675
  %679 = load i8*, i8** %17, align 8, !dbg !900
  %680 = sext i32 %676 to i64, !dbg !900
  %681 = getelementptr i8, i8* %679, i64 %680, !dbg !900
  %682 = add i32 %676, 8, !dbg !900
  store i32 %682, i32* %16, align 8, !dbg !900
  br label %686, !dbg !900

; <label>:683:                                    ; preds = %675
  %684 = load i8*, i8** %18, align 8, !dbg !900
  %685 = getelementptr i8, i8* %684, i64 8, !dbg !900
  store i8* %685, i8** %18, align 8, !dbg !900
  br label %686, !dbg !900

; <label>:686:                                    ; preds = %683, %678
  %687 = phi i8* [ %681, %678 ], [ %684, %683 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  %688 = bitcast i8* %687 to i32**, !dbg !900
  %689 = load i32*, i32** %688, align 8, !dbg !900
  br label %690, !dbg !902

; <label>:690:                                    ; preds = %716, %686
  %691 = phi i64 [ %639, %686 ], [ %711, %716 ], !dbg !903
  %692 = phi i32* [ %689, %686 ], [ %717, %716 ], !dbg !904
  %693 = phi i32 [ %300, %686 ], [ %718, %716 ], !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  %694 = load i32, i32* %14, align 8, !dbg !908, !tbaa !356
  %695 = icmp slt i32 %694, 1, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %695, label %696, label %702, !dbg !910

; <label>:696:                                    ; preds = %690
  %697 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !911
  %698 = icmp eq i32 %697, 0, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br i1 %698, label %699, label %701, !dbg !912

; <label>:699:                                    ; preds = %696
  %700 = load i32, i32* %14, align 8, !dbg !913, !tbaa !356
  br label %702, !dbg !912

; <label>:701:                                    ; preds = %696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br label %719, !dbg !916

; <label>:702:                                    ; preds = %690, %699
  %703 = phi i32 [ %700, %699 ], [ %694, %690 ], !dbg !913
  %704 = load i8*, i8** %15, align 8, !dbg !917, !tbaa !372
  %705 = bitcast i8* %704 to i32*, !dbg !918
  %706 = load i32, i32* %705, align 4, !dbg !918, !tbaa !332
  %707 = getelementptr inbounds i8, i8* %704, i64 4, !dbg !920
  store i8* %707, i8** %15, align 8, !dbg !920, !tbaa !372
  %708 = add i32 %703, -4, !dbg !913
  store i32 %708, i32* %14, align 8, !dbg !913, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  %709 = icmp eq i32 %706, -1, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br i1 %709, label %719, label %710, !dbg !916

; <label>:710:                                    ; preds = %702
  %711 = add i64 %691, -1, !dbg !923
  %712 = icmp eq i64 %691, 0, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br i1 %712, label %720, label %713, !dbg !925

; <label>:713:                                    ; preds = %710
  %714 = call i32 @iswspace(i32 %706) #5, !dbg !926
  %715 = icmp eq i32 %714, 0, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %715, label %716, label %721, !dbg !902

; <label>:716:                                    ; preds = %713
  %717 = getelementptr inbounds i32, i32* %692, i64 1, !dbg !928
  store i32 %706, i32* %692, align 4, !dbg !929, !tbaa !332
  %718 = add nsw i32 %693, 1, !dbg !930
  br label %690, !dbg !902, !llvm.loop !931

; <label>:719:                                    ; preds = %702, %701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br label %722, !dbg !933

; <label>:720:                                    ; preds = %710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br label %721

; <label>:721:                                    ; preds = %713, %720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %706, %struct.__sFILE* %1) #6, !dbg !934
  br label %722, !dbg !934

; <label>:722:                                    ; preds = %719, %721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store i32 0, i32* %692, align 4, !dbg !937, !tbaa !332
  %723 = add nsw i32 %32, 1, !dbg !938
  br label %798, !dbg !939

; <label>:724:                                    ; preds = %674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %725 = load i32, i32* %16, align 8, !dbg !940
  %726 = icmp ult i32 %725, 41, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br i1 %726, label %727, label %732, !dbg !940

; <label>:727:                                    ; preds = %724
  %728 = load i8*, i8** %17, align 8, !dbg !940
  %729 = sext i32 %725 to i64, !dbg !940
  %730 = getelementptr i8, i8* %728, i64 %729, !dbg !940
  %731 = add i32 %725, 8, !dbg !940
  store i32 %731, i32* %16, align 8, !dbg !940
  br label %735, !dbg !940

; <label>:732:                                    ; preds = %724
  %733 = load i8*, i8** %18, align 8, !dbg !940
  %734 = getelementptr i8, i8* %733, i64 8, !dbg !940
  store i8* %734, i8** %18, align 8, !dbg !940
  br label %735, !dbg !940

; <label>:735:                                    ; preds = %732, %727
  %736 = phi i8* [ %730, %727 ], [ %733, %732 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  %737 = bitcast i8* %736 to i8**, !dbg !940
  %738 = load i8*, i8** %737, align 8, !dbg !940
  br label %739, !dbg !942

; <label>:739:                                    ; preds = %645, %735
  %740 = phi i8* [ %738, %735 ], [ %25, %645 ], !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  %741 = call i8* @memset(i8* nonnull %8, i32 0, i64 8) #5, !dbg !944
  br label %742, !dbg !945

; <label>:742:                                    ; preds = %786, %739
  %743 = phi i64 [ %639, %739 ], [ %789, %786 ], !dbg !946
  %744 = phi i32 [ %300, %739 ], [ %790, %786 ], !dbg !946
  %745 = phi i8* [ %740, %739 ], [ %788, %786 ], !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  %746 = load i32, i32* %14, align 8, !dbg !950, !tbaa !356
  %747 = icmp slt i32 %746, 1, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %747, label %748, label %754, !dbg !952

; <label>:748:                                    ; preds = %742
  %749 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !953
  %750 = icmp eq i32 %749, 0, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br i1 %750, label %751, label %753, !dbg !954

; <label>:751:                                    ; preds = %748
  %752 = load i32, i32* %14, align 8, !dbg !955, !tbaa !356
  br label %754, !dbg !954

; <label>:753:                                    ; preds = %748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %794, !dbg !959

; <label>:754:                                    ; preds = %742, %751
  %755 = phi i32 [ %752, %751 ], [ %746, %742 ], !dbg !955
  %756 = load i8*, i8** %15, align 8, !dbg !960, !tbaa !372
  %757 = bitcast i8* %756 to i32*, !dbg !961
  %758 = load i32, i32* %757, align 4, !dbg !961, !tbaa !332
  %759 = getelementptr inbounds i8, i8* %756, i64 4, !dbg !963
  store i8* %759, i8** %15, align 8, !dbg !963, !tbaa !372
  %760 = add i32 %755, -4, !dbg !955
  store i32 %760, i32* %14, align 8, !dbg !955, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  %761 = icmp ne i32 %758, -1, !dbg !965
  %762 = icmp ne i64 %743, 0, !dbg !966
  %763 = and i1 %762, %761, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %763, label %764, label %792, !dbg !958

; <label>:764:                                    ; preds = %754
  %765 = call i32 @iswspace(i32 %758) #5, !dbg !967
  %766 = icmp eq i32 %765, 0, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br i1 %766, label %767, label %791, !dbg !945

; <label>:767:                                    ; preds = %764
  %768 = call i32 @__locale_mb_cur_max() #5, !dbg !969
  %769 = sext i32 %768 to i64, !dbg !969
  %770 = icmp ult i64 %743, %769, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br i1 %770, label %775, label %771, !dbg !972

; <label>:771:                                    ; preds = %767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %641, label %775, label %772, !dbg !973

; <label>:772:                                    ; preds = %771
  %773 = call i64 @wcrtomb(i8* %745, i32 %758, %struct._mbstate_t* nonnull %5) #5, !dbg !974
  %774 = icmp eq i64 %773, -1, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %774, label %1026, label %783, !dbg !978

; <label>:775:                                    ; preds = %767, %771
  %776 = call i64 @wcrtomb(i8* nonnull %10, i32 %758, %struct._mbstate_t* nonnull %5) #5, !dbg !979
  %777 = icmp eq i64 %776, -1, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br i1 %777, label %1026, label %778, !dbg !983

; <label>:778:                                    ; preds = %775
  %779 = icmp ugt i64 %776, %743, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %779, label %791, label %780, !dbg !986

; <label>:780:                                    ; preds = %778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %641, label %786, label %781, !dbg !987

; <label>:781:                                    ; preds = %780
  %782 = call i8* @memcpy(i8* %745, i8* nonnull %10, i64 %776) #5, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %783, !dbg !988

; <label>:783:                                    ; preds = %781, %772
  %784 = phi i64 [ %773, %772 ], [ %776, %781 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  %785 = getelementptr inbounds i8, i8* %745, i64 %784, !dbg !991
  br label %786, !dbg !993

; <label>:786:                                    ; preds = %780, %783
  %787 = phi i64 [ %784, %783 ], [ %776, %780 ]
  %788 = phi i8* [ %785, %783 ], [ %745, %780 ], !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  %789 = sub i64 %743, %787, !dbg !995
  %790 = add nsw i32 %744, 1, !dbg !996
  br label %742, !dbg !945, !llvm.loop !997

; <label>:791:                                    ; preds = %778, %764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %793, !dbg !959

; <label>:792:                                    ; preds = %754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %761, label %793, label %795, !dbg !959

; <label>:793:                                    ; preds = %791, %792
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %758, %struct.__sFILE* nonnull %1) #6, !dbg !999
  br label %794, !dbg !999

; <label>:794:                                    ; preds = %793, %753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br label %795, !dbg !1002

; <label>:795:                                    ; preds = %794, %792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %641, label %1018, label %796, !dbg !1002

; <label>:796:                                    ; preds = %795
  store i8 0, i8* %745, align 1, !dbg !1003, !tbaa !511
  %797 = add nsw i32 %32, 1, !dbg !1006
  br label %798, !dbg !1007

; <label>:798:                                    ; preds = %657, %656, %673, %796, %722
  %799 = phi i32* [ %33, %796 ], [ %692, %722 ], [ %33, %673 ], [ %33, %656 ], [ %33, %657 ]
  %800 = phi i32 [ %797, %796 ], [ %723, %722 ], [ %32, %673 ], [ %32, %656 ], [ %32, %657 ]
  %801 = phi i32 [ %744, %796 ], [ %693, %722 ], [ %648, %673 ], [ %648, %656 ], [ %648, %657 ]
  %802 = phi i8* [ %745, %796 ], [ %25, %722 ], [ %25, %673 ], [ %25, %656 ], [ %25, %657 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  br label %1018, !dbg !1009

; <label>:803:                                    ; preds = %299
  %804 = add i64 %78, -1, !dbg !1010
  %805 = icmp ugt i64 %804, 38, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %805, label %806, label %807, !dbg !1010

; <label>:806:                                    ; preds = %803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br label %807, !dbg !1012

; <label>:807:                                    ; preds = %806, %803
  %808 = phi i64 [ 39, %806 ], [ %78, %803 ], !dbg !393
  %809 = or i32 %264, 1408, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  %810 = load i32, i32* %14, align 8, !dbg !1017, !tbaa !356
  br label %811, !dbg !1017

; <label>:811:                                    ; preds = %807, %889
  %812 = phi i32 [ %831, %889 ], [ %810, %807 ], !dbg !1017
  %813 = phi i32* [ %894, %889 ], [ %19, %807 ]
  %814 = phi i32 [ %891, %889 ], [ %265, %807 ]
  %815 = phi i32 [ %890, %889 ], [ %809, %807 ]
  %816 = phi i64 [ %892, %889 ], [ 0, %807 ]
  %817 = phi i64 [ %893, %889 ], [ %808, %807 ]
  %818 = icmp slt i32 %812, 1, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  br i1 %818, label %819, label %825, !dbg !1023

; <label>:819:                                    ; preds = %811
  %820 = call i32 @__ssrefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !1024
  %821 = icmp eq i32 %820, 0, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %821, label %822, label %824, !dbg !1025

; <label>:822:                                    ; preds = %819
  %823 = load i32, i32* %14, align 8, !dbg !1026, !tbaa !356
  br label %825, !dbg !1025

; <label>:824:                                    ; preds = %819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br label %896, !dbg !1030

; <label>:825:                                    ; preds = %811, %822
  %826 = phi i32 [ %823, %822 ], [ %812, %811 ], !dbg !1026
  %827 = load i8*, i8** %15, align 8, !dbg !1031, !tbaa !372
  %828 = bitcast i8* %827 to i32*, !dbg !1032
  %829 = load i32, i32* %828, align 4, !dbg !1032, !tbaa !332
  %830 = getelementptr inbounds i8, i8* %827, i64 4, !dbg !1034
  store i8* %830, i8** %15, align 8, !dbg !1034, !tbaa !372
  %831 = add i32 %826, -4, !dbg !1026
  store i32 %831, i32* %14, align 8, !dbg !1026, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  switch i32 %829, label %885 [
    i32 48, label %832
    i32 49, label %845
    i32 50, label %845
    i32 51, label %845
    i32 52, label %845
    i32 53, label %845
    i32 54, label %845
    i32 55, label %845
    i32 56, label %851
    i32 57, label %851
    i32 65, label %860
    i32 66, label %860
    i32 67, label %860
    i32 68, label %860
    i32 69, label %860
    i32 70, label %860
    i32 97, label %860
    i32 98, label %860
    i32 99, label %860
    i32 100, label %860
    i32 101, label %860
    i32 102, label %860
    i32 43, label %864
    i32 45, label %864
    i32 120, label %870
    i32 88, label %870
  ], !dbg !1029

; <label>:832:                                    ; preds = %825
  %833 = icmp eq i32 %814, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br i1 %833, label %834, label %836, !dbg !1039

; <label>:834:                                    ; preds = %832
  %835 = or i32 %815, 512, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  br label %836, !dbg !1042

; <label>:836:                                    ; preds = %834, %832
  %837 = phi i32 [ %835, %834 ], [ %815, %832 ], !dbg !1043
  %838 = phi i32 [ 8, %834 ], [ %814, %832 ], !dbg !385
  %839 = and i32 %837, 1024, !dbg !1044
  %840 = icmp eq i32 %839, 0, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br i1 %840, label %843, label %841, !dbg !1046

; <label>:841:                                    ; preds = %836
  %842 = and i32 %837, -1409, !dbg !1047
  br label %889, !dbg !1048

; <label>:843:                                    ; preds = %836
  %844 = and i32 %837, -897, !dbg !1049
  br label %889

; <label>:845:                                    ; preds = %825, %825, %825, %825, %825, %825, %825
  %846 = sext i32 %814 to i64, !dbg !1050
  %847 = getelementptr inbounds [17 x i16], [17 x i16]* @__ssvfiwscanf_r.basefix, i64 0, i64 %846, !dbg !1050
  %848 = load i16, i16* %847, align 2, !dbg !1050, !tbaa !520
  %849 = sext i16 %848 to i32, !dbg !1050
  %850 = and i32 %815, -897, !dbg !1051
  br label %889, !dbg !1052

; <label>:851:                                    ; preds = %825, %825
  %852 = sext i32 %814 to i64, !dbg !1053
  %853 = getelementptr inbounds [17 x i16], [17 x i16]* @__ssvfiwscanf_r.basefix, i64 0, i64 %852, !dbg !1053
  %854 = load i16, i16* %853, align 2, !dbg !1053, !tbaa !520
  %855 = add nsw i64 %852, -1, !dbg !1054
  %856 = icmp ult i64 %855, 8, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  %857 = sext i16 %854 to i32, !dbg !1053
  br i1 %856, label %881, label %858, !dbg !1056

; <label>:858:                                    ; preds = %851
  %859 = and i32 %815, -897, !dbg !1057
  br label %889, !dbg !1058

; <label>:860:                                    ; preds = %825, %825, %825, %825, %825, %825, %825, %825, %825, %825, %825, %825
  %861 = icmp slt i32 %814, 11, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %861, label %883, label %862, !dbg !1061

; <label>:862:                                    ; preds = %860
  %863 = and i32 %815, -897, !dbg !1062
  br label %889, !dbg !1063

; <label>:864:                                    ; preds = %825, %825
  %865 = trunc i32 %815 to i8, !dbg !1064
  %866 = icmp slt i8 %865, 0, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %866, label %867, label %883, !dbg !1066

; <label>:867:                                    ; preds = %864
  %868 = and i32 %815, -65665, !dbg !1067
  %869 = or i32 %868, 65536, !dbg !1069
  br label %889, !dbg !1070

; <label>:870:                                    ; preds = %825, %825
  %871 = and i32 %815, 512, !dbg !1071
  %872 = icmp eq i32 %871, 0, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %872, label %883, label %873, !dbg !1073

; <label>:873:                                    ; preds = %870
  %874 = lshr i32 %815, 16, !dbg !1074
  %875 = and i32 %874, 1, !dbg !1074
  %876 = zext i32 %875 to i64, !dbg !1075
  %877 = getelementptr inbounds i32, i32* %20, i64 %876, !dbg !1075
  %878 = icmp eq i32* %813, %877, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %878, label %879, label %883, !dbg !1077

; <label>:879:                                    ; preds = %873
  %880 = and i32 %815, -513, !dbg !1078
  br label %889, !dbg !1080

; <label>:881:                                    ; preds = %851
  %882 = sext i16 %854 to i32, !dbg !1053
  br label %883, !dbg !1030

; <label>:883:                                    ; preds = %873, %870, %864, %860, %881
  %884 = phi i32 [ %882, %881 ], [ %814, %860 ], [ %814, %864 ], [ %814, %870 ], [ %814, %873 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br label %887, !dbg !1030

; <label>:885:                                    ; preds = %825
  %886 = icmp eq i32 %829, -1, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %886, label %896, label %887, !dbg !1030

; <label>:887:                                    ; preds = %883, %885
  %888 = phi i32 [ %884, %883 ], [ %814, %885 ]
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %829, %struct.__sFILE* nonnull %1) #6, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br label %896, !dbg !1083

; <label>:889:                                    ; preds = %841, %843, %879, %867, %862, %858, %845
  %890 = phi i32 [ %880, %879 ], [ %869, %867 ], [ %863, %862 ], [ %859, %858 ], [ %850, %845 ], [ %842, %841 ], [ %844, %843 ], !dbg !1084
  %891 = phi i32 [ 16, %879 ], [ %814, %867 ], [ %814, %862 ], [ %857, %858 ], [ %849, %845 ], [ %838, %841 ], [ %838, %843 ], !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %892 = add nuw nsw i64 %816, 1, !dbg !1086
  store i32 %829, i32* %813, align 4, !dbg !1087, !tbaa !332
  %893 = add nsw i64 %817, -1, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  %894 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 %892, !dbg !317
  %895 = icmp eq i64 %893, 0, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %895, label %896, label %811, !dbg !1016, !llvm.loop !1090

; <label>:896:                                    ; preds = %889, %824, %885, %887
  %897 = phi i64 [ %816, %887 ], [ %816, %885 ], [ %816, %824 ], [ 1, %889 ]
  %898 = phi i32 [ %815, %887 ], [ %815, %885 ], [ %815, %824 ], [ %890, %889 ]
  %899 = phi i32* [ %813, %887 ], [ %813, %885 ], [ %813, %824 ], [ %894, %889 ]
  %900 = phi i32 [ %888, %887 ], [ %814, %885 ], [ %814, %824 ], [ %891, %889 ], !dbg !1092
  %901 = and i32 %898, 256, !dbg !1093
  %902 = icmp eq i32 %901, 0, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %902, label %908, label %903, !dbg !1095

; <label>:903:                                    ; preds = %896
  %904 = icmp eq i64 %897, 0, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br i1 %904, label %1035, label %905, !dbg !1099

; <label>:905:                                    ; preds = %903
  %906 = getelementptr inbounds i32, i32* %899, i64 -1, !dbg !1100
  %907 = load i32, i32* %906, align 4, !dbg !1101, !tbaa !332
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %907, %struct.__sFILE* %1) #6, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  br label %1035, !dbg !1102

; <label>:908:                                    ; preds = %896
  %909 = getelementptr inbounds i32, i32* %899, i64 -1, !dbg !1103
  %910 = load i32, i32* %909, align 4, !dbg !1103, !tbaa !332
  %911 = or i32 %910, 32, !dbg !1104
  %912 = icmp eq i32 %911, 120, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %912, label %913, label %914, !dbg !1104

; <label>:913:                                    ; preds = %908
  call fastcc void @_sungetwc_r(%struct._reent* %0, i32 %910, %struct.__sFILE* %1) #6, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br label %914, !dbg !1108

; <label>:914:                                    ; preds = %908, %913
  %915 = phi i32* [ %909, %913 ], [ %899, %908 ], !dbg !1109
  %916 = and i32 %898, 16, !dbg !1110
  %917 = icmp eq i32 %916, 0, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %917, label %918, label %1010, !dbg !1112

; <label>:918:                                    ; preds = %914
  store i32 0, i32* %915, align 4, !dbg !1113, !tbaa !332
  %919 = call i64 %266(%struct._reent* %0, i32* nonnull %19, i32** null, i32 %900) #5, !dbg !1114, !callees !1115
  %920 = and i32 %898, 32, !dbg !1117
  %921 = icmp eq i32 %920, 0, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %921, label %938, label %922, !dbg !1118

; <label>:922:                                    ; preds = %918
  %923 = load i32, i32* %16, align 8, !dbg !1119
  %924 = icmp ult i32 %923, 41, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %924, label %925, label %930, !dbg !1119

; <label>:925:                                    ; preds = %922
  %926 = load i8*, i8** %17, align 8, !dbg !1119
  %927 = sext i32 %923 to i64, !dbg !1119
  %928 = getelementptr i8, i8* %926, i64 %927, !dbg !1119
  %929 = add i32 %923, 8, !dbg !1119
  store i32 %929, i32* %16, align 8, !dbg !1119
  br label %933, !dbg !1119

; <label>:930:                                    ; preds = %922
  %931 = load i8*, i8** %18, align 8, !dbg !1119
  %932 = getelementptr i8, i8* %931, i64 8, !dbg !1119
  store i8* %932, i8** %18, align 8, !dbg !1119
  br label %933, !dbg !1119

; <label>:933:                                    ; preds = %930, %925
  %934 = phi i8* [ %928, %925 ], [ %931, %930 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  %935 = bitcast i8* %934 to i8***, !dbg !1119
  %936 = load i8**, i8*** %935, align 8, !dbg !1119
  %937 = inttoptr i64 %919 to i8*, !dbg !1121
  store i8* %937, i8** %936, align 8, !dbg !1122, !tbaa !1123
  br label %1008, !dbg !1124

; <label>:938:                                    ; preds = %918
  %939 = and i32 %898, 8, !dbg !1125
  %940 = icmp eq i32 %939, 0, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %940, label %957, label %941, !dbg !1127

; <label>:941:                                    ; preds = %938
  %942 = load i32, i32* %16, align 8, !dbg !1128
  %943 = icmp ult i32 %942, 41, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %943, label %944, label %949, !dbg !1128

; <label>:944:                                    ; preds = %941
  %945 = load i8*, i8** %17, align 8, !dbg !1128
  %946 = sext i32 %942 to i64, !dbg !1128
  %947 = getelementptr i8, i8* %945, i64 %946, !dbg !1128
  %948 = add i32 %942, 8, !dbg !1128
  store i32 %948, i32* %16, align 8, !dbg !1128
  br label %952, !dbg !1128

; <label>:949:                                    ; preds = %941
  %950 = load i8*, i8** %18, align 8, !dbg !1128
  %951 = getelementptr i8, i8* %950, i64 8, !dbg !1128
  store i8* %951, i8** %18, align 8, !dbg !1128
  br label %952, !dbg !1128

; <label>:952:                                    ; preds = %949, %944
  %953 = phi i8* [ %947, %944 ], [ %950, %949 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  %954 = bitcast i8* %953 to i8**, !dbg !1128
  %955 = load i8*, i8** %954, align 8, !dbg !1128
  %956 = trunc i64 %919 to i8, !dbg !1130
  store i8 %956, i8* %955, align 1, !dbg !1131, !tbaa !511
  br label %1008, !dbg !1132

; <label>:957:                                    ; preds = %938
  %958 = and i32 %898, 4, !dbg !1133
  %959 = icmp eq i32 %958, 0, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br i1 %959, label %976, label %960, !dbg !1135

; <label>:960:                                    ; preds = %957
  %961 = load i32, i32* %16, align 8, !dbg !1136
  %962 = icmp ult i32 %961, 41, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br i1 %962, label %963, label %968, !dbg !1136

; <label>:963:                                    ; preds = %960
  %964 = load i8*, i8** %17, align 8, !dbg !1136
  %965 = sext i32 %961 to i64, !dbg !1136
  %966 = getelementptr i8, i8* %964, i64 %965, !dbg !1136
  %967 = add i32 %961, 8, !dbg !1136
  store i32 %967, i32* %16, align 8, !dbg !1136
  br label %971, !dbg !1136

; <label>:968:                                    ; preds = %960
  %969 = load i8*, i8** %18, align 8, !dbg !1136
  %970 = getelementptr i8, i8* %969, i64 8, !dbg !1136
  store i8* %970, i8** %18, align 8, !dbg !1136
  br label %971, !dbg !1136

; <label>:971:                                    ; preds = %968, %963
  %972 = phi i8* [ %966, %963 ], [ %969, %968 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  %973 = bitcast i8* %972 to i16**, !dbg !1136
  %974 = load i16*, i16** %973, align 8, !dbg !1136
  %975 = trunc i64 %919 to i16, !dbg !1138
  store i16 %975, i16* %974, align 2, !dbg !1139, !tbaa !520
  br label %1008, !dbg !1140

; <label>:976:                                    ; preds = %957
  %977 = and i32 %898, 1, !dbg !1141
  %978 = icmp eq i32 %977, 0, !dbg !1141
  %979 = load i32, i32* %16, align 8, !dbg !1143
  %980 = icmp ult i32 %979, 41, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %978, label %994, label %981, !dbg !1145

; <label>:981:                                    ; preds = %976
  br i1 %980, label %982, label %987, !dbg !1148

; <label>:982:                                    ; preds = %981
  %983 = load i8*, i8** %17, align 8, !dbg !1148
  %984 = sext i32 %979 to i64, !dbg !1148
  %985 = getelementptr i8, i8* %983, i64 %984, !dbg !1148
  %986 = add i32 %979, 8, !dbg !1148
  store i32 %986, i32* %16, align 8, !dbg !1148
  br label %990, !dbg !1148

; <label>:987:                                    ; preds = %981
  %988 = load i8*, i8** %18, align 8, !dbg !1148
  %989 = getelementptr i8, i8* %988, i64 8, !dbg !1148
  store i8* %989, i8** %18, align 8, !dbg !1148
  br label %990, !dbg !1148

; <label>:990:                                    ; preds = %987, %982
  %991 = phi i8* [ %985, %982 ], [ %988, %987 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %992 = bitcast i8* %991 to i64**, !dbg !1148
  %993 = load i64*, i64** %992, align 8, !dbg !1148
  store i64 %919, i64* %993, align 8, !dbg !1149, !tbaa !532
  br label %1008, !dbg !1150

; <label>:994:                                    ; preds = %976
  br i1 %980, label %995, label %1000, !dbg !1151

; <label>:995:                                    ; preds = %994
  %996 = load i8*, i8** %17, align 8, !dbg !1151
  %997 = sext i32 %979 to i64, !dbg !1151
  %998 = getelementptr i8, i8* %996, i64 %997, !dbg !1151
  %999 = add i32 %979, 8, !dbg !1151
  store i32 %999, i32* %16, align 8, !dbg !1151
  br label %1003, !dbg !1151

; <label>:1000:                                   ; preds = %994
  %1001 = load i8*, i8** %18, align 8, !dbg !1151
  %1002 = getelementptr i8, i8* %1001, i64 8, !dbg !1151
  store i8* %1002, i8** %18, align 8, !dbg !1151
  br label %1003, !dbg !1151

; <label>:1003:                                   ; preds = %1000, %995
  %1004 = phi i8* [ %998, %995 ], [ %1001, %1000 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  %1005 = bitcast i8* %1004 to i32**, !dbg !1151
  %1006 = load i32*, i32** %1005, align 8, !dbg !1151
  %1007 = trunc i64 %919 to i32, !dbg !1152
  store i32 %1007, i32* %1006, align 4, !dbg !1153, !tbaa !332
  br label %1008

; <label>:1008:                                   ; preds = %952, %990, %1003, %971, %933
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1009 = add nsw i32 %32, 1, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %1010, !dbg !1155

; <label>:1010:                                   ; preds = %1008, %914
  %1011 = phi i32 [ %1009, %1008 ], [ %32, %914 ], !dbg !537
  %1012 = ptrtoint i32* %915 to i64, !dbg !1156
  %1013 = sub i64 %1012, %21, !dbg !1156
  %1014 = lshr exact i64 %1013, 2, !dbg !1156
  %1015 = trunc i64 %1014 to i32, !dbg !1157
  %1016 = add i32 %300, %1015, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br label %1018, !dbg !1158

; <label>:1017:                                   ; preds = %299
  unreachable

; <label>:1018:                                   ; preds = %629, %1010, %434, %438, %359, %363, %795, %798
  %1019 = phi i32* [ %33, %795 ], [ %799, %798 ], [ %915, %1010 ], [ %630, %629 ], [ %361, %359 ], [ %361, %363 ], [ %33, %434 ], [ %33, %438 ]
  %1020 = phi i32 [ %32, %795 ], [ %800, %798 ], [ %1011, %1010 ], [ %632, %629 ], [ %32, %359 ], [ %364, %363 ], [ %32, %434 ], [ %439, %438 ]
  %1021 = phi i32 [ %744, %795 ], [ %801, %798 ], [ %1016, %1010 ], [ %634, %629 ], [ %362, %359 ], [ %362, %363 ], [ %437, %434 ], [ %437, %438 ]
  %1022 = phi i32 [ %265, %795 ], [ %265, %798 ], [ %900, %1010 ], [ %265, %629 ], [ %265, %359 ], [ %265, %363 ], [ %265, %434 ], [ %265, %438 ]
  %1023 = phi i8* [ %745, %795 ], [ %802, %798 ], [ %25, %1010 ], [ %633, %629 ], [ %25, %359 ], [ %25, %363 ], [ %435, %434 ], [ %435, %438 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  %1024 = load i32, i32* %270, align 4, !dbg !331, !tbaa !332
  %1025 = icmp eq i32 %1024, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %1025, label %1035, label %22, !dbg !339, !llvm.loop !387

; <label>:1026:                                   ; preds = %432, %357, %94, %775, %772, %609, %606, %412, %409, %297, %93, %104
  %1027 = icmp eq i32 %32, 0, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %1027, label %1035, label %1028, !dbg !1161

; <label>:1028:                                   ; preds = %1026
  %1029 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !1162
  %1030 = load i16, i16* %1029, align 8, !dbg !1162, !tbaa !1163
  %1031 = and i16 %1030, 64, !dbg !1164
  %1032 = icmp eq i16 %1031, 0, !dbg !1164
  %1033 = select i1 %1032, i32 %32, i32 -1, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br label %1035, !dbg !1160

; <label>:1034:                                   ; preds = %77
  br label %1035, !dbg !385

; <label>:1035:                                   ; preds = %905, %903, %4, %77, %71, %105, %541, %486, %1018, %1034, %1028, %1026
  %1036 = phi i32 [ -1, %1026 ], [ %1033, %1028 ], [ -1, %1034 ], [ %32, %903 ], [ %32, %905 ], [ 0, %4 ], [ %32, %77 ], [ %32, %71 ], [ %32, %105 ], [ %1020, %1018 ], [ %32, %486 ], [ %32, %541 ], !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #4, !dbg !1165
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %9) #4, !dbg !1165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  ret i32 %1036, !dbg !1165
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @iswspace(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @_sungetwc_r(%struct._reent*, i32, %struct.__sFILE*) unnamed_addr #0 !dbg !1166 {
  %4 = icmp eq i32 %1, -1, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %4, label %62, label %5, !dbg !1176

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !1177
  %7 = load i16, i16* %6, align 8, !dbg !1178, !tbaa !1163
  %8 = and i16 %7, -33, !dbg !1178
  store i16 %8, i16* %6, align 8, !dbg !1178, !tbaa !1163
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 0, !dbg !1179
  %10 = load i8*, i8** %9, align 8, !dbg !1179, !tbaa !1181
  %11 = icmp eq i8* %10, null, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  br i1 %11, label %28, label %12, !dbg !1182

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !1183
  %14 = load i32, i32* %13, align 8, !dbg !1183, !tbaa !356
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 1, !dbg !1186
  %16 = load i32, i32* %15, align 8, !dbg !1186, !tbaa !1187
  %17 = icmp slt i32 %14, %16, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %17, label %21, label %18, !dbg !1189

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @__submore(%struct._reent* %0, %struct.__sFILE* nonnull %2) #5, !dbg !1190
  %20 = icmp eq i32 %19, 0, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %20, label %21, label %62, !dbg !1191

; <label>:21:                                     ; preds = %18, %12
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !1192
  %23 = load i8*, i8** %22, align 8, !dbg !1193, !tbaa !372
  %24 = getelementptr inbounds i8, i8* %23, i64 -4, !dbg !1193
  store i8* %24, i8** %22, align 8, !dbg !1193, !tbaa !372
  %25 = trunc i32 %1 to i8, !dbg !1194
  store i8 %25, i8* %24, align 1, !dbg !1195, !tbaa !511
  %26 = load i32, i32* %13, align 8, !dbg !1196, !tbaa !356
  %27 = add i32 %26, 4, !dbg !1196
  store i32 %27, i32* %13, align 8, !dbg !1196, !tbaa !356
  br label %62, !dbg !1197

; <label>:28:                                     ; preds = %5
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !1198
  %30 = load i8*, i8** %29, align 8, !dbg !1198, !tbaa !1200
  %31 = icmp eq i8* %30, null, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br i1 %31, label %32, label %36, !dbg !1202

; <label>:32:                                     ; preds = %28
  %33 = bitcast %struct.__sFILE* %2 to i64*
  %34 = load i64, i64* %33, align 8, !dbg !1203, !tbaa !372
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !1203
  br label %50, !dbg !1202

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !1204
  %38 = load i8*, i8** %37, align 8, !dbg !1204, !tbaa !372
  %39 = icmp ugt i8* %38, %30, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  %40 = ptrtoint i8* %38 to i64, !dbg !1206
  br i1 %39, label %41, label %50, !dbg !1206

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %38, i64 -4, !dbg !1207
  %43 = bitcast i8* %42 to i32*, !dbg !1207
  %44 = load i32, i32* %43, align 4, !dbg !1207, !tbaa !332
  %45 = icmp eq i32 %44, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %45, label %46, label %50, !dbg !1209

; <label>:46:                                     ; preds = %41
  store i8* %42, i8** %37, align 8, !dbg !1210, !tbaa !372
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !1212
  %48 = load i32, i32* %47, align 8, !dbg !1213, !tbaa !356
  %49 = add i32 %48, 4, !dbg !1213
  store i32 %49, i32* %47, align 8, !dbg !1213, !tbaa !356
  br label %62, !dbg !1214

; <label>:50:                                     ; preds = %32, %41, %36
  %51 = phi i8** [ %35, %32 ], [ %37, %41 ], [ %37, %36 ], !dbg !1203
  %52 = phi i64 [ %34, %32 ], [ %40, %41 ], [ %40, %36 ], !dbg !1203
  %53 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !1215
  %54 = load i32, i32* %53, align 8, !dbg !1215, !tbaa !356
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 14, !dbg !1216
  store i32 %54, i32* %55, align 8, !dbg !1217, !tbaa !1218
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 13, !dbg !1219
  %57 = bitcast i8** %56 to i64*, !dbg !1220
  store i64 %52, i64* %57, align 8, !dbg !1220, !tbaa !1221
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 0, !dbg !1222
  store i8* %58, i8** %9, align 8, !dbg !1223, !tbaa !1181
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 1, !dbg !1224
  store i32 3, i32* %59, align 8, !dbg !1225, !tbaa !1187
  %60 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 -1, !dbg !1226
  store i8* %60, i8** %51, align 8, !dbg !1227, !tbaa !372
  %61 = bitcast i8* %60 to i32*, !dbg !1228
  store i32 %1, i32* %61, align 4, !dbg !1229, !tbaa !332
  store i32 2, i32* %53, align 8, !dbg !1230, !tbaa !356
  br label %62, !dbg !1231

; <label>:62:                                     ; preds = %18, %3, %50, %46, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  ret void
}

; Function Attrs: noredzone
declare dso_local i64 @_wcstol_r(%struct._reent*, i32*, i32**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcstoul_r(%struct._reent*, i32*, i32**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcrtomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @wmemchr(i32*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @wcrtomb(i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @__ssrefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__submore(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!310, !311, !312}
!llvm.ident = !{!313}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basefix", scope: !2, file: !3, line: 429, type: !306, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__ssvfiwscanf_r", scope: !3, file: !3, line: 377, type: !4, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !256)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !226, !229, !232}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !9, line: 569, size: 14912, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !12, !94, !95, !96, !97, !101, !102, !105, !106, !110, !122, !123, !124, !126, !127, !128, !190, !211, !212, !217, !224}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !8, file: !9, line: 571, baseType: !6, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !9, line: 287, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 181, size: 1408, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !33, !42, !48, !53, !57, !58, !59, !60, !64, !68, !69, !70, !72, !73, !77, !93}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !9, line: 182, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !9, line: 183, baseType: !6, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !9, line: 184, baseType: !6, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !9, line: 185, baseType: !23, size: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !9, line: 186, baseType: !23, size: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !9, line: 187, baseType: !26, size: 128, offset: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 117, size: 128, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !9, line: 118, baseType: !18, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !9, line: 119, baseType: !6, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !9, line: 188, baseType: !6, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !9, line: 195, baseType: !32, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !9, line: 197, baseType: !34, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !7, !32, !40, !6}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !38, line: 145, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !9, line: 199, baseType: !43, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!37, !7, !32, !46, !6}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !9, line: 202, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !7, !32, !52, !6}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !38, line: 114, baseType: !39)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !9, line: 203, baseType: !54, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !7, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !9, line: 206, baseType: !26, size: 128, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !15, file: !9, line: 207, baseType: !18, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !9, line: 208, baseType: !6, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !9, line: 211, baseType: !61, size: 24, offset: 928)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !9, line: 212, baseType: !65, size: 8, offset: 952)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !9, line: 215, baseType: !26, size: 128, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !9, line: 218, baseType: !6, size: 32, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !9, line: 219, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !38, line: 44, baseType: !39)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !15, file: !9, line: 222, baseType: !7, size: 64, offset: 1216)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !9, line: 226, baseType: !74, size: 32, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !38, line: 175, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !76, line: 12, baseType: !6)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !15, file: !9, line: 228, baseType: !78, size: 64, offset: 1312)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !38, line: 171, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 163, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !79, file: !38, line: 165, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !79, file: !38, line: 170, baseType: !83, size: 32, offset: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !38, line: 166, size: 32, elements: !84)
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !83, file: !38, line: 168, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !87, line: 124, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !83, file: !38, line: 169, baseType: !90, size: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !9, line: 229, baseType: !6, size: 32, offset: 1376)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !8, file: !9, line: 578, baseType: !6, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !8, file: !9, line: 579, baseType: !98, size: 200, offset: 288)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 200, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 25)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !8, file: !9, line: 582, baseType: !6, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !8, file: !9, line: 583, baseType: !103, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !9, line: 40, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !8, file: !9, line: 585, baseType: !6, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !8, file: !9, line: 587, baseType: !107, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !7}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !8, file: !9, line: 590, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !9, line: 47, size: 256, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !112, file: !9, line: 49, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !112, file: !9, line: 51, baseType: !120, size: 32, offset: 192)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !66)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !9, line: 25, baseType: !88)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !8, file: !9, line: 591, baseType: !6, size: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !8, file: !9, line: 592, baseType: !111, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !8, file: !9, line: 593, baseType: !125, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !8, file: !9, line: 596, baseType: !6, size: 32, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !8, file: !9, line: 597, baseType: !40, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !8, file: !9, line: 632, baseType: !129, size: 2880, offset: 1152)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 599, size: 2880, elements: !130)
!130 = !{!131, !181}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !129, file: !9, line: 622, baseType: !132, size: 1728)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 601, size: 1728, elements: !133)
!133 = !{!134, !135, !136, !140, !152, !153, !155, !163, !164, !165, !166, !170, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !132, file: !9, line: 603, baseType: !88, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !132, file: !9, line: 604, baseType: !40, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !132, file: !9, line: 605, baseType: !137, size: 208, offset: 128)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 208, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 26)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !132, file: !9, line: 606, baseType: !141, size: 288, offset: 352)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !9, line: 55, size: 288, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !141, file: !9, line: 57, baseType: !6, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !141, file: !9, line: 58, baseType: !6, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !141, file: !9, line: 59, baseType: !6, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !141, file: !9, line: 60, baseType: !6, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !141, file: !9, line: 61, baseType: !6, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !141, file: !9, line: 62, baseType: !6, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !141, file: !9, line: 63, baseType: !6, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !141, file: !9, line: 64, baseType: !6, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !141, file: !9, line: 65, baseType: !6, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !132, file: !9, line: 607, baseType: !6, size: 32, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !132, file: !9, line: 608, baseType: !154, size: 64, offset: 704)
!154 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !132, file: !9, line: 609, baseType: !156, size: 112, offset: 768)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !9, line: 319, size: 112, elements: !157)
!157 = !{!158, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !156, file: !9, line: 320, baseType: !159, size: 48)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !62)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !156, file: !9, line: 321, baseType: !159, size: 48, offset: 48)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !156, file: !9, line: 322, baseType: !160, size: 16, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !132, file: !9, line: 610, baseType: !78, size: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !132, file: !9, line: 611, baseType: !78, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !132, file: !9, line: 612, baseType: !78, size: 64, offset: 1024)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !132, file: !9, line: 613, baseType: !167, size: 64, offset: 1088)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !132, file: !9, line: 614, baseType: !171, size: 192, offset: 1152)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 24)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !132, file: !9, line: 615, baseType: !6, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !132, file: !9, line: 616, baseType: !78, size: 64, offset: 1376)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !132, file: !9, line: 617, baseType: !78, size: 64, offset: 1440)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !132, file: !9, line: 618, baseType: !78, size: 64, offset: 1504)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !132, file: !9, line: 619, baseType: !78, size: 64, offset: 1568)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !132, file: !9, line: 620, baseType: !78, size: 64, offset: 1632)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !132, file: !9, line: 621, baseType: !6, size: 32, offset: 1696)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !129, file: !9, line: 631, baseType: !182, size: 2880)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 626, size: 2880, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !182, file: !9, line: 629, baseType: !185, size: 1920)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 30)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !182, file: !9, line: 630, baseType: !189, size: 960, offset: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 960, elements: !186)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !8, file: !9, line: 636, baseType: !191, size: 64, offset: 4032)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !9, line: 93, size: 6336, elements: !193)
!193 = !{!194, !195, !196, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !192, file: !9, line: 94, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !192, file: !9, line: 95, baseType: !6, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !192, file: !9, line: 97, baseType: !197, size: 2048, offset: 128)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2048, elements: !201)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null}
!201 = !{!202}
!202 = !DISubrange(count: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !192, file: !9, line: 98, baseType: !204, size: 4160, offset: 2176)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !9, line: 74, size: 4160, elements: !205)
!205 = !{!206, !208, !209, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !204, file: !9, line: 75, baseType: !207, size: 2048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !201)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !204, file: !9, line: 76, baseType: !207, size: 2048, offset: 2048)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !204, file: !9, line: 78, baseType: !121, size: 32, offset: 4096)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !204, file: !9, line: 81, baseType: !121, size: 32, offset: 4128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !8, file: !9, line: 637, baseType: !192, size: 6336, offset: 4096)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !8, file: !9, line: 641, baseType: !213, size: 64, offset: 10432)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !6}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !8, file: !9, line: 646, baseType: !218, size: 192, offset: 10496)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !9, line: 291, size: 192, elements: !219)
!219 = !{!220, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !218, file: !9, line: 293, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !218, file: !9, line: 294, baseType: !6, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !218, file: !9, line: 295, baseType: !13, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !8, file: !9, line: 648, baseType: !225, size: 4224, offset: 10688)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4224, elements: !62)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 66, baseType: !14)
!228 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !87, line: 83, baseType: !6)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !233, file: !3, baseType: !88, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !233, file: !3, baseType: !88, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !233, file: !3, baseType: !32, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !233, file: !3, baseType: !32, size: 64, offset: 128)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !241, globals: !255)
!240 = !{}
!241 = !{!242, !86, !243, !231, !32, !248, !247, !251}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !7, !229, !247, !6}
!246 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !249, line: 40, baseType: !250)
!249 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !38, line: 129, baseType: !246)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !252, line: 82, baseType: !253)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !254, line: 232, baseType: !246)
!254 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !{!0}
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !274, !275, !279, !280, !281, !282, !283, !284, !285, !287, !288, !290, !292, !294, !302}
!257 = !DILocalVariable(name: "rptr", arg: 1, scope: !2, file: !3, line: 377, type: !7)
!258 = !DILocalVariable(name: "fp", arg: 2, scope: !2, file: !3, line: 377, type: !226)
!259 = !DILocalVariable(name: "fmt0", arg: 3, scope: !2, file: !3, line: 377, type: !229)
!260 = !DILocalVariable(name: "ap", arg: 4, scope: !2, file: !3, line: 377, type: !232)
!261 = !DILocalVariable(name: "fmt", scope: !2, file: !3, line: 383, type: !242)
!262 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 384, type: !86)
!263 = !DILocalVariable(name: "width", scope: !2, file: !3, line: 385, type: !248)
!264 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 386, type: !242)
!265 = !DILocalVariable(name: "n", scope: !2, file: !3, line: 387, type: !6)
!266 = !DILocalVariable(name: "flags", scope: !2, file: !3, line: 388, type: !6)
!267 = !DILocalVariable(name: "p0", scope: !2, file: !3, line: 389, type: !242)
!268 = !DILocalVariable(name: "nassigned", scope: !2, file: !3, line: 390, type: !6)
!269 = !DILocalVariable(name: "nread", scope: !2, file: !3, line: 391, type: !6)
!270 = !DILocalVariable(name: "base", scope: !2, file: !3, line: 399, type: !6)
!271 = !DILocalVariable(name: "mbs", scope: !2, file: !3, line: 401, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !273, line: 86, baseType: !78)
!273 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!274 = !DILocalVariable(name: "ccfn", scope: !2, file: !3, line: 404, type: !243)
!275 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 405, type: !276)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 1280, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 40)
!279 = !DILocalVariable(name: "ccls", scope: !2, file: !3, line: 406, type: !229)
!280 = !DILocalVariable(name: "ccle", scope: !2, file: !3, line: 407, type: !229)
!281 = !DILocalVariable(name: "cclcompl", scope: !2, file: !3, line: 408, type: !6)
!282 = !DILocalVariable(name: "wi", scope: !2, file: !3, line: 409, type: !86)
!283 = !DILocalVariable(name: "mbp", scope: !2, file: !3, line: 410, type: !40)
!284 = !DILocalVariable(name: "nconv", scope: !2, file: !3, line: 411, type: !248)
!285 = !DILocalVariable(name: "mbbuf", scope: !2, file: !3, line: 412, type: !286)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !66)
!287 = !DILocalVariable(name: "cp", scope: !2, file: !3, line: 414, type: !40)
!288 = !DILocalVariable(name: "sp", scope: !2, file: !3, line: 415, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!290 = !DILocalVariable(name: "ip", scope: !2, file: !3, line: 416, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!292 = !DILocalVariable(name: "lp", scope: !2, file: !3, line: 423, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!294 = !DILocalVariable(name: "res", scope: !295, file: !3, line: 1104, type: !246)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 1103, column: 6)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 1102, column: 8)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 971, column: 2)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 771, column: 2)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 477, column: 5)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 476, column: 3)
!301 = distinct !DILexicalBlock(scope: !2, file: !3, line: 476, column: 3)
!302 = !DILocalVariable(name: "vp", scope: !303, file: !3, line: 1110, type: !305)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 1109, column: 3)
!304 = distinct !DILexicalBlock(scope: !295, file: !3, line: 1108, column: 12)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 272, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!308 = !{!309}
!309 = !DISubrange(count: 17)
!310 = !{i32 2, !"Dwarf Version", i32 4}
!311 = !{i32 2, !"Debug Info Version", i32 3}
!312 = !{i32 1, !"wchar_size", i32 4}
!313 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!314 = !DILocation(line: 377, column: 1, scope: !2)
!315 = !DILocation(line: 383, column: 21, scope: !2)
!316 = !DILocation(line: 386, column: 21, scope: !2)
!317 = !DILocation(line: 399, column: 7, scope: !2)
!318 = !DILocation(line: 401, column: 3, scope: !2)
!319 = !DILocation(line: 404, column: 19, scope: !2)
!320 = !DILocation(line: 405, column: 3, scope: !2)
!321 = !DILocation(line: 405, column: 11, scope: !2)
!322 = !DILocation(line: 408, column: 7, scope: !2)
!323 = !DILocation(line: 410, column: 9, scope: !2)
!324 = !DILocation(line: 412, column: 3, scope: !2)
!325 = !DILocation(line: 412, column: 8, scope: !2)
!326 = !DILocation(line: 390, column: 7, scope: !2)
!327 = !DILocation(line: 391, column: 7, scope: !2)
!328 = !DILocation(line: 407, column: 18, scope: !2)
!329 = !DILocation(line: 406, column: 18, scope: !2)
!330 = !DILocation(line: 476, column: 3, scope: !2)
!331 = !DILocation(line: 478, column: 11, scope: !299)
!332 = !{!333, !333, i64 0}
!333 = !{!"int", !334, i64 0}
!334 = !{!"omnipotent char", !335, i64 0}
!335 = !{!"Simple C/C++ TBAA"}
!336 = !DILocation(line: 384, column: 19, scope: !2)
!337 = !DILocation(line: 479, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !299, file: !3, line: 479, column: 11)
!339 = !DILocation(line: 479, column: 11, scope: !299)
!340 = !DILocation(line: 478, column: 15, scope: !299)
!341 = !DILocation(line: 481, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !299, file: !3, line: 481, column: 11)
!343 = !DILocation(line: 481, column: 11, scope: !299)
!344 = !DILocalVariable(name: "ptr", arg: 1, scope: !345, file: !3, line: 361, type: !7)
!345 = distinct !DISubprogram(name: "_sfgetwc_r", scope: !3, file: !3, line: 361, type: !346, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!248, !7, !226}
!348 = !{!344, !349, !350}
!349 = !DILocalVariable(name: "fp", arg: 2, scope: !345, file: !3, line: 361, type: !226)
!350 = !DILocalVariable(name: "wc", scope: !345, file: !3, line: 365, type: !231)
!351 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !352)
!352 = distinct !DILocation(line: 483, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !342, file: !3, line: 482, column: 2)
!354 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !352)
!355 = distinct !DILexicalBlock(scope: !345, file: !3, line: 367, column: 7)
!356 = !{!357, !333, i64 8}
!357 = !{!"__sFILE", !358, i64 0, !333, i64 8, !333, i64 12, !359, i64 16, !359, i64 18, !360, i64 24, !333, i64 40, !358, i64 48, !358, i64 56, !358, i64 64, !358, i64 72, !358, i64 80, !360, i64 88, !358, i64 104, !333, i64 112, !334, i64 116, !334, i64 119, !360, i64 120, !333, i64 136, !361, i64 144, !358, i64 152, !333, i64 160, !362, i64 164, !333, i64 172}
!358 = !{!"any pointer", !334, i64 0}
!359 = !{!"short", !334, i64 0}
!360 = !{!"__sbuf", !358, i64 0, !333, i64 8}
!361 = !{!"long", !334, i64 0}
!362 = !{!"", !333, i64 0, !334, i64 4}
!363 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !352)
!364 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !352)
!365 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !352)
!366 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !352)
!367 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !352)
!368 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !352)
!369 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !352)
!370 = !DILocation(line: 483, column: 46, scope: !353)
!371 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !352)
!372 = !{!357, !358, i64 0}
!373 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !352)
!374 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !352)
!375 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !352)
!376 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !352)
!377 = !DILocation(line: 483, column: 38, scope: !353)
!378 = !DILocation(line: 483, column: 49, scope: !353)
!379 = !DILocation(line: 483, column: 4, scope: !353)
!380 = distinct !{!380, !379, !381}
!381 = !DILocation(line: 484, column: 6, scope: !353)
!382 = !DILocation(line: 485, column: 8, scope: !353)
!383 = !DILocation(line: 486, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !353, file: !3, line: 485, column: 8)
!385 = !DILocation(line: 0, scope: !386)
!386 = distinct !DILexicalBlock(scope: !299, file: !3, line: 507, column: 2)
!387 = distinct !{!387, !388, !389}
!388 = !DILocation(line: 476, column: 3, scope: !301)
!389 = !DILocation(line: 1473, column: 5, scope: !301)
!390 = !DILocation(line: 489, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !299, file: !3, line: 489, column: 11)
!392 = !DILocation(line: 489, column: 11, scope: !299)
!393 = !DILocation(line: 0, scope: !299)
!394 = !DILocation(line: 388, column: 16, scope: !2)
!395 = !DILocation(line: 385, column: 19, scope: !2)
!396 = !DILocation(line: 504, column: 15, scope: !299)
!397 = !DILocation(line: 504, column: 11, scope: !299)
!398 = !DILocation(line: 506, column: 7, scope: !299)
!399 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !400)
!400 = distinct !DILocation(line: 510, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !386, file: !3, line: 510, column: 8)
!402 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !400)
!403 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !400)
!404 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !400)
!405 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !400)
!406 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !400)
!407 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !400)
!408 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !400)
!409 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !400)
!410 = !DILocation(line: 409, column: 10, scope: !2)
!411 = !DILocation(line: 510, column: 8, scope: !386)
!412 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !400)
!413 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !400)
!414 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !400)
!415 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !400)
!416 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !400)
!417 = !DILocation(line: 510, column: 36, scope: !401)
!418 = !DILocation(line: 512, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !386, file: !3, line: 512, column: 8)
!420 = !DILocation(line: 512, column: 8, scope: !386)
!421 = !DILocation(line: 514, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 513, column: 6)
!423 = !DILocation(line: 515, column: 8, scope: !422)
!424 = !DILocation(line: 517, column: 9, scope: !386)
!425 = !DILocation(line: 518, column: 4, scope: !386)
!426 = !DILocation(line: 521, column: 10, scope: !386)
!427 = !DILocation(line: 522, column: 4, scope: !386)
!428 = !DILocation(line: 525, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !386, file: !3, line: 525, column: 8)
!430 = !DILocation(line: 525, column: 13, scope: !429)
!431 = !DILocation(line: 525, column: 8, scope: !386)
!432 = !DILocation(line: 527, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 526, column: 6)
!434 = !DILocation(line: 0, scope: !433)
!435 = !DILocation(line: 533, column: 4, scope: !386)
!436 = !DILocation(line: 535, column: 10, scope: !386)
!437 = !DILocation(line: 536, column: 4, scope: !386)
!438 = !DILocation(line: 539, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !386, file: !3, line: 539, column: 8)
!440 = !DILocation(line: 539, column: 13, scope: !439)
!441 = !DILocation(line: 539, column: 8, scope: !386)
!442 = !DILocation(line: 541, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 540, column: 6)
!444 = !DILocation(line: 0, scope: !443)
!445 = !DILocation(line: 547, column: 4, scope: !386)
!446 = !DILocation(line: 551, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !386, file: !3, line: 550, column: 8)
!448 = !DILocation(line: 554, column: 4, scope: !386)
!449 = !DILocation(line: 563, column: 12, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 562, column: 13)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 560, column: 13)
!452 = distinct !DILexicalBlock(scope: !386, file: !3, line: 556, column: 8)
!453 = !DILocation(line: 570, column: 4, scope: !386)
!454 = !DILocation(line: 578, column: 12, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 577, column: 13)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 575, column: 13)
!457 = distinct !DILexicalBlock(scope: !386, file: !3, line: 572, column: 8)
!458 = !DILocation(line: 585, column: 4, scope: !386)
!459 = !DILocation(line: 598, column: 18, scope: !386)
!460 = !DILocation(line: 598, column: 25, scope: !386)
!461 = !DILocation(line: 598, column: 23, scope: !386)
!462 = !DILocation(line: 598, column: 27, scope: !386)
!463 = !DILocation(line: 599, column: 4, scope: !386)
!464 = !DILocation(line: 630, column: 4, scope: !386)
!465 = !DILocation(line: 636, column: 4, scope: !386)
!466 = !DILocation(line: 640, column: 10, scope: !386)
!467 = !DILocation(line: 644, column: 4, scope: !386)
!468 = !DILocation(line: 663, column: 10, scope: !386)
!469 = !DILocation(line: 663, column: 4, scope: !386)
!470 = !DILocation(line: 669, column: 4, scope: !386)
!471 = !DILocation(line: 673, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !386, file: !3, line: 673, column: 8)
!473 = !DILocation(line: 673, column: 13, scope: !472)
!474 = !DILocation(line: 673, column: 8, scope: !386)
!475 = !DILocation(line: 676, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 674, column: 6)
!477 = !DILocation(line: 677, column: 6, scope: !476)
!478 = !DILocation(line: 680, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !386, file: !3, line: 680, column: 8)
!480 = !DILocation(line: 0, scope: !472)
!481 = !DILocation(line: 680, column: 13, scope: !479)
!482 = !DILocation(line: 680, column: 8, scope: !386)
!483 = !DILocation(line: 681, column: 9, scope: !479)
!484 = !DILocation(line: 681, column: 6, scope: !479)
!485 = !DILocation(line: 682, column: 11, scope: !386)
!486 = !DILocation(line: 0, scope: !476)
!487 = !DILocation(line: 682, column: 4, scope: !386)
!488 = !DILocation(line: 682, column: 16, scope: !386)
!489 = !DILocation(line: 682, column: 24, scope: !386)
!490 = !DILocation(line: 682, column: 32, scope: !386)
!491 = distinct !{!491, !487, !492}
!492 = !DILocation(line: 683, column: 9, scope: !386)
!493 = !DILocation(line: 686, column: 10, scope: !386)
!494 = !DILocation(line: 688, column: 4, scope: !386)
!495 = !DILocation(line: 692, column: 10, scope: !386)
!496 = !DILocation(line: 692, column: 4, scope: !386)
!497 = !DILocation(line: 697, column: 10, scope: !386)
!498 = !DILocation(line: 699, column: 4, scope: !386)
!499 = !DILocation(line: 702, column: 10, scope: !386)
!500 = !DILocation(line: 706, column: 4, scope: !386)
!501 = !DILocation(line: 709, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !386, file: !3, line: 709, column: 8)
!503 = !DILocation(line: 709, column: 8, scope: !386)
!504 = !DILocation(line: 712, column: 14, scope: !505)
!505 = distinct !DILexicalBlock(scope: !386, file: !3, line: 712, column: 8)
!506 = !DILocation(line: 712, column: 8, scope: !386)
!507 = !DILocation(line: 714, column: 13, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !3, line: 713, column: 6)
!509 = !DILocation(line: 414, column: 9, scope: !2)
!510 = !DILocation(line: 715, column: 12, scope: !508)
!511 = !{!334, !334, i64 0}
!512 = !DILocation(line: 716, column: 6, scope: !508)
!513 = !DILocation(line: 719, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !505, file: !3, line: 719, column: 8)
!515 = !DILocation(line: 719, column: 8, scope: !505)
!516 = !DILocation(line: 721, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !3, line: 720, column: 6)
!518 = !DILocation(line: 415, column: 10, scope: !2)
!519 = !DILocation(line: 722, column: 12, scope: !517)
!520 = !{!359, !359, i64 0}
!521 = !DILocation(line: 723, column: 6, scope: !517)
!522 = !DILocation(line: 724, column: 19, scope: !523)
!523 = distinct !DILexicalBlock(scope: !514, file: !3, line: 724, column: 13)
!524 = !DILocation(line: 0, scope: !525)
!525 = distinct !DILexicalBlock(scope: !523, file: !3, line: 737, column: 6)
!526 = !DILocation(line: 724, column: 13, scope: !514)
!527 = !DILocation(line: 0, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 725, column: 6)
!529 = !DILocation(line: 726, column: 13, scope: !528)
!530 = !DILocation(line: 423, column: 9, scope: !2)
!531 = !DILocation(line: 727, column: 12, scope: !528)
!532 = !{!361, !361, i64 0}
!533 = !DILocation(line: 728, column: 6, scope: !528)
!534 = !DILocation(line: 738, column: 13, scope: !525)
!535 = !DILocation(line: 416, column: 8, scope: !2)
!536 = !DILocation(line: 739, column: 12, scope: !525)
!537 = !DILocation(line: 0, scope: !2)
!538 = !DILocation(line: 758, column: 18, scope: !539)
!539 = distinct !DILexicalBlock(scope: !299, file: !3, line: 758, column: 11)
!540 = !DILocation(line: 758, column: 28, scope: !539)
!541 = !DILocation(line: 758, column: 11, scope: !299)
!542 = !DILocation(line: 0, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !3, line: 759, column: 2)
!544 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !545)
!545 = distinct !DILocation(line: 760, column: 17, scope: !543)
!546 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !545)
!547 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !545)
!548 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !545)
!549 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !545)
!550 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !545)
!551 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !545)
!552 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !545)
!553 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !545)
!554 = !DILocation(line: 760, column: 47, scope: !543)
!555 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !545)
!556 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !545)
!557 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !545)
!558 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !545)
!559 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !545)
!560 = !DILocation(line: 760, column: 39, scope: !543)
!561 = !DILocation(line: 760, column: 50, scope: !543)
!562 = !DILocation(line: 760, column: 4, scope: !543)
!563 = !DILocation(line: 761, column: 11, scope: !543)
!564 = distinct !{!564, !562, !563}
!565 = !DILocation(line: 762, column: 8, scope: !543)
!566 = !DILocation(line: 764, column: 4, scope: !543)
!567 = !DILocation(line: 765, column: 2, scope: !543)
!568 = !DILocation(line: 474, column: 9, scope: !2)
!569 = !DILocation(line: 770, column: 7, scope: !299)
!570 = !DILocation(line: 775, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !298, file: !3, line: 775, column: 8)
!572 = !DILocation(line: 775, column: 8, scope: !298)
!573 = !DILocation(line: 776, column: 6, scope: !571)
!574 = !DILocation(line: 777, column: 21, scope: !575)
!575 = distinct !DILexicalBlock(scope: !298, file: !3, line: 777, column: 15)
!576 = !DILocation(line: 0, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 796, column: 12)
!578 = distinct !DILexicalBlock(scope: !575, file: !3, line: 795, column: 6)
!579 = !DILocation(line: 777, column: 15, scope: !298)
!580 = !DILocation(line: 0, scope: !581)
!581 = distinct !DILexicalBlock(scope: !575, file: !3, line: 778, column: 6)
!582 = !DILocation(line: 779, column: 12, scope: !581)
!583 = !DILocation(line: 780, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 779, column: 12)
!585 = !DILocation(line: 780, column: 3, scope: !584)
!586 = !DILocation(line: 0, scope: !584)
!587 = !DILocation(line: 387, column: 16, scope: !2)
!588 = !DILocation(line: 782, column: 8, scope: !581)
!589 = !DILocation(line: 782, column: 28, scope: !581)
!590 = !DILocation(line: 782, column: 20, scope: !581)
!591 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !592)
!592 = distinct !DILocation(line: 782, column: 37, scope: !581)
!593 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !592)
!594 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !592)
!595 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !592)
!596 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !592)
!597 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !592)
!598 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !592)
!599 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !592)
!600 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !592)
!601 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !592)
!602 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !592)
!603 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !592)
!604 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !592)
!605 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !592)
!606 = !DILocation(line: 782, column: 59, scope: !581)
!607 = !DILocation(line: 784, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !581, file: !3, line: 783, column: 3)
!609 = !DILocation(line: 785, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !608, file: !3, line: 784, column: 9)
!611 = !DILocation(line: 785, column: 12, scope: !610)
!612 = !DILocation(line: 785, column: 7, scope: !610)
!613 = !DILocation(line: 0, scope: !610)
!614 = !DILocation(line: 786, column: 6, scope: !608)
!615 = !DILocation(line: 782, column: 23, scope: !581)
!616 = distinct !{!616, !588, !617}
!617 = !DILocation(line: 787, column: 3, scope: !581)
!618 = !DILocation(line: 788, column: 12, scope: !581)
!619 = !DILocation(line: 788, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !581, file: !3, line: 788, column: 12)
!621 = !DILocation(line: 790, column: 14, scope: !581)
!622 = !DILocation(line: 791, column: 12, scope: !581)
!623 = !DILocation(line: 792, column: 12, scope: !624)
!624 = distinct !DILexicalBlock(scope: !581, file: !3, line: 791, column: 12)
!625 = !DILocation(line: 792, column: 3, scope: !624)
!626 = !DILocation(line: 796, column: 12, scope: !578)
!627 = !DILocation(line: 797, column: 9, scope: !577)
!628 = !DILocation(line: 797, column: 3, scope: !577)
!629 = !DILocation(line: 799, column: 8, scope: !578)
!630 = !DILocation(line: 800, column: 8, scope: !578)
!631 = !DILocation(line: 800, column: 26, scope: !578)
!632 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !633)
!633 = distinct !DILocation(line: 800, column: 35, scope: !578)
!634 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !633)
!635 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !633)
!636 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !633)
!637 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !633)
!638 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !633)
!639 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !633)
!640 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !633)
!641 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !633)
!642 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !633)
!643 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !633)
!644 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !633)
!645 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !633)
!646 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !633)
!647 = !DILocation(line: 800, column: 57, scope: !578)
!648 = !DILocation(line: 802, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 802, column: 9)
!650 = distinct !DILexicalBlock(scope: !578, file: !3, line: 801, column: 3)
!651 = !DILocation(line: 802, column: 15, scope: !649)
!652 = !DILocation(line: 802, column: 29, scope: !649)
!653 = !DILocation(line: 802, column: 9, scope: !650)
!654 = !DILocation(line: 401, column: 13, scope: !2)
!655 = !DILocation(line: 804, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 803, column: 7)
!657 = !DILocation(line: 411, column: 10, scope: !2)
!658 = !DILocation(line: 805, column: 19, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 805, column: 13)
!660 = !DILocation(line: 805, column: 13, scope: !656)
!661 = !DILocation(line: 810, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !649, file: !3, line: 809, column: 7)
!663 = !DILocation(line: 811, column: 19, scope: !664)
!664 = distinct !DILexicalBlock(scope: !662, file: !3, line: 811, column: 13)
!665 = !DILocation(line: 811, column: 13, scope: !662)
!666 = !DILocation(line: 813, column: 19, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 813, column: 13)
!668 = !DILocation(line: 813, column: 13, scope: !662)
!669 = !DILocation(line: 815, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !3, line: 814, column: 4)
!671 = !DILocation(line: 816, column: 6, scope: !670)
!672 = !DILocation(line: 818, column: 13, scope: !662)
!673 = !DILocation(line: 819, column: 4, scope: !674)
!674 = distinct !DILexicalBlock(scope: !662, file: !3, line: 818, column: 13)
!675 = !DILocation(line: 821, column: 9, scope: !650)
!676 = !DILocation(line: 822, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !650, file: !3, line: 821, column: 9)
!678 = !DILocation(line: 822, column: 7, scope: !677)
!679 = !DILocation(line: 0, scope: !677)
!680 = !DILocation(line: 823, column: 11, scope: !650)
!681 = !DILocation(line: 824, column: 6, scope: !650)
!682 = !DILocation(line: 800, column: 21, scope: !578)
!683 = distinct !{!683, !630, !684}
!684 = !DILocation(line: 825, column: 3, scope: !578)
!685 = !DILocation(line: 826, column: 12, scope: !578)
!686 = !DILocation(line: 0, scope: !670)
!687 = !DILocation(line: 826, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !578, file: !3, line: 826, column: 12)
!689 = !DILocation(line: 828, column: 14, scope: !578)
!690 = !DILocation(line: 829, column: 12, scope: !578)
!691 = !DILocation(line: 830, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !578, file: !3, line: 829, column: 12)
!693 = !DILocation(line: 830, column: 3, scope: !692)
!694 = !DILocation(line: 836, column: 14, scope: !695)
!695 = distinct !DILexicalBlock(scope: !298, file: !3, line: 836, column: 8)
!696 = !DILocation(line: 836, column: 8, scope: !298)
!697 = !DILocation(line: 837, column: 6, scope: !695)
!698 = !DILocation(line: 839, column: 15, scope: !699)
!699 = distinct !DILexicalBlock(scope: !298, file: !3, line: 839, column: 8)
!700 = !DILocation(line: 839, column: 27, scope: !699)
!701 = !DILocation(line: 0, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 850, column: 13)
!703 = !DILocation(line: 0, scope: !699)
!704 = !DILocation(line: 0, scope: !705)
!705 = distinct !DILexicalBlock(scope: !699, file: !3, line: 840, column: 6)
!706 = !DILocation(line: 839, column: 8, scope: !298)
!707 = !DILocation(line: 842, column: 8, scope: !705)
!708 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !709)
!709 = distinct !DILocation(line: 842, column: 21, scope: !705)
!710 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !709)
!711 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !709)
!712 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !709)
!713 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !709)
!714 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !709)
!715 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !709)
!716 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !709)
!717 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !709)
!718 = !DILocation(line: 843, column: 8, scope: !705)
!719 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !709)
!720 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !709)
!721 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !709)
!722 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !709)
!723 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !709)
!724 = !DILocation(line: 842, column: 43, scope: !705)
!725 = !DILocation(line: 843, column: 16, scope: !705)
!726 = !DILocation(line: 843, column: 19, scope: !705)
!727 = !DILocation(line: 843, column: 24, scope: !705)
!728 = !DILocation(line: 843, column: 27, scope: !705)
!729 = !DILocation(line: 844, column: 4, scope: !705)
!730 = distinct !{!730, !707, !729}
!731 = !DILocation(line: 845, column: 12, scope: !705)
!732 = !DILocation(line: 846, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !705, file: !3, line: 845, column: 12)
!734 = !DILocation(line: 0, scope: !733)
!735 = !DILocation(line: 847, column: 14, scope: !736)
!736 = distinct !DILexicalBlock(scope: !705, file: !3, line: 847, column: 12)
!737 = !DILocation(line: 847, column: 12, scope: !705)
!738 = !DILocation(line: 850, column: 13, scope: !699)
!739 = !DILocation(line: 852, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !702, file: !3, line: 851, column: 6)
!741 = !DILocation(line: 389, column: 21, scope: !2)
!742 = !DILocation(line: 853, column: 8, scope: !740)
!743 = !DILocation(line: 0, scope: !740)
!744 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !745)
!745 = distinct !DILocation(line: 853, column: 21, scope: !740)
!746 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !745)
!747 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !745)
!748 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !745)
!749 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !745)
!750 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !745)
!751 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !745)
!752 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !745)
!753 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !745)
!754 = !DILocation(line: 854, column: 8, scope: !740)
!755 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !745)
!756 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !745)
!757 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !745)
!758 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !745)
!759 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !745)
!760 = !DILocation(line: 853, column: 43, scope: !740)
!761 = !DILocation(line: 854, column: 16, scope: !740)
!762 = !DILocation(line: 854, column: 19, scope: !740)
!763 = !DILocation(line: 854, column: 24, scope: !740)
!764 = !DILocation(line: 854, column: 27, scope: !740)
!765 = !DILocation(line: 855, column: 5, scope: !740)
!766 = !DILocation(line: 855, column: 8, scope: !740)
!767 = distinct !{!767, !742, !768}
!768 = !DILocation(line: 855, column: 20, scope: !740)
!769 = !DILocation(line: 856, column: 12, scope: !740)
!770 = !DILocation(line: 857, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !740, file: !3, line: 856, column: 12)
!772 = !DILocation(line: 0, scope: !771)
!773 = !DILocation(line: 858, column: 14, scope: !740)
!774 = !DILocation(line: 858, column: 12, scope: !740)
!775 = !DILocation(line: 859, column: 14, scope: !776)
!776 = distinct !DILexicalBlock(scope: !740, file: !3, line: 859, column: 12)
!777 = !DILocation(line: 859, column: 12, scope: !740)
!778 = !DILocation(line: 861, column: 11, scope: !740)
!779 = !DILocation(line: 862, column: 17, scope: !740)
!780 = !DILocation(line: 863, column: 6, scope: !740)
!781 = !DILocation(line: 866, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !702, file: !3, line: 865, column: 6)
!783 = !DILocation(line: 867, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !782, file: !3, line: 866, column: 12)
!785 = !DILocation(line: 867, column: 3, scope: !784)
!786 = !DILocation(line: 0, scope: !784)
!787 = !DILocation(line: 869, column: 8, scope: !782)
!788 = !DILocation(line: 870, column: 8, scope: !782)
!789 = !DILocation(line: 0, scope: !790)
!790 = distinct !DILexicalBlock(scope: !782, file: !3, line: 872, column: 3)
!791 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !792)
!792 = distinct !DILocation(line: 870, column: 21, scope: !782)
!793 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !792)
!794 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !792)
!795 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !792)
!796 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !792)
!797 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !792)
!798 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !792)
!799 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !792)
!800 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !792)
!801 = !DILocation(line: 871, column: 8, scope: !782)
!802 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !792)
!803 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !792)
!804 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !792)
!805 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !792)
!806 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !792)
!807 = !DILocation(line: 870, column: 43, scope: !782)
!808 = !DILocation(line: 871, column: 16, scope: !782)
!809 = !DILocation(line: 871, column: 19, scope: !782)
!810 = !DILocation(line: 871, column: 24, scope: !782)
!811 = !DILocation(line: 871, column: 27, scope: !782)
!812 = !DILocation(line: 873, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !790, file: !3, line: 873, column: 9)
!814 = !DILocation(line: 873, column: 15, scope: !813)
!815 = !DILocation(line: 873, column: 29, scope: !813)
!816 = !DILocation(line: 873, column: 9, scope: !790)
!817 = !DILocation(line: 875, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !813, file: !3, line: 874, column: 7)
!819 = !DILocation(line: 876, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !818, file: !3, line: 876, column: 13)
!821 = !DILocation(line: 876, column: 13, scope: !818)
!822 = !DILocation(line: 881, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !813, file: !3, line: 880, column: 7)
!824 = !DILocation(line: 882, column: 19, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !3, line: 882, column: 13)
!826 = !DILocation(line: 882, column: 13, scope: !823)
!827 = !DILocation(line: 884, column: 19, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 884, column: 13)
!829 = !DILocation(line: 884, column: 13, scope: !823)
!830 = !DILocation(line: 886, column: 13, scope: !823)
!831 = !DILocation(line: 887, column: 4, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !3, line: 886, column: 13)
!833 = !DILocation(line: 889, column: 9, scope: !790)
!834 = !DILocation(line: 890, column: 11, scope: !835)
!835 = distinct !DILexicalBlock(scope: !790, file: !3, line: 889, column: 9)
!836 = !DILocation(line: 890, column: 7, scope: !835)
!837 = !DILocation(line: 0, scope: !835)
!838 = !DILocation(line: 891, column: 11, scope: !790)
!839 = !DILocation(line: 892, column: 6, scope: !790)
!840 = distinct !{!840, !788, !841}
!841 = !DILocation(line: 893, column: 3, scope: !782)
!842 = !DILocation(line: 894, column: 12, scope: !782)
!843 = !DILocation(line: 895, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !782, file: !3, line: 894, column: 12)
!845 = !DILocation(line: 0, scope: !844)
!846 = !DILocation(line: 896, column: 12, scope: !782)
!847 = !DILocation(line: 898, column: 10, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 897, column: 3)
!849 = distinct !DILexicalBlock(scope: !782, file: !3, line: 896, column: 12)
!850 = !DILocation(line: 899, column: 14, scope: !848)
!851 = !DILocation(line: 900, column: 3, scope: !848)
!852 = !DILocation(line: 0, scope: !782)
!853 = !DILocation(line: 0, scope: !848)
!854 = !DILocation(line: 902, column: 10, scope: !298)
!855 = !DILocation(line: 903, column: 4, scope: !298)
!856 = !DILocation(line: 907, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !298, file: !3, line: 907, column: 8)
!858 = !DILocation(line: 907, column: 8, scope: !298)
!859 = !DILocation(line: 908, column: 13, scope: !857)
!860 = !DILocation(line: 909, column: 15, scope: !861)
!861 = distinct !DILexicalBlock(scope: !298, file: !3, line: 909, column: 8)
!862 = !DILocation(line: 909, column: 27, scope: !861)
!863 = !DILocation(line: 0, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 917, column: 13)
!865 = !DILocation(line: 0, scope: !861)
!866 = !DILocation(line: 909, column: 8, scope: !298)
!867 = !DILocation(line: 917, column: 13, scope: !861)
!868 = !DILocation(line: 933, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 932, column: 6)
!870 = !DILocation(line: 0, scope: !871)
!871 = distinct !DILexicalBlock(scope: !861, file: !3, line: 910, column: 6)
!872 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !873)
!873 = distinct !DILocation(line: 911, column: 21, scope: !871)
!874 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !873)
!875 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !873)
!876 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !873)
!877 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !873)
!878 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !873)
!879 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !873)
!880 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !873)
!881 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !873)
!882 = !DILocation(line: 912, column: 8, scope: !871)
!883 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !873)
!884 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !873)
!885 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !873)
!886 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !873)
!887 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !873)
!888 = !DILocation(line: 911, column: 43, scope: !871)
!889 = !DILocation(line: 912, column: 16, scope: !871)
!890 = !DILocation(line: 912, column: 19, scope: !871)
!891 = !DILocation(line: 912, column: 24, scope: !871)
!892 = !DILocation(line: 912, column: 28, scope: !871)
!893 = !DILocation(line: 912, column: 27, scope: !871)
!894 = !DILocation(line: 911, column: 8, scope: !871)
!895 = !DILocation(line: 913, column: 8, scope: !871)
!896 = distinct !{!896, !894, !895}
!897 = !DILocation(line: 914, column: 12, scope: !871)
!898 = !DILocation(line: 915, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !871, file: !3, line: 914, column: 12)
!900 = !DILocation(line: 919, column: 17, scope: !901)
!901 = distinct !DILexicalBlock(scope: !864, file: !3, line: 918, column: 6)
!902 = !DILocation(line: 920, column: 8, scope: !901)
!903 = !DILocation(line: 0, scope: !901)
!904 = !DILocation(line: 0, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !3, line: 922, column: 3)
!906 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !907)
!907 = distinct !DILocation(line: 920, column: 21, scope: !901)
!908 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !907)
!909 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !907)
!910 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !907)
!911 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !907)
!912 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !907)
!913 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !907)
!914 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !907)
!915 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !907)
!916 = !DILocation(line: 921, column: 8, scope: !901)
!917 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !907)
!918 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !907)
!919 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !907)
!920 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !907)
!921 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !907)
!922 = !DILocation(line: 920, column: 43, scope: !901)
!923 = !DILocation(line: 921, column: 16, scope: !901)
!924 = !DILocation(line: 921, column: 19, scope: !901)
!925 = !DILocation(line: 921, column: 24, scope: !901)
!926 = !DILocation(line: 921, column: 28, scope: !901)
!927 = !DILocation(line: 921, column: 27, scope: !901)
!928 = !DILocation(line: 923, column: 7, scope: !905)
!929 = !DILocation(line: 923, column: 10, scope: !905)
!930 = !DILocation(line: 924, column: 10, scope: !905)
!931 = distinct !{!931, !902, !932}
!932 = !DILocation(line: 925, column: 3, scope: !901)
!933 = !DILocation(line: 926, column: 12, scope: !901)
!934 = !DILocation(line: 927, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !901, file: !3, line: 926, column: 12)
!936 = !DILocation(line: 0, scope: !935)
!937 = !DILocation(line: 928, column: 11, scope: !901)
!938 = !DILocation(line: 929, column: 17, scope: !901)
!939 = !DILocation(line: 930, column: 6, scope: !901)
!940 = !DILocation(line: 934, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !869, file: !3, line: 933, column: 12)
!942 = !DILocation(line: 934, column: 3, scope: !941)
!943 = !DILocation(line: 0, scope: !941)
!944 = !DILocation(line: 935, column: 8, scope: !869)
!945 = !DILocation(line: 936, column: 8, scope: !869)
!946 = !DILocation(line: 0, scope: !947)
!947 = distinct !DILexicalBlock(scope: !869, file: !3, line: 938, column: 3)
!948 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !949)
!949 = distinct !DILocation(line: 936, column: 21, scope: !869)
!950 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !949)
!951 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !949)
!952 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !949)
!953 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !949)
!954 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !949)
!955 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !949)
!956 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !949)
!957 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !949)
!958 = !DILocation(line: 937, column: 8, scope: !869)
!959 = !DILocation(line: 960, column: 12, scope: !869)
!960 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !949)
!961 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !949)
!962 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !949)
!963 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !949)
!964 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !949)
!965 = !DILocation(line: 936, column: 43, scope: !869)
!966 = !DILocation(line: 937, column: 17, scope: !869)
!967 = !DILocation(line: 937, column: 26, scope: !869)
!968 = !DILocation(line: 937, column: 25, scope: !869)
!969 = !DILocation(line: 939, column: 18, scope: !970)
!970 = distinct !DILexicalBlock(scope: !947, file: !3, line: 939, column: 9)
!971 = !DILocation(line: 939, column: 15, scope: !970)
!972 = !DILocation(line: 939, column: 29, scope: !970)
!973 = !DILocation(line: 939, column: 9, scope: !947)
!974 = !DILocation(line: 941, column: 17, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 940, column: 7)
!976 = !DILocation(line: 942, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !3, line: 942, column: 13)
!978 = !DILocation(line: 942, column: 13, scope: !975)
!979 = !DILocation(line: 947, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !970, file: !3, line: 946, column: 7)
!981 = !DILocation(line: 948, column: 19, scope: !982)
!982 = distinct !DILexicalBlock(scope: !980, file: !3, line: 948, column: 13)
!983 = !DILocation(line: 948, column: 13, scope: !980)
!984 = !DILocation(line: 950, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 950, column: 13)
!986 = !DILocation(line: 950, column: 13, scope: !980)
!987 = !DILocation(line: 952, column: 13, scope: !980)
!988 = !DILocation(line: 953, column: 4, scope: !989)
!989 = distinct !DILexicalBlock(scope: !980, file: !3, line: 952, column: 13)
!990 = !DILocation(line: 955, column: 9, scope: !947)
!991 = !DILocation(line: 956, column: 11, scope: !992)
!992 = distinct !DILexicalBlock(scope: !947, file: !3, line: 955, column: 9)
!993 = !DILocation(line: 956, column: 7, scope: !992)
!994 = !DILocation(line: 0, scope: !992)
!995 = !DILocation(line: 957, column: 11, scope: !947)
!996 = !DILocation(line: 958, column: 10, scope: !947)
!997 = distinct !{!997, !945, !998}
!998 = !DILocation(line: 959, column: 3, scope: !869)
!999 = !DILocation(line: 961, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !869, file: !3, line: 960, column: 12)
!1001 = !DILocation(line: 0, scope: !1000)
!1002 = !DILocation(line: 962, column: 12, scope: !869)
!1003 = !DILocation(line: 964, column: 10, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 963, column: 3)
!1005 = distinct !DILexicalBlock(scope: !869, file: !3, line: 962, column: 12)
!1006 = !DILocation(line: 965, column: 14, scope: !1004)
!1007 = !DILocation(line: 966, column: 3, scope: !1004)
!1008 = !DILocation(line: 0, scope: !899)
!1009 = !DILocation(line: 968, column: 4, scope: !298)
!1010 = !DILocation(line: 973, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !297, file: !3, line: 973, column: 8)
!1012 = !DILocation(line: 974, column: 6, scope: !1011)
!1013 = !DILocation(line: 975, column: 10, scope: !297)
!1014 = !DILocation(line: 976, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !297, file: !3, line: 976, column: 4)
!1016 = !DILocation(line: 976, column: 4, scope: !1015)
!1017 = !DILocation(line: 367, column: 11, scope: !355, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 978, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 977, column: 6)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 976, column: 4)
!1021 = !DILocation(line: 361, column: 1, scope: !345, inlinedAt: !1018)
!1022 = !DILocation(line: 367, column: 14, scope: !355, inlinedAt: !1018)
!1023 = !DILocation(line: 367, column: 19, scope: !355, inlinedAt: !1018)
!1024 = !DILocation(line: 367, column: 22, scope: !355, inlinedAt: !1018)
!1025 = !DILocation(line: 367, column: 7, scope: !345, inlinedAt: !1018)
!1026 = !DILocation(line: 371, column: 10, scope: !345, inlinedAt: !1018)
!1027 = !DILocation(line: 368, column: 5, scope: !355, inlinedAt: !1018)
!1028 = !DILocation(line: 373, column: 1, scope: !345, inlinedAt: !1018)
!1029 = !DILocation(line: 983, column: 8, scope: !1019)
!1030 = !DILocation(line: 1073, column: 12, scope: !1019)
!1031 = !DILocation(line: 369, column: 25, scope: !345, inlinedAt: !1018)
!1032 = !DILocation(line: 369, column: 8, scope: !345, inlinedAt: !1018)
!1033 = !DILocation(line: 365, column: 11, scope: !345, inlinedAt: !1018)
!1034 = !DILocation(line: 370, column: 10, scope: !345, inlinedAt: !1018)
!1035 = !DILocation(line: 372, column: 3, scope: !345, inlinedAt: !1018)
!1036 = !DILocation(line: 995, column: 14, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 995, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 984, column: 3)
!1039 = !DILocation(line: 995, column: 9, scope: !1038)
!1040 = !DILocation(line: 998, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 996, column: 7)
!1042 = !DILocation(line: 999, column: 7, scope: !1041)
!1043 = !DILocation(line: 0, scope: !297)
!1044 = !DILocation(line: 1000, column: 15, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1000, column: 9)
!1046 = !DILocation(line: 1000, column: 9, scope: !1038)
!1047 = !DILocation(line: 1001, column: 13, scope: !1045)
!1048 = !DILocation(line: 1001, column: 7, scope: !1045)
!1049 = !DILocation(line: 1003, column: 13, scope: !1045)
!1050 = !DILocation(line: 1014, column: 12, scope: !1038)
!1051 = !DILocation(line: 1015, column: 11, scope: !1038)
!1052 = !DILocation(line: 1016, column: 5, scope: !1038)
!1053 = !DILocation(line: 1021, column: 12, scope: !1038)
!1054 = !DILocation(line: 1022, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1022, column: 9)
!1056 = !DILocation(line: 1022, column: 9, scope: !1038)
!1057 = !DILocation(line: 1024, column: 11, scope: !1038)
!1058 = !DILocation(line: 1025, column: 5, scope: !1038)
!1059 = !DILocation(line: 1041, column: 14, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1041, column: 9)
!1061 = !DILocation(line: 1041, column: 9, scope: !1038)
!1062 = !DILocation(line: 1043, column: 11, scope: !1038)
!1063 = !DILocation(line: 1044, column: 5, scope: !1038)
!1064 = !DILocation(line: 1049, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1049, column: 9)
!1066 = !DILocation(line: 1049, column: 9, scope: !1038)
!1067 = !DILocation(line: 1051, column: 15, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1050, column: 7)
!1069 = !DILocation(line: 1052, column: 15, scope: !1068)
!1070 = !DILocation(line: 1053, column: 9, scope: !1068)
!1071 = !DILocation(line: 1060, column: 16, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1060, column: 9)
!1073 = !DILocation(line: 1060, column: 25, scope: !1072)
!1074 = !DILocation(line: 1060, column: 43, scope: !1072)
!1075 = !DILocation(line: 1060, column: 41, scope: !1072)
!1076 = !DILocation(line: 1060, column: 30, scope: !1072)
!1077 = !DILocation(line: 1060, column: 9, scope: !1038)
!1078 = !DILocation(line: 1063, column: 15, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 1061, column: 7)
!1080 = !DILocation(line: 1064, column: 9, scope: !1079)
!1081 = !DILocation(line: 1073, column: 14, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1073, column: 12)
!1083 = !DILocation(line: 1074, column: 3, scope: !1082)
!1084 = !DILocation(line: 0, scope: !1045)
!1085 = !DILocation(line: 0, scope: !1041)
!1086 = !DILocation(line: 1080, column: 10, scope: !1019)
!1087 = !DILocation(line: 1080, column: 13, scope: !1019)
!1088 = !DILocation(line: 976, column: 30, scope: !1020)
!1089 = !DILocation(line: 976, column: 4, scope: !1020)
!1090 = distinct !{!1090, !1016, !1091}
!1091 = !DILocation(line: 1081, column: 6, scope: !1015)
!1092 = !DILocation(line: 705, column: 9, scope: !386)
!1093 = !DILocation(line: 1090, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !297, file: !3, line: 1090, column: 8)
!1095 = !DILocation(line: 1090, column: 8, scope: !297)
!1096 = !DILocation(line: 1092, column: 14, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1092, column: 12)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1091, column: 6)
!1099 = !DILocation(line: 1092, column: 12, scope: !1098)
!1100 = !DILocation(line: 1093, column: 22, scope: !1097)
!1101 = !DILocation(line: 1093, column: 21, scope: !1097)
!1102 = !DILocation(line: 1093, column: 3, scope: !1097)
!1103 = !DILocation(line: 1096, column: 8, scope: !297)
!1104 = !DILocation(line: 1097, column: 18, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !297, file: !3, line: 1097, column: 8)
!1106 = !DILocation(line: 1100, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 1098, column: 6)
!1108 = !DILocation(line: 1101, column: 6, scope: !1107)
!1109 = !DILocation(line: 0, scope: !1015)
!1110 = !DILocation(line: 1102, column: 15, scope: !296)
!1111 = !DILocation(line: 1102, column: 27, scope: !296)
!1112 = !DILocation(line: 1102, column: 8, scope: !297)
!1113 = !DILocation(line: 1106, column: 11, scope: !295)
!1114 = !DILocation(line: 1107, column: 14, scope: !295)
!1115 = !{i64 (%struct._reent*, i32*, i32**, i32)* @_wcstol_r, i64 (%struct._reent*, i32*, i32**, i32)* @_wcstoul_r}
!1116 = !DILocation(line: 1104, column: 22, scope: !295)
!1117 = !DILocation(line: 1108, column: 18, scope: !304)
!1118 = !DILocation(line: 1108, column: 12, scope: !295)
!1119 = !DILocation(line: 1110, column: 17, scope: !303)
!1120 = !DILocation(line: 1110, column: 12, scope: !303)
!1121 = !DILocation(line: 1120, column: 13, scope: !303)
!1122 = !DILocation(line: 1120, column: 11, scope: !303)
!1123 = !{!358, !358, i64 0}
!1124 = !DILocation(line: 1121, column: 3, scope: !303)
!1125 = !DILocation(line: 1123, column: 23, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !304, file: !3, line: 1123, column: 17)
!1127 = !DILocation(line: 1123, column: 17, scope: !304)
!1128 = !DILocation(line: 1125, column: 10, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1124, column: 3)
!1130 = !DILocation(line: 1126, column: 11, scope: !1129)
!1131 = !DILocation(line: 1126, column: 9, scope: !1129)
!1132 = !DILocation(line: 1127, column: 3, scope: !1129)
!1133 = !DILocation(line: 1129, column: 23, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1129, column: 17)
!1135 = !DILocation(line: 1129, column: 17, scope: !1126)
!1136 = !DILocation(line: 1131, column: 10, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1130, column: 3)
!1138 = !DILocation(line: 1132, column: 11, scope: !1137)
!1139 = !DILocation(line: 1132, column: 9, scope: !1137)
!1140 = !DILocation(line: 1133, column: 3, scope: !1137)
!1141 = !DILocation(line: 1134, column: 23, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1134, column: 17)
!1143 = !DILocation(line: 0, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1152, column: 3)
!1145 = !DILocation(line: 1134, column: 17, scope: !1134)
!1146 = !DILocation(line: 0, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1135, column: 3)
!1148 = !DILocation(line: 1136, column: 10, scope: !1147)
!1149 = !DILocation(line: 1137, column: 9, scope: !1147)
!1150 = !DILocation(line: 1138, column: 3, scope: !1147)
!1151 = !DILocation(line: 1153, column: 10, scope: !1144)
!1152 = !DILocation(line: 1154, column: 11, scope: !1144)
!1153 = !DILocation(line: 1154, column: 9, scope: !1144)
!1154 = !DILocation(line: 1156, column: 17, scope: !295)
!1155 = !DILocation(line: 1157, column: 6, scope: !295)
!1156 = !DILocation(line: 1158, column: 15, scope: !297)
!1157 = !DILocation(line: 1158, column: 10, scope: !297)
!1158 = !DILocation(line: 1159, column: 4, scope: !297)
!1159 = !DILocation(line: 0, scope: !298)
!1160 = !DILocation(line: 1480, column: 10, scope: !2)
!1161 = !DILocation(line: 1480, column: 20, scope: !2)
!1162 = !DILocation(line: 1480, column: 29, scope: !2)
!1163 = !{!357, !359, i64 16}
!1164 = !DILocation(line: 1480, column: 36, scope: !2)
!1165 = !DILocation(line: 1486, column: 1, scope: !2)
!1166 = distinct !DISubprogram(name: "_sungetwc_r", scope: !3, file: !3, line: 301, type: !1167, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!86, !7, !86, !226}
!1169 = !{!1170, !1171, !1172}
!1170 = !DILocalVariable(name: "data", arg: 1, scope: !1166, file: !3, line: 301, type: !7)
!1171 = !DILocalVariable(name: "wc", arg: 2, scope: !1166, file: !3, line: 301, type: !86)
!1172 = !DILocalVariable(name: "fp", arg: 3, scope: !1166, file: !3, line: 301, type: !226)
!1173 = !DILocation(line: 301, column: 1, scope: !1166)
!1174 = !DILocation(line: 306, column: 10, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 306, column: 7)
!1176 = !DILocation(line: 306, column: 7, scope: !1166)
!1177 = !DILocation(line: 310, column: 7, scope: !1166)
!1178 = !DILocation(line: 310, column: 14, scope: !1166)
!1179 = !DILocation(line: 317, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 317, column: 7)
!1181 = !{!357, !358, i64 88}
!1182 = !DILocation(line: 317, column: 7, scope: !1166)
!1183 = !DILocation(line: 319, column: 15, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 319, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 318, column: 5)
!1186 = !DILocation(line: 319, column: 29, scope: !1184)
!1187 = !{!357, !333, i64 96}
!1188 = !DILocation(line: 319, column: 18, scope: !1184)
!1189 = !DILocation(line: 319, column: 35, scope: !1184)
!1190 = !DILocation(line: 319, column: 38, scope: !1184)
!1191 = !DILocation(line: 319, column: 11, scope: !1185)
!1192 = !DILocation(line: 323, column: 11, scope: !1185)
!1193 = !DILocation(line: 323, column: 14, scope: !1185)
!1194 = !DILocation(line: 324, column: 17, scope: !1185)
!1195 = !DILocation(line: 324, column: 15, scope: !1185)
!1196 = !DILocation(line: 325, column: 14, scope: !1185)
!1197 = !DILocation(line: 326, column: 7, scope: !1185)
!1198 = !DILocation(line: 335, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 335, column: 7)
!1200 = !{!357, !358, i64 24}
!1201 = !DILocation(line: 335, column: 21, scope: !1199)
!1202 = !DILocation(line: 335, column: 29, scope: !1199)
!1203 = !DILocation(line: 349, column: 17, scope: !1166)
!1204 = !DILocation(line: 335, column: 36, scope: !1199)
!1205 = !DILocation(line: 335, column: 39, scope: !1199)
!1206 = !DILocation(line: 336, column: 7, scope: !1199)
!1207 = !DILocation(line: 336, column: 10, scope: !1199)
!1208 = !DILocation(line: 336, column: 34, scope: !1199)
!1209 = !DILocation(line: 335, column: 7, scope: !1166)
!1210 = !DILocation(line: 338, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 337, column: 5)
!1212 = !DILocation(line: 339, column: 11, scope: !1211)
!1213 = !DILocation(line: 339, column: 14, scope: !1211)
!1214 = !DILocation(line: 340, column: 7, scope: !1211)
!1215 = !DILocation(line: 348, column: 17, scope: !1166)
!1216 = !DILocation(line: 348, column: 7, scope: !1166)
!1217 = !DILocation(line: 348, column: 11, scope: !1166)
!1218 = !{!357, !333, i64 112}
!1219 = !DILocation(line: 349, column: 7, scope: !1166)
!1220 = !DILocation(line: 349, column: 11, scope: !1166)
!1221 = !{!357, !358, i64 104}
!1222 = !DILocation(line: 350, column: 19, scope: !1166)
!1223 = !DILocation(line: 350, column: 17, scope: !1166)
!1224 = !DILocation(line: 351, column: 11, scope: !1166)
!1225 = !DILocation(line: 351, column: 17, scope: !1166)
!1226 = !DILocation(line: 352, column: 13, scope: !1166)
!1227 = !DILocation(line: 352, column: 10, scope: !1166)
!1228 = !DILocation(line: 353, column: 3, scope: !1166)
!1229 = !DILocation(line: 353, column: 23, scope: !1166)
!1230 = !DILocation(line: 354, column: 10, scope: !1166)
!1231 = !DILocation(line: 355, column: 3, scope: !1166)
!1232 = !DILocation(line: 0, scope: !1175)
!1233 = !DILocation(line: 356, column: 1, scope: !1166)
