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
  br label %571, !dbg !245

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @calloc(i64 1, i64 656) #6, !dbg !246
  %15 = bitcast i8* %14 to %struct.htab*, !dbg !248
  %16 = icmp eq i8* %14, null, !dbg !250
  br i1 %16, label %571, label %17, !dbg !251

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
  br label %567, !dbg !289

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
  br i1 %58, label %181, label %61

; <label>:59:                                     ; preds = %47, %50, %39
  %60 = icmp eq i32 %40, 0, !dbg !305
  br i1 %60, label %181, label %61, !dbg !307

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
  br i1 %91, label %92, label %560, !dbg !358

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
  br label %560, !dbg !389

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
  br label %560, !dbg !418

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
  br i1 %151, label %152, label %560, !dbg !459

; <label>:152:                                    ; preds = %129
  %153 = add nsw i32 %138, -1, !dbg !460
  %154 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !461
  %155 = bitcast i8* %154 to i32*, !dbg !461
  store i32 %153, i32* %155, align 8, !dbg !462, !tbaa !463
  %156 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !464
  %157 = bitcast i8* %156 to i32*, !dbg !464
  store i32 %153, i32* %157, align 8, !dbg !465, !tbaa !466
  %158 = shl i32 %138, 1, !dbg !467
  %159 = add nsw i32 %158, -1, !dbg !468
  %160 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !469
  %161 = bitcast i8* %160 to i32*, !dbg !469
  store i32 %159, i32* %161, align 4, !dbg !470, !tbaa !471
  %162 = load i32, i32* %70, align 8, !dbg !472, !tbaa !366
  %163 = zext i32 %162 to i64, !dbg !473
  %164 = lshr i64 511, %163, !dbg !473
  %165 = trunc i64 %164 to i32, !dbg !474
  %166 = add i32 %165, 1, !dbg !474
  %167 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !475
  %168 = bitcast i8* %167 to i32*, !dbg !475
  store i32 %166, i32* %168, align 4, !dbg !476, !tbaa !477
  %169 = load i32, i32* %72, align 8, !dbg !478, !tbaa !333
  %170 = sdiv i32 %153, %169, !dbg !479
  %171 = add nsw i32 %170, 1, !dbg !480
  %172 = call i32 @__log2(i32 %171) #6, !dbg !482
  %173 = shl i32 1, %172, !dbg !483
  %174 = load i32, i32* %76, align 4, !dbg !484, !tbaa !486
  %175 = icmp sgt i32 %173, %174, !dbg !487
  br i1 %175, label %176, label %177, !dbg !488

; <label>:176:                                    ; preds = %152
  store i32 %173, i32* %76, align 4, !dbg !489, !tbaa !486
  br label %177, !dbg !490

; <label>:177:                                    ; preds = %176, %152
  %178 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %173) #6, !dbg !491
  %179 = icmp eq i32 %178, 0, !dbg !492
  br i1 %179, label %180, label %560

; <label>:180:                                    ; preds = %177
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %62) #5, !dbg !493
  br label %514

; <label>:181:                                    ; preds = %53, %59
  %182 = icmp eq %struct.HASHINFO* %4, null, !dbg !494
  br i1 %182, label %190, label %183, !dbg !497

; <label>:183:                                    ; preds = %181
  %184 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 4, !dbg !498
  %185 = load i32 (i8*, i64)*, i32 (i8*, i64)** %184, align 8, !dbg !498, !tbaa !399
  %186 = icmp eq i32 (i8*, i64)* %185, null, !dbg !499
  br i1 %186, label %190, label %187, !dbg !500

; <label>:187:                                    ; preds = %183
  %188 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !501
  %189 = bitcast i8* %188 to i32 (i8*, i64)**, !dbg !501
  store i32 (i8*, i64)* %185, i32 (i8*, i64)** %189, align 8, !dbg !502, !tbaa !346
  br label %194, !dbg !503

; <label>:190:                                    ; preds = %183, %181
  %191 = load i64, i64* bitcast (i32 (i8*, i64)** @__default_hash to i64*), align 8, !dbg !504, !tbaa !343
  %192 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !505
  %193 = bitcast i8* %192 to i64*, !dbg !506
  store i64 %191, i64* %193, align 8, !dbg !506, !tbaa !346
  br label %194

; <label>:194:                                    ; preds = %190, %187
  %195 = load i32, i32* %19, align 4, !dbg !507, !tbaa !254
  %196 = call i64 @read(i32 %195, i8* nonnull %14, i64 260) #6, !dbg !508
  %197 = bitcast i8* %14 to i32*, !dbg !562
  %198 = load i32, i32* %197, align 4, !dbg !562, !tbaa !563
  %199 = trunc i32 %198 to i8, !dbg !562
  %200 = lshr i32 %198, 8, !dbg !562
  %201 = trunc i32 %200 to i8, !dbg !562
  %202 = lshr i32 %198, 16, !dbg !562
  %203 = trunc i32 %202 to i8, !dbg !562
  %204 = lshr i32 %198, 24, !dbg !562
  %205 = trunc i32 %204 to i8, !dbg !562
  store i8 %205, i8* %14, align 4, !dbg !562, !tbaa !564
  %206 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !562
  store i8 %203, i8* %206, align 1, !dbg !562, !tbaa !564
  %207 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !562
  store i8 %201, i8* %207, align 2, !dbg !562, !tbaa !564
  %208 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !562
  store i8 %199, i8* %208, align 1, !dbg !562, !tbaa !564
  %209 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !565
  %210 = bitcast i8* %209 to i32*, !dbg !565
  %211 = load i32, i32* %210, align 4, !dbg !565, !tbaa !566
  %212 = trunc i32 %211 to i8, !dbg !565
  %213 = lshr i32 %211, 8, !dbg !565
  %214 = trunc i32 %213 to i8, !dbg !565
  %215 = lshr i32 %211, 16, !dbg !565
  %216 = trunc i32 %215 to i8, !dbg !565
  %217 = lshr i32 %211, 24, !dbg !565
  %218 = trunc i32 %217 to i8, !dbg !565
  store i8 %218, i8* %209, align 4, !dbg !565, !tbaa !564
  %219 = getelementptr inbounds i8, i8* %14, i64 5, !dbg !565
  store i8 %216, i8* %219, align 1, !dbg !565, !tbaa !564
  %220 = getelementptr inbounds i8, i8* %14, i64 6, !dbg !565
  store i8 %214, i8* %220, align 2, !dbg !565, !tbaa !564
  %221 = getelementptr inbounds i8, i8* %14, i64 7, !dbg !565
  store i8 %212, i8* %221, align 1, !dbg !565, !tbaa !564
  %222 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !567
  %223 = bitcast i8* %222 to i32*, !dbg !567
  %224 = load i32, i32* %223, align 4, !dbg !567, !tbaa !568
  %225 = trunc i32 %224 to i8, !dbg !567
  %226 = lshr i32 %224, 8, !dbg !567
  %227 = trunc i32 %226 to i8, !dbg !567
  %228 = lshr i32 %224, 16, !dbg !567
  %229 = trunc i32 %228 to i8, !dbg !567
  %230 = lshr i32 %224, 24, !dbg !567
  %231 = trunc i32 %230 to i8, !dbg !567
  store i8 %231, i8* %222, align 4, !dbg !567, !tbaa !564
  %232 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !567
  store i8 %229, i8* %232, align 1, !dbg !567, !tbaa !564
  %233 = getelementptr inbounds i8, i8* %14, i64 10, !dbg !567
  store i8 %227, i8* %233, align 2, !dbg !567, !tbaa !564
  %234 = getelementptr inbounds i8, i8* %14, i64 11, !dbg !567
  store i8 %225, i8* %234, align 1, !dbg !567, !tbaa !564
  %235 = getelementptr inbounds i8, i8* %14, i64 12, !dbg !569
  %236 = bitcast i8* %235 to i32*, !dbg !569
  %237 = load i32, i32* %236, align 4, !dbg !569, !tbaa !570
  %238 = trunc i32 %237 to i8, !dbg !569
  %239 = lshr i32 %237, 8, !dbg !569
  %240 = trunc i32 %239 to i8, !dbg !569
  %241 = lshr i32 %237, 16, !dbg !569
  %242 = trunc i32 %241 to i8, !dbg !569
  %243 = lshr i32 %237, 24, !dbg !569
  %244 = trunc i32 %243 to i8, !dbg !569
  store i8 %244, i8* %235, align 4, !dbg !569, !tbaa !564
  %245 = getelementptr inbounds i8, i8* %14, i64 13, !dbg !569
  store i8 %242, i8* %245, align 1, !dbg !569, !tbaa !564
  %246 = getelementptr inbounds i8, i8* %14, i64 14, !dbg !569
  store i8 %240, i8* %246, align 2, !dbg !569, !tbaa !564
  %247 = getelementptr inbounds i8, i8* %14, i64 15, !dbg !569
  store i8 %238, i8* %247, align 1, !dbg !569, !tbaa !564
  %248 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !571
  %249 = bitcast i8* %248 to i32*, !dbg !571
  %250 = load i32, i32* %249, align 4, !dbg !571, !tbaa !572
  %251 = trunc i32 %250 to i8, !dbg !571
  %252 = lshr i32 %250, 8, !dbg !571
  %253 = trunc i32 %252 to i8, !dbg !571
  %254 = lshr i32 %250, 16, !dbg !571
  %255 = trunc i32 %254 to i8, !dbg !571
  %256 = lshr i32 %250, 24, !dbg !571
  %257 = trunc i32 %256 to i8, !dbg !571
  store i8 %257, i8* %248, align 4, !dbg !571, !tbaa !564
  %258 = getelementptr inbounds i8, i8* %14, i64 17, !dbg !571
  store i8 %255, i8* %258, align 1, !dbg !571, !tbaa !564
  %259 = getelementptr inbounds i8, i8* %14, i64 18, !dbg !571
  store i8 %253, i8* %259, align 2, !dbg !571, !tbaa !564
  %260 = getelementptr inbounds i8, i8* %14, i64 19, !dbg !571
  store i8 %251, i8* %260, align 1, !dbg !571, !tbaa !564
  %261 = getelementptr inbounds i8, i8* %14, i64 20, !dbg !573
  %262 = bitcast i8* %261 to i32*, !dbg !573
  %263 = load i32, i32* %262, align 4, !dbg !573, !tbaa !574
  %264 = trunc i32 %263 to i8, !dbg !573
  %265 = lshr i32 %263, 8, !dbg !573
  %266 = trunc i32 %265 to i8, !dbg !573
  %267 = lshr i32 %263, 16, !dbg !573
  %268 = trunc i32 %267 to i8, !dbg !573
  %269 = lshr i32 %263, 24, !dbg !573
  %270 = trunc i32 %269 to i8, !dbg !573
  store i8 %270, i8* %261, align 4, !dbg !573, !tbaa !564
  %271 = getelementptr inbounds i8, i8* %14, i64 21, !dbg !573
  store i8 %268, i8* %271, align 1, !dbg !573, !tbaa !564
  %272 = getelementptr inbounds i8, i8* %14, i64 22, !dbg !573
  store i8 %266, i8* %272, align 2, !dbg !573, !tbaa !564
  %273 = getelementptr inbounds i8, i8* %14, i64 23, !dbg !573
  store i8 %264, i8* %273, align 1, !dbg !573, !tbaa !564
  %274 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !575
  %275 = bitcast i8* %274 to i32*, !dbg !575
  %276 = load i32, i32* %275, align 4, !dbg !575, !tbaa !576
  %277 = trunc i32 %276 to i8, !dbg !575
  %278 = lshr i32 %276, 8, !dbg !575
  %279 = trunc i32 %278 to i8, !dbg !575
  %280 = lshr i32 %276, 16, !dbg !575
  %281 = trunc i32 %280 to i8, !dbg !575
  %282 = lshr i32 %276, 24, !dbg !575
  %283 = trunc i32 %282 to i8, !dbg !575
  store i8 %283, i8* %274, align 4, !dbg !575, !tbaa !564
  %284 = getelementptr inbounds i8, i8* %14, i64 25, !dbg !575
  store i8 %281, i8* %284, align 1, !dbg !575, !tbaa !564
  %285 = getelementptr inbounds i8, i8* %14, i64 26, !dbg !575
  store i8 %279, i8* %285, align 2, !dbg !575, !tbaa !564
  %286 = getelementptr inbounds i8, i8* %14, i64 27, !dbg !575
  store i8 %277, i8* %286, align 1, !dbg !575, !tbaa !564
  %287 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !577
  %288 = bitcast i8* %287 to i32*, !dbg !577
  %289 = load i32, i32* %288, align 4, !dbg !577, !tbaa !578
  %290 = trunc i32 %289 to i8, !dbg !577
  %291 = lshr i32 %289, 8, !dbg !577
  %292 = trunc i32 %291 to i8, !dbg !577
  %293 = lshr i32 %289, 16, !dbg !577
  %294 = trunc i32 %293 to i8, !dbg !577
  %295 = lshr i32 %289, 24, !dbg !577
  %296 = trunc i32 %295 to i8, !dbg !577
  store i8 %296, i8* %287, align 4, !dbg !577, !tbaa !564
  %297 = getelementptr inbounds i8, i8* %14, i64 29, !dbg !577
  store i8 %294, i8* %297, align 1, !dbg !577, !tbaa !564
  %298 = getelementptr inbounds i8, i8* %14, i64 30, !dbg !577
  store i8 %292, i8* %298, align 2, !dbg !577, !tbaa !564
  %299 = getelementptr inbounds i8, i8* %14, i64 31, !dbg !577
  store i8 %290, i8* %299, align 1, !dbg !577, !tbaa !564
  %300 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !579
  %301 = bitcast i8* %300 to i32*, !dbg !579
  %302 = load i32, i32* %301, align 4, !dbg !579, !tbaa !580
  %303 = trunc i32 %302 to i8, !dbg !579
  %304 = lshr i32 %302, 8, !dbg !579
  %305 = trunc i32 %304 to i8, !dbg !579
  %306 = lshr i32 %302, 16, !dbg !579
  %307 = trunc i32 %306 to i8, !dbg !579
  %308 = lshr i32 %302, 24, !dbg !579
  %309 = trunc i32 %308 to i8, !dbg !579
  store i8 %309, i8* %300, align 4, !dbg !579, !tbaa !564
  %310 = getelementptr inbounds i8, i8* %14, i64 33, !dbg !579
  store i8 %307, i8* %310, align 1, !dbg !579, !tbaa !564
  %311 = getelementptr inbounds i8, i8* %14, i64 34, !dbg !579
  store i8 %305, i8* %311, align 2, !dbg !579, !tbaa !564
  %312 = getelementptr inbounds i8, i8* %14, i64 35, !dbg !579
  store i8 %303, i8* %312, align 1, !dbg !579, !tbaa !564
  %313 = getelementptr inbounds i8, i8* %14, i64 36, !dbg !581
  %314 = bitcast i8* %313 to i32*, !dbg !581
  %315 = load i32, i32* %314, align 4, !dbg !581, !tbaa !582
  %316 = trunc i32 %315 to i8, !dbg !581
  %317 = lshr i32 %315, 8, !dbg !581
  %318 = trunc i32 %317 to i8, !dbg !581
  %319 = lshr i32 %315, 16, !dbg !581
  %320 = trunc i32 %319 to i8, !dbg !581
  %321 = lshr i32 %315, 24, !dbg !581
  %322 = trunc i32 %321 to i8, !dbg !581
  store i8 %322, i8* %313, align 4, !dbg !581, !tbaa !564
  %323 = getelementptr inbounds i8, i8* %14, i64 37, !dbg !581
  store i8 %320, i8* %323, align 1, !dbg !581, !tbaa !564
  %324 = getelementptr inbounds i8, i8* %14, i64 38, !dbg !581
  store i8 %318, i8* %324, align 2, !dbg !581, !tbaa !564
  %325 = getelementptr inbounds i8, i8* %14, i64 39, !dbg !581
  store i8 %316, i8* %325, align 1, !dbg !581, !tbaa !564
  %326 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !583
  %327 = bitcast i8* %326 to i32*, !dbg !583
  %328 = load i32, i32* %327, align 4, !dbg !583, !tbaa !584
  %329 = trunc i32 %328 to i8, !dbg !583
  %330 = lshr i32 %328, 8, !dbg !583
  %331 = trunc i32 %330 to i8, !dbg !583
  %332 = lshr i32 %328, 16, !dbg !583
  %333 = trunc i32 %332 to i8, !dbg !583
  %334 = lshr i32 %328, 24, !dbg !583
  %335 = trunc i32 %334 to i8, !dbg !583
  store i8 %335, i8* %326, align 4, !dbg !583, !tbaa !564
  %336 = getelementptr inbounds i8, i8* %14, i64 41, !dbg !583
  store i8 %333, i8* %336, align 1, !dbg !583, !tbaa !564
  %337 = getelementptr inbounds i8, i8* %14, i64 42, !dbg !583
  store i8 %331, i8* %337, align 2, !dbg !583, !tbaa !564
  %338 = getelementptr inbounds i8, i8* %14, i64 43, !dbg !583
  store i8 %329, i8* %338, align 1, !dbg !583, !tbaa !564
  %339 = getelementptr inbounds i8, i8* %14, i64 44, !dbg !585
  %340 = bitcast i8* %339 to i32*, !dbg !585
  %341 = load i32, i32* %340, align 4, !dbg !585, !tbaa !586
  %342 = trunc i32 %341 to i8, !dbg !585
  %343 = lshr i32 %341, 8, !dbg !585
  %344 = trunc i32 %343 to i8, !dbg !585
  %345 = lshr i32 %341, 16, !dbg !585
  %346 = trunc i32 %345 to i8, !dbg !585
  %347 = lshr i32 %341, 24, !dbg !585
  %348 = trunc i32 %347 to i8, !dbg !585
  store i8 %348, i8* %339, align 4, !dbg !585, !tbaa !564
  %349 = getelementptr inbounds i8, i8* %14, i64 45, !dbg !585
  store i8 %346, i8* %349, align 1, !dbg !585, !tbaa !564
  %350 = getelementptr inbounds i8, i8* %14, i64 46, !dbg !585
  store i8 %344, i8* %350, align 2, !dbg !585, !tbaa !564
  %351 = getelementptr inbounds i8, i8* %14, i64 47, !dbg !585
  store i8 %342, i8* %351, align 1, !dbg !585, !tbaa !564
  %352 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !587
  %353 = bitcast i8* %352 to i32*, !dbg !587
  %354 = load i32, i32* %353, align 4, !dbg !587, !tbaa !588
  %355 = trunc i32 %354 to i8, !dbg !587
  %356 = lshr i32 %354, 8, !dbg !587
  %357 = trunc i32 %356 to i8, !dbg !587
  %358 = lshr i32 %354, 16, !dbg !587
  %359 = trunc i32 %358 to i8, !dbg !587
  %360 = lshr i32 %354, 24, !dbg !587
  %361 = trunc i32 %360 to i8, !dbg !587
  store i8 %361, i8* %352, align 4, !dbg !587, !tbaa !564
  %362 = getelementptr inbounds i8, i8* %14, i64 49, !dbg !587
  store i8 %359, i8* %362, align 1, !dbg !587, !tbaa !564
  %363 = getelementptr inbounds i8, i8* %14, i64 50, !dbg !587
  store i8 %357, i8* %363, align 2, !dbg !587, !tbaa !564
  %364 = getelementptr inbounds i8, i8* %14, i64 51, !dbg !587
  store i8 %355, i8* %364, align 1, !dbg !587, !tbaa !564
  %365 = getelementptr inbounds i8, i8* %14, i64 52, !dbg !589
  %366 = bitcast i8* %365 to i32*, !dbg !589
  %367 = load i32, i32* %366, align 4, !dbg !589, !tbaa !590
  %368 = trunc i32 %367 to i8, !dbg !589
  %369 = lshr i32 %367, 8, !dbg !589
  %370 = trunc i32 %369 to i8, !dbg !589
  %371 = lshr i32 %367, 16, !dbg !589
  %372 = trunc i32 %371 to i8, !dbg !589
  %373 = lshr i32 %367, 24, !dbg !589
  %374 = trunc i32 %373 to i8, !dbg !589
  store i8 %374, i8* %365, align 4, !dbg !589, !tbaa !564
  %375 = getelementptr inbounds i8, i8* %14, i64 53, !dbg !589
  store i8 %372, i8* %375, align 1, !dbg !589, !tbaa !564
  %376 = getelementptr inbounds i8, i8* %14, i64 54, !dbg !589
  store i8 %370, i8* %376, align 2, !dbg !589, !tbaa !564
  %377 = getelementptr inbounds i8, i8* %14, i64 55, !dbg !589
  store i8 %368, i8* %377, align 1, !dbg !589, !tbaa !564
  %378 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !591
  %379 = bitcast i8* %378 to i32*, !dbg !591
  %380 = load i32, i32* %379, align 4, !dbg !591, !tbaa !592
  %381 = trunc i32 %380 to i8, !dbg !591
  %382 = lshr i32 %380, 8, !dbg !591
  %383 = trunc i32 %382 to i8, !dbg !591
  %384 = lshr i32 %380, 16, !dbg !591
  %385 = trunc i32 %384 to i8, !dbg !591
  %386 = lshr i32 %380, 24, !dbg !591
  %387 = trunc i32 %386 to i8, !dbg !591
  store i8 %387, i8* %378, align 4, !dbg !591, !tbaa !564
  %388 = getelementptr inbounds i8, i8* %14, i64 57, !dbg !591
  store i8 %385, i8* %388, align 1, !dbg !591, !tbaa !564
  %389 = getelementptr inbounds i8, i8* %14, i64 58, !dbg !591
  store i8 %383, i8* %389, align 2, !dbg !591, !tbaa !564
  %390 = getelementptr inbounds i8, i8* %14, i64 59, !dbg !591
  store i8 %381, i8* %390, align 1, !dbg !591, !tbaa !564
  %391 = getelementptr inbounds i8, i8* %14, i64 60, !dbg !593
  %392 = bitcast i8* %391 to i32*, !dbg !593
  %393 = load i32, i32* %392, align 4, !dbg !593, !tbaa !594
  %394 = trunc i32 %393 to i8, !dbg !593
  %395 = lshr i32 %393, 8, !dbg !593
  %396 = trunc i32 %395 to i8, !dbg !593
  %397 = lshr i32 %393, 16, !dbg !593
  %398 = trunc i32 %397 to i8, !dbg !593
  %399 = lshr i32 %393, 24, !dbg !593
  %400 = trunc i32 %399 to i8, !dbg !593
  store i8 %400, i8* %391, align 4, !dbg !593, !tbaa !564
  %401 = getelementptr inbounds i8, i8* %14, i64 61, !dbg !593
  store i8 %398, i8* %401, align 1, !dbg !593, !tbaa !564
  %402 = getelementptr inbounds i8, i8* %14, i64 62, !dbg !593
  store i8 %396, i8* %402, align 2, !dbg !593, !tbaa !564
  %403 = getelementptr inbounds i8, i8* %14, i64 63, !dbg !593
  store i8 %394, i8* %403, align 1, !dbg !593, !tbaa !564
  %404 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !595
  %405 = bitcast i8* %404 to i32*, !dbg !595
  %406 = load i32, i32* %405, align 4, !dbg !595, !tbaa !596
  %407 = trunc i32 %406 to i8, !dbg !595
  %408 = lshr i32 %406, 8, !dbg !595
  %409 = trunc i32 %408 to i8, !dbg !595
  %410 = lshr i32 %406, 16, !dbg !595
  %411 = trunc i32 %410 to i8, !dbg !595
  %412 = lshr i32 %406, 24, !dbg !595
  %413 = trunc i32 %412 to i8, !dbg !595
  store i8 %413, i8* %404, align 4, !dbg !595, !tbaa !564
  %414 = getelementptr inbounds i8, i8* %14, i64 65, !dbg !595
  store i8 %411, i8* %414, align 1, !dbg !595, !tbaa !564
  %415 = getelementptr inbounds i8, i8* %14, i64 66, !dbg !595
  store i8 %409, i8* %415, align 2, !dbg !595, !tbaa !564
  %416 = getelementptr inbounds i8, i8* %14, i64 67, !dbg !595
  store i8 %407, i8* %416, align 1, !dbg !595, !tbaa !564
  br label %417, !dbg !598

; <label>:417:                                    ; preds = %417, %194
  %418 = phi i64 [ 0, %194 ], [ %460, %417 ]
  %419 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %418, !dbg !599
  %420 = load i32, i32* %419, align 4, !dbg !599, !tbaa !241
  %421 = trunc i32 %420 to i8, !dbg !599
  %422 = lshr i32 %420, 8, !dbg !599
  %423 = trunc i32 %422 to i8, !dbg !599
  %424 = lshr i32 %420, 16, !dbg !599
  %425 = trunc i32 %424 to i8, !dbg !599
  %426 = lshr i32 %420, 24, !dbg !599
  %427 = trunc i32 %426 to i8, !dbg !599
  %428 = bitcast i32* %419 to i8*, !dbg !599
  store i8 %427, i8* %428, align 4, !dbg !599, !tbaa !564
  %429 = getelementptr inbounds i8, i8* %428, i64 1, !dbg !599
  store i8 %425, i8* %429, align 1, !dbg !599, !tbaa !564
  %430 = getelementptr inbounds i8, i8* %428, i64 2, !dbg !599
  store i8 %423, i8* %430, align 2, !dbg !599, !tbaa !564
  %431 = getelementptr inbounds i8, i8* %428, i64 3, !dbg !599
  store i8 %421, i8* %431, align 1, !dbg !599, !tbaa !564
  %432 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 18, i64 %418, !dbg !600
  %433 = load i16, i16* %432, align 2, !dbg !600, !tbaa !601
  %434 = trunc i16 %433 to i8, !dbg !600
  %435 = lshr i16 %433, 8, !dbg !600
  %436 = trunc i16 %435 to i8, !dbg !600
  %437 = bitcast i16* %432 to i8*, !dbg !600
  store i8 %436, i8* %437, align 2, !dbg !600, !tbaa !564
  %438 = getelementptr inbounds i8, i8* %437, i64 1, !dbg !600
  store i8 %434, i8* %438, align 1, !dbg !600, !tbaa !564
  %439 = or i64 %418, 1, !dbg !602
  %440 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 17, i64 %439, !dbg !599
  %441 = load i32, i32* %440, align 4, !dbg !599, !tbaa !241
  %442 = trunc i32 %441 to i8, !dbg !599
  %443 = lshr i32 %441, 8, !dbg !599
  %444 = trunc i32 %443 to i8, !dbg !599
  %445 = lshr i32 %441, 16, !dbg !599
  %446 = trunc i32 %445 to i8, !dbg !599
  %447 = lshr i32 %441, 24, !dbg !599
  %448 = trunc i32 %447 to i8, !dbg !599
  %449 = bitcast i32* %440 to i8*, !dbg !599
  store i8 %448, i8* %449, align 4, !dbg !599, !tbaa !564
  %450 = getelementptr inbounds i8, i8* %449, i64 1, !dbg !599
  store i8 %446, i8* %450, align 1, !dbg !599, !tbaa !564
  %451 = getelementptr inbounds i8, i8* %449, i64 2, !dbg !599
  store i8 %444, i8* %451, align 2, !dbg !599, !tbaa !564
  %452 = getelementptr inbounds i8, i8* %449, i64 3, !dbg !599
  store i8 %442, i8* %452, align 1, !dbg !599, !tbaa !564
  %453 = getelementptr inbounds %struct.htab, %struct.htab* %15, i64 0, i32 0, i32 18, i64 %439, !dbg !600
  %454 = load i16, i16* %453, align 2, !dbg !600, !tbaa !601
  %455 = trunc i16 %454 to i8, !dbg !600
  %456 = lshr i16 %454, 8, !dbg !600
  %457 = trunc i16 %456 to i8, !dbg !600
  %458 = bitcast i16* %453 to i8*, !dbg !600
  store i8 %457, i8* %458, align 2, !dbg !600, !tbaa !564
  %459 = getelementptr inbounds i8, i8* %458, i64 1, !dbg !600
  store i8 %455, i8* %459, align 1, !dbg !600, !tbaa !564
  %460 = add nuw nsw i64 %418, 2, !dbg !602
  %461 = icmp eq i64 %460, 32, !dbg !603
  br i1 %461, label %462, label %417, !dbg !598, !llvm.loop !604

; <label>:462:                                    ; preds = %417
  %463 = trunc i64 %196 to i32, !dbg !508
  %464 = icmp eq i32 %463, -1, !dbg !607
  br i1 %464, label %465, label %468, !dbg !609

; <label>:465:                                    ; preds = %462
  %466 = call i32* @__errno() #6, !dbg !610
  %467 = load i32, i32* %466, align 4, !dbg !610, !tbaa !241
  br label %563, !dbg !610

; <label>:468:                                    ; preds = %462
  %469 = and i64 %196, 4294967295, !dbg !612
  %470 = icmp eq i64 %469, 260, !dbg !612
  br i1 %470, label %471, label %563, !dbg !614

; <label>:471:                                    ; preds = %468
  %472 = load i32, i32* %197, align 8, !dbg !615, !tbaa !617
  %473 = icmp eq i32 %472, 398689, !dbg !618
  br i1 %473, label %474, label %563, !dbg !619

; <label>:474:                                    ; preds = %471
  %475 = load i32, i32* %210, align 4, !dbg !620, !tbaa !622
  %476 = add i32 %475, -1, !dbg !623
  %477 = icmp ult i32 %476, 2, !dbg !623
  br i1 %477, label %478, label %563, !dbg !623

; <label>:478:                                    ; preds = %474
  %479 = getelementptr inbounds i8, i8* %14, i64 272, !dbg !624
  %480 = bitcast i8* %479 to i32 (i8*, i64)**, !dbg !624
  %481 = load i32 (i8*, i64)*, i32 (i8*, i64)** %480, align 8, !dbg !624, !tbaa !346
  %482 = call i32 %481(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !626
  %483 = load i32, i32* %405, align 8, !dbg !627, !tbaa !628
  %484 = icmp eq i32 %482, %483, !dbg !629
  br i1 %484, label %485, label %563, !dbg !630

; <label>:485:                                    ; preds = %478
  %486 = load i32, i32* %327, align 8, !dbg !631, !tbaa !466
  %487 = load i32, i32* %275, align 8, !dbg !632, !tbaa !333
  %488 = add i32 %487, %486, !dbg !633
  %489 = sdiv i32 %488, %487, !dbg !634
  %490 = getelementptr inbounds i8, i8* %14, i64 260, !dbg !636
  %491 = bitcast i8* %490 to i32*, !dbg !636
  store i32 0, i32* %491, align 4, !dbg !637, !tbaa !638
  %492 = call fastcc i32 @alloc_segs(%struct.htab* nonnull %15, i32 %489) #7, !dbg !639
  %493 = icmp eq i32 %492, 0, !dbg !639
  br i1 %493, label %494, label %571, !dbg !641

; <label>:494:                                    ; preds = %485
  %495 = getelementptr inbounds i8, i8* %14, i64 68, !dbg !642
  %496 = bitcast i8* %495 to [32 x i32]*, !dbg !642
  %497 = load i32, i32* %301, align 8, !dbg !643, !tbaa !452
  %498 = sext i32 %497 to i64, !dbg !644
  %499 = getelementptr inbounds [32 x i32], [32 x i32]* %496, i64 0, i64 %498, !dbg !644
  %500 = load i32, i32* %499, align 4, !dbg !644, !tbaa !241
  %501 = load i32, i32* %236, align 4, !dbg !645, !tbaa !363
  %502 = shl i32 %501, 3, !dbg !646
  %503 = add i32 %500, -1, !dbg !647
  %504 = add i32 %503, %502, !dbg !648
  %505 = load i32, i32* %249, align 8, !dbg !649, !tbaa !366
  %506 = add nsw i32 %505, 3, !dbg !650
  %507 = ashr i32 %504, %506, !dbg !651
  %508 = getelementptr inbounds i8, i8* %14, i64 592, !dbg !653
  %509 = bitcast i8* %508 to i32*, !dbg !653
  store i32 %507, i32* %509, align 8, !dbg !654, !tbaa !655
  %510 = getelementptr inbounds i8, i8* %14, i64 336, !dbg !656
  %511 = sext i32 %507 to i64, !dbg !657
  %512 = shl nsw i64 %511, 3, !dbg !658
  %513 = call i8* @memset(i8* nonnull %510, i32 0, i64 %512) #6, !dbg !659
  br label %514

; <label>:514:                                    ; preds = %180, %494
  %515 = phi i32 [ 1, %180 ], [ %40, %494 ]
  %516 = icmp eq %struct.HASHINFO* %4, null, !dbg !660
  br i1 %516, label %522, label %517, !dbg !662

; <label>:517:                                    ; preds = %514
  %518 = getelementptr inbounds %struct.HASHINFO, %struct.HASHINFO* %4, i64 0, i32 3, !dbg !663
  %519 = load i32, i32* %518, align 4, !dbg !663, !tbaa !664
  %520 = icmp eq i32 %519, 0, !dbg !665
  br i1 %520, label %522, label %521, !dbg !666

; <label>:521:                                    ; preds = %517
  call void @__buf_init(%struct.htab* nonnull %15, i32 %519) #6, !dbg !667
  br label %523, !dbg !667

; <label>:522:                                    ; preds = %517, %514
  call void @__buf_init(%struct.htab* nonnull %15, i32 65536) #6, !dbg !668
  br label %523

; <label>:523:                                    ; preds = %522, %521
  %524 = getelementptr inbounds i8, i8* %14, i64 324, !dbg !669
  %525 = bitcast i8* %524 to i32*, !dbg !669
  store i32 %515, i32* %525, align 4, !dbg !670, !tbaa !671
  br i1 %22, label %526, label %530, !dbg !672

; <label>:526:                                    ; preds = %523
  %527 = load i32, i32* %21, align 8, !dbg !673, !tbaa !261
  %528 = lshr i32 %527, 1
  %529 = and i32 %528, 1
  br label %530

; <label>:530:                                    ; preds = %526, %523
  %531 = phi i32 [ 0, %523 ], [ %529, %526 ]
  %532 = getelementptr inbounds i8, i8* %14, i64 328, !dbg !674
  %533 = bitcast i8* %532 to i32*, !dbg !674
  store i32 %531, i32* %533, align 8, !dbg !675, !tbaa !676
  %534 = getelementptr inbounds i8, i8* %14, i64 312, !dbg !677
  %535 = bitcast i8* %534 to i32*, !dbg !677
  store i32 -1, i32* %535, align 8, !dbg !678, !tbaa !679
  %536 = call i8* @malloc(i64 72) #6, !dbg !680
  %537 = icmp eq i8* %536, null, !dbg !682
  br i1 %537, label %538, label %543, !dbg !683

; <label>:538:                                    ; preds = %530
  %539 = call i32* @__errno() #6, !dbg !684
  %540 = load i32, i32* %539, align 4, !dbg !684, !tbaa !241
  %541 = call fastcc i32 @hdestroy(%struct.htab* nonnull %15) #7, !dbg !686
  %542 = call i32* @__errno() #6, !dbg !687
  store i32 %540, i32* %542, align 4, !dbg !688, !tbaa !241
  br label %571, !dbg !689

; <label>:543:                                    ; preds = %530
  %544 = bitcast i8* %536 to %struct.__db*, !dbg !690
  %545 = getelementptr inbounds i8, i8* %536, i64 56, !dbg !692
  %546 = bitcast i8* %545 to i8**, !dbg !693
  store i8* %14, i8** %546, align 8, !dbg !693, !tbaa !694
  %547 = getelementptr inbounds i8, i8* %536, i64 8, !dbg !696
  %548 = bitcast i8* %547 to i32 (%struct.__db*)**, !dbg !696
  store i32 (%struct.__db*)* @hash_close, i32 (%struct.__db*)** %548, align 8, !dbg !697, !tbaa !698
  %549 = getelementptr inbounds i8, i8* %536, i64 16, !dbg !699
  %550 = bitcast i8* %549 to i32 (%struct.__db*, %struct.DBT*, i32)**, !dbg !699
  store i32 (%struct.__db*, %struct.DBT*, i32)* @hash_delete, i32 (%struct.__db*, %struct.DBT*, i32)** %550, align 8, !dbg !700, !tbaa !701
  %551 = getelementptr inbounds i8, i8* %536, i64 64, !dbg !702
  %552 = bitcast i8* %551 to i32 (%struct.__db*)**, !dbg !702
  store i32 (%struct.__db*)* @hash_fd, i32 (%struct.__db*)** %552, align 8, !dbg !703, !tbaa !704
  %553 = getelementptr inbounds i8, i8* %536, i64 24, !dbg !705
  %554 = bitcast i8* %553 to <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>*, !dbg !706
  store <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*> <i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_get, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_put>, <2 x i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)*>* %554, align 8, !dbg !706, !tbaa !343
  %555 = getelementptr inbounds i8, i8* %536, i64 40, !dbg !707
  %556 = bitcast i8* %555 to i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)**, !dbg !707
  store i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)* @hash_seq, i32 (%struct.__db*, %struct.DBT*, %struct.DBT*, i32)** %556, align 8, !dbg !708, !tbaa !709
  %557 = getelementptr inbounds i8, i8* %536, i64 48, !dbg !710
  %558 = bitcast i8* %557 to i32 (%struct.__db*, i32)**, !dbg !710
  store i32 (%struct.__db*, i32)* @hash_sync, i32 (%struct.__db*, i32)** %558, align 8, !dbg !711, !tbaa !712
  %559 = bitcast i8* %536 to i32*, !dbg !713
  store i32 1, i32* %559, align 8, !dbg !714, !tbaa !715
  br label %571, !dbg !716

; <label>:560:                                    ; preds = %177, %129, %89, %126, %107
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %62) #5, !dbg !493
  %561 = call i32* @__errno() #6, !dbg !717
  %562 = load i32, i32* %561, align 4, !dbg !717, !tbaa !241
  br label %567, !dbg !719

; <label>:563:                                    ; preds = %465, %468, %471, %474, %478
  %564 = phi i32 [ 79, %478 ], [ 79, %474 ], [ 79, %471 ], [ 79, %468 ], [ %467, %465 ]
  %565 = load i32, i32* %19, align 4, !dbg !720, !tbaa !254
  %566 = call i32 @close(i32 %565) #6, !dbg !722
  br label %567, !dbg !723

; <label>:567:                                    ; preds = %560, %563, %44
  %568 = phi i8* [ %14, %44 ], [ %14, %563 ], [ null, %560 ], !dbg !724
  %569 = phi i32 [ %46, %44 ], [ %564, %563 ], [ %562, %560 ], !dbg !725
  call void @free(i8* %568) #6, !dbg !726
  %570 = call i32* @__errno() #6, !dbg !727
  store i32 %569, i32* %570, align 4, !dbg !728, !tbaa !241
  br label %571, !dbg !729

; <label>:571:                                    ; preds = %485, %13, %567, %543, %538, %11
  %572 = phi %struct.__db* [ null, %11 ], [ null, %567 ], [ %544, %543 ], [ null, %538 ], [ null, %13 ], [ null, %485 ], !dbg !730
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %8) #5, !dbg !731
  ret %struct.__db* %572, !dbg !731
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
define internal fastcc i32 @alloc_segs(%struct.htab*, i32) unnamed_addr #0 !dbg !732 {
  %3 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !741
  %4 = load i32, i32* %3, align 4, !dbg !741, !tbaa !486
  %5 = sext i32 %4 to i64, !dbg !743
  %6 = tail call i8* @calloc(i64 %5, i64 8) #6, !dbg !744
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !745
  %8 = bitcast %struct._bufhead**** %7 to i8**, !dbg !746
  store i8* %6, i8** %8, align 8, !dbg !746, !tbaa !747
  %9 = icmp eq i8* %6, null, !dbg !748
  br i1 %9, label %10, label %15, !dbg !749

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno() #6, !dbg !750
  %12 = load i32, i32* %11, align 4, !dbg !750, !tbaa !241
  %13 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !753
  %14 = tail call i32* @__errno() #6, !dbg !754
  store i32 %12, i32* %14, align 4, !dbg !755, !tbaa !241
  br label %90, !dbg !756

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !757
  %17 = load i32, i32* %16, align 4, !dbg !757, !tbaa !336
  %18 = shl i32 %1, %17, !dbg !759
  %19 = sext i32 %18 to i64, !dbg !760
  %20 = tail call i8* @calloc(i64 %19, i64 8) #6, !dbg !761
  %21 = bitcast i8* %20 to %struct._bufhead**, !dbg !762
  %22 = icmp eq i8* %20, null, !dbg !764
  br i1 %22, label %35, label %23, !dbg !765

; <label>:23:                                     ; preds = %15
  %24 = icmp sgt i32 %1, 0, !dbg !767
  br i1 %24, label %25, label %90, !dbg !770

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %16, align 4, !tbaa !336
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  %28 = load i32, i32* %27, align 4, !dbg !771, !tbaa !638
  %29 = zext i32 %1 to i64
  %30 = add nsw i64 %29, -1, !dbg !770
  %31 = and i64 %29, 3, !dbg !770
  %32 = icmp ult i64 %30, 3, !dbg !770
  br i1 %32, label %73, label %33, !dbg !770

; <label>:33:                                     ; preds = %25
  %34 = sub nsw i64 %29, %31, !dbg !770
  br label %40, !dbg !770

; <label>:35:                                     ; preds = %15
  %36 = tail call i32* @__errno() #6, !dbg !772
  %37 = load i32, i32* %36, align 4, !dbg !772, !tbaa !241
  %38 = tail call fastcc i32 @hdestroy(%struct.htab* nonnull %0) #7, !dbg !774
  %39 = tail call i32* @__errno() #6, !dbg !775
  store i32 %37, i32* %39, align 4, !dbg !776, !tbaa !241
  br label %90, !dbg !777

; <label>:40:                                     ; preds = %40, %33
  %41 = phi i64 [ 0, %33 ], [ %70, %40 ], !dbg !766
  %42 = phi i64 [ %34, %33 ], [ %71, %40 ]
  %43 = trunc i64 %41 to i32, !dbg !778
  %44 = shl i32 %43, %26, !dbg !778
  %45 = sext i32 %44 to i64, !dbg !779
  %46 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %45, !dbg !779
  %47 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !780, !tbaa !747
  %48 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %47, i64 %41, !dbg !781
  store %struct._bufhead** %46, %struct._bufhead*** %48, align 8, !dbg !782, !tbaa !343
  %49 = or i64 %41, 1, !dbg !783
  %50 = trunc i64 %49 to i32, !dbg !778
  %51 = shl i32 %50, %26, !dbg !778
  %52 = sext i32 %51 to i64, !dbg !779
  %53 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %52, !dbg !779
  %54 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !780, !tbaa !747
  %55 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %54, i64 %49, !dbg !781
  store %struct._bufhead** %53, %struct._bufhead*** %55, align 8, !dbg !782, !tbaa !343
  %56 = or i64 %41, 2, !dbg !783
  %57 = trunc i64 %56 to i32, !dbg !778
  %58 = shl i32 %57, %26, !dbg !778
  %59 = sext i32 %58 to i64, !dbg !779
  %60 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %59, !dbg !779
  %61 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !780, !tbaa !747
  %62 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %61, i64 %56, !dbg !781
  store %struct._bufhead** %60, %struct._bufhead*** %62, align 8, !dbg !782, !tbaa !343
  %63 = or i64 %41, 3, !dbg !783
  %64 = trunc i64 %63 to i32, !dbg !778
  %65 = shl i32 %64, %26, !dbg !778
  %66 = sext i32 %65 to i64, !dbg !779
  %67 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %66, !dbg !779
  %68 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !780, !tbaa !747
  %69 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %68, i64 %63, !dbg !781
  store %struct._bufhead** %67, %struct._bufhead*** %69, align 8, !dbg !782, !tbaa !343
  %70 = add nuw nsw i64 %41, 4, !dbg !783
  %71 = add i64 %42, -4, !dbg !770
  %72 = icmp eq i64 %71, 0, !dbg !770
  br i1 %72, label %73, label %40, !dbg !770, !llvm.loop !784

; <label>:73:                                     ; preds = %40, %25
  %74 = phi i64 [ 0, %25 ], [ %70, %40 ]
  %75 = icmp eq i64 %31, 0, !dbg !770
  br i1 %75, label %88, label %76, !dbg !770

; <label>:76:                                     ; preds = %73, %76
  %77 = phi i64 [ %85, %76 ], [ %74, %73 ], !dbg !766
  %78 = phi i64 [ %86, %76 ], [ %31, %73 ]
  %79 = trunc i64 %77 to i32, !dbg !778
  %80 = shl i32 %79, %26, !dbg !778
  %81 = sext i32 %80 to i64, !dbg !779
  %82 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %21, i64 %81, !dbg !779
  %83 = load %struct._bufhead***, %struct._bufhead**** %7, align 8, !dbg !780, !tbaa !747
  %84 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %83, i64 %77, !dbg !781
  store %struct._bufhead** %82, %struct._bufhead*** %84, align 8, !dbg !782, !tbaa !343
  %85 = add nuw nsw i64 %77, 1, !dbg !783
  %86 = add i64 %78, -1, !dbg !770
  %87 = icmp eq i64 %86, 0, !dbg !770
  br i1 %87, label %88, label %76, !dbg !770, !llvm.loop !786

; <label>:88:                                     ; preds = %76, %73
  %89 = add i32 %28, %1, !dbg !770
  store i32 %89, i32* %27, align 4, !dbg !771, !tbaa !638
  br label %90, !dbg !770

; <label>:90:                                     ; preds = %23, %88, %35, %10
  %91 = phi i32 [ -1, %10 ], [ -1, %35 ], [ 0, %88 ], [ 0, %23 ], !dbg !788
  ret i32 %91, !dbg !789
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__buf_init(%struct.htab*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hdestroy(%struct.htab*) unnamed_addr #0 !dbg !790 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !799
  %3 = load i32, i32* %2, align 8, !dbg !799, !tbaa !676
  %4 = tail call i32 @__buf_free(%struct.htab* %0, i32 1, i32 %3) #6, !dbg !801
  %5 = icmp eq i32 %4, 0, !dbg !801
  br i1 %5, label %9, label %6, !dbg !802

; <label>:6:                                      ; preds = %1
  %7 = tail call i32* @__errno() #6, !dbg !803
  %8 = load i32, i32* %7, align 4, !dbg !803, !tbaa !241
  br label %9, !dbg !804

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ], !dbg !805
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !806
  %12 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !806, !tbaa !747
  %13 = icmp eq %struct._bufhead*** %12, null, !dbg !808
  br i1 %13, label %39, label %14, !dbg !809

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct._bufhead*** %12 to i8**, !dbg !810
  %16 = load i8*, i8** %15, align 8, !dbg !810, !tbaa !343
  tail call void @free(i8* %16) #6, !dbg !812
  %17 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !813
  %18 = load i32, i32* %17, align 8, !dbg !814, !tbaa !815
  %19 = add nsw i32 %18, -1, !dbg !814
  store i32 %19, i32* %17, align 8, !dbg !814, !tbaa !815
  %20 = icmp eq i32 %18, 0, !dbg !816
  %21 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !817, !tbaa !747
  br i1 %20, label %36, label %22, !dbg !816

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1
  br label %24, !dbg !816

; <label>:24:                                     ; preds = %22, %24
  %25 = phi %struct._bufhead*** [ %21, %22 ], [ %35, %24 ]
  %26 = load i32, i32* %23, align 4, !dbg !818, !tbaa !638
  %27 = add nsw i32 %26, -1, !dbg !818
  store i32 %27, i32* %23, align 4, !dbg !818, !tbaa !638
  %28 = sext i32 %27 to i64, !dbg !819
  %29 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %25, i64 %28, !dbg !819
  %30 = bitcast %struct._bufhead*** %29 to i8**, !dbg !819
  %31 = load i8*, i8** %30, align 8, !dbg !819, !tbaa !343
  tail call void @free(i8* %31) #6, !dbg !820
  %32 = load i32, i32* %17, align 8, !dbg !814, !tbaa !815
  %33 = add nsw i32 %32, -1, !dbg !814
  store i32 %33, i32* %17, align 8, !dbg !814, !tbaa !815
  %34 = icmp eq i32 %32, 0, !dbg !816
  %35 = load %struct._bufhead***, %struct._bufhead**** %11, align 8, !dbg !817, !tbaa !747
  br i1 %34, label %36, label %24, !dbg !816, !llvm.loop !821

; <label>:36:                                     ; preds = %24, %14
  %37 = phi %struct._bufhead*** [ %21, %14 ], [ %35, %24 ], !dbg !817
  %38 = bitcast %struct._bufhead*** %37 to i8*, !dbg !823
  tail call void @free(i8* %38) #6, !dbg !824
  br label %39, !dbg !825

; <label>:39:                                     ; preds = %9, %36
  %40 = tail call fastcc i32 @flush_meta(%struct.htab* nonnull %0) #7, !dbg !826
  %41 = icmp eq i32 %40, 0, !dbg !826
  %42 = icmp ne i32 %10, 0, !dbg !828
  %43 = or i1 %42, %41, !dbg !829
  br i1 %43, label %47, label %44, !dbg !829

; <label>:44:                                     ; preds = %39
  %45 = tail call i32* @__errno() #6, !dbg !830
  %46 = load i32, i32* %45, align 4, !dbg !830, !tbaa !241
  br label %47, !dbg !831

; <label>:47:                                     ; preds = %39, %44
  %48 = phi i32 [ %10, %39 ], [ %46, %44 ], !dbg !832
  %49 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !834
  %50 = load i32, i32* %49, align 8, !dbg !834, !tbaa !655
  %51 = icmp sgt i32 %50, 0, !dbg !837
  br i1 %51, label %52, label %66, !dbg !838

; <label>:52:                                     ; preds = %47, %61
  %53 = phi i32 [ %62, %61 ], [ %50, %47 ]
  %54 = phi i64 [ %63, %61 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %54, !dbg !839
  %56 = load i32*, i32** %55, align 8, !dbg !839, !tbaa !343
  %57 = icmp eq i32* %56, null, !dbg !839
  br i1 %57, label %61, label %58, !dbg !841

; <label>:58:                                     ; preds = %52
  %59 = bitcast i32* %56 to i8*, !dbg !842
  tail call void @free(i8* %59) #6, !dbg !843
  %60 = load i32, i32* %49, align 8, !dbg !834, !tbaa !655
  br label %61, !dbg !843

; <label>:61:                                     ; preds = %52, %58
  %62 = phi i32 [ %53, %52 ], [ %60, %58 ], !dbg !834
  %63 = add nuw nsw i64 %54, 1, !dbg !844
  %64 = sext i32 %62 to i64, !dbg !837
  %65 = icmp slt i64 %63, %64, !dbg !837
  br i1 %65, label %52, label %66, !dbg !838, !llvm.loop !845

; <label>:66:                                     ; preds = %61, %47
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !847
  %68 = load i32, i32* %67, align 4, !dbg !847, !tbaa !254
  %69 = icmp eq i32 %68, -1, !dbg !849
  br i1 %69, label %72, label %70, !dbg !850

; <label>:70:                                     ; preds = %66
  %71 = tail call i32 @close(i32 %68) #6, !dbg !851
  br label %72, !dbg !852

; <label>:72:                                     ; preds = %66, %70
  %73 = bitcast %struct.htab* %0 to i8*, !dbg !853
  tail call void @free(i8* %73) #6, !dbg !854
  %74 = icmp eq i32 %48, 0, !dbg !855
  br i1 %74, label %77, label %75, !dbg !857

; <label>:75:                                     ; preds = %72
  %76 = tail call i32* @__errno() #6, !dbg !858
  store i32 %48, i32* %76, align 4, !dbg !860, !tbaa !241
  br label %77, !dbg !861

; <label>:77:                                     ; preds = %72, %75
  %78 = phi i32 [ -1, %75 ], [ 0, %72 ], !dbg !805
  ret i32 %78, !dbg !862
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_close(%struct.__db*) #0 !dbg !863 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !871
  br i1 %2, label %9, label %3, !dbg !873

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !874
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !874
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !874, !tbaa !694
  %7 = tail call fastcc i32 @hdestroy(%struct.htab* %6) #7, !dbg !876
  %8 = bitcast %struct.__db* %0 to i8*, !dbg !878
  tail call void @free(i8* %8) #6, !dbg !879
  br label %9, !dbg !880

; <label>:9:                                      ; preds = %1, %3
  %10 = phi i32 [ %7, %3 ], [ -1, %1 ], !dbg !881
  ret i32 %10, !dbg !882
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_delete(%struct.__db* nocapture readonly, %struct.DBT*, i32) #0 !dbg !883 {
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !896
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !896
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !896, !tbaa !694
  %7 = icmp ugt i32 %2, 1, !dbg !898
  br i1 %7, label %8, label %11, !dbg !898

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno() #6, !dbg !900
  store i32 22, i32* %9, align 4, !dbg !902, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !903
  store i32 22, i32* %10, align 8, !dbg !904, !tbaa !905
  br label %21, !dbg !906

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 4, !dbg !907
  %13 = load i32, i32* %12, align 8, !dbg !907, !tbaa !261
  %14 = and i32 %13, 3, !dbg !909
  %15 = icmp eq i32 %14, 0, !dbg !910
  br i1 %15, label %16, label %19, !dbg !911

; <label>:16:                                     ; preds = %11
  %17 = tail call i32* @__errno() #6, !dbg !912
  store i32 1, i32* %17, align 4, !dbg !914, !tbaa !241
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 11, !dbg !915
  store i32 1, i32* %18, align 8, !dbg !916, !tbaa !905
  br label %21, !dbg !917

; <label>:19:                                     ; preds = %11
  %20 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %6, i32 3, %struct.DBT* %1, %struct.DBT* null) #7, !dbg !918
  br label %21, !dbg !919

; <label>:21:                                     ; preds = %19, %16, %8
  %22 = phi i32 [ -1, %8 ], [ -1, %16 ], [ %20, %19 ], !dbg !920
  ret i32 %22, !dbg !921
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_fd(%struct.__db* readonly) #0 !dbg !922 {
  %2 = icmp eq %struct.__db* %0, null, !dbg !929
  br i1 %2, label %12, label %3, !dbg !931

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !932
  %5 = bitcast i8** %4 to %struct.htab**, !dbg !932
  %6 = load %struct.htab*, %struct.htab** %5, align 8, !dbg !932, !tbaa !694
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %6, i64 0, i32 5, !dbg !934
  %8 = load i32, i32* %7, align 4, !dbg !934, !tbaa !254
  %9 = icmp eq i32 %8, -1, !dbg !936
  br i1 %9, label %10, label %12, !dbg !937

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno() #6, !dbg !938
  store i32 2, i32* %11, align 4, !dbg !940, !tbaa !241
  br label %12, !dbg !941

; <label>:12:                                     ; preds = %3, %1, %10
  %13 = phi i32 [ -1, %10 ], [ -1, %1 ], [ %8, %3 ], !dbg !942
  ret i32 %13, !dbg !943
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_get(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !944 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !957
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !957
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !957, !tbaa !694
  %8 = icmp eq i32 %3, 0, !dbg !959
  br i1 %8, label %12, label %9, !dbg !961

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno() #6, !dbg !962
  store i32 22, i32* %10, align 4, !dbg !964, !tbaa !241
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !965
  store i32 22, i32* %11, align 8, !dbg !966, !tbaa !905
  br label %14, !dbg !967

; <label>:12:                                     ; preds = %4
  %13 = tail call fastcc i32 @hash_access(%struct.htab* %7, i32 0, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !968
  br label %14, !dbg !969

; <label>:14:                                     ; preds = %12, %9
  %15 = phi i32 [ -1, %9 ], [ %13, %12 ], !dbg !970
  ret i32 %15, !dbg !971
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_put(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !972 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !985
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !985
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !985, !tbaa !694
  %8 = or i32 %3, 8, !dbg !987
  %9 = icmp eq i32 %8, 8, !dbg !987
  br i1 %9, label %13, label %10, !dbg !987

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !989
  store i32 22, i32* %11, align 8, !dbg !991, !tbaa !905
  %12 = tail call i32* @__errno() #6, !dbg !992
  store i32 22, i32* %12, align 4, !dbg !993, !tbaa !241
  br label %25, !dbg !994

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 4, !dbg !995
  %15 = load i32, i32* %14, align 8, !dbg !995, !tbaa !261
  %16 = and i32 %15, 3, !dbg !997
  %17 = icmp eq i32 %16, 0, !dbg !998
  br i1 %17, label %18, label %21, !dbg !999

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno() #6, !dbg !1000
  store i32 1, i32* %19, align 4, !dbg !1002, !tbaa !241
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1003
  store i32 1, i32* %20, align 8, !dbg !1004, !tbaa !905
  br label %25, !dbg !1005

; <label>:21:                                     ; preds = %13
  %22 = icmp eq i32 %3, 8, !dbg !1006
  %23 = select i1 %22, i32 2, i32 1, !dbg !1007
  %24 = tail call fastcc i32 @hash_access(%struct.htab* nonnull %7, i32 %23, %struct.DBT* %1, %struct.DBT* %2) #7, !dbg !1008
  br label %25, !dbg !1009

; <label>:25:                                     ; preds = %21, %18, %10
  %26 = phi i32 [ -1, %10 ], [ -1, %18 ], [ %24, %21 ], !dbg !1010
  ret i32 %26, !dbg !1011
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_seq(%struct.__db* nocapture readonly, %struct.DBT*, %struct.DBT*, i32) #0 !dbg !1012 {
  %5 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1029
  %6 = bitcast i8** %5 to %struct.htab**, !dbg !1029
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !1029, !tbaa !694
  switch i32 %3, label %8 [
    i32 7, label %11
    i32 3, label %11
    i32 0, label %11
  ], !dbg !1031

; <label>:8:                                      ; preds = %4
  %9 = tail call i32* @__errno() #6, !dbg !1033
  store i32 22, i32* %9, align 4, !dbg !1035, !tbaa !241
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 11, !dbg !1036
  store i32 22, i32* %10, align 8, !dbg !1037, !tbaa !905
  br label %155, !dbg !1038

; <label>:11:                                     ; preds = %4, %4, %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 9, !dbg !1039
  %13 = load i32, i32* %12, align 8, !dbg !1039, !tbaa !679
  %14 = icmp slt i32 %13, 0, !dbg !1041
  %15 = icmp eq i32 %3, 3, !dbg !1042
  %16 = or i1 %15, %14, !dbg !1043
  br i1 %16, label %20, label %17, !dbg !1043

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10
  br label %23, !dbg !1043

; <label>:20:                                     ; preds = %11
  store i32 0, i32* %12, align 8, !dbg !1044, !tbaa !679
  %21 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 10, !dbg !1046
  store i32 1, i32* %21, align 4, !dbg !1047, !tbaa !1048
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 8, !dbg !1049
  store %struct._bufhead* null, %struct._bufhead** %22, align 8, !dbg !1050, !tbaa !1051
  br label %23, !dbg !1052

; <label>:23:                                     ; preds = %17, %20
  %24 = phi i32* [ %19, %17 ], [ %21, %20 ]
  %25 = phi %struct._bufhead** [ %18, %17 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 10
  br label %27, !dbg !1054

; <label>:27:                                     ; preds = %99, %23
  %28 = phi %struct._bufhead* [ undef, %23 ], [ %95, %99 ]
  %29 = phi i16* [ null, %23 ], [ %96, %99 ], !dbg !1056
  %30 = icmp eq i16* %29, null, !dbg !1061
  br i1 %30, label %34, label %31, !dbg !1062

; <label>:31:                                     ; preds = %27
  %32 = load i16, i16* %29, align 2, !dbg !1063, !tbaa !601
  %33 = icmp eq i16 %32, 0, !dbg !1064
  br i1 %33, label %34, label %103, !dbg !1065

; <label>:34:                                     ; preds = %27, %31
  %35 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1066, !tbaa !1051
  %36 = icmp eq %struct._bufhead* %35, null, !dbg !1067
  br i1 %36, label %37, label %64, !dbg !1068

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %12, align 8, !dbg !1069, !tbaa !679
  %39 = load i32, i32* %26, align 8, !dbg !1073, !tbaa !466
  %40 = icmp ugt i32 %38, %39, !dbg !1075
  br i1 %40, label %57, label %41, !dbg !1076

; <label>:41:                                     ; preds = %37, %53
  %42 = phi i32 [ %54, %53 ], [ %38, %37 ]
  %43 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %42, %struct._bufhead* null, i32 0) #6, !dbg !1077
  %44 = icmp eq %struct._bufhead* %43, null, !dbg !1079
  br i1 %44, label %155, label %45, !dbg !1081

; <label>:45:                                     ; preds = %41
  store %struct._bufhead* %43, %struct._bufhead** %25, align 8, !dbg !1082, !tbaa !1051
  %46 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %43, i64 0, i32 4, !dbg !1083
  %47 = bitcast i8** %46 to i16**, !dbg !1083
  %48 = load i16*, i16** %47, align 8, !dbg !1083, !tbaa !1084
  %49 = load i16, i16* %48, align 2, !dbg !1085, !tbaa !601
  %50 = icmp eq i16 %49, 0, !dbg !1085
  br i1 %50, label %53, label %51, !dbg !1087

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %26, align 8, !dbg !1088, !tbaa !466
  br label %57, !dbg !1087

; <label>:53:                                     ; preds = %45
  %54 = add i32 %42, 1, !dbg !1090
  store i32 1, i32* %24, align 4, !dbg !1091, !tbaa !1048
  %55 = load i32, i32* %26, align 8, !dbg !1073, !tbaa !466
  %56 = icmp ugt i32 %54, %55, !dbg !1075
  br i1 %56, label %57, label %41, !dbg !1076, !llvm.loop !1092

; <label>:57:                                     ; preds = %53, %51, %37
  %58 = phi i32 [ %39, %37 ], [ %52, %51 ], [ %55, %53 ], !dbg !1088
  %59 = phi i32 [ %38, %37 ], [ %42, %51 ], [ %54, %53 ], !dbg !1094
  %60 = phi %struct._bufhead* [ null, %37 ], [ %43, %51 ], [ %43, %53 ], !dbg !1056
  %61 = phi i16* [ %29, %37 ], [ %48, %51 ], [ %48, %53 ], !dbg !1095
  store i32 %59, i32* %12, align 8, !dbg !1096, !tbaa !679
  %62 = icmp sgt i32 %59, %58, !dbg !1097
  br i1 %62, label %63, label %68, !dbg !1098

; <label>:63:                                     ; preds = %57
  store i32 -1, i32* %12, align 8, !dbg !1099, !tbaa !679
  br label %155, !dbg !1101

; <label>:64:                                     ; preds = %34
  %65 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %35, i64 0, i32 4, !dbg !1102
  %66 = bitcast i8** %65 to i16**, !dbg !1102
  %67 = load i16*, i16** %66, align 8, !dbg !1102, !tbaa !1084
  br label %68

; <label>:68:                                     ; preds = %57, %64
  %69 = phi %struct._bufhead* [ %35, %64 ], [ %60, %57 ], !dbg !1103
  %70 = phi i16* [ %67, %64 ], [ %61, %57 ], !dbg !1103
  %71 = load i32, i32* %24, align 4, !dbg !1104, !tbaa !1048
  %72 = add nsw i32 %71, 1, !dbg !1105
  %73 = sext i32 %72 to i64, !dbg !1106
  %74 = getelementptr inbounds i16, i16* %70, i64 %73, !dbg !1106
  %75 = load i16, i16* %74, align 2, !dbg !1106, !tbaa !601
  %76 = icmp eq i16 %75, 0, !dbg !1107
  br i1 %76, label %77, label %94, !dbg !1108

; <label>:77:                                     ; preds = %68, %87
  %78 = phi i32 [ 1, %87 ], [ %71, %68 ]
  %79 = phi i16* [ %90, %87 ], [ %70, %68 ]
  %80 = phi %struct._bufhead* [ %85, %87 ], [ %69, %68 ]
  %81 = sext i32 %78 to i64, !dbg !1109
  %82 = getelementptr inbounds i16, i16* %79, i64 %81, !dbg !1109
  %83 = load i16, i16* %82, align 2, !dbg !1109, !tbaa !601
  %84 = zext i16 %83 to i32, !dbg !1109
  %85 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %7, i32 %84, %struct._bufhead* %80, i32 0) #6, !dbg !1111
  store %struct._bufhead* %85, %struct._bufhead** %25, align 8, !dbg !1112, !tbaa !1051
  %86 = icmp eq %struct._bufhead* %85, null, !dbg !1113
  br i1 %86, label %155, label %87, !dbg !1115

; <label>:87:                                     ; preds = %77
  %88 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %85, i64 0, i32 4, !dbg !1116
  %89 = bitcast i8** %88 to i16**, !dbg !1116
  %90 = load i16*, i16** %89, align 8, !dbg !1116, !tbaa !1084
  store i32 1, i32* %24, align 4, !dbg !1117, !tbaa !1048
  %91 = getelementptr inbounds i16, i16* %90, i64 2, !dbg !1106
  %92 = load i16, i16* %91, align 2, !dbg !1106, !tbaa !601
  %93 = icmp eq i16 %92, 0, !dbg !1107
  br i1 %93, label %77, label %94, !dbg !1108, !llvm.loop !1118

; <label>:94:                                     ; preds = %87, %68
  %95 = phi %struct._bufhead* [ %69, %68 ], [ %85, %87 ], !dbg !1120
  %96 = phi i16* [ %70, %68 ], [ %90, %87 ], !dbg !1120
  %97 = load i16, i16* %96, align 2, !dbg !1121, !tbaa !601
  %98 = icmp eq i16 %97, 0, !dbg !1121
  br i1 %98, label %100, label %99, !dbg !1123

; <label>:99:                                     ; preds = %94, %100
  br label %27, !dbg !1053, !llvm.loop !1124

; <label>:100:                                    ; preds = %94
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1126, !tbaa !1051
  %101 = load i32, i32* %12, align 8, !dbg !1128, !tbaa !679
  %102 = add nsw i32 %101, 1, !dbg !1128
  store i32 %102, i32* %12, align 8, !dbg !1128, !tbaa !679
  br label %99, !dbg !1129

; <label>:103:                                    ; preds = %31
  %104 = load i32, i32* %24, align 4, !dbg !1130, !tbaa !1048
  %105 = and i32 %104, 65535, !dbg !1131
  %106 = add nuw nsw i32 %105, 1, !dbg !1133
  %107 = zext i32 %106 to i64, !dbg !1134
  %108 = getelementptr inbounds i16, i16* %29, i64 %107, !dbg !1134
  %109 = load i16, i16* %108, align 2, !dbg !1134, !tbaa !601
  %110 = icmp ult i16 %109, 4, !dbg !1135
  br i1 %110, label %111, label %114, !dbg !1136

; <label>:111:                                    ; preds = %103
  %112 = tail call i32 @__big_keydata(%struct.htab* nonnull %7, %struct._bufhead* %28, %struct.DBT* %1, %struct.DBT* %2, i32 1) #6, !dbg !1137
  %113 = icmp eq i32 %112, 0, !dbg !1137
  br i1 %113, label %154, label %155, !dbg !1140

; <label>:114:                                    ; preds = %103
  %115 = load %struct._bufhead*, %struct._bufhead** %25, align 8, !dbg !1141, !tbaa !1051
  %116 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %115, i64 0, i32 4, !dbg !1143
  %117 = load i8*, i8** %116, align 8, !dbg !1143, !tbaa !1084
  %118 = zext i32 %105 to i64, !dbg !1144
  %119 = getelementptr inbounds i16, i16* %29, i64 %118, !dbg !1144
  %120 = load i16, i16* %119, align 2, !dbg !1144, !tbaa !601
  %121 = zext i16 %120 to i64, !dbg !1145
  %122 = getelementptr inbounds i8, i8* %117, i64 %121, !dbg !1145
  %123 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 0, !dbg !1146
  store i8* %122, i8** %123, align 8, !dbg !1147, !tbaa !1148
  %124 = icmp ugt i32 %105, 1, !dbg !1150
  br i1 %124, label %125, label %131, !dbg !1151

; <label>:125:                                    ; preds = %114
  %126 = add nsw i32 %105, -1, !dbg !1152
  %127 = sext i32 %126 to i64, !dbg !1153
  %128 = getelementptr inbounds i16, i16* %29, i64 %127, !dbg !1153
  %129 = load i16, i16* %128, align 2, !dbg !1153, !tbaa !601
  %130 = zext i16 %129 to i32, !dbg !1153
  br label %134, !dbg !1151

; <label>:131:                                    ; preds = %114
  %132 = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 0, i32 3, !dbg !1154
  %133 = load i32, i32* %132, align 4, !dbg !1154, !tbaa !363
  br label %134, !dbg !1151

; <label>:134:                                    ; preds = %131, %125
  %135 = phi i32 [ %130, %125 ], [ %133, %131 ], !dbg !1151
  %136 = zext i16 %120 to i32, !dbg !1155
  %137 = sub nsw i32 %135, %136, !dbg !1156
  %138 = sext i32 %137 to i64, !dbg !1157
  %139 = getelementptr inbounds %struct.DBT, %struct.DBT* %1, i64 0, i32 1, !dbg !1158
  store i64 %138, i64* %139, align 8, !dbg !1159, !tbaa !1160
  %140 = zext i16 %109 to i64, !dbg !1161
  %141 = getelementptr inbounds i8, i8* %117, i64 %140, !dbg !1161
  %142 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1162
  store i8* %141, i8** %142, align 8, !dbg !1163, !tbaa !1148
  %143 = sub nsw i64 %121, %140, !dbg !1164
  %144 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1165
  store i64 %143, i64* %144, align 8, !dbg !1166, !tbaa !1160
  %145 = add i32 %104, 2, !dbg !1167
  %146 = and i32 %145, 65535, !dbg !1168
  %147 = zext i16 %32 to i32, !dbg !1171
  %148 = icmp ugt i32 %146, %147, !dbg !1172
  br i1 %148, label %149, label %152, !dbg !1173

; <label>:149:                                    ; preds = %134
  store %struct._bufhead* null, %struct._bufhead** %25, align 8, !dbg !1174, !tbaa !1051
  %150 = load i32, i32* %12, align 8, !dbg !1176, !tbaa !679
  %151 = add nsw i32 %150, 1, !dbg !1176
  store i32 %151, i32* %12, align 8, !dbg !1176, !tbaa !679
  br label %152, !dbg !1177

; <label>:152:                                    ; preds = %134, %149
  %153 = phi i32 [ 1, %149 ], [ %146, %134 ]
  store i32 %153, i32* %24, align 4, !dbg !1178, !tbaa !1048
  br label %154, !dbg !1179

; <label>:154:                                    ; preds = %152, %111
  br label %155, !dbg !1179

; <label>:155:                                    ; preds = %41, %77, %111, %154, %63, %8
  %156 = phi i32 [ -1, %8 ], [ 1, %63 ], [ 0, %154 ], [ -1, %111 ], [ -1, %77 ], [ -1, %41 ], !dbg !1180
  ret i32 %156, !dbg !1181
}

; Function Attrs: noredzone nounwind
define internal i32 @hash_sync(%struct.__db* readonly, i32) #0 !dbg !1182 {
  %3 = icmp eq i32 %1, 0, !dbg !1191
  br i1 %3, label %6, label %4, !dbg !1193

; <label>:4:                                      ; preds = %2
  %5 = tail call i32* @__errno() #6, !dbg !1194
  store i32 22, i32* %5, align 4, !dbg !1196, !tbaa !241
  br label %23, !dbg !1197

; <label>:6:                                      ; preds = %2
  %7 = icmp eq %struct.__db* %0, null, !dbg !1198
  br i1 %7, label %23, label %8, !dbg !1200

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.__db, %struct.__db* %0, i64 0, i32 7, !dbg !1201
  %10 = bitcast i8** %9 to %struct.htab**, !dbg !1201
  %11 = load %struct.htab*, %struct.htab** %10, align 8, !dbg !1201, !tbaa !694
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 13, !dbg !1203
  %13 = load i32, i32* %12, align 8, !dbg !1203, !tbaa !676
  %14 = icmp eq i32 %13, 0, !dbg !1205
  br i1 %14, label %23, label %15, !dbg !1206

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @__buf_free(%struct.htab* %11, i32 0, i32 1) #6, !dbg !1207
  %17 = icmp eq i32 %16, 0, !dbg !1207
  br i1 %17, label %18, label %23, !dbg !1209

; <label>:18:                                     ; preds = %15
  %19 = tail call fastcc i32 @flush_meta(%struct.htab* %11) #7, !dbg !1210
  %20 = icmp eq i32 %19, 0, !dbg !1210
  br i1 %20, label %21, label %23, !dbg !1211

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %11, i64 0, i32 12, !dbg !1212
  store i32 0, i32* %22, align 4, !dbg !1213, !tbaa !671
  br label %23, !dbg !1214

; <label>:23:                                     ; preds = %15, %18, %8, %6, %21, %4
  %24 = phi i32 [ -1, %4 ], [ 0, %21 ], [ -1, %6 ], [ 0, %8 ], [ -1, %18 ], [ -1, %15 ], !dbg !1215
  ret i32 %24, !dbg !1216
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #0 !dbg !1217 {
  %2 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1226
  %3 = load i32, i32* %2, align 8, !dbg !1227, !tbaa !466
  %4 = add nsw i32 %3, 1, !dbg !1227
  store i32 %4, i32* %2, align 8, !dbg !1227, !tbaa !466
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1229
  %6 = load i32, i32* %5, align 8, !dbg !1229, !tbaa !463
  %7 = and i32 %6, %4, !dbg !1230
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !1232
  %9 = load i32, i32* %8, align 4, !dbg !1232, !tbaa !336
  %10 = lshr i32 %4, %9, !dbg !1233
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 1, !dbg !1235
  %12 = load i32, i32* %11, align 4, !dbg !1235, !tbaa !638
  %13 = icmp slt i32 %10, %12, !dbg !1237
  br i1 %13, label %53, label %14, !dbg !1238

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 5, !dbg !1239
  %16 = load i32, i32* %15, align 4, !dbg !1239, !tbaa !486
  %17 = icmp slt i32 %10, %16, !dbg !1242
  br i1 %17, label %18, label %20, !dbg !1243

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1244
  br label %35, !dbg !1243

; <label>:20:                                     ; preds = %14
  %21 = shl i32 %16, 4, !dbg !1246
  %22 = sext i32 %21 to i64, !dbg !1260
  %23 = tail call i8* @malloc(i64 %22) #6, !dbg !1262
  %24 = icmp eq i8* %23, null, !dbg !1264
  br i1 %24, label %74, label %25, !dbg !1265

; <label>:25:                                     ; preds = %20
  %26 = shl i32 %16, 3, !dbg !1266
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !1269
  %28 = bitcast %struct._bufhead**** %27 to i8**, !dbg !1271
  %29 = load i8*, i8** %28, align 8, !dbg !1271, !tbaa !343
  %30 = sext i32 %26 to i64, !dbg !1273
  %31 = tail call i8* @memmove(i8* nonnull %23, i8* %29, i64 %30) #6, !dbg !1274
  %32 = getelementptr inbounds i8, i8* %23, i64 %30, !dbg !1275
  %33 = tail call i8* @memset(i8* nonnull %32, i32 0, i64 %30) #6, !dbg !1276
  %34 = load i8*, i8** %28, align 8, !dbg !1277, !tbaa !343
  tail call void @free(i8* %34) #6, !dbg !1278
  store i8* %23, i8** %28, align 8, !dbg !1279, !tbaa !343
  store i32 %21, i32* %15, align 4, !dbg !1280, !tbaa !486
  br label %35, !dbg !1281

; <label>:35:                                     ; preds = %18, %25
  %36 = phi %struct._bufhead**** [ %19, %18 ], [ %27, %25 ], !dbg !1244
  %37 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !1282
  %38 = load i32, i32* %37, align 8, !dbg !1282, !tbaa !333
  %39 = sext i32 %38 to i64, !dbg !1283
  %40 = tail call i8* @calloc(i64 %39, i64 8) #6, !dbg !1284
  %41 = load %struct._bufhead***, %struct._bufhead**** %36, align 8, !dbg !1244, !tbaa !747
  %42 = sext i32 %10 to i64, !dbg !1285
  %43 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %41, i64 %42, !dbg !1285
  %44 = bitcast %struct._bufhead*** %43 to i8**, !dbg !1286
  store i8* %40, i8** %44, align 8, !dbg !1286, !tbaa !343
  %45 = icmp eq i8* %40, null, !dbg !1287
  br i1 %45, label %74, label %46, !dbg !1288

; <label>:46:                                     ; preds = %35
  %47 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 2, !dbg !1289
  %48 = load i32, i32* %47, align 8, !dbg !1290, !tbaa !815
  %49 = add nsw i32 %48, 1, !dbg !1290
  store i32 %49, i32* %47, align 8, !dbg !1290, !tbaa !815
  %50 = load i32, i32* %11, align 4, !dbg !1291, !tbaa !638
  %51 = add nsw i32 %50, 1, !dbg !1291
  store i32 %51, i32* %11, align 4, !dbg !1291, !tbaa !638
  %52 = load i32, i32* %2, align 8, !dbg !1292, !tbaa !466
  br label %53, !dbg !1293

; <label>:53:                                     ; preds = %1, %46
  %54 = phi i32 [ %4, %1 ], [ %52, %46 ], !dbg !1292
  %55 = add nsw i32 %54, 1, !dbg !1294
  %56 = tail call i32 @__log2(i32 %55) #6, !dbg !1295
  %57 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1297
  %58 = load i32, i32* %57, align 8, !dbg !1297, !tbaa !452
  %59 = icmp sgt i32 %56, %58, !dbg !1299
  br i1 %59, label %60, label %66, !dbg !1300

; <label>:60:                                     ; preds = %53
  %61 = sext i32 %58 to i64, !dbg !1301
  %62 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %61, !dbg !1301
  %63 = load i32, i32* %62, align 4, !dbg !1301, !tbaa !241
  %64 = sext i32 %56 to i64, !dbg !1303
  %65 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %64, !dbg !1303
  store i32 %63, i32* %65, align 4, !dbg !1304, !tbaa !241
  store i32 %56, i32* %57, align 8, !dbg !1305, !tbaa !452
  br label %66, !dbg !1306

; <label>:66:                                     ; preds = %60, %53
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1307
  %68 = load i32, i32* %67, align 4, !dbg !1307, !tbaa !471
  %69 = icmp ugt i32 %4, %68, !dbg !1309
  br i1 %69, label %70, label %72, !dbg !1310

; <label>:70:                                     ; preds = %66
  store i32 %68, i32* %5, align 8, !dbg !1311, !tbaa !463
  %71 = or i32 %68, %4, !dbg !1313
  store i32 %71, i32* %67, align 4, !dbg !1314, !tbaa !471
  br label %72, !dbg !1315

; <label>:72:                                     ; preds = %70, %66
  %73 = tail call i32 @__split_page(%struct.htab* nonnull %0, i32 %7, i32 %4) #6, !dbg !1316
  br label %74, !dbg !1317

; <label>:74:                                     ; preds = %20, %35, %72
  %75 = phi i32 [ %73, %72 ], [ -1, %35 ], [ -1, %20 ], !dbg !1318
  ret i32 %75, !dbg !1319
}

; Function Attrs: noredzone
declare dso_local i32 @__log2(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__split_page(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__call_hash(%struct.htab* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !1320 {
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1332
  %5 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8, !dbg !1332, !tbaa !346
  %6 = sext i32 %2 to i64, !dbg !1333
  %7 = tail call i32 %5(i8* %1, i64 %6) #6, !dbg !1334
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1336
  %9 = load i32, i32* %8, align 4, !dbg !1336, !tbaa !471
  %10 = and i32 %9, %7, !dbg !1337
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1339
  %12 = load i32, i32* %11, align 8, !dbg !1339, !tbaa !466
  %13 = icmp sgt i32 %10, %12, !dbg !1341
  br i1 %13, label %14, label %18, !dbg !1342

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1343
  %16 = load i32, i32* %15, align 8, !dbg !1343, !tbaa !463
  %17 = and i32 %16, %10, !dbg !1344
  br label %18, !dbg !1345

; <label>:18:                                     ; preds = %14, %3
  %19 = phi i32 [ %17, %14 ], [ %10, %3 ], !dbg !1346
  ret i32 %19, !dbg !1347
}

; Function Attrs: noredzone
declare dso_local i32 @__ibitmap(%struct.htab*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__buf_free(%struct.htab*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @flush_meta(%struct.htab*) unnamed_addr #0 !dbg !1348 {
  %2 = alloca %struct.hashhdr, align 16
  %3 = bitcast %struct.hashhdr* %2 to i8*, !dbg !1357
  call void @llvm.lifetime.start.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1357
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 13, !dbg !1358
  %5 = load i32, i32* %4, align 8, !dbg !1358, !tbaa !676
  %6 = icmp eq i32 %5, 0, !dbg !1360
  br i1 %6, label %130, label %7, !dbg !1361

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 0, !dbg !1362
  store i32 398689, i32* %8, align 8, !dbg !1363, !tbaa !617
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 1, !dbg !1364
  store i32 2, i32* %9, align 4, !dbg !1365, !tbaa !622
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1366
  %11 = load i32 (i8*, i64)*, i32 (i8*, i64)** %10, align 8, !dbg !1366, !tbaa !346
  %12 = tail call i32 %11(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12) #6, !dbg !1367
  %13 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 16, !dbg !1368
  store i32 %12, i32* %13, align 8, !dbg !1369, !tbaa !628
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1370
  %15 = load i32, i32* %14, align 4, !dbg !1370, !tbaa !254
  %16 = bitcast %struct.htab* %0 to <16 x i8>*, !dbg !1384
  %17 = load <16 x i8>, <16 x i8>* %16, align 4, !dbg !1384, !tbaa !564
  %18 = shufflevector <16 x i8> %17, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1384
  %19 = bitcast %struct.hashhdr* %2 to <16 x i8>*, !dbg !1384
  store <16 x i8> %18, <16 x i8>* %19, align 16, !dbg !1384, !tbaa !564
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1386
  %21 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 4, !dbg !1386
  %22 = bitcast i32* %20 to <16 x i8>*, !dbg !1386
  %23 = load <16 x i8>, <16 x i8>* %22, align 4, !dbg !1386, !tbaa !564
  %24 = shufflevector <16 x i8> %23, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1386
  %25 = bitcast i32* %21 to <16 x i8>*, !dbg !1386
  store <16 x i8> %24, <16 x i8>* %25, align 16, !dbg !1386, !tbaa !564
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !1388
  %27 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 8, !dbg !1388
  %28 = bitcast i32* %26 to <16 x i8>*, !dbg !1388
  %29 = load <16 x i8>, <16 x i8>* %28, align 4, !dbg !1388, !tbaa !564
  %30 = shufflevector <16 x i8> %29, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1388
  %31 = bitcast i32* %27 to <16 x i8>*, !dbg !1388
  store <16 x i8> %30, <16 x i8>* %31, align 16, !dbg !1388, !tbaa !564
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1390
  %33 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 12, !dbg !1390
  %34 = bitcast i32* %32 to <16 x i8>*, !dbg !1390
  %35 = load <16 x i8>, <16 x i8>* %34, align 4, !dbg !1390, !tbaa !564
  %36 = shufflevector <16 x i8> %35, <16 x i8> undef, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>, !dbg !1390
  %37 = bitcast i32* %33 to <16 x i8>*, !dbg !1390
  store <16 x i8> %36, <16 x i8>* %37, align 16, !dbg !1390, !tbaa !564
  %38 = bitcast i32* %13 to i8*, !dbg !1392
  %39 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !1392
  %40 = load i8, i8* %39, align 1, !dbg !1392, !tbaa !564
  %41 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 16, !dbg !1392
  %42 = bitcast i32* %41 to i8*, !dbg !1392
  store i8 %40, i8* %42, align 16, !dbg !1392, !tbaa !564
  %43 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1392
  %44 = load i8, i8* %43, align 2, !dbg !1392, !tbaa !564
  %45 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1392
  store i8 %44, i8* %45, align 1, !dbg !1392, !tbaa !564
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1392
  %47 = load i8, i8* %46, align 1, !dbg !1392, !tbaa !564
  %48 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1392
  store i8 %47, i8* %48, align 2, !dbg !1392, !tbaa !564
  %49 = load i8, i8* %38, align 4, !dbg !1392, !tbaa !564
  %50 = getelementptr inbounds i8, i8* %42, i64 3, !dbg !1392
  store i8 %49, i8* %50, align 1, !dbg !1392, !tbaa !564
  br label %51, !dbg !1395

; <label>:51:                                     ; preds = %51, %7
  %52 = phi i64 [ 0, %7 ], [ %98, %51 ]
  %53 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %52, !dbg !1397
  %54 = bitcast i32* %53 to i8*, !dbg !1397
  %55 = getelementptr inbounds i8, i8* %54, i64 3, !dbg !1397
  %56 = load i8, i8* %55, align 1, !dbg !1397, !tbaa !564
  %57 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 17, i64 %52, !dbg !1397
  %58 = bitcast i32* %57 to i8*, !dbg !1397
  store i8 %56, i8* %58, align 4, !dbg !1397, !tbaa !564
  %59 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !1397
  %60 = load i8, i8* %59, align 2, !dbg !1397, !tbaa !564
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1397
  store i8 %60, i8* %61, align 1, !dbg !1397, !tbaa !564
  %62 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1397
  %63 = load i8, i8* %62, align 1, !dbg !1397, !tbaa !564
  %64 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !1397
  store i8 %63, i8* %64, align 2, !dbg !1397, !tbaa !564
  %65 = load i8, i8* %54, align 4, !dbg !1397, !tbaa !564
  %66 = getelementptr inbounds i8, i8* %58, i64 3, !dbg !1397
  store i8 %65, i8* %66, align 1, !dbg !1397, !tbaa !564
  %67 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %52, !dbg !1401
  %68 = bitcast i16* %67 to i8*, !dbg !1401
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1401
  %70 = load i8, i8* %69, align 1, !dbg !1401, !tbaa !564
  %71 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 18, i64 %52, !dbg !1401
  %72 = bitcast i16* %71 to i8*, !dbg !1401
  store i8 %70, i8* %72, align 4, !dbg !1401, !tbaa !564
  %73 = load i8, i8* %68, align 2, !dbg !1401, !tbaa !564
  %74 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1401
  store i8 %73, i8* %74, align 1, !dbg !1401, !tbaa !564
  %75 = or i64 %52, 1, !dbg !1403
  %76 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %75, !dbg !1397
  %77 = bitcast i32* %76 to i8*, !dbg !1397
  %78 = getelementptr inbounds i8, i8* %77, i64 3, !dbg !1397
  %79 = load i8, i8* %78, align 1, !dbg !1397, !tbaa !564
  %80 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 17, i64 %75, !dbg !1397
  %81 = bitcast i32* %80 to i8*, !dbg !1397
  store i8 %79, i8* %81, align 4, !dbg !1397, !tbaa !564
  %82 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !1397
  %83 = load i8, i8* %82, align 2, !dbg !1397, !tbaa !564
  %84 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1397
  store i8 %83, i8* %84, align 1, !dbg !1397, !tbaa !564
  %85 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1397
  %86 = load i8, i8* %85, align 1, !dbg !1397, !tbaa !564
  %87 = getelementptr inbounds i8, i8* %81, i64 2, !dbg !1397
  store i8 %86, i8* %87, align 2, !dbg !1397, !tbaa !564
  %88 = load i8, i8* %77, align 4, !dbg !1397, !tbaa !564
  %89 = getelementptr inbounds i8, i8* %81, i64 3, !dbg !1397
  store i8 %88, i8* %89, align 1, !dbg !1397, !tbaa !564
  %90 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %75, !dbg !1401
  %91 = bitcast i16* %90 to i8*, !dbg !1401
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1401
  %93 = load i8, i8* %92, align 1, !dbg !1401, !tbaa !564
  %94 = getelementptr inbounds %struct.hashhdr, %struct.hashhdr* %2, i64 0, i32 18, i64 %75, !dbg !1401
  %95 = bitcast i16* %94 to i8*, !dbg !1401
  store i8 %93, i8* %95, align 2, !dbg !1401, !tbaa !564
  %96 = load i8, i8* %91, align 2, !dbg !1401, !tbaa !564
  %97 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1401
  store i8 %96, i8* %97, align 1, !dbg !1401, !tbaa !564
  %98 = add nuw nsw i64 %52, 2, !dbg !1403
  %99 = icmp eq i64 %98, 32, !dbg !1404
  br i1 %99, label %100, label %51, !dbg !1395, !llvm.loop !1405

; <label>:100:                                    ; preds = %51
  %101 = tail call i64 @lseek(i32 %15, i64 0, i32 0) #6, !dbg !1408
  %102 = icmp eq i64 %101, -1, !dbg !1410
  br i1 %102, label %130, label %103, !dbg !1411

; <label>:103:                                    ; preds = %100
  %104 = call i64 @write(i32 %15, i8* nonnull %3, i64 260) #6, !dbg !1412
  %105 = trunc i64 %104 to i32, !dbg !1412
  %106 = icmp eq i32 %105, -1, !dbg !1414
  br i1 %106, label %130, label %107, !dbg !1415

; <label>:107:                                    ; preds = %103
  %108 = and i64 %104, 4294967295, !dbg !1416
  %109 = icmp eq i64 %108, 260, !dbg !1416
  br i1 %109, label %115, label %110, !dbg !1418

; <label>:110:                                    ; preds = %107
  %111 = call i32* @__errno() #6, !dbg !1419
  store i32 79, i32* %111, align 4, !dbg !1421, !tbaa !241
  %112 = call i32* @__errno() #6, !dbg !1422
  %113 = load i32, i32* %112, align 4, !dbg !1422, !tbaa !241
  %114 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 11, !dbg !1423
  store i32 %113, i32* %114, align 8, !dbg !1424, !tbaa !905
  br label %130, !dbg !1425

; <label>:115:                                    ; preds = %107, %127
  %116 = phi i64 [ %128, %127 ], [ 0, %107 ]
  %117 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %116, !dbg !1427
  %118 = load i32*, i32** %117, align 8, !dbg !1427, !tbaa !343
  %119 = icmp eq i32* %118, null, !dbg !1427
  br i1 %119, label %127, label %120, !dbg !1431

; <label>:120:                                    ; preds = %115
  %121 = bitcast i32* %118 to i8*, !dbg !1432
  %122 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %116, !dbg !1434
  %123 = load i16, i16* %122, align 2, !dbg !1434, !tbaa !601
  %124 = zext i16 %123 to i32, !dbg !1434
  %125 = call i32 @__put_page(%struct.htab* nonnull %0, i8* %121, i32 %124, i32 0, i32 1) #6, !dbg !1435
  %126 = icmp eq i32 %125, 0, !dbg !1435
  br i1 %126, label %127, label %130, !dbg !1436

; <label>:127:                                    ; preds = %120, %115
  %128 = add nuw nsw i64 %116, 1, !dbg !1437
  %129 = icmp ult i64 %128, 32, !dbg !1438
  br i1 %129, label %115, label %130, !dbg !1439, !llvm.loop !1440

; <label>:130:                                    ; preds = %127, %120, %100, %103, %1, %110
  %131 = phi i32 [ -1, %110 ], [ 0, %1 ], [ -1, %103 ], [ -1, %100 ], [ 0, %127 ], [ -1, %120 ], !dbg !1442
  call void @llvm.lifetime.end.p0i8(i64 260, i8* nonnull %3) #5, !dbg !1443
  ret i32 %131, !dbg !1443
}

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__put_page(%struct.htab*, i8*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @hash_access(%struct.htab*, i32, %struct.DBT*, %struct.DBT*) unnamed_addr #0 !dbg !1444 {
  %5 = alloca %struct._bufhead*, align 8
  %6 = bitcast %struct._bufhead** %5 to i8*, !dbg !1467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1467
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1468
  %8 = load i32, i32* %7, align 4, !dbg !1468, !tbaa !363
  %9 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !1470
  %10 = load i64, i64* %9, align 8, !dbg !1470, !tbaa !1160
  %11 = trunc i64 %10 to i32, !dbg !1471
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !1473
  %13 = load i8*, i8** %12, align 8, !dbg !1473, !tbaa !1148
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 3, !dbg !1479
  %15 = load i32 (i8*, i64)*, i32 (i8*, i64)** %14, align 8, !dbg !1479, !tbaa !346
  %16 = shl i64 %10, 32, !dbg !1480
  %17 = ashr exact i64 %16, 32, !dbg !1480
  %18 = tail call i32 %15(i8* %13, i64 %17) #6, !dbg !1481
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 11, !dbg !1483
  %20 = load i32, i32* %19, align 4, !dbg !1483, !tbaa !471
  %21 = and i32 %20, %18, !dbg !1484
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !1486
  %23 = load i32, i32* %22, align 8, !dbg !1486, !tbaa !466
  %24 = icmp sgt i32 %21, %23, !dbg !1487
  br i1 %24, label %25, label %29, !dbg !1488

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 12, !dbg !1489
  %27 = load i32, i32* %26, align 8, !dbg !1489, !tbaa !463
  %28 = and i32 %27, %21, !dbg !1490
  br label %29, !dbg !1491

; <label>:29:                                     ; preds = %4, %25
  %30 = phi i32 [ %28, %25 ], [ %21, %4 ], !dbg !1492
  %31 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %30, %struct._bufhead* null, i32 0) #6, !dbg !1493
  %32 = icmp eq %struct._bufhead* %31, null, !dbg !1495
  br i1 %32, label %183, label %33, !dbg !1497

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 5, !dbg !1499
  %35 = load i8, i8* %34, align 8, !dbg !1500, !tbaa !1501
  %36 = or i8 %35, 8, !dbg !1500
  store i8 %36, i8* %34, align 8, !dbg !1500, !tbaa !1501
  %37 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %31, i64 0, i32 4, !dbg !1502
  %38 = bitcast i8** %37 to i16**, !dbg !1502
  %39 = load i16*, i16** %38, align 8, !dbg !1502, !tbaa !1084
  %40 = load i16, i16* %39, align 2, !dbg !1505, !tbaa !601
  %41 = icmp ugt i16 %40, 1, !dbg !1507
  br i1 %41, label %42, label %127, !dbg !1509

; <label>:42:                                     ; preds = %33
  %43 = zext i16 %40 to i32, !dbg !1505
  %44 = getelementptr inbounds i16, i16* %39, i64 1, !dbg !1511
  br label %45, !dbg !1509

; <label>:45:                                     ; preds = %42, %120
  %46 = phi %struct._bufhead* [ %31, %42 ], [ %125, %120 ]
  %47 = phi i16* [ %44, %42 ], [ %124, %120 ]
  %48 = phi i32 [ %8, %42 ], [ %123, %120 ]
  %49 = phi i32 [ 1, %42 ], [ %122, %120 ]
  %50 = phi i32 [ %43, %42 ], [ %121, %120 ]
  %51 = getelementptr inbounds i16, i16* %47, i64 1, !dbg !1512
  %52 = load i16, i16* %51, align 2, !dbg !1512, !tbaa !601
  %53 = icmp ugt i16 %52, 3, !dbg !1514
  br i1 %53, label %54, label %73, !dbg !1515

; <label>:54:                                     ; preds = %45
  %55 = load i16, i16* %47, align 2, !dbg !1516, !tbaa !601
  %56 = zext i16 %55 to i32, !dbg !1516
  %57 = sub nsw i32 %48, %56, !dbg !1519
  %58 = icmp eq i32 %57, %11, !dbg !1520
  br i1 %58, label %59, label %68, !dbg !1521

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !1522
  %61 = load i8*, i8** %60, align 8, !dbg !1522, !tbaa !1084
  %62 = zext i16 %55 to i64, !dbg !1523
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1523
  %64 = call i32 @memcmp(i8* %13, i8* %63, i64 %17) #6, !dbg !1524
  %65 = icmp eq i32 %64, 0, !dbg !1525
  br i1 %65, label %140, label %66, !dbg !1526

; <label>:66:                                     ; preds = %59
  %67 = load i16, i16* %51, align 2, !dbg !1527, !tbaa !601
  br label %68, !dbg !1526

; <label>:68:                                     ; preds = %66, %54
  %69 = phi i16 [ %67, %66 ], [ %52, %54 ], !dbg !1527
  %70 = zext i16 %69 to i32, !dbg !1527
  %71 = getelementptr inbounds i16, i16* %47, i64 2, !dbg !1528
  %72 = add nsw i32 %49, 2, !dbg !1529
  br label %120, !dbg !1530

; <label>:73:                                     ; preds = %45
  %74 = icmp eq i16 %52, 0, !dbg !1531
  br i1 %74, label %75, label %91, !dbg !1533

; <label>:75:                                     ; preds = %73
  %76 = load i16, i16* %47, align 2, !dbg !1534, !tbaa !601
  %77 = zext i16 %76 to i32, !dbg !1534
  %78 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %77, %struct._bufhead* %46, i32 0) #6, !dbg !1536
  %79 = icmp eq %struct._bufhead* %78, null, !dbg !1537
  br i1 %79, label %80, label %83, !dbg !1539

; <label>:80:                                     ; preds = %75
  %81 = load i8, i8* %34, align 8, !dbg !1540, !tbaa !1501
  %82 = and i8 %81, -9, !dbg !1540
  store i8 %82, i8* %34, align 8, !dbg !1540, !tbaa !1501
  br label %183, !dbg !1542

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %78, i64 0, i32 4, !dbg !1543
  %85 = bitcast i8** %84 to i16**, !dbg !1543
  %86 = load i16*, i16** %85, align 8, !dbg !1543, !tbaa !1084
  %87 = getelementptr inbounds i16, i16* %86, i64 1, !dbg !1544
  %88 = load i16, i16* %86, align 2, !dbg !1545, !tbaa !601
  %89 = zext i16 %88 to i32, !dbg !1545
  %90 = load i32, i32* %7, align 4, !dbg !1546, !tbaa !363
  br label %120, !dbg !1547

; <label>:91:                                     ; preds = %73
  %92 = call i32 @__find_bigpair(%struct.htab* %0, %struct._bufhead* %46, i32 %49, i8* %13, i32 %11) #6, !dbg !1548
  %93 = icmp sgt i32 %92, 0, !dbg !1552
  br i1 %93, label %140, label %94, !dbg !1553

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i32 %92, -2, !dbg !1554
  br i1 %95, label %96, label %117, !dbg !1556

; <label>:96:                                     ; preds = %94
  store %struct._bufhead* %46, %struct._bufhead** %5, align 8, !dbg !1558, !tbaa !343
  %97 = call zeroext i16 @__find_last_page(%struct.htab* %0, %struct._bufhead** nonnull %5) #6, !dbg !1560
  %98 = icmp eq i16 %97, 0, !dbg !1563
  br i1 %98, label %99, label %101, !dbg !1564

; <label>:99:                                     ; preds = %96
  %100 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1565, !tbaa !343
  br label %127, !dbg !1567

; <label>:101:                                    ; preds = %96
  %102 = zext i16 %97 to i32, !dbg !1568
  %103 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !1569, !tbaa !343
  %104 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %102, %struct._bufhead* %103, i32 0) #6, !dbg !1570
  %105 = icmp eq %struct._bufhead* %104, null, !dbg !1571
  br i1 %105, label %106, label %109, !dbg !1573

; <label>:106:                                    ; preds = %101
  %107 = load i8, i8* %34, align 8, !dbg !1574, !tbaa !1501
  %108 = and i8 %107, -9, !dbg !1574
  store i8 %108, i8* %34, align 8, !dbg !1574, !tbaa !1501
  br label %183, !dbg !1576

; <label>:109:                                    ; preds = %101
  %110 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %104, i64 0, i32 4, !dbg !1577
  %111 = bitcast i8** %110 to i16**, !dbg !1577
  %112 = load i16*, i16** %111, align 8, !dbg !1577, !tbaa !1084
  %113 = getelementptr inbounds i16, i16* %112, i64 1, !dbg !1578
  %114 = load i16, i16* %112, align 2, !dbg !1579, !tbaa !601
  %115 = zext i16 %114 to i32, !dbg !1579
  %116 = load i32, i32* %7, align 4, !dbg !1580, !tbaa !363
  br label %120, !dbg !1581

; <label>:117:                                    ; preds = %94
  %118 = load i8, i8* %34, align 8, !dbg !1582, !tbaa !1501
  %119 = and i8 %118, -9, !dbg !1582
  store i8 %119, i8* %34, align 8, !dbg !1582, !tbaa !1501
  br label %183, !dbg !1584

; <label>:120:                                    ; preds = %83, %109, %68
  %121 = phi i32 [ %50, %68 ], [ %89, %83 ], [ %115, %109 ], !dbg !1585
  %122 = phi i32 [ %72, %68 ], [ 1, %83 ], [ 1, %109 ], !dbg !1585
  %123 = phi i32 [ %70, %68 ], [ %90, %83 ], [ %116, %109 ], !dbg !1586
  %124 = phi i16* [ %71, %68 ], [ %87, %83 ], [ %113, %109 ], !dbg !1585
  %125 = phi %struct._bufhead* [ %46, %68 ], [ %78, %83 ], [ %104, %109 ], !dbg !1586
  %126 = icmp slt i32 %122, %121, !dbg !1507
  br i1 %126, label %45, label %127, !dbg !1509, !llvm.loop !1587

; <label>:127:                                    ; preds = %120, %33, %99
  %128 = phi %struct._bufhead* [ %100, %99 ], [ %31, %33 ], [ %125, %120 ], !dbg !1586
  %129 = add i32 %1, -1, !dbg !1589
  %130 = icmp ult i32 %129, 2, !dbg !1589
  br i1 %130, label %131, label %137, !dbg !1589

; <label>:131:                                    ; preds = %127
  %132 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %128, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1590
  %133 = icmp ne i32 %132, 0, !dbg !1590
  %134 = load i8, i8* %34, align 8, !dbg !1593, !tbaa !1501
  %135 = and i8 %134, -9, !dbg !1593
  store i8 %135, i8* %34, align 8, !dbg !1593, !tbaa !1501
  %136 = sext i1 %133 to i32, !dbg !1595
  br label %183, !dbg !1595

; <label>:137:                                    ; preds = %127
  %138 = load i8, i8* %34, align 8, !dbg !1596, !tbaa !1501
  %139 = and i8 %138, -9, !dbg !1596
  store i8 %139, i8* %34, align 8, !dbg !1596, !tbaa !1501
  br label %183, !dbg !1597

; <label>:140:                                    ; preds = %91, %59
  %141 = phi i32 [ %49, %59 ], [ %92, %91 ], !dbg !1598
  switch i32 %1, label %179 [
    i32 2, label %142
    i32 0, label %145
    i32 1, label %167
    i32 3, label %176
  ], !dbg !1599

; <label>:142:                                    ; preds = %140
  %143 = load i8, i8* %34, align 8, !dbg !1600, !tbaa !1501
  %144 = and i8 %143, -9, !dbg !1600
  store i8 %144, i8* %34, align 8, !dbg !1600, !tbaa !1501
  br label %183, !dbg !1602

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !1603
  %147 = load i8*, i8** %146, align 8, !dbg !1603, !tbaa !1084
  %148 = bitcast i8* %147 to i16*, !dbg !1604
  %149 = add nsw i32 %141, 1, !dbg !1605
  %150 = sext i32 %149 to i64, !dbg !1607
  %151 = getelementptr inbounds i16, i16* %148, i64 %150, !dbg !1607
  %152 = load i16, i16* %151, align 2, !dbg !1607, !tbaa !601
  %153 = icmp ult i16 %152, 4, !dbg !1608
  br i1 %153, label %154, label %157, !dbg !1609

; <label>:154:                                    ; preds = %145
  %155 = call i32 @__big_return(%struct.htab* %0, %struct._bufhead* nonnull %46, i32 %141, %struct.DBT* %3, i32 0) #6, !dbg !1610
  %156 = icmp eq i32 %155, 0, !dbg !1610
  br i1 %156, label %180, label %183, !dbg !1613

; <label>:157:                                    ; preds = %145
  %158 = zext i16 %152 to i64, !dbg !1614
  %159 = getelementptr inbounds i8, i8* %147, i64 %158, !dbg !1614
  %160 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !1616
  store i8* %159, i8** %160, align 8, !dbg !1617, !tbaa !1148
  %161 = sext i32 %141 to i64, !dbg !1618
  %162 = getelementptr inbounds i16, i16* %148, i64 %161, !dbg !1618
  %163 = load i16, i16* %162, align 2, !dbg !1618, !tbaa !601
  %164 = zext i16 %163 to i64, !dbg !1618
  %165 = sub nsw i64 %164, %158, !dbg !1619
  %166 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !1620
  store i64 %165, i64* %166, align 8, !dbg !1621, !tbaa !1160
  br label %180

; <label>:167:                                    ; preds = %140
  %168 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %46, i32 %141) #6, !dbg !1622
  %169 = icmp eq i32 %168, 0, !dbg !1622
  br i1 %169, label %170, label %173, !dbg !1624

; <label>:170:                                    ; preds = %167
  %171 = call i32 @__addel(%struct.htab* %0, %struct._bufhead* %46, %struct.DBT* %2, %struct.DBT* %3) #6, !dbg !1625
  %172 = icmp eq i32 %171, 0, !dbg !1625
  br i1 %172, label %180, label %173, !dbg !1626

; <label>:173:                                    ; preds = %170, %167
  %174 = load i8, i8* %34, align 8, !dbg !1627, !tbaa !1501
  %175 = and i8 %174, -9, !dbg !1627
  store i8 %175, i8* %34, align 8, !dbg !1627, !tbaa !1501
  br label %183, !dbg !1629

; <label>:176:                                    ; preds = %140
  %177 = call i32 @__delpair(%struct.htab* %0, %struct._bufhead* %46, i32 %141) #6, !dbg !1630
  %178 = icmp eq i32 %177, 0, !dbg !1630
  br i1 %178, label %180, label %183, !dbg !1632

; <label>:179:                                    ; preds = %140
  call void @abort() #8, !dbg !1633
  unreachable, !dbg !1633

; <label>:180:                                    ; preds = %154, %170, %176, %157
  %181 = load i8, i8* %34, align 8, !dbg !1634, !tbaa !1501
  %182 = and i8 %181, -9, !dbg !1634
  store i8 %182, i8* %34, align 8, !dbg !1634, !tbaa !1501
  br label %183, !dbg !1635

; <label>:183:                                    ; preds = %176, %154, %131, %29, %180, %173, %142, %137, %117, %106, %80
  %184 = phi i32 [ 0, %180 ], [ -1, %173 ], [ 1, %142 ], [ -1, %80 ], [ -1, %106 ], [ 1, %137 ], [ -1, %117 ], [ -1, %29 ], [ %136, %131 ], [ -1, %154 ], [ -1, %176 ], !dbg !1636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1637
  ret i32 %184, !dbg !1637
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
!460 = !DILocation(line: 415, column: 49, scope: !424, inlinedAt: !433)
!461 = !DILocation(line: 415, column: 29, scope: !424, inlinedAt: !433)
!462 = !DILocation(line: 415, column: 38, scope: !424, inlinedAt: !433)
!463 = !{!255, !242, i64 48}
!464 = !DILocation(line: 415, column: 9, scope: !424, inlinedAt: !433)
!465 = !DILocation(line: 415, column: 20, scope: !424, inlinedAt: !433)
!466 = !{!255, !242, i64 40}
!467 = !DILocation(line: 416, column: 31, scope: !424, inlinedAt: !433)
!468 = !DILocation(line: 416, column: 37, scope: !424, inlinedAt: !433)
!469 = !DILocation(line: 416, column: 9, scope: !424, inlinedAt: !433)
!470 = !DILocation(line: 416, column: 19, scope: !424, inlinedAt: !433)
!471 = !{!255, !242, i64 44}
!472 = !DILocation(line: 418, column: 13, scope: !424, inlinedAt: !433)
!473 = !DILocation(line: 417, column: 60, scope: !424, inlinedAt: !433)
!474 = !DILocation(line: 417, column: 20, scope: !424, inlinedAt: !433)
!475 = !DILocation(line: 417, column: 9, scope: !424, inlinedAt: !433)
!476 = !DILocation(line: 417, column: 18, scope: !424, inlinedAt: !433)
!477 = !{!255, !242, i64 60}
!478 = !DILocation(line: 420, column: 34, scope: !424, inlinedAt: !433)
!479 = !DILocation(line: 420, column: 25, scope: !424, inlinedAt: !433)
!480 = !DILocation(line: 420, column: 41, scope: !424, inlinedAt: !433)
!481 = !DILocation(line: 393, column: 16, scope: !424, inlinedAt: !433)
!482 = !DILocation(line: 421, column: 15, scope: !424, inlinedAt: !433)
!483 = !DILocation(line: 421, column: 12, scope: !424, inlinedAt: !433)
!484 = !DILocation(line: 423, column: 21, scope: !485, inlinedAt: !433)
!485 = distinct !DILexicalBlock(scope: !424, file: !1, line: 423, column: 6)
!486 = !{!255, !242, i64 20}
!487 = !DILocation(line: 423, column: 12, scope: !485, inlinedAt: !433)
!488 = !DILocation(line: 423, column: 6, scope: !424, inlinedAt: !433)
!489 = !DILocation(line: 424, column: 16, scope: !485, inlinedAt: !433)
!490 = !DILocation(line: 424, column: 3, scope: !485, inlinedAt: !433)
!491 = !DILocation(line: 425, column: 10, scope: !424, inlinedAt: !433)
!492 = !DILocation(line: 377, column: 6, scope: !434, inlinedAt: !318)
!493 = !DILocation(line: 381, column: 1, scope: !309, inlinedAt: !318)
!494 = !DILocation(line: 175, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 175, column: 7)
!496 = distinct !DILexicalBlock(scope: !306, file: !1, line: 173, column: 9)
!497 = !DILocation(line: 175, column: 12, scope: !495)
!498 = !DILocation(line: 175, column: 21, scope: !495)
!499 = !DILocation(line: 175, column: 15, scope: !495)
!500 = !DILocation(line: 175, column: 7, scope: !496)
!501 = !DILocation(line: 176, column: 11, scope: !495)
!502 = !DILocation(line: 176, column: 16, scope: !495)
!503 = !DILocation(line: 176, column: 4, scope: !495)
!504 = !DILocation(line: 178, column: 18, scope: !495)
!505 = !DILocation(line: 178, column: 11, scope: !495)
!506 = !DILocation(line: 178, column: 16, scope: !495)
!507 = !DILocation(line: 180, column: 25, scope: !496)
!508 = !DILocation(line: 180, column: 13, scope: !496)
!509 = !DILocation(line: 122, column: 14, scope: !172)
!510 = !DILocalVariable(name: "hashp", arg: 1, scope: !511, file: !1, line: 1009, type: !20)
!511 = distinct !DISubprogram(name: "swap_header", scope: !1, file: !1, line: 1008, type: !512, isLocal: true, isDefinition: true, scopeLine: 1010, isOptimized: true, unit: !0, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !20}
!514 = !{!510, !515, !517, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !557}
!515 = !DILocalVariable(name: "hdrp", scope: !511, file: !1, line: 1011, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!517 = !DILocalVariable(name: "i", scope: !511, file: !1, line: 1012, type: !29)
!518 = !DILocalVariable(name: "_tmp", scope: !519, file: !1, line: 1016, type: !32)
!519 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1016, column: 2)
!520 = !DILocalVariable(name: "_tmp", scope: !521, file: !1, line: 1017, type: !32)
!521 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1017, column: 2)
!522 = !DILocalVariable(name: "_tmp", scope: !523, file: !1, line: 1018, type: !32)
!523 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1018, column: 2)
!524 = !DILocalVariable(name: "_tmp", scope: !525, file: !1, line: 1019, type: !32)
!525 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1019, column: 2)
!526 = !DILocalVariable(name: "_tmp", scope: !527, file: !1, line: 1020, type: !32)
!527 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1020, column: 2)
!528 = !DILocalVariable(name: "_tmp", scope: !529, file: !1, line: 1021, type: !32)
!529 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1021, column: 2)
!530 = !DILocalVariable(name: "_tmp", scope: !531, file: !1, line: 1022, type: !32)
!531 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1022, column: 2)
!532 = !DILocalVariable(name: "_tmp", scope: !533, file: !1, line: 1023, type: !32)
!533 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1023, column: 2)
!534 = !DILocalVariable(name: "_tmp", scope: !535, file: !1, line: 1024, type: !32)
!535 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1024, column: 2)
!536 = !DILocalVariable(name: "_tmp", scope: !537, file: !1, line: 1025, type: !32)
!537 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1025, column: 2)
!538 = !DILocalVariable(name: "_tmp", scope: !539, file: !1, line: 1026, type: !32)
!539 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1026, column: 2)
!540 = !DILocalVariable(name: "_tmp", scope: !541, file: !1, line: 1027, type: !32)
!541 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1027, column: 2)
!542 = !DILocalVariable(name: "_tmp", scope: !543, file: !1, line: 1028, type: !32)
!543 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1028, column: 2)
!544 = !DILocalVariable(name: "_tmp", scope: !545, file: !1, line: 1029, type: !32)
!545 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1029, column: 2)
!546 = !DILocalVariable(name: "_tmp", scope: !547, file: !1, line: 1030, type: !32)
!547 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1030, column: 2)
!548 = !DILocalVariable(name: "_tmp", scope: !549, file: !1, line: 1031, type: !32)
!549 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1031, column: 2)
!550 = !DILocalVariable(name: "_tmp", scope: !551, file: !1, line: 1032, type: !32)
!551 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1032, column: 2)
!552 = !DILocalVariable(name: "_tmp", scope: !553, file: !1, line: 1034, type: !32)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 1034, column: 3)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 1033, column: 32)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 1033, column: 2)
!556 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1033, column: 2)
!557 = !DILocalVariable(name: "_tmp", scope: !558, file: !1, line: 1035, type: !54)
!558 = distinct !DILexicalBlock(scope: !554, file: !1, line: 1035, column: 3)
!559 = !DILocation(line: 1009, column: 8, scope: !511, inlinedAt: !560)
!560 = distinct !DILocation(line: 182, column: 3, scope: !496)
!561 = !DILocation(line: 1011, column: 11, scope: !511, inlinedAt: !560)
!562 = !DILocation(line: 1016, column: 2, scope: !519, inlinedAt: !560)
!563 = !{!256, !242, i64 0}
!564 = !{!243, !243, i64 0}
!565 = !DILocation(line: 1017, column: 2, scope: !521, inlinedAt: !560)
!566 = !{!256, !242, i64 4}
!567 = !DILocation(line: 1018, column: 2, scope: !523, inlinedAt: !560)
!568 = !{!256, !242, i64 8}
!569 = !DILocation(line: 1019, column: 2, scope: !525, inlinedAt: !560)
!570 = !{!256, !242, i64 12}
!571 = !DILocation(line: 1020, column: 2, scope: !527, inlinedAt: !560)
!572 = !{!256, !242, i64 16}
!573 = !DILocation(line: 1021, column: 2, scope: !529, inlinedAt: !560)
!574 = !{!256, !242, i64 20}
!575 = !DILocation(line: 1022, column: 2, scope: !531, inlinedAt: !560)
!576 = !{!256, !242, i64 24}
!577 = !DILocation(line: 1023, column: 2, scope: !533, inlinedAt: !560)
!578 = !{!256, !242, i64 28}
!579 = !DILocation(line: 1024, column: 2, scope: !535, inlinedAt: !560)
!580 = !{!256, !242, i64 32}
!581 = !DILocation(line: 1025, column: 2, scope: !537, inlinedAt: !560)
!582 = !{!256, !242, i64 36}
!583 = !DILocation(line: 1026, column: 2, scope: !539, inlinedAt: !560)
!584 = !{!256, !242, i64 40}
!585 = !DILocation(line: 1027, column: 2, scope: !541, inlinedAt: !560)
!586 = !{!256, !242, i64 44}
!587 = !DILocation(line: 1028, column: 2, scope: !543, inlinedAt: !560)
!588 = !{!256, !242, i64 48}
!589 = !DILocation(line: 1029, column: 2, scope: !545, inlinedAt: !560)
!590 = !{!256, !242, i64 52}
!591 = !DILocation(line: 1030, column: 2, scope: !547, inlinedAt: !560)
!592 = !{!256, !242, i64 56}
!593 = !DILocation(line: 1031, column: 2, scope: !549, inlinedAt: !560)
!594 = !{!256, !242, i64 60}
!595 = !DILocation(line: 1032, column: 2, scope: !551, inlinedAt: !560)
!596 = !{!256, !242, i64 64}
!597 = !DILocation(line: 1012, column: 6, scope: !511, inlinedAt: !560)
!598 = !DILocation(line: 1033, column: 2, scope: !556, inlinedAt: !560)
!599 = !DILocation(line: 1034, column: 3, scope: !553, inlinedAt: !560)
!600 = !DILocation(line: 1035, column: 3, scope: !558, inlinedAt: !560)
!601 = !{!301, !301, i64 0}
!602 = !DILocation(line: 1033, column: 28, scope: !555, inlinedAt: !560)
!603 = !DILocation(line: 1033, column: 16, scope: !555, inlinedAt: !560)
!604 = distinct !{!604, !605, !606}
!605 = !DILocation(line: 1033, column: 2, scope: !556)
!606 = !DILocation(line: 1036, column: 2, scope: !556)
!607 = !DILocation(line: 184, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !496, file: !1, line: 184, column: 7)
!609 = !DILocation(line: 184, column: 7, scope: !496)
!610 = !DILocation(line: 185, column: 4, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 185, column: 4)
!612 = !DILocation(line: 186, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !496, file: !1, line: 186, column: 7)
!614 = !DILocation(line: 186, column: 7, scope: !496)
!615 = !DILocation(line: 189, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !496, file: !1, line: 189, column: 7)
!617 = !{!255, !242, i64 0}
!618 = !DILocation(line: 189, column: 20, scope: !616)
!619 = !DILocation(line: 189, column: 7, scope: !496)
!620 = !DILocation(line: 192, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !496, file: !1, line: 192, column: 7)
!622 = !{!255, !242, i64 4}
!623 = !DILocation(line: 192, column: 42, scope: !621)
!624 = !DILocation(line: 195, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !496, file: !1, line: 195, column: 7)
!626 = !DILocation(line: 195, column: 7, scope: !625)
!627 = !DILocation(line: 195, column: 55, scope: !625)
!628 = !{!255, !242, i64 64}
!629 = !DILocation(line: 195, column: 45, scope: !625)
!630 = !DILocation(line: 195, column: 7, scope: !496)
!631 = !DILocation(line: 202, column: 19, scope: !496)
!632 = !DILocation(line: 202, column: 43, scope: !496)
!633 = !DILocation(line: 202, column: 50, scope: !496)
!634 = !DILocation(line: 202, column: 55, scope: !496)
!635 = !DILocation(line: 122, column: 34, scope: !172)
!636 = !DILocation(line: 204, column: 10, scope: !496)
!637 = !DILocation(line: 204, column: 16, scope: !496)
!638 = !{!255, !242, i64 260}
!639 = !DILocation(line: 205, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !496, file: !1, line: 205, column: 7)
!641 = !DILocation(line: 205, column: 7, scope: !496)
!642 = !DILocation(line: 212, column: 20, scope: !496)
!643 = !DILocation(line: 212, column: 34, scope: !496)
!644 = !DILocation(line: 212, column: 13, scope: !496)
!645 = !DILocation(line: 213, column: 15, scope: !496)
!646 = !DILocation(line: 213, column: 21, scope: !496)
!647 = !DILocation(line: 212, column: 46, scope: !496)
!648 = !DILocation(line: 213, column: 36, scope: !496)
!649 = !DILocation(line: 214, column: 15, scope: !496)
!650 = !DILocation(line: 214, column: 22, scope: !496)
!651 = !DILocation(line: 213, column: 41, scope: !496)
!652 = !DILocation(line: 122, column: 6, scope: !172)
!653 = !DILocation(line: 216, column: 10, scope: !496)
!654 = !DILocation(line: 216, column: 16, scope: !496)
!655 = !{!255, !242, i64 592}
!656 = !DILocation(line: 217, column: 24, scope: !496)
!657 = !DILocation(line: 217, column: 36, scope: !496)
!658 = !DILocation(line: 217, column: 43, scope: !496)
!659 = !DILocation(line: 217, column: 9, scope: !496)
!660 = !DILocation(line: 221, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !172, file: !1, line: 221, column: 6)
!662 = !DILocation(line: 221, column: 11, scope: !661)
!663 = !DILocation(line: 221, column: 20, scope: !661)
!664 = !{!375, !242, i64 12}
!665 = !DILocation(line: 221, column: 14, scope: !661)
!666 = !DILocation(line: 221, column: 6, scope: !172)
!667 = !DILocation(line: 222, column: 3, scope: !661)
!668 = !DILocation(line: 224, column: 3, scope: !661)
!669 = !DILocation(line: 226, column: 9, scope: !172)
!670 = !DILocation(line: 226, column: 18, scope: !172)
!671 = !{!255, !242, i64 324}
!672 = !DILocation(line: 227, column: 26, scope: !172)
!673 = !DILocation(line: 227, column: 37, scope: !172)
!674 = !DILocation(line: 227, column: 9, scope: !172)
!675 = !DILocation(line: 227, column: 19, scope: !172)
!676 = !{!255, !242, i64 328}
!677 = !DILocation(line: 228, column: 9, scope: !172)
!678 = !DILocation(line: 228, column: 17, scope: !172)
!679 = !{!255, !242, i64 312}
!680 = !DILocation(line: 229, column: 20, scope: !681)
!681 = distinct !DILexicalBlock(scope: !172, file: !1, line: 229, column: 6)
!682 = !DILocation(line: 229, column: 12, scope: !681)
!683 = !DILocation(line: 229, column: 6, scope: !172)
!684 = !DILocation(line: 230, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !1, line: 229, column: 41)
!686 = !DILocation(line: 231, column: 3, scope: !685)
!687 = !DILocation(line: 232, column: 3, scope: !685)
!688 = !DILocation(line: 232, column: 9, scope: !685)
!689 = !DILocation(line: 233, column: 3, scope: !685)
!690 = !DILocation(line: 229, column: 14, scope: !681)
!691 = !DILocation(line: 121, column: 6, scope: !172)
!692 = !DILocation(line: 235, column: 7, scope: !172)
!693 = !DILocation(line: 235, column: 16, scope: !172)
!694 = !{!695, !257, i64 56}
!695 = !{!"__db", !243, i64 0, !257, i64 8, !257, i64 16, !257, i64 24, !257, i64 32, !257, i64 40, !257, i64 48, !257, i64 56, !257, i64 64}
!696 = !DILocation(line: 236, column: 7, scope: !172)
!697 = !DILocation(line: 236, column: 13, scope: !172)
!698 = !{!695, !257, i64 8}
!699 = !DILocation(line: 237, column: 7, scope: !172)
!700 = !DILocation(line: 237, column: 11, scope: !172)
!701 = !{!695, !257, i64 16}
!702 = !DILocation(line: 238, column: 7, scope: !172)
!703 = !DILocation(line: 238, column: 10, scope: !172)
!704 = !{!695, !257, i64 64}
!705 = !DILocation(line: 239, column: 7, scope: !172)
!706 = !DILocation(line: 239, column: 11, scope: !172)
!707 = !DILocation(line: 241, column: 7, scope: !172)
!708 = !DILocation(line: 241, column: 11, scope: !172)
!709 = !{!695, !257, i64 40}
!710 = !DILocation(line: 242, column: 7, scope: !172)
!711 = !DILocation(line: 242, column: 12, scope: !172)
!712 = !{!695, !257, i64 48}
!713 = !DILocation(line: 243, column: 7, scope: !172)
!714 = !DILocation(line: 243, column: 12, scope: !172)
!715 = !{!695, !243, i64 0}
!716 = !DILocation(line: 267, column: 2, scope: !172)
!717 = !DILocation(line: 172, column: 4, scope: !718)
!718 = distinct !DILexicalBlock(scope: !319, file: !1, line: 172, column: 4)
!719 = !DILocation(line: 270, column: 6, scope: !172)
!720 = !DILocation(line: 271, column: 22, scope: !721)
!721 = distinct !DILexicalBlock(scope: !172, file: !1, line: 270, column: 6)
!722 = !DILocation(line: 271, column: 9, scope: !721)
!723 = !DILocation(line: 271, column: 3, scope: !721)
!724 = !DILocation(line: 0, scope: !319)
!725 = !DILocation(line: 0, scope: !718)
!726 = !DILocation(line: 274, column: 2, scope: !172)
!727 = !DILocation(line: 275, column: 2, scope: !172)
!728 = !DILocation(line: 275, column: 8, scope: !172)
!729 = !DILocation(line: 276, column: 2, scope: !172)
!730 = !DILocation(line: 0, scope: !247)
!731 = !DILocation(line: 277, column: 1, scope: !172)
!732 = distinct !DISubprogram(name: "alloc_segs", scope: !1, file: !1, line: 945, type: !425, isLocal: true, isDefinition: true, scopeLine: 948, isOptimized: true, unit: !0, retainedNodes: !733)
!733 = !{!734, !735, !736, !737, !738}
!734 = !DILocalVariable(name: "hashp", arg: 1, scope: !732, file: !1, line: 946, type: !20)
!735 = !DILocalVariable(name: "nsegs", arg: 2, scope: !732, file: !1, line: 947, type: !29)
!736 = !DILocalVariable(name: "i", scope: !732, file: !1, line: 949, type: !29)
!737 = !DILocalVariable(name: "store", scope: !732, file: !1, line: 950, type: !99)
!738 = !DILocalVariable(name: "save_errno", scope: !732, file: !1, line: 952, type: !29)
!739 = !DILocation(line: 946, column: 8, scope: !732)
!740 = !DILocation(line: 947, column: 6, scope: !732)
!741 = !DILocation(line: 955, column: 31, scope: !742)
!742 = distinct !DILexicalBlock(scope: !732, file: !1, line: 954, column: 6)
!743 = !DILocation(line: 955, column: 24, scope: !742)
!744 = !DILocation(line: 955, column: 17, scope: !742)
!745 = !DILocation(line: 954, column: 14, scope: !742)
!746 = !DILocation(line: 954, column: 18, scope: !742)
!747 = !{!255, !257, i64 648}
!748 = !DILocation(line: 955, column: 58, scope: !742)
!749 = !DILocation(line: 954, column: 6, scope: !732)
!750 = !DILocation(line: 956, column: 16, scope: !751)
!751 = distinct !DILexicalBlock(scope: !742, file: !1, line: 955, column: 67)
!752 = !DILocation(line: 952, column: 6, scope: !732)
!753 = !DILocation(line: 957, column: 9, scope: !751)
!754 = !DILocation(line: 958, column: 3, scope: !751)
!755 = !DILocation(line: 958, column: 9, scope: !751)
!756 = !DILocation(line: 959, column: 3, scope: !751)
!757 = !DILocation(line: 963, column: 38, scope: !758)
!758 = distinct !DILexicalBlock(scope: !732, file: !1, line: 962, column: 6)
!759 = !DILocation(line: 963, column: 28, scope: !758)
!760 = !DILocation(line: 963, column: 22, scope: !758)
!761 = !DILocation(line: 963, column: 15, scope: !758)
!762 = !DILocation(line: 963, column: 6, scope: !758)
!763 = !DILocation(line: 950, column: 10, scope: !732)
!764 = !DILocation(line: 963, column: 64, scope: !758)
!765 = !DILocation(line: 962, column: 6, scope: !732)
!766 = !DILocation(line: 949, column: 6, scope: !732)
!767 = !DILocation(line: 969, column: 16, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 969, column: 2)
!769 = distinct !DILexicalBlock(scope: !732, file: !1, line: 969, column: 2)
!770 = !DILocation(line: 969, column: 2, scope: !769)
!771 = !DILocation(line: 969, column: 42, scope: !768)
!772 = !DILocation(line: 964, column: 16, scope: !773)
!773 = distinct !DILexicalBlock(scope: !758, file: !1, line: 963, column: 73)
!774 = !DILocation(line: 965, column: 9, scope: !773)
!775 = !DILocation(line: 966, column: 3, scope: !773)
!776 = !DILocation(line: 966, column: 9, scope: !773)
!777 = !DILocation(line: 967, column: 3, scope: !773)
!778 = !DILocation(line: 970, column: 28, scope: !768)
!779 = !DILocation(line: 970, column: 20, scope: !768)
!780 = !DILocation(line: 970, column: 10, scope: !768)
!781 = !DILocation(line: 970, column: 3, scope: !768)
!782 = !DILocation(line: 970, column: 17, scope: !768)
!783 = !DILocation(line: 969, column: 26, scope: !768)
!784 = distinct !{!784, !770, !785}
!785 = !DILocation(line: 970, column: 44, scope: !769)
!786 = distinct !{!786, !787}
!787 = !{!"llvm.loop.unroll.disable"}
!788 = !DILocation(line: 0, scope: !732)
!789 = !DILocation(line: 972, column: 1, scope: !732)
!790 = distinct !DISubprogram(name: "hdestroy", scope: !1, file: !1, line: 435, type: !791, isLocal: true, isDefinition: true, scopeLine: 437, isOptimized: true, unit: !0, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!29, !20}
!793 = !{!794, !795, !796}
!794 = !DILocalVariable(name: "hashp", arg: 1, scope: !790, file: !1, line: 436, type: !20)
!795 = !DILocalVariable(name: "i", scope: !790, file: !1, line: 438, type: !29)
!796 = !DILocalVariable(name: "save_errno", scope: !790, file: !1, line: 438, type: !29)
!797 = !DILocation(line: 436, column: 8, scope: !790)
!798 = !DILocation(line: 438, column: 9, scope: !790)
!799 = !DILocation(line: 460, column: 34, scope: !800)
!800 = distinct !DILexicalBlock(scope: !790, file: !1, line: 460, column: 6)
!801 = !DILocation(line: 460, column: 6, scope: !800)
!802 = !DILocation(line: 460, column: 6, scope: !790)
!803 = !DILocation(line: 461, column: 16, scope: !800)
!804 = !DILocation(line: 461, column: 3, scope: !800)
!805 = !DILocation(line: 0, scope: !790)
!806 = !DILocation(line: 462, column: 13, scope: !807)
!807 = distinct !DILexicalBlock(scope: !790, file: !1, line: 462, column: 6)
!808 = !DILocation(line: 462, column: 6, scope: !807)
!809 = !DILocation(line: 462, column: 6, scope: !790)
!810 = !DILocation(line: 463, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !1, line: 462, column: 18)
!812 = !DILocation(line: 463, column: 3, scope: !811)
!813 = !DILocation(line: 465, column: 17, scope: !811)
!814 = !DILocation(line: 465, column: 23, scope: !811)
!815 = !{!255, !242, i64 264}
!816 = !DILocation(line: 465, column: 3, scope: !811)
!817 = !DILocation(line: 0, scope: !811)
!818 = !DILocation(line: 466, column: 20, scope: !811)
!819 = !DILocation(line: 466, column: 9, scope: !811)
!820 = !DILocation(line: 466, column: 4, scope: !811)
!821 = distinct !{!821, !816, !822}
!822 = !DILocation(line: 466, column: 35, scope: !811)
!823 = !DILocation(line: 467, column: 8, scope: !811)
!824 = !DILocation(line: 467, column: 3, scope: !811)
!825 = !DILocation(line: 468, column: 2, scope: !811)
!826 = !DILocation(line: 469, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !790, file: !1, line: 469, column: 6)
!828 = !DILocation(line: 469, column: 28, scope: !827)
!829 = !DILocation(line: 469, column: 24, scope: !827)
!830 = !DILocation(line: 470, column: 16, scope: !827)
!831 = !DILocation(line: 470, column: 3, scope: !827)
!832 = !DILocation(line: 0, scope: !827)
!833 = !DILocation(line: 438, column: 6, scope: !790)
!834 = !DILocation(line: 472, column: 25, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 472, column: 2)
!836 = distinct !DILexicalBlock(scope: !790, file: !1, line: 472, column: 2)
!837 = !DILocation(line: 472, column: 16, scope: !835)
!838 = !DILocation(line: 472, column: 2, scope: !836)
!839 = !DILocation(line: 473, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 473, column: 7)
!841 = !DILocation(line: 473, column: 7, scope: !835)
!842 = !DILocation(line: 474, column: 9, scope: !840)
!843 = !DILocation(line: 474, column: 4, scope: !840)
!844 = !DILocation(line: 472, column: 33, scope: !835)
!845 = distinct !{!845, !838, !846}
!846 = !DILocation(line: 474, column: 23, scope: !836)
!847 = !DILocation(line: 476, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !790, file: !1, line: 476, column: 6)
!849 = !DILocation(line: 476, column: 16, scope: !848)
!850 = !DILocation(line: 476, column: 6, scope: !790)
!851 = !DILocation(line: 477, column: 9, scope: !848)
!852 = !DILocation(line: 477, column: 3, scope: !848)
!853 = !DILocation(line: 479, column: 7, scope: !790)
!854 = !DILocation(line: 479, column: 2, scope: !790)
!855 = !DILocation(line: 481, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !790, file: !1, line: 481, column: 6)
!857 = !DILocation(line: 481, column: 6, scope: !790)
!858 = !DILocation(line: 482, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !1, line: 481, column: 18)
!860 = !DILocation(line: 482, column: 9, scope: !859)
!861 = !DILocation(line: 483, column: 3, scope: !859)
!862 = !DILocation(line: 486, column: 1, scope: !790)
!863 = distinct !DISubprogram(name: "hash_close", scope: !1, file: !1, line: 280, type: !864, isLocal: true, isDefinition: true, scopeLine: 282, isOptimized: true, unit: !0, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!29, !113}
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "dbp", arg: 1, scope: !863, file: !1, line: 281, type: !113)
!868 = !DILocalVariable(name: "hashp", scope: !863, file: !1, line: 283, type: !20)
!869 = !DILocalVariable(name: "retval", scope: !863, file: !1, line: 284, type: !29)
!870 = !DILocation(line: 281, column: 6, scope: !863)
!871 = !DILocation(line: 286, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !863, file: !1, line: 286, column: 6)
!873 = !DILocation(line: 286, column: 6, scope: !863)
!874 = !DILocation(line: 289, column: 23, scope: !863)
!875 = !DILocation(line: 283, column: 8, scope: !863)
!876 = !DILocation(line: 290, column: 11, scope: !863)
!877 = !DILocation(line: 284, column: 6, scope: !863)
!878 = !DILocation(line: 291, column: 7, scope: !863)
!879 = !DILocation(line: 291, column: 2, scope: !863)
!880 = !DILocation(line: 292, column: 2, scope: !863)
!881 = !DILocation(line: 0, scope: !872)
!882 = !DILocation(line: 293, column: 1, scope: !863)
!883 = distinct !DISubprogram(name: "hash_delete", scope: !1, file: !1, line: 612, type: !884, isLocal: true, isDefinition: true, scopeLine: 616, isOptimized: true, unit: !0, retainedNodes: !888)
!884 = !DISubroutineType(types: !885)
!885 = !{!29, !886, !130, !106}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!888 = !{!889, !890, !891, !892}
!889 = !DILocalVariable(name: "dbp", arg: 1, scope: !883, file: !1, line: 613, type: !886)
!890 = !DILocalVariable(name: "key", arg: 2, scope: !883, file: !1, line: 614, type: !130)
!891 = !DILocalVariable(name: "flag", arg: 3, scope: !883, file: !1, line: 615, type: !106)
!892 = !DILocalVariable(name: "hashp", scope: !883, file: !1, line: 617, type: !20)
!893 = !DILocation(line: 613, column: 12, scope: !883)
!894 = !DILocation(line: 614, column: 13, scope: !883)
!895 = !DILocation(line: 615, column: 8, scope: !883)
!896 = !DILocation(line: 619, column: 23, scope: !883)
!897 = !DILocation(line: 617, column: 8, scope: !883)
!898 = !DILocation(line: 620, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !883, file: !1, line: 620, column: 6)
!900 = !DILocation(line: 621, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !899, file: !1, line: 620, column: 32)
!902 = !DILocation(line: 621, column: 24, scope: !901)
!903 = !DILocation(line: 621, column: 10, scope: !901)
!904 = !DILocation(line: 621, column: 16, scope: !901)
!905 = !{!255, !242, i64 320}
!906 = !DILocation(line: 622, column: 3, scope: !901)
!907 = !DILocation(line: 624, column: 14, scope: !908)
!908 = distinct !DILexicalBlock(scope: !883, file: !1, line: 624, column: 6)
!909 = !DILocation(line: 624, column: 20, scope: !908)
!910 = !DILocation(line: 624, column: 33, scope: !908)
!911 = !DILocation(line: 624, column: 6, scope: !883)
!912 = !DILocation(line: 625, column: 18, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !1, line: 624, column: 46)
!914 = !DILocation(line: 625, column: 24, scope: !913)
!915 = !DILocation(line: 625, column: 10, scope: !913)
!916 = !DILocation(line: 625, column: 16, scope: !913)
!917 = !DILocation(line: 626, column: 3, scope: !913)
!918 = !DILocation(line: 628, column: 10, scope: !883)
!919 = !DILocation(line: 628, column: 2, scope: !883)
!920 = !DILocation(line: 0, scope: !883)
!921 = !DILocation(line: 629, column: 1, scope: !883)
!922 = distinct !DISubprogram(name: "hash_fd", scope: !1, file: !1, line: 296, type: !923, isLocal: true, isDefinition: true, scopeLine: 298, isOptimized: true, unit: !0, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{!29, !886}
!925 = !{!926, !927}
!926 = !DILocalVariable(name: "dbp", arg: 1, scope: !922, file: !1, line: 297, type: !886)
!927 = !DILocalVariable(name: "hashp", scope: !922, file: !1, line: 299, type: !20)
!928 = !DILocation(line: 297, column: 12, scope: !922)
!929 = !DILocation(line: 301, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !922, file: !1, line: 301, column: 6)
!931 = !DILocation(line: 301, column: 6, scope: !922)
!932 = !DILocation(line: 304, column: 23, scope: !922)
!933 = !DILocation(line: 299, column: 8, scope: !922)
!934 = !DILocation(line: 305, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !922, file: !1, line: 305, column: 6)
!936 = !DILocation(line: 305, column: 16, scope: !935)
!937 = !DILocation(line: 305, column: 6, scope: !922)
!938 = !DILocation(line: 306, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !1, line: 305, column: 23)
!940 = !DILocation(line: 306, column: 9, scope: !939)
!941 = !DILocation(line: 307, column: 3, scope: !939)
!942 = !DILocation(line: 0, scope: !930)
!943 = !DILocation(line: 310, column: 1, scope: !922)
!944 = distinct !DISubprogram(name: "hash_get", scope: !1, file: !1, line: 572, type: !945, isLocal: true, isDefinition: true, scopeLine: 577, isOptimized: true, unit: !0, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!29, !886, !130, !142, !106}
!947 = !{!948, !949, !950, !951, !952}
!948 = !DILocalVariable(name: "dbp", arg: 1, scope: !944, file: !1, line: 573, type: !886)
!949 = !DILocalVariable(name: "key", arg: 2, scope: !944, file: !1, line: 574, type: !130)
!950 = !DILocalVariable(name: "data", arg: 3, scope: !944, file: !1, line: 575, type: !142)
!951 = !DILocalVariable(name: "flag", arg: 4, scope: !944, file: !1, line: 576, type: !106)
!952 = !DILocalVariable(name: "hashp", scope: !944, file: !1, line: 578, type: !20)
!953 = !DILocation(line: 573, column: 12, scope: !944)
!954 = !DILocation(line: 574, column: 13, scope: !944)
!955 = !DILocation(line: 575, column: 7, scope: !944)
!956 = !DILocation(line: 576, column: 8, scope: !944)
!957 = !DILocation(line: 580, column: 23, scope: !944)
!958 = !DILocation(line: 578, column: 8, scope: !944)
!959 = !DILocation(line: 581, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !944, file: !1, line: 581, column: 6)
!961 = !DILocation(line: 581, column: 6, scope: !944)
!962 = !DILocation(line: 582, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !1, line: 581, column: 12)
!964 = !DILocation(line: 582, column: 24, scope: !963)
!965 = !DILocation(line: 582, column: 10, scope: !963)
!966 = !DILocation(line: 582, column: 16, scope: !963)
!967 = !DILocation(line: 583, column: 3, scope: !963)
!968 = !DILocation(line: 585, column: 10, scope: !944)
!969 = !DILocation(line: 585, column: 2, scope: !944)
!970 = !DILocation(line: 0, scope: !944)
!971 = !DILocation(line: 586, column: 1, scope: !944)
!972 = distinct !DISubprogram(name: "hash_put", scope: !1, file: !1, line: 589, type: !973, isLocal: true, isDefinition: true, scopeLine: 594, isOptimized: true, unit: !0, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!29, !886, !142, !130, !106}
!975 = !{!976, !977, !978, !979, !980}
!976 = !DILocalVariable(name: "dbp", arg: 1, scope: !972, file: !1, line: 590, type: !886)
!977 = !DILocalVariable(name: "key", arg: 2, scope: !972, file: !1, line: 591, type: !142)
!978 = !DILocalVariable(name: "data", arg: 3, scope: !972, file: !1, line: 592, type: !130)
!979 = !DILocalVariable(name: "flag", arg: 4, scope: !972, file: !1, line: 593, type: !106)
!980 = !DILocalVariable(name: "hashp", scope: !972, file: !1, line: 595, type: !20)
!981 = !DILocation(line: 590, column: 12, scope: !972)
!982 = !DILocation(line: 591, column: 7, scope: !972)
!983 = !DILocation(line: 592, column: 13, scope: !972)
!984 = !DILocation(line: 593, column: 8, scope: !972)
!985 = !DILocation(line: 597, column: 23, scope: !972)
!986 = !DILocation(line: 595, column: 8, scope: !972)
!987 = !DILocation(line: 598, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !972, file: !1, line: 598, column: 6)
!989 = !DILocation(line: 599, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !1, line: 598, column: 37)
!991 = !DILocation(line: 599, column: 16, scope: !990)
!992 = !DILocation(line: 600, column: 3, scope: !990)
!993 = !DILocation(line: 600, column: 9, scope: !990)
!994 = !DILocation(line: 601, column: 3, scope: !990)
!995 = !DILocation(line: 603, column: 14, scope: !996)
!996 = distinct !DILexicalBlock(scope: !972, file: !1, line: 603, column: 6)
!997 = !DILocation(line: 603, column: 20, scope: !996)
!998 = !DILocation(line: 603, column: 33, scope: !996)
!999 = !DILocation(line: 603, column: 6, scope: !972)
!1000 = !DILocation(line: 604, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !1, line: 603, column: 46)
!1002 = !DILocation(line: 604, column: 24, scope: !1001)
!1003 = !DILocation(line: 604, column: 10, scope: !1001)
!1004 = !DILocation(line: 604, column: 16, scope: !1001)
!1005 = !DILocation(line: 605, column: 3, scope: !1001)
!1006 = !DILocation(line: 607, column: 34, scope: !972)
!1007 = !DILocation(line: 607, column: 29, scope: !972)
!1008 = !DILocation(line: 607, column: 10, scope: !972)
!1009 = !DILocation(line: 607, column: 2, scope: !972)
!1010 = !DILocation(line: 0, scope: !972)
!1011 = !DILocation(line: 609, column: 1, scope: !972)
!1012 = distinct !DISubprogram(name: "hash_seq", scope: !1, file: !1, line: 764, type: !1013, isLocal: true, isDefinition: true, scopeLine: 768, isOptimized: true, unit: !0, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!29, !886, !142, !142, !106}
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1016 = !DILocalVariable(name: "dbp", arg: 1, scope: !1012, file: !1, line: 765, type: !886)
!1017 = !DILocalVariable(name: "key", arg: 2, scope: !1012, file: !1, line: 766, type: !142)
!1018 = !DILocalVariable(name: "data", arg: 3, scope: !1012, file: !1, line: 766, type: !142)
!1019 = !DILocalVariable(name: "flag", arg: 4, scope: !1012, file: !1, line: 767, type: !106)
!1020 = !DILocalVariable(name: "bucket", scope: !1012, file: !1, line: 769, type: !32)
!1021 = !DILocalVariable(name: "bufp", scope: !1012, file: !1, line: 770, type: !76)
!1022 = !DILocalVariable(name: "hashp", scope: !1012, file: !1, line: 771, type: !20)
!1023 = !DILocalVariable(name: "bp", scope: !1012, file: !1, line: 772, type: !164)
!1024 = !DILocalVariable(name: "ndx", scope: !1012, file: !1, line: 772, type: !54)
!1025 = !DILocation(line: 765, column: 12, scope: !1012)
!1026 = !DILocation(line: 766, column: 7, scope: !1012)
!1027 = !DILocation(line: 766, column: 13, scope: !1012)
!1028 = !DILocation(line: 767, column: 8, scope: !1012)
!1029 = !DILocation(line: 774, column: 23, scope: !1012)
!1030 = !DILocation(line: 771, column: 8, scope: !1012)
!1031 = !DILocation(line: 775, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 775, column: 6)
!1033 = !DILocation(line: 776, column: 18, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 775, column: 49)
!1035 = !DILocation(line: 776, column: 24, scope: !1034)
!1036 = !DILocation(line: 776, column: 10, scope: !1034)
!1037 = !DILocation(line: 776, column: 16, scope: !1034)
!1038 = !DILocation(line: 777, column: 3, scope: !1034)
!1039 = !DILocation(line: 782, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 782, column: 6)
!1041 = !DILocation(line: 782, column: 22, scope: !1040)
!1042 = !DILocation(line: 782, column: 36, scope: !1040)
!1043 = !DILocation(line: 782, column: 27, scope: !1040)
!1044 = !DILocation(line: 783, column: 18, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 782, column: 49)
!1046 = !DILocation(line: 784, column: 10, scope: !1045)
!1047 = !DILocation(line: 784, column: 15, scope: !1045)
!1048 = !{!255, !242, i64 316}
!1049 = !DILocation(line: 785, column: 10, scope: !1045)
!1050 = !DILocation(line: 785, column: 16, scope: !1045)
!1051 = !{!255, !257, i64 304}
!1052 = !DILocation(line: 786, column: 2, scope: !1045)
!1053 = !DILocation(line: 772, column: 14, scope: !1012)
!1054 = !DILocation(line: 788, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 788, column: 2)
!1056 = !DILocation(line: 0, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 789, column: 7)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 788, column: 35)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 788, column: 2)
!1060 = !DILocation(line: 770, column: 11, scope: !1012)
!1061 = !DILocation(line: 788, column: 19, scope: !1059)
!1062 = !DILocation(line: 788, column: 22, scope: !1059)
!1063 = !DILocation(line: 788, column: 26, scope: !1059)
!1064 = !DILocation(line: 788, column: 25, scope: !1059)
!1065 = !DILocation(line: 788, column: 2, scope: !1055)
!1066 = !DILocation(line: 789, column: 23, scope: !1057)
!1067 = !DILocation(line: 789, column: 14, scope: !1057)
!1068 = !DILocation(line: 789, column: 7, scope: !1058)
!1069 = !DILocation(line: 790, column: 25, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 790, column: 4)
!1071 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 789, column: 31)
!1072 = !DILocation(line: 769, column: 13, scope: !1012)
!1073 = !DILocation(line: 791, column: 25, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 790, column: 4)
!1075 = !DILocation(line: 791, column: 15, scope: !1074)
!1076 = !DILocation(line: 790, column: 4, scope: !1070)
!1077 = !DILocation(line: 793, column: 12, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 792, column: 35)
!1079 = !DILocation(line: 794, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 794, column: 9)
!1081 = !DILocation(line: 794, column: 9, scope: !1078)
!1082 = !DILocation(line: 796, column: 18, scope: !1078)
!1083 = !DILocation(line: 797, column: 30, scope: !1078)
!1084 = !{!258, !257, i64 32}
!1085 = !DILocation(line: 798, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 798, column: 9)
!1087 = !DILocation(line: 798, column: 9, scope: !1078)
!1088 = !DILocation(line: 802, column: 32, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 802, column: 8)
!1090 = !DILocation(line: 792, column: 14, scope: !1074)
!1091 = !DILocation(line: 792, column: 30, scope: !1074)
!1092 = distinct !{!1092, !1076, !1093}
!1093 = !DILocation(line: 800, column: 4, scope: !1070)
!1094 = !DILocation(line: 0, scope: !1074)
!1095 = !DILocation(line: 0, scope: !1055)
!1096 = !DILocation(line: 801, column: 19, scope: !1071)
!1097 = !DILocation(line: 802, column: 23, scope: !1089)
!1098 = !DILocation(line: 802, column: 8, scope: !1071)
!1099 = !DILocation(line: 803, column: 20, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 802, column: 44)
!1101 = !DILocation(line: 804, column: 5, scope: !1100)
!1102 = !DILocation(line: 807, column: 37, scope: !1057)
!1103 = !DILocation(line: 0, scope: !1078)
!1104 = !DILocation(line: 813, column: 20, scope: !1058)
!1105 = !DILocation(line: 813, column: 25, scope: !1058)
!1106 = !DILocation(line: 813, column: 10, scope: !1058)
!1107 = !DILocation(line: 813, column: 30, scope: !1058)
!1108 = !DILocation(line: 813, column: 3, scope: !1058)
!1109 = !DILocation(line: 815, column: 25, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 813, column: 43)
!1111 = !DILocation(line: 815, column: 8, scope: !1110)
!1112 = !DILocation(line: 814, column: 24, scope: !1110)
!1113 = !DILocation(line: 816, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 816, column: 8)
!1115 = !DILocation(line: 816, column: 8, scope: !1110)
!1116 = !DILocation(line: 818, column: 30, scope: !1110)
!1117 = !DILocation(line: 819, column: 16, scope: !1110)
!1118 = distinct !{!1118, !1108, !1119}
!1119 = !DILocation(line: 820, column: 3, scope: !1058)
!1120 = !DILocation(line: 0, scope: !1110)
!1121 = !DILocation(line: 821, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 821, column: 7)
!1123 = !DILocation(line: 821, column: 7, scope: !1058)
!1124 = distinct !{!1124, !1065, !1125}
!1125 = !DILocation(line: 825, column: 2, scope: !1055)
!1126 = !DILocation(line: 822, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 821, column: 15)
!1128 = !DILocation(line: 823, column: 4, scope: !1127)
!1129 = !DILocation(line: 824, column: 3, scope: !1127)
!1130 = !DILocation(line: 826, column: 15, scope: !1012)
!1131 = !DILocation(line: 827, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 827, column: 6)
!1133 = !DILocation(line: 827, column: 13, scope: !1132)
!1134 = !DILocation(line: 827, column: 6, scope: !1132)
!1135 = !DILocation(line: 827, column: 18, scope: !1132)
!1136 = !DILocation(line: 827, column: 6, scope: !1012)
!1137 = !DILocation(line: 828, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 828, column: 7)
!1139 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 827, column: 30)
!1140 = !DILocation(line: 828, column: 7, scope: !1139)
!1141 = !DILocation(line: 831, column: 32, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 830, column: 9)
!1143 = !DILocation(line: 831, column: 39, scope: !1142)
!1144 = !DILocation(line: 831, column: 46, scope: !1142)
!1145 = !DILocation(line: 831, column: 44, scope: !1142)
!1146 = !DILocation(line: 831, column: 8, scope: !1142)
!1147 = !DILocation(line: 831, column: 13, scope: !1142)
!1148 = !{!1149, !257, i64 0}
!1149 = !{!"", !257, i64 0, !302, i64 8}
!1150 = !DILocation(line: 832, column: 20, scope: !1142)
!1151 = !DILocation(line: 832, column: 16, scope: !1142)
!1152 = !DILocation(line: 832, column: 33, scope: !1142)
!1153 = !DILocation(line: 832, column: 26, scope: !1142)
!1154 = !DILocation(line: 832, column: 47, scope: !1142)
!1155 = !DILocation(line: 832, column: 56, scope: !1142)
!1156 = !DILocation(line: 832, column: 54, scope: !1142)
!1157 = !DILocation(line: 832, column: 15, scope: !1142)
!1158 = !DILocation(line: 832, column: 8, scope: !1142)
!1159 = !DILocation(line: 832, column: 13, scope: !1142)
!1160 = !{!1149, !302, i64 8}
!1161 = !DILocation(line: 833, column: 45, scope: !1142)
!1162 = !DILocation(line: 833, column: 9, scope: !1142)
!1163 = !DILocation(line: 833, column: 14, scope: !1142)
!1164 = !DILocation(line: 834, column: 24, scope: !1142)
!1165 = !DILocation(line: 834, column: 9, scope: !1142)
!1166 = !DILocation(line: 834, column: 14, scope: !1142)
!1167 = !DILocation(line: 835, column: 7, scope: !1142)
!1168 = !DILocation(line: 836, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 836, column: 7)
!1170 = !DILocation(line: 772, column: 18, scope: !1012)
!1171 = !DILocation(line: 836, column: 13, scope: !1169)
!1172 = !DILocation(line: 836, column: 11, scope: !1169)
!1173 = !DILocation(line: 836, column: 7, scope: !1142)
!1174 = !DILocation(line: 837, column: 17, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 836, column: 20)
!1176 = !DILocation(line: 838, column: 18, scope: !1175)
!1177 = !DILocation(line: 840, column: 3, scope: !1175)
!1178 = !DILocation(line: 0, scope: !1169)
!1179 = !DILocation(line: 843, column: 2, scope: !1012)
!1180 = !DILocation(line: 0, scope: !1012)
!1181 = !DILocation(line: 844, column: 1, scope: !1012)
!1182 = distinct !DISubprogram(name: "hash_sync", scope: !1, file: !1, line: 495, type: !1183, isLocal: true, isDefinition: true, scopeLine: 498, isOptimized: true, unit: !0, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!29, !886, !106}
!1185 = !{!1186, !1187, !1188}
!1186 = !DILocalVariable(name: "dbp", arg: 1, scope: !1182, file: !1, line: 496, type: !886)
!1187 = !DILocalVariable(name: "flags", arg: 2, scope: !1182, file: !1, line: 497, type: !106)
!1188 = !DILocalVariable(name: "hashp", scope: !1182, file: !1, line: 499, type: !20)
!1189 = !DILocation(line: 496, column: 12, scope: !1182)
!1190 = !DILocation(line: 497, column: 8, scope: !1182)
!1191 = !DILocation(line: 501, column: 12, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 501, column: 6)
!1193 = !DILocation(line: 501, column: 6, scope: !1182)
!1194 = !DILocation(line: 502, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 501, column: 18)
!1196 = !DILocation(line: 502, column: 9, scope: !1195)
!1197 = !DILocation(line: 503, column: 3, scope: !1195)
!1198 = !DILocation(line: 506, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 506, column: 6)
!1200 = !DILocation(line: 506, column: 6, scope: !1182)
!1201 = !DILocation(line: 509, column: 23, scope: !1182)
!1202 = !DILocation(line: 499, column: 8, scope: !1182)
!1203 = !DILocation(line: 510, column: 14, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 510, column: 6)
!1205 = !DILocation(line: 510, column: 7, scope: !1204)
!1206 = !DILocation(line: 510, column: 6, scope: !1182)
!1207 = !DILocation(line: 512, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 512, column: 6)
!1209 = !DILocation(line: 512, column: 30, scope: !1208)
!1210 = !DILocation(line: 512, column: 33, scope: !1208)
!1211 = !DILocation(line: 512, column: 6, scope: !1182)
!1212 = !DILocation(line: 514, column: 9, scope: !1182)
!1213 = !DILocation(line: 514, column: 18, scope: !1182)
!1214 = !DILocation(line: 515, column: 2, scope: !1182)
!1215 = !DILocation(line: 0, scope: !1199)
!1216 = !DILocation(line: 516, column: 1, scope: !1182)
!1217 = distinct !DISubprogram(name: "__expand_table", scope: !1, file: !1, line: 854, type: !791, isLocal: false, isDefinition: true, scopeLine: 856, isOptimized: true, unit: !0, retainedNodes: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224}
!1219 = !DILocalVariable(name: "hashp", arg: 1, scope: !1217, file: !1, line: 855, type: !20)
!1220 = !DILocalVariable(name: "old_bucket", scope: !1217, file: !1, line: 857, type: !32)
!1221 = !DILocalVariable(name: "new_bucket", scope: !1217, file: !1, line: 857, type: !32)
!1222 = !DILocalVariable(name: "dirsize", scope: !1217, file: !1, line: 858, type: !29)
!1223 = !DILocalVariable(name: "new_segnum", scope: !1217, file: !1, line: 858, type: !29)
!1224 = !DILocalVariable(name: "spare_ndx", scope: !1217, file: !1, line: 858, type: !29)
!1225 = !DILocation(line: 855, column: 8, scope: !1217)
!1226 = !DILocation(line: 863, column: 24, scope: !1217)
!1227 = !DILocation(line: 863, column: 15, scope: !1217)
!1228 = !DILocation(line: 857, column: 25, scope: !1217)
!1229 = !DILocation(line: 864, column: 43, scope: !1217)
!1230 = !DILocation(line: 864, column: 34, scope: !1217)
!1231 = !DILocation(line: 857, column: 13, scope: !1217)
!1232 = !DILocation(line: 866, column: 36, scope: !1217)
!1233 = !DILocation(line: 866, column: 26, scope: !1217)
!1234 = !DILocation(line: 858, column: 15, scope: !1217)
!1235 = !DILocation(line: 869, column: 27, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 869, column: 6)
!1237 = !DILocation(line: 869, column: 17, scope: !1236)
!1238 = !DILocation(line: 869, column: 6, scope: !1217)
!1239 = !DILocation(line: 871, column: 28, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 871, column: 7)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 869, column: 34)
!1242 = !DILocation(line: 871, column: 18, scope: !1240)
!1243 = !DILocation(line: 871, column: 7, scope: !1241)
!1244 = !DILocation(line: 878, column: 15, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 878, column: 7)
!1246 = !DILocation(line: 874, column: 52, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 874, column: 8)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 871, column: 35)
!1249 = !DILocalVariable(name: "newsize", arg: 3, scope: !1250, file: !1, line: 911, type: !29)
!1250 = distinct !DISubprogram(name: "hash_realloc", scope: !1, file: !1, line: 909, type: !1251, isLocal: true, isDefinition: true, scopeLine: 912, isOptimized: true, unit: !0, retainedNodes: !1254)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!136, !1253, !29, !29}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1254 = !{!1255, !1256, !1249, !1257}
!1255 = !DILocalVariable(name: "p_ptr", arg: 1, scope: !1250, file: !1, line: 910, type: !1253)
!1256 = !DILocalVariable(name: "oldsize", arg: 2, scope: !1250, file: !1, line: 911, type: !29)
!1257 = !DILocalVariable(name: "p", scope: !1250, file: !1, line: 913, type: !136)
!1258 = !DILocation(line: 911, column: 15, scope: !1250, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 874, column: 9, scope: !1247)
!1260 = !DILocation(line: 915, column: 19, scope: !1261, inlinedAt: !1259)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 915, column: 7)
!1262 = !DILocation(line: 915, column: 12, scope: !1261, inlinedAt: !1259)
!1263 = !DILocation(line: 913, column: 8, scope: !1250, inlinedAt: !1259)
!1264 = !DILocation(line: 915, column: 10, scope: !1261, inlinedAt: !1259)
!1265 = !DILocation(line: 915, column: 7, scope: !1250, inlinedAt: !1259)
!1266 = !DILocation(line: 873, column: 27, scope: !1248)
!1267 = !DILocation(line: 911, column: 6, scope: !1250, inlinedAt: !1259)
!1268 = !DILocation(line: 858, column: 6, scope: !1217)
!1269 = !DILocation(line: 874, column: 30, scope: !1247)
!1270 = !DILocation(line: 910, column: 12, scope: !1250, inlinedAt: !1259)
!1271 = !DILocation(line: 916, column: 14, scope: !1272, inlinedAt: !1259)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 915, column: 31)
!1273 = !DILocation(line: 916, column: 22, scope: !1272, inlinedAt: !1259)
!1274 = !DILocation(line: 916, column: 3, scope: !1272, inlinedAt: !1259)
!1275 = !DILocation(line: 917, column: 20, scope: !1272, inlinedAt: !1259)
!1276 = !DILocation(line: 917, column: 3, scope: !1272, inlinedAt: !1259)
!1277 = !DILocation(line: 918, column: 8, scope: !1272, inlinedAt: !1259)
!1278 = !DILocation(line: 918, column: 3, scope: !1272, inlinedAt: !1259)
!1279 = !DILocation(line: 919, column: 10, scope: !1272, inlinedAt: !1259)
!1280 = !DILocation(line: 876, column: 17, scope: !1248)
!1281 = !DILocation(line: 877, column: 3, scope: !1248)
!1282 = !DILocation(line: 879, column: 30, scope: !1245)
!1283 = !DILocation(line: 879, column: 23, scope: !1245)
!1284 = !DILocation(line: 879, column: 16, scope: !1245)
!1285 = !DILocation(line: 878, column: 8, scope: !1245)
!1286 = !DILocation(line: 878, column: 31, scope: !1245)
!1287 = !DILocation(line: 879, column: 56, scope: !1245)
!1288 = !DILocation(line: 878, column: 7, scope: !1241)
!1289 = !DILocation(line: 881, column: 10, scope: !1241)
!1290 = !DILocation(line: 881, column: 16, scope: !1241)
!1291 = !DILocation(line: 882, column: 15, scope: !1241)
!1292 = !DILocation(line: 889, column: 28, scope: !1217)
!1293 = !DILocation(line: 883, column: 2, scope: !1241)
!1294 = !DILocation(line: 889, column: 39, scope: !1217)
!1295 = !DILocation(line: 889, column: 14, scope: !1217)
!1296 = !DILocation(line: 858, column: 27, scope: !1217)
!1297 = !DILocation(line: 890, column: 25, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 890, column: 6)
!1299 = !DILocation(line: 890, column: 16, scope: !1298)
!1300 = !DILocation(line: 890, column: 6, scope: !1217)
!1301 = !DILocation(line: 891, column: 30, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 890, column: 37)
!1303 = !DILocation(line: 891, column: 3, scope: !1302)
!1304 = !DILocation(line: 891, column: 28, scope: !1302)
!1305 = !DILocation(line: 892, column: 21, scope: !1302)
!1306 = !DILocation(line: 893, column: 2, scope: !1302)
!1307 = !DILocation(line: 895, column: 26, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 895, column: 6)
!1309 = !DILocation(line: 895, column: 17, scope: !1308)
!1310 = !DILocation(line: 895, column: 6, scope: !1217)
!1311 = !DILocation(line: 897, column: 19, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 895, column: 37)
!1313 = !DILocation(line: 898, column: 33, scope: !1312)
!1314 = !DILocation(line: 898, column: 20, scope: !1312)
!1315 = !DILocation(line: 899, column: 2, scope: !1312)
!1316 = !DILocation(line: 901, column: 10, scope: !1217)
!1317 = !DILocation(line: 901, column: 2, scope: !1217)
!1318 = !DILocation(line: 0, scope: !1247)
!1319 = !DILocation(line: 902, column: 1, scope: !1217)
!1320 = distinct !DISubprogram(name: "__call_hash", scope: !1, file: !1, line: 925, type: !1321, isLocal: false, isDefinition: true, scopeLine: 929, isOptimized: true, unit: !0, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!32, !20, !72, !29}
!1323 = !{!1324, !1325, !1326, !1327, !1328}
!1324 = !DILocalVariable(name: "hashp", arg: 1, scope: !1320, file: !1, line: 926, type: !20)
!1325 = !DILocalVariable(name: "k", arg: 2, scope: !1320, file: !1, line: 927, type: !72)
!1326 = !DILocalVariable(name: "len", arg: 3, scope: !1320, file: !1, line: 928, type: !29)
!1327 = !DILocalVariable(name: "n", scope: !1320, file: !1, line: 930, type: !29)
!1328 = !DILocalVariable(name: "bucket", scope: !1320, file: !1, line: 930, type: !29)
!1329 = !DILocation(line: 926, column: 8, scope: !1320)
!1330 = !DILocation(line: 927, column: 8, scope: !1320)
!1331 = !DILocation(line: 928, column: 6, scope: !1320)
!1332 = !DILocation(line: 932, column: 13, scope: !1320)
!1333 = !DILocation(line: 932, column: 21, scope: !1320)
!1334 = !DILocation(line: 932, column: 6, scope: !1320)
!1335 = !DILocation(line: 930, column: 6, scope: !1320)
!1336 = !DILocation(line: 933, column: 22, scope: !1320)
!1337 = !DILocation(line: 933, column: 13, scope: !1320)
!1338 = !DILocation(line: 930, column: 9, scope: !1320)
!1339 = !DILocation(line: 934, column: 22, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 934, column: 6)
!1341 = !DILocation(line: 934, column: 13, scope: !1340)
!1342 = !DILocation(line: 934, column: 6, scope: !1320)
!1343 = !DILocation(line: 935, column: 28, scope: !1340)
!1344 = !DILocation(line: 935, column: 19, scope: !1340)
!1345 = !DILocation(line: 935, column: 3, scope: !1340)
!1346 = !DILocation(line: 0, scope: !1320)
!1347 = !DILocation(line: 936, column: 2, scope: !1320)
!1348 = distinct !DISubprogram(name: "flush_meta", scope: !1, file: !1, line: 524, type: !791, isLocal: true, isDefinition: true, scopeLine: 526, isOptimized: true, unit: !0, retainedNodes: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355}
!1350 = !DILocalVariable(name: "hashp", arg: 1, scope: !1348, file: !1, line: 525, type: !20)
!1351 = !DILocalVariable(name: "whdrp", scope: !1348, file: !1, line: 527, type: !516)
!1352 = !DILocalVariable(name: "whdr", scope: !1348, file: !1, line: 529, type: !25)
!1353 = !DILocalVariable(name: "fp", scope: !1348, file: !1, line: 531, type: !29)
!1354 = !DILocalVariable(name: "i", scope: !1348, file: !1, line: 531, type: !29)
!1355 = !DILocalVariable(name: "wsize", scope: !1348, file: !1, line: 531, type: !29)
!1356 = !DILocation(line: 525, column: 8, scope: !1348)
!1357 = !DILocation(line: 529, column: 2, scope: !1348)
!1358 = !DILocation(line: 533, column: 14, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 533, column: 6)
!1360 = !DILocation(line: 533, column: 7, scope: !1359)
!1361 = !DILocation(line: 533, column: 6, scope: !1348)
!1362 = !DILocation(line: 535, column: 9, scope: !1348)
!1363 = !DILocation(line: 535, column: 15, scope: !1348)
!1364 = !DILocation(line: 536, column: 9, scope: !1348)
!1365 = !DILocation(line: 536, column: 22, scope: !1348)
!1366 = !DILocation(line: 537, column: 28, scope: !1348)
!1367 = !DILocation(line: 537, column: 21, scope: !1348)
!1368 = !DILocation(line: 537, column: 9, scope: !1348)
!1369 = !DILocation(line: 537, column: 19, scope: !1348)
!1370 = !DILocation(line: 539, column: 14, scope: !1348)
!1371 = !DILocation(line: 531, column: 6, scope: !1348)
!1372 = !DILocation(line: 527, column: 11, scope: !1348)
!1373 = !DILocation(line: 529, column: 10, scope: !1348)
!1374 = !DILocalVariable(name: "srcp", arg: 1, scope: !1375, file: !1, line: 980, type: !516)
!1375 = distinct !DISubprogram(name: "swap_header_copy", scope: !1, file: !1, line: 979, type: !1376, isLocal: true, isDefinition: true, scopeLine: 981, isOptimized: true, unit: !0, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !516, !516}
!1378 = !{!1374, !1379, !1380}
!1379 = !DILocalVariable(name: "destp", arg: 2, scope: !1375, file: !1, line: 980, type: !516)
!1380 = !DILocalVariable(name: "i", scope: !1375, file: !1, line: 982, type: !29)
!1381 = !DILocation(line: 980, column: 11, scope: !1375, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 543, column: 2, scope: !1348)
!1383 = !DILocation(line: 980, column: 18, scope: !1375, inlinedAt: !1382)
!1384 = !DILocation(line: 984, column: 2, scope: !1385, inlinedAt: !1382)
!1385 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 984, column: 2)
!1386 = !DILocation(line: 988, column: 2, scope: !1387, inlinedAt: !1382)
!1387 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 988, column: 2)
!1388 = !DILocation(line: 992, column: 2, scope: !1389, inlinedAt: !1382)
!1389 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 992, column: 2)
!1390 = !DILocation(line: 996, column: 2, scope: !1391, inlinedAt: !1382)
!1391 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 996, column: 2)
!1392 = !DILocation(line: 1000, column: 2, scope: !1393, inlinedAt: !1382)
!1393 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 1000, column: 2)
!1394 = !DILocation(line: 982, column: 6, scope: !1375, inlinedAt: !1382)
!1395 = !DILocation(line: 1001, column: 2, scope: !1396, inlinedAt: !1382)
!1396 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 1001, column: 2)
!1397 = !DILocation(line: 1002, column: 3, scope: !1398, inlinedAt: !1382)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 1002, column: 3)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1001, column: 32)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 1001, column: 2)
!1401 = !DILocation(line: 1003, column: 3, scope: !1402, inlinedAt: !1382)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 1003, column: 3)
!1403 = !DILocation(line: 1001, column: 28, scope: !1400, inlinedAt: !1382)
!1404 = !DILocation(line: 1001, column: 16, scope: !1400, inlinedAt: !1382)
!1405 = distinct !{!1405, !1406, !1407}
!1406 = !DILocation(line: 1001, column: 2, scope: !1396)
!1407 = !DILocation(line: 1004, column: 2, scope: !1396)
!1408 = !DILocation(line: 545, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 545, column: 6)
!1410 = !DILocation(line: 545, column: 37, scope: !1409)
!1411 = !DILocation(line: 545, column: 44, scope: !1409)
!1412 = !DILocation(line: 546, column: 16, scope: !1409)
!1413 = !DILocation(line: 531, column: 13, scope: !1348)
!1414 = !DILocation(line: 546, column: 51, scope: !1409)
!1415 = !DILocation(line: 545, column: 6, scope: !1348)
!1416 = !DILocation(line: 549, column: 13, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 549, column: 7)
!1418 = !DILocation(line: 549, column: 7, scope: !1409)
!1419 = !DILocation(line: 550, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 549, column: 33)
!1421 = !DILocation(line: 550, column: 10, scope: !1420)
!1422 = !DILocation(line: 551, column: 19, scope: !1420)
!1423 = !DILocation(line: 551, column: 11, scope: !1420)
!1424 = !DILocation(line: 551, column: 17, scope: !1420)
!1425 = !DILocation(line: 552, column: 4, scope: !1420)
!1426 = !DILocation(line: 531, column: 10, scope: !1348)
!1427 = !DILocation(line: 555, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 555, column: 7)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 554, column: 2)
!1430 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 554, column: 2)
!1431 = !DILocation(line: 555, column: 7, scope: !1429)
!1432 = !DILocation(line: 556, column: 26, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 556, column: 8)
!1434 = !DILocation(line: 557, column: 5, scope: !1433)
!1435 = !DILocation(line: 556, column: 8, scope: !1433)
!1436 = !DILocation(line: 556, column: 8, scope: !1428)
!1437 = !DILocation(line: 554, column: 28, scope: !1429)
!1438 = !DILocation(line: 554, column: 16, scope: !1429)
!1439 = !DILocation(line: 554, column: 2, scope: !1430)
!1440 = distinct !{!1440, !1439, !1441}
!1441 = !DILocation(line: 558, column: 15, scope: !1430)
!1442 = !DILocation(line: 0, scope: !1359)
!1443 = !DILocation(line: 560, column: 1, scope: !1348)
!1444 = distinct !DISubprogram(name: "hash_access", scope: !1, file: !1, line: 635, type: !1445, isLocal: true, isDefinition: true, scopeLine: 639, isOptimized: true, unit: !0, retainedNodes: !1448)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!29, !20, !1447, !142, !142}
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !11, line: 61, baseType: !10)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1449 = !DILocalVariable(name: "hashp", arg: 1, scope: !1444, file: !1, line: 636, type: !20)
!1450 = !DILocalVariable(name: "action", arg: 2, scope: !1444, file: !1, line: 637, type: !1447)
!1451 = !DILocalVariable(name: "key", arg: 3, scope: !1444, file: !1, line: 638, type: !142)
!1452 = !DILocalVariable(name: "val", arg: 4, scope: !1444, file: !1, line: 638, type: !142)
!1453 = !DILocalVariable(name: "rbufp", scope: !1444, file: !1, line: 640, type: !76)
!1454 = !DILocalVariable(name: "bufp", scope: !1444, file: !1, line: 641, type: !76)
!1455 = !DILocalVariable(name: "save_bufp", scope: !1444, file: !1, line: 641, type: !76)
!1456 = !DILocalVariable(name: "bp", scope: !1444, file: !1, line: 642, type: !164)
!1457 = !DILocalVariable(name: "n", scope: !1444, file: !1, line: 643, type: !29)
!1458 = !DILocalVariable(name: "ndx", scope: !1444, file: !1, line: 643, type: !29)
!1459 = !DILocalVariable(name: "off", scope: !1444, file: !1, line: 643, type: !29)
!1460 = !DILocalVariable(name: "size", scope: !1444, file: !1, line: 643, type: !29)
!1461 = !DILocalVariable(name: "kp", scope: !1444, file: !1, line: 644, type: !72)
!1462 = !DILocalVariable(name: "pageno", scope: !1444, file: !1, line: 645, type: !54)
!1463 = !DILocation(line: 636, column: 8, scope: !1444)
!1464 = !DILocation(line: 637, column: 9, scope: !1444)
!1465 = !DILocation(line: 638, column: 7, scope: !1444)
!1466 = !DILocation(line: 638, column: 13, scope: !1444)
!1467 = !DILocation(line: 641, column: 2, scope: !1444)
!1468 = !DILocation(line: 651, column: 15, scope: !1444)
!1469 = !DILocation(line: 643, column: 14, scope: !1444)
!1470 = !DILocation(line: 652, column: 14, scope: !1444)
!1471 = !DILocation(line: 652, column: 9, scope: !1444)
!1472 = !DILocation(line: 643, column: 19, scope: !1444)
!1473 = !DILocation(line: 653, column: 20, scope: !1444)
!1474 = !DILocation(line: 644, column: 8, scope: !1444)
!1475 = !DILocation(line: 926, column: 8, scope: !1320, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 654, column: 27, scope: !1444)
!1477 = !DILocation(line: 927, column: 8, scope: !1320, inlinedAt: !1476)
!1478 = !DILocation(line: 928, column: 6, scope: !1320, inlinedAt: !1476)
!1479 = !DILocation(line: 932, column: 13, scope: !1320, inlinedAt: !1476)
!1480 = !DILocation(line: 932, column: 21, scope: !1320, inlinedAt: !1476)
!1481 = !DILocation(line: 932, column: 6, scope: !1320, inlinedAt: !1476)
!1482 = !DILocation(line: 930, column: 6, scope: !1320, inlinedAt: !1476)
!1483 = !DILocation(line: 933, column: 22, scope: !1320, inlinedAt: !1476)
!1484 = !DILocation(line: 933, column: 13, scope: !1320, inlinedAt: !1476)
!1485 = !DILocation(line: 930, column: 9, scope: !1320, inlinedAt: !1476)
!1486 = !DILocation(line: 934, column: 22, scope: !1340, inlinedAt: !1476)
!1487 = !DILocation(line: 934, column: 13, scope: !1340, inlinedAt: !1476)
!1488 = !DILocation(line: 934, column: 6, scope: !1320, inlinedAt: !1476)
!1489 = !DILocation(line: 935, column: 28, scope: !1340, inlinedAt: !1476)
!1490 = !DILocation(line: 935, column: 19, scope: !1340, inlinedAt: !1476)
!1491 = !DILocation(line: 935, column: 3, scope: !1340, inlinedAt: !1476)
!1492 = !DILocation(line: 0, scope: !1320, inlinedAt: !1476)
!1493 = !DILocation(line: 654, column: 10, scope: !1444)
!1494 = !DILocation(line: 640, column: 11, scope: !1444)
!1495 = !DILocation(line: 655, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 655, column: 6)
!1497 = !DILocation(line: 655, column: 6, scope: !1444)
!1498 = !DILocation(line: 641, column: 18, scope: !1444)
!1499 = !DILocation(line: 660, column: 9, scope: !1444)
!1500 = !DILocation(line: 660, column: 15, scope: !1444)
!1501 = !{!258, !243, i64 40}
!1502 = !DILocation(line: 661, column: 33, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 661, column: 2)
!1504 = !DILocation(line: 642, column: 14, scope: !1444)
!1505 = !DILocation(line: 661, column: 43, scope: !1503)
!1506 = !DILocation(line: 643, column: 9, scope: !1444)
!1507 = !DILocation(line: 661, column: 63, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 661, column: 2)
!1509 = !DILocation(line: 661, column: 2, scope: !1503)
!1510 = !DILocation(line: 643, column: 6, scope: !1444)
!1511 = !DILocation(line: 661, column: 46, scope: !1503)
!1512 = !DILocation(line: 662, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 662, column: 7)
!1514 = !DILocation(line: 662, column: 13, scope: !1513)
!1515 = !DILocation(line: 662, column: 7, scope: !1508)
!1516 = !DILocation(line: 664, column: 22, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 664, column: 8)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 662, column: 26)
!1519 = !DILocation(line: 664, column: 20, scope: !1517)
!1520 = !DILocation(line: 664, column: 13, scope: !1517)
!1521 = !DILocation(line: 664, column: 26, scope: !1517)
!1522 = !DILocation(line: 665, column: 26, scope: !1517)
!1523 = !DILocation(line: 665, column: 31, scope: !1517)
!1524 = !DILocation(line: 665, column: 8, scope: !1517)
!1525 = !DILocation(line: 665, column: 44, scope: !1517)
!1526 = !DILocation(line: 664, column: 8, scope: !1518)
!1527 = !DILocation(line: 667, column: 10, scope: !1518)
!1528 = !DILocation(line: 671, column: 7, scope: !1518)
!1529 = !DILocation(line: 672, column: 8, scope: !1518)
!1530 = !DILocation(line: 673, column: 3, scope: !1518)
!1531 = !DILocation(line: 673, column: 20, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 673, column: 14)
!1533 = !DILocation(line: 673, column: 14, scope: !1513)
!1534 = !DILocation(line: 674, column: 29, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 673, column: 33)
!1536 = !DILocation(line: 674, column: 12, scope: !1535)
!1537 = !DILocation(line: 675, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 675, column: 8)
!1539 = !DILocation(line: 675, column: 8, scope: !1535)
!1540 = !DILocation(line: 676, column: 22, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 675, column: 16)
!1542 = !DILocation(line: 677, column: 5, scope: !1541)
!1543 = !DILocation(line: 680, column: 30, scope: !1535)
!1544 = !DILocation(line: 681, column: 11, scope: !1535)
!1545 = !DILocation(line: 681, column: 8, scope: !1535)
!1546 = !DILocation(line: 683, column: 17, scope: !1535)
!1547 = !DILocation(line: 684, column: 3, scope: !1535)
!1548 = !DILocation(line: 686, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 685, column: 8)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 684, column: 32)
!1551 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 684, column: 14)
!1552 = !DILocation(line: 686, column: 53, scope: !1549)
!1553 = !DILocation(line: 685, column: 8, scope: !1550)
!1554 = !DILocation(line: 688, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 688, column: 8)
!1556 = !DILocation(line: 688, column: 8, scope: !1550)
!1557 = !DILocation(line: 641, column: 11, scope: !1444)
!1558 = !DILocation(line: 689, column: 10, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 688, column: 19)
!1560 = !DILocation(line: 691, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 690, column: 9)
!1562 = !DILocation(line: 645, column: 13, scope: !1444)
!1563 = !DILocation(line: 690, column: 18, scope: !1561)
!1564 = !DILocation(line: 690, column: 9, scope: !1559)
!1565 = !DILocation(line: 693, column: 14, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 691, column: 42)
!1567 = !DILocation(line: 694, column: 6, scope: !1566)
!1568 = !DILocation(line: 696, column: 30, scope: !1559)
!1569 = !DILocation(line: 696, column: 38, scope: !1559)
!1570 = !DILocation(line: 696, column: 13, scope: !1559)
!1571 = !DILocation(line: 697, column: 10, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 697, column: 9)
!1573 = !DILocation(line: 697, column: 9, scope: !1559)
!1574 = !DILocation(line: 698, column: 23, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 697, column: 17)
!1576 = !DILocation(line: 699, column: 6, scope: !1575)
!1577 = !DILocation(line: 702, column: 31, scope: !1559)
!1578 = !DILocation(line: 703, column: 12, scope: !1559)
!1579 = !DILocation(line: 703, column: 9, scope: !1559)
!1580 = !DILocation(line: 705, column: 18, scope: !1559)
!1581 = !DILocation(line: 710, column: 3, scope: !1550)
!1582 = !DILocation(line: 707, column: 22, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 706, column: 11)
!1584 = !DILocation(line: 708, column: 5, scope: !1583)
!1585 = !DILocation(line: 0, scope: !1503)
!1586 = !DILocation(line: 0, scope: !1444)
!1587 = distinct !{!1587, !1509, !1588}
!1588 = !DILocation(line: 710, column: 3, scope: !1503)
!1589 = !DILocation(line: 713, column: 2, scope: !1444)
!1590 = !DILocation(line: 716, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 716, column: 7)
!1592 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 713, column: 18)
!1593 = !DILocation(line: 0, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 719, column: 10)
!1595 = !DILocation(line: 721, column: 4, scope: !1594)
!1596 = !DILocation(line: 726, column: 20, scope: !1592)
!1597 = !DILocation(line: 727, column: 3, scope: !1592)
!1598 = !DILocation(line: 0, scope: !1549)
!1599 = !DILocation(line: 731, column: 2, scope: !1444)
!1600 = !DILocation(line: 733, column: 20, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 731, column: 18)
!1602 = !DILocation(line: 734, column: 3, scope: !1601)
!1603 = !DILocation(line: 736, column: 29, scope: !1601)
!1604 = !DILocation(line: 736, column: 8, scope: !1601)
!1605 = !DILocation(line: 737, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 737, column: 7)
!1607 = !DILocation(line: 737, column: 7, scope: !1606)
!1608 = !DILocation(line: 737, column: 19, scope: !1606)
!1609 = !DILocation(line: 737, column: 7, scope: !1601)
!1610 = !DILocation(line: 738, column: 8, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 738, column: 8)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 737, column: 31)
!1613 = !DILocation(line: 738, column: 8, scope: !1612)
!1614 = !DILocation(line: 741, column: 38, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 740, column: 10)
!1616 = !DILocation(line: 741, column: 9, scope: !1615)
!1617 = !DILocation(line: 741, column: 14, scope: !1615)
!1618 = !DILocation(line: 742, column: 16, scope: !1615)
!1619 = !DILocation(line: 742, column: 24, scope: !1615)
!1620 = !DILocation(line: 742, column: 9, scope: !1615)
!1621 = !DILocation(line: 742, column: 14, scope: !1615)
!1622 = !DILocation(line: 746, column: 8, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 746, column: 7)
!1624 = !DILocation(line: 746, column: 38, scope: !1623)
!1625 = !DILocation(line: 747, column: 8, scope: !1623)
!1626 = !DILocation(line: 746, column: 7, scope: !1601)
!1627 = !DILocation(line: 748, column: 21, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 747, column: 42)
!1629 = !DILocation(line: 749, column: 4, scope: !1628)
!1630 = !DILocation(line: 753, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 753, column: 7)
!1632 = !DILocation(line: 753, column: 7, scope: !1601)
!1633 = !DILocation(line: 757, column: 3, scope: !1601)
!1634 = !DILocation(line: 759, column: 19, scope: !1444)
!1635 = !DILocation(line: 760, column: 2, scope: !1444)
!1636 = !DILocation(line: 0, scope: !1496)
!1637 = !DILocation(line: 761, column: 1, scope: !1444)
