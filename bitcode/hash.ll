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
  br i1 %10, label %11, label %13, !dbg !237

; <label>:11:                                     ; preds = %5
  %12 = tail call i32* @__errno() #6, !dbg !238
  store i32 22, i32* %12, align 4, !dbg !240, !tbaa !241
  br label %572, !dbg !245

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @calloc(i64 1, i64 656) #6, !dbg !246
  %15 = bitcast i8* %14 to %struct.htab*, !dbg !248
  %16 = icmp eq i8* %14, null, !dbg !250
  br i1 %16, label %572, label %17, !dbg !251

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %14, i64 284, !dbg !252
  %19 = bitcast i8* %18 to i32*, !dbg !252
  store i32 -1, i32* %19, align 4, !dbg !253, !tbaa !254
  %20 = getelementptr inbounds i8, i8* %14, i64 280, !dbg !259
  %21 = bitcast i8* %20 to i32*, !dbg !259
  store i32 %1, i32* %21, align 8, !dbg !260, !tbaa !261
  %22 = icmp ne i8* %0, null, !dbg !263
  %23 = and i32 %1, 1024, !dbg !265
  %24 = icmp eq i32 %23, 0, !dbg !265
  %25 = and i1 %22, %24, !dbg !266
  br i1 %25, label %26, label %33, !dbg !266

; <label>:26:                                     ; preds = %17
  %27 = call i32 @stat(i8* nonnull %0, %struct.stat* nonnull %7) #6, !dbg !268
  %28 = icmp eq i32 %27, 0, !dbg !268
  br i1 %28, label %39, label %29, !dbg !269

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #6, !dbg !270
  %31 = load i32, i32* %30, align 4, !dbg !270, !tbaa !241
  %32 = icmp eq i32 %31, 2, !dbg !271
  br i1 %32, label %33, label %39, !dbg !272

; <label>:33:                                     ; preds = %29, %17
  %34 = call i32* @__errno() #6, !dbg !273
  %35 = load i32, i32* %34, align 4, !dbg !273, !tbaa !241
  %36 = icmp eq i32 %35, 2, !dbg !276
  br i1 %36, label %37, label %39, !dbg !277

; <label>:37:                                     ; preds = %33
  %38 = call i32* @__errno() #6, !dbg !278
  store i32 0, i32* %38, align 4, !dbg !279, !tbaa !241
  br label %39, !dbg !278

; <label>:39:                                     ; preds = %33, %37, %26, %29
  %40 = phi i32 [ 0, %29 ], [ 0, %26 ], [ 1, %37 ], [ 1, %33 ], !dbg !280
  br i1 %22, label %41, label %59, !dbg !281

; <label>:41:                                     ; preds = %39
  %42 = call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 %1, i32 %2) #6, !dbg !282
  store i32 %42, i32* %19, align 4, !dbg !286, !tbaa !254
  %43 = icmp eq i32 %42, -1, !dbg !287
  br i1 %43, label %44, label %47, !dbg !288

; <label>:44:                                     ; preds = %41
  %45 = call i32* @__errno() #6, !dbg !289
  %46 = load i32, i32* %45, align 4, !dbg !289, !tbaa !241
  br label %568, !dbg !289

; <label>:47:                                     ; preds = %41
  %48 = and i32 %1, 512, !dbg !292
  %49 = icmp eq i32 %48, 0, !dbg !292
  br i1 %49, label %59, label %50, !dbg !294

; <label>:50:                                     ; preds = %47
  %51 = call i32 @fstat(i32 %42, %struct.stat* nonnull %7) #6, !dbg !295
  %52 = icmp eq i32 %51, 0, !dbg !296
  br i1 %52, label %53, label %59, !dbg !297

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 7, !dbg !298
  %55 = load i64, i64* %54, align 8, !dbg !298, !tbaa !299
  %56 = icmp ne i64 %55, 0, !dbg !304
  %57 = icmp eq i32 %40, 0, !dbg !305
  %58 = and i1 %57, %56
  br i1 %58, label %182, label %61

; <label>:59:                                     ; preds = %47, %50, %39
  %60 = icmp eq i32 %40, 0, !dbg !305
  br i1 %60, label %182, label %61, !dbg !307

; <label>:61:                                     ; preds = %53, %59
  %62 = bitcast %struct.stat* %6 to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %62) #5, !dbg !323
  %63 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !325
  %64 = bitcast i8* %63 to i32*, !dbg !325
  store i32 0, i32* %64, align 8, !dbg !326, !tbaa !327
  %65 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !328
  %66 = bitcast i8* %65 to i32*, !dbg !328
  %67 = getelementptr inbounds i8, i8* %14, i64 12, !dbg !329
  %68 = bitcast i8* %67 to i32*, !dbg !329
  %69 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !330
  %70 = bitcast i8* %69 to i32*, !dbg !330
  %71 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !331
  %72 = bitcast i8* %71 to i32*, !dbg !331
  store i32 256, i32* %72, align 8, !dbg !332, !tbaa !333
  %73 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !334
  %74 = bitcast i8* %73 to i32*, !dbg !334
  store i32 8, i32* %74, align 4, !dbg !335, !tbaa !336
  %75 = getelementptr inbounds i8, i8* %14, i64 20, !dbg !337
  %76 = bitcast i8* %75 to i32*, !dbg !337
  %77 = bitcast i8* %65 to <4 x i32>*, !dbg !338
  store <4 x i32> <i32 1234, i32 4096, i32 12, i32 256>, <4 x i32>* %77, align 8, !dbg !338, !tbaa !241
  %78 = getelementptr inbounds i8, i8* %14, i64 52, !dbg !339
  %79 = bitcast i8* %78 to i32*, !dbg !339
  store i32 65536, i32* %79, align 4, !dbg !340, !tbaa !341
  %80 = load i64, i64* bitcast (i32 (i8*, i64)** @__default_hash to i64*), align 8, !dbg !342, !tbaa !343
  %81 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !344
  %82 = bitcast i8* %81 to i32 (i8*, i64)**, !dbg !344
  %83 = bitcast i8* %81 to i64*, !dbg !345
  store i64 %80, i64* %83, align 8, !dbg !345, !tbaa !346
  %84 = getelementptr inbounds i8, i8* %14, i64 68, !dbg !347
  %85 = call i8* @memset(i8* nonnull %84, i32 0, i64 128) #6, !dbg !348
  %86 = getelementptr inbounds i8, i8* %14, i64 196, !dbg !349
  %87 = call i8* @memset(i8* nonnull %86, i32 0, i64 64) #6, !dbg !350
  %88 = icmp eq i8* %0, null, !dbg !351
  br i1 %88, label %97, label %89, !dbg !353

; <label>:89:                                     ; preds = %61
  %90 = call i32 @stat(i8* nonnull %0, %struct.stat* nonnull %6) #6, !dbg !355
  %91 = icmp eq i32 %90, 0, !dbg !355
  br i1 %91, label %92, label %561, !dbg !358

; <label>:92:                                     ; preds = %89
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 11, !dbg !359
  %94 = load i64, i64* %93, align 8, !dbg !359, !tbaa !360
  %95 = trunc i64 %94 to i32, !dbg !361
  store i32 %95, i32* %68, align 4, !dbg !362, !tbaa !363
  %96 = call i32 @__log2(i32 %95) #6, !dbg !364
  store i32 %96, i32* %70, align 8, !dbg !365, !tbaa !366
  br label %97, !dbg !367

; <label>:97:                                     ; preds = %92, %61
  %98 = icmp eq %struct.HASHINFO* %4, null, !dbg !368
  br i1 %98, label %129, label %99, !dbg !370

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 0, !dbg !371
  %101 = load i32, i32* %100, align 8, !dbg !371, !tbaa !374
  %102 = icmp eq i32 %101, 0, !dbg !376
  br i1 %102, label %109, label %103, !dbg !377

; <label>:103:                                    ; preds = %99
  %104 = call i32 @__log2(i32 %101) #6, !dbg !378
  store i32 %104, i32* %70, align 8, !dbg !380, !tbaa !366
  %105 = shl i32 1, %104, !dbg !381
  store i32 %105, i32* %68, align 4, !dbg !382, !tbaa !363
  %106 = icmp sgt i32 %105, 65536, !dbg !383
  br i1 %106, label %107, label %109, !dbg !385

; <label>:107:                                    ; preds = %103
  %108 = call i32* @__errno() #6, !dbg !386
  store i32 22, i32* %108, align 4, !dbg !388, !tbaa !241
  br label %561, !dbg !389

; <label>:109:                                    ; preds = %103, %99
  %110 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 1, !dbg !390
  %111 = load i32, i32* %110, align 4, !dbg !390, !tbaa !392
  %112 = icmp eq i32 %111, 0, !dbg !393
  br i1 %112, label %114, label %113, !dbg !394

; <label>:113:                                    ; preds = %109
  store i32 %111, i32* %79, align 4, !dbg !395, !tbaa !341
  br label %114, !dbg !396

; <label>:114:                                    ; preds = %113, %109
  %115 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 4, !dbg !397
  %116 = load i32 (i8*, i64)*, i32 (i8*, i64)** %115, align 8, !dbg !397, !tbaa !399
  %117 = icmp eq i32 (i8*, i64)* %116, null, !dbg !400
  br i1 %117, label %119, label %118, !dbg !401

; <label>:118:                                    ; preds = %114
  store i32 (i8*, i64)* %116, i32 (i8*, i64)** %82, align 8, !dbg !402, !tbaa !346
  br label %119, !dbg !403

; <label>:119:                                    ; preds = %118, %114
  %120 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 2, !dbg !404
  %121 = load i32, i32* %120, align 8, !dbg !404, !tbaa !406
  %122 = icmp eq i32 %121, 0, !dbg !407
  %123 = select i1 %122, i32 1, i32 %121, !dbg !408
  %124 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 5, !dbg !409
  %125 = load i32, i32* %124, align 8, !dbg !409, !tbaa !411
  switch i32 %125, label %126 [
    i32 0, label %129
    i32 4321, label %128
    i32 1234, label %128
  ], !dbg !412

; <label>:126:                                    ; preds = %119
  %127 = call i32* @__errno() #6, !dbg !413
  store i32 22, i32* %127, align 4, !dbg !417, !tbaa !241
  br label %561, !dbg !418

; <label>:128:                                    ; preds = %119, %119
  store i32 %125, i32* %66, align 8, !dbg !419, !tbaa !420
  br label %129, !dbg !421

; <label>:129:                                    ; preds = %128, %119, %97
  %130 = phi i32 [ %123, %128 ], [ %123, %119 ], [ 1, %97 ], !dbg !422
  %131 = add nsw i32 %130, -1, !dbg !436
  %132 = load i32, i32* %79, align 4, !dbg !437, !tbaa !341
  %133 = sdiv i32 %131, %132, !dbg !438
  %134 = add nsw i32 %133, 1, !dbg !439
  %135 = icmp sgt i32 %134, 2, !dbg !440
  %136 = select i1 %135, i32 %134, i32 2, !dbg !440
  %137 = call i32 @__log2(i32 %136) #6, !dbg !441
  %138 = shl i32 1, %137, !dbg !443
  %139 = add nsw i32 %137, 1, !dbg !445
  %140 = sext i32 %137 to i64, !dbg !446
  %141 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %140, !dbg !446
  store i32 %139, i32* %141, align 4, !dbg !447, !tbaa !241
  %142 = sext i32 %139 to i64, !dbg !448
  %143 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %142, !dbg !448
  store i32 %139, i32* %143, align 4, !dbg !449, !tbaa !241
  %144 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !450
  %145 = bitcast i8* %144 to i32*, !dbg !450
  store i32 %137, i32* %145, align 8, !dbg !451, !tbaa !452
  %146 = getelementptr inbounds i8, i8* %14, i64 36, !dbg !453
  %147 = bitcast i8* %146 to i32*, !dbg !453
  store i32 2, i32* %147, align 4, !dbg !454, !tbaa !455
  %148 = shl i32 %137, 11, !dbg !456
  %149 = or i32 %148, 1, !dbg !456
  %150 = call i32 @__ibitmap(%struct.htab* nonnull %15, i32 %149, i32 %139, i32 0) #6, !dbg !458
  %151 = icmp eq i32 %150, 0, !dbg !458
  br i1 %151, label %153, label %152, !dbg !459

; <label>:152:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br label %561, !dbg !461

; <label>:153:                                    ; preds = %129
  %154 = add nsw i32 %138, -1, !dbg !462
  %155 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !463
  %156 = bitcast i8* %155 to i32*, !dbg !463
  store i32 %154, i32* %156, align 8, !dbg !464, !tbaa !465
  %157 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !466
  %158 = bitcast i8* %157 to i32*, !dbg !466
  store i32 %154, i32* %158, align 8, !dbg !467, !tbaa !468
  %159 = shl i32 %138, 1, !dbg !469
  %160 = add nsw i32 %159, -1, !dbg !470
  %161 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !471
  %162 = bitcast i8* %161 to i32*, !dbg !471
  store i32 %160, i32* %162, align 4, !dbg !472, !tbaa !473
  %163 = load i32, i32* %70, align 8, !dbg !474, !tbaa !366
  %164 = zext i32 %163 to i64, !dbg !475
  %165 = lshr i64 511, %164, !dbg !475
  %166 = trunc i64 %165 to i32, !dbg !476
  %167 = add i32 %166, 1, !dbg !476
  %168 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !477
  %169 = bitcast i8* %168 to i32*, !dbg !477
  store i32 %167, i32* %169, align 4, !dbg !478, !tbaa !479
  %170 = load i32, i32* %72, align 8, !dbg !480, !tbaa !333
  %171 = sdiv i32 %154, %170, !dbg !481
  %172 = add nsw i32 %171, 1, !dbg !482
  %173 = call i32 @__log2(i32 %172) #6, !dbg !484
  %174 = shl i32 1, %173, !dbg !485
  %175 = load i32, i32* %76, align 4, !dbg !486, !tbaa !488
  %176 = icmp sgt i32 %174, %175, !dbg !489
  br i1 %176, label %177, label %178, !dbg !490

; <label>:177:                                    ; preds = %153
  store i32 %174, i32* %76, align 4, !dbg !491, !tbaa !488
  br label %178, !dbg !492

; <label>:178:                                    ; preds = %177, %153
  %179 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %174) #6, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  %180 = icmp eq i32 %179, 0, !dbg !494
  br i1 %180, label %181, label %561

; <label>:181:                                    ; preds = %178
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %62) #5, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %515

; <label>:182:                                    ; preds = %53, %59
  %183 = icmp eq %struct.HASHINFO* %4, null, !dbg !496
  br i1 %183, label %191, label %184, !dbg !499

; <label>:184:                                    ; preds = %182
  %185 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 4, !dbg !500
  %186 = load i32 (i8*, i64)*, i32 (i8*, i64)** %185, align 8, !dbg !500, !tbaa !399
  %187 = icmp eq i32 (i8*, i64)* %186, null, !dbg !501
  br i1 %187, label %191, label %188, !dbg !502

; <label>:188:                                    ; preds = %184
  %189 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !503
  %190 = bitcast i8* %189 to i32 (i8*, i64)**, !dbg !503
  store i32 (i8*, i64)* %186, i32 (i8*, i64)** %190, align 8, !dbg !504, !tbaa !346
  br label %195, !dbg !505

; <label>:191:                                    ; preds = %184, %182
  %192 = load i64, i64* bitcast (i32 (i8*, i64)** @__default_hash to i64*), align 8, !dbg !506, !tbaa !343
  %193 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !507
  %194 = bitcast i8* %193 to i64*, !dbg !508
  store i64 %192, i64* %194, align 8, !dbg !508, !tbaa !346
  br label %195

; <label>:195:                                    ; preds = %191, %188
  %196 = load i32, i32* %19, align 4, !dbg !509, !tbaa !254
  %197 = call i64 @read(i32 %196, i8* nonnull %14, i64 260) #6, !dbg !510
  %198 = bitcast i8* %14 to i32*, !dbg !564
  %199 = load i32, i32* %198, align 4, !dbg !564, !tbaa !565
  %200 = trunc i32 %199 to i8, !dbg !564
  %201 = lshr i32 %199, 8, !dbg !564
  %202 = trunc i32 %201 to i8, !dbg !564
  %203 = lshr i32 %199, 16, !dbg !564
  %204 = trunc i32 %203 to i8, !dbg !564
  %205 = lshr i32 %199, 24, !dbg !564
  %206 = trunc i32 %205 to i8, !dbg !564
  store i8 %206, i8* %14, align 4, !dbg !564, !tbaa !566
  %207 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !564
  store i8 %204, i8* %207, align 1, !dbg !564, !tbaa !566
  %208 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !564
  store i8 %202, i8* %208, align 2, !dbg !564, !tbaa !566
  %209 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !564
  store i8 %200, i8* %209, align 1, !dbg !564, !tbaa !566
  %210 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !567
  %211 = bitcast i8* %210 to i32*, !dbg !567
  %212 = load i32, i32* %211, align 4, !dbg !567, !tbaa !568
  %213 = trunc i32 %212 to i8, !dbg !567
  %214 = lshr i32 %212, 8, !dbg !567
  %215 = trunc i32 %214 to i8, !dbg !567
  %216 = lshr i32 %212, 16, !dbg !567
  %217 = trunc i32 %216 to i8, !dbg !567
  %218 = lshr i32 %212, 24, !dbg !567
  %219 = trunc i32 %218 to i8, !dbg !567
  store i8 %219, i8* %210, align 4, !dbg !567, !tbaa !566
  %220 = getelementptr inbounds i8, i8* %14, i64 5, !dbg !567
  store i8 %217, i8* %220, align 1, !dbg !567, !tbaa !566
  %221 = getelementptr inbounds i8, i8* %14, i64 6, !dbg !567
  store i8 %215, i8* %221, align 2, !dbg !567, !tbaa !566
  %222 = getelementptr inbounds i8, i8* %14, i64 7, !dbg !567
  store i8 %213, i8* %222, align 1, !dbg !567, !tbaa !566
  %223 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !569
  %224 = bitcast i8* %223 to i32*, !dbg !569
  %225 = load i32, i32* %224, align 4, !dbg !569, !tbaa !570
  %226 = trunc i32 %225 to i8, !dbg !569
  %227 = lshr i32 %225, 8, !dbg !569
  %228 = trunc i32 %227 to i8, !dbg !569
  %229 = lshr i32 %225, 16, !dbg !569
  %230 = trunc i32 %229 to i8, !dbg !569
  %231 = lshr i32 %225, 24, !dbg !569
  %232 = trunc i32 %231 to i8, !dbg !569
  store i8 %232, i8* %223, align 4, !dbg !569, !tbaa !566
  %233 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !569
  store i8 %230, i8* %233, align 1, !dbg !569, !tbaa !566
  %234 = getelementptr inbounds i8, i8* %14, i64 10, !dbg !569
  store i8 %228, i8* %234, align 2, !dbg !569, !tbaa !566
  %235 = getelementptr inbounds i8, i8* %14, i64 11, !dbg !569
  store i8 %226, i8* %235, align 1, !dbg !569, !tbaa !566
  %236 = getelementptr inbounds i8, i8* %14, i64 12, !dbg !571
  %237 = bitcast i8* %236 to i32*, !dbg !571
  %238 = load i32, i32* %237, align 4, !dbg !571, !tbaa !572
  %239 = trunc i32 %238 to i8, !dbg !571
  %240 = lshr i32 %238, 8, !dbg !571
  %241 = trunc i32 %240 to i8, !dbg !571
  %242 = lshr i32 %238, 16, !dbg !571
  %243 = trunc i32 %242 to i8, !dbg !571
  %244 = lshr i32 %238, 24, !dbg !571
  %245 = trunc i32 %244 to i8, !dbg !571
  store i8 %245, i8* %236, align 4, !dbg !571, !tbaa !566
  %246 = getelementptr inbounds i8, i8* %14, i64 13, !dbg !571
  store i8 %243, i8* %246, align 1, !dbg !571, !tbaa !566
  %247 = getelementptr inbounds i8, i8* %14, i64 14, !dbg !571
  store i8 %241, i8* %247, align 2, !dbg !571, !tbaa !566
  %248 = getelementptr inbounds i8, i8* %14, i64 15, !dbg !571
  store i8 %239, i8* %248, align 1, !dbg !571, !tbaa !566
  %249 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !573
  %250 = bitcast i8* %249 to i32*, !dbg !573
  %251 = load i32, i32* %250, align 4, !dbg !573, !tbaa !574
  %252 = trunc i32 %251 to i8, !dbg !573
  %253 = lshr i32 %251, 8, !dbg !573
  %254 = trunc i32 %253 to i8, !dbg !573
  %255 = lshr i32 %251, 16, !dbg !573
  %256 = trunc i32 %255 to i8, !dbg !573
  %257 = lshr i32 %251, 24, !dbg !573
  %258 = trunc i32 %257 to i8, !dbg !573
  store i8 %258, i8* %249, align 4, !dbg !573, !tbaa !566
  %259 = getelementptr inbounds i8, i8* %14, i64 17, !dbg !573
  store i8 %256, i8* %259, align 1, !dbg !573, !tbaa !566
  %260 = getelementptr inbounds i8, i8* %14, i64 18, !dbg !573
  store i8 %254, i8* %260, align 2, !dbg !573, !tbaa !566
  %261 = getelementptr inbounds i8, i8* %14, i64 19, !dbg !573
  store i8 %252, i8* %261, align 1, !dbg !573, !tbaa !566
  %262 = getelementptr inbounds i8, i8* %14, i64 20, !dbg !575
  %263 = bitcast i8* %262 to i32*, !dbg !575
  %264 = load i32, i32* %263, align 4, !dbg !575, !tbaa !576
  %265 = trunc i32 %264 to i8, !dbg !575
  %266 = lshr i32 %264, 8, !dbg !575
  %267 = trunc i32 %266 to i8, !dbg !575
  %268 = lshr i32 %264, 16, !dbg !575
  %269 = trunc i32 %268 to i8, !dbg !575
  %270 = lshr i32 %264, 24, !dbg !575
  %271 = trunc i32 %270 to i8, !dbg !575
  store i8 %271, i8* %262, align 4, !dbg !575, !tbaa !566
  %272 = getelementptr inbounds i8, i8* %14, i64 21, !dbg !575
  store i8 %269, i8* %272, align 1, !dbg !575, !tbaa !566
  %273 = getelementptr inbounds i8, i8* %14, i64 22, !dbg !575
  store i8 %267, i8* %273, align 2, !dbg !575, !tbaa !566
  %274 = getelementptr inbounds i8, i8* %14, i64 23, !dbg !575
  store i8 %265, i8* %274, align 1, !dbg !575, !tbaa !566
  %275 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !577
  %276 = bitcast i8* %275 to i32*, !dbg !577
  %277 = load i32, i32* %276, align 4, !dbg !577, !tbaa !578
  %278 = trunc i32 %277 to i8, !dbg !577
  %279 = lshr i32 %277, 8, !dbg !577
  %280 = trunc i32 %279 to i8, !dbg !577
  %281 = lshr i32 %277, 16, !dbg !577
  %282 = trunc i32 %281 to i8, !dbg !577
  %283 = lshr i32 %277, 24, !dbg !577
  %284 = trunc i32 %283 to i8, !dbg !577
  store i8 %284, i8* %275, align 4, !dbg !577, !tbaa !566
  %285 = getelementptr inbounds i8, i8* %14, i64 25, !dbg !577
  store i8 %282, i8* %285, align 1, !dbg !577, !tbaa !566
  %286 = getelementptr inbounds i8, i8* %14, i64 26, !dbg !577
  store i8 %280, i8* %286, align 2, !dbg !577, !tbaa !566
  %287 = getelementptr inbounds i8, i8* %14, i64 27, !dbg !577
  store i8 %278, i8* %287, align 1, !dbg !577, !tbaa !566
  %288 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !579
  %289 = bitcast i8* %288 to i32*, !dbg !579
  %290 = load i32, i32* %289, align 4, !dbg !579, !tbaa !580
  %291 = trunc i32 %290 to i8, !dbg !579
  %292 = lshr i32 %290, 8, !dbg !579
  %293 = trunc i32 %292 to i8, !dbg !579
  %294 = lshr i32 %290, 16, !dbg !579
  %295 = trunc i32 %294 to i8, !dbg !579
  %296 = lshr i32 %290, 24, !dbg !579
  %297 = trunc i32 %296 to i8, !dbg !579
  store i8 %297, i8* %288, align 4, !dbg !579, !tbaa !566
  %298 = getelementptr inbounds i8, i8* %14, i64 29, !dbg !579
  store i8 %295, i8* %298, align 1, !dbg !579, !tbaa !566
  %299 = getelementptr inbounds i8, i8* %14, i64 30, !dbg !579
  store i8 %293, i8* %299, align 2, !dbg !579, !tbaa !566
  %300 = getelementptr inbounds i8, i8* %14, i64 31, !dbg !579
  store i8 %291, i8* %300, align 1, !dbg !579, !tbaa !566
  %301 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !581
  %302 = bitcast i8* %301 to i32*, !dbg !581
  %303 = load i32, i32* %302, align 4, !dbg !581, !tbaa !582
  %304 = trunc i32 %303 to i8, !dbg !581
  %305 = lshr i32 %303, 8, !dbg !581
  %306 = trunc i32 %305 to i8, !dbg !581
  %307 = lshr i32 %303, 16, !dbg !581
  %308 = trunc i32 %307 to i8, !dbg !581
  %309 = lshr i32 %303, 24, !dbg !581
  %310 = trunc i32 %309 to i8, !dbg !581
  store i8 %310, i8* %301, align 4, !dbg !581, !tbaa !566
  %311 = getelementptr inbounds i8, i8* %14, i64 33, !dbg !581
  store i8 %308, i8* %311, align 1, !dbg !581, !tbaa !566
  %312 = getelementptr inbounds i8, i8* %14, i64 34, !dbg !581
  store i8 %306, i8* %312, align 2, !dbg !581, !tbaa !566
  %313 = getelementptr inbounds i8, i8* %14, i64 35, !dbg !581
  store i8 %304, i8* %313, align 1, !dbg !581, !tbaa !566
  %314 = getelementptr inbounds i8, i8* %14, i64 36, !dbg !583
  %315 = bitcast i8* %314 to i32*, !dbg !583
  %316 = load i32, i32* %315, align 4, !dbg !583, !tbaa !584
  %317 = trunc i32 %316 to i8, !dbg !583
  %318 = lshr i32 %316, 8, !dbg !583
  %319 = trunc i32 %318 to i8, !dbg !583
  %320 = lshr i32 %316, 16, !dbg !583
  %321 = trunc i32 %320 to i8, !dbg !583
  %322 = lshr i32 %316, 24, !dbg !583
  %323 = trunc i32 %322 to i8, !dbg !583
  store i8 %323, i8* %314, align 4, !dbg !583, !tbaa !566
  %324 = getelementptr inbounds i8, i8* %14, i64 37, !dbg !583
  store i8 %321, i8* %324, align 1, !dbg !583, !tbaa !566
  %325 = getelementptr inbounds i8, i8* %14, i64 38, !dbg !583
  store i8 %319, i8* %325, align 2, !dbg !583, !tbaa !566
  %326 = getelementptr inbounds i8, i8* %14, i64 39, !dbg !583
  store i8 %317, i8* %326, align 1, !dbg !583, !tbaa !566
  %327 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !585
  %328 = bitcast i8* %327 to i32*, !dbg !585
  %329 = load i32, i32* %328, align 4, !dbg !585, !tbaa !586
  %330 = trunc i32 %329 to i8, !dbg !585
  %331 = lshr i32 %329, 8, !dbg !585
  %332 = trunc i32 %331 to i8, !dbg !585
  %333 = lshr i32 %329, 16, !dbg !585
  %334 = trunc i32 %333 to i8, !dbg !585
  %335 = lshr i32 %329, 24, !dbg !585
  %336 = trunc i32 %335 to i8, !dbg !585
  store i8 %336, i8* %327, align 4, !dbg !585, !tbaa !566
  %337 = getelementptr inbounds i8, i8* %14, i64 41, !dbg !585
  store i8 %334, i8* %337, align 1, !dbg !585, !tbaa !566
  %338 = getelementptr inbounds i8, i8* %14, i64 42, !dbg !585
  store i8 %332, i8* %338, align 2, !dbg !585, !tbaa !566
  %339 = getelementptr inbounds i8, i8* %14, i64 43, !dbg !585
  store i8 %330, i8* %339, align 1, !dbg !585, !tbaa !566
  %340 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !587
  %341 = bitcast i8* %340 to i32*, !dbg !587
  %342 = load i32, i32* %341, align 4, !dbg !587, !tbaa !588
  %343 = trunc i32 %342 to i8, !dbg !587
  %344 = lshr i32 %342, 8, !dbg !587
  %345 = trunc i32 %344 to i8, !dbg !587
  %346 = lshr i32 %342, 16, !dbg !587
  %347 = trunc i32 %346 to i8, !dbg !587
  %348 = lshr i32 %342, 24, !dbg !587
  %349 = trunc i32 %348 to i8, !dbg !587
  store i8 %349, i8* %340, align 4, !dbg !587, !tbaa !566
  %350 = getelementptr inbounds i8, i8* %14, i64 45, !dbg !587
  store i8 %347, i8* %350, align 1, !dbg !587, !tbaa !566
  %351 = getelementptr inbounds i8, i8* %14, i64 46, !dbg !587
  store i8 %345, i8* %351, align 2, !dbg !587, !tbaa !566
  %352 = getelementptr inbounds i8, i8* %14, i64 47, !dbg !587
  store i8 %343, i8* %352, align 1, !dbg !587, !tbaa !566
  %353 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !589
  %354 = bitcast i8* %353 to i32*, !dbg !589
  %355 = load i32, i32* %354, align 4, !dbg !589, !tbaa !590
  %356 = trunc i32 %355 to i8, !dbg !589
  %357 = lshr i32 %355, 8, !dbg !589
  %358 = trunc i32 %357 to i8, !dbg !589
  %359 = lshr i32 %355, 16, !dbg !589
  %360 = trunc i32 %359 to i8, !dbg !589
  %361 = lshr i32 %355, 24, !dbg !589
  %362 = trunc i32 %361 to i8, !dbg !589
  store i8 %362, i8* %353, align 4, !dbg !589, !tbaa !566
  %363 = getelementptr inbounds i8, i8* %14, i64 49, !dbg !589
  store i8 %360, i8* %363, align 1, !dbg !589, !tbaa !566
  %364 = getelementptr inbounds i8, i8* %14, i64 50, !dbg !589
  store i8 %358, i8* %364, align 2, !dbg !589, !tbaa !566
  %365 = getelementptr inbounds i8, i8* %14, i64 51, !dbg !589
  store i8 %356, i8* %365, align 1, !dbg !589, !tbaa !566
  %366 = getelementptr inbounds i8, i8* %14, i64 52, !dbg !591
  %367 = bitcast i8* %366 to i32*, !dbg !591
  %368 = load i32, i32* %367, align 4, !dbg !591, !tbaa !592
  %369 = trunc i32 %368 to i8, !dbg !591
  %370 = lshr i32 %368, 8, !dbg !591
  %371 = trunc i32 %370 to i8, !dbg !591
  %372 = lshr i32 %368, 16, !dbg !591
  %373 = trunc i32 %372 to i8, !dbg !591
  %374 = lshr i32 %368, 24, !dbg !591
  %375 = trunc i32 %374 to i8, !dbg !591
  store i8 %375, i8* %366, align 4, !dbg !591, !tbaa !566
  %376 = getelementptr inbounds i8, i8* %14, i64 53, !dbg !591
  store i8 %373, i8* %376, align 1, !dbg !591, !tbaa !566
  %377 = getelementptr inbounds i8, i8* %14, i64 54, !dbg !591
  store i8 %371, i8* %377, align 2, !dbg !591, !tbaa !566
  %378 = getelementptr inbounds i8, i8* %14, i64 55, !dbg !591
  store i8 %369, i8* %378, align 1, !dbg !591, !tbaa !566
  %379 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !593
  %380 = bitcast i8* %379 to i32*, !dbg !593
  %381 = load i32, i32* %380, align 4, !dbg !593, !tbaa !594
  %382 = trunc i32 %381 to i8, !dbg !593
  %383 = lshr i32 %381, 8, !dbg !593
  %384 = trunc i32 %383 to i8, !dbg !593
  %385 = lshr i32 %381, 16, !dbg !593
  %386 = trunc i32 %385 to i8, !dbg !593
  %387 = lshr i32 %381, 24, !dbg !593
  %388 = trunc i32 %387 to i8, !dbg !593
  store i8 %388, i8* %379, align 4, !dbg !593, !tbaa !566
  %389 = getelementptr inbounds i8, i8* %14, i64 57, !dbg !593
  store i8 %386, i8* %389, align 1, !dbg !593, !tbaa !566
  %390 = getelementptr inbounds i8, i8* %14, i64 58, !dbg !593
  store i8 %384, i8* %390, align 2, !dbg !593, !tbaa !566
  %391 = getelementptr inbounds i8, i8* %14, i64 59, !dbg !593
  store i8 %382, i8* %391, align 1, !dbg !593, !tbaa !566
  %392 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !595
  %393 = bitcast i8* %392 to i32*, !dbg !595
  %394 = load i32, i32* %393, align 4, !dbg !595, !tbaa !596
  %395 = trunc i32 %394 to i8, !dbg !595
  %396 = lshr i32 %394, 8, !dbg !595
  %397 = trunc i32 %396 to i8, !dbg !595
  %398 = lshr i32 %394, 16, !dbg !595
  %399 = trunc i32 %398 to i8, !dbg !595
  %400 = lshr i32 %394, 24, !dbg !595
  %401 = trunc i32 %400 to i8, !dbg !595
  store i8 %401, i8* %392, align 4, !dbg !595, !tbaa !566
  %402 = getelementptr inbounds i8, i8* %14, i64 61, !dbg !595
  store i8 %399, i8* %402, align 1, !dbg !595, !tbaa !566
  %403 = getelementptr inbounds i8, i8* %14, i64 62, !dbg !595
  store i8 %397, i8* %403, align 2, !dbg !595, !tbaa !566
  %404 = getelementptr inbounds i8, i8* %14, i64 63, !dbg !595
  store i8 %395, i8* %404, align 1, !dbg !595, !tbaa !566
  %405 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !597
  %406 = bitcast i8* %405 to i32*, !dbg !597
  %407 = load i32, i32* %406, align 4, !dbg !597, !tbaa !598
  %408 = trunc i32 %407 to i8, !dbg !597
  %409 = lshr i32 %407, 8, !dbg !597
  %410 = trunc i32 %409 to i8, !dbg !597
  %411 = lshr i32 %407, 16, !dbg !597
  %412 = trunc i32 %411 to i8, !dbg !597
  %413 = lshr i32 %407, 24, !dbg !597
  %414 = trunc i32 %413 to i8, !dbg !597
  store i8 %414, i8* %405, align 4, !dbg !597, !tbaa !566
  %415 = getelementptr inbounds i8, i8* %14, i64 65, !dbg !597
  store i8 %412, i8* %415, align 1, !dbg !597, !tbaa !566
  %416 = getelementptr inbounds i8, i8* %14, i64 66, !dbg !597
  store i8 %410, i8* %416, align 2, !dbg !597, !tbaa !566
  %417 = getelementptr inbounds i8, i8* %14, i64 67, !dbg !597
  store i8 %408, i8* %417, align 1, !dbg !597, !tbaa !566
  br label %418, !dbg !600

; <label>:418:                                    ; preds = %418, %195
  %419 = phi i64 [ 0, %195 ], [ %461, %418 ]
  %420 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %419, !dbg !601
  %421 = load i32, i32* %420, align 4, !dbg !601, !tbaa !241
  %422 = trunc i32 %421 to i8, !dbg !601
  %423 = lshr i32 %421, 8, !dbg !601
  %424 = trunc i32 %423 to i8, !dbg !601
  %425 = lshr i32 %421, 16, !dbg !601
  %426 = trunc i32 %425 to i8, !dbg !601
  %427 = lshr i32 %421, 24, !dbg !601
  %428 = trunc i32 %427 to i8, !dbg !601
  %429 = bitcast i32* %420 to i8*, !dbg !601
  store i8 %428, i8* %429, align 4, !dbg !601, !tbaa !566
  %430 = getelementptr inbounds i8, i8* %429, i64 1, !dbg !601
  store i8 %426, i8* %430, align 1, !dbg !601, !tbaa !566
  %431 = getelementptr inbounds i8, i8* %429, i64 2, !dbg !601
  store i8 %424, i8* %431, align 2, !dbg !601, !tbaa !566
  %432 = getelementptr inbounds i8, i8* %429, i64 3, !dbg !601
  store i8 %422, i8* %432, align 1, !dbg !601, !tbaa !566
  %433 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 18, i64 %419, !dbg !602
  %434 = load i16, i16* %433, align 2, !dbg !602, !tbaa !603
  %435 = trunc i16 %434 to i8, !dbg !602
  %436 = lshr i16 %434, 8, !dbg !602
  %437 = trunc i16 %436 to i8, !dbg !602
  %438 = bitcast i16* %433 to i8*, !dbg !602
  store i8 %437, i8* %438, align 2, !dbg !602, !tbaa !566
  %439 = getelementptr inbounds i8, i8* %438, i64 1, !dbg !602
  store i8 %435, i8* %439, align 1, !dbg !602, !tbaa !566
  %440 = or i64 %419, 1, !dbg !604
  %441 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %440, !dbg !601
  %442 = load i32, i32* %441, align 4, !dbg !601, !tbaa !241
  %443 = trunc i32 %442 to i8, !dbg !601
  %444 = lshr i32 %442, 8, !dbg !601
  %445 = trunc i32 %444 to i8, !dbg !601
  %446 = lshr i32 %442, 16, !dbg !601
  %447 = trunc i32 %446 to i8, !dbg !601
  %448 = lshr i32 %442, 24, !dbg !601
  %449 = trunc i32 %448 to i8, !dbg !601
  %450 = bitcast i32* %441 to i8*, !dbg !601
  store i8 %449, i8* %450, align 4, !dbg !601, !tbaa !566
  %451 = getelementptr inbounds i8, i8* %450, i64 1, !dbg !601
  store i8 %447, i8* %451, align 1, !dbg !601, !tbaa !566
  %452 = getelementptr inbounds i8, i8* %450, i64 2, !dbg !601
  store i8 %445, i8* %452, align 2, !dbg !601, !tbaa !566
  %453 = getelementptr inbounds i8, i8* %450, i64 3, !dbg !601
  store i8 %443, i8* %453, align 1, !dbg !601, !tbaa !566
  %454 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 18, i64 %440, !dbg !602
  %455 = load i16, i16* %454, align 2, !dbg !602, !tbaa !603
  %456 = trunc i16 %455 to i8, !dbg !602
  %457 = lshr i16 %455, 8, !dbg !602
  %458 = trunc i16 %457 to i8, !dbg !602
  %459 = bitcast i16* %454 to i8*, !dbg !602
  store i8 %458, i8* %459, align 2, !dbg !602, !tbaa !566
  %460 = getelementptr inbounds i8, i8* %459, i64 1, !dbg !602
  store i8 %456, i8* %460, align 1, !dbg !602, !tbaa !566
  %461 = add nuw nsw i64 %419, 2, !dbg !604
  %462 = icmp eq i64 %461, 32, !dbg !605
  br i1 %462, label %463, label %418, !dbg !600, !llvm.loop !606

; <label>:463:                                    ; preds = %418
  %464 = trunc i64 %197 to i32, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %465 = icmp eq i32 %464, -1, !dbg !610
  br i1 %465, label %466, label %469, !dbg !612

; <label>:466:                                    ; preds = %463
  %467 = call i32* @__errno() #6, !dbg !613
  %468 = load i32, i32* %467, align 4, !dbg !613, !tbaa !241
  br label %564, !dbg !613

; <label>:469:                                    ; preds = %463
  %470 = and i64 %197, 4294967295, !dbg !615
  %471 = icmp eq i64 %470, 260, !dbg !615
  br i1 %471, label %472, label %564, !dbg !617

; <label>:472:                                    ; preds = %469
  %473 = load i32, i32* %198, align 8, !dbg !618, !tbaa !620
  %474 = icmp eq i32 %473, 398689, !dbg !621
  br i1 %474, label %475, label %564, !dbg !622

; <label>:475:                                    ; preds = %472
  %476 = load i32, i32* %211, align 4, !dbg !623, !tbaa !625
  %477 = add i32 %476, -1, !dbg !626
  %478 = icmp ult i32 %477, 2, !dbg !626
  br i1 %478, label %479, label %564, !dbg !626

; <label>:479:                                    ; preds = %475
  %480 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !627
  %481 = bitcast i8* %480 to i32 (i8*, i64)**, !dbg !627
  %482 = load i32 (i8*, i64)*, i32 (i8*, i64)** %481, align 8, !dbg !627, !tbaa !346
  %483 = call i32 %482(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !629
  %484 = load i32, i32* %406, align 8, !dbg !630, !tbaa !631
  %485 = icmp eq i32 %483, %484, !dbg !632
  br i1 %485, label %486, label %564, !dbg !633

; <label>:486:                                    ; preds = %479
  %487 = load i32, i32* %328, align 8, !dbg !634, !tbaa !468
  %488 = load i32, i32* %276, align 8, !dbg !635, !tbaa !333
  %489 = add i32 %488, %487, !dbg !636
  %490 = sdiv i32 %489, %488, !dbg !637
  %491 = getelementptr inbounds i8, i8* %14, i64 260, !dbg !639
  %492 = bitcast i8* %491 to i32*, !dbg !639
  store i32 0, i32* %492, align 4, !dbg !640, !tbaa !641
  %493 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %490) #7, !dbg !642
  %494 = icmp eq i32 %493, 0, !dbg !642
  br i1 %494, label %495, label %572, !dbg !644

; <label>:495:                                    ; preds = %486
  %496 = getelementptr inbounds i8, i8* %14, i64 68, !dbg !645
  %497 = bitcast i8* %496 to [32 x i32]*, !dbg !645
  %498 = load i32, i32* %302, align 8, !dbg !646, !tbaa !452
  %499 = sext i32 %498 to i64, !dbg !647
  %500 = getelementptr inbounds [32 x i32], [32 x i32]* %497, i64 0, i64 %499, !dbg !647
  %501 = load i32, i32* %500, align 4, !dbg !647, !tbaa !241
  %502 = load i32, i32* %237, align 4, !dbg !648, !tbaa !363
  %503 = shl i32 %502, 3, !dbg !649
  %504 = add i32 %501, -1, !dbg !650
  %505 = add i32 %504, %503, !dbg !651
  %506 = load i32, i32* %250, align 8, !dbg !652, !tbaa !366
  %507 = add nsw i32 %506, 3, !dbg !653
  %508 = ashr i32 %505, %507, !dbg !654
  %509 = getelementptr inbounds i8, i8* %14, i64 592, !dbg !656
  %510 = bitcast i8* %509 to i32*, !dbg !656
  store i32 %508, i32* %510, align 8, !dbg !657, !tbaa !658
  %511 = getelementptr inbounds i8, i8* %14, i64 336, !dbg !659
  %512 = sext i32 %508 to i64, !dbg !660
  %513 = shl nsw i64 %512, 3, !dbg !661
  %514 = call i8* @memset(i8* nonnull %511, i32 0, i64 %513) #6, !dbg !662
  br label %515

; <label>:515:                                    ; preds = %181, %495
  %516 = phi i32 [ 1, %181 ], [ %40, %495 ]
  %517 = icmp eq %struct.HASHINFO* %4, null, !dbg !663
  br i1 %517, label %523, label %518, !dbg !665

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 3, !dbg !666
  %520 = load i32, i32* %519, align 4, !dbg !666, !tbaa !667
  %521 = icmp eq i32 %520, 0, !dbg !668
  br i1 %521, label %523, label %522, !dbg !669

; <label>:522:                                    ; preds = %518
  call void @__buf_init(%struct.htab* nonnull %15, i32 %520) #6, !dbg !670
  br label %524, !dbg !670

; <label>:523:                                    ; preds = %518, %515
  call void @__buf_init(%struct.htab* nonnull %15, i32 65536) #6, !dbg !671
  br label %524

; <label>:524:                                    ; preds = %523, %522
  %525 = getelementptr inbounds i8, i8* %14, i64 324, !dbg !672
  %526 = bitcast i8* %525 to i32*, !dbg !672
  store i32 %516, i32* %526, align 4, !dbg !673, !tbaa !674
  br i1 %22, label %527, label %531, !dbg !675

; <label>:527:                                    ; preds = %524
  %528 = load i32, i32* %21, align 8, !dbg !676, !tbaa !261
  %529 = lshr i32 %528, 1
  %530 = and i32 %529, 1
  br label %531

; <label>:531:                                    ; preds = %527, %524
  %532 = phi i32 [ 0, %524 ], [ %530, %527 ]
  %533 = getelementptr inbounds i8, i8* %14, i64 328, !dbg !677
  %534 = bitcast i8* %533 to i32*, !dbg !677
  store i32 %532, i32* %534, align 8, !dbg !678, !tbaa !679
  %535 = getelementptr inbounds i8, i8* %14, i64 312, !dbg !680
  %536 = bitcast i8* %535 to i32*, !dbg !680
  store i32 -1, i32* %536, align 8, !dbg !681, !tbaa !682
  %537 = call i8* @malloc(i64 72) #6, !dbg !683
  %538 = icmp eq i8* %537, null, !dbg !685
  br i1 %538, label %539, label %544, !dbg !686

; <label>:539:                                    ; preds = %531
  %540 = call i32* @__errno() #6, !dbg !687
  %541 = load i32, i32* %540, align 4, !dbg !687, !tbaa !241
  %542 = call fastcc i32 @hdestroy(%struct.htab* nonnull %15) #7, !dbg !689
  %543 = call i32* @__errno() #6, !dbg !690
  store i32 %541, i32* %543, align 4, !dbg !691, !tbaa !241
  br label %572, !dbg !692

; <label>:544:                                    ; preds = %531
  %545 = bitcast i8* %537 to %struct.__db*, !dbg !693
  %546 = getelementptr inbounds i8, i8* %537, i64 56, !dbg !695
  %547 = bitcast i8* %546 to i8**, !dbg !696
  store i8* %14, i8** %547, align 8, !dbg !696, !tbaa !697
  %548 = getelementptr inbounds i8, i8* %537, i64 8, !dbg !699
  %549 = bitcast i8* %548 to i32 (%struct.__db*)**, !dbg !699
  store i32 (%struct.__db*)* @hash_close, i32 (%struct.__db*)** %549, align 8, !dbg !700, !tbaa !701
  %550 = getelementptr inbounds i8, i8* %537, i64 16, !dbg !702
  %551 = bitcast i8* %550 to i32 (%struct.__db*, %struct.DBT*, i32)**, !dbg !702
  store i32 (%struct.__db*, %struct.DBT*, i32)* @hash_delete, i32 (%struct.__db*, %struct.DBT*, i32)** %551, align 8, !dbg !703, !tbaa !704
  %552 = getelementptr inbounds i8, i8* %537, i64 64, !dbg !705
  %553 = bitcast i8* %552 to i32 (%struct.__db*)**, !dbg !705
  store i32 (%struct.__db*)* @hash_fd, i32 (%struct.__db*)** %553, align 8, !dbg !706, !tbaa !707
  %554 = getelementptr inbounds i8, i8* %537, i64 24, !dbg !708
  %555 = bitcast i8* %554 to <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>*, !dbg !709
  store <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*> <i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_get, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_put>, <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>* %555, align 8, !dbg !709, !tbaa !343
  %556 = getelementptr inbounds i8, i8* %537, i64 40, !dbg !710
  %557 = bitcast i8* %556 to i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)**, !dbg !710
  store i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_seq, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)** %557, align 8, !dbg !711, !tbaa !712
  %558 = getelementptr inbounds i8, i8* %537, i64 48, !dbg !713
  %559 = bitcast i8* %558 to i32 (%struct.__db*, i32)**, !dbg !713
  store i32 (%struct.__db*, i32)* @hash_sync, i32 (%struct.__db*, i32)** %559, align 8, !dbg !714, !tbaa !715
  %560 = bitcast i8* %537 to i32*, !dbg !716
  store i32 1, i32* %560, align 8, !dbg !717, !tbaa !718
  br label %572, !dbg !719

; <label>:561:                                    ; preds = %178, %152, %89, %126, %107
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %62) #5, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %562 = call i32* @__errno() #6, !dbg !720
  %563 = load i32, i32* %562, align 4, !dbg !720, !tbaa !241
  br label %568, !dbg !722

; <label>:564:                                    ; preds = %466, %469, %472, %475, %479
  %565 = phi i32 [ 79, %479 ], [ 79, %475 ], [ 79, %472 ], [ 79, %469 ], [ %468, %466 ]
  %566 = load i32, i32* %19, align 4, !dbg !723, !tbaa !254
  %567 = call i32 @close(i32 %566) #6, !dbg !725
  br label %568, !dbg !726

; <label>:568:                                    ; preds = %561, %564, %44
  %569 = phi i8* [ %14, %44 ], [ %14, %564 ], [ null, %561 ], !dbg !727
  %570 = phi i32 [ %46, %44 ], [ %565, %564 ], [ %563, %561 ], !dbg !728
  call void @free(i8* %569) #6, !dbg !729
  %571 = call i32* @__errno() #6, !dbg !730
  store i32 %570, i32* %571, align 4, !dbg !731, !tbaa !241
  br label %572, !dbg !732

; <label>:572:                                    ; preds = %486, %13, %568, %544, %539, %11
  %573 = phi %struct.__db* [ null, %11 ], [ null, %568 ], [ %545, %544 ], [ null, %539 ], [ null, %13 ], [ null, %486 ], !dbg !733
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %8) #5, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  ret %struct.__db* %573, !dbg !734
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
define internal fastcc i32 @alloc_segs(%struct.htab*, i32) unnamed_addr #0 !dbg !735 {
  %3 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !744
  %4 = load i32, i32* %3, align 4, !dbg !744, !tbaa !488
  %5 = sext i32 %4 to i64, !dbg !746
  %6 = tail call i8* @calloc(i64 %5, i64 8) #6, !dbg !747
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !748
  %8 = bitcast %struct._bufhead**** %7 to i8**, !dbg !749
  store i8* %6, i8** %8, align 8, !dbg !749, !tbaa !750
  %9 = icmp eq i8* %6, null, !dbg !751
  br i1 %9, label %10, label %15, !dbg !752

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno() #6, !dbg !753
  %12 = load i32, i32* %11, align 4, !dbg !753, !tbaa !241
  %13 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !756
  %14 = tail call i32* @__errno() #6, !dbg !757
  store i32 %12, i32* %14, align 4, !dbg !758, !tbaa !241
  br label %90, !dbg !759

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !760
  %17 = load i32, i32* %16, align 4, !dbg !760, !tbaa !336
  %18 = shl i32 %1, %17, !dbg !762
  %19 = sext i32 %18 to i64, !dbg !763
  %20 = tail call i8* @calloc(i64 %19, i64 8) #6, !dbg !764
  %21 = bitcast i8* %20 to %struct._bufhead**, !dbg !765
  %22 = icmp eq i8* %20, null, !dbg !767
  br i1 %22, label %35, label %23, !dbg !768

; <label>:23:                                     ; preds = %15
  %24 = icmp sgt i32 %1, 0, !dbg !770
  br i1 %24, label %25, label %90, !dbg !773

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %16, align 4, !tbaa !336
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  %28 = load i32, i32* %27, align 4, !dbg !774, !tbaa !641
  %29 = zext i32 %1 to i64
  %30 = add nsw i64 %29, -1, !dbg !773
  %31 = and i64 %29, 3, !dbg !773
  %32 = icmp ult i64 %30, 3, !dbg !773
  br i1 %32, label %73, label %33, !dbg !773

; <label>:33:                                     ; preds = %25
  %34 = sub nsw i64 %29, %31, !dbg !773
  br label %40, !dbg !773

; <label>:35:                                     ; preds = %15
  %36 = tail call i32* @__errno() #6, !dbg !775
  %37 = load i32, i32* %36, align 4, !dbg !775, !tbaa !241
  %38 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !777
  %39 = tail call i32* @__errno() #6, !dbg !778
  store i32 %37, i32* %39, align 4, !dbg !779, !tbaa !241
  br label %90, !dbg !780

; <label>:40:                                     ; preds = %40, %33
  %41 = phi i64 [ 0, %33 ], [ %70, %40 ], !dbg !769
  %42 = phi i64 [ %34, %33 ], [ %71, %40 ]
  %43 = trunc i64 %41 to i32, !dbg !781
  %44 = shl i32 %43, %26, !dbg !781
  %45 = sext i32 %44 to i64, !dbg !782
  %46 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %45, !dbg !782
  %47 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !783, !tbaa !750
  %48 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %47, i64 %41, !dbg !784
  store %struct._bufhead** %46, %struct._bufhead*** %48, align 8, !dbg !785, !tbaa !343
  %49 = or i64 %41, 1, !dbg !786
  %50 = trunc i64 %49 to i32, !dbg !781
  %51 = shl i32 %50, %26, !dbg !781
  %52 = sext i32 %51 to i64, !dbg !782
  %53 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %52, !dbg !782
  %54 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !783, !tbaa !750
  %55 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %54, i64 %49, !dbg !784
  store %struct._bufhead** %53, %struct._bufhead*** %55, align 8, !dbg !785, !tbaa !343
  %56 = or i64 %41, 2, !dbg !786
  %57 = trunc i64 %56 to i32, !dbg !781
  %58 = shl i32 %57, %26, !dbg !781
  %59 = sext i32 %58 to i64, !dbg !782
  %60 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %59, !dbg !782
  %61 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !783, !tbaa !750
  %62 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %61, i64 %56, !dbg !784
  store %struct._bufhead** %60, %struct._bufhead*** %62, align 8, !dbg !785, !tbaa !343
  %63 = or i64 %41, 3, !dbg !786
  %64 = trunc i64 %63 to i32, !dbg !781
  %65 = shl i32 %64, %26, !dbg !781
  %66 = sext i32 %65 to i64, !dbg !782
  %67 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %66, !dbg !782
  %68 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !783, !tbaa !750
  %69 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %68, i64 %63, !dbg !784
  store %struct._bufhead** %67, %struct._bufhead*** %69, align 8, !dbg !785, !tbaa !343
  %70 = add nuw nsw i64 %41, 4, !dbg !786
  %71 = add i64 %42, -4, !dbg !773
  %72 = icmp eq i64 %71, 0, !dbg !773
  br i1 %72, label %73, label %40, !dbg !773, !llvm.loop !787

; <label>:73:                                     ; preds = %40, %25
  %74 = phi i64 [ 0, %25 ], [ %70, %40 ]
  %75 = icmp eq i64 %31, 0, !dbg !773
  br i1 %75, label %88, label %76, !dbg !773

; <label>:76:                                     ; preds = %73, %76
  %77 = phi i64 [ %85, %76 ], [ %74, %73 ], !dbg !769
  %78 = phi i64 [ %86, %76 ], [ %31, %73 ]
  %79 = trunc i64 %77 to i32, !dbg !781
  %80 = shl i32 %79, %26, !dbg !781
  %81 = sext i32 %80 to i64, !dbg !782
  %82 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %81, !dbg !782
  %83 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !783, !tbaa !750
  %84 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %83, i64 %77, !dbg !784
  store %struct._bufhead** %82, %struct._bufhead*** %84, align 8, !dbg !785, !tbaa !343
  %85 = add nuw nsw i64 %77, 1, !dbg !786
  %86 = add i64 %78, -1, !dbg !773
  %87 = icmp eq i64 %86, 0, !dbg !773
  br i1 %87, label %88, label %76, !dbg !773, !llvm.loop !789

; <label>:88:                                     ; preds = %76, %73
  %89 = add i32 %28, %1, !dbg !773
  store i32 %89, i32* %27, align 4, !dbg !774, !tbaa !641
  br label %90, !dbg !773

; <label>:90:                                     ; preds = %23, %88, %35, %10
  %91 = phi i32 [ -1, %10 ], [ -1, %35 ], [ 0, %88 ], [ 0, %23 ], !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  ret i32 %91, !dbg !792
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__buf_init(%struct.htab*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hdestroy(%struct.htab*) unnamed_addr #0 !dbg !793 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !802
  %3 = load i32, i32* %2, align 8, !dbg !802, !tbaa !679
  %4 = tail call i32 @__buf_free(%struct.htab* %0, i32 1, i32 %3) #6, !dbg !804
  %5 = icmp eq i32 %4, 0, !dbg !804
  br i1 %5, label %9, label %6, !dbg !805

; <label>:6:                                      ; preds = %1
  %7 = tail call i32* @__errno() #6, !dbg !806
  %8 = load i32, i32* %7, align 4, !dbg !806, !tbaa !241
  br label %9, !dbg !807

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ], !dbg !808
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !809
  %12 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !809, !tbaa !750
  %13 = icmp eq %struct._bufhead*** %12, null, !dbg !811
  br i1 %13, label %39, label %14, !dbg !812

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct._bufhead*** %12 to i8**, !dbg !813
  %16 = load i8*, i8** %15, align 8, !dbg !813, !tbaa !343
  tail call void @free(i8* %16) #6, !dbg !815
  %17 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !816
  %18 = load i32, i32* %17, align 8, !dbg !817, !tbaa !818
  %19 = add nsw i32 %18, -1, !dbg !817
  store i32 %19, i32* %17, align 8, !dbg !817, !tbaa !818
  %20 = icmp eq i32 %18, 0, !dbg !819
  %21 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !820, !tbaa !750
  br i1 %20, label %36, label %22, !dbg !819

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  br label %24, !dbg !819

; <label>:24:                                     ; preds = %22, %24
  %25 = phi %struct._bufhead*** [ %21, %22 ], [ %35, %24 ]
  %26 = load i32, i32* %23, align 4, !dbg !821, !tbaa !641
  %27 = add nsw i32 %26, -1, !dbg !821
  store i32 %27, i32* %23, align 4, !dbg !821, !tbaa !641
  %28 = sext i32 %27 to i64, !dbg !822
  %29 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %25, i64 %28, !dbg !822
  %30 = bitcast %struct._bufhead*** %29 to i8**, !dbg !822
  %31 = load i8*, i8** %30, align 8, !dbg !822, !tbaa !343
  tail call void @free(i8* %31) #6, !dbg !823
  %32 = load i32, i32* %17, align 8, !dbg !817, !tbaa !818
  %33 = add nsw i32 %32, -1, !dbg !817
  store i32 %33, i32* %17, align 8, !dbg !817, !tbaa !818
  %34 = icmp eq i32 %32, 0, !dbg !819
  %35 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !820, !tbaa !750
  br i1 %34, label %36, label %24, !dbg !819, !llvm.loop !824

; <label>:36:                                     ; preds = %24, %14
  %37 = phi %struct._bufhead*** [ %21, %14 ], [ %35, %24 ], !dbg !820
  %38 = bitcast %struct._bufhead*** %37 to i8*, !dbg !826
  tail call void @free(i8* %38) #6, !dbg !827
  br label %39, !dbg !828

; <label>:39:                                     ; preds = %9, %36
  %40 = tail call fastcc i32 @flush_meta(%struct.htab* nonnull %0) #7, !dbg !829
  %41 = icmp eq i32 %40, 0, !dbg !829
  %42 = icmp ne i32 %10, 0, !dbg !831
  %43 = or i1 %42, %41, !dbg !832
  br i1 %43, label %47, label %44, !dbg !832

; <label>:44:                                     ; preds = %39
  %45 = tail call i32* @__errno() #6, !dbg !833
  %46 = load i32, i32* %45, align 4, !dbg !833, !tbaa !241
  br label %47, !dbg !834

; <label>:47:                                     ; preds = %39, %44
  %48 = phi i32 [ %10, %39 ], [ %46, %44 ], !dbg !835
  %49 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !837
  %50 = load i32, i32* %49, align 8, !dbg !837, !tbaa !658
  %51 = icmp sgt i32 %50, 0, !dbg !840
  br i1 %51, label %52, label %66, !dbg !841

; <label>:52:                                     ; preds = %47, %61
  %53 = phi i32 [ %62, %61 ], [ %50, %47 ]
  %54 = phi i64 [ %63, %61 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %54, !dbg !842
  %56 = load i32*, i32** %55, align 8, !dbg !842, !tbaa !343
  %57 = icmp eq i32* %56, null, !dbg !842
  br i1 %57, label %61, label %58, !dbg !844

; <label>:58:                                     ; preds = %52
  %59 = bitcast i32* %56 to i8*, !dbg !845
  tail call void @free(i8* %59) #6, !dbg !846
  %60 = load i32, i32* %49, align 8, !dbg !837, !tbaa !658
  br label %61, !dbg !846

; <label>:61:                                     ; preds = %52, %58
  %62 = phi i32 [ %53, %52 ], [ %60, %58 ], !dbg !837
  %63 = add nuw nsw i64 %54, 1, !dbg !847
  %64 = sext i32 %62 to i64, !dbg !840
  %65 = icmp slt i64 %63, %64, !dbg !840
  br i1 %65, label %52, label %66, !dbg !841, !llvm.loop !848

; <label>:66:                                     ; preds = %61, %47
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !850
  %68 = load i32, i32* %67, align 4, !dbg !850, !tbaa !254
  %69 = icmp eq i32 %68, -1, !dbg !852
  br i1 %69, label %72, label %70, !dbg !853

; <label>:70:                                     ; preds = %66
  %71 = tail call i32 @close(i32 %68) #6, !dbg !854
  br label %72, !dbg !855

; <label>:72:                                     ; preds = %66, %70
  %73 = bitcast %struct.htab* %0 to i8*, !dbg !856
  tail call void @free(i8* %73) #6, !dbg !857
  %74 = icmp eq i32 %48, 0, !dbg !858
  br i1 %74, label %77, label %75, !dbg !860

; <label>:75:                                     ; preds = %72
  %76 = tail call i32* @__errno() #6, !dbg !861
  store i32 %48, i32* %76, align 4, !dbg !863, !tbaa !241
  br label %77, !dbg !864

; <label>:77:                                     ; preds = %72, %75
  %78 = phi i32 [ -1, %75 ], [ 0, %72 ], !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  ret i32 %78, !dbg !865
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_close(%struct.__db*) #0 !dbg !866 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !874
  br i1 %2, label %9, label %3, !dbg !876

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !877
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !877
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !877, !tbaa !697
  %7 = tail call fastcc i32 @hdestroy(%struct.htab* %6) #7, !dbg !879
  %8 = bitcast %struct.__db* %0 to i8*, !dbg !881
  tail call void @free(i8* %8) #6, !dbg !882
  br label %9, !dbg !883

; <label>:9:                                      ; preds = %1, %3
  %10 = phi i32 [ %7, %3 ], [ -1, %1 ], !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  ret i32 %10, !dbg !885
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_delete(%struct.__db* nocapture readonly, %struct.DBT*, i32) #0 !dbg !886 {
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !899
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !899
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !899, !tbaa !697
  %7 = icmp ugt i32 %2, 1, !dbg !901
  br i1 %7, label %8, label %11, !dbg !901

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno() #6, !dbg !903
  store i32 22, i32* %9, align 4, !dbg !905, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !906
  store i32 22, i32* %10, align 8, !dbg !907, !tbaa !908
  br label %21, !dbg !909

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 4, !dbg !910
  %13 = load i32, i32* %12, align 8, !dbg !910, !tbaa !261
  %14 = and i32 %13, 3, !dbg !912
  %15 = icmp eq i32 %14, 0, !dbg !913
  br i1 %15, label %16, label %19, !dbg !914

; <label>:16:                                     ; preds = %11
  %17 = tail call i32* @__errno() #6, !dbg !915
  store i32 1, i32* %17, align 4, !dbg !917, !tbaa !241
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !918
  store i32 1, i32* %18, align 8, !dbg !919, !tbaa !908
  br label %21, !dbg !920

; <label>:19:                                     ; preds = %11
  %20 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %6, i32 3, %struct.DBT* %1, %struct.DBT* null) #7, !dbg !921
  br label %21, !dbg !922

; <label>:21:                                     ; preds = %19, %16, %8
  %22 = phi i32 [ -1, %8 ], [ -1, %16 ], [ %20, %19 ], !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  ret i32 %22, !dbg !924
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_fd(%struct.__db* readonly) #0 !dbg !925 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !932
  br i1 %2, label %12, label %3, !dbg !934

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !935
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !935
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !935, !tbaa !697
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 5, !dbg !937
  %8 = load i32, i32* %7, align 4, !dbg !937, !tbaa !254
  %9 = icmp eq i32 %8, -1, !dbg !939
  br i1 %9, label %10, label %12, !dbg !940

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno() #6, !dbg !941
  store i32 2, i32* %11, align 4, !dbg !943, !tbaa !241
  br label %12, !dbg !944

; <label>:12:                                     ; preds = %3, %1, %10
  %13 = phi i32 [ -1, %10 ], [ -1, %1 ], [ %8, %3 ], !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  ret i32 %13, !dbg !946
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_get(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !947 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !960
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !960
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !960, !tbaa !697
  %8 = icmp eq i32 %3, 0, !dbg !962
  br i1 %8, label %12, label %9, !dbg !964

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno() #6, !dbg !965
  store i32 22, i32* %10, align 4, !dbg !967, !tbaa !241
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !968
  store i32 22, i32* %11, align 8, !dbg !969, !tbaa !908
  br label %14, !dbg !970

; <label>:12:                                     ; preds = %4
  %13 = tail call fastcc i32 @hash_access(%struct.htab* %7, i32 0, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !971
  br label %14, !dbg !972

; <label>:14:                                     ; preds = %12, %9
  %15 = phi i32 [ -1, %9 ], [ %13, %12 ], !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  ret i32 %15, !dbg !974
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_put(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !975 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !988
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !988
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !988, !tbaa !697
  %8 = or i32 %3, 8, !dbg !990
  %9 = icmp eq i32 %8, 8, !dbg !990
  br i1 %9, label %13, label %10, !dbg !990

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !992
  store i32 22, i32* %11, align 8, !dbg !994, !tbaa !908
  %12 = tail call i32* @__errno() #6, !dbg !995
  store i32 22, i32* %12, align 4, !dbg !996, !tbaa !241
  br label %25, !dbg !997

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 4, !dbg !998
  %15 = load i32, i32* %14, align 8, !dbg !998, !tbaa !261
  %16 = and i32 %15, 3, !dbg !1000
  %17 = icmp eq i32 %16, 0, !dbg !1001
  br i1 %17, label %18, label %21, !dbg !1002

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno() #6, !dbg !1003
  store i32 1, i32* %19, align 4, !dbg !1005, !tbaa !241
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1006
  store i32 1, i32* %20, align 8, !dbg !1007, !tbaa !908
  br label %25, !dbg !1008

; <label>:21:                                     ; preds = %13
  %22 = icmp eq i32 %3, 8, !dbg !1009
  %23 = select i1 %22, i32 2, i32 1, !dbg !1010
  %24 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %7, i32 %23, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !1011
  br label %25, !dbg !1012

; <label>:25:                                     ; preds = %21, %18, %10
  %26 = phi i32 [ -1, %10 ], [ -1, %18 ], [ %24, %21 ], !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  ret i32 %26, !dbg !1014
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_seq(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !1015 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1032
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !1032
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !1032, !tbaa !697
  switch i32 %3, label %8 [
    i32 7, label %11
    i32 3, label %11
    i32 0, label %11
  ], !dbg !1034

; <label>:8:                                      ; preds = %4
  %9 = tail call i32* @__errno() #6, !dbg !1036
  store i32 22, i32* %9, align 4, !dbg !1038, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1039
  store i32 22, i32* %10, align 8, !dbg !1040, !tbaa !908
  br label %155, !dbg !1041

; <label>:11:                                     ; preds = %4, %4, %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 9, !dbg !1042
  %13 = load i32, i32* %12, align 8, !dbg !1042, !tbaa !682
  %14 = icmp slt i32 %13, 0, !dbg !1044
  %15 = icmp eq i32 %3, 3, !dbg !1045
  %16 = or i1 %15, %14, !dbg !1046
  br i1 %16, label %20, label %17, !dbg !1046

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10
  br label %23, !dbg !1046

; <label>:20:                                     ; preds = %11
  store i32 0, i32* %12, align 8, !dbg !1047, !tbaa !682
  %21 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10, !dbg !1049
  store i32 1, i32* %21, align 4, !dbg !1050, !tbaa !1051
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8, !dbg !1052
  store %struct._bufhead* null, %struct._bufhead** %22, align 8, !dbg !1053, !tbaa !1054
  br label %23, !dbg !1055

; <label>:23:                                     ; preds = %17, %20
  %24 = phi i32* [ %19, %17 ], [ %21, %20 ]
  %25 = phi %struct._bufhead** [ %18, %17 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 10
  br label %27, !dbg !1057

; <label>:27:                                     ; preds = %99, %23
  %28 = phi %struct._bufhead* [ undef, %23 ], [ %95, %99 ]
  %29 = phi i16* [ null, %23 ], [ %96, %99 ], !dbg !1059
  %30 = icmp eq i16* %29, null, !dbg !1064
  br i1 %30, label %34, label %31, !dbg !1065

; <label>:31:                                     ; preds = %27
  %32 = load i16, i16* %29, align 2, !dbg !1066, !tbaa !603
  %33 = icmp eq i16 %32, 0, !dbg !1067
  br i1 %33, label %34, label %103, !dbg !1068

; <label>:34:                                     ; preds = %27, %31
  %35 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1069, !tbaa !1054
  %36 = icmp eq %struct._bufhead* %35, null, !dbg !1070
  br i1 %36, label %37, label %64, !dbg !1071

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %12, align 8, !dbg !1072, !tbaa !682
  %39 = load i32, i32* %26, align 8, !dbg !1076, !tbaa !468
  %40 = icmp ugt i32 %38, %39, !dbg !1078
  br i1 %40, label %57, label %41, !dbg !1079

; <label>:41:                                     ; preds = %37, %53
  %42 = phi i32 [ %54, %53 ], [ %38, %37 ]
  %43 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %42, %struct._bufhead* null, i32 0) #6, !dbg !1080
  %44 = icmp eq %struct._bufhead* %43, null, !dbg !1082
  br i1 %44, label %155, label %45, !dbg !1084

; <label>:45:                                     ; preds = %41
  store %struct._bufhead* %43, %struct._bufhead** %25, align 8, !dbg !1085, !tbaa !1054
  %46 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %43, i64 0, i32 4, !dbg !1086
  %47 = bitcast i8** %46 to i16**, !dbg !1086
  %48 = load i16*, i16** %47, align 8, !dbg !1086, !tbaa !1087
  %49 = load i16, i16* %48, align 2, !dbg !1088, !tbaa !603
  %50 = icmp eq i16 %49, 0, !dbg !1088
  br i1 %50, label %53, label %51, !dbg !1090

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %26, align 8, !dbg !1091, !tbaa !468
  br label %57, !dbg !1090

; <label>:53:                                     ; preds = %45
  %54 = add i32 %42, 1, !dbg !1093
  store i32 1, i32* %24, align 4, !dbg !1094, !tbaa !1051
  %55 = load i32, i32* %26, align 8, !dbg !1076, !tbaa !468
  %56 = icmp ugt i32 %54, %55, !dbg !1078
  br i1 %56, label %57, label %41, !dbg !1079, !llvm.loop !1095

; <label>:57:                                     ; preds = %53, %51, %37
  %58 = phi i32 [ %39, %37 ], [ %52, %51 ], [ %55, %53 ], !dbg !1091
  %59 = phi i32 [ %38, %37 ], [ %42, %51 ], [ %54, %53 ], !dbg !1097
  %60 = phi %struct._bufhead* [ null, %37 ], [ %43, %51 ], [ %43, %53 ], !dbg !1059
  %61 = phi i16* [ %29, %37 ], [ %48, %51 ], [ %48, %53 ], !dbg !1098
  store i32 %59, i32* %12, align 8, !dbg !1099, !tbaa !682
  %62 = icmp sgt i32 %59, %58, !dbg !1100
  br i1 %62, label %63, label %68, !dbg !1101

; <label>:63:                                     ; preds = %57
  store i32 -1, i32* %12, align 8, !dbg !1102, !tbaa !682
  br label %155, !dbg !1104

; <label>:64:                                     ; preds = %34
  %65 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %35, i64 0, i32 4, !dbg !1105
  %66 = bitcast i8** %65 to i16**, !dbg !1105
  %67 = load i16*, i16** %66, align 8, !dbg !1105, !tbaa !1087
  br label %68

; <label>:68:                                     ; preds = %57, %64
  %69 = phi %struct._bufhead* [ %35, %64 ], [ %60, %57 ], !dbg !1106
  %70 = phi i16* [ %67, %64 ], [ %61, %57 ], !dbg !1106
  %71 = load i32, i32* %24, align 4, !dbg !1107, !tbaa !1051
  %72 = add nsw i32 %71, 1, !dbg !1108
  %73 = sext i32 %72 to i64, !dbg !1109
  %74 = getelementptr inbounds i16, i16* %70, i64 %73, !dbg !1109
  %75 = load i16, i16* %74, align 2, !dbg !1109, !tbaa !603
  %76 = icmp eq i16 %75, 0, !dbg !1110
  br i1 %76, label %77, label %94, !dbg !1111

; <label>:77:                                     ; preds = %68, %87
  %78 = phi i32 [ 1, %87 ], [ %71, %68 ]
  %79 = phi i16* [ %90, %87 ], [ %70, %68 ]
  %80 = phi %struct._bufhead* [ %85, %87 ], [ %69, %68 ]
  %81 = sext i32 %78 to i64, !dbg !1112
  %82 = getelementptr inbounds i16, i16* %79, i64 %81, !dbg !1112
  %83 = load i16, i16* %82, align 2, !dbg !1112, !tbaa !603
  %84 = zext i16 %83 to i32, !dbg !1112
  %85 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %84, %struct._bufhead* %80, i32 0) #6, !dbg !1114
  store %struct._bufhead* %85, %struct._bufhead** %25, align 8, !dbg !1115, !tbaa !1054
  %86 = icmp eq %struct._bufhead* %85, null, !dbg !1116
  br i1 %86, label %155, label %87, !dbg !1118

; <label>:87:                                     ; preds = %77
  %88 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %85, i64 0, i32 4, !dbg !1119
  %89 = bitcast i8** %88 to i16**, !dbg !1119
  %90 = load i16*, i16** %89, align 8, !dbg !1119, !tbaa !1087
  store i32 1, i32* %24, align 4, !dbg !1120, !tbaa !1051
  %91 = getelementptr inbounds i16, i16* %90, i64 2, !dbg !1109
  %92 = load i16, i16* %91, align 2, !dbg !1109, !tbaa !603
  %93 = icmp eq i16 %92, 0, !dbg !1110
  br i1 %93, label %77, label %94, !dbg !1111, !llvm.loop !1121

; <label>:94:                                     ; preds = %87, %68
  %95 = phi %struct._bufhead* [ %69, %68 ], [ %85, %87 ], !dbg !1123
  %96 = phi i16* [ %70, %68 ], [ %90, %87 ], !dbg !1123
  %97 = load i16, i16* %96, align 2, !dbg !1124, !tbaa !603
  %98 = icmp eq i16 %97, 0, !dbg !1124
  br i1 %98, label %100, label %99, !dbg !1126

; <label>:99:                                     ; preds = %94, %100
  br label %27, !dbg !1056, !llvm.loop !1127

; <label>:100:                                    ; preds = %94
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1129, !tbaa !1054
  %101 = load i32, i32* %12, align 8, !dbg !1131, !tbaa !682
  %102 = add nsw i32 %101, 1, !dbg !1131
  store i32 %102, i32* %12, align 8, !dbg !1131, !tbaa !682
  br label %99, !dbg !1132

; <label>:103:                                    ; preds = %31
  %104 = load i32, i32* %24, align 4, !dbg !1133, !tbaa !1051
  %105 = and i32 %104, 65535, !dbg !1134
  %106 = add nuw nsw i32 %105, 1, !dbg !1136
  %107 = zext i32 %106 to i64, !dbg !1137
  %108 = getelementptr inbounds i16, i16* %29, i64 %107, !dbg !1137
  %109 = load i16, i16* %108, align 2, !dbg !1137, !tbaa !603
  %110 = icmp ult i16 %109, 4, !dbg !1138
  br i1 %110, label %111, label %114, !dbg !1139

; <label>:111:                                    ; preds = %103
  %112 = tail call i32 @__big_keydata(%struct.htab* nonnull %7, %struct._bufhead* %28, %struct.DBT* %1, %struct.DBT* %2, i32 1) #6, !dbg !1140
  %113 = icmp eq i32 %112, 0, !dbg !1140
  br i1 %113, label %154, label %155, !dbg !1143

; <label>:114:                                    ; preds = %103
  %115 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1144, !tbaa !1054
  %116 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %115, i64 0, i32 4, !dbg !1146
  %117 = load i8*, i8** %116, align 8, !dbg !1146, !tbaa !1087
  %118 = zext i32 %105 to i64, !dbg !1147
  %119 = getelementptr inbounds i16, i16* %29, i64 %118, !dbg !1147
  %120 = load i16, i16* %119, align 2, !dbg !1147, !tbaa !603
  %121 = zext i16 %120 to i64, !dbg !1148
  %122 = getelementptr inbounds i8, i8* %117, i64 %121, !dbg !1148
  %123 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 0, !dbg !1149
  store i8* %122, i8** %123, align 8, !dbg !1150, !tbaa !1151
  %124 = icmp ugt i32 %105, 1, !dbg !1153
  br i1 %124, label %125, label %131, !dbg !1154

; <label>:125:                                    ; preds = %114
  %126 = add nsw i32 %105, -1, !dbg !1155
  %127 = sext i32 %126 to i64, !dbg !1156
  %128 = getelementptr inbounds i16, i16* %29, i64 %127, !dbg !1156
  %129 = load i16, i16* %128, align 2, !dbg !1156, !tbaa !603
  %130 = zext i16 %129 to i32, !dbg !1156
  br label %134, !dbg !1154

; <label>:131:                                    ; preds = %114
  %132 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 3, !dbg !1157
  %133 = load i32, i32* %132, align 4, !dbg !1157, !tbaa !363
  br label %134, !dbg !1154

; <label>:134:                                    ; preds = %131, %125
  %135 = phi i32 [ %130, %125 ], [ %133, %131 ], !dbg !1154
  %136 = zext i16 %120 to i32, !dbg !1158
  %137 = sub nsw i32 %135, %136, !dbg !1159
  %138 = sext i32 %137 to i64, !dbg !1160
  %139 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 1, !dbg !1161
  store i64 %138, i64* %139, align 8, !dbg !1162, !tbaa !1163
  %140 = zext i16 %109 to i64, !dbg !1164
  %141 = getelementptr inbounds i8, i8* %117, i64 %140, !dbg !1164
  %142 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1165
  store i8* %141, i8** %142, align 8, !dbg !1166, !tbaa !1151
  %143 = sub nsw i64 %121, %140, !dbg !1167
  %144 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1168
  store i64 %143, i64* %144, align 8, !dbg !1169, !tbaa !1163
  %145 = add i32 %104, 2, !dbg !1170
  %146 = and i32 %145, 65535, !dbg !1171
  %147 = zext i16 %32 to i32, !dbg !1174
  %148 = icmp ugt i32 %146, %147, !dbg !1175
  br i1 %148, label %149, label %152, !dbg !1176

; <label>:149:                                    ; preds = %134
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1177, !tbaa !1054
  %150 = load i32, i32* %12, align 8, !dbg !1179, !tbaa !682
  %151 = add nsw i32 %150, 1, !dbg !1179
  store i32 %151, i32* %12, align 8, !dbg !1179, !tbaa !682
  br label %152, !dbg !1180

; <label>:152:                                    ; preds = %134, %149
  %153 = phi i32 [ 1, %149 ], [ %146, %134 ]
  store i32 %153, i32* %24, align 4, !dbg !1181, !tbaa !1051
  br label %154, !dbg !1182

; <label>:154:                                    ; preds = %152, %111
  br label %155, !dbg !1182

; <label>:155:                                    ; preds = %41, %77, %111, %154, %63, %8
  %156 = phi i32 [ -1, %8 ], [ 1, %63 ], [ 0, %154 ], [ -1, %111 ], [ -1, %77 ], [ -1, %41 ], !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret i32 %156, !dbg !1184
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_sync(%struct.__db* readonly, i32) #0 !dbg !1185 {
  %3 = icmp eq i32 %1, 0, !dbg !1194
  br i1 %3, label %6, label %4, !dbg !1196

; <label>:4:                                      ; preds = %2
  %5 = tail call i32* @__errno() #6, !dbg !1197
  store i32 22, i32* %5, align 4, !dbg !1199, !tbaa !241
  br label %23, !dbg !1200

; <label>:6:                                      ; preds = %2
  %7 = icmp eq %struct.__db* %0, null, !dbg !1201
  br i1 %7, label %23, label %8, !dbg !1203

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1204
  %10 = bitcast i8** %9 to %struct.htab**, !dbg !1204
  %11 = load %struct.htab*, %struct.htab** %10, align 8, !dbg !1204, !tbaa !697
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 13, !dbg !1206
  %13 = load i32, i32* %12, align 8, !dbg !1206, !tbaa !679
  %14 = icmp eq i32 %13, 0, !dbg !1208
  br i1 %14, label %23, label %15, !dbg !1209

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @__buf_free(%struct.htab* %11, i32 0, i32 1) #6, !dbg !1210
  %17 = icmp eq i32 %16, 0, !dbg !1210
  br i1 %17, label %18, label %23, !dbg !1212

; <label>:18:                                     ; preds = %15
  %19 = tail call fastcc i32 @flush_meta(%struct.htab* %11) #7, !dbg !1213
  %20 = icmp eq i32 %19, 0, !dbg !1213
  br i1 %20, label %21, label %23, !dbg !1214

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 12, !dbg !1215
  store i32 0, i32* %22, align 4, !dbg !1216, !tbaa !674
  br label %23, !dbg !1217

; <label>:23:                                     ; preds = %15, %18, %8, %6, %21, %4
  %24 = phi i32 [ -1, %4 ], [ 0, %21 ], [ -1, %6 ], [ 0, %8 ], [ -1, %18 ], [ -1, %15 ], !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  ret i32 %24, !dbg !1219
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #0 !dbg !1220 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1229
  %3 = load i32, i32* %2, align 8, !dbg !1230, !tbaa !468
  %4 = add nsw i32 %3, 1, !dbg !1230
  store i32 %4, i32* %2, align 8, !dbg !1230, !tbaa !468
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1232
  %6 = load i32, i32* %5, align 8, !dbg !1232, !tbaa !465
  %7 = and i32 %6, %4, !dbg !1233
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !1235
  %9 = load i32, i32* %8, align 4, !dbg !1235, !tbaa !336
  %10 = lshr i32 %4, %9, !dbg !1236
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1, !dbg !1238
  %12 = load i32, i32* %11, align 4, !dbg !1238, !tbaa !641
  %13 = icmp slt i32 %10, %12, !dbg !1240
  br i1 %13, label %54, label %14, !dbg !1241

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !1242
  %16 = load i32, i32* %15, align 4, !dbg !1242, !tbaa !488
  %17 = icmp slt i32 %10, %16, !dbg !1245
  br i1 %17, label %18, label %20, !dbg !1246

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1247
  br label %36, !dbg !1246

; <label>:20:                                     ; preds = %14
  %21 = shl i32 %16, 4, !dbg !1249
  %22 = sext i32 %21 to i64, !dbg !1263
  %23 = tail call i8* @malloc(i64 %22) #6, !dbg !1265
  %24 = icmp eq i8* %23, null, !dbg !1267
  br i1 %24, label %25, label %26, !dbg !1268

; <label>:25:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br label %75, !dbg !1270

; <label>:26:                                     ; preds = %20
  %27 = shl i32 %16, 3, !dbg !1271
  %28 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1274
  %29 = bitcast %struct._bufhead**** %28 to i8**, !dbg !1276
  %30 = load i8*, i8** %29, align 8, !dbg !1276, !tbaa !343
  %31 = sext i32 %27 to i64, !dbg !1278
  %32 = tail call i8* @memmove(i8* nonnull %23, i8* %30, i64 %31) #6, !dbg !1279
  %33 = getelementptr inbounds i8, i8* %23, i64 %31, !dbg !1280
  %34 = tail call i8* @memset(i8* nonnull %33, i32 0, i64 %31) #6, !dbg !1281
  %35 = load i8*, i8** %29, align 8, !dbg !1282, !tbaa !343
  tail call void @free(i8* %35) #6, !dbg !1283
  store i8* %23, i8** %29, align 8, !dbg !1284, !tbaa !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  store i32 %21, i32* %15, align 4, !dbg !1285, !tbaa !488
  br label %36, !dbg !1286

; <label>:36:                                     ; preds = %18, %26
  %37 = phi %struct._bufhead**** [ %19, %18 ], [ %28, %26 ], !dbg !1247
  %38 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !1287
  %39 = load i32, i32* %38, align 8, !dbg !1287, !tbaa !333
  %40 = sext i32 %39 to i64, !dbg !1288
  %41 = tail call i8* @calloc(i64 %40, i64 8) #6, !dbg !1289
  %42 = load %struct._bufhead***, %struct._bufhead**** %37, align 8, !dbg !1247, !tbaa !750
  %43 = sext i32 %10 to i64, !dbg !1290
  %44 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %42, i64 %43, !dbg !1290
  %45 = bitcast %struct._bufhead*** %44 to i8**, !dbg !1291
  store i8* %41, i8** %45, align 8, !dbg !1291, !tbaa !343
  %46 = icmp eq i8* %41, null, !dbg !1292
  br i1 %46, label %75, label %47, !dbg !1293

; <label>:47:                                     ; preds = %36
  %48 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !1294
  %49 = load i32, i32* %48, align 8, !dbg !1295, !tbaa !818
  %50 = add nsw i32 %49, 1, !dbg !1295
  store i32 %50, i32* %48, align 8, !dbg !1295, !tbaa !818
  %51 = load i32, i32* %11, align 4, !dbg !1296, !tbaa !641
  %52 = add nsw i32 %51, 1, !dbg !1296
  store i32 %52, i32* %11, align 4, !dbg !1296, !tbaa !641
  %53 = load i32, i32* %2, align 8, !dbg !1297, !tbaa !468
  br label %54, !dbg !1298

; <label>:54:                                     ; preds = %1, %47
  %55 = phi i32 [ %4, %1 ], [ %53, %47 ], !dbg !1297
  %56 = add nsw i32 %55, 1, !dbg !1299
  %57 = tail call i32 @__log2(i32 %56) #6, !dbg !1300
  %58 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1302
  %59 = load i32, i32* %58, align 8, !dbg !1302, !tbaa !452
  %60 = icmp sgt i32 %57, %59, !dbg !1304
  br i1 %60, label %61, label %67, !dbg !1305

; <label>:61:                                     ; preds = %54
  %62 = sext i32 %59 to i64, !dbg !1306
  %63 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %62, !dbg !1306
  %64 = load i32, i32* %63, align 4, !dbg !1306, !tbaa !241
  %65 = sext i32 %57 to i64, !dbg !1308
  %66 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %65, !dbg !1308
  store i32 %64, i32* %66, align 4, !dbg !1309, !tbaa !241
  store i32 %57, i32* %58, align 8, !dbg !1310, !tbaa !452
  br label %67, !dbg !1311

; <label>:67:                                     ; preds = %61, %54
  %68 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1312
  %69 = load i32, i32* %68, align 4, !dbg !1312, !tbaa !473
  %70 = icmp ugt i32 %4, %69, !dbg !1314
  br i1 %70, label %71, label %73, !dbg !1315

; <label>:71:                                     ; preds = %67
  store i32 %69, i32* %5, align 8, !dbg !1316, !tbaa !465
  %72 = or i32 %69, %4, !dbg !1318
  store i32 %72, i32* %68, align 4, !dbg !1319, !tbaa !473
  br label %73, !dbg !1320

; <label>:73:                                     ; preds = %71, %67
  %74 = tail call i32 @__split_page(%struct.htab* nonnull %0, i32 %7, i32 %4) #6, !dbg !1321
  br label %75, !dbg !1322

; <label>:75:                                     ; preds = %25, %36, %73
  %76 = phi i32 [ %74, %73 ], [ -1, %36 ], [ -1, %25 ], !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  ret i32 %76, !dbg !1324
}

; Function Attrs: noredzone
declare dso_local i32 @__log2(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__split_page(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__call_hash(%struct.htab* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !1325 {
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1337
  %5 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8, !dbg !1337, !tbaa !346
  %6 = sext i32 %2 to i64, !dbg !1338
  %7 = tail call i32 %5(i8* %1, i64 %6) #6, !dbg !1339
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1341
  %9 = load i32, i32* %8, align 4, !dbg !1341, !tbaa !473
  %10 = and i32 %9, %7, !dbg !1342
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1344
  %12 = load i32, i32* %11, align 8, !dbg !1344, !tbaa !468
  %13 = icmp sgt i32 %10, %12, !dbg !1346
  br i1 %13, label %14, label %18, !dbg !1347

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1348
  %16 = load i32, i32* %15, align 8, !dbg !1348, !tbaa !465
  %17 = and i32 %16, %10, !dbg !1349
  br label %18, !dbg !1350

; <label>:18:                                     ; preds = %14, %3
  %19 = phi i32 [ %17, %14 ], [ %10, %3 ], !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  ret i32 %19, !dbg !1352
}

; Function Attrs: noredzone
declare dso_local i32 @__ibitmap(%struct.htab*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__buf_free(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @flush_meta(%struct.htab*) unnamed_addr #0 !dbg !1353 {
  %2 = alloca %struct.hashhdr, align 16
  %3 = bitcast %struct.hashhdr* %2 to i8*, !dbg !1362
  call void @llvm.lifetime.start.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1362
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !1363
  %5 = load i32, i32* %4, align 8, !dbg !1363, !tbaa !679
  %6 = icmp eq i32 %5, 0, !dbg !1365
  br i1 %6, label %130, label %7, !dbg !1366

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 0, !dbg !1367
  store i32 398689, i32* %8, align 8, !dbg !1368, !tbaa !620
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 1, !dbg !1369
  store i32 2, i32* %9, align 4, !dbg !1370, !tbaa !625
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1371
  %11 = load i32 (i8*, i64)*, i32 (i8*, i64)** %10, align 8, !dbg !1371, !tbaa !346
  %12 = tail call i32 %11(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !1372
  %13 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 16, !dbg !1373
  store i32 %12, i32* %13, align 8, !dbg !1374, !tbaa !631
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1375
  %15 = load i32, i32* %14, align 4, !dbg !1375, !tbaa !254
  %16 = bitcast %struct.htab* %0 to <16 x i8>*, !dbg !1389
  %17 = load <16 x i8>, <16 x i8>* %16, align 4, !dbg !1389, !tbaa !566
  %18 = shufflevector <16 x i8> %17, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1389
  %19 = bitcast %struct.hashhdr* %2 to <16 x i8>*, !dbg !1389
  store <16 x i8> %18, <16 x i8>* %19, align 16, !dbg !1389, !tbaa !566
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1391
  %21 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 4, !dbg !1391
  %22 = bitcast i32* %20 to <16 x i8>*, !dbg !1391
  %23 = load <16 x i8>, <16 x i8>* %22, align 4, !dbg !1391, !tbaa !566
  %24 = shufflevector <16 x i8> %23, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1391
  %25 = bitcast i32* %21 to <16 x i8>*, !dbg !1391
  store <16 x i8> %24, <16 x i8>* %25, align 16, !dbg !1391, !tbaa !566
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1393
  %27 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 8, !dbg !1393
  %28 = bitcast i32* %26 to <16 x i8>*, !dbg !1393
  %29 = load <16 x i8>, <16 x i8>* %28, align 4, !dbg !1393, !tbaa !566
  %30 = shufflevector <16 x i8> %29, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1393
  %31 = bitcast i32* %27 to <16 x i8>*, !dbg !1393
  store <16 x i8> %30, <16 x i8>* %31, align 16, !dbg !1393, !tbaa !566
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1395
  %33 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 12, !dbg !1395
  %34 = bitcast i32* %32 to <16 x i8>*, !dbg !1395
  %35 = load <16 x i8>, <16 x i8>* %34, align 4, !dbg !1395, !tbaa !566
  %36 = shufflevector <16 x i8> %35, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1395
  %37 = bitcast i32* %33 to <16 x i8>*, !dbg !1395
  store <16 x i8> %36, <16 x i8>* %37, align 16, !dbg !1395, !tbaa !566
  %38 = bitcast i32* %13 to i8*, !dbg !1397
  %39 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !1397
  %40 = load i8, i8* %39, align 1, !dbg !1397, !tbaa !566
  %41 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 16, !dbg !1397
  %42 = bitcast i32* %41 to i8*, !dbg !1397
  store i8 %40, i8* %42, align 16, !dbg !1397, !tbaa !566
  %43 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1397
  %44 = load i8, i8* %43, align 2, !dbg !1397, !tbaa !566
  %45 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1397
  store i8 %44, i8* %45, align 1, !dbg !1397, !tbaa !566
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1397
  %47 = load i8, i8* %46, align 1, !dbg !1397, !tbaa !566
  %48 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1397
  store i8 %47, i8* %48, align 2, !dbg !1397, !tbaa !566
  %49 = load i8, i8* %38, align 4, !dbg !1397, !tbaa !566
  %50 = getelementptr inbounds i8, i8* %42, i64 3, !dbg !1397
  store i8 %49, i8* %50, align 1, !dbg !1397, !tbaa !566
  br label %51, !dbg !1400

; <label>:51:                                     ; preds = %51, %7
  %52 = phi i64 [ 0, %7 ], [ %98, %51 ]
  %53 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %52, !dbg !1402
  %54 = bitcast i32* %53 to i8*, !dbg !1402
  %55 = getelementptr inbounds i8, i8* %54, i64 3, !dbg !1402
  %56 = load i8, i8* %55, align 1, !dbg !1402, !tbaa !566
  %57 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 17, i64 %52, !dbg !1402
  %58 = bitcast i32* %57 to i8*, !dbg !1402
  store i8 %56, i8* %58, align 4, !dbg !1402, !tbaa !566
  %59 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !1402
  %60 = load i8, i8* %59, align 2, !dbg !1402, !tbaa !566
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1402
  store i8 %60, i8* %61, align 1, !dbg !1402, !tbaa !566
  %62 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1402
  %63 = load i8, i8* %62, align 1, !dbg !1402, !tbaa !566
  %64 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !1402
  store i8 %63, i8* %64, align 2, !dbg !1402, !tbaa !566
  %65 = load i8, i8* %54, align 4, !dbg !1402, !tbaa !566
  %66 = getelementptr inbounds i8, i8* %58, i64 3, !dbg !1402
  store i8 %65, i8* %66, align 1, !dbg !1402, !tbaa !566
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %52, !dbg !1406
  %68 = bitcast i16* %67 to i8*, !dbg !1406
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1406
  %70 = load i8, i8* %69, align 1, !dbg !1406, !tbaa !566
  %71 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 18, i64 %52, !dbg !1406
  %72 = bitcast i16* %71 to i8*, !dbg !1406
  store i8 %70, i8* %72, align 4, !dbg !1406, !tbaa !566
  %73 = load i8, i8* %68, align 2, !dbg !1406, !tbaa !566
  %74 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1406
  store i8 %73, i8* %74, align 1, !dbg !1406, !tbaa !566
  %75 = or i64 %52, 1, !dbg !1408
  %76 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %75, !dbg !1402
  %77 = bitcast i32* %76 to i8*, !dbg !1402
  %78 = getelementptr inbounds i8, i8* %77, i64 3, !dbg !1402
  %79 = load i8, i8* %78, align 1, !dbg !1402, !tbaa !566
  %80 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 17, i64 %75, !dbg !1402
  %81 = bitcast i32* %80 to i8*, !dbg !1402
  store i8 %79, i8* %81, align 4, !dbg !1402, !tbaa !566
  %82 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !1402
  %83 = load i8, i8* %82, align 2, !dbg !1402, !tbaa !566
  %84 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1402
  store i8 %83, i8* %84, align 1, !dbg !1402, !tbaa !566
  %85 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1402
  %86 = load i8, i8* %85, align 1, !dbg !1402, !tbaa !566
  %87 = getelementptr inbounds i8, i8* %81, i64 2, !dbg !1402
  store i8 %86, i8* %87, align 2, !dbg !1402, !tbaa !566
  %88 = load i8, i8* %77, align 4, !dbg !1402, !tbaa !566
  %89 = getelementptr inbounds i8, i8* %81, i64 3, !dbg !1402
  store i8 %88, i8* %89, align 1, !dbg !1402, !tbaa !566
  %90 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %75, !dbg !1406
  %91 = bitcast i16* %90 to i8*, !dbg !1406
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1406
  %93 = load i8, i8* %92, align 1, !dbg !1406, !tbaa !566
  %94 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 18, i64 %75, !dbg !1406
  %95 = bitcast i16* %94 to i8*, !dbg !1406
  store i8 %93, i8* %95, align 2, !dbg !1406, !tbaa !566
  %96 = load i8, i8* %91, align 2, !dbg !1406, !tbaa !566
  %97 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1406
  store i8 %96, i8* %97, align 1, !dbg !1406, !tbaa !566
  %98 = add nuw nsw i64 %52, 2, !dbg !1408
  %99 = icmp eq i64 %98, 32, !dbg !1409
  br i1 %99, label %100, label %51, !dbg !1400, !llvm.loop !1410

; <label>:100:                                    ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  %101 = tail call i64 @lseek(i32 %15, i64 0, i32 0) #6, !dbg !1414
  %102 = icmp eq i64 %101, -1, !dbg !1416
  br i1 %102, label %130, label %103, !dbg !1417

; <label>:103:                                    ; preds = %100
  %104 = call i64 @write(i32 %15, i8* nonnull %3, i64 260) #6, !dbg !1418
  %105 = trunc i64 %104 to i32, !dbg !1418
  %106 = icmp eq i32 %105, -1, !dbg !1420
  br i1 %106, label %130, label %107, !dbg !1421

; <label>:107:                                    ; preds = %103
  %108 = and i64 %104, 4294967295, !dbg !1422
  %109 = icmp eq i64 %108, 260, !dbg !1422
  br i1 %109, label %115, label %110, !dbg !1424

; <label>:110:                                    ; preds = %107
  %111 = call i32* @__errno() #6, !dbg !1425
  store i32 79, i32* %111, align 4, !dbg !1427, !tbaa !241
  %112 = call i32* @__errno() #6, !dbg !1428
  %113 = load i32, i32* %112, align 4, !dbg !1428, !tbaa !241
  %114 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 11, !dbg !1429
  store i32 %113, i32* %114, align 8, !dbg !1430, !tbaa !908
  br label %130, !dbg !1431

; <label>:115:                                    ; preds = %107, %127
  %116 = phi i64 [ %128, %127 ], [ 0, %107 ]
  %117 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %116, !dbg !1433
  %118 = load i32*, i32** %117, align 8, !dbg !1433, !tbaa !343
  %119 = icmp eq i32* %118, null, !dbg !1433
  br i1 %119, label %127, label %120, !dbg !1437

; <label>:120:                                    ; preds = %115
  %121 = bitcast i32* %118 to i8*, !dbg !1438
  %122 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %116, !dbg !1440
  %123 = load i16, i16* %122, align 2, !dbg !1440, !tbaa !603
  %124 = zext i16 %123 to i32, !dbg !1440
  %125 = call i32 @__put_page(%struct.htab* nonnull %0, i8* %121, i32 %124, i32 0, i32 1) #6, !dbg !1441
  %126 = icmp eq i32 %125, 0, !dbg !1441
  br i1 %126, label %127, label %130, !dbg !1442

; <label>:127:                                    ; preds = %120, %115
  %128 = add nuw nsw i64 %116, 1, !dbg !1443
  %129 = icmp ult i64 %128, 32, !dbg !1444
  br i1 %129, label %115, label %130, !dbg !1445, !llvm.loop !1446

; <label>:130:                                    ; preds = %127, %120, %100, %103, %1, %110
  %131 = phi i32 [ -1, %110 ], [ 0, %1 ], [ -1, %103 ], [ -1, %100 ], [ 0, %127 ], [ -1, %120 ], !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  ret i32 %131, !dbg !1449
}

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__put_page(%struct.htab*, i8*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hash_access(%struct.htab*, i32, %struct.DBT*, %struct.DBT*) unnamed_addr #0 !dbg !1450 {
  %5 = alloca %struct._bufhead*, align 8
  %6 = bitcast %struct._bufhead** %5 to i8*, !dbg !1473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1473
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1474
  %8 = load i32, i32* %7, align 4, !dbg !1474, !tbaa !363
  %9 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1476
  %10 = load i64, i64* %9, align 8, !dbg !1476, !tbaa !1163
  %11 = trunc i64 %10 to i32, !dbg !1477
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1479
  %13 = load i8*, i8** %12, align 8, !dbg !1479, !tbaa !1151
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1485
  %15 = load i32 (i8*, i64)*, i32 (i8*, i64)** %14, align 8, !dbg !1485, !tbaa !346
  %16 = shl i64 %10, 32, !dbg !1486
  %17 = ashr exact i64 %16, 32, !dbg !1486
  %18 = tail call i32 %15(i8* %13, i64 %17) #6, !dbg !1487
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1489
  %20 = load i32, i32* %19, align 4, !dbg !1489, !tbaa !473
  %21 = and i32 %20, %18, !dbg !1490
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1492
  %23 = load i32, i32* %22, align 8, !dbg !1492, !tbaa !468
  %24 = icmp sgt i32 %21, %23, !dbg !1493
  br i1 %24, label %25, label %29, !dbg !1494

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1495
  %27 = load i32, i32* %26, align 8, !dbg !1495, !tbaa !465
  %28 = and i32 %27, %21, !dbg !1496
  br label %29, !dbg !1497

; <label>:29:                                     ; preds = %4, %25
  %30 = phi i32 [ %28, %25 ], [ %21, %4 ], !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %31 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %30, %struct._bufhead* null, i32 0) #6, !dbg !1500
  %32 = icmp eq %struct._bufhead* %31, null, !dbg !1502
  br i1 %32, label %183, label %33, !dbg !1504

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 5, !dbg !1506
  %35 = load i8, i8* %34, align 8, !dbg !1507, !tbaa !1508
  %36 = or i8 %35, 8, !dbg !1507
  store i8 %36, i8* %34, align 8, !dbg !1507, !tbaa !1508
  %37 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 4, !dbg !1509
  %38 = bitcast i8** %37 to i16**, !dbg !1509
  %39 = load i16*, i16** %38, align 8, !dbg !1509, !tbaa !1087
  %40 = load i16, i16* %39, align 2, !dbg !1512, !tbaa !603
  %41 = icmp ugt i16 %40, 1, !dbg !1514
  br i1 %41, label %42, label %127, !dbg !1516

; <label>:42:                                     ; preds = %33
  %43 = zext i16 %40 to i32, !dbg !1512
  %44 = getelementptr inbounds i16, i16* %39, i64 1, !dbg !1518
  br label %45, !dbg !1516

; <label>:45:                                     ; preds = %42, %120
  %46 = phi %struct._bufhead* [ %31, %42 ], [ %125, %120 ]
  %47 = phi i16* [ %44, %42 ], [ %124, %120 ]
  %48 = phi i32 [ %8, %42 ], [ %123, %120 ]
  %49 = phi i32 [ 1, %42 ], [ %122, %120 ]
  %50 = phi i32 [ %43, %42 ], [ %121, %120 ]
  %51 = getelementptr inbounds i16, i16* %47, i64 1, !dbg !1519
  %52 = load i16, i16* %51, align 2, !dbg !1519, !tbaa !603
  %53 = icmp ugt i16 %52, 3, !dbg !1521
  br i1 %53, label %54, label %73, !dbg !1522

; <label>:54:                                     ; preds = %45
  %55 = load i16, i16* %47, align 2, !dbg !1523, !tbaa !603
  %56 = zext i16 %55 to i32, !dbg !1523
  %57 = sub nsw i32 %48, %56, !dbg !1526
  %58 = icmp eq i32 %57, %11, !dbg !1527
  br i1 %58, label %59, label %68, !dbg !1528

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !1529
  %61 = load i8*, i8** %60, align 8, !dbg !1529, !tbaa !1087
  %62 = zext i16 %55 to i64, !dbg !1530
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1530
  %64 = call i32 @memcmp(i8* %13, i8* %63, i64 %17) #6, !dbg !1531
  %65 = icmp eq i32 %64, 0, !dbg !1532
  br i1 %65, label %140, label %66, !dbg !1533

; <label>:66:                                     ; preds = %59
  %67 = load i16, i16* %51, align 2, !dbg !1534, !tbaa !603
  br label %68, !dbg !1533

; <label>:68:                                     ; preds = %66, %54
  %69 = phi i16 [ %67, %66 ], [ %52, %54 ], !dbg !1534
  %70 = zext i16 %69 to i32, !dbg !1534
  %71 = getelementptr inbounds i16, i16* %47, i64 2, !dbg !1535
  %72 = add nsw i32 %49, 2, !dbg !1536
  br label %120, !dbg !1537

; <label>:73:                                     ; preds = %45
  %74 = icmp eq i16 %52, 0, !dbg !1538
  br i1 %74, label %75, label %91, !dbg !1540

; <label>:75:                                     ; preds = %73
  %76 = load i16, i16* %47, align 2, !dbg !1541, !tbaa !603
  %77 = zext i16 %76 to i32, !dbg !1541
  %78 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %77, %struct._bufhead* %46, i32 0) #6, !dbg !1543
  %79 = icmp eq %struct._bufhead* %78, null, !dbg !1544
  br i1 %79, label %80, label %83, !dbg !1546

; <label>:80:                                     ; preds = %75
  %81 = load i8, i8* %34, align 8, !dbg !1547, !tbaa !1508
  %82 = and i8 %81, -9, !dbg !1547
  store i8 %82, i8* %34, align 8, !dbg !1547, !tbaa !1508
  br label %183, !dbg !1549

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %78, i64 0, i32 4, !dbg !1550
  %85 = bitcast i8** %84 to i16**, !dbg !1550
  %86 = load i16*, i16** %85, align 8, !dbg !1550, !tbaa !1087
  %87 = getelementptr inbounds i16, i16* %86, i64 1, !dbg !1551
  %88 = load i16, i16* %86, align 2, !dbg !1552, !tbaa !603
  %89 = zext i16 %88 to i32, !dbg !1552
  %90 = load i32, i32* %7, align 4, !dbg !1553, !tbaa !363
  br label %120, !dbg !1554

; <label>:91:                                     ; preds = %73
  %92 = call i32 @__find_bigpair(%struct.htab* %0, %struct._bufhead* %46, i32 %49, i8* %13, i32 %11) #6, !dbg !1555
  %93 = icmp sgt i32 %92, 0, !dbg !1559
  br i1 %93, label %140, label %94, !dbg !1560

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i32 %92, -2, !dbg !1561
  br i1 %95, label %96, label %117, !dbg !1563

; <label>:96:                                     ; preds = %94
  store %struct._bufhead* %46, %struct._bufhead** %5, align 8, !dbg !1565, !tbaa !343
  %97 = call zeroext i16 @__find_last_page(%struct.htab* %0, %struct._bufhead** nonnull %5) #6, !dbg !1567
  %98 = icmp eq i16 %97, 0, !dbg !1570
  br i1 %98, label %99, label %101, !dbg !1571

; <label>:99:                                     ; preds = %96
  %100 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1572, !tbaa !343
  br label %127, !dbg !1574

; <label>:101:                                    ; preds = %96
  %102 = zext i16 %97 to i32, !dbg !1575
  %103 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1576, !tbaa !343
  %104 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %102, %struct._bufhead* %103, i32 0) #6, !dbg !1577
  %105 = icmp eq %struct._bufhead* %104, null, !dbg !1578
  br i1 %105, label %106, label %109, !dbg !1580

; <label>:106:                                    ; preds = %101
  %107 = load i8, i8* %34, align 8, !dbg !1581, !tbaa !1508
  %108 = and i8 %107, -9, !dbg !1581
  store i8 %108, i8* %34, align 8, !dbg !1581, !tbaa !1508
  br label %183, !dbg !1583

; <label>:109:                                    ; preds = %101
  %110 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %104, i64 0, i32 4, !dbg !1584
  %111 = bitcast i8** %110 to i16**, !dbg !1584
  %112 = load i16*, i16** %111, align 8, !dbg !1584, !tbaa !1087
  %113 = getelementptr inbounds i16, i16* %112, i64 1, !dbg !1585
  %114 = load i16, i16* %112, align 2, !dbg !1586, !tbaa !603
  %115 = zext i16 %114 to i32, !dbg !1586
  %116 = load i32, i32* %7, align 4, !dbg !1587, !tbaa !363
  br label %120, !dbg !1588

; <label>:117:                                    ; preds = %94
  %118 = load i8, i8* %34, align 8, !dbg !1589, !tbaa !1508
  %119 = and i8 %118, -9, !dbg !1589
  store i8 %119, i8* %34, align 8, !dbg !1589, !tbaa !1508
  br label %183, !dbg !1591

; <label>:120:                                    ; preds = %83, %109, %68
  %121 = phi i32 [ %50, %68 ], [ %89, %83 ], [ %115, %109 ], !dbg !1592
  %122 = phi i32 [ %72, %68 ], [ 1, %83 ], [ 1, %109 ], !dbg !1592
  %123 = phi i32 [ %70, %68 ], [ %90, %83 ], [ %116, %109 ], !dbg !1593
  %124 = phi i16* [ %71, %68 ], [ %87, %83 ], [ %113, %109 ], !dbg !1592
  %125 = phi %struct._bufhead* [ %46, %68 ], [ %78, %83 ], [ %104, %109 ], !dbg !1593
  %126 = icmp slt i32 %122, %121, !dbg !1514
  br i1 %126, label %45, label %127, !dbg !1516, !llvm.loop !1594

; <label>:127:                                    ; preds = %120, %33, %99
  %128 = phi %struct._bufhead* [ %100, %99 ], [ %31, %33 ], [ %125, %120 ], !dbg !1593
  %129 = add i32 %1, -1, !dbg !1596
  %130 = icmp ult i32 %129, 2, !dbg !1596
  br i1 %130, label %131, label %137, !dbg !1596

; <label>:131:                                    ; preds = %127
  %132 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %128, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1597
  %133 = icmp ne i32 %132, 0, !dbg !1597
  %134 = load i8, i8* %34, align 8, !dbg !1600, !tbaa !1508
  %135 = and i8 %134, -9, !dbg !1600
  store i8 %135, i8* %34, align 8, !dbg !1600, !tbaa !1508
  %136 = sext i1 %133 to i32, !dbg !1602
  br label %183, !dbg !1602

; <label>:137:                                    ; preds = %127
  %138 = load i8, i8* %34, align 8, !dbg !1603, !tbaa !1508
  %139 = and i8 %138, -9, !dbg !1603
  store i8 %139, i8* %34, align 8, !dbg !1603, !tbaa !1508
  br label %183, !dbg !1604

; <label>:140:                                    ; preds = %91, %59
  %141 = phi i32 [ %49, %59 ], [ %92, %91 ], !dbg !1605
  switch i32 %1, label %179 [
    i32 2, label %142
    i32 0, label %145
    i32 1, label %167
    i32 3, label %176
  ], !dbg !1606

; <label>:142:                                    ; preds = %140
  %143 = load i8, i8* %34, align 8, !dbg !1607, !tbaa !1508
  %144 = and i8 %143, -9, !dbg !1607
  store i8 %144, i8* %34, align 8, !dbg !1607, !tbaa !1508
  br label %183, !dbg !1609

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !1610
  %147 = load i8*, i8** %146, align 8, !dbg !1610, !tbaa !1087
  %148 = bitcast i8* %147 to i16*, !dbg !1611
  %149 = add nsw i32 %141, 1, !dbg !1612
  %150 = sext i32 %149 to i64, !dbg !1614
  %151 = getelementptr inbounds i16, i16* %148, i64 %150, !dbg !1614
  %152 = load i16, i16* %151, align 2, !dbg !1614, !tbaa !603
  %153 = icmp ult i16 %152, 4, !dbg !1615
  br i1 %153, label %154, label %157, !dbg !1616

; <label>:154:                                    ; preds = %145
  %155 = call i32 @__big_return(%struct.htab* %0, %struct._bufhead* nonnull %46, i32 %141, %struct.DBT* %3, i32 0) #6, !dbg !1617
  %156 = icmp eq i32 %155, 0, !dbg !1617
  br i1 %156, label %180, label %183, !dbg !1620

; <label>:157:                                    ; preds = %145
  %158 = zext i16 %152 to i64, !dbg !1621
  %159 = getelementptr inbounds i8, i8* %147, i64 %158, !dbg !1621
  %160 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !1623
  store i8* %159, i8** %160, align 8, !dbg !1624, !tbaa !1151
  %161 = sext i32 %141 to i64, !dbg !1625
  %162 = getelementptr inbounds i16, i16* %148, i64 %161, !dbg !1625
  %163 = load i16, i16* %162, align 2, !dbg !1625, !tbaa !603
  %164 = zext i16 %163 to i64, !dbg !1625
  %165 = sub nsw i64 %164, %158, !dbg !1626
  %166 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !1627
  store i64 %165, i64* %166, align 8, !dbg !1628, !tbaa !1163
  br label %180

; <label>:167:                                    ; preds = %140
  %168 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %46, i32 %141) #6, !dbg !1629
  %169 = icmp eq i32 %168, 0, !dbg !1629
  br i1 %169, label %170, label %173, !dbg !1631

; <label>:170:                                    ; preds = %167
  %171 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %46, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1632
  %172 = icmp eq i32 %171, 0, !dbg !1632
  br i1 %172, label %180, label %173, !dbg !1633

; <label>:173:                                    ; preds = %170, %167
  %174 = load i8, i8* %34, align 8, !dbg !1634, !tbaa !1508
  %175 = and i8 %174, -9, !dbg !1634
  store i8 %175, i8* %34, align 8, !dbg !1634, !tbaa !1508
  br label %183, !dbg !1636

; <label>:176:                                    ; preds = %140
  %177 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %46, i32 %141) #6, !dbg !1637
  %178 = icmp eq i32 %177, 0, !dbg !1637
  br i1 %178, label %180, label %183, !dbg !1639

; <label>:179:                                    ; preds = %140
  call void @abort() #8, !dbg !1640
  unreachable, !dbg !1640

; <label>:180:                                    ; preds = %154, %170, %176, %157
  %181 = load i8, i8* %34, align 8, !dbg !1641, !tbaa !1508
  %182 = and i8 %181, -9, !dbg !1641
  store i8 %182, i8* %34, align 8, !dbg !1641, !tbaa !1508
  br label %183, !dbg !1642

; <label>:183:                                    ; preds = %176, %154, %131, %29, %180, %173, %142, %137, %117, %106, %80
  %184 = phi i32 [ 0, %180 ], [ -1, %173 ], [ 1, %142 ], [ -1, %80 ], [ -1, %106 ], [ 1, %137 ], [ -1, %117 ], [ -1, %29 ], [ %136, %131 ], [ -1, %154 ], [ -1, %176 ], !dbg !1643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  ret i32 %184, !dbg !1644
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
!265 = !DILocation(line: 142, column: 22, scope: !264)
!266 = !DILocation(line: 142, column: 12, scope: !264)
!267 = !DILocation(line: 119, column: 14, scope: !172)
!268 = !DILocation(line: 146, column: 7, scope: !264)
!269 = !DILocation(line: 146, column: 28, scope: !264)
!270 = !DILocation(line: 146, column: 32, scope: !264)
!271 = !DILocation(line: 146, column: 38, scope: !264)
!272 = !DILocation(line: 142, column: 6, scope: !172)
!273 = !DILocation(line: 148, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 148, column: 7)
!275 = distinct !DILexicalBlock(scope: !264, file: !1, line: 146, column: 51)
!276 = !DILocation(line: 148, column: 13, scope: !274)
!277 = !DILocation(line: 148, column: 7, scope: !275)
!278 = !DILocation(line: 149, column: 4, scope: !274)
!279 = !DILocation(line: 149, column: 10, scope: !274)
!280 = !DILocation(line: 0, scope: !172)
!281 = !DILocation(line: 152, column: 6, scope: !172)
!282 = !DILocation(line: 153, column: 20, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 153, column: 7)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 152, column: 12)
!285 = distinct !DILexicalBlock(scope: !172, file: !1, line: 152, column: 6)
!286 = !DILocation(line: 153, column: 18, scope: !283)
!287 = !DILocation(line: 153, column: 45, scope: !283)
!288 = !DILocation(line: 153, column: 7, scope: !284)
!289 = !DILocation(line: 154, column: 4, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !1, line: 154, column: 4)
!291 = !DILocation(line: 122, column: 41, scope: !172)
!292 = !DILocation(line: 158, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !284, file: !1, line: 158, column: 7)
!294 = !DILocation(line: 158, column: 25, scope: !293)
!295 = !DILocation(line: 162, column: 8, scope: !293)
!296 = !DILocation(line: 162, column: 35, scope: !293)
!297 = !DILocation(line: 162, column: 40, scope: !293)
!298 = !DILocation(line: 162, column: 51, scope: !293)
!299 = !{!300, !302, i64 16}
!300 = !{!"stat", !301, i64 0, !301, i64 2, !242, i64 4, !301, i64 8, !301, i64 10, !301, i64 12, !301, i64 14, !302, i64 16, !303, i64 24, !303, i64 40, !303, i64 56, !302, i64 72, !302, i64 80}
!301 = !{!"short", !243, i64 0}
!302 = !{!"long", !243, i64 0}
!303 = !{!"timespec", !302, i64 0, !302, i64 8}
!304 = !DILocation(line: 162, column: 59, scope: !293)
!305 = !DILocation(line: 170, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !172, file: !1, line: 170, column: 6)
!307 = !DILocation(line: 170, column: 6, scope: !172)
!308 = !DILocalVariable(name: "hashp", arg: 1, scope: !309, file: !1, line: 315, type: !20)
!309 = distinct !DISubprogram(name: "init_hash", scope: !1, file: !1, line: 314, type: !310, isLocal: true, isDefinition: true, scopeLine: 318, isOptimized: true, unit: !0, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!20, !20, !175, !177}
!312 = !{!308, !313, !314, !315, !316}
!313 = !DILocalVariable(name: "file", arg: 2, scope: !309, file: !1, line: 316, type: !175)
!314 = !DILocalVariable(name: "info", arg: 3, scope: !309, file: !1, line: 317, type: !177)
!315 = !DILocalVariable(name: "statbuf", scope: !309, file: !1, line: 322, type: !187)
!316 = !DILocalVariable(name: "nelem", scope: !309, file: !1, line: 324, type: !29)
!317 = !DILocation(line: 315, column: 8, scope: !309, inlinedAt: !318)
!318 = distinct !DILocation(line: 171, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 171, column: 7)
!320 = distinct !DILexicalBlock(scope: !306, file: !1, line: 170, column: 17)
!321 = !DILocation(line: 316, column: 14, scope: !309, inlinedAt: !318)
!322 = !DILocation(line: 317, column: 18, scope: !309, inlinedAt: !318)
!323 = !DILocation(line: 322, column: 2, scope: !309, inlinedAt: !318)
!324 = !DILocation(line: 324, column: 6, scope: !309, inlinedAt: !318)
!325 = !DILocation(line: 327, column: 9, scope: !309, inlinedAt: !318)
!326 = !DILocation(line: 327, column: 15, scope: !309, inlinedAt: !318)
!327 = !{!255, !242, i64 56}
!328 = !DILocation(line: 328, column: 15, scope: !309, inlinedAt: !318)
!329 = !DILocation(line: 329, column: 9, scope: !309, inlinedAt: !318)
!330 = !DILocation(line: 330, column: 9, scope: !309, inlinedAt: !318)
!331 = !DILocation(line: 331, column: 9, scope: !309, inlinedAt: !318)
!332 = !DILocation(line: 331, column: 16, scope: !309, inlinedAt: !318)
!333 = !{!255, !242, i64 24}
!334 = !DILocation(line: 332, column: 9, scope: !309, inlinedAt: !318)
!335 = !DILocation(line: 332, column: 16, scope: !309, inlinedAt: !318)
!336 = !{!255, !242, i64 28}
!337 = !DILocation(line: 333, column: 9, scope: !309, inlinedAt: !318)
!338 = !DILocation(line: 328, column: 22, scope: !309, inlinedAt: !318)
!339 = !DILocation(line: 334, column: 9, scope: !309, inlinedAt: !318)
!340 = !DILocation(line: 334, column: 17, scope: !309, inlinedAt: !318)
!341 = !{!255, !242, i64 52}
!342 = !DILocation(line: 335, column: 16, scope: !309, inlinedAt: !318)
!343 = !{!257, !257, i64 0}
!344 = !DILocation(line: 335, column: 9, scope: !309, inlinedAt: !318)
!345 = !DILocation(line: 335, column: 14, scope: !309, inlinedAt: !318)
!346 = !{!255, !257, i64 272}
!347 = !DILocation(line: 336, column: 9, scope: !309, inlinedAt: !318)
!348 = !DILocation(line: 336, column: 2, scope: !309, inlinedAt: !318)
!349 = !DILocation(line: 337, column: 9, scope: !309, inlinedAt: !318)
!350 = !DILocation(line: 337, column: 2, scope: !309, inlinedAt: !318)
!351 = !DILocation(line: 340, column: 11, scope: !352, inlinedAt: !318)
!352 = distinct !DILexicalBlock(scope: !309, file: !1, line: 340, column: 6)
!353 = !DILocation(line: 340, column: 6, scope: !309, inlinedAt: !318)
!354 = !DILocation(line: 322, column: 14, scope: !309, inlinedAt: !318)
!355 = !DILocation(line: 344, column: 7, scope: !356, inlinedAt: !318)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 344, column: 7)
!357 = distinct !DILexicalBlock(scope: !352, file: !1, line: 340, column: 20)
!358 = !DILocation(line: 344, column: 7, scope: !357, inlinedAt: !318)
!359 = !DILocation(line: 347, column: 26, scope: !357, inlinedAt: !318)
!360 = !{!300, !302, i64 72}
!361 = !DILocation(line: 347, column: 18, scope: !357, inlinedAt: !318)
!362 = !DILocation(line: 347, column: 16, scope: !357, inlinedAt: !318)
!363 = !{!255, !242, i64 12}
!364 = !DILocation(line: 348, column: 19, scope: !357, inlinedAt: !318)
!365 = !DILocation(line: 348, column: 17, scope: !357, inlinedAt: !318)
!366 = !{!255, !242, i64 16}
!367 = !DILocation(line: 349, column: 2, scope: !357, inlinedAt: !318)
!368 = !DILocation(line: 351, column: 6, scope: !369, inlinedAt: !318)
!369 = distinct !DILexicalBlock(scope: !309, file: !1, line: 351, column: 6)
!370 = !DILocation(line: 351, column: 6, scope: !309, inlinedAt: !318)
!371 = !DILocation(line: 352, column: 13, scope: !372, inlinedAt: !318)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 352, column: 7)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 351, column: 12)
!374 = !{!375, !242, i64 0}
!375 = !{!"", !242, i64 0, !242, i64 4, !242, i64 8, !242, i64 12, !257, i64 16, !242, i64 24}
!376 = !DILocation(line: 352, column: 7, scope: !372, inlinedAt: !318)
!377 = !DILocation(line: 352, column: 7, scope: !373, inlinedAt: !318)
!378 = !DILocation(line: 354, column: 20, scope: !379, inlinedAt: !318)
!379 = distinct !DILexicalBlock(scope: !372, file: !1, line: 352, column: 20)
!380 = !DILocation(line: 354, column: 18, scope: !379, inlinedAt: !318)
!381 = !DILocation(line: 355, column: 21, scope: !379, inlinedAt: !318)
!382 = !DILocation(line: 355, column: 17, scope: !379, inlinedAt: !318)
!383 = !DILocation(line: 356, column: 21, scope: !384, inlinedAt: !318)
!384 = distinct !DILexicalBlock(scope: !379, file: !1, line: 356, column: 8)
!385 = !DILocation(line: 356, column: 8, scope: !379, inlinedAt: !318)
!386 = !DILocation(line: 357, column: 5, scope: !387, inlinedAt: !318)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 356, column: 34)
!388 = !DILocation(line: 357, column: 11, scope: !387, inlinedAt: !318)
!389 = !DILocation(line: 358, column: 5, scope: !387, inlinedAt: !318)
!390 = !DILocation(line: 361, column: 13, scope: !391, inlinedAt: !318)
!391 = distinct !DILexicalBlock(scope: !373, file: !1, line: 361, column: 7)
!392 = !{!375, !242, i64 4}
!393 = !DILocation(line: 361, column: 7, scope: !391, inlinedAt: !318)
!394 = !DILocation(line: 361, column: 7, scope: !373, inlinedAt: !318)
!395 = !DILocation(line: 362, column: 19, scope: !391, inlinedAt: !318)
!396 = !DILocation(line: 362, column: 4, scope: !391, inlinedAt: !318)
!397 = !DILocation(line: 363, column: 13, scope: !398, inlinedAt: !318)
!398 = distinct !DILexicalBlock(scope: !373, file: !1, line: 363, column: 7)
!399 = !{!375, !257, i64 16}
!400 = !DILocation(line: 363, column: 7, scope: !398, inlinedAt: !318)
!401 = !DILocation(line: 363, column: 7, scope: !373, inlinedAt: !318)
!402 = !DILocation(line: 364, column: 16, scope: !398, inlinedAt: !318)
!403 = !DILocation(line: 364, column: 4, scope: !398, inlinedAt: !318)
!404 = !DILocation(line: 365, column: 13, scope: !405, inlinedAt: !318)
!405 = distinct !DILexicalBlock(scope: !373, file: !1, line: 365, column: 7)
!406 = !{!375, !242, i64 8}
!407 = !DILocation(line: 365, column: 7, scope: !405, inlinedAt: !318)
!408 = !DILocation(line: 365, column: 7, scope: !373, inlinedAt: !318)
!409 = !DILocation(line: 367, column: 13, scope: !410, inlinedAt: !318)
!410 = distinct !DILexicalBlock(scope: !373, file: !1, line: 367, column: 7)
!411 = !{!375, !242, i64 24}
!412 = !DILocation(line: 367, column: 7, scope: !373, inlinedAt: !318)
!413 = !DILocation(line: 370, column: 5, scope: !414, inlinedAt: !318)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 369, column: 62)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 368, column: 28)
!416 = distinct !DILexicalBlock(scope: !410, file: !1, line: 367, column: 21)
!417 = !DILocation(line: 370, column: 11, scope: !414, inlinedAt: !318)
!418 = !DILocation(line: 371, column: 5, scope: !414, inlinedAt: !318)
!419 = !DILocation(line: 373, column: 18, scope: !416, inlinedAt: !318)
!420 = !{!255, !242, i64 8}
!421 = !DILocation(line: 374, column: 3, scope: !416, inlinedAt: !318)
!422 = !DILocation(line: 0, scope: !309, inlinedAt: !318)
!423 = !DILocalVariable(name: "hashp", arg: 1, scope: !424, file: !1, line: 390, type: !20)
!424 = distinct !DISubprogram(name: "init_htab", scope: !1, file: !1, line: 389, type: !425, isLocal: true, isDefinition: true, scopeLine: 392, isOptimized: true, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!29, !20, !29}
!427 = !{!423, !428, !429, !430, !431}
!428 = !DILocalVariable(name: "nelem", arg: 2, scope: !424, file: !1, line: 391, type: !29)
!429 = !DILocalVariable(name: "nbuckets", scope: !424, file: !1, line: 393, type: !29)
!430 = !DILocalVariable(name: "nsegs", scope: !424, file: !1, line: 393, type: !29)
!431 = !DILocalVariable(name: "l2", scope: !424, file: !1, line: 394, type: !29)
!432 = !DILocation(line: 390, column: 8, scope: !424, inlinedAt: !433)
!433 = distinct !DILocation(line: 377, column: 6, scope: !434, inlinedAt: !318)
!434 = distinct !DILexicalBlock(scope: !309, file: !1, line: 377, column: 6)
!435 = !DILocation(line: 391, column: 6, scope: !424, inlinedAt: !433)
!436 = !DILocation(line: 401, column: 17, scope: !424, inlinedAt: !433)
!437 = !DILocation(line: 401, column: 31, scope: !424, inlinedAt: !433)
!438 = !DILocation(line: 401, column: 22, scope: !424, inlinedAt: !433)
!439 = !DILocation(line: 401, column: 39, scope: !424, inlinedAt: !433)
!440 = !DILocation(line: 403, column: 14, scope: !424, inlinedAt: !433)
!441 = !DILocation(line: 403, column: 7, scope: !424, inlinedAt: !433)
!442 = !DILocation(line: 394, column: 6, scope: !424, inlinedAt: !433)
!443 = !DILocation(line: 404, column: 15, scope: !424, inlinedAt: !433)
!444 = !DILocation(line: 393, column: 6, scope: !424, inlinedAt: !433)
!445 = !DILocation(line: 406, column: 25, scope: !424, inlinedAt: !433)
!446 = !DILocation(line: 406, column: 2, scope: !424, inlinedAt: !433)
!447 = !DILocation(line: 406, column: 20, scope: !424, inlinedAt: !433)
!448 = !DILocation(line: 407, column: 2, scope: !424, inlinedAt: !433)
!449 = !DILocation(line: 407, column: 24, scope: !424, inlinedAt: !433)
!450 = !DILocation(line: 408, column: 9, scope: !424, inlinedAt: !433)
!451 = !DILocation(line: 408, column: 20, scope: !424, inlinedAt: !433)
!452 = !{!255, !242, i64 32}
!453 = !DILocation(line: 409, column: 9, scope: !424, inlinedAt: !433)
!454 = !DILocation(line: 409, column: 20, scope: !424, inlinedAt: !433)
!455 = !{!255, !242, i64 36}
!456 = !DILocation(line: 412, column: 23, scope: !457, inlinedAt: !433)
!457 = distinct !DILexicalBlock(scope: !424, file: !1, line: 412, column: 6)
!458 = !DILocation(line: 412, column: 6, scope: !457, inlinedAt: !433)
!459 = !DILocation(line: 412, column: 6, scope: !424, inlinedAt: !433)
!460 = !DILocation(line: 426, column: 1, scope: !424, inlinedAt: !433)
!461 = !DILocation(line: 380, column: 3, scope: !434, inlinedAt: !318)
!462 = !DILocation(line: 415, column: 49, scope: !424, inlinedAt: !433)
!463 = !DILocation(line: 415, column: 29, scope: !424, inlinedAt: !433)
!464 = !DILocation(line: 415, column: 38, scope: !424, inlinedAt: !433)
!465 = !{!255, !242, i64 48}
!466 = !DILocation(line: 415, column: 9, scope: !424, inlinedAt: !433)
!467 = !DILocation(line: 415, column: 20, scope: !424, inlinedAt: !433)
!468 = !{!255, !242, i64 40}
!469 = !DILocation(line: 416, column: 31, scope: !424, inlinedAt: !433)
!470 = !DILocation(line: 416, column: 37, scope: !424, inlinedAt: !433)
!471 = !DILocation(line: 416, column: 9, scope: !424, inlinedAt: !433)
!472 = !DILocation(line: 416, column: 19, scope: !424, inlinedAt: !433)
!473 = !{!255, !242, i64 44}
!474 = !DILocation(line: 418, column: 13, scope: !424, inlinedAt: !433)
!475 = !DILocation(line: 417, column: 60, scope: !424, inlinedAt: !433)
!476 = !DILocation(line: 417, column: 20, scope: !424, inlinedAt: !433)
!477 = !DILocation(line: 417, column: 9, scope: !424, inlinedAt: !433)
!478 = !DILocation(line: 417, column: 18, scope: !424, inlinedAt: !433)
!479 = !{!255, !242, i64 60}
!480 = !DILocation(line: 420, column: 34, scope: !424, inlinedAt: !433)
!481 = !DILocation(line: 420, column: 25, scope: !424, inlinedAt: !433)
!482 = !DILocation(line: 420, column: 41, scope: !424, inlinedAt: !433)
!483 = !DILocation(line: 393, column: 16, scope: !424, inlinedAt: !433)
!484 = !DILocation(line: 421, column: 15, scope: !424, inlinedAt: !433)
!485 = !DILocation(line: 421, column: 12, scope: !424, inlinedAt: !433)
!486 = !DILocation(line: 423, column: 21, scope: !487, inlinedAt: !433)
!487 = distinct !DILexicalBlock(scope: !424, file: !1, line: 423, column: 6)
!488 = !{!255, !242, i64 20}
!489 = !DILocation(line: 423, column: 12, scope: !487, inlinedAt: !433)
!490 = !DILocation(line: 423, column: 6, scope: !424, inlinedAt: !433)
!491 = !DILocation(line: 424, column: 16, scope: !487, inlinedAt: !433)
!492 = !DILocation(line: 424, column: 3, scope: !487, inlinedAt: !433)
!493 = !DILocation(line: 425, column: 10, scope: !424, inlinedAt: !433)
!494 = !DILocation(line: 377, column: 6, scope: !434, inlinedAt: !318)
!495 = !DILocation(line: 381, column: 1, scope: !309, inlinedAt: !318)
!496 = !DILocation(line: 175, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !1, line: 175, column: 7)
!498 = distinct !DILexicalBlock(scope: !306, file: !1, line: 173, column: 9)
!499 = !DILocation(line: 175, column: 12, scope: !497)
!500 = !DILocation(line: 175, column: 21, scope: !497)
!501 = !DILocation(line: 175, column: 15, scope: !497)
!502 = !DILocation(line: 175, column: 7, scope: !498)
!503 = !DILocation(line: 176, column: 11, scope: !497)
!504 = !DILocation(line: 176, column: 16, scope: !497)
!505 = !DILocation(line: 176, column: 4, scope: !497)
!506 = !DILocation(line: 178, column: 18, scope: !497)
!507 = !DILocation(line: 178, column: 11, scope: !497)
!508 = !DILocation(line: 178, column: 16, scope: !497)
!509 = !DILocation(line: 180, column: 25, scope: !498)
!510 = !DILocation(line: 180, column: 13, scope: !498)
!511 = !DILocation(line: 122, column: 14, scope: !172)
!512 = !DILocalVariable(name: "hashp", arg: 1, scope: !513, file: !1, line: 1009, type: !20)
!513 = distinct !DISubprogram(name: "swap_header", scope: !1, file: !1, line: 1008, type: !514, isLocal: true, isDefinition: true, scopeLine: 1010, isOptimized: true, unit: !0, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !20}
!516 = !{!512, !517, !519, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !559}
!517 = !DILocalVariable(name: "hdrp", scope: !513, file: !1, line: 1011, type: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!519 = !DILocalVariable(name: "i", scope: !513, file: !1, line: 1012, type: !29)
!520 = !DILocalVariable(name: "_tmp", scope: !521, file: !1, line: 1016, type: !32)
!521 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1016, column: 2)
!522 = !DILocalVariable(name: "_tmp", scope: !523, file: !1, line: 1017, type: !32)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1017, column: 2)
!524 = !DILocalVariable(name: "_tmp", scope: !525, file: !1, line: 1018, type: !32)
!525 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1018, column: 2)
!526 = !DILocalVariable(name: "_tmp", scope: !527, file: !1, line: 1019, type: !32)
!527 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1019, column: 2)
!528 = !DILocalVariable(name: "_tmp", scope: !529, file: !1, line: 1020, type: !32)
!529 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1020, column: 2)
!530 = !DILocalVariable(name: "_tmp", scope: !531, file: !1, line: 1021, type: !32)
!531 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1021, column: 2)
!532 = !DILocalVariable(name: "_tmp", scope: !533, file: !1, line: 1022, type: !32)
!533 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1022, column: 2)
!534 = !DILocalVariable(name: "_tmp", scope: !535, file: !1, line: 1023, type: !32)
!535 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1023, column: 2)
!536 = !DILocalVariable(name: "_tmp", scope: !537, file: !1, line: 1024, type: !32)
!537 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1024, column: 2)
!538 = !DILocalVariable(name: "_tmp", scope: !539, file: !1, line: 1025, type: !32)
!539 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1025, column: 2)
!540 = !DILocalVariable(name: "_tmp", scope: !541, file: !1, line: 1026, type: !32)
!541 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1026, column: 2)
!542 = !DILocalVariable(name: "_tmp", scope: !543, file: !1, line: 1027, type: !32)
!543 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1027, column: 2)
!544 = !DILocalVariable(name: "_tmp", scope: !545, file: !1, line: 1028, type: !32)
!545 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1028, column: 2)
!546 = !DILocalVariable(name: "_tmp", scope: !547, file: !1, line: 1029, type: !32)
!547 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1029, column: 2)
!548 = !DILocalVariable(name: "_tmp", scope: !549, file: !1, line: 1030, type: !32)
!549 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1030, column: 2)
!550 = !DILocalVariable(name: "_tmp", scope: !551, file: !1, line: 1031, type: !32)
!551 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1031, column: 2)
!552 = !DILocalVariable(name: "_tmp", scope: !553, file: !1, line: 1032, type: !32)
!553 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1032, column: 2)
!554 = !DILocalVariable(name: "_tmp", scope: !555, file: !1, line: 1034, type: !32)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 1034, column: 3)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 1033, column: 32)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1033, column: 2)
!558 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1033, column: 2)
!559 = !DILocalVariable(name: "_tmp", scope: !560, file: !1, line: 1035, type: !54)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 1035, column: 3)
!561 = !DILocation(line: 1009, column: 8, scope: !513, inlinedAt: !562)
!562 = distinct !DILocation(line: 182, column: 3, scope: !498)
!563 = !DILocation(line: 1011, column: 11, scope: !513, inlinedAt: !562)
!564 = !DILocation(line: 1016, column: 2, scope: !521, inlinedAt: !562)
!565 = !{!256, !242, i64 0}
!566 = !{!243, !243, i64 0}
!567 = !DILocation(line: 1017, column: 2, scope: !523, inlinedAt: !562)
!568 = !{!256, !242, i64 4}
!569 = !DILocation(line: 1018, column: 2, scope: !525, inlinedAt: !562)
!570 = !{!256, !242, i64 8}
!571 = !DILocation(line: 1019, column: 2, scope: !527, inlinedAt: !562)
!572 = !{!256, !242, i64 12}
!573 = !DILocation(line: 1020, column: 2, scope: !529, inlinedAt: !562)
!574 = !{!256, !242, i64 16}
!575 = !DILocation(line: 1021, column: 2, scope: !531, inlinedAt: !562)
!576 = !{!256, !242, i64 20}
!577 = !DILocation(line: 1022, column: 2, scope: !533, inlinedAt: !562)
!578 = !{!256, !242, i64 24}
!579 = !DILocation(line: 1023, column: 2, scope: !535, inlinedAt: !562)
!580 = !{!256, !242, i64 28}
!581 = !DILocation(line: 1024, column: 2, scope: !537, inlinedAt: !562)
!582 = !{!256, !242, i64 32}
!583 = !DILocation(line: 1025, column: 2, scope: !539, inlinedAt: !562)
!584 = !{!256, !242, i64 36}
!585 = !DILocation(line: 1026, column: 2, scope: !541, inlinedAt: !562)
!586 = !{!256, !242, i64 40}
!587 = !DILocation(line: 1027, column: 2, scope: !543, inlinedAt: !562)
!588 = !{!256, !242, i64 44}
!589 = !DILocation(line: 1028, column: 2, scope: !545, inlinedAt: !562)
!590 = !{!256, !242, i64 48}
!591 = !DILocation(line: 1029, column: 2, scope: !547, inlinedAt: !562)
!592 = !{!256, !242, i64 52}
!593 = !DILocation(line: 1030, column: 2, scope: !549, inlinedAt: !562)
!594 = !{!256, !242, i64 56}
!595 = !DILocation(line: 1031, column: 2, scope: !551, inlinedAt: !562)
!596 = !{!256, !242, i64 60}
!597 = !DILocation(line: 1032, column: 2, scope: !553, inlinedAt: !562)
!598 = !{!256, !242, i64 64}
!599 = !DILocation(line: 1012, column: 6, scope: !513, inlinedAt: !562)
!600 = !DILocation(line: 1033, column: 2, scope: !558, inlinedAt: !562)
!601 = !DILocation(line: 1034, column: 3, scope: !555, inlinedAt: !562)
!602 = !DILocation(line: 1035, column: 3, scope: !560, inlinedAt: !562)
!603 = !{!301, !301, i64 0}
!604 = !DILocation(line: 1033, column: 28, scope: !557, inlinedAt: !562)
!605 = !DILocation(line: 1033, column: 16, scope: !557, inlinedAt: !562)
!606 = distinct !{!606, !607, !608}
!607 = !DILocation(line: 1033, column: 2, scope: !558)
!608 = !DILocation(line: 1036, column: 2, scope: !558)
!609 = !DILocation(line: 1037, column: 1, scope: !513, inlinedAt: !562)
!610 = !DILocation(line: 184, column: 15, scope: !611)
!611 = distinct !DILexicalBlock(scope: !498, file: !1, line: 184, column: 7)
!612 = !DILocation(line: 184, column: 7, scope: !498)
!613 = !DILocation(line: 185, column: 4, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !1, line: 185, column: 4)
!615 = !DILocation(line: 186, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !498, file: !1, line: 186, column: 7)
!617 = !DILocation(line: 186, column: 7, scope: !498)
!618 = !DILocation(line: 189, column: 14, scope: !619)
!619 = distinct !DILexicalBlock(scope: !498, file: !1, line: 189, column: 7)
!620 = !{!255, !242, i64 0}
!621 = !DILocation(line: 189, column: 20, scope: !619)
!622 = !DILocation(line: 189, column: 7, scope: !498)
!623 = !DILocation(line: 192, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !498, file: !1, line: 192, column: 7)
!625 = !{!255, !242, i64 4}
!626 = !DILocation(line: 192, column: 42, scope: !624)
!627 = !DILocation(line: 195, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !498, file: !1, line: 195, column: 7)
!629 = !DILocation(line: 195, column: 7, scope: !628)
!630 = !DILocation(line: 195, column: 55, scope: !628)
!631 = !{!255, !242, i64 64}
!632 = !DILocation(line: 195, column: 45, scope: !628)
!633 = !DILocation(line: 195, column: 7, scope: !498)
!634 = !DILocation(line: 202, column: 19, scope: !498)
!635 = !DILocation(line: 202, column: 43, scope: !498)
!636 = !DILocation(line: 202, column: 50, scope: !498)
!637 = !DILocation(line: 202, column: 55, scope: !498)
!638 = !DILocation(line: 122, column: 34, scope: !172)
!639 = !DILocation(line: 204, column: 10, scope: !498)
!640 = !DILocation(line: 204, column: 16, scope: !498)
!641 = !{!255, !242, i64 260}
!642 = !DILocation(line: 205, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !498, file: !1, line: 205, column: 7)
!644 = !DILocation(line: 205, column: 7, scope: !498)
!645 = !DILocation(line: 212, column: 20, scope: !498)
!646 = !DILocation(line: 212, column: 34, scope: !498)
!647 = !DILocation(line: 212, column: 13, scope: !498)
!648 = !DILocation(line: 213, column: 15, scope: !498)
!649 = !DILocation(line: 213, column: 21, scope: !498)
!650 = !DILocation(line: 212, column: 46, scope: !498)
!651 = !DILocation(line: 213, column: 36, scope: !498)
!652 = !DILocation(line: 214, column: 15, scope: !498)
!653 = !DILocation(line: 214, column: 22, scope: !498)
!654 = !DILocation(line: 213, column: 41, scope: !498)
!655 = !DILocation(line: 122, column: 6, scope: !172)
!656 = !DILocation(line: 216, column: 10, scope: !498)
!657 = !DILocation(line: 216, column: 16, scope: !498)
!658 = !{!255, !242, i64 592}
!659 = !DILocation(line: 217, column: 24, scope: !498)
!660 = !DILocation(line: 217, column: 36, scope: !498)
!661 = !DILocation(line: 217, column: 43, scope: !498)
!662 = !DILocation(line: 217, column: 9, scope: !498)
!663 = !DILocation(line: 221, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !172, file: !1, line: 221, column: 6)
!665 = !DILocation(line: 221, column: 11, scope: !664)
!666 = !DILocation(line: 221, column: 20, scope: !664)
!667 = !{!375, !242, i64 12}
!668 = !DILocation(line: 221, column: 14, scope: !664)
!669 = !DILocation(line: 221, column: 6, scope: !172)
!670 = !DILocation(line: 222, column: 3, scope: !664)
!671 = !DILocation(line: 224, column: 3, scope: !664)
!672 = !DILocation(line: 226, column: 9, scope: !172)
!673 = !DILocation(line: 226, column: 18, scope: !172)
!674 = !{!255, !242, i64 324}
!675 = !DILocation(line: 227, column: 26, scope: !172)
!676 = !DILocation(line: 227, column: 37, scope: !172)
!677 = !DILocation(line: 227, column: 9, scope: !172)
!678 = !DILocation(line: 227, column: 19, scope: !172)
!679 = !{!255, !242, i64 328}
!680 = !DILocation(line: 228, column: 9, scope: !172)
!681 = !DILocation(line: 228, column: 17, scope: !172)
!682 = !{!255, !242, i64 312}
!683 = !DILocation(line: 229, column: 20, scope: !684)
!684 = distinct !DILexicalBlock(scope: !172, file: !1, line: 229, column: 6)
!685 = !DILocation(line: 229, column: 12, scope: !684)
!686 = !DILocation(line: 229, column: 6, scope: !172)
!687 = !DILocation(line: 230, column: 16, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !1, line: 229, column: 41)
!689 = !DILocation(line: 231, column: 3, scope: !688)
!690 = !DILocation(line: 232, column: 3, scope: !688)
!691 = !DILocation(line: 232, column: 9, scope: !688)
!692 = !DILocation(line: 233, column: 3, scope: !688)
!693 = !DILocation(line: 229, column: 14, scope: !684)
!694 = !DILocation(line: 121, column: 6, scope: !172)
!695 = !DILocation(line: 235, column: 7, scope: !172)
!696 = !DILocation(line: 235, column: 16, scope: !172)
!697 = !{!698, !257, i64 56}
!698 = !{!"__db", !243, i64 0, !257, i64 8, !257, i64 16, !257, i64 24, !257, i64 32, !257, i64 40, !257, i64 48, !257, i64 56, !257, i64 64}
!699 = !DILocation(line: 236, column: 7, scope: !172)
!700 = !DILocation(line: 236, column: 13, scope: !172)
!701 = !{!698, !257, i64 8}
!702 = !DILocation(line: 237, column: 7, scope: !172)
!703 = !DILocation(line: 237, column: 11, scope: !172)
!704 = !{!698, !257, i64 16}
!705 = !DILocation(line: 238, column: 7, scope: !172)
!706 = !DILocation(line: 238, column: 10, scope: !172)
!707 = !{!698, !257, i64 64}
!708 = !DILocation(line: 239, column: 7, scope: !172)
!709 = !DILocation(line: 239, column: 11, scope: !172)
!710 = !DILocation(line: 241, column: 7, scope: !172)
!711 = !DILocation(line: 241, column: 11, scope: !172)
!712 = !{!698, !257, i64 40}
!713 = !DILocation(line: 242, column: 7, scope: !172)
!714 = !DILocation(line: 242, column: 12, scope: !172)
!715 = !{!698, !257, i64 48}
!716 = !DILocation(line: 243, column: 7, scope: !172)
!717 = !DILocation(line: 243, column: 12, scope: !172)
!718 = !{!698, !243, i64 0}
!719 = !DILocation(line: 267, column: 2, scope: !172)
!720 = !DILocation(line: 172, column: 4, scope: !721)
!721 = distinct !DILexicalBlock(scope: !319, file: !1, line: 172, column: 4)
!722 = !DILocation(line: 270, column: 6, scope: !172)
!723 = !DILocation(line: 271, column: 22, scope: !724)
!724 = distinct !DILexicalBlock(scope: !172, file: !1, line: 270, column: 6)
!725 = !DILocation(line: 271, column: 9, scope: !724)
!726 = !DILocation(line: 271, column: 3, scope: !724)
!727 = !DILocation(line: 0, scope: !319)
!728 = !DILocation(line: 0, scope: !721)
!729 = !DILocation(line: 274, column: 2, scope: !172)
!730 = !DILocation(line: 275, column: 2, scope: !172)
!731 = !DILocation(line: 275, column: 8, scope: !172)
!732 = !DILocation(line: 276, column: 2, scope: !172)
!733 = !DILocation(line: 0, scope: !247)
!734 = !DILocation(line: 277, column: 1, scope: !172)
!735 = distinct !DISubprogram(name: "alloc_segs", scope: !1, file: !1, line: 945, type: !425, isLocal: true, isDefinition: true, scopeLine: 948, isOptimized: true, unit: !0, retainedNodes: !736)
!736 = !{!737, !738, !739, !740, !741}
!737 = !DILocalVariable(name: "hashp", arg: 1, scope: !735, file: !1, line: 946, type: !20)
!738 = !DILocalVariable(name: "nsegs", arg: 2, scope: !735, file: !1, line: 947, type: !29)
!739 = !DILocalVariable(name: "i", scope: !735, file: !1, line: 949, type: !29)
!740 = !DILocalVariable(name: "store", scope: !735, file: !1, line: 950, type: !99)
!741 = !DILocalVariable(name: "save_errno", scope: !735, file: !1, line: 952, type: !29)
!742 = !DILocation(line: 946, column: 8, scope: !735)
!743 = !DILocation(line: 947, column: 6, scope: !735)
!744 = !DILocation(line: 955, column: 31, scope: !745)
!745 = distinct !DILexicalBlock(scope: !735, file: !1, line: 954, column: 6)
!746 = !DILocation(line: 955, column: 24, scope: !745)
!747 = !DILocation(line: 955, column: 17, scope: !745)
!748 = !DILocation(line: 954, column: 14, scope: !745)
!749 = !DILocation(line: 954, column: 18, scope: !745)
!750 = !{!255, !257, i64 648}
!751 = !DILocation(line: 955, column: 58, scope: !745)
!752 = !DILocation(line: 954, column: 6, scope: !735)
!753 = !DILocation(line: 956, column: 16, scope: !754)
!754 = distinct !DILexicalBlock(scope: !745, file: !1, line: 955, column: 67)
!755 = !DILocation(line: 952, column: 6, scope: !735)
!756 = !DILocation(line: 957, column: 9, scope: !754)
!757 = !DILocation(line: 958, column: 3, scope: !754)
!758 = !DILocation(line: 958, column: 9, scope: !754)
!759 = !DILocation(line: 959, column: 3, scope: !754)
!760 = !DILocation(line: 963, column: 38, scope: !761)
!761 = distinct !DILexicalBlock(scope: !735, file: !1, line: 962, column: 6)
!762 = !DILocation(line: 963, column: 28, scope: !761)
!763 = !DILocation(line: 963, column: 22, scope: !761)
!764 = !DILocation(line: 963, column: 15, scope: !761)
!765 = !DILocation(line: 963, column: 6, scope: !761)
!766 = !DILocation(line: 950, column: 10, scope: !735)
!767 = !DILocation(line: 963, column: 64, scope: !761)
!768 = !DILocation(line: 962, column: 6, scope: !735)
!769 = !DILocation(line: 949, column: 6, scope: !735)
!770 = !DILocation(line: 969, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 969, column: 2)
!772 = distinct !DILexicalBlock(scope: !735, file: !1, line: 969, column: 2)
!773 = !DILocation(line: 969, column: 2, scope: !772)
!774 = !DILocation(line: 969, column: 42, scope: !771)
!775 = !DILocation(line: 964, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !761, file: !1, line: 963, column: 73)
!777 = !DILocation(line: 965, column: 9, scope: !776)
!778 = !DILocation(line: 966, column: 3, scope: !776)
!779 = !DILocation(line: 966, column: 9, scope: !776)
!780 = !DILocation(line: 967, column: 3, scope: !776)
!781 = !DILocation(line: 970, column: 28, scope: !771)
!782 = !DILocation(line: 970, column: 20, scope: !771)
!783 = !DILocation(line: 970, column: 10, scope: !771)
!784 = !DILocation(line: 970, column: 3, scope: !771)
!785 = !DILocation(line: 970, column: 17, scope: !771)
!786 = !DILocation(line: 969, column: 26, scope: !771)
!787 = distinct !{!787, !773, !788}
!788 = !DILocation(line: 970, column: 44, scope: !772)
!789 = distinct !{!789, !790}
!790 = !{!"llvm.loop.unroll.disable"}
!791 = !DILocation(line: 0, scope: !735)
!792 = !DILocation(line: 972, column: 1, scope: !735)
!793 = distinct !DISubprogram(name: "hdestroy", scope: !1, file: !1, line: 435, type: !794, isLocal: true, isDefinition: true, scopeLine: 437, isOptimized: true, unit: !0, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{!29, !20}
!796 = !{!797, !798, !799}
!797 = !DILocalVariable(name: "hashp", arg: 1, scope: !793, file: !1, line: 436, type: !20)
!798 = !DILocalVariable(name: "i", scope: !793, file: !1, line: 438, type: !29)
!799 = !DILocalVariable(name: "save_errno", scope: !793, file: !1, line: 438, type: !29)
!800 = !DILocation(line: 436, column: 8, scope: !793)
!801 = !DILocation(line: 438, column: 9, scope: !793)
!802 = !DILocation(line: 460, column: 34, scope: !803)
!803 = distinct !DILexicalBlock(scope: !793, file: !1, line: 460, column: 6)
!804 = !DILocation(line: 460, column: 6, scope: !803)
!805 = !DILocation(line: 460, column: 6, scope: !793)
!806 = !DILocation(line: 461, column: 16, scope: !803)
!807 = !DILocation(line: 461, column: 3, scope: !803)
!808 = !DILocation(line: 0, scope: !793)
!809 = !DILocation(line: 462, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !793, file: !1, line: 462, column: 6)
!811 = !DILocation(line: 462, column: 6, scope: !810)
!812 = !DILocation(line: 462, column: 6, scope: !793)
!813 = !DILocation(line: 463, column: 8, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !1, line: 462, column: 18)
!815 = !DILocation(line: 463, column: 3, scope: !814)
!816 = !DILocation(line: 465, column: 17, scope: !814)
!817 = !DILocation(line: 465, column: 23, scope: !814)
!818 = !{!255, !242, i64 264}
!819 = !DILocation(line: 465, column: 3, scope: !814)
!820 = !DILocation(line: 0, scope: !814)
!821 = !DILocation(line: 466, column: 20, scope: !814)
!822 = !DILocation(line: 466, column: 9, scope: !814)
!823 = !DILocation(line: 466, column: 4, scope: !814)
!824 = distinct !{!824, !819, !825}
!825 = !DILocation(line: 466, column: 35, scope: !814)
!826 = !DILocation(line: 467, column: 8, scope: !814)
!827 = !DILocation(line: 467, column: 3, scope: !814)
!828 = !DILocation(line: 468, column: 2, scope: !814)
!829 = !DILocation(line: 469, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !793, file: !1, line: 469, column: 6)
!831 = !DILocation(line: 469, column: 28, scope: !830)
!832 = !DILocation(line: 469, column: 24, scope: !830)
!833 = !DILocation(line: 470, column: 16, scope: !830)
!834 = !DILocation(line: 470, column: 3, scope: !830)
!835 = !DILocation(line: 0, scope: !830)
!836 = !DILocation(line: 438, column: 6, scope: !793)
!837 = !DILocation(line: 472, column: 25, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 472, column: 2)
!839 = distinct !DILexicalBlock(scope: !793, file: !1, line: 472, column: 2)
!840 = !DILocation(line: 472, column: 16, scope: !838)
!841 = !DILocation(line: 472, column: 2, scope: !839)
!842 = !DILocation(line: 473, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !1, line: 473, column: 7)
!844 = !DILocation(line: 473, column: 7, scope: !838)
!845 = !DILocation(line: 474, column: 9, scope: !843)
!846 = !DILocation(line: 474, column: 4, scope: !843)
!847 = !DILocation(line: 472, column: 33, scope: !838)
!848 = distinct !{!848, !841, !849}
!849 = !DILocation(line: 474, column: 23, scope: !839)
!850 = !DILocation(line: 476, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !793, file: !1, line: 476, column: 6)
!852 = !DILocation(line: 476, column: 16, scope: !851)
!853 = !DILocation(line: 476, column: 6, scope: !793)
!854 = !DILocation(line: 477, column: 9, scope: !851)
!855 = !DILocation(line: 477, column: 3, scope: !851)
!856 = !DILocation(line: 479, column: 7, scope: !793)
!857 = !DILocation(line: 479, column: 2, scope: !793)
!858 = !DILocation(line: 481, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !793, file: !1, line: 481, column: 6)
!860 = !DILocation(line: 481, column: 6, scope: !793)
!861 = !DILocation(line: 482, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !1, line: 481, column: 18)
!863 = !DILocation(line: 482, column: 9, scope: !862)
!864 = !DILocation(line: 483, column: 3, scope: !862)
!865 = !DILocation(line: 486, column: 1, scope: !793)
!866 = distinct !DISubprogram(name: "hash_close", scope: !1, file: !1, line: 280, type: !867, isLocal: true, isDefinition: true, scopeLine: 282, isOptimized: true, unit: !0, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!29, !113}
!869 = !{!870, !871, !872}
!870 = !DILocalVariable(name: "dbp", arg: 1, scope: !866, file: !1, line: 281, type: !113)
!871 = !DILocalVariable(name: "hashp", scope: !866, file: !1, line: 283, type: !20)
!872 = !DILocalVariable(name: "retval", scope: !866, file: !1, line: 284, type: !29)
!873 = !DILocation(line: 281, column: 6, scope: !866)
!874 = !DILocation(line: 286, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !866, file: !1, line: 286, column: 6)
!876 = !DILocation(line: 286, column: 6, scope: !866)
!877 = !DILocation(line: 289, column: 23, scope: !866)
!878 = !DILocation(line: 283, column: 8, scope: !866)
!879 = !DILocation(line: 290, column: 11, scope: !866)
!880 = !DILocation(line: 284, column: 6, scope: !866)
!881 = !DILocation(line: 291, column: 7, scope: !866)
!882 = !DILocation(line: 291, column: 2, scope: !866)
!883 = !DILocation(line: 292, column: 2, scope: !866)
!884 = !DILocation(line: 0, scope: !875)
!885 = !DILocation(line: 293, column: 1, scope: !866)
!886 = distinct !DISubprogram(name: "hash_delete", scope: !1, file: !1, line: 612, type: !887, isLocal: true, isDefinition: true, scopeLine: 616, isOptimized: true, unit: !0, retainedNodes: !891)
!887 = !DISubroutineType(types: !888)
!888 = !{!29, !889, !130, !106}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!891 = !{!892, !893, !894, !895}
!892 = !DILocalVariable(name: "dbp", arg: 1, scope: !886, file: !1, line: 613, type: !889)
!893 = !DILocalVariable(name: "key", arg: 2, scope: !886, file: !1, line: 614, type: !130)
!894 = !DILocalVariable(name: "flag", arg: 3, scope: !886, file: !1, line: 615, type: !106)
!895 = !DILocalVariable(name: "hashp", scope: !886, file: !1, line: 617, type: !20)
!896 = !DILocation(line: 613, column: 12, scope: !886)
!897 = !DILocation(line: 614, column: 13, scope: !886)
!898 = !DILocation(line: 615, column: 8, scope: !886)
!899 = !DILocation(line: 619, column: 23, scope: !886)
!900 = !DILocation(line: 617, column: 8, scope: !886)
!901 = !DILocation(line: 620, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !886, file: !1, line: 620, column: 6)
!903 = !DILocation(line: 621, column: 18, scope: !904)
!904 = distinct !DILexicalBlock(scope: !902, file: !1, line: 620, column: 32)
!905 = !DILocation(line: 621, column: 24, scope: !904)
!906 = !DILocation(line: 621, column: 10, scope: !904)
!907 = !DILocation(line: 621, column: 16, scope: !904)
!908 = !{!255, !242, i64 320}
!909 = !DILocation(line: 622, column: 3, scope: !904)
!910 = !DILocation(line: 624, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !886, file: !1, line: 624, column: 6)
!912 = !DILocation(line: 624, column: 20, scope: !911)
!913 = !DILocation(line: 624, column: 33, scope: !911)
!914 = !DILocation(line: 624, column: 6, scope: !886)
!915 = !DILocation(line: 625, column: 18, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !1, line: 624, column: 46)
!917 = !DILocation(line: 625, column: 24, scope: !916)
!918 = !DILocation(line: 625, column: 10, scope: !916)
!919 = !DILocation(line: 625, column: 16, scope: !916)
!920 = !DILocation(line: 626, column: 3, scope: !916)
!921 = !DILocation(line: 628, column: 10, scope: !886)
!922 = !DILocation(line: 628, column: 2, scope: !886)
!923 = !DILocation(line: 0, scope: !886)
!924 = !DILocation(line: 629, column: 1, scope: !886)
!925 = distinct !DISubprogram(name: "hash_fd", scope: !1, file: !1, line: 296, type: !926, isLocal: true, isDefinition: true, scopeLine: 298, isOptimized: true, unit: !0, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!29, !889}
!928 = !{!929, !930}
!929 = !DILocalVariable(name: "dbp", arg: 1, scope: !925, file: !1, line: 297, type: !889)
!930 = !DILocalVariable(name: "hashp", scope: !925, file: !1, line: 299, type: !20)
!931 = !DILocation(line: 297, column: 12, scope: !925)
!932 = !DILocation(line: 301, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !1, line: 301, column: 6)
!934 = !DILocation(line: 301, column: 6, scope: !925)
!935 = !DILocation(line: 304, column: 23, scope: !925)
!936 = !DILocation(line: 299, column: 8, scope: !925)
!937 = !DILocation(line: 305, column: 13, scope: !938)
!938 = distinct !DILexicalBlock(scope: !925, file: !1, line: 305, column: 6)
!939 = !DILocation(line: 305, column: 16, scope: !938)
!940 = !DILocation(line: 305, column: 6, scope: !925)
!941 = !DILocation(line: 306, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !1, line: 305, column: 23)
!943 = !DILocation(line: 306, column: 9, scope: !942)
!944 = !DILocation(line: 307, column: 3, scope: !942)
!945 = !DILocation(line: 0, scope: !933)
!946 = !DILocation(line: 310, column: 1, scope: !925)
!947 = distinct !DISubprogram(name: "hash_get", scope: !1, file: !1, line: 572, type: !948, isLocal: true, isDefinition: true, scopeLine: 577, isOptimized: true, unit: !0, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!29, !889, !130, !142, !106}
!950 = !{!951, !952, !953, !954, !955}
!951 = !DILocalVariable(name: "dbp", arg: 1, scope: !947, file: !1, line: 573, type: !889)
!952 = !DILocalVariable(name: "key", arg: 2, scope: !947, file: !1, line: 574, type: !130)
!953 = !DILocalVariable(name: "data", arg: 3, scope: !947, file: !1, line: 575, type: !142)
!954 = !DILocalVariable(name: "flag", arg: 4, scope: !947, file: !1, line: 576, type: !106)
!955 = !DILocalVariable(name: "hashp", scope: !947, file: !1, line: 578, type: !20)
!956 = !DILocation(line: 573, column: 12, scope: !947)
!957 = !DILocation(line: 574, column: 13, scope: !947)
!958 = !DILocation(line: 575, column: 7, scope: !947)
!959 = !DILocation(line: 576, column: 8, scope: !947)
!960 = !DILocation(line: 580, column: 23, scope: !947)
!961 = !DILocation(line: 578, column: 8, scope: !947)
!962 = !DILocation(line: 581, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !947, file: !1, line: 581, column: 6)
!964 = !DILocation(line: 581, column: 6, scope: !947)
!965 = !DILocation(line: 582, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !1, line: 581, column: 12)
!967 = !DILocation(line: 582, column: 24, scope: !966)
!968 = !DILocation(line: 582, column: 10, scope: !966)
!969 = !DILocation(line: 582, column: 16, scope: !966)
!970 = !DILocation(line: 583, column: 3, scope: !966)
!971 = !DILocation(line: 585, column: 10, scope: !947)
!972 = !DILocation(line: 585, column: 2, scope: !947)
!973 = !DILocation(line: 0, scope: !947)
!974 = !DILocation(line: 586, column: 1, scope: !947)
!975 = distinct !DISubprogram(name: "hash_put", scope: !1, file: !1, line: 589, type: !976, isLocal: true, isDefinition: true, scopeLine: 594, isOptimized: true, unit: !0, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!29, !889, !142, !130, !106}
!978 = !{!979, !980, !981, !982, !983}
!979 = !DILocalVariable(name: "dbp", arg: 1, scope: !975, file: !1, line: 590, type: !889)
!980 = !DILocalVariable(name: "key", arg: 2, scope: !975, file: !1, line: 591, type: !142)
!981 = !DILocalVariable(name: "data", arg: 3, scope: !975, file: !1, line: 592, type: !130)
!982 = !DILocalVariable(name: "flag", arg: 4, scope: !975, file: !1, line: 593, type: !106)
!983 = !DILocalVariable(name: "hashp", scope: !975, file: !1, line: 595, type: !20)
!984 = !DILocation(line: 590, column: 12, scope: !975)
!985 = !DILocation(line: 591, column: 7, scope: !975)
!986 = !DILocation(line: 592, column: 13, scope: !975)
!987 = !DILocation(line: 593, column: 8, scope: !975)
!988 = !DILocation(line: 597, column: 23, scope: !975)
!989 = !DILocation(line: 595, column: 8, scope: !975)
!990 = !DILocation(line: 598, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !975, file: !1, line: 598, column: 6)
!992 = !DILocation(line: 599, column: 10, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !1, line: 598, column: 37)
!994 = !DILocation(line: 599, column: 16, scope: !993)
!995 = !DILocation(line: 600, column: 3, scope: !993)
!996 = !DILocation(line: 600, column: 9, scope: !993)
!997 = !DILocation(line: 601, column: 3, scope: !993)
!998 = !DILocation(line: 603, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !975, file: !1, line: 603, column: 6)
!1000 = !DILocation(line: 603, column: 20, scope: !999)
!1001 = !DILocation(line: 603, column: 33, scope: !999)
!1002 = !DILocation(line: 603, column: 6, scope: !975)
!1003 = !DILocation(line: 604, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !1, line: 603, column: 46)
!1005 = !DILocation(line: 604, column: 24, scope: !1004)
!1006 = !DILocation(line: 604, column: 10, scope: !1004)
!1007 = !DILocation(line: 604, column: 16, scope: !1004)
!1008 = !DILocation(line: 605, column: 3, scope: !1004)
!1009 = !DILocation(line: 607, column: 34, scope: !975)
!1010 = !DILocation(line: 607, column: 29, scope: !975)
!1011 = !DILocation(line: 607, column: 10, scope: !975)
!1012 = !DILocation(line: 607, column: 2, scope: !975)
!1013 = !DILocation(line: 0, scope: !975)
!1014 = !DILocation(line: 609, column: 1, scope: !975)
!1015 = distinct !DISubprogram(name: "hash_seq", scope: !1, file: !1, line: 764, type: !1016, isLocal: true, isDefinition: true, scopeLine: 768, isOptimized: true, unit: !0, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!29, !889, !142, !142, !106}
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1019 = !DILocalVariable(name: "dbp", arg: 1, scope: !1015, file: !1, line: 765, type: !889)
!1020 = !DILocalVariable(name: "key", arg: 2, scope: !1015, file: !1, line: 766, type: !142)
!1021 = !DILocalVariable(name: "data", arg: 3, scope: !1015, file: !1, line: 766, type: !142)
!1022 = !DILocalVariable(name: "flag", arg: 4, scope: !1015, file: !1, line: 767, type: !106)
!1023 = !DILocalVariable(name: "bucket", scope: !1015, file: !1, line: 769, type: !32)
!1024 = !DILocalVariable(name: "bufp", scope: !1015, file: !1, line: 770, type: !76)
!1025 = !DILocalVariable(name: "hashp", scope: !1015, file: !1, line: 771, type: !20)
!1026 = !DILocalVariable(name: "bp", scope: !1015, file: !1, line: 772, type: !164)
!1027 = !DILocalVariable(name: "ndx", scope: !1015, file: !1, line: 772, type: !54)
!1028 = !DILocation(line: 765, column: 12, scope: !1015)
!1029 = !DILocation(line: 766, column: 7, scope: !1015)
!1030 = !DILocation(line: 766, column: 13, scope: !1015)
!1031 = !DILocation(line: 767, column: 8, scope: !1015)
!1032 = !DILocation(line: 774, column: 23, scope: !1015)
!1033 = !DILocation(line: 771, column: 8, scope: !1015)
!1034 = !DILocation(line: 775, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 775, column: 6)
!1036 = !DILocation(line: 776, column: 18, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 775, column: 49)
!1038 = !DILocation(line: 776, column: 24, scope: !1037)
!1039 = !DILocation(line: 776, column: 10, scope: !1037)
!1040 = !DILocation(line: 776, column: 16, scope: !1037)
!1041 = !DILocation(line: 777, column: 3, scope: !1037)
!1042 = !DILocation(line: 782, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 782, column: 6)
!1044 = !DILocation(line: 782, column: 22, scope: !1043)
!1045 = !DILocation(line: 782, column: 36, scope: !1043)
!1046 = !DILocation(line: 782, column: 27, scope: !1043)
!1047 = !DILocation(line: 783, column: 18, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 782, column: 49)
!1049 = !DILocation(line: 784, column: 10, scope: !1048)
!1050 = !DILocation(line: 784, column: 15, scope: !1048)
!1051 = !{!255, !242, i64 316}
!1052 = !DILocation(line: 785, column: 10, scope: !1048)
!1053 = !DILocation(line: 785, column: 16, scope: !1048)
!1054 = !{!255, !257, i64 304}
!1055 = !DILocation(line: 786, column: 2, scope: !1048)
!1056 = !DILocation(line: 772, column: 14, scope: !1015)
!1057 = !DILocation(line: 788, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 788, column: 2)
!1059 = !DILocation(line: 0, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 789, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 788, column: 35)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 788, column: 2)
!1063 = !DILocation(line: 770, column: 11, scope: !1015)
!1064 = !DILocation(line: 788, column: 19, scope: !1062)
!1065 = !DILocation(line: 788, column: 22, scope: !1062)
!1066 = !DILocation(line: 788, column: 26, scope: !1062)
!1067 = !DILocation(line: 788, column: 25, scope: !1062)
!1068 = !DILocation(line: 788, column: 2, scope: !1058)
!1069 = !DILocation(line: 789, column: 23, scope: !1060)
!1070 = !DILocation(line: 789, column: 14, scope: !1060)
!1071 = !DILocation(line: 789, column: 7, scope: !1061)
!1072 = !DILocation(line: 790, column: 25, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 790, column: 4)
!1074 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 789, column: 31)
!1075 = !DILocation(line: 769, column: 13, scope: !1015)
!1076 = !DILocation(line: 791, column: 25, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 790, column: 4)
!1078 = !DILocation(line: 791, column: 15, scope: !1077)
!1079 = !DILocation(line: 790, column: 4, scope: !1073)
!1080 = !DILocation(line: 793, column: 12, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 792, column: 35)
!1082 = !DILocation(line: 794, column: 10, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 794, column: 9)
!1084 = !DILocation(line: 794, column: 9, scope: !1081)
!1085 = !DILocation(line: 796, column: 18, scope: !1081)
!1086 = !DILocation(line: 797, column: 30, scope: !1081)
!1087 = !{!258, !257, i64 32}
!1088 = !DILocation(line: 798, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 798, column: 9)
!1090 = !DILocation(line: 798, column: 9, scope: !1081)
!1091 = !DILocation(line: 802, column: 32, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 802, column: 8)
!1093 = !DILocation(line: 792, column: 14, scope: !1077)
!1094 = !DILocation(line: 792, column: 30, scope: !1077)
!1095 = distinct !{!1095, !1079, !1096}
!1096 = !DILocation(line: 800, column: 4, scope: !1073)
!1097 = !DILocation(line: 0, scope: !1077)
!1098 = !DILocation(line: 0, scope: !1058)
!1099 = !DILocation(line: 801, column: 19, scope: !1074)
!1100 = !DILocation(line: 802, column: 23, scope: !1092)
!1101 = !DILocation(line: 802, column: 8, scope: !1074)
!1102 = !DILocation(line: 803, column: 20, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 802, column: 44)
!1104 = !DILocation(line: 804, column: 5, scope: !1103)
!1105 = !DILocation(line: 807, column: 37, scope: !1060)
!1106 = !DILocation(line: 0, scope: !1081)
!1107 = !DILocation(line: 813, column: 20, scope: !1061)
!1108 = !DILocation(line: 813, column: 25, scope: !1061)
!1109 = !DILocation(line: 813, column: 10, scope: !1061)
!1110 = !DILocation(line: 813, column: 30, scope: !1061)
!1111 = !DILocation(line: 813, column: 3, scope: !1061)
!1112 = !DILocation(line: 815, column: 25, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 813, column: 43)
!1114 = !DILocation(line: 815, column: 8, scope: !1113)
!1115 = !DILocation(line: 814, column: 24, scope: !1113)
!1116 = !DILocation(line: 816, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 816, column: 8)
!1118 = !DILocation(line: 816, column: 8, scope: !1113)
!1119 = !DILocation(line: 818, column: 30, scope: !1113)
!1120 = !DILocation(line: 819, column: 16, scope: !1113)
!1121 = distinct !{!1121, !1111, !1122}
!1122 = !DILocation(line: 820, column: 3, scope: !1061)
!1123 = !DILocation(line: 0, scope: !1113)
!1124 = !DILocation(line: 821, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 821, column: 7)
!1126 = !DILocation(line: 821, column: 7, scope: !1061)
!1127 = distinct !{!1127, !1068, !1128}
!1128 = !DILocation(line: 825, column: 2, scope: !1058)
!1129 = !DILocation(line: 822, column: 17, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 821, column: 15)
!1131 = !DILocation(line: 823, column: 4, scope: !1130)
!1132 = !DILocation(line: 824, column: 3, scope: !1130)
!1133 = !DILocation(line: 826, column: 15, scope: !1015)
!1134 = !DILocation(line: 827, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 827, column: 6)
!1136 = !DILocation(line: 827, column: 13, scope: !1135)
!1137 = !DILocation(line: 827, column: 6, scope: !1135)
!1138 = !DILocation(line: 827, column: 18, scope: !1135)
!1139 = !DILocation(line: 827, column: 6, scope: !1015)
!1140 = !DILocation(line: 828, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 828, column: 7)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 827, column: 30)
!1143 = !DILocation(line: 828, column: 7, scope: !1142)
!1144 = !DILocation(line: 831, column: 32, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 830, column: 9)
!1146 = !DILocation(line: 831, column: 39, scope: !1145)
!1147 = !DILocation(line: 831, column: 46, scope: !1145)
!1148 = !DILocation(line: 831, column: 44, scope: !1145)
!1149 = !DILocation(line: 831, column: 8, scope: !1145)
!1150 = !DILocation(line: 831, column: 13, scope: !1145)
!1151 = !{!1152, !257, i64 0}
!1152 = !{!"", !257, i64 0, !302, i64 8}
!1153 = !DILocation(line: 832, column: 20, scope: !1145)
!1154 = !DILocation(line: 832, column: 16, scope: !1145)
!1155 = !DILocation(line: 832, column: 33, scope: !1145)
!1156 = !DILocation(line: 832, column: 26, scope: !1145)
!1157 = !DILocation(line: 832, column: 47, scope: !1145)
!1158 = !DILocation(line: 832, column: 56, scope: !1145)
!1159 = !DILocation(line: 832, column: 54, scope: !1145)
!1160 = !DILocation(line: 832, column: 15, scope: !1145)
!1161 = !DILocation(line: 832, column: 8, scope: !1145)
!1162 = !DILocation(line: 832, column: 13, scope: !1145)
!1163 = !{!1152, !302, i64 8}
!1164 = !DILocation(line: 833, column: 45, scope: !1145)
!1165 = !DILocation(line: 833, column: 9, scope: !1145)
!1166 = !DILocation(line: 833, column: 14, scope: !1145)
!1167 = !DILocation(line: 834, column: 24, scope: !1145)
!1168 = !DILocation(line: 834, column: 9, scope: !1145)
!1169 = !DILocation(line: 834, column: 14, scope: !1145)
!1170 = !DILocation(line: 835, column: 7, scope: !1145)
!1171 = !DILocation(line: 836, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 836, column: 7)
!1173 = !DILocation(line: 772, column: 18, scope: !1015)
!1174 = !DILocation(line: 836, column: 13, scope: !1172)
!1175 = !DILocation(line: 836, column: 11, scope: !1172)
!1176 = !DILocation(line: 836, column: 7, scope: !1145)
!1177 = !DILocation(line: 837, column: 17, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 836, column: 20)
!1179 = !DILocation(line: 838, column: 18, scope: !1178)
!1180 = !DILocation(line: 840, column: 3, scope: !1178)
!1181 = !DILocation(line: 0, scope: !1172)
!1182 = !DILocation(line: 843, column: 2, scope: !1015)
!1183 = !DILocation(line: 0, scope: !1015)
!1184 = !DILocation(line: 844, column: 1, scope: !1015)
!1185 = distinct !DISubprogram(name: "hash_sync", scope: !1, file: !1, line: 495, type: !1186, isLocal: true, isDefinition: true, scopeLine: 498, isOptimized: true, unit: !0, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!29, !889, !106}
!1188 = !{!1189, !1190, !1191}
!1189 = !DILocalVariable(name: "dbp", arg: 1, scope: !1185, file: !1, line: 496, type: !889)
!1190 = !DILocalVariable(name: "flags", arg: 2, scope: !1185, file: !1, line: 497, type: !106)
!1191 = !DILocalVariable(name: "hashp", scope: !1185, file: !1, line: 499, type: !20)
!1192 = !DILocation(line: 496, column: 12, scope: !1185)
!1193 = !DILocation(line: 497, column: 8, scope: !1185)
!1194 = !DILocation(line: 501, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 501, column: 6)
!1196 = !DILocation(line: 501, column: 6, scope: !1185)
!1197 = !DILocation(line: 502, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 501, column: 18)
!1199 = !DILocation(line: 502, column: 9, scope: !1198)
!1200 = !DILocation(line: 503, column: 3, scope: !1198)
!1201 = !DILocation(line: 506, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 506, column: 6)
!1203 = !DILocation(line: 506, column: 6, scope: !1185)
!1204 = !DILocation(line: 509, column: 23, scope: !1185)
!1205 = !DILocation(line: 499, column: 8, scope: !1185)
!1206 = !DILocation(line: 510, column: 14, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 510, column: 6)
!1208 = !DILocation(line: 510, column: 7, scope: !1207)
!1209 = !DILocation(line: 510, column: 6, scope: !1185)
!1210 = !DILocation(line: 512, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 512, column: 6)
!1212 = !DILocation(line: 512, column: 30, scope: !1211)
!1213 = !DILocation(line: 512, column: 33, scope: !1211)
!1214 = !DILocation(line: 512, column: 6, scope: !1185)
!1215 = !DILocation(line: 514, column: 9, scope: !1185)
!1216 = !DILocation(line: 514, column: 18, scope: !1185)
!1217 = !DILocation(line: 515, column: 2, scope: !1185)
!1218 = !DILocation(line: 0, scope: !1202)
!1219 = !DILocation(line: 516, column: 1, scope: !1185)
!1220 = distinct !DISubprogram(name: "__expand_table", scope: !1, file: !1, line: 854, type: !794, isLocal: false, isDefinition: true, scopeLine: 856, isOptimized: true, unit: !0, retainedNodes: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227}
!1222 = !DILocalVariable(name: "hashp", arg: 1, scope: !1220, file: !1, line: 855, type: !20)
!1223 = !DILocalVariable(name: "old_bucket", scope: !1220, file: !1, line: 857, type: !32)
!1224 = !DILocalVariable(name: "new_bucket", scope: !1220, file: !1, line: 857, type: !32)
!1225 = !DILocalVariable(name: "dirsize", scope: !1220, file: !1, line: 858, type: !29)
!1226 = !DILocalVariable(name: "new_segnum", scope: !1220, file: !1, line: 858, type: !29)
!1227 = !DILocalVariable(name: "spare_ndx", scope: !1220, file: !1, line: 858, type: !29)
!1228 = !DILocation(line: 855, column: 8, scope: !1220)
!1229 = !DILocation(line: 863, column: 24, scope: !1220)
!1230 = !DILocation(line: 863, column: 15, scope: !1220)
!1231 = !DILocation(line: 857, column: 25, scope: !1220)
!1232 = !DILocation(line: 864, column: 43, scope: !1220)
!1233 = !DILocation(line: 864, column: 34, scope: !1220)
!1234 = !DILocation(line: 857, column: 13, scope: !1220)
!1235 = !DILocation(line: 866, column: 36, scope: !1220)
!1236 = !DILocation(line: 866, column: 26, scope: !1220)
!1237 = !DILocation(line: 858, column: 15, scope: !1220)
!1238 = !DILocation(line: 869, column: 27, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 869, column: 6)
!1240 = !DILocation(line: 869, column: 17, scope: !1239)
!1241 = !DILocation(line: 869, column: 6, scope: !1220)
!1242 = !DILocation(line: 871, column: 28, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 871, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 869, column: 34)
!1245 = !DILocation(line: 871, column: 18, scope: !1243)
!1246 = !DILocation(line: 871, column: 7, scope: !1244)
!1247 = !DILocation(line: 878, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 878, column: 7)
!1249 = !DILocation(line: 874, column: 52, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 874, column: 8)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 871, column: 35)
!1252 = !DILocalVariable(name: "newsize", arg: 3, scope: !1253, file: !1, line: 911, type: !29)
!1253 = distinct !DISubprogram(name: "hash_realloc", scope: !1, file: !1, line: 909, type: !1254, isLocal: true, isDefinition: true, scopeLine: 912, isOptimized: true, unit: !0, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!136, !1256, !29, !29}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1257 = !{!1258, !1259, !1252, !1260}
!1258 = !DILocalVariable(name: "p_ptr", arg: 1, scope: !1253, file: !1, line: 910, type: !1256)
!1259 = !DILocalVariable(name: "oldsize", arg: 2, scope: !1253, file: !1, line: 911, type: !29)
!1260 = !DILocalVariable(name: "p", scope: !1253, file: !1, line: 913, type: !136)
!1261 = !DILocation(line: 911, column: 15, scope: !1253, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 874, column: 9, scope: !1250)
!1263 = !DILocation(line: 915, column: 19, scope: !1264, inlinedAt: !1262)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 915, column: 7)
!1265 = !DILocation(line: 915, column: 12, scope: !1264, inlinedAt: !1262)
!1266 = !DILocation(line: 913, column: 8, scope: !1253, inlinedAt: !1262)
!1267 = !DILocation(line: 915, column: 10, scope: !1264, inlinedAt: !1262)
!1268 = !DILocation(line: 915, column: 7, scope: !1253, inlinedAt: !1262)
!1269 = !DILocation(line: 921, column: 2, scope: !1253, inlinedAt: !1262)
!1270 = !DILocation(line: 874, column: 8, scope: !1251)
!1271 = !DILocation(line: 873, column: 27, scope: !1251)
!1272 = !DILocation(line: 911, column: 6, scope: !1253, inlinedAt: !1262)
!1273 = !DILocation(line: 858, column: 6, scope: !1220)
!1274 = !DILocation(line: 874, column: 30, scope: !1250)
!1275 = !DILocation(line: 910, column: 12, scope: !1253, inlinedAt: !1262)
!1276 = !DILocation(line: 916, column: 14, scope: !1277, inlinedAt: !1262)
!1277 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 915, column: 31)
!1278 = !DILocation(line: 916, column: 22, scope: !1277, inlinedAt: !1262)
!1279 = !DILocation(line: 916, column: 3, scope: !1277, inlinedAt: !1262)
!1280 = !DILocation(line: 917, column: 20, scope: !1277, inlinedAt: !1262)
!1281 = !DILocation(line: 917, column: 3, scope: !1277, inlinedAt: !1262)
!1282 = !DILocation(line: 918, column: 8, scope: !1277, inlinedAt: !1262)
!1283 = !DILocation(line: 918, column: 3, scope: !1277, inlinedAt: !1262)
!1284 = !DILocation(line: 919, column: 10, scope: !1277, inlinedAt: !1262)
!1285 = !DILocation(line: 876, column: 17, scope: !1251)
!1286 = !DILocation(line: 877, column: 3, scope: !1251)
!1287 = !DILocation(line: 879, column: 30, scope: !1248)
!1288 = !DILocation(line: 879, column: 23, scope: !1248)
!1289 = !DILocation(line: 879, column: 16, scope: !1248)
!1290 = !DILocation(line: 878, column: 8, scope: !1248)
!1291 = !DILocation(line: 878, column: 31, scope: !1248)
!1292 = !DILocation(line: 879, column: 56, scope: !1248)
!1293 = !DILocation(line: 878, column: 7, scope: !1244)
!1294 = !DILocation(line: 881, column: 10, scope: !1244)
!1295 = !DILocation(line: 881, column: 16, scope: !1244)
!1296 = !DILocation(line: 882, column: 15, scope: !1244)
!1297 = !DILocation(line: 889, column: 28, scope: !1220)
!1298 = !DILocation(line: 883, column: 2, scope: !1244)
!1299 = !DILocation(line: 889, column: 39, scope: !1220)
!1300 = !DILocation(line: 889, column: 14, scope: !1220)
!1301 = !DILocation(line: 858, column: 27, scope: !1220)
!1302 = !DILocation(line: 890, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 890, column: 6)
!1304 = !DILocation(line: 890, column: 16, scope: !1303)
!1305 = !DILocation(line: 890, column: 6, scope: !1220)
!1306 = !DILocation(line: 891, column: 30, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 890, column: 37)
!1308 = !DILocation(line: 891, column: 3, scope: !1307)
!1309 = !DILocation(line: 891, column: 28, scope: !1307)
!1310 = !DILocation(line: 892, column: 21, scope: !1307)
!1311 = !DILocation(line: 893, column: 2, scope: !1307)
!1312 = !DILocation(line: 895, column: 26, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 895, column: 6)
!1314 = !DILocation(line: 895, column: 17, scope: !1313)
!1315 = !DILocation(line: 895, column: 6, scope: !1220)
!1316 = !DILocation(line: 897, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 895, column: 37)
!1318 = !DILocation(line: 898, column: 33, scope: !1317)
!1319 = !DILocation(line: 898, column: 20, scope: !1317)
!1320 = !DILocation(line: 899, column: 2, scope: !1317)
!1321 = !DILocation(line: 901, column: 10, scope: !1220)
!1322 = !DILocation(line: 901, column: 2, scope: !1220)
!1323 = !DILocation(line: 0, scope: !1250)
!1324 = !DILocation(line: 902, column: 1, scope: !1220)
!1325 = distinct !DISubprogram(name: "__call_hash", scope: !1, file: !1, line: 925, type: !1326, isLocal: false, isDefinition: true, scopeLine: 929, isOptimized: true, unit: !0, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!32, !20, !72, !29}
!1328 = !{!1329, !1330, !1331, !1332, !1333}
!1329 = !DILocalVariable(name: "hashp", arg: 1, scope: !1325, file: !1, line: 926, type: !20)
!1330 = !DILocalVariable(name: "k", arg: 2, scope: !1325, file: !1, line: 927, type: !72)
!1331 = !DILocalVariable(name: "len", arg: 3, scope: !1325, file: !1, line: 928, type: !29)
!1332 = !DILocalVariable(name: "n", scope: !1325, file: !1, line: 930, type: !29)
!1333 = !DILocalVariable(name: "bucket", scope: !1325, file: !1, line: 930, type: !29)
!1334 = !DILocation(line: 926, column: 8, scope: !1325)
!1335 = !DILocation(line: 927, column: 8, scope: !1325)
!1336 = !DILocation(line: 928, column: 6, scope: !1325)
!1337 = !DILocation(line: 932, column: 13, scope: !1325)
!1338 = !DILocation(line: 932, column: 21, scope: !1325)
!1339 = !DILocation(line: 932, column: 6, scope: !1325)
!1340 = !DILocation(line: 930, column: 6, scope: !1325)
!1341 = !DILocation(line: 933, column: 22, scope: !1325)
!1342 = !DILocation(line: 933, column: 13, scope: !1325)
!1343 = !DILocation(line: 930, column: 9, scope: !1325)
!1344 = !DILocation(line: 934, column: 22, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 934, column: 6)
!1346 = !DILocation(line: 934, column: 13, scope: !1345)
!1347 = !DILocation(line: 934, column: 6, scope: !1325)
!1348 = !DILocation(line: 935, column: 28, scope: !1345)
!1349 = !DILocation(line: 935, column: 19, scope: !1345)
!1350 = !DILocation(line: 935, column: 3, scope: !1345)
!1351 = !DILocation(line: 0, scope: !1325)
!1352 = !DILocation(line: 936, column: 2, scope: !1325)
!1353 = distinct !DISubprogram(name: "flush_meta", scope: !1, file: !1, line: 524, type: !794, isLocal: true, isDefinition: true, scopeLine: 526, isOptimized: true, unit: !0, retainedNodes: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360}
!1355 = !DILocalVariable(name: "hashp", arg: 1, scope: !1353, file: !1, line: 525, type: !20)
!1356 = !DILocalVariable(name: "whdrp", scope: !1353, file: !1, line: 527, type: !518)
!1357 = !DILocalVariable(name: "whdr", scope: !1353, file: !1, line: 529, type: !25)
!1358 = !DILocalVariable(name: "fp", scope: !1353, file: !1, line: 531, type: !29)
!1359 = !DILocalVariable(name: "i", scope: !1353, file: !1, line: 531, type: !29)
!1360 = !DILocalVariable(name: "wsize", scope: !1353, file: !1, line: 531, type: !29)
!1361 = !DILocation(line: 525, column: 8, scope: !1353)
!1362 = !DILocation(line: 529, column: 2, scope: !1353)
!1363 = !DILocation(line: 533, column: 14, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 533, column: 6)
!1365 = !DILocation(line: 533, column: 7, scope: !1364)
!1366 = !DILocation(line: 533, column: 6, scope: !1353)
!1367 = !DILocation(line: 535, column: 9, scope: !1353)
!1368 = !DILocation(line: 535, column: 15, scope: !1353)
!1369 = !DILocation(line: 536, column: 9, scope: !1353)
!1370 = !DILocation(line: 536, column: 22, scope: !1353)
!1371 = !DILocation(line: 537, column: 28, scope: !1353)
!1372 = !DILocation(line: 537, column: 21, scope: !1353)
!1373 = !DILocation(line: 537, column: 9, scope: !1353)
!1374 = !DILocation(line: 537, column: 19, scope: !1353)
!1375 = !DILocation(line: 539, column: 14, scope: !1353)
!1376 = !DILocation(line: 531, column: 6, scope: !1353)
!1377 = !DILocation(line: 527, column: 11, scope: !1353)
!1378 = !DILocation(line: 529, column: 10, scope: !1353)
!1379 = !DILocalVariable(name: "srcp", arg: 1, scope: !1380, file: !1, line: 980, type: !518)
!1380 = distinct !DISubprogram(name: "swap_header_copy", scope: !1, file: !1, line: 979, type: !1381, isLocal: true, isDefinition: true, scopeLine: 981, isOptimized: true, unit: !0, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !518, !518}
!1383 = !{!1379, !1384, !1385}
!1384 = !DILocalVariable(name: "destp", arg: 2, scope: !1380, file: !1, line: 980, type: !518)
!1385 = !DILocalVariable(name: "i", scope: !1380, file: !1, line: 982, type: !29)
!1386 = !DILocation(line: 980, column: 11, scope: !1380, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 543, column: 2, scope: !1353)
!1388 = !DILocation(line: 980, column: 18, scope: !1380, inlinedAt: !1387)
!1389 = !DILocation(line: 984, column: 2, scope: !1390, inlinedAt: !1387)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 984, column: 2)
!1391 = !DILocation(line: 988, column: 2, scope: !1392, inlinedAt: !1387)
!1392 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 988, column: 2)
!1393 = !DILocation(line: 992, column: 2, scope: !1394, inlinedAt: !1387)
!1394 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 992, column: 2)
!1395 = !DILocation(line: 996, column: 2, scope: !1396, inlinedAt: !1387)
!1396 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 996, column: 2)
!1397 = !DILocation(line: 1000, column: 2, scope: !1398, inlinedAt: !1387)
!1398 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 1000, column: 2)
!1399 = !DILocation(line: 982, column: 6, scope: !1380, inlinedAt: !1387)
!1400 = !DILocation(line: 1001, column: 2, scope: !1401, inlinedAt: !1387)
!1401 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 1001, column: 2)
!1402 = !DILocation(line: 1002, column: 3, scope: !1403, inlinedAt: !1387)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 1002, column: 3)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 1001, column: 32)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 1001, column: 2)
!1406 = !DILocation(line: 1003, column: 3, scope: !1407, inlinedAt: !1387)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 1003, column: 3)
!1408 = !DILocation(line: 1001, column: 28, scope: !1405, inlinedAt: !1387)
!1409 = !DILocation(line: 1001, column: 16, scope: !1405, inlinedAt: !1387)
!1410 = distinct !{!1410, !1411, !1412}
!1411 = !DILocation(line: 1001, column: 2, scope: !1401)
!1412 = !DILocation(line: 1004, column: 2, scope: !1401)
!1413 = !DILocation(line: 1005, column: 1, scope: !1380, inlinedAt: !1387)
!1414 = !DILocation(line: 545, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 545, column: 6)
!1416 = !DILocation(line: 545, column: 37, scope: !1415)
!1417 = !DILocation(line: 545, column: 44, scope: !1415)
!1418 = !DILocation(line: 546, column: 16, scope: !1415)
!1419 = !DILocation(line: 531, column: 13, scope: !1353)
!1420 = !DILocation(line: 546, column: 51, scope: !1415)
!1421 = !DILocation(line: 545, column: 6, scope: !1353)
!1422 = !DILocation(line: 549, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 549, column: 7)
!1424 = !DILocation(line: 549, column: 7, scope: !1415)
!1425 = !DILocation(line: 550, column: 4, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 549, column: 33)
!1427 = !DILocation(line: 550, column: 10, scope: !1426)
!1428 = !DILocation(line: 551, column: 19, scope: !1426)
!1429 = !DILocation(line: 551, column: 11, scope: !1426)
!1430 = !DILocation(line: 551, column: 17, scope: !1426)
!1431 = !DILocation(line: 552, column: 4, scope: !1426)
!1432 = !DILocation(line: 531, column: 10, scope: !1353)
!1433 = !DILocation(line: 555, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 555, column: 7)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 554, column: 2)
!1436 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 554, column: 2)
!1437 = !DILocation(line: 555, column: 7, scope: !1435)
!1438 = !DILocation(line: 556, column: 26, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 556, column: 8)
!1440 = !DILocation(line: 557, column: 5, scope: !1439)
!1441 = !DILocation(line: 556, column: 8, scope: !1439)
!1442 = !DILocation(line: 556, column: 8, scope: !1434)
!1443 = !DILocation(line: 554, column: 28, scope: !1435)
!1444 = !DILocation(line: 554, column: 16, scope: !1435)
!1445 = !DILocation(line: 554, column: 2, scope: !1436)
!1446 = distinct !{!1446, !1445, !1447}
!1447 = !DILocation(line: 558, column: 15, scope: !1436)
!1448 = !DILocation(line: 0, scope: !1364)
!1449 = !DILocation(line: 560, column: 1, scope: !1353)
!1450 = distinct !DISubprogram(name: "hash_access", scope: !1, file: !1, line: 635, type: !1451, isLocal: true, isDefinition: true, scopeLine: 639, isOptimized: true, unit: !0, retainedNodes: !1454)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!29, !20, !1453, !142, !142}
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !11, line: 61, baseType: !10)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1455 = !DILocalVariable(name: "hashp", arg: 1, scope: !1450, file: !1, line: 636, type: !20)
!1456 = !DILocalVariable(name: "action", arg: 2, scope: !1450, file: !1, line: 637, type: !1453)
!1457 = !DILocalVariable(name: "key", arg: 3, scope: !1450, file: !1, line: 638, type: !142)
!1458 = !DILocalVariable(name: "val", arg: 4, scope: !1450, file: !1, line: 638, type: !142)
!1459 = !DILocalVariable(name: "rbufp", scope: !1450, file: !1, line: 640, type: !76)
!1460 = !DILocalVariable(name: "bufp", scope: !1450, file: !1, line: 641, type: !76)
!1461 = !DILocalVariable(name: "save_bufp", scope: !1450, file: !1, line: 641, type: !76)
!1462 = !DILocalVariable(name: "bp", scope: !1450, file: !1, line: 642, type: !164)
!1463 = !DILocalVariable(name: "n", scope: !1450, file: !1, line: 643, type: !29)
!1464 = !DILocalVariable(name: "ndx", scope: !1450, file: !1, line: 643, type: !29)
!1465 = !DILocalVariable(name: "off", scope: !1450, file: !1, line: 643, type: !29)
!1466 = !DILocalVariable(name: "size", scope: !1450, file: !1, line: 643, type: !29)
!1467 = !DILocalVariable(name: "kp", scope: !1450, file: !1, line: 644, type: !72)
!1468 = !DILocalVariable(name: "pageno", scope: !1450, file: !1, line: 645, type: !54)
!1469 = !DILocation(line: 636, column: 8, scope: !1450)
!1470 = !DILocation(line: 637, column: 9, scope: !1450)
!1471 = !DILocation(line: 638, column: 7, scope: !1450)
!1472 = !DILocation(line: 638, column: 13, scope: !1450)
!1473 = !DILocation(line: 641, column: 2, scope: !1450)
!1474 = !DILocation(line: 651, column: 15, scope: !1450)
!1475 = !DILocation(line: 643, column: 14, scope: !1450)
!1476 = !DILocation(line: 652, column: 14, scope: !1450)
!1477 = !DILocation(line: 652, column: 9, scope: !1450)
!1478 = !DILocation(line: 643, column: 19, scope: !1450)
!1479 = !DILocation(line: 653, column: 20, scope: !1450)
!1480 = !DILocation(line: 644, column: 8, scope: !1450)
!1481 = !DILocation(line: 926, column: 8, scope: !1325, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 654, column: 27, scope: !1450)
!1483 = !DILocation(line: 927, column: 8, scope: !1325, inlinedAt: !1482)
!1484 = !DILocation(line: 928, column: 6, scope: !1325, inlinedAt: !1482)
!1485 = !DILocation(line: 932, column: 13, scope: !1325, inlinedAt: !1482)
!1486 = !DILocation(line: 932, column: 21, scope: !1325, inlinedAt: !1482)
!1487 = !DILocation(line: 932, column: 6, scope: !1325, inlinedAt: !1482)
!1488 = !DILocation(line: 930, column: 6, scope: !1325, inlinedAt: !1482)
!1489 = !DILocation(line: 933, column: 22, scope: !1325, inlinedAt: !1482)
!1490 = !DILocation(line: 933, column: 13, scope: !1325, inlinedAt: !1482)
!1491 = !DILocation(line: 930, column: 9, scope: !1325, inlinedAt: !1482)
!1492 = !DILocation(line: 934, column: 22, scope: !1345, inlinedAt: !1482)
!1493 = !DILocation(line: 934, column: 13, scope: !1345, inlinedAt: !1482)
!1494 = !DILocation(line: 934, column: 6, scope: !1325, inlinedAt: !1482)
!1495 = !DILocation(line: 935, column: 28, scope: !1345, inlinedAt: !1482)
!1496 = !DILocation(line: 935, column: 19, scope: !1345, inlinedAt: !1482)
!1497 = !DILocation(line: 935, column: 3, scope: !1345, inlinedAt: !1482)
!1498 = !DILocation(line: 0, scope: !1325, inlinedAt: !1482)
!1499 = !DILocation(line: 936, column: 2, scope: !1325, inlinedAt: !1482)
!1500 = !DILocation(line: 654, column: 10, scope: !1450)
!1501 = !DILocation(line: 640, column: 11, scope: !1450)
!1502 = !DILocation(line: 655, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 655, column: 6)
!1504 = !DILocation(line: 655, column: 6, scope: !1450)
!1505 = !DILocation(line: 641, column: 18, scope: !1450)
!1506 = !DILocation(line: 660, column: 9, scope: !1450)
!1507 = !DILocation(line: 660, column: 15, scope: !1450)
!1508 = !{!258, !243, i64 40}
!1509 = !DILocation(line: 661, column: 33, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 661, column: 2)
!1511 = !DILocation(line: 642, column: 14, scope: !1450)
!1512 = !DILocation(line: 661, column: 43, scope: !1510)
!1513 = !DILocation(line: 643, column: 9, scope: !1450)
!1514 = !DILocation(line: 661, column: 63, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 661, column: 2)
!1516 = !DILocation(line: 661, column: 2, scope: !1510)
!1517 = !DILocation(line: 643, column: 6, scope: !1450)
!1518 = !DILocation(line: 661, column: 46, scope: !1510)
!1519 = !DILocation(line: 662, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 662, column: 7)
!1521 = !DILocation(line: 662, column: 13, scope: !1520)
!1522 = !DILocation(line: 662, column: 7, scope: !1515)
!1523 = !DILocation(line: 664, column: 22, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 664, column: 8)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 662, column: 26)
!1526 = !DILocation(line: 664, column: 20, scope: !1524)
!1527 = !DILocation(line: 664, column: 13, scope: !1524)
!1528 = !DILocation(line: 664, column: 26, scope: !1524)
!1529 = !DILocation(line: 665, column: 26, scope: !1524)
!1530 = !DILocation(line: 665, column: 31, scope: !1524)
!1531 = !DILocation(line: 665, column: 8, scope: !1524)
!1532 = !DILocation(line: 665, column: 44, scope: !1524)
!1533 = !DILocation(line: 664, column: 8, scope: !1525)
!1534 = !DILocation(line: 667, column: 10, scope: !1525)
!1535 = !DILocation(line: 671, column: 7, scope: !1525)
!1536 = !DILocation(line: 672, column: 8, scope: !1525)
!1537 = !DILocation(line: 673, column: 3, scope: !1525)
!1538 = !DILocation(line: 673, column: 20, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 673, column: 14)
!1540 = !DILocation(line: 673, column: 14, scope: !1520)
!1541 = !DILocation(line: 674, column: 29, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 673, column: 33)
!1543 = !DILocation(line: 674, column: 12, scope: !1542)
!1544 = !DILocation(line: 675, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 675, column: 8)
!1546 = !DILocation(line: 675, column: 8, scope: !1542)
!1547 = !DILocation(line: 676, column: 22, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 675, column: 16)
!1549 = !DILocation(line: 677, column: 5, scope: !1548)
!1550 = !DILocation(line: 680, column: 30, scope: !1542)
!1551 = !DILocation(line: 681, column: 11, scope: !1542)
!1552 = !DILocation(line: 681, column: 8, scope: !1542)
!1553 = !DILocation(line: 683, column: 17, scope: !1542)
!1554 = !DILocation(line: 684, column: 3, scope: !1542)
!1555 = !DILocation(line: 686, column: 8, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 685, column: 8)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 684, column: 32)
!1558 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 684, column: 14)
!1559 = !DILocation(line: 686, column: 53, scope: !1556)
!1560 = !DILocation(line: 685, column: 8, scope: !1557)
!1561 = !DILocation(line: 688, column: 12, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 688, column: 8)
!1563 = !DILocation(line: 688, column: 8, scope: !1557)
!1564 = !DILocation(line: 641, column: 11, scope: !1450)
!1565 = !DILocation(line: 689, column: 10, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 688, column: 19)
!1567 = !DILocation(line: 691, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 690, column: 9)
!1569 = !DILocation(line: 645, column: 13, scope: !1450)
!1570 = !DILocation(line: 690, column: 18, scope: !1568)
!1571 = !DILocation(line: 690, column: 9, scope: !1566)
!1572 = !DILocation(line: 693, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 691, column: 42)
!1574 = !DILocation(line: 694, column: 6, scope: !1573)
!1575 = !DILocation(line: 696, column: 30, scope: !1566)
!1576 = !DILocation(line: 696, column: 38, scope: !1566)
!1577 = !DILocation(line: 696, column: 13, scope: !1566)
!1578 = !DILocation(line: 697, column: 10, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 697, column: 9)
!1580 = !DILocation(line: 697, column: 9, scope: !1566)
!1581 = !DILocation(line: 698, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !1, line: 697, column: 17)
!1583 = !DILocation(line: 699, column: 6, scope: !1582)
!1584 = !DILocation(line: 702, column: 31, scope: !1566)
!1585 = !DILocation(line: 703, column: 12, scope: !1566)
!1586 = !DILocation(line: 703, column: 9, scope: !1566)
!1587 = !DILocation(line: 705, column: 18, scope: !1566)
!1588 = !DILocation(line: 710, column: 3, scope: !1557)
!1589 = !DILocation(line: 707, column: 22, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 706, column: 11)
!1591 = !DILocation(line: 708, column: 5, scope: !1590)
!1592 = !DILocation(line: 0, scope: !1510)
!1593 = !DILocation(line: 0, scope: !1450)
!1594 = distinct !{!1594, !1516, !1595}
!1595 = !DILocation(line: 710, column: 3, scope: !1510)
!1596 = !DILocation(line: 713, column: 2, scope: !1450)
!1597 = !DILocation(line: 716, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 716, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 713, column: 18)
!1600 = !DILocation(line: 0, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 719, column: 10)
!1602 = !DILocation(line: 721, column: 4, scope: !1601)
!1603 = !DILocation(line: 726, column: 20, scope: !1599)
!1604 = !DILocation(line: 727, column: 3, scope: !1599)
!1605 = !DILocation(line: 0, scope: !1556)
!1606 = !DILocation(line: 731, column: 2, scope: !1450)
!1607 = !DILocation(line: 733, column: 20, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 731, column: 18)
!1609 = !DILocation(line: 734, column: 3, scope: !1608)
!1610 = !DILocation(line: 736, column: 29, scope: !1608)
!1611 = !DILocation(line: 736, column: 8, scope: !1608)
!1612 = !DILocation(line: 737, column: 14, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 737, column: 7)
!1614 = !DILocation(line: 737, column: 7, scope: !1613)
!1615 = !DILocation(line: 737, column: 19, scope: !1613)
!1616 = !DILocation(line: 737, column: 7, scope: !1608)
!1617 = !DILocation(line: 738, column: 8, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 738, column: 8)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 737, column: 31)
!1620 = !DILocation(line: 738, column: 8, scope: !1619)
!1621 = !DILocation(line: 741, column: 38, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 740, column: 10)
!1623 = !DILocation(line: 741, column: 9, scope: !1622)
!1624 = !DILocation(line: 741, column: 14, scope: !1622)
!1625 = !DILocation(line: 742, column: 16, scope: !1622)
!1626 = !DILocation(line: 742, column: 24, scope: !1622)
!1627 = !DILocation(line: 742, column: 9, scope: !1622)
!1628 = !DILocation(line: 742, column: 14, scope: !1622)
!1629 = !DILocation(line: 746, column: 8, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 746, column: 7)
!1631 = !DILocation(line: 746, column: 38, scope: !1630)
!1632 = !DILocation(line: 747, column: 8, scope: !1630)
!1633 = !DILocation(line: 746, column: 7, scope: !1608)
!1634 = !DILocation(line: 748, column: 21, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !1, line: 747, column: 42)
!1636 = !DILocation(line: 749, column: 4, scope: !1635)
!1637 = !DILocation(line: 753, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 753, column: 7)
!1639 = !DILocation(line: 753, column: 7, scope: !1608)
!1640 = !DILocation(line: 757, column: 3, scope: !1608)
!1641 = !DILocation(line: 759, column: 19, scope: !1450)
!1642 = !DILocation(line: 760, column: 2, scope: !1450)
!1643 = !DILocation(line: 0, scope: !1503)
!1644 = !DILocation(line: 761, column: 1, scope: !1450)
