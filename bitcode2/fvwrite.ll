; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c"
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
%struct.__suio = type { %struct.__siov*, i32, i64 }
%struct.__siov = type { i8*, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__sfvwrite_r(%struct._reent*, %struct.__sFILE*, %struct.__suio* nocapture) local_unnamed_addr #0 !dbg !17 {
  %4 = getelementptr inbounds %struct.__suio, %struct.__suio* %2, i64 0, i32 2, !dbg !277
  %5 = load i64, i64* %4, align 8, !dbg !277, !tbaa !279
  %6 = icmp eq i64 %5, 0, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  br i1 %6, label %296, label %7, !dbg !288

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !289
  %9 = load i16, i16* %8, align 8, !dbg !289, !tbaa !291
  %10 = and i16 %9, 8, !dbg !289
  %11 = icmp eq i16 %10, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %11, label %16, label %12, !dbg !289

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !289
  %14 = load i8*, i8** %13, align 8, !dbg !289, !tbaa !296
  %15 = icmp eq i8* %14, null, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %15, label %16, label %21, !dbg !289

; <label>:16:                                     ; preds = %12, %7
  %17 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !289
  %18 = icmp eq i32 %17, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %18, label %19, label %296, !dbg !297

; <label>:19:                                     ; preds = %16
  %20 = load i16, i16* %8, align 8, !dbg !298, !tbaa !291
  br label %21, !dbg !297

; <label>:21:                                     ; preds = %19, %12
  %22 = phi i16 [ %20, %19 ], [ %9, %12 ], !dbg !298
  %23 = getelementptr inbounds %struct.__suio, %struct.__suio* %2, i64 0, i32 0, !dbg !299
  %24 = load %struct.__siov*, %struct.__siov** %23, align 8, !dbg !299, !tbaa !300
  %25 = sext i16 %22 to i32, !dbg !302
  %26 = and i32 %25, 2, !dbg !303
  %27 = icmp eq i32 %26, 0, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br i1 %27, label %62, label %28, !dbg !304

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %31, !dbg !305

; <label>:31:                                     ; preds = %28, %56
  %32 = phi %struct.__siov* [ %46, %56 ], [ %24, %28 ], !dbg !308
  %33 = phi i8* [ %57, %56 ], [ null, %28 ], !dbg !309
  %34 = phi i64 [ %58, %56 ], [ 0, %28 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  %35 = icmp eq i64 %34, 0, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %35, label %36, label %45, !dbg !305

; <label>:36:                                     ; preds = %31, %36
  %37 = phi %struct.__siov* [ %40, %36 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 0, i32 1, !dbg !310
  %39 = load i64, i64* %38, align 8, !dbg !310, !tbaa !312
  %40 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 1, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  %41 = icmp eq i64 %39, 0, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %41, label %36, label %42, !dbg !305, !llvm.loop !314

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 0, i32 0, !dbg !310
  %44 = load i8*, i8** %43, align 8, !dbg !310, !tbaa !315
  br label %45, !dbg !305

; <label>:45:                                     ; preds = %42, %31
  %46 = phi %struct.__siov* [ %40, %42 ], [ %32, %31 ], !dbg !316
  %47 = phi i8* [ %44, %42 ], [ %33, %31 ], !dbg !316
  %48 = phi i64 [ %39, %42 ], [ %34, %31 ], !dbg !316
  %49 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %29, align 8, !dbg !317, !tbaa !318
  %50 = load i8*, i8** %30, align 8, !dbg !319, !tbaa !320
  %51 = icmp ult i64 %48, 2147482624, !dbg !321
  %52 = select i1 %51, i64 %48, i64 2147482624, !dbg !321
  %53 = trunc i64 %52 to i32, !dbg !321
  %54 = tail call i64 %49(%struct._reent* %0, i8* %50, i8* %47, i32 %53) #3, !dbg !322
  %55 = icmp slt i64 %54, 1, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %55, label %293, label %56, !dbg !326

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %47, i64 %54, !dbg !327
  %58 = sub i64 %48, %54, !dbg !328
  %59 = load i64, i64* %4, align 8, !dbg !329, !tbaa !279
  %60 = sub i64 %59, %54, !dbg !329
  store i64 %60, i64* %4, align 8, !dbg !329, !tbaa !279
  %61 = icmp eq i64 %60, 0, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %61, label %296, label %31, !dbg !331, !llvm.loop !332

; <label>:62:                                     ; preds = %21
  %63 = and i32 %25, 1, !dbg !335
  %64 = icmp eq i32 %63, 0, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %64, label %65, label %200, !dbg !337

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  %72 = bitcast %struct.__sFILE* %1 to i64*
  %73 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5
  %74 = getelementptr inbounds %struct.__sbuf, %struct.__sbuf* %73, i64 0, i32 0
  %75 = bitcast %struct.__sbuf* %73 to i64*
  br label %76, !dbg !338

; <label>:76:                                     ; preds = %65, %193
  %77 = phi %struct.__siov* [ %91, %193 ], [ %24, %65 ], !dbg !308
  %78 = phi i8* [ %195, %193 ], [ null, %65 ], !dbg !339
  %79 = phi i64 [ %196, %193 ], [ 0, %65 ], !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %80 = icmp eq i64 %79, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %80, label %81, label %90, !dbg !338

; <label>:81:                                     ; preds = %76, %81
  %82 = phi %struct.__siov* [ %85, %81 ], [ %77, %76 ]
  %83 = getelementptr inbounds %struct.__siov, %struct.__siov* %82, i64 0, i32 1, !dbg !340
  %84 = load i64, i64* %83, align 8, !dbg !340, !tbaa !312
  %85 = getelementptr inbounds %struct.__siov, %struct.__siov* %82, i64 1, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %86 = icmp eq i64 %84, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %86, label %81, label %87, !dbg !338, !llvm.loop !342

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds %struct.__siov, %struct.__siov* %82, i64 0, i32 0, !dbg !340
  %89 = load i8*, i8** %88, align 8, !dbg !340, !tbaa !315
  br label %90, !dbg !338

; <label>:90:                                     ; preds = %87, %76
  %91 = phi %struct.__siov* [ %85, %87 ], [ %77, %76 ], !dbg !343
  %92 = phi i8* [ %89, %87 ], [ %78, %76 ], !dbg !343
  %93 = phi i64 [ %84, %87 ], [ %79, %76 ], !dbg !343
  %94 = load i32, i32* %66, align 4, !dbg !344, !tbaa !345
  %95 = sext i32 %94 to i64, !dbg !346
  %96 = load i16, i16* %8, align 8, !dbg !347, !tbaa !291
  %97 = sext i16 %96 to i32, !dbg !348
  %98 = and i32 %97, 512, !dbg !349
  %99 = icmp eq i32 %98, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %99, label %162, label %100, !dbg !350

; <label>:100:                                    ; preds = %90
  %101 = icmp ult i64 %93, %95, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %101, label %149, label %102, !dbg !352

; <label>:102:                                    ; preds = %100
  %103 = and i32 %97, 1152, !dbg !353
  %104 = icmp eq i32 %103, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %104, label %149, label %105, !dbg !354

; <label>:105:                                    ; preds = %102
  %106 = load i64, i64* %72, align 8, !dbg !355, !tbaa !356
  %107 = load i64, i64* %75, align 8, !dbg !357, !tbaa !296
  %108 = sub i64 %106, %107, !dbg !358
  %109 = trunc i64 %108 to i32, !dbg !359
  %110 = load i32, i32* %69, align 8, !dbg !361, !tbaa !362
  %111 = mul nsw i32 %110, 3, !dbg !363
  %112 = sdiv i32 %111, 2, !dbg !364
  %113 = sext i32 %112 to i64, !dbg !366
  %114 = shl i64 %108, 32, !dbg !368
  %115 = ashr exact i64 %114, 32, !dbg !368
  %116 = add i64 %93, 1, !dbg !369
  %117 = add i64 %116, %115, !dbg !370
  %118 = icmp ugt i64 %117, %113, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %119 = inttoptr i64 %107 to i8*, !dbg !372
  br i1 %118, label %120, label %122, !dbg !372

; <label>:120:                                    ; preds = %105
  %121 = trunc i64 %117 to i32, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br label %122, !dbg !374

; <label>:122:                                    ; preds = %120, %105
  %123 = phi i32 [ %121, %120 ], [ %112, %105 ], !dbg !375
  %124 = and i16 %96, 1024, !dbg !376
  %125 = icmp eq i16 %124, 0, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  %126 = sext i32 %123 to i64, !dbg !379
  br i1 %125, label %136, label %127, !dbg !378

; <label>:127:                                    ; preds = %122
  %128 = tail call i8* @malloc(i64 %126) #3, !dbg !381
  %129 = icmp eq i8* %128, null, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %129, label %143, label %130, !dbg !385

; <label>:130:                                    ; preds = %127
  %131 = load i8*, i8** %74, align 8, !dbg !386, !tbaa !296
  %132 = tail call i8* @memcpy(i8* nonnull %128, i8* %131, i64 %115) #3, !dbg !387
  %133 = load i16, i16* %8, align 8, !dbg !388, !tbaa !291
  %134 = and i16 %133, -1153, !dbg !389
  %135 = or i16 %134, 128, !dbg !390
  store i16 %135, i16* %8, align 8, !dbg !391, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br label %145, !dbg !392

; <label>:136:                                    ; preds = %122
  %137 = tail call i8* @realloc(i8* %119, i64 %126) #3, !dbg !393
  %138 = icmp eq i8* %137, null, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %138, label %139, label %145, !dbg !397

; <label>:139:                                    ; preds = %136
  %140 = load i8*, i8** %74, align 8, !dbg !398, !tbaa !296
  tail call void @free(i8* %140) #3, !dbg !398
  %141 = load i16, i16* %8, align 8, !dbg !400, !tbaa !291
  %142 = and i16 %141, -129, !dbg !400
  store i16 %142, i16* %8, align 8, !dbg !400, !tbaa !291
  br label %143, !dbg !401

; <label>:143:                                    ; preds = %127, %139
  %144 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !402
  store i32 12, i32* %144, align 8, !dbg !402, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %293

; <label>:145:                                    ; preds = %130, %136
  %146 = phi i8* [ %128, %130 ], [ %137, %136 ], !dbg !408
  store i8* %146, i8** %74, align 8, !dbg !409, !tbaa !296
  %147 = getelementptr inbounds i8, i8* %146, i64 %115, !dbg !410
  store i8* %147, i8** %67, align 8, !dbg !411, !tbaa !356
  store i32 %123, i32* %69, align 8, !dbg !412, !tbaa !362
  %148 = sub nsw i32 %123, %109, !dbg !413
  store i32 %148, i32* %66, align 4, !dbg !414, !tbaa !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %149

; <label>:149:                                    ; preds = %145, %102, %100
  %150 = phi i64 [ %93, %145 ], [ %95, %102 ], [ %95, %100 ], !dbg !339
  %151 = icmp ult i64 %93, %150, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %151, label %152, label %153, !dbg !418

; <label>:152:                                    ; preds = %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br label %153, !dbg !419

; <label>:153:                                    ; preds = %152, %149
  %154 = phi i64 [ %93, %152 ], [ %150, %149 ], !dbg !375
  %155 = load i8*, i8** %67, align 8, !dbg !420, !tbaa !356
  %156 = tail call i8* @memmove(i8* %155, i8* %92, i64 %154) #3, !dbg !420
  %157 = load i32, i32* %66, align 4, !dbg !421, !tbaa !345
  %158 = trunc i64 %154 to i32, !dbg !421
  %159 = sub i32 %157, %158, !dbg !421
  store i32 %159, i32* %66, align 4, !dbg !421, !tbaa !345
  %160 = load i8*, i8** %67, align 8, !dbg !422, !tbaa !356
  %161 = getelementptr inbounds i8, i8* %160, i64 %154, !dbg !422
  store i8* %161, i8** %67, align 8, !dbg !422, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br label %193, !dbg !423

; <label>:162:                                    ; preds = %90
  %163 = load i8*, i8** %67, align 8, !dbg !424, !tbaa !356
  %164 = load i8*, i8** %68, align 8, !dbg !426, !tbaa !296
  %165 = icmp ugt i8* %163, %164, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %165, label %170, label %166, !dbg !428

; <label>:166:                                    ; preds = %162
  %167 = load i32, i32* %69, align 8, !dbg !429, !tbaa !362
  %168 = sext i32 %167 to i64, !dbg !430
  %169 = icmp ult i64 %93, %168, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %169, label %170, label %183, !dbg !432

; <label>:170:                                    ; preds = %166, %162
  %171 = icmp ult i64 %93, %95, !dbg !433
  %172 = select i1 %171, i64 %93, i64 %95, !dbg !433
  %173 = tail call i8* @memmove(i8* %163, i8* %92, i64 %172) #3, !dbg !435
  %174 = load i32, i32* %66, align 4, !dbg !436, !tbaa !345
  %175 = trunc i64 %172 to i32, !dbg !436
  %176 = sub i32 %174, %175, !dbg !436
  store i32 %176, i32* %66, align 4, !dbg !436, !tbaa !345
  %177 = load i8*, i8** %67, align 8, !dbg !437, !tbaa !356
  %178 = getelementptr inbounds i8, i8* %177, i64 %172, !dbg !437
  store i8* %178, i8** %67, align 8, !dbg !437, !tbaa !356
  %179 = icmp eq i32 %176, 0, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %179, label %180, label %193, !dbg !440

; <label>:180:                                    ; preds = %170
  %181 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !441
  %182 = icmp eq i32 %181, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %182, label %193, label %293, !dbg !442

; <label>:183:                                    ; preds = %166
  %184 = icmp ult i64 %93, 2147483647, !dbg !443
  %185 = select i1 %184, i64 %93, i64 2147483647, !dbg !443
  %186 = trunc i64 %185 to i32, !dbg !445
  %187 = srem i32 %186, %167, !dbg !446
  %188 = sub nsw i32 %186, %187, !dbg !446
  %189 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %70, align 8, !dbg !447, !tbaa !318
  %190 = load i8*, i8** %71, align 8, !dbg !448, !tbaa !320
  %191 = tail call i64 %189(%struct._reent* %0, i8* %190, i8* %92, i32 %188) #3, !dbg !449
  %192 = icmp slt i64 %191, 1, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br i1 %192, label %293, label %193, !dbg !452

; <label>:193:                                    ; preds = %180, %170, %183, %153
  %194 = phi i64 [ %93, %153 ], [ %172, %180 ], [ %172, %170 ], [ %191, %183 ], !dbg !453
  %195 = getelementptr inbounds i8, i8* %92, i64 %194, !dbg !454
  %196 = sub i64 %93, %194, !dbg !455
  %197 = load i64, i64* %4, align 8, !dbg !456, !tbaa !279
  %198 = sub i64 %197, %194, !dbg !456
  store i64 %198, i64* %4, align 8, !dbg !456, !tbaa !279
  %199 = icmp eq i64 %198, 0, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %199, label %296, label %76, !dbg !458, !llvm.loop !459

; <label>:200:                                    ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %201 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2
  %202 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1
  %203 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %204 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0
  %205 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %206 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %207, !dbg !464

; <label>:207:                                    ; preds = %286, %200
  %208 = phi %struct.__siov* [ %24, %200 ], [ %240, %286 ], !dbg !308
  %209 = phi i8* [ null, %200 ], [ %288, %286 ], !dbg !466
  %210 = phi i64 [ 0, %200 ], [ %289, %286 ], !dbg !466
  %211 = phi i32 [ 0, %200 ], [ %287, %286 ], !dbg !468
  %212 = phi i64 [ 0, %200 ], [ %279, %286 ], !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %213 = icmp eq i64 %210, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %213, label %214, label %223, !dbg !472

; <label>:214:                                    ; preds = %207, %214
  %215 = phi %struct.__siov* [ %218, %214 ], [ %208, %207 ]
  %216 = getelementptr inbounds %struct.__siov, %struct.__siov* %215, i64 0, i32 1, !dbg !473
  %217 = load i64, i64* %216, align 8, !dbg !473, !tbaa !312
  %218 = getelementptr inbounds %struct.__siov, %struct.__siov* %215, i64 1, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %219 = icmp eq i64 %217, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %219, label %214, label %220, !dbg !472, !llvm.loop !475

; <label>:220:                                    ; preds = %214
  %221 = getelementptr inbounds %struct.__siov, %struct.__siov* %215, i64 0, i32 0, !dbg !473
  %222 = load i8*, i8** %221, align 8, !dbg !473, !tbaa !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br label %225, !dbg !476

; <label>:223:                                    ; preds = %207
  %224 = icmp eq i32 %211, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %224, label %225, label %237, !dbg !476

; <label>:225:                                    ; preds = %220, %223
  %226 = phi i64 [ %217, %220 ], [ %210, %223 ]
  %227 = phi i8* [ %222, %220 ], [ %209, %223 ]
  %228 = phi %struct.__siov* [ %218, %220 ], [ %208, %223 ]
  %229 = tail call i8* @memchr(i8* %227, i32 10, i64 %226) #3, !dbg !479
  %230 = icmp eq i8* %229, null, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  %231 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !483
  %232 = ptrtoint i8* %231 to i64, !dbg !484
  %233 = ptrtoint i8* %227 to i64, !dbg !484
  %234 = sub i64 %232, %233, !dbg !484
  %235 = add i64 %226, 1, !dbg !485
  %236 = select i1 %230, i64 %235, i64 %234, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br label %237, !dbg !486

; <label>:237:                                    ; preds = %223, %225
  %238 = phi i64 [ %210, %223 ], [ %226, %225 ]
  %239 = phi i8* [ %209, %223 ], [ %227, %225 ]
  %240 = phi %struct.__siov* [ %208, %223 ], [ %228, %225 ]
  %241 = phi i32 [ %211, %223 ], [ 1, %225 ], !dbg !487
  %242 = phi i64 [ %212, %223 ], [ %236, %225 ], !dbg !487
  %243 = shl i64 %242, 32, !dbg !488
  %244 = ashr exact i64 %243, 32, !dbg !488
  %245 = icmp ult i64 %238, %244, !dbg !488
  %246 = select i1 %245, i64 %238, i64 %244, !dbg !488
  %247 = load i32, i32* %201, align 4, !dbg !490, !tbaa !345
  %248 = load i32, i32* %202, align 8, !dbg !491, !tbaa !362
  %249 = add nsw i32 %248, %247, !dbg !492
  %250 = sext i32 %249 to i64, !dbg !493
  %251 = load i8*, i8** %203, align 8, !dbg !494, !tbaa !356
  %252 = load i8*, i8** %204, align 8, !dbg !496, !tbaa !296
  %253 = icmp ugt i8* %251, %252, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %253, label %254, label %262, !dbg !498

; <label>:254:                                    ; preds = %237
  %255 = icmp sgt i64 %246, %250, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %255, label %256, label %262, !dbg !500

; <label>:256:                                    ; preds = %254
  %257 = tail call i8* @memmove(i8* %251, i8* %239, i64 %250) #3, !dbg !501
  %258 = load i8*, i8** %203, align 8, !dbg !503, !tbaa !356
  %259 = getelementptr inbounds i8, i8* %258, i64 %250, !dbg !503
  store i8* %259, i8** %203, align 8, !dbg !503, !tbaa !356
  %260 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !504
  %261 = icmp eq i32 %260, 0, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br i1 %261, label %277, label %293, !dbg !506

; <label>:262:                                    ; preds = %254, %237
  %263 = sext i32 %248 to i64, !dbg !507
  %264 = icmp slt i64 %246, %263, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %264, label %270, label %265, !dbg !510

; <label>:265:                                    ; preds = %262
  %266 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %205, align 8, !dbg !511, !tbaa !318
  %267 = load i8*, i8** %206, align 8, !dbg !513, !tbaa !320
  %268 = tail call i64 %266(%struct._reent* %0, i8* %267, i8* %239, i32 %248) #3, !dbg !514
  %269 = icmp slt i64 %268, 1, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %269, label %293, label %277, !dbg !517

; <label>:270:                                    ; preds = %262
  %271 = tail call i8* @memmove(i8* %251, i8* %239, i64 %246) #3, !dbg !518
  %272 = load i32, i32* %201, align 4, !dbg !520, !tbaa !345
  %273 = trunc i64 %246 to i32, !dbg !520
  %274 = sub i32 %272, %273, !dbg !520
  store i32 %274, i32* %201, align 4, !dbg !520, !tbaa !345
  %275 = load i8*, i8** %203, align 8, !dbg !521, !tbaa !356
  %276 = getelementptr inbounds i8, i8* %275, i64 %246, !dbg !521
  store i8* %276, i8** %203, align 8, !dbg !521, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:277:                                    ; preds = %256, %270, %265
  %278 = phi i64 [ %250, %256 ], [ %268, %265 ], [ %246, %270 ], !dbg !522
  %279 = sub nsw i64 %244, %278, !dbg !523
  %280 = trunc i64 %279 to i32, !dbg !523
  %281 = icmp eq i32 %280, 0, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br i1 %281, label %282, label %286, !dbg !525

; <label>:282:                                    ; preds = %277
  %283 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !526
  %284 = icmp eq i32 %283, 0, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %284, label %285, label %293, !dbg !528

; <label>:285:                                    ; preds = %282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br label %286, !dbg !529

; <label>:286:                                    ; preds = %285, %277
  %287 = phi i32 [ 0, %285 ], [ %241, %277 ], !dbg !530
  %288 = getelementptr inbounds i8, i8* %239, i64 %278, !dbg !531
  %289 = sub i64 %238, %278, !dbg !532
  %290 = load i64, i64* %4, align 8, !dbg !533, !tbaa !279
  %291 = sub i64 %290, %278, !dbg !533
  store i64 %291, i64* %4, align 8, !dbg !533, !tbaa !279
  %292 = icmp eq i64 %291, 0, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  br i1 %292, label %296, label %207, !dbg !535, !llvm.loop !536

; <label>:293:                                    ; preds = %45, %256, %282, %265, %180, %183, %143
  %294 = load i16, i16* %8, align 8, !dbg !538, !tbaa !291
  %295 = or i16 %294, 64, !dbg !538
  store i16 %295, i16* %8, align 8, !dbg !538, !tbaa !291
  br label %296, !dbg !539

; <label>:296:                                    ; preds = %56, %286, %193, %16, %3, %293
  %297 = phi i32 [ -1, %293 ], [ 0, %3 ], [ -1, %16 ], [ 0, %193 ], [ 0, %286 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret i32 %297, !dbg !541
}

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !12}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 40, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !10, line: 129, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "__sfvwrite_r", scope: !1, file: !1, line: 48, type: !18, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !252)
!18 = !DISubroutineType(types: !19)
!19 = !{!12, !20, !235, !238}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !22, line: 569, size: 14912, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !25, !103, !104, !105, !106, !110, !111, !114, !115, !119, !131, !132, !133, !135, !136, !137, !199, !220, !221, !226, !233}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !21, file: !22, line: 571, baseType: !12, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !22, line: 287, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !22, line: 181, size: 1408, elements: !29)
!29 = !{!30, !31, !32, !33, !35, !36, !41, !42, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !28, file: !22, line: 182, baseType: !5, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !28, file: !22, line: 183, baseType: !12, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !28, file: !22, line: 184, baseType: !12, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !22, line: 185, baseType: !34, size: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !28, file: !22, line: 186, baseType: !34, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !28, file: !22, line: 187, baseType: !37, size: 128, offset: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !22, line: 117, size: 128, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !22, line: 118, baseType: !5, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !22, line: 119, baseType: !12, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !28, file: !22, line: 188, baseType: !12, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !28, file: !22, line: 195, baseType: !4, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !28, file: !22, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !20, !4, !49, !12}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !10, line: 145, baseType: !48)
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !28, file: !22, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !20, !4, !55, !12}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !28, file: !22, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !20, !4, !61, !12}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !10, line: 114, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !28, file: !22, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!12, !20, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !28, file: !22, line: 206, baseType: !37, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !28, file: !22, line: 207, baseType: !5, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !28, file: !22, line: 208, baseType: !12, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !28, file: !22, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !28, file: !22, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !28, file: !22, line: 215, baseType: !37, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !28, file: !22, line: 218, baseType: !12, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !22, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !10, line: 44, baseType: !48)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !28, file: !22, line: 222, baseType: !20, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !22, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !10, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !12)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !28, file: !22, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !10, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !10, line: 165, baseType: !12, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !10, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !10, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !10, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !10, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !22, line: 229, baseType: !12, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !21, file: !22, line: 578, baseType: !12, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !21, file: !22, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !21, file: !22, line: 582, baseType: !12, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !21, file: !22, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !22, line: 40, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !21, file: !22, line: 585, baseType: !12, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !21, file: !22, line: 587, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !20}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !21, file: !22, line: 590, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !22, line: 47, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !121, file: !22, line: 49, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !121, file: !22, line: 51, baseType: !129, size: 32, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !75)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !22, line: 25, baseType: !97)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !21, file: !22, line: 591, baseType: !12, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !21, file: !22, line: 592, baseType: !120, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !21, file: !22, line: 593, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !21, file: !22, line: 596, baseType: !12, size: 32, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !21, file: !22, line: 597, baseType: !49, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !21, file: !22, line: 632, baseType: !138, size: 2880, offset: 1152)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !22, line: 599, size: 2880, elements: !139)
!139 = !{!140, !190}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !138, file: !22, line: 622, baseType: !141, size: 1728)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !22, line: 601, size: 1728, elements: !142)
!142 = !{!143, !144, !145, !149, !161, !162, !164, !172, !173, !174, !175, !179, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !141, file: !22, line: 603, baseType: !97, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !141, file: !22, line: 604, baseType: !49, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !141, file: !22, line: 605, baseType: !146, size: 208, offset: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 26)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !141, file: !22, line: 606, baseType: !150, size: 288, offset: 352)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !22, line: 55, size: 288, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !150, file: !22, line: 57, baseType: !12, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !150, file: !22, line: 58, baseType: !12, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !150, file: !22, line: 59, baseType: !12, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !150, file: !22, line: 60, baseType: !12, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !150, file: !22, line: 61, baseType: !12, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !150, file: !22, line: 62, baseType: !12, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !150, file: !22, line: 63, baseType: !12, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !150, file: !22, line: 64, baseType: !12, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !150, file: !22, line: 65, baseType: !12, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !141, file: !22, line: 607, baseType: !12, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !141, file: !22, line: 608, baseType: !163, size: 64, offset: 704)
!163 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !141, file: !22, line: 609, baseType: !165, size: 112, offset: 768)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !22, line: 319, size: 112, elements: !166)
!166 = !{!167, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !165, file: !22, line: 320, baseType: !168, size: 48)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !71)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !165, file: !22, line: 321, baseType: !168, size: 48, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !165, file: !22, line: 322, baseType: !169, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !141, file: !22, line: 610, baseType: !87, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !141, file: !22, line: 611, baseType: !87, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !141, file: !22, line: 612, baseType: !87, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !141, file: !22, line: 613, baseType: !176, size: 64, offset: 1088)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !141, file: !22, line: 614, baseType: !180, size: 192, offset: 1152)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !141, file: !22, line: 615, baseType: !12, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !141, file: !22, line: 616, baseType: !87, size: 64, offset: 1376)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !141, file: !22, line: 617, baseType: !87, size: 64, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !141, file: !22, line: 618, baseType: !87, size: 64, offset: 1504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !141, file: !22, line: 619, baseType: !87, size: 64, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !141, file: !22, line: 620, baseType: !87, size: 64, offset: 1632)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !141, file: !22, line: 621, baseType: !12, size: 32, offset: 1696)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !138, file: !22, line: 631, baseType: !191, size: 2880)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !22, line: 626, size: 2880, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !191, file: !22, line: 629, baseType: !194, size: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1920, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !191, file: !22, line: 630, baseType: !198, size: 960, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !21, file: !22, line: 636, baseType: !200, size: 64, offset: 4032)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !22, line: 93, size: 6336, elements: !202)
!202 = !{!203, !204, !205, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !22, line: 94, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !201, file: !22, line: 95, baseType: !12, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !201, file: !22, line: 97, baseType: !206, size: 2048, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2048, elements: !210)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{!211}
!211 = !DISubrange(count: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !201, file: !22, line: 98, baseType: !213, size: 4160, offset: 2176)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !22, line: 74, size: 4160, elements: !214)
!214 = !{!215, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !213, file: !22, line: 75, baseType: !216, size: 2048)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !210)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !213, file: !22, line: 76, baseType: !216, size: 2048, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !213, file: !22, line: 78, baseType: !130, size: 32, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !213, file: !22, line: 81, baseType: !130, size: 32, offset: 4128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !21, file: !22, line: 637, baseType: !201, size: 6336, offset: 4096)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !21, file: !22, line: 641, baseType: !222, size: 64, offset: 10432)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !12}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !21, file: !22, line: 646, baseType: !227, size: 192, offset: 10496)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !22, line: 291, size: 192, elements: !228)
!228 = !{!229, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !227, file: !22, line: 293, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !227, file: !22, line: 294, baseType: !12, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !227, file: !22, line: 295, baseType: !26, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !21, file: !22, line: 648, baseType: !234, size: 4224, offset: 10688)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4224, elements: !71)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !237, line: 66, baseType: !27)
!237 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__suio", file: !240, line: 28, size: 192, elements: !241)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !{!242, !250, !251}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uio_iov", scope: !239, file: !240, line: 29, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__siov", file: !240, line: 24, size: 128, elements: !245)
!245 = !{!246, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !244, file: !240, line: 25, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !244, file: !240, line: 26, baseType: !7, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uio_iovcnt", scope: !239, file: !240, line: 30, baseType: !12, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uio_resid", scope: !239, file: !240, line: 31, baseType: !7, size: 64, offset: 128)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !273, !274}
!253 = !DILocalVariable(name: "ptr", arg: 1, scope: !17, file: !1, line: 48, type: !20)
!254 = !DILocalVariable(name: "fp", arg: 2, scope: !17, file: !1, line: 48, type: !235)
!255 = !DILocalVariable(name: "uio", arg: 3, scope: !17, file: !1, line: 48, type: !238)
!256 = !DILocalVariable(name: "len", scope: !17, file: !1, line: 53, type: !7)
!257 = !DILocalVariable(name: "p", scope: !17, file: !1, line: 54, type: !55)
!258 = !DILocalVariable(name: "iov", scope: !17, file: !1, line: 55, type: !243)
!259 = !DILocalVariable(name: "w", scope: !17, file: !1, line: 56, type: !47)
!260 = !DILocalVariable(name: "s", scope: !17, file: !1, line: 56, type: !47)
!261 = !DILocalVariable(name: "nl", scope: !17, file: !1, line: 57, type: !49)
!262 = !DILocalVariable(name: "nlknown", scope: !17, file: !1, line: 58, type: !12)
!263 = !DILocalVariable(name: "nldist", scope: !17, file: !1, line: 58, type: !12)
!264 = !DILocalVariable(name: "str", scope: !265, file: !1, line: 131, type: !5)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 130, column: 3)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 129, column: 12)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 128, column: 6)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 127, column: 8)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 124, column: 2)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 109, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 108, column: 12)
!272 = distinct !DILexicalBlock(scope: !17, file: !1, line: 90, column: 7)
!273 = !DILocalVariable(name: "curpos", scope: !265, file: !1, line: 132, type: !12)
!274 = !DILocalVariable(name: "newsize", scope: !265, file: !1, line: 140, type: !12)
!275 = !DILocation(line: 48, column: 1, scope: !17)
!276 = !DILocation(line: 54, column: 25, scope: !17)
!277 = !DILocation(line: 60, column: 19, scope: !278)
!278 = distinct !DILexicalBlock(scope: !17, file: !1, line: 60, column: 7)
!279 = !{!280, !285, i64 16}
!280 = !{!"__suio", !281, i64 0, !284, i64 8, !285, i64 16}
!281 = !{!"any pointer", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !{!"int", !282, i64 0}
!285 = !{!"long", !282, i64 0}
!286 = !DILocation(line: 53, column: 19, scope: !17)
!287 = !DILocation(line: 60, column: 30, scope: !278)
!288 = !DILocation(line: 60, column: 7, scope: !17)
!289 = !DILocation(line: 64, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !17, file: !1, line: 64, column: 7)
!291 = !{!292, !293, i64 16}
!292 = !{!"__sFILE", !281, i64 0, !284, i64 8, !284, i64 12, !293, i64 16, !293, i64 18, !294, i64 24, !284, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !294, i64 88, !281, i64 104, !284, i64 112, !282, i64 116, !282, i64 119, !294, i64 120, !284, i64 136, !285, i64 144, !281, i64 152, !284, i64 160, !295, i64 164, !284, i64 172}
!293 = !{!"short", !282, i64 0}
!294 = !{!"__sbuf", !281, i64 0, !284, i64 8}
!295 = !{!"", !284, i64 0, !282, i64 4}
!296 = !{!292, !281, i64 24}
!297 = !DILocation(line: 64, column: 7, scope: !17)
!298 = !DILocation(line: 90, column: 11, scope: !272)
!299 = !DILocation(line: 67, column: 14, scope: !17)
!300 = !{!280, !281, i64 0}
!301 = !DILocation(line: 55, column: 27, scope: !17)
!302 = !DILocation(line: 90, column: 7, scope: !272)
!303 = !DILocation(line: 90, column: 18, scope: !272)
!304 = !DILocation(line: 90, column: 7, scope: !17)
!305 = !DILocation(line: 98, column: 4, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 97, column: 2)
!307 = distinct !DILexicalBlock(scope: !272, file: !1, line: 91, column: 5)
!308 = !DILocation(line: 67, column: 7, scope: !17)
!309 = !DILocation(line: 0, scope: !306)
!310 = !DILocation(line: 98, column: 4, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 98, column: 4)
!312 = !{!313, !285, i64 8}
!313 = !{!"__siov", !281, i64 0, !285, i64 8}
!314 = distinct !{!314, !305, !305}
!315 = !{!313, !281, i64 0}
!316 = !DILocation(line: 0, scope: !311)
!317 = !DILocation(line: 99, column: 12, scope: !306)
!318 = !{!292, !281, i64 64}
!319 = !DILocation(line: 99, column: 29, scope: !306)
!320 = !{!292, !281, i64 48}
!321 = !DILocation(line: 100, column: 6, scope: !306)
!322 = !DILocation(line: 99, column: 8, scope: !306)
!323 = !DILocation(line: 56, column: 36, scope: !17)
!324 = !DILocation(line: 101, column: 10, scope: !325)
!325 = distinct !DILexicalBlock(scope: !306, file: !1, line: 101, column: 8)
!326 = !DILocation(line: 101, column: 8, scope: !306)
!327 = !DILocation(line: 103, column: 6, scope: !306)
!328 = !DILocation(line: 104, column: 8, scope: !306)
!329 = !DILocation(line: 106, column: 30, scope: !307)
!330 = !DILocation(line: 106, column: 36, scope: !307)
!331 = !DILocation(line: 105, column: 2, scope: !306)
!332 = distinct !{!332, !333, !334}
!333 = !DILocation(line: 96, column: 7, scope: !307)
!334 = !DILocation(line: 106, column: 40, scope: !307)
!335 = !DILocation(line: 108, column: 24, scope: !271)
!336 = !DILocation(line: 108, column: 34, scope: !271)
!337 = !DILocation(line: 108, column: 12, scope: !272)
!338 = !DILocation(line: 125, column: 4, scope: !269)
!339 = !DILocation(line: 0, scope: !269)
!340 = !DILocation(line: 125, column: 4, scope: !341)
!341 = distinct !DILexicalBlock(scope: !269, file: !1, line: 125, column: 4)
!342 = distinct !{!342, !338, !338}
!343 = !DILocation(line: 0, scope: !341)
!344 = !DILocation(line: 126, column: 12, scope: !269)
!345 = !{!292, !284, i64 12}
!346 = !DILocation(line: 126, column: 8, scope: !269)
!347 = !DILocation(line: 127, column: 12, scope: !268)
!348 = !DILocation(line: 127, column: 8, scope: !268)
!349 = !DILocation(line: 127, column: 19, scope: !268)
!350 = !DILocation(line: 127, column: 8, scope: !269)
!351 = !DILocation(line: 129, column: 16, scope: !266)
!352 = !DILocation(line: 129, column: 21, scope: !266)
!353 = !DILocation(line: 129, column: 35, scope: !266)
!354 = !DILocation(line: 129, column: 12, scope: !267)
!355 = !DILocation(line: 132, column: 23, scope: !265)
!356 = !{!292, !281, i64 0}
!357 = !DILocation(line: 132, column: 36, scope: !265)
!358 = !DILocation(line: 132, column: 26, scope: !265)
!359 = !DILocation(line: 132, column: 18, scope: !265)
!360 = !DILocation(line: 132, column: 9, scope: !265)
!361 = !DILocation(line: 140, column: 27, scope: !265)
!362 = !{!292, !284, i64 32}
!363 = !DILocation(line: 140, column: 33, scope: !265)
!364 = !DILocation(line: 140, column: 37, scope: !265)
!365 = !DILocation(line: 140, column: 9, scope: !265)
!366 = !DILocation(line: 141, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !265, file: !1, line: 141, column: 9)
!368 = !DILocation(line: 141, column: 19, scope: !367)
!369 = !DILocation(line: 141, column: 26, scope: !367)
!370 = !DILocation(line: 141, column: 32, scope: !367)
!371 = !DILocation(line: 141, column: 17, scope: !367)
!372 = !DILocation(line: 141, column: 9, scope: !265)
!373 = !DILocation(line: 142, column: 17, scope: !367)
!374 = !DILocation(line: 142, column: 7, scope: !367)
!375 = !DILocation(line: 0, scope: !265)
!376 = !DILocation(line: 143, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !265, file: !1, line: 143, column: 9)
!378 = !DILocation(line: 143, column: 9, scope: !265)
!379 = !DILocation(line: 0, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !1, line: 144, column: 7)
!381 = !DILocation(line: 146, column: 32, scope: !380)
!382 = !DILocation(line: 131, column: 20, scope: !265)
!383 = !DILocation(line: 147, column: 14, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 147, column: 13)
!385 = !DILocation(line: 147, column: 13, scope: !380)
!386 = !DILocation(line: 152, column: 30, scope: !380)
!387 = !DILocation(line: 152, column: 9, scope: !380)
!388 = !DILocation(line: 153, column: 27, scope: !380)
!389 = !DILocation(line: 153, column: 34, scope: !380)
!390 = !DILocation(line: 153, column: 45, scope: !380)
!391 = !DILocation(line: 153, column: 20, scope: !380)
!392 = !DILocation(line: 154, column: 7, scope: !380)
!393 = !DILocation(line: 157, column: 32, scope: !394)
!394 = distinct !DILexicalBlock(scope: !377, file: !1, line: 156, column: 7)
!395 = !DILocation(line: 159, column: 14, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !1, line: 159, column: 13)
!397 = !DILocation(line: 159, column: 13, scope: !394)
!398 = !DILocation(line: 163, column: 6, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !1, line: 160, column: 4)
!400 = !DILocation(line: 164, column: 17, scope: !399)
!401 = !DILocation(line: 167, column: 6, scope: !399)
!402 = !DILocation(line: 0, scope: !399)
!403 = !{!404, !284, i64 0}
!404 = !{!"_reent", !284, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !284, i64 32, !282, i64 36, !284, i64 64, !281, i64 72, !284, i64 80, !281, i64 88, !281, i64 96, !284, i64 104, !281, i64 112, !281, i64 120, !284, i64 128, !281, i64 136, !282, i64 144, !281, i64 504, !405, i64 512, !281, i64 1304, !407, i64 1312, !282, i64 1336}
!405 = !{!"_atexit", !281, i64 0, !284, i64 8, !282, i64 16, !406, i64 272}
!406 = !{!"_on_exit_args", !282, i64 0, !282, i64 256, !284, i64 512, !284, i64 516}
!407 = !{!"_glue", !281, i64 0, !284, i64 8, !281, i64 16}
!408 = !DILocation(line: 0, scope: !394)
!409 = !DILocation(line: 170, column: 19, scope: !265)
!410 = !DILocation(line: 171, column: 18, scope: !265)
!411 = !DILocation(line: 171, column: 12, scope: !265)
!412 = !DILocation(line: 172, column: 19, scope: !265)
!413 = !DILocation(line: 174, column: 22, scope: !265)
!414 = !DILocation(line: 174, column: 12, scope: !265)
!415 = !DILocation(line: 175, column: 3, scope: !266)
!416 = !DILocation(line: 176, column: 16, scope: !417)
!417 = distinct !DILexicalBlock(scope: !267, file: !1, line: 176, column: 12)
!418 = !DILocation(line: 176, column: 12, scope: !267)
!419 = !DILocation(line: 177, column: 3, scope: !417)
!420 = !DILocation(line: 178, column: 8, scope: !267)
!421 = !DILocation(line: 179, column: 15, scope: !267)
!422 = !DILocation(line: 180, column: 15, scope: !267)
!423 = !DILocation(line: 182, column: 6, scope: !267)
!424 = !DILocation(line: 183, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !268, file: !1, line: 183, column: 13)
!426 = !DILocation(line: 183, column: 30, scope: !425)
!427 = !DILocation(line: 183, column: 20, scope: !425)
!428 = !DILocation(line: 183, column: 36, scope: !425)
!429 = !DILocation(line: 183, column: 53, scope: !425)
!430 = !DILocation(line: 183, column: 45, scope: !425)
!431 = !DILocation(line: 183, column: 43, scope: !425)
!432 = !DILocation(line: 183, column: 13, scope: !268)
!433 = !DILocation(line: 186, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !425, file: !1, line: 184, column: 6)
!435 = !DILocation(line: 187, column: 8, scope: !434)
!436 = !DILocation(line: 188, column: 15, scope: !434)
!437 = !DILocation(line: 189, column: 15, scope: !434)
!438 = !DILocation(line: 190, column: 19, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !1, line: 190, column: 12)
!440 = !DILocation(line: 190, column: 24, scope: !439)
!441 = !DILocation(line: 190, column: 27, scope: !439)
!442 = !DILocation(line: 190, column: 12, scope: !434)
!443 = !DILocation(line: 196, column: 18, scope: !444)
!444 = distinct !DILexicalBlock(scope: !425, file: !1, line: 194, column: 6)
!445 = !DILocation(line: 196, column: 13, scope: !444)
!446 = !DILocation(line: 196, column: 54, scope: !444)
!447 = !DILocation(line: 197, column: 16, scope: !444)
!448 = !DILocation(line: 197, column: 33, scope: !444)
!449 = !DILocation(line: 197, column: 12, scope: !444)
!450 = !DILocation(line: 198, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !1, line: 198, column: 12)
!452 = !DILocation(line: 198, column: 12, scope: !444)
!453 = !DILocation(line: 0, scope: !444)
!454 = !DILocation(line: 201, column: 6, scope: !269)
!455 = !DILocation(line: 202, column: 8, scope: !269)
!456 = !DILocation(line: 204, column: 30, scope: !270)
!457 = !DILocation(line: 204, column: 36, scope: !270)
!458 = !DILocation(line: 203, column: 2, scope: !269)
!459 = distinct !{!459, !460, !461}
!460 = !DILocation(line: 123, column: 7, scope: !270)
!461 = !DILocation(line: 204, column: 40, scope: !270)
!462 = !DILocation(line: 58, column: 7, scope: !17)
!463 = !DILocation(line: 58, column: 16, scope: !17)
!464 = !DILocation(line: 217, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !271, file: !1, line: 207, column: 5)
!466 = !DILocation(line: 0, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !1, line: 218, column: 2)
!468 = !DILocation(line: 0, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 250, column: 6)
!470 = distinct !DILexicalBlock(scope: !467, file: !1, line: 249, column: 8)
!471 = !DILocation(line: 0, scope: !470)
!472 = !DILocation(line: 219, column: 4, scope: !467)
!473 = !DILocation(line: 219, column: 4, scope: !474)
!474 = distinct !DILexicalBlock(scope: !467, file: !1, line: 219, column: 4)
!475 = distinct !{!475, !472, !472}
!476 = !DILocation(line: 220, column: 8, scope: !467)
!477 = !DILocation(line: 220, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !467, file: !1, line: 220, column: 8)
!479 = !DILocation(line: 222, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !1, line: 221, column: 6)
!481 = !DILocation(line: 57, column: 9, scope: !17)
!482 = !DILocation(line: 223, column: 17, scope: !480)
!483 = !DILocation(line: 223, column: 25, scope: !480)
!484 = !DILocation(line: 223, column: 29, scope: !480)
!485 = !DILocation(line: 223, column: 39, scope: !480)
!486 = !DILocation(line: 225, column: 6, scope: !480)
!487 = !DILocation(line: 0, scope: !480)
!488 = !DILocation(line: 226, column: 8, scope: !467)
!489 = !DILocation(line: 56, column: 39, scope: !17)
!490 = !DILocation(line: 227, column: 12, scope: !467)
!491 = !DILocation(line: 227, column: 25, scope: !467)
!492 = !DILocation(line: 227, column: 15, scope: !467)
!493 = !DILocation(line: 227, column: 8, scope: !467)
!494 = !DILocation(line: 228, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !467, file: !1, line: 228, column: 8)
!496 = !DILocation(line: 228, column: 25, scope: !495)
!497 = !DILocation(line: 228, column: 15, scope: !495)
!498 = !DILocation(line: 228, column: 31, scope: !495)
!499 = !DILocation(line: 228, column: 36, scope: !495)
!500 = !DILocation(line: 228, column: 8, scope: !467)
!501 = !DILocation(line: 230, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !1, line: 229, column: 6)
!503 = !DILocation(line: 232, column: 15, scope: !502)
!504 = !DILocation(line: 233, column: 12, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !1, line: 233, column: 12)
!506 = !DILocation(line: 233, column: 12, scope: !502)
!507 = !DILocation(line: 236, column: 23, scope: !508)
!508 = distinct !DILexicalBlock(scope: !495, file: !1, line: 236, column: 13)
!509 = !DILocation(line: 236, column: 15, scope: !508)
!510 = !DILocation(line: 236, column: 13, scope: !495)
!511 = !DILocation(line: 238, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !1, line: 237, column: 6)
!513 = !DILocation(line: 238, column: 33, scope: !512)
!514 = !DILocation(line: 238, column: 12, scope: !512)
!515 = !DILocation(line: 239, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 239, column: 12)
!517 = !DILocation(line: 239, column: 12, scope: !512)
!518 = !DILocation(line: 245, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !508, file: !1, line: 243, column: 6)
!520 = !DILocation(line: 246, column: 15, scope: !519)
!521 = !DILocation(line: 247, column: 15, scope: !519)
!522 = !DILocation(line: 0, scope: !519)
!523 = !DILocation(line: 249, column: 16, scope: !470)
!524 = !DILocation(line: 249, column: 22, scope: !470)
!525 = !DILocation(line: 249, column: 8, scope: !467)
!526 = !DILocation(line: 252, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !469, file: !1, line: 252, column: 12)
!528 = !DILocation(line: 252, column: 12, scope: !469)
!529 = !DILocation(line: 255, column: 6, scope: !469)
!530 = !DILocation(line: 0, scope: !465)
!531 = !DILocation(line: 256, column: 6, scope: !467)
!532 = !DILocation(line: 257, column: 8, scope: !467)
!533 = !DILocation(line: 259, column: 30, scope: !465)
!534 = !DILocation(line: 259, column: 36, scope: !465)
!535 = !DILocation(line: 258, column: 2, scope: !467)
!536 = distinct !{!536, !464, !537}
!537 = !DILocation(line: 259, column: 40, scope: !465)
!538 = !DILocation(line: 264, column: 14, scope: !17)
!539 = !DILocation(line: 265, column: 3, scope: !17)
!540 = !DILocation(line: 0, scope: !278)
!541 = !DILocation(line: 266, column: 1, scope: !17)
