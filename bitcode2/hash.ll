; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__db = type { i32, i32 (%struct.__db*)*, i32 (%struct.__db*, %struct.DBT*, i32)*, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*, i32 (%struct.__db*, i32)*, i8*, i32 (%struct.__db*)* }
%struct.DBT = type { i8*, i64 }
%struct.HASHINFO = type { i32, i32, i32, i32, i32 (i8*, i64)*, i32 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.htab = type { %struct.hashhdr, i32, i32, i32 (i8*, i64)*, i32, i32, i8*, i8*, %struct._bufhead*, i32, i32, i32, i32, i32, [32 x i32*], i32, i32, %struct._bufhead, %struct._bufhead*** }
%struct.hashhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i16] }
%struct._bufhead = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i8*, i8 }

@__default_hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@.str = private unnamed_addr constant [12 x i8] c"%$sniglet^&\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__db* @__hash_open(i8*, i32, i32, i32, %struct.HASHINFO* readonly) local_unnamed_addr #0 !dbg !172 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = bitcast %struct.stat* %7 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %8) #5, !dbg !233
  %9 = and i32 %1, 3, !dbg !234
  %10 = icmp eq i32 %9, 1, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %10, label %11, label %13, !dbg !237

; <label>:11:                                     ; preds = %5
  %12 = tail call i32* @__errno() #6, !dbg !238
  store i32 22, i32* %12, align 4, !dbg !240, !tbaa !241
  br label %561, !dbg !245

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @calloc(i64 1, i64 656) #6, !dbg !246
  %15 = bitcast i8* %14 to %struct.htab*, !dbg !248
  %16 = icmp eq i8* %14, null, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %16, label %561, label %17, !dbg !251

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %14, i64 284, !dbg !252
  %19 = bitcast i8* %18 to i32*, !dbg !252
  store i32 -1, i32* %19, align 4, !dbg !253, !tbaa !254
  %20 = getelementptr inbounds i8, i8* %14, i64 280, !dbg !259
  %21 = bitcast i8* %20 to i32*, !dbg !259
  store i32 %1, i32* %21, align 8, !dbg !260, !tbaa !261
  %22 = icmp ne i8* %0, null, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %22, label %23, label %33, !dbg !265

; <label>:23:                                     ; preds = %17
  %24 = and i32 %1, 1024, !dbg !266
  %25 = icmp eq i32 %24, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %25, label %26, label %33, !dbg !267

; <label>:26:                                     ; preds = %23
  %27 = call i32 @stat(i8* nonnull %0, %struct.stat* nonnull %7) #6, !dbg !269
  %28 = icmp eq i32 %27, 0, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %28, label %39, label %29, !dbg !270

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #6, !dbg !271
  %31 = load i32, i32* %30, align 4, !dbg !271, !tbaa !241
  %32 = icmp eq i32 %31, 2, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %32, label %33, label %39, !dbg !273

; <label>:33:                                     ; preds = %23, %29, %17
  %34 = call i32* @__errno() #6, !dbg !274
  %35 = load i32, i32* %34, align 4, !dbg !274, !tbaa !241
  %36 = icmp eq i32 %35, 2, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %36, label %37, label %40, !dbg !278

; <label>:37:                                     ; preds = %33
  %38 = call i32* @__errno() #6, !dbg !279
  store i32 0, i32* %38, align 4, !dbg !280, !tbaa !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br label %40, !dbg !279

; <label>:39:                                     ; preds = %26, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br label %41, !dbg !281

; <label>:40:                                     ; preds = %33, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br i1 %22, label %41, label %59, !dbg !281

; <label>:41:                                     ; preds = %39, %40
  %42 = phi i32 [ 0, %39 ], [ 1, %40 ]
  %43 = call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 %1, i32 %2) #6, !dbg !283
  store i32 %43, i32* %19, align 4, !dbg !287, !tbaa !254
  %44 = icmp eq i32 %43, -1, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %44, label %45, label %48, !dbg !289

; <label>:45:                                     ; preds = %41
  %46 = call i32* @__errno() #6, !dbg !290
  %47 = load i32, i32* %46, align 4, !dbg !290, !tbaa !241
  br label %557, !dbg !290

; <label>:48:                                     ; preds = %41
  %49 = and i32 %1, 512, !dbg !293
  %50 = icmp eq i32 %49, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %50, label %60, label %51, !dbg !295

; <label>:51:                                     ; preds = %48
  %52 = call i32 @fstat(i32 %43, %struct.stat* nonnull %7) #6, !dbg !296
  %53 = icmp eq i32 %52, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %53, label %54, label %60, !dbg !298

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 7, !dbg !299
  %56 = load i64, i64* %55, align 8, !dbg !299, !tbaa !300
  %57 = icmp eq i64 %56, 0, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %57, label %58, label %60, !dbg !306

; <label>:58:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br label %59, !dbg !307

; <label>:59:                                     ; preds = %58, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br label %62, !dbg !308

; <label>:60:                                     ; preds = %48, %51, %54
  %61 = icmp eq i32 %42, 0, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %61, label %190, label %62, !dbg !308

; <label>:62:                                     ; preds = %59, %60
  %63 = bitcast %struct.stat* %6 to i8*, !dbg !326
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %63) #5, !dbg !326
  %64 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !328
  %65 = bitcast i8* %64 to i32*, !dbg !328
  store i32 0, i32* %65, align 8, !dbg !329, !tbaa !330
  %66 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !331
  %67 = bitcast i8* %66 to i32*, !dbg !331
  %68 = getelementptr inbounds i8, i8* %14, i64 12, !dbg !332
  %69 = bitcast i8* %68 to i32*, !dbg !332
  %70 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !333
  %71 = bitcast i8* %70 to i32*, !dbg !333
  %72 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !334
  %73 = bitcast i8* %72 to i32*, !dbg !334
  store i32 256, i32* %73, align 8, !dbg !335, !tbaa !336
  %74 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !337
  %75 = bitcast i8* %74 to i32*, !dbg !337
  store i32 8, i32* %75, align 4, !dbg !338, !tbaa !339
  %76 = getelementptr inbounds i8, i8* %14, i64 20, !dbg !340
  %77 = bitcast i8* %76 to i32*, !dbg !340
  %78 = bitcast i8* %66 to <4 x i32>*, !dbg !341
  store <4 x i32> <i32 1234, i32 4096, i32 12, i32 256>, <4 x i32>* %78, align 8, !dbg !341, !tbaa !241
  %79 = getelementptr inbounds i8, i8* %14, i64 52, !dbg !342
  %80 = bitcast i8* %79 to i32*, !dbg !342
  store i32 65536, i32* %80, align 4, !dbg !343, !tbaa !344
  %81 = load i64, i64* bitcast (i32 (i8*, i64)** @__default_hash to i64*), align 8, !dbg !345, !tbaa !346
  %82 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !347
  %83 = bitcast i8* %82 to i32 (i8*, i64)**, !dbg !347
  %84 = bitcast i8* %82 to i64*, !dbg !348
  store i64 %81, i64* %84, align 8, !dbg !348, !tbaa !349
  %85 = getelementptr inbounds i8, i8* %14, i64 68, !dbg !350
  %86 = call i8* @memset(i8* nonnull %85, i32 0, i64 128) #6, !dbg !351
  %87 = getelementptr inbounds i8, i8* %14, i64 196, !dbg !352
  %88 = call i8* @memset(i8* nonnull %87, i32 0, i64 64) #6, !dbg !353
  %89 = icmp eq i8* %0, null, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %89, label %98, label %90, !dbg !356

; <label>:90:                                     ; preds = %62
  %91 = call i32 @stat(i8* nonnull %0, %struct.stat* nonnull %6) #6, !dbg !358
  %92 = icmp eq i32 %91, 0, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %92, label %93, label %549, !dbg !361

; <label>:93:                                     ; preds = %90
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 11, !dbg !362
  %95 = load i64, i64* %94, align 8, !dbg !362, !tbaa !363
  %96 = trunc i64 %95 to i32, !dbg !364
  store i32 %96, i32* %69, align 4, !dbg !365, !tbaa !366
  %97 = call i32 @__log2(i32 %96) #6, !dbg !367
  store i32 %97, i32* %71, align 8, !dbg !368, !tbaa !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %98, !dbg !370

; <label>:98:                                     ; preds = %93, %62
  %99 = icmp eq %struct.HASHINFO* %4, null, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %99, label %137, label %100, !dbg !373

; <label>:100:                                    ; preds = %98
  %101 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 0, !dbg !374
  %102 = load i32, i32* %101, align 8, !dbg !374, !tbaa !377
  %103 = icmp eq i32 %102, 0, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %103, label %110, label %104, !dbg !380

; <label>:104:                                    ; preds = %100
  %105 = call i32 @__log2(i32 %102) #6, !dbg !381
  store i32 %105, i32* %71, align 8, !dbg !383, !tbaa !369
  %106 = shl i32 1, %105, !dbg !384
  store i32 %106, i32* %69, align 4, !dbg !385, !tbaa !366
  %107 = icmp sgt i32 %106, 65536, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %107, label %108, label %110, !dbg !388

; <label>:108:                                    ; preds = %104
  %109 = call i32* @__errno() #6, !dbg !389
  store i32 22, i32* %109, align 4, !dbg !391, !tbaa !241
  br label %549, !dbg !392

; <label>:110:                                    ; preds = %104, %100
  %111 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 1, !dbg !393
  %112 = load i32, i32* %111, align 4, !dbg !393, !tbaa !395
  %113 = icmp eq i32 %112, 0, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %113, label %115, label %114, !dbg !397

; <label>:114:                                    ; preds = %110
  store i32 %112, i32* %80, align 4, !dbg !398, !tbaa !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  br label %115, !dbg !399

; <label>:115:                                    ; preds = %114, %110
  %116 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 4, !dbg !400
  %117 = load i32 (i8*, i64)*, i32 (i8*, i64)** %116, align 8, !dbg !400, !tbaa !402
  %118 = icmp eq i32 (i8*, i64)* %117, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %118, label %120, label %119, !dbg !404

; <label>:119:                                    ; preds = %115
  store i32 (i8*, i64)* %117, i32 (i8*, i64)** %83, align 8, !dbg !405, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br label %120, !dbg !406

; <label>:120:                                    ; preds = %119, %115
  %121 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 2, !dbg !407
  %122 = load i32, i32* %121, align 8, !dbg !407, !tbaa !409
  %123 = icmp eq i32 %122, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %123, label %125, label %124, !dbg !411

; <label>:124:                                    ; preds = %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %125, !dbg !412

; <label>:125:                                    ; preds = %124, %120
  %126 = phi i32 [ %122, %124 ], [ 1, %120 ], !dbg !413
  %127 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 5, !dbg !414
  %128 = load i32, i32* %127, align 8, !dbg !414, !tbaa !416
  %129 = icmp eq i32 %128, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %129, label %137, label %130, !dbg !418

; <label>:130:                                    ; preds = %125
  %131 = icmp eq i32 %128, 4321, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %131, label %136, label %132, !dbg !422

; <label>:132:                                    ; preds = %130
  %133 = icmp eq i32 %128, 1234, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %133, label %136, label %134, !dbg !424

; <label>:134:                                    ; preds = %132
  %135 = call i32* @__errno() #6, !dbg !425
  store i32 22, i32* %135, align 4, !dbg !427, !tbaa !241
  br label %549, !dbg !428

; <label>:136:                                    ; preds = %132, %130
  store i32 %128, i32* %67, align 8, !dbg !429, !tbaa !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br label %137, !dbg !431

; <label>:137:                                    ; preds = %136, %125, %98
  %138 = phi i32 [ %126, %136 ], [ %126, %125 ], [ 1, %98 ], !dbg !413
  %139 = add nsw i32 %138, -1, !dbg !445
  %140 = load i32, i32* %80, align 4, !dbg !446, !tbaa !344
  %141 = sdiv i32 %139, %140, !dbg !447
  %142 = add nsw i32 %141, 1, !dbg !448
  %143 = icmp sgt i32 %142, 2, !dbg !449
  %144 = select i1 %143, i32 %142, i32 2, !dbg !449
  %145 = call i32 @__log2(i32 %144) #6, !dbg !450
  %146 = shl i32 1, %145, !dbg !452
  %147 = add nsw i32 %145, 1, !dbg !454
  %148 = sext i32 %145 to i64, !dbg !455
  %149 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %148, !dbg !455
  store i32 %147, i32* %149, align 4, !dbg !456, !tbaa !241
  %150 = sext i32 %147 to i64, !dbg !457
  %151 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %150, !dbg !457
  store i32 %147, i32* %151, align 4, !dbg !458, !tbaa !241
  %152 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !459
  %153 = bitcast i8* %152 to i32*, !dbg !459
  store i32 %145, i32* %153, align 8, !dbg !460, !tbaa !461
  %154 = getelementptr inbounds i8, i8* %14, i64 36, !dbg !462
  %155 = bitcast i8* %154 to i32*, !dbg !462
  store i32 2, i32* %155, align 4, !dbg !463, !tbaa !464
  %156 = shl i32 %145, 11, !dbg !465
  %157 = or i32 %156, 1, !dbg !465
  %158 = call i32 @__ibitmap(%struct.htab* nonnull %15, i32 %157, i32 %147, i32 0) #6, !dbg !467
  %159 = icmp eq i32 %158, 0, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %159, label %161, label %160, !dbg !468

; <label>:160:                                    ; preds = %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %549, !dbg !472

; <label>:161:                                    ; preds = %137
  %162 = add nsw i32 %146, -1, !dbg !473
  %163 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !474
  %164 = bitcast i8* %163 to i32*, !dbg !474
  store i32 %162, i32* %164, align 8, !dbg !475, !tbaa !476
  %165 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !477
  %166 = bitcast i8* %165 to i32*, !dbg !477
  store i32 %162, i32* %166, align 8, !dbg !478, !tbaa !479
  %167 = shl i32 %146, 1, !dbg !480
  %168 = add nsw i32 %167, -1, !dbg !481
  %169 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !482
  %170 = bitcast i8* %169 to i32*, !dbg !482
  store i32 %168, i32* %170, align 4, !dbg !483, !tbaa !484
  %171 = load i32, i32* %71, align 8, !dbg !485, !tbaa !369
  %172 = zext i32 %171 to i64, !dbg !486
  %173 = lshr i64 511, %172, !dbg !486
  %174 = trunc i64 %173 to i32, !dbg !487
  %175 = add i32 %174, 1, !dbg !487
  %176 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !488
  %177 = bitcast i8* %176 to i32*, !dbg !488
  store i32 %175, i32* %177, align 4, !dbg !489, !tbaa !490
  %178 = load i32, i32* %73, align 8, !dbg !491, !tbaa !336
  %179 = sdiv i32 %162, %178, !dbg !492
  %180 = add nsw i32 %179, 1, !dbg !493
  %181 = call i32 @__log2(i32 %180) #6, !dbg !495
  %182 = shl i32 1, %181, !dbg !496
  %183 = load i32, i32* %77, align 4, !dbg !497, !tbaa !499
  %184 = icmp sgt i32 %182, %183, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %184, label %185, label %186, !dbg !501

; <label>:185:                                    ; preds = %161
  store i32 %182, i32* %77, align 4, !dbg !502, !tbaa !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %186, !dbg !503

; <label>:186:                                    ; preds = %185, %161
  %187 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %182) #6, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  %188 = icmp eq i32 %187, 0, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %188, label %189, label %550

; <label>:189:                                    ; preds = %186
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %63) #5, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br label %503

; <label>:190:                                    ; preds = %60
  %191 = icmp eq %struct.HASHINFO* %4, null, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %191, label %199, label %192, !dbg !512

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 4, !dbg !513
  %194 = load i32 (i8*, i64)*, i32 (i8*, i64)** %193, align 8, !dbg !513, !tbaa !402
  %195 = icmp eq i32 (i8*, i64)* %194, null, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %195, label %199, label %196, !dbg !515

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !516
  %198 = bitcast i8* %197 to i32 (i8*, i64)**, !dbg !516
  store i32 (i8*, i64)* %194, i32 (i8*, i64)** %198, align 8, !dbg !517, !tbaa !349
  br label %203, !dbg !518

; <label>:199:                                    ; preds = %192, %190
  %200 = load i64, i64* bitcast (i32 (i8*, i64)** @__default_hash to i64*), align 8, !dbg !519, !tbaa !346
  %201 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !520
  %202 = bitcast i8* %201 to i64*, !dbg !521
  store i64 %200, i64* %202, align 8, !dbg !521, !tbaa !349
  br label %203

; <label>:203:                                    ; preds = %199, %196
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %204 = load i32, i32* %19, align 4, !dbg !522, !tbaa !254
  %205 = call i64 @read(i32 %204, i8* nonnull %14, i64 260) #6, !dbg !523
  %206 = bitcast i8* %14 to i32*, !dbg !577
  %207 = load i32, i32* %206, align 4, !dbg !577, !tbaa !578
  %208 = trunc i32 %207 to i8, !dbg !577
  %209 = lshr i32 %207, 8, !dbg !577
  %210 = trunc i32 %209 to i8, !dbg !577
  %211 = lshr i32 %207, 16, !dbg !577
  %212 = trunc i32 %211 to i8, !dbg !577
  %213 = lshr i32 %207, 24, !dbg !577
  %214 = trunc i32 %213 to i8, !dbg !577
  store i8 %214, i8* %14, align 4, !dbg !577, !tbaa !579
  %215 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !577
  store i8 %212, i8* %215, align 1, !dbg !577, !tbaa !579
  %216 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !577
  store i8 %210, i8* %216, align 2, !dbg !577, !tbaa !579
  %217 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !577
  store i8 %208, i8* %217, align 1, !dbg !577, !tbaa !579
  %218 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !580
  %219 = bitcast i8* %218 to i32*, !dbg !580
  %220 = load i32, i32* %219, align 4, !dbg !580, !tbaa !581
  %221 = trunc i32 %220 to i8, !dbg !580
  %222 = lshr i32 %220, 8, !dbg !580
  %223 = trunc i32 %222 to i8, !dbg !580
  %224 = lshr i32 %220, 16, !dbg !580
  %225 = trunc i32 %224 to i8, !dbg !580
  %226 = lshr i32 %220, 24, !dbg !580
  %227 = trunc i32 %226 to i8, !dbg !580
  store i8 %227, i8* %218, align 4, !dbg !580, !tbaa !579
  %228 = getelementptr inbounds i8, i8* %14, i64 5, !dbg !580
  store i8 %225, i8* %228, align 1, !dbg !580, !tbaa !579
  %229 = getelementptr inbounds i8, i8* %14, i64 6, !dbg !580
  store i8 %223, i8* %229, align 2, !dbg !580, !tbaa !579
  %230 = getelementptr inbounds i8, i8* %14, i64 7, !dbg !580
  store i8 %221, i8* %230, align 1, !dbg !580, !tbaa !579
  %231 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !582
  %232 = bitcast i8* %231 to i32*, !dbg !582
  %233 = load i32, i32* %232, align 4, !dbg !582, !tbaa !583
  %234 = trunc i32 %233 to i8, !dbg !582
  %235 = lshr i32 %233, 8, !dbg !582
  %236 = trunc i32 %235 to i8, !dbg !582
  %237 = lshr i32 %233, 16, !dbg !582
  %238 = trunc i32 %237 to i8, !dbg !582
  %239 = lshr i32 %233, 24, !dbg !582
  %240 = trunc i32 %239 to i8, !dbg !582
  store i8 %240, i8* %231, align 4, !dbg !582, !tbaa !579
  %241 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !582
  store i8 %238, i8* %241, align 1, !dbg !582, !tbaa !579
  %242 = getelementptr inbounds i8, i8* %14, i64 10, !dbg !582
  store i8 %236, i8* %242, align 2, !dbg !582, !tbaa !579
  %243 = getelementptr inbounds i8, i8* %14, i64 11, !dbg !582
  store i8 %234, i8* %243, align 1, !dbg !582, !tbaa !579
  %244 = getelementptr inbounds i8, i8* %14, i64 12, !dbg !584
  %245 = bitcast i8* %244 to i32*, !dbg !584
  %246 = load i32, i32* %245, align 4, !dbg !584, !tbaa !585
  %247 = trunc i32 %246 to i8, !dbg !584
  %248 = lshr i32 %246, 8, !dbg !584
  %249 = trunc i32 %248 to i8, !dbg !584
  %250 = lshr i32 %246, 16, !dbg !584
  %251 = trunc i32 %250 to i8, !dbg !584
  %252 = lshr i32 %246, 24, !dbg !584
  %253 = trunc i32 %252 to i8, !dbg !584
  store i8 %253, i8* %244, align 4, !dbg !584, !tbaa !579
  %254 = getelementptr inbounds i8, i8* %14, i64 13, !dbg !584
  store i8 %251, i8* %254, align 1, !dbg !584, !tbaa !579
  %255 = getelementptr inbounds i8, i8* %14, i64 14, !dbg !584
  store i8 %249, i8* %255, align 2, !dbg !584, !tbaa !579
  %256 = getelementptr inbounds i8, i8* %14, i64 15, !dbg !584
  store i8 %247, i8* %256, align 1, !dbg !584, !tbaa !579
  %257 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !586
  %258 = bitcast i8* %257 to i32*, !dbg !586
  %259 = load i32, i32* %258, align 4, !dbg !586, !tbaa !587
  %260 = trunc i32 %259 to i8, !dbg !586
  %261 = lshr i32 %259, 8, !dbg !586
  %262 = trunc i32 %261 to i8, !dbg !586
  %263 = lshr i32 %259, 16, !dbg !586
  %264 = trunc i32 %263 to i8, !dbg !586
  %265 = lshr i32 %259, 24, !dbg !586
  %266 = trunc i32 %265 to i8, !dbg !586
  store i8 %266, i8* %257, align 4, !dbg !586, !tbaa !579
  %267 = getelementptr inbounds i8, i8* %14, i64 17, !dbg !586
  store i8 %264, i8* %267, align 1, !dbg !586, !tbaa !579
  %268 = getelementptr inbounds i8, i8* %14, i64 18, !dbg !586
  store i8 %262, i8* %268, align 2, !dbg !586, !tbaa !579
  %269 = getelementptr inbounds i8, i8* %14, i64 19, !dbg !586
  store i8 %260, i8* %269, align 1, !dbg !586, !tbaa !579
  %270 = getelementptr inbounds i8, i8* %14, i64 20, !dbg !588
  %271 = bitcast i8* %270 to i32*, !dbg !588
  %272 = load i32, i32* %271, align 4, !dbg !588, !tbaa !589
  %273 = trunc i32 %272 to i8, !dbg !588
  %274 = lshr i32 %272, 8, !dbg !588
  %275 = trunc i32 %274 to i8, !dbg !588
  %276 = lshr i32 %272, 16, !dbg !588
  %277 = trunc i32 %276 to i8, !dbg !588
  %278 = lshr i32 %272, 24, !dbg !588
  %279 = trunc i32 %278 to i8, !dbg !588
  store i8 %279, i8* %270, align 4, !dbg !588, !tbaa !579
  %280 = getelementptr inbounds i8, i8* %14, i64 21, !dbg !588
  store i8 %277, i8* %280, align 1, !dbg !588, !tbaa !579
  %281 = getelementptr inbounds i8, i8* %14, i64 22, !dbg !588
  store i8 %275, i8* %281, align 2, !dbg !588, !tbaa !579
  %282 = getelementptr inbounds i8, i8* %14, i64 23, !dbg !588
  store i8 %273, i8* %282, align 1, !dbg !588, !tbaa !579
  %283 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !590
  %284 = bitcast i8* %283 to i32*, !dbg !590
  %285 = load i32, i32* %284, align 4, !dbg !590, !tbaa !591
  %286 = trunc i32 %285 to i8, !dbg !590
  %287 = lshr i32 %285, 8, !dbg !590
  %288 = trunc i32 %287 to i8, !dbg !590
  %289 = lshr i32 %285, 16, !dbg !590
  %290 = trunc i32 %289 to i8, !dbg !590
  %291 = lshr i32 %285, 24, !dbg !590
  %292 = trunc i32 %291 to i8, !dbg !590
  store i8 %292, i8* %283, align 4, !dbg !590, !tbaa !579
  %293 = getelementptr inbounds i8, i8* %14, i64 25, !dbg !590
  store i8 %290, i8* %293, align 1, !dbg !590, !tbaa !579
  %294 = getelementptr inbounds i8, i8* %14, i64 26, !dbg !590
  store i8 %288, i8* %294, align 2, !dbg !590, !tbaa !579
  %295 = getelementptr inbounds i8, i8* %14, i64 27, !dbg !590
  store i8 %286, i8* %295, align 1, !dbg !590, !tbaa !579
  %296 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !592
  %297 = bitcast i8* %296 to i32*, !dbg !592
  %298 = load i32, i32* %297, align 4, !dbg !592, !tbaa !593
  %299 = trunc i32 %298 to i8, !dbg !592
  %300 = lshr i32 %298, 8, !dbg !592
  %301 = trunc i32 %300 to i8, !dbg !592
  %302 = lshr i32 %298, 16, !dbg !592
  %303 = trunc i32 %302 to i8, !dbg !592
  %304 = lshr i32 %298, 24, !dbg !592
  %305 = trunc i32 %304 to i8, !dbg !592
  store i8 %305, i8* %296, align 4, !dbg !592, !tbaa !579
  %306 = getelementptr inbounds i8, i8* %14, i64 29, !dbg !592
  store i8 %303, i8* %306, align 1, !dbg !592, !tbaa !579
  %307 = getelementptr inbounds i8, i8* %14, i64 30, !dbg !592
  store i8 %301, i8* %307, align 2, !dbg !592, !tbaa !579
  %308 = getelementptr inbounds i8, i8* %14, i64 31, !dbg !592
  store i8 %299, i8* %308, align 1, !dbg !592, !tbaa !579
  %309 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !594
  %310 = bitcast i8* %309 to i32*, !dbg !594
  %311 = load i32, i32* %310, align 4, !dbg !594, !tbaa !595
  %312 = trunc i32 %311 to i8, !dbg !594
  %313 = lshr i32 %311, 8, !dbg !594
  %314 = trunc i32 %313 to i8, !dbg !594
  %315 = lshr i32 %311, 16, !dbg !594
  %316 = trunc i32 %315 to i8, !dbg !594
  %317 = lshr i32 %311, 24, !dbg !594
  %318 = trunc i32 %317 to i8, !dbg !594
  store i8 %318, i8* %309, align 4, !dbg !594, !tbaa !579
  %319 = getelementptr inbounds i8, i8* %14, i64 33, !dbg !594
  store i8 %316, i8* %319, align 1, !dbg !594, !tbaa !579
  %320 = getelementptr inbounds i8, i8* %14, i64 34, !dbg !594
  store i8 %314, i8* %320, align 2, !dbg !594, !tbaa !579
  %321 = getelementptr inbounds i8, i8* %14, i64 35, !dbg !594
  store i8 %312, i8* %321, align 1, !dbg !594, !tbaa !579
  %322 = getelementptr inbounds i8, i8* %14, i64 36, !dbg !596
  %323 = bitcast i8* %322 to i32*, !dbg !596
  %324 = load i32, i32* %323, align 4, !dbg !596, !tbaa !597
  %325 = trunc i32 %324 to i8, !dbg !596
  %326 = lshr i32 %324, 8, !dbg !596
  %327 = trunc i32 %326 to i8, !dbg !596
  %328 = lshr i32 %324, 16, !dbg !596
  %329 = trunc i32 %328 to i8, !dbg !596
  %330 = lshr i32 %324, 24, !dbg !596
  %331 = trunc i32 %330 to i8, !dbg !596
  store i8 %331, i8* %322, align 4, !dbg !596, !tbaa !579
  %332 = getelementptr inbounds i8, i8* %14, i64 37, !dbg !596
  store i8 %329, i8* %332, align 1, !dbg !596, !tbaa !579
  %333 = getelementptr inbounds i8, i8* %14, i64 38, !dbg !596
  store i8 %327, i8* %333, align 2, !dbg !596, !tbaa !579
  %334 = getelementptr inbounds i8, i8* %14, i64 39, !dbg !596
  store i8 %325, i8* %334, align 1, !dbg !596, !tbaa !579
  %335 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !598
  %336 = bitcast i8* %335 to i32*, !dbg !598
  %337 = load i32, i32* %336, align 4, !dbg !598, !tbaa !599
  %338 = trunc i32 %337 to i8, !dbg !598
  %339 = lshr i32 %337, 8, !dbg !598
  %340 = trunc i32 %339 to i8, !dbg !598
  %341 = lshr i32 %337, 16, !dbg !598
  %342 = trunc i32 %341 to i8, !dbg !598
  %343 = lshr i32 %337, 24, !dbg !598
  %344 = trunc i32 %343 to i8, !dbg !598
  store i8 %344, i8* %335, align 4, !dbg !598, !tbaa !579
  %345 = getelementptr inbounds i8, i8* %14, i64 41, !dbg !598
  store i8 %342, i8* %345, align 1, !dbg !598, !tbaa !579
  %346 = getelementptr inbounds i8, i8* %14, i64 42, !dbg !598
  store i8 %340, i8* %346, align 2, !dbg !598, !tbaa !579
  %347 = getelementptr inbounds i8, i8* %14, i64 43, !dbg !598
  store i8 %338, i8* %347, align 1, !dbg !598, !tbaa !579
  %348 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !600
  %349 = bitcast i8* %348 to i32*, !dbg !600
  %350 = load i32, i32* %349, align 4, !dbg !600, !tbaa !601
  %351 = trunc i32 %350 to i8, !dbg !600
  %352 = lshr i32 %350, 8, !dbg !600
  %353 = trunc i32 %352 to i8, !dbg !600
  %354 = lshr i32 %350, 16, !dbg !600
  %355 = trunc i32 %354 to i8, !dbg !600
  %356 = lshr i32 %350, 24, !dbg !600
  %357 = trunc i32 %356 to i8, !dbg !600
  store i8 %357, i8* %348, align 4, !dbg !600, !tbaa !579
  %358 = getelementptr inbounds i8, i8* %14, i64 45, !dbg !600
  store i8 %355, i8* %358, align 1, !dbg !600, !tbaa !579
  %359 = getelementptr inbounds i8, i8* %14, i64 46, !dbg !600
  store i8 %353, i8* %359, align 2, !dbg !600, !tbaa !579
  %360 = getelementptr inbounds i8, i8* %14, i64 47, !dbg !600
  store i8 %351, i8* %360, align 1, !dbg !600, !tbaa !579
  %361 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !602
  %362 = bitcast i8* %361 to i32*, !dbg !602
  %363 = load i32, i32* %362, align 4, !dbg !602, !tbaa !603
  %364 = trunc i32 %363 to i8, !dbg !602
  %365 = lshr i32 %363, 8, !dbg !602
  %366 = trunc i32 %365 to i8, !dbg !602
  %367 = lshr i32 %363, 16, !dbg !602
  %368 = trunc i32 %367 to i8, !dbg !602
  %369 = lshr i32 %363, 24, !dbg !602
  %370 = trunc i32 %369 to i8, !dbg !602
  store i8 %370, i8* %361, align 4, !dbg !602, !tbaa !579
  %371 = getelementptr inbounds i8, i8* %14, i64 49, !dbg !602
  store i8 %368, i8* %371, align 1, !dbg !602, !tbaa !579
  %372 = getelementptr inbounds i8, i8* %14, i64 50, !dbg !602
  store i8 %366, i8* %372, align 2, !dbg !602, !tbaa !579
  %373 = getelementptr inbounds i8, i8* %14, i64 51, !dbg !602
  store i8 %364, i8* %373, align 1, !dbg !602, !tbaa !579
  %374 = getelementptr inbounds i8, i8* %14, i64 52, !dbg !604
  %375 = bitcast i8* %374 to i32*, !dbg !604
  %376 = load i32, i32* %375, align 4, !dbg !604, !tbaa !605
  %377 = trunc i32 %376 to i8, !dbg !604
  %378 = lshr i32 %376, 8, !dbg !604
  %379 = trunc i32 %378 to i8, !dbg !604
  %380 = lshr i32 %376, 16, !dbg !604
  %381 = trunc i32 %380 to i8, !dbg !604
  %382 = lshr i32 %376, 24, !dbg !604
  %383 = trunc i32 %382 to i8, !dbg !604
  store i8 %383, i8* %374, align 4, !dbg !604, !tbaa !579
  %384 = getelementptr inbounds i8, i8* %14, i64 53, !dbg !604
  store i8 %381, i8* %384, align 1, !dbg !604, !tbaa !579
  %385 = getelementptr inbounds i8, i8* %14, i64 54, !dbg !604
  store i8 %379, i8* %385, align 2, !dbg !604, !tbaa !579
  %386 = getelementptr inbounds i8, i8* %14, i64 55, !dbg !604
  store i8 %377, i8* %386, align 1, !dbg !604, !tbaa !579
  %387 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !606
  %388 = bitcast i8* %387 to i32*, !dbg !606
  %389 = load i32, i32* %388, align 4, !dbg !606, !tbaa !607
  %390 = trunc i32 %389 to i8, !dbg !606
  %391 = lshr i32 %389, 8, !dbg !606
  %392 = trunc i32 %391 to i8, !dbg !606
  %393 = lshr i32 %389, 16, !dbg !606
  %394 = trunc i32 %393 to i8, !dbg !606
  %395 = lshr i32 %389, 24, !dbg !606
  %396 = trunc i32 %395 to i8, !dbg !606
  store i8 %396, i8* %387, align 4, !dbg !606, !tbaa !579
  %397 = getelementptr inbounds i8, i8* %14, i64 57, !dbg !606
  store i8 %394, i8* %397, align 1, !dbg !606, !tbaa !579
  %398 = getelementptr inbounds i8, i8* %14, i64 58, !dbg !606
  store i8 %392, i8* %398, align 2, !dbg !606, !tbaa !579
  %399 = getelementptr inbounds i8, i8* %14, i64 59, !dbg !606
  store i8 %390, i8* %399, align 1, !dbg !606, !tbaa !579
  %400 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !608
  %401 = bitcast i8* %400 to i32*, !dbg !608
  %402 = load i32, i32* %401, align 4, !dbg !608, !tbaa !609
  %403 = trunc i32 %402 to i8, !dbg !608
  %404 = lshr i32 %402, 8, !dbg !608
  %405 = trunc i32 %404 to i8, !dbg !608
  %406 = lshr i32 %402, 16, !dbg !608
  %407 = trunc i32 %406 to i8, !dbg !608
  %408 = lshr i32 %402, 24, !dbg !608
  %409 = trunc i32 %408 to i8, !dbg !608
  store i8 %409, i8* %400, align 4, !dbg !608, !tbaa !579
  %410 = getelementptr inbounds i8, i8* %14, i64 61, !dbg !608
  store i8 %407, i8* %410, align 1, !dbg !608, !tbaa !579
  %411 = getelementptr inbounds i8, i8* %14, i64 62, !dbg !608
  store i8 %405, i8* %411, align 2, !dbg !608, !tbaa !579
  %412 = getelementptr inbounds i8, i8* %14, i64 63, !dbg !608
  store i8 %403, i8* %412, align 1, !dbg !608, !tbaa !579
  %413 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !610
  %414 = bitcast i8* %413 to i32*, !dbg !610
  %415 = load i32, i32* %414, align 4, !dbg !610, !tbaa !611
  %416 = trunc i32 %415 to i8, !dbg !610
  %417 = lshr i32 %415, 8, !dbg !610
  %418 = trunc i32 %417 to i8, !dbg !610
  %419 = lshr i32 %415, 16, !dbg !610
  %420 = trunc i32 %419 to i8, !dbg !610
  %421 = lshr i32 %415, 24, !dbg !610
  %422 = trunc i32 %421 to i8, !dbg !610
  store i8 %422, i8* %413, align 4, !dbg !610, !tbaa !579
  %423 = getelementptr inbounds i8, i8* %14, i64 65, !dbg !610
  store i8 %420, i8* %423, align 1, !dbg !610, !tbaa !579
  %424 = getelementptr inbounds i8, i8* %14, i64 66, !dbg !610
  store i8 %418, i8* %424, align 2, !dbg !610, !tbaa !579
  %425 = getelementptr inbounds i8, i8* %14, i64 67, !dbg !610
  store i8 %416, i8* %425, align 1, !dbg !610, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br label %426, !dbg !614

; <label>:426:                                    ; preds = %426, %203
  %427 = phi i64 [ 0, %203 ], [ %448, %426 ]
  %428 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %427, !dbg !615
  %429 = load i32, i32* %428, align 4, !dbg !615, !tbaa !241
  %430 = trunc i32 %429 to i8, !dbg !615
  %431 = lshr i32 %429, 8, !dbg !615
  %432 = trunc i32 %431 to i8, !dbg !615
  %433 = lshr i32 %429, 16, !dbg !615
  %434 = trunc i32 %433 to i8, !dbg !615
  %435 = lshr i32 %429, 24, !dbg !615
  %436 = trunc i32 %435 to i8, !dbg !615
  %437 = bitcast i32* %428 to i8*, !dbg !615
  store i8 %436, i8* %437, align 4, !dbg !615, !tbaa !579
  %438 = getelementptr inbounds i8, i8* %437, i64 1, !dbg !615
  store i8 %434, i8* %438, align 1, !dbg !615, !tbaa !579
  %439 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !615
  store i8 %432, i8* %439, align 2, !dbg !615, !tbaa !579
  %440 = getelementptr inbounds i8, i8* %437, i64 3, !dbg !615
  store i8 %430, i8* %440, align 1, !dbg !615, !tbaa !579
  %441 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 18, i64 %427, !dbg !616
  %442 = load i16, i16* %441, align 2, !dbg !616, !tbaa !617
  %443 = trunc i16 %442 to i8, !dbg !616
  %444 = lshr i16 %442, 8, !dbg !616
  %445 = trunc i16 %444 to i8, !dbg !616
  %446 = bitcast i16* %441 to i8*, !dbg !616
  store i8 %445, i8* %446, align 2, !dbg !616, !tbaa !579
  %447 = getelementptr inbounds i8, i8* %446, i64 1, !dbg !616
  store i8 %443, i8* %447, align 1, !dbg !616, !tbaa !579
  %448 = add nuw nsw i64 %427, 1, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %449 = icmp eq i64 %448, 32, !dbg !620
  br i1 %449, label %450, label %426, !dbg !614, !llvm.loop !621

; <label>:450:                                    ; preds = %426
  %451 = trunc i64 %205 to i32, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %452 = icmp eq i32 %451, -1, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %452, label %453, label %456, !dbg !627

; <label>:453:                                    ; preds = %450
  %454 = call i32* @__errno() #6, !dbg !628
  %455 = load i32, i32* %454, align 4, !dbg !628, !tbaa !241
  br label %553, !dbg !628

; <label>:456:                                    ; preds = %450
  %457 = and i64 %205, 4294967295, !dbg !630
  %458 = icmp eq i64 %457, 260, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %458, label %459, label %553, !dbg !632

; <label>:459:                                    ; preds = %456
  %460 = load i32, i32* %206, align 8, !dbg !633, !tbaa !635
  %461 = icmp eq i32 %460, 398689, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %461, label %462, label %553, !dbg !637

; <label>:462:                                    ; preds = %459
  %463 = load i32, i32* %219, align 4, !dbg !638, !tbaa !640
  %464 = icmp eq i32 %463, 2, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %464, label %467, label %465, !dbg !642

; <label>:465:                                    ; preds = %462
  %466 = icmp eq i32 %463, 1, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %466, label %467, label %553, !dbg !644

; <label>:467:                                    ; preds = %465, %462
  %468 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !645
  %469 = bitcast i8* %468 to i32 (i8*, i64)**, !dbg !645
  %470 = load i32 (i8*, i64)*, i32 (i8*, i64)** %469, align 8, !dbg !645, !tbaa !349
  %471 = call i32 %470(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !647
  %472 = load i32, i32* %414, align 8, !dbg !648, !tbaa !649
  %473 = icmp eq i32 %471, %472, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %473, label %474, label %553, !dbg !651

; <label>:474:                                    ; preds = %467
  %475 = load i32, i32* %336, align 8, !dbg !652, !tbaa !479
  %476 = load i32, i32* %284, align 8, !dbg !653, !tbaa !336
  %477 = add i32 %476, %475, !dbg !654
  %478 = sdiv i32 %477, %476, !dbg !655
  %479 = getelementptr inbounds i8, i8* %14, i64 260, !dbg !657
  %480 = bitcast i8* %479 to i32*, !dbg !657
  store i32 0, i32* %480, align 4, !dbg !658, !tbaa !659
  %481 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %478) #7, !dbg !660
  %482 = icmp eq i32 %481, 0, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %482, label %483, label %561, !dbg !662

; <label>:483:                                    ; preds = %474
  %484 = getelementptr inbounds i8, i8* %14, i64 68, !dbg !663
  %485 = bitcast i8* %484 to [32 x i32]*, !dbg !663
  %486 = load i32, i32* %310, align 8, !dbg !664, !tbaa !461
  %487 = sext i32 %486 to i64, !dbg !665
  %488 = getelementptr inbounds [32 x i32], [32 x i32]* %485, i64 0, i64 %487, !dbg !665
  %489 = load i32, i32* %488, align 4, !dbg !665, !tbaa !241
  %490 = load i32, i32* %245, align 4, !dbg !666, !tbaa !366
  %491 = shl i32 %490, 3, !dbg !667
  %492 = add i32 %489, -1, !dbg !668
  %493 = add i32 %492, %491, !dbg !669
  %494 = load i32, i32* %258, align 8, !dbg !670, !tbaa !369
  %495 = add nsw i32 %494, 3, !dbg !671
  %496 = ashr i32 %493, %495, !dbg !672
  %497 = getelementptr inbounds i8, i8* %14, i64 592, !dbg !674
  %498 = bitcast i8* %497 to i32*, !dbg !674
  store i32 %496, i32* %498, align 8, !dbg !675, !tbaa !676
  %499 = getelementptr inbounds i8, i8* %14, i64 336, !dbg !677
  %500 = sext i32 %496 to i64, !dbg !678
  %501 = shl nsw i64 %500, 3, !dbg !679
  %502 = call i8* @memset(i8* nonnull %499, i32 0, i64 %501) #6, !dbg !680
  br label %503

; <label>:503:                                    ; preds = %189, %483
  %504 = phi i32 [ 1, %189 ], [ 0, %483 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %505 = icmp eq %struct.HASHINFO* %4, null, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %505, label %511, label %506, !dbg !683

; <label>:506:                                    ; preds = %503
  %507 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 3, !dbg !684
  %508 = load i32, i32* %507, align 4, !dbg !684, !tbaa !685
  %509 = icmp eq i32 %508, 0, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %509, label %511, label %510, !dbg !687

; <label>:510:                                    ; preds = %506
  call void @__buf_init(%struct.htab* nonnull %15, i32 %508) #6, !dbg !688
  br label %512, !dbg !688

; <label>:511:                                    ; preds = %506, %503
  call void @__buf_init(%struct.htab* nonnull %15, i32 65536) #6, !dbg !689
  br label %512

; <label>:512:                                    ; preds = %511, %510
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %513 = getelementptr inbounds i8, i8* %14, i64 324, !dbg !690
  %514 = bitcast i8* %513 to i32*, !dbg !690
  store i32 %504, i32* %514, align 4, !dbg !691, !tbaa !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %22, label %515, label %519, !dbg !693

; <label>:515:                                    ; preds = %512
  %516 = load i32, i32* %21, align 8, !dbg !694, !tbaa !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %517 = lshr i32 %516, 1
  %518 = and i32 %517, 1
  br label %519

; <label>:519:                                    ; preds = %515, %512
  %520 = phi i32 [ 0, %512 ], [ %518, %515 ]
  %521 = getelementptr inbounds i8, i8* %14, i64 328, !dbg !695
  %522 = bitcast i8* %521 to i32*, !dbg !695
  store i32 %520, i32* %522, align 8, !dbg !696, !tbaa !697
  %523 = getelementptr inbounds i8, i8* %14, i64 312, !dbg !698
  %524 = bitcast i8* %523 to i32*, !dbg !698
  store i32 -1, i32* %524, align 8, !dbg !699, !tbaa !700
  %525 = call i8* @malloc(i64 72) #6, !dbg !701
  %526 = icmp eq i8* %525, null, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %526, label %527, label %532, !dbg !704

; <label>:527:                                    ; preds = %519
  %528 = call i32* @__errno() #6, !dbg !705
  %529 = load i32, i32* %528, align 4, !dbg !705, !tbaa !241
  %530 = call fastcc i32 @hdestroy(%struct.htab* nonnull %15) #7, !dbg !707
  %531 = call i32* @__errno() #6, !dbg !708
  store i32 %529, i32* %531, align 4, !dbg !709, !tbaa !241
  br label %561, !dbg !710

; <label>:532:                                    ; preds = %519
  %533 = bitcast i8* %525 to %struct.__db*, !dbg !711
  %534 = getelementptr inbounds i8, i8* %525, i64 56, !dbg !713
  %535 = bitcast i8* %534 to i8**, !dbg !714
  store i8* %14, i8** %535, align 8, !dbg !714, !tbaa !715
  %536 = getelementptr inbounds i8, i8* %525, i64 8, !dbg !717
  %537 = bitcast i8* %536 to i32 (%struct.__db*)**, !dbg !717
  store i32 (%struct.__db*)* @hash_close, i32 (%struct.__db*)** %537, align 8, !dbg !718, !tbaa !719
  %538 = getelementptr inbounds i8, i8* %525, i64 16, !dbg !720
  %539 = bitcast i8* %538 to i32 (%struct.__db*, %struct.DBT*, i32)**, !dbg !720
  store i32 (%struct.__db*, %struct.DBT*, i32)* @hash_delete, i32 (%struct.__db*, %struct.DBT*, i32)** %539, align 8, !dbg !721, !tbaa !722
  %540 = getelementptr inbounds i8, i8* %525, i64 64, !dbg !723
  %541 = bitcast i8* %540 to i32 (%struct.__db*)**, !dbg !723
  store i32 (%struct.__db*)* @hash_fd, i32 (%struct.__db*)** %541, align 8, !dbg !724, !tbaa !725
  %542 = getelementptr inbounds i8, i8* %525, i64 24, !dbg !726
  %543 = bitcast i8* %542 to <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>*, !dbg !727
  store <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*> <i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_get, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_put>, <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>* %543, align 8, !dbg !727, !tbaa !346
  %544 = getelementptr inbounds i8, i8* %525, i64 40, !dbg !728
  %545 = bitcast i8* %544 to i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)**, !dbg !728
  store i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_seq, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)** %545, align 8, !dbg !729, !tbaa !730
  %546 = getelementptr inbounds i8, i8* %525, i64 48, !dbg !731
  %547 = bitcast i8* %546 to i32 (%struct.__db*, i32)**, !dbg !731
  store i32 (%struct.__db*, i32)* @hash_sync, i32 (%struct.__db*, i32)** %547, align 8, !dbg !732, !tbaa !733
  %548 = bitcast i8* %525 to i32*, !dbg !734
  store i32 1, i32* %548, align 8, !dbg !735, !tbaa !736
  br label %561, !dbg !737

; <label>:549:                                    ; preds = %90, %108, %134, %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %550, !dbg !508

; <label>:550:                                    ; preds = %549, %186
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %63) #5, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %551 = call i32* @__errno() #6, !dbg !740
  %552 = load i32, i32* %551, align 4, !dbg !740, !tbaa !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br label %557, !dbg !742

; <label>:553:                                    ; preds = %467, %465, %459, %456, %453
  %554 = phi i32 [ %455, %453 ], [ 79, %456 ], [ 79, %459 ], [ 79, %465 ], [ 79, %467 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %555 = load i32, i32* %19, align 4, !dbg !745, !tbaa !254
  %556 = call i32 @close(i32 %555) #6, !dbg !747
  br label %557, !dbg !748

; <label>:557:                                    ; preds = %550, %553, %45
  %558 = phi i8* [ %14, %45 ], [ %14, %553 ], [ null, %550 ], !dbg !738
  %559 = phi i32 [ %47, %45 ], [ %554, %553 ], [ %552, %550 ], !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  call void @free(i8* %558) #6, !dbg !751
  %560 = call i32* @__errno() #6, !dbg !752
  store i32 %559, i32* %560, align 4, !dbg !753, !tbaa !241
  br label %561, !dbg !754

; <label>:561:                                    ; preds = %474, %13, %557, %532, %527, %11
  %562 = phi %struct.__db* [ null, %11 ], [ null, %557 ], [ %533, %532 ], [ null, %527 ], [ null, %13 ], [ null, %474 ], !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %8) #5, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  ret %struct.__db* %562, !dbg !757
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @stat(i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @alloc_segs(%struct.htab*, i32) unnamed_addr #0 !dbg !758 {
  %3 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !767
  %4 = load i32, i32* %3, align 4, !dbg !767, !tbaa !499
  %5 = sext i32 %4 to i64, !dbg !769
  %6 = tail call i8* @calloc(i64 %5, i64 8) #6, !dbg !770
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !771
  %8 = bitcast %struct._bufhead**** %7 to i8**, !dbg !772
  store i8* %6, i8** %8, align 8, !dbg !772, !tbaa !773
  %9 = icmp eq i8* %6, null, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %9, label %10, label %15, !dbg !775

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno() #6, !dbg !776
  %12 = load i32, i32* %11, align 4, !dbg !776, !tbaa !241
  %13 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !779
  %14 = tail call i32* @__errno() #6, !dbg !780
  store i32 %12, i32* %14, align 4, !dbg !781, !tbaa !241
  br label %73, !dbg !782

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !783
  %17 = load i32, i32* %16, align 4, !dbg !783, !tbaa !339
  %18 = shl i32 %1, %17, !dbg !785
  %19 = sext i32 %18 to i64, !dbg !786
  %20 = tail call i8* @calloc(i64 %19, i64 8) #6, !dbg !787
  %21 = bitcast i8* %20 to %struct._bufhead**, !dbg !788
  %22 = icmp eq i8* %20, null, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %22, label %23, label %28, !dbg !791

; <label>:23:                                     ; preds = %15
  %24 = tail call i32* @__errno() #6, !dbg !792
  %25 = load i32, i32* %24, align 4, !dbg !792, !tbaa !241
  %26 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !794
  %27 = tail call i32* @__errno() #6, !dbg !795
  store i32 %25, i32* %27, align 4, !dbg !796, !tbaa !241
  br label %73, !dbg !797

; <label>:28:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %29 = icmp sgt i32 %1, 0, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %29, label %30, label %73, !dbg !803

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %16, align 4, !tbaa !339
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  %33 = load i32, i32* %32, align 4, !dbg !804, !tbaa !659
  %34 = zext i32 %1 to i64
  %35 = and i64 %34, 1, !dbg !803
  %36 = icmp eq i32 %1, 1, !dbg !803
  br i1 %36, label %61, label %37, !dbg !803

; <label>:37:                                     ; preds = %30
  %38 = sub nsw i64 %34, %35, !dbg !803
  br label %39, !dbg !803

; <label>:39:                                     ; preds = %39, %37
  %40 = phi i32 [ %33, %37 ], [ %58, %39 ], !dbg !804
  %41 = phi i64 [ 0, %37 ], [ %57, %39 ]
  %42 = phi i64 [ %38, %37 ], [ %59, %39 ]
  %43 = trunc i64 %41 to i32, !dbg !805
  %44 = shl i32 %43, %31, !dbg !805
  %45 = sext i32 %44 to i64, !dbg !806
  %46 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %45, !dbg !806
  %47 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !807, !tbaa !773
  %48 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %47, i64 %41, !dbg !808
  store %struct._bufhead** %46, %struct._bufhead*** %48, align 8, !dbg !809, !tbaa !346
  %49 = or i64 %41, 1, !dbg !810
  %50 = add nsw i32 %40, 1, !dbg !804
  store i32 %50, i32* %32, align 4, !dbg !804, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  %51 = trunc i64 %49 to i32, !dbg !805
  %52 = shl i32 %51, %31, !dbg !805
  %53 = sext i32 %52 to i64, !dbg !806
  %54 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %53, !dbg !806
  %55 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !807, !tbaa !773
  %56 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %55, i64 %49, !dbg !808
  store %struct._bufhead** %54, %struct._bufhead*** %56, align 8, !dbg !809, !tbaa !346
  %57 = add nuw nsw i64 %41, 2, !dbg !810
  %58 = add nsw i32 %40, 2, !dbg !804
  store i32 %58, i32* %32, align 4, !dbg !804, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  %59 = add i64 %42, -2, !dbg !803
  %60 = icmp eq i64 %59, 0, !dbg !803
  br i1 %60, label %61, label %39, !dbg !803, !llvm.loop !812

; <label>:61:                                     ; preds = %39, %30
  %62 = phi i32 [ %33, %30 ], [ %58, %39 ]
  %63 = phi i64 [ 0, %30 ], [ %57, %39 ]
  %64 = icmp eq i64 %35, 0, !dbg !803
  br i1 %64, label %73, label %65, !dbg !803

; <label>:65:                                     ; preds = %61
  %66 = trunc i64 %63 to i32, !dbg !805
  %67 = shl i32 %66, %31, !dbg !805
  %68 = sext i32 %67 to i64, !dbg !806
  %69 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %68, !dbg !806
  %70 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !807, !tbaa !773
  %71 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %70, i64 %63, !dbg !808
  store %struct._bufhead** %69, %struct._bufhead*** %71, align 8, !dbg !809, !tbaa !346
  %72 = add nsw i32 %62, 1, !dbg !804
  store i32 %72, i32* %32, align 4, !dbg !804, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br label %73, !dbg !814

; <label>:73:                                     ; preds = %65, %61, %28, %23, %10
  %74 = phi i32 [ -1, %10 ], [ -1, %23 ], [ 0, %28 ], [ 0, %61 ], [ 0, %65 ], !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  ret i32 %74, !dbg !816
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__buf_init(%struct.htab*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hdestroy(%struct.htab*) unnamed_addr #0 !dbg !817 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !826
  %3 = load i32, i32* %2, align 8, !dbg !826, !tbaa !697
  %4 = tail call i32 @__buf_free(%struct.htab* %0, i32 1, i32 %3) #6, !dbg !828
  %5 = icmp eq i32 %4, 0, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %5, label %9, label %6, !dbg !829

; <label>:6:                                      ; preds = %1
  %7 = tail call i32* @__errno() #6, !dbg !830
  %8 = load i32, i32* %7, align 4, !dbg !830, !tbaa !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br label %9, !dbg !831

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ], !dbg !832
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !833
  %12 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !833, !tbaa !773
  %13 = icmp eq %struct._bufhead*** %12, null, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %13, label %39, label %14, !dbg !836

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct._bufhead*** %12 to i8**, !dbg !837
  %16 = load i8*, i8** %15, align 8, !dbg !837, !tbaa !346
  tail call void @free(i8* %16) #6, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %17 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !841
  %18 = load i32, i32* %17, align 8, !dbg !842, !tbaa !843
  %19 = add nsw i32 %18, -1, !dbg !842
  store i32 %19, i32* %17, align 8, !dbg !842, !tbaa !843
  %20 = icmp eq i32 %18, 0, !dbg !840
  %21 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !844, !tbaa !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %20, label %36, label %22, !dbg !840

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  br label %24, !dbg !840

; <label>:24:                                     ; preds = %22, %24
  %25 = phi %struct._bufhead*** [ %21, %22 ], [ %35, %24 ]
  %26 = load i32, i32* %23, align 4, !dbg !845, !tbaa !659
  %27 = add nsw i32 %26, -1, !dbg !845
  store i32 %27, i32* %23, align 4, !dbg !845, !tbaa !659
  %28 = sext i32 %27 to i64, !dbg !846
  %29 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %25, i64 %28, !dbg !846
  %30 = bitcast %struct._bufhead*** %29 to i8**, !dbg !846
  %31 = load i8*, i8** %30, align 8, !dbg !846, !tbaa !346
  tail call void @free(i8* %31) #6, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %32 = load i32, i32* %17, align 8, !dbg !842, !tbaa !843
  %33 = add nsw i32 %32, -1, !dbg !842
  store i32 %33, i32* %17, align 8, !dbg !842, !tbaa !843
  %34 = icmp eq i32 %32, 0, !dbg !840
  %35 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !844, !tbaa !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %34, label %36, label %24, !dbg !840, !llvm.loop !848

; <label>:36:                                     ; preds = %24, %14
  %37 = phi %struct._bufhead*** [ %21, %14 ], [ %35, %24 ], !dbg !844
  %38 = bitcast %struct._bufhead*** %37 to i8*, !dbg !850
  tail call void @free(i8* %38) #6, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br label %39, !dbg !852

; <label>:39:                                     ; preds = %9, %36
  %40 = tail call fastcc i32 @flush_meta(%struct.htab* nonnull %0) #7, !dbg !853
  %41 = icmp eq i32 %40, 0, !dbg !853
  %42 = icmp ne i32 %10, 0, !dbg !855
  %43 = or i1 %42, %41, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %43, label %47, label %44, !dbg !856

; <label>:44:                                     ; preds = %39
  %45 = tail call i32* @__errno() #6, !dbg !857
  %46 = load i32, i32* %45, align 4, !dbg !857, !tbaa !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br label %47, !dbg !858

; <label>:47:                                     ; preds = %39, %44
  %48 = phi i32 [ %10, %39 ], [ %46, %44 ], !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  %49 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !863
  %50 = load i32, i32* %49, align 8, !dbg !863, !tbaa !676
  %51 = icmp sgt i32 %50, 0, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %51, label %52, label %66, !dbg !866

; <label>:52:                                     ; preds = %47, %61
  %53 = phi i32 [ %62, %61 ], [ %50, %47 ]
  %54 = phi i64 [ %63, %61 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %54, !dbg !867
  %56 = load i32*, i32** %55, align 8, !dbg !867, !tbaa !346
  %57 = icmp eq i32* %56, null, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %57, label %61, label %58, !dbg !869

; <label>:58:                                     ; preds = %52
  %59 = bitcast i32* %56 to i8*, !dbg !870
  tail call void @free(i8* %59) #6, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  %60 = load i32, i32* %49, align 8, !dbg !863, !tbaa !676
  br label %61, !dbg !871

; <label>:61:                                     ; preds = %52, %58
  %62 = phi i32 [ %53, %52 ], [ %60, %58 ], !dbg !863
  %63 = add nuw nsw i64 %54, 1, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  %64 = sext i32 %62 to i64, !dbg !865
  %65 = icmp slt i64 %63, %64, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %65, label %52, label %66, !dbg !866, !llvm.loop !874

; <label>:66:                                     ; preds = %61, %47
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !876
  %68 = load i32, i32* %67, align 4, !dbg !876, !tbaa !254
  %69 = icmp eq i32 %68, -1, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %69, label %72, label %70, !dbg !879

; <label>:70:                                     ; preds = %66
  %71 = tail call i32 @close(i32 %68) #6, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br label %72, !dbg !881

; <label>:72:                                     ; preds = %66, %70
  %73 = bitcast %struct.htab* %0 to i8*, !dbg !882
  tail call void @free(i8* %73) #6, !dbg !883
  %74 = icmp eq i32 %48, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %74, label %77, label %75, !dbg !886

; <label>:75:                                     ; preds = %72
  %76 = tail call i32* @__errno() #6, !dbg !887
  store i32 %48, i32* %76, align 4, !dbg !889, !tbaa !241
  br label %77, !dbg !890

; <label>:77:                                     ; preds = %72, %75
  %78 = phi i32 [ -1, %75 ], [ 0, %72 ], !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  ret i32 %78, !dbg !892
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_close(%struct.__db*) #0 !dbg !893 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %2, label %9, label %3, !dbg !903

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !904
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !904
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !904, !tbaa !715
  %7 = tail call fastcc i32 @hdestroy(%struct.htab* %6) #7, !dbg !906
  %8 = bitcast %struct.__db* %0 to i8*, !dbg !908
  tail call void @free(i8* %8) #6, !dbg !909
  br label %9, !dbg !910

; <label>:9:                                      ; preds = %1, %3
  %10 = phi i32 [ %7, %3 ], [ -1, %1 ], !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  ret i32 %10, !dbg !912
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_delete(%struct.__db* nocapture readonly, %struct.DBT*, i32) #0 !dbg !913 {
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !926
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !926
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !926, !tbaa !715
  %7 = icmp ugt i32 %2, 1, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %7, label %8, label %11, !dbg !928

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno() #6, !dbg !930
  store i32 22, i32* %9, align 4, !dbg !932, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !933
  store i32 22, i32* %10, align 8, !dbg !934, !tbaa !935
  br label %21, !dbg !936

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 4, !dbg !937
  %13 = load i32, i32* %12, align 8, !dbg !937, !tbaa !261
  %14 = and i32 %13, 3, !dbg !939
  %15 = icmp eq i32 %14, 0, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %15, label %16, label %19, !dbg !941

; <label>:16:                                     ; preds = %11
  %17 = tail call i32* @__errno() #6, !dbg !942
  store i32 1, i32* %17, align 4, !dbg !944, !tbaa !241
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !945
  store i32 1, i32* %18, align 8, !dbg !946, !tbaa !935
  br label %21, !dbg !947

; <label>:19:                                     ; preds = %11
  %20 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %6, i32 3, %struct.DBT* %1, %struct.DBT* null) #7, !dbg !948
  br label %21, !dbg !949

; <label>:21:                                     ; preds = %19, %16, %8
  %22 = phi i32 [ -1, %8 ], [ -1, %16 ], [ %20, %19 ], !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  ret i32 %22, !dbg !952
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_fd(%struct.__db* readonly) #0 !dbg !953 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br i1 %2, label %12, label %3, !dbg !962

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !963
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !963
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !963, !tbaa !715
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 5, !dbg !965
  %8 = load i32, i32* %7, align 4, !dbg !965, !tbaa !254
  %9 = icmp eq i32 %8, -1, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %9, label %10, label %12, !dbg !968

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno() #6, !dbg !969
  store i32 2, i32* %11, align 4, !dbg !971, !tbaa !241
  br label %12, !dbg !972

; <label>:12:                                     ; preds = %3, %1, %10
  %13 = phi i32 [ -1, %10 ], [ -1, %1 ], [ %8, %3 ], !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  ret i32 %13, !dbg !974
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_get(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !975 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !988
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !988
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !988, !tbaa !715
  %8 = icmp eq i32 %3, 0, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %8, label %12, label %9, !dbg !992

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno() #6, !dbg !993
  store i32 22, i32* %10, align 4, !dbg !995, !tbaa !241
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !996
  store i32 22, i32* %11, align 8, !dbg !997, !tbaa !935
  br label %14, !dbg !998

; <label>:12:                                     ; preds = %4
  %13 = tail call fastcc i32 @hash_access(%struct.htab* %7, i32 0, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !999
  br label %14, !dbg !1000

; <label>:14:                                     ; preds = %12, %9
  %15 = phi i32 [ -1, %9 ], [ %13, %12 ], !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  ret i32 %15, !dbg !1003
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_put(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !1004 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1017
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !1017
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !1017, !tbaa !715
  %8 = or i32 %3, 8, !dbg !1019
  %9 = icmp eq i32 %8, 8, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %9, label %13, label %10, !dbg !1019

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1021
  store i32 22, i32* %11, align 8, !dbg !1023, !tbaa !935
  %12 = tail call i32* @__errno() #6, !dbg !1024
  store i32 22, i32* %12, align 4, !dbg !1025, !tbaa !241
  br label %25, !dbg !1026

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 4, !dbg !1027
  %15 = load i32, i32* %14, align 8, !dbg !1027, !tbaa !261
  %16 = and i32 %15, 3, !dbg !1029
  %17 = icmp eq i32 %16, 0, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %17, label %18, label %21, !dbg !1031

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno() #6, !dbg !1032
  store i32 1, i32* %19, align 4, !dbg !1034, !tbaa !241
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1035
  store i32 1, i32* %20, align 8, !dbg !1036, !tbaa !935
  br label %25, !dbg !1037

; <label>:21:                                     ; preds = %13
  %22 = icmp eq i32 %3, 8, !dbg !1038
  %23 = select i1 %22, i32 2, i32 1, !dbg !1039
  %24 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %7, i32 %23, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !1040
  br label %25, !dbg !1041

; <label>:25:                                     ; preds = %21, %18, %10
  %26 = phi i32 [ -1, %10 ], [ -1, %18 ], [ %24, %21 ], !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  ret i32 %26, !dbg !1044
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_seq(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !1045 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1062
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !1062
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !1062, !tbaa !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  switch i32 %3, label %8 [
    i32 7, label %11
    i32 3, label %11
    i32 0, label %11
  ], !dbg !1064

; <label>:8:                                      ; preds = %4
  %9 = tail call i32* @__errno() #6, !dbg !1066
  store i32 22, i32* %9, align 4, !dbg !1068, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1069
  store i32 22, i32* %10, align 8, !dbg !1070, !tbaa !935
  br label %156, !dbg !1071

; <label>:11:                                     ; preds = %4, %4, %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 9, !dbg !1072
  %13 = load i32, i32* %12, align 8, !dbg !1072, !tbaa !700
  %14 = icmp slt i32 %13, 0, !dbg !1074
  %15 = icmp eq i32 %3, 3, !dbg !1075
  %16 = or i1 %15, %14, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %16, label %20, label %17, !dbg !1076

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10
  br label %23, !dbg !1076

; <label>:20:                                     ; preds = %11
  store i32 0, i32* %12, align 8, !dbg !1077, !tbaa !700
  %21 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10, !dbg !1079
  store i32 1, i32* %21, align 4, !dbg !1080, !tbaa !1081
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8, !dbg !1082
  store %struct._bufhead* null, %struct._bufhead** %22, align 8, !dbg !1083, !tbaa !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br label %23, !dbg !1085

; <label>:23:                                     ; preds = %17, %20
  %24 = phi i32* [ %19, %17 ], [ %21, %20 ]
  %25 = phi %struct._bufhead** [ %18, %17 ], [ %22, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 10
  br label %27, !dbg !1087

; <label>:27:                                     ; preds = %103, %23
  %28 = phi %struct._bufhead* [ undef, %23 ], [ %96, %103 ]
  %29 = phi i16* [ null, %23 ], [ %97, %103 ], !dbg !1089
  %30 = icmp eq i16* %29, null, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %30, label %34, label %31, !dbg !1095

; <label>:31:                                     ; preds = %27
  %32 = load i16, i16* %29, align 2, !dbg !1096, !tbaa !617
  %33 = icmp eq i16 %32, 0, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %33, label %35, label %104, !dbg !1098

; <label>:34:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br label %35

; <label>:35:                                     ; preds = %34, %31
  %36 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1099, !tbaa !1084
  %37 = icmp eq %struct._bufhead* %36, null, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  br i1 %37, label %38, label %65, !dbg !1101

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %12, align 8, !dbg !1102, !tbaa !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %40 = load i32, i32* %26, align 8, !dbg !1107, !tbaa !479
  %41 = icmp ugt i32 %39, %40, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %41, label %58, label %42, !dbg !1110

; <label>:42:                                     ; preds = %38, %54
  %43 = phi i32 [ %55, %54 ], [ %39, %38 ]
  %44 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %43, %struct._bufhead* null, i32 0) #6, !dbg !1111
  %45 = icmp eq %struct._bufhead* %44, null, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %45, label %156, label %46, !dbg !1115

; <label>:46:                                     ; preds = %42
  store %struct._bufhead* %44, %struct._bufhead** %25, align 8, !dbg !1116, !tbaa !1084
  %47 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %44, i64 0, i32 4, !dbg !1117
  %48 = bitcast i8** %47 to i16**, !dbg !1117
  %49 = load i16*, i16** %48, align 8, !dbg !1117, !tbaa !1118
  %50 = load i16, i16* %49, align 2, !dbg !1119, !tbaa !617
  %51 = icmp eq i16 %50, 0, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br i1 %51, label %54, label %52, !dbg !1121

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %26, align 8, !dbg !1122, !tbaa !479
  br label %58, !dbg !1121

; <label>:54:                                     ; preds = %46
  %55 = add i32 %43, 1, !dbg !1124
  store i32 1, i32* %24, align 4, !dbg !1125, !tbaa !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  %56 = load i32, i32* %26, align 8, !dbg !1107, !tbaa !479
  %57 = icmp ugt i32 %55, %56, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %57, label %58, label %42, !dbg !1110, !llvm.loop !1127

; <label>:58:                                     ; preds = %54, %52, %38
  %59 = phi i32 [ %40, %38 ], [ %53, %52 ], [ %56, %54 ], !dbg !1122
  %60 = phi i32 [ %39, %38 ], [ %43, %52 ], [ %55, %54 ], !dbg !1129
  %61 = phi %struct._bufhead* [ null, %38 ], [ %44, %52 ], [ %44, %54 ], !dbg !1089
  %62 = phi i16* [ %29, %38 ], [ %49, %52 ], [ %49, %54 ], !dbg !1130
  store i32 %60, i32* %12, align 8, !dbg !1131, !tbaa !700
  %63 = icmp sgt i32 %60, %59, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  br i1 %63, label %64, label %69, !dbg !1133

; <label>:64:                                     ; preds = %58
  store i32 -1, i32* %12, align 8, !dbg !1134, !tbaa !700
  br label %156, !dbg !1136

; <label>:65:                                     ; preds = %35
  %66 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %36, i64 0, i32 4, !dbg !1137
  %67 = bitcast i8** %66 to i16**, !dbg !1137
  %68 = load i16*, i16** %67, align 8, !dbg !1137, !tbaa !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %69

; <label>:69:                                     ; preds = %58, %65
  %70 = phi %struct._bufhead* [ %36, %65 ], [ %61, %58 ], !dbg !1138
  %71 = phi i16* [ %68, %65 ], [ %62, %58 ], !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  %72 = load i32, i32* %24, align 4, !dbg !1140, !tbaa !1081
  %73 = add nsw i32 %72, 1, !dbg !1141
  %74 = sext i32 %73 to i64, !dbg !1142
  %75 = getelementptr inbounds i16, i16* %71, i64 %74, !dbg !1142
  %76 = load i16, i16* %75, align 2, !dbg !1142, !tbaa !617
  %77 = icmp eq i16 %76, 0, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %77, label %78, label %95, !dbg !1139

; <label>:78:                                     ; preds = %69, %88
  %79 = phi i32 [ 1, %88 ], [ %72, %69 ]
  %80 = phi i16* [ %91, %88 ], [ %71, %69 ]
  %81 = phi %struct._bufhead* [ %86, %88 ], [ %70, %69 ]
  %82 = sext i32 %79 to i64, !dbg !1144
  %83 = getelementptr inbounds i16, i16* %80, i64 %82, !dbg !1144
  %84 = load i16, i16* %83, align 2, !dbg !1144, !tbaa !617
  %85 = zext i16 %84 to i32, !dbg !1144
  %86 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %85, %struct._bufhead* %81, i32 0) #6, !dbg !1146
  store %struct._bufhead* %86, %struct._bufhead** %25, align 8, !dbg !1147, !tbaa !1084
  %87 = icmp eq %struct._bufhead* %86, null, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %87, label %156, label %88, !dbg !1150

; <label>:88:                                     ; preds = %78
  %89 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %86, i64 0, i32 4, !dbg !1151
  %90 = bitcast i8** %89 to i16**, !dbg !1151
  %91 = load i16*, i16** %90, align 8, !dbg !1151, !tbaa !1118
  store i32 1, i32* %24, align 4, !dbg !1152, !tbaa !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  %92 = getelementptr inbounds i16, i16* %91, i64 2, !dbg !1142
  %93 = load i16, i16* %92, align 2, !dbg !1142, !tbaa !617
  %94 = icmp eq i16 %93, 0, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %94, label %78, label %95, !dbg !1139, !llvm.loop !1153

; <label>:95:                                     ; preds = %88, %69
  %96 = phi %struct._bufhead* [ %70, %69 ], [ %86, %88 ], !dbg !1155
  %97 = phi i16* [ %71, %69 ], [ %91, %88 ], !dbg !1155
  %98 = load i16, i16* %97, align 2, !dbg !1156, !tbaa !617
  %99 = icmp eq i16 %98, 0, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %99, label %100, label %103, !dbg !1158

; <label>:100:                                    ; preds = %95
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1159, !tbaa !1084
  %101 = load i32, i32* %12, align 8, !dbg !1161, !tbaa !700
  %102 = add nsw i32 %101, 1, !dbg !1161
  store i32 %102, i32* %12, align 8, !dbg !1161, !tbaa !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %103, !dbg !1162

; <label>:103:                                    ; preds = %95, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %27, !dbg !1163, !llvm.loop !1164

; <label>:104:                                    ; preds = %31
  %105 = load i32, i32* %24, align 4, !dbg !1166, !tbaa !1081
  %106 = and i32 %105, 65535, !dbg !1167
  %107 = add nuw nsw i32 %106, 1, !dbg !1169
  %108 = zext i32 %107 to i64, !dbg !1170
  %109 = getelementptr inbounds i16, i16* %29, i64 %108, !dbg !1170
  %110 = load i16, i16* %109, align 2, !dbg !1170, !tbaa !617
  %111 = icmp ult i16 %110, 4, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %111, label %112, label %115, !dbg !1172

; <label>:112:                                    ; preds = %104
  %113 = tail call i32 @__big_keydata(%struct.htab* nonnull %7, %struct._bufhead* %28, %struct.DBT* %1, %struct.DBT* %2, i32 1) #6, !dbg !1173
  %114 = icmp eq i32 %113, 0, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %114, label %155, label %156, !dbg !1176

; <label>:115:                                    ; preds = %104
  %116 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1177, !tbaa !1084
  %117 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %116, i64 0, i32 4, !dbg !1179
  %118 = load i8*, i8** %117, align 8, !dbg !1179, !tbaa !1118
  %119 = zext i32 %106 to i64, !dbg !1180
  %120 = getelementptr inbounds i16, i16* %29, i64 %119, !dbg !1180
  %121 = load i16, i16* %120, align 2, !dbg !1180, !tbaa !617
  %122 = zext i16 %121 to i64, !dbg !1181
  %123 = getelementptr inbounds i8, i8* %118, i64 %122, !dbg !1181
  %124 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 0, !dbg !1182
  store i8* %123, i8** %124, align 8, !dbg !1183, !tbaa !1184
  %125 = icmp ugt i32 %106, 1, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %125, label %126, label %132, !dbg !1187

; <label>:126:                                    ; preds = %115
  %127 = add nsw i32 %106, -1, !dbg !1188
  %128 = sext i32 %127 to i64, !dbg !1189
  %129 = getelementptr inbounds i16, i16* %29, i64 %128, !dbg !1189
  %130 = load i16, i16* %129, align 2, !dbg !1189, !tbaa !617
  %131 = zext i16 %130 to i32, !dbg !1189
  br label %135, !dbg !1187

; <label>:132:                                    ; preds = %115
  %133 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 3, !dbg !1190
  %134 = load i32, i32* %133, align 4, !dbg !1190, !tbaa !366
  br label %135, !dbg !1187

; <label>:135:                                    ; preds = %132, %126
  %136 = phi i32 [ %131, %126 ], [ %134, %132 ], !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %137 = zext i16 %121 to i32, !dbg !1191
  %138 = sub nsw i32 %136, %137, !dbg !1192
  %139 = sext i32 %138 to i64, !dbg !1193
  %140 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 1, !dbg !1194
  store i64 %139, i64* %140, align 8, !dbg !1195, !tbaa !1196
  %141 = zext i16 %110 to i64, !dbg !1197
  %142 = getelementptr inbounds i8, i8* %118, i64 %141, !dbg !1197
  %143 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1198
  store i8* %142, i8** %143, align 8, !dbg !1199, !tbaa !1184
  %144 = sub nsw i64 %122, %141, !dbg !1200
  %145 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1201
  store i64 %144, i64* %145, align 8, !dbg !1202, !tbaa !1196
  %146 = add i32 %105, 2, !dbg !1203
  %147 = and i32 %146, 65535, !dbg !1204
  %148 = zext i16 %32 to i32, !dbg !1207
  %149 = icmp ugt i32 %147, %148, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %149, label %150, label %153, !dbg !1209

; <label>:150:                                    ; preds = %135
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1210, !tbaa !1084
  %151 = load i32, i32* %12, align 8, !dbg !1212, !tbaa !700
  %152 = add nsw i32 %151, 1, !dbg !1212
  store i32 %152, i32* %12, align 8, !dbg !1212, !tbaa !700
  br label %153, !dbg !1213

; <label>:153:                                    ; preds = %135, %150
  %154 = phi i32 [ 1, %150 ], [ %147, %135 ]
  store i32 %154, i32* %24, align 4, !dbg !1214, !tbaa !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %155, !dbg !1215

; <label>:155:                                    ; preds = %153, %112
  br label %156, !dbg !1215

; <label>:156:                                    ; preds = %42, %78, %112, %155, %64, %8
  %157 = phi i32 [ -1, %8 ], [ 1, %64 ], [ 0, %155 ], [ -1, %112 ], [ -1, %78 ], [ -1, %42 ], !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  ret i32 %157, !dbg !1218
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_sync(%struct.__db* readonly, i32) #0 !dbg !1219 {
  %3 = icmp eq i32 %1, 0, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %3, label %6, label %4, !dbg !1230

; <label>:4:                                      ; preds = %2
  %5 = tail call i32* @__errno() #6, !dbg !1231
  store i32 22, i32* %5, align 4, !dbg !1233, !tbaa !241
  br label %23, !dbg !1234

; <label>:6:                                      ; preds = %2
  %7 = icmp eq %struct.__db* %0, null, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %7, label %23, label %8, !dbg !1237

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1238
  %10 = bitcast i8** %9 to %struct.htab**, !dbg !1238
  %11 = load %struct.htab*, %struct.htab** %10, align 8, !dbg !1238, !tbaa !715
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 13, !dbg !1240
  %13 = load i32, i32* %12, align 8, !dbg !1240, !tbaa !697
  %14 = icmp eq i32 %13, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %14, label %23, label %15, !dbg !1243

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @__buf_free(%struct.htab* %11, i32 0, i32 1) #6, !dbg !1244
  %17 = icmp eq i32 %16, 0, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br i1 %17, label %18, label %23, !dbg !1246

; <label>:18:                                     ; preds = %15
  %19 = tail call fastcc i32 @flush_meta(%struct.htab* %11) #7, !dbg !1247
  %20 = icmp eq i32 %19, 0, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %20, label %21, label %23, !dbg !1248

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 12, !dbg !1249
  store i32 0, i32* %22, align 4, !dbg !1250, !tbaa !692
  br label %23, !dbg !1251

; <label>:23:                                     ; preds = %15, %18, %8, %6, %21, %4
  %24 = phi i32 [ -1, %4 ], [ 0, %21 ], [ -1, %6 ], [ 0, %8 ], [ -1, %18 ], [ -1, %15 ], !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  ret i32 %24, !dbg !1254
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #0 !dbg !1255 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1264
  %3 = load i32, i32* %2, align 8, !dbg !1265, !tbaa !479
  %4 = add nsw i32 %3, 1, !dbg !1265
  store i32 %4, i32* %2, align 8, !dbg !1265, !tbaa !479
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1267
  %6 = load i32, i32* %5, align 8, !dbg !1267, !tbaa !476
  %7 = and i32 %6, %4, !dbg !1268
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !1270
  %9 = load i32, i32* %8, align 4, !dbg !1270, !tbaa !339
  %10 = lshr i32 %4, %9, !dbg !1271
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1, !dbg !1273
  %12 = load i32, i32* %11, align 4, !dbg !1273, !tbaa !659
  %13 = icmp slt i32 %10, %12, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %13, label %54, label %14, !dbg !1276

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !1277
  %16 = load i32, i32* %15, align 4, !dbg !1277, !tbaa !499
  %17 = icmp slt i32 %10, %16, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br i1 %17, label %18, label %20, !dbg !1281

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1282
  br label %36, !dbg !1281

; <label>:20:                                     ; preds = %14
  %21 = shl i32 %16, 4, !dbg !1284
  %22 = sext i32 %21 to i64, !dbg !1298
  %23 = tail call i8* @malloc(i64 %22) #6, !dbg !1300
  %24 = icmp eq i8* %23, null, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br i1 %24, label %25, label %26, !dbg !1303

; <label>:25:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br label %75, !dbg !1306

; <label>:26:                                     ; preds = %20
  %27 = shl i32 %16, 3, !dbg !1307
  %28 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1310
  %29 = bitcast %struct._bufhead**** %28 to i8**, !dbg !1312
  %30 = load i8*, i8** %29, align 8, !dbg !1312, !tbaa !346
  %31 = sext i32 %27 to i64, !dbg !1314
  %32 = tail call i8* @memmove(i8* nonnull %23, i8* %30, i64 %31) #6, !dbg !1315
  %33 = getelementptr inbounds i8, i8* %23, i64 %31, !dbg !1316
  %34 = tail call i8* @memset(i8* nonnull %33, i32 0, i64 %31) #6, !dbg !1317
  %35 = load i8*, i8** %29, align 8, !dbg !1318, !tbaa !346
  tail call void @free(i8* %35) #6, !dbg !1319
  store i8* %23, i8** %29, align 8, !dbg !1320, !tbaa !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  store i32 %21, i32* %15, align 4, !dbg !1322, !tbaa !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  br label %36, !dbg !1323

; <label>:36:                                     ; preds = %18, %26
  %37 = phi %struct._bufhead**** [ %19, %18 ], [ %28, %26 ], !dbg !1282
  %38 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !1324
  %39 = load i32, i32* %38, align 8, !dbg !1324, !tbaa !336
  %40 = sext i32 %39 to i64, !dbg !1325
  %41 = tail call i8* @calloc(i64 %40, i64 8) #6, !dbg !1326
  %42 = load %struct._bufhead***, %struct._bufhead**** %37, align 8, !dbg !1282, !tbaa !773
  %43 = sext i32 %10 to i64, !dbg !1327
  %44 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %42, i64 %43, !dbg !1327
  %45 = bitcast %struct._bufhead*** %44 to i8**, !dbg !1328
  store i8* %41, i8** %45, align 8, !dbg !1328, !tbaa !346
  %46 = icmp eq i8* %41, null, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br i1 %46, label %75, label %47, !dbg !1330

; <label>:47:                                     ; preds = %36
  %48 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !1331
  %49 = load i32, i32* %48, align 8, !dbg !1332, !tbaa !843
  %50 = add nsw i32 %49, 1, !dbg !1332
  store i32 %50, i32* %48, align 8, !dbg !1332, !tbaa !843
  %51 = load i32, i32* %11, align 4, !dbg !1333, !tbaa !659
  %52 = add nsw i32 %51, 1, !dbg !1333
  store i32 %52, i32* %11, align 4, !dbg !1333, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %53 = load i32, i32* %2, align 8, !dbg !1335, !tbaa !479
  br label %54, !dbg !1334

; <label>:54:                                     ; preds = %1, %47
  %55 = phi i32 [ %4, %1 ], [ %53, %47 ], !dbg !1335
  %56 = add nsw i32 %55, 1, !dbg !1336
  %57 = tail call i32 @__log2(i32 %56) #6, !dbg !1337
  %58 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1339
  %59 = load i32, i32* %58, align 8, !dbg !1339, !tbaa !461
  %60 = icmp sgt i32 %57, %59, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %60, label %61, label %67, !dbg !1342

; <label>:61:                                     ; preds = %54
  %62 = sext i32 %59 to i64, !dbg !1343
  %63 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %62, !dbg !1343
  %64 = load i32, i32* %63, align 4, !dbg !1343, !tbaa !241
  %65 = sext i32 %57 to i64, !dbg !1345
  %66 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %65, !dbg !1345
  store i32 %64, i32* %66, align 4, !dbg !1346, !tbaa !241
  store i32 %57, i32* %58, align 8, !dbg !1347, !tbaa !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br label %67, !dbg !1348

; <label>:67:                                     ; preds = %61, %54
  %68 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1349
  %69 = load i32, i32* %68, align 4, !dbg !1349, !tbaa !484
  %70 = icmp ugt i32 %4, %69, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %70, label %71, label %73, !dbg !1352

; <label>:71:                                     ; preds = %67
  store i32 %69, i32* %5, align 8, !dbg !1353, !tbaa !476
  %72 = or i32 %69, %4, !dbg !1355
  store i32 %72, i32* %68, align 4, !dbg !1356, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br label %73, !dbg !1357

; <label>:73:                                     ; preds = %71, %67
  %74 = tail call i32 @__split_page(%struct.htab* nonnull %0, i32 %7, i32 %4) #6, !dbg !1358
  br label %75, !dbg !1359

; <label>:75:                                     ; preds = %36, %73, %25
  %76 = phi i32 [ %74, %73 ], [ -1, %25 ], [ -1, %36 ], !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  ret i32 %76, !dbg !1361
}

; Function Attrs: noredzone
declare dso_local i32 @__log2(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__split_page(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__call_hash(%struct.htab* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !1362 {
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1374
  %5 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8, !dbg !1374, !tbaa !349
  %6 = sext i32 %2 to i64, !dbg !1375
  %7 = tail call i32 %5(i8* %1, i64 %6) #6, !dbg !1376
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1378
  %9 = load i32, i32* %8, align 4, !dbg !1378, !tbaa !484
  %10 = and i32 %9, %7, !dbg !1379
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1381
  %12 = load i32, i32* %11, align 8, !dbg !1381, !tbaa !479
  %13 = icmp sgt i32 %10, %12, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  br i1 %13, label %14, label %18, !dbg !1384

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1385
  %16 = load i32, i32* %15, align 8, !dbg !1385, !tbaa !476
  %17 = and i32 %16, %10, !dbg !1386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br label %18, !dbg !1387

; <label>:18:                                     ; preds = %14, %3
  %19 = phi i32 [ %17, %14 ], [ %10, %3 ], !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  ret i32 %19, !dbg !1389
}

; Function Attrs: noredzone
declare dso_local i32 @__ibitmap(%struct.htab*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__buf_free(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @flush_meta(%struct.htab*) unnamed_addr #0 !dbg !1390 {
  %2 = alloca %struct.hashhdr, align 16
  %3 = bitcast %struct.hashhdr* %2 to i8*, !dbg !1399
  call void @llvm.lifetime.start.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1399
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !1400
  %5 = load i32, i32* %4, align 8, !dbg !1400, !tbaa !697
  %6 = icmp eq i32 %5, 0, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br i1 %6, label %108, label %7, !dbg !1403

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 0, !dbg !1404
  store i32 398689, i32* %8, align 8, !dbg !1405, !tbaa !635
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 1, !dbg !1406
  store i32 2, i32* %9, align 4, !dbg !1407, !tbaa !640
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1408
  %11 = load i32 (i8*, i64)*, i32 (i8*, i64)** %10, align 8, !dbg !1408, !tbaa !349
  %12 = tail call i32 %11(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !1409
  %13 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 16, !dbg !1410
  store i32 %12, i32* %13, align 8, !dbg !1411, !tbaa !649
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1412
  %15 = load i32, i32* %14, align 4, !dbg !1412, !tbaa !254
  %16 = bitcast %struct.htab* %0 to <16 x i8>*, !dbg !1426
  %17 = load <16 x i8>, <16 x i8>* %16, align 4, !dbg !1426, !tbaa !579
  %18 = shufflevector <16 x i8> %17, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1426
  %19 = bitcast %struct.hashhdr* %2 to <16 x i8>*, !dbg !1426
  store <16 x i8> %18, <16 x i8>* %19, align 16, !dbg !1426, !tbaa !579
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1428
  %21 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 4, !dbg !1428
  %22 = bitcast i32* %20 to <16 x i8>*, !dbg !1428
  %23 = load <16 x i8>, <16 x i8>* %22, align 4, !dbg !1428, !tbaa !579
  %24 = shufflevector <16 x i8> %23, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1428
  %25 = bitcast i32* %21 to <16 x i8>*, !dbg !1428
  store <16 x i8> %24, <16 x i8>* %25, align 16, !dbg !1428, !tbaa !579
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1430
  %27 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 8, !dbg !1430
  %28 = bitcast i32* %26 to <16 x i8>*, !dbg !1430
  %29 = load <16 x i8>, <16 x i8>* %28, align 4, !dbg !1430, !tbaa !579
  %30 = shufflevector <16 x i8> %29, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1430
  %31 = bitcast i32* %27 to <16 x i8>*, !dbg !1430
  store <16 x i8> %30, <16 x i8>* %31, align 16, !dbg !1430, !tbaa !579
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1432
  %33 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 12, !dbg !1432
  %34 = bitcast i32* %32 to <16 x i8>*, !dbg !1432
  %35 = load <16 x i8>, <16 x i8>* %34, align 4, !dbg !1432, !tbaa !579
  %36 = shufflevector <16 x i8> %35, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1432
  %37 = bitcast i32* %33 to <16 x i8>*, !dbg !1432
  store <16 x i8> %36, <16 x i8>* %37, align 16, !dbg !1432, !tbaa !579
  %38 = bitcast i32* %13 to i8*, !dbg !1434
  %39 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !1434
  %40 = load i8, i8* %39, align 1, !dbg !1434, !tbaa !579
  %41 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 16, !dbg !1434
  %42 = bitcast i32* %41 to i8*, !dbg !1434
  store i8 %40, i8* %42, align 16, !dbg !1434, !tbaa !579
  %43 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1434
  %44 = load i8, i8* %43, align 2, !dbg !1434, !tbaa !579
  %45 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1434
  store i8 %44, i8* %45, align 1, !dbg !1434, !tbaa !579
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1434
  %47 = load i8, i8* %46, align 1, !dbg !1434, !tbaa !579
  %48 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1434
  store i8 %47, i8* %48, align 2, !dbg !1434, !tbaa !579
  %49 = load i8, i8* %38, align 4, !dbg !1434, !tbaa !579
  %50 = getelementptr inbounds i8, i8* %42, i64 3, !dbg !1434
  store i8 %49, i8* %50, align 1, !dbg !1434, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br label %51, !dbg !1439

; <label>:51:                                     ; preds = %51, %7
  %52 = phi i64 [ 0, %7 ], [ %75, %51 ]
  %53 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %52, !dbg !1440
  %54 = bitcast i32* %53 to i8*, !dbg !1440
  %55 = getelementptr inbounds i8, i8* %54, i64 3, !dbg !1440
  %56 = load i8, i8* %55, align 1, !dbg !1440, !tbaa !579
  %57 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 17, i64 %52, !dbg !1440
  %58 = bitcast i32* %57 to i8*, !dbg !1440
  store i8 %56, i8* %58, align 4, !dbg !1440, !tbaa !579
  %59 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !1440
  %60 = load i8, i8* %59, align 2, !dbg !1440, !tbaa !579
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1440
  store i8 %60, i8* %61, align 1, !dbg !1440, !tbaa !579
  %62 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1440
  %63 = load i8, i8* %62, align 1, !dbg !1440, !tbaa !579
  %64 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !1440
  store i8 %63, i8* %64, align 2, !dbg !1440, !tbaa !579
  %65 = load i8, i8* %54, align 4, !dbg !1440, !tbaa !579
  %66 = getelementptr inbounds i8, i8* %58, i64 3, !dbg !1440
  store i8 %65, i8* %66, align 1, !dbg !1440, !tbaa !579
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %52, !dbg !1444
  %68 = bitcast i16* %67 to i8*, !dbg !1444
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1444
  %70 = load i8, i8* %69, align 1, !dbg !1444, !tbaa !579
  %71 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 18, i64 %52, !dbg !1444
  %72 = bitcast i16* %71 to i8*, !dbg !1444
  store i8 %70, i8* %72, align 2, !dbg !1444, !tbaa !579
  %73 = load i8, i8* %68, align 2, !dbg !1444, !tbaa !579
  %74 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1444
  store i8 %73, i8* %74, align 1, !dbg !1444, !tbaa !579
  %75 = add nuw nsw i64 %52, 1, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %76 = icmp eq i64 %75, 32, !dbg !1448
  br i1 %76, label %77, label %51, !dbg !1439, !llvm.loop !1449

; <label>:77:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %78 = tail call i64 @lseek(i32 %15, i64 0, i32 0) #6, !dbg !1453
  %79 = icmp eq i64 %78, -1, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %79, label %108, label %80, !dbg !1456

; <label>:80:                                     ; preds = %77
  %81 = call i64 @write(i32 %15, i8* nonnull %3, i64 260) #6, !dbg !1457
  %82 = trunc i64 %81 to i32, !dbg !1457
  %83 = icmp eq i32 %82, -1, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %83, label %108, label %84, !dbg !1460

; <label>:84:                                     ; preds = %80
  %85 = and i64 %81, 4294967295, !dbg !1461
  %86 = icmp eq i64 %85, 260, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %86, label %92, label %87, !dbg !1463

; <label>:87:                                     ; preds = %84
  %88 = call i32* @__errno() #6, !dbg !1464
  store i32 79, i32* %88, align 4, !dbg !1466, !tbaa !241
  %89 = call i32* @__errno() #6, !dbg !1467
  %90 = load i32, i32* %89, align 4, !dbg !1467, !tbaa !241
  %91 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 11, !dbg !1468
  store i32 %90, i32* %91, align 8, !dbg !1469, !tbaa !935
  br label %108, !dbg !1470

; <label>:92:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br label %93, !dbg !1474

; <label>:93:                                     ; preds = %92, %105
  %94 = phi i64 [ 0, %92 ], [ %106, %105 ]
  %95 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %94, !dbg !1475
  %96 = load i32*, i32** %95, align 8, !dbg !1475, !tbaa !346
  %97 = icmp eq i32* %96, null, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %97, label %105, label %98, !dbg !1478

; <label>:98:                                     ; preds = %93
  %99 = bitcast i32* %96 to i8*, !dbg !1479
  %100 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %94, !dbg !1481
  %101 = load i16, i16* %100, align 2, !dbg !1481, !tbaa !617
  %102 = zext i16 %101 to i32, !dbg !1481
  %103 = call i32 @__put_page(%struct.htab* nonnull %0, i8* %99, i32 %102, i32 0, i32 1) #6, !dbg !1482
  %104 = icmp eq i32 %103, 0, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %104, label %105, label %108, !dbg !1483

; <label>:105:                                    ; preds = %98, %93
  %106 = add nuw nsw i64 %94, 1, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  %107 = icmp ult i64 %106, 32, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %107, label %93, label %108, !dbg !1474, !llvm.loop !1487

; <label>:108:                                    ; preds = %105, %98, %77, %80, %1, %87
  %109 = phi i32 [ -1, %87 ], [ 0, %1 ], [ -1, %80 ], [ -1, %77 ], [ 0, %105 ], [ -1, %98 ], !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  call void @llvm.lifetime.end.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  ret i32 %109, !dbg !1490
}

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__put_page(%struct.htab*, i8*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hash_access(%struct.htab*, i32, %struct.DBT*, %struct.DBT*) unnamed_addr #0 !dbg !1491 {
  %5 = alloca %struct._bufhead*, align 8
  %6 = bitcast %struct._bufhead** %5 to i8*, !dbg !1514
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1514
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1515
  %8 = load i32, i32* %7, align 4, !dbg !1515, !tbaa !366
  %9 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1517
  %10 = load i64, i64* %9, align 8, !dbg !1517, !tbaa !1196
  %11 = trunc i64 %10 to i32, !dbg !1518
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1520
  %13 = load i8*, i8** %12, align 8, !dbg !1520, !tbaa !1184
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1526
  %15 = load i32 (i8*, i64)*, i32 (i8*, i64)** %14, align 8, !dbg !1526, !tbaa !349
  %16 = shl i64 %10, 32, !dbg !1527
  %17 = ashr exact i64 %16, 32, !dbg !1527
  %18 = tail call i32 %15(i8* %13, i64 %17) #6, !dbg !1528
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1530
  %20 = load i32, i32* %19, align 4, !dbg !1530, !tbaa !484
  %21 = and i32 %20, %18, !dbg !1531
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1533
  %23 = load i32, i32* %22, align 8, !dbg !1533, !tbaa !479
  %24 = icmp sgt i32 %21, %23, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %24, label %25, label %29, !dbg !1535

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1536
  %27 = load i32, i32* %26, align 8, !dbg !1536, !tbaa !476
  %28 = and i32 %27, %21, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br label %29, !dbg !1538

; <label>:29:                                     ; preds = %4, %25
  %30 = phi i32 [ %28, %25 ], [ %21, %4 ], !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  %31 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %30, %struct._bufhead* null, i32 0) #6, !dbg !1541
  %32 = icmp eq %struct._bufhead* %31, null, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  br i1 %32, label %33, label %34, !dbg !1545

; <label>:33:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br label %184, !dbg !1546

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 5, !dbg !1548
  %36 = load i8, i8* %35, align 8, !dbg !1549, !tbaa !1550
  %37 = or i8 %36, 8, !dbg !1549
  store i8 %37, i8* %35, align 8, !dbg !1549, !tbaa !1550
  %38 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 4, !dbg !1551
  %39 = bitcast i8** %38 to i16**, !dbg !1551
  %40 = load i16*, i16** %39, align 8, !dbg !1551, !tbaa !1118
  %41 = load i16, i16* %40, align 2, !dbg !1554, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  %42 = icmp ugt i16 %41, 1, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %42, label %43, label %126, !dbg !1559

; <label>:43:                                     ; preds = %34
  %44 = zext i16 %41 to i32, !dbg !1554
  %45 = getelementptr inbounds i16, i16* %40, i64 1, !dbg !1561
  br label %46, !dbg !1559

; <label>:46:                                     ; preds = %43, %119
  %47 = phi %struct._bufhead* [ %31, %43 ], [ %124, %119 ]
  %48 = phi i16* [ %45, %43 ], [ %123, %119 ]
  %49 = phi i32 [ %8, %43 ], [ %122, %119 ]
  %50 = phi i32 [ 1, %43 ], [ %121, %119 ]
  %51 = phi i32 [ %44, %43 ], [ %120, %119 ]
  %52 = getelementptr inbounds i16, i16* %48, i64 1, !dbg !1562
  %53 = load i16, i16* %52, align 2, !dbg !1562, !tbaa !617
  %54 = icmp ugt i16 %53, 3, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %54, label %55, label %72, !dbg !1565

; <label>:55:                                     ; preds = %46
  %56 = load i16, i16* %48, align 2, !dbg !1566, !tbaa !617
  %57 = zext i16 %56 to i32, !dbg !1566
  %58 = sub nsw i32 %49, %57, !dbg !1569
  %59 = icmp eq i32 %58, %11, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  br i1 %59, label %60, label %67, !dbg !1571

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %47, i64 0, i32 4, !dbg !1572
  %62 = load i8*, i8** %61, align 8, !dbg !1572, !tbaa !1118
  %63 = zext i16 %56 to i64, !dbg !1573
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !1573
  %65 = call i32 @memcmp(i8* %13, i8* %64, i64 %17) #6, !dbg !1574
  %66 = icmp eq i32 %65, 0, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br i1 %66, label %139, label %67, !dbg !1576

; <label>:67:                                     ; preds = %60, %55
  %68 = load i16, i16* %52, align 2, !dbg !1577, !tbaa !617
  %69 = zext i16 %68 to i32, !dbg !1577
  %70 = getelementptr inbounds i16, i16* %48, i64 2, !dbg !1578
  %71 = add nsw i32 %50, 2, !dbg !1579
  br label %119, !dbg !1580

; <label>:72:                                     ; preds = %46
  %73 = icmp eq i16 %53, 0, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br i1 %73, label %74, label %90, !dbg !1583

; <label>:74:                                     ; preds = %72
  %75 = load i16, i16* %48, align 2, !dbg !1584, !tbaa !617
  %76 = zext i16 %75 to i32, !dbg !1584
  %77 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %76, %struct._bufhead* %47, i32 0) #6, !dbg !1586
  %78 = icmp eq %struct._bufhead* %77, null, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br i1 %78, label %79, label %82, !dbg !1589

; <label>:79:                                     ; preds = %74
  %80 = load i8, i8* %35, align 8, !dbg !1590, !tbaa !1550
  %81 = and i8 %80, -9, !dbg !1590
  store i8 %81, i8* %35, align 8, !dbg !1590, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br label %184, !dbg !1592

; <label>:82:                                     ; preds = %74
  %83 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %77, i64 0, i32 4, !dbg !1593
  %84 = bitcast i8** %83 to i16**, !dbg !1593
  %85 = load i16*, i16** %84, align 8, !dbg !1593, !tbaa !1118
  %86 = getelementptr inbounds i16, i16* %85, i64 1, !dbg !1594
  %87 = load i16, i16* %85, align 2, !dbg !1595, !tbaa !617
  %88 = zext i16 %87 to i32, !dbg !1595
  %89 = load i32, i32* %7, align 4, !dbg !1596, !tbaa !366
  br label %119, !dbg !1597

; <label>:90:                                     ; preds = %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %91 = call i32 @__find_bigpair(%struct.htab* %0, %struct._bufhead* %47, i32 %50, i8* %13, i32 %11) #6, !dbg !1599
  %92 = icmp sgt i32 %91, 0, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  br i1 %92, label %139, label %93, !dbg !1604

; <label>:93:                                     ; preds = %90
  %94 = icmp eq i32 %91, -2, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  br i1 %94, label %95, label %116, !dbg !1607

; <label>:95:                                     ; preds = %93
  store %struct._bufhead* %47, %struct._bufhead** %5, align 8, !dbg !1609, !tbaa !346
  %96 = call zeroext i16 @__find_last_page(%struct.htab* %0, %struct._bufhead** nonnull %5) #6, !dbg !1611
  %97 = icmp eq i16 %96, 0, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br i1 %97, label %98, label %100, !dbg !1615

; <label>:98:                                     ; preds = %95
  %99 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1616, !tbaa !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br label %126, !dbg !1618

; <label>:100:                                    ; preds = %95
  %101 = zext i16 %96 to i32, !dbg !1619
  %102 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1620, !tbaa !346
  %103 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %101, %struct._bufhead* %102, i32 0) #6, !dbg !1621
  %104 = icmp eq %struct._bufhead* %103, null, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  br i1 %104, label %105, label %108, !dbg !1624

; <label>:105:                                    ; preds = %100
  %106 = load i8, i8* %35, align 8, !dbg !1625, !tbaa !1550
  %107 = and i8 %106, -9, !dbg !1625
  store i8 %107, i8* %35, align 8, !dbg !1625, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br label %184, !dbg !1627

; <label>:108:                                    ; preds = %100
  %109 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %103, i64 0, i32 4, !dbg !1628
  %110 = bitcast i8** %109 to i16**, !dbg !1628
  %111 = load i16*, i16** %110, align 8, !dbg !1628, !tbaa !1118
  %112 = getelementptr inbounds i16, i16* %111, i64 1, !dbg !1629
  %113 = load i16, i16* %111, align 2, !dbg !1630, !tbaa !617
  %114 = zext i16 %113 to i32, !dbg !1630
  %115 = load i32, i32* %7, align 4, !dbg !1631, !tbaa !366
  br label %119, !dbg !1632

; <label>:116:                                    ; preds = %93
  %117 = load i8, i8* %35, align 8, !dbg !1633, !tbaa !1550
  %118 = and i8 %117, -9, !dbg !1633
  store i8 %118, i8* %35, align 8, !dbg !1633, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  br label %184, !dbg !1635

; <label>:119:                                    ; preds = %82, %108, %67
  %120 = phi i32 [ %51, %67 ], [ %88, %82 ], [ %114, %108 ], !dbg !1636
  %121 = phi i32 [ %71, %67 ], [ 1, %82 ], [ 1, %108 ], !dbg !1636
  %122 = phi i32 [ %69, %67 ], [ %89, %82 ], [ %115, %108 ], !dbg !1637
  %123 = phi i16* [ %70, %67 ], [ %86, %82 ], [ %112, %108 ], !dbg !1636
  %124 = phi %struct._bufhead* [ %47, %67 ], [ %77, %82 ], [ %103, %108 ], !dbg !1637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  %125 = icmp slt i32 %121, %120, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %125, label %46, label %126, !dbg !1559, !llvm.loop !1640

; <label>:126:                                    ; preds = %119, %34, %98
  %127 = phi %struct._bufhead* [ %99, %98 ], [ %31, %34 ], [ %124, %119 ], !dbg !1637
  %128 = add i32 %1, -1, !dbg !1642
  %129 = icmp ult i32 %128, 2, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br i1 %129, label %130, label %136, !dbg !1642

; <label>:130:                                    ; preds = %126
  %131 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %127, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1643
  %132 = icmp ne i32 %131, 0, !dbg !1643
  %133 = load i8, i8* %35, align 8, !dbg !1646, !tbaa !1550
  %134 = and i8 %133, -9, !dbg !1646
  store i8 %134, i8* %35, align 8, !dbg !1646, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  %135 = sext i1 %132 to i32, !dbg !1651
  br label %184, !dbg !1651

; <label>:136:                                    ; preds = %126
  %137 = load i8, i8* %35, align 8, !dbg !1652, !tbaa !1550
  %138 = and i8 %137, -9, !dbg !1652
  store i8 %138, i8* %35, align 8, !dbg !1652, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  br label %184, !dbg !1653

; <label>:139:                                    ; preds = %90, %60
  %140 = phi i32 [ %50, %60 ], [ %91, %90 ], !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  switch i32 %1, label %180 [
    i32 2, label %141
    i32 0, label %144
    i32 1, label %167
    i32 3, label %176
  ], !dbg !1655

; <label>:141:                                    ; preds = %139
  %142 = load i8, i8* %35, align 8, !dbg !1656, !tbaa !1550
  %143 = and i8 %142, -9, !dbg !1656
  store i8 %143, i8* %35, align 8, !dbg !1656, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br label %184, !dbg !1658

; <label>:144:                                    ; preds = %139
  %145 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %47, i64 0, i32 4, !dbg !1659
  %146 = load i8*, i8** %145, align 8, !dbg !1659, !tbaa !1118
  %147 = bitcast i8* %146 to i16*, !dbg !1660
  %148 = add nsw i32 %140, 1, !dbg !1661
  %149 = sext i32 %148 to i64, !dbg !1663
  %150 = getelementptr inbounds i16, i16* %147, i64 %149, !dbg !1663
  %151 = load i16, i16* %150, align 2, !dbg !1663, !tbaa !617
  %152 = icmp ult i16 %151, 4, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br i1 %152, label %153, label %157, !dbg !1665

; <label>:153:                                    ; preds = %144
  %154 = call i32 @__big_return(%struct.htab* %0, %struct._bufhead* nonnull %47, i32 %140, %struct.DBT* %3, i32 0) #6, !dbg !1666
  %155 = icmp eq i32 %154, 0, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %155, label %181, label %156, !dbg !1669

; <label>:156:                                    ; preds = %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br label %184, !dbg !1670

; <label>:157:                                    ; preds = %144
  %158 = zext i16 %151 to i64, !dbg !1671
  %159 = getelementptr inbounds i8, i8* %146, i64 %158, !dbg !1671
  %160 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !1673
  store i8* %159, i8** %160, align 8, !dbg !1674, !tbaa !1184
  %161 = sext i32 %140 to i64, !dbg !1675
  %162 = getelementptr inbounds i16, i16* %147, i64 %161, !dbg !1675
  %163 = load i16, i16* %162, align 2, !dbg !1675, !tbaa !617
  %164 = zext i16 %163 to i64, !dbg !1675
  %165 = sub nsw i64 %164, %158, !dbg !1676
  %166 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !1677
  store i64 %165, i64* %166, align 8, !dbg !1678, !tbaa !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %181

; <label>:167:                                    ; preds = %139
  %168 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %47, i32 %140) #6, !dbg !1679
  %169 = icmp eq i32 %168, 0, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  br i1 %169, label %170, label %173, !dbg !1681

; <label>:170:                                    ; preds = %167
  %171 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %47, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1682
  %172 = icmp eq i32 %171, 0, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  br i1 %172, label %181, label %173, !dbg !1683

; <label>:173:                                    ; preds = %170, %167
  %174 = load i8, i8* %35, align 8, !dbg !1684, !tbaa !1550
  %175 = and i8 %174, -9, !dbg !1684
  store i8 %175, i8* %35, align 8, !dbg !1684, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  br label %184, !dbg !1686

; <label>:176:                                    ; preds = %139
  %177 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %47, i32 %140) #6, !dbg !1687
  %178 = icmp eq i32 %177, 0, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  br i1 %178, label %181, label %179, !dbg !1689

; <label>:179:                                    ; preds = %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br label %184, !dbg !1690

; <label>:180:                                    ; preds = %139
  call void @abort() #8, !dbg !1691
  unreachable

; <label>:181:                                    ; preds = %153, %170, %176, %157
  %182 = load i8, i8* %35, align 8, !dbg !1692, !tbaa !1550
  %183 = and i8 %182, -9, !dbg !1692
  store i8 %183, i8* %35, align 8, !dbg !1692, !tbaa !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  br label %184, !dbg !1693

; <label>:184:                                    ; preds = %130, %181, %179, %173, %156, %141, %136, %116, %105, %79, %33
  %185 = phi i32 [ -1, %179 ], [ 0, %181 ], [ -1, %173 ], [ -1, %156 ], [ 1, %141 ], [ -1, %79 ], [ -1, %105 ], [ 1, %136 ], [ -1, %116 ], [ -1, %33 ], [ %135, %130 ], !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  ret i32 %185, !dbg !1695
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__find_bigpair(%struct.htab*, %struct._bufhead*, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @__find_last_page(%struct.htab*, %struct._bufhead**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__addel(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__big_return(%struct.htab*, %struct._bufhead*, i32, %struct.DBT*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__delpair(%struct.htab*, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__big_keydata(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!168, !169, !170}
!llvm.ident = !{!171}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 76, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/db_local.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "DB_BTREE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "DB_HASH", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "DB_RECNO", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 59, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "HASH_GET", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "HASH_PUT", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "HASH_PUTNEW", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "HASH_DELETE", value: 3, isUnsigned: true)
!17 = !DIEnumerator(name: "HASH_FIRST", value: 4, isUnsigned: true)
!18 = !DIEnumerator(name: "HASH_NEXT", value: 5, isUnsigned: true)
!19 = !{!20, !101, !113, !136, !99, !32, !160, !72, !142, !164, !165, !29, !98}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "HTAB", file: !11, line: 138, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !11, line: 111, size: 5248, elements: !23)
!23 = !{!24, !56, !57, !58, !69, !70, !71, !74, !75, !86, !87, !88, !89, !90, !91, !94, !95, !96, !97}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !22, file: !11, line: 112, baseType: !25, size: 2080)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASHHDR", file: !11, line: 109, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashhdr", file: !11, line: 84, size: 2080, elements: !27)
!27 = !{!28, !30, !31, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !52}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !26, file: !11, line: 85, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !26, file: !11, line: 86, baseType: !29, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lorder", scope: !26, file: !11, line: 87, baseType: !32, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 79, baseType: !5)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !26, file: !11, line: 88, baseType: !29, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !26, file: !11, line: 89, baseType: !29, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !26, file: !11, line: 90, baseType: !29, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ssize", scope: !26, file: !11, line: 91, baseType: !29, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sshift", scope: !26, file: !11, line: 92, baseType: !29, size: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl_point", scope: !26, file: !11, line: 93, baseType: !29, size: 32, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "last_freed", scope: !26, file: !11, line: 95, baseType: !29, size: 32, offset: 288)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "max_bucket", scope: !26, file: !11, line: 96, baseType: !29, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "high_mask", scope: !26, file: !11, line: 97, baseType: !29, size: 32, offset: 352)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "low_mask", scope: !26, file: !11, line: 98, baseType: !29, size: 32, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ffactor", scope: !26, file: !11, line: 100, baseType: !29, size: 32, offset: 416)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !26, file: !11, line: 101, baseType: !29, size: 32, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hdrpages", scope: !26, file: !11, line: 102, baseType: !29, size: 32, offset: 480)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "h_charkey", scope: !26, file: !11, line: 103, baseType: !29, size: 32, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "spares", scope: !26, file: !11, line: 106, baseType: !49, size: 1024, offset: 544)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bitmaps", scope: !26, file: !11, line: 107, baseType: !53, size: 512, offset: 1568)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 512, elements: !50)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !33, line: 57, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nsegs", scope: !22, file: !11, line: 113, baseType: !29, size: 32, offset: 2080)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "exsegs", scope: !22, file: !11, line: 114, baseType: !29, size: 32, offset: 2112)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !22, file: !11, line: 117, baseType: !59, size: 64, offset: 2176)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!32, !62, !64}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 40, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !67, line: 129, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !11, line: 118, baseType: !29, size: 32, offset: 2240)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !22, file: !11, line: 119, baseType: !29, size: 32, offset: 2272)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !22, file: !11, line: 120, baseType: !72, size: 64, offset: 2304)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_key", scope: !22, file: !11, line: 121, baseType: !72, size: 64, offset: 2368)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cpage", scope: !22, file: !11, line: 122, baseType: !76, size: 64, offset: 2432)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUFHEAD", file: !11, line: 64, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bufhead", file: !11, line: 66, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !78, file: !11, line: 67, baseType: !76, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !11, line: 68, baseType: !76, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl", scope: !78, file: !11, line: 69, baseType: !76, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !78, file: !11, line: 70, baseType: !32, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !78, file: !11, line: 71, baseType: !72, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !11, line: 72, baseType: !73, size: 8, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cbucket", scope: !22, file: !11, line: 123, baseType: !29, size: 32, offset: 2496)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cndx", scope: !22, file: !11, line: 124, baseType: !29, size: 32, offset: 2528)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !22, file: !11, line: 125, baseType: !29, size: 32, offset: 2560)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "new_file", scope: !22, file: !11, line: 127, baseType: !29, size: 32, offset: 2592)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "save_file", scope: !22, file: !11, line: 129, baseType: !29, size: 32, offset: 2624)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "mapp", scope: !22, file: !11, line: 132, baseType: !92, size: 2048, offset: 2688)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2048, elements: !50)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nmaps", scope: !22, file: !11, line: 133, baseType: !29, size: 32, offset: 4736)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nbufs", scope: !22, file: !11, line: 134, baseType: !29, size: 32, offset: 4768)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "bufhead", scope: !22, file: !11, line: 136, baseType: !77, size: 384, offset: 4800)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !22, file: !11, line: 137, baseType: !98, size: 64, offset: 5184)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEGMENT", file: !11, line: 81, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASHINFO", file: !4, line: 144, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 136, size: 256, elements: !104)
!104 = !{!105, !108, !109, !110, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !103, file: !4, line: 137, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !107, line: 95, baseType: !5)
!107 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ffactor", scope: !103, file: !4, line: 138, baseType: !106, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "nelem", scope: !103, file: !4, line: 139, baseType: !106, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cachesize", scope: !103, file: !4, line: 140, baseType: !106, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !103, file: !4, line: 142, baseType: !59, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "lorder", scope: !103, file: !4, line: 143, baseType: !29, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "DB", file: !4, line: 112, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__db", file: !4, line: 102, size: 576, elements: !116)
!116 = !{!117, !119, !124, !138, !143, !147, !151, !155, !156}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 103, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBTYPE", file: !4, line: 76, baseType: !3)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !115, file: !4, line: 104, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!29, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !115, file: !4, line: 105, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!29, !128, !130, !106}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBT", file: !4, line: 61, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 128, elements: !134)
!134 = !{!135, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !4, line: 59, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !4, line: 60, baseType: !64, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !115, file: !4, line: 106, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!29, !128, !130, !142, !106}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !115, file: !4, line: 107, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!29, !128, !142, !130, !106}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !115, file: !4, line: 108, baseType: !148, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!29, !128, !142, !142, !106}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !115, file: !4, line: 109, baseType: !152, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!29, !128, !106}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !115, file: !4, line: 110, baseType: !136, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !115, file: !4, line: 111, baseType: !157, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!29, !128}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !107, line: 173, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 100, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !67, line: 44, baseType: !163)
!163 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !107, line: 87, baseType: !167)
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{i32 2, !"Dwarf Version", i32 4}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!172 = distinct !DISubprogram(name: "__hash_open", scope: !1, file: !1, line: 107, type: !173, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !179)
!173 = !DISubroutineType(types: !174)
!174 = !{!113, !175, !29, !29, !29, !177}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !226, !227, !228, !229, !230, !231}
!180 = !DILocalVariable(name: "file", arg: 1, scope: !172, file: !1, line: 107, type: !175)
!181 = !DILocalVariable(name: "flags", arg: 2, scope: !172, file: !1, line: 107, type: !29)
!182 = !DILocalVariable(name: "mode", arg: 3, scope: !172, file: !1, line: 107, type: !29)
!183 = !DILocalVariable(name: "dflags", arg: 4, scope: !172, file: !1, line: 107, type: !29)
!184 = !DILocalVariable(name: "info", arg: 5, scope: !172, file: !1, line: 107, type: !177)
!185 = !DILocalVariable(name: "hashp", scope: !172, file: !1, line: 114, type: !20)
!186 = !DILocalVariable(name: "statbuf", scope: !172, file: !1, line: 119, type: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !188, line: 27, size: 704, elements: !189)
!188 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!189 = !{!190, !194, !197, !200, !203, !206, !209, !210, !211, !218, !219, !220, !223}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !187, file: !188, line: 29, baseType: !191, size: 16)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 177, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !67, line: 54, baseType: !193)
!193 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !187, file: !188, line: 30, baseType: !195, size: 16, offset: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !107, line: 155, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !67, line: 73, baseType: !55)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !187, file: !188, line: 31, baseType: !198, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !107, line: 205, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !67, line: 88, baseType: !32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !187, file: !188, line: 32, baseType: !201, size: 16, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !107, line: 210, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !67, line: 210, baseType: !55)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !187, file: !188, line: 33, baseType: !204, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 181, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !67, line: 58, baseType: !55)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !187, file: !188, line: 34, baseType: !207, size: 16, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 185, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !67, line: 61, baseType: !55)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !187, file: !188, line: 35, baseType: !191, size: 16, offset: 112)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !187, file: !188, line: 36, baseType: !160, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !187, file: !188, line: 37, baseType: !212, size: 128, offset: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !213, line: 52, size: 128, elements: !214)
!213 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !212, file: !213, line: 53, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !213, line: 34, baseType: !163)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !212, file: !213, line: 54, baseType: !163, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !187, file: !188, line: 38, baseType: !212, size: 128, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !187, file: !188, line: 39, baseType: !212, size: 128, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !187, file: !188, line: 40, baseType: !221, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !107, line: 118, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !67, line: 32, baseType: !163)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !187, file: !188, line: 41, baseType: !224, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !107, line: 113, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !67, line: 28, baseType: !163)
!226 = !DILocalVariable(name: "dbp", scope: !172, file: !1, line: 121, type: !113)
!227 = !DILocalVariable(name: "bpages", scope: !172, file: !1, line: 122, type: !29)
!228 = !DILocalVariable(name: "hdrsize", scope: !172, file: !1, line: 122, type: !29)
!229 = !DILocalVariable(name: "new_table", scope: !172, file: !1, line: 122, type: !29)
!230 = !DILocalVariable(name: "nsegs", scope: !172, file: !1, line: 122, type: !29)
!231 = !DILocalVariable(name: "save_errno", scope: !172, file: !1, line: 122, type: !29)
!232 = !DILocation(line: 107, column: 1, scope: !172)
!233 = !DILocation(line: 119, column: 2, scope: !172)
!234 = !DILocation(line: 124, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !172, file: !1, line: 124, column: 6)
!236 = !DILocation(line: 124, column: 26, scope: !235)
!237 = !DILocation(line: 124, column: 6, scope: !172)
!238 = !DILocation(line: 125, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 124, column: 39)
!240 = !DILocation(line: 125, column: 9, scope: !239)
!241 = !{!242, !242, i64 0}
!242 = !{!"int", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !DILocation(line: 126, column: 3, scope: !239)
!246 = !DILocation(line: 129, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !172, file: !1, line: 129, column: 6)
!248 = !DILocation(line: 129, column: 16, scope: !247)
!249 = !DILocation(line: 114, column: 8, scope: !172)
!250 = !DILocation(line: 129, column: 14, scope: !247)
!251 = !DILocation(line: 129, column: 6, scope: !172)
!252 = !DILocation(line: 131, column: 9, scope: !172)
!253 = !DILocation(line: 131, column: 12, scope: !172)
!254 = !{!255, !242, i64 284}
!255 = !{!"htab", !256, i64 0, !242, i64 260, !242, i64 264, !257, i64 272, !242, i64 280, !242, i64 284, !257, i64 288, !257, i64 296, !257, i64 304, !242, i64 312, !242, i64 316, !242, i64 320, !242, i64 324, !242, i64 328, !243, i64 336, !242, i64 592, !242, i64 596, !258, i64 600, !257, i64 648}
!256 = !{!"hashhdr", !242, i64 0, !242, i64 4, !242, i64 8, !242, i64 12, !242, i64 16, !242, i64 20, !242, i64 24, !242, i64 28, !242, i64 32, !242, i64 36, !242, i64 40, !242, i64 44, !242, i64 48, !242, i64 52, !242, i64 56, !242, i64 60, !242, i64 64, !243, i64 68, !243, i64 196}
!257 = !{!"any pointer", !243, i64 0}
!258 = !{!"_bufhead", !257, i64 0, !257, i64 8, !257, i64 16, !242, i64 24, !257, i64 32, !243, i64 40}
!259 = !DILocation(line: 139, column: 9, scope: !172)
!260 = !DILocation(line: 139, column: 15, scope: !172)
!261 = !{!255, !242, i64 280}
!262 = !DILocation(line: 122, column: 23, scope: !172)
!263 = !DILocation(line: 142, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !172, file: !1, line: 142, column: 6)
!265 = !DILocation(line: 142, column: 12, scope: !264)
!266 = !DILocation(line: 142, column: 22, scope: !264)
!267 = !DILocation(line: 142, column: 33, scope: !264)
!268 = !DILocation(line: 119, column: 14, scope: !172)
!269 = !DILocation(line: 146, column: 7, scope: !264)
!270 = !DILocation(line: 146, column: 28, scope: !264)
!271 = !DILocation(line: 146, column: 32, scope: !264)
!272 = !DILocation(line: 146, column: 38, scope: !264)
!273 = !DILocation(line: 142, column: 6, scope: !172)
!274 = !DILocation(line: 148, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 148, column: 7)
!276 = distinct !DILexicalBlock(scope: !264, file: !1, line: 146, column: 51)
!277 = !DILocation(line: 148, column: 13, scope: !275)
!278 = !DILocation(line: 148, column: 7, scope: !276)
!279 = !DILocation(line: 149, column: 4, scope: !275)
!280 = !DILocation(line: 149, column: 10, scope: !275)
!281 = !DILocation(line: 152, column: 6, scope: !172)
!282 = !DILocation(line: 151, column: 2, scope: !276)
!283 = !DILocation(line: 153, column: 20, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 153, column: 7)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 152, column: 12)
!286 = distinct !DILexicalBlock(scope: !172, file: !1, line: 152, column: 6)
!287 = !DILocation(line: 153, column: 18, scope: !284)
!288 = !DILocation(line: 153, column: 45, scope: !284)
!289 = !DILocation(line: 153, column: 7, scope: !285)
!290 = !DILocation(line: 154, column: 4, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !1, line: 154, column: 4)
!292 = !DILocation(line: 122, column: 41, scope: !172)
!293 = !DILocation(line: 158, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !285, file: !1, line: 158, column: 7)
!295 = !DILocation(line: 158, column: 25, scope: !294)
!296 = !DILocation(line: 162, column: 8, scope: !294)
!297 = !DILocation(line: 162, column: 35, scope: !294)
!298 = !DILocation(line: 162, column: 40, scope: !294)
!299 = !DILocation(line: 162, column: 51, scope: !294)
!300 = !{!301, !303, i64 16}
!301 = !{!"stat", !302, i64 0, !302, i64 2, !242, i64 4, !302, i64 8, !302, i64 10, !302, i64 12, !302, i64 14, !303, i64 16, !304, i64 24, !304, i64 40, !304, i64 56, !303, i64 72, !303, i64 80}
!302 = !{!"short", !243, i64 0}
!303 = !{!"long", !243, i64 0}
!304 = !{!"timespec", !303, i64 0, !303, i64 8}
!305 = !DILocation(line: 162, column: 59, scope: !294)
!306 = !DILocation(line: 158, column: 7, scope: !285)
!307 = !DILocation(line: 164, column: 4, scope: !294)
!308 = !DILocation(line: 170, column: 6, scope: !172)
!309 = !DILocation(line: 170, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !172, file: !1, line: 170, column: 6)
!311 = !DILocalVariable(name: "hashp", arg: 1, scope: !312, file: !1, line: 315, type: !20)
!312 = distinct !DISubprogram(name: "init_hash", scope: !1, file: !1, line: 314, type: !313, isLocal: true, isDefinition: true, scopeLine: 318, isOptimized: true, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!20, !20, !175, !177}
!315 = !{!311, !316, !317, !318, !319}
!316 = !DILocalVariable(name: "file", arg: 2, scope: !312, file: !1, line: 316, type: !175)
!317 = !DILocalVariable(name: "info", arg: 3, scope: !312, file: !1, line: 317, type: !177)
!318 = !DILocalVariable(name: "statbuf", scope: !312, file: !1, line: 322, type: !187)
!319 = !DILocalVariable(name: "nelem", scope: !312, file: !1, line: 324, type: !29)
!320 = !DILocation(line: 315, column: 8, scope: !312, inlinedAt: !321)
!321 = distinct !DILocation(line: 171, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 171, column: 7)
!323 = distinct !DILexicalBlock(scope: !310, file: !1, line: 170, column: 17)
!324 = !DILocation(line: 316, column: 14, scope: !312, inlinedAt: !321)
!325 = !DILocation(line: 317, column: 18, scope: !312, inlinedAt: !321)
!326 = !DILocation(line: 322, column: 2, scope: !312, inlinedAt: !321)
!327 = !DILocation(line: 324, column: 6, scope: !312, inlinedAt: !321)
!328 = !DILocation(line: 327, column: 9, scope: !312, inlinedAt: !321)
!329 = !DILocation(line: 327, column: 15, scope: !312, inlinedAt: !321)
!330 = !{!255, !242, i64 56}
!331 = !DILocation(line: 328, column: 15, scope: !312, inlinedAt: !321)
!332 = !DILocation(line: 329, column: 9, scope: !312, inlinedAt: !321)
!333 = !DILocation(line: 330, column: 9, scope: !312, inlinedAt: !321)
!334 = !DILocation(line: 331, column: 9, scope: !312, inlinedAt: !321)
!335 = !DILocation(line: 331, column: 16, scope: !312, inlinedAt: !321)
!336 = !{!255, !242, i64 24}
!337 = !DILocation(line: 332, column: 9, scope: !312, inlinedAt: !321)
!338 = !DILocation(line: 332, column: 16, scope: !312, inlinedAt: !321)
!339 = !{!255, !242, i64 28}
!340 = !DILocation(line: 333, column: 9, scope: !312, inlinedAt: !321)
!341 = !DILocation(line: 328, column: 22, scope: !312, inlinedAt: !321)
!342 = !DILocation(line: 334, column: 9, scope: !312, inlinedAt: !321)
!343 = !DILocation(line: 334, column: 17, scope: !312, inlinedAt: !321)
!344 = !{!255, !242, i64 52}
!345 = !DILocation(line: 335, column: 16, scope: !312, inlinedAt: !321)
!346 = !{!257, !257, i64 0}
!347 = !DILocation(line: 335, column: 9, scope: !312, inlinedAt: !321)
!348 = !DILocation(line: 335, column: 14, scope: !312, inlinedAt: !321)
!349 = !{!255, !257, i64 272}
!350 = !DILocation(line: 336, column: 9, scope: !312, inlinedAt: !321)
!351 = !DILocation(line: 336, column: 2, scope: !312, inlinedAt: !321)
!352 = !DILocation(line: 337, column: 9, scope: !312, inlinedAt: !321)
!353 = !DILocation(line: 337, column: 2, scope: !312, inlinedAt: !321)
!354 = !DILocation(line: 340, column: 11, scope: !355, inlinedAt: !321)
!355 = distinct !DILexicalBlock(scope: !312, file: !1, line: 340, column: 6)
!356 = !DILocation(line: 340, column: 6, scope: !312, inlinedAt: !321)
!357 = !DILocation(line: 322, column: 14, scope: !312, inlinedAt: !321)
!358 = !DILocation(line: 344, column: 7, scope: !359, inlinedAt: !321)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 344, column: 7)
!360 = distinct !DILexicalBlock(scope: !355, file: !1, line: 340, column: 20)
!361 = !DILocation(line: 344, column: 7, scope: !360, inlinedAt: !321)
!362 = !DILocation(line: 347, column: 26, scope: !360, inlinedAt: !321)
!363 = !{!301, !303, i64 72}
!364 = !DILocation(line: 347, column: 18, scope: !360, inlinedAt: !321)
!365 = !DILocation(line: 347, column: 16, scope: !360, inlinedAt: !321)
!366 = !{!255, !242, i64 12}
!367 = !DILocation(line: 348, column: 19, scope: !360, inlinedAt: !321)
!368 = !DILocation(line: 348, column: 17, scope: !360, inlinedAt: !321)
!369 = !{!255, !242, i64 16}
!370 = !DILocation(line: 349, column: 2, scope: !360, inlinedAt: !321)
!371 = !DILocation(line: 351, column: 6, scope: !372, inlinedAt: !321)
!372 = distinct !DILexicalBlock(scope: !312, file: !1, line: 351, column: 6)
!373 = !DILocation(line: 351, column: 6, scope: !312, inlinedAt: !321)
!374 = !DILocation(line: 352, column: 13, scope: !375, inlinedAt: !321)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 352, column: 7)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 351, column: 12)
!377 = !{!378, !242, i64 0}
!378 = !{!"", !242, i64 0, !242, i64 4, !242, i64 8, !242, i64 12, !257, i64 16, !242, i64 24}
!379 = !DILocation(line: 352, column: 7, scope: !375, inlinedAt: !321)
!380 = !DILocation(line: 352, column: 7, scope: !376, inlinedAt: !321)
!381 = !DILocation(line: 354, column: 20, scope: !382, inlinedAt: !321)
!382 = distinct !DILexicalBlock(scope: !375, file: !1, line: 352, column: 20)
!383 = !DILocation(line: 354, column: 18, scope: !382, inlinedAt: !321)
!384 = !DILocation(line: 355, column: 21, scope: !382, inlinedAt: !321)
!385 = !DILocation(line: 355, column: 17, scope: !382, inlinedAt: !321)
!386 = !DILocation(line: 356, column: 21, scope: !387, inlinedAt: !321)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 356, column: 8)
!388 = !DILocation(line: 356, column: 8, scope: !382, inlinedAt: !321)
!389 = !DILocation(line: 357, column: 5, scope: !390, inlinedAt: !321)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 356, column: 34)
!391 = !DILocation(line: 357, column: 11, scope: !390, inlinedAt: !321)
!392 = !DILocation(line: 358, column: 5, scope: !390, inlinedAt: !321)
!393 = !DILocation(line: 361, column: 13, scope: !394, inlinedAt: !321)
!394 = distinct !DILexicalBlock(scope: !376, file: !1, line: 361, column: 7)
!395 = !{!378, !242, i64 4}
!396 = !DILocation(line: 361, column: 7, scope: !394, inlinedAt: !321)
!397 = !DILocation(line: 361, column: 7, scope: !376, inlinedAt: !321)
!398 = !DILocation(line: 362, column: 19, scope: !394, inlinedAt: !321)
!399 = !DILocation(line: 362, column: 4, scope: !394, inlinedAt: !321)
!400 = !DILocation(line: 363, column: 13, scope: !401, inlinedAt: !321)
!401 = distinct !DILexicalBlock(scope: !376, file: !1, line: 363, column: 7)
!402 = !{!378, !257, i64 16}
!403 = !DILocation(line: 363, column: 7, scope: !401, inlinedAt: !321)
!404 = !DILocation(line: 363, column: 7, scope: !376, inlinedAt: !321)
!405 = !DILocation(line: 364, column: 16, scope: !401, inlinedAt: !321)
!406 = !DILocation(line: 364, column: 4, scope: !401, inlinedAt: !321)
!407 = !DILocation(line: 365, column: 13, scope: !408, inlinedAt: !321)
!408 = distinct !DILexicalBlock(scope: !376, file: !1, line: 365, column: 7)
!409 = !{!378, !242, i64 8}
!410 = !DILocation(line: 365, column: 7, scope: !408, inlinedAt: !321)
!411 = !DILocation(line: 365, column: 7, scope: !376, inlinedAt: !321)
!412 = !DILocation(line: 366, column: 4, scope: !408, inlinedAt: !321)
!413 = !DILocation(line: 0, scope: !312, inlinedAt: !321)
!414 = !DILocation(line: 367, column: 13, scope: !415, inlinedAt: !321)
!415 = distinct !DILexicalBlock(scope: !376, file: !1, line: 367, column: 7)
!416 = !{!378, !242, i64 24}
!417 = !DILocation(line: 367, column: 7, scope: !415, inlinedAt: !321)
!418 = !DILocation(line: 367, column: 7, scope: !376, inlinedAt: !321)
!419 = !DILocation(line: 368, column: 41, scope: !420, inlinedAt: !321)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 368, column: 28)
!421 = distinct !DILexicalBlock(scope: !415, file: !1, line: 367, column: 21)
!422 = !DILocation(line: 368, column: 58, scope: !420, inlinedAt: !321)
!423 = !DILocation(line: 369, column: 41, scope: !420, inlinedAt: !321)
!424 = !DILocation(line: 368, column: 28, scope: !421, inlinedAt: !321)
!425 = !DILocation(line: 370, column: 5, scope: !426, inlinedAt: !321)
!426 = distinct !DILexicalBlock(scope: !420, file: !1, line: 369, column: 62)
!427 = !DILocation(line: 370, column: 11, scope: !426, inlinedAt: !321)
!428 = !DILocation(line: 371, column: 5, scope: !426, inlinedAt: !321)
!429 = !DILocation(line: 373, column: 18, scope: !421, inlinedAt: !321)
!430 = !{!255, !242, i64 8}
!431 = !DILocation(line: 374, column: 3, scope: !421, inlinedAt: !321)
!432 = !DILocalVariable(name: "hashp", arg: 1, scope: !433, file: !1, line: 390, type: !20)
!433 = distinct !DISubprogram(name: "init_htab", scope: !1, file: !1, line: 389, type: !434, isLocal: true, isDefinition: true, scopeLine: 392, isOptimized: true, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!29, !20, !29}
!436 = !{!432, !437, !438, !439, !440}
!437 = !DILocalVariable(name: "nelem", arg: 2, scope: !433, file: !1, line: 391, type: !29)
!438 = !DILocalVariable(name: "nbuckets", scope: !433, file: !1, line: 393, type: !29)
!439 = !DILocalVariable(name: "nsegs", scope: !433, file: !1, line: 393, type: !29)
!440 = !DILocalVariable(name: "l2", scope: !433, file: !1, line: 394, type: !29)
!441 = !DILocation(line: 390, column: 8, scope: !433, inlinedAt: !442)
!442 = distinct !DILocation(line: 377, column: 6, scope: !443, inlinedAt: !321)
!443 = distinct !DILexicalBlock(scope: !312, file: !1, line: 377, column: 6)
!444 = !DILocation(line: 391, column: 6, scope: !433, inlinedAt: !442)
!445 = !DILocation(line: 401, column: 17, scope: !433, inlinedAt: !442)
!446 = !DILocation(line: 401, column: 31, scope: !433, inlinedAt: !442)
!447 = !DILocation(line: 401, column: 22, scope: !433, inlinedAt: !442)
!448 = !DILocation(line: 401, column: 39, scope: !433, inlinedAt: !442)
!449 = !DILocation(line: 403, column: 14, scope: !433, inlinedAt: !442)
!450 = !DILocation(line: 403, column: 7, scope: !433, inlinedAt: !442)
!451 = !DILocation(line: 394, column: 6, scope: !433, inlinedAt: !442)
!452 = !DILocation(line: 404, column: 15, scope: !433, inlinedAt: !442)
!453 = !DILocation(line: 393, column: 6, scope: !433, inlinedAt: !442)
!454 = !DILocation(line: 406, column: 25, scope: !433, inlinedAt: !442)
!455 = !DILocation(line: 406, column: 2, scope: !433, inlinedAt: !442)
!456 = !DILocation(line: 406, column: 20, scope: !433, inlinedAt: !442)
!457 = !DILocation(line: 407, column: 2, scope: !433, inlinedAt: !442)
!458 = !DILocation(line: 407, column: 24, scope: !433, inlinedAt: !442)
!459 = !DILocation(line: 408, column: 9, scope: !433, inlinedAt: !442)
!460 = !DILocation(line: 408, column: 20, scope: !433, inlinedAt: !442)
!461 = !{!255, !242, i64 32}
!462 = !DILocation(line: 409, column: 9, scope: !433, inlinedAt: !442)
!463 = !DILocation(line: 409, column: 20, scope: !433, inlinedAt: !442)
!464 = !{!255, !242, i64 36}
!465 = !DILocation(line: 412, column: 23, scope: !466, inlinedAt: !442)
!466 = distinct !DILexicalBlock(scope: !433, file: !1, line: 412, column: 6)
!467 = !DILocation(line: 412, column: 6, scope: !466, inlinedAt: !442)
!468 = !DILocation(line: 412, column: 6, scope: !433, inlinedAt: !442)
!469 = !DILocation(line: 413, column: 3, scope: !466, inlinedAt: !442)
!470 = !DILocation(line: 426, column: 1, scope: !433, inlinedAt: !442)
!471 = !DILocation(line: 377, column: 6, scope: !312, inlinedAt: !321)
!472 = !DILocation(line: 380, column: 3, scope: !443, inlinedAt: !321)
!473 = !DILocation(line: 415, column: 49, scope: !433, inlinedAt: !442)
!474 = !DILocation(line: 415, column: 29, scope: !433, inlinedAt: !442)
!475 = !DILocation(line: 415, column: 38, scope: !433, inlinedAt: !442)
!476 = !{!255, !242, i64 48}
!477 = !DILocation(line: 415, column: 9, scope: !433, inlinedAt: !442)
!478 = !DILocation(line: 415, column: 20, scope: !433, inlinedAt: !442)
!479 = !{!255, !242, i64 40}
!480 = !DILocation(line: 416, column: 31, scope: !433, inlinedAt: !442)
!481 = !DILocation(line: 416, column: 37, scope: !433, inlinedAt: !442)
!482 = !DILocation(line: 416, column: 9, scope: !433, inlinedAt: !442)
!483 = !DILocation(line: 416, column: 19, scope: !433, inlinedAt: !442)
!484 = !{!255, !242, i64 44}
!485 = !DILocation(line: 418, column: 13, scope: !433, inlinedAt: !442)
!486 = !DILocation(line: 417, column: 60, scope: !433, inlinedAt: !442)
!487 = !DILocation(line: 417, column: 20, scope: !433, inlinedAt: !442)
!488 = !DILocation(line: 417, column: 9, scope: !433, inlinedAt: !442)
!489 = !DILocation(line: 417, column: 18, scope: !433, inlinedAt: !442)
!490 = !{!255, !242, i64 60}
!491 = !DILocation(line: 420, column: 34, scope: !433, inlinedAt: !442)
!492 = !DILocation(line: 420, column: 25, scope: !433, inlinedAt: !442)
!493 = !DILocation(line: 420, column: 41, scope: !433, inlinedAt: !442)
!494 = !DILocation(line: 393, column: 16, scope: !433, inlinedAt: !442)
!495 = !DILocation(line: 421, column: 15, scope: !433, inlinedAt: !442)
!496 = !DILocation(line: 421, column: 12, scope: !433, inlinedAt: !442)
!497 = !DILocation(line: 423, column: 21, scope: !498, inlinedAt: !442)
!498 = distinct !DILexicalBlock(scope: !433, file: !1, line: 423, column: 6)
!499 = !{!255, !242, i64 20}
!500 = !DILocation(line: 423, column: 12, scope: !498, inlinedAt: !442)
!501 = !DILocation(line: 423, column: 6, scope: !433, inlinedAt: !442)
!502 = !DILocation(line: 424, column: 16, scope: !498, inlinedAt: !442)
!503 = !DILocation(line: 424, column: 3, scope: !498, inlinedAt: !442)
!504 = !DILocation(line: 425, column: 10, scope: !433, inlinedAt: !442)
!505 = !DILocation(line: 425, column: 2, scope: !433, inlinedAt: !442)
!506 = !DILocation(line: 377, column: 6, scope: !443, inlinedAt: !321)
!507 = !DILocation(line: 0, scope: !443, inlinedAt: !321)
!508 = !DILocation(line: 381, column: 1, scope: !312, inlinedAt: !321)
!509 = !DILocation(line: 175, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 175, column: 7)
!511 = distinct !DILexicalBlock(scope: !310, file: !1, line: 173, column: 9)
!512 = !DILocation(line: 175, column: 12, scope: !510)
!513 = !DILocation(line: 175, column: 21, scope: !510)
!514 = !DILocation(line: 175, column: 15, scope: !510)
!515 = !DILocation(line: 175, column: 7, scope: !511)
!516 = !DILocation(line: 176, column: 11, scope: !510)
!517 = !DILocation(line: 176, column: 16, scope: !510)
!518 = !DILocation(line: 176, column: 4, scope: !510)
!519 = !DILocation(line: 178, column: 18, scope: !510)
!520 = !DILocation(line: 178, column: 11, scope: !510)
!521 = !DILocation(line: 178, column: 16, scope: !510)
!522 = !DILocation(line: 180, column: 25, scope: !511)
!523 = !DILocation(line: 180, column: 13, scope: !511)
!524 = !DILocation(line: 122, column: 14, scope: !172)
!525 = !DILocalVariable(name: "hashp", arg: 1, scope: !526, file: !1, line: 1009, type: !20)
!526 = distinct !DISubprogram(name: "swap_header", scope: !1, file: !1, line: 1008, type: !527, isLocal: true, isDefinition: true, scopeLine: 1010, isOptimized: true, unit: !0, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !20}
!529 = !{!525, !530, !532, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !572}
!530 = !DILocalVariable(name: "hdrp", scope: !526, file: !1, line: 1011, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!532 = !DILocalVariable(name: "i", scope: !526, file: !1, line: 1012, type: !29)
!533 = !DILocalVariable(name: "_tmp", scope: !534, file: !1, line: 1016, type: !32)
!534 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1016, column: 2)
!535 = !DILocalVariable(name: "_tmp", scope: !536, file: !1, line: 1017, type: !32)
!536 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1017, column: 2)
!537 = !DILocalVariable(name: "_tmp", scope: !538, file: !1, line: 1018, type: !32)
!538 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1018, column: 2)
!539 = !DILocalVariable(name: "_tmp", scope: !540, file: !1, line: 1019, type: !32)
!540 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1019, column: 2)
!541 = !DILocalVariable(name: "_tmp", scope: !542, file: !1, line: 1020, type: !32)
!542 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1020, column: 2)
!543 = !DILocalVariable(name: "_tmp", scope: !544, file: !1, line: 1021, type: !32)
!544 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1021, column: 2)
!545 = !DILocalVariable(name: "_tmp", scope: !546, file: !1, line: 1022, type: !32)
!546 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1022, column: 2)
!547 = !DILocalVariable(name: "_tmp", scope: !548, file: !1, line: 1023, type: !32)
!548 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1023, column: 2)
!549 = !DILocalVariable(name: "_tmp", scope: !550, file: !1, line: 1024, type: !32)
!550 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1024, column: 2)
!551 = !DILocalVariable(name: "_tmp", scope: !552, file: !1, line: 1025, type: !32)
!552 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1025, column: 2)
!553 = !DILocalVariable(name: "_tmp", scope: !554, file: !1, line: 1026, type: !32)
!554 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1026, column: 2)
!555 = !DILocalVariable(name: "_tmp", scope: !556, file: !1, line: 1027, type: !32)
!556 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1027, column: 2)
!557 = !DILocalVariable(name: "_tmp", scope: !558, file: !1, line: 1028, type: !32)
!558 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1028, column: 2)
!559 = !DILocalVariable(name: "_tmp", scope: !560, file: !1, line: 1029, type: !32)
!560 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1029, column: 2)
!561 = !DILocalVariable(name: "_tmp", scope: !562, file: !1, line: 1030, type: !32)
!562 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1030, column: 2)
!563 = !DILocalVariable(name: "_tmp", scope: !564, file: !1, line: 1031, type: !32)
!564 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1031, column: 2)
!565 = !DILocalVariable(name: "_tmp", scope: !566, file: !1, line: 1032, type: !32)
!566 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1032, column: 2)
!567 = !DILocalVariable(name: "_tmp", scope: !568, file: !1, line: 1034, type: !32)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 1034, column: 3)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 1033, column: 32)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 1033, column: 2)
!571 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1033, column: 2)
!572 = !DILocalVariable(name: "_tmp", scope: !573, file: !1, line: 1035, type: !54)
!573 = distinct !DILexicalBlock(scope: !569, file: !1, line: 1035, column: 3)
!574 = !DILocation(line: 1009, column: 8, scope: !526, inlinedAt: !575)
!575 = distinct !DILocation(line: 182, column: 3, scope: !511)
!576 = !DILocation(line: 1011, column: 11, scope: !526, inlinedAt: !575)
!577 = !DILocation(line: 1016, column: 2, scope: !534, inlinedAt: !575)
!578 = !{!256, !242, i64 0}
!579 = !{!243, !243, i64 0}
!580 = !DILocation(line: 1017, column: 2, scope: !536, inlinedAt: !575)
!581 = !{!256, !242, i64 4}
!582 = !DILocation(line: 1018, column: 2, scope: !538, inlinedAt: !575)
!583 = !{!256, !242, i64 8}
!584 = !DILocation(line: 1019, column: 2, scope: !540, inlinedAt: !575)
!585 = !{!256, !242, i64 12}
!586 = !DILocation(line: 1020, column: 2, scope: !542, inlinedAt: !575)
!587 = !{!256, !242, i64 16}
!588 = !DILocation(line: 1021, column: 2, scope: !544, inlinedAt: !575)
!589 = !{!256, !242, i64 20}
!590 = !DILocation(line: 1022, column: 2, scope: !546, inlinedAt: !575)
!591 = !{!256, !242, i64 24}
!592 = !DILocation(line: 1023, column: 2, scope: !548, inlinedAt: !575)
!593 = !{!256, !242, i64 28}
!594 = !DILocation(line: 1024, column: 2, scope: !550, inlinedAt: !575)
!595 = !{!256, !242, i64 32}
!596 = !DILocation(line: 1025, column: 2, scope: !552, inlinedAt: !575)
!597 = !{!256, !242, i64 36}
!598 = !DILocation(line: 1026, column: 2, scope: !554, inlinedAt: !575)
!599 = !{!256, !242, i64 40}
!600 = !DILocation(line: 1027, column: 2, scope: !556, inlinedAt: !575)
!601 = !{!256, !242, i64 44}
!602 = !DILocation(line: 1028, column: 2, scope: !558, inlinedAt: !575)
!603 = !{!256, !242, i64 48}
!604 = !DILocation(line: 1029, column: 2, scope: !560, inlinedAt: !575)
!605 = !{!256, !242, i64 52}
!606 = !DILocation(line: 1030, column: 2, scope: !562, inlinedAt: !575)
!607 = !{!256, !242, i64 56}
!608 = !DILocation(line: 1031, column: 2, scope: !564, inlinedAt: !575)
!609 = !{!256, !242, i64 60}
!610 = !DILocation(line: 1032, column: 2, scope: !566, inlinedAt: !575)
!611 = !{!256, !242, i64 64}
!612 = !DILocation(line: 1012, column: 6, scope: !526, inlinedAt: !575)
!613 = !DILocation(line: 1033, column: 7, scope: !571, inlinedAt: !575)
!614 = !DILocation(line: 1033, column: 2, scope: !571, inlinedAt: !575)
!615 = !DILocation(line: 1034, column: 3, scope: !568, inlinedAt: !575)
!616 = !DILocation(line: 1035, column: 3, scope: !573, inlinedAt: !575)
!617 = !{!302, !302, i64 0}
!618 = !DILocation(line: 1033, column: 28, scope: !570, inlinedAt: !575)
!619 = !DILocation(line: 1033, column: 2, scope: !570, inlinedAt: !575)
!620 = !DILocation(line: 1033, column: 16, scope: !570, inlinedAt: !575)
!621 = distinct !{!621, !622, !623}
!622 = !DILocation(line: 1033, column: 2, scope: !571)
!623 = !DILocation(line: 1036, column: 2, scope: !571)
!624 = !DILocation(line: 1037, column: 1, scope: !526, inlinedAt: !575)
!625 = !DILocation(line: 184, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !511, file: !1, line: 184, column: 7)
!627 = !DILocation(line: 184, column: 7, scope: !511)
!628 = !DILocation(line: 185, column: 4, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !1, line: 185, column: 4)
!630 = !DILocation(line: 186, column: 15, scope: !631)
!631 = distinct !DILexicalBlock(scope: !511, file: !1, line: 186, column: 7)
!632 = !DILocation(line: 186, column: 7, scope: !511)
!633 = !DILocation(line: 189, column: 14, scope: !634)
!634 = distinct !DILexicalBlock(scope: !511, file: !1, line: 189, column: 7)
!635 = !{!255, !242, i64 0}
!636 = !DILocation(line: 189, column: 20, scope: !634)
!637 = !DILocation(line: 189, column: 7, scope: !511)
!638 = !DILocation(line: 192, column: 14, scope: !639)
!639 = distinct !DILexicalBlock(scope: !511, file: !1, line: 192, column: 7)
!640 = !{!255, !242, i64 4}
!641 = !DILocation(line: 192, column: 27, scope: !639)
!642 = !DILocation(line: 192, column: 42, scope: !639)
!643 = !DILocation(line: 193, column: 27, scope: !639)
!644 = !DILocation(line: 192, column: 7, scope: !511)
!645 = !DILocation(line: 195, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !511, file: !1, line: 195, column: 7)
!647 = !DILocation(line: 195, column: 7, scope: !646)
!648 = !DILocation(line: 195, column: 55, scope: !646)
!649 = !{!255, !242, i64 64}
!650 = !DILocation(line: 195, column: 45, scope: !646)
!651 = !DILocation(line: 195, column: 7, scope: !511)
!652 = !DILocation(line: 202, column: 19, scope: !511)
!653 = !DILocation(line: 202, column: 43, scope: !511)
!654 = !DILocation(line: 202, column: 50, scope: !511)
!655 = !DILocation(line: 202, column: 55, scope: !511)
!656 = !DILocation(line: 122, column: 34, scope: !172)
!657 = !DILocation(line: 204, column: 10, scope: !511)
!658 = !DILocation(line: 204, column: 16, scope: !511)
!659 = !{!255, !242, i64 260}
!660 = !DILocation(line: 205, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !511, file: !1, line: 205, column: 7)
!662 = !DILocation(line: 205, column: 7, scope: !511)
!663 = !DILocation(line: 212, column: 20, scope: !511)
!664 = !DILocation(line: 212, column: 34, scope: !511)
!665 = !DILocation(line: 212, column: 13, scope: !511)
!666 = !DILocation(line: 213, column: 15, scope: !511)
!667 = !DILocation(line: 213, column: 21, scope: !511)
!668 = !DILocation(line: 212, column: 46, scope: !511)
!669 = !DILocation(line: 213, column: 36, scope: !511)
!670 = !DILocation(line: 214, column: 15, scope: !511)
!671 = !DILocation(line: 214, column: 22, scope: !511)
!672 = !DILocation(line: 213, column: 41, scope: !511)
!673 = !DILocation(line: 122, column: 6, scope: !172)
!674 = !DILocation(line: 216, column: 10, scope: !511)
!675 = !DILocation(line: 216, column: 16, scope: !511)
!676 = !{!255, !242, i64 592}
!677 = !DILocation(line: 217, column: 24, scope: !511)
!678 = !DILocation(line: 217, column: 36, scope: !511)
!679 = !DILocation(line: 217, column: 43, scope: !511)
!680 = !DILocation(line: 217, column: 9, scope: !511)
!681 = !DILocation(line: 221, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !172, file: !1, line: 221, column: 6)
!683 = !DILocation(line: 221, column: 11, scope: !682)
!684 = !DILocation(line: 221, column: 20, scope: !682)
!685 = !{!378, !242, i64 12}
!686 = !DILocation(line: 221, column: 14, scope: !682)
!687 = !DILocation(line: 221, column: 6, scope: !172)
!688 = !DILocation(line: 222, column: 3, scope: !682)
!689 = !DILocation(line: 224, column: 3, scope: !682)
!690 = !DILocation(line: 226, column: 9, scope: !172)
!691 = !DILocation(line: 226, column: 18, scope: !172)
!692 = !{!255, !242, i64 324}
!693 = !DILocation(line: 227, column: 26, scope: !172)
!694 = !DILocation(line: 227, column: 37, scope: !172)
!695 = !DILocation(line: 227, column: 9, scope: !172)
!696 = !DILocation(line: 227, column: 19, scope: !172)
!697 = !{!255, !242, i64 328}
!698 = !DILocation(line: 228, column: 9, scope: !172)
!699 = !DILocation(line: 228, column: 17, scope: !172)
!700 = !{!255, !242, i64 312}
!701 = !DILocation(line: 229, column: 20, scope: !702)
!702 = distinct !DILexicalBlock(scope: !172, file: !1, line: 229, column: 6)
!703 = !DILocation(line: 229, column: 12, scope: !702)
!704 = !DILocation(line: 229, column: 6, scope: !172)
!705 = !DILocation(line: 230, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !1, line: 229, column: 41)
!707 = !DILocation(line: 231, column: 3, scope: !706)
!708 = !DILocation(line: 232, column: 3, scope: !706)
!709 = !DILocation(line: 232, column: 9, scope: !706)
!710 = !DILocation(line: 233, column: 3, scope: !706)
!711 = !DILocation(line: 229, column: 14, scope: !702)
!712 = !DILocation(line: 121, column: 6, scope: !172)
!713 = !DILocation(line: 235, column: 7, scope: !172)
!714 = !DILocation(line: 235, column: 16, scope: !172)
!715 = !{!716, !257, i64 56}
!716 = !{!"__db", !243, i64 0, !257, i64 8, !257, i64 16, !257, i64 24, !257, i64 32, !257, i64 40, !257, i64 48, !257, i64 56, !257, i64 64}
!717 = !DILocation(line: 236, column: 7, scope: !172)
!718 = !DILocation(line: 236, column: 13, scope: !172)
!719 = !{!716, !257, i64 8}
!720 = !DILocation(line: 237, column: 7, scope: !172)
!721 = !DILocation(line: 237, column: 11, scope: !172)
!722 = !{!716, !257, i64 16}
!723 = !DILocation(line: 238, column: 7, scope: !172)
!724 = !DILocation(line: 238, column: 10, scope: !172)
!725 = !{!716, !257, i64 64}
!726 = !DILocation(line: 239, column: 7, scope: !172)
!727 = !DILocation(line: 239, column: 11, scope: !172)
!728 = !DILocation(line: 241, column: 7, scope: !172)
!729 = !DILocation(line: 241, column: 11, scope: !172)
!730 = !{!716, !257, i64 40}
!731 = !DILocation(line: 242, column: 7, scope: !172)
!732 = !DILocation(line: 242, column: 12, scope: !172)
!733 = !{!716, !257, i64 48}
!734 = !DILocation(line: 243, column: 7, scope: !172)
!735 = !DILocation(line: 243, column: 12, scope: !172)
!736 = !{!716, !243, i64 0}
!737 = !DILocation(line: 267, column: 2, scope: !172)
!738 = !DILocation(line: 0, scope: !322)
!739 = !DILocation(line: 171, column: 7, scope: !323)
!740 = !DILocation(line: 172, column: 4, scope: !741)
!741 = distinct !DILexicalBlock(scope: !322, file: !1, line: 172, column: 4)
!742 = !DILocation(line: 270, column: 6, scope: !172)
!743 = !DILocation(line: 0, scope: !744)
!744 = distinct !DILexicalBlock(scope: !646, file: !1, line: 196, column: 4)
!745 = !DILocation(line: 271, column: 22, scope: !746)
!746 = distinct !DILexicalBlock(scope: !172, file: !1, line: 270, column: 6)
!747 = !DILocation(line: 271, column: 9, scope: !746)
!748 = !DILocation(line: 271, column: 3, scope: !746)
!749 = !DILocation(line: 0, scope: !741)
!750 = !DILocation(line: 0, scope: !291)
!751 = !DILocation(line: 274, column: 2, scope: !172)
!752 = !DILocation(line: 275, column: 2, scope: !172)
!753 = !DILocation(line: 275, column: 8, scope: !172)
!754 = !DILocation(line: 276, column: 2, scope: !172)
!755 = !DILocation(line: 0, scope: !247)
!756 = !DILocation(line: 0, scope: !239)
!757 = !DILocation(line: 277, column: 1, scope: !172)
!758 = distinct !DISubprogram(name: "alloc_segs", scope: !1, file: !1, line: 945, type: !434, isLocal: true, isDefinition: true, scopeLine: 948, isOptimized: true, unit: !0, retainedNodes: !759)
!759 = !{!760, !761, !762, !763, !764}
!760 = !DILocalVariable(name: "hashp", arg: 1, scope: !758, file: !1, line: 946, type: !20)
!761 = !DILocalVariable(name: "nsegs", arg: 2, scope: !758, file: !1, line: 947, type: !29)
!762 = !DILocalVariable(name: "i", scope: !758, file: !1, line: 949, type: !29)
!763 = !DILocalVariable(name: "store", scope: !758, file: !1, line: 950, type: !99)
!764 = !DILocalVariable(name: "save_errno", scope: !758, file: !1, line: 952, type: !29)
!765 = !DILocation(line: 946, column: 8, scope: !758)
!766 = !DILocation(line: 947, column: 6, scope: !758)
!767 = !DILocation(line: 955, column: 31, scope: !768)
!768 = distinct !DILexicalBlock(scope: !758, file: !1, line: 954, column: 6)
!769 = !DILocation(line: 955, column: 24, scope: !768)
!770 = !DILocation(line: 955, column: 17, scope: !768)
!771 = !DILocation(line: 954, column: 14, scope: !768)
!772 = !DILocation(line: 954, column: 18, scope: !768)
!773 = !{!255, !257, i64 648}
!774 = !DILocation(line: 955, column: 58, scope: !768)
!775 = !DILocation(line: 954, column: 6, scope: !758)
!776 = !DILocation(line: 956, column: 16, scope: !777)
!777 = distinct !DILexicalBlock(scope: !768, file: !1, line: 955, column: 67)
!778 = !DILocation(line: 952, column: 6, scope: !758)
!779 = !DILocation(line: 957, column: 9, scope: !777)
!780 = !DILocation(line: 958, column: 3, scope: !777)
!781 = !DILocation(line: 958, column: 9, scope: !777)
!782 = !DILocation(line: 959, column: 3, scope: !777)
!783 = !DILocation(line: 963, column: 38, scope: !784)
!784 = distinct !DILexicalBlock(scope: !758, file: !1, line: 962, column: 6)
!785 = !DILocation(line: 963, column: 28, scope: !784)
!786 = !DILocation(line: 963, column: 22, scope: !784)
!787 = !DILocation(line: 963, column: 15, scope: !784)
!788 = !DILocation(line: 963, column: 6, scope: !784)
!789 = !DILocation(line: 950, column: 10, scope: !758)
!790 = !DILocation(line: 963, column: 64, scope: !784)
!791 = !DILocation(line: 962, column: 6, scope: !758)
!792 = !DILocation(line: 964, column: 16, scope: !793)
!793 = distinct !DILexicalBlock(scope: !784, file: !1, line: 963, column: 73)
!794 = !DILocation(line: 965, column: 9, scope: !793)
!795 = !DILocation(line: 966, column: 3, scope: !793)
!796 = !DILocation(line: 966, column: 9, scope: !793)
!797 = !DILocation(line: 967, column: 3, scope: !793)
!798 = !DILocation(line: 949, column: 6, scope: !758)
!799 = !DILocation(line: 969, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !758, file: !1, line: 969, column: 2)
!801 = !DILocation(line: 969, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !800, file: !1, line: 969, column: 2)
!803 = !DILocation(line: 969, column: 2, scope: !800)
!804 = !DILocation(line: 969, column: 42, scope: !802)
!805 = !DILocation(line: 970, column: 28, scope: !802)
!806 = !DILocation(line: 970, column: 20, scope: !802)
!807 = !DILocation(line: 970, column: 10, scope: !802)
!808 = !DILocation(line: 970, column: 3, scope: !802)
!809 = !DILocation(line: 970, column: 17, scope: !802)
!810 = !DILocation(line: 969, column: 26, scope: !802)
!811 = !DILocation(line: 969, column: 2, scope: !802)
!812 = distinct !{!812, !803, !813}
!813 = !DILocation(line: 970, column: 44, scope: !800)
!814 = !DILocation(line: 0, scope: !777)
!815 = !DILocation(line: 0, scope: !758)
!816 = !DILocation(line: 972, column: 1, scope: !758)
!817 = distinct !DISubprogram(name: "hdestroy", scope: !1, file: !1, line: 435, type: !818, isLocal: true, isDefinition: true, scopeLine: 437, isOptimized: true, unit: !0, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!29, !20}
!820 = !{!821, !822, !823}
!821 = !DILocalVariable(name: "hashp", arg: 1, scope: !817, file: !1, line: 436, type: !20)
!822 = !DILocalVariable(name: "i", scope: !817, file: !1, line: 438, type: !29)
!823 = !DILocalVariable(name: "save_errno", scope: !817, file: !1, line: 438, type: !29)
!824 = !DILocation(line: 436, column: 8, scope: !817)
!825 = !DILocation(line: 438, column: 9, scope: !817)
!826 = !DILocation(line: 460, column: 34, scope: !827)
!827 = distinct !DILexicalBlock(scope: !817, file: !1, line: 460, column: 6)
!828 = !DILocation(line: 460, column: 6, scope: !827)
!829 = !DILocation(line: 460, column: 6, scope: !817)
!830 = !DILocation(line: 461, column: 16, scope: !827)
!831 = !DILocation(line: 461, column: 3, scope: !827)
!832 = !DILocation(line: 0, scope: !817)
!833 = !DILocation(line: 462, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !1, line: 462, column: 6)
!835 = !DILocation(line: 462, column: 6, scope: !834)
!836 = !DILocation(line: 462, column: 6, scope: !817)
!837 = !DILocation(line: 463, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !1, line: 462, column: 18)
!839 = !DILocation(line: 463, column: 3, scope: !838)
!840 = !DILocation(line: 465, column: 3, scope: !838)
!841 = !DILocation(line: 465, column: 17, scope: !838)
!842 = !DILocation(line: 465, column: 23, scope: !838)
!843 = !{!255, !242, i64 264}
!844 = !DILocation(line: 0, scope: !838)
!845 = !DILocation(line: 466, column: 20, scope: !838)
!846 = !DILocation(line: 466, column: 9, scope: !838)
!847 = !DILocation(line: 466, column: 4, scope: !838)
!848 = distinct !{!848, !840, !849}
!849 = !DILocation(line: 466, column: 35, scope: !838)
!850 = !DILocation(line: 467, column: 8, scope: !838)
!851 = !DILocation(line: 467, column: 3, scope: !838)
!852 = !DILocation(line: 468, column: 2, scope: !838)
!853 = !DILocation(line: 469, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !817, file: !1, line: 469, column: 6)
!855 = !DILocation(line: 469, column: 28, scope: !854)
!856 = !DILocation(line: 469, column: 24, scope: !854)
!857 = !DILocation(line: 470, column: 16, scope: !854)
!858 = !DILocation(line: 470, column: 3, scope: !854)
!859 = !DILocation(line: 0, scope: !854)
!860 = !DILocation(line: 438, column: 6, scope: !817)
!861 = !DILocation(line: 472, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !817, file: !1, line: 472, column: 2)
!863 = !DILocation(line: 472, column: 25, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !1, line: 472, column: 2)
!865 = !DILocation(line: 472, column: 16, scope: !864)
!866 = !DILocation(line: 472, column: 2, scope: !862)
!867 = !DILocation(line: 473, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !1, line: 473, column: 7)
!869 = !DILocation(line: 473, column: 7, scope: !864)
!870 = !DILocation(line: 474, column: 9, scope: !868)
!871 = !DILocation(line: 474, column: 4, scope: !868)
!872 = !DILocation(line: 472, column: 33, scope: !864)
!873 = !DILocation(line: 472, column: 2, scope: !864)
!874 = distinct !{!874, !866, !875}
!875 = !DILocation(line: 474, column: 23, scope: !862)
!876 = !DILocation(line: 476, column: 13, scope: !877)
!877 = distinct !DILexicalBlock(scope: !817, file: !1, line: 476, column: 6)
!878 = !DILocation(line: 476, column: 16, scope: !877)
!879 = !DILocation(line: 476, column: 6, scope: !817)
!880 = !DILocation(line: 477, column: 9, scope: !877)
!881 = !DILocation(line: 477, column: 3, scope: !877)
!882 = !DILocation(line: 479, column: 7, scope: !817)
!883 = !DILocation(line: 479, column: 2, scope: !817)
!884 = !DILocation(line: 481, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !817, file: !1, line: 481, column: 6)
!886 = !DILocation(line: 481, column: 6, scope: !817)
!887 = !DILocation(line: 482, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !1, line: 481, column: 18)
!889 = !DILocation(line: 482, column: 9, scope: !888)
!890 = !DILocation(line: 483, column: 3, scope: !888)
!891 = !DILocation(line: 0, scope: !888)
!892 = !DILocation(line: 486, column: 1, scope: !817)
!893 = distinct !DISubprogram(name: "hash_close", scope: !1, file: !1, line: 280, type: !894, isLocal: true, isDefinition: true, scopeLine: 282, isOptimized: true, unit: !0, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{!29, !113}
!896 = !{!897, !898, !899}
!897 = !DILocalVariable(name: "dbp", arg: 1, scope: !893, file: !1, line: 281, type: !113)
!898 = !DILocalVariable(name: "hashp", scope: !893, file: !1, line: 283, type: !20)
!899 = !DILocalVariable(name: "retval", scope: !893, file: !1, line: 284, type: !29)
!900 = !DILocation(line: 281, column: 6, scope: !893)
!901 = !DILocation(line: 286, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !893, file: !1, line: 286, column: 6)
!903 = !DILocation(line: 286, column: 6, scope: !893)
!904 = !DILocation(line: 289, column: 23, scope: !893)
!905 = !DILocation(line: 283, column: 8, scope: !893)
!906 = !DILocation(line: 290, column: 11, scope: !893)
!907 = !DILocation(line: 284, column: 6, scope: !893)
!908 = !DILocation(line: 291, column: 7, scope: !893)
!909 = !DILocation(line: 291, column: 2, scope: !893)
!910 = !DILocation(line: 292, column: 2, scope: !893)
!911 = !DILocation(line: 0, scope: !902)
!912 = !DILocation(line: 293, column: 1, scope: !893)
!913 = distinct !DISubprogram(name: "hash_delete", scope: !1, file: !1, line: 612, type: !914, isLocal: true, isDefinition: true, scopeLine: 616, isOptimized: true, unit: !0, retainedNodes: !918)
!914 = !DISubroutineType(types: !915)
!915 = !{!29, !916, !130, !106}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!918 = !{!919, !920, !921, !922}
!919 = !DILocalVariable(name: "dbp", arg: 1, scope: !913, file: !1, line: 613, type: !916)
!920 = !DILocalVariable(name: "key", arg: 2, scope: !913, file: !1, line: 614, type: !130)
!921 = !DILocalVariable(name: "flag", arg: 3, scope: !913, file: !1, line: 615, type: !106)
!922 = !DILocalVariable(name: "hashp", scope: !913, file: !1, line: 617, type: !20)
!923 = !DILocation(line: 613, column: 12, scope: !913)
!924 = !DILocation(line: 614, column: 13, scope: !913)
!925 = !DILocation(line: 615, column: 8, scope: !913)
!926 = !DILocation(line: 619, column: 23, scope: !913)
!927 = !DILocation(line: 617, column: 8, scope: !913)
!928 = !DILocation(line: 620, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !913, file: !1, line: 620, column: 6)
!930 = !DILocation(line: 621, column: 18, scope: !931)
!931 = distinct !DILexicalBlock(scope: !929, file: !1, line: 620, column: 32)
!932 = !DILocation(line: 621, column: 24, scope: !931)
!933 = !DILocation(line: 621, column: 10, scope: !931)
!934 = !DILocation(line: 621, column: 16, scope: !931)
!935 = !{!255, !242, i64 320}
!936 = !DILocation(line: 622, column: 3, scope: !931)
!937 = !DILocation(line: 624, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !913, file: !1, line: 624, column: 6)
!939 = !DILocation(line: 624, column: 20, scope: !938)
!940 = !DILocation(line: 624, column: 33, scope: !938)
!941 = !DILocation(line: 624, column: 6, scope: !913)
!942 = !DILocation(line: 625, column: 18, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !1, line: 624, column: 46)
!944 = !DILocation(line: 625, column: 24, scope: !943)
!945 = !DILocation(line: 625, column: 10, scope: !943)
!946 = !DILocation(line: 625, column: 16, scope: !943)
!947 = !DILocation(line: 626, column: 3, scope: !943)
!948 = !DILocation(line: 628, column: 10, scope: !913)
!949 = !DILocation(line: 628, column: 2, scope: !913)
!950 = !DILocation(line: 0, scope: !913)
!951 = !DILocation(line: 0, scope: !931)
!952 = !DILocation(line: 629, column: 1, scope: !913)
!953 = distinct !DISubprogram(name: "hash_fd", scope: !1, file: !1, line: 296, type: !954, isLocal: true, isDefinition: true, scopeLine: 298, isOptimized: true, unit: !0, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{!29, !916}
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "dbp", arg: 1, scope: !953, file: !1, line: 297, type: !916)
!958 = !DILocalVariable(name: "hashp", scope: !953, file: !1, line: 299, type: !20)
!959 = !DILocation(line: 297, column: 12, scope: !953)
!960 = !DILocation(line: 301, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !1, line: 301, column: 6)
!962 = !DILocation(line: 301, column: 6, scope: !953)
!963 = !DILocation(line: 304, column: 23, scope: !953)
!964 = !DILocation(line: 299, column: 8, scope: !953)
!965 = !DILocation(line: 305, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !953, file: !1, line: 305, column: 6)
!967 = !DILocation(line: 305, column: 16, scope: !966)
!968 = !DILocation(line: 305, column: 6, scope: !953)
!969 = !DILocation(line: 306, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 305, column: 23)
!971 = !DILocation(line: 306, column: 9, scope: !970)
!972 = !DILocation(line: 307, column: 3, scope: !970)
!973 = !DILocation(line: 0, scope: !961)
!974 = !DILocation(line: 310, column: 1, scope: !953)
!975 = distinct !DISubprogram(name: "hash_get", scope: !1, file: !1, line: 572, type: !976, isLocal: true, isDefinition: true, scopeLine: 577, isOptimized: true, unit: !0, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!29, !916, !130, !142, !106}
!978 = !{!979, !980, !981, !982, !983}
!979 = !DILocalVariable(name: "dbp", arg: 1, scope: !975, file: !1, line: 573, type: !916)
!980 = !DILocalVariable(name: "key", arg: 2, scope: !975, file: !1, line: 574, type: !130)
!981 = !DILocalVariable(name: "data", arg: 3, scope: !975, file: !1, line: 575, type: !142)
!982 = !DILocalVariable(name: "flag", arg: 4, scope: !975, file: !1, line: 576, type: !106)
!983 = !DILocalVariable(name: "hashp", scope: !975, file: !1, line: 578, type: !20)
!984 = !DILocation(line: 573, column: 12, scope: !975)
!985 = !DILocation(line: 574, column: 13, scope: !975)
!986 = !DILocation(line: 575, column: 7, scope: !975)
!987 = !DILocation(line: 576, column: 8, scope: !975)
!988 = !DILocation(line: 580, column: 23, scope: !975)
!989 = !DILocation(line: 578, column: 8, scope: !975)
!990 = !DILocation(line: 581, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !975, file: !1, line: 581, column: 6)
!992 = !DILocation(line: 581, column: 6, scope: !975)
!993 = !DILocation(line: 582, column: 18, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !1, line: 581, column: 12)
!995 = !DILocation(line: 582, column: 24, scope: !994)
!996 = !DILocation(line: 582, column: 10, scope: !994)
!997 = !DILocation(line: 582, column: 16, scope: !994)
!998 = !DILocation(line: 583, column: 3, scope: !994)
!999 = !DILocation(line: 585, column: 10, scope: !975)
!1000 = !DILocation(line: 585, column: 2, scope: !975)
!1001 = !DILocation(line: 0, scope: !975)
!1002 = !DILocation(line: 0, scope: !994)
!1003 = !DILocation(line: 586, column: 1, scope: !975)
!1004 = distinct !DISubprogram(name: "hash_put", scope: !1, file: !1, line: 589, type: !1005, isLocal: true, isDefinition: true, scopeLine: 594, isOptimized: true, unit: !0, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!29, !916, !142, !130, !106}
!1007 = !{!1008, !1009, !1010, !1011, !1012}
!1008 = !DILocalVariable(name: "dbp", arg: 1, scope: !1004, file: !1, line: 590, type: !916)
!1009 = !DILocalVariable(name: "key", arg: 2, scope: !1004, file: !1, line: 591, type: !142)
!1010 = !DILocalVariable(name: "data", arg: 3, scope: !1004, file: !1, line: 592, type: !130)
!1011 = !DILocalVariable(name: "flag", arg: 4, scope: !1004, file: !1, line: 593, type: !106)
!1012 = !DILocalVariable(name: "hashp", scope: !1004, file: !1, line: 595, type: !20)
!1013 = !DILocation(line: 590, column: 12, scope: !1004)
!1014 = !DILocation(line: 591, column: 7, scope: !1004)
!1015 = !DILocation(line: 592, column: 13, scope: !1004)
!1016 = !DILocation(line: 593, column: 8, scope: !1004)
!1017 = !DILocation(line: 597, column: 23, scope: !1004)
!1018 = !DILocation(line: 595, column: 8, scope: !1004)
!1019 = !DILocation(line: 598, column: 11, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 598, column: 6)
!1021 = !DILocation(line: 599, column: 10, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 598, column: 37)
!1023 = !DILocation(line: 599, column: 16, scope: !1022)
!1024 = !DILocation(line: 600, column: 3, scope: !1022)
!1025 = !DILocation(line: 600, column: 9, scope: !1022)
!1026 = !DILocation(line: 601, column: 3, scope: !1022)
!1027 = !DILocation(line: 603, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 603, column: 6)
!1029 = !DILocation(line: 603, column: 20, scope: !1028)
!1030 = !DILocation(line: 603, column: 33, scope: !1028)
!1031 = !DILocation(line: 603, column: 6, scope: !1004)
!1032 = !DILocation(line: 604, column: 18, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 603, column: 46)
!1034 = !DILocation(line: 604, column: 24, scope: !1033)
!1035 = !DILocation(line: 604, column: 10, scope: !1033)
!1036 = !DILocation(line: 604, column: 16, scope: !1033)
!1037 = !DILocation(line: 605, column: 3, scope: !1033)
!1038 = !DILocation(line: 607, column: 34, scope: !1004)
!1039 = !DILocation(line: 607, column: 29, scope: !1004)
!1040 = !DILocation(line: 607, column: 10, scope: !1004)
!1041 = !DILocation(line: 607, column: 2, scope: !1004)
!1042 = !DILocation(line: 0, scope: !1004)
!1043 = !DILocation(line: 0, scope: !1022)
!1044 = !DILocation(line: 609, column: 1, scope: !1004)
!1045 = distinct !DISubprogram(name: "hash_seq", scope: !1, file: !1, line: 764, type: !1046, isLocal: true, isDefinition: true, scopeLine: 768, isOptimized: true, unit: !0, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!29, !916, !142, !142, !106}
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1049 = !DILocalVariable(name: "dbp", arg: 1, scope: !1045, file: !1, line: 765, type: !916)
!1050 = !DILocalVariable(name: "key", arg: 2, scope: !1045, file: !1, line: 766, type: !142)
!1051 = !DILocalVariable(name: "data", arg: 3, scope: !1045, file: !1, line: 766, type: !142)
!1052 = !DILocalVariable(name: "flag", arg: 4, scope: !1045, file: !1, line: 767, type: !106)
!1053 = !DILocalVariable(name: "bucket", scope: !1045, file: !1, line: 769, type: !32)
!1054 = !DILocalVariable(name: "bufp", scope: !1045, file: !1, line: 770, type: !76)
!1055 = !DILocalVariable(name: "hashp", scope: !1045, file: !1, line: 771, type: !20)
!1056 = !DILocalVariable(name: "bp", scope: !1045, file: !1, line: 772, type: !164)
!1057 = !DILocalVariable(name: "ndx", scope: !1045, file: !1, line: 772, type: !54)
!1058 = !DILocation(line: 765, column: 12, scope: !1045)
!1059 = !DILocation(line: 766, column: 7, scope: !1045)
!1060 = !DILocation(line: 766, column: 13, scope: !1045)
!1061 = !DILocation(line: 767, column: 8, scope: !1045)
!1062 = !DILocation(line: 774, column: 23, scope: !1045)
!1063 = !DILocation(line: 771, column: 8, scope: !1045)
!1064 = !DILocation(line: 775, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 775, column: 6)
!1066 = !DILocation(line: 776, column: 18, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 775, column: 49)
!1068 = !DILocation(line: 776, column: 24, scope: !1067)
!1069 = !DILocation(line: 776, column: 10, scope: !1067)
!1070 = !DILocation(line: 776, column: 16, scope: !1067)
!1071 = !DILocation(line: 777, column: 3, scope: !1067)
!1072 = !DILocation(line: 782, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 782, column: 6)
!1074 = !DILocation(line: 782, column: 22, scope: !1073)
!1075 = !DILocation(line: 782, column: 36, scope: !1073)
!1076 = !DILocation(line: 782, column: 27, scope: !1073)
!1077 = !DILocation(line: 783, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 782, column: 49)
!1079 = !DILocation(line: 784, column: 10, scope: !1078)
!1080 = !DILocation(line: 784, column: 15, scope: !1078)
!1081 = !{!255, !242, i64 316}
!1082 = !DILocation(line: 785, column: 10, scope: !1078)
!1083 = !DILocation(line: 785, column: 16, scope: !1078)
!1084 = !{!255, !257, i64 304}
!1085 = !DILocation(line: 786, column: 2, scope: !1078)
!1086 = !DILocation(line: 772, column: 14, scope: !1045)
!1087 = !DILocation(line: 788, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 788, column: 2)
!1089 = !DILocation(line: 0, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 789, column: 7)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 788, column: 35)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 788, column: 2)
!1093 = !DILocation(line: 770, column: 11, scope: !1045)
!1094 = !DILocation(line: 788, column: 19, scope: !1092)
!1095 = !DILocation(line: 788, column: 22, scope: !1092)
!1096 = !DILocation(line: 788, column: 26, scope: !1092)
!1097 = !DILocation(line: 788, column: 25, scope: !1092)
!1098 = !DILocation(line: 788, column: 2, scope: !1088)
!1099 = !DILocation(line: 789, column: 23, scope: !1090)
!1100 = !DILocation(line: 789, column: 14, scope: !1090)
!1101 = !DILocation(line: 789, column: 7, scope: !1091)
!1102 = !DILocation(line: 790, column: 25, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 790, column: 4)
!1104 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 789, column: 31)
!1105 = !DILocation(line: 769, column: 13, scope: !1045)
!1106 = !DILocation(line: 790, column: 9, scope: !1103)
!1107 = !DILocation(line: 791, column: 25, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 790, column: 4)
!1109 = !DILocation(line: 791, column: 15, scope: !1108)
!1110 = !DILocation(line: 790, column: 4, scope: !1103)
!1111 = !DILocation(line: 793, column: 12, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 792, column: 35)
!1113 = !DILocation(line: 794, column: 10, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 794, column: 9)
!1115 = !DILocation(line: 794, column: 9, scope: !1112)
!1116 = !DILocation(line: 796, column: 18, scope: !1112)
!1117 = !DILocation(line: 797, column: 30, scope: !1112)
!1118 = !{!258, !257, i64 32}
!1119 = !DILocation(line: 798, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 798, column: 9)
!1121 = !DILocation(line: 798, column: 9, scope: !1112)
!1122 = !DILocation(line: 802, column: 32, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 802, column: 8)
!1124 = !DILocation(line: 792, column: 14, scope: !1108)
!1125 = !DILocation(line: 792, column: 30, scope: !1108)
!1126 = !DILocation(line: 790, column: 4, scope: !1108)
!1127 = distinct !{!1127, !1110, !1128}
!1128 = !DILocation(line: 800, column: 4, scope: !1103)
!1129 = !DILocation(line: 0, scope: !1108)
!1130 = !DILocation(line: 0, scope: !1088)
!1131 = !DILocation(line: 801, column: 19, scope: !1104)
!1132 = !DILocation(line: 802, column: 23, scope: !1123)
!1133 = !DILocation(line: 802, column: 8, scope: !1104)
!1134 = !DILocation(line: 803, column: 20, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 802, column: 44)
!1136 = !DILocation(line: 804, column: 5, scope: !1135)
!1137 = !DILocation(line: 807, column: 37, scope: !1090)
!1138 = !DILocation(line: 0, scope: !1112)
!1139 = !DILocation(line: 813, column: 3, scope: !1091)
!1140 = !DILocation(line: 813, column: 20, scope: !1091)
!1141 = !DILocation(line: 813, column: 25, scope: !1091)
!1142 = !DILocation(line: 813, column: 10, scope: !1091)
!1143 = !DILocation(line: 813, column: 30, scope: !1091)
!1144 = !DILocation(line: 815, column: 25, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 813, column: 43)
!1146 = !DILocation(line: 815, column: 8, scope: !1145)
!1147 = !DILocation(line: 814, column: 24, scope: !1145)
!1148 = !DILocation(line: 816, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 816, column: 8)
!1150 = !DILocation(line: 816, column: 8, scope: !1145)
!1151 = !DILocation(line: 818, column: 30, scope: !1145)
!1152 = !DILocation(line: 819, column: 16, scope: !1145)
!1153 = distinct !{!1153, !1139, !1154}
!1154 = !DILocation(line: 820, column: 3, scope: !1091)
!1155 = !DILocation(line: 0, scope: !1145)
!1156 = !DILocation(line: 821, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 821, column: 7)
!1158 = !DILocation(line: 821, column: 7, scope: !1091)
!1159 = !DILocation(line: 822, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 821, column: 15)
!1161 = !DILocation(line: 823, column: 4, scope: !1160)
!1162 = !DILocation(line: 824, column: 3, scope: !1160)
!1163 = !DILocation(line: 788, column: 2, scope: !1092)
!1164 = distinct !{!1164, !1098, !1165}
!1165 = !DILocation(line: 825, column: 2, scope: !1088)
!1166 = !DILocation(line: 826, column: 15, scope: !1045)
!1167 = !DILocation(line: 827, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 827, column: 6)
!1169 = !DILocation(line: 827, column: 13, scope: !1168)
!1170 = !DILocation(line: 827, column: 6, scope: !1168)
!1171 = !DILocation(line: 827, column: 18, scope: !1168)
!1172 = !DILocation(line: 827, column: 6, scope: !1045)
!1173 = !DILocation(line: 828, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 828, column: 7)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 827, column: 30)
!1176 = !DILocation(line: 828, column: 7, scope: !1175)
!1177 = !DILocation(line: 831, column: 32, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 830, column: 9)
!1179 = !DILocation(line: 831, column: 39, scope: !1178)
!1180 = !DILocation(line: 831, column: 46, scope: !1178)
!1181 = !DILocation(line: 831, column: 44, scope: !1178)
!1182 = !DILocation(line: 831, column: 8, scope: !1178)
!1183 = !DILocation(line: 831, column: 13, scope: !1178)
!1184 = !{!1185, !257, i64 0}
!1185 = !{!"", !257, i64 0, !303, i64 8}
!1186 = !DILocation(line: 832, column: 20, scope: !1178)
!1187 = !DILocation(line: 832, column: 16, scope: !1178)
!1188 = !DILocation(line: 832, column: 33, scope: !1178)
!1189 = !DILocation(line: 832, column: 26, scope: !1178)
!1190 = !DILocation(line: 832, column: 47, scope: !1178)
!1191 = !DILocation(line: 832, column: 56, scope: !1178)
!1192 = !DILocation(line: 832, column: 54, scope: !1178)
!1193 = !DILocation(line: 832, column: 15, scope: !1178)
!1194 = !DILocation(line: 832, column: 8, scope: !1178)
!1195 = !DILocation(line: 832, column: 13, scope: !1178)
!1196 = !{!1185, !303, i64 8}
!1197 = !DILocation(line: 833, column: 45, scope: !1178)
!1198 = !DILocation(line: 833, column: 9, scope: !1178)
!1199 = !DILocation(line: 833, column: 14, scope: !1178)
!1200 = !DILocation(line: 834, column: 24, scope: !1178)
!1201 = !DILocation(line: 834, column: 9, scope: !1178)
!1202 = !DILocation(line: 834, column: 14, scope: !1178)
!1203 = !DILocation(line: 835, column: 7, scope: !1178)
!1204 = !DILocation(line: 836, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 836, column: 7)
!1206 = !DILocation(line: 772, column: 18, scope: !1045)
!1207 = !DILocation(line: 836, column: 13, scope: !1205)
!1208 = !DILocation(line: 836, column: 11, scope: !1205)
!1209 = !DILocation(line: 836, column: 7, scope: !1178)
!1210 = !DILocation(line: 837, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 836, column: 20)
!1212 = !DILocation(line: 838, column: 18, scope: !1211)
!1213 = !DILocation(line: 840, column: 3, scope: !1211)
!1214 = !DILocation(line: 0, scope: !1205)
!1215 = !DILocation(line: 843, column: 2, scope: !1045)
!1216 = !DILocation(line: 0, scope: !1045)
!1217 = !DILocation(line: 0, scope: !1067)
!1218 = !DILocation(line: 844, column: 1, scope: !1045)
!1219 = distinct !DISubprogram(name: "hash_sync", scope: !1, file: !1, line: 495, type: !1220, isLocal: true, isDefinition: true, scopeLine: 498, isOptimized: true, unit: !0, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!29, !916, !106}
!1222 = !{!1223, !1224, !1225}
!1223 = !DILocalVariable(name: "dbp", arg: 1, scope: !1219, file: !1, line: 496, type: !916)
!1224 = !DILocalVariable(name: "flags", arg: 2, scope: !1219, file: !1, line: 497, type: !106)
!1225 = !DILocalVariable(name: "hashp", scope: !1219, file: !1, line: 499, type: !20)
!1226 = !DILocation(line: 496, column: 12, scope: !1219)
!1227 = !DILocation(line: 497, column: 8, scope: !1219)
!1228 = !DILocation(line: 501, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 501, column: 6)
!1230 = !DILocation(line: 501, column: 6, scope: !1219)
!1231 = !DILocation(line: 502, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 501, column: 18)
!1233 = !DILocation(line: 502, column: 9, scope: !1232)
!1234 = !DILocation(line: 503, column: 3, scope: !1232)
!1235 = !DILocation(line: 506, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 506, column: 6)
!1237 = !DILocation(line: 506, column: 6, scope: !1219)
!1238 = !DILocation(line: 509, column: 23, scope: !1219)
!1239 = !DILocation(line: 499, column: 8, scope: !1219)
!1240 = !DILocation(line: 510, column: 14, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 510, column: 6)
!1242 = !DILocation(line: 510, column: 7, scope: !1241)
!1243 = !DILocation(line: 510, column: 6, scope: !1219)
!1244 = !DILocation(line: 512, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 512, column: 6)
!1246 = !DILocation(line: 512, column: 30, scope: !1245)
!1247 = !DILocation(line: 512, column: 33, scope: !1245)
!1248 = !DILocation(line: 512, column: 6, scope: !1219)
!1249 = !DILocation(line: 514, column: 9, scope: !1219)
!1250 = !DILocation(line: 514, column: 18, scope: !1219)
!1251 = !DILocation(line: 515, column: 2, scope: !1219)
!1252 = !DILocation(line: 0, scope: !1236)
!1253 = !DILocation(line: 0, scope: !1232)
!1254 = !DILocation(line: 516, column: 1, scope: !1219)
!1255 = distinct !DISubprogram(name: "__expand_table", scope: !1, file: !1, line: 854, type: !818, isLocal: false, isDefinition: true, scopeLine: 856, isOptimized: true, unit: !0, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262}
!1257 = !DILocalVariable(name: "hashp", arg: 1, scope: !1255, file: !1, line: 855, type: !20)
!1258 = !DILocalVariable(name: "old_bucket", scope: !1255, file: !1, line: 857, type: !32)
!1259 = !DILocalVariable(name: "new_bucket", scope: !1255, file: !1, line: 857, type: !32)
!1260 = !DILocalVariable(name: "dirsize", scope: !1255, file: !1, line: 858, type: !29)
!1261 = !DILocalVariable(name: "new_segnum", scope: !1255, file: !1, line: 858, type: !29)
!1262 = !DILocalVariable(name: "spare_ndx", scope: !1255, file: !1, line: 858, type: !29)
!1263 = !DILocation(line: 855, column: 8, scope: !1255)
!1264 = !DILocation(line: 863, column: 24, scope: !1255)
!1265 = !DILocation(line: 863, column: 15, scope: !1255)
!1266 = !DILocation(line: 857, column: 25, scope: !1255)
!1267 = !DILocation(line: 864, column: 43, scope: !1255)
!1268 = !DILocation(line: 864, column: 34, scope: !1255)
!1269 = !DILocation(line: 857, column: 13, scope: !1255)
!1270 = !DILocation(line: 866, column: 36, scope: !1255)
!1271 = !DILocation(line: 866, column: 26, scope: !1255)
!1272 = !DILocation(line: 858, column: 15, scope: !1255)
!1273 = !DILocation(line: 869, column: 27, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 869, column: 6)
!1275 = !DILocation(line: 869, column: 17, scope: !1274)
!1276 = !DILocation(line: 869, column: 6, scope: !1255)
!1277 = !DILocation(line: 871, column: 28, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 871, column: 7)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 869, column: 34)
!1280 = !DILocation(line: 871, column: 18, scope: !1278)
!1281 = !DILocation(line: 871, column: 7, scope: !1279)
!1282 = !DILocation(line: 878, column: 15, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 878, column: 7)
!1284 = !DILocation(line: 874, column: 52, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 874, column: 8)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 871, column: 35)
!1287 = !DILocalVariable(name: "newsize", arg: 3, scope: !1288, file: !1, line: 911, type: !29)
!1288 = distinct !DISubprogram(name: "hash_realloc", scope: !1, file: !1, line: 909, type: !1289, isLocal: true, isDefinition: true, scopeLine: 912, isOptimized: true, unit: !0, retainedNodes: !1292)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!136, !1291, !29, !29}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1292 = !{!1293, !1294, !1287, !1295}
!1293 = !DILocalVariable(name: "p_ptr", arg: 1, scope: !1288, file: !1, line: 910, type: !1291)
!1294 = !DILocalVariable(name: "oldsize", arg: 2, scope: !1288, file: !1, line: 911, type: !29)
!1295 = !DILocalVariable(name: "p", scope: !1288, file: !1, line: 913, type: !136)
!1296 = !DILocation(line: 911, column: 15, scope: !1288, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 874, column: 9, scope: !1285)
!1298 = !DILocation(line: 915, column: 19, scope: !1299, inlinedAt: !1297)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 915, column: 7)
!1300 = !DILocation(line: 915, column: 12, scope: !1299, inlinedAt: !1297)
!1301 = !DILocation(line: 913, column: 8, scope: !1288, inlinedAt: !1297)
!1302 = !DILocation(line: 915, column: 10, scope: !1299, inlinedAt: !1297)
!1303 = !DILocation(line: 915, column: 7, scope: !1288, inlinedAt: !1297)
!1304 = !DILocation(line: 921, column: 2, scope: !1288, inlinedAt: !1297)
!1305 = !DILocation(line: 874, column: 8, scope: !1286)
!1306 = !DILocation(line: 875, column: 5, scope: !1285)
!1307 = !DILocation(line: 873, column: 27, scope: !1286)
!1308 = !DILocation(line: 911, column: 6, scope: !1288, inlinedAt: !1297)
!1309 = !DILocation(line: 858, column: 6, scope: !1255)
!1310 = !DILocation(line: 874, column: 30, scope: !1285)
!1311 = !DILocation(line: 910, column: 12, scope: !1288, inlinedAt: !1297)
!1312 = !DILocation(line: 916, column: 14, scope: !1313, inlinedAt: !1297)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 915, column: 31)
!1314 = !DILocation(line: 916, column: 22, scope: !1313, inlinedAt: !1297)
!1315 = !DILocation(line: 916, column: 3, scope: !1313, inlinedAt: !1297)
!1316 = !DILocation(line: 917, column: 20, scope: !1313, inlinedAt: !1297)
!1317 = !DILocation(line: 917, column: 3, scope: !1313, inlinedAt: !1297)
!1318 = !DILocation(line: 918, column: 8, scope: !1313, inlinedAt: !1297)
!1319 = !DILocation(line: 918, column: 3, scope: !1313, inlinedAt: !1297)
!1320 = !DILocation(line: 919, column: 10, scope: !1313, inlinedAt: !1297)
!1321 = !DILocation(line: 920, column: 2, scope: !1313, inlinedAt: !1297)
!1322 = !DILocation(line: 876, column: 17, scope: !1286)
!1323 = !DILocation(line: 877, column: 3, scope: !1286)
!1324 = !DILocation(line: 879, column: 30, scope: !1283)
!1325 = !DILocation(line: 879, column: 23, scope: !1283)
!1326 = !DILocation(line: 879, column: 16, scope: !1283)
!1327 = !DILocation(line: 878, column: 8, scope: !1283)
!1328 = !DILocation(line: 878, column: 31, scope: !1283)
!1329 = !DILocation(line: 879, column: 56, scope: !1283)
!1330 = !DILocation(line: 878, column: 7, scope: !1279)
!1331 = !DILocation(line: 881, column: 10, scope: !1279)
!1332 = !DILocation(line: 881, column: 16, scope: !1279)
!1333 = !DILocation(line: 882, column: 15, scope: !1279)
!1334 = !DILocation(line: 883, column: 2, scope: !1279)
!1335 = !DILocation(line: 889, column: 28, scope: !1255)
!1336 = !DILocation(line: 889, column: 39, scope: !1255)
!1337 = !DILocation(line: 889, column: 14, scope: !1255)
!1338 = !DILocation(line: 858, column: 27, scope: !1255)
!1339 = !DILocation(line: 890, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 890, column: 6)
!1341 = !DILocation(line: 890, column: 16, scope: !1340)
!1342 = !DILocation(line: 890, column: 6, scope: !1255)
!1343 = !DILocation(line: 891, column: 30, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 890, column: 37)
!1345 = !DILocation(line: 891, column: 3, scope: !1344)
!1346 = !DILocation(line: 891, column: 28, scope: !1344)
!1347 = !DILocation(line: 892, column: 21, scope: !1344)
!1348 = !DILocation(line: 893, column: 2, scope: !1344)
!1349 = !DILocation(line: 895, column: 26, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 895, column: 6)
!1351 = !DILocation(line: 895, column: 17, scope: !1350)
!1352 = !DILocation(line: 895, column: 6, scope: !1255)
!1353 = !DILocation(line: 897, column: 19, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 895, column: 37)
!1355 = !DILocation(line: 898, column: 33, scope: !1354)
!1356 = !DILocation(line: 898, column: 20, scope: !1354)
!1357 = !DILocation(line: 899, column: 2, scope: !1354)
!1358 = !DILocation(line: 901, column: 10, scope: !1255)
!1359 = !DILocation(line: 901, column: 2, scope: !1255)
!1360 = !DILocation(line: 0, scope: !1285)
!1361 = !DILocation(line: 902, column: 1, scope: !1255)
!1362 = distinct !DISubprogram(name: "__call_hash", scope: !1, file: !1, line: 925, type: !1363, isLocal: false, isDefinition: true, scopeLine: 929, isOptimized: true, unit: !0, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!32, !20, !72, !29}
!1365 = !{!1366, !1367, !1368, !1369, !1370}
!1366 = !DILocalVariable(name: "hashp", arg: 1, scope: !1362, file: !1, line: 926, type: !20)
!1367 = !DILocalVariable(name: "k", arg: 2, scope: !1362, file: !1, line: 927, type: !72)
!1368 = !DILocalVariable(name: "len", arg: 3, scope: !1362, file: !1, line: 928, type: !29)
!1369 = !DILocalVariable(name: "n", scope: !1362, file: !1, line: 930, type: !29)
!1370 = !DILocalVariable(name: "bucket", scope: !1362, file: !1, line: 930, type: !29)
!1371 = !DILocation(line: 926, column: 8, scope: !1362)
!1372 = !DILocation(line: 927, column: 8, scope: !1362)
!1373 = !DILocation(line: 928, column: 6, scope: !1362)
!1374 = !DILocation(line: 932, column: 13, scope: !1362)
!1375 = !DILocation(line: 932, column: 21, scope: !1362)
!1376 = !DILocation(line: 932, column: 6, scope: !1362)
!1377 = !DILocation(line: 930, column: 6, scope: !1362)
!1378 = !DILocation(line: 933, column: 22, scope: !1362)
!1379 = !DILocation(line: 933, column: 13, scope: !1362)
!1380 = !DILocation(line: 930, column: 9, scope: !1362)
!1381 = !DILocation(line: 934, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 934, column: 6)
!1383 = !DILocation(line: 934, column: 13, scope: !1382)
!1384 = !DILocation(line: 934, column: 6, scope: !1362)
!1385 = !DILocation(line: 935, column: 28, scope: !1382)
!1386 = !DILocation(line: 935, column: 19, scope: !1382)
!1387 = !DILocation(line: 935, column: 3, scope: !1382)
!1388 = !DILocation(line: 0, scope: !1362)
!1389 = !DILocation(line: 936, column: 2, scope: !1362)
!1390 = distinct !DISubprogram(name: "flush_meta", scope: !1, file: !1, line: 524, type: !818, isLocal: true, isDefinition: true, scopeLine: 526, isOptimized: true, unit: !0, retainedNodes: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397}
!1392 = !DILocalVariable(name: "hashp", arg: 1, scope: !1390, file: !1, line: 525, type: !20)
!1393 = !DILocalVariable(name: "whdrp", scope: !1390, file: !1, line: 527, type: !531)
!1394 = !DILocalVariable(name: "whdr", scope: !1390, file: !1, line: 529, type: !25)
!1395 = !DILocalVariable(name: "fp", scope: !1390, file: !1, line: 531, type: !29)
!1396 = !DILocalVariable(name: "i", scope: !1390, file: !1, line: 531, type: !29)
!1397 = !DILocalVariable(name: "wsize", scope: !1390, file: !1, line: 531, type: !29)
!1398 = !DILocation(line: 525, column: 8, scope: !1390)
!1399 = !DILocation(line: 529, column: 2, scope: !1390)
!1400 = !DILocation(line: 533, column: 14, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 533, column: 6)
!1402 = !DILocation(line: 533, column: 7, scope: !1401)
!1403 = !DILocation(line: 533, column: 6, scope: !1390)
!1404 = !DILocation(line: 535, column: 9, scope: !1390)
!1405 = !DILocation(line: 535, column: 15, scope: !1390)
!1406 = !DILocation(line: 536, column: 9, scope: !1390)
!1407 = !DILocation(line: 536, column: 22, scope: !1390)
!1408 = !DILocation(line: 537, column: 28, scope: !1390)
!1409 = !DILocation(line: 537, column: 21, scope: !1390)
!1410 = !DILocation(line: 537, column: 9, scope: !1390)
!1411 = !DILocation(line: 537, column: 19, scope: !1390)
!1412 = !DILocation(line: 539, column: 14, scope: !1390)
!1413 = !DILocation(line: 531, column: 6, scope: !1390)
!1414 = !DILocation(line: 527, column: 11, scope: !1390)
!1415 = !DILocation(line: 529, column: 10, scope: !1390)
!1416 = !DILocalVariable(name: "srcp", arg: 1, scope: !1417, file: !1, line: 980, type: !531)
!1417 = distinct !DISubprogram(name: "swap_header_copy", scope: !1, file: !1, line: 979, type: !1418, isLocal: true, isDefinition: true, scopeLine: 981, isOptimized: true, unit: !0, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !531, !531}
!1420 = !{!1416, !1421, !1422}
!1421 = !DILocalVariable(name: "destp", arg: 2, scope: !1417, file: !1, line: 980, type: !531)
!1422 = !DILocalVariable(name: "i", scope: !1417, file: !1, line: 982, type: !29)
!1423 = !DILocation(line: 980, column: 11, scope: !1417, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 543, column: 2, scope: !1390)
!1425 = !DILocation(line: 980, column: 18, scope: !1417, inlinedAt: !1424)
!1426 = !DILocation(line: 984, column: 2, scope: !1427, inlinedAt: !1424)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 984, column: 2)
!1428 = !DILocation(line: 988, column: 2, scope: !1429, inlinedAt: !1424)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 988, column: 2)
!1430 = !DILocation(line: 992, column: 2, scope: !1431, inlinedAt: !1424)
!1431 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 992, column: 2)
!1432 = !DILocation(line: 996, column: 2, scope: !1433, inlinedAt: !1424)
!1433 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 996, column: 2)
!1434 = !DILocation(line: 1000, column: 2, scope: !1435, inlinedAt: !1424)
!1435 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 1000, column: 2)
!1436 = !DILocation(line: 982, column: 6, scope: !1417, inlinedAt: !1424)
!1437 = !DILocation(line: 1001, column: 7, scope: !1438, inlinedAt: !1424)
!1438 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 1001, column: 2)
!1439 = !DILocation(line: 1001, column: 2, scope: !1438, inlinedAt: !1424)
!1440 = !DILocation(line: 1002, column: 3, scope: !1441, inlinedAt: !1424)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 1002, column: 3)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 1001, column: 32)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 1001, column: 2)
!1444 = !DILocation(line: 1003, column: 3, scope: !1445, inlinedAt: !1424)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 1003, column: 3)
!1446 = !DILocation(line: 1001, column: 28, scope: !1443, inlinedAt: !1424)
!1447 = !DILocation(line: 1001, column: 2, scope: !1443, inlinedAt: !1424)
!1448 = !DILocation(line: 1001, column: 16, scope: !1443, inlinedAt: !1424)
!1449 = distinct !{!1449, !1450, !1451}
!1450 = !DILocation(line: 1001, column: 2, scope: !1438)
!1451 = !DILocation(line: 1004, column: 2, scope: !1438)
!1452 = !DILocation(line: 1005, column: 1, scope: !1417, inlinedAt: !1424)
!1453 = !DILocation(line: 545, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 545, column: 6)
!1455 = !DILocation(line: 545, column: 37, scope: !1454)
!1456 = !DILocation(line: 545, column: 44, scope: !1454)
!1457 = !DILocation(line: 546, column: 16, scope: !1454)
!1458 = !DILocation(line: 531, column: 13, scope: !1390)
!1459 = !DILocation(line: 546, column: 51, scope: !1454)
!1460 = !DILocation(line: 545, column: 6, scope: !1390)
!1461 = !DILocation(line: 549, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 549, column: 7)
!1463 = !DILocation(line: 549, column: 7, scope: !1454)
!1464 = !DILocation(line: 550, column: 4, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 549, column: 33)
!1466 = !DILocation(line: 550, column: 10, scope: !1465)
!1467 = !DILocation(line: 551, column: 19, scope: !1465)
!1468 = !DILocation(line: 551, column: 11, scope: !1465)
!1469 = !DILocation(line: 551, column: 17, scope: !1465)
!1470 = !DILocation(line: 552, column: 4, scope: !1465)
!1471 = !DILocation(line: 531, column: 10, scope: !1390)
!1472 = !DILocation(line: 554, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 554, column: 2)
!1474 = !DILocation(line: 554, column: 2, scope: !1473)
!1475 = !DILocation(line: 555, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 555, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 554, column: 2)
!1478 = !DILocation(line: 555, column: 7, scope: !1477)
!1479 = !DILocation(line: 556, column: 26, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 556, column: 8)
!1481 = !DILocation(line: 557, column: 5, scope: !1480)
!1482 = !DILocation(line: 556, column: 8, scope: !1480)
!1483 = !DILocation(line: 556, column: 8, scope: !1476)
!1484 = !DILocation(line: 554, column: 28, scope: !1477)
!1485 = !DILocation(line: 554, column: 2, scope: !1477)
!1486 = !DILocation(line: 554, column: 16, scope: !1477)
!1487 = distinct !{!1487, !1474, !1488}
!1488 = !DILocation(line: 558, column: 15, scope: !1473)
!1489 = !DILocation(line: 0, scope: !1401)
!1490 = !DILocation(line: 560, column: 1, scope: !1390)
!1491 = distinct !DISubprogram(name: "hash_access", scope: !1, file: !1, line: 635, type: !1492, isLocal: true, isDefinition: true, scopeLine: 639, isOptimized: true, unit: !0, retainedNodes: !1495)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!29, !20, !1494, !142, !142}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !11, line: 61, baseType: !10)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1496 = !DILocalVariable(name: "hashp", arg: 1, scope: !1491, file: !1, line: 636, type: !20)
!1497 = !DILocalVariable(name: "action", arg: 2, scope: !1491, file: !1, line: 637, type: !1494)
!1498 = !DILocalVariable(name: "key", arg: 3, scope: !1491, file: !1, line: 638, type: !142)
!1499 = !DILocalVariable(name: "val", arg: 4, scope: !1491, file: !1, line: 638, type: !142)
!1500 = !DILocalVariable(name: "rbufp", scope: !1491, file: !1, line: 640, type: !76)
!1501 = !DILocalVariable(name: "bufp", scope: !1491, file: !1, line: 641, type: !76)
!1502 = !DILocalVariable(name: "save_bufp", scope: !1491, file: !1, line: 641, type: !76)
!1503 = !DILocalVariable(name: "bp", scope: !1491, file: !1, line: 642, type: !164)
!1504 = !DILocalVariable(name: "n", scope: !1491, file: !1, line: 643, type: !29)
!1505 = !DILocalVariable(name: "ndx", scope: !1491, file: !1, line: 643, type: !29)
!1506 = !DILocalVariable(name: "off", scope: !1491, file: !1, line: 643, type: !29)
!1507 = !DILocalVariable(name: "size", scope: !1491, file: !1, line: 643, type: !29)
!1508 = !DILocalVariable(name: "kp", scope: !1491, file: !1, line: 644, type: !72)
!1509 = !DILocalVariable(name: "pageno", scope: !1491, file: !1, line: 645, type: !54)
!1510 = !DILocation(line: 636, column: 8, scope: !1491)
!1511 = !DILocation(line: 637, column: 9, scope: !1491)
!1512 = !DILocation(line: 638, column: 7, scope: !1491)
!1513 = !DILocation(line: 638, column: 13, scope: !1491)
!1514 = !DILocation(line: 641, column: 2, scope: !1491)
!1515 = !DILocation(line: 651, column: 15, scope: !1491)
!1516 = !DILocation(line: 643, column: 14, scope: !1491)
!1517 = !DILocation(line: 652, column: 14, scope: !1491)
!1518 = !DILocation(line: 652, column: 9, scope: !1491)
!1519 = !DILocation(line: 643, column: 19, scope: !1491)
!1520 = !DILocation(line: 653, column: 20, scope: !1491)
!1521 = !DILocation(line: 644, column: 8, scope: !1491)
!1522 = !DILocation(line: 926, column: 8, scope: !1362, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 654, column: 27, scope: !1491)
!1524 = !DILocation(line: 927, column: 8, scope: !1362, inlinedAt: !1523)
!1525 = !DILocation(line: 928, column: 6, scope: !1362, inlinedAt: !1523)
!1526 = !DILocation(line: 932, column: 13, scope: !1362, inlinedAt: !1523)
!1527 = !DILocation(line: 932, column: 21, scope: !1362, inlinedAt: !1523)
!1528 = !DILocation(line: 932, column: 6, scope: !1362, inlinedAt: !1523)
!1529 = !DILocation(line: 930, column: 6, scope: !1362, inlinedAt: !1523)
!1530 = !DILocation(line: 933, column: 22, scope: !1362, inlinedAt: !1523)
!1531 = !DILocation(line: 933, column: 13, scope: !1362, inlinedAt: !1523)
!1532 = !DILocation(line: 930, column: 9, scope: !1362, inlinedAt: !1523)
!1533 = !DILocation(line: 934, column: 22, scope: !1382, inlinedAt: !1523)
!1534 = !DILocation(line: 934, column: 13, scope: !1382, inlinedAt: !1523)
!1535 = !DILocation(line: 934, column: 6, scope: !1362, inlinedAt: !1523)
!1536 = !DILocation(line: 935, column: 28, scope: !1382, inlinedAt: !1523)
!1537 = !DILocation(line: 935, column: 19, scope: !1382, inlinedAt: !1523)
!1538 = !DILocation(line: 935, column: 3, scope: !1382, inlinedAt: !1523)
!1539 = !DILocation(line: 0, scope: !1362, inlinedAt: !1523)
!1540 = !DILocation(line: 936, column: 2, scope: !1362, inlinedAt: !1523)
!1541 = !DILocation(line: 654, column: 10, scope: !1491)
!1542 = !DILocation(line: 640, column: 11, scope: !1491)
!1543 = !DILocation(line: 655, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 655, column: 6)
!1545 = !DILocation(line: 655, column: 6, scope: !1491)
!1546 = !DILocation(line: 656, column: 3, scope: !1544)
!1547 = !DILocation(line: 641, column: 18, scope: !1491)
!1548 = !DILocation(line: 660, column: 9, scope: !1491)
!1549 = !DILocation(line: 660, column: 15, scope: !1491)
!1550 = !{!258, !243, i64 40}
!1551 = !DILocation(line: 661, column: 33, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 661, column: 2)
!1553 = !DILocation(line: 642, column: 14, scope: !1491)
!1554 = !DILocation(line: 661, column: 43, scope: !1552)
!1555 = !DILocation(line: 643, column: 9, scope: !1491)
!1556 = !DILocation(line: 661, column: 7, scope: !1552)
!1557 = !DILocation(line: 661, column: 63, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !1, line: 661, column: 2)
!1559 = !DILocation(line: 661, column: 2, scope: !1552)
!1560 = !DILocation(line: 643, column: 6, scope: !1491)
!1561 = !DILocation(line: 661, column: 46, scope: !1552)
!1562 = !DILocation(line: 662, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 662, column: 7)
!1564 = !DILocation(line: 662, column: 13, scope: !1563)
!1565 = !DILocation(line: 662, column: 7, scope: !1558)
!1566 = !DILocation(line: 664, column: 22, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 664, column: 8)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 662, column: 26)
!1569 = !DILocation(line: 664, column: 20, scope: !1567)
!1570 = !DILocation(line: 664, column: 13, scope: !1567)
!1571 = !DILocation(line: 664, column: 26, scope: !1567)
!1572 = !DILocation(line: 665, column: 26, scope: !1567)
!1573 = !DILocation(line: 665, column: 31, scope: !1567)
!1574 = !DILocation(line: 665, column: 8, scope: !1567)
!1575 = !DILocation(line: 665, column: 44, scope: !1567)
!1576 = !DILocation(line: 664, column: 8, scope: !1568)
!1577 = !DILocation(line: 667, column: 10, scope: !1568)
!1578 = !DILocation(line: 671, column: 7, scope: !1568)
!1579 = !DILocation(line: 672, column: 8, scope: !1568)
!1580 = !DILocation(line: 673, column: 3, scope: !1568)
!1581 = !DILocation(line: 673, column: 20, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 673, column: 14)
!1583 = !DILocation(line: 673, column: 14, scope: !1563)
!1584 = !DILocation(line: 674, column: 29, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 673, column: 33)
!1586 = !DILocation(line: 674, column: 12, scope: !1585)
!1587 = !DILocation(line: 675, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 675, column: 8)
!1589 = !DILocation(line: 675, column: 8, scope: !1585)
!1590 = !DILocation(line: 676, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 675, column: 16)
!1592 = !DILocation(line: 677, column: 5, scope: !1591)
!1593 = !DILocation(line: 680, column: 30, scope: !1585)
!1594 = !DILocation(line: 681, column: 11, scope: !1585)
!1595 = !DILocation(line: 681, column: 8, scope: !1585)
!1596 = !DILocation(line: 683, column: 17, scope: !1585)
!1597 = !DILocation(line: 684, column: 3, scope: !1585)
!1598 = !DILocation(line: 684, column: 14, scope: !1582)
!1599 = !DILocation(line: 686, column: 8, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 685, column: 8)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 684, column: 32)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 684, column: 14)
!1603 = !DILocation(line: 686, column: 53, scope: !1600)
!1604 = !DILocation(line: 685, column: 8, scope: !1601)
!1605 = !DILocation(line: 688, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 688, column: 8)
!1607 = !DILocation(line: 688, column: 8, scope: !1601)
!1608 = !DILocation(line: 641, column: 11, scope: !1491)
!1609 = !DILocation(line: 689, column: 10, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 688, column: 19)
!1611 = !DILocation(line: 691, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 690, column: 9)
!1613 = !DILocation(line: 645, column: 13, scope: !1491)
!1614 = !DILocation(line: 690, column: 18, scope: !1612)
!1615 = !DILocation(line: 690, column: 9, scope: !1610)
!1616 = !DILocation(line: 693, column: 14, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 691, column: 42)
!1618 = !DILocation(line: 694, column: 6, scope: !1617)
!1619 = !DILocation(line: 696, column: 30, scope: !1610)
!1620 = !DILocation(line: 696, column: 38, scope: !1610)
!1621 = !DILocation(line: 696, column: 13, scope: !1610)
!1622 = !DILocation(line: 697, column: 10, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 697, column: 9)
!1624 = !DILocation(line: 697, column: 9, scope: !1610)
!1625 = !DILocation(line: 698, column: 23, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 697, column: 17)
!1627 = !DILocation(line: 699, column: 6, scope: !1626)
!1628 = !DILocation(line: 702, column: 31, scope: !1610)
!1629 = !DILocation(line: 703, column: 12, scope: !1610)
!1630 = !DILocation(line: 703, column: 9, scope: !1610)
!1631 = !DILocation(line: 705, column: 18, scope: !1610)
!1632 = !DILocation(line: 710, column: 3, scope: !1601)
!1633 = !DILocation(line: 707, column: 22, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 706, column: 11)
!1635 = !DILocation(line: 708, column: 5, scope: !1634)
!1636 = !DILocation(line: 0, scope: !1552)
!1637 = !DILocation(line: 0, scope: !1491)
!1638 = !DILocation(line: 0, scope: !1568)
!1639 = !DILocation(line: 661, column: 2, scope: !1558)
!1640 = distinct !{!1640, !1559, !1641}
!1641 = !DILocation(line: 710, column: 3, scope: !1552)
!1642 = !DILocation(line: 713, column: 2, scope: !1491)
!1643 = !DILocation(line: 716, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 716, column: 7)
!1645 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 713, column: 18)
!1646 = !DILocation(line: 0, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 719, column: 10)
!1648 = !DILocation(line: 716, column: 7, scope: !1645)
!1649 = !DILocation(line: 0, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 716, column: 40)
!1651 = !DILocation(line: 721, column: 4, scope: !1647)
!1652 = !DILocation(line: 726, column: 20, scope: !1645)
!1653 = !DILocation(line: 727, column: 3, scope: !1645)
!1654 = !DILocation(line: 0, scope: !1600)
!1655 = !DILocation(line: 731, column: 2, scope: !1491)
!1656 = !DILocation(line: 733, column: 20, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 731, column: 18)
!1658 = !DILocation(line: 734, column: 3, scope: !1657)
!1659 = !DILocation(line: 736, column: 29, scope: !1657)
!1660 = !DILocation(line: 736, column: 8, scope: !1657)
!1661 = !DILocation(line: 737, column: 14, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 737, column: 7)
!1663 = !DILocation(line: 737, column: 7, scope: !1662)
!1664 = !DILocation(line: 737, column: 19, scope: !1662)
!1665 = !DILocation(line: 737, column: 7, scope: !1657)
!1666 = !DILocation(line: 738, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 738, column: 8)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 737, column: 31)
!1669 = !DILocation(line: 738, column: 8, scope: !1668)
!1670 = !DILocation(line: 739, column: 5, scope: !1667)
!1671 = !DILocation(line: 741, column: 38, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 740, column: 10)
!1673 = !DILocation(line: 741, column: 9, scope: !1672)
!1674 = !DILocation(line: 741, column: 14, scope: !1672)
!1675 = !DILocation(line: 742, column: 16, scope: !1672)
!1676 = !DILocation(line: 742, column: 24, scope: !1672)
!1677 = !DILocation(line: 742, column: 9, scope: !1672)
!1678 = !DILocation(line: 742, column: 14, scope: !1672)
!1679 = !DILocation(line: 746, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 746, column: 7)
!1681 = !DILocation(line: 746, column: 38, scope: !1680)
!1682 = !DILocation(line: 747, column: 8, scope: !1680)
!1683 = !DILocation(line: 746, column: 7, scope: !1657)
!1684 = !DILocation(line: 748, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 747, column: 42)
!1686 = !DILocation(line: 749, column: 4, scope: !1685)
!1687 = !DILocation(line: 753, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 753, column: 7)
!1689 = !DILocation(line: 753, column: 7, scope: !1657)
!1690 = !DILocation(line: 754, column: 4, scope: !1688)
!1691 = !DILocation(line: 757, column: 3, scope: !1657)
!1692 = !DILocation(line: 759, column: 19, scope: !1491)
!1693 = !DILocation(line: 760, column: 2, scope: !1491)
!1694 = !DILocation(line: 0, scope: !1544)
!1695 = !DILocation(line: 761, column: 1, scope: !1491)
