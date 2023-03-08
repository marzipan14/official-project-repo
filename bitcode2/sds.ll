; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { {}*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, {}*, {}*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"SDS_NOINIT\00", align 1
@SDS_NOINIT = dso_local local_unnamed_addr global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), align 8, !dbg !0
@.str.2 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.c\00", align 1
@__func__.sdsIncrLen = private unnamed_addr constant [11 x i8] c"sdsIncrLen\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"(incr > 0 && oldlen+incr < 32) || (incr < 0 && oldlen >= (unsigned int)(-incr))\00", align 1
@.str.4 = private unnamed_addr constant [91 x i8] c"(incr >= 0 && sh->alloc-sh->len >= incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"(incr >= 0 && sh->alloc-sh->len >= (unsigned int)incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"(incr >= 0 && sh->alloc-sh->len >= (uint64_t)incr) || (incr < 0 && sh->len >= (uint64_t)(-incr))\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\5C%c\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\5Ca\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\5Cx%02x\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [17 x i8] c"libredis_hiredis\00", section ".data_shared", align 16, !dbg !70
@uk_pr_crit.__str.19 = internal global [6 x i8] c"sds.c\00", section ".data_shared", align 1, !dbg !98
@__A_VARIABLE = internal global i32 0
@switch.table.sdsnewlen = private unnamed_addr constant [8 x i64] [i64 17, i64 0, i64 0, i64 0, i64 1, i64 3, i64 5, i64 9]
@switch.table.hex_digit_to_int = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]
@switch.table.sdssplitargs = private unnamed_addr constant [8 x i64] [i64 -17, i64 0, i64 0, i64 0, i64 -1, i64 -3, i64 -5, i64 -9]

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #0 !dbg !107 {
  %3 = icmp ult i64 %1, 32, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %3, label %4, label %5, !dbg !144

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br label %14, !dbg !145

; <label>:5:                                      ; preds = %2
  %6 = icmp ult i64 %1, 256, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %6, label %7, label %8, !dbg !148

; <label>:7:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br label %14, !dbg !149

; <label>:8:                                      ; preds = %5
  %9 = icmp ult i64 %1, 65536, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  br i1 %9, label %10, label %11, !dbg !152

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br label %14, !dbg !153

; <label>:11:                                     ; preds = %8
  %12 = icmp ult i64 %1, 4294967296, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  %13 = select i1 %12, i8 3, i8 4, !dbg !158
  br label %14, !dbg !158

; <label>:14:                                     ; preds = %4, %7, %10, %11
  %15 = phi i8 [ 0, %4 ], [ 1, %7 ], [ 2, %10 ], [ %13, %11 ], !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  %16 = icmp eq i8 %15, 0, !dbg !161
  %17 = icmp eq i64 %1, 0, !dbg !163
  %18 = and i1 %17, %16, !dbg !164
  %19 = select i1 %18, i8 1, i8 %15, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  %20 = trunc i8 %19 to i3, !dbg !172
  %21 = xor i3 %20, -4, !dbg !172
  %22 = zext i3 %21 to i64, !dbg !172
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdsnewlen, i64 0, i64 %22, !dbg !172
  %24 = load i64, i64* %23, align 8, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  %25 = add i64 %1, 1, !dbg !175
  %26 = add i64 %25, %24, !dbg !176
  %27 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !185, !tbaa !186
  %28 = icmp eq %struct.uk_alloc* %27, null, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  br i1 %28, label %29, label %31, !dbg !255, !prof !256

; <label>:29:                                     ; preds = %14
  %30 = tail call i32* @__errno() #7, !dbg !257
  store i32 12, i32* %30, align 4, !dbg !259, !tbaa !260
  br label %35, !dbg !262

; <label>:31:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  %32 = bitcast %struct.uk_alloc* %27 to i8* (%struct.uk_alloc*, i64)**, !dbg !272
  %33 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %32, align 8, !dbg !272, !tbaa !186
  %34 = tail call i8* %33(%struct.uk_alloc* nonnull %27, i64 %26) #7, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %35, !dbg !275

; <label>:35:                                     ; preds = %29, %31
  %36 = phi i8* [ null, %29 ], [ %34, %31 ], !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %37 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !281, !tbaa !186
  %38 = icmp eq i8* %37, %0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %38, label %43, label %39, !dbg !284

; <label>:39:                                     ; preds = %35
  %40 = icmp eq i8* %0, null, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %40, label %41, label %44, !dbg !287

; <label>:41:                                     ; preds = %39
  %42 = tail call i8* @memset(i8* %36, i32 0, i64 %26) #7, !dbg !288
  br label %43, !dbg !288

; <label>:43:                                     ; preds = %35, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br label %44, !dbg !290

; <label>:44:                                     ; preds = %43, %39
  %45 = phi i8* [ %0, %39 ], [ null, %43 ]
  %46 = icmp eq i8* %36, null, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %46, label %85, label %47, !dbg !292

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds i8, i8* %36, i64 %24, !dbg !293
  %49 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  switch i3 %20, label %77 [
    i3 0, label %50
    i3 1, label %54
    i3 2, label %58
    i3 3, label %64
    i3 -4, label %70
  ], !dbg !297

; <label>:50:                                     ; preds = %47
  %51 = trunc i64 %1 to i8, !dbg !298
  %52 = shl i8 %51, 3, !dbg !298
  %53 = or i8 %19, %52, !dbg !298
  br label %75, !dbg !300

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds i8, i8* %48, i64 -3, !dbg !301
  %56 = trunc i64 %1 to i8, !dbg !302
  store i8 %56, i8* %55, align 1, !dbg !303, !tbaa !304
  %57 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !305
  store i8 %56, i8* %57, align 1, !dbg !306, !tbaa !304
  br label %75

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds i8, i8* %48, i64 -5, !dbg !307
  %60 = trunc i64 %1 to i16, !dbg !308
  %61 = bitcast i8* %59 to i16*, !dbg !309
  store i16 %60, i16* %61, align 1, !dbg !310, !tbaa !311
  %62 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !313
  %63 = bitcast i8* %62 to i16*, !dbg !313
  store i16 %60, i16* %63, align 1, !dbg !314, !tbaa !311
  br label %75

; <label>:64:                                     ; preds = %47
  %65 = getelementptr inbounds i8, i8* %48, i64 -9, !dbg !315
  %66 = trunc i64 %1 to i32, !dbg !316
  %67 = bitcast i8* %65 to i32*, !dbg !317
  store i32 %66, i32* %67, align 1, !dbg !318, !tbaa !260
  %68 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !319
  %69 = bitcast i8* %68 to i32*, !dbg !319
  store i32 %66, i32* %69, align 1, !dbg !320, !tbaa !260
  br label %75

; <label>:70:                                     ; preds = %47
  %71 = getelementptr inbounds i8, i8* %48, i64 -17, !dbg !321
  %72 = bitcast i8* %71 to i64*, !dbg !322
  store i64 %1, i64* %72, align 1, !dbg !323, !tbaa !324
  %73 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !326
  %74 = bitcast i8* %73 to i64*, !dbg !326
  store i64 %1, i64* %74, align 1, !dbg !327, !tbaa !324
  br label %75

; <label>:75:                                     ; preds = %50, %54, %58, %64, %70
  %76 = phi i8 [ %19, %70 ], [ %19, %64 ], [ %19, %58 ], [ %19, %54 ], [ %53, %50 ]
  store i8 %76, i8* %49, align 1, !dbg !328, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %77, !dbg !329

; <label>:77:                                     ; preds = %75, %47
  %78 = icmp ne i64 %1, 0, !dbg !329
  %79 = icmp ne i8* %45, null, !dbg !331
  %80 = and i1 %78, %79, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %80, label %81, label %83, !dbg !332

; <label>:81:                                     ; preds = %77
  %82 = tail call i8* @memcpy(i8* nonnull %48, i8* nonnull %45, i64 %1) #7, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %83, !dbg !333

; <label>:83:                                     ; preds = %81, %77
  %84 = getelementptr inbounds i8, i8* %48, i64 %1, !dbg !334
  store i8 0, i8* %84, align 1, !dbg !335, !tbaa !304
  br label %85, !dbg !336

; <label>:85:                                     ; preds = %44, %83
  %86 = phi i8* [ %48, %83 ], [ null, %44 ], !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret i8* %86, !dbg !338
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsempty() local_unnamed_addr #0 !dbg !339 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %1 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !359, !tbaa !186
  %2 = icmp eq %struct.uk_alloc* %1, null, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %2, label %3, label %5, !dbg !364, !prof !256

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno() #7, !dbg !365
  store i32 12, i32* %4, align 4, !dbg !366, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %14, !dbg !373

; <label>:5:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  %6 = bitcast %struct.uk_alloc* %1 to i8* (%struct.uk_alloc*, i64)**, !dbg !378
  %7 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %6, align 8, !dbg !378, !tbaa !186
  %8 = tail call i8* %7(%struct.uk_alloc* nonnull %1, i64 4) #7, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %9 = icmp eq i8* %8, null, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %9, label %14, label %10, !dbg !373

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !383
  %12 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  store i8 0, i8* %8, align 1, !dbg !389, !tbaa !304
  %13 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !390
  store i8 0, i8* %13, align 1, !dbg !391, !tbaa !304
  store i8 1, i8* %12, align 1, !dbg !392, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  store i8 0, i8* %11, align 1, !dbg !394, !tbaa !304
  br label %14, !dbg !395

; <label>:14:                                     ; preds = %5, %3, %10
  %15 = phi i8* [ %11, %10 ], [ null, %3 ], [ null, %5 ], !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  ret i8* %15, !dbg !398
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsnew(i8*) local_unnamed_addr #0 !dbg !399 {
  %2 = icmp eq i8* %0, null, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %2, label %5, label %3, !dbg !407

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #7, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br label %5, !dbg !407

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ], !dbg !407
  %7 = tail call i8* @sdsnewlen(i8* %0, i64 %6) #8, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  ret i8* %7, !dbg !411
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsdup(i8*) local_unnamed_addr #0 !dbg !412 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !427
  %3 = load i8, i8* %2, align 1, !dbg !427, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  %4 = trunc i8 %3 to i3, !dbg !429
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !429

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !430
  %7 = zext i8 %6 to i64, !dbg !430
  br label %26, !dbg !432

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !433
  %10 = load i8, i8* %9, align 1, !dbg !434, !tbaa !304
  %11 = zext i8 %10 to i64, !dbg !433
  br label %26, !dbg !435

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !436
  %14 = bitcast i8* %13 to i16*, !dbg !437
  %15 = load i16, i16* %14, align 1, !dbg !437, !tbaa !311
  %16 = zext i16 %15 to i64, !dbg !436
  br label %26, !dbg !438

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !439
  %19 = bitcast i8* %18 to i32*, !dbg !440
  %20 = load i32, i32* %19, align 1, !dbg !440, !tbaa !260
  %21 = zext i32 %20 to i64, !dbg !439
  br label %26, !dbg !441

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !442
  %24 = bitcast i8* %23 to i64*, !dbg !443
  %25 = load i64, i64* %24, align 1, !dbg !443, !tbaa !324
  br label %26, !dbg !444

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %28 = tail call i8* @sdsnewlen(i8* nonnull %0, i64 %27) #8, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  ret i8* %28, !dbg !449
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfree(i8*) local_unnamed_addr #0 !dbg !450 {
  %2 = icmp eq i8* %0, null, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %2, label %18, label %3, !dbg !458

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !459
  %5 = load i8, i8* %4, align 1, !dbg !459, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  %6 = and i8 %5, 7, !dbg !462
  %7 = xor i8 %6, 4, !dbg !462
  %8 = zext i8 %7 to i64, !dbg !462
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs, i64 0, i64 %8, !dbg !462
  %10 = load i64, i64* %9, align 8, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %11 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !465, !tbaa !186
  %12 = icmp eq %struct.uk_alloc* %11, null, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %12, label %13, label %14, !dbg !487, !prof !256

; <label>:13:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !488
  tail call void @ukplat_terminate(i32 3) #9, !dbg !488
  unreachable

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !490
  %16 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %11, i64 0, i32 5, !dbg !494
  %17 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %16, align 8, !dbg !494, !tbaa !186
  tail call void %17(%struct.uk_alloc* nonnull %11, i8* nonnull %15) #7, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br label %18, !dbg !499

; <label>:18:                                     ; preds = %1, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  ret void, !dbg !499
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsupdatelen(i8*) local_unnamed_addr #0 !dbg !500 {
  %2 = tail call i64 @strlen(i8* %0) #7, !dbg !505
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !520
  %4 = load i8, i8* %3, align 1, !dbg !520, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %5 = trunc i8 %4 to i3, !dbg !522
  switch i3 %5, label %24 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %12
    i3 3, label %16
    i3 -4, label %20
  ], !dbg !522

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i8, !dbg !524
  %8 = shl i8 %7, 3, !dbg !524
  store i8 %8, i8* %3, align 1, !dbg !525, !tbaa !304
  br label %23, !dbg !526

; <label>:9:                                      ; preds = %1
  %10 = trunc i64 %2 to i8, !dbg !527
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !528
  store i8 %10, i8* %11, align 1, !dbg !529, !tbaa !304
  br label %23, !dbg !530

; <label>:12:                                     ; preds = %1
  %13 = trunc i64 %2 to i16, !dbg !531
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !532
  %15 = bitcast i8* %14 to i16*, !dbg !533
  store i16 %13, i16* %15, align 1, !dbg !534, !tbaa !311
  br label %23, !dbg !535

; <label>:16:                                     ; preds = %1
  %17 = trunc i64 %2 to i32, !dbg !536
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !537
  %19 = bitcast i8* %18 to i32*, !dbg !538
  store i32 %17, i32* %19, align 1, !dbg !539, !tbaa !260
  br label %23, !dbg !540

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !541
  %22 = bitcast i8* %21 to i64*, !dbg !542
  store i64 %2, i64* %22, align 1, !dbg !543, !tbaa !324
  br label %23, !dbg !544

; <label>:23:                                     ; preds = %20, %16, %12, %9, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br label %24, !dbg !546

; <label>:24:                                     ; preds = %23, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  ret void, !dbg !547
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsclear(i8* nocapture) local_unnamed_addr #0 !dbg !548 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !555
  %3 = load i8, i8* %2, align 1, !dbg !555, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %4 = trunc i8 %3 to i3, !dbg !557
  switch i3 %4, label %18 [
    i3 0, label %5
    i3 1, label %6
    i3 2, label %8
    i3 3, label %11
    i3 -4, label %14
  ], !dbg !557

; <label>:5:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !559, !tbaa !304
  br label %17, !dbg !560

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !561
  store i8 0, i8* %7, align 1, !dbg !562, !tbaa !304
  br label %17, !dbg !563

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !564
  %10 = bitcast i8* %9 to i16*, !dbg !565
  store i16 0, i16* %10, align 1, !dbg !566, !tbaa !311
  br label %17, !dbg !567

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !568
  %13 = bitcast i8* %12 to i32*, !dbg !569
  store i32 0, i32* %13, align 1, !dbg !570, !tbaa !260
  br label %17, !dbg !571

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !572
  %16 = bitcast i8* %15 to i64*, !dbg !573
  store i64 0, i64* %16, align 1, !dbg !574, !tbaa !324
  br label %17, !dbg !575

; <label>:17:                                     ; preds = %14, %11, %8, %6, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %18, !dbg !577

; <label>:18:                                     ; preds = %17, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  store i8 0, i8* %0, align 1, !dbg !578, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  ret void, !dbg !579
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #0 !dbg !580 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !611
  %4 = load i8, i8* %3, align 1, !dbg !611, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %5 = trunc i8 %4 to i3, !dbg !613
  switch i3 %5, label %41 [
    i3 -4, label %33
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !613

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !614
  %8 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !615
  %9 = load i8, i8* %8, align 1, !dbg !615, !tbaa !304
  %10 = zext i8 %9 to i64, !dbg !616
  %11 = load i8, i8* %7, align 1, !dbg !617, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !618
  %13 = sub nsw i64 %10, %12, !dbg !619
  br label %41

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !620
  %16 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !621
  %17 = bitcast i8* %16 to i16*, !dbg !621
  %18 = load i16, i16* %17, align 1, !dbg !621, !tbaa !311
  %19 = zext i16 %18 to i64, !dbg !622
  %20 = bitcast i8* %15 to i16*, !dbg !623
  %21 = load i16, i16* %20, align 1, !dbg !623, !tbaa !311
  %22 = zext i16 %21 to i64, !dbg !624
  %23 = sub nsw i64 %19, %22, !dbg !625
  br label %41

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !626
  %26 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !627
  %27 = bitcast i8* %26 to i32*, !dbg !627
  %28 = load i32, i32* %27, align 1, !dbg !627, !tbaa !260
  %29 = bitcast i8* %25 to i32*, !dbg !628
  %30 = load i32, i32* %29, align 1, !dbg !628, !tbaa !260
  %31 = sub i32 %28, %30, !dbg !629
  %32 = zext i32 %31 to i64, !dbg !630
  br label %41

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !631
  %35 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !632
  %36 = bitcast i8* %35 to i64*, !dbg !632
  %37 = load i64, i64* %36, align 1, !dbg !632, !tbaa !324
  %38 = bitcast i8* %34 to i64*, !dbg !633
  %39 = load i64, i64* %38, align 1, !dbg !633, !tbaa !324
  %40 = sub i64 %37, %39, !dbg !634
  br label %41

; <label>:41:                                     ; preds = %2, %6, %14, %24, %33
  %42 = phi i64 [ %40, %33 ], [ %32, %24 ], [ %23, %14 ], [ %13, %6 ], [ 0, %2 ], !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %43 = and i8 %4, 7, !dbg !639
  %44 = icmp ult i64 %42, %1, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %44, label %45, label %179, !dbg !643

; <label>:45:                                     ; preds = %41
  switch i3 %5, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !648

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %4, 3, !dbg !649
  %48 = zext i8 %47 to i64, !dbg !649
  br label %67, !dbg !653

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !654
  %51 = load i8, i8* %50, align 1, !dbg !655, !tbaa !304
  %52 = zext i8 %51 to i64, !dbg !654
  br label %67, !dbg !656

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !657
  %55 = bitcast i8* %54 to i16*, !dbg !658
  %56 = load i16, i16* %55, align 1, !dbg !658, !tbaa !311
  %57 = zext i16 %56 to i64, !dbg !657
  br label %67, !dbg !659

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !660
  %60 = bitcast i8* %59 to i32*, !dbg !661
  %61 = load i32, i32* %60, align 1, !dbg !661, !tbaa !260
  %62 = zext i32 %61 to i64, !dbg !660
  br label %67, !dbg !662

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !663
  %65 = bitcast i8* %64 to i64*, !dbg !664
  %66 = load i64, i64* %65, align 1, !dbg !664, !tbaa !324
  br label %67, !dbg !665

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  %69 = phi i64 [ -17, %63 ], [ -9, %58 ], [ -5, %53 ], [ -3, %49 ], [ -1, %46 ], [ 0, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !670
  %71 = add i64 %68, %1, !dbg !672
  %72 = icmp ult i64 %71, 1048576, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %73 = shl i64 %71, 1, !dbg !677
  %74 = add i64 %71, 1048576, !dbg !678
  %75 = select i1 %72, i64 %73, i64 %74, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %76 = icmp ult i64 %75, 32, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %76, label %86, label %77, !dbg !682

; <label>:77:                                     ; preds = %67
  %78 = icmp ult i64 %75, 256, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %78, label %86, label %79, !dbg !684

; <label>:79:                                     ; preds = %77
  %80 = icmp ult i64 %75, 65536, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %80, label %81, label %82, !dbg !686

; <label>:81:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br label %89, !dbg !692

; <label>:82:                                     ; preds = %79
  %83 = icmp ult i64 %75, 4294967296, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %84 = select i1 %83, i8 3, i8 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  %85 = trunc i8 %84 to i3, !dbg !692
  switch i3 %85, label %93 [
    i3 0, label %94
    i3 1, label %87
    i3 2, label %89
    i3 3, label %91
    i3 -4, label %92
  ], !dbg !692

; <label>:86:                                     ; preds = %67, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br label %87, !dbg !697

; <label>:87:                                     ; preds = %86, %82
  %88 = phi i8 [ %84, %82 ], [ 1, %86 ]
  br label %94, !dbg !697

; <label>:89:                                     ; preds = %81, %82
  %90 = phi i8 [ 2, %81 ], [ %84, %82 ]
  br label %94, !dbg !698

; <label>:91:                                     ; preds = %82
  br label %94, !dbg !699

; <label>:92:                                     ; preds = %82
  br label %94, !dbg !700

; <label>:93:                                     ; preds = %82
  br label %94, !dbg !701

; <label>:94:                                     ; preds = %82, %87, %89, %91, %92, %93
  %95 = phi i3 [ %85, %93 ], [ %85, %92 ], [ %85, %91 ], [ 2, %89 ], [ 1, %87 ], [ %85, %82 ]
  %96 = phi i8 [ %84, %93 ], [ %84, %92 ], [ %84, %91 ], [ %90, %89 ], [ %88, %87 ], [ %84, %82 ]
  %97 = phi i64 [ 0, %93 ], [ 17, %92 ], [ 9, %91 ], [ 5, %89 ], [ 3, %87 ], [ 1, %82 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %98 = zext i8 %43 to i32, !dbg !703
  %99 = sext i8 %96 to i32, !dbg !705
  %100 = icmp eq i32 %98, %99, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  %101 = add i64 %75, 1, !dbg !708
  %102 = add i64 %101, %97, !dbg !708
  %103 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !708, !tbaa !186
  %104 = icmp eq %struct.uk_alloc* %103, null, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %100, label %105, label %117, !dbg !707

; <label>:105:                                    ; preds = %94
  br i1 %104, label %106, label %108, !dbg !729, !prof !256

; <label>:106:                                    ; preds = %105
  %107 = tail call i32* @__errno() #7, !dbg !730
  store i32 12, i32* %107, align 4, !dbg !733, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %177, !dbg !738

; <label>:108:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %109 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %103, i64 0, i32 2, !dbg !750
  %110 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %109, align 8, !dbg !750, !tbaa !186
  %111 = tail call i8* %110(%struct.uk_alloc* nonnull %103, i8* %70, i64 %102) #7, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %112 = icmp eq i8* %111, null, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %112, label %177, label %113, !dbg !738

; <label>:113:                                    ; preds = %108
  %114 = getelementptr inbounds i8, i8* %111, i64 %97, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %115 = getelementptr inbounds i8, i8* %114, i64 -1
  %116 = load i8, i8* %115, align 1, !dbg !758, !tbaa !304
  br label %157, !dbg !757

; <label>:117:                                    ; preds = %94
  br i1 %104, label %118, label %120, !dbg !770, !prof !256

; <label>:118:                                    ; preds = %117
  %119 = tail call i32* @__errno() #7, !dbg !771
  store i32 12, i32* %119, align 4, !dbg !772, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br label %177, !dbg !776

; <label>:120:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %121 = bitcast %struct.uk_alloc* %103 to i8* (%struct.uk_alloc*, i64)**, !dbg !781
  %122 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %121, align 8, !dbg !781, !tbaa !186
  %123 = tail call i8* %122(%struct.uk_alloc* nonnull %103, i64 %102) #7, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  %124 = icmp eq i8* %123, null, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %124, label %177, label %125, !dbg !776

; <label>:125:                                    ; preds = %120
  %126 = getelementptr inbounds i8, i8* %123, i64 %97, !dbg !787
  %127 = add i64 %68, 1, !dbg !788
  %128 = tail call i8* @memcpy(i8* nonnull %126, i8* nonnull %0, i64 %127) #7, !dbg !789
  %129 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !792, !tbaa !186
  %130 = icmp eq %struct.uk_alloc* %129, null, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %130, label %131, label %132, !dbg !800, !prof !256

; <label>:131:                                    ; preds = %125
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !801
  tail call void @ukplat_terminate(i32 3) #9, !dbg !801
  unreachable

; <label>:132:                                    ; preds = %125
  %133 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %129, i64 0, i32 5, !dbg !802
  %134 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %133, align 8, !dbg !802, !tbaa !186
  tail call void %134(%struct.uk_alloc* nonnull %129, i8* %70) #7, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  %135 = getelementptr inbounds i8, i8* %126, i64 -1, !dbg !807
  store i8 %96, i8* %135, align 1, !dbg !808, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  switch i3 %95, label %155 [
    i3 0, label %136
    i3 1, label %139
    i3 2, label %142
    i3 3, label %146
    i3 -4, label %150
  ], !dbg !813

; <label>:136:                                    ; preds = %132
  %137 = trunc i64 %68 to i8, !dbg !815
  %138 = shl i8 %137, 3, !dbg !815
  store i8 %138, i8* %135, align 1, !dbg !816, !tbaa !304
  br label %153, !dbg !817

; <label>:139:                                    ; preds = %132
  %140 = trunc i64 %68 to i8, !dbg !818
  %141 = getelementptr inbounds i8, i8* %126, i64 -3, !dbg !819
  store i8 %140, i8* %141, align 1, !dbg !820, !tbaa !304
  br label %153, !dbg !821

; <label>:142:                                    ; preds = %132
  %143 = trunc i64 %68 to i16, !dbg !822
  %144 = getelementptr inbounds i8, i8* %126, i64 -5, !dbg !823
  %145 = bitcast i8* %144 to i16*, !dbg !824
  store i16 %143, i16* %145, align 1, !dbg !825, !tbaa !311
  br label %153, !dbg !826

; <label>:146:                                    ; preds = %132
  %147 = trunc i64 %68 to i32, !dbg !827
  %148 = getelementptr inbounds i8, i8* %126, i64 -9, !dbg !828
  %149 = bitcast i8* %148 to i32*, !dbg !829
  store i32 %147, i32* %149, align 1, !dbg !830, !tbaa !260
  br label %153, !dbg !831

; <label>:150:                                    ; preds = %132
  %151 = getelementptr inbounds i8, i8* %126, i64 -17, !dbg !832
  %152 = bitcast i8* %151 to i64*, !dbg !833
  store i64 %68, i64* %152, align 1, !dbg !834, !tbaa !324
  br label %153, !dbg !835

; <label>:153:                                    ; preds = %150, %146, %142, %139, %136
  %154 = phi i8 [ %96, %150 ], [ %96, %146 ], [ %96, %142 ], [ %96, %139 ], [ %138, %136 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br label %155, !dbg !836

; <label>:155:                                    ; preds = %153, %132
  %156 = phi i8 [ %96, %132 ], [ %154, %153 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %157

; <label>:157:                                    ; preds = %155, %113
  %158 = phi i8 [ %116, %113 ], [ %156, %155 ], !dbg !758
  %159 = phi i8* [ %114, %113 ], [ %126, %155 ], !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %160 = trunc i8 %158 to i3, !dbg !840
  switch i3 %160, label %176 [
    i3 -4, label %172
    i3 1, label %161
    i3 2, label %164
    i3 3, label %168
  ], !dbg !840

; <label>:161:                                    ; preds = %157
  %162 = trunc i64 %75 to i8, !dbg !841
  %163 = getelementptr inbounds i8, i8* %159, i64 -2, !dbg !843
  store i8 %162, i8* %163, align 1, !dbg !844, !tbaa !304
  br label %175, !dbg !845

; <label>:164:                                    ; preds = %157
  %165 = trunc i64 %75 to i16, !dbg !846
  %166 = getelementptr inbounds i8, i8* %159, i64 -3, !dbg !847
  %167 = bitcast i8* %166 to i16*, !dbg !847
  store i16 %165, i16* %167, align 1, !dbg !848, !tbaa !311
  br label %175, !dbg !849

; <label>:168:                                    ; preds = %157
  %169 = trunc i64 %75 to i32, !dbg !850
  %170 = getelementptr inbounds i8, i8* %159, i64 -5, !dbg !851
  %171 = bitcast i8* %170 to i32*, !dbg !851
  store i32 %169, i32* %171, align 1, !dbg !852, !tbaa !260
  br label %175, !dbg !853

; <label>:172:                                    ; preds = %157
  %173 = getelementptr inbounds i8, i8* %159, i64 -9, !dbg !854
  %174 = bitcast i8* %173 to i64*, !dbg !854
  store i64 %75, i64* %174, align 1, !dbg !855, !tbaa !324
  br label %175, !dbg !856

; <label>:175:                                    ; preds = %172, %168, %164, %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %176, !dbg !857

; <label>:176:                                    ; preds = %175, %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br label %177, !dbg !858

; <label>:177:                                    ; preds = %120, %118, %108, %106, %176
  %178 = phi i8* [ %159, %176 ], [ null, %106 ], [ null, %108 ], [ null, %118 ], [ null, %120 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br label %179, !dbg !860

; <label>:179:                                    ; preds = %177, %41
  %180 = phi i8* [ %0, %41 ], [ %178, %177 ], !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  ret i8* %180, !dbg !860
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsRemoveFreeSpace(i8*) local_unnamed_addr #0 !dbg !862 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !876
  %3 = load i8, i8* %2, align 1, !dbg !876, !tbaa !304
  %4 = and i8 %3, 7, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %5 = trunc i8 %3 to i3, !dbg !881
  switch i3 %5, label %42 [
    i3 -4, label %34
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !881

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !888
  %8 = load i8, i8* %7, align 1, !dbg !889, !tbaa !304
  %9 = zext i8 %8 to i64, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %10 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !898
  %11 = load i8, i8* %10, align 1, !dbg !898, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !899
  %13 = sub nsw i64 %12, %9, !dbg !900
  br label %43

; <label>:14:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !902
  %16 = bitcast i8* %15 to i16*, !dbg !903
  %17 = load i16, i16* %16, align 1, !dbg !903, !tbaa !311
  %18 = zext i16 %17 to i64, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %19 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !906
  %20 = bitcast i8* %19 to i16*, !dbg !906
  %21 = load i16, i16* %20, align 1, !dbg !906, !tbaa !311
  %22 = zext i16 %21 to i64, !dbg !907
  %23 = sub nsw i64 %22, %18, !dbg !908
  br label %43

; <label>:24:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !910
  %26 = bitcast i8* %25 to i32*, !dbg !911
  %27 = load i32, i32* %26, align 1, !dbg !911, !tbaa !260
  %28 = zext i32 %27 to i64, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %29 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !914
  %30 = bitcast i8* %29 to i32*, !dbg !914
  %31 = load i32, i32* %30, align 1, !dbg !914, !tbaa !260
  %32 = sub i32 %31, %27, !dbg !915
  %33 = zext i32 %32 to i64, !dbg !916
  br label %43

; <label>:34:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %35 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !918
  %36 = bitcast i8* %35 to i64*, !dbg !919
  %37 = load i64, i64* %36, align 1, !dbg !919, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %38 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !922
  %39 = bitcast i8* %38 to i64*, !dbg !922
  %40 = load i64, i64* %39, align 1, !dbg !922, !tbaa !324
  %41 = sub i64 %40, %37, !dbg !923
  br label %43

; <label>:42:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br label %158, !dbg !928

; <label>:43:                                     ; preds = %6, %14, %24, %34
  %44 = phi i64 [ 17, %34 ], [ 9, %24 ], [ 5, %14 ], [ 3, %6 ]
  %45 = phi i64 [ %37, %34 ], [ %28, %24 ], [ %18, %14 ], [ %9, %6 ]
  %46 = phi i64 [ %41, %34 ], [ %33, %24 ], [ %23, %14 ], [ %13, %6 ], !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  %47 = sub nsw i64 0, %44, !dbg !930
  %48 = getelementptr inbounds i8, i8* %0, i64 %47, !dbg !930
  %49 = icmp eq i64 %46, 0, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %49, label %158, label %50, !dbg !928

; <label>:50:                                     ; preds = %43
  %51 = icmp ult i64 %45, 32, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %51, label %52, label %53, !dbg !936

; <label>:52:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br label %70, !dbg !942

; <label>:53:                                     ; preds = %50
  %54 = icmp ult i64 %45, 256, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br i1 %54, label %55, label %56, !dbg !944

; <label>:55:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br label %63, !dbg !942

; <label>:56:                                     ; preds = %53
  %57 = icmp ult i64 %45, 65536, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %57, label %58, label %59, !dbg !947

; <label>:58:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br label %65, !dbg !942

; <label>:59:                                     ; preds = %56
  %60 = icmp ult i64 %45, 4294967296, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  %61 = select i1 %60, i8 3, i8 4, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  %62 = trunc i8 %61 to i3, !dbg !942
  switch i3 %62, label %69 [
    i3 0, label %70
    i3 1, label %63
    i3 2, label %65
    i3 3, label %67
    i3 -4, label %68
  ], !dbg !942

; <label>:63:                                     ; preds = %55, %59
  %64 = phi i8 [ 1, %55 ], [ %61, %59 ]
  br label %70, !dbg !953

; <label>:65:                                     ; preds = %58, %59
  %66 = phi i8 [ 2, %58 ], [ %61, %59 ]
  br label %70, !dbg !954

; <label>:67:                                     ; preds = %59
  br label %70, !dbg !955

; <label>:68:                                     ; preds = %59
  br label %70, !dbg !956

; <label>:69:                                     ; preds = %59
  br label %70, !dbg !957

; <label>:70:                                     ; preds = %59, %52, %63, %65, %67, %68, %69
  %71 = phi i3 [ %62, %69 ], [ %62, %68 ], [ %62, %67 ], [ 2, %65 ], [ 1, %63 ], [ 0, %52 ], [ %62, %59 ]
  %72 = phi i8 [ %61, %69 ], [ %61, %68 ], [ %61, %67 ], [ %66, %65 ], [ %64, %63 ], [ 0, %52 ], [ %61, %59 ]
  %73 = phi i64 [ 0, %69 ], [ 17, %68 ], [ 9, %67 ], [ 5, %65 ], [ 3, %63 ], [ 1, %52 ], [ 1, %59 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  %74 = zext i8 %4 to i32, !dbg !959
  %75 = sext i8 %72 to i32, !dbg !961
  %76 = icmp eq i32 %74, %75, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br i1 %76, label %79, label %77, !dbg !963

; <label>:77:                                     ; preds = %70
  %78 = icmp sgt i8 %72, 1, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %78, label %79, label %95, !dbg !965

; <label>:79:                                     ; preds = %77, %70
  %80 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !969, !tbaa !186
  %81 = icmp eq %struct.uk_alloc* %80, null, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %81, label %82, label %84, !dbg !974, !prof !256

; <label>:82:                                     ; preds = %79
  %83 = tail call i32* @__errno() #7, !dbg !975
  store i32 12, i32* %83, align 4, !dbg !976, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  br label %158, !dbg !981

; <label>:84:                                     ; preds = %79
  %85 = add i64 %45, 1, !dbg !982
  %86 = add i64 %85, %44, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  %87 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %80, i64 0, i32 2, !dbg !991
  %88 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %87, align 8, !dbg !991, !tbaa !186
  %89 = tail call i8* %88(%struct.uk_alloc* nonnull %80, i8* nonnull %48, i64 %86) #7, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %90 = icmp eq i8* %89, null, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  br i1 %90, label %158, label %91, !dbg !981

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds i8, i8* %89, i64 %44, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  %94 = load i8, i8* %93, align 1, !dbg !999, !tbaa !304
  br label %138, !dbg !998

; <label>:95:                                     ; preds = %77
  %96 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1001, !tbaa !186
  %97 = icmp eq %struct.uk_alloc* %96, null, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %97, label %98, label %100, !dbg !1007, !prof !256

; <label>:98:                                     ; preds = %95
  %99 = tail call i32* @__errno() #7, !dbg !1008
  store i32 12, i32* %99, align 4, !dbg !1009, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br label %158, !dbg !1013

; <label>:100:                                    ; preds = %95
  %101 = add i64 %45, 1, !dbg !1014
  %102 = add i64 %101, %73, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  %103 = bitcast %struct.uk_alloc* %96 to i8* (%struct.uk_alloc*, i64)**, !dbg !1022
  %104 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %103, align 8, !dbg !1022, !tbaa !186
  %105 = tail call i8* %104(%struct.uk_alloc* nonnull %96, i64 %102) #7, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %106 = icmp eq i8* %105, null, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br i1 %106, label %158, label %107, !dbg !1013

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds i8, i8* %105, i64 %73, !dbg !1028
  %109 = tail call i8* @memcpy(i8* nonnull %108, i8* nonnull %0, i64 %101) #7, !dbg !1029
  %110 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1032, !tbaa !186
  %111 = icmp eq %struct.uk_alloc* %110, null, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %111, label %112, label %113, !dbg !1040, !prof !256

; <label>:112:                                    ; preds = %107
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1041
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1041
  unreachable

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %110, i64 0, i32 5, !dbg !1042
  %115 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %114, align 8, !dbg !1042, !tbaa !186
  tail call void %115(%struct.uk_alloc* nonnull %110, i8* nonnull %48) #7, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %116 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !1047
  store i8 %72, i8* %116, align 1, !dbg !1048, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  switch i3 %71, label %136 [
    i3 0, label %117
    i3 1, label %120
    i3 2, label %123
    i3 3, label %127
    i3 -4, label %131
  ], !dbg !1053

; <label>:117:                                    ; preds = %113
  %118 = trunc i64 %45 to i8, !dbg !1055
  %119 = shl i8 %118, 3, !dbg !1055
  store i8 %119, i8* %116, align 1, !dbg !1056, !tbaa !304
  br label %134, !dbg !1057

; <label>:120:                                    ; preds = %113
  %121 = trunc i64 %45 to i8, !dbg !1058
  %122 = getelementptr inbounds i8, i8* %108, i64 -3, !dbg !1059
  store i8 %121, i8* %122, align 1, !dbg !1060, !tbaa !304
  br label %134, !dbg !1061

; <label>:123:                                    ; preds = %113
  %124 = trunc i64 %45 to i16, !dbg !1062
  %125 = getelementptr inbounds i8, i8* %108, i64 -5, !dbg !1063
  %126 = bitcast i8* %125 to i16*, !dbg !1064
  store i16 %124, i16* %126, align 1, !dbg !1065, !tbaa !311
  br label %134, !dbg !1066

; <label>:127:                                    ; preds = %113
  %128 = trunc i64 %45 to i32, !dbg !1067
  %129 = getelementptr inbounds i8, i8* %108, i64 -9, !dbg !1068
  %130 = bitcast i8* %129 to i32*, !dbg !1069
  store i32 %128, i32* %130, align 1, !dbg !1070, !tbaa !260
  br label %134, !dbg !1071

; <label>:131:                                    ; preds = %113
  %132 = getelementptr inbounds i8, i8* %108, i64 -17, !dbg !1072
  %133 = bitcast i8* %132 to i64*, !dbg !1073
  store i64 %45, i64* %133, align 1, !dbg !1074, !tbaa !324
  br label %134, !dbg !1075

; <label>:134:                                    ; preds = %131, %127, %123, %120, %117
  %135 = phi i8 [ %72, %131 ], [ %72, %127 ], [ %72, %123 ], [ %72, %120 ], [ %119, %117 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br label %136, !dbg !1077

; <label>:136:                                    ; preds = %134, %113
  %137 = phi i8 [ %72, %113 ], [ %135, %134 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %138

; <label>:138:                                    ; preds = %136, %91
  %139 = phi i8 [ %94, %91 ], [ %137, %136 ], !dbg !999
  %140 = phi i8* [ %92, %91 ], [ %108, %136 ], !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  %141 = trunc i8 %139 to i3, !dbg !1081
  switch i3 %141, label %157 [
    i3 -4, label %153
    i3 1, label %142
    i3 2, label %145
    i3 3, label %149
  ], !dbg !1081

; <label>:142:                                    ; preds = %138
  %143 = trunc i64 %45 to i8, !dbg !1082
  %144 = getelementptr inbounds i8, i8* %140, i64 -2, !dbg !1083
  store i8 %143, i8* %144, align 1, !dbg !1084, !tbaa !304
  br label %156, !dbg !1085

; <label>:145:                                    ; preds = %138
  %146 = trunc i64 %45 to i16, !dbg !1086
  %147 = getelementptr inbounds i8, i8* %140, i64 -3, !dbg !1087
  %148 = bitcast i8* %147 to i16*, !dbg !1087
  store i16 %146, i16* %148, align 1, !dbg !1088, !tbaa !311
  br label %156, !dbg !1089

; <label>:149:                                    ; preds = %138
  %150 = trunc i64 %45 to i32, !dbg !1090
  %151 = getelementptr inbounds i8, i8* %140, i64 -5, !dbg !1091
  %152 = bitcast i8* %151 to i32*, !dbg !1091
  store i32 %150, i32* %152, align 1, !dbg !1092, !tbaa !260
  br label %156, !dbg !1093

; <label>:153:                                    ; preds = %138
  %154 = getelementptr inbounds i8, i8* %140, i64 -9, !dbg !1094
  %155 = bitcast i8* %154 to i64*, !dbg !1094
  store i64 %45, i64* %155, align 1, !dbg !1095, !tbaa !324
  br label %156, !dbg !1096

; <label>:156:                                    ; preds = %153, %149, %145, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br label %157, !dbg !1097

; <label>:157:                                    ; preds = %156, %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br label %158, !dbg !1098

; <label>:158:                                    ; preds = %100, %98, %84, %82, %43, %42, %157
  %159 = phi i8* [ %140, %157 ], [ %0, %42 ], [ %0, %43 ], [ null, %82 ], [ null, %84 ], [ null, %98 ], [ null, %100 ], !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  ret i8* %159, !dbg !1101
}

; Function Attrs: noredzone nounwind
define dso_local i64 @sdsAllocSize(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1102 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1115
  %3 = load i8, i8* %2, align 1, !dbg !1115, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  %4 = trunc i8 %3 to i3, !dbg !1117
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !1117

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !1118
  %7 = zext i8 %6 to i64, !dbg !1118
  br label %26, !dbg !1123

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1124
  %10 = load i8, i8* %9, align 1, !dbg !1124, !tbaa !304
  %11 = zext i8 %10 to i64, !dbg !1125
  br label %26, !dbg !1126

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1127
  %14 = bitcast i8* %13 to i16*, !dbg !1127
  %15 = load i16, i16* %14, align 1, !dbg !1127, !tbaa !311
  %16 = zext i16 %15 to i64, !dbg !1128
  br label %26, !dbg !1129

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1130
  %19 = bitcast i8* %18 to i32*, !dbg !1130
  %20 = load i32, i32* %19, align 1, !dbg !1130, !tbaa !260
  %21 = zext i32 %20 to i64, !dbg !1131
  br label %26, !dbg !1132

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1133
  %24 = bitcast i8* %23 to i64*, !dbg !1133
  %25 = load i64, i64* %24, align 1, !dbg !1133, !tbaa !324
  br label %26, !dbg !1134

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ]
  %28 = phi i64 [ 17, %22 ], [ 9, %17 ], [ 5, %12 ], [ 3, %8 ], [ 1, %5 ], [ 0, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  %29 = add i64 %27, 1, !dbg !1139
  %30 = add i64 %29, %28, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  ret i64 %30, !dbg !1141
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsAllocPtr(i8* readonly) local_unnamed_addr #0 !dbg !1142 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1148
  %3 = load i8, i8* %2, align 1, !dbg !1148, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  %4 = and i8 %3, 7, !dbg !1151
  %5 = xor i8 %4, 4, !dbg !1151
  %6 = zext i8 %5 to i64, !dbg !1151
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs, i64 0, i64 %6, !dbg !1151
  %8 = load i64, i64* %7, align 8, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  ret i8* %9, !dbg !1155
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsIncrLen(i8* nocapture, i64) local_unnamed_addr #0 !dbg !1156 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1178
  %4 = load i8, i8* %3, align 1, !dbg !1178, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  %5 = trunc i8 %4 to i3, !dbg !1180
  switch i3 %5, label %129 [
    i3 0, label %6
    i3 1, label %29
    i3 2, label %53
    i3 3, label %81
    i3 -4, label %107
  ], !dbg !1180

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1182
  %8 = icmp sgt i64 %1, 0, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %8, label %9, label %14, !dbg !1184

; <label>:9:                                      ; preds = %6
  %10 = zext i8 %7 to i64, !dbg !1184
  %11 = add nsw i64 %10, %1, !dbg !1184
  %12 = icmp slt i64 %11, 32, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %12, label %25, label %13, !dbg !1184

; <label>:13:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br label %24, !dbg !1184

; <label>:14:                                     ; preds = %6
  %15 = icmp slt i64 %1, 0, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %15, label %16, label %24, !dbg !1184

; <label>:16:                                     ; preds = %14
  %17 = zext i8 %7 to i32, !dbg !1184
  %18 = trunc i64 %1 to i32, !dbg !1184
  %19 = sub i32 0, %18, !dbg !1184
  %20 = icmp ult i32 %17, %19, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %20, label %24, label %21, !dbg !1184

; <label>:21:                                     ; preds = %16
  %22 = zext i8 %7 to i64, !dbg !1185
  %23 = add nsw i64 %22, %1, !dbg !1186
  br label %25, !dbg !1184

; <label>:24:                                     ; preds = %13, %16, %14
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1184
  unreachable

; <label>:25:                                     ; preds = %21, %9
  %26 = phi i64 [ %23, %21 ], [ %11, %9 ], !dbg !1186
  %27 = trunc i64 %26 to i8, !dbg !1187
  %28 = shl i8 %27, 3, !dbg !1187
  store i8 %28, i8* %3, align 1, !dbg !1188, !tbaa !304
  br label %129

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1190
  %31 = icmp sgt i64 %1, -1, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %31, label %32, label %41, !dbg !1191

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1191
  %34 = load i8, i8* %33, align 1, !dbg !1191, !tbaa !304
  %35 = zext i8 %34 to i64, !dbg !1191
  %36 = load i8, i8* %30, align 1, !dbg !1191, !tbaa !304
  %37 = zext i8 %36 to i64, !dbg !1191
  %38 = sub nsw i64 %35, %37, !dbg !1191
  %39 = icmp slt i64 %38, %1, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %39, label %40, label %48, !dbg !1191

; <label>:40:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br label %47

; <label>:41:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  %42 = load i8, i8* %30, align 1, !dbg !1191, !tbaa !304
  %43 = zext i8 %42 to i32, !dbg !1191
  %44 = trunc i64 %1 to i32, !dbg !1191
  %45 = sub i32 0, %44, !dbg !1191
  %46 = icmp ult i32 %43, %45, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %46, label %47, label %48, !dbg !1191

; <label>:47:                                     ; preds = %40, %41
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1191
  unreachable

; <label>:48:                                     ; preds = %32, %41
  %49 = phi i8 [ %36, %32 ], [ %42, %41 ], !dbg !1192
  %50 = trunc i64 %1 to i8, !dbg !1192
  %51 = add i8 %49, %50, !dbg !1192
  store i8 %51, i8* %30, align 1, !dbg !1192, !tbaa !304
  %52 = zext i8 %51 to i64, !dbg !1193
  br label %129

; <label>:53:                                     ; preds = %2
  %54 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1194
  %55 = icmp sgt i64 %1, -1, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %55, label %56, label %67, !dbg !1195

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1195
  %58 = bitcast i8* %57 to i16*, !dbg !1195
  %59 = load i16, i16* %58, align 1, !dbg !1195, !tbaa !311
  %60 = zext i16 %59 to i64, !dbg !1195
  %61 = bitcast i8* %54 to i16*, !dbg !1195
  %62 = load i16, i16* %61, align 1, !dbg !1195, !tbaa !311
  %63 = zext i16 %62 to i64, !dbg !1195
  %64 = sub nsw i64 %60, %63, !dbg !1195
  %65 = icmp slt i64 %64, %1, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %65, label %66, label %75, !dbg !1195

; <label>:66:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br label %74

; <label>:67:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  %68 = bitcast i8* %54 to i16*, !dbg !1195
  %69 = load i16, i16* %68, align 1, !dbg !1195, !tbaa !311
  %70 = zext i16 %69 to i32, !dbg !1195
  %71 = trunc i64 %1 to i32, !dbg !1195
  %72 = sub i32 0, %71, !dbg !1195
  %73 = icmp ult i32 %70, %72, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %73, label %74, label %75, !dbg !1195

; <label>:74:                                     ; preds = %66, %67
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1195
  unreachable

; <label>:75:                                     ; preds = %56, %67
  %76 = phi i16* [ %61, %56 ], [ %68, %67 ], !dbg !1196
  %77 = phi i16 [ %62, %56 ], [ %69, %67 ], !dbg !1197
  %78 = trunc i64 %1 to i16, !dbg !1197
  %79 = add i16 %77, %78, !dbg !1197
  store i16 %79, i16* %76, align 1, !dbg !1197, !tbaa !311
  %80 = zext i16 %79 to i64, !dbg !1198
  br label %129

; <label>:81:                                     ; preds = %2
  %82 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1199
  %83 = icmp sgt i64 %1, -1, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %83, label %84, label %94, !dbg !1200

; <label>:84:                                     ; preds = %81
  %85 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1200
  %86 = bitcast i8* %85 to i32*, !dbg !1200
  %87 = load i32, i32* %86, align 1, !dbg !1200, !tbaa !260
  %88 = bitcast i8* %82 to i32*, !dbg !1200
  %89 = load i32, i32* %88, align 1, !dbg !1200, !tbaa !260
  %90 = sub i32 %87, %89, !dbg !1200
  %91 = trunc i64 %1 to i32, !dbg !1200
  %92 = icmp ult i32 %90, %91, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %92, label %93, label %101, !dbg !1200

; <label>:93:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br label %100

; <label>:94:                                     ; preds = %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  %95 = bitcast i8* %82 to i32*, !dbg !1200
  %96 = load i32, i32* %95, align 1, !dbg !1200, !tbaa !260
  %97 = trunc i64 %1 to i32, !dbg !1200
  %98 = sub i32 0, %97, !dbg !1200
  %99 = icmp ult i32 %96, %98, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %99, label %100, label %101, !dbg !1200

; <label>:100:                                    ; preds = %93, %94
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1200
  unreachable

; <label>:101:                                    ; preds = %84, %94
  %102 = phi i32 [ %91, %84 ], [ %97, %94 ], !dbg !1201
  %103 = phi i32* [ %88, %84 ], [ %95, %94 ], !dbg !1202
  %104 = phi i32 [ %89, %84 ], [ %96, %94 ], !dbg !1201
  %105 = add i32 %104, %102, !dbg !1201
  store i32 %105, i32* %103, align 1, !dbg !1201, !tbaa !260
  %106 = zext i32 %105 to i64, !dbg !1203
  br label %129

; <label>:107:                                    ; preds = %2
  %108 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1204
  %109 = icmp sgt i64 %1, -1, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %109, label %110, label %119, !dbg !1205

; <label>:110:                                    ; preds = %107
  %111 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1205
  %112 = bitcast i8* %111 to i64*, !dbg !1205
  %113 = load i64, i64* %112, align 1, !dbg !1205, !tbaa !324
  %114 = bitcast i8* %108 to i64*, !dbg !1205
  %115 = load i64, i64* %114, align 1, !dbg !1205, !tbaa !324
  %116 = sub i64 %113, %115, !dbg !1205
  %117 = icmp ult i64 %116, %1, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %117, label %118, label %125, !dbg !1205

; <label>:118:                                    ; preds = %110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %124

; <label>:119:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  %120 = bitcast i8* %108 to i64*, !dbg !1205
  %121 = load i64, i64* %120, align 1, !dbg !1205, !tbaa !324
  %122 = sub nsw i64 0, %1, !dbg !1205
  %123 = icmp ult i64 %121, %122, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %123, label %124, label %125, !dbg !1205

; <label>:124:                                    ; preds = %118, %119
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1205
  unreachable

; <label>:125:                                    ; preds = %110, %119
  %126 = phi i64* [ %114, %110 ], [ %120, %119 ], !dbg !1206
  %127 = phi i64 [ %115, %110 ], [ %121, %119 ], !dbg !1207
  %128 = add i64 %127, %1, !dbg !1207
  store i64 %128, i64* %126, align 1, !dbg !1207, !tbaa !324
  br label %129

; <label>:129:                                    ; preds = %2, %125, %101, %75, %48, %25
  %130 = phi i64 [ %128, %125 ], [ %106, %101 ], [ %80, %75 ], [ %52, %48 ], [ %26, %25 ], [ 0, %2 ], !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %131 = getelementptr inbounds i8, i8* %0, i64 %130, !dbg !1209
  store i8 0, i8* %131, align 1, !dbg !1210, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  ret void, !dbg !1211
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #0 !dbg !1212 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1221
  %4 = load i8, i8* %3, align 1, !dbg !1221, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  %5 = trunc i8 %4 to i3, !dbg !1223
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1223

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1224
  %8 = zext i8 %7 to i64, !dbg !1224
  br label %27, !dbg !1225

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1226
  %11 = load i8, i8* %10, align 1, !dbg !1227, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !1226
  br label %27, !dbg !1228

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1229
  %15 = bitcast i8* %14 to i16*, !dbg !1230
  %16 = load i16, i16* %15, align 1, !dbg !1230, !tbaa !311
  %17 = zext i16 %16 to i64, !dbg !1229
  br label %27, !dbg !1231

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1232
  %20 = bitcast i8* %19 to i32*, !dbg !1233
  %21 = load i32, i32* %20, align 1, !dbg !1233, !tbaa !260
  %22 = zext i32 %21 to i64, !dbg !1232
  br label %27, !dbg !1234

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1235
  %25 = bitcast i8* %24 to i64*, !dbg !1236
  %26 = load i64, i64* %25, align 1, !dbg !1236, !tbaa !324
  br label %27, !dbg !1237

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  %29 = icmp ult i64 %28, %1, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %29, label %30, label %60, !dbg !1244

; <label>:30:                                     ; preds = %27
  %31 = sub i64 %1, %28, !dbg !1245
  %32 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %31) #8, !dbg !1246
  %33 = icmp eq i8* %32, null, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br i1 %33, label %60, label %34, !dbg !1249

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds i8, i8* %32, i64 %28, !dbg !1250
  %36 = add i64 %31, 1, !dbg !1251
  %37 = tail call i8* @memset(i8* nonnull %35, i32 0, i64 %36) #7, !dbg !1252
  %38 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1256
  %39 = load i8, i8* %38, align 1, !dbg !1256, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  %40 = trunc i8 %39 to i3, !dbg !1258
  switch i3 %40, label %59 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %47
    i3 3, label %51
    i3 -4, label %55
  ], !dbg !1258

; <label>:41:                                     ; preds = %34
  %42 = trunc i64 %1 to i8, !dbg !1260
  %43 = shl i8 %42, 3, !dbg !1260
  store i8 %43, i8* %38, align 1, !dbg !1261, !tbaa !304
  br label %58, !dbg !1262

; <label>:44:                                     ; preds = %34
  %45 = trunc i64 %1 to i8, !dbg !1263
  %46 = getelementptr inbounds i8, i8* %32, i64 -3, !dbg !1264
  store i8 %45, i8* %46, align 1, !dbg !1265, !tbaa !304
  br label %58, !dbg !1266

; <label>:47:                                     ; preds = %34
  %48 = trunc i64 %1 to i16, !dbg !1267
  %49 = getelementptr inbounds i8, i8* %32, i64 -5, !dbg !1268
  %50 = bitcast i8* %49 to i16*, !dbg !1269
  store i16 %48, i16* %50, align 1, !dbg !1270, !tbaa !311
  br label %58, !dbg !1271

; <label>:51:                                     ; preds = %34
  %52 = trunc i64 %1 to i32, !dbg !1272
  %53 = getelementptr inbounds i8, i8* %32, i64 -9, !dbg !1273
  %54 = bitcast i8* %53 to i32*, !dbg !1274
  store i32 %52, i32* %54, align 1, !dbg !1275, !tbaa !260
  br label %58, !dbg !1276

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %32, i64 -17, !dbg !1277
  %57 = bitcast i8* %56 to i64*, !dbg !1278
  store i64 %1, i64* %57, align 1, !dbg !1279, !tbaa !324
  br label %58, !dbg !1280

; <label>:58:                                     ; preds = %55, %51, %47, %44, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br label %59, !dbg !1281

; <label>:59:                                     ; preds = %58, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br label %60, !dbg !1282

; <label>:60:                                     ; preds = %30, %27, %59
  %61 = phi i8* [ %32, %59 ], [ %0, %27 ], [ null, %30 ], !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  ret i8* %61, !dbg !1284
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1285 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1298
  %5 = load i8, i8* %4, align 1, !dbg !1298, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %6 = trunc i8 %5 to i3, !dbg !1300
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1300

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1301
  %9 = zext i8 %8 to i64, !dbg !1301
  br label %28, !dbg !1302

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1303
  %12 = load i8, i8* %11, align 1, !dbg !1304, !tbaa !304
  %13 = zext i8 %12 to i64, !dbg !1303
  br label %28, !dbg !1305

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1306
  %16 = bitcast i8* %15 to i16*, !dbg !1307
  %17 = load i16, i16* %16, align 1, !dbg !1307, !tbaa !311
  %18 = zext i16 %17 to i64, !dbg !1306
  br label %28, !dbg !1308

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1309
  %21 = bitcast i8* %20 to i32*, !dbg !1310
  %22 = load i32, i32* %21, align 1, !dbg !1310, !tbaa !260
  %23 = zext i32 %22 to i64, !dbg !1309
  br label %28, !dbg !1311

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1312
  %26 = bitcast i8* %25 to i64*, !dbg !1313
  %27 = load i64, i64* %26, align 1, !dbg !1313, !tbaa !324
  br label %28, !dbg !1314

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  %30 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %2) #8, !dbg !1319
  %31 = icmp eq i8* %30, null, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %31, label %59, label %32, !dbg !1322

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1323
  %34 = tail call i8* @memcpy(i8* nonnull %33, i8* %1, i64 %2) #7, !dbg !1324
  %35 = add i64 %29, %2, !dbg !1325
  %36 = getelementptr inbounds i8, i8* %30, i64 -1, !dbg !1329
  %37 = load i8, i8* %36, align 1, !dbg !1329, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %38 = trunc i8 %37 to i3, !dbg !1331
  switch i3 %38, label %57 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %45
    i3 3, label %49
    i3 -4, label %53
  ], !dbg !1331

; <label>:39:                                     ; preds = %32
  %40 = trunc i64 %35 to i8, !dbg !1333
  %41 = shl i8 %40, 3, !dbg !1333
  store i8 %41, i8* %36, align 1, !dbg !1334, !tbaa !304
  br label %56, !dbg !1335

; <label>:42:                                     ; preds = %32
  %43 = trunc i64 %35 to i8, !dbg !1336
  %44 = getelementptr inbounds i8, i8* %30, i64 -3, !dbg !1337
  store i8 %43, i8* %44, align 1, !dbg !1338, !tbaa !304
  br label %56, !dbg !1339

; <label>:45:                                     ; preds = %32
  %46 = trunc i64 %35 to i16, !dbg !1340
  %47 = getelementptr inbounds i8, i8* %30, i64 -5, !dbg !1341
  %48 = bitcast i8* %47 to i16*, !dbg !1342
  store i16 %46, i16* %48, align 1, !dbg !1343, !tbaa !311
  br label %56, !dbg !1344

; <label>:49:                                     ; preds = %32
  %50 = trunc i64 %35 to i32, !dbg !1345
  %51 = getelementptr inbounds i8, i8* %30, i64 -9, !dbg !1346
  %52 = bitcast i8* %51 to i32*, !dbg !1347
  store i32 %50, i32* %52, align 1, !dbg !1348, !tbaa !260
  br label %56, !dbg !1349

; <label>:53:                                     ; preds = %32
  %54 = getelementptr inbounds i8, i8* %30, i64 -17, !dbg !1350
  %55 = bitcast i8* %54 to i64*, !dbg !1351
  store i64 %35, i64* %55, align 1, !dbg !1352, !tbaa !324
  br label %56, !dbg !1353

; <label>:56:                                     ; preds = %53, %49, %45, %42, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br label %57, !dbg !1354

; <label>:57:                                     ; preds = %56, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  %58 = getelementptr inbounds i8, i8* %30, i64 %35, !dbg !1355
  store i8 0, i8* %58, align 1, !dbg !1356, !tbaa !304
  br label %59, !dbg !1357

; <label>:59:                                     ; preds = %28, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  ret i8* %30, !dbg !1359
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #0 !dbg !1360 {
  %3 = tail call i64 @strlen(i8* %1) #7, !dbg !1368
  %4 = tail call i8* @sdscatlen(i8* %0, i8* %1, i64 %3) #8, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  ret i8* %4, !dbg !1370
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #0 !dbg !1371 {
  %3 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1381
  %4 = load i8, i8* %3, align 1, !dbg !1381, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  %5 = trunc i8 %4 to i3, !dbg !1383
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1383

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1384
  %8 = zext i8 %7 to i64, !dbg !1384
  br label %27, !dbg !1385

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1386
  %11 = load i8, i8* %10, align 1, !dbg !1387, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !1386
  br label %27, !dbg !1388

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1389
  %15 = bitcast i8* %14 to i16*, !dbg !1390
  %16 = load i16, i16* %15, align 1, !dbg !1390, !tbaa !311
  %17 = zext i16 %16 to i64, !dbg !1389
  br label %27, !dbg !1391

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1392
  %20 = bitcast i8* %19 to i32*, !dbg !1393
  %21 = load i32, i32* %20, align 1, !dbg !1393, !tbaa !260
  %22 = zext i32 %21 to i64, !dbg !1392
  br label %27, !dbg !1394

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1395
  %25 = bitcast i8* %24 to i64*, !dbg !1396
  %26 = load i64, i64* %25, align 1, !dbg !1396, !tbaa !324
  br label %27, !dbg !1397

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  %29 = tail call i8* @sdscatlen(i8* %0, i8* nonnull %1, i64 %28) #8, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  ret i8* %29, !dbg !1402
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpylen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1403 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1416
  %5 = load i8, i8* %4, align 1, !dbg !1416, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  %6 = trunc i8 %5 to i3, !dbg !1418
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1418

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1419
  %9 = zext i8 %8 to i64, !dbg !1419
  br label %28, !dbg !1420

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1421
  %12 = load i8, i8* %11, align 1, !dbg !1421, !tbaa !304
  %13 = zext i8 %12 to i64, !dbg !1422
  br label %28, !dbg !1423

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1424
  %16 = bitcast i8* %15 to i16*, !dbg !1424
  %17 = load i16, i16* %16, align 1, !dbg !1424, !tbaa !311
  %18 = zext i16 %17 to i64, !dbg !1425
  br label %28, !dbg !1426

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1427
  %21 = bitcast i8* %20 to i32*, !dbg !1427
  %22 = load i32, i32* %21, align 1, !dbg !1427, !tbaa !260
  %23 = zext i32 %22 to i64, !dbg !1428
  br label %28, !dbg !1429

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1430
  %26 = bitcast i8* %25 to i64*, !dbg !1430
  %27 = load i64, i64* %26, align 1, !dbg !1430, !tbaa !324
  br label %28, !dbg !1431

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  %30 = icmp ult i64 %29, %2, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %30, label %31, label %60, !dbg !1436

; <label>:31:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  switch i3 %6, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1441

; <label>:32:                                     ; preds = %31
  %33 = lshr i8 %5, 3, !dbg !1442
  %34 = zext i8 %33 to i64, !dbg !1442
  br label %53, !dbg !1443

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1444
  %37 = load i8, i8* %36, align 1, !dbg !1445, !tbaa !304
  %38 = zext i8 %37 to i64, !dbg !1444
  br label %53, !dbg !1446

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1447
  %41 = bitcast i8* %40 to i16*, !dbg !1448
  %42 = load i16, i16* %41, align 1, !dbg !1448, !tbaa !311
  %43 = zext i16 %42 to i64, !dbg !1447
  br label %53, !dbg !1449

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1450
  %46 = bitcast i8* %45 to i32*, !dbg !1451
  %47 = load i32, i32* %46, align 1, !dbg !1451, !tbaa !260
  %48 = zext i32 %47 to i64, !dbg !1450
  br label %53, !dbg !1452

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1453
  %51 = bitcast i8* %50 to i64*, !dbg !1454
  %52 = load i64, i64* %51, align 1, !dbg !1454, !tbaa !324
  br label %53, !dbg !1455

; <label>:53:                                     ; preds = %31, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %31 ], !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %55 = sub i64 %2, %54, !dbg !1459
  %56 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %55) #8, !dbg !1460
  %57 = icmp eq i8* %56, null, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %57, label %86, label %58, !dbg !1463

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !1464
  br label %60, !dbg !1463

; <label>:60:                                     ; preds = %58, %28
  %61 = phi i8* [ %59, %58 ], [ %4, %28 ], !dbg !1464
  %62 = phi i8* [ %56, %58 ], [ %0, %28 ]
  %63 = tail call i8* @memcpy(i8* nonnull %62, i8* %1, i64 %2) #7, !dbg !1466
  %64 = getelementptr inbounds i8, i8* %62, i64 %2, !dbg !1467
  store i8 0, i8* %64, align 1, !dbg !1468, !tbaa !304
  %65 = load i8, i8* %61, align 1, !dbg !1464, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  %66 = trunc i8 %65 to i3, !dbg !1472
  switch i3 %66, label %85 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %73
    i3 3, label %77
    i3 -4, label %81
  ], !dbg !1472

; <label>:67:                                     ; preds = %60
  %68 = trunc i64 %2 to i8, !dbg !1474
  %69 = shl i8 %68, 3, !dbg !1474
  store i8 %69, i8* %61, align 1, !dbg !1475, !tbaa !304
  br label %84, !dbg !1476

; <label>:70:                                     ; preds = %60
  %71 = trunc i64 %2 to i8, !dbg !1477
  %72 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !1478
  store i8 %71, i8* %72, align 1, !dbg !1479, !tbaa !304
  br label %84, !dbg !1480

; <label>:73:                                     ; preds = %60
  %74 = trunc i64 %2 to i16, !dbg !1481
  %75 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !1482
  %76 = bitcast i8* %75 to i16*, !dbg !1483
  store i16 %74, i16* %76, align 1, !dbg !1484, !tbaa !311
  br label %84, !dbg !1485

; <label>:77:                                     ; preds = %60
  %78 = trunc i64 %2 to i32, !dbg !1486
  %79 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !1487
  %80 = bitcast i8* %79 to i32*, !dbg !1488
  store i32 %78, i32* %80, align 1, !dbg !1489, !tbaa !260
  br label %84, !dbg !1490

; <label>:81:                                     ; preds = %60
  %82 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !1491
  %83 = bitcast i8* %82 to i64*, !dbg !1492
  store i64 %2, i64* %83, align 1, !dbg !1493, !tbaa !324
  br label %84, !dbg !1494

; <label>:84:                                     ; preds = %81, %77, %73, %70, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  br label %85, !dbg !1496

; <label>:85:                                     ; preds = %84, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br label %86, !dbg !1497

; <label>:86:                                     ; preds = %53, %85
  %87 = phi i8* [ %62, %85 ], [ null, %53 ], !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  ret i8* %87, !dbg !1499
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpy(i8*, i8*) local_unnamed_addr #0 !dbg !1500 {
  %3 = tail call i64 @strlen(i8* %1) #7, !dbg !1506
  %4 = tail call i8* @sdscpylen(i8* %0, i8* %1, i64 %3) #8, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  ret i8* %4, !dbg !1508
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsll2str(i8*, i64) local_unnamed_addr #0 !dbg !1509 {
  %3 = icmp slt i64 %1, 0, !dbg !1523
  %4 = sub nsw i64 0, %1, !dbg !1524
  %5 = select i1 %3, i64 %4, i64 %1, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br label %6, !dbg !1528

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i8* [ %0, %2 ], [ %12, %6 ], !dbg !1529
  %8 = phi i64 [ %5, %2 ], [ %13, %6 ], !dbg !1529
  %9 = urem i64 %8, 10, !dbg !1531
  %10 = trunc i64 %9 to i8, !dbg !1532
  %11 = or i8 %10, 48, !dbg !1532
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1533
  store i8 %11, i8* %7, align 1, !dbg !1534, !tbaa !304
  %13 = udiv i64 %8, 10, !dbg !1535
  %14 = icmp ugt i64 %8, 9, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br i1 %14, label %6, label %15, !dbg !1536, !llvm.loop !1537

; <label>:15:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br i1 %3, label %16, label %18, !dbg !1539

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !1540
  store i8 45, i8* %12, align 1, !dbg !1542, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br label %18, !dbg !1543

; <label>:18:                                     ; preds = %16, %15
  %19 = phi i8* [ %17, %16 ], [ %12, %15 ], !dbg !1529
  %20 = ptrtoint i8* %19 to i64, !dbg !1544
  %21 = ptrtoint i8* %0 to i64, !dbg !1544
  %22 = sub i64 %20, %21, !dbg !1544
  store i8 0, i8* %19, align 1, !dbg !1546, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1548
  %24 = icmp ugt i8* %23, %0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br i1 %24, label %25, label %33, !dbg !1547

; <label>:25:                                     ; preds = %18, %25
  %26 = phi i8* [ %31, %25 ], [ %23, %18 ]
  %27 = phi i8* [ %30, %25 ], [ %0, %18 ]
  %28 = load i8, i8* %27, align 1, !dbg !1551, !tbaa !304
  %29 = load i8, i8* %26, align 1, !dbg !1553, !tbaa !304
  store i8 %29, i8* %27, align 1, !dbg !1554, !tbaa !304
  store i8 %28, i8* %26, align 1, !dbg !1555, !tbaa !304
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %31 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !1548
  %32 = icmp ult i8* %30, %31, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br i1 %32, label %25, label %33, !dbg !1547, !llvm.loop !1557

; <label>:33:                                     ; preds = %25, %18
  %34 = trunc i64 %22 to i32, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  ret i32 %34, !dbg !1560
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsull2str(i8*, i64) local_unnamed_addr #0 !dbg !1561 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br label %3, !dbg !1573

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %10, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %11, %3 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1571
  %7 = urem i64 %5, 10, !dbg !1574
  %8 = trunc i64 %7 to i8, !dbg !1576
  %9 = or i8 %8, 48, !dbg !1576
  %10 = add nuw nsw i64 %4, 1, !dbg !1577
  store i8 %9, i8* %6, align 1, !dbg !1578, !tbaa !304
  %11 = udiv i64 %5, 10, !dbg !1579
  %12 = icmp ugt i64 %5, 9, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br i1 %12, label %3, label %13, !dbg !1580, !llvm.loop !1581

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1571
  %15 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1572
  store i8 0, i8* %15, align 1, !dbg !1584, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  %16 = icmp eq i64 %4, 0, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %16, label %32, label %17, !dbg !1585

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %0, align 1, !dbg !1587, !tbaa !304
  store i8 %9, i8* %0, align 1, !dbg !1590, !tbaa !304
  store i8 %18, i8* %14, align 1, !dbg !1591, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  %19 = icmp ugt i64 %4, 2, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %19, label %20, label %32, !dbg !1585, !llvm.loop !1592

; <label>:20:                                     ; preds = %17
  %21 = add nsw i64 %4, -1, !dbg !1594
  %22 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1595
  %23 = getelementptr inbounds i8, i8* %0, i64 %21, !dbg !1585
  br label %24, !dbg !1585

; <label>:24:                                     ; preds = %20, %24
  %25 = phi i8* [ %23, %20 ], [ %30, %24 ]
  %26 = phi i8* [ %22, %20 ], [ %29, %24 ]
  %27 = load i8, i8* %25, align 1, !dbg !1596, !tbaa !304
  %28 = load i8, i8* %26, align 1, !dbg !1587, !tbaa !304
  store i8 %27, i8* %26, align 1, !dbg !1590, !tbaa !304
  store i8 %28, i8* %25, align 1, !dbg !1591, !tbaa !304
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1595
  %30 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  %31 = icmp ult i8* %29, %30, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %31, label %24, label %32, !dbg !1585, !llvm.loop !1592

; <label>:32:                                     ; preds = %24, %17, %13
  %33 = trunc i64 %10 to i32, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  ret i32 %33, !dbg !1598
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #0 !dbg !1599 {
  %2 = alloca [21 x i8], align 16
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #5, !dbg !1610
  %4 = icmp slt i64 %0, 0, !dbg !1615
  %5 = sub nsw i64 0, %0, !dbg !1616
  %6 = select i1 %4, i64 %5, i64 %0, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br label %7, !dbg !1620

; <label>:7:                                      ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %14, %7 ]
  %9 = phi i64 [ %6, %1 ], [ %15, %7 ], !dbg !1621
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %8, !dbg !1618
  %11 = urem i64 %9, 10, !dbg !1622
  %12 = trunc i64 %11 to i8, !dbg !1623
  %13 = or i8 %12, 48, !dbg !1623
  %14 = add nuw nsw i64 %8, 1, !dbg !1624
  store i8 %13, i8* %10, align 1, !dbg !1625, !tbaa !304
  %15 = udiv i64 %9, 10, !dbg !1626
  %16 = icmp ugt i64 %9, 9, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br i1 %16, label %7, label %17, !dbg !1627, !llvm.loop !1537

; <label>:17:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br i1 %4, label %18, label %21, !dbg !1628

; <label>:18:                                     ; preds = %17
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %14, !dbg !1619
  %20 = add nuw nsw i64 %8, 2, !dbg !1629
  store i8 45, i8* %19, align 1, !dbg !1630, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  br label %21, !dbg !1631

; <label>:21:                                     ; preds = %18, %17
  %22 = phi i8 [ 45, %18 ], [ %13, %17 ]
  %23 = phi i64 [ %20, %18 ], [ %14, %17 ]
  %24 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %23, !dbg !1619
  store i8 0, i8* %24, align 1, !dbg !1633, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %25 = icmp sgt i64 %23, 1, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %25, label %26, label %41, !dbg !1634

; <label>:26:                                     ; preds = %21
  %27 = add nsw i64 %23, -1, !dbg !1636
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %27, !dbg !1612
  %29 = load i8, i8* %3, align 16, !dbg !1637, !tbaa !304
  store i8 %22, i8* %3, align 16, !dbg !1639, !tbaa !304
  store i8 %29, i8* %28, align 1, !dbg !1640, !tbaa !304
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 1, !dbg !1641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %31 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1636
  %32 = icmp ult i8* %30, %31, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %32, label %33, label %41, !dbg !1634, !llvm.loop !1557

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i8* [ %39, %33 ], [ %31, %26 ]
  %35 = phi i8* [ %38, %33 ], [ %30, %26 ]
  %36 = load i8, i8* %34, align 1, !dbg !1642, !tbaa !304
  %37 = load i8, i8* %35, align 1, !dbg !1637, !tbaa !304
  store i8 %36, i8* %35, align 1, !dbg !1639, !tbaa !304
  store i8 %37, i8* %34, align 1, !dbg !1640, !tbaa !304
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %39 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1636
  %40 = icmp ult i8* %38, %39, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %40, label %33, label %41, !dbg !1634, !llvm.loop !1557

; <label>:41:                                     ; preds = %33, %26, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %42 = shl i64 %23, 32, !dbg !1644
  %43 = ashr exact i64 %42, 32, !dbg !1644
  %44 = call i8* @sdsnewlen(i8* nonnull %3, i64 %43) #8, !dbg !1645
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #5, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  ret i8* %44, !dbg !1647
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1648 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1667
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #5, !dbg !1667
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #5, !dbg !1669
  %8 = tail call i64 @strlen(i8* %1) #7, !dbg !1672
  %9 = shl i64 %8, 1, !dbg !1673
  %10 = icmp ugt i64 %9, 1024, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  br i1 %10, label %11, label %21, !dbg !1677

; <label>:11:                                     ; preds = %3
  %12 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1681, !tbaa !186
  %13 = icmp eq %struct.uk_alloc* %12, null, !dbg !1685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  br i1 %13, label %14, label %16, !dbg !1686, !prof !256

; <label>:14:                                     ; preds = %11
  %15 = tail call i32* @__errno() #7, !dbg !1687
  store i32 12, i32* %15, align 4, !dbg !1688, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  br label %66, !dbg !1692

; <label>:16:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  %17 = bitcast %struct.uk_alloc* %12 to i8* (%struct.uk_alloc*, i64)**, !dbg !1697
  %18 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %17, align 8, !dbg !1697, !tbaa !186
  %19 = tail call i8* %18(%struct.uk_alloc* nonnull %12, i64 %9) #7, !dbg !1698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  %20 = icmp eq i8* %19, null, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  br i1 %20, label %66, label %22, !dbg !1692

; <label>:21:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %22

; <label>:22:                                     ; preds = %16, %21
  %23 = phi i8* [ %19, %16 ], [ %7, %21 ], !dbg !1703
  %24 = phi i64 [ %9, %16 ], [ 1024, %21 ], !dbg !1704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %26 = bitcast %struct.__va_list_tag* %2 to i8*
  br label %27, !dbg !1706

; <label>:27:                                     ; preds = %50, %22
  %28 = phi i8* [ %23, %22 ], [ %53, %50 ], !dbg !1707
  %29 = phi i64 [ %24, %22 ], [ %45, %50 ], !dbg !1707
  %30 = add i64 %29, -2, !dbg !1711
  %31 = getelementptr inbounds i8, i8* %28, i64 %30, !dbg !1712
  store i8 0, i8* %31, align 1, !dbg !1713, !tbaa !304
  call void @llvm.va_copy(i8* nonnull %6, i8* %26), !dbg !1714
  %32 = call i32 @vsnprintf(i8* nonnull %28, i64 %29, i8* %1, %struct.__va_list_tag* nonnull %25) #7, !dbg !1715
  call void @llvm.va_end(i8* nonnull %6), !dbg !1716
  %33 = load i8, i8* %31, align 1, !dbg !1717, !tbaa !304
  %34 = icmp eq i8 %33, 0, !dbg !1718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1719
  br i1 %34, label %55, label %35, !dbg !1719

; <label>:35:                                     ; preds = %27
  %36 = icmp eq i8* %28, %7, !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %36, label %44, label %37, !dbg !1722

; <label>:37:                                     ; preds = %35
  %38 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1725, !tbaa !186
  %39 = icmp eq %struct.uk_alloc* %38, null, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br i1 %39, label %40, label %41, !dbg !1733, !prof !256

; <label>:40:                                     ; preds = %37
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1734
  call void @ukplat_terminate(i32 3) #9, !dbg !1734
  unreachable

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %38, i64 0, i32 5, !dbg !1735
  %43 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %42, align 8, !dbg !1735, !tbaa !186
  call void %43(%struct.uk_alloc* nonnull %38, i8* nonnull %28) #7, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %44, !dbg !1740

; <label>:44:                                     ; preds = %35, %41
  %45 = shl i64 %29, 1, !dbg !1741
  %46 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1744, !tbaa !186
  %47 = icmp eq %struct.uk_alloc* %46, null, !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  br i1 %47, label %48, label %50, !dbg !1749, !prof !256

; <label>:48:                                     ; preds = %44
  %49 = call i32* @__errno() #7, !dbg !1750
  store i32 12, i32* %49, align 4, !dbg !1751, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br label %66, !dbg !1755

; <label>:50:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  %51 = bitcast %struct.uk_alloc* %46 to i8* (%struct.uk_alloc*, i64)**, !dbg !1760
  %52 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %51, align 8, !dbg !1760, !tbaa !186
  %53 = call i8* %52(%struct.uk_alloc* nonnull %46, i64 %45) #7, !dbg !1761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  %54 = icmp eq i8* %53, null, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br i1 %54, label %66, label %27, !dbg !1755, !llvm.loop !1766

; <label>:55:                                     ; preds = %27
  %56 = call i64 @strlen(i8* nonnull %28) #7, !dbg !1771
  %57 = call i8* @sdscatlen(i8* %0, i8* nonnull %28, i64 %56) #7, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  %58 = icmp eq i8* %28, %7, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %58, label %66, label %59, !dbg !1777

; <label>:59:                                     ; preds = %55
  %60 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1780, !tbaa !186
  %61 = icmp eq %struct.uk_alloc* %60, null, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br i1 %61, label %62, label %63, !dbg !1788, !prof !256

; <label>:62:                                     ; preds = %59
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1789
  call void @ukplat_terminate(i32 3) #9, !dbg !1789
  unreachable

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %60, i64 0, i32 5, !dbg !1790
  %65 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %64, align 8, !dbg !1790, !tbaa !186
  call void %65(%struct.uk_alloc* nonnull %60, i8* nonnull %28) #7, !dbg !1791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  br label %66, !dbg !1795

; <label>:66:                                     ; preds = %50, %63, %55, %48, %16, %14
  %67 = phi i8* [ null, %14 ], [ null, %16 ], [ null, %48 ], [ %57, %55 ], [ %57, %63 ], [ null, %50 ], !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #5, !dbg !1797
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #5, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1797
  ret i8* %67, !dbg !1797
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #0 !dbg !1798 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1808
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1810
  call void @llvm.va_start(i8* nonnull %4), !dbg !1810
  %6 = call i8* @sdscatvprintf(i8* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1811
  call void @llvm.va_end(i8* nonnull %4), !dbg !1813
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  ret i8* %6, !dbg !1815
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatfmt(i8*, i8* nocapture readonly, ...) local_unnamed_addr #0 !dbg !1816 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [21 x i8], align 16
  %5 = alloca [21 x i8], align 16
  %6 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1840
  %7 = load i8, i8* %6, align 1, !dbg !1840, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  %8 = trunc i8 %7 to i3, !dbg !1842
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !1842

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !1843
  %11 = zext i8 %10 to i64, !dbg !1843
  br label %30, !dbg !1844

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1845
  %14 = load i8, i8* %13, align 1, !dbg !1846, !tbaa !304
  %15 = zext i8 %14 to i64, !dbg !1845
  br label %30, !dbg !1847

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1848
  %18 = bitcast i8* %17 to i16*, !dbg !1849
  %19 = load i16, i16* %18, align 1, !dbg !1849, !tbaa !311
  %20 = zext i16 %19 to i64, !dbg !1848
  br label %30, !dbg !1850

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1851
  %23 = bitcast i8* %22 to i32*, !dbg !1852
  %24 = load i32, i32* %23, align 1, !dbg !1852, !tbaa !260
  %25 = zext i32 %24 to i64, !dbg !1851
  br label %30, !dbg !1853

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1854
  %28 = bitcast i8* %27 to i64*, !dbg !1855
  %29 = load i64, i64* %28, align 1, !dbg !1855, !tbaa !324
  br label %30, !dbg !1856

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  %32 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1862
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %32) #5, !dbg !1862
  call void @llvm.va_start(i8* nonnull %32), !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %33 = load i8, i8* %1, align 1, !dbg !1867, !tbaa !304
  %34 = icmp eq i8 %33, 0, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %34, label %592, label %35, !dbg !1866

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 1
  %42 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 1
  br label %43, !dbg !1866

; <label>:43:                                     ; preds = %35, %585
  %44 = phi i8 [ %33, %35 ], [ %590, %585 ]
  %45 = phi i8* [ %0, %35 ], [ %588, %585 ]
  %46 = phi i8* [ %1, %35 ], [ %589, %585 ]
  %47 = phi i64 [ %31, %35 ], [ %586, %585 ]
  %48 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1871
  %49 = load i8, i8* %48, align 1, !dbg !1871, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  %50 = trunc i8 %49 to i3, !dbg !1873
  switch i3 %50, label %86 [
    i3 -4, label %78
    i3 1, label %51
    i3 2, label %59
    i3 3, label %69
  ], !dbg !1873

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1874
  %53 = getelementptr inbounds i8, i8* %45, i64 -2, !dbg !1875
  %54 = load i8, i8* %53, align 1, !dbg !1875, !tbaa !304
  %55 = zext i8 %54 to i64, !dbg !1876
  %56 = load i8, i8* %52, align 1, !dbg !1877, !tbaa !304
  %57 = zext i8 %56 to i64, !dbg !1878
  %58 = sub nsw i64 %55, %57, !dbg !1879
  br label %87

; <label>:59:                                     ; preds = %43
  %60 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1880
  %61 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1881
  %62 = bitcast i8* %61 to i16*, !dbg !1881
  %63 = load i16, i16* %62, align 1, !dbg !1881, !tbaa !311
  %64 = zext i16 %63 to i64, !dbg !1882
  %65 = bitcast i8* %60 to i16*, !dbg !1883
  %66 = load i16, i16* %65, align 1, !dbg !1883, !tbaa !311
  %67 = zext i16 %66 to i64, !dbg !1884
  %68 = sub nsw i64 %64, %67, !dbg !1885
  br label %87

; <label>:69:                                     ; preds = %43
  %70 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1886
  %71 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1887
  %72 = bitcast i8* %71 to i32*, !dbg !1887
  %73 = load i32, i32* %72, align 1, !dbg !1887, !tbaa !260
  %74 = bitcast i8* %70 to i32*, !dbg !1888
  %75 = load i32, i32* %74, align 1, !dbg !1888, !tbaa !260
  %76 = sub i32 %73, %75, !dbg !1889
  %77 = zext i32 %76 to i64, !dbg !1890
  br label %87

; <label>:78:                                     ; preds = %43
  %79 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1891
  %80 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1892
  %81 = bitcast i8* %80 to i64*, !dbg !1892
  %82 = load i64, i64* %81, align 1, !dbg !1892, !tbaa !324
  %83 = bitcast i8* %79 to i64*, !dbg !1893
  %84 = load i64, i64* %83, align 1, !dbg !1893, !tbaa !324
  %85 = sub i64 %82, %84, !dbg !1894
  br label %87

; <label>:86:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br label %90, !dbg !1897

; <label>:87:                                     ; preds = %51, %59, %69, %78
  %88 = phi i64 [ %85, %78 ], [ %77, %69 ], [ %68, %59 ], [ %58, %51 ], !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %89 = icmp eq i64 %88, 0, !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %89, label %90, label %93, !dbg !1897

; <label>:90:                                     ; preds = %86, %87
  %91 = call i8* @sdsMakeRoomFor(i8* nonnull %45, i64 1) #8, !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  %92 = load i8, i8* %46, align 1, !dbg !1903, !tbaa !304
  br label %93, !dbg !1902

; <label>:93:                                     ; preds = %90, %87
  %94 = phi i8 [ %92, %90 ], [ %44, %87 ], !dbg !1903
  %95 = phi i8* [ %91, %90 ], [ %45, %87 ]
  %96 = icmp eq i8 %94, 37, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %96, label %97, label %555, !dbg !1904

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1905
  %99 = load i8, i8* %98, align 1, !dbg !1906, !tbaa !304
  %100 = sext i8 %99 to i32, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  switch i32 %100, label %525 [
    i32 115, label %101
    i32 83, label %101
    i32 105, label %229
    i32 73, label %229
    i32 117, label %382
    i32 85, label %382
  ], !dbg !1909

; <label>:101:                                    ; preds = %97, %97
  %102 = load i32, i32* %36, align 16, !dbg !1910
  %103 = icmp ult i32 %102, 41, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br i1 %103, label %104, label %109, !dbg !1910

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %37, align 16, !dbg !1910
  %106 = sext i32 %102 to i64, !dbg !1910
  %107 = getelementptr i8, i8* %105, i64 %106, !dbg !1910
  %108 = add i32 %102, 8, !dbg !1910
  store i32 %108, i32* %36, align 16, !dbg !1910
  br label %112, !dbg !1910

; <label>:109:                                    ; preds = %101
  %110 = load i8*, i8** %38, align 8, !dbg !1910
  %111 = getelementptr i8, i8* %110, i64 8, !dbg !1910
  store i8* %111, i8** %38, align 8, !dbg !1910
  br label %112, !dbg !1910

; <label>:112:                                    ; preds = %109, %104
  %113 = phi i8* [ %107, %104 ], [ %110, %109 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %114 = bitcast i8* %113 to i8**, !dbg !1910
  %115 = load i8*, i8** %114, align 8, !dbg !1910
  %116 = icmp eq i8 %99, 115, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  br i1 %116, label %117, label %119, !dbg !1913

; <label>:117:                                    ; preds = %112
  %118 = call i64 @strlen(i8* %115) #7, !dbg !1914
  br label %146, !dbg !1913

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds i8, i8* %115, i64 -1, !dbg !1917
  %121 = load i8, i8* %120, align 1, !dbg !1917, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  %122 = trunc i8 %121 to i3, !dbg !1919
  switch i3 %122, label %144 [
    i3 0, label %123
    i3 1, label %126
    i3 2, label %130
    i3 3, label %135
    i3 -4, label %140
  ], !dbg !1919

; <label>:123:                                    ; preds = %119
  %124 = lshr i8 %121, 3, !dbg !1920
  %125 = zext i8 %124 to i64, !dbg !1920
  br label %144, !dbg !1921

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds i8, i8* %115, i64 -3, !dbg !1922
  %128 = load i8, i8* %127, align 1, !dbg !1923, !tbaa !304
  %129 = zext i8 %128 to i64, !dbg !1922
  br label %144, !dbg !1924

; <label>:130:                                    ; preds = %119
  %131 = getelementptr inbounds i8, i8* %115, i64 -5, !dbg !1925
  %132 = bitcast i8* %131 to i16*, !dbg !1926
  %133 = load i16, i16* %132, align 1, !dbg !1926, !tbaa !311
  %134 = zext i16 %133 to i64, !dbg !1925
  br label %144, !dbg !1927

; <label>:135:                                    ; preds = %119
  %136 = getelementptr inbounds i8, i8* %115, i64 -9, !dbg !1928
  %137 = bitcast i8* %136 to i32*, !dbg !1929
  %138 = load i32, i32* %137, align 1, !dbg !1929, !tbaa !260
  %139 = zext i32 %138 to i64, !dbg !1928
  br label %144, !dbg !1930

; <label>:140:                                    ; preds = %119
  %141 = getelementptr inbounds i8, i8* %115, i64 -17, !dbg !1931
  %142 = bitcast i8* %141 to i64*, !dbg !1932
  %143 = load i64, i64* %142, align 1, !dbg !1932, !tbaa !324
  br label %144, !dbg !1933

; <label>:144:                                    ; preds = %119, %123, %126, %130, %135, %140
  %145 = phi i64 [ %143, %140 ], [ %139, %135 ], [ %134, %130 ], [ %129, %126 ], [ %125, %123 ], [ 0, %119 ], !dbg !1934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1936
  br label %146, !dbg !1913

; <label>:146:                                    ; preds = %144, %117
  %147 = phi i64 [ %118, %117 ], [ %145, %144 ], !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  %148 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1941
  %149 = load i8, i8* %148, align 1, !dbg !1941, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  %150 = trunc i8 %149 to i3, !dbg !1943
  switch i3 %150, label %186 [
    i3 -4, label %178
    i3 1, label %151
    i3 2, label %159
    i3 3, label %169
  ], !dbg !1943

; <label>:151:                                    ; preds = %146
  %152 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1944
  %153 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !1945
  %154 = load i8, i8* %153, align 1, !dbg !1945, !tbaa !304
  %155 = zext i8 %154 to i64, !dbg !1946
  %156 = load i8, i8* %152, align 1, !dbg !1947, !tbaa !304
  %157 = zext i8 %156 to i64, !dbg !1948
  %158 = sub nsw i64 %155, %157, !dbg !1949
  br label %186

; <label>:159:                                    ; preds = %146
  %160 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1950
  %161 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1951
  %162 = bitcast i8* %161 to i16*, !dbg !1951
  %163 = load i16, i16* %162, align 1, !dbg !1951, !tbaa !311
  %164 = zext i16 %163 to i64, !dbg !1952
  %165 = bitcast i8* %160 to i16*, !dbg !1953
  %166 = load i16, i16* %165, align 1, !dbg !1953, !tbaa !311
  %167 = zext i16 %166 to i64, !dbg !1954
  %168 = sub nsw i64 %164, %167, !dbg !1955
  br label %186

; <label>:169:                                    ; preds = %146
  %170 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1956
  %171 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1957
  %172 = bitcast i8* %171 to i32*, !dbg !1957
  %173 = load i32, i32* %172, align 1, !dbg !1957, !tbaa !260
  %174 = bitcast i8* %170 to i32*, !dbg !1958
  %175 = load i32, i32* %174, align 1, !dbg !1958, !tbaa !260
  %176 = sub i32 %173, %175, !dbg !1959
  %177 = zext i32 %176 to i64, !dbg !1960
  br label %186

; <label>:178:                                    ; preds = %146
  %179 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !1961
  %180 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1962
  %181 = bitcast i8* %180 to i64*, !dbg !1962
  %182 = load i64, i64* %181, align 1, !dbg !1962, !tbaa !324
  %183 = bitcast i8* %179 to i64*, !dbg !1963
  %184 = load i64, i64* %183, align 1, !dbg !1963, !tbaa !324
  %185 = sub i64 %182, %184, !dbg !1964
  br label %186

; <label>:186:                                    ; preds = %146, %151, %159, %169, %178
  %187 = phi i64 [ %185, %178 ], [ %177, %169 ], [ %168, %159 ], [ %158, %151 ], [ 0, %146 ], !dbg !1965
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1966
  %188 = icmp ult i64 %187, %147, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  br i1 %188, label %189, label %192, !dbg !1968

; <label>:189:                                    ; preds = %186
  %190 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %147) #8, !dbg !1969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  %191 = getelementptr inbounds i8, i8* %190, i64 -1, !dbg !1972
  br label %192, !dbg !1971

; <label>:192:                                    ; preds = %189, %186
  %193 = phi i8* [ %191, %189 ], [ %148, %186 ], !dbg !1972
  %194 = phi i8* [ %190, %189 ], [ %95, %186 ], !dbg !1983
  %195 = getelementptr inbounds i8, i8* %194, i64 %47, !dbg !1984
  %196 = call i8* @memcpy(i8* %195, i8* %115, i64 %147) #7, !dbg !1985
  %197 = load i8, i8* %193, align 1, !dbg !1972, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  %198 = trunc i8 %197 to i3, !dbg !1989
  switch i3 %198, label %227 [
    i3 0, label %199
    i3 1, label %204
    i3 2, label %209
    i3 3, label %215
    i3 -4, label %221
  ], !dbg !1989

; <label>:199:                                    ; preds = %192
  %200 = trunc i64 %147 to i8, !dbg !1991
  %201 = shl i8 %200, 3, !dbg !1992
  %202 = add i8 %197, %201, !dbg !1992
  %203 = and i8 %202, -8, !dbg !1992
  store i8 %203, i8* %193, align 1, !dbg !1993, !tbaa !304
  br label %226, !dbg !1994

; <label>:204:                                    ; preds = %192
  %205 = getelementptr inbounds i8, i8* %194, i64 -3, !dbg !1995
  %206 = load i8, i8* %205, align 1, !dbg !1996, !tbaa !304
  %207 = trunc i64 %147 to i8, !dbg !1996
  %208 = add i8 %206, %207, !dbg !1996
  store i8 %208, i8* %205, align 1, !dbg !1996, !tbaa !304
  br label %226, !dbg !1997

; <label>:209:                                    ; preds = %192
  %210 = getelementptr inbounds i8, i8* %194, i64 -5, !dbg !1998
  %211 = bitcast i8* %210 to i16*, !dbg !1999
  %212 = load i16, i16* %211, align 1, !dbg !2000, !tbaa !311
  %213 = trunc i64 %147 to i16, !dbg !2000
  %214 = add i16 %212, %213, !dbg !2000
  store i16 %214, i16* %211, align 1, !dbg !2000, !tbaa !311
  br label %226, !dbg !2001

; <label>:215:                                    ; preds = %192
  %216 = getelementptr inbounds i8, i8* %194, i64 -9, !dbg !2002
  %217 = bitcast i8* %216 to i32*, !dbg !2003
  %218 = load i32, i32* %217, align 1, !dbg !2004, !tbaa !260
  %219 = trunc i64 %147 to i32, !dbg !2004
  %220 = add i32 %218, %219, !dbg !2004
  store i32 %220, i32* %217, align 1, !dbg !2004, !tbaa !260
  br label %226, !dbg !2005

; <label>:221:                                    ; preds = %192
  %222 = getelementptr inbounds i8, i8* %194, i64 -17, !dbg !2006
  %223 = bitcast i8* %222 to i64*, !dbg !2007
  %224 = load i64, i64* %223, align 1, !dbg !2008, !tbaa !324
  %225 = add i64 %224, %147, !dbg !2008
  store i64 %225, i64* %223, align 1, !dbg !2008, !tbaa !324
  br label %226, !dbg !2009

; <label>:226:                                    ; preds = %221, %215, %209, %204, %199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  br label %227, !dbg !2010

; <label>:227:                                    ; preds = %226, %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  %228 = add i64 %147, %47, !dbg !2011
  br label %585, !dbg !2012

; <label>:229:                                    ; preds = %97, %97
  %230 = icmp eq i8 %99, 105, !dbg !2013
  %231 = load i32, i32* %36, align 16, !dbg !2015
  %232 = icmp ult i32 %231, 41, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br i1 %230, label %233, label %247, !dbg !2016

; <label>:233:                                    ; preds = %229
  br i1 %232, label %234, label %239, !dbg !2017

; <label>:234:                                    ; preds = %233
  %235 = load i8*, i8** %37, align 16, !dbg !2017
  %236 = sext i32 %231 to i64, !dbg !2017
  %237 = getelementptr i8, i8* %235, i64 %236, !dbg !2017
  %238 = add i32 %231, 8, !dbg !2017
  store i32 %238, i32* %36, align 16, !dbg !2017
  br label %242, !dbg !2017

; <label>:239:                                    ; preds = %233
  %240 = load i8*, i8** %38, align 8, !dbg !2017
  %241 = getelementptr i8, i8* %240, i64 8, !dbg !2017
  store i8* %241, i8** %38, align 8, !dbg !2017
  br label %242, !dbg !2017

; <label>:242:                                    ; preds = %239, %234
  %243 = phi i8* [ %237, %234 ], [ %240, %239 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2017
  %244 = bitcast i8* %243 to i32*, !dbg !2017
  %245 = load i32, i32* %244, align 4, !dbg !2017
  %246 = sext i32 %245 to i64, !dbg !2017
  br label %260, !dbg !2019

; <label>:247:                                    ; preds = %229
  br i1 %232, label %248, label %253, !dbg !2020

; <label>:248:                                    ; preds = %247
  %249 = load i8*, i8** %37, align 16, !dbg !2020
  %250 = sext i32 %231 to i64, !dbg !2020
  %251 = getelementptr i8, i8* %249, i64 %250, !dbg !2020
  %252 = add i32 %231, 8, !dbg !2020
  store i32 %252, i32* %36, align 16, !dbg !2020
  br label %256, !dbg !2020

; <label>:253:                                    ; preds = %247
  %254 = load i8*, i8** %38, align 8, !dbg !2020
  %255 = getelementptr i8, i8* %254, i64 8, !dbg !2020
  store i8* %255, i8** %38, align 8, !dbg !2020
  br label %256, !dbg !2020

; <label>:256:                                    ; preds = %253, %248
  %257 = phi i8* [ %251, %248 ], [ %254, %253 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  %258 = bitcast i8* %257 to i64*, !dbg !2020
  %259 = load i64, i64* %258, align 8, !dbg !2020
  br label %260

; <label>:260:                                    ; preds = %256, %242
  %261 = phi i64 [ %246, %242 ], [ %259, %256 ], !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %39) #5, !dbg !2021
  %262 = icmp slt i64 %261, 0, !dbg !2026
  %263 = sub nsw i64 0, %261, !dbg !2027
  %264 = select i1 %262, i64 %263, i64 %261, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  br label %265, !dbg !2031

; <label>:265:                                    ; preds = %265, %260
  %266 = phi i64 [ 0, %260 ], [ %272, %265 ]
  %267 = phi i64 [ %264, %260 ], [ %273, %265 ], !dbg !2032
  %268 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %266, !dbg !2029
  %269 = urem i64 %267, 10, !dbg !2033
  %270 = trunc i64 %269 to i8, !dbg !2034
  %271 = or i8 %270, 48, !dbg !2034
  %272 = add nuw nsw i64 %266, 1, !dbg !2035
  store i8 %271, i8* %268, align 1, !dbg !2036, !tbaa !304
  %273 = udiv i64 %267, 10, !dbg !2037
  %274 = icmp ugt i64 %267, 9, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %274, label %265, label %275, !dbg !2038, !llvm.loop !1537

; <label>:275:                                    ; preds = %265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br i1 %262, label %276, label %279, !dbg !2039

; <label>:276:                                    ; preds = %275
  %277 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %272, !dbg !2030
  %278 = add nuw nsw i64 %266, 2, !dbg !2040
  store i8 45, i8* %277, align 1, !dbg !2041, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2042
  br label %279, !dbg !2042

; <label>:279:                                    ; preds = %276, %275
  %280 = phi i8 [ 45, %276 ], [ %271, %275 ]
  %281 = phi i64 [ %278, %276 ], [ %272, %275 ]
  %282 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %281, !dbg !2030
  store i8 0, i8* %282, align 1, !dbg !2044, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  %283 = icmp sgt i64 %281, 1, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  br i1 %283, label %284, label %298, !dbg !2045

; <label>:284:                                    ; preds = %279
  %285 = add nsw i64 %281, -1, !dbg !2047
  %286 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %285, !dbg !2023
  %287 = load i8, i8* %39, align 16, !dbg !2048, !tbaa !304
  store i8 %280, i8* %39, align 16, !dbg !2050, !tbaa !304
  store i8 %287, i8* %286, align 1, !dbg !2051, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  %288 = getelementptr inbounds i8, i8* %286, i64 -1, !dbg !2047
  %289 = icmp ult i8* %42, %288, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  br i1 %289, label %290, label %298, !dbg !2045, !llvm.loop !1557

; <label>:290:                                    ; preds = %284, %290
  %291 = phi i8* [ %296, %290 ], [ %288, %284 ]
  %292 = phi i8* [ %295, %290 ], [ %42, %284 ]
  %293 = load i8, i8* %291, align 1, !dbg !2052, !tbaa !304
  %294 = load i8, i8* %292, align 1, !dbg !2048, !tbaa !304
  store i8 %293, i8* %292, align 1, !dbg !2050, !tbaa !304
  store i8 %294, i8* %291, align 1, !dbg !2051, !tbaa !304
  %295 = getelementptr inbounds i8, i8* %292, i64 1, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  %296 = getelementptr inbounds i8, i8* %291, i64 -1, !dbg !2047
  %297 = icmp ult i8* %295, %296, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  br i1 %297, label %290, label %298, !dbg !2045, !llvm.loop !1557

; <label>:298:                                    ; preds = %290, %284, %279
  %299 = trunc i64 %281 to i32, !dbg !2054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  %300 = shl i64 %281, 32, !dbg !2056
  %301 = ashr exact i64 %300, 32, !dbg !2056
  %302 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2060
  %303 = load i8, i8* %302, align 1, !dbg !2060, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  %304 = trunc i8 %303 to i3, !dbg !2062
  switch i3 %304, label %340 [
    i3 -4, label %332
    i3 1, label %305
    i3 2, label %313
    i3 3, label %323
  ], !dbg !2062

; <label>:305:                                    ; preds = %298
  %306 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2063
  %307 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !2064
  %308 = load i8, i8* %307, align 1, !dbg !2064, !tbaa !304
  %309 = zext i8 %308 to i64, !dbg !2065
  %310 = load i8, i8* %306, align 1, !dbg !2066, !tbaa !304
  %311 = zext i8 %310 to i64, !dbg !2067
  %312 = sub nsw i64 %309, %311, !dbg !2068
  br label %340

; <label>:313:                                    ; preds = %298
  %314 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2069
  %315 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2070
  %316 = bitcast i8* %315 to i16*, !dbg !2070
  %317 = load i16, i16* %316, align 1, !dbg !2070, !tbaa !311
  %318 = zext i16 %317 to i64, !dbg !2071
  %319 = bitcast i8* %314 to i16*, !dbg !2072
  %320 = load i16, i16* %319, align 1, !dbg !2072, !tbaa !311
  %321 = zext i16 %320 to i64, !dbg !2073
  %322 = sub nsw i64 %318, %321, !dbg !2074
  br label %340

; <label>:323:                                    ; preds = %298
  %324 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2075
  %325 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2076
  %326 = bitcast i8* %325 to i32*, !dbg !2076
  %327 = load i32, i32* %326, align 1, !dbg !2076, !tbaa !260
  %328 = bitcast i8* %324 to i32*, !dbg !2077
  %329 = load i32, i32* %328, align 1, !dbg !2077, !tbaa !260
  %330 = sub i32 %327, %329, !dbg !2078
  %331 = zext i32 %330 to i64, !dbg !2079
  br label %340

; <label>:332:                                    ; preds = %298
  %333 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2080
  %334 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2081
  %335 = bitcast i8* %334 to i64*, !dbg !2081
  %336 = load i64, i64* %335, align 1, !dbg !2081, !tbaa !324
  %337 = bitcast i8* %333 to i64*, !dbg !2082
  %338 = load i64, i64* %337, align 1, !dbg !2082, !tbaa !324
  %339 = sub i64 %336, %338, !dbg !2083
  br label %340

; <label>:340:                                    ; preds = %298, %305, %313, %323, %332
  %341 = phi i64 [ %339, %332 ], [ %331, %323 ], [ %322, %313 ], [ %312, %305 ], [ 0, %298 ], !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  %342 = icmp ult i64 %341, %301, !dbg !2086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2087
  br i1 %342, label %343, label %346, !dbg !2087

; <label>:343:                                    ; preds = %340
  %344 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %301) #8, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  %345 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !2091
  br label %346, !dbg !2090

; <label>:346:                                    ; preds = %343, %340
  %347 = phi i8* [ %345, %343 ], [ %302, %340 ], !dbg !2091
  %348 = phi i8* [ %344, %343 ], [ %95, %340 ], !dbg !1983
  %349 = getelementptr inbounds i8, i8* %348, i64 %47, !dbg !2093
  %350 = call i8* @memcpy(i8* %349, i8* nonnull %39, i64 %301) #7, !dbg !2094
  %351 = load i8, i8* %347, align 1, !dbg !2091, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  %352 = trunc i8 %351 to i3, !dbg !2098
  switch i3 %352, label %380 [
    i3 0, label %353
    i3 1, label %358
    i3 2, label %363
    i3 3, label %369
    i3 -4, label %374
  ], !dbg !2098

; <label>:353:                                    ; preds = %346
  %354 = trunc i64 %281 to i8, !dbg !2100
  %355 = shl i8 %354, 3, !dbg !2100
  %356 = add i8 %351, %355, !dbg !2100
  %357 = and i8 %356, -8, !dbg !2100
  store i8 %357, i8* %347, align 1, !dbg !2101, !tbaa !304
  br label %379, !dbg !2102

; <label>:358:                                    ; preds = %346
  %359 = getelementptr inbounds i8, i8* %348, i64 -3, !dbg !2103
  %360 = load i8, i8* %359, align 1, !dbg !2104, !tbaa !304
  %361 = trunc i64 %301 to i8, !dbg !2104
  %362 = add i8 %360, %361, !dbg !2104
  store i8 %362, i8* %359, align 1, !dbg !2104, !tbaa !304
  br label %379, !dbg !2105

; <label>:363:                                    ; preds = %346
  %364 = getelementptr inbounds i8, i8* %348, i64 -5, !dbg !2106
  %365 = bitcast i8* %364 to i16*, !dbg !2107
  %366 = load i16, i16* %365, align 1, !dbg !2108, !tbaa !311
  %367 = trunc i64 %301 to i16, !dbg !2108
  %368 = add i16 %366, %367, !dbg !2108
  store i16 %368, i16* %365, align 1, !dbg !2108, !tbaa !311
  br label %379, !dbg !2109

; <label>:369:                                    ; preds = %346
  %370 = getelementptr inbounds i8, i8* %348, i64 -9, !dbg !2110
  %371 = bitcast i8* %370 to i32*, !dbg !2111
  %372 = load i32, i32* %371, align 1, !dbg !2112, !tbaa !260
  %373 = add i32 %372, %299, !dbg !2112
  store i32 %373, i32* %371, align 1, !dbg !2112, !tbaa !260
  br label %379, !dbg !2113

; <label>:374:                                    ; preds = %346
  %375 = getelementptr inbounds i8, i8* %348, i64 -17, !dbg !2114
  %376 = bitcast i8* %375 to i64*, !dbg !2115
  %377 = load i64, i64* %376, align 1, !dbg !2116, !tbaa !324
  %378 = add i64 %377, %301, !dbg !2116
  store i64 %378, i64* %376, align 1, !dbg !2116, !tbaa !324
  br label %379, !dbg !2117

; <label>:379:                                    ; preds = %374, %369, %363, %358, %353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2118
  br label %380, !dbg !2119

; <label>:380:                                    ; preds = %379, %346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %381 = add i64 %301, %47, !dbg !2120
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %39) #5, !dbg !2121
  br label %585, !dbg !2122

; <label>:382:                                    ; preds = %97, %97
  %383 = icmp eq i8 %99, 117, !dbg !2123
  %384 = load i32, i32* %36, align 16, !dbg !2125
  %385 = icmp ult i32 %384, 41, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %383, label %386, label %400, !dbg !2126

; <label>:386:                                    ; preds = %382
  br i1 %385, label %387, label %392, !dbg !2127

; <label>:387:                                    ; preds = %386
  %388 = load i8*, i8** %37, align 16, !dbg !2127
  %389 = sext i32 %384 to i64, !dbg !2127
  %390 = getelementptr i8, i8* %388, i64 %389, !dbg !2127
  %391 = add i32 %384, 8, !dbg !2127
  store i32 %391, i32* %36, align 16, !dbg !2127
  br label %395, !dbg !2127

; <label>:392:                                    ; preds = %386
  %393 = load i8*, i8** %38, align 8, !dbg !2127
  %394 = getelementptr i8, i8* %393, i64 8, !dbg !2127
  store i8* %394, i8** %38, align 8, !dbg !2127
  br label %395, !dbg !2127

; <label>:395:                                    ; preds = %392, %387
  %396 = phi i8* [ %390, %387 ], [ %393, %392 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  %397 = bitcast i8* %396 to i32*, !dbg !2127
  %398 = load i32, i32* %397, align 4, !dbg !2127
  %399 = zext i32 %398 to i64, !dbg !2127
  br label %413, !dbg !2129

; <label>:400:                                    ; preds = %382
  br i1 %385, label %401, label %406, !dbg !2130

; <label>:401:                                    ; preds = %400
  %402 = load i8*, i8** %37, align 16, !dbg !2130
  %403 = sext i32 %384 to i64, !dbg !2130
  %404 = getelementptr i8, i8* %402, i64 %403, !dbg !2130
  %405 = add i32 %384, 8, !dbg !2130
  store i32 %405, i32* %36, align 16, !dbg !2130
  br label %409, !dbg !2130

; <label>:406:                                    ; preds = %400
  %407 = load i8*, i8** %38, align 8, !dbg !2130
  %408 = getelementptr i8, i8* %407, i64 8, !dbg !2130
  store i8* %408, i8** %38, align 8, !dbg !2130
  br label %409, !dbg !2130

; <label>:409:                                    ; preds = %406, %401
  %410 = phi i8* [ %404, %401 ], [ %407, %406 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  %411 = bitcast i8* %410 to i64*, !dbg !2130
  %412 = load i64, i64* %411, align 8, !dbg !2130
  br label %413

; <label>:413:                                    ; preds = %409, %395
  %414 = phi i64 [ %399, %395 ], [ %412, %409 ], !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %40) #5, !dbg !2131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  br label %415, !dbg !2137

; <label>:415:                                    ; preds = %415, %413
  %416 = phi i64 [ 0, %413 ], [ %422, %415 ]
  %417 = phi i64 [ %414, %413 ], [ %423, %415 ]
  %418 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %416, !dbg !2135
  %419 = urem i64 %417, 10, !dbg !2138
  %420 = trunc i64 %419 to i8, !dbg !2139
  %421 = or i8 %420, 48, !dbg !2139
  %422 = add nuw nsw i64 %416, 1, !dbg !2140
  store i8 %421, i8* %418, align 1, !dbg !2141, !tbaa !304
  %423 = udiv i64 %417, 10, !dbg !2142
  %424 = icmp ugt i64 %417, 9, !dbg !2143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  br i1 %424, label %415, label %425, !dbg !2143, !llvm.loop !1581

; <label>:425:                                    ; preds = %415
  %426 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %416, !dbg !2135
  %427 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %422, !dbg !2136
  store i8 0, i8* %427, align 1, !dbg !2145, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  %428 = icmp eq i64 %416, 0, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %428, label %441, label %429, !dbg !2146

; <label>:429:                                    ; preds = %425
  %430 = load i8, i8* %40, align 16, !dbg !2148, !tbaa !304
  store i8 %421, i8* %40, align 16, !dbg !2150, !tbaa !304
  store i8 %430, i8* %426, align 1, !dbg !2151, !tbaa !304
  %431 = getelementptr inbounds i8, i8* %426, i64 -1, !dbg !2152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  %432 = icmp ult i8* %41, %431, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %432, label %433, label %441, !dbg !2146, !llvm.loop !1592

; <label>:433:                                    ; preds = %429, %433
  %434 = phi i8* [ %439, %433 ], [ %431, %429 ]
  %435 = phi i8* [ %438, %433 ], [ %41, %429 ]
  %436 = load i8, i8* %434, align 1, !dbg !2153, !tbaa !304
  %437 = load i8, i8* %435, align 1, !dbg !2148, !tbaa !304
  store i8 %436, i8* %435, align 1, !dbg !2150, !tbaa !304
  store i8 %437, i8* %434, align 1, !dbg !2151, !tbaa !304
  %438 = getelementptr inbounds i8, i8* %435, i64 1, !dbg !2154
  %439 = getelementptr inbounds i8, i8* %434, i64 -1, !dbg !2152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  %440 = icmp ult i8* %438, %439, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %440, label %433, label %441, !dbg !2146, !llvm.loop !1592

; <label>:441:                                    ; preds = %433, %429, %425
  %442 = trunc i64 %422 to i32, !dbg !2155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  %443 = shl i64 %422, 32, !dbg !2157
  %444 = ashr exact i64 %443, 32, !dbg !2157
  %445 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2161
  %446 = load i8, i8* %445, align 1, !dbg !2161, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2163
  %447 = trunc i8 %446 to i3, !dbg !2163
  switch i3 %447, label %483 [
    i3 -4, label %475
    i3 1, label %448
    i3 2, label %456
    i3 3, label %466
  ], !dbg !2163

; <label>:448:                                    ; preds = %441
  %449 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2164
  %450 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !2165
  %451 = load i8, i8* %450, align 1, !dbg !2165, !tbaa !304
  %452 = zext i8 %451 to i64, !dbg !2166
  %453 = load i8, i8* %449, align 1, !dbg !2167, !tbaa !304
  %454 = zext i8 %453 to i64, !dbg !2168
  %455 = sub nsw i64 %452, %454, !dbg !2169
  br label %483

; <label>:456:                                    ; preds = %441
  %457 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2170
  %458 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2171
  %459 = bitcast i8* %458 to i16*, !dbg !2171
  %460 = load i16, i16* %459, align 1, !dbg !2171, !tbaa !311
  %461 = zext i16 %460 to i64, !dbg !2172
  %462 = bitcast i8* %457 to i16*, !dbg !2173
  %463 = load i16, i16* %462, align 1, !dbg !2173, !tbaa !311
  %464 = zext i16 %463 to i64, !dbg !2174
  %465 = sub nsw i64 %461, %464, !dbg !2175
  br label %483

; <label>:466:                                    ; preds = %441
  %467 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2176
  %468 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2177
  %469 = bitcast i8* %468 to i32*, !dbg !2177
  %470 = load i32, i32* %469, align 1, !dbg !2177, !tbaa !260
  %471 = bitcast i8* %467 to i32*, !dbg !2178
  %472 = load i32, i32* %471, align 1, !dbg !2178, !tbaa !260
  %473 = sub i32 %470, %472, !dbg !2179
  %474 = zext i32 %473 to i64, !dbg !2180
  br label %483

; <label>:475:                                    ; preds = %441
  %476 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2181
  %477 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2182
  %478 = bitcast i8* %477 to i64*, !dbg !2182
  %479 = load i64, i64* %478, align 1, !dbg !2182, !tbaa !324
  %480 = bitcast i8* %476 to i64*, !dbg !2183
  %481 = load i64, i64* %480, align 1, !dbg !2183, !tbaa !324
  %482 = sub i64 %479, %481, !dbg !2184
  br label %483

; <label>:483:                                    ; preds = %441, %448, %456, %466, %475
  %484 = phi i64 [ %482, %475 ], [ %474, %466 ], [ %465, %456 ], [ %455, %448 ], [ 0, %441 ], !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  %485 = icmp ult i64 %484, %444, !dbg !2187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  br i1 %485, label %486, label %489, !dbg !2188

; <label>:486:                                    ; preds = %483
  %487 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %444) #8, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  %488 = getelementptr inbounds i8, i8* %487, i64 -1, !dbg !2192
  br label %489, !dbg !2191

; <label>:489:                                    ; preds = %486, %483
  %490 = phi i8* [ %488, %486 ], [ %445, %483 ], !dbg !2192
  %491 = phi i8* [ %487, %486 ], [ %95, %483 ], !dbg !1983
  %492 = getelementptr inbounds i8, i8* %491, i64 %47, !dbg !2194
  %493 = call i8* @memcpy(i8* %492, i8* nonnull %40, i64 %444) #7, !dbg !2195
  %494 = load i8, i8* %490, align 1, !dbg !2192, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  %495 = trunc i8 %494 to i3, !dbg !2199
  switch i3 %495, label %523 [
    i3 0, label %496
    i3 1, label %501
    i3 2, label %506
    i3 3, label %512
    i3 -4, label %517
  ], !dbg !2199

; <label>:496:                                    ; preds = %489
  %497 = trunc i64 %422 to i8, !dbg !2201
  %498 = shl i8 %497, 3, !dbg !2201
  %499 = add i8 %494, %498, !dbg !2201
  %500 = and i8 %499, -8, !dbg !2201
  store i8 %500, i8* %490, align 1, !dbg !2202, !tbaa !304
  br label %522, !dbg !2203

; <label>:501:                                    ; preds = %489
  %502 = getelementptr inbounds i8, i8* %491, i64 -3, !dbg !2204
  %503 = load i8, i8* %502, align 1, !dbg !2205, !tbaa !304
  %504 = trunc i64 %444 to i8, !dbg !2205
  %505 = add i8 %503, %504, !dbg !2205
  store i8 %505, i8* %502, align 1, !dbg !2205, !tbaa !304
  br label %522, !dbg !2206

; <label>:506:                                    ; preds = %489
  %507 = getelementptr inbounds i8, i8* %491, i64 -5, !dbg !2207
  %508 = bitcast i8* %507 to i16*, !dbg !2208
  %509 = load i16, i16* %508, align 1, !dbg !2209, !tbaa !311
  %510 = trunc i64 %444 to i16, !dbg !2209
  %511 = add i16 %509, %510, !dbg !2209
  store i16 %511, i16* %508, align 1, !dbg !2209, !tbaa !311
  br label %522, !dbg !2210

; <label>:512:                                    ; preds = %489
  %513 = getelementptr inbounds i8, i8* %491, i64 -9, !dbg !2211
  %514 = bitcast i8* %513 to i32*, !dbg !2212
  %515 = load i32, i32* %514, align 1, !dbg !2213, !tbaa !260
  %516 = add i32 %515, %442, !dbg !2213
  store i32 %516, i32* %514, align 1, !dbg !2213, !tbaa !260
  br label %522, !dbg !2214

; <label>:517:                                    ; preds = %489
  %518 = getelementptr inbounds i8, i8* %491, i64 -17, !dbg !2215
  %519 = bitcast i8* %518 to i64*, !dbg !2216
  %520 = load i64, i64* %519, align 1, !dbg !2217, !tbaa !324
  %521 = add i64 %520, %444, !dbg !2217
  store i64 %521, i64* %519, align 1, !dbg !2217, !tbaa !324
  br label %522, !dbg !2218

; <label>:522:                                    ; preds = %517, %512, %506, %501, %496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  br label %523, !dbg !2220

; <label>:523:                                    ; preds = %522, %489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  %524 = add i64 %444, %47, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %40) #5, !dbg !2222
  br label %585, !dbg !2223

; <label>:525:                                    ; preds = %97
  %526 = add nsw i64 %47, 1, !dbg !2224
  %527 = getelementptr inbounds i8, i8* %95, i64 %47, !dbg !2225
  store i8 %99, i8* %527, align 1, !dbg !2226, !tbaa !304
  %528 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2230
  %529 = load i8, i8* %528, align 1, !dbg !2230, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  %530 = trunc i8 %529 to i3, !dbg !2232
  switch i3 %530, label %554 [
    i3 0, label %531
    i3 1, label %534
    i3 2, label %538
    i3 3, label %543
    i3 -4, label %548
  ], !dbg !2232

; <label>:531:                                    ; preds = %525
  %532 = add i8 %529, 8, !dbg !2234
  %533 = and i8 %532, -8, !dbg !2234
  store i8 %533, i8* %528, align 1, !dbg !2235, !tbaa !304
  br label %553, !dbg !2236

; <label>:534:                                    ; preds = %525
  %535 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2237
  %536 = load i8, i8* %535, align 1, !dbg !2238, !tbaa !304
  %537 = add i8 %536, 1, !dbg !2238
  store i8 %537, i8* %535, align 1, !dbg !2238, !tbaa !304
  br label %553, !dbg !2239

; <label>:538:                                    ; preds = %525
  %539 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2240
  %540 = bitcast i8* %539 to i16*, !dbg !2241
  %541 = load i16, i16* %540, align 1, !dbg !2242, !tbaa !311
  %542 = add i16 %541, 1, !dbg !2242
  store i16 %542, i16* %540, align 1, !dbg !2242, !tbaa !311
  br label %553, !dbg !2243

; <label>:543:                                    ; preds = %525
  %544 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2244
  %545 = bitcast i8* %544 to i32*, !dbg !2245
  %546 = load i32, i32* %545, align 1, !dbg !2246, !tbaa !260
  %547 = add i32 %546, 1, !dbg !2246
  store i32 %547, i32* %545, align 1, !dbg !2246, !tbaa !260
  br label %553, !dbg !2247

; <label>:548:                                    ; preds = %525
  %549 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2248
  %550 = bitcast i8* %549 to i64*, !dbg !2249
  %551 = load i64, i64* %550, align 1, !dbg !2250, !tbaa !324
  %552 = add i64 %551, 1, !dbg !2250
  store i64 %552, i64* %550, align 1, !dbg !2250, !tbaa !324
  br label %553, !dbg !2251

; <label>:553:                                    ; preds = %548, %543, %538, %534, %531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  br label %554, !dbg !2252

; <label>:554:                                    ; preds = %553, %525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2252
  br label %585, !dbg !2253

; <label>:555:                                    ; preds = %93
  %556 = add nsw i64 %47, 1, !dbg !2254
  %557 = getelementptr inbounds i8, i8* %95, i64 %47, !dbg !2255
  store i8 %94, i8* %557, align 1, !dbg !2256, !tbaa !304
  %558 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2260
  %559 = load i8, i8* %558, align 1, !dbg !2260, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  %560 = trunc i8 %559 to i3, !dbg !2262
  switch i3 %560, label %584 [
    i3 0, label %561
    i3 1, label %564
    i3 2, label %568
    i3 3, label %573
    i3 -4, label %578
  ], !dbg !2262

; <label>:561:                                    ; preds = %555
  %562 = add i8 %559, 8, !dbg !2264
  %563 = and i8 %562, -8, !dbg !2264
  store i8 %563, i8* %558, align 1, !dbg !2265, !tbaa !304
  br label %583, !dbg !2266

; <label>:564:                                    ; preds = %555
  %565 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2267
  %566 = load i8, i8* %565, align 1, !dbg !2268, !tbaa !304
  %567 = add i8 %566, 1, !dbg !2268
  store i8 %567, i8* %565, align 1, !dbg !2268, !tbaa !304
  br label %583, !dbg !2269

; <label>:568:                                    ; preds = %555
  %569 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2270
  %570 = bitcast i8* %569 to i16*, !dbg !2271
  %571 = load i16, i16* %570, align 1, !dbg !2272, !tbaa !311
  %572 = add i16 %571, 1, !dbg !2272
  store i16 %572, i16* %570, align 1, !dbg !2272, !tbaa !311
  br label %583, !dbg !2273

; <label>:573:                                    ; preds = %555
  %574 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2274
  %575 = bitcast i8* %574 to i32*, !dbg !2275
  %576 = load i32, i32* %575, align 1, !dbg !2276, !tbaa !260
  %577 = add i32 %576, 1, !dbg !2276
  store i32 %577, i32* %575, align 1, !dbg !2276, !tbaa !260
  br label %583, !dbg !2277

; <label>:578:                                    ; preds = %555
  %579 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2278
  %580 = bitcast i8* %579 to i64*, !dbg !2279
  %581 = load i64, i64* %580, align 1, !dbg !2280, !tbaa !324
  %582 = add i64 %581, 1, !dbg !2280
  store i64 %582, i64* %580, align 1, !dbg !2280, !tbaa !324
  br label %583, !dbg !2281

; <label>:583:                                    ; preds = %578, %573, %568, %564, %561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  br label %584, !dbg !2283

; <label>:584:                                    ; preds = %583, %555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2283
  br label %585, !dbg !2284

; <label>:585:                                    ; preds = %227, %380, %523, %554, %584
  %586 = phi i64 [ %526, %554 ], [ %524, %523 ], [ %381, %380 ], [ %228, %227 ], [ %556, %584 ], !dbg !2282
  %587 = phi i8* [ %98, %554 ], [ %98, %523 ], [ %98, %380 ], [ %98, %227 ], [ %46, %584 ], !dbg !1858
  %588 = phi i8* [ %95, %554 ], [ %491, %523 ], [ %348, %380 ], [ %194, %227 ], [ %95, %584 ], !dbg !1983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  %589 = getelementptr inbounds i8, i8* %587, i64 1, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %590 = load i8, i8* %589, align 1, !dbg !1867, !tbaa !304
  %591 = icmp eq i8 %590, 0, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %591, label %592, label %43, !dbg !1866, !llvm.loop !2286

; <label>:592:                                    ; preds = %585, %30
  %593 = phi i64 [ %31, %30 ], [ %586, %585 ], !dbg !1935
  %594 = phi i8* [ %0, %30 ], [ %588, %585 ]
  call void @llvm.va_end(i8* nonnull %32), !dbg !2288
  %595 = getelementptr inbounds i8, i8* %594, i64 %593, !dbg !2289
  store i8 0, i8* %595, align 1, !dbg !2290, !tbaa !304
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %32) #5, !dbg !2291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  ret i8* %594, !dbg !2292
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdstrim(i8* returned, i8*) local_unnamed_addr #0 !dbg !2293 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2308
  %4 = load i8, i8* %3, align 1, !dbg !2308, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  %5 = trunc i8 %4 to i3, !dbg !2310
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2310

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2311
  %8 = zext i8 %7 to i64, !dbg !2311
  br label %27, !dbg !2312

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2313
  %11 = load i8, i8* %10, align 1, !dbg !2314, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !2313
  br label %27, !dbg !2315

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2316
  %15 = bitcast i8* %14 to i16*, !dbg !2317
  %16 = load i16, i16* %15, align 1, !dbg !2317, !tbaa !311
  %17 = zext i16 %16 to i64, !dbg !2316
  br label %27, !dbg !2318

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2319
  %20 = bitcast i8* %19 to i32*, !dbg !2320
  %21 = load i32, i32* %20, align 1, !dbg !2320, !tbaa !260
  %22 = zext i32 %21 to i64, !dbg !2319
  br label %27, !dbg !2321

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2322
  %25 = bitcast i8* %24 to i64*, !dbg !2323
  %26 = load i64, i64* %25, align 1, !dbg !2323, !tbaa !324
  br label %27, !dbg !2324

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  %29 = getelementptr inbounds i8, i8* %0, i64 %28, !dbg !2328
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  %31 = icmp ult i8* %30, %0, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  br i1 %31, label %41, label %32, !dbg !2334

; <label>:32:                                     ; preds = %27, %38
  %33 = phi i8* [ %39, %38 ], [ %0, %27 ]
  %34 = load i8, i8* %33, align 1, !dbg !2335, !tbaa !304
  %35 = sext i8 %34 to i32, !dbg !2335
  %36 = tail call i8* @strchr(i8* %1, i32 %35) #7, !dbg !2336
  %37 = icmp eq i8* %36, null, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br i1 %37, label %41, label %38, !dbg !2332

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  %40 = icmp ugt i8* %39, %30, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  br i1 %40, label %41, label %32, !dbg !2334, !llvm.loop !2338

; <label>:41:                                     ; preds = %38, %32, %27
  %42 = phi i8* [ %0, %27 ], [ %33, %32 ], [ %39, %38 ], !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  %43 = icmp ugt i8* %30, %42, !dbg !2340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  br i1 %43, label %44, label %53, !dbg !2341

; <label>:44:                                     ; preds = %41, %50
  %45 = phi i8* [ %51, %50 ], [ %30, %41 ]
  %46 = load i8, i8* %45, align 1, !dbg !2342, !tbaa !304
  %47 = sext i8 %46 to i32, !dbg !2342
  %48 = tail call i8* @strchr(i8* %1, i32 %47) #7, !dbg !2343
  %49 = icmp eq i8* %48, null, !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  br i1 %49, label %53, label %50, !dbg !2339

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  %52 = icmp ugt i8* %51, %42, !dbg !2340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  br i1 %52, label %44, label %53, !dbg !2341, !llvm.loop !2345

; <label>:53:                                     ; preds = %50, %44, %41
  %54 = phi i8* [ %30, %41 ], [ %45, %44 ], [ %51, %50 ], !dbg !2326
  %55 = icmp ugt i8* %42, %54, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %55, label %61, label %56, !dbg !2347

; <label>:56:                                     ; preds = %53
  %57 = ptrtoint i8* %54 to i64, !dbg !2348
  %58 = ptrtoint i8* %42 to i64, !dbg !2348
  %59 = sub i64 1, %58, !dbg !2348
  %60 = add i64 %59, %57, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br label %61, !dbg !2347

; <label>:61:                                     ; preds = %53, %56
  %62 = phi i64 [ %60, %56 ], [ 0, %53 ], !dbg !2347
  %63 = icmp eq i8* %42, %0, !dbg !2351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2353
  br i1 %63, label %66, label %64, !dbg !2353

; <label>:64:                                     ; preds = %61
  %65 = tail call i8* @memmove(i8* %0, i8* %42, i64 %62) #7, !dbg !2354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2354
  br label %66, !dbg !2354

; <label>:66:                                     ; preds = %61, %64
  %67 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2355
  store i8 0, i8* %67, align 1, !dbg !2356, !tbaa !304
  %68 = load i8, i8* %3, align 1, !dbg !2360, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %69 = trunc i8 %68 to i3, !dbg !2362
  switch i3 %69, label %88 [
    i3 0, label %70
    i3 1, label %73
    i3 2, label %76
    i3 3, label %80
    i3 -4, label %84
  ], !dbg !2362

; <label>:70:                                     ; preds = %66
  %71 = trunc i64 %62 to i8, !dbg !2364
  %72 = shl i8 %71, 3, !dbg !2364
  store i8 %72, i8* %3, align 1, !dbg !2365, !tbaa !304
  br label %87, !dbg !2366

; <label>:73:                                     ; preds = %66
  %74 = trunc i64 %62 to i8, !dbg !2367
  %75 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2368
  store i8 %74, i8* %75, align 1, !dbg !2369, !tbaa !304
  br label %87, !dbg !2370

; <label>:76:                                     ; preds = %66
  %77 = trunc i64 %62 to i16, !dbg !2371
  %78 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2372
  %79 = bitcast i8* %78 to i16*, !dbg !2373
  store i16 %77, i16* %79, align 1, !dbg !2374, !tbaa !311
  br label %87, !dbg !2375

; <label>:80:                                     ; preds = %66
  %81 = trunc i64 %62 to i32, !dbg !2376
  %82 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2377
  %83 = bitcast i8* %82 to i32*, !dbg !2378
  store i32 %81, i32* %83, align 1, !dbg !2379, !tbaa !260
  br label %87, !dbg !2380

; <label>:84:                                     ; preds = %66
  %85 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2381
  %86 = bitcast i8* %85 to i64*, !dbg !2382
  store i64 %62, i64* %86, align 1, !dbg !2383, !tbaa !324
  br label %87, !dbg !2384

; <label>:87:                                     ; preds = %84, %80, %76, %73, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  br label %88, !dbg !2385

; <label>:88:                                     ; preds = %87, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  ret i8* %0, !dbg !2386
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #0 !dbg !2387 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2401
  %5 = load i8, i8* %4, align 1, !dbg !2401, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  %6 = trunc i8 %5 to i3, !dbg !2403
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2403

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2404
  %9 = zext i8 %8 to i64, !dbg !2404
  br label %29, !dbg !2405

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2406
  %12 = load i8, i8* %11, align 1, !dbg !2407, !tbaa !304
  %13 = zext i8 %12 to i64, !dbg !2406
  br label %29, !dbg !2408

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2409
  %16 = bitcast i8* %15 to i16*, !dbg !2410
  %17 = load i16, i16* %16, align 1, !dbg !2410, !tbaa !311
  %18 = zext i16 %17 to i64, !dbg !2409
  br label %29, !dbg !2411

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2412
  %21 = bitcast i8* %20 to i32*, !dbg !2413
  %22 = load i32, i32* %21, align 1, !dbg !2413, !tbaa !260
  %23 = zext i32 %22 to i64, !dbg !2412
  br label %29, !dbg !2414

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2415
  %26 = bitcast i8* %25 to i64*, !dbg !2416
  %27 = load i64, i64* %26, align 1, !dbg !2416, !tbaa !324
  br label %29, !dbg !2417

; <label>:28:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  br label %97, !dbg !2420

; <label>:29:                                     ; preds = %7, %10, %14, %19, %24
  %30 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2423
  %31 = icmp eq i64 %30, 0, !dbg !2424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  br i1 %31, label %99, label %32, !dbg !2420

; <label>:32:                                     ; preds = %29
  %33 = icmp slt i64 %1, 0, !dbg !2426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  br i1 %33, label %34, label %38, !dbg !2428

; <label>:34:                                     ; preds = %32
  %35 = add i64 %30, %1, !dbg !2429
  %36 = icmp sgt i64 %35, 0, !dbg !2431
  %37 = select i1 %36, i64 %35, i64 0, !dbg !2431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2432
  br label %38, !dbg !2432

; <label>:38:                                     ; preds = %34, %32
  %39 = phi i64 [ %37, %34 ], [ %1, %32 ]
  %40 = icmp slt i64 %2, 0, !dbg !2433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2435
  br i1 %40, label %41, label %45, !dbg !2435

; <label>:41:                                     ; preds = %38
  %42 = add i64 %30, %2, !dbg !2436
  %43 = icmp sgt i64 %42, 0, !dbg !2438
  %44 = select i1 %43, i64 %42, i64 0, !dbg !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  br label %45, !dbg !2439

; <label>:45:                                     ; preds = %41, %38
  %46 = phi i64 [ %44, %41 ], [ %2, %38 ]
  %47 = icmp slt i64 %46, %39, !dbg !2440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  br i1 %47, label %48, label %49, !dbg !2441

; <label>:48:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  br label %64, !dbg !2443

; <label>:49:                                     ; preds = %45
  %50 = sub nsw i64 %46, %39, !dbg !2444
  %51 = add nsw i64 %50, 1, !dbg !2445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  %52 = icmp eq i64 %51, 0, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  br i1 %52, label %64, label %53, !dbg !2443

; <label>:53:                                     ; preds = %49
  %54 = icmp sgt i64 %30, %39, !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  br i1 %54, label %55, label %64, !dbg !2451

; <label>:55:                                     ; preds = %53
  %56 = icmp slt i64 %46, %30, !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2454
  br i1 %56, label %65, label %57, !dbg !2454

; <label>:57:                                     ; preds = %55
  %58 = add i64 %30, -1, !dbg !2455
  %59 = icmp slt i64 %58, %39, !dbg !2457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2458
  br i1 %59, label %62, label %60, !dbg !2458

; <label>:60:                                     ; preds = %57
  %61 = sub i64 %30, %39, !dbg !2459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2458
  br label %62, !dbg !2458

; <label>:62:                                     ; preds = %57, %60
  %63 = phi i64 [ %61, %60 ], [ 0, %57 ], !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  br label %65, !dbg !2460

; <label>:64:                                     ; preds = %49, %48, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %73, !dbg !2461

; <label>:65:                                     ; preds = %55, %62
  %66 = phi i64 [ %63, %62 ], [ %51, %55 ], !dbg !2422
  %67 = icmp ne i64 %39, 0, !dbg !2463
  %68 = icmp ne i64 %66, 0, !dbg !2464
  %69 = and i1 %67, %68, !dbg !2461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  br i1 %69, label %70, label %75, !dbg !2461

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !2465
  %72 = tail call i8* @memmove(i8* nonnull %0, i8* %71, i64 %66) #7, !dbg !2466
  br label %73, !dbg !2466

; <label>:73:                                     ; preds = %70, %64
  %74 = phi i64 [ %66, %70 ], [ 0, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br label %75, !dbg !2468

; <label>:75:                                     ; preds = %73, %65
  %76 = phi i64 [ %66, %65 ], [ %74, %73 ]
  %77 = getelementptr inbounds i8, i8* %0, i64 %76, !dbg !2468
  store i8 0, i8* %77, align 1, !dbg !2469, !tbaa !304
  %78 = load i8, i8* %4, align 1, !dbg !2473, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  %79 = trunc i8 %78 to i3, !dbg !2475
  switch i3 %79, label %98 [
    i3 0, label %80
    i3 1, label %83
    i3 2, label %86
    i3 3, label %90
    i3 -4, label %94
  ], !dbg !2475

; <label>:80:                                     ; preds = %75
  %81 = trunc i64 %76 to i8, !dbg !2477
  %82 = shl i8 %81, 3, !dbg !2477
  store i8 %82, i8* %4, align 1, !dbg !2478, !tbaa !304
  br label %97, !dbg !2479

; <label>:83:                                     ; preds = %75
  %84 = trunc i64 %76 to i8, !dbg !2480
  %85 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2481
  store i8 %84, i8* %85, align 1, !dbg !2482, !tbaa !304
  br label %97, !dbg !2483

; <label>:86:                                     ; preds = %75
  %87 = trunc i64 %76 to i16, !dbg !2484
  %88 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2485
  %89 = bitcast i8* %88 to i16*, !dbg !2486
  store i16 %87, i16* %89, align 1, !dbg !2487, !tbaa !311
  br label %97, !dbg !2488

; <label>:90:                                     ; preds = %75
  %91 = trunc i64 %76 to i32, !dbg !2489
  %92 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2490
  %93 = bitcast i8* %92 to i32*, !dbg !2491
  store i32 %91, i32* %93, align 1, !dbg !2492, !tbaa !260
  br label %97, !dbg !2493

; <label>:94:                                     ; preds = %75
  %95 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2494
  %96 = bitcast i8* %95 to i64*, !dbg !2495
  store i64 %76, i64* %96, align 1, !dbg !2496, !tbaa !324
  br label %97, !dbg !2497

; <label>:97:                                     ; preds = %80, %83, %86, %90, %94, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br label %98, !dbg !2422

; <label>:98:                                     ; preds = %97, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br label %99, !dbg !2498

; <label>:99:                                     ; preds = %98, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2499
  ret void, !dbg !2499
}

; Function Attrs: noredzone nounwind
define dso_local void @sdstolower(i8* nocapture) local_unnamed_addr #0 !dbg !2500 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2512
  %3 = load i8, i8* %2, align 1, !dbg !2512, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  %4 = trunc i8 %3 to i3, !dbg !2514
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !2514

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !2515
  %7 = zext i8 %6 to i64, !dbg !2515
  br label %27, !dbg !2516

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2517
  %10 = load i8, i8* %9, align 1, !dbg !2518, !tbaa !304
  %11 = zext i8 %10 to i64, !dbg !2517
  br label %27, !dbg !2519

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2520
  %14 = bitcast i8* %13 to i16*, !dbg !2521
  %15 = load i16, i16* %14, align 1, !dbg !2521, !tbaa !311
  %16 = zext i16 %15 to i64, !dbg !2520
  br label %27, !dbg !2522

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2523
  %19 = bitcast i8* %18 to i32*, !dbg !2524
  %20 = load i32, i32* %19, align 1, !dbg !2524, !tbaa !260
  %21 = zext i32 %20 to i64, !dbg !2523
  br label %27, !dbg !2525

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2526
  %24 = bitcast i8* %23 to i64*, !dbg !2527
  %25 = load i64, i64* %24, align 1, !dbg !2527, !tbaa !324
  br label %27, !dbg !2528

; <label>:26:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  br label %45, !dbg !2534

; <label>:27:                                     ; preds = %5, %8, %12, %17, %22
  %28 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !2535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2533
  %29 = icmp eq i64 %28, 0, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  br i1 %29, label %45, label %30, !dbg !2534

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %43, %30 ], [ 0, %27 ]
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !2538
  %33 = load i8, i8* %32, align 1, !dbg !2538, !tbaa !304
  %34 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2538
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !2538
  %36 = sext i8 %33 to i64, !dbg !2538
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !2538
  %38 = load i8, i8* %37, align 1, !dbg !2538, !tbaa !304
  %39 = and i8 %38, 3, !dbg !2538
  %40 = icmp eq i8 %39, 1, !dbg !2538
  %41 = add i8 %33, 32, !dbg !2538
  %42 = select i1 %40, i8 %41, i8 %33, !dbg !2538
  store i8 %42, i8* %32, align 1, !dbg !2539, !tbaa !304
  %43 = add nuw i64 %31, 1, !dbg !2540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  %44 = icmp eq i64 %43, %28, !dbg !2537
  br i1 %44, label %45, label %30, !dbg !2534, !llvm.loop !2542

; <label>:45:                                     ; preds = %30, %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  ret void, !dbg !2544
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdstoupper(i8* nocapture) local_unnamed_addr #0 !dbg !2545 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2557
  %3 = load i8, i8* %2, align 1, !dbg !2557, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  %4 = trunc i8 %3 to i3, !dbg !2559
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !2559

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !2560
  %7 = zext i8 %6 to i64, !dbg !2560
  br label %27, !dbg !2561

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2562
  %10 = load i8, i8* %9, align 1, !dbg !2563, !tbaa !304
  %11 = zext i8 %10 to i64, !dbg !2562
  br label %27, !dbg !2564

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2565
  %14 = bitcast i8* %13 to i16*, !dbg !2566
  %15 = load i16, i16* %14, align 1, !dbg !2566, !tbaa !311
  %16 = zext i16 %15 to i64, !dbg !2565
  br label %27, !dbg !2567

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2568
  %19 = bitcast i8* %18 to i32*, !dbg !2569
  %20 = load i32, i32* %19, align 1, !dbg !2569, !tbaa !260
  %21 = zext i32 %20 to i64, !dbg !2568
  br label %27, !dbg !2570

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2571
  %24 = bitcast i8* %23 to i64*, !dbg !2572
  %25 = load i64, i64* %24, align 1, !dbg !2572, !tbaa !324
  br label %27, !dbg !2573

; <label>:26:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  br label %45, !dbg !2579

; <label>:27:                                     ; preds = %5, %8, %12, %17, %22
  %28 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  %29 = icmp eq i64 %28, 0, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  br i1 %29, label %45, label %30, !dbg !2579

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %43, %30 ], [ 0, %27 ]
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !2583
  %33 = load i8, i8* %32, align 1, !dbg !2583, !tbaa !304
  %34 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2583
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !2583
  %36 = sext i8 %33 to i64, !dbg !2583
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !2583
  %38 = load i8, i8* %37, align 1, !dbg !2583, !tbaa !304
  %39 = and i8 %38, 3, !dbg !2583
  %40 = icmp eq i8 %39, 2, !dbg !2583
  %41 = add i8 %33, -32, !dbg !2583
  %42 = select i1 %40, i8 %41, i8 %33, !dbg !2583
  store i8 %42, i8* %32, align 1, !dbg !2584, !tbaa !304
  %43 = add nuw i64 %31, 1, !dbg !2585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  %44 = icmp eq i64 %43, %28, !dbg !2582
  br i1 %44, label %45, label %30, !dbg !2579, !llvm.loop !2587

; <label>:45:                                     ; preds = %30, %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  ret void, !dbg !2589
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #0 !dbg !2590 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2604
  %4 = load i8, i8* %3, align 1, !dbg !2604, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2606
  %5 = trunc i8 %4 to i3, !dbg !2606
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2606

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2607
  %8 = zext i8 %7 to i64, !dbg !2607
  br label %27, !dbg !2608

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2609
  %11 = load i8, i8* %10, align 1, !dbg !2610, !tbaa !304
  %12 = zext i8 %11 to i64, !dbg !2609
  br label %27, !dbg !2611

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2612
  %15 = bitcast i8* %14 to i16*, !dbg !2613
  %16 = load i16, i16* %15, align 1, !dbg !2613, !tbaa !311
  %17 = zext i16 %16 to i64, !dbg !2612
  br label %27, !dbg !2614

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2615
  %20 = bitcast i8* %19 to i32*, !dbg !2616
  %21 = load i32, i32* %20, align 1, !dbg !2616, !tbaa !260
  %22 = zext i32 %21 to i64, !dbg !2615
  br label %27, !dbg !2617

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2618
  %25 = bitcast i8* %24 to i64*, !dbg !2619
  %26 = load i64, i64* %25, align 1, !dbg !2619, !tbaa !324
  br label %27, !dbg !2620

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  %29 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2627
  %30 = load i8, i8* %29, align 1, !dbg !2627, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  %31 = trunc i8 %30 to i3, !dbg !2629
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !2629

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !2630
  %34 = zext i8 %33 to i64, !dbg !2630
  br label %53, !dbg !2631

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2632
  %37 = load i8, i8* %36, align 1, !dbg !2633, !tbaa !304
  %38 = zext i8 %37 to i64, !dbg !2632
  br label %53, !dbg !2634

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2635
  %41 = bitcast i8* %40 to i16*, !dbg !2636
  %42 = load i16, i16* %41, align 1, !dbg !2636, !tbaa !311
  %43 = zext i16 %42 to i64, !dbg !2635
  br label %53, !dbg !2637

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2638
  %46 = bitcast i8* %45 to i32*, !dbg !2639
  %47 = load i32, i32* %46, align 1, !dbg !2639, !tbaa !260
  %48 = zext i32 %47 to i64, !dbg !2638
  br label %53, !dbg !2640

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2641
  %51 = bitcast i8* %50 to i64*, !dbg !2642
  %52 = load i64, i64* %51, align 1, !dbg !2642, !tbaa !324
  br label %53, !dbg !2643

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2645
  %55 = icmp ult i64 %28, %54, !dbg !2647
  %56 = select i1 %55, i64 %28, i64 %54, !dbg !2648
  %57 = tail call i32 @memcmp(i8* nonnull %0, i8* nonnull %1, i64 %56) #7, !dbg !2650
  %58 = icmp eq i32 %57, 0, !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  br i1 %58, label %59, label %63, !dbg !2654

; <label>:59:                                     ; preds = %53
  %60 = icmp ugt i64 %28, %54, !dbg !2655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2656
  br i1 %60, label %63, label %61, !dbg !2656

; <label>:61:                                     ; preds = %59
  %62 = sext i1 %55 to i32, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2656
  br label %63, !dbg !2656

; <label>:63:                                     ; preds = %53, %61, %59
  %64 = phi i32 [ %62, %61 ], [ 1, %59 ], [ %57, %53 ], !dbg !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  ret i32 %64, !dbg !2659
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitlen(i8*, i64, i8*, i32, i32* nocapture) local_unnamed_addr #0 !dbg !2660 {
  %6 = icmp slt i32 %3, 1, !dbg !2692
  %7 = icmp slt i64 %1, 0, !dbg !2694
  %8 = or i1 %7, %6, !dbg !2695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %8, label %120, label %9, !dbg !2695

; <label>:9:                                      ; preds = %5
  %10 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2698, !tbaa !186
  %11 = icmp eq %struct.uk_alloc* %10, null, !dbg !2702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  br i1 %11, label %12, label %14, !dbg !2703, !prof !256

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #7, !dbg !2704
  store i32 12, i32* %13, align 4, !dbg !2705, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br label %120, !dbg !2710

; <label>:14:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  %15 = bitcast %struct.uk_alloc* %10 to i8* (%struct.uk_alloc*, i64)**, !dbg !2715
  %16 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %15, align 8, !dbg !2715, !tbaa !186
  %17 = tail call i8* %16(%struct.uk_alloc* nonnull %10, i64 40) #7, !dbg !2716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  %18 = bitcast i8* %17 to i8**, !dbg !2719
  %19 = icmp eq i8* %17, null, !dbg !2720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br i1 %19, label %120, label %20, !dbg !2710

; <label>:20:                                     ; preds = %14
  %21 = icmp eq i64 %1, 0, !dbg !2722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  br i1 %21, label %22, label %23, !dbg !2724

; <label>:22:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !2725, !tbaa !260
  br label %120, !dbg !2727

; <label>:23:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  %24 = add nsw i32 %3, -1, !dbg !2730
  %25 = sext i32 %24 to i64, !dbg !2731
  %26 = sub nsw i64 %1, %25, !dbg !2732
  %27 = icmp sgt i64 %26, 0, !dbg !2733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br i1 %27, label %28, label %87, !dbg !2734

; <label>:28:                                     ; preds = %23
  %29 = icmp eq i32 %3, 1
  %30 = sext i32 %3 to i64
  br label %31, !dbg !2734

; <label>:31:                                     ; preds = %28, %81
  %32 = phi i8** [ %18, %28 ], [ %61, %81 ]
  %33 = phi i8* [ %17, %28 ], [ %60, %81 ]
  %34 = phi i8* [ %17, %28 ], [ %59, %81 ]
  %35 = phi i64 [ 0, %28 ], [ %85, %81 ]
  %36 = phi i64 [ 0, %28 ], [ %83, %81 ]
  %37 = phi i32 [ 5, %28 ], [ %58, %81 ]
  %38 = phi i32 [ 0, %28 ], [ %82, %81 ]
  %39 = add nsw i32 %38, 2, !dbg !2735
  %40 = icmp slt i32 %37, %39, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %40, label %41, label %57, !dbg !2737

; <label>:41:                                     ; preds = %31
  %42 = shl nsw i32 %37, 1, !dbg !2738
  %43 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2741, !tbaa !186
  %44 = icmp eq %struct.uk_alloc* %43, null, !dbg !2745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2746
  br i1 %44, label %45, label %47, !dbg !2746, !prof !256

; <label>:45:                                     ; preds = %41
  %46 = tail call i32* @__errno() #7, !dbg !2747
  store i32 12, i32* %46, align 4, !dbg !2748, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2752
  br label %56, !dbg !2752

; <label>:47:                                     ; preds = %41
  %48 = sext i32 %42 to i64, !dbg !2753
  %49 = shl nsw i64 %48, 3, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  %50 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %43, i64 0, i32 2, !dbg !2762
  %51 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %50, align 8, !dbg !2762, !tbaa !186
  %52 = tail call i8* %51(%struct.uk_alloc* nonnull %43, i8* %33, i64 %49) #7, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  %53 = icmp eq i8* %52, null, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2752
  br i1 %53, label %56, label %54, !dbg !2752

; <label>:54:                                     ; preds = %47
  %55 = bitcast i8* %52 to i8**, !dbg !2768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %57

; <label>:56:                                     ; preds = %47, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %100

; <label>:57:                                     ; preds = %54, %31
  %58 = phi i32 [ %37, %31 ], [ %42, %54 ], !dbg !2772
  %59 = phi i8* [ %34, %31 ], [ %52, %54 ], !dbg !2773
  %60 = phi i8* [ %33, %31 ], [ %52, %54 ], !dbg !2773
  %61 = phi i8** [ %32, %31 ], [ %55, %54 ], !dbg !2773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  %62 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !2776
  br i1 %29, label %63, label %67, !dbg !2774

; <label>:63:                                     ; preds = %57
  %64 = load i8, i8* %62, align 1, !dbg !2777, !tbaa !304
  %65 = load i8, i8* %2, align 1, !dbg !2778, !tbaa !304
  %66 = icmp eq i8 %64, %65, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br i1 %66, label %70, label %67, !dbg !2780

; <label>:67:                                     ; preds = %57, %63
  %68 = tail call i32 @memcmp(i8* %62, i8* %2, i64 %30) #7, !dbg !2781
  %69 = icmp eq i32 %68, 0, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br i1 %69, label %70, label %81, !dbg !2783

; <label>:70:                                     ; preds = %67, %63
  %71 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !2784
  %72 = sub nsw i64 %35, %36, !dbg !2786
  %73 = tail call i8* @sdsnewlen(i8* %71, i64 %72) #8, !dbg !2787
  %74 = sext i32 %38 to i64, !dbg !2788
  %75 = getelementptr inbounds i8*, i8** %61, i64 %74, !dbg !2788
  store i8* %73, i8** %75, align 8, !dbg !2789, !tbaa !186
  %76 = icmp eq i8* %73, null, !dbg !2790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  br i1 %76, label %100, label %77, !dbg !2792

; <label>:77:                                     ; preds = %70
  %78 = add nsw i32 %38, 1, !dbg !2793
  %79 = add nsw i64 %35, %30, !dbg !2794
  %80 = add nsw i64 %79, -1, !dbg !2795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2796
  br label %81, !dbg !2796

; <label>:81:                                     ; preds = %67, %77
  %82 = phi i32 [ %78, %77 ], [ %38, %67 ], !dbg !2772
  %83 = phi i64 [ %79, %77 ], [ %36, %67 ], !dbg !2772
  %84 = phi i64 [ %80, %77 ], [ %35, %67 ], !dbg !2797
  %85 = add nsw i64 %84, 1, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  %86 = icmp slt i64 %85, %26, !dbg !2733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br i1 %86, label %31, label %87, !dbg !2734, !llvm.loop !2800

; <label>:87:                                     ; preds = %81, %23
  %88 = phi i32 [ 0, %23 ], [ %82, %81 ], !dbg !2802
  %89 = phi i64 [ 0, %23 ], [ %83, %81 ], !dbg !2802
  %90 = phi i8* [ %17, %23 ], [ %59, %81 ], !dbg !2773
  %91 = phi i8** [ %18, %23 ], [ %61, %81 ], !dbg !2773
  %92 = getelementptr inbounds i8, i8* %0, i64 %89, !dbg !2803
  %93 = sub nsw i64 %1, %89, !dbg !2804
  %94 = tail call i8* @sdsnewlen(i8* %92, i64 %93) #8, !dbg !2805
  %95 = sext i32 %88 to i64, !dbg !2806
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95, !dbg !2806
  store i8* %94, i8** %96, align 8, !dbg !2807, !tbaa !186
  %97 = icmp eq i8* %94, null, !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2810
  br i1 %97, label %100, label %98, !dbg !2810

; <label>:98:                                     ; preds = %87
  %99 = add nsw i32 %88, 1, !dbg !2811
  store i32 %99, i32* %4, align 4, !dbg !2812, !tbaa !260
  br label %120, !dbg !2813

; <label>:100:                                    ; preds = %70, %56, %87
  %101 = phi i32 [ %38, %56 ], [ %88, %87 ], [ %38, %70 ]
  %102 = phi i8* [ %34, %56 ], [ %90, %87 ], [ %59, %70 ], !dbg !2773
  %103 = phi i8** [ %32, %56 ], [ %91, %87 ], [ %61, %70 ], !dbg !2773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  %104 = icmp sgt i32 %101, 0, !dbg !2817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2819
  br i1 %104, label %105, label %113, !dbg !2819

; <label>:105:                                    ; preds = %100
  %106 = zext i32 %101 to i64
  br label %107, !dbg !2820

; <label>:107:                                    ; preds = %107, %105
  %108 = phi i64 [ 0, %105 ], [ %111, %107 ]
  %109 = getelementptr inbounds i8*, i8** %103, i64 %108, !dbg !2820
  %110 = load i8*, i8** %109, align 8, !dbg !2820, !tbaa !186
  tail call void @sdsfree(i8* %110) #8, !dbg !2821
  %111 = add nuw nsw i64 %108, 1, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2819
  %112 = icmp eq i64 %111, %106, !dbg !2817
  br i1 %112, label %113, label %107, !dbg !2819, !llvm.loop !2824

; <label>:113:                                    ; preds = %107, %100
  %114 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2828, !tbaa !186
  %115 = icmp eq %struct.uk_alloc* %114, null, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2836
  br i1 %115, label %116, label %117, !dbg !2836, !prof !256

; <label>:116:                                    ; preds = %113
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2837
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2837
  unreachable

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %114, i64 0, i32 5, !dbg !2838
  %119 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %118, align 8, !dbg !2838, !tbaa !186
  tail call void %119(%struct.uk_alloc* nonnull %114, i8* %102) #7, !dbg !2839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2842
  store i32 0, i32* %4, align 4, !dbg !2843, !tbaa !260
  br label %120

; <label>:120:                                    ; preds = %14, %12, %5, %117, %98, %22
  %121 = phi i8** [ %18, %22 ], [ null, %117 ], [ %91, %98 ], [ null, %5 ], [ null, %12 ], [ null, %14 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  ret i8** %121, !dbg !2844
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfreesplitres(i8**, i32) local_unnamed_addr #0 !dbg !2845 {
  %3 = icmp eq i8** %0, null, !dbg !2853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2855
  br i1 %3, label %22, label %4, !dbg !2855

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32 %1, 0, !dbg !2856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2856
  br i1 %5, label %14, label %6, !dbg !2856

; <label>:6:                                      ; preds = %4
  %7 = sext i32 %1 to i64, !dbg !2857
  br label %8, !dbg !2857

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ %7, %6 ], [ %10, %8 ]
  %10 = add nsw i64 %9, -1, !dbg !2857
  %11 = getelementptr inbounds i8*, i8** %0, i64 %10, !dbg !2858
  %12 = load i8*, i8** %11, align 8, !dbg !2858, !tbaa !186
  tail call void @sdsfree(i8* %12) #8, !dbg !2859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2856
  %13 = icmp eq i64 %10, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2856
  br i1 %13, label %14, label %8, !dbg !2856, !llvm.loop !2860

; <label>:14:                                     ; preds = %8, %4
  %15 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2862, !tbaa !186
  %16 = icmp eq %struct.uk_alloc* %15, null, !dbg !2868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2869
  br i1 %16, label %17, label %18, !dbg !2869, !prof !256

; <label>:17:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2870
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2870
  unreachable

; <label>:18:                                     ; preds = %14
  %19 = bitcast i8** %0 to i8*, !dbg !2871
  %20 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %15, i64 0, i32 5, !dbg !2875
  %21 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %20, align 8, !dbg !2875, !tbaa !186
  tail call void %21(%struct.uk_alloc* nonnull %15, i8* %19) #7, !dbg !2876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br label %22, !dbg !2880

; <label>:22:                                     ; preds = %2, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  ret void, !dbg !2880
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatrepr(i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2881 {
  %4 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #8, !dbg !2889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  %5 = icmp eq i64 %2, 0, !dbg !2890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br i1 %5, label %44, label %6, !dbg !2890

; <label>:6:                                      ; preds = %3, %40
  %7 = phi i64 [ %10, %40 ], [ %2, %3 ]
  %8 = phi i8* [ %42, %40 ], [ %1, %3 ]
  %9 = phi i8* [ %41, %40 ], [ %4, %3 ]
  %10 = add i64 %7, -1, !dbg !2891
  %11 = load i8, i8* %8, align 1, !dbg !2892, !tbaa !304
  %12 = sext i8 %11 to i32, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  switch i32 %12, label %25 [
    i32 92, label %13
    i32 34, label %13
    i32 10, label %15
    i32 13, label %17
    i32 9, label %19
    i32 7, label %21
    i32 8, label %23
  ], !dbg !2894

; <label>:13:                                     ; preds = %6, %6
  %14 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %12) #8, !dbg !2895
  br label %40, !dbg !2897

; <label>:15:                                     ; preds = %6
  %16 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #8, !dbg !2898
  br label %40, !dbg !2899

; <label>:17:                                     ; preds = %6
  %18 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !2900
  br label %40, !dbg !2901

; <label>:19:                                     ; preds = %6
  %20 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2) #8, !dbg !2902
  br label %40, !dbg !2903

; <label>:21:                                     ; preds = %6
  %22 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2) #8, !dbg !2904
  br label %40, !dbg !2905

; <label>:23:                                     ; preds = %6
  %24 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 2) #8, !dbg !2906
  br label %40, !dbg !2907

; <label>:25:                                     ; preds = %6
  %26 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2908
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2908
  %28 = load i8, i8* %8, align 1, !dbg !2908, !tbaa !304
  %29 = sext i8 %28 to i64, !dbg !2908
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !2908
  %31 = load i8, i8* %30, align 1, !dbg !2908, !tbaa !304
  %32 = and i8 %31, -105, !dbg !2908
  %33 = icmp eq i8 %32, 0, !dbg !2908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  br i1 %33, label %37, label %34, !dbg !2910

; <label>:34:                                     ; preds = %25
  %35 = sext i8 %28 to i32, !dbg !2908
  %36 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %35) #8, !dbg !2911
  br label %40, !dbg !2912

; <label>:37:                                     ; preds = %25
  %38 = zext i8 %28 to i32, !dbg !2913
  %39 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %38) #8, !dbg !2914
  br label %40

; <label>:40:                                     ; preds = %34, %37, %23, %21, %19, %17, %15, %13
  %41 = phi i8* [ %36, %34 ], [ %39, %37 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], !dbg !2915
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !2916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  %43 = icmp eq i64 %10, 0, !dbg !2890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br i1 %43, label %44, label %6, !dbg !2890, !llvm.loop !2917

; <label>:44:                                     ; preds = %40, %3
  %45 = phi i8* [ %4, %3 ], [ %41, %40 ], !dbg !2919
  %46 = tail call i8* @sdscatlen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #8, !dbg !2920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2921
  ret i8* %46, !dbg !2921
}

; Function Attrs: noredzone nounwind
define dso_local i32 @is_hex_digit(i8 signext) local_unnamed_addr #0 !dbg !2922 {
  %2 = icmp sgt i8 %0, 47, !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  br i1 %2, label %4, label %3, !dbg !2927

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  br label %10, !dbg !2928

; <label>:4:                                      ; preds = %1
  %5 = icmp slt i8 %0, 58, !dbg !2929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2930
  br i1 %5, label %14, label %6, !dbg !2930

; <label>:6:                                      ; preds = %4
  %7 = icmp sgt i8 %0, 96, !dbg !2931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  br i1 %7, label %8, label %10, !dbg !2928

; <label>:8:                                      ; preds = %6
  %9 = icmp slt i8 %0, 103, !dbg !2932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2933
  br i1 %9, label %14, label %10, !dbg !2933

; <label>:10:                                     ; preds = %3, %8, %6
  %11 = add i8 %0, -65, !dbg !2934
  %12 = icmp ult i8 %11, 6, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  %13 = zext i1 %12 to i32, !dbg !2934
  br label %14, !dbg !2934

; <label>:14:                                     ; preds = %10, %8, %4
  %15 = phi i32 [ 1, %8 ], [ 1, %4 ], [ %13, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  ret i32 %15, !dbg !2935
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hex_digit_to_int(i8 signext) local_unnamed_addr #0 !dbg !2936 {
  %2 = sext i8 %0 to i32, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %3 = add nsw i32 %2, -48, !dbg !2941
  %4 = icmp ult i32 %3, 55, !dbg !2941
  br i1 %4, label %5, label %9, !dbg !2941

; <label>:5:                                      ; preds = %1
  %6 = sext i32 %3 to i64, !dbg !2941
  %7 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table.hex_digit_to_int, i64 0, i64 %6, !dbg !2941
  %8 = load i32, i32* %7, align 4, !dbg !2941
  br label %9, !dbg !2941

; <label>:9:                                      ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ], !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2944
  ret i32 %10, !dbg !2944
}

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitargs(i8*, i32* nocapture) local_unnamed_addr #0 !dbg !2945 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4, !dbg !2975, !tbaa !260
  br label %5, !dbg !2976

; <label>:5:                                      ; preds = %202, %2
  %6 = phi i8* [ %0, %2 ], [ %187, %202 ], !dbg !2972
  %7 = phi i8* [ null, %2 ], [ %203, %202 ], !dbg !2974
  %8 = phi i8** [ null, %2 ], [ %204, %202 ], !dbg !2974
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  %9 = load i8, i8* %6, align 1, !dbg !2978, !tbaa !304
  %10 = icmp eq i8 %9, 0, !dbg !2978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  br i1 %10, label %25, label %11, !dbg !2979

; <label>:11:                                     ; preds = %5, %21
  %12 = phi i8* [ %22, %21 ], [ %6, %5 ]
  %13 = call i8* @__locale_ctype_ptr() #7, !dbg !2980
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2980
  %15 = load i8, i8* %12, align 1, !dbg !2980, !tbaa !304
  %16 = sext i8 %15 to i64, !dbg !2980
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !2980
  %18 = load i8, i8* %17, align 1, !dbg !2980, !tbaa !304
  %19 = and i8 %18, 8, !dbg !2980
  %20 = icmp eq i8 %19, 0, !dbg !2979
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  br i1 %20, label %27, label %21, !dbg !2977

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  %23 = load i8, i8* %22, align 1, !dbg !2978, !tbaa !304
  %24 = icmp eq i8 %23, 0, !dbg !2978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  br i1 %24, label %25, label %11, !dbg !2979, !llvm.loop !2982

; <label>:25:                                     ; preds = %21, %5
  %26 = phi i8* [ %6, %5 ], [ %22, %21 ], !dbg !2983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  br label %27

; <label>:27:                                     ; preds = %11, %25
  %28 = phi i8* [ %26, %25 ], [ %12, %11 ]
  %29 = load i8, i8* %28, align 1, !dbg !2984, !tbaa !304
  %30 = icmp eq i8 %29, 0, !dbg !2984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2985
  br i1 %30, label %213, label %31, !dbg !2985

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %32 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3007, !tbaa !186
  %33 = icmp eq %struct.uk_alloc* %32, null, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3012
  br i1 %33, label %34, label %36, !dbg !3012, !prof !256

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #7, !dbg !3013
  store i32 12, i32* %35, align 4, !dbg !3014, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  br label %45, !dbg !3021

; <label>:36:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3025
  %37 = bitcast %struct.uk_alloc* %32 to i8* (%struct.uk_alloc*, i64)**, !dbg !3026
  %38 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %37, align 8, !dbg !3026, !tbaa !186
  %39 = call i8* %38(%struct.uk_alloc* nonnull %32, i64 4) #7, !dbg !3027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  %40 = icmp eq i8* %39, null, !dbg !3030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  br i1 %40, label %45, label %41, !dbg !3021

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !3031
  %43 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !3033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3035
  store i8 0, i8* %39, align 1, !dbg !3037, !tbaa !304
  %44 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !3038
  store i8 0, i8* %44, align 1, !dbg !3039, !tbaa !304
  store i8 1, i8* %43, align 1, !dbg !3040, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3041
  store i8 0, i8* %42, align 1, !dbg !3042, !tbaa !304
  br label %45, !dbg !3043

; <label>:45:                                     ; preds = %34, %36, %41
  %46 = phi i8* [ %42, %41 ], [ null, %36 ], [ null, %34 ], !dbg !3044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br label %47, !dbg !3048

; <label>:47:                                     ; preds = %45, %186
  %48 = phi i32 [ 0, %45 ], [ %180, %186 ]
  %49 = phi i32 [ 0, %45 ], [ %179, %186 ]
  %50 = phi i8* [ %46, %45 ], [ %178, %186 ]
  %51 = phi i8* [ %28, %45 ], [ %187, %186 ]
  %52 = icmp eq i32 %49, 0, !dbg !3049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3050
  br i1 %52, label %139, label %53, !dbg !3050

; <label>:53:                                     ; preds = %47
  %54 = load i8, i8* %51, align 1, !dbg !3051, !tbaa !304
  %55 = icmp eq i8 %54, 92, !dbg !3052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3053
  br i1 %55, label %56, label %101, !dbg !3053

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3054
  %58 = load i8, i8* %57, align 1, !dbg !3055, !tbaa !304
  %59 = icmp eq i8 %58, 120, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3057
  br i1 %59, label %60, label %101, !dbg !3057

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !3058
  %62 = load i8, i8* %61, align 1, !dbg !3059, !tbaa !304
  %63 = icmp sgt i8 %62, 47, !dbg !3062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3063
  br i1 %63, label %65, label %64, !dbg !3063

; <label>:64:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br label %72, !dbg !3064

; <label>:65:                                     ; preds = %60
  %66 = icmp slt i8 %62, 58, !dbg !3065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3066
  br i1 %66, label %71, label %67, !dbg !3066

; <label>:67:                                     ; preds = %65
  %68 = icmp sgt i8 %62, 96, !dbg !3067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br i1 %68, label %69, label %73, !dbg !3064

; <label>:69:                                     ; preds = %67
  %70 = icmp slt i8 %62, 103, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br i1 %70, label %71, label %72, !dbg !3069

; <label>:71:                                     ; preds = %69, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  br label %76, !dbg !3071

; <label>:72:                                     ; preds = %64, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  br label %101, !dbg !3071

; <label>:73:                                     ; preds = %67
  %74 = add i8 %62, -65, !dbg !3072
  %75 = icmp ugt i8 %74, 5, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  br i1 %75, label %101, label %76, !dbg !3071

; <label>:76:                                     ; preds = %71, %73
  %77 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !3073
  %78 = load i8, i8* %77, align 1, !dbg !3074, !tbaa !304
  %79 = icmp sgt i8 %78, 47, !dbg !3077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3078
  br i1 %79, label %81, label %80, !dbg !3078

; <label>:80:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br label %88, !dbg !3079

; <label>:81:                                     ; preds = %76
  %82 = icmp slt i8 %78, 58, !dbg !3080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3081
  br i1 %82, label %87, label %83, !dbg !3081

; <label>:83:                                     ; preds = %81
  %84 = icmp sgt i8 %78, 96, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br i1 %84, label %85, label %89, !dbg !3079

; <label>:85:                                     ; preds = %83
  %86 = icmp slt i8 %78, 103, !dbg !3083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3084
  br i1 %86, label %87, label %88, !dbg !3084

; <label>:87:                                     ; preds = %85, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3086
  br label %92, !dbg !3086

; <label>:88:                                     ; preds = %80, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3086
  br label %101, !dbg !3086

; <label>:89:                                     ; preds = %83
  %90 = add i8 %78, -65, !dbg !3087
  %91 = icmp ugt i8 %90, 5, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3086
  br i1 %91, label %101, label %92, !dbg !3086

; <label>:92:                                     ; preds = %87, %89
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #5, !dbg !3089
  %93 = load i8, i8* %61, align 1, !dbg !3090, !tbaa !304
  %94 = call i32 @hex_digit_to_int(i8 signext %93) #8, !dbg !3091
  %95 = shl i32 %94, 4, !dbg !3092
  %96 = load i8, i8* %77, align 1, !dbg !3093, !tbaa !304
  %97 = call i32 @hex_digit_to_int(i8 signext %96) #8, !dbg !3094
  %98 = add nsw i32 %97, %95, !dbg !3095
  %99 = trunc i32 %98 to i8, !dbg !3096
  store i8 %99, i8* %3, align 1, !dbg !3097, !tbaa !304
  %100 = call i8* @sdscatlen(i8* %50, i8* nonnull %3, i64 1) #8, !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #5, !dbg !3099
  br label %176, !dbg !3100

; <label>:101:                                    ; preds = %88, %72, %89, %73, %56, %53
  %102 = load i8, i8* %51, align 1, !dbg !3101, !tbaa !304
  %103 = icmp eq i8 %102, 92, !dbg !3102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br i1 %103, label %104, label %119, !dbg !3103

; <label>:104:                                    ; preds = %101
  %105 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3104
  %106 = load i8, i8* %105, align 1, !dbg !3105, !tbaa !304
  %107 = icmp eq i8 %106, 0, !dbg !3105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3106
  br i1 %107, label %119, label %108, !dbg !3106

; <label>:108:                                    ; preds = %104
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5, !dbg !3108
  %109 = load i8, i8* %105, align 1, !dbg !3109, !tbaa !304
  %110 = sext i8 %109 to i32, !dbg !3109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3110
  switch i32 %110, label %116 [
    i32 110, label %111
    i32 114, label %112
    i32 116, label %113
    i32 98, label %114
    i32 97, label %115
  ], !dbg !3110

; <label>:111:                                    ; preds = %108
  store i8 10, i8* %4, align 1, !dbg !3111, !tbaa !304
  br label %117, !dbg !3113

; <label>:112:                                    ; preds = %108
  store i8 13, i8* %4, align 1, !dbg !3114, !tbaa !304
  br label %117, !dbg !3115

; <label>:113:                                    ; preds = %108
  store i8 9, i8* %4, align 1, !dbg !3116, !tbaa !304
  br label %117, !dbg !3117

; <label>:114:                                    ; preds = %108
  store i8 8, i8* %4, align 1, !dbg !3118, !tbaa !304
  br label %117, !dbg !3119

; <label>:115:                                    ; preds = %108
  store i8 7, i8* %4, align 1, !dbg !3120, !tbaa !304
  br label %117, !dbg !3121

; <label>:116:                                    ; preds = %108
  store i8 %109, i8* %4, align 1, !dbg !3122, !tbaa !304
  br label %117, !dbg !3123

; <label>:117:                                    ; preds = %116, %115, %114, %113, %112, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3124
  %118 = call i8* @sdscatlen(i8* %50, i8* nonnull %4, i64 1) #8, !dbg !3125
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5, !dbg !3126
  br label %176, !dbg !3127

; <label>:119:                                    ; preds = %104, %101
  %120 = load i8, i8* %51, align 1, !dbg !3128, !tbaa !304
  %121 = icmp eq i8 %120, 34, !dbg !3130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3131
  br i1 %121, label %122, label %135, !dbg !3131

; <label>:122:                                    ; preds = %119
  %123 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3132
  %124 = load i8, i8* %123, align 1, !dbg !3135, !tbaa !304
  %125 = icmp eq i8 %124, 0, !dbg !3135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  br i1 %125, label %176, label %126, !dbg !3136

; <label>:126:                                    ; preds = %122
  %127 = call i8* @__locale_ctype_ptr() #7, !dbg !3137
  %128 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !3137
  %129 = load i8, i8* %123, align 1, !dbg !3137, !tbaa !304
  %130 = sext i8 %129 to i64, !dbg !3137
  %131 = getelementptr inbounds i8, i8* %128, i64 %130, !dbg !3137
  %132 = load i8, i8* %131, align 1, !dbg !3137, !tbaa !304
  %133 = and i8 %132, 8, !dbg !3137
  %134 = icmp eq i8 %133, 0, !dbg !3137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3138
  br i1 %134, label %209, label %176, !dbg !3138

; <label>:135:                                    ; preds = %119
  %136 = icmp eq i8 %120, 0, !dbg !3139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3141
  br i1 %136, label %209, label %137, !dbg !3141

; <label>:137:                                    ; preds = %135
  %138 = call i8* @sdscatlen(i8* %50, i8* nonnull %51, i64 1) #8, !dbg !3142
  br label %176

; <label>:139:                                    ; preds = %47
  %140 = icmp eq i32 %48, 0, !dbg !3144
  %141 = load i8, i8* %51, align 1, !dbg !3146, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br i1 %140, label %170, label %142, !dbg !3148

; <label>:142:                                    ; preds = %139
  %143 = icmp eq i8 %141, 92, !dbg !3149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  br i1 %143, label %144, label %150, !dbg !3152

; <label>:144:                                    ; preds = %142
  %145 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3153
  %146 = load i8, i8* %145, align 1, !dbg !3154, !tbaa !304
  %147 = icmp eq i8 %146, 39, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3156
  br i1 %147, label %148, label %150, !dbg !3156

; <label>:148:                                    ; preds = %144
  %149 = call i8* @sdscatlen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1) #8, !dbg !3157
  br label %176, !dbg !3159

; <label>:150:                                    ; preds = %144, %142
  %151 = load i8, i8* %51, align 1, !dbg !3160, !tbaa !304
  %152 = icmp eq i8 %151, 39, !dbg !3162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3163
  br i1 %152, label %153, label %166, !dbg !3163

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3164
  %155 = load i8, i8* %154, align 1, !dbg !3167, !tbaa !304
  %156 = icmp eq i8 %155, 0, !dbg !3167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3168
  br i1 %156, label %176, label %157, !dbg !3168

; <label>:157:                                    ; preds = %153
  %158 = call i8* @__locale_ctype_ptr() #7, !dbg !3169
  %159 = getelementptr inbounds i8, i8* %158, i64 1, !dbg !3169
  %160 = load i8, i8* %154, align 1, !dbg !3169, !tbaa !304
  %161 = sext i8 %160 to i64, !dbg !3169
  %162 = getelementptr inbounds i8, i8* %159, i64 %161, !dbg !3169
  %163 = load i8, i8* %162, align 1, !dbg !3169, !tbaa !304
  %164 = and i8 %163, 8, !dbg !3169
  %165 = icmp eq i8 %164, 0, !dbg !3169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3170
  br i1 %165, label %209, label %176, !dbg !3170

; <label>:166:                                    ; preds = %150
  %167 = icmp eq i8 %151, 0, !dbg !3171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3173
  br i1 %167, label %209, label %168, !dbg !3173

; <label>:168:                                    ; preds = %166
  %169 = call i8* @sdscatlen(i8* %50, i8* nonnull %51, i64 1) #8, !dbg !3174
  br label %176

; <label>:170:                                    ; preds = %139
  %171 = sext i8 %141 to i32, !dbg !3146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3176
  switch i32 %171, label %174 [
    i32 32, label %176
    i32 10, label %176
    i32 13, label %176
    i32 9, label %176
    i32 0, label %176
    i32 34, label %172
    i32 39, label %173
  ], !dbg !3176

; <label>:172:                                    ; preds = %170
  br label %176, !dbg !3177

; <label>:173:                                    ; preds = %170
  br label %176, !dbg !3179

; <label>:174:                                    ; preds = %170
  %175 = call i8* @sdscatlen(i8* %50, i8* nonnull %51, i64 1) #8, !dbg !3180
  br label %176, !dbg !3181

; <label>:176:                                    ; preds = %170, %170, %170, %170, %170, %153, %157, %122, %126, %168, %148, %174, %173, %172, %92, %137, %117
  %177 = phi i8* [ %77, %92 ], [ %105, %117 ], [ %51, %137 ], [ %145, %148 ], [ %51, %168 ], [ %51, %174 ], [ %51, %173 ], [ %51, %172 ], [ %51, %126 ], [ %51, %122 ], [ %51, %157 ], [ %51, %153 ], [ %51, %170 ], [ %51, %170 ], [ %51, %170 ], [ %51, %170 ], [ %51, %170 ], !dbg !3182
  %178 = phi i8* [ %100, %92 ], [ %118, %117 ], [ %138, %137 ], [ %149, %148 ], [ %169, %168 ], [ %175, %174 ], [ %50, %173 ], [ %50, %172 ], [ %50, %126 ], [ %50, %122 ], [ %50, %157 ], [ %50, %153 ], [ %50, %170 ], [ %50, %170 ], [ %50, %170 ], [ %50, %170 ], [ %50, %170 ], !dbg !3183
  %179 = phi i32 [ %49, %92 ], [ %49, %117 ], [ %49, %137 ], [ 0, %148 ], [ 0, %168 ], [ 0, %174 ], [ 0, %173 ], [ 1, %172 ], [ %49, %126 ], [ %49, %122 ], [ 0, %157 ], [ 0, %153 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], !dbg !3184
  %180 = phi i32 [ %48, %92 ], [ %48, %117 ], [ %48, %137 ], [ %48, %148 ], [ %48, %168 ], [ 0, %174 ], [ 1, %173 ], [ 0, %172 ], [ %48, %126 ], [ %48, %122 ], [ %48, %157 ], [ %48, %153 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], !dbg !3184
  %181 = phi i32 [ 0, %92 ], [ 0, %117 ], [ 0, %137 ], [ 0, %148 ], [ 0, %168 ], [ 0, %174 ], [ 0, %173 ], [ 0, %172 ], [ 1, %126 ], [ 1, %122 ], [ 1, %157 ], [ 1, %153 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %182 = load i8, i8* %177, align 1, !dbg !3186, !tbaa !304
  %183 = icmp eq i8 %182, 0, !dbg !3186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br i1 %183, label %186, label %184, !dbg !3188

; <label>:184:                                    ; preds = %176
  %185 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !3189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3190
  br label %186, !dbg !3190

; <label>:186:                                    ; preds = %176, %184
  %187 = phi i8* [ %185, %184 ], [ %177, %176 ], !dbg !3191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  %188 = icmp eq i32 %181, 0, !dbg !3192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br i1 %188, label %47, label %189, !dbg !3048, !llvm.loop !3193

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %1, align 4, !dbg !3195, !tbaa !260
  %191 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3198, !tbaa !186
  %192 = icmp eq %struct.uk_alloc* %191, null, !dbg !3202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3203
  br i1 %192, label %193, label %195, !dbg !3203, !prof !256

; <label>:193:                                    ; preds = %189
  %194 = call i32* @__errno() #7, !dbg !3204
  store i32 12, i32* %194, align 4, !dbg !3205, !tbaa !260
  br label %202, !dbg !3206

; <label>:195:                                    ; preds = %189
  %196 = add nsw i32 %190, 1, !dbg !3207
  %197 = sext i32 %196 to i64, !dbg !3208
  %198 = shl nsw i64 %197, 3, !dbg !3209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  %199 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %191, i64 0, i32 2, !dbg !3217
  %200 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %199, align 8, !dbg !3217, !tbaa !186
  %201 = call i8* %200(%struct.uk_alloc* nonnull %191, i8* %7, i64 %198) #7, !dbg !3218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3219
  br label %202, !dbg !3220

; <label>:202:                                    ; preds = %195, %193
  %203 = phi i8* [ null, %193 ], [ %201, %195 ], !dbg !3221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3224
  %204 = bitcast i8* %203 to i8**, !dbg !3225
  %205 = load i32, i32* %1, align 4, !dbg !3226, !tbaa !260
  %206 = sext i32 %205 to i64, !dbg !3227
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206, !dbg !3227
  store i8* %178, i8** %207, align 8, !dbg !3228, !tbaa !186
  %208 = add nsw i32 %205, 1, !dbg !3229
  store i32 %208, i32* %1, align 4, !dbg !3229, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br label %5

; <label>:209:                                    ; preds = %166, %157, %135, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %210 = load i32, i32* %1, align 4, !dbg !3233, !tbaa !260
  %211 = add nsw i32 %210, -1, !dbg !3233
  store i32 %211, i32* %1, align 4, !dbg !3233, !tbaa !260
  %212 = icmp eq i32 %210, 0, !dbg !3234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3234
  br i1 %212, label %235, label %227, !dbg !3234

; <label>:213:                                    ; preds = %27
  %214 = icmp eq i8** %8, null, !dbg !3235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3238
  br i1 %214, label %215, label %259, !dbg !3238

; <label>:215:                                    ; preds = %213
  %216 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3241, !tbaa !186
  %217 = icmp eq %struct.uk_alloc* %216, null, !dbg !3245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3246
  br i1 %217, label %218, label %220, !dbg !3246, !prof !256

; <label>:218:                                    ; preds = %215
  %219 = call i32* @__errno() #7, !dbg !3247
  store i32 12, i32* %219, align 4, !dbg !3248, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br label %225, !dbg !3249

; <label>:220:                                    ; preds = %215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3253
  %221 = bitcast %struct.uk_alloc* %216 to i8* (%struct.uk_alloc*, i64)**, !dbg !3254
  %222 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %221, align 8, !dbg !3254, !tbaa !186
  %223 = call i8* %222(%struct.uk_alloc* nonnull %216, i64 8) #7, !dbg !3255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  %224 = bitcast i8* %223 to i8**, !dbg !3257
  br label %225, !dbg !3257

; <label>:225:                                    ; preds = %218, %220
  %226 = phi i8** [ null, %218 ], [ %224, %220 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3260
  br label %259, !dbg !3260

; <label>:227:                                    ; preds = %209, %227
  %228 = phi i32 [ %233, %227 ], [ %211, %209 ]
  %229 = sext i32 %228 to i64, !dbg !3261
  %230 = getelementptr inbounds i8*, i8** %8, i64 %229, !dbg !3261
  %231 = load i8*, i8** %230, align 8, !dbg !3261, !tbaa !186
  call void @sdsfree(i8* %231) #8, !dbg !3262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3234
  %232 = load i32, i32* %1, align 4, !dbg !3233, !tbaa !260
  %233 = add nsw i32 %232, -1, !dbg !3233
  store i32 %233, i32* %1, align 4, !dbg !3233, !tbaa !260
  %234 = icmp eq i32 %232, 0, !dbg !3234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3234
  br i1 %234, label %235, label %227, !dbg !3234, !llvm.loop !3263

; <label>:235:                                    ; preds = %227, %209
  %236 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3267, !tbaa !186
  %237 = icmp eq %struct.uk_alloc* %236, null, !dbg !3274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3275
  br i1 %237, label %238, label %239, !dbg !3275, !prof !256

; <label>:238:                                    ; preds = %235
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3276
  call void @ukplat_terminate(i32 3) #9, !dbg !3276
  unreachable

; <label>:239:                                    ; preds = %235
  %240 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %236, i64 0, i32 5, !dbg !3277
  %241 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %240, align 8, !dbg !3277, !tbaa !186
  call void %241(%struct.uk_alloc* nonnull %236, i8* %7) #7, !dbg !3278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3281
  %242 = icmp eq i8* %50, null, !dbg !3282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3284
  br i1 %242, label %258, label %243, !dbg !3284

; <label>:243:                                    ; preds = %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %244 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !3288
  %245 = load i8, i8* %244, align 1, !dbg !3288, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3291
  %246 = and i8 %245, 7, !dbg !3291
  %247 = xor i8 %246, 4, !dbg !3291
  %248 = zext i8 %247 to i64, !dbg !3291
  %249 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs, i64 0, i64 %248, !dbg !3291
  %250 = load i64, i64* %249, align 8, !dbg !3291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  %251 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3294, !tbaa !186
  %252 = icmp eq %struct.uk_alloc* %251, null, !dbg !3300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  br i1 %252, label %253, label %254, !dbg !3301, !prof !256

; <label>:253:                                    ; preds = %243
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3302
  call void @ukplat_terminate(i32 3) #9, !dbg !3302
  unreachable

; <label>:254:                                    ; preds = %243
  %255 = getelementptr inbounds i8, i8* %50, i64 %250, !dbg !3303
  %256 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %251, i64 0, i32 5, !dbg !3307
  %257 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %256, align 8, !dbg !3307, !tbaa !186
  call void %257(%struct.uk_alloc* nonnull %251, i8* nonnull %255) #7, !dbg !3308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  br label %258, !dbg !3313

; <label>:258:                                    ; preds = %239, %254
  store i32 0, i32* %1, align 4, !dbg !3314, !tbaa !260
  br label %259, !dbg !3315

; <label>:259:                                    ; preds = %213, %225, %258
  %260 = phi i8** [ null, %258 ], [ %226, %225 ], [ %8, %213 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  ret i8** %260, !dbg !3317
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsmapchars(i8* returned, i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !3318 {
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3335
  %6 = load i8, i8* %5, align 1, !dbg !3335, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3337
  %7 = trunc i8 %6 to i3, !dbg !3337
  switch i3 %7, label %29 [
    i3 0, label %8
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
    i3 -4, label %25
  ], !dbg !3337

; <label>:8:                                      ; preds = %4
  %9 = lshr i8 %6, 3, !dbg !3338
  %10 = zext i8 %9 to i64, !dbg !3338
  br label %30, !dbg !3339

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3340
  %13 = load i8, i8* %12, align 1, !dbg !3341, !tbaa !304
  %14 = zext i8 %13 to i64, !dbg !3340
  br label %30, !dbg !3342

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3343
  %17 = bitcast i8* %16 to i16*, !dbg !3344
  %18 = load i16, i16* %17, align 1, !dbg !3344, !tbaa !311
  %19 = zext i16 %18 to i64, !dbg !3343
  br label %30, !dbg !3345

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3346
  %22 = bitcast i8* %21 to i32*, !dbg !3347
  %23 = load i32, i32* %22, align 1, !dbg !3347, !tbaa !260
  %24 = zext i32 %23 to i64, !dbg !3346
  br label %30, !dbg !3348

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3349
  %27 = bitcast i8* %26 to i64*, !dbg !3350
  %28 = load i64, i64* %27, align 1, !dbg !3350, !tbaa !324
  br label %30, !dbg !3351

; <label>:29:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  br label %54, !dbg !3358

; <label>:30:                                     ; preds = %8, %11, %15, %20, %25
  %31 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], [ %10, %8 ], !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3356
  %32 = icmp eq i64 %31, 0, !dbg !3361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  br i1 %32, label %54, label %33, !dbg !3358

; <label>:33:                                     ; preds = %30
  %34 = icmp eq i64 %3, 0
  br label %35, !dbg !3358

; <label>:35:                                     ; preds = %51, %33
  %36 = phi i64 [ 0, %33 ], [ %52, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3364
  br i1 %34, label %51, label %37, !dbg !3364

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds i8, i8* %0, i64 %36
  %39 = load i8, i8* %38, align 1, !tbaa !304
  br label %40, !dbg !3364

; <label>:40:                                     ; preds = %37, %48
  %41 = phi i64 [ 0, %37 ], [ %49, %48 ]
  %42 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !3367
  %43 = load i8, i8* %42, align 1, !dbg !3367, !tbaa !304
  %44 = icmp eq i8 %39, %43, !dbg !3371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3372
  br i1 %44, label %45, label %48, !dbg !3372

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds i8, i8* %2, i64 %41, !dbg !3373
  %47 = load i8, i8* %46, align 1, !dbg !3373, !tbaa !304
  store i8 %47, i8* %38, align 1, !dbg !3375, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3376
  br label %51, !dbg !3376

; <label>:48:                                     ; preds = %40
  %49 = add nuw i64 %41, 1, !dbg !3377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  %50 = icmp ult i64 %49, %3, !dbg !3379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3364
  br i1 %50, label %40, label %51, !dbg !3364, !llvm.loop !3380

; <label>:51:                                     ; preds = %48, %35, %45
  %52 = add nuw i64 %36, 1, !dbg !3382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  %53 = icmp eq i64 %52, %31, !dbg !3361
  br i1 %53, label %54, label %35, !dbg !3358, !llvm.loop !3384

; <label>:54:                                     ; preds = %51, %29, %30
  ret i8* %0, !dbg !3386
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoin(i8** nocapture readonly, i32, i8*) local_unnamed_addr #0 !dbg !3387 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3415, !tbaa !186
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !3419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3420
  br i1 %5, label %6, label %8, !dbg !3420, !prof !256

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #7, !dbg !3421
  store i32 12, i32* %7, align 4, !dbg !3422, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3429
  br label %17, !dbg !3429

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3433
  %9 = bitcast %struct.uk_alloc* %4 to i8* (%struct.uk_alloc*, i64)**, !dbg !3434
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !3434, !tbaa !186
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 4) #7, !dbg !3435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3428
  %12 = icmp eq i8* %11, null, !dbg !3438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3429
  br i1 %12, label %17, label %13, !dbg !3429

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !3439
  %15 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !3441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3443
  store i8 0, i8* %11, align 1, !dbg !3445, !tbaa !304
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3446
  store i8 0, i8* %16, align 1, !dbg !3447, !tbaa !304
  store i8 1, i8* %15, align 1, !dbg !3448, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3449
  store i8 0, i8* %14, align 1, !dbg !3450, !tbaa !304
  br label %17, !dbg !3451

; <label>:17:                                     ; preds = %6, %8, %13
  %18 = phi i8* [ %14, %13 ], [ null, %8 ], [ null, %6 ], !dbg !3452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  %19 = icmp sgt i32 %1, 0, !dbg !3459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3461
  br i1 %19, label %20, label %39, !dbg !3461

; <label>:20:                                     ; preds = %17
  %21 = add nsw i32 %1, -1
  %22 = zext i32 %21 to i64, !dbg !3461
  %23 = zext i32 %1 to i64
  br label %24, !dbg !3461

; <label>:24:                                     ; preds = %35, %20
  %25 = phi i64 [ 0, %20 ], [ %37, %35 ]
  %26 = phi i8* [ %18, %20 ], [ %36, %35 ]
  %27 = getelementptr inbounds i8*, i8** %0, i64 %25, !dbg !3462
  %28 = load i8*, i8** %27, align 8, !dbg !3462, !tbaa !186
  %29 = tail call i64 @strlen(i8* %28) #7, !dbg !3467
  %30 = tail call i8* @sdscatlen(i8* %26, i8* %28, i64 %29) #7, !dbg !3468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3469
  %31 = icmp eq i64 %25, %22, !dbg !3470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3472
  br i1 %31, label %35, label %32, !dbg !3472

; <label>:32:                                     ; preds = %24
  %33 = tail call i64 @strlen(i8* %2) #7, !dbg !3476
  %34 = tail call i8* @sdscatlen(i8* %30, i8* %2, i64 %33) #7, !dbg !3477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3479
  br label %35, !dbg !3479

; <label>:35:                                     ; preds = %24, %32
  %36 = phi i8* [ %34, %32 ], [ %30, %24 ], !dbg !3480
  %37 = add nuw nsw i64 %25, 1, !dbg !3481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3461
  %38 = icmp eq i64 %37, %23, !dbg !3459
  br i1 %38, label %39, label %24, !dbg !3461, !llvm.loop !3483

; <label>:39:                                     ; preds = %35, %17
  %40 = phi i8* [ %18, %17 ], [ %36, %35 ], !dbg !3485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3486
  ret i8* %40, !dbg !3486
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoinsds(i8** nocapture readonly, i32, i8*, i64) local_unnamed_addr #0 !dbg !3487 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3514
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3517, !tbaa !186
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !3521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3522
  br i1 %6, label %7, label %9, !dbg !3522, !prof !256

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #7, !dbg !3523
  store i32 12, i32* %8, align 4, !dbg !3524, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3531
  br label %18, !dbg !3531

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %10 = bitcast %struct.uk_alloc* %5 to i8* (%struct.uk_alloc*, i64)**, !dbg !3536
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !3536, !tbaa !186
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 4) #7, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  %13 = icmp eq i8* %12, null, !dbg !3540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3531
  br i1 %13, label %18, label %14, !dbg !3531

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !3541
  %16 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  store i8 0, i8* %12, align 1, !dbg !3547, !tbaa !304
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3548
  store i8 0, i8* %17, align 1, !dbg !3549, !tbaa !304
  store i8 1, i8* %16, align 1, !dbg !3550, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3551
  store i8 0, i8* %15, align 1, !dbg !3552, !tbaa !304
  br label %18, !dbg !3553

; <label>:18:                                     ; preds = %7, %9, %14
  %19 = phi i8* [ %15, %14 ], [ null, %9 ], [ null, %7 ], !dbg !3554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3559
  %20 = icmp sgt i32 %1, 0, !dbg !3561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3563
  br i1 %20, label %21, label %64, !dbg !3563

; <label>:21:                                     ; preds = %18
  %22 = add nsw i32 %1, -1
  %23 = zext i32 %22 to i64, !dbg !3563
  %24 = zext i32 %1 to i64
  br label %25, !dbg !3563

; <label>:25:                                     ; preds = %60, %21
  %26 = phi i64 [ 0, %21 ], [ %62, %60 ]
  %27 = phi i8* [ %19, %21 ], [ %61, %60 ]
  %28 = getelementptr inbounds i8*, i8** %0, i64 %26, !dbg !3564
  %29 = load i8*, i8** %28, align 8, !dbg !3564, !tbaa !186
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3571
  %31 = load i8, i8* %30, align 1, !dbg !3571, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3573
  %32 = trunc i8 %31 to i3, !dbg !3573
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !3573

; <label>:33:                                     ; preds = %25
  %34 = lshr i8 %31, 3, !dbg !3574
  %35 = zext i8 %34 to i64, !dbg !3574
  br label %54, !dbg !3575

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3576
  %38 = load i8, i8* %37, align 1, !dbg !3577, !tbaa !304
  %39 = zext i8 %38 to i64, !dbg !3576
  br label %54, !dbg !3578

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3579
  %42 = bitcast i8* %41 to i16*, !dbg !3580
  %43 = load i16, i16* %42, align 1, !dbg !3580, !tbaa !311
  %44 = zext i16 %43 to i64, !dbg !3579
  br label %54, !dbg !3581

; <label>:45:                                     ; preds = %25
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3582
  %47 = bitcast i8* %46 to i32*, !dbg !3583
  %48 = load i32, i32* %47, align 1, !dbg !3583, !tbaa !260
  %49 = zext i32 %48 to i64, !dbg !3582
  br label %54, !dbg !3584

; <label>:50:                                     ; preds = %25
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3585
  %52 = bitcast i8* %51 to i64*, !dbg !3586
  %53 = load i64, i64* %52, align 1, !dbg !3586, !tbaa !324
  br label %54, !dbg !3587

; <label>:54:                                     ; preds = %25, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %25 ], !dbg !3588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3590
  %56 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %29, i64 %55) #7, !dbg !3591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3592
  %57 = icmp eq i64 %26, %23, !dbg !3593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3595
  br i1 %57, label %60, label %58, !dbg !3595

; <label>:58:                                     ; preds = %54
  %59 = tail call i8* @sdscatlen(i8* %56, i8* %2, i64 %3) #8, !dbg !3596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3597
  br label %60, !dbg !3597

; <label>:60:                                     ; preds = %54, %58
  %61 = phi i8* [ %59, %58 ], [ %56, %54 ], !dbg !3589
  %62 = add nuw nsw i64 %26, 1, !dbg !3598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3563
  %63 = icmp eq i64 %62, %24, !dbg !3561
  br i1 %63, label %64, label %25, !dbg !3563, !llvm.loop !3600

; <label>:64:                                     ; preds = %60, %18
  %65 = phi i8* [ %19, %18 ], [ %61, %60 ], !dbg !3602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3603
  ret i8* %65, !dbg !3603
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_malloc(i64) local_unnamed_addr #0 !dbg !3604 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3610, !tbaa !186
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3615
  br i1 %3, label %4, label %6, !dbg !3615, !prof !256

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno() #7, !dbg !3616
  store i32 12, i32* %5, align 4, !dbg !3617, !tbaa !260
  br label %10, !dbg !3618

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  %7 = bitcast %struct.uk_alloc* %2 to i8* (%struct.uk_alloc*, i64)**, !dbg !3623
  %8 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %7, align 8, !dbg !3623, !tbaa !186
  %9 = tail call i8* %8(%struct.uk_alloc* nonnull %2, i64 %0) #7, !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3625
  br label %10, !dbg !3626

; <label>:10:                                     ; preds = %4, %6
  %11 = phi i8* [ null, %4 ], [ %9, %6 ], !dbg !3627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  ret i8* %11, !dbg !3631
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_realloc(i8*, i64) local_unnamed_addr #0 !dbg !3632 {
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3641, !tbaa !186
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !3646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3647
  br i1 %4, label %5, label %7, !dbg !3647, !prof !256

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #7, !dbg !3648
  store i32 12, i32* %6, align 4, !dbg !3649, !tbaa !260
  br label %11, !dbg !3650

; <label>:7:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3655
  %8 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 2, !dbg !3656
  %9 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %8, align 8, !dbg !3656, !tbaa !186
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i8* %0, i64 %1) #7, !dbg !3657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3658
  br label %11, !dbg !3659

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !3660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3664
  ret i8* %12, !dbg !3664
}

; Function Attrs: noredzone nounwind
define dso_local void @sds_free(i8*) local_unnamed_addr #0 !dbg !3665 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3671, !tbaa !186
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3679
  br i1 %3, label %4, label %5, !dbg !3679, !prof !256

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3680
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3680
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %2, i64 0, i32 5, !dbg !3681
  %7 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %6, align 8, !dbg !3681, !tbaa !186
  tail call void %7(%struct.uk_alloc* nonnull %2, i8* %0) #7, !dbg !3682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3686
  ret void, !dbg !3686
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #6 !dbg !72 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !3687
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !3687
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !3689
  call void @llvm.va_start(i8* nonnull %3), !dbg !3689
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.19, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !3690
  call void @llvm.va_end(i8* nonnull %3), !dbg !3693
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !3694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3694
  ret void, !dbg !3694
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SDS_NOINIT", scope: !2, file: !3, line: 42, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !69)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !{!14, !15, !17, !7, !19, !24, !29, !18, !30, !43, !53, !62}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 60, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 105, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 200, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !27, line: 145, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !32, line: 51, size: 24, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34, !37, !38, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !31, file: !32, line: 52, baseType: !35, size: 8)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 24, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !22, line: 43, baseType: !18)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !31, file: !32, line: 53, baseType: !35, size: 8, offset: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !31, file: !32, line: 54, baseType: !18, size: 8, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !31, file: !32, line: 55, baseType: !40, offset: 24)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: -1)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !32, line: 57, size: 40, elements: !45)
!45 = !{!46, !50, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !44, file: !32, line: 58, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !20, line: 36, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !22, line: 57, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !44, file: !32, line: 59, baseType: !47, size: 16, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !32, line: 60, baseType: !18, size: 8, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !44, file: !32, line: 61, baseType: !40, offset: 40)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !32, line: 63, size: 72, elements: !55)
!55 = !{!56, !59, !60, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !32, line: 64, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 48, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !7)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !54, file: !32, line: 65, baseType: !57, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !32, line: 66, baseType: !18, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !54, file: !32, line: 67, baseType: !40, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !32, line: 69, size: 136, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !32, line: 70, baseType: !19, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !32, line: 71, baseType: !19, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !32, line: 72, baseType: !18, size: 8, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !63, file: !32, line: 73, baseType: !40, offset: 136)
!69 = !{!0, !70, !98}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "__str", scope: !72, file: !73, line: 198, type: !95, isLocal: true, isDefinition: true)
!72 = distinct !DISubprogram(name: "uk_pr_crit", scope: !73, file: !73, line: 194, type: !74, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !78)
!73 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, null}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "fmt", arg: 1, scope: !72, file: !73, line: 194, type: !76)
!80 = !DILocalVariable(name: "argp", scope: !72, file: !73, line: 196, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 46, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 51, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 523, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 192, elements: !93)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 519, size: 192, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !87, file: !3, line: 519, baseType: !7, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !87, file: !3, line: 519, baseType: !7, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !87, file: !3, line: 519, baseType: !14, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !87, file: !3, line: 519, baseType: !14, size: 64, offset: 128)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 136, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 17)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "__str", scope: !72, file: !73, line: 198, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 6)
!103 = !{i32 2, !"Dwarf Version", i32 4}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 4}
!106 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!107 = distinct !DISubprogram(name: "sdsnewlen", scope: !3, file: !3, line: 89, type: !108, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !116)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !111, !113}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !32, line: 43, baseType: !15)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 40, baseType: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !27, line: 129, baseType: !23)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !127, !129, !131}
!117 = !DILocalVariable(name: "init", arg: 1, scope: !107, file: !3, line: 89, type: !111)
!118 = !DILocalVariable(name: "initlen", arg: 2, scope: !107, file: !3, line: 89, type: !113)
!119 = !DILocalVariable(name: "sh", scope: !107, file: !3, line: 90, type: !14)
!120 = !DILocalVariable(name: "s", scope: !107, file: !3, line: 91, type: !110)
!121 = !DILocalVariable(name: "type", scope: !107, file: !3, line: 92, type: !16)
!122 = !DILocalVariable(name: "hdrlen", scope: !107, file: !3, line: 96, type: !29)
!123 = !DILocalVariable(name: "fp", scope: !107, file: !3, line: 97, type: !17)
!124 = !DILocalVariable(name: "sh", scope: !125, file: !3, line: 113, type: !30)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 112, column: 26)
!126 = distinct !DILexicalBlock(scope: !107, file: !3, line: 107, column: 18)
!127 = !DILocalVariable(name: "sh", scope: !128, file: !3, line: 120, type: !43)
!128 = distinct !DILexicalBlock(scope: !126, file: !3, line: 119, column: 27)
!129 = !DILocalVariable(name: "sh", scope: !130, file: !3, line: 127, type: !53)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 126, column: 27)
!131 = !DILocalVariable(name: "sh", scope: !132, file: !3, line: 134, type: !62)
!132 = distinct !DILexicalBlock(scope: !126, file: !3, line: 133, column: 27)
!133 = !DILocation(line: 89, column: 27, scope: !107)
!134 = !DILocation(line: 89, column: 40, scope: !107)
!135 = !DILocalVariable(name: "string_size", arg: 1, scope: !136, file: !3, line: 60, type: !113)
!136 = distinct !DISubprogram(name: "sdsReqType", scope: !3, file: !3, line: 60, type: !137, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!16, !113}
!139 = !{!135}
!140 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !141)
!141 = distinct !DILocation(line: 92, column: 17, scope: !107)
!142 = !DILocation(line: 61, column: 21, scope: !143, inlinedAt: !141)
!143 = distinct !DILexicalBlock(scope: !136, file: !3, line: 61, column: 9)
!144 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !141)
!145 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !141)
!146 = !DILocation(line: 63, column: 21, scope: !147, inlinedAt: !141)
!147 = distinct !DILexicalBlock(scope: !136, file: !3, line: 63, column: 9)
!148 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !141)
!149 = !DILocation(line: 64, column: 9, scope: !147, inlinedAt: !141)
!150 = !DILocation(line: 65, column: 21, scope: !151, inlinedAt: !141)
!151 = distinct !DILexicalBlock(scope: !136, file: !3, line: 65, column: 9)
!152 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !141)
!153 = !DILocation(line: 66, column: 9, scope: !151, inlinedAt: !141)
!154 = !DILocation(line: 68, column: 21, scope: !155, inlinedAt: !141)
!155 = distinct !DILexicalBlock(scope: !136, file: !3, line: 68, column: 9)
!156 = !DILocation(line: 68, column: 9, scope: !136, inlinedAt: !141)
!157 = !DILocation(line: 0, scope: !136, inlinedAt: !141)
!158 = !DILocation(line: 69, column: 9, scope: !155, inlinedAt: !141)
!159 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !141)
!160 = !DILocation(line: 92, column: 10, scope: !107)
!161 = !DILocation(line: 95, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !107, file: !3, line: 95, column: 9)
!163 = !DILocation(line: 95, column: 39, scope: !162)
!164 = !DILocation(line: 95, column: 28, scope: !162)
!165 = !DILocalVariable(name: "type", arg: 1, scope: !166, file: !3, line: 44, type: !16)
!166 = distinct !DISubprogram(name: "sdsHdrSize", scope: !3, file: !3, line: 44, type: !167, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!29, !16}
!169 = !{!165}
!170 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !171)
!171 = distinct !DILocation(line: 96, column: 18, scope: !107)
!172 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !171)
!173 = !DILocation(line: 0, scope: !107)
!174 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !171)
!175 = !DILocation(line: 99, column: 25, scope: !107)
!176 = !DILocation(line: 99, column: 33, scope: !107)
!177 = !DILocalVariable(name: "size", arg: 1, scope: !178, file: !179, line: 52, type: !113)
!178 = distinct !DISubprogram(name: "s_malloc", scope: !179, file: !179, line: 52, type: !180, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !182)
!179 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!180 = !DISubroutineType(types: !181)
!181 = !{!14, !113}
!182 = !{!177}
!183 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !184)
!184 = distinct !DILocation(line: 99, column: 10, scope: !107)
!185 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !184)
!186 = !{!187, !187, i64 0}
!187 = !{!"any pointer", !188, i64 0}
!188 = !{!"omnipotent char", !189, i64 0}
!189 = !{!"Simple C/C++ TBAA"}
!190 = !DILocalVariable(name: "a", arg: 1, scope: !191, file: !192, line: 157, type: !195)
!191 = distinct !DISubprogram(name: "uk_malloc", scope: !192, file: !192, line: 157, type: !193, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !248)
!192 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!193 = !DISubroutineType(types: !194)
!194 = !{!14, !195, !113}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !192, line: 77, size: 832, elements: !197)
!197 = !{!198, !201, !206, !211, !217, !219, !224, !225, !226, !231, !236, !241, !242, !243}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !196, file: !192, line: 79, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !192, line: 54, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !196, file: !192, line: 80, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !192, line: 56, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!14, !195, !113, !113}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !196, file: !192, line: 81, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !192, line: 62, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!14, !195, !14, !113}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !196, file: !192, line: 82, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !192, line: 58, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!29, !195, !216, !113, !113}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !196, file: !192, line: 83, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !192, line: 60, baseType: !203)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !196, file: !192, line: 84, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !192, line: 64, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !195, !14}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !196, file: !192, line: 87, baseType: !220, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !196, file: !192, line: 88, baseType: !199, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !196, file: !192, line: 92, baseType: !227, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !192, line: 66, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!14, !195, !23}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !196, file: !192, line: 93, baseType: !232, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !192, line: 68, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !195, !14, !23}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !196, file: !192, line: 99, baseType: !237, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !192, line: 70, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!29, !195, !14, !113}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !196, file: !192, line: 100, baseType: !113, size: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !192, line: 103, baseType: !195, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !196, file: !192, line: 104, baseType: !244, offset: 832)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !41)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !20, line: 20, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !22, line: 41, baseType: !247)
!247 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!248 = !{!190, !249}
!249 = !DILocalVariable(name: "size", arg: 2, scope: !191, file: !192, line: 157, type: !113)
!250 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !251)
!251 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !184)
!252 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !251)
!253 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !251)
!254 = distinct !DILexicalBlock(scope: !191, file: !192, line: 159, column: 6)
!255 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !251)
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !251)
!258 = distinct !DILexicalBlock(scope: !254, file: !192, line: 159, column: 20)
!259 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !251)
!260 = !{!261, !261, i64 0}
!261 = !{!"int", !188, i64 0}
!262 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !251)
!263 = !DILocalVariable(name: "a", arg: 1, scope: !264, file: !192, line: 151, type: !195)
!264 = distinct !DISubprogram(name: "uk_do_malloc", scope: !192, file: !192, line: 151, type: !193, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!265 = !{!263, !266}
!266 = !DILocalVariable(name: "size", arg: 2, scope: !264, file: !192, line: 151, type: !113)
!267 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !268)
!268 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !251)
!269 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !268)
!270 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !268)
!271 = distinct !DILexicalBlock(scope: !264, file: !192, line: 153, column: 2)
!272 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !268)
!273 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !268)
!274 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !268)
!275 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !251)
!276 = !DILocation(line: 0, scope: !191, inlinedAt: !251)
!277 = !DILocation(line: 0, scope: !178, inlinedAt: !184)
!278 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !251)
!279 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !184)
!280 = !DILocation(line: 90, column: 11, scope: !107)
!281 = !DILocation(line: 100, column: 15, scope: !282)
!282 = distinct !DILexicalBlock(scope: !107, file: !3, line: 100, column: 9)
!283 = !DILocation(line: 100, column: 13, scope: !282)
!284 = !DILocation(line: 100, column: 9, scope: !107)
!285 = !DILocation(line: 102, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 102, column: 14)
!287 = !DILocation(line: 102, column: 14, scope: !282)
!288 = !DILocation(line: 103, column: 9, scope: !286)
!289 = !DILocation(line: 0, scope: !282)
!290 = !DILocation(line: 104, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !107, file: !3, line: 104, column: 9)
!292 = !DILocation(line: 104, column: 9, scope: !107)
!293 = !DILocation(line: 105, column: 18, scope: !107)
!294 = !DILocation(line: 91, column: 9, scope: !107)
!295 = !DILocation(line: 106, column: 29, scope: !107)
!296 = !DILocation(line: 97, column: 20, scope: !107)
!297 = !DILocation(line: 107, column: 5, scope: !107)
!298 = !DILocation(line: 109, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !126, file: !3, line: 108, column: 26)
!300 = !DILocation(line: 110, column: 13, scope: !299)
!301 = !DILocation(line: 113, column: 13, scope: !125)
!302 = !DILocation(line: 114, column: 23, scope: !125)
!303 = !DILocation(line: 114, column: 21, scope: !125)
!304 = !{!188, !188, i64 0}
!305 = !DILocation(line: 115, column: 17, scope: !125)
!306 = !DILocation(line: 115, column: 23, scope: !125)
!307 = !DILocation(line: 120, column: 13, scope: !128)
!308 = !DILocation(line: 121, column: 23, scope: !128)
!309 = !DILocation(line: 121, column: 17, scope: !128)
!310 = !DILocation(line: 121, column: 21, scope: !128)
!311 = !{!312, !312, i64 0}
!312 = !{!"short", !188, i64 0}
!313 = !DILocation(line: 122, column: 17, scope: !128)
!314 = !DILocation(line: 122, column: 23, scope: !128)
!315 = !DILocation(line: 127, column: 13, scope: !130)
!316 = !DILocation(line: 128, column: 23, scope: !130)
!317 = !DILocation(line: 128, column: 17, scope: !130)
!318 = !DILocation(line: 128, column: 21, scope: !130)
!319 = !DILocation(line: 129, column: 17, scope: !130)
!320 = !DILocation(line: 129, column: 23, scope: !130)
!321 = !DILocation(line: 134, column: 13, scope: !132)
!322 = !DILocation(line: 135, column: 17, scope: !132)
!323 = !DILocation(line: 135, column: 21, scope: !132)
!324 = !{!325, !325, i64 0}
!325 = !{!"long", !188, i64 0}
!326 = !DILocation(line: 136, column: 17, scope: !132)
!327 = !DILocation(line: 136, column: 23, scope: !132)
!328 = !DILocation(line: 0, scope: !299)
!329 = !DILocation(line: 141, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !107, file: !3, line: 141, column: 9)
!331 = !DILocation(line: 141, column: 20, scope: !330)
!332 = !DILocation(line: 141, column: 17, scope: !330)
!333 = !DILocation(line: 142, column: 9, scope: !330)
!334 = !DILocation(line: 143, column: 5, scope: !107)
!335 = !DILocation(line: 143, column: 16, scope: !107)
!336 = !DILocation(line: 144, column: 5, scope: !107)
!337 = !DILocation(line: 0, scope: !291)
!338 = !DILocation(line: 145, column: 1, scope: !107)
!339 = distinct !DISubprogram(name: "sdsempty", scope: !3, file: !3, line: 149, type: !340, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!110}
!342 = !{}
!343 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !344)
!344 = distinct !DILocation(line: 150, column: 12, scope: !339)
!345 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !346)
!346 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !344)
!347 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !346)
!348 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !346)
!349 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !346)
!350 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !344)
!351 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !352)
!352 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !344)
!353 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !352)
!354 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !352)
!355 = distinct !DILexicalBlock(scope: !166, file: !3, line: 45, column: 32)
!356 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !352)
!357 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !358)
!358 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !344)
!359 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !358)
!360 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !361)
!361 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !358)
!362 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !361)
!363 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !361)
!364 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !361)
!365 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !361)
!366 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !361)
!367 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !361)
!368 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !361)
!369 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !358)
!370 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !344)
!371 = !DILocation(line: 100, column: 9, scope: !107, inlinedAt: !344)
!372 = !DILocation(line: 0, scope: !339)
!373 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !344)
!374 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !375)
!375 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !361)
!376 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !375)
!377 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !375)
!378 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !375)
!379 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !375)
!380 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !375)
!381 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !361)
!382 = !DILocation(line: 104, column: 12, scope: !291, inlinedAt: !344)
!383 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !344)
!384 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !344)
!385 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !344)
!386 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !344)
!387 = !DILocation(line: 107, column: 5, scope: !107, inlinedAt: !344)
!388 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !344)
!389 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !344)
!390 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !344)
!391 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !344)
!392 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !344)
!393 = !DILocation(line: 141, column: 17, scope: !330, inlinedAt: !344)
!394 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !344)
!395 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !344)
!396 = !DILocation(line: 0, scope: !107, inlinedAt: !344)
!397 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !344)
!398 = !DILocation(line: 150, column: 5, scope: !339)
!399 = distinct !DISubprogram(name: "sdsnew", scope: !3, file: !3, line: 154, type: !400, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!110, !76}
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "init", arg: 1, scope: !399, file: !3, line: 154, type: !76)
!404 = !DILocalVariable(name: "initlen", scope: !399, file: !3, line: 155, type: !113)
!405 = !DILocation(line: 154, column: 24, scope: !399)
!406 = !DILocation(line: 155, column: 28, scope: !399)
!407 = !DILocation(line: 155, column: 22, scope: !399)
!408 = !DILocation(line: 155, column: 43, scope: !399)
!409 = !DILocation(line: 155, column: 12, scope: !399)
!410 = !DILocation(line: 156, column: 12, scope: !399)
!411 = !DILocation(line: 156, column: 5, scope: !399)
!412 = distinct !DISubprogram(name: "sdsdup", scope: !3, file: !3, line: 160, type: !413, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !416)
!413 = !DISubroutineType(types: !414)
!414 = !{!110, !415}
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!416 = !{!417}
!417 = !DILocalVariable(name: "s", arg: 1, scope: !412, file: !3, line: 160, type: !415)
!418 = !DILocation(line: 160, column: 22, scope: !412)
!419 = !DILocalVariable(name: "s", arg: 1, scope: !420, file: !32, line: 87, type: !415)
!420 = distinct !DISubprogram(name: "sdslen", scope: !32, file: !32, line: 87, type: !421, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!113, !415}
!423 = !{!419, !424}
!424 = !DILocalVariable(name: "flags", scope: !420, file: !32, line: 88, type: !18)
!425 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !426)
!426 = distinct !DILocation(line: 161, column: 25, scope: !412)
!427 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !426)
!428 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !426)
!429 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !426)
!430 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !426)
!431 = distinct !DILexicalBlock(scope: !420, file: !32, line: 89, column: 33)
!432 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !426)
!433 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !426)
!434 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !426)
!435 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !426)
!436 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !426)
!437 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !426)
!438 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !426)
!439 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !426)
!440 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !426)
!441 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !426)
!442 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !426)
!443 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !426)
!444 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !426)
!445 = !DILocation(line: 0, scope: !431, inlinedAt: !426)
!446 = !DILocation(line: 0, scope: !412)
!447 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !426)
!448 = !DILocation(line: 161, column: 12, scope: !412)
!449 = !DILocation(line: 161, column: 5, scope: !412)
!450 = distinct !DISubprogram(name: "sdsfree", scope: !3, file: !3, line: 165, type: !451, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !110}
!453 = !{!454}
!454 = !DILocalVariable(name: "s", arg: 1, scope: !450, file: !3, line: 165, type: !110)
!455 = !DILocation(line: 165, column: 18, scope: !450)
!456 = !DILocation(line: 166, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !3, line: 166, column: 9)
!458 = !DILocation(line: 166, column: 9, scope: !450)
!459 = !DILocation(line: 167, column: 32, scope: !450)
!460 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !461)
!461 = distinct !DILocation(line: 167, column: 21, scope: !450)
!462 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !461)
!463 = !DILocation(line: 0, scope: !450)
!464 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !461)
!465 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !471)
!466 = distinct !DISubprogram(name: "s_free", scope: !179, file: !179, line: 56, type: !467, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !14}
!469 = !{!470}
!470 = !DILocalVariable(name: "ptr", arg: 1, scope: !466, file: !179, line: 56, type: !14)
!471 = distinct !DILocation(line: 167, column: 5, scope: !450)
!472 = !DILocalVariable(name: "a", arg: 1, scope: !473, file: !192, line: 237, type: !195)
!473 = distinct !DISubprogram(name: "uk_free", scope: !192, file: !192, line: 237, type: !222, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !474)
!474 = !{!472, !475}
!475 = !DILocalVariable(name: "ptr", arg: 2, scope: !473, file: !192, line: 237, type: !14)
!476 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !477)
!477 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !471)
!478 = !DILocalVariable(name: "a", arg: 1, scope: !479, file: !192, line: 231, type: !195)
!479 = distinct !DISubprogram(name: "uk_do_free", scope: !192, file: !192, line: 231, type: !222, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !480)
!480 = !{!478, !481}
!481 = !DILocalVariable(name: "ptr", arg: 2, scope: !479, file: !192, line: 231, type: !14)
!482 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !483)
!483 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !477)
!484 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !483)
!485 = distinct !DILexicalBlock(scope: !486, file: !192, line: 233, column: 2)
!486 = distinct !DILexicalBlock(scope: !479, file: !192, line: 233, column: 2)
!487 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !483)
!488 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !483)
!489 = distinct !DILexicalBlock(scope: !485, file: !192, line: 233, column: 2)
!490 = !DILocation(line: 167, column: 20, scope: !450)
!491 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !483)
!492 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !477)
!493 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !471)
!494 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !483)
!495 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !483)
!496 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !483)
!497 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !477)
!498 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !471)
!499 = !DILocation(line: 168, column: 1, scope: !450)
!500 = distinct !DISubprogram(name: "sdsupdatelen", scope: !3, file: !3, line: 184, type: !451, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !501)
!501 = !{!502, !503}
!502 = !DILocalVariable(name: "s", arg: 1, scope: !500, file: !3, line: 184, type: !110)
!503 = !DILocalVariable(name: "reallen", scope: !500, file: !3, line: 185, type: !113)
!504 = !DILocation(line: 184, column: 23, scope: !500)
!505 = !DILocation(line: 185, column: 22, scope: !500)
!506 = !DILocation(line: 185, column: 12, scope: !500)
!507 = !DILocalVariable(name: "s", arg: 1, scope: !508, file: !32, line: 130, type: !110)
!508 = distinct !DISubprogram(name: "sdssetlen", scope: !32, file: !32, line: 130, type: !509, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !110, !113}
!511 = !{!507, !512, !513, !514}
!512 = !DILocalVariable(name: "newlen", arg: 2, scope: !508, file: !32, line: 130, type: !113)
!513 = !DILocalVariable(name: "flags", scope: !508, file: !32, line: 131, type: !18)
!514 = !DILocalVariable(name: "fp", scope: !515, file: !32, line: 135, type: !17)
!515 = distinct !DILexicalBlock(scope: !516, file: !32, line: 134, column: 13)
!516 = distinct !DILexicalBlock(scope: !508, file: !32, line: 132, column: 33)
!517 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !518)
!518 = distinct !DILocation(line: 186, column: 5, scope: !500)
!519 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !518)
!520 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !518)
!521 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !518)
!522 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !518)
!523 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !518)
!524 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !518)
!525 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !518)
!526 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !518)
!527 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !518)
!528 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !518)
!529 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !518)
!530 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !518)
!531 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !518)
!532 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !518)
!533 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !518)
!534 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !518)
!535 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !518)
!536 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !518)
!537 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !518)
!538 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !518)
!539 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !518)
!540 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !518)
!541 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !518)
!542 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !518)
!543 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !518)
!544 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !518)
!545 = !DILocation(line: 0, scope: !500)
!546 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !518)
!547 = !DILocation(line: 187, column: 1, scope: !500)
!548 = distinct !DISubprogram(name: "sdsclear", scope: !3, file: !3, line: 193, type: !451, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !549)
!549 = !{!550}
!550 = !DILocalVariable(name: "s", arg: 1, scope: !548, file: !3, line: 193, type: !110)
!551 = !DILocation(line: 193, column: 19, scope: !548)
!552 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !553)
!553 = distinct !DILocation(line: 194, column: 5, scope: !548)
!554 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !553)
!555 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !553)
!556 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !553)
!557 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !553)
!558 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !553)
!559 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !553)
!560 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !553)
!561 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !553)
!562 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !553)
!563 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !553)
!564 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !553)
!565 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !553)
!566 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !553)
!567 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !553)
!568 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !553)
!569 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !553)
!570 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !553)
!571 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !553)
!572 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !553)
!573 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !553)
!574 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !553)
!575 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !553)
!576 = !DILocation(line: 0, scope: !548)
!577 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !553)
!578 = !DILocation(line: 195, column: 10, scope: !548)
!579 = !DILocation(line: 196, column: 1, scope: !548)
!580 = distinct !DISubprogram(name: "sdsMakeRoomFor", scope: !3, file: !3, line: 204, type: !581, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!110, !110, !113}
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!584 = !DILocalVariable(name: "s", arg: 1, scope: !580, file: !3, line: 204, type: !110)
!585 = !DILocalVariable(name: "addlen", arg: 2, scope: !580, file: !3, line: 204, type: !113)
!586 = !DILocalVariable(name: "sh", scope: !580, file: !3, line: 205, type: !14)
!587 = !DILocalVariable(name: "newsh", scope: !580, file: !3, line: 205, type: !14)
!588 = !DILocalVariable(name: "avail", scope: !580, file: !3, line: 206, type: !113)
!589 = !DILocalVariable(name: "len", scope: !580, file: !3, line: 207, type: !113)
!590 = !DILocalVariable(name: "newlen", scope: !580, file: !3, line: 207, type: !113)
!591 = !DILocalVariable(name: "type", scope: !580, file: !3, line: 208, type: !16)
!592 = !DILocalVariable(name: "oldtype", scope: !580, file: !3, line: 208, type: !16)
!593 = !DILocalVariable(name: "hdrlen", scope: !580, file: !3, line: 209, type: !29)
!594 = !DILocation(line: 204, column: 24, scope: !580)
!595 = !DILocation(line: 204, column: 34, scope: !580)
!596 = !DILocalVariable(name: "s", arg: 1, scope: !597, file: !32, line: 104, type: !415)
!597 = distinct !DISubprogram(name: "sdsavail", scope: !32, file: !32, line: 104, type: !421, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !598)
!598 = !{!596, !599, !600, !603, !605, !607}
!599 = !DILocalVariable(name: "flags", scope: !597, file: !32, line: 105, type: !18)
!600 = !DILocalVariable(name: "sh", scope: !601, file: !32, line: 111, type: !30)
!601 = distinct !DILexicalBlock(scope: !602, file: !32, line: 110, column: 26)
!602 = distinct !DILexicalBlock(scope: !597, file: !32, line: 106, column: 33)
!603 = !DILocalVariable(name: "sh", scope: !604, file: !32, line: 115, type: !43)
!604 = distinct !DILexicalBlock(scope: !602, file: !32, line: 114, column: 27)
!605 = !DILocalVariable(name: "sh", scope: !606, file: !32, line: 119, type: !53)
!606 = distinct !DILexicalBlock(scope: !602, file: !32, line: 118, column: 27)
!607 = !DILocalVariable(name: "sh", scope: !608, file: !32, line: 123, type: !62)
!608 = distinct !DILexicalBlock(scope: !602, file: !32, line: 122, column: 27)
!609 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !610)
!610 = distinct !DILocation(line: 206, column: 20, scope: !580)
!611 = !DILocation(line: 105, column: 27, scope: !597, inlinedAt: !610)
!612 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !610)
!613 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !610)
!614 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !610)
!615 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !610)
!616 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !610)
!617 = !DILocation(line: 112, column: 36, scope: !601, inlinedAt: !610)
!618 = !DILocation(line: 112, column: 32, scope: !601, inlinedAt: !610)
!619 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !610)
!620 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !610)
!621 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !610)
!622 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !610)
!623 = !DILocation(line: 116, column: 36, scope: !604, inlinedAt: !610)
!624 = !DILocation(line: 116, column: 32, scope: !604, inlinedAt: !610)
!625 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !610)
!626 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !610)
!627 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !610)
!628 = !DILocation(line: 120, column: 36, scope: !606, inlinedAt: !610)
!629 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !610)
!630 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !610)
!631 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !610)
!632 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !610)
!633 = !DILocation(line: 124, column: 36, scope: !608, inlinedAt: !610)
!634 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !610)
!635 = !DILocation(line: 0, scope: !636, inlinedAt: !610)
!636 = distinct !DILexicalBlock(scope: !602, file: !32, line: 107, column: 26)
!637 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !610)
!638 = !DILocation(line: 206, column: 12, scope: !580)
!639 = !DILocation(line: 208, column: 32, scope: !580)
!640 = !DILocation(line: 208, column: 16, scope: !580)
!641 = !DILocation(line: 212, column: 15, scope: !642)
!642 = distinct !DILexicalBlock(scope: !580, file: !3, line: 212, column: 9)
!643 = !DILocation(line: 212, column: 9, scope: !580)
!644 = !DILocation(line: 0, scope: !642)
!645 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !646)
!646 = distinct !DILocation(line: 214, column: 11, scope: !580)
!647 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !646)
!648 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !646)
!649 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !646)
!650 = !DILocation(line: 207, column: 12, scope: !580)
!651 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !652)
!652 = distinct !DILocation(line: 215, column: 19, scope: !580)
!653 = !DILocation(line: 47, column: 13, scope: !355, inlinedAt: !652)
!654 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !646)
!655 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !646)
!656 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !652)
!657 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !646)
!658 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !646)
!659 = !DILocation(line: 51, column: 13, scope: !355, inlinedAt: !652)
!660 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !646)
!661 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !646)
!662 = !DILocation(line: 53, column: 13, scope: !355, inlinedAt: !652)
!663 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !646)
!664 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !646)
!665 = !DILocation(line: 55, column: 13, scope: !355, inlinedAt: !652)
!666 = !DILocation(line: 0, scope: !580)
!667 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !646)
!668 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !652)
!669 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !652)
!670 = !DILocation(line: 215, column: 18, scope: !580)
!671 = !DILocation(line: 205, column: 11, scope: !580)
!672 = !DILocation(line: 216, column: 18, scope: !580)
!673 = !DILocation(line: 207, column: 17, scope: !580)
!674 = !DILocation(line: 217, column: 16, scope: !675)
!675 = distinct !DILexicalBlock(scope: !580, file: !3, line: 217, column: 9)
!676 = !DILocation(line: 217, column: 9, scope: !580)
!677 = !DILocation(line: 218, column: 16, scope: !675)
!678 = !DILocation(line: 220, column: 16, scope: !675)
!679 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !680)
!680 = distinct !DILocation(line: 222, column: 12, scope: !580)
!681 = !DILocation(line: 61, column: 21, scope: !143, inlinedAt: !680)
!682 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !680)
!683 = !DILocation(line: 63, column: 21, scope: !147, inlinedAt: !680)
!684 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !680)
!685 = !DILocation(line: 65, column: 21, scope: !151, inlinedAt: !680)
!686 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !680)
!687 = !DILocation(line: 66, column: 9, scope: !151, inlinedAt: !680)
!688 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !680)
!689 = !DILocation(line: 208, column: 10, scope: !580)
!690 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !691)
!691 = distinct !DILocation(line: 229, column: 14, scope: !580)
!692 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !691)
!693 = !DILocation(line: 68, column: 21, scope: !155, inlinedAt: !680)
!694 = !DILocation(line: 68, column: 9, scope: !136, inlinedAt: !680)
!695 = !DILocation(line: 0, scope: !136, inlinedAt: !680)
!696 = !DILocation(line: 69, column: 9, scope: !155, inlinedAt: !680)
!697 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !691)
!698 = !DILocation(line: 51, column: 13, scope: !355, inlinedAt: !691)
!699 = !DILocation(line: 53, column: 13, scope: !355, inlinedAt: !691)
!700 = !DILocation(line: 55, column: 13, scope: !355, inlinedAt: !691)
!701 = !DILocation(line: 57, column: 5, scope: !166, inlinedAt: !691)
!702 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !691)
!703 = !DILocation(line: 230, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !580, file: !3, line: 230, column: 9)
!705 = !DILocation(line: 230, column: 18, scope: !704)
!706 = !DILocation(line: 230, column: 16, scope: !704)
!707 = !DILocation(line: 230, column: 9, scope: !580)
!708 = !DILocation(line: 0, scope: !709)
!709 = distinct !DILexicalBlock(scope: !704, file: !3, line: 234, column: 12)
!710 = !DILocalVariable(name: "ptr", arg: 1, scope: !711, file: !179, line: 48, type: !14)
!711 = distinct !DISubprogram(name: "s_realloc", scope: !179, file: !179, line: 48, type: !712, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{!14, !14, !113}
!714 = !{!710, !715}
!715 = !DILocalVariable(name: "size", arg: 2, scope: !711, file: !179, line: 48, type: !113)
!716 = !DILocation(line: 48, column: 37, scope: !711, inlinedAt: !717)
!717 = distinct !DILocation(line: 231, column: 17, scope: !718)
!718 = distinct !DILexicalBlock(scope: !704, file: !3, line: 230, column: 24)
!719 = !DILocation(line: 48, column: 49, scope: !711, inlinedAt: !717)
!720 = !DILocalVariable(name: "a", arg: 1, scope: !721, file: !192, line: 190, type: !195)
!721 = distinct !DISubprogram(name: "uk_realloc", scope: !192, file: !192, line: 190, type: !209, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !722)
!722 = !{!720, !723, !724}
!723 = !DILocalVariable(name: "ptr", arg: 2, scope: !721, file: !192, line: 190, type: !14)
!724 = !DILocalVariable(name: "size", arg: 3, scope: !721, file: !192, line: 190, type: !113)
!725 = !DILocation(line: 190, column: 49, scope: !721, inlinedAt: !726)
!726 = distinct !DILocation(line: 49, column: 9, scope: !711, inlinedAt: !717)
!727 = !DILocation(line: 190, column: 58, scope: !721, inlinedAt: !726)
!728 = !DILocation(line: 190, column: 70, scope: !721, inlinedAt: !726)
!729 = !DILocation(line: 192, column: 6, scope: !721, inlinedAt: !726)
!730 = !DILocation(line: 193, column: 3, scope: !731, inlinedAt: !726)
!731 = distinct !DILexicalBlock(scope: !732, file: !192, line: 192, column: 20)
!732 = distinct !DILexicalBlock(scope: !721, file: !192, line: 192, column: 6)
!733 = !DILocation(line: 193, column: 9, scope: !731, inlinedAt: !726)
!734 = !DILocation(line: 194, column: 3, scope: !731, inlinedAt: !726)
!735 = !DILocation(line: 197, column: 1, scope: !721, inlinedAt: !726)
!736 = !DILocation(line: 49, column: 2, scope: !711, inlinedAt: !717)
!737 = !DILocation(line: 205, column: 16, scope: !580)
!738 = !DILocation(line: 232, column: 13, scope: !718)
!739 = !DILocalVariable(name: "a", arg: 1, scope: !740, file: !192, line: 183, type: !195)
!740 = distinct !DISubprogram(name: "uk_do_realloc", scope: !192, file: !192, line: 183, type: !209, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !741)
!741 = !{!739, !742, !743}
!742 = !DILocalVariable(name: "ptr", arg: 2, scope: !740, file: !192, line: 184, type: !14)
!743 = !DILocalVariable(name: "size", arg: 3, scope: !740, file: !192, line: 184, type: !113)
!744 = !DILocation(line: 183, column: 52, scope: !740, inlinedAt: !745)
!745 = distinct !DILocation(line: 196, column: 9, scope: !721, inlinedAt: !726)
!746 = !DILocation(line: 184, column: 13, scope: !740, inlinedAt: !745)
!747 = !DILocation(line: 184, column: 25, scope: !740, inlinedAt: !745)
!748 = !DILocation(line: 186, column: 2, scope: !749, inlinedAt: !745)
!749 = distinct !DILexicalBlock(scope: !740, file: !192, line: 186, column: 2)
!750 = !DILocation(line: 187, column: 12, scope: !740, inlinedAt: !745)
!751 = !DILocation(line: 187, column: 9, scope: !740, inlinedAt: !745)
!752 = !DILocation(line: 187, column: 2, scope: !740, inlinedAt: !745)
!753 = !DILocation(line: 196, column: 2, scope: !721, inlinedAt: !726)
!754 = !DILocation(line: 232, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !718, file: !3, line: 232, column: 13)
!756 = !DILocation(line: 233, column: 25, scope: !718)
!757 = !DILocation(line: 234, column: 5, scope: !718)
!758 = !DILocation(line: 198, column: 27, scope: !759, inlinedAt: !764)
!759 = distinct !DISubprogram(name: "sdssetalloc", scope: !32, file: !32, line: 197, type: !509, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !760)
!760 = !{!761, !762, !763}
!761 = !DILocalVariable(name: "s", arg: 1, scope: !759, file: !32, line: 197, type: !110)
!762 = !DILocalVariable(name: "newlen", arg: 2, scope: !759, file: !32, line: 197, type: !113)
!763 = !DILocalVariable(name: "flags", scope: !759, file: !32, line: 198, type: !18)
!764 = distinct !DILocation(line: 245, column: 5, scope: !580)
!765 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !766)
!766 = distinct !DILocation(line: 237, column: 17, scope: !709)
!767 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !768)
!768 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !766)
!769 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !768)
!770 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !768)
!771 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !768)
!772 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !768)
!773 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !768)
!774 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !768)
!775 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !766)
!776 = !DILocation(line: 238, column: 13, scope: !709)
!777 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !778)
!778 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !768)
!779 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !778)
!780 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !778)
!781 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !778)
!782 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !778)
!783 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !778)
!784 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !768)
!785 = !DILocation(line: 238, column: 19, scope: !786)
!786 = distinct !DILexicalBlock(scope: !709, file: !3, line: 238, column: 13)
!787 = !DILocation(line: 239, column: 28, scope: !709)
!788 = !DILocation(line: 239, column: 43, scope: !709)
!789 = !DILocation(line: 239, column: 9, scope: !709)
!790 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !791)
!791 = distinct !DILocation(line: 240, column: 9, scope: !709)
!792 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !791)
!793 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !794)
!794 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !791)
!795 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !794)
!796 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !797)
!797 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !794)
!798 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !797)
!799 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !797)
!800 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !797)
!801 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !797)
!802 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !797)
!803 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !797)
!804 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !797)
!805 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !794)
!806 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !791)
!807 = !DILocation(line: 242, column: 9, scope: !709)
!808 = !DILocation(line: 242, column: 15, scope: !709)
!809 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !810)
!810 = distinct !DILocation(line: 243, column: 9, scope: !709)
!811 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !810)
!812 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !810)
!813 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !810)
!814 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !810)
!815 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !810)
!816 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !810)
!817 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !810)
!818 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !810)
!819 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !810)
!820 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !810)
!821 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !810)
!822 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !810)
!823 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !810)
!824 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !810)
!825 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !810)
!826 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !810)
!827 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !810)
!828 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !810)
!829 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !810)
!830 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !810)
!831 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !810)
!832 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !810)
!833 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !810)
!834 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !810)
!835 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !810)
!836 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !810)
!837 = !DILocation(line: 197, column: 36, scope: !759, inlinedAt: !764)
!838 = !DILocation(line: 197, column: 46, scope: !759, inlinedAt: !764)
!839 = !DILocation(line: 198, column: 19, scope: !759, inlinedAt: !764)
!840 = !DILocation(line: 199, column: 5, scope: !759, inlinedAt: !764)
!841 = !DILocation(line: 204, column: 35, scope: !842, inlinedAt: !764)
!842 = distinct !DILexicalBlock(scope: !759, file: !32, line: 199, column: 33)
!843 = !DILocation(line: 204, column: 27, scope: !842, inlinedAt: !764)
!844 = !DILocation(line: 204, column: 33, scope: !842, inlinedAt: !764)
!845 = !DILocation(line: 205, column: 13, scope: !842, inlinedAt: !764)
!846 = !DILocation(line: 207, column: 36, scope: !842, inlinedAt: !764)
!847 = !DILocation(line: 207, column: 28, scope: !842, inlinedAt: !764)
!848 = !DILocation(line: 207, column: 34, scope: !842, inlinedAt: !764)
!849 = !DILocation(line: 208, column: 13, scope: !842, inlinedAt: !764)
!850 = !DILocation(line: 210, column: 36, scope: !842, inlinedAt: !764)
!851 = !DILocation(line: 210, column: 28, scope: !842, inlinedAt: !764)
!852 = !DILocation(line: 210, column: 34, scope: !842, inlinedAt: !764)
!853 = !DILocation(line: 211, column: 13, scope: !842, inlinedAt: !764)
!854 = !DILocation(line: 213, column: 28, scope: !842, inlinedAt: !764)
!855 = !DILocation(line: 213, column: 34, scope: !842, inlinedAt: !764)
!856 = !DILocation(line: 214, column: 13, scope: !842, inlinedAt: !764)
!857 = !DILocation(line: 216, column: 1, scope: !759, inlinedAt: !764)
!858 = !DILocation(line: 246, column: 5, scope: !580)
!859 = !DILocation(line: 0, scope: !755)
!860 = !DILocation(line: 247, column: 1, scope: !580)
!861 = !DILocation(line: 0, scope: !786)
!862 = distinct !DISubprogram(name: "sdsRemoveFreeSpace", scope: !3, file: !3, line: 255, type: !863, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!110, !110}
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874}
!866 = !DILocalVariable(name: "s", arg: 1, scope: !862, file: !3, line: 255, type: !110)
!867 = !DILocalVariable(name: "sh", scope: !862, file: !3, line: 256, type: !14)
!868 = !DILocalVariable(name: "newsh", scope: !862, file: !3, line: 256, type: !14)
!869 = !DILocalVariable(name: "type", scope: !862, file: !3, line: 257, type: !16)
!870 = !DILocalVariable(name: "oldtype", scope: !862, file: !3, line: 257, type: !16)
!871 = !DILocalVariable(name: "hdrlen", scope: !862, file: !3, line: 258, type: !29)
!872 = !DILocalVariable(name: "oldhdrlen", scope: !862, file: !3, line: 258, type: !29)
!873 = !DILocalVariable(name: "len", scope: !862, file: !3, line: 259, type: !113)
!874 = !DILocalVariable(name: "avail", scope: !862, file: !3, line: 260, type: !113)
!875 = !DILocation(line: 255, column: 28, scope: !862)
!876 = !DILocation(line: 257, column: 26, scope: !862)
!877 = !DILocation(line: 257, column: 32, scope: !862)
!878 = !DILocation(line: 257, column: 16, scope: !862)
!879 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !880)
!880 = distinct !DILocation(line: 258, column: 29, scope: !862)
!881 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !880)
!882 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !880)
!883 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !880)
!884 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !885)
!885 = distinct !DILocation(line: 259, column: 18, scope: !862)
!886 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !885)
!887 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !885)
!888 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !885)
!889 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !885)
!890 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !885)
!891 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !885)
!892 = !DILocation(line: 259, column: 12, scope: !862)
!893 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !894)
!894 = distinct !DILocation(line: 260, column: 20, scope: !862)
!895 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !894)
!896 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !894)
!897 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !894)
!898 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !894)
!899 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !894)
!900 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !894)
!901 = !DILocation(line: 51, column: 13, scope: !355, inlinedAt: !880)
!902 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !885)
!903 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !885)
!904 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !885)
!905 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !894)
!906 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !894)
!907 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !894)
!908 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !894)
!909 = !DILocation(line: 53, column: 13, scope: !355, inlinedAt: !880)
!910 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !885)
!911 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !885)
!912 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !885)
!913 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !894)
!914 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !894)
!915 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !894)
!916 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !894)
!917 = !DILocation(line: 55, column: 13, scope: !355, inlinedAt: !880)
!918 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !885)
!919 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !885)
!920 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !885)
!921 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !894)
!922 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !894)
!923 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !894)
!924 = !DILocation(line: 0, scope: !862)
!925 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !894)
!926 = !DILocation(line: 260, column: 12, scope: !862)
!927 = !DILocation(line: 256, column: 11, scope: !862)
!928 = !DILocation(line: 264, column: 9, scope: !862)
!929 = !DILocation(line: 0, scope: !636, inlinedAt: !894)
!930 = !DILocation(line: 261, column: 18, scope: !862)
!931 = !DILocation(line: 264, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !862, file: !3, line: 264, column: 9)
!933 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !934)
!934 = distinct !DILocation(line: 268, column: 12, scope: !862)
!935 = !DILocation(line: 61, column: 21, scope: !143, inlinedAt: !934)
!936 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !934)
!937 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !934)
!938 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !934)
!939 = !DILocation(line: 257, column: 10, scope: !862)
!940 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !941)
!941 = distinct !DILocation(line: 269, column: 14, scope: !862)
!942 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !941)
!943 = !DILocation(line: 63, column: 21, scope: !147, inlinedAt: !934)
!944 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !934)
!945 = !DILocation(line: 64, column: 9, scope: !147, inlinedAt: !934)
!946 = !DILocation(line: 65, column: 21, scope: !151, inlinedAt: !934)
!947 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !934)
!948 = !DILocation(line: 66, column: 9, scope: !151, inlinedAt: !934)
!949 = !DILocation(line: 68, column: 21, scope: !155, inlinedAt: !934)
!950 = !DILocation(line: 68, column: 9, scope: !136, inlinedAt: !934)
!951 = !DILocation(line: 0, scope: !136, inlinedAt: !934)
!952 = !DILocation(line: 69, column: 9, scope: !155, inlinedAt: !934)
!953 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !941)
!954 = !DILocation(line: 51, column: 13, scope: !355, inlinedAt: !941)
!955 = !DILocation(line: 53, column: 13, scope: !355, inlinedAt: !941)
!956 = !DILocation(line: 55, column: 13, scope: !355, inlinedAt: !941)
!957 = !DILocation(line: 57, column: 5, scope: !166, inlinedAt: !941)
!958 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !941)
!959 = !DILocation(line: 275, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !862, file: !3, line: 275, column: 9)
!961 = !DILocation(line: 275, column: 18, scope: !960)
!962 = !DILocation(line: 275, column: 16, scope: !960)
!963 = !DILocation(line: 275, column: 23, scope: !960)
!964 = !DILocation(line: 275, column: 31, scope: !960)
!965 = !DILocation(line: 275, column: 9, scope: !862)
!966 = !DILocation(line: 48, column: 37, scope: !711, inlinedAt: !967)
!967 = distinct !DILocation(line: 276, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !960, file: !3, line: 275, column: 45)
!969 = !DILocation(line: 49, column: 20, scope: !711, inlinedAt: !967)
!970 = !DILocation(line: 190, column: 49, scope: !721, inlinedAt: !971)
!971 = distinct !DILocation(line: 49, column: 9, scope: !711, inlinedAt: !967)
!972 = !DILocation(line: 190, column: 58, scope: !721, inlinedAt: !971)
!973 = !DILocation(line: 192, column: 6, scope: !732, inlinedAt: !971)
!974 = !DILocation(line: 192, column: 6, scope: !721, inlinedAt: !971)
!975 = !DILocation(line: 193, column: 3, scope: !731, inlinedAt: !971)
!976 = !DILocation(line: 193, column: 9, scope: !731, inlinedAt: !971)
!977 = !DILocation(line: 194, column: 3, scope: !731, inlinedAt: !971)
!978 = !DILocation(line: 197, column: 1, scope: !721, inlinedAt: !971)
!979 = !DILocation(line: 49, column: 2, scope: !711, inlinedAt: !967)
!980 = !DILocation(line: 256, column: 16, scope: !862)
!981 = !DILocation(line: 277, column: 13, scope: !968)
!982 = !DILocation(line: 276, column: 40, scope: !968)
!983 = !DILocation(line: 276, column: 44, scope: !968)
!984 = !DILocation(line: 190, column: 70, scope: !721, inlinedAt: !971)
!985 = !DILocation(line: 48, column: 49, scope: !711, inlinedAt: !967)
!986 = !DILocation(line: 183, column: 52, scope: !740, inlinedAt: !987)
!987 = distinct !DILocation(line: 196, column: 9, scope: !721, inlinedAt: !971)
!988 = !DILocation(line: 184, column: 13, scope: !740, inlinedAt: !987)
!989 = !DILocation(line: 184, column: 25, scope: !740, inlinedAt: !987)
!990 = !DILocation(line: 186, column: 2, scope: !749, inlinedAt: !987)
!991 = !DILocation(line: 187, column: 12, scope: !740, inlinedAt: !987)
!992 = !DILocation(line: 187, column: 9, scope: !740, inlinedAt: !987)
!993 = !DILocation(line: 187, column: 2, scope: !740, inlinedAt: !987)
!994 = !DILocation(line: 196, column: 2, scope: !721, inlinedAt: !971)
!995 = !DILocation(line: 277, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !968, file: !3, line: 277, column: 13)
!997 = !DILocation(line: 278, column: 25, scope: !968)
!998 = !DILocation(line: 279, column: 5, scope: !968)
!999 = !DILocation(line: 198, column: 27, scope: !759, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 288, column: 5, scope: !862)
!1001 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 280, column: 17, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !960, file: !3, line: 279, column: 12)
!1004 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !1002)
!1006 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !1005)
!1007 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !1005)
!1008 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !1005)
!1009 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !1005)
!1010 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !1005)
!1011 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !1005)
!1012 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !1002)
!1013 = !DILocation(line: 281, column: 13, scope: !1003)
!1014 = !DILocation(line: 280, column: 32, scope: !1003)
!1015 = !DILocation(line: 280, column: 36, scope: !1003)
!1016 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !1005)
!1017 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !1002)
!1018 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !1005)
!1020 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !1019)
!1021 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !1019)
!1022 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !1019)
!1023 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !1019)
!1024 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !1019)
!1025 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !1005)
!1026 = !DILocation(line: 281, column: 19, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 281, column: 13)
!1028 = !DILocation(line: 282, column: 28, scope: !1003)
!1029 = !DILocation(line: 282, column: 9, scope: !1003)
!1030 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 283, column: 9, scope: !1003)
!1032 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !1031)
!1033 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !1031)
!1035 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !1034)
!1036 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !1034)
!1038 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !1037)
!1039 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !1037)
!1040 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !1037)
!1041 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !1037)
!1042 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !1037)
!1043 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !1037)
!1044 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !1037)
!1045 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !1034)
!1046 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !1031)
!1047 = !DILocation(line: 285, column: 9, scope: !1003)
!1048 = !DILocation(line: 285, column: 15, scope: !1003)
!1049 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 286, column: 9, scope: !1003)
!1051 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !1050)
!1052 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !1050)
!1053 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !1050)
!1054 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !1050)
!1055 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !1050)
!1056 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !1050)
!1057 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !1050)
!1058 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !1050)
!1059 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !1050)
!1060 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !1050)
!1061 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !1050)
!1062 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !1050)
!1063 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !1050)
!1064 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !1050)
!1065 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !1050)
!1066 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !1050)
!1067 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !1050)
!1068 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !1050)
!1069 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !1050)
!1070 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !1050)
!1071 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !1050)
!1072 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !1050)
!1073 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !1050)
!1074 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !1050)
!1075 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !1050)
!1076 = !DILocation(line: 0, scope: !1003)
!1077 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !1050)
!1078 = !DILocation(line: 197, column: 36, scope: !759, inlinedAt: !1000)
!1079 = !DILocation(line: 197, column: 46, scope: !759, inlinedAt: !1000)
!1080 = !DILocation(line: 198, column: 19, scope: !759, inlinedAt: !1000)
!1081 = !DILocation(line: 199, column: 5, scope: !759, inlinedAt: !1000)
!1082 = !DILocation(line: 204, column: 35, scope: !842, inlinedAt: !1000)
!1083 = !DILocation(line: 204, column: 27, scope: !842, inlinedAt: !1000)
!1084 = !DILocation(line: 204, column: 33, scope: !842, inlinedAt: !1000)
!1085 = !DILocation(line: 205, column: 13, scope: !842, inlinedAt: !1000)
!1086 = !DILocation(line: 207, column: 36, scope: !842, inlinedAt: !1000)
!1087 = !DILocation(line: 207, column: 28, scope: !842, inlinedAt: !1000)
!1088 = !DILocation(line: 207, column: 34, scope: !842, inlinedAt: !1000)
!1089 = !DILocation(line: 208, column: 13, scope: !842, inlinedAt: !1000)
!1090 = !DILocation(line: 210, column: 36, scope: !842, inlinedAt: !1000)
!1091 = !DILocation(line: 210, column: 28, scope: !842, inlinedAt: !1000)
!1092 = !DILocation(line: 210, column: 34, scope: !842, inlinedAt: !1000)
!1093 = !DILocation(line: 211, column: 13, scope: !842, inlinedAt: !1000)
!1094 = !DILocation(line: 213, column: 28, scope: !842, inlinedAt: !1000)
!1095 = !DILocation(line: 213, column: 34, scope: !842, inlinedAt: !1000)
!1096 = !DILocation(line: 214, column: 13, scope: !842, inlinedAt: !1000)
!1097 = !DILocation(line: 216, column: 1, scope: !759, inlinedAt: !1000)
!1098 = !DILocation(line: 289, column: 5, scope: !862)
!1099 = !DILocation(line: 0, scope: !1027)
!1100 = !DILocation(line: 0, scope: !932)
!1101 = !DILocation(line: 290, column: 1, scope: !862)
!1102 = distinct !DISubprogram(name: "sdsAllocSize", scope: !3, file: !3, line: 299, type: !1103, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!113, !110}
!1105 = !{!1106, !1107}
!1106 = !DILocalVariable(name: "s", arg: 1, scope: !1102, file: !3, line: 299, type: !110)
!1107 = !DILocalVariable(name: "alloc", scope: !1102, file: !3, line: 300, type: !113)
!1108 = !DILocation(line: 299, column: 25, scope: !1102)
!1109 = !DILocalVariable(name: "s", arg: 1, scope: !1110, file: !32, line: 180, type: !415)
!1110 = distinct !DISubprogram(name: "sdsalloc", scope: !32, file: !32, line: 180, type: !421, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1111)
!1111 = !{!1109, !1112}
!1112 = !DILocalVariable(name: "flags", scope: !1110, file: !32, line: 181, type: !18)
!1113 = !DILocation(line: 180, column: 41, scope: !1110, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 300, column: 20, scope: !1102)
!1115 = !DILocation(line: 181, column: 27, scope: !1110, inlinedAt: !1114)
!1116 = !DILocation(line: 181, column: 19, scope: !1110, inlinedAt: !1114)
!1117 = !DILocation(line: 182, column: 5, scope: !1110, inlinedAt: !1114)
!1118 = !DILocation(line: 184, column: 20, scope: !1119, inlinedAt: !1114)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !32, line: 182, column: 33)
!1120 = !DILocation(line: 300, column: 12, scope: !1102)
!1121 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 301, column: 12, scope: !1102)
!1123 = !DILocation(line: 47, column: 13, scope: !355, inlinedAt: !1122)
!1124 = !DILocation(line: 186, column: 34, scope: !1119, inlinedAt: !1114)
!1125 = !DILocation(line: 186, column: 20, scope: !1119, inlinedAt: !1114)
!1126 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !1122)
!1127 = !DILocation(line: 188, column: 35, scope: !1119, inlinedAt: !1114)
!1128 = !DILocation(line: 188, column: 20, scope: !1119, inlinedAt: !1114)
!1129 = !DILocation(line: 51, column: 13, scope: !355, inlinedAt: !1122)
!1130 = !DILocation(line: 190, column: 35, scope: !1119, inlinedAt: !1114)
!1131 = !DILocation(line: 190, column: 20, scope: !1119, inlinedAt: !1114)
!1132 = !DILocation(line: 53, column: 13, scope: !355, inlinedAt: !1122)
!1133 = !DILocation(line: 192, column: 35, scope: !1119, inlinedAt: !1114)
!1134 = !DILocation(line: 55, column: 13, scope: !355, inlinedAt: !1122)
!1135 = !DILocation(line: 0, scope: !1102)
!1136 = !DILocation(line: 195, column: 1, scope: !1110, inlinedAt: !1114)
!1137 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !1122)
!1138 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !1122)
!1139 = !DILocation(line: 301, column: 29, scope: !1102)
!1140 = !DILocation(line: 301, column: 35, scope: !1102)
!1141 = !DILocation(line: 301, column: 5, scope: !1102)
!1142 = distinct !DISubprogram(name: "sdsAllocPtr", scope: !3, file: !3, line: 306, type: !1143, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!14, !110}
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "s", arg: 1, scope: !1142, file: !3, line: 306, type: !110)
!1147 = !DILocation(line: 306, column: 23, scope: !1142)
!1148 = !DILocation(line: 307, column: 34, scope: !1142)
!1149 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 307, column: 23, scope: !1142)
!1151 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !1150)
!1152 = !DILocation(line: 0, scope: !1142)
!1153 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !1150)
!1154 = !DILocation(line: 307, column: 22, scope: !1142)
!1155 = !DILocation(line: 307, column: 5, scope: !1142)
!1156 = distinct !DISubprogram(name: "sdsIncrLen", scope: !3, file: !3, line: 333, type: !1157, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !110, !24}
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1167, !1168, !1170, !1172, !1174}
!1160 = !DILocalVariable(name: "s", arg: 1, scope: !1156, file: !3, line: 333, type: !110)
!1161 = !DILocalVariable(name: "incr", arg: 2, scope: !1156, file: !3, line: 333, type: !24)
!1162 = !DILocalVariable(name: "flags", scope: !1156, file: !3, line: 334, type: !18)
!1163 = !DILocalVariable(name: "len", scope: !1156, file: !3, line: 335, type: !113)
!1164 = !DILocalVariable(name: "fp", scope: !1165, file: !3, line: 338, type: !17)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 337, column: 26)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 336, column: 33)
!1167 = !DILocalVariable(name: "oldlen", scope: !1165, file: !3, line: 339, type: !18)
!1168 = !DILocalVariable(name: "sh", scope: !1169, file: !3, line: 346, type: !30)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 345, column: 26)
!1170 = !DILocalVariable(name: "sh", scope: !1171, file: !3, line: 352, type: !43)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 351, column: 27)
!1172 = !DILocalVariable(name: "sh", scope: !1173, file: !3, line: 358, type: !53)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 357, column: 27)
!1174 = !DILocalVariable(name: "sh", scope: !1175, file: !3, line: 364, type: !62)
!1175 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 363, column: 27)
!1176 = !DILocation(line: 333, column: 21, scope: !1156)
!1177 = !DILocation(line: 333, column: 32, scope: !1156)
!1178 = !DILocation(line: 334, column: 27, scope: !1156)
!1179 = !DILocation(line: 334, column: 19, scope: !1156)
!1180 = !DILocation(line: 336, column: 5, scope: !1156)
!1181 = !DILocation(line: 338, column: 28, scope: !1165)
!1182 = !DILocation(line: 339, column: 36, scope: !1165)
!1183 = !DILocation(line: 339, column: 27, scope: !1165)
!1184 = !DILocation(line: 340, column: 13, scope: !1165)
!1185 = !DILocation(line: 341, column: 34, scope: !1165)
!1186 = !DILocation(line: 341, column: 40, scope: !1165)
!1187 = !DILocation(line: 341, column: 19, scope: !1165)
!1188 = !DILocation(line: 341, column: 17, scope: !1165)
!1189 = !DILocation(line: 335, column: 12, scope: !1156)
!1190 = !DILocation(line: 346, column: 13, scope: !1169)
!1191 = !DILocation(line: 347, column: 13, scope: !1169)
!1192 = !DILocation(line: 348, column: 28, scope: !1169)
!1193 = !DILocation(line: 348, column: 19, scope: !1169)
!1194 = !DILocation(line: 352, column: 13, scope: !1171)
!1195 = !DILocation(line: 353, column: 13, scope: !1171)
!1196 = !DILocation(line: 354, column: 24, scope: !1171)
!1197 = !DILocation(line: 354, column: 28, scope: !1171)
!1198 = !DILocation(line: 354, column: 19, scope: !1171)
!1199 = !DILocation(line: 358, column: 13, scope: !1173)
!1200 = !DILocation(line: 359, column: 13, scope: !1173)
!1201 = !DILocation(line: 360, column: 28, scope: !1173)
!1202 = !DILocation(line: 360, column: 24, scope: !1173)
!1203 = !DILocation(line: 360, column: 19, scope: !1173)
!1204 = !DILocation(line: 364, column: 13, scope: !1175)
!1205 = !DILocation(line: 365, column: 13, scope: !1175)
!1206 = !DILocation(line: 366, column: 24, scope: !1175)
!1207 = !DILocation(line: 366, column: 28, scope: !1175)
!1208 = !DILocation(line: 0, scope: !1165)
!1209 = !DILocation(line: 371, column: 5, scope: !1156)
!1210 = !DILocation(line: 371, column: 12, scope: !1156)
!1211 = !DILocation(line: 372, column: 1, scope: !1156)
!1212 = distinct !DISubprogram(name: "sdsgrowzero", scope: !3, file: !3, line: 379, type: !581, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1213)
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "s", arg: 1, scope: !1212, file: !3, line: 379, type: !110)
!1215 = !DILocalVariable(name: "len", arg: 2, scope: !1212, file: !3, line: 379, type: !113)
!1216 = !DILocalVariable(name: "curlen", scope: !1212, file: !3, line: 380, type: !113)
!1217 = !DILocation(line: 379, column: 21, scope: !1212)
!1218 = !DILocation(line: 379, column: 31, scope: !1212)
!1219 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 380, column: 21, scope: !1212)
!1221 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !1220)
!1222 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1220)
!1223 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1220)
!1224 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1220)
!1225 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1220)
!1226 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1220)
!1227 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1220)
!1228 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1220)
!1229 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1220)
!1230 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1220)
!1231 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1220)
!1232 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1220)
!1233 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1220)
!1234 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1220)
!1235 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1220)
!1236 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1220)
!1237 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1220)
!1238 = !DILocation(line: 0, scope: !431, inlinedAt: !1220)
!1239 = !DILocation(line: 0, scope: !1212)
!1240 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1220)
!1241 = !DILocation(line: 380, column: 12, scope: !1212)
!1242 = !DILocation(line: 382, column: 13, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 382, column: 9)
!1244 = !DILocation(line: 382, column: 9, scope: !1212)
!1245 = !DILocation(line: 383, column: 29, scope: !1212)
!1246 = !DILocation(line: 383, column: 9, scope: !1212)
!1247 = !DILocation(line: 384, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 384, column: 9)
!1249 = !DILocation(line: 384, column: 9, scope: !1212)
!1250 = !DILocation(line: 387, column: 13, scope: !1212)
!1251 = !DILocation(line: 387, column: 34, scope: !1212)
!1252 = !DILocation(line: 387, column: 5, scope: !1212)
!1253 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 388, column: 5, scope: !1212)
!1255 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !1254)
!1256 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !1254)
!1257 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !1254)
!1258 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !1254)
!1259 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !1254)
!1260 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !1254)
!1261 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !1254)
!1262 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !1254)
!1263 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !1254)
!1264 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !1254)
!1265 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !1254)
!1266 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !1254)
!1267 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !1254)
!1268 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !1254)
!1269 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !1254)
!1270 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !1254)
!1271 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !1254)
!1272 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !1254)
!1273 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !1254)
!1274 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !1254)
!1275 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !1254)
!1276 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !1254)
!1277 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !1254)
!1278 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !1254)
!1279 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !1254)
!1280 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !1254)
!1281 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !1254)
!1282 = !DILocation(line: 389, column: 5, scope: !1212)
!1283 = !DILocation(line: 0, scope: !1243)
!1284 = !DILocation(line: 390, column: 1, scope: !1212)
!1285 = distinct !DISubprogram(name: "sdscatlen", scope: !3, file: !3, line: 397, type: !1286, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!110, !110, !111, !113}
!1288 = !{!1289, !1290, !1291, !1292}
!1289 = !DILocalVariable(name: "s", arg: 1, scope: !1285, file: !3, line: 397, type: !110)
!1290 = !DILocalVariable(name: "t", arg: 2, scope: !1285, file: !3, line: 397, type: !111)
!1291 = !DILocalVariable(name: "len", arg: 3, scope: !1285, file: !3, line: 397, type: !113)
!1292 = !DILocalVariable(name: "curlen", scope: !1285, file: !3, line: 398, type: !113)
!1293 = !DILocation(line: 397, column: 19, scope: !1285)
!1294 = !DILocation(line: 397, column: 34, scope: !1285)
!1295 = !DILocation(line: 397, column: 44, scope: !1285)
!1296 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 398, column: 21, scope: !1285)
!1298 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !1297)
!1299 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1297)
!1300 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1297)
!1301 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1297)
!1302 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1297)
!1303 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1297)
!1304 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1297)
!1305 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1297)
!1306 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1297)
!1307 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1297)
!1308 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1297)
!1309 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1297)
!1310 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1297)
!1311 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1297)
!1312 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1297)
!1313 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1297)
!1314 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1297)
!1315 = !DILocation(line: 0, scope: !431, inlinedAt: !1297)
!1316 = !DILocation(line: 0, scope: !1285)
!1317 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1297)
!1318 = !DILocation(line: 398, column: 12, scope: !1285)
!1319 = !DILocation(line: 400, column: 9, scope: !1285)
!1320 = !DILocation(line: 401, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 401, column: 9)
!1322 = !DILocation(line: 401, column: 9, scope: !1285)
!1323 = !DILocation(line: 402, column: 13, scope: !1285)
!1324 = !DILocation(line: 402, column: 5, scope: !1285)
!1325 = !DILocation(line: 403, column: 24, scope: !1285)
!1326 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 403, column: 5, scope: !1285)
!1328 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !1327)
!1329 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !1327)
!1330 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !1327)
!1331 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !1327)
!1332 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !1327)
!1333 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !1327)
!1334 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !1327)
!1335 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !1327)
!1336 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !1327)
!1337 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !1327)
!1338 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !1327)
!1339 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !1327)
!1340 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !1327)
!1341 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !1327)
!1342 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !1327)
!1343 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !1327)
!1344 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !1327)
!1345 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !1327)
!1346 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !1327)
!1347 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !1327)
!1348 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !1327)
!1349 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !1327)
!1350 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !1327)
!1351 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !1327)
!1352 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !1327)
!1353 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !1327)
!1354 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !1327)
!1355 = !DILocation(line: 404, column: 5, scope: !1285)
!1356 = !DILocation(line: 404, column: 19, scope: !1285)
!1357 = !DILocation(line: 405, column: 5, scope: !1285)
!1358 = !DILocation(line: 0, scope: !1321)
!1359 = !DILocation(line: 406, column: 1, scope: !1285)
!1360 = distinct !DISubprogram(name: "sdscat", scope: !3, file: !3, line: 412, type: !1361, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!110, !110, !76}
!1363 = !{!1364, !1365}
!1364 = !DILocalVariable(name: "s", arg: 1, scope: !1360, file: !3, line: 412, type: !110)
!1365 = !DILocalVariable(name: "t", arg: 2, scope: !1360, file: !3, line: 412, type: !76)
!1366 = !DILocation(line: 412, column: 16, scope: !1360)
!1367 = !DILocation(line: 412, column: 31, scope: !1360)
!1368 = !DILocation(line: 413, column: 28, scope: !1360)
!1369 = !DILocation(line: 413, column: 12, scope: !1360)
!1370 = !DILocation(line: 413, column: 5, scope: !1360)
!1371 = distinct !DISubprogram(name: "sdscatsds", scope: !3, file: !3, line: 420, type: !1372, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!110, !110, !415}
!1374 = !{!1375, !1376}
!1375 = !DILocalVariable(name: "s", arg: 1, scope: !1371, file: !3, line: 420, type: !110)
!1376 = !DILocalVariable(name: "t", arg: 2, scope: !1371, file: !3, line: 420, type: !415)
!1377 = !DILocation(line: 420, column: 19, scope: !1371)
!1378 = !DILocation(line: 420, column: 32, scope: !1371)
!1379 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 421, column: 28, scope: !1371)
!1381 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !1380)
!1382 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1380)
!1383 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1380)
!1384 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1380)
!1385 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1380)
!1386 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1380)
!1387 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1380)
!1388 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1380)
!1389 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1380)
!1390 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1380)
!1391 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1380)
!1392 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1380)
!1393 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1380)
!1394 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1380)
!1395 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1380)
!1396 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1380)
!1397 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1380)
!1398 = !DILocation(line: 0, scope: !431, inlinedAt: !1380)
!1399 = !DILocation(line: 0, scope: !1371)
!1400 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1380)
!1401 = !DILocation(line: 421, column: 12, scope: !1371)
!1402 = !DILocation(line: 421, column: 5, scope: !1371)
!1403 = distinct !DISubprogram(name: "sdscpylen", scope: !3, file: !3, line: 426, type: !1404, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!110, !110, !76, !113}
!1406 = !{!1407, !1408, !1409}
!1407 = !DILocalVariable(name: "s", arg: 1, scope: !1403, file: !3, line: 426, type: !110)
!1408 = !DILocalVariable(name: "t", arg: 2, scope: !1403, file: !3, line: 426, type: !76)
!1409 = !DILocalVariable(name: "len", arg: 3, scope: !1403, file: !3, line: 426, type: !113)
!1410 = !DILocation(line: 426, column: 19, scope: !1403)
!1411 = !DILocation(line: 426, column: 34, scope: !1403)
!1412 = !DILocation(line: 426, column: 44, scope: !1403)
!1413 = !DILocation(line: 180, column: 41, scope: !1110, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 427, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 427, column: 9)
!1416 = !DILocation(line: 181, column: 27, scope: !1110, inlinedAt: !1414)
!1417 = !DILocation(line: 181, column: 19, scope: !1110, inlinedAt: !1414)
!1418 = !DILocation(line: 182, column: 5, scope: !1110, inlinedAt: !1414)
!1419 = !DILocation(line: 184, column: 20, scope: !1119, inlinedAt: !1414)
!1420 = !DILocation(line: 184, column: 13, scope: !1119, inlinedAt: !1414)
!1421 = !DILocation(line: 186, column: 34, scope: !1119, inlinedAt: !1414)
!1422 = !DILocation(line: 186, column: 20, scope: !1119, inlinedAt: !1414)
!1423 = !DILocation(line: 186, column: 13, scope: !1119, inlinedAt: !1414)
!1424 = !DILocation(line: 188, column: 35, scope: !1119, inlinedAt: !1414)
!1425 = !DILocation(line: 188, column: 20, scope: !1119, inlinedAt: !1414)
!1426 = !DILocation(line: 188, column: 13, scope: !1119, inlinedAt: !1414)
!1427 = !DILocation(line: 190, column: 35, scope: !1119, inlinedAt: !1414)
!1428 = !DILocation(line: 190, column: 20, scope: !1119, inlinedAt: !1414)
!1429 = !DILocation(line: 190, column: 13, scope: !1119, inlinedAt: !1414)
!1430 = !DILocation(line: 192, column: 35, scope: !1119, inlinedAt: !1414)
!1431 = !DILocation(line: 192, column: 13, scope: !1119, inlinedAt: !1414)
!1432 = !DILocation(line: 0, scope: !1119, inlinedAt: !1414)
!1433 = !DILocation(line: 0, scope: !1415)
!1434 = !DILocation(line: 195, column: 1, scope: !1110, inlinedAt: !1414)
!1435 = !DILocation(line: 427, column: 21, scope: !1415)
!1436 = !DILocation(line: 427, column: 9, scope: !1403)
!1437 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 428, column: 34, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 427, column: 28)
!1440 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1438)
!1441 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1438)
!1442 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1438)
!1443 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1438)
!1444 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1438)
!1445 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1438)
!1446 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1438)
!1447 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1438)
!1448 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1438)
!1449 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1438)
!1450 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1438)
!1451 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1438)
!1452 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1438)
!1453 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1438)
!1454 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1438)
!1455 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1438)
!1456 = !DILocation(line: 0, scope: !431, inlinedAt: !1438)
!1457 = !DILocation(line: 0, scope: !1439)
!1458 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1438)
!1459 = !DILocation(line: 428, column: 33, scope: !1439)
!1460 = !DILocation(line: 428, column: 13, scope: !1439)
!1461 = !DILocation(line: 429, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 429, column: 13)
!1463 = !DILocation(line: 429, column: 13, scope: !1439)
!1464 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 433, column: 5, scope: !1403)
!1466 = !DILocation(line: 431, column: 5, scope: !1403)
!1467 = !DILocation(line: 432, column: 5, scope: !1403)
!1468 = !DILocation(line: 432, column: 12, scope: !1403)
!1469 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !1465)
!1470 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !1465)
!1471 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !1465)
!1472 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !1465)
!1473 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !1465)
!1474 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !1465)
!1475 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !1465)
!1476 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !1465)
!1477 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !1465)
!1478 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !1465)
!1479 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !1465)
!1480 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !1465)
!1481 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !1465)
!1482 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !1465)
!1483 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !1465)
!1484 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !1465)
!1485 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !1465)
!1486 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !1465)
!1487 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !1465)
!1488 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !1465)
!1489 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !1465)
!1490 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !1465)
!1491 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !1465)
!1492 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !1465)
!1493 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !1465)
!1494 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !1465)
!1495 = !DILocation(line: 0, scope: !1403)
!1496 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !1465)
!1497 = !DILocation(line: 434, column: 5, scope: !1403)
!1498 = !DILocation(line: 0, scope: !1462)
!1499 = !DILocation(line: 435, column: 1, scope: !1403)
!1500 = distinct !DISubprogram(name: "sdscpy", scope: !3, file: !3, line: 439, type: !1361, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1501)
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "s", arg: 1, scope: !1500, file: !3, line: 439, type: !110)
!1503 = !DILocalVariable(name: "t", arg: 2, scope: !1500, file: !3, line: 439, type: !76)
!1504 = !DILocation(line: 439, column: 16, scope: !1500)
!1505 = !DILocation(line: 439, column: 31, scope: !1500)
!1506 = !DILocation(line: 440, column: 28, scope: !1500)
!1507 = !DILocation(line: 440, column: 12, scope: !1500)
!1508 = !DILocation(line: 440, column: 5, scope: !1500)
!1509 = distinct !DISubprogram(name: "sdsll2str", scope: !3, file: !3, line: 450, type: !1510, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1513)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!29, !15, !1512}
!1512 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1520}
!1514 = !DILocalVariable(name: "s", arg: 1, scope: !1509, file: !3, line: 450, type: !15)
!1515 = !DILocalVariable(name: "value", arg: 2, scope: !1509, file: !3, line: 450, type: !1512)
!1516 = !DILocalVariable(name: "p", scope: !1509, file: !3, line: 451, type: !15)
!1517 = !DILocalVariable(name: "aux", scope: !1509, file: !3, line: 451, type: !16)
!1518 = !DILocalVariable(name: "v", scope: !1509, file: !3, line: 452, type: !1519)
!1519 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1520 = !DILocalVariable(name: "l", scope: !1509, file: !3, line: 453, type: !113)
!1521 = !DILocation(line: 450, column: 21, scope: !1509)
!1522 = !DILocation(line: 450, column: 34, scope: !1509)
!1523 = !DILocation(line: 457, column: 16, scope: !1509)
!1524 = !DILocation(line: 457, column: 23, scope: !1509)
!1525 = !DILocation(line: 457, column: 9, scope: !1509)
!1526 = !DILocation(line: 452, column: 24, scope: !1509)
!1527 = !DILocation(line: 451, column: 11, scope: !1509)
!1528 = !DILocation(line: 459, column: 5, scope: !1509)
!1529 = !DILocation(line: 0, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 459, column: 8)
!1531 = !DILocation(line: 460, column: 22, scope: !1530)
!1532 = !DILocation(line: 460, column: 16, scope: !1530)
!1533 = !DILocation(line: 460, column: 11, scope: !1530)
!1534 = !DILocation(line: 460, column: 14, scope: !1530)
!1535 = !DILocation(line: 461, column: 11, scope: !1530)
!1536 = !DILocation(line: 462, column: 5, scope: !1530)
!1537 = distinct !{!1537, !1528, !1538}
!1538 = !DILocation(line: 462, column: 14, scope: !1509)
!1539 = !DILocation(line: 463, column: 9, scope: !1509)
!1540 = !DILocation(line: 463, column: 22, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 463, column: 9)
!1542 = !DILocation(line: 463, column: 25, scope: !1541)
!1543 = !DILocation(line: 463, column: 20, scope: !1541)
!1544 = !DILocation(line: 466, column: 10, scope: !1509)
!1545 = !DILocation(line: 453, column: 12, scope: !1509)
!1546 = !DILocation(line: 467, column: 8, scope: !1509)
!1547 = !DILocation(line: 471, column: 5, scope: !1509)
!1548 = !DILocation(line: 0, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 471, column: 18)
!1550 = !DILocation(line: 471, column: 13, scope: !1509)
!1551 = !DILocation(line: 472, column: 15, scope: !1549)
!1552 = !DILocation(line: 451, column: 14, scope: !1509)
!1553 = !DILocation(line: 473, column: 14, scope: !1549)
!1554 = !DILocation(line: 473, column: 12, scope: !1549)
!1555 = !DILocation(line: 474, column: 12, scope: !1549)
!1556 = !DILocation(line: 475, column: 10, scope: !1549)
!1557 = distinct !{!1557, !1547, !1558}
!1558 = !DILocation(line: 477, column: 5, scope: !1509)
!1559 = !DILocation(line: 478, column: 12, scope: !1509)
!1560 = !DILocation(line: 478, column: 5, scope: !1509)
!1561 = distinct !DISubprogram(name: "sdsull2str", scope: !3, file: !3, line: 482, type: !1562, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!29, !15, !1519}
!1564 = !{!1565, !1566, !1567, !1568, !1569}
!1565 = !DILocalVariable(name: "s", arg: 1, scope: !1561, file: !3, line: 482, type: !15)
!1566 = !DILocalVariable(name: "v", arg: 2, scope: !1561, file: !3, line: 482, type: !1519)
!1567 = !DILocalVariable(name: "p", scope: !1561, file: !3, line: 483, type: !15)
!1568 = !DILocalVariable(name: "aux", scope: !1561, file: !3, line: 483, type: !16)
!1569 = !DILocalVariable(name: "l", scope: !1561, file: !3, line: 484, type: !113)
!1570 = !DILocation(line: 482, column: 22, scope: !1561)
!1571 = !DILocation(line: 482, column: 44, scope: !1561)
!1572 = !DILocation(line: 483, column: 11, scope: !1561)
!1573 = !DILocation(line: 489, column: 5, scope: !1561)
!1574 = !DILocation(line: 490, column: 22, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 489, column: 8)
!1576 = !DILocation(line: 490, column: 16, scope: !1575)
!1577 = !DILocation(line: 490, column: 11, scope: !1575)
!1578 = !DILocation(line: 490, column: 14, scope: !1575)
!1579 = !DILocation(line: 491, column: 11, scope: !1575)
!1580 = !DILocation(line: 492, column: 5, scope: !1575)
!1581 = distinct !{!1581, !1573, !1582}
!1582 = !DILocation(line: 492, column: 14, scope: !1561)
!1583 = !DILocation(line: 484, column: 12, scope: !1561)
!1584 = !DILocation(line: 496, column: 8, scope: !1561)
!1585 = !DILocation(line: 500, column: 5, scope: !1561)
!1586 = !DILocation(line: 500, column: 13, scope: !1561)
!1587 = !DILocation(line: 501, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 500, column: 18)
!1589 = !DILocation(line: 483, column: 14, scope: !1561)
!1590 = !DILocation(line: 502, column: 12, scope: !1588)
!1591 = !DILocation(line: 503, column: 12, scope: !1588)
!1592 = distinct !{!1592, !1585, !1593}
!1593 = !DILocation(line: 506, column: 5, scope: !1561)
!1594 = !DILocation(line: 505, column: 10, scope: !1588)
!1595 = !DILocation(line: 504, column: 10, scope: !1588)
!1596 = !DILocation(line: 502, column: 14, scope: !1588)
!1597 = !DILocation(line: 507, column: 12, scope: !1561)
!1598 = !DILocation(line: 507, column: 5, scope: !1561)
!1599 = distinct !DISubprogram(name: "sdsfromlonglong", scope: !3, file: !3, line: 514, type: !1600, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!110, !1512}
!1602 = !{!1603, !1604, !1608}
!1603 = !DILocalVariable(name: "value", arg: 1, scope: !1599, file: !3, line: 514, type: !1512)
!1604 = !DILocalVariable(name: "buf", scope: !1599, file: !3, line: 515, type: !1605)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 168, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 21)
!1608 = !DILocalVariable(name: "len", scope: !1599, file: !3, line: 516, type: !29)
!1609 = !DILocation(line: 514, column: 31, scope: !1599)
!1610 = !DILocation(line: 515, column: 5, scope: !1599)
!1611 = !DILocation(line: 515, column: 10, scope: !1599)
!1612 = !DILocation(line: 450, column: 21, scope: !1509, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 516, column: 15, scope: !1599)
!1614 = !DILocation(line: 450, column: 34, scope: !1509, inlinedAt: !1613)
!1615 = !DILocation(line: 457, column: 16, scope: !1509, inlinedAt: !1613)
!1616 = !DILocation(line: 457, column: 23, scope: !1509, inlinedAt: !1613)
!1617 = !DILocation(line: 457, column: 9, scope: !1509, inlinedAt: !1613)
!1618 = !DILocation(line: 452, column: 24, scope: !1509, inlinedAt: !1613)
!1619 = !DILocation(line: 451, column: 11, scope: !1509, inlinedAt: !1613)
!1620 = !DILocation(line: 459, column: 5, scope: !1509, inlinedAt: !1613)
!1621 = !DILocation(line: 0, scope: !1530, inlinedAt: !1613)
!1622 = !DILocation(line: 460, column: 22, scope: !1530, inlinedAt: !1613)
!1623 = !DILocation(line: 460, column: 16, scope: !1530, inlinedAt: !1613)
!1624 = !DILocation(line: 460, column: 11, scope: !1530, inlinedAt: !1613)
!1625 = !DILocation(line: 460, column: 14, scope: !1530, inlinedAt: !1613)
!1626 = !DILocation(line: 461, column: 11, scope: !1530, inlinedAt: !1613)
!1627 = !DILocation(line: 462, column: 5, scope: !1530, inlinedAt: !1613)
!1628 = !DILocation(line: 463, column: 9, scope: !1509, inlinedAt: !1613)
!1629 = !DILocation(line: 463, column: 22, scope: !1541, inlinedAt: !1613)
!1630 = !DILocation(line: 463, column: 25, scope: !1541, inlinedAt: !1613)
!1631 = !DILocation(line: 463, column: 20, scope: !1541, inlinedAt: !1613)
!1632 = !DILocation(line: 453, column: 12, scope: !1509, inlinedAt: !1613)
!1633 = !DILocation(line: 467, column: 8, scope: !1509, inlinedAt: !1613)
!1634 = !DILocation(line: 471, column: 5, scope: !1509, inlinedAt: !1613)
!1635 = !DILocation(line: 471, column: 13, scope: !1509, inlinedAt: !1613)
!1636 = !DILocation(line: 0, scope: !1549, inlinedAt: !1613)
!1637 = !DILocation(line: 472, column: 15, scope: !1549, inlinedAt: !1613)
!1638 = !DILocation(line: 451, column: 14, scope: !1509, inlinedAt: !1613)
!1639 = !DILocation(line: 473, column: 12, scope: !1549, inlinedAt: !1613)
!1640 = !DILocation(line: 474, column: 12, scope: !1549, inlinedAt: !1613)
!1641 = !DILocation(line: 475, column: 10, scope: !1549, inlinedAt: !1613)
!1642 = !DILocation(line: 473, column: 14, scope: !1549, inlinedAt: !1613)
!1643 = !DILocation(line: 478, column: 5, scope: !1509, inlinedAt: !1613)
!1644 = !DILocation(line: 518, column: 26, scope: !1599)
!1645 = !DILocation(line: 518, column: 12, scope: !1599)
!1646 = !DILocation(line: 519, column: 1, scope: !1599)
!1647 = !DILocation(line: 518, column: 5, scope: !1599)
!1648 = distinct !DISubprogram(name: "sdscatvprintf", scope: !3, file: !3, line: 522, type: !1649, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1652)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!110, !110, !76, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1661, !1662, !1663}
!1653 = !DILocalVariable(name: "s", arg: 1, scope: !1648, file: !3, line: 522, type: !110)
!1654 = !DILocalVariable(name: "fmt", arg: 2, scope: !1648, file: !3, line: 522, type: !76)
!1655 = !DILocalVariable(name: "ap", arg: 3, scope: !1648, file: !3, line: 522, type: !1651)
!1656 = !DILocalVariable(name: "cpy", scope: !1648, file: !3, line: 523, type: !81)
!1657 = !DILocalVariable(name: "staticbuf", scope: !1648, file: !3, line: 524, type: !1658)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 1024)
!1661 = !DILocalVariable(name: "buf", scope: !1648, file: !3, line: 524, type: !15)
!1662 = !DILocalVariable(name: "t", scope: !1648, file: !3, line: 524, type: !15)
!1663 = !DILocalVariable(name: "buflen", scope: !1648, file: !3, line: 525, type: !113)
!1664 = !DILocation(line: 522, column: 23, scope: !1648)
!1665 = !DILocation(line: 522, column: 38, scope: !1648)
!1666 = !DILocation(line: 522, column: 51, scope: !1648)
!1667 = !DILocation(line: 523, column: 5, scope: !1648)
!1668 = !DILocation(line: 523, column: 13, scope: !1648)
!1669 = !DILocation(line: 524, column: 5, scope: !1648)
!1670 = !DILocation(line: 524, column: 10, scope: !1648)
!1671 = !DILocation(line: 524, column: 28, scope: !1648)
!1672 = !DILocation(line: 525, column: 21, scope: !1648)
!1673 = !DILocation(line: 525, column: 32, scope: !1648)
!1674 = !DILocation(line: 525, column: 12, scope: !1648)
!1675 = !DILocation(line: 529, column: 16, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 529, column: 9)
!1677 = !DILocation(line: 529, column: 9, scope: !1648)
!1678 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 530, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 529, column: 37)
!1681 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !1679)
!1682 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !1679)
!1684 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !1683)
!1685 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !1683)
!1686 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !1683)
!1687 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !1683)
!1688 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !1683)
!1689 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !1683)
!1690 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !1683)
!1691 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !1679)
!1692 = !DILocation(line: 531, column: 13, scope: !1680)
!1693 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !1683)
!1695 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !1694)
!1696 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !1694)
!1697 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !1694)
!1698 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !1694)
!1699 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !1694)
!1700 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !1683)
!1701 = !DILocation(line: 531, column: 17, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 531, column: 13)
!1703 = !DILocation(line: 0, scope: !1648)
!1704 = !DILocation(line: 0, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 532, column: 12)
!1706 = !DILocation(line: 538, column: 5, scope: !1648)
!1707 = !DILocation(line: 0, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 543, column: 36)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 543, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 538, column: 14)
!1711 = !DILocation(line: 539, column: 19, scope: !1710)
!1712 = !DILocation(line: 539, column: 9, scope: !1710)
!1713 = !DILocation(line: 539, column: 23, scope: !1710)
!1714 = !DILocation(line: 540, column: 9, scope: !1710)
!1715 = !DILocation(line: 541, column: 9, scope: !1710)
!1716 = !DILocation(line: 542, column: 9, scope: !1710)
!1717 = !DILocation(line: 543, column: 13, scope: !1709)
!1718 = !DILocation(line: 543, column: 27, scope: !1709)
!1719 = !DILocation(line: 543, column: 13, scope: !1710)
!1720 = !DILocation(line: 544, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 544, column: 17)
!1722 = !DILocation(line: 544, column: 17, scope: !1708)
!1723 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 544, column: 35, scope: !1721)
!1725 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !1724)
!1726 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !1724)
!1728 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !1727)
!1729 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !1727)
!1731 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !1730)
!1732 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !1730)
!1733 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !1730)
!1734 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !1730)
!1735 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !1730)
!1736 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !1730)
!1737 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !1730)
!1738 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !1727)
!1739 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !1724)
!1740 = !DILocation(line: 544, column: 35, scope: !1721)
!1741 = !DILocation(line: 545, column: 20, scope: !1708)
!1742 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 546, column: 19, scope: !1708)
!1744 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !1743)
!1745 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !1743)
!1747 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !1746)
!1748 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !1746)
!1749 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !1746)
!1750 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !1746)
!1751 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !1746)
!1752 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !1746)
!1753 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !1746)
!1754 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !1743)
!1755 = !DILocation(line: 547, column: 17, scope: !1708)
!1756 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !1746)
!1758 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !1757)
!1759 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !1757)
!1760 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !1757)
!1761 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !1757)
!1762 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !1757)
!1763 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !1746)
!1764 = !DILocation(line: 547, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 547, column: 17)
!1766 = distinct !{!1766, !1706, !1767}
!1767 = !DILocation(line: 551, column: 5, scope: !1648)
!1768 = !DILocation(line: 412, column: 16, scope: !1360, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 554, column: 9, scope: !1648)
!1770 = !DILocation(line: 412, column: 31, scope: !1360, inlinedAt: !1769)
!1771 = !DILocation(line: 413, column: 28, scope: !1360, inlinedAt: !1769)
!1772 = !DILocation(line: 413, column: 12, scope: !1360, inlinedAt: !1769)
!1773 = !DILocation(line: 413, column: 5, scope: !1360, inlinedAt: !1769)
!1774 = !DILocation(line: 524, column: 46, scope: !1648)
!1775 = !DILocation(line: 555, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 555, column: 9)
!1777 = !DILocation(line: 555, column: 9, scope: !1648)
!1778 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 555, column: 27, scope: !1776)
!1780 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !1779)
!1781 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !1779)
!1783 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !1782)
!1784 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !1782)
!1786 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !1785)
!1787 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !1785)
!1788 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !1785)
!1789 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !1785)
!1790 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !1785)
!1791 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !1785)
!1792 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !1785)
!1793 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !1782)
!1794 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !1779)
!1795 = !DILocation(line: 555, column: 27, scope: !1776)
!1796 = !DILocation(line: 0, scope: !1702)
!1797 = !DILocation(line: 557, column: 1, scope: !1648)
!1798 = distinct !DISubprogram(name: "sdscatprintf", scope: !3, file: !3, line: 575, type: !1799, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!110, !110, !76, null}
!1801 = !{!1802, !1803, !1804, !1805}
!1802 = !DILocalVariable(name: "s", arg: 1, scope: !1798, file: !3, line: 575, type: !110)
!1803 = !DILocalVariable(name: "fmt", arg: 2, scope: !1798, file: !3, line: 575, type: !76)
!1804 = !DILocalVariable(name: "ap", scope: !1798, file: !3, line: 576, type: !81)
!1805 = !DILocalVariable(name: "t", scope: !1798, file: !3, line: 577, type: !15)
!1806 = !DILocation(line: 575, column: 22, scope: !1798)
!1807 = !DILocation(line: 575, column: 37, scope: !1798)
!1808 = !DILocation(line: 576, column: 5, scope: !1798)
!1809 = !DILocation(line: 576, column: 13, scope: !1798)
!1810 = !DILocation(line: 578, column: 5, scope: !1798)
!1811 = !DILocation(line: 579, column: 9, scope: !1798)
!1812 = !DILocation(line: 577, column: 11, scope: !1798)
!1813 = !DILocation(line: 580, column: 5, scope: !1798)
!1814 = !DILocation(line: 582, column: 1, scope: !1798)
!1815 = !DILocation(line: 581, column: 5, scope: !1798)
!1816 = distinct !DISubprogram(name: "sdscatfmt", scope: !3, file: !3, line: 600, type: !1799, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1826, !1827, !1828, !1829, !1830, !1834}
!1818 = !DILocalVariable(name: "s", arg: 1, scope: !1816, file: !3, line: 600, type: !110)
!1819 = !DILocalVariable(name: "fmt", arg: 2, scope: !1816, file: !3, line: 600, type: !76)
!1820 = !DILocalVariable(name: "initlen", scope: !1816, file: !3, line: 601, type: !113)
!1821 = !DILocalVariable(name: "f", scope: !1816, file: !3, line: 602, type: !76)
!1822 = !DILocalVariable(name: "i", scope: !1816, file: !3, line: 603, type: !28)
!1823 = !DILocalVariable(name: "ap", scope: !1816, file: !3, line: 604, type: !81)
!1824 = !DILocalVariable(name: "next", scope: !1825, file: !3, line: 610, type: !16)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 609, column: 15)
!1826 = !DILocalVariable(name: "str", scope: !1825, file: !3, line: 610, type: !15)
!1827 = !DILocalVariable(name: "l", scope: !1825, file: !3, line: 611, type: !113)
!1828 = !DILocalVariable(name: "num", scope: !1825, file: !3, line: 612, type: !1512)
!1829 = !DILocalVariable(name: "unum", scope: !1825, file: !3, line: 613, type: !1519)
!1830 = !DILocalVariable(name: "buf", scope: !1831, file: !3, line: 643, type: !1605)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 642, column: 17)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 624, column: 26)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 620, column: 20)
!1834 = !DILocalVariable(name: "buf", scope: !1835, file: !3, line: 660, type: !1605)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 659, column: 17)
!1836 = !DILocation(line: 600, column: 19, scope: !1816)
!1837 = !DILocation(line: 600, column: 34, scope: !1816)
!1838 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 601, column: 22, scope: !1816)
!1840 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !1839)
!1841 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1839)
!1842 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1839)
!1843 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1839)
!1844 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1839)
!1845 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1839)
!1846 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1839)
!1847 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1839)
!1848 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1839)
!1849 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1839)
!1850 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1839)
!1851 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1839)
!1852 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1839)
!1853 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1839)
!1854 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1839)
!1855 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1839)
!1856 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1839)
!1857 = !DILocation(line: 0, scope: !431, inlinedAt: !1839)
!1858 = !DILocation(line: 0, scope: !1816)
!1859 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1839)
!1860 = !DILocation(line: 601, column: 12, scope: !1816)
!1861 = !DILocation(line: 602, column: 17, scope: !1816)
!1862 = !DILocation(line: 604, column: 5, scope: !1816)
!1863 = !DILocation(line: 604, column: 13, scope: !1816)
!1864 = !DILocation(line: 606, column: 5, scope: !1816)
!1865 = !DILocation(line: 603, column: 10, scope: !1816)
!1866 = !DILocation(line: 609, column: 5, scope: !1816)
!1867 = !DILocation(line: 609, column: 11, scope: !1816)
!1868 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 616, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 616, column: 13)
!1871 = !DILocation(line: 105, column: 27, scope: !597, inlinedAt: !1869)
!1872 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !1869)
!1873 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !1869)
!1874 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !1869)
!1875 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !1869)
!1876 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !1869)
!1877 = !DILocation(line: 112, column: 36, scope: !601, inlinedAt: !1869)
!1878 = !DILocation(line: 112, column: 32, scope: !601, inlinedAt: !1869)
!1879 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !1869)
!1880 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !1869)
!1881 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !1869)
!1882 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !1869)
!1883 = !DILocation(line: 116, column: 36, scope: !604, inlinedAt: !1869)
!1884 = !DILocation(line: 116, column: 32, scope: !604, inlinedAt: !1869)
!1885 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !1869)
!1886 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !1869)
!1887 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !1869)
!1888 = !DILocation(line: 120, column: 36, scope: !606, inlinedAt: !1869)
!1889 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !1869)
!1890 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !1869)
!1891 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !1869)
!1892 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !1869)
!1893 = !DILocation(line: 124, column: 36, scope: !608, inlinedAt: !1869)
!1894 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !1869)
!1895 = !DILocation(line: 0, scope: !1870)
!1896 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !1869)
!1897 = !DILocation(line: 616, column: 13, scope: !1825)
!1898 = !DILocation(line: 0, scope: !636, inlinedAt: !1869)
!1899 = !DILocation(line: 616, column: 24, scope: !1870)
!1900 = !DILocation(line: 617, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 616, column: 29)
!1902 = !DILocation(line: 618, column: 9, scope: !1901)
!1903 = !DILocation(line: 620, column: 16, scope: !1825)
!1904 = !DILocation(line: 620, column: 9, scope: !1825)
!1905 = !DILocation(line: 622, column: 23, scope: !1833)
!1906 = !DILocation(line: 622, column: 20, scope: !1833)
!1907 = !DILocation(line: 610, column: 14, scope: !1825)
!1908 = !DILocation(line: 624, column: 20, scope: !1833)
!1909 = !DILocation(line: 624, column: 13, scope: !1833)
!1910 = !DILocation(line: 627, column: 23, scope: !1832)
!1911 = !DILocation(line: 610, column: 21, scope: !1825)
!1912 = !DILocation(line: 628, column: 27, scope: !1832)
!1913 = !DILocation(line: 628, column: 21, scope: !1832)
!1914 = !DILocation(line: 628, column: 37, scope: !1832)
!1915 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 628, column: 51, scope: !1832)
!1917 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !1916)
!1918 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !1916)
!1919 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !1916)
!1920 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !1916)
!1921 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !1916)
!1922 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !1916)
!1923 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !1916)
!1924 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !1916)
!1925 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !1916)
!1926 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !1916)
!1927 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !1916)
!1928 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !1916)
!1929 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !1916)
!1930 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !1916)
!1931 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !1916)
!1932 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !1916)
!1933 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !1916)
!1934 = !DILocation(line: 0, scope: !431, inlinedAt: !1916)
!1935 = !DILocation(line: 0, scope: !1832)
!1936 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !1916)
!1937 = !DILocation(line: 611, column: 16, scope: !1825)
!1938 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 629, column: 21, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 629, column: 21)
!1941 = !DILocation(line: 105, column: 27, scope: !597, inlinedAt: !1939)
!1942 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !1939)
!1943 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !1939)
!1944 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !1939)
!1945 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !1939)
!1946 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !1939)
!1947 = !DILocation(line: 112, column: 36, scope: !601, inlinedAt: !1939)
!1948 = !DILocation(line: 112, column: 32, scope: !601, inlinedAt: !1939)
!1949 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !1939)
!1950 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !1939)
!1951 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !1939)
!1952 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !1939)
!1953 = !DILocation(line: 116, column: 36, scope: !604, inlinedAt: !1939)
!1954 = !DILocation(line: 116, column: 32, scope: !604, inlinedAt: !1939)
!1955 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !1939)
!1956 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !1939)
!1957 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !1939)
!1958 = !DILocation(line: 120, column: 36, scope: !606, inlinedAt: !1939)
!1959 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !1939)
!1960 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !1939)
!1961 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !1939)
!1962 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !1939)
!1963 = !DILocation(line: 124, column: 36, scope: !608, inlinedAt: !1939)
!1964 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !1939)
!1965 = !DILocation(line: 0, scope: !636, inlinedAt: !1939)
!1966 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !1939)
!1967 = !DILocation(line: 629, column: 33, scope: !1940)
!1968 = !DILocation(line: 629, column: 21, scope: !1832)
!1969 = !DILocation(line: 630, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 629, column: 38)
!1971 = !DILocation(line: 631, column: 17, scope: !1970)
!1972 = !DILocation(line: 155, column: 27, scope: !1973, inlinedAt: !1982)
!1973 = distinct !DISubprogram(name: "sdsinclen", scope: !32, file: !32, line: 154, type: !509, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1974)
!1974 = !{!1975, !1976, !1977, !1978, !1981}
!1975 = !DILocalVariable(name: "s", arg: 1, scope: !1973, file: !32, line: 154, type: !110)
!1976 = !DILocalVariable(name: "inc", arg: 2, scope: !1973, file: !32, line: 154, type: !113)
!1977 = !DILocalVariable(name: "flags", scope: !1973, file: !32, line: 155, type: !18)
!1978 = !DILocalVariable(name: "fp", scope: !1979, file: !32, line: 159, type: !17)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !32, line: 158, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !32, line: 156, column: 33)
!1981 = !DILocalVariable(name: "newlen", scope: !1979, file: !32, line: 160, type: !18)
!1982 = distinct !DILocation(line: 633, column: 17, scope: !1832)
!1983 = !DILocation(line: 0, scope: !1901)
!1984 = !DILocation(line: 632, column: 25, scope: !1832)
!1985 = !DILocation(line: 632, column: 17, scope: !1832)
!1986 = !DILocation(line: 154, column: 34, scope: !1973, inlinedAt: !1982)
!1987 = !DILocation(line: 154, column: 44, scope: !1973, inlinedAt: !1982)
!1988 = !DILocation(line: 155, column: 19, scope: !1973, inlinedAt: !1982)
!1989 = !DILocation(line: 156, column: 5, scope: !1973, inlinedAt: !1982)
!1990 = !DILocation(line: 159, column: 32, scope: !1979, inlinedAt: !1982)
!1991 = !DILocation(line: 160, column: 40, scope: !1979, inlinedAt: !1982)
!1992 = !DILocation(line: 161, column: 44, scope: !1979, inlinedAt: !1982)
!1993 = !DILocation(line: 161, column: 21, scope: !1979, inlinedAt: !1982)
!1994 = !DILocation(line: 163, column: 13, scope: !1980, inlinedAt: !1982)
!1995 = !DILocation(line: 165, column: 13, scope: !1980, inlinedAt: !1982)
!1996 = !DILocation(line: 165, column: 31, scope: !1980, inlinedAt: !1982)
!1997 = !DILocation(line: 166, column: 13, scope: !1980, inlinedAt: !1982)
!1998 = !DILocation(line: 168, column: 13, scope: !1980, inlinedAt: !1982)
!1999 = !DILocation(line: 168, column: 28, scope: !1980, inlinedAt: !1982)
!2000 = !DILocation(line: 168, column: 32, scope: !1980, inlinedAt: !1982)
!2001 = !DILocation(line: 169, column: 13, scope: !1980, inlinedAt: !1982)
!2002 = !DILocation(line: 171, column: 13, scope: !1980, inlinedAt: !1982)
!2003 = !DILocation(line: 171, column: 28, scope: !1980, inlinedAt: !1982)
!2004 = !DILocation(line: 171, column: 32, scope: !1980, inlinedAt: !1982)
!2005 = !DILocation(line: 172, column: 13, scope: !1980, inlinedAt: !1982)
!2006 = !DILocation(line: 174, column: 13, scope: !1980, inlinedAt: !1982)
!2007 = !DILocation(line: 174, column: 28, scope: !1980, inlinedAt: !1982)
!2008 = !DILocation(line: 174, column: 32, scope: !1980, inlinedAt: !1982)
!2009 = !DILocation(line: 175, column: 13, scope: !1980, inlinedAt: !1982)
!2010 = !DILocation(line: 177, column: 1, scope: !1973, inlinedAt: !1982)
!2011 = !DILocation(line: 634, column: 19, scope: !1832)
!2012 = !DILocation(line: 635, column: 17, scope: !1832)
!2013 = !DILocation(line: 638, column: 26, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 638, column: 21)
!2015 = !DILocation(line: 0, scope: !2014)
!2016 = !DILocation(line: 638, column: 21, scope: !1832)
!2017 = !DILocation(line: 639, column: 27, scope: !2014)
!2018 = !DILocation(line: 612, column: 19, scope: !1825)
!2019 = !DILocation(line: 639, column: 21, scope: !2014)
!2020 = !DILocation(line: 641, column: 27, scope: !2014)
!2021 = !DILocation(line: 643, column: 21, scope: !1831)
!2022 = !DILocation(line: 643, column: 26, scope: !1831)
!2023 = !DILocation(line: 450, column: 21, scope: !1509, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 644, column: 25, scope: !1831)
!2025 = !DILocation(line: 450, column: 34, scope: !1509, inlinedAt: !2024)
!2026 = !DILocation(line: 457, column: 16, scope: !1509, inlinedAt: !2024)
!2027 = !DILocation(line: 457, column: 23, scope: !1509, inlinedAt: !2024)
!2028 = !DILocation(line: 457, column: 9, scope: !1509, inlinedAt: !2024)
!2029 = !DILocation(line: 452, column: 24, scope: !1509, inlinedAt: !2024)
!2030 = !DILocation(line: 451, column: 11, scope: !1509, inlinedAt: !2024)
!2031 = !DILocation(line: 459, column: 5, scope: !1509, inlinedAt: !2024)
!2032 = !DILocation(line: 0, scope: !1530, inlinedAt: !2024)
!2033 = !DILocation(line: 460, column: 22, scope: !1530, inlinedAt: !2024)
!2034 = !DILocation(line: 460, column: 16, scope: !1530, inlinedAt: !2024)
!2035 = !DILocation(line: 460, column: 11, scope: !1530, inlinedAt: !2024)
!2036 = !DILocation(line: 460, column: 14, scope: !1530, inlinedAt: !2024)
!2037 = !DILocation(line: 461, column: 11, scope: !1530, inlinedAt: !2024)
!2038 = !DILocation(line: 462, column: 5, scope: !1530, inlinedAt: !2024)
!2039 = !DILocation(line: 463, column: 9, scope: !1509, inlinedAt: !2024)
!2040 = !DILocation(line: 463, column: 22, scope: !1541, inlinedAt: !2024)
!2041 = !DILocation(line: 463, column: 25, scope: !1541, inlinedAt: !2024)
!2042 = !DILocation(line: 463, column: 20, scope: !1541, inlinedAt: !2024)
!2043 = !DILocation(line: 453, column: 12, scope: !1509, inlinedAt: !2024)
!2044 = !DILocation(line: 467, column: 8, scope: !1509, inlinedAt: !2024)
!2045 = !DILocation(line: 471, column: 5, scope: !1509, inlinedAt: !2024)
!2046 = !DILocation(line: 471, column: 13, scope: !1509, inlinedAt: !2024)
!2047 = !DILocation(line: 0, scope: !1549, inlinedAt: !2024)
!2048 = !DILocation(line: 472, column: 15, scope: !1549, inlinedAt: !2024)
!2049 = !DILocation(line: 451, column: 14, scope: !1509, inlinedAt: !2024)
!2050 = !DILocation(line: 473, column: 12, scope: !1549, inlinedAt: !2024)
!2051 = !DILocation(line: 474, column: 12, scope: !1549, inlinedAt: !2024)
!2052 = !DILocation(line: 473, column: 14, scope: !1549, inlinedAt: !2024)
!2053 = !DILocation(line: 475, column: 10, scope: !1549, inlinedAt: !2024)
!2054 = !DILocation(line: 478, column: 12, scope: !1509, inlinedAt: !2024)
!2055 = !DILocation(line: 478, column: 5, scope: !1509, inlinedAt: !2024)
!2056 = !DILocation(line: 644, column: 25, scope: !1831)
!2057 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 645, column: 25, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 645, column: 25)
!2060 = !DILocation(line: 105, column: 27, scope: !597, inlinedAt: !2058)
!2061 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !2058)
!2062 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !2058)
!2063 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !2058)
!2064 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !2058)
!2065 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !2058)
!2066 = !DILocation(line: 112, column: 36, scope: !601, inlinedAt: !2058)
!2067 = !DILocation(line: 112, column: 32, scope: !601, inlinedAt: !2058)
!2068 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !2058)
!2069 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !2058)
!2070 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !2058)
!2071 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !2058)
!2072 = !DILocation(line: 116, column: 36, scope: !604, inlinedAt: !2058)
!2073 = !DILocation(line: 116, column: 32, scope: !604, inlinedAt: !2058)
!2074 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !2058)
!2075 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !2058)
!2076 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !2058)
!2077 = !DILocation(line: 120, column: 36, scope: !606, inlinedAt: !2058)
!2078 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !2058)
!2079 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !2058)
!2080 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !2058)
!2081 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !2058)
!2082 = !DILocation(line: 124, column: 36, scope: !608, inlinedAt: !2058)
!2083 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !2058)
!2084 = !DILocation(line: 0, scope: !636, inlinedAt: !2058)
!2085 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !2058)
!2086 = !DILocation(line: 645, column: 37, scope: !2059)
!2087 = !DILocation(line: 645, column: 25, scope: !1831)
!2088 = !DILocation(line: 646, column: 29, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 645, column: 42)
!2090 = !DILocation(line: 647, column: 21, scope: !2089)
!2091 = !DILocation(line: 155, column: 27, scope: !1973, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 649, column: 21, scope: !1831)
!2093 = !DILocation(line: 648, column: 29, scope: !1831)
!2094 = !DILocation(line: 648, column: 21, scope: !1831)
!2095 = !DILocation(line: 154, column: 34, scope: !1973, inlinedAt: !2092)
!2096 = !DILocation(line: 154, column: 44, scope: !1973, inlinedAt: !2092)
!2097 = !DILocation(line: 155, column: 19, scope: !1973, inlinedAt: !2092)
!2098 = !DILocation(line: 156, column: 5, scope: !1973, inlinedAt: !2092)
!2099 = !DILocation(line: 159, column: 32, scope: !1979, inlinedAt: !2092)
!2100 = !DILocation(line: 161, column: 44, scope: !1979, inlinedAt: !2092)
!2101 = !DILocation(line: 161, column: 21, scope: !1979, inlinedAt: !2092)
!2102 = !DILocation(line: 163, column: 13, scope: !1980, inlinedAt: !2092)
!2103 = !DILocation(line: 165, column: 13, scope: !1980, inlinedAt: !2092)
!2104 = !DILocation(line: 165, column: 31, scope: !1980, inlinedAt: !2092)
!2105 = !DILocation(line: 166, column: 13, scope: !1980, inlinedAt: !2092)
!2106 = !DILocation(line: 168, column: 13, scope: !1980, inlinedAt: !2092)
!2107 = !DILocation(line: 168, column: 28, scope: !1980, inlinedAt: !2092)
!2108 = !DILocation(line: 168, column: 32, scope: !1980, inlinedAt: !2092)
!2109 = !DILocation(line: 169, column: 13, scope: !1980, inlinedAt: !2092)
!2110 = !DILocation(line: 171, column: 13, scope: !1980, inlinedAt: !2092)
!2111 = !DILocation(line: 171, column: 28, scope: !1980, inlinedAt: !2092)
!2112 = !DILocation(line: 171, column: 32, scope: !1980, inlinedAt: !2092)
!2113 = !DILocation(line: 172, column: 13, scope: !1980, inlinedAt: !2092)
!2114 = !DILocation(line: 174, column: 13, scope: !1980, inlinedAt: !2092)
!2115 = !DILocation(line: 174, column: 28, scope: !1980, inlinedAt: !2092)
!2116 = !DILocation(line: 174, column: 32, scope: !1980, inlinedAt: !2092)
!2117 = !DILocation(line: 175, column: 13, scope: !1980, inlinedAt: !2092)
!2118 = !DILocation(line: 0, scope: !1831)
!2119 = !DILocation(line: 177, column: 1, scope: !1973, inlinedAt: !2092)
!2120 = !DILocation(line: 650, column: 23, scope: !1831)
!2121 = !DILocation(line: 651, column: 17, scope: !1832)
!2122 = !DILocation(line: 652, column: 17, scope: !1832)
!2123 = !DILocation(line: 655, column: 26, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 655, column: 21)
!2125 = !DILocation(line: 0, scope: !2124)
!2126 = !DILocation(line: 655, column: 21, scope: !1832)
!2127 = !DILocation(line: 656, column: 28, scope: !2124)
!2128 = !DILocation(line: 613, column: 28, scope: !1825)
!2129 = !DILocation(line: 656, column: 21, scope: !2124)
!2130 = !DILocation(line: 658, column: 28, scope: !2124)
!2131 = !DILocation(line: 660, column: 21, scope: !1835)
!2132 = !DILocation(line: 660, column: 26, scope: !1835)
!2133 = !DILocation(line: 482, column: 22, scope: !1561, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 661, column: 25, scope: !1835)
!2135 = !DILocation(line: 482, column: 44, scope: !1561, inlinedAt: !2134)
!2136 = !DILocation(line: 483, column: 11, scope: !1561, inlinedAt: !2134)
!2137 = !DILocation(line: 489, column: 5, scope: !1561, inlinedAt: !2134)
!2138 = !DILocation(line: 490, column: 22, scope: !1575, inlinedAt: !2134)
!2139 = !DILocation(line: 490, column: 16, scope: !1575, inlinedAt: !2134)
!2140 = !DILocation(line: 490, column: 11, scope: !1575, inlinedAt: !2134)
!2141 = !DILocation(line: 490, column: 14, scope: !1575, inlinedAt: !2134)
!2142 = !DILocation(line: 491, column: 11, scope: !1575, inlinedAt: !2134)
!2143 = !DILocation(line: 492, column: 5, scope: !1575, inlinedAt: !2134)
!2144 = !DILocation(line: 484, column: 12, scope: !1561, inlinedAt: !2134)
!2145 = !DILocation(line: 496, column: 8, scope: !1561, inlinedAt: !2134)
!2146 = !DILocation(line: 500, column: 5, scope: !1561, inlinedAt: !2134)
!2147 = !DILocation(line: 500, column: 13, scope: !1561, inlinedAt: !2134)
!2148 = !DILocation(line: 501, column: 15, scope: !1588, inlinedAt: !2134)
!2149 = !DILocation(line: 483, column: 14, scope: !1561, inlinedAt: !2134)
!2150 = !DILocation(line: 502, column: 12, scope: !1588, inlinedAt: !2134)
!2151 = !DILocation(line: 503, column: 12, scope: !1588, inlinedAt: !2134)
!2152 = !DILocation(line: 505, column: 10, scope: !1588, inlinedAt: !2134)
!2153 = !DILocation(line: 502, column: 14, scope: !1588, inlinedAt: !2134)
!2154 = !DILocation(line: 504, column: 10, scope: !1588, inlinedAt: !2134)
!2155 = !DILocation(line: 507, column: 12, scope: !1561, inlinedAt: !2134)
!2156 = !DILocation(line: 507, column: 5, scope: !1561, inlinedAt: !2134)
!2157 = !DILocation(line: 661, column: 25, scope: !1835)
!2158 = !DILocation(line: 104, column: 41, scope: !597, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 662, column: 25, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 662, column: 25)
!2161 = !DILocation(line: 105, column: 27, scope: !597, inlinedAt: !2159)
!2162 = !DILocation(line: 105, column: 19, scope: !597, inlinedAt: !2159)
!2163 = !DILocation(line: 106, column: 5, scope: !597, inlinedAt: !2159)
!2164 = !DILocation(line: 111, column: 13, scope: !601, inlinedAt: !2159)
!2165 = !DILocation(line: 112, column: 24, scope: !601, inlinedAt: !2159)
!2166 = !DILocation(line: 112, column: 20, scope: !601, inlinedAt: !2159)
!2167 = !DILocation(line: 112, column: 36, scope: !601, inlinedAt: !2159)
!2168 = !DILocation(line: 112, column: 32, scope: !601, inlinedAt: !2159)
!2169 = !DILocation(line: 112, column: 30, scope: !601, inlinedAt: !2159)
!2170 = !DILocation(line: 115, column: 13, scope: !604, inlinedAt: !2159)
!2171 = !DILocation(line: 116, column: 24, scope: !604, inlinedAt: !2159)
!2172 = !DILocation(line: 116, column: 20, scope: !604, inlinedAt: !2159)
!2173 = !DILocation(line: 116, column: 36, scope: !604, inlinedAt: !2159)
!2174 = !DILocation(line: 116, column: 32, scope: !604, inlinedAt: !2159)
!2175 = !DILocation(line: 116, column: 30, scope: !604, inlinedAt: !2159)
!2176 = !DILocation(line: 119, column: 13, scope: !606, inlinedAt: !2159)
!2177 = !DILocation(line: 120, column: 24, scope: !606, inlinedAt: !2159)
!2178 = !DILocation(line: 120, column: 36, scope: !606, inlinedAt: !2159)
!2179 = !DILocation(line: 120, column: 30, scope: !606, inlinedAt: !2159)
!2180 = !DILocation(line: 120, column: 20, scope: !606, inlinedAt: !2159)
!2181 = !DILocation(line: 123, column: 13, scope: !608, inlinedAt: !2159)
!2182 = !DILocation(line: 124, column: 24, scope: !608, inlinedAt: !2159)
!2183 = !DILocation(line: 124, column: 36, scope: !608, inlinedAt: !2159)
!2184 = !DILocation(line: 124, column: 30, scope: !608, inlinedAt: !2159)
!2185 = !DILocation(line: 0, scope: !636, inlinedAt: !2159)
!2186 = !DILocation(line: 128, column: 1, scope: !597, inlinedAt: !2159)
!2187 = !DILocation(line: 662, column: 37, scope: !2160)
!2188 = !DILocation(line: 662, column: 25, scope: !1835)
!2189 = !DILocation(line: 663, column: 29, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 662, column: 42)
!2191 = !DILocation(line: 664, column: 21, scope: !2190)
!2192 = !DILocation(line: 155, column: 27, scope: !1973, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 666, column: 21, scope: !1835)
!2194 = !DILocation(line: 665, column: 29, scope: !1835)
!2195 = !DILocation(line: 665, column: 21, scope: !1835)
!2196 = !DILocation(line: 154, column: 34, scope: !1973, inlinedAt: !2193)
!2197 = !DILocation(line: 154, column: 44, scope: !1973, inlinedAt: !2193)
!2198 = !DILocation(line: 155, column: 19, scope: !1973, inlinedAt: !2193)
!2199 = !DILocation(line: 156, column: 5, scope: !1973, inlinedAt: !2193)
!2200 = !DILocation(line: 159, column: 32, scope: !1979, inlinedAt: !2193)
!2201 = !DILocation(line: 161, column: 44, scope: !1979, inlinedAt: !2193)
!2202 = !DILocation(line: 161, column: 21, scope: !1979, inlinedAt: !2193)
!2203 = !DILocation(line: 163, column: 13, scope: !1980, inlinedAt: !2193)
!2204 = !DILocation(line: 165, column: 13, scope: !1980, inlinedAt: !2193)
!2205 = !DILocation(line: 165, column: 31, scope: !1980, inlinedAt: !2193)
!2206 = !DILocation(line: 166, column: 13, scope: !1980, inlinedAt: !2193)
!2207 = !DILocation(line: 168, column: 13, scope: !1980, inlinedAt: !2193)
!2208 = !DILocation(line: 168, column: 28, scope: !1980, inlinedAt: !2193)
!2209 = !DILocation(line: 168, column: 32, scope: !1980, inlinedAt: !2193)
!2210 = !DILocation(line: 169, column: 13, scope: !1980, inlinedAt: !2193)
!2211 = !DILocation(line: 171, column: 13, scope: !1980, inlinedAt: !2193)
!2212 = !DILocation(line: 171, column: 28, scope: !1980, inlinedAt: !2193)
!2213 = !DILocation(line: 171, column: 32, scope: !1980, inlinedAt: !2193)
!2214 = !DILocation(line: 172, column: 13, scope: !1980, inlinedAt: !2193)
!2215 = !DILocation(line: 174, column: 13, scope: !1980, inlinedAt: !2193)
!2216 = !DILocation(line: 174, column: 28, scope: !1980, inlinedAt: !2193)
!2217 = !DILocation(line: 174, column: 32, scope: !1980, inlinedAt: !2193)
!2218 = !DILocation(line: 175, column: 13, scope: !1980, inlinedAt: !2193)
!2219 = !DILocation(line: 0, scope: !1835)
!2220 = !DILocation(line: 177, column: 1, scope: !1973, inlinedAt: !2193)
!2221 = !DILocation(line: 667, column: 23, scope: !1835)
!2222 = !DILocation(line: 668, column: 17, scope: !1832)
!2223 = !DILocation(line: 669, column: 17, scope: !1832)
!2224 = !DILocation(line: 671, column: 20, scope: !1832)
!2225 = !DILocation(line: 671, column: 17, scope: !1832)
!2226 = !DILocation(line: 671, column: 24, scope: !1832)
!2227 = !DILocation(line: 154, column: 34, scope: !1973, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 672, column: 17, scope: !1832)
!2229 = !DILocation(line: 154, column: 44, scope: !1973, inlinedAt: !2228)
!2230 = !DILocation(line: 155, column: 27, scope: !1973, inlinedAt: !2228)
!2231 = !DILocation(line: 155, column: 19, scope: !1973, inlinedAt: !2228)
!2232 = !DILocation(line: 156, column: 5, scope: !1973, inlinedAt: !2228)
!2233 = !DILocation(line: 159, column: 32, scope: !1979, inlinedAt: !2228)
!2234 = !DILocation(line: 161, column: 44, scope: !1979, inlinedAt: !2228)
!2235 = !DILocation(line: 161, column: 21, scope: !1979, inlinedAt: !2228)
!2236 = !DILocation(line: 163, column: 13, scope: !1980, inlinedAt: !2228)
!2237 = !DILocation(line: 165, column: 13, scope: !1980, inlinedAt: !2228)
!2238 = !DILocation(line: 165, column: 31, scope: !1980, inlinedAt: !2228)
!2239 = !DILocation(line: 166, column: 13, scope: !1980, inlinedAt: !2228)
!2240 = !DILocation(line: 168, column: 13, scope: !1980, inlinedAt: !2228)
!2241 = !DILocation(line: 168, column: 28, scope: !1980, inlinedAt: !2228)
!2242 = !DILocation(line: 168, column: 32, scope: !1980, inlinedAt: !2228)
!2243 = !DILocation(line: 169, column: 13, scope: !1980, inlinedAt: !2228)
!2244 = !DILocation(line: 171, column: 13, scope: !1980, inlinedAt: !2228)
!2245 = !DILocation(line: 171, column: 28, scope: !1980, inlinedAt: !2228)
!2246 = !DILocation(line: 171, column: 32, scope: !1980, inlinedAt: !2228)
!2247 = !DILocation(line: 172, column: 13, scope: !1980, inlinedAt: !2228)
!2248 = !DILocation(line: 174, column: 13, scope: !1980, inlinedAt: !2228)
!2249 = !DILocation(line: 174, column: 28, scope: !1980, inlinedAt: !2228)
!2250 = !DILocation(line: 174, column: 32, scope: !1980, inlinedAt: !2228)
!2251 = !DILocation(line: 175, column: 13, scope: !1980, inlinedAt: !2228)
!2252 = !DILocation(line: 177, column: 1, scope: !1973, inlinedAt: !2228)
!2253 = !DILocation(line: 673, column: 17, scope: !1832)
!2254 = !DILocation(line: 677, column: 16, scope: !1833)
!2255 = !DILocation(line: 677, column: 13, scope: !1833)
!2256 = !DILocation(line: 677, column: 20, scope: !1833)
!2257 = !DILocation(line: 154, column: 34, scope: !1973, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 678, column: 13, scope: !1833)
!2259 = !DILocation(line: 154, column: 44, scope: !1973, inlinedAt: !2258)
!2260 = !DILocation(line: 155, column: 27, scope: !1973, inlinedAt: !2258)
!2261 = !DILocation(line: 155, column: 19, scope: !1973, inlinedAt: !2258)
!2262 = !DILocation(line: 156, column: 5, scope: !1973, inlinedAt: !2258)
!2263 = !DILocation(line: 159, column: 32, scope: !1979, inlinedAt: !2258)
!2264 = !DILocation(line: 161, column: 44, scope: !1979, inlinedAt: !2258)
!2265 = !DILocation(line: 161, column: 21, scope: !1979, inlinedAt: !2258)
!2266 = !DILocation(line: 163, column: 13, scope: !1980, inlinedAt: !2258)
!2267 = !DILocation(line: 165, column: 13, scope: !1980, inlinedAt: !2258)
!2268 = !DILocation(line: 165, column: 31, scope: !1980, inlinedAt: !2258)
!2269 = !DILocation(line: 166, column: 13, scope: !1980, inlinedAt: !2258)
!2270 = !DILocation(line: 168, column: 13, scope: !1980, inlinedAt: !2258)
!2271 = !DILocation(line: 168, column: 28, scope: !1980, inlinedAt: !2258)
!2272 = !DILocation(line: 168, column: 32, scope: !1980, inlinedAt: !2258)
!2273 = !DILocation(line: 169, column: 13, scope: !1980, inlinedAt: !2258)
!2274 = !DILocation(line: 171, column: 13, scope: !1980, inlinedAt: !2258)
!2275 = !DILocation(line: 171, column: 28, scope: !1980, inlinedAt: !2258)
!2276 = !DILocation(line: 171, column: 32, scope: !1980, inlinedAt: !2258)
!2277 = !DILocation(line: 172, column: 13, scope: !1980, inlinedAt: !2258)
!2278 = !DILocation(line: 174, column: 13, scope: !1980, inlinedAt: !2258)
!2279 = !DILocation(line: 174, column: 28, scope: !1980, inlinedAt: !2258)
!2280 = !DILocation(line: 174, column: 32, scope: !1980, inlinedAt: !2258)
!2281 = !DILocation(line: 175, column: 13, scope: !1980, inlinedAt: !2258)
!2282 = !DILocation(line: 0, scope: !1833)
!2283 = !DILocation(line: 177, column: 1, scope: !1973, inlinedAt: !2258)
!2284 = !DILocation(line: 679, column: 13, scope: !1833)
!2285 = !DILocation(line: 681, column: 10, scope: !1825)
!2286 = distinct !{!2286, !1866, !2287}
!2287 = !DILocation(line: 682, column: 5, scope: !1816)
!2288 = !DILocation(line: 683, column: 5, scope: !1816)
!2289 = !DILocation(line: 686, column: 5, scope: !1816)
!2290 = !DILocation(line: 686, column: 10, scope: !1816)
!2291 = !DILocation(line: 688, column: 1, scope: !1816)
!2292 = !DILocation(line: 687, column: 5, scope: !1816)
!2293 = distinct !DISubprogram(name: "sdstrim", scope: !3, file: !3, line: 704, type: !1361, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2295 = !DILocalVariable(name: "s", arg: 1, scope: !2293, file: !3, line: 704, type: !110)
!2296 = !DILocalVariable(name: "cset", arg: 2, scope: !2293, file: !3, line: 704, type: !76)
!2297 = !DILocalVariable(name: "start", scope: !2293, file: !3, line: 705, type: !15)
!2298 = !DILocalVariable(name: "end", scope: !2293, file: !3, line: 705, type: !15)
!2299 = !DILocalVariable(name: "sp", scope: !2293, file: !3, line: 705, type: !15)
!2300 = !DILocalVariable(name: "ep", scope: !2293, file: !3, line: 705, type: !15)
!2301 = !DILocalVariable(name: "len", scope: !2293, file: !3, line: 706, type: !113)
!2302 = !DILocation(line: 704, column: 17, scope: !2293)
!2303 = !DILocation(line: 704, column: 32, scope: !2293)
!2304 = !DILocation(line: 705, column: 11, scope: !2293)
!2305 = !DILocation(line: 705, column: 25, scope: !2293)
!2306 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 709, column: 18, scope: !2293)
!2308 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2307)
!2309 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2307)
!2310 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2307)
!2311 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2307)
!2312 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2307)
!2313 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2307)
!2314 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2307)
!2315 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2307)
!2316 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2307)
!2317 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2307)
!2318 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2307)
!2319 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2307)
!2320 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2307)
!2321 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2307)
!2322 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2307)
!2323 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2307)
!2324 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2307)
!2325 = !DILocation(line: 0, scope: !431, inlinedAt: !2307)
!2326 = !DILocation(line: 0, scope: !2293)
!2327 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2307)
!2328 = !DILocation(line: 709, column: 17, scope: !2293)
!2329 = !DILocation(line: 709, column: 27, scope: !2293)
!2330 = !DILocation(line: 705, column: 19, scope: !2293)
!2331 = !DILocation(line: 705, column: 30, scope: !2293)
!2332 = !DILocation(line: 710, column: 5, scope: !2293)
!2333 = !DILocation(line: 710, column: 14, scope: !2293)
!2334 = !DILocation(line: 710, column: 21, scope: !2293)
!2335 = !DILocation(line: 710, column: 37, scope: !2293)
!2336 = !DILocation(line: 710, column: 24, scope: !2293)
!2337 = !DILocation(line: 710, column: 45, scope: !2293)
!2338 = distinct !{!2338, !2332, !2337}
!2339 = !DILocation(line: 711, column: 5, scope: !2293)
!2340 = !DILocation(line: 711, column: 14, scope: !2293)
!2341 = !DILocation(line: 711, column: 19, scope: !2293)
!2342 = !DILocation(line: 711, column: 35, scope: !2293)
!2343 = !DILocation(line: 711, column: 22, scope: !2293)
!2344 = !DILocation(line: 711, column: 43, scope: !2293)
!2345 = distinct !{!2345, !2339, !2344}
!2346 = !DILocation(line: 712, column: 15, scope: !2293)
!2347 = !DILocation(line: 712, column: 11, scope: !2293)
!2348 = !DILocation(line: 712, column: 31, scope: !2293)
!2349 = !DILocation(line: 712, column: 35, scope: !2293)
!2350 = !DILocation(line: 706, column: 12, scope: !2293)
!2351 = !DILocation(line: 713, column: 11, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 713, column: 9)
!2353 = !DILocation(line: 713, column: 9, scope: !2293)
!2354 = !DILocation(line: 713, column: 18, scope: !2352)
!2355 = !DILocation(line: 714, column: 5, scope: !2293)
!2356 = !DILocation(line: 714, column: 12, scope: !2293)
!2357 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 715, column: 5, scope: !2293)
!2359 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !2358)
!2360 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !2358)
!2361 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !2358)
!2362 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !2358)
!2363 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !2358)
!2364 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !2358)
!2365 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !2358)
!2366 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !2358)
!2367 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !2358)
!2368 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !2358)
!2369 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !2358)
!2370 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !2358)
!2371 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !2358)
!2372 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !2358)
!2373 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !2358)
!2374 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !2358)
!2375 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !2358)
!2376 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !2358)
!2377 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !2358)
!2378 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !2358)
!2379 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !2358)
!2380 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !2358)
!2381 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !2358)
!2382 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !2358)
!2383 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !2358)
!2384 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !2358)
!2385 = !DILocation(line: 152, column: 1, scope: !508, inlinedAt: !2358)
!2386 = !DILocation(line: 716, column: 5, scope: !2293)
!2387 = distinct !DISubprogram(name: "sdsrange", scope: !3, file: !3, line: 735, type: !2388, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !110, !24, !24}
!2390 = !{!2391, !2392, !2393, !2394, !2395}
!2391 = !DILocalVariable(name: "s", arg: 1, scope: !2387, file: !3, line: 735, type: !110)
!2392 = !DILocalVariable(name: "start", arg: 2, scope: !2387, file: !3, line: 735, type: !24)
!2393 = !DILocalVariable(name: "end", arg: 3, scope: !2387, file: !3, line: 735, type: !24)
!2394 = !DILocalVariable(name: "newlen", scope: !2387, file: !3, line: 736, type: !113)
!2395 = !DILocalVariable(name: "len", scope: !2387, file: !3, line: 736, type: !113)
!2396 = !DILocation(line: 735, column: 19, scope: !2387)
!2397 = !DILocation(line: 735, column: 30, scope: !2387)
!2398 = !DILocation(line: 735, column: 45, scope: !2387)
!2399 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 736, column: 26, scope: !2387)
!2401 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2400)
!2402 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2400)
!2403 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2400)
!2404 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2400)
!2405 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2400)
!2406 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2400)
!2407 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2400)
!2408 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2400)
!2409 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2400)
!2410 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2400)
!2411 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2400)
!2412 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2400)
!2413 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2400)
!2414 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2400)
!2415 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2400)
!2416 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2400)
!2417 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2400)
!2418 = !DILocation(line: 101, column: 5, scope: !420, inlinedAt: !2400)
!2419 = !DILocation(line: 736, column: 20, scope: !2387)
!2420 = !DILocation(line: 738, column: 9, scope: !2387)
!2421 = !DILocation(line: 0, scope: !431, inlinedAt: !2400)
!2422 = !DILocation(line: 0, scope: !2387)
!2423 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2400)
!2424 = !DILocation(line: 738, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 738, column: 9)
!2426 = !DILocation(line: 739, column: 15, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 739, column: 9)
!2428 = !DILocation(line: 739, column: 9, scope: !2387)
!2429 = !DILocation(line: 740, column: 20, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 739, column: 20)
!2431 = !DILocation(line: 741, column: 13, scope: !2430)
!2432 = !DILocation(line: 742, column: 5, scope: !2430)
!2433 = !DILocation(line: 743, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 743, column: 9)
!2435 = !DILocation(line: 743, column: 9, scope: !2387)
!2436 = !DILocation(line: 744, column: 18, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 743, column: 18)
!2438 = !DILocation(line: 745, column: 13, scope: !2437)
!2439 = !DILocation(line: 746, column: 5, scope: !2437)
!2440 = !DILocation(line: 747, column: 21, scope: !2387)
!2441 = !DILocation(line: 747, column: 14, scope: !2387)
!2442 = !DILocation(line: 736, column: 12, scope: !2387)
!2443 = !DILocation(line: 748, column: 9, scope: !2387)
!2444 = !DILocation(line: 747, column: 38, scope: !2387)
!2445 = !DILocation(line: 747, column: 45, scope: !2387)
!2446 = !DILocation(line: 748, column: 16, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 748, column: 9)
!2448 = !DILocation(line: 749, column: 19, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 749, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 748, column: 22)
!2451 = !DILocation(line: 749, column: 13, scope: !2450)
!2452 = !DILocation(line: 751, column: 24, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 751, column: 20)
!2454 = !DILocation(line: 751, column: 20, scope: !2449)
!2455 = !DILocation(line: 752, column: 22, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 751, column: 41)
!2457 = !DILocation(line: 753, column: 29, scope: !2456)
!2458 = !DILocation(line: 753, column: 22, scope: !2456)
!2459 = !DILocation(line: 753, column: 53, scope: !2456)
!2460 = !DILocation(line: 754, column: 9, scope: !2456)
!2461 = !DILocation(line: 758, column: 15, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 758, column: 9)
!2463 = !DILocation(line: 758, column: 9, scope: !2462)
!2464 = !DILocation(line: 758, column: 18, scope: !2462)
!2465 = !DILocation(line: 758, column: 38, scope: !2462)
!2466 = !DILocation(line: 758, column: 26, scope: !2462)
!2467 = !DILocation(line: 0, scope: !2462)
!2468 = !DILocation(line: 759, column: 5, scope: !2387)
!2469 = !DILocation(line: 759, column: 15, scope: !2387)
!2470 = !DILocation(line: 130, column: 34, scope: !508, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 760, column: 5, scope: !2387)
!2472 = !DILocation(line: 130, column: 44, scope: !508, inlinedAt: !2471)
!2473 = !DILocation(line: 131, column: 27, scope: !508, inlinedAt: !2471)
!2474 = !DILocation(line: 131, column: 19, scope: !508, inlinedAt: !2471)
!2475 = !DILocation(line: 132, column: 5, scope: !508, inlinedAt: !2471)
!2476 = !DILocation(line: 135, column: 32, scope: !515, inlinedAt: !2471)
!2477 = !DILocation(line: 136, column: 23, scope: !515, inlinedAt: !2471)
!2478 = !DILocation(line: 136, column: 21, scope: !515, inlinedAt: !2471)
!2479 = !DILocation(line: 138, column: 13, scope: !516, inlinedAt: !2471)
!2480 = !DILocation(line: 140, column: 33, scope: !516, inlinedAt: !2471)
!2481 = !DILocation(line: 140, column: 13, scope: !516, inlinedAt: !2471)
!2482 = !DILocation(line: 140, column: 31, scope: !516, inlinedAt: !2471)
!2483 = !DILocation(line: 141, column: 13, scope: !516, inlinedAt: !2471)
!2484 = !DILocation(line: 143, column: 34, scope: !516, inlinedAt: !2471)
!2485 = !DILocation(line: 143, column: 13, scope: !516, inlinedAt: !2471)
!2486 = !DILocation(line: 143, column: 28, scope: !516, inlinedAt: !2471)
!2487 = !DILocation(line: 143, column: 32, scope: !516, inlinedAt: !2471)
!2488 = !DILocation(line: 144, column: 13, scope: !516, inlinedAt: !2471)
!2489 = !DILocation(line: 146, column: 34, scope: !516, inlinedAt: !2471)
!2490 = !DILocation(line: 146, column: 13, scope: !516, inlinedAt: !2471)
!2491 = !DILocation(line: 146, column: 28, scope: !516, inlinedAt: !2471)
!2492 = !DILocation(line: 146, column: 32, scope: !516, inlinedAt: !2471)
!2493 = !DILocation(line: 147, column: 13, scope: !516, inlinedAt: !2471)
!2494 = !DILocation(line: 149, column: 13, scope: !516, inlinedAt: !2471)
!2495 = !DILocation(line: 149, column: 28, scope: !516, inlinedAt: !2471)
!2496 = !DILocation(line: 149, column: 32, scope: !516, inlinedAt: !2471)
!2497 = !DILocation(line: 150, column: 13, scope: !516, inlinedAt: !2471)
!2498 = !DILocation(line: 0, scope: !2425)
!2499 = !DILocation(line: 761, column: 1, scope: !2387)
!2500 = distinct !DISubprogram(name: "sdstolower", scope: !3, file: !3, line: 764, type: !451, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2501)
!2501 = !{!2502, !2503, !2504, !2505}
!2502 = !DILocalVariable(name: "s", arg: 1, scope: !2500, file: !3, line: 764, type: !110)
!2503 = !DILocalVariable(name: "len", scope: !2500, file: !3, line: 765, type: !113)
!2504 = !DILocalVariable(name: "j", scope: !2500, file: !3, line: 765, type: !113)
!2505 = !DILocalVariable(name: "__x", scope: !2506, file: !3, line: 767, type: !16)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 767, column: 38)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 767, column: 5)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 767, column: 5)
!2509 = !DILocation(line: 764, column: 21, scope: !2500)
!2510 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 765, column: 18, scope: !2500)
!2512 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2511)
!2513 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2511)
!2514 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2511)
!2515 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2511)
!2516 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2511)
!2517 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2511)
!2518 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2511)
!2519 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2511)
!2520 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2511)
!2521 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2511)
!2522 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2511)
!2523 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2511)
!2524 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2511)
!2525 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2511)
!2526 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2511)
!2527 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2511)
!2528 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2511)
!2529 = !DILocation(line: 101, column: 5, scope: !420, inlinedAt: !2511)
!2530 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2511)
!2531 = !DILocation(line: 765, column: 12, scope: !2500)
!2532 = !DILocation(line: 765, column: 29, scope: !2500)
!2533 = !DILocation(line: 767, column: 10, scope: !2508)
!2534 = !DILocation(line: 767, column: 5, scope: !2508)
!2535 = !DILocation(line: 0, scope: !431, inlinedAt: !2511)
!2536 = !DILocation(line: 0, scope: !2500)
!2537 = !DILocation(line: 767, column: 19, scope: !2507)
!2538 = !DILocation(line: 767, column: 38, scope: !2506)
!2539 = !DILocation(line: 767, column: 36, scope: !2507)
!2540 = !DILocation(line: 767, column: 27, scope: !2507)
!2541 = !DILocation(line: 767, column: 5, scope: !2507)
!2542 = distinct !{!2542, !2534, !2543}
!2543 = !DILocation(line: 767, column: 38, scope: !2508)
!2544 = !DILocation(line: 768, column: 1, scope: !2500)
!2545 = distinct !DISubprogram(name: "sdstoupper", scope: !3, file: !3, line: 771, type: !451, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2546)
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DILocalVariable(name: "s", arg: 1, scope: !2545, file: !3, line: 771, type: !110)
!2548 = !DILocalVariable(name: "len", scope: !2545, file: !3, line: 772, type: !113)
!2549 = !DILocalVariable(name: "j", scope: !2545, file: !3, line: 772, type: !113)
!2550 = !DILocalVariable(name: "__x", scope: !2551, file: !3, line: 774, type: !16)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 774, column: 38)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 774, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 774, column: 5)
!2554 = !DILocation(line: 771, column: 21, scope: !2545)
!2555 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 772, column: 18, scope: !2545)
!2557 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2556)
!2558 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2556)
!2559 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2556)
!2560 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2556)
!2561 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2556)
!2562 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2556)
!2563 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2556)
!2564 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2556)
!2565 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2556)
!2566 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2556)
!2567 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2556)
!2568 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2556)
!2569 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2556)
!2570 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2556)
!2571 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2556)
!2572 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2556)
!2573 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2556)
!2574 = !DILocation(line: 101, column: 5, scope: !420, inlinedAt: !2556)
!2575 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2556)
!2576 = !DILocation(line: 772, column: 12, scope: !2545)
!2577 = !DILocation(line: 772, column: 29, scope: !2545)
!2578 = !DILocation(line: 774, column: 10, scope: !2553)
!2579 = !DILocation(line: 774, column: 5, scope: !2553)
!2580 = !DILocation(line: 0, scope: !431, inlinedAt: !2556)
!2581 = !DILocation(line: 0, scope: !2545)
!2582 = !DILocation(line: 774, column: 19, scope: !2552)
!2583 = !DILocation(line: 774, column: 38, scope: !2551)
!2584 = !DILocation(line: 774, column: 36, scope: !2552)
!2585 = !DILocation(line: 774, column: 27, scope: !2552)
!2586 = !DILocation(line: 774, column: 5, scope: !2552)
!2587 = distinct !{!2587, !2579, !2588}
!2588 = !DILocation(line: 774, column: 38, scope: !2553)
!2589 = !DILocation(line: 775, column: 1, scope: !2545)
!2590 = distinct !DISubprogram(name: "sdscmp", scope: !3, file: !3, line: 788, type: !2591, isLocal: false, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!29, !415, !415}
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599}
!2594 = !DILocalVariable(name: "s1", arg: 1, scope: !2590, file: !3, line: 788, type: !415)
!2595 = !DILocalVariable(name: "s2", arg: 2, scope: !2590, file: !3, line: 788, type: !415)
!2596 = !DILocalVariable(name: "l1", scope: !2590, file: !3, line: 789, type: !113)
!2597 = !DILocalVariable(name: "l2", scope: !2590, file: !3, line: 789, type: !113)
!2598 = !DILocalVariable(name: "minlen", scope: !2590, file: !3, line: 789, type: !113)
!2599 = !DILocalVariable(name: "cmp", scope: !2590, file: !3, line: 790, type: !29)
!2600 = !DILocation(line: 788, column: 22, scope: !2590)
!2601 = !DILocation(line: 788, column: 36, scope: !2590)
!2602 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 792, column: 10, scope: !2590)
!2604 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2603)
!2605 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2603)
!2606 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2603)
!2607 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2603)
!2608 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2603)
!2609 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2603)
!2610 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2603)
!2611 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2603)
!2612 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2603)
!2613 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2603)
!2614 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2603)
!2615 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2603)
!2616 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2603)
!2617 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2603)
!2618 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2603)
!2619 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2603)
!2620 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2603)
!2621 = !DILocation(line: 0, scope: !431, inlinedAt: !2603)
!2622 = !DILocation(line: 0, scope: !2590)
!2623 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2603)
!2624 = !DILocation(line: 789, column: 12, scope: !2590)
!2625 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 793, column: 10, scope: !2590)
!2627 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !2626)
!2628 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !2626)
!2629 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !2626)
!2630 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !2626)
!2631 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !2626)
!2632 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !2626)
!2633 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !2626)
!2634 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !2626)
!2635 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !2626)
!2636 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !2626)
!2637 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !2626)
!2638 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !2626)
!2639 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !2626)
!2640 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !2626)
!2641 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !2626)
!2642 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !2626)
!2643 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !2626)
!2644 = !DILocation(line: 0, scope: !431, inlinedAt: !2626)
!2645 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !2626)
!2646 = !DILocation(line: 789, column: 16, scope: !2590)
!2647 = !DILocation(line: 794, column: 18, scope: !2590)
!2648 = !DILocation(line: 794, column: 14, scope: !2590)
!2649 = !DILocation(line: 789, column: 20, scope: !2590)
!2650 = !DILocation(line: 795, column: 11, scope: !2590)
!2651 = !DILocation(line: 790, column: 9, scope: !2590)
!2652 = !DILocation(line: 796, column: 13, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 796, column: 9)
!2654 = !DILocation(line: 796, column: 9, scope: !2590)
!2655 = !DILocation(line: 796, column: 28, scope: !2653)
!2656 = !DILocation(line: 796, column: 26, scope: !2653)
!2657 = !DILocation(line: 796, column: 37, scope: !2653)
!2658 = !DILocation(line: 0, scope: !2653)
!2659 = !DILocation(line: 798, column: 1, scope: !2590)
!2660 = distinct !DISubprogram(name: "sdssplitlen", scope: !3, file: !3, line: 816, type: !2661, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2665)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!2663, !76, !24, !76, !29, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2682}
!2666 = !DILocalVariable(name: "s", arg: 1, scope: !2660, file: !3, line: 816, type: !76)
!2667 = !DILocalVariable(name: "len", arg: 2, scope: !2660, file: !3, line: 816, type: !24)
!2668 = !DILocalVariable(name: "sep", arg: 3, scope: !2660, file: !3, line: 816, type: !76)
!2669 = !DILocalVariable(name: "seplen", arg: 4, scope: !2660, file: !3, line: 816, type: !29)
!2670 = !DILocalVariable(name: "count", arg: 5, scope: !2660, file: !3, line: 816, type: !2664)
!2671 = !DILocalVariable(name: "elements", scope: !2660, file: !3, line: 817, type: !29)
!2672 = !DILocalVariable(name: "slots", scope: !2660, file: !3, line: 817, type: !29)
!2673 = !DILocalVariable(name: "start", scope: !2660, file: !3, line: 818, type: !28)
!2674 = !DILocalVariable(name: "j", scope: !2660, file: !3, line: 818, type: !28)
!2675 = !DILocalVariable(name: "tokens", scope: !2660, file: !3, line: 819, type: !2663)
!2676 = !DILocalVariable(name: "newtokens", scope: !2677, file: !3, line: 833, type: !2663)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 832, column: 33)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 832, column: 13)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 830, column: 44)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 830, column: 5)
!2681 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 830, column: 5)
!2682 = !DILocalVariable(name: "i", scope: !2683, file: !3, line: 858, type: !29)
!2683 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 857, column: 5)
!2684 = !DILocation(line: 816, column: 30, scope: !2660)
!2685 = !DILocation(line: 816, column: 41, scope: !2660)
!2686 = !DILocation(line: 816, column: 58, scope: !2660)
!2687 = !DILocation(line: 816, column: 67, scope: !2660)
!2688 = !DILocation(line: 816, column: 80, scope: !2660)
!2689 = !DILocation(line: 817, column: 9, scope: !2660)
!2690 = !DILocation(line: 817, column: 23, scope: !2660)
!2691 = !DILocation(line: 818, column: 10, scope: !2660)
!2692 = !DILocation(line: 821, column: 16, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 821, column: 9)
!2694 = !DILocation(line: 821, column: 27, scope: !2693)
!2695 = !DILocation(line: 821, column: 20, scope: !2693)
!2696 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 823, column: 14, scope: !2660)
!2698 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !2697)
!2699 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !2697)
!2701 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !2700)
!2702 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !2700)
!2703 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !2700)
!2704 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !2700)
!2705 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !2700)
!2706 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !2700)
!2707 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !2700)
!2708 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !2697)
!2709 = !DILocation(line: 819, column: 10, scope: !2660)
!2710 = !DILocation(line: 824, column: 9, scope: !2660)
!2711 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !2700)
!2713 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !2712)
!2714 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !2712)
!2715 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !2712)
!2716 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !2712)
!2717 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !2712)
!2718 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !2700)
!2719 = !DILocation(line: 823, column: 14, scope: !2660)
!2720 = !DILocation(line: 824, column: 16, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 824, column: 9)
!2722 = !DILocation(line: 826, column: 13, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 826, column: 9)
!2724 = !DILocation(line: 826, column: 9, scope: !2660)
!2725 = !DILocation(line: 827, column: 16, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 826, column: 19)
!2727 = !DILocation(line: 828, column: 9, scope: !2726)
!2728 = !DILocation(line: 818, column: 21, scope: !2660)
!2729 = !DILocation(line: 830, column: 10, scope: !2681)
!2730 = !DILocation(line: 830, column: 33, scope: !2680)
!2731 = !DILocation(line: 830, column: 26, scope: !2680)
!2732 = !DILocation(line: 830, column: 25, scope: !2680)
!2733 = !DILocation(line: 830, column: 19, scope: !2680)
!2734 = !DILocation(line: 830, column: 5, scope: !2681)
!2735 = !DILocation(line: 832, column: 29, scope: !2678)
!2736 = !DILocation(line: 832, column: 19, scope: !2678)
!2737 = !DILocation(line: 832, column: 13, scope: !2679)
!2738 = !DILocation(line: 835, column: 19, scope: !2677)
!2739 = !DILocation(line: 48, column: 37, scope: !711, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 836, column: 25, scope: !2677)
!2741 = !DILocation(line: 49, column: 20, scope: !711, inlinedAt: !2740)
!2742 = !DILocation(line: 190, column: 49, scope: !721, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 49, column: 9, scope: !711, inlinedAt: !2740)
!2744 = !DILocation(line: 190, column: 58, scope: !721, inlinedAt: !2743)
!2745 = !DILocation(line: 192, column: 6, scope: !732, inlinedAt: !2743)
!2746 = !DILocation(line: 192, column: 6, scope: !721, inlinedAt: !2743)
!2747 = !DILocation(line: 193, column: 3, scope: !731, inlinedAt: !2743)
!2748 = !DILocation(line: 193, column: 9, scope: !731, inlinedAt: !2743)
!2749 = !DILocation(line: 194, column: 3, scope: !731, inlinedAt: !2743)
!2750 = !DILocation(line: 197, column: 1, scope: !721, inlinedAt: !2743)
!2751 = !DILocation(line: 49, column: 2, scope: !711, inlinedAt: !2740)
!2752 = !DILocation(line: 837, column: 17, scope: !2677)
!2753 = !DILocation(line: 836, column: 54, scope: !2677)
!2754 = !DILocation(line: 836, column: 53, scope: !2677)
!2755 = !DILocation(line: 190, column: 70, scope: !721, inlinedAt: !2743)
!2756 = !DILocation(line: 48, column: 49, scope: !711, inlinedAt: !2740)
!2757 = !DILocation(line: 183, column: 52, scope: !740, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 196, column: 9, scope: !721, inlinedAt: !2743)
!2759 = !DILocation(line: 184, column: 13, scope: !740, inlinedAt: !2758)
!2760 = !DILocation(line: 184, column: 25, scope: !740, inlinedAt: !2758)
!2761 = !DILocation(line: 186, column: 2, scope: !749, inlinedAt: !2758)
!2762 = !DILocation(line: 187, column: 12, scope: !740, inlinedAt: !2758)
!2763 = !DILocation(line: 187, column: 9, scope: !740, inlinedAt: !2758)
!2764 = !DILocation(line: 187, column: 2, scope: !740, inlinedAt: !2758)
!2765 = !DILocation(line: 196, column: 2, scope: !721, inlinedAt: !2743)
!2766 = !DILocation(line: 837, column: 27, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 837, column: 17)
!2768 = !DILocation(line: 836, column: 25, scope: !2677)
!2769 = !DILocation(line: 833, column: 18, scope: !2677)
!2770 = !DILocation(line: 839, column: 9, scope: !2678)
!2771 = !DILocation(line: 837, column: 36, scope: !2767)
!2772 = !DILocation(line: 0, scope: !2660)
!2773 = !DILocation(line: 823, column: 12, scope: !2660)
!2774 = !DILocation(line: 841, column: 26, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 841, column: 13)
!2776 = !DILocation(line: 0, scope: !2775)
!2777 = !DILocation(line: 841, column: 29, scope: !2775)
!2778 = !DILocation(line: 841, column: 39, scope: !2775)
!2779 = !DILocation(line: 841, column: 36, scope: !2775)
!2780 = !DILocation(line: 841, column: 47, scope: !2775)
!2781 = !DILocation(line: 841, column: 51, scope: !2775)
!2782 = !DILocation(line: 841, column: 74, scope: !2775)
!2783 = !DILocation(line: 841, column: 13, scope: !2679)
!2784 = !DILocation(line: 842, column: 43, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 841, column: 81)
!2786 = !DILocation(line: 842, column: 51, scope: !2785)
!2787 = !DILocation(line: 842, column: 32, scope: !2785)
!2788 = !DILocation(line: 842, column: 13, scope: !2785)
!2789 = !DILocation(line: 842, column: 30, scope: !2785)
!2790 = !DILocation(line: 843, column: 34, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 843, column: 17)
!2792 = !DILocation(line: 843, column: 17, scope: !2785)
!2793 = !DILocation(line: 844, column: 21, scope: !2785)
!2794 = !DILocation(line: 845, column: 22, scope: !2785)
!2795 = !DILocation(line: 846, column: 25, scope: !2785)
!2796 = !DILocation(line: 847, column: 9, scope: !2785)
!2797 = !DILocation(line: 0, scope: !2681)
!2798 = !DILocation(line: 830, column: 40, scope: !2680)
!2799 = !DILocation(line: 830, column: 5, scope: !2680)
!2800 = distinct !{!2800, !2734, !2801}
!2801 = !DILocation(line: 848, column: 5, scope: !2681)
!2802 = !DILocation(line: 0, scope: !2785)
!2803 = !DILocation(line: 850, column: 35, scope: !2660)
!2804 = !DILocation(line: 850, column: 45, scope: !2660)
!2805 = !DILocation(line: 850, column: 24, scope: !2660)
!2806 = !DILocation(line: 850, column: 5, scope: !2660)
!2807 = !DILocation(line: 850, column: 22, scope: !2660)
!2808 = !DILocation(line: 851, column: 26, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 851, column: 9)
!2810 = !DILocation(line: 851, column: 9, scope: !2660)
!2811 = !DILocation(line: 852, column: 13, scope: !2660)
!2812 = !DILocation(line: 853, column: 12, scope: !2660)
!2813 = !DILocation(line: 854, column: 5, scope: !2660)
!2814 = !DILocation(line: 858, column: 13, scope: !2683)
!2815 = !DILocation(line: 859, column: 14, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 859, column: 9)
!2817 = !DILocation(line: 859, column: 23, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 859, column: 9)
!2819 = !DILocation(line: 859, column: 9, scope: !2816)
!2820 = !DILocation(line: 859, column: 48, scope: !2818)
!2821 = !DILocation(line: 859, column: 40, scope: !2818)
!2822 = !DILocation(line: 859, column: 36, scope: !2818)
!2823 = !DILocation(line: 859, column: 9, scope: !2818)
!2824 = distinct !{!2824, !2819, !2825}
!2825 = !DILocation(line: 859, column: 57, scope: !2816)
!2826 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 860, column: 9, scope: !2683)
!2828 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !2827)
!2829 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !2827)
!2831 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !2830)
!2832 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !2830)
!2834 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !2833)
!2835 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !2833)
!2836 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !2833)
!2837 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !2833)
!2838 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !2833)
!2839 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !2833)
!2840 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !2833)
!2841 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !2830)
!2842 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !2827)
!2843 = !DILocation(line: 861, column: 16, scope: !2683)
!2844 = !DILocation(line: 864, column: 1, scope: !2660)
!2845 = distinct !DISubprogram(name: "sdsfreesplitres", scope: !3, file: !3, line: 867, type: !2846, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2663, !29}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "tokens", arg: 1, scope: !2845, file: !3, line: 867, type: !2663)
!2850 = !DILocalVariable(name: "count", arg: 2, scope: !2845, file: !3, line: 867, type: !29)
!2851 = !DILocation(line: 867, column: 27, scope: !2845)
!2852 = !DILocation(line: 867, column: 39, scope: !2845)
!2853 = !DILocation(line: 868, column: 10, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 868, column: 9)
!2855 = !DILocation(line: 868, column: 9, scope: !2845)
!2856 = !DILocation(line: 869, column: 5, scope: !2845)
!2857 = !DILocation(line: 869, column: 16, scope: !2845)
!2858 = !DILocation(line: 870, column: 17, scope: !2845)
!2859 = !DILocation(line: 870, column: 9, scope: !2845)
!2860 = distinct !{!2860, !2856, !2861}
!2861 = !DILocation(line: 870, column: 30, scope: !2845)
!2862 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 871, column: 5, scope: !2845)
!2864 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !2863)
!2866 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !2865)
!2868 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !2867)
!2869 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !2867)
!2870 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !2867)
!2871 = !DILocation(line: 871, column: 12, scope: !2845)
!2872 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !2867)
!2873 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !2865)
!2874 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !2863)
!2875 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !2867)
!2876 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !2867)
!2877 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !2867)
!2878 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !2865)
!2879 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !2863)
!2880 = !DILocation(line: 872, column: 1, scope: !2845)
!2881 = distinct !DISubprogram(name: "sdscatrepr", scope: !3, file: !3, line: 880, type: !1404, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DILocalVariable(name: "s", arg: 1, scope: !2881, file: !3, line: 880, type: !110)
!2884 = !DILocalVariable(name: "p", arg: 2, scope: !2881, file: !3, line: 880, type: !76)
!2885 = !DILocalVariable(name: "len", arg: 3, scope: !2881, file: !3, line: 880, type: !113)
!2886 = !DILocation(line: 880, column: 20, scope: !2881)
!2887 = !DILocation(line: 880, column: 35, scope: !2881)
!2888 = !DILocation(line: 880, column: 45, scope: !2881)
!2889 = !DILocation(line: 881, column: 9, scope: !2881)
!2890 = !DILocation(line: 882, column: 5, scope: !2881)
!2891 = !DILocation(line: 882, column: 14, scope: !2881)
!2892 = !DILocation(line: 883, column: 16, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 882, column: 18)
!2894 = !DILocation(line: 883, column: 9, scope: !2893)
!2895 = !DILocation(line: 886, column: 17, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 883, column: 20)
!2897 = !DILocation(line: 887, column: 13, scope: !2896)
!2898 = !DILocation(line: 888, column: 24, scope: !2896)
!2899 = !DILocation(line: 888, column: 46, scope: !2896)
!2900 = !DILocation(line: 889, column: 24, scope: !2896)
!2901 = !DILocation(line: 889, column: 46, scope: !2896)
!2902 = !DILocation(line: 890, column: 24, scope: !2896)
!2903 = !DILocation(line: 890, column: 46, scope: !2896)
!2904 = !DILocation(line: 891, column: 24, scope: !2896)
!2905 = !DILocation(line: 891, column: 46, scope: !2896)
!2906 = !DILocation(line: 892, column: 24, scope: !2896)
!2907 = !DILocation(line: 892, column: 46, scope: !2896)
!2908 = !DILocation(line: 894, column: 17, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 894, column: 17)
!2910 = !DILocation(line: 894, column: 17, scope: !2896)
!2911 = !DILocation(line: 895, column: 21, scope: !2909)
!2912 = !DILocation(line: 895, column: 17, scope: !2909)
!2913 = !DILocation(line: 897, column: 46, scope: !2909)
!2914 = !DILocation(line: 897, column: 21, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2896)
!2916 = !DILocation(line: 900, column: 10, scope: !2893)
!2917 = distinct !{!2917, !2890, !2918}
!2918 = !DILocation(line: 901, column: 5, scope: !2881)
!2919 = !DILocation(line: 0, scope: !2909)
!2920 = !DILocation(line: 902, column: 12, scope: !2881)
!2921 = !DILocation(line: 902, column: 5, scope: !2881)
!2922 = distinct !DISubprogram(name: "is_hex_digit", scope: !3, file: !3, line: 907, type: !167, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2923)
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "c", arg: 1, scope: !2922, file: !3, line: 907, type: !16)
!2925 = !DILocation(line: 907, column: 23, scope: !2922)
!2926 = !DILocation(line: 908, column: 15, scope: !2922)
!2927 = !DILocation(line: 908, column: 22, scope: !2922)
!2928 = !DILocation(line: 908, column: 48, scope: !2922)
!2929 = !DILocation(line: 908, column: 27, scope: !2922)
!2930 = !DILocation(line: 908, column: 35, scope: !2922)
!2931 = !DILocation(line: 908, column: 41, scope: !2922)
!2932 = !DILocation(line: 908, column: 53, scope: !2922)
!2933 = !DILocation(line: 908, column: 61, scope: !2922)
!2934 = !DILocation(line: 909, column: 22, scope: !2922)
!2935 = !DILocation(line: 908, column: 5, scope: !2922)
!2936 = distinct !DISubprogram(name: "hex_digit_to_int", scope: !3, file: !3, line: 914, type: !167, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2937)
!2937 = !{!2938}
!2938 = !DILocalVariable(name: "c", arg: 1, scope: !2936, file: !3, line: 914, type: !16)
!2939 = !DILocation(line: 914, column: 27, scope: !2936)
!2940 = !DILocation(line: 915, column: 12, scope: !2936)
!2941 = !DILocation(line: 915, column: 5, scope: !2936)
!2942 = !DILocation(line: 0, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 915, column: 15)
!2944 = !DILocation(line: 934, column: 1, scope: !2936)
!2945 = distinct !DISubprogram(name: "sdssplitargs", scope: !3, file: !3, line: 955, type: !2946, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!2663, !76, !2664}
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2955, !2959, !2960, !2961, !2967}
!2949 = !DILocalVariable(name: "line", arg: 1, scope: !2945, file: !3, line: 955, type: !76)
!2950 = !DILocalVariable(name: "argc", arg: 2, scope: !2945, file: !3, line: 955, type: !2664)
!2951 = !DILocalVariable(name: "p", scope: !2945, file: !3, line: 956, type: !76)
!2952 = !DILocalVariable(name: "current", scope: !2945, file: !3, line: 957, type: !15)
!2953 = !DILocalVariable(name: "vector", scope: !2945, file: !3, line: 958, type: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!2955 = !DILocalVariable(name: "inq", scope: !2956, file: !3, line: 966, type: !29)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 964, column: 17)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 964, column: 13)
!2958 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 961, column: 14)
!2959 = !DILocalVariable(name: "insq", scope: !2956, file: !3, line: 967, type: !29)
!2960 = !DILocalVariable(name: "done", scope: !2956, file: !3, line: 968, type: !29)
!2961 = !DILocalVariable(name: "byte", scope: !2962, file: !3, line: 977, type: !18)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 976, column: 21)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 973, column: 25)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 972, column: 26)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 972, column: 21)
!2966 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 971, column: 26)
!2967 = !DILocalVariable(name: "c", scope: !2968, file: !3, line: 984, type: !16)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 983, column: 54)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 983, column: 32)
!2970 = !DILocation(line: 955, column: 31, scope: !2945)
!2971 = !DILocation(line: 955, column: 42, scope: !2945)
!2972 = !DILocation(line: 956, column: 17, scope: !2945)
!2973 = !DILocation(line: 957, column: 11, scope: !2945)
!2974 = !DILocation(line: 958, column: 12, scope: !2945)
!2975 = !DILocation(line: 960, column: 11, scope: !2945)
!2976 = !DILocation(line: 961, column: 5, scope: !2945)
!2977 = !DILocation(line: 963, column: 9, scope: !2958)
!2978 = !DILocation(line: 963, column: 15, scope: !2958)
!2979 = !DILocation(line: 963, column: 18, scope: !2958)
!2980 = !DILocation(line: 963, column: 21, scope: !2958)
!2981 = !DILocation(line: 963, column: 35, scope: !2958)
!2982 = distinct !{!2982, !2977, !2981}
!2983 = !DILocation(line: 0, scope: !2958)
!2984 = !DILocation(line: 964, column: 13, scope: !2957)
!2985 = !DILocation(line: 964, column: 13, scope: !2958)
!2986 = !DILocation(line: 966, column: 17, scope: !2956)
!2987 = !DILocation(line: 967, column: 17, scope: !2956)
!2988 = !DILocation(line: 968, column: 17, scope: !2956)
!2989 = !DILocation(line: 970, column: 17, scope: !2956)
!2990 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 150, column: 12, scope: !339, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 970, column: 44, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 970, column: 17)
!2994 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !2991)
!2996 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !2995)
!2997 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !2995)
!2998 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !2995)
!2999 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !2991)
!3000 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !2991)
!3002 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !3001)
!3003 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !3001)
!3004 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !3001)
!3005 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !2991)
!3007 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !3006)
!3008 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !3006)
!3010 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !3009)
!3011 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !3009)
!3012 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !3009)
!3013 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !3009)
!3014 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !3009)
!3015 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !3009)
!3016 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !3009)
!3017 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !3006)
!3018 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !2991)
!3019 = !DILocation(line: 100, column: 9, scope: !107, inlinedAt: !2991)
!3020 = !DILocation(line: 0, scope: !339, inlinedAt: !2992)
!3021 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !2991)
!3022 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !3009)
!3024 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !3023)
!3025 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !3023)
!3026 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !3023)
!3027 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !3023)
!3028 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !3023)
!3029 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !3009)
!3030 = !DILocation(line: 104, column: 12, scope: !291, inlinedAt: !2991)
!3031 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !2991)
!3032 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !2991)
!3033 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !2991)
!3034 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !2991)
!3035 = !DILocation(line: 107, column: 5, scope: !107, inlinedAt: !2991)
!3036 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !2991)
!3037 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !2991)
!3038 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !2991)
!3039 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !2991)
!3040 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !2991)
!3041 = !DILocation(line: 141, column: 17, scope: !330, inlinedAt: !2991)
!3042 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !2991)
!3043 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !2991)
!3044 = !DILocation(line: 0, scope: !107, inlinedAt: !2991)
!3045 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !2991)
!3046 = !DILocation(line: 150, column: 5, scope: !339, inlinedAt: !2992)
!3047 = !DILocation(line: 970, column: 34, scope: !2993)
!3048 = !DILocation(line: 971, column: 13, scope: !2956)
!3049 = !DILocation(line: 972, column: 21, scope: !2965)
!3050 = !DILocation(line: 972, column: 21, scope: !2966)
!3051 = !DILocation(line: 973, column: 25, scope: !2963)
!3052 = !DILocation(line: 973, column: 28, scope: !2963)
!3053 = !DILocation(line: 973, column: 36, scope: !2963)
!3054 = !DILocation(line: 973, column: 42, scope: !2963)
!3055 = !DILocation(line: 973, column: 39, scope: !2963)
!3056 = !DILocation(line: 973, column: 46, scope: !2963)
!3057 = !DILocation(line: 973, column: 53, scope: !2963)
!3058 = !DILocation(line: 974, column: 62, scope: !2963)
!3059 = !DILocation(line: 974, column: 59, scope: !2963)
!3060 = !DILocation(line: 907, column: 23, scope: !2922, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 974, column: 46, scope: !2963)
!3062 = !DILocation(line: 908, column: 15, scope: !2922, inlinedAt: !3061)
!3063 = !DILocation(line: 908, column: 22, scope: !2922, inlinedAt: !3061)
!3064 = !DILocation(line: 908, column: 48, scope: !2922, inlinedAt: !3061)
!3065 = !DILocation(line: 908, column: 27, scope: !2922, inlinedAt: !3061)
!3066 = !DILocation(line: 908, column: 35, scope: !2922, inlinedAt: !3061)
!3067 = !DILocation(line: 908, column: 41, scope: !2922, inlinedAt: !3061)
!3068 = !DILocation(line: 908, column: 53, scope: !2922, inlinedAt: !3061)
!3069 = !DILocation(line: 908, column: 61, scope: !2922, inlinedAt: !3061)
!3070 = !DILocation(line: 908, column: 5, scope: !2922, inlinedAt: !3061)
!3071 = !DILocation(line: 974, column: 67, scope: !2963)
!3072 = !DILocation(line: 909, column: 22, scope: !2922, inlinedAt: !3061)
!3073 = !DILocation(line: 975, column: 62, scope: !2963)
!3074 = !DILocation(line: 975, column: 59, scope: !2963)
!3075 = !DILocation(line: 907, column: 23, scope: !2922, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 975, column: 46, scope: !2963)
!3077 = !DILocation(line: 908, column: 15, scope: !2922, inlinedAt: !3076)
!3078 = !DILocation(line: 908, column: 22, scope: !2922, inlinedAt: !3076)
!3079 = !DILocation(line: 908, column: 48, scope: !2922, inlinedAt: !3076)
!3080 = !DILocation(line: 908, column: 27, scope: !2922, inlinedAt: !3076)
!3081 = !DILocation(line: 908, column: 35, scope: !2922, inlinedAt: !3076)
!3082 = !DILocation(line: 908, column: 41, scope: !2922, inlinedAt: !3076)
!3083 = !DILocation(line: 908, column: 53, scope: !2922, inlinedAt: !3076)
!3084 = !DILocation(line: 908, column: 61, scope: !2922, inlinedAt: !3076)
!3085 = !DILocation(line: 908, column: 5, scope: !2922, inlinedAt: !3076)
!3086 = !DILocation(line: 973, column: 25, scope: !2964)
!3087 = !DILocation(line: 909, column: 22, scope: !2922, inlinedAt: !3076)
!3088 = !DILocation(line: 977, column: 39, scope: !2962)
!3089 = !DILocation(line: 977, column: 25, scope: !2962)
!3090 = !DILocation(line: 979, column: 50, scope: !2962)
!3091 = !DILocation(line: 979, column: 33, scope: !2962)
!3092 = !DILocation(line: 979, column: 57, scope: !2962)
!3093 = !DILocation(line: 980, column: 50, scope: !2962)
!3094 = !DILocation(line: 980, column: 33, scope: !2962)
!3095 = !DILocation(line: 979, column: 61, scope: !2962)
!3096 = !DILocation(line: 979, column: 32, scope: !2962)
!3097 = !DILocation(line: 979, column: 30, scope: !2962)
!3098 = !DILocation(line: 981, column: 35, scope: !2962)
!3099 = !DILocation(line: 983, column: 21, scope: !2963)
!3100 = !DILocation(line: 983, column: 21, scope: !2962)
!3101 = !DILocation(line: 983, column: 32, scope: !2969)
!3102 = !DILocation(line: 983, column: 35, scope: !2969)
!3103 = !DILocation(line: 983, column: 43, scope: !2969)
!3104 = !DILocation(line: 983, column: 49, scope: !2969)
!3105 = !DILocation(line: 983, column: 46, scope: !2969)
!3106 = !DILocation(line: 983, column: 32, scope: !2963)
!3107 = !DILocation(line: 984, column: 30, scope: !2968)
!3108 = !DILocation(line: 984, column: 25, scope: !2968)
!3109 = !DILocation(line: 987, column: 32, scope: !2968)
!3110 = !DILocation(line: 987, column: 25, scope: !2968)
!3111 = !DILocation(line: 988, column: 37, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 987, column: 36)
!3113 = !DILocation(line: 988, column: 45, scope: !3112)
!3114 = !DILocation(line: 989, column: 37, scope: !3112)
!3115 = !DILocation(line: 989, column: 45, scope: !3112)
!3116 = !DILocation(line: 990, column: 37, scope: !3112)
!3117 = !DILocation(line: 990, column: 45, scope: !3112)
!3118 = !DILocation(line: 991, column: 37, scope: !3112)
!3119 = !DILocation(line: 991, column: 45, scope: !3112)
!3120 = !DILocation(line: 992, column: 37, scope: !3112)
!3121 = !DILocation(line: 992, column: 45, scope: !3112)
!3122 = !DILocation(line: 993, column: 36, scope: !3112)
!3123 = !DILocation(line: 993, column: 42, scope: !3112)
!3124 = !DILocation(line: 0, scope: !3112)
!3125 = !DILocation(line: 995, column: 35, scope: !2968)
!3126 = !DILocation(line: 996, column: 21, scope: !2969)
!3127 = !DILocation(line: 996, column: 21, scope: !2968)
!3128 = !DILocation(line: 996, column: 32, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 996, column: 32)
!3130 = !DILocation(line: 996, column: 35, scope: !3129)
!3131 = !DILocation(line: 996, column: 32, scope: !2969)
!3132 = !DILocation(line: 999, column: 32, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 999, column: 29)
!3134 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 996, column: 43)
!3135 = !DILocation(line: 999, column: 29, scope: !3133)
!3136 = !DILocation(line: 999, column: 36, scope: !3133)
!3137 = !DILocation(line: 999, column: 40, scope: !3133)
!3138 = !DILocation(line: 999, column: 29, scope: !3134)
!3139 = !DILocation(line: 1001, column: 33, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1001, column: 32)
!3141 = !DILocation(line: 1001, column: 32, scope: !3129)
!3142 = !DILocation(line: 1005, column: 35, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1004, column: 28)
!3144 = !DILocation(line: 1007, column: 28, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 1007, column: 28)
!3146 = !DILocation(line: 0, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1022, column: 24)
!3148 = !DILocation(line: 1007, column: 28, scope: !2965)
!3149 = !DILocation(line: 1008, column: 28, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1008, column: 25)
!3151 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1007, column: 34)
!3152 = !DILocation(line: 1008, column: 36, scope: !3150)
!3153 = !DILocation(line: 1008, column: 42, scope: !3150)
!3154 = !DILocation(line: 1008, column: 39, scope: !3150)
!3155 = !DILocation(line: 1008, column: 46, scope: !3150)
!3156 = !DILocation(line: 1008, column: 25, scope: !3151)
!3157 = !DILocation(line: 1010, column: 35, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1008, column: 55)
!3159 = !DILocation(line: 1011, column: 21, scope: !3158)
!3160 = !DILocation(line: 1011, column: 32, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1011, column: 32)
!3162 = !DILocation(line: 1011, column: 35, scope: !3161)
!3163 = !DILocation(line: 1011, column: 32, scope: !3150)
!3164 = !DILocation(line: 1014, column: 32, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1014, column: 29)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1011, column: 44)
!3167 = !DILocation(line: 1014, column: 29, scope: !3165)
!3168 = !DILocation(line: 1014, column: 36, scope: !3165)
!3169 = !DILocation(line: 1014, column: 40, scope: !3165)
!3170 = !DILocation(line: 1014, column: 29, scope: !3166)
!3171 = !DILocation(line: 1016, column: 33, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1016, column: 32)
!3173 = !DILocation(line: 1016, column: 32, scope: !3161)
!3174 = !DILocation(line: 1020, column: 35, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1019, column: 28)
!3176 = !DILocation(line: 1023, column: 21, scope: !3147)
!3177 = !DILocation(line: 1033, column: 25, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 1023, column: 32)
!3179 = !DILocation(line: 1036, column: 25, scope: !3178)
!3180 = !DILocation(line: 1038, column: 35, scope: !3178)
!3181 = !DILocation(line: 1039, column: 25, scope: !3178)
!3182 = !DILocation(line: 0, scope: !2945)
!3183 = !DILocation(line: 0, scope: !2993)
!3184 = !DILocation(line: 0, scope: !2956)
!3185 = !DILocation(line: 0, scope: !3178)
!3186 = !DILocation(line: 1042, column: 21, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1042, column: 21)
!3188 = !DILocation(line: 1042, column: 21, scope: !2966)
!3189 = !DILocation(line: 1042, column: 26, scope: !3187)
!3190 = !DILocation(line: 1042, column: 25, scope: !3187)
!3191 = !DILocation(line: 0, scope: !2962)
!3192 = !DILocation(line: 971, column: 19, scope: !2956)
!3193 = distinct !{!3193, !3048, !3194}
!3194 = !DILocation(line: 1043, column: 13, scope: !2956)
!3195 = !DILocation(line: 1045, column: 41, scope: !2956)
!3196 = !DILocation(line: 48, column: 37, scope: !711, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 1045, column: 22, scope: !2956)
!3198 = !DILocation(line: 49, column: 20, scope: !711, inlinedAt: !3197)
!3199 = !DILocation(line: 190, column: 49, scope: !721, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 49, column: 9, scope: !711, inlinedAt: !3197)
!3201 = !DILocation(line: 190, column: 58, scope: !721, inlinedAt: !3200)
!3202 = !DILocation(line: 192, column: 6, scope: !732, inlinedAt: !3200)
!3203 = !DILocation(line: 192, column: 6, scope: !721, inlinedAt: !3200)
!3204 = !DILocation(line: 193, column: 3, scope: !731, inlinedAt: !3200)
!3205 = !DILocation(line: 193, column: 9, scope: !731, inlinedAt: !3200)
!3206 = !DILocation(line: 194, column: 3, scope: !731, inlinedAt: !3200)
!3207 = !DILocation(line: 1045, column: 47, scope: !2956)
!3208 = !DILocation(line: 1045, column: 39, scope: !2956)
!3209 = !DILocation(line: 1045, column: 50, scope: !2956)
!3210 = !DILocation(line: 190, column: 70, scope: !721, inlinedAt: !3200)
!3211 = !DILocation(line: 48, column: 49, scope: !711, inlinedAt: !3197)
!3212 = !DILocation(line: 183, column: 52, scope: !740, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 196, column: 9, scope: !721, inlinedAt: !3200)
!3214 = !DILocation(line: 184, column: 13, scope: !740, inlinedAt: !3213)
!3215 = !DILocation(line: 184, column: 25, scope: !740, inlinedAt: !3213)
!3216 = !DILocation(line: 186, column: 2, scope: !749, inlinedAt: !3213)
!3217 = !DILocation(line: 187, column: 12, scope: !740, inlinedAt: !3213)
!3218 = !DILocation(line: 187, column: 9, scope: !740, inlinedAt: !3213)
!3219 = !DILocation(line: 187, column: 2, scope: !740, inlinedAt: !3213)
!3220 = !DILocation(line: 196, column: 2, scope: !721, inlinedAt: !3200)
!3221 = !DILocation(line: 0, scope: !721, inlinedAt: !3200)
!3222 = !DILocation(line: 0, scope: !711, inlinedAt: !3197)
!3223 = !DILocation(line: 197, column: 1, scope: !721, inlinedAt: !3200)
!3224 = !DILocation(line: 49, column: 2, scope: !711, inlinedAt: !3197)
!3225 = !DILocation(line: 1045, column: 22, scope: !2956)
!3226 = !DILocation(line: 1046, column: 20, scope: !2956)
!3227 = !DILocation(line: 1046, column: 13, scope: !2956)
!3228 = !DILocation(line: 1046, column: 27, scope: !2956)
!3229 = !DILocation(line: 1047, column: 20, scope: !2956)
!3230 = !DILocation(line: 1049, column: 9, scope: !2957)
!3231 = !DILocation(line: 0, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1016, column: 37)
!3233 = !DILocation(line: 1057, column: 18, scope: !2945)
!3234 = !DILocation(line: 1057, column: 5, scope: !2945)
!3235 = !DILocation(line: 1051, column: 24, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 1051, column: 17)
!3237 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1049, column: 16)
!3238 = !DILocation(line: 1051, column: 17, scope: !3237)
!3239 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1051, column: 42, scope: !3236)
!3241 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !3240)
!3242 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !3240)
!3244 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !3243)
!3245 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !3243)
!3246 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !3243)
!3247 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !3243)
!3248 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !3243)
!3249 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !3243)
!3250 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !3243)
!3252 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !3251)
!3253 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !3251)
!3254 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !3251)
!3255 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !3251)
!3256 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !3251)
!3257 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !3243)
!3258 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !3243)
!3259 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !3240)
!3260 = !DILocation(line: 1051, column: 33, scope: !3236)
!3261 = !DILocation(line: 1058, column: 17, scope: !2945)
!3262 = !DILocation(line: 1058, column: 9, scope: !2945)
!3263 = distinct !{!3263, !3234, !3264}
!3264 = !DILocation(line: 1058, column: 30, scope: !2945)
!3265 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1059, column: 5, scope: !2945)
!3267 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !3266)
!3268 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !3266)
!3270 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !3269)
!3271 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !3269)
!3273 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !3272)
!3274 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !3272)
!3275 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !3272)
!3276 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !3272)
!3277 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !3272)
!3278 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !3272)
!3279 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !3272)
!3280 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !3269)
!3281 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !3266)
!3282 = !DILocation(line: 1060, column: 9, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 1060, column: 9)
!3284 = !DILocation(line: 1060, column: 9, scope: !2945)
!3285 = !DILocation(line: 165, column: 18, scope: !450, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1060, column: 18, scope: !3283)
!3287 = !DILocation(line: 166, column: 9, scope: !450, inlinedAt: !3286)
!3288 = !DILocation(line: 167, column: 32, scope: !450, inlinedAt: !3286)
!3289 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 167, column: 21, scope: !450, inlinedAt: !3286)
!3291 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !3283)
!3293 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !3290)
!3294 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 167, column: 5, scope: !450, inlinedAt: !3286)
!3296 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !3295)
!3298 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !3297)
!3300 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !3299)
!3301 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !3299)
!3302 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !3299)
!3303 = !DILocation(line: 167, column: 20, scope: !450, inlinedAt: !3286)
!3304 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !3299)
!3305 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !3297)
!3306 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !3295)
!3307 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !3299)
!3308 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !3299)
!3309 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !3299)
!3310 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !3297)
!3311 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !3295)
!3312 = !DILocation(line: 168, column: 1, scope: !450, inlinedAt: !3286)
!3313 = !DILocation(line: 1060, column: 18, scope: !3283)
!3314 = !DILocation(line: 1061, column: 11, scope: !2945)
!3315 = !DILocation(line: 1062, column: 5, scope: !2945)
!3316 = !DILocation(line: 0, scope: !3237)
!3317 = !DILocation(line: 1063, column: 1, scope: !2945)
!3318 = distinct !DISubprogram(name: "sdsmapchars", scope: !3, file: !3, line: 1074, type: !3319, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!110, !110, !76, !76, !113}
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3322 = !DILocalVariable(name: "s", arg: 1, scope: !3318, file: !3, line: 1074, type: !110)
!3323 = !DILocalVariable(name: "from", arg: 2, scope: !3318, file: !3, line: 1074, type: !76)
!3324 = !DILocalVariable(name: "to", arg: 3, scope: !3318, file: !3, line: 1074, type: !76)
!3325 = !DILocalVariable(name: "setlen", arg: 4, scope: !3318, file: !3, line: 1074, type: !113)
!3326 = !DILocalVariable(name: "j", scope: !3318, file: !3, line: 1075, type: !113)
!3327 = !DILocalVariable(name: "i", scope: !3318, file: !3, line: 1075, type: !113)
!3328 = !DILocalVariable(name: "l", scope: !3318, file: !3, line: 1075, type: !113)
!3329 = !DILocation(line: 1074, column: 21, scope: !3318)
!3330 = !DILocation(line: 1074, column: 36, scope: !3318)
!3331 = !DILocation(line: 1074, column: 54, scope: !3318)
!3332 = !DILocation(line: 1074, column: 65, scope: !3318)
!3333 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1075, column: 22, scope: !3318)
!3335 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !3334)
!3336 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !3334)
!3337 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !3334)
!3338 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !3334)
!3339 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !3334)
!3340 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !3334)
!3341 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !3334)
!3342 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !3334)
!3343 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !3334)
!3344 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !3334)
!3345 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !3334)
!3346 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !3334)
!3347 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !3334)
!3348 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !3334)
!3349 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !3334)
!3350 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !3334)
!3351 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !3334)
!3352 = !DILocation(line: 101, column: 5, scope: !420, inlinedAt: !3334)
!3353 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !3334)
!3354 = !DILocation(line: 1075, column: 18, scope: !3318)
!3355 = !DILocation(line: 1075, column: 12, scope: !3318)
!3356 = !DILocation(line: 1077, column: 10, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 1077, column: 5)
!3358 = !DILocation(line: 1077, column: 5, scope: !3357)
!3359 = !DILocation(line: 0, scope: !3318)
!3360 = !DILocation(line: 0, scope: !431, inlinedAt: !3334)
!3361 = !DILocation(line: 1077, column: 19, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1077, column: 5)
!3363 = !DILocation(line: 1075, column: 15, scope: !3318)
!3364 = !DILocation(line: 1078, column: 9, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1078, column: 9)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 1077, column: 29)
!3367 = !DILocation(line: 1079, column: 25, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 1079, column: 17)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 1078, column: 38)
!3370 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 1078, column: 9)
!3371 = !DILocation(line: 1079, column: 22, scope: !3368)
!3372 = !DILocation(line: 1079, column: 17, scope: !3369)
!3373 = !DILocation(line: 1080, column: 24, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1079, column: 34)
!3375 = !DILocation(line: 1080, column: 22, scope: !3374)
!3376 = !DILocation(line: 1081, column: 17, scope: !3374)
!3377 = !DILocation(line: 1078, column: 34, scope: !3370)
!3378 = !DILocation(line: 1078, column: 9, scope: !3370)
!3379 = !DILocation(line: 1078, column: 23, scope: !3370)
!3380 = distinct !{!3380, !3364, !3381}
!3381 = !DILocation(line: 1083, column: 9, scope: !3365)
!3382 = !DILocation(line: 1077, column: 25, scope: !3362)
!3383 = !DILocation(line: 1077, column: 5, scope: !3362)
!3384 = distinct !{!3384, !3358, !3385}
!3385 = !DILocation(line: 1084, column: 5, scope: !3357)
!3386 = !DILocation(line: 1085, column: 5, scope: !3318)
!3387 = distinct !DISubprogram(name: "sdsjoin", scope: !3, file: !3, line: 1090, type: !3388, isLocal: false, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!110, !2954, !29, !15}
!3390 = !{!3391, !3392, !3393, !3394, !3395}
!3391 = !DILocalVariable(name: "argv", arg: 1, scope: !3387, file: !3, line: 1090, type: !2954)
!3392 = !DILocalVariable(name: "argc", arg: 2, scope: !3387, file: !3, line: 1090, type: !29)
!3393 = !DILocalVariable(name: "sep", arg: 3, scope: !3387, file: !3, line: 1090, type: !15)
!3394 = !DILocalVariable(name: "join", scope: !3387, file: !3, line: 1091, type: !110)
!3395 = !DILocalVariable(name: "j", scope: !3387, file: !3, line: 1092, type: !29)
!3396 = !DILocation(line: 1090, column: 20, scope: !3387)
!3397 = !DILocation(line: 1090, column: 30, scope: !3387)
!3398 = !DILocation(line: 1090, column: 42, scope: !3387)
!3399 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 150, column: 12, scope: !339, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 1091, column: 16, scope: !3387)
!3402 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !3400)
!3404 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !3403)
!3405 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !3403)
!3406 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !3403)
!3407 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3400)
!3408 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !3400)
!3410 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !3409)
!3411 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !3409)
!3412 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !3409)
!3413 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3400)
!3415 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !3414)
!3416 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !3414)
!3418 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !3417)
!3419 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !3417)
!3420 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !3417)
!3421 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !3417)
!3422 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !3417)
!3423 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !3417)
!3424 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !3417)
!3425 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !3414)
!3426 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3400)
!3427 = !DILocation(line: 100, column: 9, scope: !107, inlinedAt: !3400)
!3428 = !DILocation(line: 0, scope: !339, inlinedAt: !3401)
!3429 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3400)
!3430 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !3417)
!3432 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !3431)
!3433 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !3431)
!3434 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !3431)
!3435 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !3431)
!3436 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !3431)
!3437 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !3417)
!3438 = !DILocation(line: 104, column: 12, scope: !291, inlinedAt: !3400)
!3439 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3400)
!3440 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3400)
!3441 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3400)
!3442 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3400)
!3443 = !DILocation(line: 107, column: 5, scope: !107, inlinedAt: !3400)
!3444 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3400)
!3445 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3400)
!3446 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3400)
!3447 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3400)
!3448 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3400)
!3449 = !DILocation(line: 141, column: 17, scope: !330, inlinedAt: !3400)
!3450 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3400)
!3451 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3400)
!3452 = !DILocation(line: 0, scope: !107, inlinedAt: !3400)
!3453 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !3400)
!3454 = !DILocation(line: 150, column: 5, scope: !339, inlinedAt: !3401)
!3455 = !DILocation(line: 1091, column: 9, scope: !3387)
!3456 = !DILocation(line: 1092, column: 9, scope: !3387)
!3457 = !DILocation(line: 1094, column: 10, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1094, column: 5)
!3459 = !DILocation(line: 1094, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1094, column: 5)
!3461 = !DILocation(line: 1094, column: 5, scope: !3458)
!3462 = !DILocation(line: 1095, column: 29, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 1094, column: 32)
!3464 = !DILocation(line: 412, column: 16, scope: !1360, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1095, column: 16, scope: !3463)
!3466 = !DILocation(line: 412, column: 31, scope: !1360, inlinedAt: !3465)
!3467 = !DILocation(line: 413, column: 28, scope: !1360, inlinedAt: !3465)
!3468 = !DILocation(line: 413, column: 12, scope: !1360, inlinedAt: !3465)
!3469 = !DILocation(line: 413, column: 5, scope: !1360, inlinedAt: !3465)
!3470 = !DILocation(line: 1096, column: 15, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 1096, column: 13)
!3472 = !DILocation(line: 1096, column: 13, scope: !3463)
!3473 = !DILocation(line: 412, column: 16, scope: !1360, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1096, column: 33, scope: !3471)
!3475 = !DILocation(line: 412, column: 31, scope: !1360, inlinedAt: !3474)
!3476 = !DILocation(line: 413, column: 28, scope: !1360, inlinedAt: !3474)
!3477 = !DILocation(line: 413, column: 12, scope: !1360, inlinedAt: !3474)
!3478 = !DILocation(line: 413, column: 5, scope: !1360, inlinedAt: !3474)
!3479 = !DILocation(line: 1096, column: 26, scope: !3471)
!3480 = !DILocation(line: 0, scope: !3463)
!3481 = !DILocation(line: 1094, column: 28, scope: !3460)
!3482 = !DILocation(line: 1094, column: 5, scope: !3460)
!3483 = distinct !{!3483, !3461, !3484}
!3484 = !DILocation(line: 1097, column: 5, scope: !3458)
!3485 = !DILocation(line: 0, scope: !3471)
!3486 = !DILocation(line: 1098, column: 5, scope: !3387)
!3487 = distinct !DISubprogram(name: "sdsjoinsds", scope: !3, file: !3, line: 1102, type: !3488, isLocal: false, isDefinition: true, scopeLine: 1102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!110, !2663, !29, !76, !113}
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496}
!3491 = !DILocalVariable(name: "argv", arg: 1, scope: !3487, file: !3, line: 1102, type: !2663)
!3492 = !DILocalVariable(name: "argc", arg: 2, scope: !3487, file: !3, line: 1102, type: !29)
!3493 = !DILocalVariable(name: "sep", arg: 3, scope: !3487, file: !3, line: 1102, type: !76)
!3494 = !DILocalVariable(name: "seplen", arg: 4, scope: !3487, file: !3, line: 1102, type: !113)
!3495 = !DILocalVariable(name: "join", scope: !3487, file: !3, line: 1103, type: !110)
!3496 = !DILocalVariable(name: "j", scope: !3487, file: !3, line: 1104, type: !29)
!3497 = !DILocation(line: 1102, column: 21, scope: !3487)
!3498 = !DILocation(line: 1102, column: 31, scope: !3487)
!3499 = !DILocation(line: 1102, column: 49, scope: !3487)
!3500 = !DILocation(line: 1102, column: 61, scope: !3487)
!3501 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 150, column: 12, scope: !339, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1103, column: 16, scope: !3487)
!3504 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !3502)
!3506 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !3505)
!3507 = !DILocation(line: 62, column: 9, scope: !143, inlinedAt: !3505)
!3508 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !3505)
!3509 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3502)
!3510 = !DILocation(line: 44, column: 35, scope: !166, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !3502)
!3512 = !DILocation(line: 45, column: 5, scope: !166, inlinedAt: !3511)
!3513 = !DILocation(line: 49, column: 13, scope: !355, inlinedAt: !3511)
!3514 = !DILocation(line: 58, column: 1, scope: !166, inlinedAt: !3511)
!3515 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3502)
!3517 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !3516)
!3518 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !3516)
!3520 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !3519)
!3521 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !3519)
!3522 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !3519)
!3523 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !3519)
!3524 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !3519)
!3525 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !3519)
!3526 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !3519)
!3527 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !3516)
!3528 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3502)
!3529 = !DILocation(line: 100, column: 9, scope: !107, inlinedAt: !3502)
!3530 = !DILocation(line: 0, scope: !339, inlinedAt: !3503)
!3531 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3502)
!3532 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !3519)
!3534 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !3533)
!3535 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !3533)
!3536 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !3533)
!3537 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !3533)
!3538 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !3533)
!3539 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !3519)
!3540 = !DILocation(line: 104, column: 12, scope: !291, inlinedAt: !3502)
!3541 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3502)
!3542 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3502)
!3543 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3502)
!3544 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3502)
!3545 = !DILocation(line: 107, column: 5, scope: !107, inlinedAt: !3502)
!3546 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3502)
!3547 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3502)
!3548 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3502)
!3549 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3502)
!3550 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3502)
!3551 = !DILocation(line: 141, column: 17, scope: !330, inlinedAt: !3502)
!3552 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3502)
!3553 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3502)
!3554 = !DILocation(line: 0, scope: !107, inlinedAt: !3502)
!3555 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !3502)
!3556 = !DILocation(line: 150, column: 5, scope: !339, inlinedAt: !3503)
!3557 = !DILocation(line: 1103, column: 9, scope: !3487)
!3558 = !DILocation(line: 1104, column: 9, scope: !3487)
!3559 = !DILocation(line: 1106, column: 10, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1106, column: 5)
!3561 = !DILocation(line: 1106, column: 19, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 1106, column: 5)
!3563 = !DILocation(line: 1106, column: 5, scope: !3560)
!3564 = !DILocation(line: 1107, column: 32, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 1106, column: 32)
!3566 = !DILocation(line: 420, column: 19, scope: !1371, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1107, column: 16, scope: !3565)
!3568 = !DILocation(line: 420, column: 32, scope: !1371, inlinedAt: !3567)
!3569 = !DILocation(line: 87, column: 39, scope: !420, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 421, column: 28, scope: !1371, inlinedAt: !3567)
!3571 = !DILocation(line: 88, column: 27, scope: !420, inlinedAt: !3570)
!3572 = !DILocation(line: 88, column: 19, scope: !420, inlinedAt: !3570)
!3573 = !DILocation(line: 89, column: 5, scope: !420, inlinedAt: !3570)
!3574 = !DILocation(line: 91, column: 20, scope: !431, inlinedAt: !3570)
!3575 = !DILocation(line: 91, column: 13, scope: !431, inlinedAt: !3570)
!3576 = !DILocation(line: 93, column: 20, scope: !431, inlinedAt: !3570)
!3577 = !DILocation(line: 93, column: 34, scope: !431, inlinedAt: !3570)
!3578 = !DILocation(line: 93, column: 13, scope: !431, inlinedAt: !3570)
!3579 = !DILocation(line: 95, column: 20, scope: !431, inlinedAt: !3570)
!3580 = !DILocation(line: 95, column: 35, scope: !431, inlinedAt: !3570)
!3581 = !DILocation(line: 95, column: 13, scope: !431, inlinedAt: !3570)
!3582 = !DILocation(line: 97, column: 20, scope: !431, inlinedAt: !3570)
!3583 = !DILocation(line: 97, column: 35, scope: !431, inlinedAt: !3570)
!3584 = !DILocation(line: 97, column: 13, scope: !431, inlinedAt: !3570)
!3585 = !DILocation(line: 99, column: 20, scope: !431, inlinedAt: !3570)
!3586 = !DILocation(line: 99, column: 35, scope: !431, inlinedAt: !3570)
!3587 = !DILocation(line: 99, column: 13, scope: !431, inlinedAt: !3570)
!3588 = !DILocation(line: 0, scope: !431, inlinedAt: !3570)
!3589 = !DILocation(line: 0, scope: !3565)
!3590 = !DILocation(line: 102, column: 1, scope: !420, inlinedAt: !3570)
!3591 = !DILocation(line: 421, column: 12, scope: !1371, inlinedAt: !3567)
!3592 = !DILocation(line: 421, column: 5, scope: !1371, inlinedAt: !3567)
!3593 = !DILocation(line: 1108, column: 15, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1108, column: 13)
!3595 = !DILocation(line: 1108, column: 13, scope: !3565)
!3596 = !DILocation(line: 1108, column: 33, scope: !3594)
!3597 = !DILocation(line: 1108, column: 26, scope: !3594)
!3598 = !DILocation(line: 1106, column: 28, scope: !3562)
!3599 = !DILocation(line: 1106, column: 5, scope: !3562)
!3600 = distinct !{!3600, !3563, !3601}
!3601 = !DILocation(line: 1109, column: 5, scope: !3560)
!3602 = !DILocation(line: 0, scope: !3594)
!3603 = !DILocation(line: 1110, column: 5, scope: !3487)
!3604 = distinct !DISubprogram(name: "sds_malloc", scope: !3, file: !3, line: 1118, type: !180, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3605)
!3605 = !{!3606}
!3606 = !DILocalVariable(name: "size", arg: 1, scope: !3604, file: !3, line: 1118, type: !113)
!3607 = !DILocation(line: 1118, column: 25, scope: !3604)
!3608 = !DILocation(line: 52, column: 37, scope: !178, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 1118, column: 40, scope: !3604)
!3610 = !DILocation(line: 53, column: 19, scope: !178, inlinedAt: !3609)
!3611 = !DILocation(line: 157, column: 48, scope: !191, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 53, column: 9, scope: !178, inlinedAt: !3609)
!3613 = !DILocation(line: 157, column: 58, scope: !191, inlinedAt: !3612)
!3614 = !DILocation(line: 159, column: 6, scope: !254, inlinedAt: !3612)
!3615 = !DILocation(line: 159, column: 6, scope: !191, inlinedAt: !3612)
!3616 = !DILocation(line: 160, column: 3, scope: !258, inlinedAt: !3612)
!3617 = !DILocation(line: 160, column: 9, scope: !258, inlinedAt: !3612)
!3618 = !DILocation(line: 161, column: 3, scope: !258, inlinedAt: !3612)
!3619 = !DILocation(line: 151, column: 51, scope: !264, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 163, column: 9, scope: !191, inlinedAt: !3612)
!3621 = !DILocation(line: 151, column: 61, scope: !264, inlinedAt: !3620)
!3622 = !DILocation(line: 153, column: 2, scope: !271, inlinedAt: !3620)
!3623 = !DILocation(line: 154, column: 12, scope: !264, inlinedAt: !3620)
!3624 = !DILocation(line: 154, column: 9, scope: !264, inlinedAt: !3620)
!3625 = !DILocation(line: 154, column: 2, scope: !264, inlinedAt: !3620)
!3626 = !DILocation(line: 163, column: 2, scope: !191, inlinedAt: !3612)
!3627 = !DILocation(line: 0, scope: !191, inlinedAt: !3612)
!3628 = !DILocation(line: 0, scope: !178, inlinedAt: !3609)
!3629 = !DILocation(line: 164, column: 1, scope: !191, inlinedAt: !3612)
!3630 = !DILocation(line: 53, column: 2, scope: !178, inlinedAt: !3609)
!3631 = !DILocation(line: 1118, column: 33, scope: !3604)
!3632 = distinct !DISubprogram(name: "sds_realloc", scope: !3, file: !3, line: 1119, type: !712, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3633)
!3633 = !{!3634, !3635}
!3634 = !DILocalVariable(name: "ptr", arg: 1, scope: !3632, file: !3, line: 1119, type: !14)
!3635 = !DILocalVariable(name: "size", arg: 2, scope: !3632, file: !3, line: 1119, type: !113)
!3636 = !DILocation(line: 1119, column: 25, scope: !3632)
!3637 = !DILocation(line: 1119, column: 37, scope: !3632)
!3638 = !DILocation(line: 48, column: 37, scope: !711, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1119, column: 52, scope: !3632)
!3640 = !DILocation(line: 48, column: 49, scope: !711, inlinedAt: !3639)
!3641 = !DILocation(line: 49, column: 20, scope: !711, inlinedAt: !3639)
!3642 = !DILocation(line: 190, column: 49, scope: !721, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 49, column: 9, scope: !711, inlinedAt: !3639)
!3644 = !DILocation(line: 190, column: 58, scope: !721, inlinedAt: !3643)
!3645 = !DILocation(line: 190, column: 70, scope: !721, inlinedAt: !3643)
!3646 = !DILocation(line: 192, column: 6, scope: !732, inlinedAt: !3643)
!3647 = !DILocation(line: 192, column: 6, scope: !721, inlinedAt: !3643)
!3648 = !DILocation(line: 193, column: 3, scope: !731, inlinedAt: !3643)
!3649 = !DILocation(line: 193, column: 9, scope: !731, inlinedAt: !3643)
!3650 = !DILocation(line: 194, column: 3, scope: !731, inlinedAt: !3643)
!3651 = !DILocation(line: 183, column: 52, scope: !740, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 196, column: 9, scope: !721, inlinedAt: !3643)
!3653 = !DILocation(line: 184, column: 13, scope: !740, inlinedAt: !3652)
!3654 = !DILocation(line: 184, column: 25, scope: !740, inlinedAt: !3652)
!3655 = !DILocation(line: 186, column: 2, scope: !749, inlinedAt: !3652)
!3656 = !DILocation(line: 187, column: 12, scope: !740, inlinedAt: !3652)
!3657 = !DILocation(line: 187, column: 9, scope: !740, inlinedAt: !3652)
!3658 = !DILocation(line: 187, column: 2, scope: !740, inlinedAt: !3652)
!3659 = !DILocation(line: 196, column: 2, scope: !721, inlinedAt: !3643)
!3660 = !DILocation(line: 0, scope: !721, inlinedAt: !3643)
!3661 = !DILocation(line: 0, scope: !711, inlinedAt: !3639)
!3662 = !DILocation(line: 197, column: 1, scope: !721, inlinedAt: !3643)
!3663 = !DILocation(line: 49, column: 2, scope: !711, inlinedAt: !3639)
!3664 = !DILocation(line: 1119, column: 45, scope: !3632)
!3665 = distinct !DISubprogram(name: "sds_free", scope: !3, file: !3, line: 1120, type: !467, isLocal: false, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3666)
!3666 = !{!3667}
!3667 = !DILocalVariable(name: "ptr", arg: 1, scope: !3665, file: !3, line: 1120, type: !14)
!3668 = !DILocation(line: 1120, column: 21, scope: !3665)
!3669 = !DILocation(line: 56, column: 33, scope: !466, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1120, column: 28, scope: !3665)
!3671 = !DILocation(line: 57, column: 10, scope: !466, inlinedAt: !3670)
!3672 = !DILocation(line: 237, column: 45, scope: !473, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 57, column: 2, scope: !466, inlinedAt: !3670)
!3674 = !DILocation(line: 237, column: 54, scope: !473, inlinedAt: !3673)
!3675 = !DILocation(line: 231, column: 48, scope: !479, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 239, column: 2, scope: !473, inlinedAt: !3673)
!3677 = !DILocation(line: 231, column: 57, scope: !479, inlinedAt: !3676)
!3678 = !DILocation(line: 233, column: 2, scope: !485, inlinedAt: !3676)
!3679 = !DILocation(line: 233, column: 2, scope: !486, inlinedAt: !3676)
!3680 = !DILocation(line: 233, column: 2, scope: !489, inlinedAt: !3676)
!3681 = !DILocation(line: 234, column: 5, scope: !479, inlinedAt: !3676)
!3682 = !DILocation(line: 234, column: 2, scope: !479, inlinedAt: !3676)
!3683 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !3676)
!3684 = !DILocation(line: 240, column: 1, scope: !473, inlinedAt: !3673)
!3685 = !DILocation(line: 58, column: 1, scope: !466, inlinedAt: !3670)
!3686 = !DILocation(line: 1120, column: 41, scope: !3665)
!3687 = !DILocation(line: 196, column: 2, scope: !72)
!3688 = !DILocation(line: 196, column: 10, scope: !72)
!3689 = !DILocation(line: 197, column: 2, scope: !72)
!3690 = !DILocation(line: 198, column: 2, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !73, line: 198, column: 2)
!3692 = distinct !DILexicalBlock(scope: !72, file: !73, line: 198, column: 2)
!3693 = !DILocation(line: 199, column: 2, scope: !72)
!3694 = !DILocation(line: 200, column: 1, scope: !72)
