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
@switch.table.sdssplitargs.20 = private unnamed_addr constant [8 x i64] [i64 -17, i64 0, i64 0, i64 0, i64 -1, i64 -3, i64 -5, i64 -9]

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #0 !dbg !107 {
  %3 = icmp ult i64 %1, 32, !dbg !142
  br i1 %3, label %11, label %4, !dbg !144

; <label>:4:                                      ; preds = %2
  %5 = icmp ult i64 %1, 256, !dbg !145
  br i1 %5, label %11, label %6, !dbg !147

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i64 %1, 65536, !dbg !148
  br i1 %7, label %11, label %8, !dbg !150

; <label>:8:                                      ; preds = %6
  %9 = icmp ult i64 %1, 4294967296, !dbg !151
  %10 = select i1 %9, i8 3, i8 4, !dbg !153
  br label %11, !dbg !153

; <label>:11:                                     ; preds = %2, %4, %6, %8
  %12 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 2, %6 ], [ %10, %8 ], !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  %13 = icmp eq i8 %12, 0, !dbg !157
  %14 = icmp eq i64 %1, 0, !dbg !159
  %15 = and i1 %14, %13, !dbg !160
  %16 = select i1 %15, i8 1, i8 %12, !dbg !160
  %17 = trunc i8 %16 to i3, !dbg !168
  %18 = xor i3 %17, -4, !dbg !168
  %19 = zext i3 %18 to i64, !dbg !168
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdsnewlen, i64 0, i64 %19, !dbg !168
  %21 = load i64, i64* %20, align 8, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %22 = add i64 %1, 1, !dbg !170
  %23 = add i64 %22, %21, !dbg !171
  %24 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !180, !tbaa !181
  %25 = icmp eq %struct.uk_alloc* %24, null, !dbg !248
  br i1 %25, label %26, label %28, !dbg !250, !prof !251

; <label>:26:                                     ; preds = %11
  %27 = tail call i32* @__errno() #7, !dbg !252
  store i32 12, i32* %27, align 4, !dbg !254, !tbaa !255
  br label %32, !dbg !257

; <label>:28:                                     ; preds = %11
  %29 = bitcast %struct.uk_alloc* %24 to i8* (%struct.uk_alloc*, i64)**, !dbg !265
  %30 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %29, align 8, !dbg !265, !tbaa !181
  %31 = tail call i8* %30(%struct.uk_alloc* nonnull %24, i64 %23) #7, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br label %32, !dbg !268

; <label>:32:                                     ; preds = %26, %28
  %33 = phi i8* [ null, %26 ], [ %31, %28 ], !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %34 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !273, !tbaa !181
  %35 = icmp eq i8* %34, %0, !dbg !275
  br i1 %35, label %40, label %36, !dbg !276

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i8* %0, null, !dbg !277
  br i1 %37, label %38, label %40, !dbg !279

; <label>:38:                                     ; preds = %36
  %39 = tail call i8* @memset(i8* %33, i32 0, i64 %23) #7, !dbg !280
  br label %40, !dbg !280

; <label>:40:                                     ; preds = %32, %36, %38
  %41 = phi i8* [ %0, %36 ], [ null, %38 ], [ null, %32 ]
  %42 = icmp eq i8* %33, null, !dbg !281
  br i1 %42, label %81, label %43, !dbg !283

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds i8, i8* %33, i64 %21, !dbg !284
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !286
  switch i3 %17, label %73 [
    i3 0, label %46
    i3 1, label %50
    i3 2, label %54
    i3 3, label %60
    i3 -4, label %66
  ], !dbg !288

; <label>:46:                                     ; preds = %43
  %47 = trunc i64 %1 to i8, !dbg !289
  %48 = shl i8 %47, 3, !dbg !289
  %49 = or i8 %16, %48, !dbg !289
  br label %71, !dbg !291

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %44, i64 -3, !dbg !292
  %52 = trunc i64 %1 to i8, !dbg !293
  store i8 %52, i8* %51, align 1, !dbg !294, !tbaa !295
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !296
  store i8 %52, i8* %53, align 1, !dbg !297, !tbaa !295
  br label %71

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !298
  %56 = trunc i64 %1 to i16, !dbg !299
  %57 = bitcast i8* %55 to i16*, !dbg !300
  store i16 %56, i16* %57, align 1, !dbg !301, !tbaa !302
  %58 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !304
  %59 = bitcast i8* %58 to i16*, !dbg !304
  store i16 %56, i16* %59, align 1, !dbg !305, !tbaa !302
  br label %71

; <label>:60:                                     ; preds = %43
  %61 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !306
  %62 = trunc i64 %1 to i32, !dbg !307
  %63 = bitcast i8* %61 to i32*, !dbg !308
  store i32 %62, i32* %63, align 1, !dbg !309, !tbaa !255
  %64 = getelementptr inbounds i8, i8* %61, i64 4, !dbg !310
  %65 = bitcast i8* %64 to i32*, !dbg !310
  store i32 %62, i32* %65, align 1, !dbg !311, !tbaa !255
  br label %71

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !312
  %68 = bitcast i8* %67 to i64*, !dbg !313
  store i64 %1, i64* %68, align 1, !dbg !314, !tbaa !315
  %69 = getelementptr inbounds i8, i8* %67, i64 8, !dbg !317
  %70 = bitcast i8* %69 to i64*, !dbg !317
  store i64 %1, i64* %70, align 1, !dbg !318, !tbaa !315
  br label %71

; <label>:71:                                     ; preds = %46, %50, %54, %60, %66
  %72 = phi i8 [ %16, %66 ], [ %16, %60 ], [ %16, %54 ], [ %16, %50 ], [ %49, %46 ]
  store i8 %72, i8* %45, align 1, !dbg !319, !tbaa !295
  br label %73, !dbg !320

; <label>:73:                                     ; preds = %71, %43
  %74 = icmp ne i64 %1, 0, !dbg !320
  %75 = icmp ne i8* %41, null, !dbg !322
  %76 = and i1 %74, %75, !dbg !323
  br i1 %76, label %77, label %79, !dbg !323

; <label>:77:                                     ; preds = %73
  %78 = tail call i8* @memcpy(i8* nonnull %44, i8* nonnull %41, i64 %1) #7, !dbg !324
  br label %79, !dbg !324

; <label>:79:                                     ; preds = %77, %73
  %80 = getelementptr inbounds i8, i8* %44, i64 %1, !dbg !325
  store i8 0, i8* %80, align 1, !dbg !326, !tbaa !295
  br label %81, !dbg !327

; <label>:81:                                     ; preds = %40, %79
  %82 = phi i8* [ %44, %79 ], [ null, %40 ], !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i8* %82, !dbg !329
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
define dso_local i8* @sdsempty() local_unnamed_addr #0 !dbg !330 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %1 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !345, !tbaa !181
  %2 = icmp eq %struct.uk_alloc* %1, null, !dbg !349
  br i1 %2, label %3, label %5, !dbg !350, !prof !251

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno() #7, !dbg !351
  store i32 12, i32* %4, align 4, !dbg !352, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br label %14, !dbg !356

; <label>:5:                                      ; preds = %0
  %6 = bitcast %struct.uk_alloc* %1 to i8* (%struct.uk_alloc*, i64)**, !dbg !360
  %7 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %6, align 8, !dbg !360, !tbaa !181
  %8 = tail call i8* %7(%struct.uk_alloc* nonnull %1, i64 4) #7, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  %9 = icmp eq i8* %8, null, !dbg !363
  br i1 %9, label %14, label %10, !dbg !356

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !364
  %12 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !366
  store i8 0, i8* %8, align 1, !dbg !369, !tbaa !295
  %13 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !370
  store i8 0, i8* %13, align 1, !dbg !371, !tbaa !295
  store i8 1, i8* %12, align 1, !dbg !372, !tbaa !295
  store i8 0, i8* %11, align 1, !dbg !373, !tbaa !295
  br label %14, !dbg !374

; <label>:14:                                     ; preds = %3, %5, %10
  %15 = phi i8* [ %11, %10 ], [ null, %5 ], [ null, %3 ], !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  ret i8* %15, !dbg !377
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsnew(i8*) local_unnamed_addr #0 !dbg !378 {
  %2 = icmp eq i8* %0, null, !dbg !385
  br i1 %2, label %5, label %3, !dbg !386

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #7, !dbg !387
  br label %5, !dbg !386

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ], !dbg !386
  %7 = tail call i8* @sdsnewlen(i8* %0, i64 %6) #8, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  ret i8* %7, !dbg !390
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsdup(i8*) local_unnamed_addr #0 !dbg !391 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !406
  %3 = load i8, i8* %2, align 1, !dbg !406, !tbaa !295
  %4 = trunc i8 %3 to i3, !dbg !408
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !408

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !409
  %7 = zext i8 %6 to i64, !dbg !409
  br label %26, !dbg !411

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !412
  %10 = load i8, i8* %9, align 1, !dbg !413, !tbaa !295
  %11 = zext i8 %10 to i64, !dbg !412
  br label %26, !dbg !414

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !415
  %14 = bitcast i8* %13 to i16*, !dbg !416
  %15 = load i16, i16* %14, align 1, !dbg !416, !tbaa !302
  %16 = zext i16 %15 to i64, !dbg !415
  br label %26, !dbg !417

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !418
  %19 = bitcast i8* %18 to i32*, !dbg !419
  %20 = load i32, i32* %19, align 1, !dbg !419, !tbaa !255
  %21 = zext i32 %20 to i64, !dbg !418
  br label %26, !dbg !420

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !421
  %24 = bitcast i8* %23 to i64*, !dbg !422
  %25 = load i64, i64* %24, align 1, !dbg !422, !tbaa !315
  br label %26, !dbg !423

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ], !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  %28 = tail call i8* @sdsnewlen(i8* nonnull %0, i64 %27) #8, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret i8* %28, !dbg !427
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfree(i8*) local_unnamed_addr #0 !dbg !428 {
  %2 = icmp eq i8* %0, null, !dbg !434
  br i1 %2, label %18, label %3, !dbg !436

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !437
  %5 = load i8, i8* %4, align 1, !dbg !437, !tbaa !295
  %6 = and i8 %5, 7, !dbg !440
  %7 = xor i8 %6, 4, !dbg !440
  %8 = zext i8 %7 to i64, !dbg !440
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %8, !dbg !440
  %10 = load i64, i64* %9, align 8, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  %11 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !442, !tbaa !181
  %12 = icmp eq %struct.uk_alloc* %11, null, !dbg !461
  br i1 %12, label %13, label %14, !dbg !464, !prof !251

; <label>:13:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !465
  tail call void @ukplat_terminate(i32 3) #9, !dbg !465
  unreachable, !dbg !465

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !467
  %16 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %11, i64 0, i32 5, !dbg !471
  %17 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %16, align 8, !dbg !471, !tbaa !181
  tail call void %17(%struct.uk_alloc* nonnull %11, i8* nonnull %15) #7, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br label %18, !dbg !476

; <label>:18:                                     ; preds = %1, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  ret void, !dbg !476
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsupdatelen(i8*) local_unnamed_addr #0 !dbg !477 {
  %2 = tail call i64 @strlen(i8* %0) #7, !dbg !482
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !497
  %4 = load i8, i8* %3, align 1, !dbg !497, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !499
  switch i3 %5, label %23 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %12
    i3 3, label %16
    i3 -4, label %20
  ], !dbg !499

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i8, !dbg !501
  %8 = shl i8 %7, 3, !dbg !501
  store i8 %8, i8* %3, align 1, !dbg !502, !tbaa !295
  br label %23, !dbg !503

; <label>:9:                                      ; preds = %1
  %10 = trunc i64 %2 to i8, !dbg !504
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !505
  store i8 %10, i8* %11, align 1, !dbg !506, !tbaa !295
  br label %23, !dbg !507

; <label>:12:                                     ; preds = %1
  %13 = trunc i64 %2 to i16, !dbg !508
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !509
  %15 = bitcast i8* %14 to i16*, !dbg !510
  store i16 %13, i16* %15, align 1, !dbg !511, !tbaa !302
  br label %23, !dbg !512

; <label>:16:                                     ; preds = %1
  %17 = trunc i64 %2 to i32, !dbg !513
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !514
  %19 = bitcast i8* %18 to i32*, !dbg !515
  store i32 %17, i32* %19, align 1, !dbg !516, !tbaa !255
  br label %23, !dbg !517

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !518
  %22 = bitcast i8* %21 to i64*, !dbg !519
  store i64 %2, i64* %22, align 1, !dbg !520, !tbaa !315
  br label %23, !dbg !521

; <label>:23:                                     ; preds = %1, %6, %9, %12, %16, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsclear(i8* nocapture) local_unnamed_addr #0 !dbg !524 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !531
  %3 = load i8, i8* %2, align 1, !dbg !531, !tbaa !295
  %4 = trunc i8 %3 to i3, !dbg !533
  switch i3 %4, label %17 [
    i3 0, label %5
    i3 1, label %6
    i3 2, label %8
    i3 3, label %11
    i3 -4, label %14
  ], !dbg !533

; <label>:5:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !535, !tbaa !295
  br label %17, !dbg !536

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !537
  store i8 0, i8* %7, align 1, !dbg !538, !tbaa !295
  br label %17, !dbg !539

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !540
  %10 = bitcast i8* %9 to i16*, !dbg !541
  store i16 0, i16* %10, align 1, !dbg !542, !tbaa !302
  br label %17, !dbg !543

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !544
  %13 = bitcast i8* %12 to i32*, !dbg !545
  store i32 0, i32* %13, align 1, !dbg !546, !tbaa !255
  br label %17, !dbg !547

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !548
  %16 = bitcast i8* %15 to i64*, !dbg !549
  store i64 0, i64* %16, align 1, !dbg !550, !tbaa !315
  br label %17, !dbg !551

; <label>:17:                                     ; preds = %1, %5, %6, %8, %11, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  store i8 0, i8* %0, align 1, !dbg !553, !tbaa !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  ret void, !dbg !554
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #0 !dbg !555 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !586
  %4 = load i8, i8* %3, align 1, !dbg !586, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !588
  switch i3 %5, label %41 [
    i3 -4, label %33
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !588

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !589
  %8 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !590
  %9 = load i8, i8* %8, align 1, !dbg !590, !tbaa !295
  %10 = zext i8 %9 to i64, !dbg !591
  %11 = load i8, i8* %7, align 1, !dbg !592, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !593
  %13 = sub nsw i64 %10, %12, !dbg !594
  br label %41

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !595
  %16 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !596
  %17 = bitcast i8* %16 to i16*, !dbg !596
  %18 = load i16, i16* %17, align 1, !dbg !596, !tbaa !302
  %19 = zext i16 %18 to i64, !dbg !597
  %20 = bitcast i8* %15 to i16*, !dbg !598
  %21 = load i16, i16* %20, align 1, !dbg !598, !tbaa !302
  %22 = zext i16 %21 to i64, !dbg !599
  %23 = sub nsw i64 %19, %22, !dbg !600
  br label %41

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !601
  %26 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !602
  %27 = bitcast i8* %26 to i32*, !dbg !602
  %28 = load i32, i32* %27, align 1, !dbg !602, !tbaa !255
  %29 = bitcast i8* %25 to i32*, !dbg !603
  %30 = load i32, i32* %29, align 1, !dbg !603, !tbaa !255
  %31 = sub i32 %28, %30, !dbg !604
  %32 = zext i32 %31 to i64, !dbg !605
  br label %41

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !606
  %35 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !607
  %36 = bitcast i8* %35 to i64*, !dbg !607
  %37 = load i64, i64* %36, align 1, !dbg !607, !tbaa !315
  %38 = bitcast i8* %34 to i64*, !dbg !608
  %39 = load i64, i64* %38, align 1, !dbg !608, !tbaa !315
  %40 = sub i64 %37, %39, !dbg !609
  br label %41

; <label>:41:                                     ; preds = %2, %6, %14, %24, %33
  %42 = phi i64 [ %40, %33 ], [ %32, %24 ], [ %23, %14 ], [ %13, %6 ], [ 0, %2 ], !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  %43 = and i8 %4, 7, !dbg !614
  %44 = icmp ult i64 %42, %1, !dbg !616
  br i1 %44, label %45, label %172, !dbg !618

; <label>:45:                                     ; preds = %41
  switch i3 %5, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !622

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %4, 3, !dbg !623
  %48 = zext i8 %47 to i64, !dbg !623
  br label %67, !dbg !627

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !628
  %51 = load i8, i8* %50, align 1, !dbg !629, !tbaa !295
  %52 = zext i8 %51 to i64, !dbg !628
  br label %67, !dbg !630

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !632
  %55 = bitcast i8* %54 to i16*, !dbg !633
  %56 = load i16, i16* %55, align 1, !dbg !633, !tbaa !302
  %57 = zext i16 %56 to i64, !dbg !632
  br label %67, !dbg !634

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !635
  %60 = bitcast i8* %59 to i32*, !dbg !636
  %61 = load i32, i32* %60, align 1, !dbg !636, !tbaa !255
  %62 = zext i32 %61 to i64, !dbg !635
  br label %67, !dbg !637

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !638
  %65 = bitcast i8* %64 to i64*, !dbg !639
  %66 = load i64, i64* %65, align 1, !dbg !639, !tbaa !315
  br label %67, !dbg !640

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  %69 = phi i64 [ -17, %63 ], [ -9, %58 ], [ -5, %53 ], [ -3, %49 ], [ -1, %46 ], [ 0, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !643
  %71 = add i64 %68, %1, !dbg !645
  %72 = icmp ult i64 %71, 1048576, !dbg !647
  %73 = shl i64 %71, 1, !dbg !649
  %74 = add i64 %71, 1048576, !dbg !650
  %75 = select i1 %72, i64 %73, i64 %74, !dbg !651
  %76 = icmp ult i64 %75, 256, !dbg !654
  br i1 %76, label %84, label %77, !dbg !655

; <label>:77:                                     ; preds = %67
  %78 = icmp ult i64 %75, 65536, !dbg !656
  br i1 %78, label %79, label %80, !dbg !657

; <label>:79:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br label %87, !dbg !662

; <label>:80:                                     ; preds = %77
  %81 = icmp ult i64 %75, 4294967296, !dbg !663
  %82 = select i1 %81, i8 3, i8 4, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %83 = trunc i8 %82 to i3, !dbg !662
  switch i3 %83, label %91 [
    i3 0, label %92
    i3 1, label %85
    i3 2, label %87
    i3 3, label %89
    i3 -4, label %90
  ], !dbg !662

; <label>:84:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br label %85, !dbg !665

; <label>:85:                                     ; preds = %84, %80
  %86 = phi i8 [ %82, %80 ], [ 1, %84 ]
  br label %92, !dbg !665

; <label>:87:                                     ; preds = %79, %80
  %88 = phi i8 [ 2, %79 ], [ %82, %80 ]
  br label %92, !dbg !666

; <label>:89:                                     ; preds = %80
  br label %92, !dbg !667

; <label>:90:                                     ; preds = %80
  br label %92, !dbg !668

; <label>:91:                                     ; preds = %80
  br label %92, !dbg !669

; <label>:92:                                     ; preds = %80, %85, %87, %89, %90, %91
  %93 = phi i3 [ %83, %91 ], [ %83, %90 ], [ %83, %89 ], [ 2, %87 ], [ 1, %85 ], [ %83, %80 ]
  %94 = phi i8 [ %82, %91 ], [ %82, %90 ], [ %82, %89 ], [ %88, %87 ], [ %86, %85 ], [ %82, %80 ]
  %95 = phi i64 [ 0, %91 ], [ 17, %90 ], [ 9, %89 ], [ 5, %87 ], [ 3, %85 ], [ 1, %80 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  %96 = zext i8 %43 to i32, !dbg !671
  %97 = sext i8 %94 to i32, !dbg !673
  %98 = icmp eq i32 %96, %97, !dbg !674
  %99 = add i64 %75, 1, !dbg !675
  %100 = add i64 %99, %95, !dbg !675
  %101 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !675, !tbaa !181
  %102 = icmp eq %struct.uk_alloc* %101, null, !dbg !675
  br i1 %98, label %103, label %115, !dbg !677

; <label>:103:                                    ; preds = %92
  br i1 %102, label %104, label %106, !dbg !697, !prof !251

; <label>:104:                                    ; preds = %103
  %105 = tail call i32* @__errno() #7, !dbg !698
  store i32 12, i32* %105, align 4, !dbg !701, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br label %172, !dbg !705

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %101, i64 0, i32 2, !dbg !715
  %108 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %107, align 8, !dbg !715, !tbaa !181
  %109 = tail call i8* %108(%struct.uk_alloc* nonnull %101, i8* %70, i64 %100) #7, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %110 = icmp eq i8* %109, null, !dbg !718
  br i1 %110, label %172, label %111, !dbg !705

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds i8, i8* %109, i64 %95, !dbg !720
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8, i8* %113, align 1, !dbg !721, !tbaa !295
  br label %153, !dbg !728

; <label>:115:                                    ; preds = %92
  br i1 %102, label %116, label %118, !dbg !734, !prof !251

; <label>:116:                                    ; preds = %115
  %117 = tail call i32* @__errno() #7, !dbg !735
  store i32 12, i32* %117, align 4, !dbg !736, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %172, !dbg !739

; <label>:118:                                    ; preds = %115
  %119 = bitcast %struct.uk_alloc* %101 to i8* (%struct.uk_alloc*, i64)**, !dbg !743
  %120 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %119, align 8, !dbg !743, !tbaa !181
  %121 = tail call i8* %120(%struct.uk_alloc* nonnull %101, i64 %100) #7, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %122 = icmp eq i8* %121, null, !dbg !746
  br i1 %122, label %172, label %123, !dbg !739

; <label>:123:                                    ; preds = %118
  %124 = getelementptr inbounds i8, i8* %121, i64 %95, !dbg !748
  %125 = add i64 %68, 1, !dbg !749
  %126 = tail call i8* @memcpy(i8* nonnull %124, i8* nonnull %0, i64 %125) #7, !dbg !750
  %127 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !753, !tbaa !181
  %128 = icmp eq %struct.uk_alloc* %127, null, !dbg !760
  br i1 %128, label %129, label %130, !dbg !761, !prof !251

; <label>:129:                                    ; preds = %123
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !762
  tail call void @ukplat_terminate(i32 3) #9, !dbg !762
  unreachable, !dbg !762

; <label>:130:                                    ; preds = %123
  %131 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %127, i64 0, i32 5, !dbg !763
  %132 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %131, align 8, !dbg !763, !tbaa !181
  tail call void %132(%struct.uk_alloc* nonnull %127, i8* %70) #7, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  %133 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !768
  store i8 %94, i8* %133, align 1, !dbg !769, !tbaa !295
  switch i3 %93, label %151 [
    i3 0, label %134
    i3 1, label %137
    i3 2, label %140
    i3 3, label %144
    i3 -4, label %148
  ], !dbg !774

; <label>:134:                                    ; preds = %130
  %135 = trunc i64 %68 to i8, !dbg !776
  %136 = shl i8 %135, 3, !dbg !776
  store i8 %136, i8* %133, align 1, !dbg !777, !tbaa !295
  br label %151, !dbg !778

; <label>:137:                                    ; preds = %130
  %138 = trunc i64 %68 to i8, !dbg !779
  %139 = getelementptr inbounds i8, i8* %124, i64 -3, !dbg !780
  store i8 %138, i8* %139, align 1, !dbg !781, !tbaa !295
  br label %151, !dbg !782

; <label>:140:                                    ; preds = %130
  %141 = trunc i64 %68 to i16, !dbg !783
  %142 = getelementptr inbounds i8, i8* %124, i64 -5, !dbg !784
  %143 = bitcast i8* %142 to i16*, !dbg !785
  store i16 %141, i16* %143, align 1, !dbg !786, !tbaa !302
  br label %151, !dbg !787

; <label>:144:                                    ; preds = %130
  %145 = trunc i64 %68 to i32, !dbg !788
  %146 = getelementptr inbounds i8, i8* %124, i64 -9, !dbg !789
  %147 = bitcast i8* %146 to i32*, !dbg !790
  store i32 %145, i32* %147, align 1, !dbg !791, !tbaa !255
  br label %151, !dbg !792

; <label>:148:                                    ; preds = %130
  %149 = getelementptr inbounds i8, i8* %124, i64 -17, !dbg !793
  %150 = bitcast i8* %149 to i64*, !dbg !794
  store i64 %68, i64* %150, align 1, !dbg !795, !tbaa !315
  br label %151, !dbg !796

; <label>:151:                                    ; preds = %130, %134, %137, %140, %144, %148
  %152 = phi i8 [ %94, %130 ], [ %136, %134 ], [ %94, %137 ], [ %94, %140 ], [ %94, %144 ], [ %94, %148 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br label %153

; <label>:153:                                    ; preds = %151, %111
  %154 = phi i8 [ %114, %111 ], [ %152, %151 ], !dbg !721
  %155 = phi i8* [ %112, %111 ], [ %124, %151 ], !dbg !675
  %156 = trunc i8 %154 to i3, !dbg !801
  switch i3 %156, label %171 [
    i3 -4, label %168
    i3 1, label %157
    i3 2, label %160
    i3 3, label %164
  ], !dbg !801

; <label>:157:                                    ; preds = %153
  %158 = trunc i64 %75 to i8, !dbg !802
  %159 = getelementptr inbounds i8, i8* %155, i64 -2, !dbg !804
  store i8 %158, i8* %159, align 1, !dbg !805, !tbaa !295
  br label %171, !dbg !806

; <label>:160:                                    ; preds = %153
  %161 = trunc i64 %75 to i16, !dbg !807
  %162 = getelementptr inbounds i8, i8* %155, i64 -3, !dbg !808
  %163 = bitcast i8* %162 to i16*, !dbg !808
  store i16 %161, i16* %163, align 1, !dbg !809, !tbaa !302
  br label %171, !dbg !810

; <label>:164:                                    ; preds = %153
  %165 = trunc i64 %75 to i32, !dbg !811
  %166 = getelementptr inbounds i8, i8* %155, i64 -5, !dbg !812
  %167 = bitcast i8* %166 to i32*, !dbg !812
  store i32 %165, i32* %167, align 1, !dbg !813, !tbaa !255
  br label %171, !dbg !814

; <label>:168:                                    ; preds = %153
  %169 = getelementptr inbounds i8, i8* %155, i64 -9, !dbg !815
  %170 = bitcast i8* %169 to i64*, !dbg !815
  store i64 %75, i64* %170, align 1, !dbg !816, !tbaa !315
  br label %171, !dbg !817

; <label>:171:                                    ; preds = %153, %157, %160, %164, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %172, !dbg !819

; <label>:172:                                    ; preds = %116, %104, %118, %106, %41, %171
  %173 = phi i8* [ %155, %171 ], [ %0, %41 ], [ null, %106 ], [ null, %118 ], [ null, %104 ], [ null, %116 ], !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  ret i8* %173, !dbg !821
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsRemoveFreeSpace(i8*) local_unnamed_addr #0 !dbg !822 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !836
  %3 = load i8, i8* %2, align 1, !dbg !836, !tbaa !295
  %4 = and i8 %3, 7, !dbg !837
  %5 = trunc i8 %3 to i3, !dbg !841
  switch i3 %5, label %42 [
    i3 -4, label %34
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !841

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !846
  %8 = load i8, i8* %7, align 1, !dbg !847, !tbaa !295
  %9 = zext i8 %8 to i64, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %10 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !854
  %11 = load i8, i8* %10, align 1, !dbg !854, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !855
  %13 = sub nsw i64 %12, %9, !dbg !856
  br label %43

; <label>:14:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !857
  %16 = bitcast i8* %15 to i16*, !dbg !858
  %17 = load i16, i16* %16, align 1, !dbg !858, !tbaa !302
  %18 = zext i16 %17 to i64, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %19 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !860
  %20 = bitcast i8* %19 to i16*, !dbg !860
  %21 = load i16, i16* %20, align 1, !dbg !860, !tbaa !302
  %22 = zext i16 %21 to i64, !dbg !861
  %23 = sub nsw i64 %22, %18, !dbg !862
  br label %43

; <label>:24:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !863
  %26 = bitcast i8* %25 to i32*, !dbg !864
  %27 = load i32, i32* %26, align 1, !dbg !864, !tbaa !255
  %28 = zext i32 %27 to i64, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %29 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !866
  %30 = bitcast i8* %29 to i32*, !dbg !866
  %31 = load i32, i32* %30, align 1, !dbg !866, !tbaa !255
  %32 = sub i32 %31, %27, !dbg !867
  %33 = zext i32 %32 to i64, !dbg !868
  br label %43

; <label>:34:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %35 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !869
  %36 = bitcast i8* %35 to i64*, !dbg !870
  %37 = load i64, i64* %36, align 1, !dbg !870, !tbaa !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %38 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !872
  %39 = bitcast i8* %38 to i64*, !dbg !872
  %40 = load i64, i64* %39, align 1, !dbg !872, !tbaa !315
  %41 = sub i64 %40, %37, !dbg !873
  br label %43

; <label>:42:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %126, !dbg !877

; <label>:43:                                     ; preds = %6, %14, %24, %34
  %44 = phi i64 [ 17, %34 ], [ 9, %24 ], [ 5, %14 ], [ 3, %6 ]
  %45 = phi i64 [ %37, %34 ], [ %28, %24 ], [ %18, %14 ], [ %9, %6 ]
  %46 = phi i64 [ %41, %34 ], [ %33, %24 ], [ %23, %14 ], [ %13, %6 ], !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %47 = sub nsw i64 0, %44, !dbg !879
  %48 = getelementptr inbounds i8, i8* %0, i64 %47, !dbg !879
  %49 = icmp eq i64 %46, 0, !dbg !880
  br i1 %49, label %126, label %50, !dbg !877

; <label>:50:                                     ; preds = %43
  %51 = icmp ult i64 %45, 32, !dbg !884
  br i1 %51, label %52, label %53, !dbg !885

; <label>:52:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br label %56, !dbg !887

; <label>:53:                                     ; preds = %50
  %54 = icmp ult i64 %45, 256, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %54, label %56, label %55, !dbg !890

; <label>:55:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br label %61, !dbg !892

; <label>:56:                                     ; preds = %53, %52
  %57 = phi i3 [ 0, %52 ], [ 1, %53 ]
  %58 = phi i8 [ 0, %52 ], [ 1, %53 ]
  %59 = phi i64 [ 1, %52 ], [ 3, %53 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  %60 = icmp eq i8 %4, %58, !dbg !894
  br i1 %60, label %61, label %77, !dbg !892

; <label>:61:                                     ; preds = %55, %56
  %62 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !898, !tbaa !181
  %63 = icmp eq %struct.uk_alloc* %62, null, !dbg !902
  br i1 %63, label %64, label %66, !dbg !903, !prof !251

; <label>:64:                                     ; preds = %61
  %65 = tail call i32* @__errno() #7, !dbg !904
  store i32 12, i32* %65, align 4, !dbg !905, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br label %126, !dbg !909

; <label>:66:                                     ; preds = %61
  %67 = add i64 %45, 1, !dbg !910
  %68 = add i64 %67, %44, !dbg !911
  %69 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %62, i64 0, i32 2, !dbg !918
  %70 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %69, align 8, !dbg !918, !tbaa !181
  %71 = tail call i8* %70(%struct.uk_alloc* nonnull %62, i8* nonnull %48, i64 %68) #7, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  %72 = icmp eq i8* %71, null, !dbg !921
  br i1 %72, label %126, label %73, !dbg !909

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds i8, i8* %71, i64 %44, !dbg !923
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  %76 = load i8, i8* %75, align 1, !dbg !924, !tbaa !295
  br label %107, !dbg !926

; <label>:77:                                     ; preds = %56
  %78 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !927, !tbaa !181
  %79 = icmp eq %struct.uk_alloc* %78, null, !dbg !932
  br i1 %79, label %80, label %82, !dbg !933, !prof !251

; <label>:80:                                     ; preds = %77
  %81 = tail call i32* @__errno() #7, !dbg !934
  store i32 12, i32* %81, align 4, !dbg !935, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br label %126, !dbg !938

; <label>:82:                                     ; preds = %77
  %83 = add i64 %45, 1, !dbg !939
  %84 = add i64 %83, %59, !dbg !940
  %85 = bitcast %struct.uk_alloc* %78 to i8* (%struct.uk_alloc*, i64)**, !dbg !946
  %86 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %85, align 8, !dbg !946, !tbaa !181
  %87 = tail call i8* %86(%struct.uk_alloc* nonnull %78, i64 %84) #7, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  %88 = icmp eq i8* %87, null, !dbg !949
  br i1 %88, label %126, label %89, !dbg !938

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds i8, i8* %87, i64 %59, !dbg !951
  %91 = tail call i8* @memcpy(i8* nonnull %90, i8* nonnull %0, i64 %83) #7, !dbg !952
  %92 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !955, !tbaa !181
  %93 = icmp eq %struct.uk_alloc* %92, null, !dbg !962
  br i1 %93, label %94, label %95, !dbg !963, !prof !251

; <label>:94:                                     ; preds = %89
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !964
  tail call void @ukplat_terminate(i32 3) #9, !dbg !964
  unreachable, !dbg !964

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %92, i64 0, i32 5, !dbg !965
  %97 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %96, align 8, !dbg !965, !tbaa !181
  tail call void %97(%struct.uk_alloc* nonnull %92, i8* nonnull %48) #7, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  %98 = getelementptr inbounds i8, i8* %90, i64 -1, !dbg !970
  store i8 %58, i8* %98, align 1, !dbg !971, !tbaa !295
  %99 = icmp eq i3 %57, 1, !dbg !975
  %100 = trunc i64 %45 to i8, !dbg !976
  br i1 %99, label %103, label %101, !dbg !975

; <label>:101:                                    ; preds = %95
  %102 = shl i8 %100, 3, !dbg !978
  store i8 %102, i8* %98, align 1, !dbg !979, !tbaa !295
  br label %105, !dbg !980

; <label>:103:                                    ; preds = %95
  %104 = getelementptr inbounds i8, i8* %90, i64 -3, !dbg !981
  store i8 %100, i8* %104, align 1, !dbg !982, !tbaa !295
  br label %105, !dbg !983

; <label>:105:                                    ; preds = %101, %103
  %106 = phi i8 [ %102, %101 ], [ %58, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  br label %107

; <label>:107:                                    ; preds = %105, %73
  %108 = phi i8 [ %76, %73 ], [ %106, %105 ], !dbg !924
  %109 = phi i8* [ %74, %73 ], [ %90, %105 ], !dbg !976
  %110 = trunc i8 %108 to i3, !dbg !988
  switch i3 %110, label %125 [
    i3 -4, label %122
    i3 1, label %111
    i3 2, label %114
    i3 3, label %118
  ], !dbg !988

; <label>:111:                                    ; preds = %107
  %112 = trunc i64 %45 to i8, !dbg !989
  %113 = getelementptr inbounds i8, i8* %109, i64 -2, !dbg !990
  store i8 %112, i8* %113, align 1, !dbg !991, !tbaa !295
  br label %125, !dbg !992

; <label>:114:                                    ; preds = %107
  %115 = trunc i64 %45 to i16, !dbg !993
  %116 = getelementptr inbounds i8, i8* %109, i64 -3, !dbg !994
  %117 = bitcast i8* %116 to i16*, !dbg !994
  store i16 %115, i16* %117, align 1, !dbg !995, !tbaa !302
  br label %125, !dbg !996

; <label>:118:                                    ; preds = %107
  %119 = trunc i64 %45 to i32, !dbg !997
  %120 = getelementptr inbounds i8, i8* %109, i64 -5, !dbg !998
  %121 = bitcast i8* %120 to i32*, !dbg !998
  store i32 %119, i32* %121, align 1, !dbg !999, !tbaa !255
  br label %125, !dbg !1000

; <label>:122:                                    ; preds = %107
  %123 = getelementptr inbounds i8, i8* %109, i64 -9, !dbg !1001
  %124 = bitcast i8* %123 to i64*, !dbg !1001
  store i64 %45, i64* %124, align 1, !dbg !1002, !tbaa !315
  br label %125, !dbg !1003

; <label>:125:                                    ; preds = %107, %111, %114, %118, %122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br label %126, !dbg !1005

; <label>:126:                                    ; preds = %80, %64, %42, %82, %66, %43, %125
  %127 = phi i8* [ %109, %125 ], [ %0, %43 ], [ null, %66 ], [ null, %82 ], [ %0, %42 ], [ null, %64 ], [ null, %80 ], !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  ret i8* %127, !dbg !1007
}

; Function Attrs: noredzone nounwind
define dso_local i64 @sdsAllocSize(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1008 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1021
  %3 = load i8, i8* %2, align 1, !dbg !1021, !tbaa !295
  %4 = trunc i8 %3 to i3, !dbg !1023
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !1023

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !1024
  %7 = zext i8 %6 to i64, !dbg !1024
  br label %26, !dbg !1029

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1030
  %10 = load i8, i8* %9, align 1, !dbg !1030, !tbaa !295
  %11 = zext i8 %10 to i64, !dbg !1031
  br label %26, !dbg !1032

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1033
  %14 = bitcast i8* %13 to i16*, !dbg !1033
  %15 = load i16, i16* %14, align 1, !dbg !1033, !tbaa !302
  %16 = zext i16 %15 to i64, !dbg !1034
  br label %26, !dbg !1035

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1036
  %19 = bitcast i8* %18 to i32*, !dbg !1036
  %20 = load i32, i32* %19, align 1, !dbg !1036, !tbaa !255
  %21 = zext i32 %20 to i64, !dbg !1037
  br label %26, !dbg !1038

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1039
  %24 = bitcast i8* %23 to i64*, !dbg !1039
  %25 = load i64, i64* %24, align 1, !dbg !1039, !tbaa !315
  br label %26, !dbg !1040

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ]
  %28 = phi i64 [ 17, %22 ], [ 9, %17 ], [ 5, %12 ], [ 3, %8 ], [ 1, %5 ], [ 0, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %29 = add i64 %27, 1, !dbg !1043
  %30 = add i64 %29, %28, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  ret i64 %30, !dbg !1045
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsAllocPtr(i8* readonly) local_unnamed_addr #0 !dbg !1046 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1052
  %3 = load i8, i8* %2, align 1, !dbg !1052, !tbaa !295
  %4 = and i8 %3, 7, !dbg !1055
  %5 = xor i8 %4, 4, !dbg !1055
  %6 = zext i8 %5 to i64, !dbg !1055
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %6, !dbg !1055
  %8 = load i64, i64* %7, align 8, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  ret i8* %9, !dbg !1058
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsIncrLen(i8* nocapture, i64) local_unnamed_addr #0 !dbg !1059 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1081
  %4 = load i8, i8* %3, align 1, !dbg !1081, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !1083
  switch i3 %5, label %124 [
    i3 0, label %6
    i3 1, label %28
    i3 2, label %51
    i3 3, label %78
    i3 -4, label %103
  ], !dbg !1083

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1085
  %8 = icmp sgt i64 %1, 0, !dbg !1087
  br i1 %8, label %9, label %13, !dbg !1087

; <label>:9:                                      ; preds = %6
  %10 = zext i8 %7 to i64, !dbg !1087
  %11 = add nsw i64 %10, %1, !dbg !1087
  %12 = icmp slt i64 %11, 32, !dbg !1087
  br i1 %12, label %24, label %23, !dbg !1087

; <label>:13:                                     ; preds = %6
  %14 = icmp slt i64 %1, 0, !dbg !1087
  br i1 %14, label %15, label %23, !dbg !1087

; <label>:15:                                     ; preds = %13
  %16 = zext i8 %7 to i32, !dbg !1087
  %17 = trunc i64 %1 to i32, !dbg !1087
  %18 = sub i32 0, %17, !dbg !1087
  %19 = icmp ult i32 %16, %18, !dbg !1087
  br i1 %19, label %23, label %20, !dbg !1087

; <label>:20:                                     ; preds = %15
  %21 = zext i8 %7 to i64, !dbg !1088
  %22 = add nsw i64 %21, %1, !dbg !1089
  br label %24, !dbg !1087

; <label>:23:                                     ; preds = %9, %15, %13
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1087
  unreachable, !dbg !1087

; <label>:24:                                     ; preds = %20, %9
  %25 = phi i64 [ %22, %20 ], [ %11, %9 ], !dbg !1089
  %26 = trunc i64 %25 to i8, !dbg !1090
  %27 = shl i8 %26, 3, !dbg !1090
  store i8 %27, i8* %3, align 1, !dbg !1091, !tbaa !295
  br label %124

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1093
  %30 = icmp sgt i64 %1, -1, !dbg !1094
  br i1 %30, label %31, label %39, !dbg !1094

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1094
  %33 = load i8, i8* %32, align 1, !dbg !1094, !tbaa !295
  %34 = zext i8 %33 to i64, !dbg !1094
  %35 = load i8, i8* %29, align 1, !dbg !1094, !tbaa !295
  %36 = zext i8 %35 to i64, !dbg !1094
  %37 = sub nsw i64 %34, %36, !dbg !1094
  %38 = icmp slt i64 %37, %1, !dbg !1094
  br i1 %38, label %45, label %46, !dbg !1094

; <label>:39:                                     ; preds = %28
  %40 = load i8, i8* %29, align 1, !dbg !1094, !tbaa !295
  %41 = zext i8 %40 to i32, !dbg !1094
  %42 = trunc i64 %1 to i32, !dbg !1094
  %43 = sub i32 0, %42, !dbg !1094
  %44 = icmp ult i32 %41, %43, !dbg !1094
  br i1 %44, label %45, label %46, !dbg !1094

; <label>:45:                                     ; preds = %31, %39
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1094
  unreachable, !dbg !1094

; <label>:46:                                     ; preds = %31, %39
  %47 = phi i8 [ %35, %31 ], [ %40, %39 ], !dbg !1095
  %48 = trunc i64 %1 to i8, !dbg !1095
  %49 = add i8 %47, %48, !dbg !1095
  store i8 %49, i8* %29, align 1, !dbg !1095, !tbaa !295
  %50 = zext i8 %49 to i64, !dbg !1096
  br label %124

; <label>:51:                                     ; preds = %2
  %52 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1097
  %53 = icmp sgt i64 %1, -1, !dbg !1098
  br i1 %53, label %54, label %64, !dbg !1098

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1098
  %56 = bitcast i8* %55 to i16*, !dbg !1098
  %57 = load i16, i16* %56, align 1, !dbg !1098, !tbaa !302
  %58 = zext i16 %57 to i64, !dbg !1098
  %59 = bitcast i8* %52 to i16*, !dbg !1098
  %60 = load i16, i16* %59, align 1, !dbg !1098, !tbaa !302
  %61 = zext i16 %60 to i64, !dbg !1098
  %62 = sub nsw i64 %58, %61, !dbg !1098
  %63 = icmp slt i64 %62, %1, !dbg !1098
  br i1 %63, label %71, label %72, !dbg !1098

; <label>:64:                                     ; preds = %51
  %65 = bitcast i8* %52 to i16*, !dbg !1098
  %66 = load i16, i16* %65, align 1, !dbg !1098, !tbaa !302
  %67 = zext i16 %66 to i32, !dbg !1098
  %68 = trunc i64 %1 to i32, !dbg !1098
  %69 = sub i32 0, %68, !dbg !1098
  %70 = icmp ult i32 %67, %69, !dbg !1098
  br i1 %70, label %71, label %72, !dbg !1098

; <label>:71:                                     ; preds = %54, %64
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1098
  unreachable, !dbg !1098

; <label>:72:                                     ; preds = %54, %64
  %73 = phi i16* [ %59, %54 ], [ %65, %64 ], !dbg !1099
  %74 = phi i16 [ %60, %54 ], [ %66, %64 ], !dbg !1100
  %75 = trunc i64 %1 to i16, !dbg !1100
  %76 = add i16 %74, %75, !dbg !1100
  store i16 %76, i16* %73, align 1, !dbg !1100, !tbaa !302
  %77 = zext i16 %76 to i64, !dbg !1101
  br label %124

; <label>:78:                                     ; preds = %2
  %79 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1102
  %80 = icmp sgt i64 %1, -1, !dbg !1103
  br i1 %80, label %81, label %90, !dbg !1103

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1103
  %83 = bitcast i8* %82 to i32*, !dbg !1103
  %84 = load i32, i32* %83, align 1, !dbg !1103, !tbaa !255
  %85 = bitcast i8* %79 to i32*, !dbg !1103
  %86 = load i32, i32* %85, align 1, !dbg !1103, !tbaa !255
  %87 = sub i32 %84, %86, !dbg !1103
  %88 = trunc i64 %1 to i32, !dbg !1103
  %89 = icmp ult i32 %87, %88, !dbg !1103
  br i1 %89, label %96, label %97, !dbg !1103

; <label>:90:                                     ; preds = %78
  %91 = bitcast i8* %79 to i32*, !dbg !1103
  %92 = load i32, i32* %91, align 1, !dbg !1103, !tbaa !255
  %93 = trunc i64 %1 to i32, !dbg !1103
  %94 = sub i32 0, %93, !dbg !1103
  %95 = icmp ult i32 %92, %94, !dbg !1103
  br i1 %95, label %96, label %97, !dbg !1103

; <label>:96:                                     ; preds = %81, %90
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1103
  unreachable, !dbg !1103

; <label>:97:                                     ; preds = %81, %90
  %98 = phi i32 [ %88, %81 ], [ %93, %90 ], !dbg !1104
  %99 = phi i32* [ %85, %81 ], [ %91, %90 ], !dbg !1105
  %100 = phi i32 [ %86, %81 ], [ %92, %90 ], !dbg !1104
  %101 = add i32 %100, %98, !dbg !1104
  store i32 %101, i32* %99, align 1, !dbg !1104, !tbaa !255
  %102 = zext i32 %101 to i64, !dbg !1106
  br label %124

; <label>:103:                                    ; preds = %2
  %104 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1107
  %105 = icmp sgt i64 %1, -1, !dbg !1108
  br i1 %105, label %106, label %114, !dbg !1108

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1108
  %108 = bitcast i8* %107 to i64*, !dbg !1108
  %109 = load i64, i64* %108, align 1, !dbg !1108, !tbaa !315
  %110 = bitcast i8* %104 to i64*, !dbg !1108
  %111 = load i64, i64* %110, align 1, !dbg !1108, !tbaa !315
  %112 = sub i64 %109, %111, !dbg !1108
  %113 = icmp ult i64 %112, %1, !dbg !1108
  br i1 %113, label %119, label %120, !dbg !1108

; <label>:114:                                    ; preds = %103
  %115 = bitcast i8* %104 to i64*, !dbg !1108
  %116 = load i64, i64* %115, align 1, !dbg !1108, !tbaa !315
  %117 = sub nsw i64 0, %1, !dbg !1108
  %118 = icmp ult i64 %116, %117, !dbg !1108
  br i1 %118, label %119, label %120, !dbg !1108

; <label>:119:                                    ; preds = %106, %114
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1108
  unreachable, !dbg !1108

; <label>:120:                                    ; preds = %106, %114
  %121 = phi i64* [ %110, %106 ], [ %115, %114 ], !dbg !1109
  %122 = phi i64 [ %111, %106 ], [ %116, %114 ], !dbg !1110
  %123 = add i64 %122, %1, !dbg !1110
  store i64 %123, i64* %121, align 1, !dbg !1110, !tbaa !315
  br label %124

; <label>:124:                                    ; preds = %2, %120, %97, %72, %46, %24
  %125 = phi i64 [ %123, %120 ], [ %102, %97 ], [ %77, %72 ], [ %50, %46 ], [ %25, %24 ], [ 0, %2 ], !dbg !1111
  %126 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1112
  store i8 0, i8* %126, align 1, !dbg !1113, !tbaa !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  ret void, !dbg !1114
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #0 !dbg !1115 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1124
  %4 = load i8, i8* %3, align 1, !dbg !1124, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !1126
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1126

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1127
  %8 = zext i8 %7 to i64, !dbg !1127
  br label %27, !dbg !1128

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1129
  %11 = load i8, i8* %10, align 1, !dbg !1130, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !1129
  br label %27, !dbg !1131

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1132
  %15 = bitcast i8* %14 to i16*, !dbg !1133
  %16 = load i16, i16* %15, align 1, !dbg !1133, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !1132
  br label %27, !dbg !1134

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1135
  %20 = bitcast i8* %19 to i32*, !dbg !1136
  %21 = load i32, i32* %20, align 1, !dbg !1136, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !1135
  br label %27, !dbg !1137

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1138
  %25 = bitcast i8* %24 to i64*, !dbg !1139
  %26 = load i64, i64* %25, align 1, !dbg !1139, !tbaa !315
  br label %27, !dbg !1140

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  %29 = icmp ult i64 %28, %1, !dbg !1144
  br i1 %29, label %30, label %59, !dbg !1146

; <label>:30:                                     ; preds = %27
  %31 = sub i64 %1, %28, !dbg !1147
  %32 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %31) #8, !dbg !1148
  %33 = icmp eq i8* %32, null, !dbg !1149
  br i1 %33, label %59, label %34, !dbg !1151

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds i8, i8* %32, i64 %28, !dbg !1152
  %36 = add i64 %31, 1, !dbg !1153
  %37 = tail call i8* @memset(i8* nonnull %35, i32 0, i64 %36) #7, !dbg !1154
  %38 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1158
  %39 = load i8, i8* %38, align 1, !dbg !1158, !tbaa !295
  %40 = trunc i8 %39 to i3, !dbg !1160
  switch i3 %40, label %58 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %47
    i3 3, label %51
    i3 -4, label %55
  ], !dbg !1160

; <label>:41:                                     ; preds = %34
  %42 = trunc i64 %1 to i8, !dbg !1162
  %43 = shl i8 %42, 3, !dbg !1162
  store i8 %43, i8* %38, align 1, !dbg !1163, !tbaa !295
  br label %58, !dbg !1164

; <label>:44:                                     ; preds = %34
  %45 = trunc i64 %1 to i8, !dbg !1165
  %46 = getelementptr inbounds i8, i8* %32, i64 -3, !dbg !1166
  store i8 %45, i8* %46, align 1, !dbg !1167, !tbaa !295
  br label %58, !dbg !1168

; <label>:47:                                     ; preds = %34
  %48 = trunc i64 %1 to i16, !dbg !1169
  %49 = getelementptr inbounds i8, i8* %32, i64 -5, !dbg !1170
  %50 = bitcast i8* %49 to i16*, !dbg !1171
  store i16 %48, i16* %50, align 1, !dbg !1172, !tbaa !302
  br label %58, !dbg !1173

; <label>:51:                                     ; preds = %34
  %52 = trunc i64 %1 to i32, !dbg !1174
  %53 = getelementptr inbounds i8, i8* %32, i64 -9, !dbg !1175
  %54 = bitcast i8* %53 to i32*, !dbg !1176
  store i32 %52, i32* %54, align 1, !dbg !1177, !tbaa !255
  br label %58, !dbg !1178

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %32, i64 -17, !dbg !1179
  %57 = bitcast i8* %56 to i64*, !dbg !1180
  store i64 %1, i64* %57, align 1, !dbg !1181, !tbaa !315
  br label %58, !dbg !1182

; <label>:58:                                     ; preds = %34, %41, %44, %47, %51, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br label %59, !dbg !1184

; <label>:59:                                     ; preds = %30, %27, %58
  %60 = phi i8* [ %32, %58 ], [ %0, %27 ], [ null, %30 ], !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  ret i8* %60, !dbg !1186
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1187 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1200
  %5 = load i8, i8* %4, align 1, !dbg !1200, !tbaa !295
  %6 = trunc i8 %5 to i3, !dbg !1202
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1202

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1203
  %9 = zext i8 %8 to i64, !dbg !1203
  br label %28, !dbg !1204

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1205
  %12 = load i8, i8* %11, align 1, !dbg !1206, !tbaa !295
  %13 = zext i8 %12 to i64, !dbg !1205
  br label %28, !dbg !1207

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1208
  %16 = bitcast i8* %15 to i16*, !dbg !1209
  %17 = load i16, i16* %16, align 1, !dbg !1209, !tbaa !302
  %18 = zext i16 %17 to i64, !dbg !1208
  br label %28, !dbg !1210

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1211
  %21 = bitcast i8* %20 to i32*, !dbg !1212
  %22 = load i32, i32* %21, align 1, !dbg !1212, !tbaa !255
  %23 = zext i32 %22 to i64, !dbg !1211
  br label %28, !dbg !1213

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1214
  %26 = bitcast i8* %25 to i64*, !dbg !1215
  %27 = load i64, i64* %26, align 1, !dbg !1215, !tbaa !315
  br label %28, !dbg !1216

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  %30 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %2) #8, !dbg !1220
  %31 = icmp eq i8* %30, null, !dbg !1221
  br i1 %31, label %58, label %32, !dbg !1223

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1224
  %34 = tail call i8* @memcpy(i8* nonnull %33, i8* %1, i64 %2) #7, !dbg !1225
  %35 = add i64 %29, %2, !dbg !1226
  %36 = getelementptr inbounds i8, i8* %30, i64 -1, !dbg !1230
  %37 = load i8, i8* %36, align 1, !dbg !1230, !tbaa !295
  %38 = trunc i8 %37 to i3, !dbg !1232
  switch i3 %38, label %56 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %45
    i3 3, label %49
    i3 -4, label %53
  ], !dbg !1232

; <label>:39:                                     ; preds = %32
  %40 = trunc i64 %35 to i8, !dbg !1234
  %41 = shl i8 %40, 3, !dbg !1234
  store i8 %41, i8* %36, align 1, !dbg !1235, !tbaa !295
  br label %56, !dbg !1236

; <label>:42:                                     ; preds = %32
  %43 = trunc i64 %35 to i8, !dbg !1237
  %44 = getelementptr inbounds i8, i8* %30, i64 -3, !dbg !1238
  store i8 %43, i8* %44, align 1, !dbg !1239, !tbaa !295
  br label %56, !dbg !1240

; <label>:45:                                     ; preds = %32
  %46 = trunc i64 %35 to i16, !dbg !1241
  %47 = getelementptr inbounds i8, i8* %30, i64 -5, !dbg !1242
  %48 = bitcast i8* %47 to i16*, !dbg !1243
  store i16 %46, i16* %48, align 1, !dbg !1244, !tbaa !302
  br label %56, !dbg !1245

; <label>:49:                                     ; preds = %32
  %50 = trunc i64 %35 to i32, !dbg !1246
  %51 = getelementptr inbounds i8, i8* %30, i64 -9, !dbg !1247
  %52 = bitcast i8* %51 to i32*, !dbg !1248
  store i32 %50, i32* %52, align 1, !dbg !1249, !tbaa !255
  br label %56, !dbg !1250

; <label>:53:                                     ; preds = %32
  %54 = getelementptr inbounds i8, i8* %30, i64 -17, !dbg !1251
  %55 = bitcast i8* %54 to i64*, !dbg !1252
  store i64 %35, i64* %55, align 1, !dbg !1253, !tbaa !315
  br label %56, !dbg !1254

; <label>:56:                                     ; preds = %32, %39, %42, %45, %49, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  %57 = getelementptr inbounds i8, i8* %30, i64 %35, !dbg !1256
  store i8 0, i8* %57, align 1, !dbg !1257, !tbaa !295
  br label %58, !dbg !1258

; <label>:58:                                     ; preds = %28, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  ret i8* %30, !dbg !1259
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #0 !dbg !1260 {
  %3 = tail call i64 @strlen(i8* %1) #7, !dbg !1268
  %4 = tail call i8* @sdscatlen(i8* %0, i8* %1, i64 %3) #8, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  ret i8* %4, !dbg !1270
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #0 !dbg !1271 {
  %3 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1281
  %4 = load i8, i8* %3, align 1, !dbg !1281, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !1283
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1283

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1284
  %8 = zext i8 %7 to i64, !dbg !1284
  br label %27, !dbg !1285

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1286
  %11 = load i8, i8* %10, align 1, !dbg !1287, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !1286
  br label %27, !dbg !1288

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1289
  %15 = bitcast i8* %14 to i16*, !dbg !1290
  %16 = load i16, i16* %15, align 1, !dbg !1290, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !1289
  br label %27, !dbg !1291

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1292
  %20 = bitcast i8* %19 to i32*, !dbg !1293
  %21 = load i32, i32* %20, align 1, !dbg !1293, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !1292
  br label %27, !dbg !1294

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1295
  %25 = bitcast i8* %24 to i64*, !dbg !1296
  %26 = load i64, i64* %25, align 1, !dbg !1296, !tbaa !315
  br label %27, !dbg !1297

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  %29 = tail call i8* @sdscatlen(i8* %0, i8* nonnull %1, i64 %28) #8, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  ret i8* %29, !dbg !1301
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpylen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1302 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1315
  %5 = load i8, i8* %4, align 1, !dbg !1315, !tbaa !295
  %6 = trunc i8 %5 to i3, !dbg !1317
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1317

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1318
  %9 = zext i8 %8 to i64, !dbg !1318
  br label %28, !dbg !1319

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1320
  %12 = load i8, i8* %11, align 1, !dbg !1320, !tbaa !295
  %13 = zext i8 %12 to i64, !dbg !1321
  br label %28, !dbg !1322

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1323
  %16 = bitcast i8* %15 to i16*, !dbg !1323
  %17 = load i16, i16* %16, align 1, !dbg !1323, !tbaa !302
  %18 = zext i16 %17 to i64, !dbg !1324
  br label %28, !dbg !1325

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1326
  %21 = bitcast i8* %20 to i32*, !dbg !1326
  %22 = load i32, i32* %21, align 1, !dbg !1326, !tbaa !255
  %23 = zext i32 %22 to i64, !dbg !1327
  br label %28, !dbg !1328

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1329
  %26 = bitcast i8* %25 to i64*, !dbg !1329
  %27 = load i64, i64* %26, align 1, !dbg !1329, !tbaa !315
  br label %28, !dbg !1330

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  %30 = icmp ult i64 %29, %2, !dbg !1333
  br i1 %30, label %31, label %60, !dbg !1334

; <label>:31:                                     ; preds = %28
  switch i3 %6, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1339

; <label>:32:                                     ; preds = %31
  %33 = lshr i8 %5, 3, !dbg !1340
  %34 = zext i8 %33 to i64, !dbg !1340
  br label %53, !dbg !1341

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1342
  %37 = load i8, i8* %36, align 1, !dbg !1343, !tbaa !295
  %38 = zext i8 %37 to i64, !dbg !1342
  br label %53, !dbg !1344

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1345
  %41 = bitcast i8* %40 to i16*, !dbg !1346
  %42 = load i16, i16* %41, align 1, !dbg !1346, !tbaa !302
  %43 = zext i16 %42 to i64, !dbg !1345
  br label %53, !dbg !1347

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1348
  %46 = bitcast i8* %45 to i32*, !dbg !1349
  %47 = load i32, i32* %46, align 1, !dbg !1349, !tbaa !255
  %48 = zext i32 %47 to i64, !dbg !1348
  br label %53, !dbg !1350

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1351
  %51 = bitcast i8* %50 to i64*, !dbg !1352
  %52 = load i64, i64* %51, align 1, !dbg !1352, !tbaa !315
  br label %53, !dbg !1353

; <label>:53:                                     ; preds = %31, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %31 ], !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  %55 = sub i64 %2, %54, !dbg !1356
  %56 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %55) #8, !dbg !1357
  %57 = icmp eq i8* %56, null, !dbg !1358
  br i1 %57, label %85, label %58, !dbg !1360

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !1361
  br label %60, !dbg !1360

; <label>:60:                                     ; preds = %58, %28
  %61 = phi i8* [ %59, %58 ], [ %4, %28 ], !dbg !1361
  %62 = phi i8* [ %56, %58 ], [ %0, %28 ]
  %63 = tail call i8* @memcpy(i8* nonnull %62, i8* %1, i64 %2) #7, !dbg !1363
  %64 = getelementptr inbounds i8, i8* %62, i64 %2, !dbg !1364
  store i8 0, i8* %64, align 1, !dbg !1365, !tbaa !295
  %65 = load i8, i8* %61, align 1, !dbg !1361, !tbaa !295
  %66 = trunc i8 %65 to i3, !dbg !1369
  switch i3 %66, label %84 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %73
    i3 3, label %77
    i3 -4, label %81
  ], !dbg !1369

; <label>:67:                                     ; preds = %60
  %68 = trunc i64 %2 to i8, !dbg !1371
  %69 = shl i8 %68, 3, !dbg !1371
  store i8 %69, i8* %61, align 1, !dbg !1372, !tbaa !295
  br label %84, !dbg !1373

; <label>:70:                                     ; preds = %60
  %71 = trunc i64 %2 to i8, !dbg !1374
  %72 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !1375
  store i8 %71, i8* %72, align 1, !dbg !1376, !tbaa !295
  br label %84, !dbg !1377

; <label>:73:                                     ; preds = %60
  %74 = trunc i64 %2 to i16, !dbg !1378
  %75 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !1379
  %76 = bitcast i8* %75 to i16*, !dbg !1380
  store i16 %74, i16* %76, align 1, !dbg !1381, !tbaa !302
  br label %84, !dbg !1382

; <label>:77:                                     ; preds = %60
  %78 = trunc i64 %2 to i32, !dbg !1383
  %79 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !1384
  %80 = bitcast i8* %79 to i32*, !dbg !1385
  store i32 %78, i32* %80, align 1, !dbg !1386, !tbaa !255
  br label %84, !dbg !1387

; <label>:81:                                     ; preds = %60
  %82 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !1388
  %83 = bitcast i8* %82 to i64*, !dbg !1389
  store i64 %2, i64* %83, align 1, !dbg !1390, !tbaa !315
  br label %84, !dbg !1391

; <label>:84:                                     ; preds = %60, %67, %70, %73, %77, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br label %85, !dbg !1393

; <label>:85:                                     ; preds = %53, %84
  %86 = phi i8* [ %62, %84 ], [ null, %53 ], !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  ret i8* %86, !dbg !1395
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpy(i8*, i8*) local_unnamed_addr #0 !dbg !1396 {
  %3 = tail call i64 @strlen(i8* %1) #7, !dbg !1402
  %4 = tail call i8* @sdscpylen(i8* %0, i8* %1, i64 %3) #8, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  ret i8* %4, !dbg !1404
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsll2str(i8*, i64) local_unnamed_addr #0 !dbg !1405 {
  %3 = icmp slt i64 %1, 0, !dbg !1419
  %4 = sub nsw i64 0, %1, !dbg !1420
  %5 = select i1 %3, i64 %4, i64 %1, !dbg !1421
  br label %6, !dbg !1424

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i8* [ %0, %2 ], [ %12, %6 ], !dbg !1425
  %8 = phi i64 [ %5, %2 ], [ %13, %6 ], !dbg !1425
  %9 = urem i64 %8, 10, !dbg !1427
  %10 = trunc i64 %9 to i8, !dbg !1428
  %11 = or i8 %10, 48, !dbg !1428
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1429
  store i8 %11, i8* %7, align 1, !dbg !1430, !tbaa !295
  %13 = udiv i64 %8, 10, !dbg !1431
  %14 = icmp ugt i64 %8, 9, !dbg !1432
  br i1 %14, label %6, label %15, !dbg !1432, !llvm.loop !1433

; <label>:15:                                     ; preds = %6
  br i1 %3, label %16, label %18, !dbg !1435

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !1436
  store i8 45, i8* %12, align 1, !dbg !1438, !tbaa !295
  br label %18, !dbg !1439

; <label>:18:                                     ; preds = %16, %15
  %19 = phi i8* [ %17, %16 ], [ %12, %15 ], !dbg !1425
  %20 = ptrtoint i8* %19 to i64, !dbg !1440
  %21 = ptrtoint i8* %0 to i64, !dbg !1440
  %22 = sub i64 %20, %21, !dbg !1440
  store i8 0, i8* %19, align 1, !dbg !1442, !tbaa !295
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1443
  %24 = icmp ugt i8* %23, %0, !dbg !1445
  br i1 %24, label %25, label %33, !dbg !1446

; <label>:25:                                     ; preds = %18, %25
  %26 = phi i8* [ %31, %25 ], [ %23, %18 ]
  %27 = phi i8* [ %30, %25 ], [ %0, %18 ]
  %28 = load i8, i8* %27, align 1, !dbg !1447, !tbaa !295
  %29 = load i8, i8* %26, align 1, !dbg !1449, !tbaa !295
  store i8 %29, i8* %27, align 1, !dbg !1450, !tbaa !295
  store i8 %28, i8* %26, align 1, !dbg !1451, !tbaa !295
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1452
  %31 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !1443
  %32 = icmp ult i8* %30, %31, !dbg !1445
  br i1 %32, label %25, label %33, !dbg !1446, !llvm.loop !1453

; <label>:33:                                     ; preds = %25, %18
  %34 = trunc i64 %22 to i32, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  ret i32 %34, !dbg !1456
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsull2str(i8*, i64) local_unnamed_addr #0 !dbg !1457 {
  br label %3, !dbg !1469

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %10, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %11, %3 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1467
  %7 = urem i64 %5, 10, !dbg !1470
  %8 = trunc i64 %7 to i8, !dbg !1472
  %9 = or i8 %8, 48, !dbg !1472
  %10 = add nuw nsw i64 %4, 1, !dbg !1473
  store i8 %9, i8* %6, align 1, !dbg !1474, !tbaa !295
  %11 = udiv i64 %5, 10, !dbg !1475
  %12 = icmp ugt i64 %5, 9, !dbg !1476
  br i1 %12, label %3, label %13, !dbg !1476, !llvm.loop !1477

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1467
  %15 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1468
  store i8 0, i8* %15, align 1, !dbg !1480, !tbaa !295
  %16 = icmp eq i64 %4, 0, !dbg !1481
  br i1 %16, label %32, label %17, !dbg !1482

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %0, align 1, !dbg !1483, !tbaa !295
  store i8 %9, i8* %0, align 1, !dbg !1486, !tbaa !295
  store i8 %18, i8* %14, align 1, !dbg !1487, !tbaa !295
  %19 = icmp ugt i64 %4, 2, !dbg !1481
  br i1 %19, label %20, label %32, !dbg !1482, !llvm.loop !1488

; <label>:20:                                     ; preds = %17
  %21 = add nsw i64 %4, -1, !dbg !1490
  %22 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1491
  %23 = getelementptr inbounds i8, i8* %0, i64 %21, !dbg !1466
  br label %24, !dbg !1482

; <label>:24:                                     ; preds = %20, %24
  %25 = phi i8* [ %23, %20 ], [ %30, %24 ]
  %26 = phi i8* [ %22, %20 ], [ %29, %24 ]
  %27 = load i8, i8* %25, align 1, !dbg !1492, !tbaa !295
  %28 = load i8, i8* %26, align 1, !dbg !1483, !tbaa !295
  store i8 %27, i8* %26, align 1, !dbg !1486, !tbaa !295
  store i8 %28, i8* %25, align 1, !dbg !1487, !tbaa !295
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1491
  %30 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !1490
  %31 = icmp ult i8* %29, %30, !dbg !1481
  br i1 %31, label %24, label %32, !dbg !1482, !llvm.loop !1488

; <label>:32:                                     ; preds = %24, %17, %13
  %33 = trunc i64 %10 to i32, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  ret i32 %33, !dbg !1494
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #0 !dbg !1495 {
  %2 = alloca [21 x i8], align 16
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !1506
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #5, !dbg !1506
  %4 = icmp slt i64 %0, 0, !dbg !1511
  %5 = sub nsw i64 0, %0, !dbg !1512
  %6 = select i1 %4, i64 %5, i64 %0, !dbg !1513
  br label %7, !dbg !1516

; <label>:7:                                      ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %14, %7 ]
  %9 = phi i64 [ %6, %1 ], [ %15, %7 ], !dbg !1517
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %8, !dbg !1514
  %11 = urem i64 %9, 10, !dbg !1518
  %12 = trunc i64 %11 to i8, !dbg !1519
  %13 = or i8 %12, 48, !dbg !1519
  %14 = add nuw nsw i64 %8, 1, !dbg !1520
  store i8 %13, i8* %10, align 1, !dbg !1521, !tbaa !295
  %15 = udiv i64 %9, 10, !dbg !1522
  %16 = icmp ugt i64 %9, 9, !dbg !1523
  br i1 %16, label %7, label %17, !dbg !1523, !llvm.loop !1433

; <label>:17:                                     ; preds = %7
  br i1 %4, label %18, label %21, !dbg !1524

; <label>:18:                                     ; preds = %17
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %14, !dbg !1515
  %20 = add nuw nsw i64 %8, 2, !dbg !1525
  store i8 45, i8* %19, align 1, !dbg !1526, !tbaa !295
  br label %21, !dbg !1527

; <label>:21:                                     ; preds = %18, %17
  %22 = phi i8 [ 45, %18 ], [ %13, %17 ]
  %23 = phi i64 [ %20, %18 ], [ %14, %17 ]
  %24 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %23, !dbg !1515
  store i8 0, i8* %24, align 1, !dbg !1529, !tbaa !295
  %25 = icmp sgt i64 %23, 1, !dbg !1530
  br i1 %25, label %26, label %41, !dbg !1531

; <label>:26:                                     ; preds = %21
  %27 = add nsw i64 %23, -1, !dbg !1532
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %27, !dbg !1508
  %29 = load i8, i8* %3, align 16, !dbg !1533, !tbaa !295
  store i8 %22, i8* %3, align 16, !dbg !1535, !tbaa !295
  store i8 %29, i8* %28, align 1, !dbg !1536, !tbaa !295
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 1, !dbg !1537
  %31 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1532
  %32 = icmp ult i8* %30, %31, !dbg !1530
  br i1 %32, label %33, label %41, !dbg !1531, !llvm.loop !1453

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i8* [ %39, %33 ], [ %31, %26 ]
  %35 = phi i8* [ %38, %33 ], [ %30, %26 ]
  %36 = load i8, i8* %34, align 1, !dbg !1538, !tbaa !295
  %37 = load i8, i8* %35, align 1, !dbg !1533, !tbaa !295
  store i8 %36, i8* %35, align 1, !dbg !1535, !tbaa !295
  store i8 %37, i8* %34, align 1, !dbg !1536, !tbaa !295
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1537
  %39 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1532
  %40 = icmp ult i8* %38, %39, !dbg !1530
  br i1 %40, label %33, label %41, !dbg !1531, !llvm.loop !1453

; <label>:41:                                     ; preds = %33, %26, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  %42 = shl i64 %23, 32, !dbg !1540
  %43 = ashr exact i64 %42, 32, !dbg !1540
  %44 = call i8* @sdsnewlen(i8* nonnull %3, i64 %43) #8, !dbg !1541
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #5, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  ret i8* %44, !dbg !1543
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1544 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1563
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #5, !dbg !1563
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1565
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #5, !dbg !1565
  %8 = tail call i64 @strlen(i8* %1) #7, !dbg !1568
  %9 = shl i64 %8, 1, !dbg !1569
  %10 = icmp ugt i64 %9, 1024, !dbg !1571
  br i1 %10, label %11, label %21, !dbg !1573

; <label>:11:                                     ; preds = %3
  %12 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1577, !tbaa !181
  %13 = icmp eq %struct.uk_alloc* %12, null, !dbg !1581
  br i1 %13, label %14, label %16, !dbg !1582, !prof !251

; <label>:14:                                     ; preds = %11
  %15 = tail call i32* @__errno() #7, !dbg !1583
  store i32 12, i32* %15, align 4, !dbg !1584, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br label %65, !dbg !1587

; <label>:16:                                     ; preds = %11
  %17 = bitcast %struct.uk_alloc* %12 to i8* (%struct.uk_alloc*, i64)**, !dbg !1591
  %18 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %17, align 8, !dbg !1591, !tbaa !181
  %19 = tail call i8* %18(%struct.uk_alloc* nonnull %12, i64 %9) #7, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  %20 = icmp eq i8* %19, null, !dbg !1594
  br i1 %20, label %65, label %21, !dbg !1587

; <label>:21:                                     ; preds = %3, %16
  %22 = phi i8* [ %19, %16 ], [ %7, %3 ], !dbg !1596
  %23 = phi i64 [ %9, %16 ], [ 1024, %3 ], !dbg !1597
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %2 to i8*
  br label %26, !dbg !1599

; <label>:26:                                     ; preds = %49, %21
  %27 = phi i8* [ %22, %21 ], [ %52, %49 ], !dbg !1600
  %28 = phi i64 [ %23, %21 ], [ %44, %49 ], !dbg !1600
  %29 = add i64 %28, -2, !dbg !1604
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !1605
  store i8 0, i8* %30, align 1, !dbg !1606, !tbaa !295
  call void @llvm.va_copy(i8* nonnull %6, i8* %25), !dbg !1607
  %31 = call i32 @vsnprintf(i8* nonnull %27, i64 %28, i8* %1, %struct.__va_list_tag* nonnull %24) #7, !dbg !1608
  call void @llvm.va_end(i8* nonnull %6), !dbg !1609
  %32 = load i8, i8* %30, align 1, !dbg !1610, !tbaa !295
  %33 = icmp eq i8 %32, 0, !dbg !1611
  br i1 %33, label %54, label %34, !dbg !1612

; <label>:34:                                     ; preds = %26
  %35 = icmp eq i8* %27, %7, !dbg !1613
  br i1 %35, label %43, label %36, !dbg !1615

; <label>:36:                                     ; preds = %34
  %37 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1618, !tbaa !181
  %38 = icmp eq %struct.uk_alloc* %37, null, !dbg !1625
  br i1 %38, label %39, label %40, !dbg !1626, !prof !251

; <label>:39:                                     ; preds = %36
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1627
  call void @ukplat_terminate(i32 3) #9, !dbg !1627
  unreachable, !dbg !1627

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %37, i64 0, i32 5, !dbg !1628
  %42 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %41, align 8, !dbg !1628, !tbaa !181
  call void %42(%struct.uk_alloc* nonnull %37, i8* nonnull %27) #7, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  br label %43, !dbg !1633

; <label>:43:                                     ; preds = %34, %40
  %44 = shl i64 %28, 1, !dbg !1634
  %45 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1637, !tbaa !181
  %46 = icmp eq %struct.uk_alloc* %45, null, !dbg !1641
  br i1 %46, label %47, label %49, !dbg !1642, !prof !251

; <label>:47:                                     ; preds = %43
  %48 = call i32* @__errno() #7, !dbg !1643
  store i32 12, i32* %48, align 4, !dbg !1644, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  br label %65, !dbg !1647

; <label>:49:                                     ; preds = %43
  %50 = bitcast %struct.uk_alloc* %45 to i8* (%struct.uk_alloc*, i64)**, !dbg !1651
  %51 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %50, align 8, !dbg !1651, !tbaa !181
  %52 = call i8* %51(%struct.uk_alloc* nonnull %45, i64 %44) #7, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  %53 = icmp eq i8* %52, null, !dbg !1654
  br i1 %53, label %65, label %26, !dbg !1647, !llvm.loop !1656

; <label>:54:                                     ; preds = %26
  %55 = call i64 @strlen(i8* nonnull %27) #7, !dbg !1661
  %56 = call i8* @sdscatlen(i8* %0, i8* nonnull %27, i64 %55) #7, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  %57 = icmp eq i8* %27, %7, !dbg !1665
  br i1 %57, label %65, label %58, !dbg !1667

; <label>:58:                                     ; preds = %54
  %59 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1670, !tbaa !181
  %60 = icmp eq %struct.uk_alloc* %59, null, !dbg !1677
  br i1 %60, label %61, label %62, !dbg !1678, !prof !251

; <label>:61:                                     ; preds = %58
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1679
  call void @ukplat_terminate(i32 3) #9, !dbg !1679
  unreachable, !dbg !1679

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %59, i64 0, i32 5, !dbg !1680
  %64 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %63, align 8, !dbg !1680, !tbaa !181
  call void %64(%struct.uk_alloc* nonnull %59, i8* nonnull %27) #7, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br label %65, !dbg !1685

; <label>:65:                                     ; preds = %49, %47, %14, %62, %54, %16
  %66 = phi i8* [ null, %16 ], [ %56, %54 ], [ %56, %62 ], [ null, %14 ], [ null, %47 ], [ null, %49 ], !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #5, !dbg !1686
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #5, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  ret i8* %66, !dbg !1686
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #0 !dbg !1687 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1697
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1697
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1699
  call void @llvm.va_start(i8* nonnull %4), !dbg !1699
  %6 = call i8* @sdscatvprintf(i8* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1700
  call void @llvm.va_end(i8* nonnull %4), !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  ret i8* %6, !dbg !1704
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatfmt(i8*, i8* nocapture readonly, ...) local_unnamed_addr #0 !dbg !1705 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [21 x i8], align 16
  %5 = alloca [21 x i8], align 16
  %6 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1729
  %7 = load i8, i8* %6, align 1, !dbg !1729, !tbaa !295
  %8 = trunc i8 %7 to i3, !dbg !1731
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !1731

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !1732
  %11 = zext i8 %10 to i64, !dbg !1732
  br label %30, !dbg !1733

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1734
  %14 = load i8, i8* %13, align 1, !dbg !1735, !tbaa !295
  %15 = zext i8 %14 to i64, !dbg !1734
  br label %30, !dbg !1736

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1737
  %18 = bitcast i8* %17 to i16*, !dbg !1738
  %19 = load i16, i16* %18, align 1, !dbg !1738, !tbaa !302
  %20 = zext i16 %19 to i64, !dbg !1737
  br label %30, !dbg !1739

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1740
  %23 = bitcast i8* %22 to i32*, !dbg !1741
  %24 = load i32, i32* %23, align 1, !dbg !1741, !tbaa !255
  %25 = zext i32 %24 to i64, !dbg !1740
  br label %30, !dbg !1742

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1743
  %28 = bitcast i8* %27 to i64*, !dbg !1744
  %29 = load i64, i64* %28, align 1, !dbg !1744, !tbaa !315
  br label %30, !dbg !1745

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  %32 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %32) #5, !dbg !1750
  call void @llvm.va_start(i8* nonnull %32), !dbg !1752
  %33 = load i8, i8* %1, align 1, !dbg !1754, !tbaa !295
  %34 = icmp eq i8 %33, 0, !dbg !1755
  br i1 %34, label %587, label %35, !dbg !1755

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 1
  %42 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 1
  br label %43, !dbg !1755

; <label>:43:                                     ; preds = %35, %580
  %44 = phi i8 [ %33, %35 ], [ %585, %580 ]
  %45 = phi i8* [ %0, %35 ], [ %583, %580 ]
  %46 = phi i8* [ %1, %35 ], [ %584, %580 ]
  %47 = phi i64 [ %31, %35 ], [ %581, %580 ]
  %48 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1759
  %49 = load i8, i8* %48, align 1, !dbg !1759, !tbaa !295
  %50 = trunc i8 %49 to i3, !dbg !1761
  switch i3 %50, label %51 [
    i3 -4, label %79
    i3 1, label %52
    i3 2, label %60
    i3 3, label %70
  ], !dbg !1761

; <label>:51:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br label %90, !dbg !1763

; <label>:52:                                     ; preds = %43
  %53 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1764
  %54 = getelementptr inbounds i8, i8* %45, i64 -2, !dbg !1765
  %55 = load i8, i8* %54, align 1, !dbg !1765, !tbaa !295
  %56 = zext i8 %55 to i64, !dbg !1766
  %57 = load i8, i8* %53, align 1, !dbg !1767, !tbaa !295
  %58 = zext i8 %57 to i64, !dbg !1768
  %59 = sub nsw i64 %56, %58, !dbg !1769
  br label %87

; <label>:60:                                     ; preds = %43
  %61 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1770
  %62 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1771
  %63 = bitcast i8* %62 to i16*, !dbg !1771
  %64 = load i16, i16* %63, align 1, !dbg !1771, !tbaa !302
  %65 = zext i16 %64 to i64, !dbg !1772
  %66 = bitcast i8* %61 to i16*, !dbg !1773
  %67 = load i16, i16* %66, align 1, !dbg !1773, !tbaa !302
  %68 = zext i16 %67 to i64, !dbg !1774
  %69 = sub nsw i64 %65, %68, !dbg !1775
  br label %87

; <label>:70:                                     ; preds = %43
  %71 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1776
  %72 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1777
  %73 = bitcast i8* %72 to i32*, !dbg !1777
  %74 = load i32, i32* %73, align 1, !dbg !1777, !tbaa !255
  %75 = bitcast i8* %71 to i32*, !dbg !1778
  %76 = load i32, i32* %75, align 1, !dbg !1778, !tbaa !255
  %77 = sub i32 %74, %76, !dbg !1779
  %78 = zext i32 %77 to i64, !dbg !1780
  br label %87

; <label>:79:                                     ; preds = %43
  %80 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1781
  %81 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1782
  %82 = bitcast i8* %81 to i64*, !dbg !1782
  %83 = load i64, i64* %82, align 1, !dbg !1782, !tbaa !315
  %84 = bitcast i8* %80 to i64*, !dbg !1783
  %85 = load i64, i64* %84, align 1, !dbg !1783, !tbaa !315
  %86 = sub i64 %83, %85, !dbg !1784
  br label %87

; <label>:87:                                     ; preds = %52, %60, %70, %79
  %88 = phi i64 [ %86, %79 ], [ %78, %70 ], [ %69, %60 ], [ %59, %52 ], !dbg !1785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  %89 = icmp eq i64 %88, 0, !dbg !1786
  br i1 %89, label %90, label %93, !dbg !1763

; <label>:90:                                     ; preds = %51, %87
  %91 = call i8* @sdsMakeRoomFor(i8* nonnull %45, i64 1) #8, !dbg !1787
  %92 = load i8, i8* %46, align 1, !dbg !1789, !tbaa !295
  br label %93, !dbg !1790

; <label>:93:                                     ; preds = %90, %87
  %94 = phi i8 [ %92, %90 ], [ %44, %87 ], !dbg !1789
  %95 = phi i8* [ %91, %90 ], [ %45, %87 ]
  %96 = icmp eq i8 %94, 37, !dbg !1791
  br i1 %96, label %97, label %551, !dbg !1791

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1792
  %99 = load i8, i8* %98, align 1, !dbg !1793, !tbaa !295
  %100 = sext i8 %99 to i32, !dbg !1795
  switch i32 %100, label %522 [
    i32 115, label %101
    i32 83, label %101
    i32 105, label %228
    i32 73, label %228
    i32 117, label %380
    i32 85, label %380
  ], !dbg !1796

; <label>:101:                                    ; preds = %97, %97
  %102 = load i32, i32* %36, align 16, !dbg !1797
  %103 = icmp ult i32 %102, 41, !dbg !1797
  br i1 %103, label %104, label %109, !dbg !1797

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %37, align 16, !dbg !1797
  %106 = sext i32 %102 to i64, !dbg !1797
  %107 = getelementptr i8, i8* %105, i64 %106, !dbg !1797
  %108 = add i32 %102, 8, !dbg !1797
  store i32 %108, i32* %36, align 16, !dbg !1797
  br label %112, !dbg !1797

; <label>:109:                                    ; preds = %101
  %110 = load i8*, i8** %38, align 8, !dbg !1797
  %111 = getelementptr i8, i8* %110, i64 8, !dbg !1797
  store i8* %111, i8** %38, align 8, !dbg !1797
  br label %112, !dbg !1797

; <label>:112:                                    ; preds = %109, %104
  %113 = phi i8* [ %107, %104 ], [ %110, %109 ]
  %114 = bitcast i8* %113 to i8**, !dbg !1797
  %115 = load i8*, i8** %114, align 8, !dbg !1797
  %116 = icmp eq i8 %99, 115, !dbg !1799
  br i1 %116, label %117, label %119, !dbg !1800

; <label>:117:                                    ; preds = %112
  %118 = call i64 @strlen(i8* %115) #7, !dbg !1801
  br label %146, !dbg !1800

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds i8, i8* %115, i64 -1, !dbg !1804
  %121 = load i8, i8* %120, align 1, !dbg !1804, !tbaa !295
  %122 = trunc i8 %121 to i3, !dbg !1806
  switch i3 %122, label %144 [
    i3 0, label %123
    i3 1, label %126
    i3 2, label %130
    i3 3, label %135
    i3 -4, label %140
  ], !dbg !1806

; <label>:123:                                    ; preds = %119
  %124 = lshr i8 %121, 3, !dbg !1807
  %125 = zext i8 %124 to i64, !dbg !1807
  br label %144, !dbg !1808

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds i8, i8* %115, i64 -3, !dbg !1809
  %128 = load i8, i8* %127, align 1, !dbg !1810, !tbaa !295
  %129 = zext i8 %128 to i64, !dbg !1809
  br label %144, !dbg !1811

; <label>:130:                                    ; preds = %119
  %131 = getelementptr inbounds i8, i8* %115, i64 -5, !dbg !1812
  %132 = bitcast i8* %131 to i16*, !dbg !1813
  %133 = load i16, i16* %132, align 1, !dbg !1813, !tbaa !302
  %134 = zext i16 %133 to i64, !dbg !1812
  br label %144, !dbg !1814

; <label>:135:                                    ; preds = %119
  %136 = getelementptr inbounds i8, i8* %115, i64 -9, !dbg !1815
  %137 = bitcast i8* %136 to i32*, !dbg !1816
  %138 = load i32, i32* %137, align 1, !dbg !1816, !tbaa !255
  %139 = zext i32 %138 to i64, !dbg !1815
  br label %144, !dbg !1817

; <label>:140:                                    ; preds = %119
  %141 = getelementptr inbounds i8, i8* %115, i64 -17, !dbg !1818
  %142 = bitcast i8* %141 to i64*, !dbg !1819
  %143 = load i64, i64* %142, align 1, !dbg !1819, !tbaa !315
  br label %144, !dbg !1820

; <label>:144:                                    ; preds = %119, %123, %126, %130, %135, %140
  %145 = phi i64 [ %143, %140 ], [ %139, %135 ], [ %134, %130 ], [ %129, %126 ], [ %125, %123 ], [ 0, %119 ], !dbg !1821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br label %146, !dbg !1800

; <label>:146:                                    ; preds = %144, %117
  %147 = phi i64 [ %118, %117 ], [ %145, %144 ], !dbg !1800
  %148 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1827
  %149 = load i8, i8* %148, align 1, !dbg !1827, !tbaa !295
  %150 = trunc i8 %149 to i3, !dbg !1829
  switch i3 %150, label %186 [
    i3 -4, label %178
    i3 1, label %151
    i3 2, label %159
    i3 3, label %169
  ], !dbg !1829

; <label>:151:                                    ; preds = %146
  %152 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1830
  %153 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !1831
  %154 = load i8, i8* %153, align 1, !dbg !1831, !tbaa !295
  %155 = zext i8 %154 to i64, !dbg !1832
  %156 = load i8, i8* %152, align 1, !dbg !1833, !tbaa !295
  %157 = zext i8 %156 to i64, !dbg !1834
  %158 = sub nsw i64 %155, %157, !dbg !1835
  br label %186

; <label>:159:                                    ; preds = %146
  %160 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1836
  %161 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1837
  %162 = bitcast i8* %161 to i16*, !dbg !1837
  %163 = load i16, i16* %162, align 1, !dbg !1837, !tbaa !302
  %164 = zext i16 %163 to i64, !dbg !1838
  %165 = bitcast i8* %160 to i16*, !dbg !1839
  %166 = load i16, i16* %165, align 1, !dbg !1839, !tbaa !302
  %167 = zext i16 %166 to i64, !dbg !1840
  %168 = sub nsw i64 %164, %167, !dbg !1841
  br label %186

; <label>:169:                                    ; preds = %146
  %170 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1842
  %171 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1843
  %172 = bitcast i8* %171 to i32*, !dbg !1843
  %173 = load i32, i32* %172, align 1, !dbg !1843, !tbaa !255
  %174 = bitcast i8* %170 to i32*, !dbg !1844
  %175 = load i32, i32* %174, align 1, !dbg !1844, !tbaa !255
  %176 = sub i32 %173, %175, !dbg !1845
  %177 = zext i32 %176 to i64, !dbg !1846
  br label %186

; <label>:178:                                    ; preds = %146
  %179 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !1847
  %180 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1848
  %181 = bitcast i8* %180 to i64*, !dbg !1848
  %182 = load i64, i64* %181, align 1, !dbg !1848, !tbaa !315
  %183 = bitcast i8* %179 to i64*, !dbg !1849
  %184 = load i64, i64* %183, align 1, !dbg !1849, !tbaa !315
  %185 = sub i64 %182, %184, !dbg !1850
  br label %186

; <label>:186:                                    ; preds = %146, %151, %159, %169, %178
  %187 = phi i64 [ %185, %178 ], [ %177, %169 ], [ %168, %159 ], [ %158, %151 ], [ 0, %146 ], !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1852
  %188 = icmp ult i64 %187, %147, !dbg !1853
  br i1 %188, label %189, label %192, !dbg !1854

; <label>:189:                                    ; preds = %186
  %190 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %147) #8, !dbg !1855
  %191 = getelementptr inbounds i8, i8* %190, i64 -1, !dbg !1857
  br label %192, !dbg !1868

; <label>:192:                                    ; preds = %189, %186
  %193 = phi i8* [ %191, %189 ], [ %148, %186 ], !dbg !1857
  %194 = phi i8* [ %190, %189 ], [ %95, %186 ], !dbg !1869
  %195 = getelementptr inbounds i8, i8* %194, i64 %47, !dbg !1870
  %196 = call i8* @memcpy(i8* %195, i8* %115, i64 %147) #7, !dbg !1871
  %197 = load i8, i8* %193, align 1, !dbg !1857, !tbaa !295
  %198 = trunc i8 %197 to i3, !dbg !1875
  switch i3 %198, label %226 [
    i3 0, label %199
    i3 1, label %204
    i3 2, label %209
    i3 3, label %215
    i3 -4, label %221
  ], !dbg !1875

; <label>:199:                                    ; preds = %192
  %200 = trunc i64 %147 to i8, !dbg !1877
  %201 = shl i8 %200, 3, !dbg !1878
  %202 = add i8 %197, %201, !dbg !1878
  %203 = and i8 %202, -8, !dbg !1878
  store i8 %203, i8* %193, align 1, !dbg !1879, !tbaa !295
  br label %226, !dbg !1880

; <label>:204:                                    ; preds = %192
  %205 = getelementptr inbounds i8, i8* %194, i64 -3, !dbg !1881
  %206 = load i8, i8* %205, align 1, !dbg !1882, !tbaa !295
  %207 = trunc i64 %147 to i8, !dbg !1882
  %208 = add i8 %206, %207, !dbg !1882
  store i8 %208, i8* %205, align 1, !dbg !1882, !tbaa !295
  br label %226, !dbg !1883

; <label>:209:                                    ; preds = %192
  %210 = getelementptr inbounds i8, i8* %194, i64 -5, !dbg !1884
  %211 = bitcast i8* %210 to i16*, !dbg !1885
  %212 = load i16, i16* %211, align 1, !dbg !1886, !tbaa !302
  %213 = trunc i64 %147 to i16, !dbg !1886
  %214 = add i16 %212, %213, !dbg !1886
  store i16 %214, i16* %211, align 1, !dbg !1886, !tbaa !302
  br label %226, !dbg !1887

; <label>:215:                                    ; preds = %192
  %216 = getelementptr inbounds i8, i8* %194, i64 -9, !dbg !1888
  %217 = bitcast i8* %216 to i32*, !dbg !1889
  %218 = load i32, i32* %217, align 1, !dbg !1890, !tbaa !255
  %219 = trunc i64 %147 to i32, !dbg !1890
  %220 = add i32 %218, %219, !dbg !1890
  store i32 %220, i32* %217, align 1, !dbg !1890, !tbaa !255
  br label %226, !dbg !1891

; <label>:221:                                    ; preds = %192
  %222 = getelementptr inbounds i8, i8* %194, i64 -17, !dbg !1892
  %223 = bitcast i8* %222 to i64*, !dbg !1893
  %224 = load i64, i64* %223, align 1, !dbg !1894, !tbaa !315
  %225 = add i64 %224, %147, !dbg !1894
  store i64 %225, i64* %223, align 1, !dbg !1894, !tbaa !315
  br label %226, !dbg !1895

; <label>:226:                                    ; preds = %192, %199, %204, %209, %215, %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %227 = add i64 %147, %47, !dbg !1897
  br label %580, !dbg !1898

; <label>:228:                                    ; preds = %97, %97
  %229 = icmp eq i8 %99, 105, !dbg !1899
  %230 = load i32, i32* %36, align 16, !dbg !1901
  %231 = icmp ult i32 %230, 41, !dbg !1901
  br i1 %229, label %232, label %246, !dbg !1902

; <label>:232:                                    ; preds = %228
  br i1 %231, label %233, label %238, !dbg !1903

; <label>:233:                                    ; preds = %232
  %234 = load i8*, i8** %37, align 16, !dbg !1903
  %235 = sext i32 %230 to i64, !dbg !1903
  %236 = getelementptr i8, i8* %234, i64 %235, !dbg !1903
  %237 = add i32 %230, 8, !dbg !1903
  store i32 %237, i32* %36, align 16, !dbg !1903
  br label %241, !dbg !1903

; <label>:238:                                    ; preds = %232
  %239 = load i8*, i8** %38, align 8, !dbg !1903
  %240 = getelementptr i8, i8* %239, i64 8, !dbg !1903
  store i8* %240, i8** %38, align 8, !dbg !1903
  br label %241, !dbg !1903

; <label>:241:                                    ; preds = %238, %233
  %242 = phi i8* [ %236, %233 ], [ %239, %238 ]
  %243 = bitcast i8* %242 to i32*, !dbg !1903
  %244 = load i32, i32* %243, align 4, !dbg !1903
  %245 = sext i32 %244 to i64, !dbg !1903
  br label %259, !dbg !1905

; <label>:246:                                    ; preds = %228
  br i1 %231, label %247, label %252, !dbg !1906

; <label>:247:                                    ; preds = %246
  %248 = load i8*, i8** %37, align 16, !dbg !1906
  %249 = sext i32 %230 to i64, !dbg !1906
  %250 = getelementptr i8, i8* %248, i64 %249, !dbg !1906
  %251 = add i32 %230, 8, !dbg !1906
  store i32 %251, i32* %36, align 16, !dbg !1906
  br label %255, !dbg !1906

; <label>:252:                                    ; preds = %246
  %253 = load i8*, i8** %38, align 8, !dbg !1906
  %254 = getelementptr i8, i8* %253, i64 8, !dbg !1906
  store i8* %254, i8** %38, align 8, !dbg !1906
  br label %255, !dbg !1906

; <label>:255:                                    ; preds = %252, %247
  %256 = phi i8* [ %250, %247 ], [ %253, %252 ]
  %257 = bitcast i8* %256 to i64*, !dbg !1906
  %258 = load i64, i64* %257, align 8, !dbg !1906
  br label %259

; <label>:259:                                    ; preds = %255, %241
  %260 = phi i64 [ %245, %241 ], [ %258, %255 ], !dbg !1901
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %39) #5, !dbg !1907
  %261 = icmp slt i64 %260, 0, !dbg !1912
  %262 = sub nsw i64 0, %260, !dbg !1913
  %263 = select i1 %261, i64 %262, i64 %260, !dbg !1914
  br label %264, !dbg !1917

; <label>:264:                                    ; preds = %264, %259
  %265 = phi i64 [ 0, %259 ], [ %271, %264 ]
  %266 = phi i64 [ %263, %259 ], [ %272, %264 ], !dbg !1918
  %267 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %265, !dbg !1915
  %268 = urem i64 %266, 10, !dbg !1919
  %269 = trunc i64 %268 to i8, !dbg !1920
  %270 = or i8 %269, 48, !dbg !1920
  %271 = add nuw nsw i64 %265, 1, !dbg !1921
  store i8 %270, i8* %267, align 1, !dbg !1922, !tbaa !295
  %272 = udiv i64 %266, 10, !dbg !1923
  %273 = icmp ugt i64 %266, 9, !dbg !1924
  br i1 %273, label %264, label %274, !dbg !1924, !llvm.loop !1433

; <label>:274:                                    ; preds = %264
  br i1 %261, label %275, label %278, !dbg !1925

; <label>:275:                                    ; preds = %274
  %276 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %271, !dbg !1916
  %277 = add nuw nsw i64 %265, 2, !dbg !1926
  store i8 45, i8* %276, align 1, !dbg !1927, !tbaa !295
  br label %278, !dbg !1928

; <label>:278:                                    ; preds = %275, %274
  %279 = phi i8 [ 45, %275 ], [ %270, %274 ]
  %280 = phi i64 [ %277, %275 ], [ %271, %274 ]
  %281 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %280, !dbg !1916
  store i8 0, i8* %281, align 1, !dbg !1930, !tbaa !295
  %282 = icmp sgt i64 %280, 1, !dbg !1931
  br i1 %282, label %283, label %297, !dbg !1932

; <label>:283:                                    ; preds = %278
  %284 = add nsw i64 %280, -1, !dbg !1933
  %285 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %284, !dbg !1909
  %286 = load i8, i8* %39, align 16, !dbg !1934, !tbaa !295
  store i8 %279, i8* %39, align 16, !dbg !1936, !tbaa !295
  store i8 %286, i8* %285, align 1, !dbg !1937, !tbaa !295
  %287 = getelementptr inbounds i8, i8* %285, i64 -1, !dbg !1933
  %288 = icmp ult i8* %42, %287, !dbg !1931
  br i1 %288, label %289, label %297, !dbg !1932, !llvm.loop !1453

; <label>:289:                                    ; preds = %283, %289
  %290 = phi i8* [ %295, %289 ], [ %287, %283 ]
  %291 = phi i8* [ %294, %289 ], [ %42, %283 ]
  %292 = load i8, i8* %290, align 1, !dbg !1938, !tbaa !295
  %293 = load i8, i8* %291, align 1, !dbg !1934, !tbaa !295
  store i8 %292, i8* %291, align 1, !dbg !1936, !tbaa !295
  store i8 %293, i8* %290, align 1, !dbg !1937, !tbaa !295
  %294 = getelementptr inbounds i8, i8* %291, i64 1, !dbg !1939
  %295 = getelementptr inbounds i8, i8* %290, i64 -1, !dbg !1933
  %296 = icmp ult i8* %294, %295, !dbg !1931
  br i1 %296, label %289, label %297, !dbg !1932, !llvm.loop !1453

; <label>:297:                                    ; preds = %289, %283, %278
  %298 = trunc i64 %280 to i32, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  %299 = shl i64 %280, 32, !dbg !1942
  %300 = ashr exact i64 %299, 32, !dbg !1942
  %301 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1946
  %302 = load i8, i8* %301, align 1, !dbg !1946, !tbaa !295
  %303 = trunc i8 %302 to i3, !dbg !1948
  switch i3 %303, label %339 [
    i3 -4, label %331
    i3 1, label %304
    i3 2, label %312
    i3 3, label %322
  ], !dbg !1948

; <label>:304:                                    ; preds = %297
  %305 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1949
  %306 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !1950
  %307 = load i8, i8* %306, align 1, !dbg !1950, !tbaa !295
  %308 = zext i8 %307 to i64, !dbg !1951
  %309 = load i8, i8* %305, align 1, !dbg !1952, !tbaa !295
  %310 = zext i8 %309 to i64, !dbg !1953
  %311 = sub nsw i64 %308, %310, !dbg !1954
  br label %339

; <label>:312:                                    ; preds = %297
  %313 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1955
  %314 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !1956
  %315 = bitcast i8* %314 to i16*, !dbg !1956
  %316 = load i16, i16* %315, align 1, !dbg !1956, !tbaa !302
  %317 = zext i16 %316 to i64, !dbg !1957
  %318 = bitcast i8* %313 to i16*, !dbg !1958
  %319 = load i16, i16* %318, align 1, !dbg !1958, !tbaa !302
  %320 = zext i16 %319 to i64, !dbg !1959
  %321 = sub nsw i64 %317, %320, !dbg !1960
  br label %339

; <label>:322:                                    ; preds = %297
  %323 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1961
  %324 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !1962
  %325 = bitcast i8* %324 to i32*, !dbg !1962
  %326 = load i32, i32* %325, align 1, !dbg !1962, !tbaa !255
  %327 = bitcast i8* %323 to i32*, !dbg !1963
  %328 = load i32, i32* %327, align 1, !dbg !1963, !tbaa !255
  %329 = sub i32 %326, %328, !dbg !1964
  %330 = zext i32 %329 to i64, !dbg !1965
  br label %339

; <label>:331:                                    ; preds = %297
  %332 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !1966
  %333 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !1967
  %334 = bitcast i8* %333 to i64*, !dbg !1967
  %335 = load i64, i64* %334, align 1, !dbg !1967, !tbaa !315
  %336 = bitcast i8* %332 to i64*, !dbg !1968
  %337 = load i64, i64* %336, align 1, !dbg !1968, !tbaa !315
  %338 = sub i64 %335, %337, !dbg !1969
  br label %339

; <label>:339:                                    ; preds = %297, %304, %312, %322, %331
  %340 = phi i64 [ %338, %331 ], [ %330, %322 ], [ %321, %312 ], [ %311, %304 ], [ 0, %297 ], !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  %341 = icmp ult i64 %340, %300, !dbg !1972
  br i1 %341, label %342, label %345, !dbg !1973

; <label>:342:                                    ; preds = %339
  %343 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %300) #8, !dbg !1974
  %344 = getelementptr inbounds i8, i8* %343, i64 -1, !dbg !1976
  br label %345, !dbg !1978

; <label>:345:                                    ; preds = %342, %339
  %346 = phi i8* [ %344, %342 ], [ %301, %339 ], !dbg !1976
  %347 = phi i8* [ %343, %342 ], [ %95, %339 ], !dbg !1869
  %348 = getelementptr inbounds i8, i8* %347, i64 %47, !dbg !1979
  %349 = call i8* @memcpy(i8* %348, i8* nonnull %39, i64 %300) #7, !dbg !1980
  %350 = load i8, i8* %346, align 1, !dbg !1976, !tbaa !295
  %351 = trunc i8 %350 to i3, !dbg !1984
  switch i3 %351, label %378 [
    i3 0, label %352
    i3 1, label %357
    i3 2, label %362
    i3 3, label %368
    i3 -4, label %373
  ], !dbg !1984

; <label>:352:                                    ; preds = %345
  %353 = trunc i64 %280 to i8, !dbg !1986
  %354 = shl i8 %353, 3, !dbg !1986
  %355 = add i8 %350, %354, !dbg !1986
  %356 = and i8 %355, -8, !dbg !1986
  store i8 %356, i8* %346, align 1, !dbg !1987, !tbaa !295
  br label %378, !dbg !1988

; <label>:357:                                    ; preds = %345
  %358 = getelementptr inbounds i8, i8* %347, i64 -3, !dbg !1989
  %359 = load i8, i8* %358, align 1, !dbg !1990, !tbaa !295
  %360 = trunc i64 %300 to i8, !dbg !1990
  %361 = add i8 %359, %360, !dbg !1990
  store i8 %361, i8* %358, align 1, !dbg !1990, !tbaa !295
  br label %378, !dbg !1991

; <label>:362:                                    ; preds = %345
  %363 = getelementptr inbounds i8, i8* %347, i64 -5, !dbg !1992
  %364 = bitcast i8* %363 to i16*, !dbg !1993
  %365 = load i16, i16* %364, align 1, !dbg !1994, !tbaa !302
  %366 = trunc i64 %300 to i16, !dbg !1994
  %367 = add i16 %365, %366, !dbg !1994
  store i16 %367, i16* %364, align 1, !dbg !1994, !tbaa !302
  br label %378, !dbg !1995

; <label>:368:                                    ; preds = %345
  %369 = getelementptr inbounds i8, i8* %347, i64 -9, !dbg !1996
  %370 = bitcast i8* %369 to i32*, !dbg !1997
  %371 = load i32, i32* %370, align 1, !dbg !1998, !tbaa !255
  %372 = add i32 %371, %298, !dbg !1998
  store i32 %372, i32* %370, align 1, !dbg !1998, !tbaa !255
  br label %378, !dbg !1999

; <label>:373:                                    ; preds = %345
  %374 = getelementptr inbounds i8, i8* %347, i64 -17, !dbg !2000
  %375 = bitcast i8* %374 to i64*, !dbg !2001
  %376 = load i64, i64* %375, align 1, !dbg !2002, !tbaa !315
  %377 = add i64 %376, %300, !dbg !2002
  store i64 %377, i64* %375, align 1, !dbg !2002, !tbaa !315
  br label %378, !dbg !2003

; <label>:378:                                    ; preds = %345, %352, %357, %362, %368, %373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  %379 = add i64 %300, %47, !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %39) #5, !dbg !2006
  br label %580, !dbg !2007

; <label>:380:                                    ; preds = %97, %97
  %381 = icmp eq i8 %99, 117, !dbg !2008
  %382 = load i32, i32* %36, align 16, !dbg !2010
  %383 = icmp ult i32 %382, 41, !dbg !2010
  br i1 %381, label %384, label %398, !dbg !2011

; <label>:384:                                    ; preds = %380
  br i1 %383, label %385, label %390, !dbg !2012

; <label>:385:                                    ; preds = %384
  %386 = load i8*, i8** %37, align 16, !dbg !2012
  %387 = sext i32 %382 to i64, !dbg !2012
  %388 = getelementptr i8, i8* %386, i64 %387, !dbg !2012
  %389 = add i32 %382, 8, !dbg !2012
  store i32 %389, i32* %36, align 16, !dbg !2012
  br label %393, !dbg !2012

; <label>:390:                                    ; preds = %384
  %391 = load i8*, i8** %38, align 8, !dbg !2012
  %392 = getelementptr i8, i8* %391, i64 8, !dbg !2012
  store i8* %392, i8** %38, align 8, !dbg !2012
  br label %393, !dbg !2012

; <label>:393:                                    ; preds = %390, %385
  %394 = phi i8* [ %388, %385 ], [ %391, %390 ]
  %395 = bitcast i8* %394 to i32*, !dbg !2012
  %396 = load i32, i32* %395, align 4, !dbg !2012
  %397 = zext i32 %396 to i64, !dbg !2012
  br label %411, !dbg !2014

; <label>:398:                                    ; preds = %380
  br i1 %383, label %399, label %404, !dbg !2015

; <label>:399:                                    ; preds = %398
  %400 = load i8*, i8** %37, align 16, !dbg !2015
  %401 = sext i32 %382 to i64, !dbg !2015
  %402 = getelementptr i8, i8* %400, i64 %401, !dbg !2015
  %403 = add i32 %382, 8, !dbg !2015
  store i32 %403, i32* %36, align 16, !dbg !2015
  br label %407, !dbg !2015

; <label>:404:                                    ; preds = %398
  %405 = load i8*, i8** %38, align 8, !dbg !2015
  %406 = getelementptr i8, i8* %405, i64 8, !dbg !2015
  store i8* %406, i8** %38, align 8, !dbg !2015
  br label %407, !dbg !2015

; <label>:407:                                    ; preds = %404, %399
  %408 = phi i8* [ %402, %399 ], [ %405, %404 ]
  %409 = bitcast i8* %408 to i64*, !dbg !2015
  %410 = load i64, i64* %409, align 8, !dbg !2015
  br label %411

; <label>:411:                                    ; preds = %407, %393
  %412 = phi i64 [ %397, %393 ], [ %410, %407 ], !dbg !2010
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %40) #5, !dbg !2016
  br label %413, !dbg !2022

; <label>:413:                                    ; preds = %413, %411
  %414 = phi i64 [ 0, %411 ], [ %420, %413 ]
  %415 = phi i64 [ %412, %411 ], [ %421, %413 ]
  %416 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %414, !dbg !2020
  %417 = urem i64 %415, 10, !dbg !2023
  %418 = trunc i64 %417 to i8, !dbg !2024
  %419 = or i8 %418, 48, !dbg !2024
  %420 = add nuw nsw i64 %414, 1, !dbg !2025
  store i8 %419, i8* %416, align 1, !dbg !2026, !tbaa !295
  %421 = udiv i64 %415, 10, !dbg !2027
  %422 = icmp ugt i64 %415, 9, !dbg !2028
  br i1 %422, label %413, label %423, !dbg !2028, !llvm.loop !1477

; <label>:423:                                    ; preds = %413
  %424 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %414, !dbg !2020
  %425 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %420, !dbg !2021
  store i8 0, i8* %425, align 1, !dbg !2030, !tbaa !295
  %426 = icmp eq i64 %414, 0, !dbg !2031
  br i1 %426, label %439, label %427, !dbg !2032

; <label>:427:                                    ; preds = %423
  %428 = load i8, i8* %40, align 16, !dbg !2033, !tbaa !295
  store i8 %419, i8* %40, align 16, !dbg !2035, !tbaa !295
  store i8 %428, i8* %424, align 1, !dbg !2036, !tbaa !295
  %429 = getelementptr inbounds i8, i8* %424, i64 -1, !dbg !2037
  %430 = icmp ult i8* %41, %429, !dbg !2031
  br i1 %430, label %431, label %439, !dbg !2032, !llvm.loop !1488

; <label>:431:                                    ; preds = %427, %431
  %432 = phi i8* [ %437, %431 ], [ %429, %427 ]
  %433 = phi i8* [ %436, %431 ], [ %41, %427 ]
  %434 = load i8, i8* %432, align 1, !dbg !2038, !tbaa !295
  %435 = load i8, i8* %433, align 1, !dbg !2033, !tbaa !295
  store i8 %434, i8* %433, align 1, !dbg !2035, !tbaa !295
  store i8 %435, i8* %432, align 1, !dbg !2036, !tbaa !295
  %436 = getelementptr inbounds i8, i8* %433, i64 1, !dbg !2039
  %437 = getelementptr inbounds i8, i8* %432, i64 -1, !dbg !2037
  %438 = icmp ult i8* %436, %437, !dbg !2031
  br i1 %438, label %431, label %439, !dbg !2032, !llvm.loop !1488

; <label>:439:                                    ; preds = %431, %427, %423
  %440 = trunc i64 %420 to i32, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  %441 = shl i64 %420, 32, !dbg !2042
  %442 = ashr exact i64 %441, 32, !dbg !2042
  %443 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2046
  %444 = load i8, i8* %443, align 1, !dbg !2046, !tbaa !295
  %445 = trunc i8 %444 to i3, !dbg !2048
  switch i3 %445, label %481 [
    i3 -4, label %473
    i3 1, label %446
    i3 2, label %454
    i3 3, label %464
  ], !dbg !2048

; <label>:446:                                    ; preds = %439
  %447 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2049
  %448 = getelementptr inbounds i8, i8* %95, i64 -2, !dbg !2050
  %449 = load i8, i8* %448, align 1, !dbg !2050, !tbaa !295
  %450 = zext i8 %449 to i64, !dbg !2051
  %451 = load i8, i8* %447, align 1, !dbg !2052, !tbaa !295
  %452 = zext i8 %451 to i64, !dbg !2053
  %453 = sub nsw i64 %450, %452, !dbg !2054
  br label %481

; <label>:454:                                    ; preds = %439
  %455 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2055
  %456 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2056
  %457 = bitcast i8* %456 to i16*, !dbg !2056
  %458 = load i16, i16* %457, align 1, !dbg !2056, !tbaa !302
  %459 = zext i16 %458 to i64, !dbg !2057
  %460 = bitcast i8* %455 to i16*, !dbg !2058
  %461 = load i16, i16* %460, align 1, !dbg !2058, !tbaa !302
  %462 = zext i16 %461 to i64, !dbg !2059
  %463 = sub nsw i64 %459, %462, !dbg !2060
  br label %481

; <label>:464:                                    ; preds = %439
  %465 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2061
  %466 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2062
  %467 = bitcast i8* %466 to i32*, !dbg !2062
  %468 = load i32, i32* %467, align 1, !dbg !2062, !tbaa !255
  %469 = bitcast i8* %465 to i32*, !dbg !2063
  %470 = load i32, i32* %469, align 1, !dbg !2063, !tbaa !255
  %471 = sub i32 %468, %470, !dbg !2064
  %472 = zext i32 %471 to i64, !dbg !2065
  br label %481

; <label>:473:                                    ; preds = %439
  %474 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2066
  %475 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2067
  %476 = bitcast i8* %475 to i64*, !dbg !2067
  %477 = load i64, i64* %476, align 1, !dbg !2067, !tbaa !315
  %478 = bitcast i8* %474 to i64*, !dbg !2068
  %479 = load i64, i64* %478, align 1, !dbg !2068, !tbaa !315
  %480 = sub i64 %477, %479, !dbg !2069
  br label %481

; <label>:481:                                    ; preds = %439, %446, %454, %464, %473
  %482 = phi i64 [ %480, %473 ], [ %472, %464 ], [ %463, %454 ], [ %453, %446 ], [ 0, %439 ], !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %483 = icmp ult i64 %482, %442, !dbg !2072
  br i1 %483, label %484, label %487, !dbg !2073

; <label>:484:                                    ; preds = %481
  %485 = call i8* @sdsMakeRoomFor(i8* nonnull %95, i64 %442) #8, !dbg !2074
  %486 = getelementptr inbounds i8, i8* %485, i64 -1, !dbg !2076
  br label %487, !dbg !2078

; <label>:487:                                    ; preds = %484, %481
  %488 = phi i8* [ %486, %484 ], [ %443, %481 ], !dbg !2076
  %489 = phi i8* [ %485, %484 ], [ %95, %481 ], !dbg !1869
  %490 = getelementptr inbounds i8, i8* %489, i64 %47, !dbg !2079
  %491 = call i8* @memcpy(i8* %490, i8* nonnull %40, i64 %442) #7, !dbg !2080
  %492 = load i8, i8* %488, align 1, !dbg !2076, !tbaa !295
  %493 = trunc i8 %492 to i3, !dbg !2084
  switch i3 %493, label %520 [
    i3 0, label %494
    i3 1, label %499
    i3 2, label %504
    i3 3, label %510
    i3 -4, label %515
  ], !dbg !2084

; <label>:494:                                    ; preds = %487
  %495 = trunc i64 %420 to i8, !dbg !2086
  %496 = shl i8 %495, 3, !dbg !2086
  %497 = add i8 %492, %496, !dbg !2086
  %498 = and i8 %497, -8, !dbg !2086
  store i8 %498, i8* %488, align 1, !dbg !2087, !tbaa !295
  br label %520, !dbg !2088

; <label>:499:                                    ; preds = %487
  %500 = getelementptr inbounds i8, i8* %489, i64 -3, !dbg !2089
  %501 = load i8, i8* %500, align 1, !dbg !2090, !tbaa !295
  %502 = trunc i64 %442 to i8, !dbg !2090
  %503 = add i8 %501, %502, !dbg !2090
  store i8 %503, i8* %500, align 1, !dbg !2090, !tbaa !295
  br label %520, !dbg !2091

; <label>:504:                                    ; preds = %487
  %505 = getelementptr inbounds i8, i8* %489, i64 -5, !dbg !2092
  %506 = bitcast i8* %505 to i16*, !dbg !2093
  %507 = load i16, i16* %506, align 1, !dbg !2094, !tbaa !302
  %508 = trunc i64 %442 to i16, !dbg !2094
  %509 = add i16 %507, %508, !dbg !2094
  store i16 %509, i16* %506, align 1, !dbg !2094, !tbaa !302
  br label %520, !dbg !2095

; <label>:510:                                    ; preds = %487
  %511 = getelementptr inbounds i8, i8* %489, i64 -9, !dbg !2096
  %512 = bitcast i8* %511 to i32*, !dbg !2097
  %513 = load i32, i32* %512, align 1, !dbg !2098, !tbaa !255
  %514 = add i32 %513, %440, !dbg !2098
  store i32 %514, i32* %512, align 1, !dbg !2098, !tbaa !255
  br label %520, !dbg !2099

; <label>:515:                                    ; preds = %487
  %516 = getelementptr inbounds i8, i8* %489, i64 -17, !dbg !2100
  %517 = bitcast i8* %516 to i64*, !dbg !2101
  %518 = load i64, i64* %517, align 1, !dbg !2102, !tbaa !315
  %519 = add i64 %518, %442, !dbg !2102
  store i64 %519, i64* %517, align 1, !dbg !2102, !tbaa !315
  br label %520, !dbg !2103

; <label>:520:                                    ; preds = %487, %494, %499, %504, %510, %515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  %521 = add i64 %442, %47, !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %40) #5, !dbg !2106
  br label %580, !dbg !2107

; <label>:522:                                    ; preds = %97
  %523 = add nsw i64 %47, 1, !dbg !2108
  %524 = getelementptr inbounds i8, i8* %95, i64 %47, !dbg !2109
  store i8 %99, i8* %524, align 1, !dbg !2110, !tbaa !295
  %525 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2114
  %526 = load i8, i8* %525, align 1, !dbg !2114, !tbaa !295
  %527 = trunc i8 %526 to i3, !dbg !2116
  switch i3 %527, label %550 [
    i3 0, label %528
    i3 1, label %531
    i3 2, label %535
    i3 3, label %540
    i3 -4, label %545
  ], !dbg !2116

; <label>:528:                                    ; preds = %522
  %529 = add i8 %526, 8, !dbg !2118
  %530 = and i8 %529, -8, !dbg !2118
  store i8 %530, i8* %525, align 1, !dbg !2119, !tbaa !295
  br label %550, !dbg !2120

; <label>:531:                                    ; preds = %522
  %532 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2121
  %533 = load i8, i8* %532, align 1, !dbg !2122, !tbaa !295
  %534 = add i8 %533, 1, !dbg !2122
  store i8 %534, i8* %532, align 1, !dbg !2122, !tbaa !295
  br label %550, !dbg !2123

; <label>:535:                                    ; preds = %522
  %536 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2124
  %537 = bitcast i8* %536 to i16*, !dbg !2125
  %538 = load i16, i16* %537, align 1, !dbg !2126, !tbaa !302
  %539 = add i16 %538, 1, !dbg !2126
  store i16 %539, i16* %537, align 1, !dbg !2126, !tbaa !302
  br label %550, !dbg !2127

; <label>:540:                                    ; preds = %522
  %541 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2128
  %542 = bitcast i8* %541 to i32*, !dbg !2129
  %543 = load i32, i32* %542, align 1, !dbg !2130, !tbaa !255
  %544 = add i32 %543, 1, !dbg !2130
  store i32 %544, i32* %542, align 1, !dbg !2130, !tbaa !255
  br label %550, !dbg !2131

; <label>:545:                                    ; preds = %522
  %546 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2132
  %547 = bitcast i8* %546 to i64*, !dbg !2133
  %548 = load i64, i64* %547, align 1, !dbg !2134, !tbaa !315
  %549 = add i64 %548, 1, !dbg !2134
  store i64 %549, i64* %547, align 1, !dbg !2134, !tbaa !315
  br label %550, !dbg !2135

; <label>:550:                                    ; preds = %522, %528, %531, %535, %540, %545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br label %580, !dbg !2137

; <label>:551:                                    ; preds = %93
  %552 = add nsw i64 %47, 1, !dbg !2138
  %553 = getelementptr inbounds i8, i8* %95, i64 %47, !dbg !2139
  store i8 %94, i8* %553, align 1, !dbg !2140, !tbaa !295
  %554 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !2144
  %555 = load i8, i8* %554, align 1, !dbg !2144, !tbaa !295
  %556 = trunc i8 %555 to i3, !dbg !2146
  switch i3 %556, label %579 [
    i3 0, label %557
    i3 1, label %560
    i3 2, label %564
    i3 3, label %569
    i3 -4, label %574
  ], !dbg !2146

; <label>:557:                                    ; preds = %551
  %558 = add i8 %555, 8, !dbg !2148
  %559 = and i8 %558, -8, !dbg !2148
  store i8 %559, i8* %554, align 1, !dbg !2149, !tbaa !295
  br label %579, !dbg !2150

; <label>:560:                                    ; preds = %551
  %561 = getelementptr inbounds i8, i8* %95, i64 -3, !dbg !2151
  %562 = load i8, i8* %561, align 1, !dbg !2152, !tbaa !295
  %563 = add i8 %562, 1, !dbg !2152
  store i8 %563, i8* %561, align 1, !dbg !2152, !tbaa !295
  br label %579, !dbg !2153

; <label>:564:                                    ; preds = %551
  %565 = getelementptr inbounds i8, i8* %95, i64 -5, !dbg !2154
  %566 = bitcast i8* %565 to i16*, !dbg !2155
  %567 = load i16, i16* %566, align 1, !dbg !2156, !tbaa !302
  %568 = add i16 %567, 1, !dbg !2156
  store i16 %568, i16* %566, align 1, !dbg !2156, !tbaa !302
  br label %579, !dbg !2157

; <label>:569:                                    ; preds = %551
  %570 = getelementptr inbounds i8, i8* %95, i64 -9, !dbg !2158
  %571 = bitcast i8* %570 to i32*, !dbg !2159
  %572 = load i32, i32* %571, align 1, !dbg !2160, !tbaa !255
  %573 = add i32 %572, 1, !dbg !2160
  store i32 %573, i32* %571, align 1, !dbg !2160, !tbaa !255
  br label %579, !dbg !2161

; <label>:574:                                    ; preds = %551
  %575 = getelementptr inbounds i8, i8* %95, i64 -17, !dbg !2162
  %576 = bitcast i8* %575 to i64*, !dbg !2163
  %577 = load i64, i64* %576, align 1, !dbg !2164, !tbaa !315
  %578 = add i64 %577, 1, !dbg !2164
  store i64 %578, i64* %576, align 1, !dbg !2164, !tbaa !315
  br label %579, !dbg !2165

; <label>:579:                                    ; preds = %551, %557, %560, %564, %569, %574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br label %580, !dbg !2167

; <label>:580:                                    ; preds = %226, %378, %520, %550, %579
  %581 = phi i64 [ %523, %550 ], [ %521, %520 ], [ %379, %378 ], [ %227, %226 ], [ %552, %579 ], !dbg !2168
  %582 = phi i8* [ %98, %550 ], [ %98, %520 ], [ %98, %378 ], [ %98, %226 ], [ %46, %579 ], !dbg !2169
  %583 = phi i8* [ %95, %550 ], [ %489, %520 ], [ %347, %378 ], [ %194, %226 ], [ %95, %579 ], !dbg !1869
  %584 = getelementptr inbounds i8, i8* %582, i64 1, !dbg !2170
  %585 = load i8, i8* %584, align 1, !dbg !1754, !tbaa !295
  %586 = icmp eq i8 %585, 0, !dbg !1755
  br i1 %586, label %587, label %43, !dbg !1755, !llvm.loop !2171

; <label>:587:                                    ; preds = %580, %30
  %588 = phi i64 [ %31, %30 ], [ %581, %580 ], !dbg !2173
  %589 = phi i8* [ %0, %30 ], [ %583, %580 ]
  call void @llvm.va_end(i8* nonnull %32), !dbg !2174
  %590 = getelementptr inbounds i8, i8* %589, i64 %588, !dbg !2175
  store i8 0, i8* %590, align 1, !dbg !2176, !tbaa !295
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %32) #5, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  ret i8* %589, !dbg !2178
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdstrim(i8* returned, i8*) local_unnamed_addr #0 !dbg !2179 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2194
  %4 = load i8, i8* %3, align 1, !dbg !2194, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !2196
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2196

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2197
  %8 = zext i8 %7 to i64, !dbg !2197
  br label %27, !dbg !2198

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2199
  %11 = load i8, i8* %10, align 1, !dbg !2200, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !2199
  br label %27, !dbg !2201

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2202
  %15 = bitcast i8* %14 to i16*, !dbg !2203
  %16 = load i16, i16* %15, align 1, !dbg !2203, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !2202
  br label %27, !dbg !2204

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2205
  %20 = bitcast i8* %19 to i32*, !dbg !2206
  %21 = load i32, i32* %20, align 1, !dbg !2206, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !2205
  br label %27, !dbg !2207

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2208
  %25 = bitcast i8* %24 to i64*, !dbg !2209
  %26 = load i64, i64* %25, align 1, !dbg !2209, !tbaa !315
  br label %27, !dbg !2210

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  %29 = getelementptr inbounds i8, i8* %0, i64 %28, !dbg !2213
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2214
  %31 = icmp ult i8* %30, %0, !dbg !2217
  br i1 %31, label %41, label %32, !dbg !2218

; <label>:32:                                     ; preds = %27, %38
  %33 = phi i8* [ %39, %38 ], [ %0, %27 ]
  %34 = load i8, i8* %33, align 1, !dbg !2219, !tbaa !295
  %35 = sext i8 %34 to i32, !dbg !2219
  %36 = tail call i8* @strchr(i8* %1, i32 %35) #7, !dbg !2220
  %37 = icmp eq i8* %36, null, !dbg !2218
  br i1 %37, label %41, label %38, !dbg !2221

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2222
  %40 = icmp ugt i8* %39, %30, !dbg !2217
  br i1 %40, label %41, label %32, !dbg !2218, !llvm.loop !2223

; <label>:41:                                     ; preds = %38, %32, %27
  %42 = phi i8* [ %0, %27 ], [ %33, %32 ], [ %39, %38 ], !dbg !2224
  %43 = icmp ugt i8* %30, %42, !dbg !2225
  br i1 %43, label %44, label %53, !dbg !2226

; <label>:44:                                     ; preds = %41, %50
  %45 = phi i8* [ %51, %50 ], [ %30, %41 ]
  %46 = load i8, i8* %45, align 1, !dbg !2227, !tbaa !295
  %47 = sext i8 %46 to i32, !dbg !2227
  %48 = tail call i8* @strchr(i8* %1, i32 %47) #7, !dbg !2228
  %49 = icmp eq i8* %48, null, !dbg !2226
  br i1 %49, label %53, label %50, !dbg !2229

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !2230
  %52 = icmp ugt i8* %51, %42, !dbg !2225
  br i1 %52, label %44, label %53, !dbg !2226, !llvm.loop !2231

; <label>:53:                                     ; preds = %50, %44, %41
  %54 = phi i8* [ %30, %41 ], [ %45, %44 ], [ %51, %50 ], !dbg !2224
  %55 = icmp ugt i8* %42, %54, !dbg !2232
  %56 = ptrtoint i8* %54 to i64, !dbg !2233
  %57 = ptrtoint i8* %42 to i64, !dbg !2233
  %58 = sub i64 1, %57, !dbg !2233
  %59 = add i64 %58, %56, !dbg !2234
  %60 = select i1 %55, i64 0, i64 %59, !dbg !2235
  %61 = icmp eq i8* %42, %0, !dbg !2237
  br i1 %61, label %64, label %62, !dbg !2239

; <label>:62:                                     ; preds = %53
  %63 = tail call i8* @memmove(i8* %0, i8* %42, i64 %60) #7, !dbg !2240
  br label %64, !dbg !2240

; <label>:64:                                     ; preds = %53, %62
  %65 = getelementptr inbounds i8, i8* %0, i64 %60, !dbg !2241
  store i8 0, i8* %65, align 1, !dbg !2242, !tbaa !295
  %66 = load i8, i8* %3, align 1, !dbg !2246, !tbaa !295
  %67 = trunc i8 %66 to i3, !dbg !2248
  switch i3 %67, label %85 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %74
    i3 3, label %78
    i3 -4, label %82
  ], !dbg !2248

; <label>:68:                                     ; preds = %64
  %69 = trunc i64 %60 to i8, !dbg !2250
  %70 = shl i8 %69, 3, !dbg !2250
  store i8 %70, i8* %3, align 1, !dbg !2251, !tbaa !295
  br label %85, !dbg !2252

; <label>:71:                                     ; preds = %64
  %72 = trunc i64 %60 to i8, !dbg !2253
  %73 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2254
  store i8 %72, i8* %73, align 1, !dbg !2255, !tbaa !295
  br label %85, !dbg !2256

; <label>:74:                                     ; preds = %64
  %75 = trunc i64 %60 to i16, !dbg !2257
  %76 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2258
  %77 = bitcast i8* %76 to i16*, !dbg !2259
  store i16 %75, i16* %77, align 1, !dbg !2260, !tbaa !302
  br label %85, !dbg !2261

; <label>:78:                                     ; preds = %64
  %79 = trunc i64 %60 to i32, !dbg !2262
  %80 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2263
  %81 = bitcast i8* %80 to i32*, !dbg !2264
  store i32 %79, i32* %81, align 1, !dbg !2265, !tbaa !255
  br label %85, !dbg !2266

; <label>:82:                                     ; preds = %64
  %83 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2267
  %84 = bitcast i8* %83 to i64*, !dbg !2268
  store i64 %60, i64* %84, align 1, !dbg !2269, !tbaa !315
  br label %85, !dbg !2270

; <label>:85:                                     ; preds = %64, %68, %71, %74, %78, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  ret i8* %0, !dbg !2272
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #0 !dbg !2273 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2287
  %5 = load i8, i8* %4, align 1, !dbg !2287, !tbaa !295
  %6 = trunc i8 %5 to i3, !dbg !2289
  switch i3 %6, label %90 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2289

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2290
  %9 = zext i8 %8 to i64, !dbg !2290
  br label %28, !dbg !2291

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2292
  %12 = load i8, i8* %11, align 1, !dbg !2293, !tbaa !295
  %13 = zext i8 %12 to i64, !dbg !2292
  br label %28, !dbg !2294

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2295
  %16 = bitcast i8* %15 to i16*, !dbg !2296
  %17 = load i16, i16* %16, align 1, !dbg !2296, !tbaa !302
  %18 = zext i16 %17 to i64, !dbg !2295
  br label %28, !dbg !2297

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2298
  %21 = bitcast i8* %20 to i32*, !dbg !2299
  %22 = load i32, i32* %21, align 1, !dbg !2299, !tbaa !255
  %23 = zext i32 %22 to i64, !dbg !2298
  br label %28, !dbg !2300

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2301
  %26 = bitcast i8* %25 to i64*, !dbg !2302
  %27 = load i64, i64* %26, align 1, !dbg !2302, !tbaa !315
  br label %28, !dbg !2303

; <label>:28:                                     ; preds = %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], !dbg !2304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2305
  %30 = icmp eq i64 %29, 0, !dbg !2307
  br i1 %30, label %91, label %31, !dbg !2309

; <label>:31:                                     ; preds = %28
  %32 = icmp slt i64 %1, 0, !dbg !2310
  br i1 %32, label %33, label %37, !dbg !2312

; <label>:33:                                     ; preds = %31
  %34 = add i64 %29, %1, !dbg !2313
  %35 = icmp sgt i64 %34, 0, !dbg !2315
  %36 = select i1 %35, i64 %34, i64 0, !dbg !2315
  br label %37, !dbg !2316

; <label>:37:                                     ; preds = %33, %31
  %38 = phi i64 [ %36, %33 ], [ %1, %31 ]
  %39 = icmp slt i64 %2, 0, !dbg !2317
  br i1 %39, label %40, label %44, !dbg !2319

; <label>:40:                                     ; preds = %37
  %41 = add i64 %29, %2, !dbg !2320
  %42 = icmp sgt i64 %41, 0, !dbg !2322
  %43 = select i1 %42, i64 %41, i64 0, !dbg !2322
  br label %44, !dbg !2323

; <label>:44:                                     ; preds = %40, %37
  %45 = phi i64 [ %43, %40 ], [ %2, %37 ]
  %46 = icmp slt i64 %45, %38, !dbg !2324
  %47 = sub i64 1, %38, !dbg !2325
  %48 = add i64 %47, %45, !dbg !2326
  %49 = select i1 %46, i64 0, i64 %48, !dbg !2327
  %50 = icmp ne i64 %49, 0, !dbg !2329
  %51 = icmp sgt i64 %29, %38, !dbg !2331
  %52 = and i1 %51, %50, !dbg !2334
  br i1 %52, label %53, label %68, !dbg !2334

; <label>:53:                                     ; preds = %44
  %54 = icmp slt i64 %45, %29, !dbg !2335
  br i1 %54, label %60, label %55, !dbg !2337

; <label>:55:                                     ; preds = %53
  %56 = add i64 %29, -1, !dbg !2338
  %57 = icmp slt i64 %56, %38, !dbg !2340
  %58 = sub i64 %29, %38, !dbg !2341
  %59 = select i1 %57, i64 0, i64 %58, !dbg !2342
  br label %60, !dbg !2342

; <label>:60:                                     ; preds = %55, %53
  %61 = phi i64 [ %49, %53 ], [ %59, %55 ], !dbg !2343
  %62 = icmp ne i64 %38, 0, !dbg !2344
  %63 = icmp ne i64 %61, 0, !dbg !2346
  %64 = and i1 %62, %63, !dbg !2347
  br i1 %64, label %65, label %68, !dbg !2347

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %38, !dbg !2348
  %67 = tail call i8* @memmove(i8* nonnull %0, i8* %66, i64 %61) #7, !dbg !2349
  br label %68, !dbg !2349

; <label>:68:                                     ; preds = %44, %65, %60
  %69 = phi i64 [ %61, %65 ], [ %61, %60 ], [ 0, %44 ]
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !2350
  store i8 0, i8* %70, align 1, !dbg !2351, !tbaa !295
  %71 = load i8, i8* %4, align 1, !dbg !2355, !tbaa !295
  %72 = trunc i8 %71 to i3, !dbg !2357
  switch i3 %72, label %90 [
    i3 0, label %73
    i3 1, label %76
    i3 2, label %79
    i3 3, label %83
    i3 -4, label %87
  ], !dbg !2357

; <label>:73:                                     ; preds = %68
  %74 = trunc i64 %69 to i8, !dbg !2359
  %75 = shl i8 %74, 3, !dbg !2359
  store i8 %75, i8* %4, align 1, !dbg !2360, !tbaa !295
  br label %90, !dbg !2361

; <label>:76:                                     ; preds = %68
  %77 = trunc i64 %69 to i8, !dbg !2362
  %78 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2363
  store i8 %77, i8* %78, align 1, !dbg !2364, !tbaa !295
  br label %90, !dbg !2365

; <label>:79:                                     ; preds = %68
  %80 = trunc i64 %69 to i16, !dbg !2366
  %81 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2367
  %82 = bitcast i8* %81 to i16*, !dbg !2368
  store i16 %80, i16* %82, align 1, !dbg !2369, !tbaa !302
  br label %90, !dbg !2370

; <label>:83:                                     ; preds = %68
  %84 = trunc i64 %69 to i32, !dbg !2371
  %85 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2372
  %86 = bitcast i8* %85 to i32*, !dbg !2373
  store i32 %84, i32* %86, align 1, !dbg !2374, !tbaa !255
  br label %90, !dbg !2375

; <label>:87:                                     ; preds = %68
  %88 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2376
  %89 = bitcast i8* %88 to i64*, !dbg !2377
  store i64 %69, i64* %89, align 1, !dbg !2378, !tbaa !315
  br label %90, !dbg !2379

; <label>:90:                                     ; preds = %87, %83, %79, %76, %73, %68, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br label %91, !dbg !2380

; <label>:91:                                     ; preds = %90, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  ret void, !dbg !2380
}

; Function Attrs: noredzone nounwind
define dso_local void @sdstolower(i8* nocapture) local_unnamed_addr #0 !dbg !2381 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2393
  %3 = load i8, i8* %2, align 1, !dbg !2393, !tbaa !295
  %4 = trunc i8 %3 to i3, !dbg !2395
  switch i3 %4, label %5 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2395

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  br label %45, !dbg !2399

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %3, 3, !dbg !2400
  %8 = zext i8 %7 to i64, !dbg !2400
  br label %27, !dbg !2401

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2402
  %11 = load i8, i8* %10, align 1, !dbg !2403, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !2402
  br label %27, !dbg !2404

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2405
  %15 = bitcast i8* %14 to i16*, !dbg !2406
  %16 = load i16, i16* %15, align 1, !dbg !2406, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !2405
  br label %27, !dbg !2407

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2408
  %20 = bitcast i8* %19 to i32*, !dbg !2409
  %21 = load i32, i32* %20, align 1, !dbg !2409, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !2408
  br label %27, !dbg !2410

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2411
  %25 = bitcast i8* %24 to i64*, !dbg !2412
  %26 = load i64, i64* %25, align 1, !dbg !2412, !tbaa !315
  br label %27, !dbg !2413

; <label>:27:                                     ; preds = %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  %29 = icmp eq i64 %28, 0, !dbg !2415
  br i1 %29, label %45, label %30, !dbg !2399

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %43, %30 ], [ 0, %27 ]
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !2416
  %33 = load i8, i8* %32, align 1, !dbg !2416, !tbaa !295
  %34 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2416
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !2416
  %36 = sext i8 %33 to i64, !dbg !2416
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !2416
  %38 = load i8, i8* %37, align 1, !dbg !2416, !tbaa !295
  %39 = and i8 %38, 3, !dbg !2416
  %40 = icmp eq i8 %39, 1, !dbg !2416
  %41 = add i8 %33, 32, !dbg !2416
  %42 = select i1 %40, i8 %41, i8 %33, !dbg !2416
  store i8 %42, i8* %32, align 1, !dbg !2417, !tbaa !295
  %43 = add nuw i64 %31, 1, !dbg !2418
  %44 = icmp eq i64 %43, %28, !dbg !2415
  br i1 %44, label %45, label %30, !dbg !2399, !llvm.loop !2419

; <label>:45:                                     ; preds = %30, %5, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  ret void, !dbg !2421
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdstoupper(i8* nocapture) local_unnamed_addr #0 !dbg !2422 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2434
  %3 = load i8, i8* %2, align 1, !dbg !2434, !tbaa !295
  %4 = trunc i8 %3 to i3, !dbg !2436
  switch i3 %4, label %5 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2436

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  br label %45, !dbg !2440

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %3, 3, !dbg !2441
  %8 = zext i8 %7 to i64, !dbg !2441
  br label %27, !dbg !2442

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2443
  %11 = load i8, i8* %10, align 1, !dbg !2444, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !2443
  br label %27, !dbg !2445

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2446
  %15 = bitcast i8* %14 to i16*, !dbg !2447
  %16 = load i16, i16* %15, align 1, !dbg !2447, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !2446
  br label %27, !dbg !2448

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2449
  %20 = bitcast i8* %19 to i32*, !dbg !2450
  %21 = load i32, i32* %20, align 1, !dbg !2450, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !2449
  br label %27, !dbg !2451

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2452
  %25 = bitcast i8* %24 to i64*, !dbg !2453
  %26 = load i64, i64* %25, align 1, !dbg !2453, !tbaa !315
  br label %27, !dbg !2454

; <label>:27:                                     ; preds = %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !2455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  %29 = icmp eq i64 %28, 0, !dbg !2456
  br i1 %29, label %45, label %30, !dbg !2440

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %43, %30 ], [ 0, %27 ]
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !2457
  %33 = load i8, i8* %32, align 1, !dbg !2457, !tbaa !295
  %34 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2457
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !2457
  %36 = sext i8 %33 to i64, !dbg !2457
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !2457
  %38 = load i8, i8* %37, align 1, !dbg !2457, !tbaa !295
  %39 = and i8 %38, 3, !dbg !2457
  %40 = icmp eq i8 %39, 2, !dbg !2457
  %41 = add i8 %33, -32, !dbg !2457
  %42 = select i1 %40, i8 %41, i8 %33, !dbg !2457
  store i8 %42, i8* %32, align 1, !dbg !2458, !tbaa !295
  %43 = add nuw i64 %31, 1, !dbg !2459
  %44 = icmp eq i64 %43, %28, !dbg !2456
  br i1 %44, label %45, label %30, !dbg !2440, !llvm.loop !2460

; <label>:45:                                     ; preds = %30, %5, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2462
  ret void, !dbg !2462
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #0 !dbg !2463 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2477
  %4 = load i8, i8* %3, align 1, !dbg !2477, !tbaa !295
  %5 = trunc i8 %4 to i3, !dbg !2479
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2479

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2480
  %8 = zext i8 %7 to i64, !dbg !2480
  br label %27, !dbg !2481

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2482
  %11 = load i8, i8* %10, align 1, !dbg !2483, !tbaa !295
  %12 = zext i8 %11 to i64, !dbg !2482
  br label %27, !dbg !2484

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2485
  %15 = bitcast i8* %14 to i16*, !dbg !2486
  %16 = load i16, i16* %15, align 1, !dbg !2486, !tbaa !302
  %17 = zext i16 %16 to i64, !dbg !2485
  br label %27, !dbg !2487

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2488
  %20 = bitcast i8* %19 to i32*, !dbg !2489
  %21 = load i32, i32* %20, align 1, !dbg !2489, !tbaa !255
  %22 = zext i32 %21 to i64, !dbg !2488
  br label %27, !dbg !2490

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2491
  %25 = bitcast i8* %24 to i64*, !dbg !2492
  %26 = load i64, i64* %25, align 1, !dbg !2492, !tbaa !315
  br label %27, !dbg !2493

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  %29 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2499
  %30 = load i8, i8* %29, align 1, !dbg !2499, !tbaa !295
  %31 = trunc i8 %30 to i3, !dbg !2501
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !2501

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !2502
  %34 = zext i8 %33 to i64, !dbg !2502
  br label %53, !dbg !2503

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2504
  %37 = load i8, i8* %36, align 1, !dbg !2505, !tbaa !295
  %38 = zext i8 %37 to i64, !dbg !2504
  br label %53, !dbg !2506

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2507
  %41 = bitcast i8* %40 to i16*, !dbg !2508
  %42 = load i16, i16* %41, align 1, !dbg !2508, !tbaa !302
  %43 = zext i16 %42 to i64, !dbg !2507
  br label %53, !dbg !2509

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2510
  %46 = bitcast i8* %45 to i32*, !dbg !2511
  %47 = load i32, i32* %46, align 1, !dbg !2511, !tbaa !255
  %48 = zext i32 %47 to i64, !dbg !2510
  br label %53, !dbg !2512

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2513
  %51 = bitcast i8* %50 to i64*, !dbg !2514
  %52 = load i64, i64* %51, align 1, !dbg !2514, !tbaa !315
  br label %53, !dbg !2515

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !2516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  %55 = icmp ult i64 %28, %54, !dbg !2519
  %56 = select i1 %55, i64 %28, i64 %54, !dbg !2520
  %57 = tail call i32 @memcmp(i8* nonnull %0, i8* nonnull %1, i64 %56) #7, !dbg !2522
  %58 = icmp eq i32 %57, 0, !dbg !2524
  %59 = icmp ugt i64 %28, %54, !dbg !2526
  %60 = sext i1 %55 to i32, !dbg !2527
  %61 = select i1 %59, i32 1, i32 %60, !dbg !2528
  %62 = select i1 %58, i32 %61, i32 %57, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  ret i32 %62, !dbg !2530
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitlen(i8*, i64, i8*, i32, i32* nocapture) local_unnamed_addr #0 !dbg !2531 {
  %6 = icmp slt i32 %3, 1, !dbg !2563
  %7 = icmp slt i64 %1, 0, !dbg !2565
  %8 = or i1 %7, %6, !dbg !2566
  br i1 %8, label %135, label %9, !dbg !2566

; <label>:9:                                      ; preds = %5
  %10 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2569, !tbaa !181
  %11 = icmp eq %struct.uk_alloc* %10, null, !dbg !2573
  br i1 %11, label %12, label %14, !dbg !2574, !prof !251

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #7, !dbg !2575
  store i32 12, i32* %13, align 4, !dbg !2576, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  br label %135, !dbg !2580

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.uk_alloc* %10 to i8* (%struct.uk_alloc*, i64)**, !dbg !2584
  %16 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %15, align 8, !dbg !2584, !tbaa !181
  %17 = tail call i8* %16(%struct.uk_alloc* nonnull %10, i64 40) #7, !dbg !2585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  %18 = bitcast i8* %17 to i8**, !dbg !2587
  %19 = icmp eq i8* %17, null, !dbg !2588
  br i1 %19, label %135, label %20, !dbg !2580

; <label>:20:                                     ; preds = %14
  %21 = icmp eq i64 %1, 0, !dbg !2590
  br i1 %21, label %30, label %22, !dbg !2592

; <label>:22:                                     ; preds = %20
  %23 = add nsw i32 %3, -1, !dbg !2594
  %24 = sext i32 %23 to i64, !dbg !2595
  %25 = sub nsw i64 %1, %24, !dbg !2596
  %26 = icmp sgt i64 %25, 0, !dbg !2597
  br i1 %26, label %27, label %85, !dbg !2598

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i32 %3, 1
  %29 = sext i32 %3 to i64
  br label %31, !dbg !2598

; <label>:30:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !2599, !tbaa !255
  br label %135, !dbg !2601

; <label>:31:                                     ; preds = %27, %79
  %32 = phi i8** [ %18, %27 ], [ %59, %79 ]
  %33 = phi i8* [ %17, %27 ], [ %58, %79 ]
  %34 = phi i8* [ %17, %27 ], [ %57, %79 ]
  %35 = phi i64 [ 0, %27 ], [ %83, %79 ]
  %36 = phi i64 [ 0, %27 ], [ %81, %79 ]
  %37 = phi i32 [ 5, %27 ], [ %56, %79 ]
  %38 = phi i32 [ 0, %27 ], [ %80, %79 ]
  %39 = add nsw i32 %38, 2, !dbg !2602
  %40 = icmp slt i32 %37, %39, !dbg !2603
  br i1 %40, label %41, label %55, !dbg !2604

; <label>:41:                                     ; preds = %31
  %42 = shl nsw i32 %37, 1, !dbg !2605
  %43 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2608, !tbaa !181
  %44 = icmp eq %struct.uk_alloc* %43, null, !dbg !2612
  br i1 %44, label %45, label %47, !dbg !2613, !prof !251

; <label>:45:                                     ; preds = %41
  %46 = tail call i32* @__errno() #7, !dbg !2614
  store i32 12, i32* %46, align 4, !dbg !2615, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  br label %98

; <label>:47:                                     ; preds = %41
  %48 = sext i32 %42 to i64, !dbg !2618
  %49 = shl nsw i64 %48, 3, !dbg !2619
  %50 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %43, i64 0, i32 2, !dbg !2626
  %51 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %50, align 8, !dbg !2626, !tbaa !181
  %52 = tail call i8* %51(%struct.uk_alloc* nonnull %43, i8* %33, i64 %49) #7, !dbg !2627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  %53 = icmp eq i8* %52, null, !dbg !2629
  %54 = bitcast i8* %52 to i8**, !dbg !2631
  br i1 %53, label %98, label %55

; <label>:55:                                     ; preds = %47, %31
  %56 = phi i32 [ %42, %47 ], [ %37, %31 ], !dbg !2632
  %57 = phi i8* [ %52, %47 ], [ %34, %31 ], !dbg !2633
  %58 = phi i8* [ %52, %47 ], [ %33, %31 ], !dbg !2633
  %59 = phi i8** [ %54, %47 ], [ %32, %31 ], !dbg !2633
  %60 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !2634
  br i1 %28, label %61, label %65, !dbg !2636

; <label>:61:                                     ; preds = %55
  %62 = load i8, i8* %60, align 1, !dbg !2637, !tbaa !295
  %63 = load i8, i8* %2, align 1, !dbg !2638, !tbaa !295
  %64 = icmp eq i8 %62, %63, !dbg !2639
  br i1 %64, label %68, label %65, !dbg !2640

; <label>:65:                                     ; preds = %55, %61
  %66 = tail call i32 @memcmp(i8* %60, i8* %2, i64 %29) #7, !dbg !2641
  %67 = icmp eq i32 %66, 0, !dbg !2642
  br i1 %67, label %68, label %79, !dbg !2643

; <label>:68:                                     ; preds = %65, %61
  %69 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !2644
  %70 = sub nsw i64 %35, %36, !dbg !2646
  %71 = tail call i8* @sdsnewlen(i8* %69, i64 %70) #8, !dbg !2647
  %72 = sext i32 %38 to i64, !dbg !2648
  %73 = getelementptr inbounds i8*, i8** %59, i64 %72, !dbg !2648
  store i8* %71, i8** %73, align 8, !dbg !2649, !tbaa !181
  %74 = icmp eq i8* %71, null, !dbg !2650
  br i1 %74, label %98, label %75, !dbg !2652

; <label>:75:                                     ; preds = %68
  %76 = add nsw i32 %38, 1, !dbg !2653
  %77 = add nsw i64 %35, %29, !dbg !2654
  %78 = add nsw i64 %77, -1, !dbg !2655
  br label %79, !dbg !2656

; <label>:79:                                     ; preds = %65, %75
  %80 = phi i32 [ %76, %75 ], [ %38, %65 ], !dbg !2632
  %81 = phi i64 [ %77, %75 ], [ %36, %65 ], !dbg !2632
  %82 = phi i64 [ %78, %75 ], [ %35, %65 ], !dbg !2657
  %83 = add nsw i64 %82, 1, !dbg !2658
  %84 = icmp slt i64 %83, %25, !dbg !2597
  br i1 %84, label %31, label %85, !dbg !2598, !llvm.loop !2659

; <label>:85:                                     ; preds = %79, %22
  %86 = phi i32 [ 0, %22 ], [ %80, %79 ], !dbg !2661
  %87 = phi i64 [ 0, %22 ], [ %81, %79 ], !dbg !2661
  %88 = phi i8* [ %17, %22 ], [ %57, %79 ], !dbg !2633
  %89 = phi i8** [ %18, %22 ], [ %59, %79 ], !dbg !2633
  %90 = getelementptr inbounds i8, i8* %0, i64 %87, !dbg !2662
  %91 = sub nsw i64 %1, %87, !dbg !2663
  %92 = tail call i8* @sdsnewlen(i8* %90, i64 %91) #8, !dbg !2664
  %93 = sext i32 %86 to i64, !dbg !2665
  %94 = getelementptr inbounds i8*, i8** %89, i64 %93, !dbg !2665
  store i8* %92, i8** %94, align 8, !dbg !2666, !tbaa !181
  %95 = icmp eq i8* %92, null, !dbg !2667
  br i1 %95, label %98, label %96, !dbg !2669

; <label>:96:                                     ; preds = %85
  %97 = add nsw i32 %86, 1, !dbg !2670
  store i32 %97, i32* %4, align 4, !dbg !2671, !tbaa !255
  br label %135, !dbg !2672

; <label>:98:                                     ; preds = %47, %68, %45, %85
  %99 = phi i32 [ %86, %85 ], [ %38, %45 ], [ %38, %68 ], [ %38, %47 ]
  %100 = phi i8* [ %88, %85 ], [ %34, %45 ], [ %34, %47 ], [ %57, %68 ], !dbg !2633
  %101 = phi i8** [ %89, %85 ], [ %32, %45 ], [ %32, %47 ], [ %59, %68 ], !dbg !2633
  %102 = icmp sgt i32 %99, 0, !dbg !2674
  br i1 %102, label %103, label %128, !dbg !2677

; <label>:103:                                    ; preds = %98
  %104 = sext i32 %99 to i64, !dbg !2678
  br label %105, !dbg !2678

; <label>:105:                                    ; preds = %103, %125
  %106 = phi i64 [ 0, %103 ], [ %126, %125 ]
  %107 = getelementptr inbounds i8*, i8** %101, i64 %106, !dbg !2678
  %108 = load i8*, i8** %107, align 8, !dbg !2678, !tbaa !181
  %109 = icmp eq i8* %108, null, !dbg !2681
  br i1 %109, label %125, label %110, !dbg !2682

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !2683
  %112 = load i8, i8* %111, align 1, !dbg !2683, !tbaa !295
  %113 = and i8 %112, 7, !dbg !2686
  %114 = xor i8 %113, 4, !dbg !2686
  %115 = zext i8 %114 to i64, !dbg !2686
  %116 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %115, !dbg !2686
  %117 = load i64, i64* %116, align 8, !dbg !2686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  %118 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2688, !tbaa !181
  %119 = icmp eq %struct.uk_alloc* %118, null, !dbg !2694
  br i1 %119, label %120, label %121, !dbg !2695, !prof !251

; <label>:120:                                    ; preds = %110
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2696
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2696
  unreachable, !dbg !2696

; <label>:121:                                    ; preds = %110
  %122 = getelementptr inbounds i8, i8* %108, i64 %117, !dbg !2697
  %123 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %118, i64 0, i32 5, !dbg !2701
  %124 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %123, align 8, !dbg !2701, !tbaa !181
  tail call void %124(%struct.uk_alloc* nonnull %118, i8* nonnull %122) #7, !dbg !2702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  br label %125, !dbg !2706

; <label>:125:                                    ; preds = %105, %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  %126 = add nuw nsw i64 %106, 1, !dbg !2707
  %127 = icmp slt i64 %126, %104, !dbg !2674
  br i1 %127, label %105, label %128, !dbg !2677, !llvm.loop !2708

; <label>:128:                                    ; preds = %125, %98
  %129 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2712, !tbaa !181
  %130 = icmp eq %struct.uk_alloc* %129, null, !dbg !2719
  br i1 %130, label %131, label %132, !dbg !2720, !prof !251

; <label>:131:                                    ; preds = %128
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2721
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2721
  unreachable, !dbg !2721

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %129, i64 0, i32 5, !dbg !2722
  %134 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %133, align 8, !dbg !2722, !tbaa !181
  tail call void %134(%struct.uk_alloc* nonnull %129, i8* %100) #7, !dbg !2723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  store i32 0, i32* %4, align 4, !dbg !2727, !tbaa !255
  br label %135

; <label>:135:                                    ; preds = %12, %14, %5, %132, %96, %30
  %136 = phi i8** [ %18, %30 ], [ null, %132 ], [ %89, %96 ], [ null, %5 ], [ null, %14 ], [ null, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  ret i8** %136, !dbg !2728
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfreesplitres(i8**, i32) local_unnamed_addr #0 !dbg !2729 {
  %3 = icmp eq i8** %0, null, !dbg !2737
  br i1 %3, label %39, label %4, !dbg !2739

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32 %1, 0, !dbg !2740
  br i1 %5, label %31, label %6, !dbg !2740

; <label>:6:                                      ; preds = %4
  %7 = sext i32 %1 to i64, !dbg !2741
  br label %8, !dbg !2741

; <label>:8:                                      ; preds = %6, %29
  %9 = phi i64 [ %7, %6 ], [ %10, %29 ]
  %10 = add nsw i64 %9, -1, !dbg !2741
  %11 = getelementptr inbounds i8*, i8** %0, i64 %10, !dbg !2742
  %12 = load i8*, i8** %11, align 8, !dbg !2742, !tbaa !181
  %13 = icmp eq i8* %12, null, !dbg !2745
  br i1 %13, label %29, label %14, !dbg !2746

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !2747
  %16 = load i8, i8* %15, align 1, !dbg !2747, !tbaa !295
  %17 = and i8 %16, 7, !dbg !2750
  %18 = xor i8 %17, 4, !dbg !2750
  %19 = zext i8 %18 to i64, !dbg !2750
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %19, !dbg !2750
  %21 = load i64, i64* %20, align 8, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  %22 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2752, !tbaa !181
  %23 = icmp eq %struct.uk_alloc* %22, null, !dbg !2758
  br i1 %23, label %24, label %25, !dbg !2759, !prof !251

; <label>:24:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2760
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2760
  unreachable, !dbg !2760

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds i8, i8* %12, i64 %21, !dbg !2761
  %27 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %22, i64 0, i32 5, !dbg !2765
  %28 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %27, align 8, !dbg !2765, !tbaa !181
  tail call void %28(%struct.uk_alloc* nonnull %22, i8* nonnull %26) #7, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2769
  br label %29, !dbg !2770

; <label>:29:                                     ; preds = %8, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  %30 = icmp eq i64 %10, 0
  br i1 %30, label %31, label %8, !dbg !2740, !llvm.loop !2771

; <label>:31:                                     ; preds = %29, %4
  %32 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2773, !tbaa !181
  %33 = icmp eq %struct.uk_alloc* %32, null, !dbg !2779
  br i1 %33, label %34, label %35, !dbg !2780, !prof !251

; <label>:34:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !2781
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2781
  unreachable, !dbg !2781

; <label>:35:                                     ; preds = %31
  %36 = bitcast i8** %0 to i8*, !dbg !2782
  %37 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %32, i64 0, i32 5, !dbg !2786
  %38 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %37, align 8, !dbg !2786, !tbaa !181
  tail call void %38(%struct.uk_alloc* nonnull %32, i8* %36) #7, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  br label %39, !dbg !2791

; <label>:39:                                     ; preds = %2, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2791
  ret void, !dbg !2791
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatrepr(i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2792 {
  %4 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #8, !dbg !2800
  %5 = icmp eq i64 %2, 0, !dbg !2801
  br i1 %5, label %44, label %6, !dbg !2801

; <label>:6:                                      ; preds = %3, %40
  %7 = phi i64 [ %10, %40 ], [ %2, %3 ]
  %8 = phi i8* [ %42, %40 ], [ %1, %3 ]
  %9 = phi i8* [ %41, %40 ], [ %4, %3 ]
  %10 = add i64 %7, -1, !dbg !2802
  %11 = load i8, i8* %8, align 1, !dbg !2803, !tbaa !295
  %12 = sext i8 %11 to i32, !dbg !2803
  switch i32 %12, label %25 [
    i32 92, label %13
    i32 34, label %13
    i32 10, label %15
    i32 13, label %17
    i32 9, label %19
    i32 7, label %21
    i32 8, label %23
  ], !dbg !2805

; <label>:13:                                     ; preds = %6, %6
  %14 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %12) #8, !dbg !2806
  br label %40, !dbg !2808

; <label>:15:                                     ; preds = %6
  %16 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #8, !dbg !2809
  br label %40, !dbg !2810

; <label>:17:                                     ; preds = %6
  %18 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !2811
  br label %40, !dbg !2812

; <label>:19:                                     ; preds = %6
  %20 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2) #8, !dbg !2813
  br label %40, !dbg !2814

; <label>:21:                                     ; preds = %6
  %22 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2) #8, !dbg !2815
  br label %40, !dbg !2816

; <label>:23:                                     ; preds = %6
  %24 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 2) #8, !dbg !2817
  br label %40, !dbg !2818

; <label>:25:                                     ; preds = %6
  %26 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2819
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2819
  %28 = load i8, i8* %8, align 1, !dbg !2819, !tbaa !295
  %29 = sext i8 %28 to i64, !dbg !2819
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !2819
  %31 = load i8, i8* %30, align 1, !dbg !2819, !tbaa !295
  %32 = and i8 %31, -105, !dbg !2819
  %33 = icmp eq i8 %32, 0, !dbg !2819
  br i1 %33, label %37, label %34, !dbg !2821

; <label>:34:                                     ; preds = %25
  %35 = sext i8 %28 to i32, !dbg !2819
  %36 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %35) #8, !dbg !2822
  br label %40, !dbg !2823

; <label>:37:                                     ; preds = %25
  %38 = zext i8 %28 to i32, !dbg !2824
  %39 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %38) #8, !dbg !2825
  br label %40

; <label>:40:                                     ; preds = %34, %37, %23, %21, %19, %17, %15, %13
  %41 = phi i8* [ %36, %34 ], [ %39, %37 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], !dbg !2826
  %42 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !2827
  %43 = icmp eq i64 %10, 0, !dbg !2801
  br i1 %43, label %44, label %6, !dbg !2801, !llvm.loop !2828

; <label>:44:                                     ; preds = %40, %3
  %45 = phi i8* [ %4, %3 ], [ %41, %40 ], !dbg !2830
  %46 = tail call i8* @sdscatlen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #8, !dbg !2831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  ret i8* %46, !dbg !2832
}

; Function Attrs: noredzone nounwind
define dso_local i32 @is_hex_digit(i8 signext) local_unnamed_addr #0 !dbg !2833 {
  %2 = add i8 %0, -48, !dbg !2837
  %3 = icmp ult i8 %2, 10, !dbg !2837
  %4 = and i8 %0, -33, !dbg !2837
  %5 = add i8 %4, -65, !dbg !2837
  %6 = icmp ult i8 %5, 6, !dbg !2837
  %7 = or i1 %6, %3, !dbg !2837
  %8 = zext i1 %7 to i32, !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  ret i32 %8, !dbg !2838
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hex_digit_to_int(i8 signext) local_unnamed_addr #0 !dbg !2839 {
  %2 = sext i8 %0 to i32, !dbg !2843
  switch i32 %2, label %18 [
    i32 70, label %17
    i32 49, label %3
    i32 50, label %4
    i32 51, label %5
    i32 52, label %6
    i32 53, label %7
    i32 54, label %8
    i32 55, label %9
    i32 56, label %10
    i32 57, label %11
    i32 97, label %12
    i32 65, label %12
    i32 98, label %13
    i32 66, label %13
    i32 99, label %14
    i32 67, label %14
    i32 100, label %15
    i32 68, label %15
    i32 101, label %16
    i32 69, label %16
    i32 102, label %17
  ], !dbg !2844

; <label>:3:                                      ; preds = %1
  br label %18, !dbg !2845

; <label>:4:                                      ; preds = %1
  br label %18, !dbg !2847

; <label>:5:                                      ; preds = %1
  br label %18, !dbg !2848

; <label>:6:                                      ; preds = %1
  br label %18, !dbg !2849

; <label>:7:                                      ; preds = %1
  br label %18, !dbg !2850

; <label>:8:                                      ; preds = %1
  br label %18, !dbg !2851

; <label>:9:                                      ; preds = %1
  br label %18, !dbg !2852

; <label>:10:                                     ; preds = %1
  br label %18, !dbg !2853

; <label>:11:                                     ; preds = %1
  br label %18, !dbg !2854

; <label>:12:                                     ; preds = %1, %1
  br label %18, !dbg !2855

; <label>:13:                                     ; preds = %1, %1
  br label %18, !dbg !2856

; <label>:14:                                     ; preds = %1, %1
  br label %18, !dbg !2857

; <label>:15:                                     ; preds = %1, %1
  br label %18, !dbg !2858

; <label>:16:                                     ; preds = %1, %1
  br label %18, !dbg !2859

; <label>:17:                                     ; preds = %1, %1
  br label %18, !dbg !2860

; <label>:18:                                     ; preds = %1, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %19 = phi i32 [ 15, %17 ], [ 14, %16 ], [ 13, %15 ], [ 12, %14 ], [ 11, %13 ], [ 10, %12 ], [ 9, %11 ], [ 8, %10 ], [ 7, %9 ], [ 6, %8 ], [ 5, %7 ], [ 4, %6 ], [ 3, %5 ], [ 2, %4 ], [ 1, %3 ], [ 0, %1 ], !dbg !2861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  ret i32 %19, !dbg !2862
}

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitargs(i8*, i32* nocapture) local_unnamed_addr #0 !dbg !2863 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4, !dbg !2893, !tbaa !255
  %5 = load i8, i8* %0, align 1, !dbg !2894, !tbaa !295
  %6 = icmp eq i8 %5, 0, !dbg !2894
  br i1 %6, label %187, label %7, !dbg !2895

; <label>:7:                                      ; preds = %2, %172
  %8 = phi i8** [ %174, %172 ], [ null, %2 ]
  %9 = phi i8* [ %173, %172 ], [ null, %2 ]
  %10 = phi i8* [ %159, %172 ], [ %0, %2 ]
  br label %11, !dbg !2896

; <label>:11:                                     ; preds = %7, %21
  %12 = phi i8* [ %22, %21 ], [ %10, %7 ]
  %13 = call i8* @__locale_ctype_ptr() #7, !dbg !2896
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2896
  %15 = load i8, i8* %12, align 1, !dbg !2896, !tbaa !295
  %16 = sext i8 %15 to i64, !dbg !2896
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !2896
  %18 = load i8, i8* %17, align 1, !dbg !2896, !tbaa !295
  %19 = and i8 %18, 8, !dbg !2896
  %20 = icmp eq i8 %19, 0, !dbg !2895
  br i1 %20, label %25, label %21, !dbg !2897

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2898
  %23 = load i8, i8* %22, align 1, !dbg !2894, !tbaa !295
  %24 = icmp eq i8 %23, 0, !dbg !2894
  br i1 %24, label %187, label %11, !dbg !2895, !llvm.loop !2899

; <label>:25:                                     ; preds = %11
  %26 = icmp eq i8 %15, 0, !dbg !2900
  br i1 %26, label %187, label %27, !dbg !2901

; <label>:27:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2915
  %28 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2918, !tbaa !181
  %29 = icmp eq %struct.uk_alloc* %28, null, !dbg !2922
  br i1 %29, label %30, label %32, !dbg !2923, !prof !251

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #7, !dbg !2924
  store i32 12, i32* %31, align 4, !dbg !2925, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  br label %41, !dbg !2929

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.uk_alloc* %28 to i8* (%struct.uk_alloc*, i64)**, !dbg !2933
  %34 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %33, align 8, !dbg !2933, !tbaa !181
  %35 = call i8* %34(%struct.uk_alloc* nonnull %28, i64 4) #7, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  %36 = icmp eq i8* %35, null, !dbg !2936
  br i1 %36, label %41, label %37, !dbg !2929

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2937
  %39 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2939
  store i8 0, i8* %35, align 1, !dbg !2942, !tbaa !295
  %40 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2943
  store i8 0, i8* %40, align 1, !dbg !2944, !tbaa !295
  store i8 1, i8* %39, align 1, !dbg !2945, !tbaa !295
  store i8 0, i8* %38, align 1, !dbg !2946, !tbaa !295
  br label %41, !dbg !2947

; <label>:41:                                     ; preds = %30, %32, %37
  %42 = phi i8* [ %38, %37 ], [ null, %32 ], [ null, %30 ], !dbg !2948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  br label %43, !dbg !2951

; <label>:43:                                     ; preds = %146, %41
  %44 = phi i32 [ 0, %41 ], [ %150, %146 ]
  %45 = phi i32 [ 0, %41 ], [ %149, %146 ]
  %46 = phi i8* [ %42, %41 ], [ %148, %146 ]
  %47 = phi i8* [ %12, %41 ], [ %154, %146 ]
  %48 = icmp eq i32 %45, 0, !dbg !2952
  br i1 %48, label %116, label %49, !dbg !2953

; <label>:49:                                     ; preds = %43
  %50 = load i8, i8* %47, align 1, !dbg !2954, !tbaa !295
  %51 = icmp eq i8 %50, 92, !dbg !2955
  br i1 %51, label %52, label %99, !dbg !2956

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2957
  %54 = load i8, i8* %53, align 1, !dbg !2958, !tbaa !295
  %55 = icmp eq i8 %54, 120, !dbg !2959
  br i1 %55, label %56, label %83, !dbg !2960

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !2961
  %58 = load i8, i8* %57, align 1, !dbg !2962, !tbaa !295
  %59 = add i8 %58, -48, !dbg !2965
  %60 = icmp ugt i8 %59, 9, !dbg !2965
  %61 = and i8 %58, -33, !dbg !2965
  %62 = add i8 %61, -65, !dbg !2965
  %63 = icmp ugt i8 %62, 5, !dbg !2965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2966
  %64 = and i1 %60, %63, !dbg !2967
  br i1 %64, label %83, label %65, !dbg !2968

; <label>:65:                                     ; preds = %56
  %66 = getelementptr inbounds i8, i8* %47, i64 3, !dbg !2969
  %67 = load i8, i8* %66, align 1, !dbg !2970, !tbaa !295
  %68 = add i8 %67, -48, !dbg !2973
  %69 = icmp ugt i8 %68, 9, !dbg !2973
  %70 = and i8 %67, -33, !dbg !2973
  %71 = add i8 %70, -65, !dbg !2973
  %72 = icmp ugt i8 %71, 5, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2974
  %73 = and i1 %69, %72, !dbg !2975
  br i1 %73, label %83, label %74, !dbg !2976

; <label>:74:                                     ; preds = %65
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #5, !dbg !2978
  %75 = load i8, i8* %57, align 1, !dbg !2979, !tbaa !295
  %76 = call i32 @hex_digit_to_int(i8 signext %75) #8, !dbg !2980
  %77 = shl i32 %76, 4, !dbg !2981
  %78 = load i8, i8* %66, align 1, !dbg !2982, !tbaa !295
  %79 = call i32 @hex_digit_to_int(i8 signext %78) #8, !dbg !2983
  %80 = add nsw i32 %79, %77, !dbg !2984
  %81 = trunc i32 %80 to i8, !dbg !2985
  store i8 %81, i8* %3, align 1, !dbg !2986, !tbaa !295
  %82 = call i8* @sdscatlen(i8* %46, i8* nonnull %3, i64 1) #8, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #5, !dbg !2988
  br label %146, !dbg !2989

; <label>:83:                                     ; preds = %65, %56, %52
  %84 = load i8, i8* %47, align 1, !dbg !2990, !tbaa !295
  %85 = icmp eq i8 %84, 92, !dbg !2991
  br i1 %85, label %86, label %99, !dbg !2992

; <label>:86:                                     ; preds = %83
  %87 = load i8, i8* %53, align 1, !dbg !2993, !tbaa !295
  %88 = icmp eq i8 %87, 0, !dbg !2993
  br i1 %88, label %114, label %89, !dbg !2994

; <label>:89:                                     ; preds = %86
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5, !dbg !2996
  %90 = sext i8 %87 to i32, !dbg !2997
  switch i32 %90, label %96 [
    i32 110, label %91
    i32 114, label %92
    i32 116, label %93
    i32 98, label %94
    i32 97, label %95
  ], !dbg !2998

; <label>:91:                                     ; preds = %89
  store i8 10, i8* %4, align 1, !dbg !2999, !tbaa !295
  br label %97, !dbg !3001

; <label>:92:                                     ; preds = %89
  store i8 13, i8* %4, align 1, !dbg !3002, !tbaa !295
  br label %97, !dbg !3003

; <label>:93:                                     ; preds = %89
  store i8 9, i8* %4, align 1, !dbg !3004, !tbaa !295
  br label %97, !dbg !3005

; <label>:94:                                     ; preds = %89
  store i8 8, i8* %4, align 1, !dbg !3006, !tbaa !295
  br label %97, !dbg !3007

; <label>:95:                                     ; preds = %89
  store i8 7, i8* %4, align 1, !dbg !3008, !tbaa !295
  br label %97, !dbg !3009

; <label>:96:                                     ; preds = %89
  store i8 %87, i8* %4, align 1, !dbg !3010, !tbaa !295
  br label %97, !dbg !3011

; <label>:97:                                     ; preds = %96, %95, %94, %93, %92, %91
  %98 = call i8* @sdscatlen(i8* %46, i8* nonnull %4, i64 1) #8, !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5, !dbg !3013
  br label %146, !dbg !3014

; <label>:99:                                     ; preds = %49, %83
  %100 = phi i8 [ %84, %83 ], [ %50, %49 ]
  switch i8 %100, label %114 [
    i8 34, label %101
    i8 0, label %181
  ], !dbg !3015

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3016
  %103 = load i8, i8* %102, align 1, !dbg !3020, !tbaa !295
  %104 = icmp eq i8 %103, 0, !dbg !3020
  br i1 %104, label %155, label %105, !dbg !3021

; <label>:105:                                    ; preds = %101
  %106 = call i8* @__locale_ctype_ptr() #7, !dbg !3022
  %107 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !3022
  %108 = load i8, i8* %102, align 1, !dbg !3022, !tbaa !295
  %109 = sext i8 %108 to i64, !dbg !3022
  %110 = getelementptr inbounds i8, i8* %107, i64 %109, !dbg !3022
  %111 = load i8, i8* %110, align 1, !dbg !3022, !tbaa !295
  %112 = and i8 %111, 8, !dbg !3022
  %113 = icmp eq i8 %112, 0, !dbg !3022
  br i1 %113, label %181, label %155, !dbg !3023

; <label>:114:                                    ; preds = %86, %99
  %115 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #8, !dbg !3024
  br label %146

; <label>:116:                                    ; preds = %43
  %117 = icmp eq i32 %44, 0, !dbg !3027
  %118 = load i8, i8* %47, align 1, !dbg !3029, !tbaa !295
  br i1 %117, label %141, label %119, !dbg !3031

; <label>:119:                                    ; preds = %116
  switch i8 %118, label %139 [
    i8 92, label %120
    i8 39, label %126
    i8 0, label %181
  ], !dbg !3032

; <label>:120:                                    ; preds = %119
  %121 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3035
  %122 = load i8, i8* %121, align 1, !dbg !3036, !tbaa !295
  %123 = icmp eq i8 %122, 39, !dbg !3037
  br i1 %123, label %124, label %139, !dbg !3038

; <label>:124:                                    ; preds = %120
  %125 = call i8* @sdscatlen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1) #8, !dbg !3039
  br label %146, !dbg !3041

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3042
  %128 = load i8, i8* %127, align 1, !dbg !3046, !tbaa !295
  %129 = icmp eq i8 %128, 0, !dbg !3046
  br i1 %129, label %155, label %130, !dbg !3047

; <label>:130:                                    ; preds = %126
  %131 = call i8* @__locale_ctype_ptr() #7, !dbg !3048
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !3048
  %133 = load i8, i8* %127, align 1, !dbg !3048, !tbaa !295
  %134 = sext i8 %133 to i64, !dbg !3048
  %135 = getelementptr inbounds i8, i8* %132, i64 %134, !dbg !3048
  %136 = load i8, i8* %135, align 1, !dbg !3048, !tbaa !295
  %137 = and i8 %136, 8, !dbg !3048
  %138 = icmp eq i8 %137, 0, !dbg !3048
  br i1 %138, label %181, label %155, !dbg !3049

; <label>:139:                                    ; preds = %119, %120
  %140 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #8, !dbg !3050
  br label %146

; <label>:141:                                    ; preds = %116
  %142 = sext i8 %118 to i32, !dbg !3029
  switch i32 %142, label %144 [
    i32 32, label %155
    i32 10, label %155
    i32 13, label %155
    i32 9, label %155
    i32 0, label %155
    i32 34, label %146
    i32 39, label %143
  ], !dbg !3053

; <label>:143:                                    ; preds = %141
  br label %146, !dbg !3054

; <label>:144:                                    ; preds = %141
  %145 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #8, !dbg !3056
  br label %146, !dbg !3057

; <label>:146:                                    ; preds = %141, %139, %124, %144, %143, %74, %114, %97
  %147 = phi i8* [ %66, %74 ], [ %53, %97 ], [ %47, %114 ], [ %121, %124 ], [ %47, %139 ], [ %47, %144 ], [ %47, %143 ], [ %47, %141 ], !dbg !3058
  %148 = phi i8* [ %82, %74 ], [ %98, %97 ], [ %115, %114 ], [ %125, %124 ], [ %140, %139 ], [ %145, %144 ], [ %46, %143 ], [ %46, %141 ], !dbg !3059
  %149 = phi i32 [ %45, %74 ], [ %45, %97 ], [ %45, %114 ], [ 0, %124 ], [ 0, %139 ], [ 0, %144 ], [ 0, %143 ], [ 1, %141 ], !dbg !2893
  %150 = phi i32 [ %44, %74 ], [ %44, %97 ], [ %44, %114 ], [ %44, %124 ], [ %44, %139 ], [ 0, %144 ], [ 1, %143 ], [ 0, %141 ], !dbg !2893
  %151 = load i8, i8* %147, align 1, !dbg !3060, !tbaa !295
  %152 = icmp eq i8 %151, 0, !dbg !3060
  %153 = getelementptr inbounds i8, i8* %147, i64 1, !dbg !3062
  %154 = select i1 %152, i8* %147, i8* %153, !dbg !3063
  br label %43, !dbg !2951

; <label>:155:                                    ; preds = %141, %141, %141, %141, %141, %105, %101, %130, %126
  %156 = load i8, i8* %47, align 1, !dbg !3060, !tbaa !295
  %157 = icmp eq i8 %156, 0, !dbg !3060
  %158 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3062
  %159 = select i1 %157, i8* %47, i8* %158, !dbg !3063
  %160 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3066, !tbaa !181
  %161 = icmp eq %struct.uk_alloc* %160, null, !dbg !3070
  br i1 %161, label %162, label %164, !dbg !3071, !prof !251

; <label>:162:                                    ; preds = %155
  %163 = call i32* @__errno() #7, !dbg !3072
  store i32 12, i32* %163, align 4, !dbg !3073, !tbaa !255
  br label %172, !dbg !3074

; <label>:164:                                    ; preds = %155
  %165 = load i32, i32* %1, align 4, !dbg !3075, !tbaa !255
  %166 = add nsw i32 %165, 1, !dbg !3076
  %167 = sext i32 %166 to i64, !dbg !3077
  %168 = shl nsw i64 %167, 3, !dbg !3078
  %169 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %160, i64 0, i32 2, !dbg !3085
  %170 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %169, align 8, !dbg !3085, !tbaa !181
  %171 = call i8* %170(%struct.uk_alloc* nonnull %160, i8* %9, i64 %168) #7, !dbg !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3087
  br label %172, !dbg !3088

; <label>:172:                                    ; preds = %164, %162
  %173 = phi i8* [ null, %162 ], [ %171, %164 ], !dbg !3089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3091
  %174 = bitcast i8* %173 to i8**, !dbg !3092
  %175 = load i32, i32* %1, align 4, !dbg !3093, !tbaa !255
  %176 = sext i32 %175 to i64, !dbg !3094
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176, !dbg !3094
  store i8* %46, i8** %177, align 8, !dbg !3095, !tbaa !181
  %178 = add nsw i32 %175, 1, !dbg !3096
  store i32 %178, i32* %1, align 4, !dbg !2893, !tbaa !255
  %179 = load i8, i8* %159, align 1, !dbg !2894, !tbaa !295
  %180 = icmp eq i8 %179, 0, !dbg !2894
  br i1 %180, label %185, label %7, !dbg !2895

; <label>:181:                                    ; preds = %105, %130, %99, %119
  %182 = load i32, i32* %1, align 4, !dbg !3097, !tbaa !255
  %183 = add nsw i32 %182, -1, !dbg !3097
  store i32 %183, i32* %1, align 4, !dbg !3097, !tbaa !255
  %184 = icmp eq i32 %182, 0, !dbg !3098
  br i1 %184, label %228, label %202, !dbg !3098

; <label>:185:                                    ; preds = %172
  %186 = bitcast i8* %173 to i8**, !dbg !3092
  br label %187, !dbg !3099

; <label>:187:                                    ; preds = %185, %25, %21, %2
  %188 = phi i8** [ null, %2 ], [ %8, %21 ], [ %186, %185 ], [ %8, %25 ]
  %189 = icmp eq i8** %188, null, !dbg !3099
  br i1 %189, label %190, label %252, !dbg !3102

; <label>:190:                                    ; preds = %187
  %191 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3105, !tbaa !181
  %192 = icmp eq %struct.uk_alloc* %191, null, !dbg !3109
  br i1 %192, label %193, label %195, !dbg !3110, !prof !251

; <label>:193:                                    ; preds = %190
  %194 = call i32* @__errno() #7, !dbg !3111
  store i32 12, i32* %194, align 4, !dbg !3112, !tbaa !255
  br label %200, !dbg !3113

; <label>:195:                                    ; preds = %190
  %196 = bitcast %struct.uk_alloc* %191 to i8* (%struct.uk_alloc*, i64)**, !dbg !3117
  %197 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %196, align 8, !dbg !3117, !tbaa !181
  %198 = call i8* %197(%struct.uk_alloc* nonnull %191, i64 8) #7, !dbg !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3119
  %199 = bitcast i8* %198 to i8**, !dbg !3120
  br label %200, !dbg !3120

; <label>:200:                                    ; preds = %193, %195
  %201 = phi i8** [ null, %193 ], [ %199, %195 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3122
  br label %252, !dbg !3123

; <label>:202:                                    ; preds = %181, %224
  %203 = phi i32 [ %226, %224 ], [ %183, %181 ]
  %204 = sext i32 %203 to i64, !dbg !3124
  %205 = getelementptr inbounds i8*, i8** %8, i64 %204, !dbg !3124
  %206 = load i8*, i8** %205, align 8, !dbg !3124, !tbaa !181
  %207 = icmp eq i8* %206, null, !dbg !3127
  br i1 %207, label %224, label %208, !dbg !3128

; <label>:208:                                    ; preds = %202
  %209 = getelementptr inbounds i8, i8* %206, i64 -1, !dbg !3129
  %210 = load i8, i8* %209, align 1, !dbg !3129, !tbaa !295
  %211 = and i8 %210, 7, !dbg !3132
  %212 = xor i8 %211, 4, !dbg !3132
  %213 = zext i8 %212 to i64, !dbg !3132
  %214 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %213, !dbg !3132
  %215 = load i64, i64* %214, align 8, !dbg !3132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3133
  %216 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3134, !tbaa !181
  %217 = icmp eq %struct.uk_alloc* %216, null, !dbg !3140
  br i1 %217, label %218, label %219, !dbg !3141, !prof !251

; <label>:218:                                    ; preds = %208
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3142
  call void @ukplat_terminate(i32 3) #9, !dbg !3142
  unreachable, !dbg !3142

; <label>:219:                                    ; preds = %208
  %220 = getelementptr inbounds i8, i8* %206, i64 %215, !dbg !3143
  %221 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %216, i64 0, i32 5, !dbg !3147
  %222 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %221, align 8, !dbg !3147, !tbaa !181
  call void %222(%struct.uk_alloc* nonnull %216, i8* nonnull %220) #7, !dbg !3148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3151
  %223 = load i32, i32* %1, align 4, !dbg !3097, !tbaa !255
  br label %224, !dbg !3152

; <label>:224:                                    ; preds = %202, %219
  %225 = phi i32 [ %203, %202 ], [ %223, %219 ], !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  %226 = add nsw i32 %225, -1, !dbg !3097
  store i32 %226, i32* %1, align 4, !dbg !3097, !tbaa !255
  %227 = icmp eq i32 %225, 0, !dbg !3098
  br i1 %227, label %228, label %202, !dbg !3098, !llvm.loop !3153

; <label>:228:                                    ; preds = %224, %181
  %229 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3157, !tbaa !181
  %230 = icmp eq %struct.uk_alloc* %229, null, !dbg !3164
  br i1 %230, label %231, label %232, !dbg !3165, !prof !251

; <label>:231:                                    ; preds = %228
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3166
  call void @ukplat_terminate(i32 3) #9, !dbg !3166
  unreachable, !dbg !3166

; <label>:232:                                    ; preds = %228
  %233 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %229, i64 0, i32 5, !dbg !3167
  %234 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %233, align 8, !dbg !3167, !tbaa !181
  call void %234(%struct.uk_alloc* nonnull %229, i8* %9) #7, !dbg !3168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3171
  %235 = icmp eq i8* %46, null, !dbg !3172
  br i1 %235, label %251, label %236, !dbg !3174

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds i8, i8* %46, i64 -1, !dbg !3177
  %238 = load i8, i8* %237, align 1, !dbg !3177, !tbaa !295
  %239 = and i8 %238, 7, !dbg !3180
  %240 = xor i8 %239, 4, !dbg !3180
  %241 = zext i8 %240 to i64, !dbg !3180
  %242 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %241, !dbg !3180
  %243 = load i64, i64* %242, align 8, !dbg !3180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  %244 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3182, !tbaa !181
  %245 = icmp eq %struct.uk_alloc* %244, null, !dbg !3188
  br i1 %245, label %246, label %247, !dbg !3189, !prof !251

; <label>:246:                                    ; preds = %236
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3190
  call void @ukplat_terminate(i32 3) #9, !dbg !3190
  unreachable, !dbg !3190

; <label>:247:                                    ; preds = %236
  %248 = getelementptr inbounds i8, i8* %46, i64 %243, !dbg !3191
  %249 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %244, i64 0, i32 5, !dbg !3195
  %250 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %249, align 8, !dbg !3195, !tbaa !181
  call void %250(%struct.uk_alloc* nonnull %244, i8* nonnull %248) #7, !dbg !3196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3200
  br label %251, !dbg !3201

; <label>:251:                                    ; preds = %232, %247
  store i32 0, i32* %1, align 4, !dbg !3202, !tbaa !255
  br label %252, !dbg !3203

; <label>:252:                                    ; preds = %187, %200, %251
  %253 = phi i8** [ null, %251 ], [ %201, %200 ], [ %188, %187 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3204
  ret i8** %253, !dbg !3204
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsmapchars(i8* returned, i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !3205 {
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3222
  %6 = load i8, i8* %5, align 1, !dbg !3222, !tbaa !295
  %7 = trunc i8 %6 to i3, !dbg !3224
  switch i3 %7, label %8 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !3224

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  br label %54, !dbg !3228

; <label>:9:                                      ; preds = %4
  %10 = lshr i8 %6, 3, !dbg !3230
  %11 = zext i8 %10 to i64, !dbg !3230
  br label %30, !dbg !3231

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3232
  %14 = load i8, i8* %13, align 1, !dbg !3233, !tbaa !295
  %15 = zext i8 %14 to i64, !dbg !3232
  br label %30, !dbg !3234

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3235
  %18 = bitcast i8* %17 to i16*, !dbg !3236
  %19 = load i16, i16* %18, align 1, !dbg !3236, !tbaa !302
  %20 = zext i16 %19 to i64, !dbg !3235
  br label %30, !dbg !3237

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3238
  %23 = bitcast i8* %22 to i32*, !dbg !3239
  %24 = load i32, i32* %23, align 1, !dbg !3239, !tbaa !255
  %25 = zext i32 %24 to i64, !dbg !3238
  br label %30, !dbg !3240

; <label>:26:                                     ; preds = %4
  %27 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3241
  %28 = bitcast i8* %27 to i64*, !dbg !3242
  %29 = load i64, i64* %28, align 1, !dbg !3242, !tbaa !315
  br label %30, !dbg !3243

; <label>:30:                                     ; preds = %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], !dbg !3244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  %32 = icmp eq i64 %31, 0, !dbg !3245
  br i1 %32, label %54, label %33, !dbg !3228

; <label>:33:                                     ; preds = %30
  %34 = icmp eq i64 %3, 0
  br label %35, !dbg !3228

; <label>:35:                                     ; preds = %51, %33
  %36 = phi i64 [ 0, %33 ], [ %52, %51 ]
  br i1 %34, label %51, label %37, !dbg !3248

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds i8, i8* %0, i64 %36
  %39 = load i8, i8* %38, align 1, !tbaa !295
  br label %40, !dbg !3248

; <label>:40:                                     ; preds = %37, %48
  %41 = phi i64 [ 0, %37 ], [ %49, %48 ]
  %42 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !3251
  %43 = load i8, i8* %42, align 1, !dbg !3251, !tbaa !295
  %44 = icmp eq i8 %39, %43, !dbg !3255
  br i1 %44, label %45, label %48, !dbg !3256

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds i8, i8* %2, i64 %41, !dbg !3257
  %47 = load i8, i8* %46, align 1, !dbg !3257, !tbaa !295
  store i8 %47, i8* %38, align 1, !dbg !3259, !tbaa !295
  br label %51, !dbg !3260

; <label>:48:                                     ; preds = %40
  %49 = add nuw i64 %41, 1, !dbg !3261
  %50 = icmp ult i64 %49, %3, !dbg !3262
  br i1 %50, label %40, label %51, !dbg !3248, !llvm.loop !3263

; <label>:51:                                     ; preds = %48, %35, %45
  %52 = add nuw i64 %36, 1, !dbg !3265
  %53 = icmp eq i64 %52, %31, !dbg !3245
  br i1 %53, label %54, label %35, !dbg !3228, !llvm.loop !3266

; <label>:54:                                     ; preds = %51, %8, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  ret i8* %0, !dbg !3268
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoin(i8** nocapture readonly, i32, i8*) local_unnamed_addr #0 !dbg !3269 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3290
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3293, !tbaa !181
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !3297
  br i1 %5, label %6, label %8, !dbg !3298, !prof !251

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #7, !dbg !3299
  store i32 12, i32* %7, align 4, !dbg !3300, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  br label %17, !dbg !3304

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct.uk_alloc* %4 to i8* (%struct.uk_alloc*, i64)**, !dbg !3308
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !3308, !tbaa !181
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 4) #7, !dbg !3309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  %12 = icmp eq i8* %11, null, !dbg !3311
  br i1 %12, label %17, label %13, !dbg !3304

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !3312
  %15 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !3314
  store i8 0, i8* %11, align 1, !dbg !3317, !tbaa !295
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3318
  store i8 0, i8* %16, align 1, !dbg !3319, !tbaa !295
  store i8 1, i8* %15, align 1, !dbg !3320, !tbaa !295
  store i8 0, i8* %14, align 1, !dbg !3321, !tbaa !295
  br label %17, !dbg !3322

; <label>:17:                                     ; preds = %6, %8, %13
  %18 = phi i8* [ %14, %13 ], [ null, %8 ], [ null, %6 ], !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3325
  %19 = icmp sgt i32 %1, 0, !dbg !3328
  br i1 %19, label %20, label %39, !dbg !3331

; <label>:20:                                     ; preds = %17
  %21 = add nsw i32 %1, -1
  %22 = zext i32 %21 to i64, !dbg !3331
  %23 = zext i32 %1 to i64
  br label %24, !dbg !3331

; <label>:24:                                     ; preds = %35, %20
  %25 = phi i64 [ 0, %20 ], [ %37, %35 ]
  %26 = phi i8* [ %18, %20 ], [ %36, %35 ]
  %27 = getelementptr inbounds i8*, i8** %0, i64 %25, !dbg !3332
  %28 = load i8*, i8** %27, align 8, !dbg !3332, !tbaa !181
  %29 = tail call i64 @strlen(i8* %28) #7, !dbg !3337
  %30 = tail call i8* @sdscatlen(i8* %26, i8* %28, i64 %29) #7, !dbg !3338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3339
  %31 = icmp eq i64 %25, %22, !dbg !3340
  br i1 %31, label %35, label %32, !dbg !3342

; <label>:32:                                     ; preds = %24
  %33 = tail call i64 @strlen(i8* %2) #7, !dbg !3346
  %34 = tail call i8* @sdscatlen(i8* %30, i8* %2, i64 %33) #7, !dbg !3347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3348
  br label %35, !dbg !3349

; <label>:35:                                     ; preds = %24, %32
  %36 = phi i8* [ %34, %32 ], [ %30, %24 ], !dbg !3350
  %37 = add nuw nsw i64 %25, 1, !dbg !3351
  %38 = icmp eq i64 %37, %23, !dbg !3328
  br i1 %38, label %39, label %24, !dbg !3331, !llvm.loop !3352

; <label>:39:                                     ; preds = %35, %17
  %40 = phi i8* [ %18, %17 ], [ %36, %35 ], !dbg !3354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  ret i8* %40, !dbg !3355
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoinsds(i8** nocapture readonly, i32, i8*, i64) local_unnamed_addr #0 !dbg !3356 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3382, !tbaa !181
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !3386
  br i1 %6, label %7, label %9, !dbg !3387, !prof !251

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #7, !dbg !3388
  store i32 12, i32* %8, align 4, !dbg !3389, !tbaa !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3391
  br label %18, !dbg !3393

; <label>:9:                                      ; preds = %4
  %10 = bitcast %struct.uk_alloc* %5 to i8* (%struct.uk_alloc*, i64)**, !dbg !3397
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !3397, !tbaa !181
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 4) #7, !dbg !3398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3391
  %13 = icmp eq i8* %12, null, !dbg !3400
  br i1 %13, label %18, label %14, !dbg !3393

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !3401
  %16 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !3403
  store i8 0, i8* %12, align 1, !dbg !3406, !tbaa !295
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3407
  store i8 0, i8* %17, align 1, !dbg !3408, !tbaa !295
  store i8 1, i8* %16, align 1, !dbg !3409, !tbaa !295
  store i8 0, i8* %15, align 1, !dbg !3410, !tbaa !295
  br label %18, !dbg !3411

; <label>:18:                                     ; preds = %7, %9, %14
  %19 = phi i8* [ %15, %14 ], [ null, %9 ], [ null, %7 ], !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3414
  %20 = icmp sgt i32 %1, 0, !dbg !3417
  br i1 %20, label %21, label %64, !dbg !3420

; <label>:21:                                     ; preds = %18
  %22 = add nsw i32 %1, -1
  %23 = zext i32 %22 to i64, !dbg !3420
  %24 = zext i32 %1 to i64
  br label %25, !dbg !3420

; <label>:25:                                     ; preds = %60, %21
  %26 = phi i64 [ 0, %21 ], [ %62, %60 ]
  %27 = phi i8* [ %19, %21 ], [ %61, %60 ]
  %28 = getelementptr inbounds i8*, i8** %0, i64 %26, !dbg !3421
  %29 = load i8*, i8** %28, align 8, !dbg !3421, !tbaa !181
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3428
  %31 = load i8, i8* %30, align 1, !dbg !3428, !tbaa !295
  %32 = trunc i8 %31 to i3, !dbg !3430
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !3430

; <label>:33:                                     ; preds = %25
  %34 = lshr i8 %31, 3, !dbg !3431
  %35 = zext i8 %34 to i64, !dbg !3431
  br label %54, !dbg !3432

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3433
  %38 = load i8, i8* %37, align 1, !dbg !3434, !tbaa !295
  %39 = zext i8 %38 to i64, !dbg !3433
  br label %54, !dbg !3435

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3436
  %42 = bitcast i8* %41 to i16*, !dbg !3437
  %43 = load i16, i16* %42, align 1, !dbg !3437, !tbaa !302
  %44 = zext i16 %43 to i64, !dbg !3436
  br label %54, !dbg !3438

; <label>:45:                                     ; preds = %25
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3439
  %47 = bitcast i8* %46 to i32*, !dbg !3440
  %48 = load i32, i32* %47, align 1, !dbg !3440, !tbaa !255
  %49 = zext i32 %48 to i64, !dbg !3439
  br label %54, !dbg !3441

; <label>:50:                                     ; preds = %25
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3442
  %52 = bitcast i8* %51 to i64*, !dbg !3443
  %53 = load i64, i64* %52, align 1, !dbg !3443, !tbaa !315
  br label %54, !dbg !3444

; <label>:54:                                     ; preds = %25, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %25 ], !dbg !3445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3446
  %56 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %29, i64 %55) #7, !dbg !3447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3448
  %57 = icmp eq i64 %26, %23, !dbg !3449
  br i1 %57, label %60, label %58, !dbg !3451

; <label>:58:                                     ; preds = %54
  %59 = tail call i8* @sdscatlen(i8* %56, i8* %2, i64 %3) #8, !dbg !3452
  br label %60, !dbg !3453

; <label>:60:                                     ; preds = %54, %58
  %61 = phi i8* [ %59, %58 ], [ %56, %54 ], !dbg !3454
  %62 = add nuw nsw i64 %26, 1, !dbg !3455
  %63 = icmp eq i64 %62, %24, !dbg !3417
  br i1 %63, label %64, label %25, !dbg !3420, !llvm.loop !3456

; <label>:64:                                     ; preds = %60, %18
  %65 = phi i8* [ %19, %18 ], [ %61, %60 ], !dbg !3458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3459
  ret i8* %65, !dbg !3459
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_malloc(i64) local_unnamed_addr #0 !dbg !3460 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3466, !tbaa !181
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3470
  br i1 %3, label %4, label %6, !dbg !3471, !prof !251

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno() #7, !dbg !3472
  store i32 12, i32* %5, align 4, !dbg !3473, !tbaa !255
  br label %10, !dbg !3474

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.uk_alloc* %2 to i8* (%struct.uk_alloc*, i64)**, !dbg !3478
  %8 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %7, align 8, !dbg !3478, !tbaa !181
  %9 = tail call i8* %8(%struct.uk_alloc* nonnull %2, i64 %0) #7, !dbg !3479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3480
  br label %10, !dbg !3481

; <label>:10:                                     ; preds = %4, %6
  %11 = phi i8* [ null, %4 ], [ %9, %6 ], !dbg !3482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  ret i8* %11, !dbg !3485
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_realloc(i8*, i64) local_unnamed_addr #0 !dbg !3486 {
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3495, !tbaa !181
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !3500
  br i1 %4, label %5, label %7, !dbg !3501, !prof !251

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #7, !dbg !3502
  store i32 12, i32* %6, align 4, !dbg !3503, !tbaa !255
  br label %11, !dbg !3504

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 2, !dbg !3509
  %9 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %8, align 8, !dbg !3509, !tbaa !181
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i8* %0, i64 %1) #7, !dbg !3510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  br label %11, !dbg !3512

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !3513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3516
  ret i8* %12, !dbg !3516
}

; Function Attrs: noredzone nounwind
define dso_local void @sds_free(i8*) local_unnamed_addr #0 !dbg !3517 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3523, !tbaa !181
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3530
  br i1 %3, label %4, label %5, !dbg !3531, !prof !251

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3532
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3532
  unreachable, !dbg !3532

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %2, i64 0, i32 5, !dbg !3533
  %7 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %6, align 8, !dbg !3533, !tbaa !181
  tail call void %7(%struct.uk_alloc* nonnull %2, i8* %0) #7, !dbg !3534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3538
  ret void, !dbg !3538
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #6 !dbg !72 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !3539
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !3541
  call void @llvm.va_start(i8* nonnull %3), !dbg !3541
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.19, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !3542
  call void @llvm.va_end(i8* nonnull %3), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !3546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3546
  ret void, !dbg !3546
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
!145 = !DILocation(line: 63, column: 21, scope: !146, inlinedAt: !141)
!146 = distinct !DILexicalBlock(scope: !136, file: !3, line: 63, column: 9)
!147 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !141)
!148 = !DILocation(line: 65, column: 21, scope: !149, inlinedAt: !141)
!149 = distinct !DILexicalBlock(scope: !136, file: !3, line: 65, column: 9)
!150 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !141)
!151 = !DILocation(line: 68, column: 21, scope: !152, inlinedAt: !141)
!152 = distinct !DILexicalBlock(scope: !136, file: !3, line: 68, column: 9)
!153 = !DILocation(line: 69, column: 9, scope: !152, inlinedAt: !141)
!154 = !DILocation(line: 0, scope: !136, inlinedAt: !141)
!155 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !141)
!156 = !DILocation(line: 92, column: 10, scope: !107)
!157 = !DILocation(line: 95, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !107, file: !3, line: 95, column: 9)
!159 = !DILocation(line: 95, column: 39, scope: !158)
!160 = !DILocation(line: 95, column: 28, scope: !158)
!161 = !DILocalVariable(name: "type", arg: 1, scope: !162, file: !3, line: 44, type: !16)
!162 = distinct !DISubprogram(name: "sdsHdrSize", scope: !3, file: !3, line: 44, type: !163, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!29, !16}
!165 = !{!161}
!166 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !167)
!167 = distinct !DILocation(line: 96, column: 18, scope: !107)
!168 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !167)
!169 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !167)
!170 = !DILocation(line: 99, column: 25, scope: !107)
!171 = !DILocation(line: 99, column: 33, scope: !107)
!172 = !DILocalVariable(name: "size", arg: 1, scope: !173, file: !174, line: 52, type: !113)
!173 = distinct !DISubprogram(name: "s_malloc", scope: !174, file: !174, line: 52, type: !175, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !177)
!174 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !113}
!177 = !{!172}
!178 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !179)
!179 = distinct !DILocation(line: 99, column: 10, scope: !107)
!180 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !179)
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocalVariable(name: "a", arg: 1, scope: !186, file: !187, line: 157, type: !190)
!186 = distinct !DISubprogram(name: "uk_malloc", scope: !187, file: !187, line: 157, type: !188, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !243)
!187 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!188 = !DISubroutineType(types: !189)
!189 = !{!14, !190, !113}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !187, line: 77, size: 832, elements: !192)
!192 = !{!193, !196, !201, !206, !212, !214, !219, !220, !221, !226, !231, !236, !237, !238}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !191, file: !187, line: 79, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !187, line: 54, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !191, file: !187, line: 80, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !187, line: 56, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!14, !190, !113, !113}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !191, file: !187, line: 81, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !187, line: 62, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!14, !190, !14, !113}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !191, file: !187, line: 82, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !187, line: 58, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!29, !190, !211, !113, !113}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !191, file: !187, line: 83, baseType: !213, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !187, line: 60, baseType: !198)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !191, file: !187, line: 84, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !187, line: 64, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !190, !14}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !191, file: !187, line: 87, baseType: !215, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !191, file: !187, line: 88, baseType: !194, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !191, file: !187, line: 92, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !187, line: 66, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!14, !190, !23}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !191, file: !187, line: 93, baseType: !227, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !187, line: 68, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !190, !14, !23}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !191, file: !187, line: 99, baseType: !232, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !187, line: 70, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!29, !190, !14, !113}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !191, file: !187, line: 100, baseType: !113, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !187, line: 103, baseType: !190, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !191, file: !187, line: 104, baseType: !239, offset: 832)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, elements: !41)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !20, line: 20, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !22, line: 41, baseType: !242)
!242 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!243 = !{!185, !244}
!244 = !DILocalVariable(name: "size", arg: 2, scope: !186, file: !187, line: 157, type: !113)
!245 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !246)
!246 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !179)
!247 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !246)
!248 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !246)
!249 = distinct !DILexicalBlock(scope: !186, file: !187, line: 159, column: 6)
!250 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !246)
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !246)
!253 = distinct !DILexicalBlock(scope: !249, file: !187, line: 159, column: 20)
!254 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !246)
!255 = !{!256, !256, i64 0}
!256 = !{!"int", !183, i64 0}
!257 = !DILocation(line: 161, column: 3, scope: !253, inlinedAt: !246)
!258 = !DILocalVariable(name: "a", arg: 1, scope: !259, file: !187, line: 151, type: !190)
!259 = distinct !DISubprogram(name: "uk_do_malloc", scope: !187, file: !187, line: 151, type: !188, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !260)
!260 = !{!258, !261}
!261 = !DILocalVariable(name: "size", arg: 2, scope: !259, file: !187, line: 151, type: !113)
!262 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !263)
!263 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !246)
!264 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !263)
!265 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !263)
!266 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !263)
!267 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !263)
!268 = !DILocation(line: 163, column: 2, scope: !186, inlinedAt: !246)
!269 = !DILocation(line: 0, scope: !186, inlinedAt: !246)
!270 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !246)
!271 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !179)
!272 = !DILocation(line: 90, column: 11, scope: !107)
!273 = !DILocation(line: 100, column: 15, scope: !274)
!274 = distinct !DILexicalBlock(scope: !107, file: !3, line: 100, column: 9)
!275 = !DILocation(line: 100, column: 13, scope: !274)
!276 = !DILocation(line: 100, column: 9, scope: !107)
!277 = !DILocation(line: 102, column: 15, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 102, column: 14)
!279 = !DILocation(line: 102, column: 14, scope: !274)
!280 = !DILocation(line: 103, column: 9, scope: !278)
!281 = !DILocation(line: 104, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !107, file: !3, line: 104, column: 9)
!283 = !DILocation(line: 104, column: 9, scope: !107)
!284 = !DILocation(line: 105, column: 18, scope: !107)
!285 = !DILocation(line: 91, column: 9, scope: !107)
!286 = !DILocation(line: 106, column: 29, scope: !107)
!287 = !DILocation(line: 97, column: 20, scope: !107)
!288 = !DILocation(line: 107, column: 5, scope: !107)
!289 = !DILocation(line: 109, column: 19, scope: !290)
!290 = distinct !DILexicalBlock(scope: !126, file: !3, line: 108, column: 26)
!291 = !DILocation(line: 110, column: 13, scope: !290)
!292 = !DILocation(line: 113, column: 13, scope: !125)
!293 = !DILocation(line: 114, column: 23, scope: !125)
!294 = !DILocation(line: 114, column: 21, scope: !125)
!295 = !{!183, !183, i64 0}
!296 = !DILocation(line: 115, column: 17, scope: !125)
!297 = !DILocation(line: 115, column: 23, scope: !125)
!298 = !DILocation(line: 120, column: 13, scope: !128)
!299 = !DILocation(line: 121, column: 23, scope: !128)
!300 = !DILocation(line: 121, column: 17, scope: !128)
!301 = !DILocation(line: 121, column: 21, scope: !128)
!302 = !{!303, !303, i64 0}
!303 = !{!"short", !183, i64 0}
!304 = !DILocation(line: 122, column: 17, scope: !128)
!305 = !DILocation(line: 122, column: 23, scope: !128)
!306 = !DILocation(line: 127, column: 13, scope: !130)
!307 = !DILocation(line: 128, column: 23, scope: !130)
!308 = !DILocation(line: 128, column: 17, scope: !130)
!309 = !DILocation(line: 128, column: 21, scope: !130)
!310 = !DILocation(line: 129, column: 17, scope: !130)
!311 = !DILocation(line: 129, column: 23, scope: !130)
!312 = !DILocation(line: 134, column: 13, scope: !132)
!313 = !DILocation(line: 135, column: 17, scope: !132)
!314 = !DILocation(line: 135, column: 21, scope: !132)
!315 = !{!316, !316, i64 0}
!316 = !{!"long", !183, i64 0}
!317 = !DILocation(line: 136, column: 17, scope: !132)
!318 = !DILocation(line: 136, column: 23, scope: !132)
!319 = !DILocation(line: 0, scope: !290)
!320 = !DILocation(line: 141, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !107, file: !3, line: 141, column: 9)
!322 = !DILocation(line: 141, column: 20, scope: !321)
!323 = !DILocation(line: 141, column: 17, scope: !321)
!324 = !DILocation(line: 142, column: 9, scope: !321)
!325 = !DILocation(line: 143, column: 5, scope: !107)
!326 = !DILocation(line: 143, column: 16, scope: !107)
!327 = !DILocation(line: 144, column: 5, scope: !107)
!328 = !DILocation(line: 0, scope: !107)
!329 = !DILocation(line: 145, column: 1, scope: !107)
!330 = distinct !DISubprogram(name: "sdsempty", scope: !3, file: !3, line: 149, type: !331, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!110}
!333 = !{}
!334 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !335)
!335 = distinct !DILocation(line: 150, column: 12, scope: !330)
!336 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !337)
!337 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !335)
!338 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !337)
!339 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !335)
!340 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !341)
!341 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !335)
!342 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !341)
!343 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !344)
!344 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !335)
!345 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !344)
!346 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !347)
!347 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !344)
!348 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !347)
!349 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !347)
!350 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !347)
!351 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !347)
!352 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !347)
!353 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !347)
!354 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !344)
!355 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !335)
!356 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !335)
!357 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !358)
!358 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !347)
!359 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !358)
!360 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !358)
!361 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !358)
!362 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !358)
!363 = !DILocation(line: 104, column: 12, scope: !282, inlinedAt: !335)
!364 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !335)
!365 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !335)
!366 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !335)
!367 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !335)
!368 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !335)
!369 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !335)
!370 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !335)
!371 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !335)
!372 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !335)
!373 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !335)
!374 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !335)
!375 = !DILocation(line: 0, scope: !107, inlinedAt: !335)
!376 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !335)
!377 = !DILocation(line: 150, column: 5, scope: !330)
!378 = distinct !DISubprogram(name: "sdsnew", scope: !3, file: !3, line: 154, type: !379, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!110, !76}
!381 = !{!382, !383}
!382 = !DILocalVariable(name: "init", arg: 1, scope: !378, file: !3, line: 154, type: !76)
!383 = !DILocalVariable(name: "initlen", scope: !378, file: !3, line: 155, type: !113)
!384 = !DILocation(line: 154, column: 24, scope: !378)
!385 = !DILocation(line: 155, column: 28, scope: !378)
!386 = !DILocation(line: 155, column: 22, scope: !378)
!387 = !DILocation(line: 155, column: 43, scope: !378)
!388 = !DILocation(line: 155, column: 12, scope: !378)
!389 = !DILocation(line: 156, column: 12, scope: !378)
!390 = !DILocation(line: 156, column: 5, scope: !378)
!391 = distinct !DISubprogram(name: "sdsdup", scope: !3, file: !3, line: 160, type: !392, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !395)
!392 = !DISubroutineType(types: !393)
!393 = !{!110, !394}
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!395 = !{!396}
!396 = !DILocalVariable(name: "s", arg: 1, scope: !391, file: !3, line: 160, type: !394)
!397 = !DILocation(line: 160, column: 22, scope: !391)
!398 = !DILocalVariable(name: "s", arg: 1, scope: !399, file: !32, line: 87, type: !394)
!399 = distinct !DISubprogram(name: "sdslen", scope: !32, file: !32, line: 87, type: !400, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!113, !394}
!402 = !{!398, !403}
!403 = !DILocalVariable(name: "flags", scope: !399, file: !32, line: 88, type: !18)
!404 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !405)
!405 = distinct !DILocation(line: 161, column: 25, scope: !391)
!406 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !405)
!407 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !405)
!408 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !405)
!409 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !405)
!410 = distinct !DILexicalBlock(scope: !399, file: !32, line: 89, column: 33)
!411 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !405)
!412 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !405)
!413 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !405)
!414 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !405)
!415 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !405)
!416 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !405)
!417 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !405)
!418 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !405)
!419 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !405)
!420 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !405)
!421 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !405)
!422 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !405)
!423 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !405)
!424 = !DILocation(line: 0, scope: !410, inlinedAt: !405)
!425 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !405)
!426 = !DILocation(line: 161, column: 12, scope: !391)
!427 = !DILocation(line: 161, column: 5, scope: !391)
!428 = distinct !DISubprogram(name: "sdsfree", scope: !3, file: !3, line: 165, type: !429, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !110}
!431 = !{!432}
!432 = !DILocalVariable(name: "s", arg: 1, scope: !428, file: !3, line: 165, type: !110)
!433 = !DILocation(line: 165, column: 18, scope: !428)
!434 = !DILocation(line: 166, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !428, file: !3, line: 166, column: 9)
!436 = !DILocation(line: 166, column: 9, scope: !428)
!437 = !DILocation(line: 167, column: 32, scope: !428)
!438 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !439)
!439 = distinct !DILocation(line: 167, column: 21, scope: !428)
!440 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !439)
!441 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !439)
!442 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !448)
!443 = distinct !DISubprogram(name: "s_free", scope: !174, file: !174, line: 56, type: !444, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !14}
!446 = !{!447}
!447 = !DILocalVariable(name: "ptr", arg: 1, scope: !443, file: !174, line: 56, type: !14)
!448 = distinct !DILocation(line: 167, column: 5, scope: !428)
!449 = !DILocalVariable(name: "a", arg: 1, scope: !450, file: !187, line: 237, type: !190)
!450 = distinct !DISubprogram(name: "uk_free", scope: !187, file: !187, line: 237, type: !217, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !451)
!451 = !{!449, !452}
!452 = !DILocalVariable(name: "ptr", arg: 2, scope: !450, file: !187, line: 237, type: !14)
!453 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !454)
!454 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !448)
!455 = !DILocalVariable(name: "a", arg: 1, scope: !456, file: !187, line: 231, type: !190)
!456 = distinct !DISubprogram(name: "uk_do_free", scope: !187, file: !187, line: 231, type: !217, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !457)
!457 = !{!455, !458}
!458 = !DILocalVariable(name: "ptr", arg: 2, scope: !456, file: !187, line: 231, type: !14)
!459 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !460)
!460 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !454)
!461 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !460)
!462 = distinct !DILexicalBlock(scope: !463, file: !187, line: 233, column: 2)
!463 = distinct !DILexicalBlock(scope: !456, file: !187, line: 233, column: 2)
!464 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !460)
!465 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !460)
!466 = distinct !DILexicalBlock(scope: !462, file: !187, line: 233, column: 2)
!467 = !DILocation(line: 167, column: 20, scope: !428)
!468 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !460)
!469 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !454)
!470 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !448)
!471 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !460)
!472 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !460)
!473 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !460)
!474 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !454)
!475 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !448)
!476 = !DILocation(line: 168, column: 1, scope: !428)
!477 = distinct !DISubprogram(name: "sdsupdatelen", scope: !3, file: !3, line: 184, type: !429, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !478)
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "s", arg: 1, scope: !477, file: !3, line: 184, type: !110)
!480 = !DILocalVariable(name: "reallen", scope: !477, file: !3, line: 185, type: !113)
!481 = !DILocation(line: 184, column: 23, scope: !477)
!482 = !DILocation(line: 185, column: 22, scope: !477)
!483 = !DILocation(line: 185, column: 12, scope: !477)
!484 = !DILocalVariable(name: "s", arg: 1, scope: !485, file: !32, line: 130, type: !110)
!485 = distinct !DISubprogram(name: "sdssetlen", scope: !32, file: !32, line: 130, type: !486, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !110, !113}
!488 = !{!484, !489, !490, !491}
!489 = !DILocalVariable(name: "newlen", arg: 2, scope: !485, file: !32, line: 130, type: !113)
!490 = !DILocalVariable(name: "flags", scope: !485, file: !32, line: 131, type: !18)
!491 = !DILocalVariable(name: "fp", scope: !492, file: !32, line: 135, type: !17)
!492 = distinct !DILexicalBlock(scope: !493, file: !32, line: 134, column: 13)
!493 = distinct !DILexicalBlock(scope: !485, file: !32, line: 132, column: 33)
!494 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !495)
!495 = distinct !DILocation(line: 186, column: 5, scope: !477)
!496 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !495)
!497 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !495)
!498 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !495)
!499 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !495)
!500 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !495)
!501 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !495)
!502 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !495)
!503 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !495)
!504 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !495)
!505 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !495)
!506 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !495)
!507 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !495)
!508 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !495)
!509 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !495)
!510 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !495)
!511 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !495)
!512 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !495)
!513 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !495)
!514 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !495)
!515 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !495)
!516 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !495)
!517 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !495)
!518 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !495)
!519 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !495)
!520 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !495)
!521 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !495)
!522 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !495)
!523 = !DILocation(line: 187, column: 1, scope: !477)
!524 = distinct !DISubprogram(name: "sdsclear", scope: !3, file: !3, line: 193, type: !429, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !525)
!525 = !{!526}
!526 = !DILocalVariable(name: "s", arg: 1, scope: !524, file: !3, line: 193, type: !110)
!527 = !DILocation(line: 193, column: 19, scope: !524)
!528 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !529)
!529 = distinct !DILocation(line: 194, column: 5, scope: !524)
!530 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !529)
!531 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !529)
!532 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !529)
!533 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !529)
!534 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !529)
!535 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !529)
!536 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !529)
!537 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !529)
!538 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !529)
!539 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !529)
!540 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !529)
!541 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !529)
!542 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !529)
!543 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !529)
!544 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !529)
!545 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !529)
!546 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !529)
!547 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !529)
!548 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !529)
!549 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !529)
!550 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !529)
!551 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !529)
!552 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !529)
!553 = !DILocation(line: 195, column: 10, scope: !524)
!554 = !DILocation(line: 196, column: 1, scope: !524)
!555 = distinct !DISubprogram(name: "sdsMakeRoomFor", scope: !3, file: !3, line: 204, type: !556, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!110, !110, !113}
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!559 = !DILocalVariable(name: "s", arg: 1, scope: !555, file: !3, line: 204, type: !110)
!560 = !DILocalVariable(name: "addlen", arg: 2, scope: !555, file: !3, line: 204, type: !113)
!561 = !DILocalVariable(name: "sh", scope: !555, file: !3, line: 205, type: !14)
!562 = !DILocalVariable(name: "newsh", scope: !555, file: !3, line: 205, type: !14)
!563 = !DILocalVariable(name: "avail", scope: !555, file: !3, line: 206, type: !113)
!564 = !DILocalVariable(name: "len", scope: !555, file: !3, line: 207, type: !113)
!565 = !DILocalVariable(name: "newlen", scope: !555, file: !3, line: 207, type: !113)
!566 = !DILocalVariable(name: "type", scope: !555, file: !3, line: 208, type: !16)
!567 = !DILocalVariable(name: "oldtype", scope: !555, file: !3, line: 208, type: !16)
!568 = !DILocalVariable(name: "hdrlen", scope: !555, file: !3, line: 209, type: !29)
!569 = !DILocation(line: 204, column: 24, scope: !555)
!570 = !DILocation(line: 204, column: 34, scope: !555)
!571 = !DILocalVariable(name: "s", arg: 1, scope: !572, file: !32, line: 104, type: !394)
!572 = distinct !DISubprogram(name: "sdsavail", scope: !32, file: !32, line: 104, type: !400, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !573)
!573 = !{!571, !574, !575, !578, !580, !582}
!574 = !DILocalVariable(name: "flags", scope: !572, file: !32, line: 105, type: !18)
!575 = !DILocalVariable(name: "sh", scope: !576, file: !32, line: 111, type: !30)
!576 = distinct !DILexicalBlock(scope: !577, file: !32, line: 110, column: 26)
!577 = distinct !DILexicalBlock(scope: !572, file: !32, line: 106, column: 33)
!578 = !DILocalVariable(name: "sh", scope: !579, file: !32, line: 115, type: !43)
!579 = distinct !DILexicalBlock(scope: !577, file: !32, line: 114, column: 27)
!580 = !DILocalVariable(name: "sh", scope: !581, file: !32, line: 119, type: !53)
!581 = distinct !DILexicalBlock(scope: !577, file: !32, line: 118, column: 27)
!582 = !DILocalVariable(name: "sh", scope: !583, file: !32, line: 123, type: !62)
!583 = distinct !DILexicalBlock(scope: !577, file: !32, line: 122, column: 27)
!584 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !585)
!585 = distinct !DILocation(line: 206, column: 20, scope: !555)
!586 = !DILocation(line: 105, column: 27, scope: !572, inlinedAt: !585)
!587 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !585)
!588 = !DILocation(line: 106, column: 5, scope: !572, inlinedAt: !585)
!589 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !585)
!590 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !585)
!591 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !585)
!592 = !DILocation(line: 112, column: 36, scope: !576, inlinedAt: !585)
!593 = !DILocation(line: 112, column: 32, scope: !576, inlinedAt: !585)
!594 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !585)
!595 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !585)
!596 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !585)
!597 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !585)
!598 = !DILocation(line: 116, column: 36, scope: !579, inlinedAt: !585)
!599 = !DILocation(line: 116, column: 32, scope: !579, inlinedAt: !585)
!600 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !585)
!601 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !585)
!602 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !585)
!603 = !DILocation(line: 120, column: 36, scope: !581, inlinedAt: !585)
!604 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !585)
!605 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !585)
!606 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !585)
!607 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !585)
!608 = !DILocation(line: 124, column: 36, scope: !583, inlinedAt: !585)
!609 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !585)
!610 = !DILocation(line: 0, scope: !611, inlinedAt: !585)
!611 = distinct !DILexicalBlock(scope: !577, file: !32, line: 107, column: 26)
!612 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !585)
!613 = !DILocation(line: 206, column: 12, scope: !555)
!614 = !DILocation(line: 208, column: 32, scope: !555)
!615 = !DILocation(line: 208, column: 16, scope: !555)
!616 = !DILocation(line: 212, column: 15, scope: !617)
!617 = distinct !DILexicalBlock(scope: !555, file: !3, line: 212, column: 9)
!618 = !DILocation(line: 212, column: 9, scope: !555)
!619 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !620)
!620 = distinct !DILocation(line: 214, column: 11, scope: !555)
!621 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !620)
!622 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !620)
!623 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !620)
!624 = !DILocation(line: 207, column: 12, scope: !555)
!625 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !626)
!626 = distinct !DILocation(line: 215, column: 19, scope: !555)
!627 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !626)
!628 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !620)
!629 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !620)
!630 = !DILocation(line: 49, column: 13, scope: !631, inlinedAt: !626)
!631 = distinct !DILexicalBlock(scope: !162, file: !3, line: 45, column: 32)
!632 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !620)
!633 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !620)
!634 = !DILocation(line: 51, column: 13, scope: !631, inlinedAt: !626)
!635 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !620)
!636 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !620)
!637 = !DILocation(line: 53, column: 13, scope: !631, inlinedAt: !626)
!638 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !620)
!639 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !620)
!640 = !DILocation(line: 55, column: 13, scope: !631, inlinedAt: !626)
!641 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !620)
!642 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !626)
!643 = !DILocation(line: 215, column: 18, scope: !555)
!644 = !DILocation(line: 205, column: 11, scope: !555)
!645 = !DILocation(line: 216, column: 18, scope: !555)
!646 = !DILocation(line: 207, column: 17, scope: !555)
!647 = !DILocation(line: 217, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !555, file: !3, line: 217, column: 9)
!649 = !DILocation(line: 218, column: 16, scope: !648)
!650 = !DILocation(line: 220, column: 16, scope: !648)
!651 = !DILocation(line: 217, column: 9, scope: !555)
!652 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !653)
!653 = distinct !DILocation(line: 222, column: 12, scope: !555)
!654 = !DILocation(line: 63, column: 21, scope: !146, inlinedAt: !653)
!655 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !653)
!656 = !DILocation(line: 65, column: 21, scope: !149, inlinedAt: !653)
!657 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !653)
!658 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !653)
!659 = !DILocation(line: 208, column: 10, scope: !555)
!660 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !661)
!661 = distinct !DILocation(line: 229, column: 14, scope: !555)
!662 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !661)
!663 = !DILocation(line: 68, column: 21, scope: !152, inlinedAt: !653)
!664 = !DILocation(line: 69, column: 9, scope: !152, inlinedAt: !653)
!665 = !DILocation(line: 49, column: 13, scope: !631, inlinedAt: !661)
!666 = !DILocation(line: 51, column: 13, scope: !631, inlinedAt: !661)
!667 = !DILocation(line: 53, column: 13, scope: !631, inlinedAt: !661)
!668 = !DILocation(line: 55, column: 13, scope: !631, inlinedAt: !661)
!669 = !DILocation(line: 57, column: 5, scope: !162, inlinedAt: !661)
!670 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !661)
!671 = !DILocation(line: 230, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !555, file: !3, line: 230, column: 9)
!673 = !DILocation(line: 230, column: 18, scope: !672)
!674 = !DILocation(line: 230, column: 16, scope: !672)
!675 = !DILocation(line: 0, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 234, column: 12)
!677 = !DILocation(line: 230, column: 9, scope: !555)
!678 = !DILocalVariable(name: "ptr", arg: 1, scope: !679, file: !174, line: 48, type: !14)
!679 = distinct !DISubprogram(name: "s_realloc", scope: !174, file: !174, line: 48, type: !680, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!14, !14, !113}
!682 = !{!678, !683}
!683 = !DILocalVariable(name: "size", arg: 2, scope: !679, file: !174, line: 48, type: !113)
!684 = !DILocation(line: 48, column: 37, scope: !679, inlinedAt: !685)
!685 = distinct !DILocation(line: 231, column: 17, scope: !686)
!686 = distinct !DILexicalBlock(scope: !672, file: !3, line: 230, column: 24)
!687 = !DILocation(line: 48, column: 49, scope: !679, inlinedAt: !685)
!688 = !DILocalVariable(name: "a", arg: 1, scope: !689, file: !187, line: 190, type: !190)
!689 = distinct !DISubprogram(name: "uk_realloc", scope: !187, file: !187, line: 190, type: !204, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!690 = !{!688, !691, !692}
!691 = !DILocalVariable(name: "ptr", arg: 2, scope: !689, file: !187, line: 190, type: !14)
!692 = !DILocalVariable(name: "size", arg: 3, scope: !689, file: !187, line: 190, type: !113)
!693 = !DILocation(line: 190, column: 49, scope: !689, inlinedAt: !694)
!694 = distinct !DILocation(line: 49, column: 9, scope: !679, inlinedAt: !685)
!695 = !DILocation(line: 190, column: 58, scope: !689, inlinedAt: !694)
!696 = !DILocation(line: 190, column: 70, scope: !689, inlinedAt: !694)
!697 = !DILocation(line: 192, column: 6, scope: !689, inlinedAt: !694)
!698 = !DILocation(line: 193, column: 3, scope: !699, inlinedAt: !694)
!699 = distinct !DILexicalBlock(scope: !700, file: !187, line: 192, column: 20)
!700 = distinct !DILexicalBlock(scope: !689, file: !187, line: 192, column: 6)
!701 = !DILocation(line: 193, column: 9, scope: !699, inlinedAt: !694)
!702 = !DILocation(line: 197, column: 1, scope: !689, inlinedAt: !694)
!703 = !DILocation(line: 49, column: 2, scope: !679, inlinedAt: !685)
!704 = !DILocation(line: 205, column: 16, scope: !555)
!705 = !DILocation(line: 232, column: 13, scope: !686)
!706 = !DILocalVariable(name: "a", arg: 1, scope: !707, file: !187, line: 183, type: !190)
!707 = distinct !DISubprogram(name: "uk_do_realloc", scope: !187, file: !187, line: 183, type: !204, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !708)
!708 = !{!706, !709, !710}
!709 = !DILocalVariable(name: "ptr", arg: 2, scope: !707, file: !187, line: 184, type: !14)
!710 = !DILocalVariable(name: "size", arg: 3, scope: !707, file: !187, line: 184, type: !113)
!711 = !DILocation(line: 183, column: 52, scope: !707, inlinedAt: !712)
!712 = distinct !DILocation(line: 196, column: 9, scope: !689, inlinedAt: !694)
!713 = !DILocation(line: 184, column: 13, scope: !707, inlinedAt: !712)
!714 = !DILocation(line: 184, column: 25, scope: !707, inlinedAt: !712)
!715 = !DILocation(line: 187, column: 12, scope: !707, inlinedAt: !712)
!716 = !DILocation(line: 187, column: 9, scope: !707, inlinedAt: !712)
!717 = !DILocation(line: 187, column: 2, scope: !707, inlinedAt: !712)
!718 = !DILocation(line: 232, column: 19, scope: !719)
!719 = distinct !DILexicalBlock(scope: !686, file: !3, line: 232, column: 13)
!720 = !DILocation(line: 233, column: 25, scope: !686)
!721 = !DILocation(line: 198, column: 27, scope: !722, inlinedAt: !727)
!722 = distinct !DISubprogram(name: "sdssetalloc", scope: !32, file: !32, line: 197, type: !486, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !723)
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(name: "s", arg: 1, scope: !722, file: !32, line: 197, type: !110)
!725 = !DILocalVariable(name: "newlen", arg: 2, scope: !722, file: !32, line: 197, type: !113)
!726 = !DILocalVariable(name: "flags", scope: !722, file: !32, line: 198, type: !18)
!727 = distinct !DILocation(line: 245, column: 5, scope: !555)
!728 = !DILocation(line: 234, column: 5, scope: !686)
!729 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !730)
!730 = distinct !DILocation(line: 237, column: 17, scope: !676)
!731 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !732)
!732 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !730)
!733 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !732)
!734 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !732)
!735 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !732)
!736 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !732)
!737 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !732)
!738 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !730)
!739 = !DILocation(line: 238, column: 13, scope: !676)
!740 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !741)
!741 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !732)
!742 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !741)
!743 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !741)
!744 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !741)
!745 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !741)
!746 = !DILocation(line: 238, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !676, file: !3, line: 238, column: 13)
!748 = !DILocation(line: 239, column: 28, scope: !676)
!749 = !DILocation(line: 239, column: 43, scope: !676)
!750 = !DILocation(line: 239, column: 9, scope: !676)
!751 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !752)
!752 = distinct !DILocation(line: 240, column: 9, scope: !676)
!753 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !752)
!754 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !755)
!755 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !752)
!756 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !755)
!757 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !758)
!758 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !755)
!759 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !758)
!760 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !758)
!761 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !758)
!762 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !758)
!763 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !758)
!764 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !758)
!765 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !758)
!766 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !755)
!767 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !752)
!768 = !DILocation(line: 242, column: 9, scope: !676)
!769 = !DILocation(line: 242, column: 15, scope: !676)
!770 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !771)
!771 = distinct !DILocation(line: 243, column: 9, scope: !676)
!772 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !771)
!773 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !771)
!774 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !771)
!775 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !771)
!776 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !771)
!777 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !771)
!778 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !771)
!779 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !771)
!780 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !771)
!781 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !771)
!782 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !771)
!783 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !771)
!784 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !771)
!785 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !771)
!786 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !771)
!787 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !771)
!788 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !771)
!789 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !771)
!790 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !771)
!791 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !771)
!792 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !771)
!793 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !771)
!794 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !771)
!795 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !771)
!796 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !771)
!797 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !771)
!798 = !DILocation(line: 197, column: 36, scope: !722, inlinedAt: !727)
!799 = !DILocation(line: 197, column: 46, scope: !722, inlinedAt: !727)
!800 = !DILocation(line: 198, column: 19, scope: !722, inlinedAt: !727)
!801 = !DILocation(line: 199, column: 5, scope: !722, inlinedAt: !727)
!802 = !DILocation(line: 204, column: 35, scope: !803, inlinedAt: !727)
!803 = distinct !DILexicalBlock(scope: !722, file: !32, line: 199, column: 33)
!804 = !DILocation(line: 204, column: 27, scope: !803, inlinedAt: !727)
!805 = !DILocation(line: 204, column: 33, scope: !803, inlinedAt: !727)
!806 = !DILocation(line: 205, column: 13, scope: !803, inlinedAt: !727)
!807 = !DILocation(line: 207, column: 36, scope: !803, inlinedAt: !727)
!808 = !DILocation(line: 207, column: 28, scope: !803, inlinedAt: !727)
!809 = !DILocation(line: 207, column: 34, scope: !803, inlinedAt: !727)
!810 = !DILocation(line: 208, column: 13, scope: !803, inlinedAt: !727)
!811 = !DILocation(line: 210, column: 36, scope: !803, inlinedAt: !727)
!812 = !DILocation(line: 210, column: 28, scope: !803, inlinedAt: !727)
!813 = !DILocation(line: 210, column: 34, scope: !803, inlinedAt: !727)
!814 = !DILocation(line: 211, column: 13, scope: !803, inlinedAt: !727)
!815 = !DILocation(line: 213, column: 28, scope: !803, inlinedAt: !727)
!816 = !DILocation(line: 213, column: 34, scope: !803, inlinedAt: !727)
!817 = !DILocation(line: 214, column: 13, scope: !803, inlinedAt: !727)
!818 = !DILocation(line: 216, column: 1, scope: !722, inlinedAt: !727)
!819 = !DILocation(line: 246, column: 5, scope: !555)
!820 = !DILocation(line: 0, scope: !747)
!821 = !DILocation(line: 247, column: 1, scope: !555)
!822 = distinct !DISubprogram(name: "sdsRemoveFreeSpace", scope: !3, file: !3, line: 255, type: !823, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!110, !110}
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834}
!826 = !DILocalVariable(name: "s", arg: 1, scope: !822, file: !3, line: 255, type: !110)
!827 = !DILocalVariable(name: "sh", scope: !822, file: !3, line: 256, type: !14)
!828 = !DILocalVariable(name: "newsh", scope: !822, file: !3, line: 256, type: !14)
!829 = !DILocalVariable(name: "type", scope: !822, file: !3, line: 257, type: !16)
!830 = !DILocalVariable(name: "oldtype", scope: !822, file: !3, line: 257, type: !16)
!831 = !DILocalVariable(name: "hdrlen", scope: !822, file: !3, line: 258, type: !29)
!832 = !DILocalVariable(name: "oldhdrlen", scope: !822, file: !3, line: 258, type: !29)
!833 = !DILocalVariable(name: "len", scope: !822, file: !3, line: 259, type: !113)
!834 = !DILocalVariable(name: "avail", scope: !822, file: !3, line: 260, type: !113)
!835 = !DILocation(line: 255, column: 28, scope: !822)
!836 = !DILocation(line: 257, column: 26, scope: !822)
!837 = !DILocation(line: 257, column: 32, scope: !822)
!838 = !DILocation(line: 257, column: 16, scope: !822)
!839 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !840)
!840 = distinct !DILocation(line: 258, column: 29, scope: !822)
!841 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !840)
!842 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !840)
!843 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !844)
!844 = distinct !DILocation(line: 259, column: 18, scope: !822)
!845 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !844)
!846 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !844)
!847 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !844)
!848 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !844)
!849 = !DILocation(line: 259, column: 12, scope: !822)
!850 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !851)
!851 = distinct !DILocation(line: 260, column: 20, scope: !822)
!852 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !851)
!853 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !851)
!854 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !851)
!855 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !851)
!856 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !851)
!857 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !844)
!858 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !844)
!859 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !851)
!860 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !851)
!861 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !851)
!862 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !851)
!863 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !844)
!864 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !844)
!865 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !851)
!866 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !851)
!867 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !851)
!868 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !851)
!869 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !844)
!870 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !844)
!871 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !851)
!872 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !851)
!873 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !851)
!874 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !851)
!875 = !DILocation(line: 260, column: 12, scope: !822)
!876 = !DILocation(line: 256, column: 11, scope: !822)
!877 = !DILocation(line: 264, column: 9, scope: !822)
!878 = !DILocation(line: 0, scope: !611, inlinedAt: !851)
!879 = !DILocation(line: 261, column: 18, scope: !822)
!880 = !DILocation(line: 264, column: 15, scope: !881)
!881 = distinct !DILexicalBlock(scope: !822, file: !3, line: 264, column: 9)
!882 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !883)
!883 = distinct !DILocation(line: 268, column: 12, scope: !822)
!884 = !DILocation(line: 61, column: 21, scope: !143, inlinedAt: !883)
!885 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !883)
!886 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !883)
!887 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !888)
!888 = distinct !DILocation(line: 269, column: 14, scope: !822)
!889 = !DILocation(line: 63, column: 21, scope: !146, inlinedAt: !883)
!890 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !883)
!891 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !888)
!892 = !DILocation(line: 275, column: 23, scope: !893)
!893 = distinct !DILexicalBlock(scope: !822, file: !3, line: 275, column: 9)
!894 = !DILocation(line: 275, column: 16, scope: !893)
!895 = !DILocation(line: 48, column: 37, scope: !679, inlinedAt: !896)
!896 = distinct !DILocation(line: 276, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !3, line: 275, column: 45)
!898 = !DILocation(line: 49, column: 20, scope: !679, inlinedAt: !896)
!899 = !DILocation(line: 190, column: 49, scope: !689, inlinedAt: !900)
!900 = distinct !DILocation(line: 49, column: 9, scope: !679, inlinedAt: !896)
!901 = !DILocation(line: 190, column: 58, scope: !689, inlinedAt: !900)
!902 = !DILocation(line: 192, column: 6, scope: !700, inlinedAt: !900)
!903 = !DILocation(line: 192, column: 6, scope: !689, inlinedAt: !900)
!904 = !DILocation(line: 193, column: 3, scope: !699, inlinedAt: !900)
!905 = !DILocation(line: 193, column: 9, scope: !699, inlinedAt: !900)
!906 = !DILocation(line: 197, column: 1, scope: !689, inlinedAt: !900)
!907 = !DILocation(line: 49, column: 2, scope: !679, inlinedAt: !896)
!908 = !DILocation(line: 256, column: 16, scope: !822)
!909 = !DILocation(line: 277, column: 13, scope: !897)
!910 = !DILocation(line: 276, column: 40, scope: !897)
!911 = !DILocation(line: 276, column: 44, scope: !897)
!912 = !DILocation(line: 190, column: 70, scope: !689, inlinedAt: !900)
!913 = !DILocation(line: 48, column: 49, scope: !679, inlinedAt: !896)
!914 = !DILocation(line: 183, column: 52, scope: !707, inlinedAt: !915)
!915 = distinct !DILocation(line: 196, column: 9, scope: !689, inlinedAt: !900)
!916 = !DILocation(line: 184, column: 13, scope: !707, inlinedAt: !915)
!917 = !DILocation(line: 184, column: 25, scope: !707, inlinedAt: !915)
!918 = !DILocation(line: 187, column: 12, scope: !707, inlinedAt: !915)
!919 = !DILocation(line: 187, column: 9, scope: !707, inlinedAt: !915)
!920 = !DILocation(line: 187, column: 2, scope: !707, inlinedAt: !915)
!921 = !DILocation(line: 277, column: 19, scope: !922)
!922 = distinct !DILexicalBlock(scope: !897, file: !3, line: 277, column: 13)
!923 = !DILocation(line: 278, column: 25, scope: !897)
!924 = !DILocation(line: 198, column: 27, scope: !722, inlinedAt: !925)
!925 = distinct !DILocation(line: 288, column: 5, scope: !822)
!926 = !DILocation(line: 279, column: 5, scope: !897)
!927 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !928)
!928 = distinct !DILocation(line: 280, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !893, file: !3, line: 279, column: 12)
!930 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !931)
!931 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !928)
!932 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !931)
!933 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !931)
!934 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !931)
!935 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !931)
!936 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !931)
!937 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !928)
!938 = !DILocation(line: 281, column: 13, scope: !929)
!939 = !DILocation(line: 280, column: 32, scope: !929)
!940 = !DILocation(line: 280, column: 36, scope: !929)
!941 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !931)
!942 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !928)
!943 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !944)
!944 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !931)
!945 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !944)
!946 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !944)
!947 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !944)
!948 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !944)
!949 = !DILocation(line: 281, column: 19, scope: !950)
!950 = distinct !DILexicalBlock(scope: !929, file: !3, line: 281, column: 13)
!951 = !DILocation(line: 282, column: 28, scope: !929)
!952 = !DILocation(line: 282, column: 9, scope: !929)
!953 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !954)
!954 = distinct !DILocation(line: 283, column: 9, scope: !929)
!955 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !954)
!956 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !957)
!957 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !954)
!958 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !957)
!959 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !960)
!960 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !957)
!961 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !960)
!962 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !960)
!963 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !960)
!964 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !960)
!965 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !960)
!966 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !960)
!967 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !960)
!968 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !957)
!969 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !954)
!970 = !DILocation(line: 285, column: 9, scope: !929)
!971 = !DILocation(line: 285, column: 15, scope: !929)
!972 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !973)
!973 = distinct !DILocation(line: 286, column: 9, scope: !929)
!974 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !973)
!975 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !973)
!976 = !DILocation(line: 0, scope: !929)
!977 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !973)
!978 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !973)
!979 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !973)
!980 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !973)
!981 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !973)
!982 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !973)
!983 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !973)
!984 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !973)
!985 = !DILocation(line: 197, column: 36, scope: !722, inlinedAt: !925)
!986 = !DILocation(line: 197, column: 46, scope: !722, inlinedAt: !925)
!987 = !DILocation(line: 198, column: 19, scope: !722, inlinedAt: !925)
!988 = !DILocation(line: 199, column: 5, scope: !722, inlinedAt: !925)
!989 = !DILocation(line: 204, column: 35, scope: !803, inlinedAt: !925)
!990 = !DILocation(line: 204, column: 27, scope: !803, inlinedAt: !925)
!991 = !DILocation(line: 204, column: 33, scope: !803, inlinedAt: !925)
!992 = !DILocation(line: 205, column: 13, scope: !803, inlinedAt: !925)
!993 = !DILocation(line: 207, column: 36, scope: !803, inlinedAt: !925)
!994 = !DILocation(line: 207, column: 28, scope: !803, inlinedAt: !925)
!995 = !DILocation(line: 207, column: 34, scope: !803, inlinedAt: !925)
!996 = !DILocation(line: 208, column: 13, scope: !803, inlinedAt: !925)
!997 = !DILocation(line: 210, column: 36, scope: !803, inlinedAt: !925)
!998 = !DILocation(line: 210, column: 28, scope: !803, inlinedAt: !925)
!999 = !DILocation(line: 210, column: 34, scope: !803, inlinedAt: !925)
!1000 = !DILocation(line: 211, column: 13, scope: !803, inlinedAt: !925)
!1001 = !DILocation(line: 213, column: 28, scope: !803, inlinedAt: !925)
!1002 = !DILocation(line: 213, column: 34, scope: !803, inlinedAt: !925)
!1003 = !DILocation(line: 214, column: 13, scope: !803, inlinedAt: !925)
!1004 = !DILocation(line: 216, column: 1, scope: !722, inlinedAt: !925)
!1005 = !DILocation(line: 289, column: 5, scope: !822)
!1006 = !DILocation(line: 0, scope: !950)
!1007 = !DILocation(line: 290, column: 1, scope: !822)
!1008 = distinct !DISubprogram(name: "sdsAllocSize", scope: !3, file: !3, line: 299, type: !1009, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!113, !110}
!1011 = !{!1012, !1013}
!1012 = !DILocalVariable(name: "s", arg: 1, scope: !1008, file: !3, line: 299, type: !110)
!1013 = !DILocalVariable(name: "alloc", scope: !1008, file: !3, line: 300, type: !113)
!1014 = !DILocation(line: 299, column: 25, scope: !1008)
!1015 = !DILocalVariable(name: "s", arg: 1, scope: !1016, file: !32, line: 180, type: !394)
!1016 = distinct !DISubprogram(name: "sdsalloc", scope: !32, file: !32, line: 180, type: !400, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1017)
!1017 = !{!1015, !1018}
!1018 = !DILocalVariable(name: "flags", scope: !1016, file: !32, line: 181, type: !18)
!1019 = !DILocation(line: 180, column: 41, scope: !1016, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 300, column: 20, scope: !1008)
!1021 = !DILocation(line: 181, column: 27, scope: !1016, inlinedAt: !1020)
!1022 = !DILocation(line: 181, column: 19, scope: !1016, inlinedAt: !1020)
!1023 = !DILocation(line: 182, column: 5, scope: !1016, inlinedAt: !1020)
!1024 = !DILocation(line: 184, column: 20, scope: !1025, inlinedAt: !1020)
!1025 = distinct !DILexicalBlock(scope: !1016, file: !32, line: 182, column: 33)
!1026 = !DILocation(line: 300, column: 12, scope: !1008)
!1027 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 301, column: 12, scope: !1008)
!1029 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !1028)
!1030 = !DILocation(line: 186, column: 34, scope: !1025, inlinedAt: !1020)
!1031 = !DILocation(line: 186, column: 20, scope: !1025, inlinedAt: !1020)
!1032 = !DILocation(line: 49, column: 13, scope: !631, inlinedAt: !1028)
!1033 = !DILocation(line: 188, column: 35, scope: !1025, inlinedAt: !1020)
!1034 = !DILocation(line: 188, column: 20, scope: !1025, inlinedAt: !1020)
!1035 = !DILocation(line: 51, column: 13, scope: !631, inlinedAt: !1028)
!1036 = !DILocation(line: 190, column: 35, scope: !1025, inlinedAt: !1020)
!1037 = !DILocation(line: 190, column: 20, scope: !1025, inlinedAt: !1020)
!1038 = !DILocation(line: 53, column: 13, scope: !631, inlinedAt: !1028)
!1039 = !DILocation(line: 192, column: 35, scope: !1025, inlinedAt: !1020)
!1040 = !DILocation(line: 55, column: 13, scope: !631, inlinedAt: !1028)
!1041 = !DILocation(line: 195, column: 1, scope: !1016, inlinedAt: !1020)
!1042 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !1028)
!1043 = !DILocation(line: 301, column: 29, scope: !1008)
!1044 = !DILocation(line: 301, column: 35, scope: !1008)
!1045 = !DILocation(line: 301, column: 5, scope: !1008)
!1046 = distinct !DISubprogram(name: "sdsAllocPtr", scope: !3, file: !3, line: 306, type: !1047, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!14, !110}
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "s", arg: 1, scope: !1046, file: !3, line: 306, type: !110)
!1051 = !DILocation(line: 306, column: 23, scope: !1046)
!1052 = !DILocation(line: 307, column: 34, scope: !1046)
!1053 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 307, column: 23, scope: !1046)
!1055 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !1054)
!1056 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !1054)
!1057 = !DILocation(line: 307, column: 22, scope: !1046)
!1058 = !DILocation(line: 307, column: 5, scope: !1046)
!1059 = distinct !DISubprogram(name: "sdsIncrLen", scope: !3, file: !3, line: 333, type: !1060, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1062)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !110, !24}
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1070, !1071, !1073, !1075, !1077}
!1063 = !DILocalVariable(name: "s", arg: 1, scope: !1059, file: !3, line: 333, type: !110)
!1064 = !DILocalVariable(name: "incr", arg: 2, scope: !1059, file: !3, line: 333, type: !24)
!1065 = !DILocalVariable(name: "flags", scope: !1059, file: !3, line: 334, type: !18)
!1066 = !DILocalVariable(name: "len", scope: !1059, file: !3, line: 335, type: !113)
!1067 = !DILocalVariable(name: "fp", scope: !1068, file: !3, line: 338, type: !17)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 337, column: 26)
!1069 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 336, column: 33)
!1070 = !DILocalVariable(name: "oldlen", scope: !1068, file: !3, line: 339, type: !18)
!1071 = !DILocalVariable(name: "sh", scope: !1072, file: !3, line: 346, type: !30)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 345, column: 26)
!1073 = !DILocalVariable(name: "sh", scope: !1074, file: !3, line: 352, type: !43)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 351, column: 27)
!1075 = !DILocalVariable(name: "sh", scope: !1076, file: !3, line: 358, type: !53)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 357, column: 27)
!1077 = !DILocalVariable(name: "sh", scope: !1078, file: !3, line: 364, type: !62)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 363, column: 27)
!1079 = !DILocation(line: 333, column: 21, scope: !1059)
!1080 = !DILocation(line: 333, column: 32, scope: !1059)
!1081 = !DILocation(line: 334, column: 27, scope: !1059)
!1082 = !DILocation(line: 334, column: 19, scope: !1059)
!1083 = !DILocation(line: 336, column: 5, scope: !1059)
!1084 = !DILocation(line: 338, column: 28, scope: !1068)
!1085 = !DILocation(line: 339, column: 36, scope: !1068)
!1086 = !DILocation(line: 339, column: 27, scope: !1068)
!1087 = !DILocation(line: 340, column: 13, scope: !1068)
!1088 = !DILocation(line: 341, column: 34, scope: !1068)
!1089 = !DILocation(line: 341, column: 40, scope: !1068)
!1090 = !DILocation(line: 341, column: 19, scope: !1068)
!1091 = !DILocation(line: 341, column: 17, scope: !1068)
!1092 = !DILocation(line: 335, column: 12, scope: !1059)
!1093 = !DILocation(line: 346, column: 13, scope: !1072)
!1094 = !DILocation(line: 347, column: 13, scope: !1072)
!1095 = !DILocation(line: 348, column: 28, scope: !1072)
!1096 = !DILocation(line: 348, column: 19, scope: !1072)
!1097 = !DILocation(line: 352, column: 13, scope: !1074)
!1098 = !DILocation(line: 353, column: 13, scope: !1074)
!1099 = !DILocation(line: 354, column: 24, scope: !1074)
!1100 = !DILocation(line: 354, column: 28, scope: !1074)
!1101 = !DILocation(line: 354, column: 19, scope: !1074)
!1102 = !DILocation(line: 358, column: 13, scope: !1076)
!1103 = !DILocation(line: 359, column: 13, scope: !1076)
!1104 = !DILocation(line: 360, column: 28, scope: !1076)
!1105 = !DILocation(line: 360, column: 24, scope: !1076)
!1106 = !DILocation(line: 360, column: 19, scope: !1076)
!1107 = !DILocation(line: 364, column: 13, scope: !1078)
!1108 = !DILocation(line: 365, column: 13, scope: !1078)
!1109 = !DILocation(line: 366, column: 24, scope: !1078)
!1110 = !DILocation(line: 366, column: 28, scope: !1078)
!1111 = !DILocation(line: 0, scope: !1068)
!1112 = !DILocation(line: 371, column: 5, scope: !1059)
!1113 = !DILocation(line: 371, column: 12, scope: !1059)
!1114 = !DILocation(line: 372, column: 1, scope: !1059)
!1115 = distinct !DISubprogram(name: "sdsgrowzero", scope: !3, file: !3, line: 379, type: !556, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DILocalVariable(name: "s", arg: 1, scope: !1115, file: !3, line: 379, type: !110)
!1118 = !DILocalVariable(name: "len", arg: 2, scope: !1115, file: !3, line: 379, type: !113)
!1119 = !DILocalVariable(name: "curlen", scope: !1115, file: !3, line: 380, type: !113)
!1120 = !DILocation(line: 379, column: 21, scope: !1115)
!1121 = !DILocation(line: 379, column: 31, scope: !1115)
!1122 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 380, column: 21, scope: !1115)
!1124 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !1123)
!1125 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1123)
!1126 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1123)
!1127 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1123)
!1128 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1123)
!1129 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1123)
!1130 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1123)
!1131 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1123)
!1132 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1123)
!1133 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1123)
!1134 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1123)
!1135 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1123)
!1136 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1123)
!1137 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1123)
!1138 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1123)
!1139 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1123)
!1140 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1123)
!1141 = !DILocation(line: 0, scope: !410, inlinedAt: !1123)
!1142 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1123)
!1143 = !DILocation(line: 380, column: 12, scope: !1115)
!1144 = !DILocation(line: 382, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 382, column: 9)
!1146 = !DILocation(line: 382, column: 9, scope: !1115)
!1147 = !DILocation(line: 383, column: 29, scope: !1115)
!1148 = !DILocation(line: 383, column: 9, scope: !1115)
!1149 = !DILocation(line: 384, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 384, column: 9)
!1151 = !DILocation(line: 384, column: 9, scope: !1115)
!1152 = !DILocation(line: 387, column: 13, scope: !1115)
!1153 = !DILocation(line: 387, column: 34, scope: !1115)
!1154 = !DILocation(line: 387, column: 5, scope: !1115)
!1155 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 388, column: 5, scope: !1115)
!1157 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !1156)
!1158 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !1156)
!1159 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !1156)
!1160 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !1156)
!1161 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !1156)
!1162 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !1156)
!1163 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !1156)
!1164 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !1156)
!1165 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !1156)
!1166 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !1156)
!1167 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !1156)
!1168 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !1156)
!1169 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !1156)
!1170 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !1156)
!1171 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !1156)
!1172 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !1156)
!1173 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !1156)
!1174 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !1156)
!1175 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !1156)
!1176 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !1156)
!1177 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !1156)
!1178 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !1156)
!1179 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !1156)
!1180 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !1156)
!1181 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !1156)
!1182 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !1156)
!1183 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !1156)
!1184 = !DILocation(line: 389, column: 5, scope: !1115)
!1185 = !DILocation(line: 0, scope: !1115)
!1186 = !DILocation(line: 390, column: 1, scope: !1115)
!1187 = distinct !DISubprogram(name: "sdscatlen", scope: !3, file: !3, line: 397, type: !1188, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!110, !110, !111, !113}
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DILocalVariable(name: "s", arg: 1, scope: !1187, file: !3, line: 397, type: !110)
!1192 = !DILocalVariable(name: "t", arg: 2, scope: !1187, file: !3, line: 397, type: !111)
!1193 = !DILocalVariable(name: "len", arg: 3, scope: !1187, file: !3, line: 397, type: !113)
!1194 = !DILocalVariable(name: "curlen", scope: !1187, file: !3, line: 398, type: !113)
!1195 = !DILocation(line: 397, column: 19, scope: !1187)
!1196 = !DILocation(line: 397, column: 34, scope: !1187)
!1197 = !DILocation(line: 397, column: 44, scope: !1187)
!1198 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 398, column: 21, scope: !1187)
!1200 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !1199)
!1201 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1199)
!1202 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1199)
!1203 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1199)
!1204 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1199)
!1205 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1199)
!1206 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1199)
!1207 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1199)
!1208 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1199)
!1209 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1199)
!1210 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1199)
!1211 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1199)
!1212 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1199)
!1213 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1199)
!1214 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1199)
!1215 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1199)
!1216 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1199)
!1217 = !DILocation(line: 0, scope: !410, inlinedAt: !1199)
!1218 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1199)
!1219 = !DILocation(line: 398, column: 12, scope: !1187)
!1220 = !DILocation(line: 400, column: 9, scope: !1187)
!1221 = !DILocation(line: 401, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 401, column: 9)
!1223 = !DILocation(line: 401, column: 9, scope: !1187)
!1224 = !DILocation(line: 402, column: 13, scope: !1187)
!1225 = !DILocation(line: 402, column: 5, scope: !1187)
!1226 = !DILocation(line: 403, column: 24, scope: !1187)
!1227 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 403, column: 5, scope: !1187)
!1229 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !1228)
!1230 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !1228)
!1231 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !1228)
!1232 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !1228)
!1233 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !1228)
!1234 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !1228)
!1235 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !1228)
!1236 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !1228)
!1237 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !1228)
!1238 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !1228)
!1239 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !1228)
!1240 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !1228)
!1241 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !1228)
!1242 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !1228)
!1243 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !1228)
!1244 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !1228)
!1245 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !1228)
!1246 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !1228)
!1247 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !1228)
!1248 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !1228)
!1249 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !1228)
!1250 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !1228)
!1251 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !1228)
!1252 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !1228)
!1253 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !1228)
!1254 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !1228)
!1255 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !1228)
!1256 = !DILocation(line: 404, column: 5, scope: !1187)
!1257 = !DILocation(line: 404, column: 19, scope: !1187)
!1258 = !DILocation(line: 405, column: 5, scope: !1187)
!1259 = !DILocation(line: 406, column: 1, scope: !1187)
!1260 = distinct !DISubprogram(name: "sdscat", scope: !3, file: !3, line: 412, type: !1261, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!110, !110, !76}
!1263 = !{!1264, !1265}
!1264 = !DILocalVariable(name: "s", arg: 1, scope: !1260, file: !3, line: 412, type: !110)
!1265 = !DILocalVariable(name: "t", arg: 2, scope: !1260, file: !3, line: 412, type: !76)
!1266 = !DILocation(line: 412, column: 16, scope: !1260)
!1267 = !DILocation(line: 412, column: 31, scope: !1260)
!1268 = !DILocation(line: 413, column: 28, scope: !1260)
!1269 = !DILocation(line: 413, column: 12, scope: !1260)
!1270 = !DILocation(line: 413, column: 5, scope: !1260)
!1271 = distinct !DISubprogram(name: "sdscatsds", scope: !3, file: !3, line: 420, type: !1272, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!110, !110, !394}
!1274 = !{!1275, !1276}
!1275 = !DILocalVariable(name: "s", arg: 1, scope: !1271, file: !3, line: 420, type: !110)
!1276 = !DILocalVariable(name: "t", arg: 2, scope: !1271, file: !3, line: 420, type: !394)
!1277 = !DILocation(line: 420, column: 19, scope: !1271)
!1278 = !DILocation(line: 420, column: 32, scope: !1271)
!1279 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 421, column: 28, scope: !1271)
!1281 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !1280)
!1282 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1280)
!1283 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1280)
!1284 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1280)
!1285 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1280)
!1286 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1280)
!1287 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1280)
!1288 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1280)
!1289 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1280)
!1290 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1280)
!1291 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1280)
!1292 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1280)
!1293 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1280)
!1294 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1280)
!1295 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1280)
!1296 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1280)
!1297 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1280)
!1298 = !DILocation(line: 0, scope: !410, inlinedAt: !1280)
!1299 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1280)
!1300 = !DILocation(line: 421, column: 12, scope: !1271)
!1301 = !DILocation(line: 421, column: 5, scope: !1271)
!1302 = distinct !DISubprogram(name: "sdscpylen", scope: !3, file: !3, line: 426, type: !1303, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!110, !110, !76, !113}
!1305 = !{!1306, !1307, !1308}
!1306 = !DILocalVariable(name: "s", arg: 1, scope: !1302, file: !3, line: 426, type: !110)
!1307 = !DILocalVariable(name: "t", arg: 2, scope: !1302, file: !3, line: 426, type: !76)
!1308 = !DILocalVariable(name: "len", arg: 3, scope: !1302, file: !3, line: 426, type: !113)
!1309 = !DILocation(line: 426, column: 19, scope: !1302)
!1310 = !DILocation(line: 426, column: 34, scope: !1302)
!1311 = !DILocation(line: 426, column: 44, scope: !1302)
!1312 = !DILocation(line: 180, column: 41, scope: !1016, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 427, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 427, column: 9)
!1315 = !DILocation(line: 181, column: 27, scope: !1016, inlinedAt: !1313)
!1316 = !DILocation(line: 181, column: 19, scope: !1016, inlinedAt: !1313)
!1317 = !DILocation(line: 182, column: 5, scope: !1016, inlinedAt: !1313)
!1318 = !DILocation(line: 184, column: 20, scope: !1025, inlinedAt: !1313)
!1319 = !DILocation(line: 184, column: 13, scope: !1025, inlinedAt: !1313)
!1320 = !DILocation(line: 186, column: 34, scope: !1025, inlinedAt: !1313)
!1321 = !DILocation(line: 186, column: 20, scope: !1025, inlinedAt: !1313)
!1322 = !DILocation(line: 186, column: 13, scope: !1025, inlinedAt: !1313)
!1323 = !DILocation(line: 188, column: 35, scope: !1025, inlinedAt: !1313)
!1324 = !DILocation(line: 188, column: 20, scope: !1025, inlinedAt: !1313)
!1325 = !DILocation(line: 188, column: 13, scope: !1025, inlinedAt: !1313)
!1326 = !DILocation(line: 190, column: 35, scope: !1025, inlinedAt: !1313)
!1327 = !DILocation(line: 190, column: 20, scope: !1025, inlinedAt: !1313)
!1328 = !DILocation(line: 190, column: 13, scope: !1025, inlinedAt: !1313)
!1329 = !DILocation(line: 192, column: 35, scope: !1025, inlinedAt: !1313)
!1330 = !DILocation(line: 192, column: 13, scope: !1025, inlinedAt: !1313)
!1331 = !DILocation(line: 0, scope: !1025, inlinedAt: !1313)
!1332 = !DILocation(line: 195, column: 1, scope: !1016, inlinedAt: !1313)
!1333 = !DILocation(line: 427, column: 21, scope: !1314)
!1334 = !DILocation(line: 427, column: 9, scope: !1302)
!1335 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 428, column: 34, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 427, column: 28)
!1338 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1336)
!1339 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1336)
!1340 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1336)
!1341 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1336)
!1342 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1336)
!1343 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1336)
!1344 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1336)
!1345 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1336)
!1346 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1336)
!1347 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1336)
!1348 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1336)
!1349 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1336)
!1350 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1336)
!1351 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1336)
!1352 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1336)
!1353 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1336)
!1354 = !DILocation(line: 0, scope: !410, inlinedAt: !1336)
!1355 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1336)
!1356 = !DILocation(line: 428, column: 33, scope: !1337)
!1357 = !DILocation(line: 428, column: 13, scope: !1337)
!1358 = !DILocation(line: 429, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 429, column: 13)
!1360 = !DILocation(line: 429, column: 13, scope: !1337)
!1361 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 433, column: 5, scope: !1302)
!1363 = !DILocation(line: 431, column: 5, scope: !1302)
!1364 = !DILocation(line: 432, column: 5, scope: !1302)
!1365 = !DILocation(line: 432, column: 12, scope: !1302)
!1366 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !1362)
!1367 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !1362)
!1368 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !1362)
!1369 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !1362)
!1370 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !1362)
!1371 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !1362)
!1372 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !1362)
!1373 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !1362)
!1374 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !1362)
!1375 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !1362)
!1376 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !1362)
!1377 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !1362)
!1378 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !1362)
!1379 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !1362)
!1380 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !1362)
!1381 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !1362)
!1382 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !1362)
!1383 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !1362)
!1384 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !1362)
!1385 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !1362)
!1386 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !1362)
!1387 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !1362)
!1388 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !1362)
!1389 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !1362)
!1390 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !1362)
!1391 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !1362)
!1392 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !1362)
!1393 = !DILocation(line: 434, column: 5, scope: !1302)
!1394 = !DILocation(line: 0, scope: !1302)
!1395 = !DILocation(line: 435, column: 1, scope: !1302)
!1396 = distinct !DISubprogram(name: "sdscpy", scope: !3, file: !3, line: 439, type: !1261, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1397)
!1397 = !{!1398, !1399}
!1398 = !DILocalVariable(name: "s", arg: 1, scope: !1396, file: !3, line: 439, type: !110)
!1399 = !DILocalVariable(name: "t", arg: 2, scope: !1396, file: !3, line: 439, type: !76)
!1400 = !DILocation(line: 439, column: 16, scope: !1396)
!1401 = !DILocation(line: 439, column: 31, scope: !1396)
!1402 = !DILocation(line: 440, column: 28, scope: !1396)
!1403 = !DILocation(line: 440, column: 12, scope: !1396)
!1404 = !DILocation(line: 440, column: 5, scope: !1396)
!1405 = distinct !DISubprogram(name: "sdsll2str", scope: !3, file: !3, line: 450, type: !1406, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1409)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!29, !15, !1408}
!1408 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1416}
!1410 = !DILocalVariable(name: "s", arg: 1, scope: !1405, file: !3, line: 450, type: !15)
!1411 = !DILocalVariable(name: "value", arg: 2, scope: !1405, file: !3, line: 450, type: !1408)
!1412 = !DILocalVariable(name: "p", scope: !1405, file: !3, line: 451, type: !15)
!1413 = !DILocalVariable(name: "aux", scope: !1405, file: !3, line: 451, type: !16)
!1414 = !DILocalVariable(name: "v", scope: !1405, file: !3, line: 452, type: !1415)
!1415 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1416 = !DILocalVariable(name: "l", scope: !1405, file: !3, line: 453, type: !113)
!1417 = !DILocation(line: 450, column: 21, scope: !1405)
!1418 = !DILocation(line: 450, column: 34, scope: !1405)
!1419 = !DILocation(line: 457, column: 16, scope: !1405)
!1420 = !DILocation(line: 457, column: 23, scope: !1405)
!1421 = !DILocation(line: 457, column: 9, scope: !1405)
!1422 = !DILocation(line: 452, column: 24, scope: !1405)
!1423 = !DILocation(line: 451, column: 11, scope: !1405)
!1424 = !DILocation(line: 459, column: 5, scope: !1405)
!1425 = !DILocation(line: 0, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 459, column: 8)
!1427 = !DILocation(line: 460, column: 22, scope: !1426)
!1428 = !DILocation(line: 460, column: 16, scope: !1426)
!1429 = !DILocation(line: 460, column: 11, scope: !1426)
!1430 = !DILocation(line: 460, column: 14, scope: !1426)
!1431 = !DILocation(line: 461, column: 11, scope: !1426)
!1432 = !DILocation(line: 462, column: 5, scope: !1426)
!1433 = distinct !{!1433, !1424, !1434}
!1434 = !DILocation(line: 462, column: 14, scope: !1405)
!1435 = !DILocation(line: 463, column: 9, scope: !1405)
!1436 = !DILocation(line: 463, column: 22, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 463, column: 9)
!1438 = !DILocation(line: 463, column: 25, scope: !1437)
!1439 = !DILocation(line: 463, column: 20, scope: !1437)
!1440 = !DILocation(line: 466, column: 10, scope: !1405)
!1441 = !DILocation(line: 453, column: 12, scope: !1405)
!1442 = !DILocation(line: 467, column: 8, scope: !1405)
!1443 = !DILocation(line: 0, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 471, column: 18)
!1445 = !DILocation(line: 471, column: 13, scope: !1405)
!1446 = !DILocation(line: 471, column: 5, scope: !1405)
!1447 = !DILocation(line: 472, column: 15, scope: !1444)
!1448 = !DILocation(line: 451, column: 14, scope: !1405)
!1449 = !DILocation(line: 473, column: 14, scope: !1444)
!1450 = !DILocation(line: 473, column: 12, scope: !1444)
!1451 = !DILocation(line: 474, column: 12, scope: !1444)
!1452 = !DILocation(line: 475, column: 10, scope: !1444)
!1453 = distinct !{!1453, !1446, !1454}
!1454 = !DILocation(line: 477, column: 5, scope: !1405)
!1455 = !DILocation(line: 478, column: 12, scope: !1405)
!1456 = !DILocation(line: 478, column: 5, scope: !1405)
!1457 = distinct !DISubprogram(name: "sdsull2str", scope: !3, file: !3, line: 482, type: !1458, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!29, !15, !1415}
!1460 = !{!1461, !1462, !1463, !1464, !1465}
!1461 = !DILocalVariable(name: "s", arg: 1, scope: !1457, file: !3, line: 482, type: !15)
!1462 = !DILocalVariable(name: "v", arg: 2, scope: !1457, file: !3, line: 482, type: !1415)
!1463 = !DILocalVariable(name: "p", scope: !1457, file: !3, line: 483, type: !15)
!1464 = !DILocalVariable(name: "aux", scope: !1457, file: !3, line: 483, type: !16)
!1465 = !DILocalVariable(name: "l", scope: !1457, file: !3, line: 484, type: !113)
!1466 = !DILocation(line: 482, column: 22, scope: !1457)
!1467 = !DILocation(line: 482, column: 44, scope: !1457)
!1468 = !DILocation(line: 483, column: 11, scope: !1457)
!1469 = !DILocation(line: 489, column: 5, scope: !1457)
!1470 = !DILocation(line: 490, column: 22, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 489, column: 8)
!1472 = !DILocation(line: 490, column: 16, scope: !1471)
!1473 = !DILocation(line: 490, column: 11, scope: !1471)
!1474 = !DILocation(line: 490, column: 14, scope: !1471)
!1475 = !DILocation(line: 491, column: 11, scope: !1471)
!1476 = !DILocation(line: 492, column: 5, scope: !1471)
!1477 = distinct !{!1477, !1469, !1478}
!1478 = !DILocation(line: 492, column: 14, scope: !1457)
!1479 = !DILocation(line: 484, column: 12, scope: !1457)
!1480 = !DILocation(line: 496, column: 8, scope: !1457)
!1481 = !DILocation(line: 500, column: 13, scope: !1457)
!1482 = !DILocation(line: 500, column: 5, scope: !1457)
!1483 = !DILocation(line: 501, column: 15, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 500, column: 18)
!1485 = !DILocation(line: 483, column: 14, scope: !1457)
!1486 = !DILocation(line: 502, column: 12, scope: !1484)
!1487 = !DILocation(line: 503, column: 12, scope: !1484)
!1488 = distinct !{!1488, !1482, !1489}
!1489 = !DILocation(line: 506, column: 5, scope: !1457)
!1490 = !DILocation(line: 505, column: 10, scope: !1484)
!1491 = !DILocation(line: 504, column: 10, scope: !1484)
!1492 = !DILocation(line: 502, column: 14, scope: !1484)
!1493 = !DILocation(line: 507, column: 12, scope: !1457)
!1494 = !DILocation(line: 507, column: 5, scope: !1457)
!1495 = distinct !DISubprogram(name: "sdsfromlonglong", scope: !3, file: !3, line: 514, type: !1496, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!110, !1408}
!1498 = !{!1499, !1500, !1504}
!1499 = !DILocalVariable(name: "value", arg: 1, scope: !1495, file: !3, line: 514, type: !1408)
!1500 = !DILocalVariable(name: "buf", scope: !1495, file: !3, line: 515, type: !1501)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 168, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 21)
!1504 = !DILocalVariable(name: "len", scope: !1495, file: !3, line: 516, type: !29)
!1505 = !DILocation(line: 514, column: 31, scope: !1495)
!1506 = !DILocation(line: 515, column: 5, scope: !1495)
!1507 = !DILocation(line: 515, column: 10, scope: !1495)
!1508 = !DILocation(line: 450, column: 21, scope: !1405, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 516, column: 15, scope: !1495)
!1510 = !DILocation(line: 450, column: 34, scope: !1405, inlinedAt: !1509)
!1511 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1509)
!1512 = !DILocation(line: 457, column: 23, scope: !1405, inlinedAt: !1509)
!1513 = !DILocation(line: 457, column: 9, scope: !1405, inlinedAt: !1509)
!1514 = !DILocation(line: 452, column: 24, scope: !1405, inlinedAt: !1509)
!1515 = !DILocation(line: 451, column: 11, scope: !1405, inlinedAt: !1509)
!1516 = !DILocation(line: 459, column: 5, scope: !1405, inlinedAt: !1509)
!1517 = !DILocation(line: 0, scope: !1426, inlinedAt: !1509)
!1518 = !DILocation(line: 460, column: 22, scope: !1426, inlinedAt: !1509)
!1519 = !DILocation(line: 460, column: 16, scope: !1426, inlinedAt: !1509)
!1520 = !DILocation(line: 460, column: 11, scope: !1426, inlinedAt: !1509)
!1521 = !DILocation(line: 460, column: 14, scope: !1426, inlinedAt: !1509)
!1522 = !DILocation(line: 461, column: 11, scope: !1426, inlinedAt: !1509)
!1523 = !DILocation(line: 462, column: 5, scope: !1426, inlinedAt: !1509)
!1524 = !DILocation(line: 463, column: 9, scope: !1405, inlinedAt: !1509)
!1525 = !DILocation(line: 463, column: 22, scope: !1437, inlinedAt: !1509)
!1526 = !DILocation(line: 463, column: 25, scope: !1437, inlinedAt: !1509)
!1527 = !DILocation(line: 463, column: 20, scope: !1437, inlinedAt: !1509)
!1528 = !DILocation(line: 453, column: 12, scope: !1405, inlinedAt: !1509)
!1529 = !DILocation(line: 467, column: 8, scope: !1405, inlinedAt: !1509)
!1530 = !DILocation(line: 471, column: 13, scope: !1405, inlinedAt: !1509)
!1531 = !DILocation(line: 471, column: 5, scope: !1405, inlinedAt: !1509)
!1532 = !DILocation(line: 0, scope: !1444, inlinedAt: !1509)
!1533 = !DILocation(line: 472, column: 15, scope: !1444, inlinedAt: !1509)
!1534 = !DILocation(line: 451, column: 14, scope: !1405, inlinedAt: !1509)
!1535 = !DILocation(line: 473, column: 12, scope: !1444, inlinedAt: !1509)
!1536 = !DILocation(line: 474, column: 12, scope: !1444, inlinedAt: !1509)
!1537 = !DILocation(line: 475, column: 10, scope: !1444, inlinedAt: !1509)
!1538 = !DILocation(line: 473, column: 14, scope: !1444, inlinedAt: !1509)
!1539 = !DILocation(line: 478, column: 5, scope: !1405, inlinedAt: !1509)
!1540 = !DILocation(line: 518, column: 26, scope: !1495)
!1541 = !DILocation(line: 518, column: 12, scope: !1495)
!1542 = !DILocation(line: 519, column: 1, scope: !1495)
!1543 = !DILocation(line: 518, column: 5, scope: !1495)
!1544 = distinct !DISubprogram(name: "sdscatvprintf", scope: !3, file: !3, line: 522, type: !1545, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1548)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!110, !110, !76, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1557, !1558, !1559}
!1549 = !DILocalVariable(name: "s", arg: 1, scope: !1544, file: !3, line: 522, type: !110)
!1550 = !DILocalVariable(name: "fmt", arg: 2, scope: !1544, file: !3, line: 522, type: !76)
!1551 = !DILocalVariable(name: "ap", arg: 3, scope: !1544, file: !3, line: 522, type: !1547)
!1552 = !DILocalVariable(name: "cpy", scope: !1544, file: !3, line: 523, type: !81)
!1553 = !DILocalVariable(name: "staticbuf", scope: !1544, file: !3, line: 524, type: !1554)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 1024)
!1557 = !DILocalVariable(name: "buf", scope: !1544, file: !3, line: 524, type: !15)
!1558 = !DILocalVariable(name: "t", scope: !1544, file: !3, line: 524, type: !15)
!1559 = !DILocalVariable(name: "buflen", scope: !1544, file: !3, line: 525, type: !113)
!1560 = !DILocation(line: 522, column: 23, scope: !1544)
!1561 = !DILocation(line: 522, column: 38, scope: !1544)
!1562 = !DILocation(line: 522, column: 51, scope: !1544)
!1563 = !DILocation(line: 523, column: 5, scope: !1544)
!1564 = !DILocation(line: 523, column: 13, scope: !1544)
!1565 = !DILocation(line: 524, column: 5, scope: !1544)
!1566 = !DILocation(line: 524, column: 10, scope: !1544)
!1567 = !DILocation(line: 524, column: 28, scope: !1544)
!1568 = !DILocation(line: 525, column: 21, scope: !1544)
!1569 = !DILocation(line: 525, column: 32, scope: !1544)
!1570 = !DILocation(line: 525, column: 12, scope: !1544)
!1571 = !DILocation(line: 529, column: 16, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 529, column: 9)
!1573 = !DILocation(line: 529, column: 9, scope: !1544)
!1574 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 530, column: 15, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 529, column: 37)
!1577 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !1575)
!1578 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !1575)
!1580 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !1579)
!1581 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !1579)
!1582 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !1579)
!1583 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !1579)
!1584 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !1579)
!1585 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !1579)
!1586 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !1575)
!1587 = !DILocation(line: 531, column: 13, scope: !1576)
!1588 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !1579)
!1590 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !1589)
!1591 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !1589)
!1592 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !1589)
!1593 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !1589)
!1594 = !DILocation(line: 531, column: 17, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 531, column: 13)
!1596 = !DILocation(line: 0, scope: !1544)
!1597 = !DILocation(line: 0, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 532, column: 12)
!1599 = !DILocation(line: 538, column: 5, scope: !1544)
!1600 = !DILocation(line: 0, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 543, column: 36)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 543, column: 13)
!1603 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 538, column: 14)
!1604 = !DILocation(line: 539, column: 19, scope: !1603)
!1605 = !DILocation(line: 539, column: 9, scope: !1603)
!1606 = !DILocation(line: 539, column: 23, scope: !1603)
!1607 = !DILocation(line: 540, column: 9, scope: !1603)
!1608 = !DILocation(line: 541, column: 9, scope: !1603)
!1609 = !DILocation(line: 542, column: 9, scope: !1603)
!1610 = !DILocation(line: 543, column: 13, scope: !1602)
!1611 = !DILocation(line: 543, column: 27, scope: !1602)
!1612 = !DILocation(line: 543, column: 13, scope: !1603)
!1613 = !DILocation(line: 544, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 544, column: 17)
!1615 = !DILocation(line: 544, column: 17, scope: !1601)
!1616 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 544, column: 35, scope: !1614)
!1618 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !1617)
!1619 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !1617)
!1621 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !1620)
!1622 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !1620)
!1624 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !1623)
!1625 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !1623)
!1626 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !1623)
!1627 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !1623)
!1628 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !1623)
!1629 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !1623)
!1630 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !1623)
!1631 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !1620)
!1632 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !1617)
!1633 = !DILocation(line: 544, column: 35, scope: !1614)
!1634 = !DILocation(line: 545, column: 20, scope: !1601)
!1635 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 546, column: 19, scope: !1601)
!1637 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !1636)
!1638 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !1636)
!1640 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !1639)
!1641 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !1639)
!1642 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !1639)
!1643 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !1639)
!1644 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !1639)
!1645 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !1639)
!1646 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !1636)
!1647 = !DILocation(line: 547, column: 17, scope: !1601)
!1648 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !1639)
!1650 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !1649)
!1651 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !1649)
!1652 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !1649)
!1653 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !1649)
!1654 = !DILocation(line: 547, column: 21, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 547, column: 17)
!1656 = distinct !{!1656, !1599, !1657}
!1657 = !DILocation(line: 551, column: 5, scope: !1544)
!1658 = !DILocation(line: 412, column: 16, scope: !1260, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 554, column: 9, scope: !1544)
!1660 = !DILocation(line: 412, column: 31, scope: !1260, inlinedAt: !1659)
!1661 = !DILocation(line: 413, column: 28, scope: !1260, inlinedAt: !1659)
!1662 = !DILocation(line: 413, column: 12, scope: !1260, inlinedAt: !1659)
!1663 = !DILocation(line: 413, column: 5, scope: !1260, inlinedAt: !1659)
!1664 = !DILocation(line: 524, column: 46, scope: !1544)
!1665 = !DILocation(line: 555, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 555, column: 9)
!1667 = !DILocation(line: 555, column: 9, scope: !1544)
!1668 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 555, column: 27, scope: !1666)
!1670 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !1669)
!1671 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !1669)
!1673 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !1672)
!1674 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !1672)
!1676 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !1675)
!1677 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !1675)
!1678 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !1675)
!1679 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !1675)
!1680 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !1675)
!1681 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !1675)
!1682 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !1675)
!1683 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !1672)
!1684 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !1669)
!1685 = !DILocation(line: 555, column: 27, scope: !1666)
!1686 = !DILocation(line: 557, column: 1, scope: !1544)
!1687 = distinct !DISubprogram(name: "sdscatprintf", scope: !3, file: !3, line: 575, type: !1688, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!110, !110, !76, null}
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DILocalVariable(name: "s", arg: 1, scope: !1687, file: !3, line: 575, type: !110)
!1692 = !DILocalVariable(name: "fmt", arg: 2, scope: !1687, file: !3, line: 575, type: !76)
!1693 = !DILocalVariable(name: "ap", scope: !1687, file: !3, line: 576, type: !81)
!1694 = !DILocalVariable(name: "t", scope: !1687, file: !3, line: 577, type: !15)
!1695 = !DILocation(line: 575, column: 22, scope: !1687)
!1696 = !DILocation(line: 575, column: 37, scope: !1687)
!1697 = !DILocation(line: 576, column: 5, scope: !1687)
!1698 = !DILocation(line: 576, column: 13, scope: !1687)
!1699 = !DILocation(line: 578, column: 5, scope: !1687)
!1700 = !DILocation(line: 579, column: 9, scope: !1687)
!1701 = !DILocation(line: 577, column: 11, scope: !1687)
!1702 = !DILocation(line: 580, column: 5, scope: !1687)
!1703 = !DILocation(line: 582, column: 1, scope: !1687)
!1704 = !DILocation(line: 581, column: 5, scope: !1687)
!1705 = distinct !DISubprogram(name: "sdscatfmt", scope: !3, file: !3, line: 600, type: !1688, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1715, !1716, !1717, !1718, !1719, !1723}
!1707 = !DILocalVariable(name: "s", arg: 1, scope: !1705, file: !3, line: 600, type: !110)
!1708 = !DILocalVariable(name: "fmt", arg: 2, scope: !1705, file: !3, line: 600, type: !76)
!1709 = !DILocalVariable(name: "initlen", scope: !1705, file: !3, line: 601, type: !113)
!1710 = !DILocalVariable(name: "f", scope: !1705, file: !3, line: 602, type: !76)
!1711 = !DILocalVariable(name: "i", scope: !1705, file: !3, line: 603, type: !28)
!1712 = !DILocalVariable(name: "ap", scope: !1705, file: !3, line: 604, type: !81)
!1713 = !DILocalVariable(name: "next", scope: !1714, file: !3, line: 610, type: !16)
!1714 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 609, column: 15)
!1715 = !DILocalVariable(name: "str", scope: !1714, file: !3, line: 610, type: !15)
!1716 = !DILocalVariable(name: "l", scope: !1714, file: !3, line: 611, type: !113)
!1717 = !DILocalVariable(name: "num", scope: !1714, file: !3, line: 612, type: !1408)
!1718 = !DILocalVariable(name: "unum", scope: !1714, file: !3, line: 613, type: !1415)
!1719 = !DILocalVariable(name: "buf", scope: !1720, file: !3, line: 643, type: !1501)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 642, column: 17)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 624, column: 26)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 620, column: 20)
!1723 = !DILocalVariable(name: "buf", scope: !1724, file: !3, line: 660, type: !1501)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 659, column: 17)
!1725 = !DILocation(line: 600, column: 19, scope: !1705)
!1726 = !DILocation(line: 600, column: 34, scope: !1705)
!1727 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 601, column: 22, scope: !1705)
!1729 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !1728)
!1730 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1728)
!1731 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1728)
!1732 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1728)
!1733 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1728)
!1734 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1728)
!1735 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1728)
!1736 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1728)
!1737 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1728)
!1738 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1728)
!1739 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1728)
!1740 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1728)
!1741 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1728)
!1742 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1728)
!1743 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1728)
!1744 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1728)
!1745 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1728)
!1746 = !DILocation(line: 0, scope: !410, inlinedAt: !1728)
!1747 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1728)
!1748 = !DILocation(line: 601, column: 12, scope: !1705)
!1749 = !DILocation(line: 602, column: 17, scope: !1705)
!1750 = !DILocation(line: 604, column: 5, scope: !1705)
!1751 = !DILocation(line: 604, column: 13, scope: !1705)
!1752 = !DILocation(line: 606, column: 5, scope: !1705)
!1753 = !DILocation(line: 603, column: 10, scope: !1705)
!1754 = !DILocation(line: 609, column: 11, scope: !1705)
!1755 = !DILocation(line: 609, column: 5, scope: !1705)
!1756 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 616, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 616, column: 13)
!1759 = !DILocation(line: 105, column: 27, scope: !572, inlinedAt: !1757)
!1760 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !1757)
!1761 = !DILocation(line: 106, column: 5, scope: !572, inlinedAt: !1757)
!1762 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !1757)
!1763 = !DILocation(line: 616, column: 13, scope: !1714)
!1764 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !1757)
!1765 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !1757)
!1766 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !1757)
!1767 = !DILocation(line: 112, column: 36, scope: !576, inlinedAt: !1757)
!1768 = !DILocation(line: 112, column: 32, scope: !576, inlinedAt: !1757)
!1769 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !1757)
!1770 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !1757)
!1771 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !1757)
!1772 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !1757)
!1773 = !DILocation(line: 116, column: 36, scope: !579, inlinedAt: !1757)
!1774 = !DILocation(line: 116, column: 32, scope: !579, inlinedAt: !1757)
!1775 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !1757)
!1776 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !1757)
!1777 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !1757)
!1778 = !DILocation(line: 120, column: 36, scope: !581, inlinedAt: !1757)
!1779 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !1757)
!1780 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !1757)
!1781 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !1757)
!1782 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !1757)
!1783 = !DILocation(line: 124, column: 36, scope: !583, inlinedAt: !1757)
!1784 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !1757)
!1785 = !DILocation(line: 0, scope: !611, inlinedAt: !1757)
!1786 = !DILocation(line: 616, column: 24, scope: !1758)
!1787 = !DILocation(line: 617, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 616, column: 29)
!1789 = !DILocation(line: 620, column: 16, scope: !1714)
!1790 = !DILocation(line: 618, column: 9, scope: !1788)
!1791 = !DILocation(line: 620, column: 9, scope: !1714)
!1792 = !DILocation(line: 622, column: 23, scope: !1722)
!1793 = !DILocation(line: 622, column: 20, scope: !1722)
!1794 = !DILocation(line: 610, column: 14, scope: !1714)
!1795 = !DILocation(line: 624, column: 20, scope: !1722)
!1796 = !DILocation(line: 624, column: 13, scope: !1722)
!1797 = !DILocation(line: 627, column: 23, scope: !1721)
!1798 = !DILocation(line: 610, column: 21, scope: !1714)
!1799 = !DILocation(line: 628, column: 27, scope: !1721)
!1800 = !DILocation(line: 628, column: 21, scope: !1721)
!1801 = !DILocation(line: 628, column: 37, scope: !1721)
!1802 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 628, column: 51, scope: !1721)
!1804 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !1803)
!1805 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !1803)
!1806 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !1803)
!1807 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !1803)
!1808 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !1803)
!1809 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !1803)
!1810 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !1803)
!1811 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !1803)
!1812 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !1803)
!1813 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !1803)
!1814 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !1803)
!1815 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !1803)
!1816 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !1803)
!1817 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !1803)
!1818 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !1803)
!1819 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !1803)
!1820 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !1803)
!1821 = !DILocation(line: 0, scope: !410, inlinedAt: !1803)
!1822 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !1803)
!1823 = !DILocation(line: 611, column: 16, scope: !1714)
!1824 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 629, column: 21, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 629, column: 21)
!1827 = !DILocation(line: 105, column: 27, scope: !572, inlinedAt: !1825)
!1828 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !1825)
!1829 = !DILocation(line: 106, column: 5, scope: !572, inlinedAt: !1825)
!1830 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !1825)
!1831 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !1825)
!1832 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !1825)
!1833 = !DILocation(line: 112, column: 36, scope: !576, inlinedAt: !1825)
!1834 = !DILocation(line: 112, column: 32, scope: !576, inlinedAt: !1825)
!1835 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !1825)
!1836 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !1825)
!1837 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !1825)
!1838 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !1825)
!1839 = !DILocation(line: 116, column: 36, scope: !579, inlinedAt: !1825)
!1840 = !DILocation(line: 116, column: 32, scope: !579, inlinedAt: !1825)
!1841 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !1825)
!1842 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !1825)
!1843 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !1825)
!1844 = !DILocation(line: 120, column: 36, scope: !581, inlinedAt: !1825)
!1845 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !1825)
!1846 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !1825)
!1847 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !1825)
!1848 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !1825)
!1849 = !DILocation(line: 124, column: 36, scope: !583, inlinedAt: !1825)
!1850 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !1825)
!1851 = !DILocation(line: 0, scope: !611, inlinedAt: !1825)
!1852 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !1825)
!1853 = !DILocation(line: 629, column: 33, scope: !1826)
!1854 = !DILocation(line: 629, column: 21, scope: !1721)
!1855 = !DILocation(line: 630, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 629, column: 38)
!1857 = !DILocation(line: 155, column: 27, scope: !1858, inlinedAt: !1867)
!1858 = distinct !DISubprogram(name: "sdsinclen", scope: !32, file: !32, line: 154, type: !486, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1866}
!1860 = !DILocalVariable(name: "s", arg: 1, scope: !1858, file: !32, line: 154, type: !110)
!1861 = !DILocalVariable(name: "inc", arg: 2, scope: !1858, file: !32, line: 154, type: !113)
!1862 = !DILocalVariable(name: "flags", scope: !1858, file: !32, line: 155, type: !18)
!1863 = !DILocalVariable(name: "fp", scope: !1864, file: !32, line: 159, type: !17)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !32, line: 158, column: 13)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !32, line: 156, column: 33)
!1866 = !DILocalVariable(name: "newlen", scope: !1864, file: !32, line: 160, type: !18)
!1867 = distinct !DILocation(line: 633, column: 17, scope: !1721)
!1868 = !DILocation(line: 631, column: 17, scope: !1856)
!1869 = !DILocation(line: 0, scope: !1788)
!1870 = !DILocation(line: 632, column: 25, scope: !1721)
!1871 = !DILocation(line: 632, column: 17, scope: !1721)
!1872 = !DILocation(line: 154, column: 34, scope: !1858, inlinedAt: !1867)
!1873 = !DILocation(line: 154, column: 44, scope: !1858, inlinedAt: !1867)
!1874 = !DILocation(line: 155, column: 19, scope: !1858, inlinedAt: !1867)
!1875 = !DILocation(line: 156, column: 5, scope: !1858, inlinedAt: !1867)
!1876 = !DILocation(line: 159, column: 32, scope: !1864, inlinedAt: !1867)
!1877 = !DILocation(line: 160, column: 40, scope: !1864, inlinedAt: !1867)
!1878 = !DILocation(line: 161, column: 44, scope: !1864, inlinedAt: !1867)
!1879 = !DILocation(line: 161, column: 21, scope: !1864, inlinedAt: !1867)
!1880 = !DILocation(line: 163, column: 13, scope: !1865, inlinedAt: !1867)
!1881 = !DILocation(line: 165, column: 13, scope: !1865, inlinedAt: !1867)
!1882 = !DILocation(line: 165, column: 31, scope: !1865, inlinedAt: !1867)
!1883 = !DILocation(line: 166, column: 13, scope: !1865, inlinedAt: !1867)
!1884 = !DILocation(line: 168, column: 13, scope: !1865, inlinedAt: !1867)
!1885 = !DILocation(line: 168, column: 28, scope: !1865, inlinedAt: !1867)
!1886 = !DILocation(line: 168, column: 32, scope: !1865, inlinedAt: !1867)
!1887 = !DILocation(line: 169, column: 13, scope: !1865, inlinedAt: !1867)
!1888 = !DILocation(line: 171, column: 13, scope: !1865, inlinedAt: !1867)
!1889 = !DILocation(line: 171, column: 28, scope: !1865, inlinedAt: !1867)
!1890 = !DILocation(line: 171, column: 32, scope: !1865, inlinedAt: !1867)
!1891 = !DILocation(line: 172, column: 13, scope: !1865, inlinedAt: !1867)
!1892 = !DILocation(line: 174, column: 13, scope: !1865, inlinedAt: !1867)
!1893 = !DILocation(line: 174, column: 28, scope: !1865, inlinedAt: !1867)
!1894 = !DILocation(line: 174, column: 32, scope: !1865, inlinedAt: !1867)
!1895 = !DILocation(line: 175, column: 13, scope: !1865, inlinedAt: !1867)
!1896 = !DILocation(line: 177, column: 1, scope: !1858, inlinedAt: !1867)
!1897 = !DILocation(line: 634, column: 19, scope: !1721)
!1898 = !DILocation(line: 635, column: 17, scope: !1721)
!1899 = !DILocation(line: 638, column: 26, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 638, column: 21)
!1901 = !DILocation(line: 0, scope: !1900)
!1902 = !DILocation(line: 638, column: 21, scope: !1721)
!1903 = !DILocation(line: 639, column: 27, scope: !1900)
!1904 = !DILocation(line: 612, column: 19, scope: !1714)
!1905 = !DILocation(line: 639, column: 21, scope: !1900)
!1906 = !DILocation(line: 641, column: 27, scope: !1900)
!1907 = !DILocation(line: 643, column: 21, scope: !1720)
!1908 = !DILocation(line: 643, column: 26, scope: !1720)
!1909 = !DILocation(line: 450, column: 21, scope: !1405, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 644, column: 25, scope: !1720)
!1911 = !DILocation(line: 450, column: 34, scope: !1405, inlinedAt: !1910)
!1912 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1910)
!1913 = !DILocation(line: 457, column: 23, scope: !1405, inlinedAt: !1910)
!1914 = !DILocation(line: 457, column: 9, scope: !1405, inlinedAt: !1910)
!1915 = !DILocation(line: 452, column: 24, scope: !1405, inlinedAt: !1910)
!1916 = !DILocation(line: 451, column: 11, scope: !1405, inlinedAt: !1910)
!1917 = !DILocation(line: 459, column: 5, scope: !1405, inlinedAt: !1910)
!1918 = !DILocation(line: 0, scope: !1426, inlinedAt: !1910)
!1919 = !DILocation(line: 460, column: 22, scope: !1426, inlinedAt: !1910)
!1920 = !DILocation(line: 460, column: 16, scope: !1426, inlinedAt: !1910)
!1921 = !DILocation(line: 460, column: 11, scope: !1426, inlinedAt: !1910)
!1922 = !DILocation(line: 460, column: 14, scope: !1426, inlinedAt: !1910)
!1923 = !DILocation(line: 461, column: 11, scope: !1426, inlinedAt: !1910)
!1924 = !DILocation(line: 462, column: 5, scope: !1426, inlinedAt: !1910)
!1925 = !DILocation(line: 463, column: 9, scope: !1405, inlinedAt: !1910)
!1926 = !DILocation(line: 463, column: 22, scope: !1437, inlinedAt: !1910)
!1927 = !DILocation(line: 463, column: 25, scope: !1437, inlinedAt: !1910)
!1928 = !DILocation(line: 463, column: 20, scope: !1437, inlinedAt: !1910)
!1929 = !DILocation(line: 453, column: 12, scope: !1405, inlinedAt: !1910)
!1930 = !DILocation(line: 467, column: 8, scope: !1405, inlinedAt: !1910)
!1931 = !DILocation(line: 471, column: 13, scope: !1405, inlinedAt: !1910)
!1932 = !DILocation(line: 471, column: 5, scope: !1405, inlinedAt: !1910)
!1933 = !DILocation(line: 0, scope: !1444, inlinedAt: !1910)
!1934 = !DILocation(line: 472, column: 15, scope: !1444, inlinedAt: !1910)
!1935 = !DILocation(line: 451, column: 14, scope: !1405, inlinedAt: !1910)
!1936 = !DILocation(line: 473, column: 12, scope: !1444, inlinedAt: !1910)
!1937 = !DILocation(line: 474, column: 12, scope: !1444, inlinedAt: !1910)
!1938 = !DILocation(line: 473, column: 14, scope: !1444, inlinedAt: !1910)
!1939 = !DILocation(line: 475, column: 10, scope: !1444, inlinedAt: !1910)
!1940 = !DILocation(line: 478, column: 12, scope: !1405, inlinedAt: !1910)
!1941 = !DILocation(line: 478, column: 5, scope: !1405, inlinedAt: !1910)
!1942 = !DILocation(line: 644, column: 25, scope: !1720)
!1943 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 645, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 645, column: 25)
!1946 = !DILocation(line: 105, column: 27, scope: !572, inlinedAt: !1944)
!1947 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !1944)
!1948 = !DILocation(line: 106, column: 5, scope: !572, inlinedAt: !1944)
!1949 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !1944)
!1950 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !1944)
!1951 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !1944)
!1952 = !DILocation(line: 112, column: 36, scope: !576, inlinedAt: !1944)
!1953 = !DILocation(line: 112, column: 32, scope: !576, inlinedAt: !1944)
!1954 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !1944)
!1955 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !1944)
!1956 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !1944)
!1957 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !1944)
!1958 = !DILocation(line: 116, column: 36, scope: !579, inlinedAt: !1944)
!1959 = !DILocation(line: 116, column: 32, scope: !579, inlinedAt: !1944)
!1960 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !1944)
!1961 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !1944)
!1962 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !1944)
!1963 = !DILocation(line: 120, column: 36, scope: !581, inlinedAt: !1944)
!1964 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !1944)
!1965 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !1944)
!1966 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !1944)
!1967 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !1944)
!1968 = !DILocation(line: 124, column: 36, scope: !583, inlinedAt: !1944)
!1969 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !1944)
!1970 = !DILocation(line: 0, scope: !611, inlinedAt: !1944)
!1971 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !1944)
!1972 = !DILocation(line: 645, column: 37, scope: !1945)
!1973 = !DILocation(line: 645, column: 25, scope: !1720)
!1974 = !DILocation(line: 646, column: 29, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 645, column: 42)
!1976 = !DILocation(line: 155, column: 27, scope: !1858, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 649, column: 21, scope: !1720)
!1978 = !DILocation(line: 647, column: 21, scope: !1975)
!1979 = !DILocation(line: 648, column: 29, scope: !1720)
!1980 = !DILocation(line: 648, column: 21, scope: !1720)
!1981 = !DILocation(line: 154, column: 34, scope: !1858, inlinedAt: !1977)
!1982 = !DILocation(line: 154, column: 44, scope: !1858, inlinedAt: !1977)
!1983 = !DILocation(line: 155, column: 19, scope: !1858, inlinedAt: !1977)
!1984 = !DILocation(line: 156, column: 5, scope: !1858, inlinedAt: !1977)
!1985 = !DILocation(line: 159, column: 32, scope: !1864, inlinedAt: !1977)
!1986 = !DILocation(line: 161, column: 44, scope: !1864, inlinedAt: !1977)
!1987 = !DILocation(line: 161, column: 21, scope: !1864, inlinedAt: !1977)
!1988 = !DILocation(line: 163, column: 13, scope: !1865, inlinedAt: !1977)
!1989 = !DILocation(line: 165, column: 13, scope: !1865, inlinedAt: !1977)
!1990 = !DILocation(line: 165, column: 31, scope: !1865, inlinedAt: !1977)
!1991 = !DILocation(line: 166, column: 13, scope: !1865, inlinedAt: !1977)
!1992 = !DILocation(line: 168, column: 13, scope: !1865, inlinedAt: !1977)
!1993 = !DILocation(line: 168, column: 28, scope: !1865, inlinedAt: !1977)
!1994 = !DILocation(line: 168, column: 32, scope: !1865, inlinedAt: !1977)
!1995 = !DILocation(line: 169, column: 13, scope: !1865, inlinedAt: !1977)
!1996 = !DILocation(line: 171, column: 13, scope: !1865, inlinedAt: !1977)
!1997 = !DILocation(line: 171, column: 28, scope: !1865, inlinedAt: !1977)
!1998 = !DILocation(line: 171, column: 32, scope: !1865, inlinedAt: !1977)
!1999 = !DILocation(line: 172, column: 13, scope: !1865, inlinedAt: !1977)
!2000 = !DILocation(line: 174, column: 13, scope: !1865, inlinedAt: !1977)
!2001 = !DILocation(line: 174, column: 28, scope: !1865, inlinedAt: !1977)
!2002 = !DILocation(line: 174, column: 32, scope: !1865, inlinedAt: !1977)
!2003 = !DILocation(line: 175, column: 13, scope: !1865, inlinedAt: !1977)
!2004 = !DILocation(line: 177, column: 1, scope: !1858, inlinedAt: !1977)
!2005 = !DILocation(line: 650, column: 23, scope: !1720)
!2006 = !DILocation(line: 651, column: 17, scope: !1721)
!2007 = !DILocation(line: 652, column: 17, scope: !1721)
!2008 = !DILocation(line: 655, column: 26, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 655, column: 21)
!2010 = !DILocation(line: 0, scope: !2009)
!2011 = !DILocation(line: 655, column: 21, scope: !1721)
!2012 = !DILocation(line: 656, column: 28, scope: !2009)
!2013 = !DILocation(line: 613, column: 28, scope: !1714)
!2014 = !DILocation(line: 656, column: 21, scope: !2009)
!2015 = !DILocation(line: 658, column: 28, scope: !2009)
!2016 = !DILocation(line: 660, column: 21, scope: !1724)
!2017 = !DILocation(line: 660, column: 26, scope: !1724)
!2018 = !DILocation(line: 482, column: 22, scope: !1457, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 661, column: 25, scope: !1724)
!2020 = !DILocation(line: 482, column: 44, scope: !1457, inlinedAt: !2019)
!2021 = !DILocation(line: 483, column: 11, scope: !1457, inlinedAt: !2019)
!2022 = !DILocation(line: 489, column: 5, scope: !1457, inlinedAt: !2019)
!2023 = !DILocation(line: 490, column: 22, scope: !1471, inlinedAt: !2019)
!2024 = !DILocation(line: 490, column: 16, scope: !1471, inlinedAt: !2019)
!2025 = !DILocation(line: 490, column: 11, scope: !1471, inlinedAt: !2019)
!2026 = !DILocation(line: 490, column: 14, scope: !1471, inlinedAt: !2019)
!2027 = !DILocation(line: 491, column: 11, scope: !1471, inlinedAt: !2019)
!2028 = !DILocation(line: 492, column: 5, scope: !1471, inlinedAt: !2019)
!2029 = !DILocation(line: 484, column: 12, scope: !1457, inlinedAt: !2019)
!2030 = !DILocation(line: 496, column: 8, scope: !1457, inlinedAt: !2019)
!2031 = !DILocation(line: 500, column: 13, scope: !1457, inlinedAt: !2019)
!2032 = !DILocation(line: 500, column: 5, scope: !1457, inlinedAt: !2019)
!2033 = !DILocation(line: 501, column: 15, scope: !1484, inlinedAt: !2019)
!2034 = !DILocation(line: 483, column: 14, scope: !1457, inlinedAt: !2019)
!2035 = !DILocation(line: 502, column: 12, scope: !1484, inlinedAt: !2019)
!2036 = !DILocation(line: 503, column: 12, scope: !1484, inlinedAt: !2019)
!2037 = !DILocation(line: 505, column: 10, scope: !1484, inlinedAt: !2019)
!2038 = !DILocation(line: 502, column: 14, scope: !1484, inlinedAt: !2019)
!2039 = !DILocation(line: 504, column: 10, scope: !1484, inlinedAt: !2019)
!2040 = !DILocation(line: 507, column: 12, scope: !1457, inlinedAt: !2019)
!2041 = !DILocation(line: 507, column: 5, scope: !1457, inlinedAt: !2019)
!2042 = !DILocation(line: 661, column: 25, scope: !1724)
!2043 = !DILocation(line: 104, column: 41, scope: !572, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 662, column: 25, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 662, column: 25)
!2046 = !DILocation(line: 105, column: 27, scope: !572, inlinedAt: !2044)
!2047 = !DILocation(line: 105, column: 19, scope: !572, inlinedAt: !2044)
!2048 = !DILocation(line: 106, column: 5, scope: !572, inlinedAt: !2044)
!2049 = !DILocation(line: 111, column: 13, scope: !576, inlinedAt: !2044)
!2050 = !DILocation(line: 112, column: 24, scope: !576, inlinedAt: !2044)
!2051 = !DILocation(line: 112, column: 20, scope: !576, inlinedAt: !2044)
!2052 = !DILocation(line: 112, column: 36, scope: !576, inlinedAt: !2044)
!2053 = !DILocation(line: 112, column: 32, scope: !576, inlinedAt: !2044)
!2054 = !DILocation(line: 112, column: 30, scope: !576, inlinedAt: !2044)
!2055 = !DILocation(line: 115, column: 13, scope: !579, inlinedAt: !2044)
!2056 = !DILocation(line: 116, column: 24, scope: !579, inlinedAt: !2044)
!2057 = !DILocation(line: 116, column: 20, scope: !579, inlinedAt: !2044)
!2058 = !DILocation(line: 116, column: 36, scope: !579, inlinedAt: !2044)
!2059 = !DILocation(line: 116, column: 32, scope: !579, inlinedAt: !2044)
!2060 = !DILocation(line: 116, column: 30, scope: !579, inlinedAt: !2044)
!2061 = !DILocation(line: 119, column: 13, scope: !581, inlinedAt: !2044)
!2062 = !DILocation(line: 120, column: 24, scope: !581, inlinedAt: !2044)
!2063 = !DILocation(line: 120, column: 36, scope: !581, inlinedAt: !2044)
!2064 = !DILocation(line: 120, column: 30, scope: !581, inlinedAt: !2044)
!2065 = !DILocation(line: 120, column: 20, scope: !581, inlinedAt: !2044)
!2066 = !DILocation(line: 123, column: 13, scope: !583, inlinedAt: !2044)
!2067 = !DILocation(line: 124, column: 24, scope: !583, inlinedAt: !2044)
!2068 = !DILocation(line: 124, column: 36, scope: !583, inlinedAt: !2044)
!2069 = !DILocation(line: 124, column: 30, scope: !583, inlinedAt: !2044)
!2070 = !DILocation(line: 0, scope: !611, inlinedAt: !2044)
!2071 = !DILocation(line: 128, column: 1, scope: !572, inlinedAt: !2044)
!2072 = !DILocation(line: 662, column: 37, scope: !2045)
!2073 = !DILocation(line: 662, column: 25, scope: !1724)
!2074 = !DILocation(line: 663, column: 29, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 662, column: 42)
!2076 = !DILocation(line: 155, column: 27, scope: !1858, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 666, column: 21, scope: !1724)
!2078 = !DILocation(line: 664, column: 21, scope: !2075)
!2079 = !DILocation(line: 665, column: 29, scope: !1724)
!2080 = !DILocation(line: 665, column: 21, scope: !1724)
!2081 = !DILocation(line: 154, column: 34, scope: !1858, inlinedAt: !2077)
!2082 = !DILocation(line: 154, column: 44, scope: !1858, inlinedAt: !2077)
!2083 = !DILocation(line: 155, column: 19, scope: !1858, inlinedAt: !2077)
!2084 = !DILocation(line: 156, column: 5, scope: !1858, inlinedAt: !2077)
!2085 = !DILocation(line: 159, column: 32, scope: !1864, inlinedAt: !2077)
!2086 = !DILocation(line: 161, column: 44, scope: !1864, inlinedAt: !2077)
!2087 = !DILocation(line: 161, column: 21, scope: !1864, inlinedAt: !2077)
!2088 = !DILocation(line: 163, column: 13, scope: !1865, inlinedAt: !2077)
!2089 = !DILocation(line: 165, column: 13, scope: !1865, inlinedAt: !2077)
!2090 = !DILocation(line: 165, column: 31, scope: !1865, inlinedAt: !2077)
!2091 = !DILocation(line: 166, column: 13, scope: !1865, inlinedAt: !2077)
!2092 = !DILocation(line: 168, column: 13, scope: !1865, inlinedAt: !2077)
!2093 = !DILocation(line: 168, column: 28, scope: !1865, inlinedAt: !2077)
!2094 = !DILocation(line: 168, column: 32, scope: !1865, inlinedAt: !2077)
!2095 = !DILocation(line: 169, column: 13, scope: !1865, inlinedAt: !2077)
!2096 = !DILocation(line: 171, column: 13, scope: !1865, inlinedAt: !2077)
!2097 = !DILocation(line: 171, column: 28, scope: !1865, inlinedAt: !2077)
!2098 = !DILocation(line: 171, column: 32, scope: !1865, inlinedAt: !2077)
!2099 = !DILocation(line: 172, column: 13, scope: !1865, inlinedAt: !2077)
!2100 = !DILocation(line: 174, column: 13, scope: !1865, inlinedAt: !2077)
!2101 = !DILocation(line: 174, column: 28, scope: !1865, inlinedAt: !2077)
!2102 = !DILocation(line: 174, column: 32, scope: !1865, inlinedAt: !2077)
!2103 = !DILocation(line: 175, column: 13, scope: !1865, inlinedAt: !2077)
!2104 = !DILocation(line: 177, column: 1, scope: !1858, inlinedAt: !2077)
!2105 = !DILocation(line: 667, column: 23, scope: !1724)
!2106 = !DILocation(line: 668, column: 17, scope: !1721)
!2107 = !DILocation(line: 669, column: 17, scope: !1721)
!2108 = !DILocation(line: 671, column: 20, scope: !1721)
!2109 = !DILocation(line: 671, column: 17, scope: !1721)
!2110 = !DILocation(line: 671, column: 24, scope: !1721)
!2111 = !DILocation(line: 154, column: 34, scope: !1858, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 672, column: 17, scope: !1721)
!2113 = !DILocation(line: 154, column: 44, scope: !1858, inlinedAt: !2112)
!2114 = !DILocation(line: 155, column: 27, scope: !1858, inlinedAt: !2112)
!2115 = !DILocation(line: 155, column: 19, scope: !1858, inlinedAt: !2112)
!2116 = !DILocation(line: 156, column: 5, scope: !1858, inlinedAt: !2112)
!2117 = !DILocation(line: 159, column: 32, scope: !1864, inlinedAt: !2112)
!2118 = !DILocation(line: 161, column: 44, scope: !1864, inlinedAt: !2112)
!2119 = !DILocation(line: 161, column: 21, scope: !1864, inlinedAt: !2112)
!2120 = !DILocation(line: 163, column: 13, scope: !1865, inlinedAt: !2112)
!2121 = !DILocation(line: 165, column: 13, scope: !1865, inlinedAt: !2112)
!2122 = !DILocation(line: 165, column: 31, scope: !1865, inlinedAt: !2112)
!2123 = !DILocation(line: 166, column: 13, scope: !1865, inlinedAt: !2112)
!2124 = !DILocation(line: 168, column: 13, scope: !1865, inlinedAt: !2112)
!2125 = !DILocation(line: 168, column: 28, scope: !1865, inlinedAt: !2112)
!2126 = !DILocation(line: 168, column: 32, scope: !1865, inlinedAt: !2112)
!2127 = !DILocation(line: 169, column: 13, scope: !1865, inlinedAt: !2112)
!2128 = !DILocation(line: 171, column: 13, scope: !1865, inlinedAt: !2112)
!2129 = !DILocation(line: 171, column: 28, scope: !1865, inlinedAt: !2112)
!2130 = !DILocation(line: 171, column: 32, scope: !1865, inlinedAt: !2112)
!2131 = !DILocation(line: 172, column: 13, scope: !1865, inlinedAt: !2112)
!2132 = !DILocation(line: 174, column: 13, scope: !1865, inlinedAt: !2112)
!2133 = !DILocation(line: 174, column: 28, scope: !1865, inlinedAt: !2112)
!2134 = !DILocation(line: 174, column: 32, scope: !1865, inlinedAt: !2112)
!2135 = !DILocation(line: 175, column: 13, scope: !1865, inlinedAt: !2112)
!2136 = !DILocation(line: 177, column: 1, scope: !1858, inlinedAt: !2112)
!2137 = !DILocation(line: 673, column: 17, scope: !1721)
!2138 = !DILocation(line: 677, column: 16, scope: !1722)
!2139 = !DILocation(line: 677, column: 13, scope: !1722)
!2140 = !DILocation(line: 677, column: 20, scope: !1722)
!2141 = !DILocation(line: 154, column: 34, scope: !1858, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 678, column: 13, scope: !1722)
!2143 = !DILocation(line: 154, column: 44, scope: !1858, inlinedAt: !2142)
!2144 = !DILocation(line: 155, column: 27, scope: !1858, inlinedAt: !2142)
!2145 = !DILocation(line: 155, column: 19, scope: !1858, inlinedAt: !2142)
!2146 = !DILocation(line: 156, column: 5, scope: !1858, inlinedAt: !2142)
!2147 = !DILocation(line: 159, column: 32, scope: !1864, inlinedAt: !2142)
!2148 = !DILocation(line: 161, column: 44, scope: !1864, inlinedAt: !2142)
!2149 = !DILocation(line: 161, column: 21, scope: !1864, inlinedAt: !2142)
!2150 = !DILocation(line: 163, column: 13, scope: !1865, inlinedAt: !2142)
!2151 = !DILocation(line: 165, column: 13, scope: !1865, inlinedAt: !2142)
!2152 = !DILocation(line: 165, column: 31, scope: !1865, inlinedAt: !2142)
!2153 = !DILocation(line: 166, column: 13, scope: !1865, inlinedAt: !2142)
!2154 = !DILocation(line: 168, column: 13, scope: !1865, inlinedAt: !2142)
!2155 = !DILocation(line: 168, column: 28, scope: !1865, inlinedAt: !2142)
!2156 = !DILocation(line: 168, column: 32, scope: !1865, inlinedAt: !2142)
!2157 = !DILocation(line: 169, column: 13, scope: !1865, inlinedAt: !2142)
!2158 = !DILocation(line: 171, column: 13, scope: !1865, inlinedAt: !2142)
!2159 = !DILocation(line: 171, column: 28, scope: !1865, inlinedAt: !2142)
!2160 = !DILocation(line: 171, column: 32, scope: !1865, inlinedAt: !2142)
!2161 = !DILocation(line: 172, column: 13, scope: !1865, inlinedAt: !2142)
!2162 = !DILocation(line: 174, column: 13, scope: !1865, inlinedAt: !2142)
!2163 = !DILocation(line: 174, column: 28, scope: !1865, inlinedAt: !2142)
!2164 = !DILocation(line: 174, column: 32, scope: !1865, inlinedAt: !2142)
!2165 = !DILocation(line: 175, column: 13, scope: !1865, inlinedAt: !2142)
!2166 = !DILocation(line: 177, column: 1, scope: !1858, inlinedAt: !2142)
!2167 = !DILocation(line: 679, column: 13, scope: !1722)
!2168 = !DILocation(line: 0, scope: !1722)
!2169 = !DILocation(line: 0, scope: !1705)
!2170 = !DILocation(line: 681, column: 10, scope: !1714)
!2171 = distinct !{!2171, !1755, !2172}
!2172 = !DILocation(line: 682, column: 5, scope: !1705)
!2173 = !DILocation(line: 0, scope: !1721)
!2174 = !DILocation(line: 683, column: 5, scope: !1705)
!2175 = !DILocation(line: 686, column: 5, scope: !1705)
!2176 = !DILocation(line: 686, column: 10, scope: !1705)
!2177 = !DILocation(line: 688, column: 1, scope: !1705)
!2178 = !DILocation(line: 687, column: 5, scope: !1705)
!2179 = distinct !DISubprogram(name: "sdstrim", scope: !3, file: !3, line: 704, type: !1261, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2181 = !DILocalVariable(name: "s", arg: 1, scope: !2179, file: !3, line: 704, type: !110)
!2182 = !DILocalVariable(name: "cset", arg: 2, scope: !2179, file: !3, line: 704, type: !76)
!2183 = !DILocalVariable(name: "start", scope: !2179, file: !3, line: 705, type: !15)
!2184 = !DILocalVariable(name: "end", scope: !2179, file: !3, line: 705, type: !15)
!2185 = !DILocalVariable(name: "sp", scope: !2179, file: !3, line: 705, type: !15)
!2186 = !DILocalVariable(name: "ep", scope: !2179, file: !3, line: 705, type: !15)
!2187 = !DILocalVariable(name: "len", scope: !2179, file: !3, line: 706, type: !113)
!2188 = !DILocation(line: 704, column: 17, scope: !2179)
!2189 = !DILocation(line: 704, column: 32, scope: !2179)
!2190 = !DILocation(line: 705, column: 11, scope: !2179)
!2191 = !DILocation(line: 705, column: 25, scope: !2179)
!2192 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 709, column: 18, scope: !2179)
!2194 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2193)
!2195 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2193)
!2196 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2193)
!2197 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2193)
!2198 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2193)
!2199 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2193)
!2200 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2193)
!2201 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2193)
!2202 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2193)
!2203 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2193)
!2204 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2193)
!2205 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2193)
!2206 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2193)
!2207 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2193)
!2208 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2193)
!2209 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2193)
!2210 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2193)
!2211 = !DILocation(line: 0, scope: !410, inlinedAt: !2193)
!2212 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2193)
!2213 = !DILocation(line: 709, column: 17, scope: !2179)
!2214 = !DILocation(line: 709, column: 27, scope: !2179)
!2215 = !DILocation(line: 705, column: 19, scope: !2179)
!2216 = !DILocation(line: 705, column: 30, scope: !2179)
!2217 = !DILocation(line: 710, column: 14, scope: !2179)
!2218 = !DILocation(line: 710, column: 21, scope: !2179)
!2219 = !DILocation(line: 710, column: 37, scope: !2179)
!2220 = !DILocation(line: 710, column: 24, scope: !2179)
!2221 = !DILocation(line: 710, column: 5, scope: !2179)
!2222 = !DILocation(line: 710, column: 45, scope: !2179)
!2223 = distinct !{!2223, !2221, !2222}
!2224 = !DILocation(line: 0, scope: !2179)
!2225 = !DILocation(line: 711, column: 14, scope: !2179)
!2226 = !DILocation(line: 711, column: 19, scope: !2179)
!2227 = !DILocation(line: 711, column: 35, scope: !2179)
!2228 = !DILocation(line: 711, column: 22, scope: !2179)
!2229 = !DILocation(line: 711, column: 5, scope: !2179)
!2230 = !DILocation(line: 711, column: 43, scope: !2179)
!2231 = distinct !{!2231, !2229, !2230}
!2232 = !DILocation(line: 712, column: 15, scope: !2179)
!2233 = !DILocation(line: 712, column: 31, scope: !2179)
!2234 = !DILocation(line: 712, column: 35, scope: !2179)
!2235 = !DILocation(line: 712, column: 11, scope: !2179)
!2236 = !DILocation(line: 706, column: 12, scope: !2179)
!2237 = !DILocation(line: 713, column: 11, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 713, column: 9)
!2239 = !DILocation(line: 713, column: 9, scope: !2179)
!2240 = !DILocation(line: 713, column: 18, scope: !2238)
!2241 = !DILocation(line: 714, column: 5, scope: !2179)
!2242 = !DILocation(line: 714, column: 12, scope: !2179)
!2243 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 715, column: 5, scope: !2179)
!2245 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !2244)
!2246 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !2244)
!2247 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !2244)
!2248 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !2244)
!2249 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !2244)
!2250 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !2244)
!2251 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !2244)
!2252 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !2244)
!2253 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !2244)
!2254 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !2244)
!2255 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !2244)
!2256 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !2244)
!2257 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !2244)
!2258 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !2244)
!2259 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !2244)
!2260 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !2244)
!2261 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !2244)
!2262 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !2244)
!2263 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !2244)
!2264 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !2244)
!2265 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !2244)
!2266 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !2244)
!2267 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !2244)
!2268 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !2244)
!2269 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !2244)
!2270 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !2244)
!2271 = !DILocation(line: 152, column: 1, scope: !485, inlinedAt: !2244)
!2272 = !DILocation(line: 716, column: 5, scope: !2179)
!2273 = distinct !DISubprogram(name: "sdsrange", scope: !3, file: !3, line: 735, type: !2274, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !110, !24, !24}
!2276 = !{!2277, !2278, !2279, !2280, !2281}
!2277 = !DILocalVariable(name: "s", arg: 1, scope: !2273, file: !3, line: 735, type: !110)
!2278 = !DILocalVariable(name: "start", arg: 2, scope: !2273, file: !3, line: 735, type: !24)
!2279 = !DILocalVariable(name: "end", arg: 3, scope: !2273, file: !3, line: 735, type: !24)
!2280 = !DILocalVariable(name: "newlen", scope: !2273, file: !3, line: 736, type: !113)
!2281 = !DILocalVariable(name: "len", scope: !2273, file: !3, line: 736, type: !113)
!2282 = !DILocation(line: 735, column: 19, scope: !2273)
!2283 = !DILocation(line: 735, column: 30, scope: !2273)
!2284 = !DILocation(line: 735, column: 45, scope: !2273)
!2285 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 736, column: 26, scope: !2273)
!2287 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2286)
!2288 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2286)
!2289 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2286)
!2290 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2286)
!2291 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2286)
!2292 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2286)
!2293 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2286)
!2294 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2286)
!2295 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2286)
!2296 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2286)
!2297 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2286)
!2298 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2286)
!2299 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2286)
!2300 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2286)
!2301 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2286)
!2302 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2286)
!2303 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2286)
!2304 = !DILocation(line: 0, scope: !410, inlinedAt: !2286)
!2305 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2286)
!2306 = !DILocation(line: 736, column: 20, scope: !2273)
!2307 = !DILocation(line: 738, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 738, column: 9)
!2309 = !DILocation(line: 738, column: 9, scope: !2273)
!2310 = !DILocation(line: 739, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 739, column: 9)
!2312 = !DILocation(line: 739, column: 9, scope: !2273)
!2313 = !DILocation(line: 740, column: 20, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 739, column: 20)
!2315 = !DILocation(line: 741, column: 13, scope: !2314)
!2316 = !DILocation(line: 742, column: 5, scope: !2314)
!2317 = !DILocation(line: 743, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 743, column: 9)
!2319 = !DILocation(line: 743, column: 9, scope: !2273)
!2320 = !DILocation(line: 744, column: 18, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 743, column: 18)
!2322 = !DILocation(line: 745, column: 13, scope: !2321)
!2323 = !DILocation(line: 746, column: 5, scope: !2321)
!2324 = !DILocation(line: 747, column: 21, scope: !2273)
!2325 = !DILocation(line: 747, column: 38, scope: !2273)
!2326 = !DILocation(line: 747, column: 45, scope: !2273)
!2327 = !DILocation(line: 747, column: 14, scope: !2273)
!2328 = !DILocation(line: 736, column: 12, scope: !2273)
!2329 = !DILocation(line: 748, column: 16, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 748, column: 9)
!2331 = !DILocation(line: 749, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 749, column: 13)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 748, column: 22)
!2334 = !DILocation(line: 748, column: 9, scope: !2273)
!2335 = !DILocation(line: 751, column: 24, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 751, column: 20)
!2337 = !DILocation(line: 751, column: 20, scope: !2332)
!2338 = !DILocation(line: 752, column: 22, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 751, column: 41)
!2340 = !DILocation(line: 753, column: 29, scope: !2339)
!2341 = !DILocation(line: 753, column: 53, scope: !2339)
!2342 = !DILocation(line: 753, column: 22, scope: !2339)
!2343 = !DILocation(line: 0, scope: !2273)
!2344 = !DILocation(line: 758, column: 9, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 758, column: 9)
!2346 = !DILocation(line: 758, column: 18, scope: !2345)
!2347 = !DILocation(line: 758, column: 15, scope: !2345)
!2348 = !DILocation(line: 758, column: 38, scope: !2345)
!2349 = !DILocation(line: 758, column: 26, scope: !2345)
!2350 = !DILocation(line: 759, column: 5, scope: !2273)
!2351 = !DILocation(line: 759, column: 15, scope: !2273)
!2352 = !DILocation(line: 130, column: 34, scope: !485, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 760, column: 5, scope: !2273)
!2354 = !DILocation(line: 130, column: 44, scope: !485, inlinedAt: !2353)
!2355 = !DILocation(line: 131, column: 27, scope: !485, inlinedAt: !2353)
!2356 = !DILocation(line: 131, column: 19, scope: !485, inlinedAt: !2353)
!2357 = !DILocation(line: 132, column: 5, scope: !485, inlinedAt: !2353)
!2358 = !DILocation(line: 135, column: 32, scope: !492, inlinedAt: !2353)
!2359 = !DILocation(line: 136, column: 23, scope: !492, inlinedAt: !2353)
!2360 = !DILocation(line: 136, column: 21, scope: !492, inlinedAt: !2353)
!2361 = !DILocation(line: 138, column: 13, scope: !493, inlinedAt: !2353)
!2362 = !DILocation(line: 140, column: 33, scope: !493, inlinedAt: !2353)
!2363 = !DILocation(line: 140, column: 13, scope: !493, inlinedAt: !2353)
!2364 = !DILocation(line: 140, column: 31, scope: !493, inlinedAt: !2353)
!2365 = !DILocation(line: 141, column: 13, scope: !493, inlinedAt: !2353)
!2366 = !DILocation(line: 143, column: 34, scope: !493, inlinedAt: !2353)
!2367 = !DILocation(line: 143, column: 13, scope: !493, inlinedAt: !2353)
!2368 = !DILocation(line: 143, column: 28, scope: !493, inlinedAt: !2353)
!2369 = !DILocation(line: 143, column: 32, scope: !493, inlinedAt: !2353)
!2370 = !DILocation(line: 144, column: 13, scope: !493, inlinedAt: !2353)
!2371 = !DILocation(line: 146, column: 34, scope: !493, inlinedAt: !2353)
!2372 = !DILocation(line: 146, column: 13, scope: !493, inlinedAt: !2353)
!2373 = !DILocation(line: 146, column: 28, scope: !493, inlinedAt: !2353)
!2374 = !DILocation(line: 146, column: 32, scope: !493, inlinedAt: !2353)
!2375 = !DILocation(line: 147, column: 13, scope: !493, inlinedAt: !2353)
!2376 = !DILocation(line: 149, column: 13, scope: !493, inlinedAt: !2353)
!2377 = !DILocation(line: 149, column: 28, scope: !493, inlinedAt: !2353)
!2378 = !DILocation(line: 149, column: 32, scope: !493, inlinedAt: !2353)
!2379 = !DILocation(line: 150, column: 13, scope: !493, inlinedAt: !2353)
!2380 = !DILocation(line: 761, column: 1, scope: !2273)
!2381 = distinct !DISubprogram(name: "sdstolower", scope: !3, file: !3, line: 764, type: !429, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2382)
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DILocalVariable(name: "s", arg: 1, scope: !2381, file: !3, line: 764, type: !110)
!2384 = !DILocalVariable(name: "len", scope: !2381, file: !3, line: 765, type: !113)
!2385 = !DILocalVariable(name: "j", scope: !2381, file: !3, line: 765, type: !113)
!2386 = !DILocalVariable(name: "__x", scope: !2387, file: !3, line: 767, type: !16)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 767, column: 38)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 767, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 767, column: 5)
!2390 = !DILocation(line: 764, column: 21, scope: !2381)
!2391 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 765, column: 18, scope: !2381)
!2393 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2392)
!2394 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2392)
!2395 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2392)
!2396 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2392)
!2397 = !DILocation(line: 765, column: 12, scope: !2381)
!2398 = !DILocation(line: 765, column: 29, scope: !2381)
!2399 = !DILocation(line: 767, column: 5, scope: !2389)
!2400 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2392)
!2401 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2392)
!2402 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2392)
!2403 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2392)
!2404 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2392)
!2405 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2392)
!2406 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2392)
!2407 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2392)
!2408 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2392)
!2409 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2392)
!2410 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2392)
!2411 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2392)
!2412 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2392)
!2413 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2392)
!2414 = !DILocation(line: 0, scope: !410, inlinedAt: !2392)
!2415 = !DILocation(line: 767, column: 19, scope: !2388)
!2416 = !DILocation(line: 767, column: 38, scope: !2387)
!2417 = !DILocation(line: 767, column: 36, scope: !2388)
!2418 = !DILocation(line: 767, column: 27, scope: !2388)
!2419 = distinct !{!2419, !2399, !2420}
!2420 = !DILocation(line: 767, column: 38, scope: !2389)
!2421 = !DILocation(line: 768, column: 1, scope: !2381)
!2422 = distinct !DISubprogram(name: "sdstoupper", scope: !3, file: !3, line: 771, type: !429, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2423)
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "s", arg: 1, scope: !2422, file: !3, line: 771, type: !110)
!2425 = !DILocalVariable(name: "len", scope: !2422, file: !3, line: 772, type: !113)
!2426 = !DILocalVariable(name: "j", scope: !2422, file: !3, line: 772, type: !113)
!2427 = !DILocalVariable(name: "__x", scope: !2428, file: !3, line: 774, type: !16)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 774, column: 38)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 774, column: 5)
!2430 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 774, column: 5)
!2431 = !DILocation(line: 771, column: 21, scope: !2422)
!2432 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 772, column: 18, scope: !2422)
!2434 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2433)
!2435 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2433)
!2436 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2433)
!2437 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2433)
!2438 = !DILocation(line: 772, column: 12, scope: !2422)
!2439 = !DILocation(line: 772, column: 29, scope: !2422)
!2440 = !DILocation(line: 774, column: 5, scope: !2430)
!2441 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2433)
!2442 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2433)
!2443 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2433)
!2444 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2433)
!2445 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2433)
!2446 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2433)
!2447 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2433)
!2448 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2433)
!2449 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2433)
!2450 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2433)
!2451 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2433)
!2452 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2433)
!2453 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2433)
!2454 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2433)
!2455 = !DILocation(line: 0, scope: !410, inlinedAt: !2433)
!2456 = !DILocation(line: 774, column: 19, scope: !2429)
!2457 = !DILocation(line: 774, column: 38, scope: !2428)
!2458 = !DILocation(line: 774, column: 36, scope: !2429)
!2459 = !DILocation(line: 774, column: 27, scope: !2429)
!2460 = distinct !{!2460, !2440, !2461}
!2461 = !DILocation(line: 774, column: 38, scope: !2430)
!2462 = !DILocation(line: 775, column: 1, scope: !2422)
!2463 = distinct !DISubprogram(name: "sdscmp", scope: !3, file: !3, line: 788, type: !2464, isLocal: false, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!29, !394, !394}
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472}
!2467 = !DILocalVariable(name: "s1", arg: 1, scope: !2463, file: !3, line: 788, type: !394)
!2468 = !DILocalVariable(name: "s2", arg: 2, scope: !2463, file: !3, line: 788, type: !394)
!2469 = !DILocalVariable(name: "l1", scope: !2463, file: !3, line: 789, type: !113)
!2470 = !DILocalVariable(name: "l2", scope: !2463, file: !3, line: 789, type: !113)
!2471 = !DILocalVariable(name: "minlen", scope: !2463, file: !3, line: 789, type: !113)
!2472 = !DILocalVariable(name: "cmp", scope: !2463, file: !3, line: 790, type: !29)
!2473 = !DILocation(line: 788, column: 22, scope: !2463)
!2474 = !DILocation(line: 788, column: 36, scope: !2463)
!2475 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 792, column: 10, scope: !2463)
!2477 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2476)
!2478 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2476)
!2479 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2476)
!2480 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2476)
!2481 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2476)
!2482 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2476)
!2483 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2476)
!2484 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2476)
!2485 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2476)
!2486 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2476)
!2487 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2476)
!2488 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2476)
!2489 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2476)
!2490 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2476)
!2491 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2476)
!2492 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2476)
!2493 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2476)
!2494 = !DILocation(line: 0, scope: !410, inlinedAt: !2476)
!2495 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2476)
!2496 = !DILocation(line: 789, column: 12, scope: !2463)
!2497 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 793, column: 10, scope: !2463)
!2499 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !2498)
!2500 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !2498)
!2501 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !2498)
!2502 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !2498)
!2503 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !2498)
!2504 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !2498)
!2505 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !2498)
!2506 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !2498)
!2507 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !2498)
!2508 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !2498)
!2509 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !2498)
!2510 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !2498)
!2511 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !2498)
!2512 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !2498)
!2513 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !2498)
!2514 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !2498)
!2515 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !2498)
!2516 = !DILocation(line: 0, scope: !410, inlinedAt: !2498)
!2517 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !2498)
!2518 = !DILocation(line: 789, column: 16, scope: !2463)
!2519 = !DILocation(line: 794, column: 18, scope: !2463)
!2520 = !DILocation(line: 794, column: 14, scope: !2463)
!2521 = !DILocation(line: 789, column: 20, scope: !2463)
!2522 = !DILocation(line: 795, column: 11, scope: !2463)
!2523 = !DILocation(line: 790, column: 9, scope: !2463)
!2524 = !DILocation(line: 796, column: 13, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 796, column: 9)
!2526 = !DILocation(line: 796, column: 28, scope: !2525)
!2527 = !DILocation(line: 796, column: 37, scope: !2525)
!2528 = !DILocation(line: 796, column: 26, scope: !2525)
!2529 = !DILocation(line: 796, column: 9, scope: !2463)
!2530 = !DILocation(line: 798, column: 1, scope: !2463)
!2531 = distinct !DISubprogram(name: "sdssplitlen", scope: !3, file: !3, line: 816, type: !2532, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2536)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !76, !24, !76, !29, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2553}
!2537 = !DILocalVariable(name: "s", arg: 1, scope: !2531, file: !3, line: 816, type: !76)
!2538 = !DILocalVariable(name: "len", arg: 2, scope: !2531, file: !3, line: 816, type: !24)
!2539 = !DILocalVariable(name: "sep", arg: 3, scope: !2531, file: !3, line: 816, type: !76)
!2540 = !DILocalVariable(name: "seplen", arg: 4, scope: !2531, file: !3, line: 816, type: !29)
!2541 = !DILocalVariable(name: "count", arg: 5, scope: !2531, file: !3, line: 816, type: !2535)
!2542 = !DILocalVariable(name: "elements", scope: !2531, file: !3, line: 817, type: !29)
!2543 = !DILocalVariable(name: "slots", scope: !2531, file: !3, line: 817, type: !29)
!2544 = !DILocalVariable(name: "start", scope: !2531, file: !3, line: 818, type: !28)
!2545 = !DILocalVariable(name: "j", scope: !2531, file: !3, line: 818, type: !28)
!2546 = !DILocalVariable(name: "tokens", scope: !2531, file: !3, line: 819, type: !2534)
!2547 = !DILocalVariable(name: "newtokens", scope: !2548, file: !3, line: 833, type: !2534)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 832, column: 33)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 832, column: 13)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 830, column: 44)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 830, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 830, column: 5)
!2553 = !DILocalVariable(name: "i", scope: !2554, file: !3, line: 858, type: !29)
!2554 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 857, column: 5)
!2555 = !DILocation(line: 816, column: 30, scope: !2531)
!2556 = !DILocation(line: 816, column: 41, scope: !2531)
!2557 = !DILocation(line: 816, column: 58, scope: !2531)
!2558 = !DILocation(line: 816, column: 67, scope: !2531)
!2559 = !DILocation(line: 816, column: 80, scope: !2531)
!2560 = !DILocation(line: 817, column: 9, scope: !2531)
!2561 = !DILocation(line: 817, column: 23, scope: !2531)
!2562 = !DILocation(line: 818, column: 10, scope: !2531)
!2563 = !DILocation(line: 821, column: 16, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 821, column: 9)
!2565 = !DILocation(line: 821, column: 27, scope: !2564)
!2566 = !DILocation(line: 821, column: 20, scope: !2564)
!2567 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 823, column: 14, scope: !2531)
!2569 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !2568)
!2570 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !2568)
!2572 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !2571)
!2573 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !2571)
!2574 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !2571)
!2575 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !2571)
!2576 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !2571)
!2577 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !2571)
!2578 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !2568)
!2579 = !DILocation(line: 819, column: 10, scope: !2531)
!2580 = !DILocation(line: 824, column: 9, scope: !2531)
!2581 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !2571)
!2583 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !2582)
!2584 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !2582)
!2585 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !2582)
!2586 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !2582)
!2587 = !DILocation(line: 823, column: 14, scope: !2531)
!2588 = !DILocation(line: 824, column: 16, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 824, column: 9)
!2590 = !DILocation(line: 826, column: 13, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 826, column: 9)
!2592 = !DILocation(line: 826, column: 9, scope: !2531)
!2593 = !DILocation(line: 818, column: 21, scope: !2531)
!2594 = !DILocation(line: 830, column: 33, scope: !2551)
!2595 = !DILocation(line: 830, column: 26, scope: !2551)
!2596 = !DILocation(line: 830, column: 25, scope: !2551)
!2597 = !DILocation(line: 830, column: 19, scope: !2551)
!2598 = !DILocation(line: 830, column: 5, scope: !2552)
!2599 = !DILocation(line: 827, column: 16, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 826, column: 19)
!2601 = !DILocation(line: 828, column: 9, scope: !2600)
!2602 = !DILocation(line: 832, column: 29, scope: !2549)
!2603 = !DILocation(line: 832, column: 19, scope: !2549)
!2604 = !DILocation(line: 832, column: 13, scope: !2550)
!2605 = !DILocation(line: 835, column: 19, scope: !2548)
!2606 = !DILocation(line: 48, column: 37, scope: !679, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 836, column: 25, scope: !2548)
!2608 = !DILocation(line: 49, column: 20, scope: !679, inlinedAt: !2607)
!2609 = !DILocation(line: 190, column: 49, scope: !689, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 49, column: 9, scope: !679, inlinedAt: !2607)
!2611 = !DILocation(line: 190, column: 58, scope: !689, inlinedAt: !2610)
!2612 = !DILocation(line: 192, column: 6, scope: !700, inlinedAt: !2610)
!2613 = !DILocation(line: 192, column: 6, scope: !689, inlinedAt: !2610)
!2614 = !DILocation(line: 193, column: 3, scope: !699, inlinedAt: !2610)
!2615 = !DILocation(line: 193, column: 9, scope: !699, inlinedAt: !2610)
!2616 = !DILocation(line: 197, column: 1, scope: !689, inlinedAt: !2610)
!2617 = !DILocation(line: 49, column: 2, scope: !679, inlinedAt: !2607)
!2618 = !DILocation(line: 836, column: 54, scope: !2548)
!2619 = !DILocation(line: 836, column: 53, scope: !2548)
!2620 = !DILocation(line: 190, column: 70, scope: !689, inlinedAt: !2610)
!2621 = !DILocation(line: 48, column: 49, scope: !679, inlinedAt: !2607)
!2622 = !DILocation(line: 183, column: 52, scope: !707, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 196, column: 9, scope: !689, inlinedAt: !2610)
!2624 = !DILocation(line: 184, column: 13, scope: !707, inlinedAt: !2623)
!2625 = !DILocation(line: 184, column: 25, scope: !707, inlinedAt: !2623)
!2626 = !DILocation(line: 187, column: 12, scope: !707, inlinedAt: !2623)
!2627 = !DILocation(line: 187, column: 9, scope: !707, inlinedAt: !2623)
!2628 = !DILocation(line: 187, column: 2, scope: !707, inlinedAt: !2623)
!2629 = !DILocation(line: 837, column: 27, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 837, column: 17)
!2631 = !DILocation(line: 836, column: 25, scope: !2548)
!2632 = !DILocation(line: 0, scope: !2531)
!2633 = !DILocation(line: 823, column: 12, scope: !2531)
!2634 = !DILocation(line: 0, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 841, column: 13)
!2636 = !DILocation(line: 841, column: 26, scope: !2635)
!2637 = !DILocation(line: 841, column: 29, scope: !2635)
!2638 = !DILocation(line: 841, column: 39, scope: !2635)
!2639 = !DILocation(line: 841, column: 36, scope: !2635)
!2640 = !DILocation(line: 841, column: 47, scope: !2635)
!2641 = !DILocation(line: 841, column: 51, scope: !2635)
!2642 = !DILocation(line: 841, column: 74, scope: !2635)
!2643 = !DILocation(line: 841, column: 13, scope: !2550)
!2644 = !DILocation(line: 842, column: 43, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 841, column: 81)
!2646 = !DILocation(line: 842, column: 51, scope: !2645)
!2647 = !DILocation(line: 842, column: 32, scope: !2645)
!2648 = !DILocation(line: 842, column: 13, scope: !2645)
!2649 = !DILocation(line: 842, column: 30, scope: !2645)
!2650 = !DILocation(line: 843, column: 34, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 843, column: 17)
!2652 = !DILocation(line: 843, column: 17, scope: !2645)
!2653 = !DILocation(line: 844, column: 21, scope: !2645)
!2654 = !DILocation(line: 845, column: 22, scope: !2645)
!2655 = !DILocation(line: 846, column: 25, scope: !2645)
!2656 = !DILocation(line: 847, column: 9, scope: !2645)
!2657 = !DILocation(line: 0, scope: !2552)
!2658 = !DILocation(line: 830, column: 40, scope: !2551)
!2659 = distinct !{!2659, !2598, !2660}
!2660 = !DILocation(line: 848, column: 5, scope: !2552)
!2661 = !DILocation(line: 0, scope: !2645)
!2662 = !DILocation(line: 850, column: 35, scope: !2531)
!2663 = !DILocation(line: 850, column: 45, scope: !2531)
!2664 = !DILocation(line: 850, column: 24, scope: !2531)
!2665 = !DILocation(line: 850, column: 5, scope: !2531)
!2666 = !DILocation(line: 850, column: 22, scope: !2531)
!2667 = !DILocation(line: 851, column: 26, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 851, column: 9)
!2669 = !DILocation(line: 851, column: 9, scope: !2531)
!2670 = !DILocation(line: 852, column: 13, scope: !2531)
!2671 = !DILocation(line: 853, column: 12, scope: !2531)
!2672 = !DILocation(line: 854, column: 5, scope: !2531)
!2673 = !DILocation(line: 858, column: 13, scope: !2554)
!2674 = !DILocation(line: 859, column: 23, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 859, column: 9)
!2676 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 859, column: 9)
!2677 = !DILocation(line: 859, column: 9, scope: !2676)
!2678 = !DILocation(line: 859, column: 48, scope: !2675)
!2679 = !DILocation(line: 165, column: 18, scope: !428, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 859, column: 40, scope: !2675)
!2681 = !DILocation(line: 166, column: 11, scope: !435, inlinedAt: !2680)
!2682 = !DILocation(line: 166, column: 9, scope: !428, inlinedAt: !2680)
!2683 = !DILocation(line: 167, column: 32, scope: !428, inlinedAt: !2680)
!2684 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 167, column: 21, scope: !428, inlinedAt: !2680)
!2686 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !2685)
!2687 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !2685)
!2688 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 167, column: 5, scope: !428, inlinedAt: !2680)
!2690 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !2689)
!2692 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !2691)
!2694 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !2693)
!2695 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !2693)
!2696 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !2693)
!2697 = !DILocation(line: 167, column: 20, scope: !428, inlinedAt: !2680)
!2698 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !2693)
!2699 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !2691)
!2700 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !2689)
!2701 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !2693)
!2702 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !2693)
!2703 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !2693)
!2704 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !2691)
!2705 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !2689)
!2706 = !DILocation(line: 168, column: 1, scope: !428, inlinedAt: !2680)
!2707 = !DILocation(line: 859, column: 36, scope: !2675)
!2708 = distinct !{!2708, !2677, !2709}
!2709 = !DILocation(line: 859, column: 57, scope: !2676)
!2710 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 860, column: 9, scope: !2554)
!2712 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !2711)
!2713 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !2711)
!2715 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !2714)
!2716 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !2714)
!2718 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !2717)
!2719 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !2717)
!2720 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !2717)
!2721 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !2717)
!2722 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !2717)
!2723 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !2717)
!2724 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !2717)
!2725 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !2714)
!2726 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !2711)
!2727 = !DILocation(line: 861, column: 16, scope: !2554)
!2728 = !DILocation(line: 864, column: 1, scope: !2531)
!2729 = distinct !DISubprogram(name: "sdsfreesplitres", scope: !3, file: !3, line: 867, type: !2730, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2534, !29}
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "tokens", arg: 1, scope: !2729, file: !3, line: 867, type: !2534)
!2734 = !DILocalVariable(name: "count", arg: 2, scope: !2729, file: !3, line: 867, type: !29)
!2735 = !DILocation(line: 867, column: 27, scope: !2729)
!2736 = !DILocation(line: 867, column: 39, scope: !2729)
!2737 = !DILocation(line: 868, column: 10, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 868, column: 9)
!2739 = !DILocation(line: 868, column: 9, scope: !2729)
!2740 = !DILocation(line: 869, column: 5, scope: !2729)
!2741 = !DILocation(line: 869, column: 16, scope: !2729)
!2742 = !DILocation(line: 870, column: 17, scope: !2729)
!2743 = !DILocation(line: 165, column: 18, scope: !428, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 870, column: 9, scope: !2729)
!2745 = !DILocation(line: 166, column: 11, scope: !435, inlinedAt: !2744)
!2746 = !DILocation(line: 166, column: 9, scope: !428, inlinedAt: !2744)
!2747 = !DILocation(line: 167, column: 32, scope: !428, inlinedAt: !2744)
!2748 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 167, column: 21, scope: !428, inlinedAt: !2744)
!2750 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !2749)
!2751 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !2749)
!2752 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 167, column: 5, scope: !428, inlinedAt: !2744)
!2754 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !2753)
!2756 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !2755)
!2758 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !2757)
!2759 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !2757)
!2760 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !2757)
!2761 = !DILocation(line: 167, column: 20, scope: !428, inlinedAt: !2744)
!2762 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !2757)
!2763 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !2755)
!2764 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !2753)
!2765 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !2757)
!2766 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !2757)
!2767 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !2757)
!2768 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !2755)
!2769 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !2753)
!2770 = !DILocation(line: 168, column: 1, scope: !428, inlinedAt: !2744)
!2771 = distinct !{!2771, !2740, !2772}
!2772 = !DILocation(line: 870, column: 30, scope: !2729)
!2773 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 871, column: 5, scope: !2729)
!2775 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !2774)
!2777 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !2776)
!2779 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !2778)
!2780 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !2778)
!2781 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !2778)
!2782 = !DILocation(line: 871, column: 12, scope: !2729)
!2783 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !2778)
!2784 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !2776)
!2785 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !2774)
!2786 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !2778)
!2787 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !2778)
!2788 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !2778)
!2789 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !2776)
!2790 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !2774)
!2791 = !DILocation(line: 872, column: 1, scope: !2729)
!2792 = distinct !DISubprogram(name: "sdscatrepr", scope: !3, file: !3, line: 880, type: !1303, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DILocalVariable(name: "s", arg: 1, scope: !2792, file: !3, line: 880, type: !110)
!2795 = !DILocalVariable(name: "p", arg: 2, scope: !2792, file: !3, line: 880, type: !76)
!2796 = !DILocalVariable(name: "len", arg: 3, scope: !2792, file: !3, line: 880, type: !113)
!2797 = !DILocation(line: 880, column: 20, scope: !2792)
!2798 = !DILocation(line: 880, column: 35, scope: !2792)
!2799 = !DILocation(line: 880, column: 45, scope: !2792)
!2800 = !DILocation(line: 881, column: 9, scope: !2792)
!2801 = !DILocation(line: 882, column: 5, scope: !2792)
!2802 = !DILocation(line: 882, column: 14, scope: !2792)
!2803 = !DILocation(line: 883, column: 16, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 882, column: 18)
!2805 = !DILocation(line: 883, column: 9, scope: !2804)
!2806 = !DILocation(line: 886, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 883, column: 20)
!2808 = !DILocation(line: 887, column: 13, scope: !2807)
!2809 = !DILocation(line: 888, column: 24, scope: !2807)
!2810 = !DILocation(line: 888, column: 46, scope: !2807)
!2811 = !DILocation(line: 889, column: 24, scope: !2807)
!2812 = !DILocation(line: 889, column: 46, scope: !2807)
!2813 = !DILocation(line: 890, column: 24, scope: !2807)
!2814 = !DILocation(line: 890, column: 46, scope: !2807)
!2815 = !DILocation(line: 891, column: 24, scope: !2807)
!2816 = !DILocation(line: 891, column: 46, scope: !2807)
!2817 = !DILocation(line: 892, column: 24, scope: !2807)
!2818 = !DILocation(line: 892, column: 46, scope: !2807)
!2819 = !DILocation(line: 894, column: 17, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 894, column: 17)
!2821 = !DILocation(line: 894, column: 17, scope: !2807)
!2822 = !DILocation(line: 895, column: 21, scope: !2820)
!2823 = !DILocation(line: 895, column: 17, scope: !2820)
!2824 = !DILocation(line: 897, column: 46, scope: !2820)
!2825 = !DILocation(line: 897, column: 21, scope: !2820)
!2826 = !DILocation(line: 0, scope: !2807)
!2827 = !DILocation(line: 900, column: 10, scope: !2804)
!2828 = distinct !{!2828, !2801, !2829}
!2829 = !DILocation(line: 901, column: 5, scope: !2792)
!2830 = !DILocation(line: 0, scope: !2820)
!2831 = !DILocation(line: 902, column: 12, scope: !2792)
!2832 = !DILocation(line: 902, column: 5, scope: !2792)
!2833 = distinct !DISubprogram(name: "is_hex_digit", scope: !3, file: !3, line: 907, type: !163, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2834)
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "c", arg: 1, scope: !2833, file: !3, line: 907, type: !16)
!2836 = !DILocation(line: 907, column: 23, scope: !2833)
!2837 = !DILocation(line: 908, column: 22, scope: !2833)
!2838 = !DILocation(line: 908, column: 5, scope: !2833)
!2839 = distinct !DISubprogram(name: "hex_digit_to_int", scope: !3, file: !3, line: 914, type: !163, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2840)
!2840 = !{!2841}
!2841 = !DILocalVariable(name: "c", arg: 1, scope: !2839, file: !3, line: 914, type: !16)
!2842 = !DILocation(line: 914, column: 27, scope: !2839)
!2843 = !DILocation(line: 915, column: 12, scope: !2839)
!2844 = !DILocation(line: 915, column: 5, scope: !2839)
!2845 = !DILocation(line: 917, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 915, column: 15)
!2847 = !DILocation(line: 918, column: 15, scope: !2846)
!2848 = !DILocation(line: 919, column: 15, scope: !2846)
!2849 = !DILocation(line: 920, column: 15, scope: !2846)
!2850 = !DILocation(line: 921, column: 15, scope: !2846)
!2851 = !DILocation(line: 922, column: 15, scope: !2846)
!2852 = !DILocation(line: 923, column: 15, scope: !2846)
!2853 = !DILocation(line: 924, column: 15, scope: !2846)
!2854 = !DILocation(line: 925, column: 15, scope: !2846)
!2855 = !DILocation(line: 926, column: 25, scope: !2846)
!2856 = !DILocation(line: 927, column: 25, scope: !2846)
!2857 = !DILocation(line: 928, column: 25, scope: !2846)
!2858 = !DILocation(line: 929, column: 25, scope: !2846)
!2859 = !DILocation(line: 930, column: 25, scope: !2846)
!2860 = !DILocation(line: 931, column: 25, scope: !2846)
!2861 = !DILocation(line: 0, scope: !2846)
!2862 = !DILocation(line: 934, column: 1, scope: !2839)
!2863 = distinct !DISubprogram(name: "sdssplitargs", scope: !3, file: !3, line: 955, type: !2864, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!2534, !76, !2535}
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2873, !2877, !2878, !2879, !2885}
!2867 = !DILocalVariable(name: "line", arg: 1, scope: !2863, file: !3, line: 955, type: !76)
!2868 = !DILocalVariable(name: "argc", arg: 2, scope: !2863, file: !3, line: 955, type: !2535)
!2869 = !DILocalVariable(name: "p", scope: !2863, file: !3, line: 956, type: !76)
!2870 = !DILocalVariable(name: "current", scope: !2863, file: !3, line: 957, type: !15)
!2871 = !DILocalVariable(name: "vector", scope: !2863, file: !3, line: 958, type: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!2873 = !DILocalVariable(name: "inq", scope: !2874, file: !3, line: 966, type: !29)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 964, column: 17)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 964, column: 13)
!2876 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 961, column: 14)
!2877 = !DILocalVariable(name: "insq", scope: !2874, file: !3, line: 967, type: !29)
!2878 = !DILocalVariable(name: "done", scope: !2874, file: !3, line: 968, type: !29)
!2879 = !DILocalVariable(name: "byte", scope: !2880, file: !3, line: 977, type: !18)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 976, column: 21)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 973, column: 25)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 972, column: 26)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 972, column: 21)
!2884 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 971, column: 26)
!2885 = !DILocalVariable(name: "c", scope: !2886, file: !3, line: 984, type: !16)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 983, column: 54)
!2887 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 983, column: 32)
!2888 = !DILocation(line: 955, column: 31, scope: !2863)
!2889 = !DILocation(line: 955, column: 42, scope: !2863)
!2890 = !DILocation(line: 956, column: 17, scope: !2863)
!2891 = !DILocation(line: 957, column: 11, scope: !2863)
!2892 = !DILocation(line: 958, column: 12, scope: !2863)
!2893 = !DILocation(line: 0, scope: !2874)
!2894 = !DILocation(line: 963, column: 15, scope: !2876)
!2895 = !DILocation(line: 963, column: 18, scope: !2876)
!2896 = !DILocation(line: 963, column: 21, scope: !2876)
!2897 = !DILocation(line: 963, column: 9, scope: !2876)
!2898 = !DILocation(line: 963, column: 35, scope: !2876)
!2899 = distinct !{!2899, !2897, !2898}
!2900 = !DILocation(line: 964, column: 13, scope: !2875)
!2901 = !DILocation(line: 964, column: 13, scope: !2876)
!2902 = !DILocation(line: 966, column: 17, scope: !2874)
!2903 = !DILocation(line: 967, column: 17, scope: !2874)
!2904 = !DILocation(line: 968, column: 17, scope: !2874)
!2905 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 150, column: 12, scope: !330, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 970, column: 44, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 970, column: 17)
!2909 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !2906)
!2911 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !2910)
!2912 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !2906)
!2913 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !2906)
!2915 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !2914)
!2916 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !2906)
!2918 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !2917)
!2919 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !2917)
!2921 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !2920)
!2922 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !2920)
!2923 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !2920)
!2924 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !2920)
!2925 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !2920)
!2926 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !2920)
!2927 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !2917)
!2928 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !2906)
!2929 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !2906)
!2930 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !2920)
!2932 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !2931)
!2933 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !2931)
!2934 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !2931)
!2935 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !2931)
!2936 = !DILocation(line: 104, column: 12, scope: !282, inlinedAt: !2906)
!2937 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !2906)
!2938 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !2906)
!2939 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !2906)
!2940 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !2906)
!2941 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !2906)
!2942 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !2906)
!2943 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !2906)
!2944 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !2906)
!2945 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !2906)
!2946 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !2906)
!2947 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !2906)
!2948 = !DILocation(line: 0, scope: !107, inlinedAt: !2906)
!2949 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !2906)
!2950 = !DILocation(line: 150, column: 5, scope: !330, inlinedAt: !2907)
!2951 = !DILocation(line: 971, column: 13, scope: !2874)
!2952 = !DILocation(line: 972, column: 21, scope: !2883)
!2953 = !DILocation(line: 972, column: 21, scope: !2884)
!2954 = !DILocation(line: 973, column: 25, scope: !2881)
!2955 = !DILocation(line: 973, column: 28, scope: !2881)
!2956 = !DILocation(line: 973, column: 36, scope: !2881)
!2957 = !DILocation(line: 973, column: 42, scope: !2881)
!2958 = !DILocation(line: 973, column: 39, scope: !2881)
!2959 = !DILocation(line: 973, column: 46, scope: !2881)
!2960 = !DILocation(line: 973, column: 53, scope: !2881)
!2961 = !DILocation(line: 974, column: 62, scope: !2881)
!2962 = !DILocation(line: 974, column: 59, scope: !2881)
!2963 = !DILocation(line: 907, column: 23, scope: !2833, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 974, column: 46, scope: !2881)
!2965 = !DILocation(line: 908, column: 22, scope: !2833, inlinedAt: !2964)
!2966 = !DILocation(line: 908, column: 5, scope: !2833, inlinedAt: !2964)
!2967 = !DILocation(line: 974, column: 46, scope: !2881)
!2968 = !DILocation(line: 974, column: 67, scope: !2881)
!2969 = !DILocation(line: 975, column: 62, scope: !2881)
!2970 = !DILocation(line: 975, column: 59, scope: !2881)
!2971 = !DILocation(line: 907, column: 23, scope: !2833, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 975, column: 46, scope: !2881)
!2973 = !DILocation(line: 908, column: 22, scope: !2833, inlinedAt: !2972)
!2974 = !DILocation(line: 908, column: 5, scope: !2833, inlinedAt: !2972)
!2975 = !DILocation(line: 975, column: 46, scope: !2881)
!2976 = !DILocation(line: 973, column: 25, scope: !2882)
!2977 = !DILocation(line: 977, column: 39, scope: !2880)
!2978 = !DILocation(line: 977, column: 25, scope: !2880)
!2979 = !DILocation(line: 979, column: 50, scope: !2880)
!2980 = !DILocation(line: 979, column: 33, scope: !2880)
!2981 = !DILocation(line: 979, column: 57, scope: !2880)
!2982 = !DILocation(line: 980, column: 50, scope: !2880)
!2983 = !DILocation(line: 980, column: 33, scope: !2880)
!2984 = !DILocation(line: 979, column: 61, scope: !2880)
!2985 = !DILocation(line: 979, column: 32, scope: !2880)
!2986 = !DILocation(line: 979, column: 30, scope: !2880)
!2987 = !DILocation(line: 981, column: 35, scope: !2880)
!2988 = !DILocation(line: 983, column: 21, scope: !2881)
!2989 = !DILocation(line: 983, column: 21, scope: !2880)
!2990 = !DILocation(line: 983, column: 32, scope: !2887)
!2991 = !DILocation(line: 983, column: 35, scope: !2887)
!2992 = !DILocation(line: 983, column: 43, scope: !2887)
!2993 = !DILocation(line: 983, column: 46, scope: !2887)
!2994 = !DILocation(line: 983, column: 32, scope: !2881)
!2995 = !DILocation(line: 984, column: 30, scope: !2886)
!2996 = !DILocation(line: 984, column: 25, scope: !2886)
!2997 = !DILocation(line: 987, column: 32, scope: !2886)
!2998 = !DILocation(line: 987, column: 25, scope: !2886)
!2999 = !DILocation(line: 988, column: 37, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 987, column: 36)
!3001 = !DILocation(line: 988, column: 45, scope: !3000)
!3002 = !DILocation(line: 989, column: 37, scope: !3000)
!3003 = !DILocation(line: 989, column: 45, scope: !3000)
!3004 = !DILocation(line: 990, column: 37, scope: !3000)
!3005 = !DILocation(line: 990, column: 45, scope: !3000)
!3006 = !DILocation(line: 991, column: 37, scope: !3000)
!3007 = !DILocation(line: 991, column: 45, scope: !3000)
!3008 = !DILocation(line: 992, column: 37, scope: !3000)
!3009 = !DILocation(line: 992, column: 45, scope: !3000)
!3010 = !DILocation(line: 993, column: 36, scope: !3000)
!3011 = !DILocation(line: 993, column: 42, scope: !3000)
!3012 = !DILocation(line: 995, column: 35, scope: !2886)
!3013 = !DILocation(line: 996, column: 21, scope: !2887)
!3014 = !DILocation(line: 996, column: 21, scope: !2886)
!3015 = !DILocation(line: 996, column: 32, scope: !2887)
!3016 = !DILocation(line: 999, column: 32, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 999, column: 29)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 996, column: 43)
!3019 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 996, column: 32)
!3020 = !DILocation(line: 999, column: 29, scope: !3017)
!3021 = !DILocation(line: 999, column: 36, scope: !3017)
!3022 = !DILocation(line: 999, column: 40, scope: !3017)
!3023 = !DILocation(line: 999, column: 29, scope: !3018)
!3024 = !DILocation(line: 1005, column: 35, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1004, column: 28)
!3026 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1001, column: 32)
!3027 = !DILocation(line: 1007, column: 28, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1007, column: 28)
!3029 = !DILocation(line: 0, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1022, column: 24)
!3031 = !DILocation(line: 1007, column: 28, scope: !2883)
!3032 = !DILocation(line: 1008, column: 36, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1008, column: 25)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1007, column: 34)
!3035 = !DILocation(line: 1008, column: 42, scope: !3033)
!3036 = !DILocation(line: 1008, column: 39, scope: !3033)
!3037 = !DILocation(line: 1008, column: 46, scope: !3033)
!3038 = !DILocation(line: 1008, column: 25, scope: !3034)
!3039 = !DILocation(line: 1010, column: 35, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1008, column: 55)
!3041 = !DILocation(line: 1011, column: 21, scope: !3040)
!3042 = !DILocation(line: 1014, column: 32, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1014, column: 29)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1011, column: 44)
!3045 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1011, column: 32)
!3046 = !DILocation(line: 1014, column: 29, scope: !3043)
!3047 = !DILocation(line: 1014, column: 36, scope: !3043)
!3048 = !DILocation(line: 1014, column: 40, scope: !3043)
!3049 = !DILocation(line: 1014, column: 29, scope: !3044)
!3050 = !DILocation(line: 1020, column: 35, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1019, column: 28)
!3052 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1016, column: 32)
!3053 = !DILocation(line: 1023, column: 21, scope: !3030)
!3054 = !DILocation(line: 1036, column: 25, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1023, column: 32)
!3056 = !DILocation(line: 1038, column: 35, scope: !3055)
!3057 = !DILocation(line: 1039, column: 25, scope: !3055)
!3058 = !DILocation(line: 0, scope: !2863)
!3059 = !DILocation(line: 0, scope: !2908)
!3060 = !DILocation(line: 1042, column: 21, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1042, column: 21)
!3062 = !DILocation(line: 1042, column: 26, scope: !3061)
!3063 = !DILocation(line: 1042, column: 21, scope: !2884)
!3064 = !DILocation(line: 48, column: 37, scope: !679, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1045, column: 22, scope: !2874)
!3066 = !DILocation(line: 49, column: 20, scope: !679, inlinedAt: !3065)
!3067 = !DILocation(line: 190, column: 49, scope: !689, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 49, column: 9, scope: !679, inlinedAt: !3065)
!3069 = !DILocation(line: 190, column: 58, scope: !689, inlinedAt: !3068)
!3070 = !DILocation(line: 192, column: 6, scope: !700, inlinedAt: !3068)
!3071 = !DILocation(line: 192, column: 6, scope: !689, inlinedAt: !3068)
!3072 = !DILocation(line: 193, column: 3, scope: !699, inlinedAt: !3068)
!3073 = !DILocation(line: 193, column: 9, scope: !699, inlinedAt: !3068)
!3074 = !DILocation(line: 194, column: 3, scope: !699, inlinedAt: !3068)
!3075 = !DILocation(line: 1045, column: 41, scope: !2874)
!3076 = !DILocation(line: 1045, column: 47, scope: !2874)
!3077 = !DILocation(line: 1045, column: 39, scope: !2874)
!3078 = !DILocation(line: 1045, column: 50, scope: !2874)
!3079 = !DILocation(line: 190, column: 70, scope: !689, inlinedAt: !3068)
!3080 = !DILocation(line: 48, column: 49, scope: !679, inlinedAt: !3065)
!3081 = !DILocation(line: 183, column: 52, scope: !707, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 196, column: 9, scope: !689, inlinedAt: !3068)
!3083 = !DILocation(line: 184, column: 13, scope: !707, inlinedAt: !3082)
!3084 = !DILocation(line: 184, column: 25, scope: !707, inlinedAt: !3082)
!3085 = !DILocation(line: 187, column: 12, scope: !707, inlinedAt: !3082)
!3086 = !DILocation(line: 187, column: 9, scope: !707, inlinedAt: !3082)
!3087 = !DILocation(line: 187, column: 2, scope: !707, inlinedAt: !3082)
!3088 = !DILocation(line: 196, column: 2, scope: !689, inlinedAt: !3068)
!3089 = !DILocation(line: 0, scope: !689, inlinedAt: !3068)
!3090 = !DILocation(line: 197, column: 1, scope: !689, inlinedAt: !3068)
!3091 = !DILocation(line: 49, column: 2, scope: !679, inlinedAt: !3065)
!3092 = !DILocation(line: 1045, column: 22, scope: !2874)
!3093 = !DILocation(line: 1046, column: 20, scope: !2874)
!3094 = !DILocation(line: 1046, column: 13, scope: !2874)
!3095 = !DILocation(line: 1046, column: 27, scope: !2874)
!3096 = !DILocation(line: 1047, column: 20, scope: !2874)
!3097 = !DILocation(line: 1057, column: 18, scope: !2863)
!3098 = !DILocation(line: 1057, column: 5, scope: !2863)
!3099 = !DILocation(line: 1051, column: 24, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1051, column: 17)
!3101 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1049, column: 16)
!3102 = !DILocation(line: 1051, column: 17, scope: !3101)
!3103 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 1051, column: 42, scope: !3100)
!3105 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !3104)
!3106 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !3104)
!3108 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !3107)
!3109 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !3107)
!3110 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !3107)
!3111 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !3107)
!3112 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !3107)
!3113 = !DILocation(line: 161, column: 3, scope: !253, inlinedAt: !3107)
!3114 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !3107)
!3116 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !3115)
!3117 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !3115)
!3118 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !3115)
!3119 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !3115)
!3120 = !DILocation(line: 163, column: 2, scope: !186, inlinedAt: !3107)
!3121 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !3107)
!3122 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !3104)
!3123 = !DILocation(line: 1051, column: 33, scope: !3100)
!3124 = !DILocation(line: 1058, column: 17, scope: !2863)
!3125 = !DILocation(line: 165, column: 18, scope: !428, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1058, column: 9, scope: !2863)
!3127 = !DILocation(line: 166, column: 11, scope: !435, inlinedAt: !3126)
!3128 = !DILocation(line: 166, column: 9, scope: !428, inlinedAt: !3126)
!3129 = !DILocation(line: 167, column: 32, scope: !428, inlinedAt: !3126)
!3130 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 167, column: 21, scope: !428, inlinedAt: !3126)
!3132 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !3131)
!3133 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !3131)
!3134 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 167, column: 5, scope: !428, inlinedAt: !3126)
!3136 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !3135)
!3138 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !3137)
!3140 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !3139)
!3141 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !3139)
!3142 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !3139)
!3143 = !DILocation(line: 167, column: 20, scope: !428, inlinedAt: !3126)
!3144 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !3139)
!3145 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !3137)
!3146 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !3135)
!3147 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !3139)
!3148 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !3139)
!3149 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !3139)
!3150 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !3137)
!3151 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !3135)
!3152 = !DILocation(line: 168, column: 1, scope: !428, inlinedAt: !3126)
!3153 = distinct !{!3153, !3098, !3154}
!3154 = !DILocation(line: 1058, column: 30, scope: !2863)
!3155 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1059, column: 5, scope: !2863)
!3157 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !3156)
!3158 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !3156)
!3160 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !3159)
!3161 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !3159)
!3163 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !3162)
!3164 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !3162)
!3165 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !3162)
!3166 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !3162)
!3167 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !3162)
!3168 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !3162)
!3169 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !3162)
!3170 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !3159)
!3171 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !3156)
!3172 = !DILocation(line: 1060, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 1060, column: 9)
!3174 = !DILocation(line: 1060, column: 9, scope: !2863)
!3175 = !DILocation(line: 165, column: 18, scope: !428, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1060, column: 18, scope: !3173)
!3177 = !DILocation(line: 167, column: 32, scope: !428, inlinedAt: !3176)
!3178 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 167, column: 21, scope: !428, inlinedAt: !3176)
!3180 = !DILocation(line: 45, column: 5, scope: !162, inlinedAt: !3179)
!3181 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !3179)
!3182 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 167, column: 5, scope: !428, inlinedAt: !3176)
!3184 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !3183)
!3186 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !3185)
!3188 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !3187)
!3189 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !3187)
!3190 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !3187)
!3191 = !DILocation(line: 167, column: 20, scope: !428, inlinedAt: !3176)
!3192 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !3187)
!3193 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !3185)
!3194 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !3183)
!3195 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !3187)
!3196 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !3187)
!3197 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !3187)
!3198 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !3185)
!3199 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !3183)
!3200 = !DILocation(line: 168, column: 1, scope: !428, inlinedAt: !3176)
!3201 = !DILocation(line: 1060, column: 18, scope: !3173)
!3202 = !DILocation(line: 1061, column: 11, scope: !2863)
!3203 = !DILocation(line: 1062, column: 5, scope: !2863)
!3204 = !DILocation(line: 1063, column: 1, scope: !2863)
!3205 = distinct !DISubprogram(name: "sdsmapchars", scope: !3, file: !3, line: 1074, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!110, !110, !76, !76, !113}
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215}
!3209 = !DILocalVariable(name: "s", arg: 1, scope: !3205, file: !3, line: 1074, type: !110)
!3210 = !DILocalVariable(name: "from", arg: 2, scope: !3205, file: !3, line: 1074, type: !76)
!3211 = !DILocalVariable(name: "to", arg: 3, scope: !3205, file: !3, line: 1074, type: !76)
!3212 = !DILocalVariable(name: "setlen", arg: 4, scope: !3205, file: !3, line: 1074, type: !113)
!3213 = !DILocalVariable(name: "j", scope: !3205, file: !3, line: 1075, type: !113)
!3214 = !DILocalVariable(name: "i", scope: !3205, file: !3, line: 1075, type: !113)
!3215 = !DILocalVariable(name: "l", scope: !3205, file: !3, line: 1075, type: !113)
!3216 = !DILocation(line: 1074, column: 21, scope: !3205)
!3217 = !DILocation(line: 1074, column: 36, scope: !3205)
!3218 = !DILocation(line: 1074, column: 54, scope: !3205)
!3219 = !DILocation(line: 1074, column: 65, scope: !3205)
!3220 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1075, column: 22, scope: !3205)
!3222 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !3221)
!3223 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !3221)
!3224 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !3221)
!3225 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !3221)
!3226 = !DILocation(line: 1075, column: 18, scope: !3205)
!3227 = !DILocation(line: 1075, column: 12, scope: !3205)
!3228 = !DILocation(line: 1077, column: 5, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1077, column: 5)
!3230 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !3221)
!3231 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !3221)
!3232 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !3221)
!3233 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !3221)
!3234 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !3221)
!3235 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !3221)
!3236 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !3221)
!3237 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !3221)
!3238 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !3221)
!3239 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !3221)
!3240 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !3221)
!3241 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !3221)
!3242 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !3221)
!3243 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !3221)
!3244 = !DILocation(line: 0, scope: !410, inlinedAt: !3221)
!3245 = !DILocation(line: 1077, column: 19, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1077, column: 5)
!3247 = !DILocation(line: 1075, column: 15, scope: !3205)
!3248 = !DILocation(line: 1078, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1078, column: 9)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 1077, column: 29)
!3251 = !DILocation(line: 1079, column: 25, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1079, column: 17)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1078, column: 38)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1078, column: 9)
!3255 = !DILocation(line: 1079, column: 22, scope: !3252)
!3256 = !DILocation(line: 1079, column: 17, scope: !3253)
!3257 = !DILocation(line: 1080, column: 24, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1079, column: 34)
!3259 = !DILocation(line: 1080, column: 22, scope: !3258)
!3260 = !DILocation(line: 1081, column: 17, scope: !3258)
!3261 = !DILocation(line: 1078, column: 34, scope: !3254)
!3262 = !DILocation(line: 1078, column: 23, scope: !3254)
!3263 = distinct !{!3263, !3248, !3264}
!3264 = !DILocation(line: 1083, column: 9, scope: !3249)
!3265 = !DILocation(line: 1077, column: 25, scope: !3246)
!3266 = distinct !{!3266, !3228, !3267}
!3267 = !DILocation(line: 1084, column: 5, scope: !3229)
!3268 = !DILocation(line: 1085, column: 5, scope: !3205)
!3269 = distinct !DISubprogram(name: "sdsjoin", scope: !3, file: !3, line: 1090, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!110, !2872, !29, !15}
!3272 = !{!3273, !3274, !3275, !3276, !3277}
!3273 = !DILocalVariable(name: "argv", arg: 1, scope: !3269, file: !3, line: 1090, type: !2872)
!3274 = !DILocalVariable(name: "argc", arg: 2, scope: !3269, file: !3, line: 1090, type: !29)
!3275 = !DILocalVariable(name: "sep", arg: 3, scope: !3269, file: !3, line: 1090, type: !15)
!3276 = !DILocalVariable(name: "join", scope: !3269, file: !3, line: 1091, type: !110)
!3277 = !DILocalVariable(name: "j", scope: !3269, file: !3, line: 1092, type: !29)
!3278 = !DILocation(line: 1090, column: 20, scope: !3269)
!3279 = !DILocation(line: 1090, column: 30, scope: !3269)
!3280 = !DILocation(line: 1090, column: 42, scope: !3269)
!3281 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 150, column: 12, scope: !330, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 1091, column: 16, scope: !3269)
!3284 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !3282)
!3286 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !3285)
!3287 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3282)
!3288 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !3282)
!3290 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !3289)
!3291 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3282)
!3293 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !3292)
!3294 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !3292)
!3296 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !3295)
!3297 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !3295)
!3298 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !3295)
!3299 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !3295)
!3300 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !3295)
!3301 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !3295)
!3302 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !3292)
!3303 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3282)
!3304 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3282)
!3305 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !3295)
!3307 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !3306)
!3308 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !3306)
!3309 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !3306)
!3310 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !3306)
!3311 = !DILocation(line: 104, column: 12, scope: !282, inlinedAt: !3282)
!3312 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3282)
!3313 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3282)
!3314 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3282)
!3315 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3282)
!3316 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3282)
!3317 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3282)
!3318 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3282)
!3319 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3282)
!3320 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3282)
!3321 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3282)
!3322 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3282)
!3323 = !DILocation(line: 0, scope: !107, inlinedAt: !3282)
!3324 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !3282)
!3325 = !DILocation(line: 150, column: 5, scope: !330, inlinedAt: !3283)
!3326 = !DILocation(line: 1091, column: 9, scope: !3269)
!3327 = !DILocation(line: 1092, column: 9, scope: !3269)
!3328 = !DILocation(line: 1094, column: 19, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1094, column: 5)
!3330 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1094, column: 5)
!3331 = !DILocation(line: 1094, column: 5, scope: !3330)
!3332 = !DILocation(line: 1095, column: 29, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1094, column: 32)
!3334 = !DILocation(line: 412, column: 16, scope: !1260, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 1095, column: 16, scope: !3333)
!3336 = !DILocation(line: 412, column: 31, scope: !1260, inlinedAt: !3335)
!3337 = !DILocation(line: 413, column: 28, scope: !1260, inlinedAt: !3335)
!3338 = !DILocation(line: 413, column: 12, scope: !1260, inlinedAt: !3335)
!3339 = !DILocation(line: 413, column: 5, scope: !1260, inlinedAt: !3335)
!3340 = !DILocation(line: 1096, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1096, column: 13)
!3342 = !DILocation(line: 1096, column: 13, scope: !3333)
!3343 = !DILocation(line: 412, column: 16, scope: !1260, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 1096, column: 33, scope: !3341)
!3345 = !DILocation(line: 412, column: 31, scope: !1260, inlinedAt: !3344)
!3346 = !DILocation(line: 413, column: 28, scope: !1260, inlinedAt: !3344)
!3347 = !DILocation(line: 413, column: 12, scope: !1260, inlinedAt: !3344)
!3348 = !DILocation(line: 413, column: 5, scope: !1260, inlinedAt: !3344)
!3349 = !DILocation(line: 1096, column: 26, scope: !3341)
!3350 = !DILocation(line: 0, scope: !3333)
!3351 = !DILocation(line: 1094, column: 28, scope: !3329)
!3352 = distinct !{!3352, !3331, !3353}
!3353 = !DILocation(line: 1097, column: 5, scope: !3330)
!3354 = !DILocation(line: 0, scope: !3341)
!3355 = !DILocation(line: 1098, column: 5, scope: !3269)
!3356 = distinct !DISubprogram(name: "sdsjoinsds", scope: !3, file: !3, line: 1102, type: !3357, isLocal: false, isDefinition: true, scopeLine: 1102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!110, !2534, !29, !76, !113}
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365}
!3360 = !DILocalVariable(name: "argv", arg: 1, scope: !3356, file: !3, line: 1102, type: !2534)
!3361 = !DILocalVariable(name: "argc", arg: 2, scope: !3356, file: !3, line: 1102, type: !29)
!3362 = !DILocalVariable(name: "sep", arg: 3, scope: !3356, file: !3, line: 1102, type: !76)
!3363 = !DILocalVariable(name: "seplen", arg: 4, scope: !3356, file: !3, line: 1102, type: !113)
!3364 = !DILocalVariable(name: "join", scope: !3356, file: !3, line: 1103, type: !110)
!3365 = !DILocalVariable(name: "j", scope: !3356, file: !3, line: 1104, type: !29)
!3366 = !DILocation(line: 1102, column: 21, scope: !3356)
!3367 = !DILocation(line: 1102, column: 31, scope: !3356)
!3368 = !DILocation(line: 1102, column: 49, scope: !3356)
!3369 = !DILocation(line: 1102, column: 61, scope: !3356)
!3370 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 150, column: 12, scope: !330, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1103, column: 16, scope: !3356)
!3373 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 92, column: 17, scope: !107, inlinedAt: !3371)
!3375 = !DILocation(line: 74, column: 1, scope: !136, inlinedAt: !3374)
!3376 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3371)
!3377 = !DILocation(line: 44, column: 35, scope: !162, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 96, column: 18, scope: !107, inlinedAt: !3371)
!3379 = !DILocation(line: 58, column: 1, scope: !162, inlinedAt: !3378)
!3380 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3371)
!3382 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !3381)
!3383 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !3381)
!3385 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !3384)
!3386 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !3384)
!3387 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !3384)
!3388 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !3384)
!3389 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !3384)
!3390 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !3384)
!3391 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !3381)
!3392 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3371)
!3393 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3371)
!3394 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !3384)
!3396 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !3395)
!3397 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !3395)
!3398 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !3395)
!3399 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !3395)
!3400 = !DILocation(line: 104, column: 12, scope: !282, inlinedAt: !3371)
!3401 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3371)
!3402 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3371)
!3403 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3371)
!3404 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3371)
!3405 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3371)
!3406 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3371)
!3407 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3371)
!3408 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3371)
!3409 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3371)
!3410 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3371)
!3411 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3371)
!3412 = !DILocation(line: 0, scope: !107, inlinedAt: !3371)
!3413 = !DILocation(line: 145, column: 1, scope: !107, inlinedAt: !3371)
!3414 = !DILocation(line: 150, column: 5, scope: !330, inlinedAt: !3372)
!3415 = !DILocation(line: 1103, column: 9, scope: !3356)
!3416 = !DILocation(line: 1104, column: 9, scope: !3356)
!3417 = !DILocation(line: 1106, column: 19, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1106, column: 5)
!3419 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1106, column: 5)
!3420 = !DILocation(line: 1106, column: 5, scope: !3419)
!3421 = !DILocation(line: 1107, column: 32, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1106, column: 32)
!3423 = !DILocation(line: 420, column: 19, scope: !1271, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 1107, column: 16, scope: !3422)
!3425 = !DILocation(line: 420, column: 32, scope: !1271, inlinedAt: !3424)
!3426 = !DILocation(line: 87, column: 39, scope: !399, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 421, column: 28, scope: !1271, inlinedAt: !3424)
!3428 = !DILocation(line: 88, column: 27, scope: !399, inlinedAt: !3427)
!3429 = !DILocation(line: 88, column: 19, scope: !399, inlinedAt: !3427)
!3430 = !DILocation(line: 89, column: 5, scope: !399, inlinedAt: !3427)
!3431 = !DILocation(line: 91, column: 20, scope: !410, inlinedAt: !3427)
!3432 = !DILocation(line: 91, column: 13, scope: !410, inlinedAt: !3427)
!3433 = !DILocation(line: 93, column: 20, scope: !410, inlinedAt: !3427)
!3434 = !DILocation(line: 93, column: 34, scope: !410, inlinedAt: !3427)
!3435 = !DILocation(line: 93, column: 13, scope: !410, inlinedAt: !3427)
!3436 = !DILocation(line: 95, column: 20, scope: !410, inlinedAt: !3427)
!3437 = !DILocation(line: 95, column: 35, scope: !410, inlinedAt: !3427)
!3438 = !DILocation(line: 95, column: 13, scope: !410, inlinedAt: !3427)
!3439 = !DILocation(line: 97, column: 20, scope: !410, inlinedAt: !3427)
!3440 = !DILocation(line: 97, column: 35, scope: !410, inlinedAt: !3427)
!3441 = !DILocation(line: 97, column: 13, scope: !410, inlinedAt: !3427)
!3442 = !DILocation(line: 99, column: 20, scope: !410, inlinedAt: !3427)
!3443 = !DILocation(line: 99, column: 35, scope: !410, inlinedAt: !3427)
!3444 = !DILocation(line: 99, column: 13, scope: !410, inlinedAt: !3427)
!3445 = !DILocation(line: 0, scope: !410, inlinedAt: !3427)
!3446 = !DILocation(line: 102, column: 1, scope: !399, inlinedAt: !3427)
!3447 = !DILocation(line: 421, column: 12, scope: !1271, inlinedAt: !3424)
!3448 = !DILocation(line: 421, column: 5, scope: !1271, inlinedAt: !3424)
!3449 = !DILocation(line: 1108, column: 15, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1108, column: 13)
!3451 = !DILocation(line: 1108, column: 13, scope: !3422)
!3452 = !DILocation(line: 1108, column: 33, scope: !3450)
!3453 = !DILocation(line: 1108, column: 26, scope: !3450)
!3454 = !DILocation(line: 0, scope: !3422)
!3455 = !DILocation(line: 1106, column: 28, scope: !3418)
!3456 = distinct !{!3456, !3420, !3457}
!3457 = !DILocation(line: 1109, column: 5, scope: !3419)
!3458 = !DILocation(line: 0, scope: !3450)
!3459 = !DILocation(line: 1110, column: 5, scope: !3356)
!3460 = distinct !DISubprogram(name: "sds_malloc", scope: !3, file: !3, line: 1118, type: !175, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3461)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "size", arg: 1, scope: !3460, file: !3, line: 1118, type: !113)
!3463 = !DILocation(line: 1118, column: 25, scope: !3460)
!3464 = !DILocation(line: 52, column: 37, scope: !173, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1118, column: 40, scope: !3460)
!3466 = !DILocation(line: 53, column: 19, scope: !173, inlinedAt: !3465)
!3467 = !DILocation(line: 157, column: 48, scope: !186, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 53, column: 9, scope: !173, inlinedAt: !3465)
!3469 = !DILocation(line: 157, column: 58, scope: !186, inlinedAt: !3468)
!3470 = !DILocation(line: 159, column: 6, scope: !249, inlinedAt: !3468)
!3471 = !DILocation(line: 159, column: 6, scope: !186, inlinedAt: !3468)
!3472 = !DILocation(line: 160, column: 3, scope: !253, inlinedAt: !3468)
!3473 = !DILocation(line: 160, column: 9, scope: !253, inlinedAt: !3468)
!3474 = !DILocation(line: 161, column: 3, scope: !253, inlinedAt: !3468)
!3475 = !DILocation(line: 151, column: 51, scope: !259, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 163, column: 9, scope: !186, inlinedAt: !3468)
!3477 = !DILocation(line: 151, column: 61, scope: !259, inlinedAt: !3476)
!3478 = !DILocation(line: 154, column: 12, scope: !259, inlinedAt: !3476)
!3479 = !DILocation(line: 154, column: 9, scope: !259, inlinedAt: !3476)
!3480 = !DILocation(line: 154, column: 2, scope: !259, inlinedAt: !3476)
!3481 = !DILocation(line: 163, column: 2, scope: !186, inlinedAt: !3468)
!3482 = !DILocation(line: 0, scope: !186, inlinedAt: !3468)
!3483 = !DILocation(line: 164, column: 1, scope: !186, inlinedAt: !3468)
!3484 = !DILocation(line: 53, column: 2, scope: !173, inlinedAt: !3465)
!3485 = !DILocation(line: 1118, column: 33, scope: !3460)
!3486 = distinct !DISubprogram(name: "sds_realloc", scope: !3, file: !3, line: 1119, type: !680, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3487)
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "ptr", arg: 1, scope: !3486, file: !3, line: 1119, type: !14)
!3489 = !DILocalVariable(name: "size", arg: 2, scope: !3486, file: !3, line: 1119, type: !113)
!3490 = !DILocation(line: 1119, column: 25, scope: !3486)
!3491 = !DILocation(line: 1119, column: 37, scope: !3486)
!3492 = !DILocation(line: 48, column: 37, scope: !679, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 1119, column: 52, scope: !3486)
!3494 = !DILocation(line: 48, column: 49, scope: !679, inlinedAt: !3493)
!3495 = !DILocation(line: 49, column: 20, scope: !679, inlinedAt: !3493)
!3496 = !DILocation(line: 190, column: 49, scope: !689, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 49, column: 9, scope: !679, inlinedAt: !3493)
!3498 = !DILocation(line: 190, column: 58, scope: !689, inlinedAt: !3497)
!3499 = !DILocation(line: 190, column: 70, scope: !689, inlinedAt: !3497)
!3500 = !DILocation(line: 192, column: 6, scope: !700, inlinedAt: !3497)
!3501 = !DILocation(line: 192, column: 6, scope: !689, inlinedAt: !3497)
!3502 = !DILocation(line: 193, column: 3, scope: !699, inlinedAt: !3497)
!3503 = !DILocation(line: 193, column: 9, scope: !699, inlinedAt: !3497)
!3504 = !DILocation(line: 194, column: 3, scope: !699, inlinedAt: !3497)
!3505 = !DILocation(line: 183, column: 52, scope: !707, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 196, column: 9, scope: !689, inlinedAt: !3497)
!3507 = !DILocation(line: 184, column: 13, scope: !707, inlinedAt: !3506)
!3508 = !DILocation(line: 184, column: 25, scope: !707, inlinedAt: !3506)
!3509 = !DILocation(line: 187, column: 12, scope: !707, inlinedAt: !3506)
!3510 = !DILocation(line: 187, column: 9, scope: !707, inlinedAt: !3506)
!3511 = !DILocation(line: 187, column: 2, scope: !707, inlinedAt: !3506)
!3512 = !DILocation(line: 196, column: 2, scope: !689, inlinedAt: !3497)
!3513 = !DILocation(line: 0, scope: !689, inlinedAt: !3497)
!3514 = !DILocation(line: 197, column: 1, scope: !689, inlinedAt: !3497)
!3515 = !DILocation(line: 49, column: 2, scope: !679, inlinedAt: !3493)
!3516 = !DILocation(line: 1119, column: 45, scope: !3486)
!3517 = distinct !DISubprogram(name: "sds_free", scope: !3, file: !3, line: 1120, type: !444, isLocal: false, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3518)
!3518 = !{!3519}
!3519 = !DILocalVariable(name: "ptr", arg: 1, scope: !3517, file: !3, line: 1120, type: !14)
!3520 = !DILocation(line: 1120, column: 21, scope: !3517)
!3521 = !DILocation(line: 56, column: 33, scope: !443, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1120, column: 28, scope: !3517)
!3523 = !DILocation(line: 57, column: 10, scope: !443, inlinedAt: !3522)
!3524 = !DILocation(line: 237, column: 45, scope: !450, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 57, column: 2, scope: !443, inlinedAt: !3522)
!3526 = !DILocation(line: 237, column: 54, scope: !450, inlinedAt: !3525)
!3527 = !DILocation(line: 231, column: 48, scope: !456, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 239, column: 2, scope: !450, inlinedAt: !3525)
!3529 = !DILocation(line: 231, column: 57, scope: !456, inlinedAt: !3528)
!3530 = !DILocation(line: 233, column: 2, scope: !462, inlinedAt: !3528)
!3531 = !DILocation(line: 233, column: 2, scope: !463, inlinedAt: !3528)
!3532 = !DILocation(line: 233, column: 2, scope: !466, inlinedAt: !3528)
!3533 = !DILocation(line: 234, column: 5, scope: !456, inlinedAt: !3528)
!3534 = !DILocation(line: 234, column: 2, scope: !456, inlinedAt: !3528)
!3535 = !DILocation(line: 235, column: 1, scope: !456, inlinedAt: !3528)
!3536 = !DILocation(line: 240, column: 1, scope: !450, inlinedAt: !3525)
!3537 = !DILocation(line: 58, column: 1, scope: !443, inlinedAt: !3522)
!3538 = !DILocation(line: 1120, column: 41, scope: !3517)
!3539 = !DILocation(line: 196, column: 2, scope: !72)
!3540 = !DILocation(line: 196, column: 10, scope: !72)
!3541 = !DILocation(line: 197, column: 2, scope: !72)
!3542 = !DILocation(line: 198, column: 2, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !73, line: 198, column: 2)
!3544 = distinct !DILexicalBlock(scope: !72, file: !73, line: 198, column: 2)
!3545 = !DILocation(line: 199, column: 2, scope: !72)
!3546 = !DILocation(line: 200, column: 1, scope: !72)
