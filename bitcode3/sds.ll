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
  %13 = icmp eq i8 %12, 0, !dbg !156
  %14 = icmp eq i64 %1, 0, !dbg !158
  %15 = and i1 %14, %13, !dbg !159
  %16 = select i1 %15, i8 1, i8 %12, !dbg !159
  %17 = trunc i8 %16 to i3, !dbg !167
  %18 = xor i3 %17, -4, !dbg !167
  %19 = zext i3 %18 to i64, !dbg !167
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdsnewlen, i64 0, i64 %19, !dbg !167
  %21 = load i64, i64* %20, align 8, !dbg !167
  %22 = add i64 %1, 1, !dbg !168
  %23 = add i64 %22, %21, !dbg !169
  %24 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !178, !tbaa !179
  %25 = icmp eq %struct.uk_alloc* %24, null, !dbg !246
  br i1 %25, label %26, label %28, !dbg !248, !prof !249

; <label>:26:                                     ; preds = %11
  %27 = tail call i32* @__errno() #9, !dbg !250
  store i32 12, i32* %27, align 4, !dbg !252, !tbaa !253
  br label %32, !dbg !255

; <label>:28:                                     ; preds = %11
  %29 = bitcast %struct.uk_alloc* %24 to i8* (%struct.uk_alloc*, i64)**, !dbg !263
  %30 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %29, align 8, !dbg !263, !tbaa !179
  %31 = tail call i8* %30(%struct.uk_alloc* nonnull %24, i64 %23) #9, !dbg !264
  br label %32, !dbg !265

; <label>:32:                                     ; preds = %26, %28
  %33 = phi i8* [ null, %26 ], [ %31, %28 ], !dbg !266
  %34 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !268, !tbaa !179
  %35 = icmp eq i8* %34, %0, !dbg !270
  br i1 %35, label %40, label %36, !dbg !271

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i8* %0, null, !dbg !272
  br i1 %37, label %38, label %40, !dbg !274

; <label>:38:                                     ; preds = %36
  %39 = tail call i8* @memset(i8* %33, i32 0, i64 %23) #9, !dbg !275
  br label %40, !dbg !275

; <label>:40:                                     ; preds = %32, %36, %38
  %41 = phi i8* [ %0, %36 ], [ null, %38 ], [ null, %32 ]
  %42 = icmp eq i8* %33, null, !dbg !276
  br i1 %42, label %81, label %43, !dbg !278

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds i8, i8* %33, i64 %21, !dbg !279
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !281
  switch i3 %17, label %73 [
    i3 0, label %46
    i3 1, label %50
    i3 2, label %54
    i3 3, label %60
    i3 -4, label %66
  ], !dbg !283

; <label>:46:                                     ; preds = %43
  %47 = trunc i64 %1 to i8, !dbg !284
  %48 = shl i8 %47, 3, !dbg !284
  %49 = or i8 %16, %48, !dbg !284
  br label %71, !dbg !286

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %44, i64 -3, !dbg !287
  %52 = trunc i64 %1 to i8, !dbg !288
  store i8 %52, i8* %51, align 1, !dbg !289, !tbaa !290
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !291
  store i8 %52, i8* %53, align 1, !dbg !292, !tbaa !290
  br label %71

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !293
  %56 = trunc i64 %1 to i16, !dbg !294
  %57 = bitcast i8* %55 to i16*, !dbg !295
  store i16 %56, i16* %57, align 1, !dbg !296, !tbaa !297
  %58 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !299
  %59 = bitcast i8* %58 to i16*, !dbg !299
  store i16 %56, i16* %59, align 1, !dbg !300, !tbaa !297
  br label %71

; <label>:60:                                     ; preds = %43
  %61 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !301
  %62 = trunc i64 %1 to i32, !dbg !302
  %63 = bitcast i8* %61 to i32*, !dbg !303
  store i32 %62, i32* %63, align 1, !dbg !304, !tbaa !253
  %64 = getelementptr inbounds i8, i8* %61, i64 4, !dbg !305
  %65 = bitcast i8* %64 to i32*, !dbg !305
  store i32 %62, i32* %65, align 1, !dbg !306, !tbaa !253
  br label %71

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !307
  %68 = bitcast i8* %67 to i64*, !dbg !308
  store i64 %1, i64* %68, align 1, !dbg !309, !tbaa !310
  %69 = getelementptr inbounds i8, i8* %67, i64 8, !dbg !312
  %70 = bitcast i8* %69 to i64*, !dbg !312
  store i64 %1, i64* %70, align 1, !dbg !313, !tbaa !310
  br label %71

; <label>:71:                                     ; preds = %46, %50, %54, %60, %66
  %72 = phi i8 [ %16, %66 ], [ %16, %60 ], [ %16, %54 ], [ %16, %50 ], [ %49, %46 ]
  store i8 %72, i8* %45, align 1, !dbg !314, !tbaa !290
  br label %73, !dbg !315

; <label>:73:                                     ; preds = %71, %43
  %74 = icmp ne i64 %1, 0, !dbg !315
  %75 = icmp ne i8* %41, null, !dbg !317
  %76 = and i1 %74, %75, !dbg !318
  br i1 %76, label %77, label %79, !dbg !318

; <label>:77:                                     ; preds = %73
  %78 = tail call i8* @memcpy(i8* nonnull %44, i8* nonnull %41, i64 %1) #9, !dbg !319
  br label %79, !dbg !319

; <label>:79:                                     ; preds = %77, %73
  %80 = getelementptr inbounds i8, i8* %44, i64 %1, !dbg !320
  store i8 0, i8* %80, align 1, !dbg !321, !tbaa !290
  br label %81, !dbg !322

; <label>:81:                                     ; preds = %40, %79
  %82 = phi i8* [ %44, %79 ], [ null, %40 ], !dbg !323
  ret i8* %82, !dbg !324
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
define dso_local i8* @sdsempty() local_unnamed_addr #0 !dbg !325 {
  %1 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !334, !tbaa !179
  %2 = icmp eq %struct.uk_alloc* %1, null, !dbg !338
  br i1 %2, label %3, label %5, !dbg !339, !prof !249

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno() #9, !dbg !340
  store i32 12, i32* %4, align 4, !dbg !341, !tbaa !253
  br label %14, !dbg !343

; <label>:5:                                      ; preds = %0
  %6 = bitcast %struct.uk_alloc* %1 to i8* (%struct.uk_alloc*, i64)**, !dbg !347
  %7 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %6, align 8, !dbg !347, !tbaa !179
  %8 = tail call i8* %7(%struct.uk_alloc* nonnull %1, i64 4) #9, !dbg !348
  %9 = icmp eq i8* %8, null, !dbg !349
  br i1 %9, label %14, label %10, !dbg !343

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !350
  %12 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !352
  store i8 0, i8* %8, align 1, !dbg !355, !tbaa !290
  %13 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !356
  store i8 0, i8* %13, align 1, !dbg !357, !tbaa !290
  store i8 1, i8* %12, align 1, !dbg !358, !tbaa !290
  store i8 0, i8* %11, align 1, !dbg !359, !tbaa !290
  br label %14, !dbg !360

; <label>:14:                                     ; preds = %3, %5, %10
  %15 = phi i8* [ %11, %10 ], [ null, %5 ], [ null, %3 ], !dbg !361
  ret i8* %15, !dbg !362
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsnew(i8*) local_unnamed_addr #0 !dbg !363 {
  %2 = icmp eq i8* %0, null, !dbg !370
  br i1 %2, label %5, label %3, !dbg !371

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #9, !dbg !372
  br label %5, !dbg !371

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ], !dbg !371
  %7 = tail call i8* @sdsnewlen(i8* %0, i64 %6) #10, !dbg !374
  ret i8* %7, !dbg !375
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsdup(i8*) local_unnamed_addr #0 !dbg !376 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !391
  %3 = load i8, i8* %2, align 1, !dbg !391, !tbaa !290
  %4 = trunc i8 %3 to i3, !dbg !393
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !393

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !394
  %7 = zext i8 %6 to i64, !dbg !394
  br label %26, !dbg !396

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !397
  %10 = load i8, i8* %9, align 1, !dbg !398, !tbaa !290
  %11 = zext i8 %10 to i64, !dbg !397
  br label %26, !dbg !399

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !400
  %14 = bitcast i8* %13 to i16*, !dbg !401
  %15 = load i16, i16* %14, align 1, !dbg !401, !tbaa !297
  %16 = zext i16 %15 to i64, !dbg !400
  br label %26, !dbg !402

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !403
  %19 = bitcast i8* %18 to i32*, !dbg !404
  %20 = load i32, i32* %19, align 1, !dbg !404, !tbaa !253
  %21 = zext i32 %20 to i64, !dbg !403
  br label %26, !dbg !405

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !406
  %24 = bitcast i8* %23 to i64*, !dbg !407
  %25 = load i64, i64* %24, align 1, !dbg !407, !tbaa !310
  br label %26, !dbg !408

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ], !dbg !409
  %28 = tail call i8* @sdsnewlen(i8* nonnull %0, i64 %27) #10, !dbg !410
  ret i8* %28, !dbg !411
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfree(i8*) local_unnamed_addr #0 !dbg !412 {
  %2 = icmp eq i8* %0, null, !dbg !418
  br i1 %2, label %18, label %3, !dbg !420

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !421, !tbaa !179
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !440
  br i1 %5, label %6, label %7, !dbg !443, !prof !249

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !444
  tail call void @ukplat_terminate(i32 3) #11, !dbg !444
  unreachable, !dbg !444

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !446
  %9 = load i8, i8* %8, align 1, !dbg !446, !tbaa !290
  %10 = and i8 %9, 7, !dbg !449
  %11 = xor i8 %10, 4, !dbg !449
  %12 = zext i8 %11 to i64, !dbg !449
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %12, !dbg !449
  %14 = load i64, i64* %13, align 8, !dbg !449
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !450
  %16 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 5, !dbg !454
  %17 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %16, align 8, !dbg !454, !tbaa !179
  tail call void %17(%struct.uk_alloc* nonnull %4, i8* nonnull %15) #9, !dbg !455
  br label %18, !dbg !456

; <label>:18:                                     ; preds = %1, %7
  ret void, !dbg !456
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsupdatelen(i8*) local_unnamed_addr #0 !dbg !457 {
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !462
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !477
  %4 = load i8, i8* %3, align 1, !dbg !477, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !479
  switch i3 %5, label %23 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %12
    i3 3, label %16
    i3 -4, label %20
  ], !dbg !479

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i8, !dbg !481
  %8 = shl i8 %7, 3, !dbg !481
  store i8 %8, i8* %3, align 1, !dbg !482, !tbaa !290
  br label %23, !dbg !483

; <label>:9:                                      ; preds = %1
  %10 = trunc i64 %2 to i8, !dbg !484
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !485
  store i8 %10, i8* %11, align 1, !dbg !486, !tbaa !290
  br label %23, !dbg !487

; <label>:12:                                     ; preds = %1
  %13 = trunc i64 %2 to i16, !dbg !488
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !489
  %15 = bitcast i8* %14 to i16*, !dbg !490
  store i16 %13, i16* %15, align 1, !dbg !491, !tbaa !297
  br label %23, !dbg !492

; <label>:16:                                     ; preds = %1
  %17 = trunc i64 %2 to i32, !dbg !493
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !494
  %19 = bitcast i8* %18 to i32*, !dbg !495
  store i32 %17, i32* %19, align 1, !dbg !496, !tbaa !253
  br label %23, !dbg !497

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !498
  %22 = bitcast i8* %21 to i64*, !dbg !499
  store i64 %2, i64* %22, align 1, !dbg !500, !tbaa !310
  br label %23, !dbg !501

; <label>:23:                                     ; preds = %1, %6, %9, %12, %16, %20
  ret void, !dbg !502
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsclear(i8* nocapture) local_unnamed_addr #0 !dbg !503 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !510
  %3 = load i8, i8* %2, align 1, !dbg !510, !tbaa !290
  %4 = trunc i8 %3 to i3, !dbg !512
  switch i3 %4, label %17 [
    i3 0, label %5
    i3 1, label %6
    i3 2, label %8
    i3 3, label %11
    i3 -4, label %14
  ], !dbg !512

; <label>:5:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !514, !tbaa !290
  br label %17, !dbg !515

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !516
  store i8 0, i8* %7, align 1, !dbg !517, !tbaa !290
  br label %17, !dbg !518

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !519
  %10 = bitcast i8* %9 to i16*, !dbg !520
  store i16 0, i16* %10, align 1, !dbg !521, !tbaa !297
  br label %17, !dbg !522

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !523
  %13 = bitcast i8* %12 to i32*, !dbg !524
  store i32 0, i32* %13, align 1, !dbg !525, !tbaa !253
  br label %17, !dbg !526

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !527
  %16 = bitcast i8* %15 to i64*, !dbg !528
  store i64 0, i64* %16, align 1, !dbg !529, !tbaa !310
  br label %17, !dbg !530

; <label>:17:                                     ; preds = %1, %5, %6, %8, %11, %14
  store i8 0, i8* %0, align 1, !dbg !531, !tbaa !290
  ret void, !dbg !532
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #0 !dbg !533 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !564
  %4 = load i8, i8* %3, align 1, !dbg !564, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !566
  switch i3 %5, label %41 [
    i3 -4, label %33
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !566

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !567
  %8 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !568
  %9 = load i8, i8* %8, align 1, !dbg !568, !tbaa !290
  %10 = zext i8 %9 to i64, !dbg !569
  %11 = load i8, i8* %7, align 1, !dbg !570, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !571
  %13 = sub nsw i64 %10, %12, !dbg !572
  br label %41

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !573
  %16 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !574
  %17 = bitcast i8* %16 to i16*, !dbg !574
  %18 = load i16, i16* %17, align 1, !dbg !574, !tbaa !297
  %19 = zext i16 %18 to i64, !dbg !575
  %20 = bitcast i8* %15 to i16*, !dbg !576
  %21 = load i16, i16* %20, align 1, !dbg !576, !tbaa !297
  %22 = zext i16 %21 to i64, !dbg !577
  %23 = sub nsw i64 %19, %22, !dbg !578
  br label %41

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !579
  %26 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !580
  %27 = bitcast i8* %26 to i32*, !dbg !580
  %28 = load i32, i32* %27, align 1, !dbg !580, !tbaa !253
  %29 = bitcast i8* %25 to i32*, !dbg !581
  %30 = load i32, i32* %29, align 1, !dbg !581, !tbaa !253
  %31 = sub i32 %28, %30, !dbg !582
  %32 = zext i32 %31 to i64, !dbg !583
  br label %41

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !584
  %35 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !585
  %36 = bitcast i8* %35 to i64*, !dbg !585
  %37 = load i64, i64* %36, align 1, !dbg !585, !tbaa !310
  %38 = bitcast i8* %34 to i64*, !dbg !586
  %39 = load i64, i64* %38, align 1, !dbg !586, !tbaa !310
  %40 = sub i64 %37, %39, !dbg !587
  br label %41

; <label>:41:                                     ; preds = %2, %6, %14, %24, %33
  %42 = phi i64 [ %40, %33 ], [ %32, %24 ], [ %23, %14 ], [ %13, %6 ], [ 0, %2 ], !dbg !588
  %43 = and i8 %4, 7, !dbg !591
  %44 = icmp ult i64 %42, %1, !dbg !593
  br i1 %44, label %45, label %167, !dbg !595

; <label>:45:                                     ; preds = %41
  switch i3 %5, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !599

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %4, 3, !dbg !600
  %48 = zext i8 %47 to i64, !dbg !600
  br label %67, !dbg !604

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !605
  %51 = load i8, i8* %50, align 1, !dbg !606, !tbaa !290
  %52 = zext i8 %51 to i64, !dbg !605
  br label %67, !dbg !607

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !609
  %55 = bitcast i8* %54 to i16*, !dbg !610
  %56 = load i16, i16* %55, align 1, !dbg !610, !tbaa !297
  %57 = zext i16 %56 to i64, !dbg !609
  br label %67, !dbg !611

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !612
  %60 = bitcast i8* %59 to i32*, !dbg !613
  %61 = load i32, i32* %60, align 1, !dbg !613, !tbaa !253
  %62 = zext i32 %61 to i64, !dbg !612
  br label %67, !dbg !614

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !615
  %65 = bitcast i8* %64 to i64*, !dbg !616
  %66 = load i64, i64* %65, align 1, !dbg !616, !tbaa !310
  br label %67, !dbg !617

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  %69 = phi i64 [ -17, %63 ], [ -9, %58 ], [ -5, %53 ], [ -3, %49 ], [ -1, %46 ], [ 0, %45 ]
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !618
  %71 = add i64 %68, %1, !dbg !620
  %72 = icmp ult i64 %71, 1048576, !dbg !622
  %73 = shl i64 %71, 1, !dbg !624
  %74 = add i64 %71, 1048576, !dbg !625
  %75 = select i1 %72, i64 %73, i64 %74, !dbg !626
  %76 = icmp ult i64 %75, 256, !dbg !629
  br i1 %76, label %83, label %77, !dbg !630

; <label>:77:                                     ; preds = %67
  %78 = icmp ult i64 %75, 65536, !dbg !631
  br i1 %78, label %85, label %79, !dbg !632

; <label>:79:                                     ; preds = %77
  %80 = icmp ult i64 %75, 4294967296, !dbg !633
  %81 = select i1 %80, i8 3, i8 4, !dbg !634
  %82 = trunc i8 %81 to i3, !dbg !638
  switch i3 %82, label %89 [
    i3 0, label %90
    i3 1, label %83
    i3 2, label %85
    i3 3, label %87
    i3 -4, label %88
  ], !dbg !638

; <label>:83:                                     ; preds = %67, %79
  %84 = phi i8 [ %81, %79 ], [ 1, %67 ]
  br label %90, !dbg !639

; <label>:85:                                     ; preds = %77, %79
  %86 = phi i8 [ %81, %79 ], [ 2, %77 ]
  br label %90, !dbg !640

; <label>:87:                                     ; preds = %79
  br label %90, !dbg !641

; <label>:88:                                     ; preds = %79
  br label %90, !dbg !642

; <label>:89:                                     ; preds = %79
  br label %90, !dbg !643

; <label>:90:                                     ; preds = %79, %83, %85, %87, %88, %89
  %91 = phi i3 [ %82, %89 ], [ %82, %88 ], [ %82, %87 ], [ 2, %85 ], [ 1, %83 ], [ %82, %79 ]
  %92 = phi i8 [ %81, %89 ], [ %81, %88 ], [ %81, %87 ], [ %86, %85 ], [ %84, %83 ], [ %81, %79 ]
  %93 = phi i64 [ 0, %89 ], [ 17, %88 ], [ 9, %87 ], [ 5, %85 ], [ 3, %83 ], [ 1, %79 ]
  %94 = zext i8 %43 to i32, !dbg !644
  %95 = sext i8 %92 to i32, !dbg !646
  %96 = icmp eq i32 %94, %95, !dbg !647
  %97 = add i64 %75, 1, !dbg !648
  %98 = add i64 %97, %93, !dbg !648
  %99 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !648, !tbaa !179
  %100 = icmp eq %struct.uk_alloc* %99, null, !dbg !648
  br i1 %96, label %101, label %113, !dbg !650

; <label>:101:                                    ; preds = %90
  br i1 %100, label %102, label %104, !dbg !670, !prof !249

; <label>:102:                                    ; preds = %101
  %103 = tail call i32* @__errno() #9, !dbg !671
  store i32 12, i32* %103, align 4, !dbg !674, !tbaa !253
  br label %167, !dbg !676

; <label>:104:                                    ; preds = %101
  %105 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %99, i64 0, i32 2, !dbg !686
  %106 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %105, align 8, !dbg !686, !tbaa !179
  %107 = tail call i8* %106(%struct.uk_alloc* nonnull %99, i8* %70, i64 %98) #9, !dbg !687
  %108 = icmp eq i8* %107, null, !dbg !688
  br i1 %108, label %167, label %109, !dbg !676

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds i8, i8* %107, i64 %93, !dbg !690
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  %112 = load i8, i8* %111, align 1, !dbg !691, !tbaa !290
  br label %149, !dbg !698

; <label>:113:                                    ; preds = %90
  br i1 %100, label %114, label %116, !dbg !704, !prof !249

; <label>:114:                                    ; preds = %113
  %115 = tail call i32* @__errno() #9, !dbg !705
  store i32 12, i32* %115, align 4, !dbg !706, !tbaa !253
  br label %167, !dbg !707

; <label>:116:                                    ; preds = %113
  %117 = bitcast %struct.uk_alloc* %99 to i8* (%struct.uk_alloc*, i64)**, !dbg !711
  %118 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %117, align 8, !dbg !711, !tbaa !179
  %119 = tail call i8* %118(%struct.uk_alloc* nonnull %99, i64 %98) #9, !dbg !712
  %120 = icmp eq i8* %119, null, !dbg !713
  br i1 %120, label %167, label %121, !dbg !707

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %119, i64 %93, !dbg !715
  %123 = add i64 %68, 1, !dbg !716
  %124 = tail call i8* @memcpy(i8* nonnull %122, i8* nonnull %0, i64 %123) #9, !dbg !717
  %125 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !720, !tbaa !179
  %126 = icmp eq %struct.uk_alloc* %125, null, !dbg !727
  br i1 %126, label %127, label %128, !dbg !728, !prof !249

; <label>:127:                                    ; preds = %121
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !729
  tail call void @ukplat_terminate(i32 3) #11, !dbg !729
  unreachable, !dbg !729

; <label>:128:                                    ; preds = %121
  %129 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %125, i64 0, i32 5, !dbg !730
  %130 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %129, align 8, !dbg !730, !tbaa !179
  tail call void %130(%struct.uk_alloc* nonnull %125, i8* %70) #9, !dbg !731
  %131 = getelementptr inbounds i8, i8* %122, i64 -1, !dbg !732
  store i8 %92, i8* %131, align 1, !dbg !733, !tbaa !290
  switch i3 %91, label %149 [
    i3 0, label %132
    i3 1, label %135
    i3 2, label %138
    i3 3, label %142
    i3 -4, label %146
  ], !dbg !738

; <label>:132:                                    ; preds = %128
  %133 = trunc i64 %68 to i8, !dbg !740
  %134 = shl i8 %133, 3, !dbg !740
  store i8 %134, i8* %131, align 1, !dbg !741, !tbaa !290
  br label %149, !dbg !742

; <label>:135:                                    ; preds = %128
  %136 = trunc i64 %68 to i8, !dbg !743
  %137 = getelementptr inbounds i8, i8* %122, i64 -3, !dbg !744
  store i8 %136, i8* %137, align 1, !dbg !745, !tbaa !290
  br label %149, !dbg !746

; <label>:138:                                    ; preds = %128
  %139 = trunc i64 %68 to i16, !dbg !747
  %140 = getelementptr inbounds i8, i8* %122, i64 -5, !dbg !748
  %141 = bitcast i8* %140 to i16*, !dbg !749
  store i16 %139, i16* %141, align 1, !dbg !750, !tbaa !297
  br label %149, !dbg !751

; <label>:142:                                    ; preds = %128
  %143 = trunc i64 %68 to i32, !dbg !752
  %144 = getelementptr inbounds i8, i8* %122, i64 -9, !dbg !753
  %145 = bitcast i8* %144 to i32*, !dbg !754
  store i32 %143, i32* %145, align 1, !dbg !755, !tbaa !253
  br label %149, !dbg !756

; <label>:146:                                    ; preds = %128
  %147 = getelementptr inbounds i8, i8* %122, i64 -17, !dbg !757
  %148 = bitcast i8* %147 to i64*, !dbg !758
  store i64 %68, i64* %148, align 1, !dbg !759, !tbaa !310
  br label %149, !dbg !760

; <label>:149:                                    ; preds = %146, %142, %138, %135, %132, %128, %109
  %150 = phi i8 [ %112, %109 ], [ %92, %128 ], [ %134, %132 ], [ %92, %135 ], [ %92, %138 ], [ %92, %142 ], [ %92, %146 ], !dbg !691
  %151 = phi i8* [ %110, %109 ], [ %122, %128 ], [ %122, %132 ], [ %122, %135 ], [ %122, %138 ], [ %122, %142 ], [ %122, %146 ], !dbg !648
  %152 = trunc i8 %150 to i3, !dbg !764
  switch i3 %152, label %167 [
    i3 -4, label %164
    i3 1, label %153
    i3 2, label %156
    i3 3, label %160
  ], !dbg !764

; <label>:153:                                    ; preds = %149
  %154 = trunc i64 %75 to i8, !dbg !765
  %155 = getelementptr inbounds i8, i8* %151, i64 -2, !dbg !767
  store i8 %154, i8* %155, align 1, !dbg !768, !tbaa !290
  br label %167, !dbg !769

; <label>:156:                                    ; preds = %149
  %157 = trunc i64 %75 to i16, !dbg !770
  %158 = getelementptr inbounds i8, i8* %151, i64 -3, !dbg !771
  %159 = bitcast i8* %158 to i16*, !dbg !771
  store i16 %157, i16* %159, align 1, !dbg !772, !tbaa !297
  br label %167, !dbg !773

; <label>:160:                                    ; preds = %149
  %161 = trunc i64 %75 to i32, !dbg !774
  %162 = getelementptr inbounds i8, i8* %151, i64 -5, !dbg !775
  %163 = bitcast i8* %162 to i32*, !dbg !775
  store i32 %161, i32* %163, align 1, !dbg !776, !tbaa !253
  br label %167, !dbg !777

; <label>:164:                                    ; preds = %149
  %165 = getelementptr inbounds i8, i8* %151, i64 -9, !dbg !778
  %166 = bitcast i8* %165 to i64*, !dbg !778
  store i64 %75, i64* %166, align 1, !dbg !779, !tbaa !310
  br label %167, !dbg !780

; <label>:167:                                    ; preds = %164, %160, %156, %153, %149, %114, %102, %116, %104, %41
  %168 = phi i8* [ %0, %41 ], [ null, %104 ], [ null, %116 ], [ null, %102 ], [ null, %114 ], [ %151, %149 ], [ %151, %153 ], [ %151, %156 ], [ %151, %160 ], [ %151, %164 ], !dbg !781
  ret i8* %168, !dbg !782
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsRemoveFreeSpace(i8*) local_unnamed_addr #0 !dbg !783 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !797
  %3 = load i8, i8* %2, align 1, !dbg !797, !tbaa !290
  %4 = and i8 %3, 7, !dbg !798
  %5 = trunc i8 %3 to i3, !dbg !802
  switch i3 %5, label %120 [
    i3 -4, label %34
    i3 1, label %6
    i3 2, label %14
    i3 3, label %24
  ], !dbg !802

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !803
  %8 = load i8, i8* %7, align 1, !dbg !805, !tbaa !290
  %9 = zext i8 %8 to i64, !dbg !803
  %10 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !811
  %11 = load i8, i8* %10, align 1, !dbg !811, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !812
  %13 = sub nsw i64 %12, %9, !dbg !813
  br label %42

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !814
  %16 = bitcast i8* %15 to i16*, !dbg !815
  %17 = load i16, i16* %16, align 1, !dbg !815, !tbaa !297
  %18 = zext i16 %17 to i64, !dbg !814
  %19 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !817
  %20 = bitcast i8* %19 to i16*, !dbg !817
  %21 = load i16, i16* %20, align 1, !dbg !817, !tbaa !297
  %22 = zext i16 %21 to i64, !dbg !818
  %23 = sub nsw i64 %22, %18, !dbg !819
  br label %42

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !820
  %26 = bitcast i8* %25 to i32*, !dbg !821
  %27 = load i32, i32* %26, align 1, !dbg !821, !tbaa !253
  %28 = zext i32 %27 to i64, !dbg !820
  %29 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !823
  %30 = bitcast i8* %29 to i32*, !dbg !823
  %31 = load i32, i32* %30, align 1, !dbg !823, !tbaa !253
  %32 = sub i32 %31, %27, !dbg !824
  %33 = zext i32 %32 to i64, !dbg !825
  br label %42

; <label>:34:                                     ; preds = %1
  %35 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !826
  %36 = bitcast i8* %35 to i64*, !dbg !827
  %37 = load i64, i64* %36, align 1, !dbg !827, !tbaa !310
  %38 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !829
  %39 = bitcast i8* %38 to i64*, !dbg !829
  %40 = load i64, i64* %39, align 1, !dbg !829, !tbaa !310
  %41 = sub i64 %40, %37, !dbg !830
  br label %42

; <label>:42:                                     ; preds = %6, %14, %24, %34
  %43 = phi i64 [ 17, %34 ], [ 9, %24 ], [ 5, %14 ], [ 3, %6 ]
  %44 = phi i64 [ %37, %34 ], [ %28, %24 ], [ %18, %14 ], [ %9, %6 ]
  %45 = phi i64 [ %41, %34 ], [ %33, %24 ], [ %23, %14 ], [ %13, %6 ], !dbg !831
  %46 = sub nsw i64 0, %43, !dbg !833
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !833
  %48 = icmp eq i64 %45, 0, !dbg !835
  br i1 %48, label %120, label %49, !dbg !837

; <label>:49:                                     ; preds = %42
  %50 = icmp ult i64 %44, 32, !dbg !840
  br i1 %50, label %53, label %51, !dbg !841

; <label>:51:                                     ; preds = %49
  %52 = icmp ult i64 %44, 256, !dbg !842
  br i1 %52, label %53, label %58, !dbg !843

; <label>:53:                                     ; preds = %51, %49
  %54 = phi i3 [ 0, %49 ], [ 1, %51 ]
  %55 = phi i8 [ 0, %49 ], [ 1, %51 ]
  %56 = phi i64 [ 1, %49 ], [ 3, %51 ]
  %57 = icmp eq i8 %4, %55, !dbg !844
  br i1 %57, label %58, label %74, !dbg !846

; <label>:58:                                     ; preds = %51, %53
  %59 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !850, !tbaa !179
  %60 = icmp eq %struct.uk_alloc* %59, null, !dbg !854
  br i1 %60, label %61, label %63, !dbg !855, !prof !249

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno() #9, !dbg !856
  store i32 12, i32* %62, align 4, !dbg !857, !tbaa !253
  br label %120, !dbg !859

; <label>:63:                                     ; preds = %58
  %64 = add i64 %44, 1, !dbg !860
  %65 = add i64 %64, %43, !dbg !861
  %66 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %59, i64 0, i32 2, !dbg !868
  %67 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %66, align 8, !dbg !868, !tbaa !179
  %68 = tail call i8* %67(%struct.uk_alloc* nonnull %59, i8* nonnull %47, i64 %65) #9, !dbg !869
  %69 = icmp eq i8* %68, null, !dbg !870
  br i1 %69, label %120, label %70, !dbg !859

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds i8, i8* %68, i64 %43, !dbg !872
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  %73 = load i8, i8* %72, align 1, !dbg !873, !tbaa !290
  br label %102, !dbg !875

; <label>:74:                                     ; preds = %53
  %75 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !876, !tbaa !179
  %76 = icmp eq %struct.uk_alloc* %75, null, !dbg !881
  br i1 %76, label %77, label %79, !dbg !882, !prof !249

; <label>:77:                                     ; preds = %74
  %78 = tail call i32* @__errno() #9, !dbg !883
  store i32 12, i32* %78, align 4, !dbg !884, !tbaa !253
  br label %120, !dbg !885

; <label>:79:                                     ; preds = %74
  %80 = add i64 %44, 1, !dbg !886
  %81 = add i64 %80, %56, !dbg !887
  %82 = bitcast %struct.uk_alloc* %75 to i8* (%struct.uk_alloc*, i64)**, !dbg !893
  %83 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %82, align 8, !dbg !893, !tbaa !179
  %84 = tail call i8* %83(%struct.uk_alloc* nonnull %75, i64 %81) #9, !dbg !894
  %85 = icmp eq i8* %84, null, !dbg !895
  br i1 %85, label %120, label %86, !dbg !885

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds i8, i8* %84, i64 %56, !dbg !897
  %88 = tail call i8* @memcpy(i8* nonnull %87, i8* nonnull %0, i64 %80) #9, !dbg !898
  %89 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !901, !tbaa !179
  %90 = icmp eq %struct.uk_alloc* %89, null, !dbg !908
  br i1 %90, label %91, label %92, !dbg !909, !prof !249

; <label>:91:                                     ; preds = %86
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !910
  tail call void @ukplat_terminate(i32 3) #11, !dbg !910
  unreachable, !dbg !910

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %89, i64 0, i32 5, !dbg !911
  %94 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %93, align 8, !dbg !911, !tbaa !179
  tail call void %94(%struct.uk_alloc* nonnull %89, i8* nonnull %47) #9, !dbg !912
  %95 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !913
  store i8 %55, i8* %95, align 1, !dbg !914, !tbaa !290
  %96 = icmp eq i3 %54, 1, !dbg !918
  %97 = trunc i64 %44 to i8, !dbg !919
  br i1 %96, label %100, label %98, !dbg !918

; <label>:98:                                     ; preds = %92
  %99 = shl i8 %97, 3, !dbg !921
  store i8 %99, i8* %95, align 1, !dbg !922, !tbaa !290
  br label %102, !dbg !923

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds i8, i8* %87, i64 -3, !dbg !924
  store i8 %97, i8* %101, align 1, !dbg !925, !tbaa !290
  br label %102, !dbg !926

; <label>:102:                                    ; preds = %100, %98, %70
  %103 = phi i8 [ %73, %70 ], [ %99, %98 ], [ %55, %100 ], !dbg !873
  %104 = phi i8* [ %71, %70 ], [ %87, %98 ], [ %87, %100 ], !dbg !919
  %105 = trunc i8 %103 to i3, !dbg !930
  switch i3 %105, label %120 [
    i3 -4, label %117
    i3 1, label %106
    i3 2, label %109
    i3 3, label %113
  ], !dbg !930

; <label>:106:                                    ; preds = %102
  %107 = trunc i64 %44 to i8, !dbg !931
  %108 = getelementptr inbounds i8, i8* %104, i64 -2, !dbg !932
  store i8 %107, i8* %108, align 1, !dbg !933, !tbaa !290
  br label %120, !dbg !934

; <label>:109:                                    ; preds = %102
  %110 = trunc i64 %44 to i16, !dbg !935
  %111 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !936
  %112 = bitcast i8* %111 to i16*, !dbg !936
  store i16 %110, i16* %112, align 1, !dbg !937, !tbaa !297
  br label %120, !dbg !938

; <label>:113:                                    ; preds = %102
  %114 = trunc i64 %44 to i32, !dbg !939
  %115 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !940
  %116 = bitcast i8* %115 to i32*, !dbg !940
  store i32 %114, i32* %116, align 1, !dbg !941, !tbaa !253
  br label %120, !dbg !942

; <label>:117:                                    ; preds = %102
  %118 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !943
  %119 = bitcast i8* %118 to i64*, !dbg !943
  store i64 %44, i64* %119, align 1, !dbg !944, !tbaa !310
  br label %120, !dbg !945

; <label>:120:                                    ; preds = %1, %117, %113, %109, %106, %102, %77, %61, %79, %63, %42
  %121 = phi i8* [ %0, %42 ], [ null, %63 ], [ null, %79 ], [ null, %61 ], [ null, %77 ], [ %104, %102 ], [ %104, %106 ], [ %104, %109 ], [ %104, %113 ], [ %104, %117 ], [ %0, %1 ], !dbg !946
  ret i8* %121, !dbg !947
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @sdsAllocSize(i8* nocapture readonly) local_unnamed_addr #4 !dbg !948 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !961
  %3 = load i8, i8* %2, align 1, !dbg !961, !tbaa !290
  %4 = trunc i8 %3 to i3, !dbg !963
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !963

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !964
  %7 = zext i8 %6 to i64, !dbg !964
  br label %26, !dbg !969

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !970
  %10 = load i8, i8* %9, align 1, !dbg !970, !tbaa !290
  %11 = zext i8 %10 to i64, !dbg !971
  br label %26, !dbg !972

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !973
  %14 = bitcast i8* %13 to i16*, !dbg !973
  %15 = load i16, i16* %14, align 1, !dbg !973, !tbaa !297
  %16 = zext i16 %15 to i64, !dbg !974
  br label %26, !dbg !975

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !976
  %19 = bitcast i8* %18 to i32*, !dbg !976
  %20 = load i32, i32* %19, align 1, !dbg !976, !tbaa !253
  %21 = zext i32 %20 to i64, !dbg !977
  br label %26, !dbg !978

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !979
  %24 = bitcast i8* %23 to i64*, !dbg !979
  %25 = load i64, i64* %24, align 1, !dbg !979, !tbaa !310
  br label %26, !dbg !980

; <label>:26:                                     ; preds = %1, %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], [ 0, %1 ]
  %28 = phi i64 [ 17, %22 ], [ 9, %17 ], [ 5, %12 ], [ 3, %8 ], [ 1, %5 ], [ 0, %1 ]
  %29 = add i64 %27, 1, !dbg !981
  %30 = add i64 %29, %28, !dbg !982
  ret i64 %30, !dbg !983
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @sdsAllocPtr(i8* readonly) local_unnamed_addr #4 !dbg !984 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !990
  %3 = load i8, i8* %2, align 1, !dbg !990, !tbaa !290
  %4 = and i8 %3, 7, !dbg !993
  %5 = xor i8 %4, 4, !dbg !993
  %6 = zext i8 %5 to i64, !dbg !993
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %6, !dbg !993
  %8 = load i64, i64* %7, align 8, !dbg !993
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !994
  ret i8* %9, !dbg !995
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsIncrLen(i8* nocapture, i64) local_unnamed_addr #0 !dbg !996 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1018
  %4 = load i8, i8* %3, align 1, !dbg !1018, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !1020
  switch i3 %5, label %124 [
    i3 0, label %6
    i3 1, label %28
    i3 2, label %51
    i3 3, label %78
    i3 -4, label %103
  ], !dbg !1020

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1022
  %8 = icmp sgt i64 %1, 0, !dbg !1024
  br i1 %8, label %9, label %13, !dbg !1024

; <label>:9:                                      ; preds = %6
  %10 = zext i8 %7 to i64, !dbg !1024
  %11 = add nsw i64 %10, %1, !dbg !1024
  %12 = icmp slt i64 %11, 32, !dbg !1024
  br i1 %12, label %24, label %23, !dbg !1024

; <label>:13:                                     ; preds = %6
  %14 = icmp slt i64 %1, 0, !dbg !1024
  br i1 %14, label %15, label %23, !dbg !1024

; <label>:15:                                     ; preds = %13
  %16 = zext i8 %7 to i32, !dbg !1024
  %17 = trunc i64 %1 to i32, !dbg !1024
  %18 = sub i32 0, %17, !dbg !1024
  %19 = icmp ult i32 %16, %18, !dbg !1024
  br i1 %19, label %23, label %20, !dbg !1024

; <label>:20:                                     ; preds = %15
  %21 = zext i8 %7 to i64, !dbg !1025
  %22 = add nsw i64 %21, %1, !dbg !1026
  br label %24, !dbg !1024

; <label>:23:                                     ; preds = %9, %15, %13
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !1024
  unreachable, !dbg !1024

; <label>:24:                                     ; preds = %20, %9
  %25 = phi i64 [ %22, %20 ], [ %11, %9 ], !dbg !1026
  %26 = trunc i64 %25 to i8, !dbg !1027
  %27 = shl i8 %26, 3, !dbg !1027
  store i8 %27, i8* %3, align 1, !dbg !1028, !tbaa !290
  br label %124

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1030
  %30 = icmp sgt i64 %1, -1, !dbg !1031
  br i1 %30, label %31, label %39, !dbg !1031

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1031
  %33 = load i8, i8* %32, align 1, !dbg !1031, !tbaa !290
  %34 = zext i8 %33 to i64, !dbg !1031
  %35 = load i8, i8* %29, align 1, !dbg !1031, !tbaa !290
  %36 = zext i8 %35 to i64, !dbg !1031
  %37 = sub nsw i64 %34, %36, !dbg !1031
  %38 = icmp slt i64 %37, %1, !dbg !1031
  br i1 %38, label %45, label %46, !dbg !1031

; <label>:39:                                     ; preds = %28
  %40 = load i8, i8* %29, align 1, !dbg !1031, !tbaa !290
  %41 = zext i8 %40 to i32, !dbg !1031
  %42 = trunc i64 %1 to i32, !dbg !1031
  %43 = sub i32 0, %42, !dbg !1031
  %44 = icmp ult i32 %41, %43, !dbg !1031
  br i1 %44, label %45, label %46, !dbg !1031

; <label>:45:                                     ; preds = %31, %39
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1031
  unreachable, !dbg !1031

; <label>:46:                                     ; preds = %31, %39
  %47 = phi i8 [ %35, %31 ], [ %40, %39 ], !dbg !1032
  %48 = trunc i64 %1 to i8, !dbg !1032
  %49 = add i8 %47, %48, !dbg !1032
  store i8 %49, i8* %29, align 1, !dbg !1032, !tbaa !290
  %50 = zext i8 %49 to i64, !dbg !1033
  br label %124

; <label>:51:                                     ; preds = %2
  %52 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1034
  %53 = icmp sgt i64 %1, -1, !dbg !1035
  br i1 %53, label %54, label %64, !dbg !1035

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1035
  %56 = bitcast i8* %55 to i16*, !dbg !1035
  %57 = load i16, i16* %56, align 1, !dbg !1035, !tbaa !297
  %58 = zext i16 %57 to i64, !dbg !1035
  %59 = bitcast i8* %52 to i16*, !dbg !1035
  %60 = load i16, i16* %59, align 1, !dbg !1035, !tbaa !297
  %61 = zext i16 %60 to i64, !dbg !1035
  %62 = sub nsw i64 %58, %61, !dbg !1035
  %63 = icmp slt i64 %62, %1, !dbg !1035
  br i1 %63, label %71, label %72, !dbg !1035

; <label>:64:                                     ; preds = %51
  %65 = bitcast i8* %52 to i16*, !dbg !1035
  %66 = load i16, i16* %65, align 1, !dbg !1035, !tbaa !297
  %67 = zext i16 %66 to i32, !dbg !1035
  %68 = trunc i64 %1 to i32, !dbg !1035
  %69 = sub i32 0, %68, !dbg !1035
  %70 = icmp ult i32 %67, %69, !dbg !1035
  br i1 %70, label %71, label %72, !dbg !1035

; <label>:71:                                     ; preds = %54, %64
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1035
  unreachable, !dbg !1035

; <label>:72:                                     ; preds = %54, %64
  %73 = phi i16* [ %59, %54 ], [ %65, %64 ], !dbg !1036
  %74 = phi i16 [ %60, %54 ], [ %66, %64 ], !dbg !1037
  %75 = trunc i64 %1 to i16, !dbg !1037
  %76 = add i16 %74, %75, !dbg !1037
  store i16 %76, i16* %73, align 1, !dbg !1037, !tbaa !297
  %77 = zext i16 %76 to i64, !dbg !1038
  br label %124

; <label>:78:                                     ; preds = %2
  %79 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1039
  %80 = icmp sgt i64 %1, -1, !dbg !1040
  br i1 %80, label %81, label %90, !dbg !1040

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1040
  %83 = bitcast i8* %82 to i32*, !dbg !1040
  %84 = load i32, i32* %83, align 1, !dbg !1040, !tbaa !253
  %85 = bitcast i8* %79 to i32*, !dbg !1040
  %86 = load i32, i32* %85, align 1, !dbg !1040, !tbaa !253
  %87 = sub i32 %84, %86, !dbg !1040
  %88 = trunc i64 %1 to i32, !dbg !1040
  %89 = icmp ult i32 %87, %88, !dbg !1040
  br i1 %89, label %96, label %97, !dbg !1040

; <label>:90:                                     ; preds = %78
  %91 = bitcast i8* %79 to i32*, !dbg !1040
  %92 = load i32, i32* %91, align 1, !dbg !1040, !tbaa !253
  %93 = trunc i64 %1 to i32, !dbg !1040
  %94 = sub i32 0, %93, !dbg !1040
  %95 = icmp ult i32 %92, %94, !dbg !1040
  br i1 %95, label %96, label %97, !dbg !1040

; <label>:96:                                     ; preds = %81, %90
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !1040
  unreachable, !dbg !1040

; <label>:97:                                     ; preds = %81, %90
  %98 = phi i32 [ %88, %81 ], [ %93, %90 ], !dbg !1041
  %99 = phi i32* [ %85, %81 ], [ %91, %90 ], !dbg !1042
  %100 = phi i32 [ %86, %81 ], [ %92, %90 ], !dbg !1041
  %101 = add i32 %100, %98, !dbg !1041
  store i32 %101, i32* %99, align 1, !dbg !1041, !tbaa !253
  %102 = zext i32 %101 to i64, !dbg !1043
  br label %124

; <label>:103:                                    ; preds = %2
  %104 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1044
  %105 = icmp sgt i64 %1, -1, !dbg !1045
  br i1 %105, label %106, label %114, !dbg !1045

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1045
  %108 = bitcast i8* %107 to i64*, !dbg !1045
  %109 = load i64, i64* %108, align 1, !dbg !1045, !tbaa !310
  %110 = bitcast i8* %104 to i64*, !dbg !1045
  %111 = load i64, i64* %110, align 1, !dbg !1045, !tbaa !310
  %112 = sub i64 %109, %111, !dbg !1045
  %113 = icmp ult i64 %112, %1, !dbg !1045
  br i1 %113, label %119, label %120, !dbg !1045

; <label>:114:                                    ; preds = %103
  %115 = bitcast i8* %104 to i64*, !dbg !1045
  %116 = load i64, i64* %115, align 1, !dbg !1045, !tbaa !310
  %117 = sub nsw i64 0, %1, !dbg !1045
  %118 = icmp ult i64 %116, %117, !dbg !1045
  br i1 %118, label %119, label %120, !dbg !1045

; <label>:119:                                    ; preds = %106, %114
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sdsIncrLen, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1045
  unreachable, !dbg !1045

; <label>:120:                                    ; preds = %106, %114
  %121 = phi i64* [ %110, %106 ], [ %115, %114 ], !dbg !1046
  %122 = phi i64 [ %111, %106 ], [ %116, %114 ], !dbg !1047
  %123 = add i64 %122, %1, !dbg !1047
  store i64 %123, i64* %121, align 1, !dbg !1047, !tbaa !310
  br label %124

; <label>:124:                                    ; preds = %2, %120, %97, %72, %46, %24
  %125 = phi i64 [ %123, %120 ], [ %102, %97 ], [ %77, %72 ], [ %50, %46 ], [ %25, %24 ], [ 0, %2 ], !dbg !1048
  %126 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1049
  store i8 0, i8* %126, align 1, !dbg !1050, !tbaa !290
  ret void, !dbg !1051
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #0 !dbg !1052 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1061
  %4 = load i8, i8* %3, align 1, !dbg !1061, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !1063
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1063

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1064
  %8 = zext i8 %7 to i64, !dbg !1064
  br label %27, !dbg !1065

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1066
  %11 = load i8, i8* %10, align 1, !dbg !1067, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !1066
  br label %27, !dbg !1068

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1069
  %15 = bitcast i8* %14 to i16*, !dbg !1070
  %16 = load i16, i16* %15, align 1, !dbg !1070, !tbaa !297
  %17 = zext i16 %16 to i64, !dbg !1069
  br label %27, !dbg !1071

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1072
  %20 = bitcast i8* %19 to i32*, !dbg !1073
  %21 = load i32, i32* %20, align 1, !dbg !1073, !tbaa !253
  %22 = zext i32 %21 to i64, !dbg !1072
  br label %27, !dbg !1074

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1075
  %25 = bitcast i8* %24 to i64*, !dbg !1076
  %26 = load i64, i64* %25, align 1, !dbg !1076, !tbaa !310
  br label %27, !dbg !1077

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1078
  %29 = icmp ult i64 %28, %1, !dbg !1080
  br i1 %29, label %30, label %58, !dbg !1082

; <label>:30:                                     ; preds = %27
  %31 = sub i64 %1, %28, !dbg !1083
  %32 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %31) #10, !dbg !1084
  %33 = icmp eq i8* %32, null, !dbg !1085
  br i1 %33, label %58, label %34, !dbg !1087

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds i8, i8* %32, i64 %28, !dbg !1088
  %36 = add i64 %31, 1, !dbg !1089
  %37 = tail call i8* @memset(i8* nonnull %35, i32 0, i64 %36) #9, !dbg !1090
  %38 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1094
  %39 = load i8, i8* %38, align 1, !dbg !1094, !tbaa !290
  %40 = trunc i8 %39 to i3, !dbg !1096
  switch i3 %40, label %58 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %47
    i3 3, label %51
    i3 -4, label %55
  ], !dbg !1096

; <label>:41:                                     ; preds = %34
  %42 = trunc i64 %1 to i8, !dbg !1098
  %43 = shl i8 %42, 3, !dbg !1098
  store i8 %43, i8* %38, align 1, !dbg !1099, !tbaa !290
  br label %58, !dbg !1100

; <label>:44:                                     ; preds = %34
  %45 = trunc i64 %1 to i8, !dbg !1101
  %46 = getelementptr inbounds i8, i8* %32, i64 -3, !dbg !1102
  store i8 %45, i8* %46, align 1, !dbg !1103, !tbaa !290
  br label %58, !dbg !1104

; <label>:47:                                     ; preds = %34
  %48 = trunc i64 %1 to i16, !dbg !1105
  %49 = getelementptr inbounds i8, i8* %32, i64 -5, !dbg !1106
  %50 = bitcast i8* %49 to i16*, !dbg !1107
  store i16 %48, i16* %50, align 1, !dbg !1108, !tbaa !297
  br label %58, !dbg !1109

; <label>:51:                                     ; preds = %34
  %52 = trunc i64 %1 to i32, !dbg !1110
  %53 = getelementptr inbounds i8, i8* %32, i64 -9, !dbg !1111
  %54 = bitcast i8* %53 to i32*, !dbg !1112
  store i32 %52, i32* %54, align 1, !dbg !1113, !tbaa !253
  br label %58, !dbg !1114

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %32, i64 -17, !dbg !1115
  %57 = bitcast i8* %56 to i64*, !dbg !1116
  store i64 %1, i64* %57, align 1, !dbg !1117, !tbaa !310
  br label %58, !dbg !1118

; <label>:58:                                     ; preds = %55, %51, %47, %44, %41, %34, %30, %27
  %59 = phi i8* [ %0, %27 ], [ null, %30 ], [ %32, %34 ], [ %32, %41 ], [ %32, %44 ], [ %32, %47 ], [ %32, %51 ], [ %32, %55 ], !dbg !1119
  ret i8* %59, !dbg !1120
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1121 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1134
  %5 = load i8, i8* %4, align 1, !dbg !1134, !tbaa !290
  %6 = trunc i8 %5 to i3, !dbg !1136
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1136

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1137
  %9 = zext i8 %8 to i64, !dbg !1137
  br label %28, !dbg !1138

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1139
  %12 = load i8, i8* %11, align 1, !dbg !1140, !tbaa !290
  %13 = zext i8 %12 to i64, !dbg !1139
  br label %28, !dbg !1141

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1142
  %16 = bitcast i8* %15 to i16*, !dbg !1143
  %17 = load i16, i16* %16, align 1, !dbg !1143, !tbaa !297
  %18 = zext i16 %17 to i64, !dbg !1142
  br label %28, !dbg !1144

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1145
  %21 = bitcast i8* %20 to i32*, !dbg !1146
  %22 = load i32, i32* %21, align 1, !dbg !1146, !tbaa !253
  %23 = zext i32 %22 to i64, !dbg !1145
  br label %28, !dbg !1147

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1148
  %26 = bitcast i8* %25 to i64*, !dbg !1149
  %27 = load i64, i64* %26, align 1, !dbg !1149, !tbaa !310
  br label %28, !dbg !1150

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1151
  %30 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %2) #10, !dbg !1153
  %31 = icmp eq i8* %30, null, !dbg !1154
  br i1 %31, label %58, label %32, !dbg !1156

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1157
  %34 = tail call i8* @memcpy(i8* nonnull %33, i8* %1, i64 %2) #9, !dbg !1158
  %35 = add i64 %29, %2, !dbg !1159
  %36 = getelementptr inbounds i8, i8* %30, i64 -1, !dbg !1163
  %37 = load i8, i8* %36, align 1, !dbg !1163, !tbaa !290
  %38 = trunc i8 %37 to i3, !dbg !1165
  switch i3 %38, label %56 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %45
    i3 3, label %49
    i3 -4, label %53
  ], !dbg !1165

; <label>:39:                                     ; preds = %32
  %40 = trunc i64 %35 to i8, !dbg !1167
  %41 = shl i8 %40, 3, !dbg !1167
  store i8 %41, i8* %36, align 1, !dbg !1168, !tbaa !290
  br label %56, !dbg !1169

; <label>:42:                                     ; preds = %32
  %43 = trunc i64 %35 to i8, !dbg !1170
  %44 = getelementptr inbounds i8, i8* %30, i64 -3, !dbg !1171
  store i8 %43, i8* %44, align 1, !dbg !1172, !tbaa !290
  br label %56, !dbg !1173

; <label>:45:                                     ; preds = %32
  %46 = trunc i64 %35 to i16, !dbg !1174
  %47 = getelementptr inbounds i8, i8* %30, i64 -5, !dbg !1175
  %48 = bitcast i8* %47 to i16*, !dbg !1176
  store i16 %46, i16* %48, align 1, !dbg !1177, !tbaa !297
  br label %56, !dbg !1178

; <label>:49:                                     ; preds = %32
  %50 = trunc i64 %35 to i32, !dbg !1179
  %51 = getelementptr inbounds i8, i8* %30, i64 -9, !dbg !1180
  %52 = bitcast i8* %51 to i32*, !dbg !1181
  store i32 %50, i32* %52, align 1, !dbg !1182, !tbaa !253
  br label %56, !dbg !1183

; <label>:53:                                     ; preds = %32
  %54 = getelementptr inbounds i8, i8* %30, i64 -17, !dbg !1184
  %55 = bitcast i8* %54 to i64*, !dbg !1185
  store i64 %35, i64* %55, align 1, !dbg !1186, !tbaa !310
  br label %56, !dbg !1187

; <label>:56:                                     ; preds = %32, %39, %42, %45, %49, %53
  %57 = getelementptr inbounds i8, i8* %30, i64 %35, !dbg !1188
  store i8 0, i8* %57, align 1, !dbg !1189, !tbaa !290
  br label %58, !dbg !1190

; <label>:58:                                     ; preds = %28, %56
  ret i8* %30, !dbg !1191
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #0 !dbg !1192 {
  %3 = tail call i64 @strlen(i8* %1) #9, !dbg !1200
  %4 = tail call i8* @sdscatlen(i8* %0, i8* %1, i64 %3) #10, !dbg !1201
  ret i8* %4, !dbg !1202
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #0 !dbg !1203 {
  %3 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1213
  %4 = load i8, i8* %3, align 1, !dbg !1213, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !1215
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1215

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1216
  %8 = zext i8 %7 to i64, !dbg !1216
  br label %27, !dbg !1217

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1218
  %11 = load i8, i8* %10, align 1, !dbg !1219, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !1218
  br label %27, !dbg !1220

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1221
  %15 = bitcast i8* %14 to i16*, !dbg !1222
  %16 = load i16, i16* %15, align 1, !dbg !1222, !tbaa !297
  %17 = zext i16 %16 to i64, !dbg !1221
  br label %27, !dbg !1223

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1224
  %20 = bitcast i8* %19 to i32*, !dbg !1225
  %21 = load i32, i32* %20, align 1, !dbg !1225, !tbaa !253
  %22 = zext i32 %21 to i64, !dbg !1224
  br label %27, !dbg !1226

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1227
  %25 = bitcast i8* %24 to i64*, !dbg !1228
  %26 = load i64, i64* %25, align 1, !dbg !1228, !tbaa !310
  br label %27, !dbg !1229

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1230
  %29 = tail call i8* @sdscatlen(i8* %0, i8* nonnull %1, i64 %28) #10, !dbg !1231
  ret i8* %29, !dbg !1232
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpylen(i8*, i8*, i64) local_unnamed_addr #0 !dbg !1233 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1246
  %5 = load i8, i8* %4, align 1, !dbg !1246, !tbaa !290
  %6 = trunc i8 %5 to i3, !dbg !1248
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !1248

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !1249
  %9 = zext i8 %8 to i64, !dbg !1249
  br label %28, !dbg !1250

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1251
  %12 = load i8, i8* %11, align 1, !dbg !1251, !tbaa !290
  %13 = zext i8 %12 to i64, !dbg !1252
  br label %28, !dbg !1253

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1254
  %16 = bitcast i8* %15 to i16*, !dbg !1254
  %17 = load i16, i16* %16, align 1, !dbg !1254, !tbaa !297
  %18 = zext i16 %17 to i64, !dbg !1255
  br label %28, !dbg !1256

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1257
  %21 = bitcast i8* %20 to i32*, !dbg !1257
  %22 = load i32, i32* %21, align 1, !dbg !1257, !tbaa !253
  %23 = zext i32 %22 to i64, !dbg !1258
  br label %28, !dbg !1259

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1260
  %26 = bitcast i8* %25 to i64*, !dbg !1260
  %27 = load i64, i64* %26, align 1, !dbg !1260, !tbaa !310
  br label %28, !dbg !1261

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !1262
  %30 = icmp ult i64 %29, %2, !dbg !1263
  br i1 %30, label %31, label %60, !dbg !1264

; <label>:31:                                     ; preds = %28
  switch i3 %6, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1269

; <label>:32:                                     ; preds = %31
  %33 = lshr i8 %5, 3, !dbg !1270
  %34 = zext i8 %33 to i64, !dbg !1270
  br label %53, !dbg !1271

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1272
  %37 = load i8, i8* %36, align 1, !dbg !1273, !tbaa !290
  %38 = zext i8 %37 to i64, !dbg !1272
  br label %53, !dbg !1274

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1275
  %41 = bitcast i8* %40 to i16*, !dbg !1276
  %42 = load i16, i16* %41, align 1, !dbg !1276, !tbaa !297
  %43 = zext i16 %42 to i64, !dbg !1275
  br label %53, !dbg !1277

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1278
  %46 = bitcast i8* %45 to i32*, !dbg !1279
  %47 = load i32, i32* %46, align 1, !dbg !1279, !tbaa !253
  %48 = zext i32 %47 to i64, !dbg !1278
  br label %53, !dbg !1280

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1281
  %51 = bitcast i8* %50 to i64*, !dbg !1282
  %52 = load i64, i64* %51, align 1, !dbg !1282, !tbaa !310
  br label %53, !dbg !1283

; <label>:53:                                     ; preds = %31, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %31 ], !dbg !1284
  %55 = sub i64 %2, %54, !dbg !1285
  %56 = tail call i8* @sdsMakeRoomFor(i8* nonnull %0, i64 %55) #10, !dbg !1286
  %57 = icmp eq i8* %56, null, !dbg !1287
  br i1 %57, label %84, label %58, !dbg !1289

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !1290
  br label %60, !dbg !1289

; <label>:60:                                     ; preds = %58, %28
  %61 = phi i8* [ %59, %58 ], [ %4, %28 ], !dbg !1290
  %62 = phi i8* [ %56, %58 ], [ %0, %28 ]
  %63 = tail call i8* @memcpy(i8* nonnull %62, i8* %1, i64 %2) #9, !dbg !1292
  %64 = getelementptr inbounds i8, i8* %62, i64 %2, !dbg !1293
  store i8 0, i8* %64, align 1, !dbg !1294, !tbaa !290
  %65 = load i8, i8* %61, align 1, !dbg !1290, !tbaa !290
  %66 = trunc i8 %65 to i3, !dbg !1298
  switch i3 %66, label %84 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %73
    i3 3, label %77
    i3 -4, label %81
  ], !dbg !1298

; <label>:67:                                     ; preds = %60
  %68 = trunc i64 %2 to i8, !dbg !1300
  %69 = shl i8 %68, 3, !dbg !1300
  store i8 %69, i8* %61, align 1, !dbg !1301, !tbaa !290
  br label %84, !dbg !1302

; <label>:70:                                     ; preds = %60
  %71 = trunc i64 %2 to i8, !dbg !1303
  %72 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !1304
  store i8 %71, i8* %72, align 1, !dbg !1305, !tbaa !290
  br label %84, !dbg !1306

; <label>:73:                                     ; preds = %60
  %74 = trunc i64 %2 to i16, !dbg !1307
  %75 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !1308
  %76 = bitcast i8* %75 to i16*, !dbg !1309
  store i16 %74, i16* %76, align 1, !dbg !1310, !tbaa !297
  br label %84, !dbg !1311

; <label>:77:                                     ; preds = %60
  %78 = trunc i64 %2 to i32, !dbg !1312
  %79 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !1313
  %80 = bitcast i8* %79 to i32*, !dbg !1314
  store i32 %78, i32* %80, align 1, !dbg !1315, !tbaa !253
  br label %84, !dbg !1316

; <label>:81:                                     ; preds = %60
  %82 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !1317
  %83 = bitcast i8* %82 to i64*, !dbg !1318
  store i64 %2, i64* %83, align 1, !dbg !1319, !tbaa !310
  br label %84, !dbg !1320

; <label>:84:                                     ; preds = %81, %77, %73, %70, %67, %60, %53
  %85 = phi i8* [ null, %53 ], [ %62, %60 ], [ %62, %67 ], [ %62, %70 ], [ %62, %73 ], [ %62, %77 ], [ %62, %81 ], !dbg !1321
  ret i8* %85, !dbg !1322
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscpy(i8*, i8*) local_unnamed_addr #0 !dbg !1323 {
  %3 = tail call i64 @strlen(i8* %1) #9, !dbg !1329
  %4 = tail call i8* @sdscpylen(i8* %0, i8* %1, i64 %3) #10, !dbg !1330
  ret i8* %4, !dbg !1331
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsll2str(i8*, i64) local_unnamed_addr #0 !dbg !1332 {
  %3 = icmp slt i64 %1, 0, !dbg !1346
  %4 = sub nsw i64 0, %1, !dbg !1347
  %5 = select i1 %3, i64 %4, i64 %1, !dbg !1348
  br label %6, !dbg !1351

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i8* [ %0, %2 ], [ %12, %6 ], !dbg !1352
  %8 = phi i64 [ %5, %2 ], [ %13, %6 ], !dbg !1352
  %9 = urem i64 %8, 10, !dbg !1354
  %10 = trunc i64 %9 to i8, !dbg !1355
  %11 = or i8 %10, 48, !dbg !1355
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1356
  store i8 %11, i8* %7, align 1, !dbg !1357, !tbaa !290
  %13 = udiv i64 %8, 10, !dbg !1358
  %14 = icmp ugt i64 %8, 9, !dbg !1359
  br i1 %14, label %6, label %15, !dbg !1359, !llvm.loop !1360

; <label>:15:                                     ; preds = %6
  br i1 %3, label %16, label %18, !dbg !1362

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !1363
  store i8 45, i8* %12, align 1, !dbg !1365, !tbaa !290
  br label %18, !dbg !1366

; <label>:18:                                     ; preds = %16, %15
  %19 = phi i8* [ %17, %16 ], [ %12, %15 ], !dbg !1352
  %20 = ptrtoint i8* %19 to i64, !dbg !1367
  %21 = ptrtoint i8* %0 to i64, !dbg !1367
  %22 = sub i64 %20, %21, !dbg !1367
  store i8 0, i8* %19, align 1, !dbg !1369, !tbaa !290
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1370
  %24 = icmp ugt i8* %23, %0, !dbg !1372
  br i1 %24, label %25, label %33, !dbg !1373

; <label>:25:                                     ; preds = %18, %25
  %26 = phi i8* [ %31, %25 ], [ %23, %18 ]
  %27 = phi i8* [ %30, %25 ], [ %0, %18 ]
  %28 = load i8, i8* %27, align 1, !dbg !1374, !tbaa !290
  %29 = load i8, i8* %26, align 1, !dbg !1376, !tbaa !290
  store i8 %29, i8* %27, align 1, !dbg !1377, !tbaa !290
  store i8 %28, i8* %26, align 1, !dbg !1378, !tbaa !290
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1379
  %31 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !1370
  %32 = icmp ult i8* %30, %31, !dbg !1372
  br i1 %32, label %25, label %33, !dbg !1373, !llvm.loop !1380

; <label>:33:                                     ; preds = %25, %18
  %34 = trunc i64 %22 to i32, !dbg !1382
  ret i32 %34, !dbg !1383
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdsull2str(i8*, i64) local_unnamed_addr #0 !dbg !1384 {
  br label %3, !dbg !1396

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %10, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %11, %3 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1394
  %7 = urem i64 %5, 10, !dbg !1397
  %8 = trunc i64 %7 to i8, !dbg !1399
  %9 = or i8 %8, 48, !dbg !1399
  %10 = add nuw nsw i64 %4, 1, !dbg !1400
  store i8 %9, i8* %6, align 1, !dbg !1401, !tbaa !290
  %11 = udiv i64 %5, 10, !dbg !1402
  %12 = icmp ugt i64 %5, 9, !dbg !1403
  br i1 %12, label %3, label %13, !dbg !1403, !llvm.loop !1404

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1394
  %15 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1395
  store i8 0, i8* %15, align 1, !dbg !1407, !tbaa !290
  %16 = icmp eq i64 %4, 0, !dbg !1408
  br i1 %16, label %32, label %17, !dbg !1409

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %0, align 1, !dbg !1410, !tbaa !290
  store i8 %9, i8* %0, align 1, !dbg !1413, !tbaa !290
  store i8 %18, i8* %14, align 1, !dbg !1414, !tbaa !290
  %19 = icmp ugt i64 %4, 2, !dbg !1408
  br i1 %19, label %20, label %32, !dbg !1409, !llvm.loop !1415

; <label>:20:                                     ; preds = %17
  %21 = add nsw i64 %4, -1, !dbg !1417
  %22 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1418
  %23 = getelementptr inbounds i8, i8* %0, i64 %21, !dbg !1393
  br label %24, !dbg !1409

; <label>:24:                                     ; preds = %20, %24
  %25 = phi i8* [ %23, %20 ], [ %30, %24 ]
  %26 = phi i8* [ %22, %20 ], [ %29, %24 ]
  %27 = load i8, i8* %25, align 1, !dbg !1419, !tbaa !290
  %28 = load i8, i8* %26, align 1, !dbg !1410, !tbaa !290
  store i8 %27, i8* %26, align 1, !dbg !1413, !tbaa !290
  store i8 %28, i8* %25, align 1, !dbg !1414, !tbaa !290
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1418
  %30 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !1417
  %31 = icmp ult i8* %29, %30, !dbg !1408
  br i1 %31, label %24, label %32, !dbg !1409, !llvm.loop !1415

; <label>:32:                                     ; preds = %24, %17, %13
  %33 = trunc i64 %10 to i32, !dbg !1420
  ret i32 %33, !dbg !1421
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #0 !dbg !1422 {
  %2 = alloca [21 x i8], align 16
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #6, !dbg !1433
  %4 = icmp slt i64 %0, 0, !dbg !1438
  %5 = sub nsw i64 0, %0, !dbg !1439
  %6 = select i1 %4, i64 %5, i64 %0, !dbg !1440
  br label %7, !dbg !1443

; <label>:7:                                      ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %14, %7 ]
  %9 = phi i64 [ %6, %1 ], [ %15, %7 ], !dbg !1444
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %8, !dbg !1441
  %11 = urem i64 %9, 10, !dbg !1445
  %12 = trunc i64 %11 to i8, !dbg !1446
  %13 = or i8 %12, 48, !dbg !1446
  %14 = add nuw nsw i64 %8, 1, !dbg !1447
  store i8 %13, i8* %10, align 1, !dbg !1448, !tbaa !290
  %15 = udiv i64 %9, 10, !dbg !1449
  %16 = icmp ugt i64 %9, 9, !dbg !1450
  br i1 %16, label %7, label %17, !dbg !1450, !llvm.loop !1360

; <label>:17:                                     ; preds = %7
  br i1 %4, label %18, label %21, !dbg !1451

; <label>:18:                                     ; preds = %17
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %14, !dbg !1442
  %20 = add nuw nsw i64 %8, 2, !dbg !1452
  store i8 45, i8* %19, align 1, !dbg !1453, !tbaa !290
  br label %21, !dbg !1454

; <label>:21:                                     ; preds = %18, %17
  %22 = phi i8 [ 45, %18 ], [ %13, %17 ]
  %23 = phi i64 [ %20, %18 ], [ %14, %17 ]
  %24 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %23, !dbg !1442
  store i8 0, i8* %24, align 1, !dbg !1456, !tbaa !290
  %25 = icmp sgt i64 %23, 1, !dbg !1457
  br i1 %25, label %26, label %41, !dbg !1458

; <label>:26:                                     ; preds = %21
  %27 = add nsw i64 %23, -1, !dbg !1459
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 %27, !dbg !1435
  %29 = load i8, i8* %3, align 16, !dbg !1460, !tbaa !290
  store i8 %22, i8* %3, align 16, !dbg !1462, !tbaa !290
  store i8 %29, i8* %28, align 1, !dbg !1463, !tbaa !290
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 1, !dbg !1464
  %31 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1459
  %32 = icmp ult i8* %30, %31, !dbg !1457
  br i1 %32, label %33, label %41, !dbg !1458, !llvm.loop !1380

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i8* [ %39, %33 ], [ %31, %26 ]
  %35 = phi i8* [ %38, %33 ], [ %30, %26 ]
  %36 = load i8, i8* %34, align 1, !dbg !1465, !tbaa !290
  %37 = load i8, i8* %35, align 1, !dbg !1460, !tbaa !290
  store i8 %36, i8* %35, align 1, !dbg !1462, !tbaa !290
  store i8 %37, i8* %34, align 1, !dbg !1463, !tbaa !290
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1464
  %39 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1459
  %40 = icmp ult i8* %38, %39, !dbg !1457
  br i1 %40, label %33, label %41, !dbg !1458, !llvm.loop !1380

; <label>:41:                                     ; preds = %33, %26, %21
  %42 = shl i64 %23, 32, !dbg !1466
  %43 = ashr exact i64 %42, 32, !dbg !1466
  %44 = call i8* @sdsnewlen(i8* nonnull %3, i64 %43) #10, !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #6, !dbg !1468
  ret i8* %44, !dbg !1469
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1470 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1489
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1489
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1491
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #6, !dbg !1491
  %8 = tail call i64 @strlen(i8* %1) #9, !dbg !1494
  %9 = shl i64 %8, 1, !dbg !1495
  %10 = icmp ugt i64 %9, 1024, !dbg !1497
  br i1 %10, label %11, label %21, !dbg !1499

; <label>:11:                                     ; preds = %3
  %12 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1503, !tbaa !179
  %13 = icmp eq %struct.uk_alloc* %12, null, !dbg !1507
  br i1 %13, label %14, label %16, !dbg !1508, !prof !249

; <label>:14:                                     ; preds = %11
  %15 = tail call i32* @__errno() #9, !dbg !1509
  store i32 12, i32* %15, align 4, !dbg !1510, !tbaa !253
  br label %65, !dbg !1511

; <label>:16:                                     ; preds = %11
  %17 = bitcast %struct.uk_alloc* %12 to i8* (%struct.uk_alloc*, i64)**, !dbg !1515
  %18 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %17, align 8, !dbg !1515, !tbaa !179
  %19 = tail call i8* %18(%struct.uk_alloc* nonnull %12, i64 %9) #9, !dbg !1516
  %20 = icmp eq i8* %19, null, !dbg !1517
  br i1 %20, label %65, label %21, !dbg !1511

; <label>:21:                                     ; preds = %3, %16
  %22 = phi i8* [ %19, %16 ], [ %7, %3 ], !dbg !1519
  %23 = phi i64 [ %9, %16 ], [ 1024, %3 ], !dbg !1520
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %2 to i8*
  br label %26, !dbg !1522

; <label>:26:                                     ; preds = %49, %21
  %27 = phi i8* [ %22, %21 ], [ %52, %49 ], !dbg !1523
  %28 = phi i64 [ %23, %21 ], [ %44, %49 ], !dbg !1523
  %29 = add i64 %28, -2, !dbg !1527
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !1528
  store i8 0, i8* %30, align 1, !dbg !1529, !tbaa !290
  call void @llvm.va_copy(i8* nonnull %6, i8* %25), !dbg !1530
  %31 = call i32 @vsnprintf(i8* nonnull %27, i64 %28, i8* %1, %struct.__va_list_tag* nonnull %24) #9, !dbg !1531
  call void @llvm.va_end(i8* nonnull %6), !dbg !1532
  %32 = load i8, i8* %30, align 1, !dbg !1533, !tbaa !290
  %33 = icmp eq i8 %32, 0, !dbg !1534
  br i1 %33, label %54, label %34, !dbg !1535

; <label>:34:                                     ; preds = %26
  %35 = icmp eq i8* %27, %7, !dbg !1536
  br i1 %35, label %43, label %36, !dbg !1538

; <label>:36:                                     ; preds = %34
  %37 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1541, !tbaa !179
  %38 = icmp eq %struct.uk_alloc* %37, null, !dbg !1548
  br i1 %38, label %39, label %40, !dbg !1549, !prof !249

; <label>:39:                                     ; preds = %36
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1550
  call void @ukplat_terminate(i32 3) #11, !dbg !1550
  unreachable, !dbg !1550

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %37, i64 0, i32 5, !dbg !1551
  %42 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %41, align 8, !dbg !1551, !tbaa !179
  call void %42(%struct.uk_alloc* nonnull %37, i8* nonnull %27) #9, !dbg !1552
  br label %43, !dbg !1553

; <label>:43:                                     ; preds = %34, %40
  %44 = shl i64 %28, 1, !dbg !1554
  %45 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1557, !tbaa !179
  %46 = icmp eq %struct.uk_alloc* %45, null, !dbg !1561
  br i1 %46, label %47, label %49, !dbg !1562, !prof !249

; <label>:47:                                     ; preds = %43
  %48 = call i32* @__errno() #9, !dbg !1563
  store i32 12, i32* %48, align 4, !dbg !1564, !tbaa !253
  br label %65, !dbg !1565

; <label>:49:                                     ; preds = %43
  %50 = bitcast %struct.uk_alloc* %45 to i8* (%struct.uk_alloc*, i64)**, !dbg !1569
  %51 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %50, align 8, !dbg !1569, !tbaa !179
  %52 = call i8* %51(%struct.uk_alloc* nonnull %45, i64 %44) #9, !dbg !1570
  %53 = icmp eq i8* %52, null, !dbg !1571
  br i1 %53, label %65, label %26, !dbg !1565, !llvm.loop !1573

; <label>:54:                                     ; preds = %26
  %55 = call i64 @strlen(i8* nonnull %27) #9, !dbg !1578
  %56 = call i8* @sdscatlen(i8* %0, i8* nonnull %27, i64 %55) #9, !dbg !1579
  %57 = icmp eq i8* %27, %7, !dbg !1581
  br i1 %57, label %65, label %58, !dbg !1583

; <label>:58:                                     ; preds = %54
  %59 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1586, !tbaa !179
  %60 = icmp eq %struct.uk_alloc* %59, null, !dbg !1593
  br i1 %60, label %61, label %62, !dbg !1594, !prof !249

; <label>:61:                                     ; preds = %58
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1595
  call void @ukplat_terminate(i32 3) #11, !dbg !1595
  unreachable, !dbg !1595

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %59, i64 0, i32 5, !dbg !1596
  %64 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %63, align 8, !dbg !1596, !tbaa !179
  call void %64(%struct.uk_alloc* nonnull %59, i8* nonnull %27) #9, !dbg !1597
  br label %65, !dbg !1598

; <label>:65:                                     ; preds = %49, %47, %14, %62, %54, %16
  %66 = phi i8* [ null, %16 ], [ %56, %54 ], [ %56, %62 ], [ null, %14 ], [ null, %47 ], [ null, %49 ], !dbg !1519
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #6, !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1599
  ret i8* %66, !dbg !1599
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #6

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #0 !dbg !1600 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1610
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1612
  call void @llvm.va_start(i8* nonnull %4), !dbg !1612
  %6 = call i8* @sdscatvprintf(i8* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #10, !dbg !1613
  call void @llvm.va_end(i8* nonnull %4), !dbg !1615
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1616
  ret i8* %6, !dbg !1617
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatfmt(i8*, i8* nocapture readonly, ...) local_unnamed_addr #0 !dbg !1618 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [21 x i8], align 16
  %5 = alloca [21 x i8], align 16
  %6 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1642
  %7 = load i8, i8* %6, align 1, !dbg !1642, !tbaa !290
  %8 = trunc i8 %7 to i3, !dbg !1644
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !1644

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !1645
  %11 = zext i8 %10 to i64, !dbg !1645
  br label %30, !dbg !1646

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1647
  %14 = load i8, i8* %13, align 1, !dbg !1648, !tbaa !290
  %15 = zext i8 %14 to i64, !dbg !1647
  br label %30, !dbg !1649

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1650
  %18 = bitcast i8* %17 to i16*, !dbg !1651
  %19 = load i16, i16* %18, align 1, !dbg !1651, !tbaa !297
  %20 = zext i16 %19 to i64, !dbg !1650
  br label %30, !dbg !1652

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1653
  %23 = bitcast i8* %22 to i32*, !dbg !1654
  %24 = load i32, i32* %23, align 1, !dbg !1654, !tbaa !253
  %25 = zext i32 %24 to i64, !dbg !1653
  br label %30, !dbg !1655

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1656
  %28 = bitcast i8* %27 to i64*, !dbg !1657
  %29 = load i64, i64* %28, align 1, !dbg !1657, !tbaa !310
  br label %30, !dbg !1658

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !1659
  %32 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1662
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %32) #6, !dbg !1662
  call void @llvm.va_start(i8* nonnull %32), !dbg !1664
  %33 = load i8, i8* %1, align 1, !dbg !1666, !tbaa !290
  %34 = icmp eq i8 %33, 0, !dbg !1667
  br i1 %34, label %582, label %35, !dbg !1667

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 1
  %42 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 1
  br label %43, !dbg !1667

; <label>:43:                                     ; preds = %35, %575
  %44 = phi i8 [ %33, %35 ], [ %580, %575 ]
  %45 = phi i8* [ %0, %35 ], [ %578, %575 ]
  %46 = phi i8* [ %1, %35 ], [ %579, %575 ]
  %47 = phi i64 [ %31, %35 ], [ %576, %575 ]
  %48 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1671
  %49 = load i8, i8* %48, align 1, !dbg !1671, !tbaa !290
  %50 = trunc i8 %49 to i3, !dbg !1673
  switch i3 %50, label %89 [
    i3 -4, label %78
    i3 1, label %51
    i3 2, label %59
    i3 3, label %69
  ], !dbg !1673

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1674
  %53 = getelementptr inbounds i8, i8* %45, i64 -2, !dbg !1675
  %54 = load i8, i8* %53, align 1, !dbg !1675, !tbaa !290
  %55 = zext i8 %54 to i64, !dbg !1676
  %56 = load i8, i8* %52, align 1, !dbg !1677, !tbaa !290
  %57 = zext i8 %56 to i64, !dbg !1678
  %58 = sub nsw i64 %55, %57, !dbg !1679
  br label %86

; <label>:59:                                     ; preds = %43
  %60 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1680
  %61 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1681
  %62 = bitcast i8* %61 to i16*, !dbg !1681
  %63 = load i16, i16* %62, align 1, !dbg !1681, !tbaa !297
  %64 = zext i16 %63 to i64, !dbg !1682
  %65 = bitcast i8* %60 to i16*, !dbg !1683
  %66 = load i16, i16* %65, align 1, !dbg !1683, !tbaa !297
  %67 = zext i16 %66 to i64, !dbg !1684
  %68 = sub nsw i64 %64, %67, !dbg !1685
  br label %86

; <label>:69:                                     ; preds = %43
  %70 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1686
  %71 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1687
  %72 = bitcast i8* %71 to i32*, !dbg !1687
  %73 = load i32, i32* %72, align 1, !dbg !1687, !tbaa !253
  %74 = bitcast i8* %70 to i32*, !dbg !1688
  %75 = load i32, i32* %74, align 1, !dbg !1688, !tbaa !253
  %76 = sub i32 %73, %75, !dbg !1689
  %77 = zext i32 %76 to i64, !dbg !1690
  br label %86

; <label>:78:                                     ; preds = %43
  %79 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1691
  %80 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1692
  %81 = bitcast i8* %80 to i64*, !dbg !1692
  %82 = load i64, i64* %81, align 1, !dbg !1692, !tbaa !310
  %83 = bitcast i8* %79 to i64*, !dbg !1693
  %84 = load i64, i64* %83, align 1, !dbg !1693, !tbaa !310
  %85 = sub i64 %82, %84, !dbg !1694
  br label %86

; <label>:86:                                     ; preds = %51, %59, %69, %78
  %87 = phi i64 [ %85, %78 ], [ %77, %69 ], [ %68, %59 ], [ %58, %51 ], !dbg !1695
  %88 = icmp eq i64 %87, 0, !dbg !1696
  br i1 %88, label %89, label %92, !dbg !1697

; <label>:89:                                     ; preds = %43, %86
  %90 = call i8* @sdsMakeRoomFor(i8* nonnull %45, i64 1) #10, !dbg !1698
  %91 = load i8, i8* %46, align 1, !dbg !1700, !tbaa !290
  br label %92, !dbg !1701

; <label>:92:                                     ; preds = %89, %86
  %93 = phi i8 [ %91, %89 ], [ %44, %86 ], !dbg !1700
  %94 = phi i8* [ %90, %89 ], [ %45, %86 ]
  %95 = icmp eq i8 %93, 37, !dbg !1702
  br i1 %95, label %96, label %547, !dbg !1702

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1703
  %98 = load i8, i8* %97, align 1, !dbg !1704, !tbaa !290
  %99 = sext i8 %98 to i32, !dbg !1706
  switch i32 %99, label %519 [
    i32 115, label %100
    i32 83, label %100
    i32 105, label %225
    i32 73, label %225
    i32 117, label %377
    i32 85, label %377
  ], !dbg !1707

; <label>:100:                                    ; preds = %96, %96
  %101 = load i32, i32* %36, align 16, !dbg !1708
  %102 = icmp ult i32 %101, 41, !dbg !1708
  br i1 %102, label %103, label %108, !dbg !1708

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %37, align 16, !dbg !1708
  %105 = sext i32 %101 to i64, !dbg !1708
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !1708
  %107 = add i32 %101, 8, !dbg !1708
  store i32 %107, i32* %36, align 16, !dbg !1708
  br label %111, !dbg !1708

; <label>:108:                                    ; preds = %100
  %109 = load i8*, i8** %38, align 8, !dbg !1708
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !1708
  store i8* %110, i8** %38, align 8, !dbg !1708
  br label %111, !dbg !1708

; <label>:111:                                    ; preds = %108, %103
  %112 = phi i8* [ %106, %103 ], [ %109, %108 ]
  %113 = bitcast i8* %112 to i8**, !dbg !1708
  %114 = load i8*, i8** %113, align 8, !dbg !1708
  %115 = icmp eq i8 %98, 115, !dbg !1710
  br i1 %115, label %116, label %118, !dbg !1711

; <label>:116:                                    ; preds = %111
  %117 = call i64 @strlen(i8* %114) #9, !dbg !1712
  br label %143, !dbg !1711

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds i8, i8* %114, i64 -1, !dbg !1715
  %120 = load i8, i8* %119, align 1, !dbg !1715, !tbaa !290
  %121 = trunc i8 %120 to i3, !dbg !1717
  switch i3 %121, label %143 [
    i3 0, label %122
    i3 1, label %125
    i3 2, label %129
    i3 3, label %134
    i3 -4, label %139
  ], !dbg !1717

; <label>:122:                                    ; preds = %118
  %123 = lshr i8 %120, 3, !dbg !1718
  %124 = zext i8 %123 to i64, !dbg !1718
  br label %143, !dbg !1719

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds i8, i8* %114, i64 -3, !dbg !1720
  %127 = load i8, i8* %126, align 1, !dbg !1721, !tbaa !290
  %128 = zext i8 %127 to i64, !dbg !1720
  br label %143, !dbg !1722

; <label>:129:                                    ; preds = %118
  %130 = getelementptr inbounds i8, i8* %114, i64 -5, !dbg !1723
  %131 = bitcast i8* %130 to i16*, !dbg !1724
  %132 = load i16, i16* %131, align 1, !dbg !1724, !tbaa !297
  %133 = zext i16 %132 to i64, !dbg !1723
  br label %143, !dbg !1725

; <label>:134:                                    ; preds = %118
  %135 = getelementptr inbounds i8, i8* %114, i64 -9, !dbg !1726
  %136 = bitcast i8* %135 to i32*, !dbg !1727
  %137 = load i32, i32* %136, align 1, !dbg !1727, !tbaa !253
  %138 = zext i32 %137 to i64, !dbg !1726
  br label %143, !dbg !1728

; <label>:139:                                    ; preds = %118
  %140 = getelementptr inbounds i8, i8* %114, i64 -17, !dbg !1729
  %141 = bitcast i8* %140 to i64*, !dbg !1730
  %142 = load i64, i64* %141, align 1, !dbg !1730, !tbaa !310
  br label %143, !dbg !1731

; <label>:143:                                    ; preds = %139, %134, %129, %125, %122, %118, %116
  %144 = phi i64 [ %117, %116 ], [ %142, %139 ], [ %138, %134 ], [ %133, %129 ], [ %128, %125 ], [ %124, %122 ], [ 0, %118 ], !dbg !1711
  %145 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !1736
  %146 = load i8, i8* %145, align 1, !dbg !1736, !tbaa !290
  %147 = trunc i8 %146 to i3, !dbg !1738
  switch i3 %147, label %183 [
    i3 -4, label %175
    i3 1, label %148
    i3 2, label %156
    i3 3, label %166
  ], !dbg !1738

; <label>:148:                                    ; preds = %143
  %149 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1739
  %150 = getelementptr inbounds i8, i8* %94, i64 -2, !dbg !1740
  %151 = load i8, i8* %150, align 1, !dbg !1740, !tbaa !290
  %152 = zext i8 %151 to i64, !dbg !1741
  %153 = load i8, i8* %149, align 1, !dbg !1742, !tbaa !290
  %154 = zext i8 %153 to i64, !dbg !1743
  %155 = sub nsw i64 %152, %154, !dbg !1744
  br label %183

; <label>:156:                                    ; preds = %143
  %157 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1745
  %158 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1746
  %159 = bitcast i8* %158 to i16*, !dbg !1746
  %160 = load i16, i16* %159, align 1, !dbg !1746, !tbaa !297
  %161 = zext i16 %160 to i64, !dbg !1747
  %162 = bitcast i8* %157 to i16*, !dbg !1748
  %163 = load i16, i16* %162, align 1, !dbg !1748, !tbaa !297
  %164 = zext i16 %163 to i64, !dbg !1749
  %165 = sub nsw i64 %161, %164, !dbg !1750
  br label %183

; <label>:166:                                    ; preds = %143
  %167 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1751
  %168 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1752
  %169 = bitcast i8* %168 to i32*, !dbg !1752
  %170 = load i32, i32* %169, align 1, !dbg !1752, !tbaa !253
  %171 = bitcast i8* %167 to i32*, !dbg !1753
  %172 = load i32, i32* %171, align 1, !dbg !1753, !tbaa !253
  %173 = sub i32 %170, %172, !dbg !1754
  %174 = zext i32 %173 to i64, !dbg !1755
  br label %183

; <label>:175:                                    ; preds = %143
  %176 = getelementptr inbounds i8, i8* %94, i64 -17, !dbg !1756
  %177 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1757
  %178 = bitcast i8* %177 to i64*, !dbg !1757
  %179 = load i64, i64* %178, align 1, !dbg !1757, !tbaa !310
  %180 = bitcast i8* %176 to i64*, !dbg !1758
  %181 = load i64, i64* %180, align 1, !dbg !1758, !tbaa !310
  %182 = sub i64 %179, %181, !dbg !1759
  br label %183

; <label>:183:                                    ; preds = %143, %148, %156, %166, %175
  %184 = phi i64 [ %182, %175 ], [ %174, %166 ], [ %165, %156 ], [ %155, %148 ], [ 0, %143 ], !dbg !1760
  %185 = icmp ult i64 %184, %144, !dbg !1761
  br i1 %185, label %186, label %189, !dbg !1762

; <label>:186:                                    ; preds = %183
  %187 = call i8* @sdsMakeRoomFor(i8* nonnull %94, i64 %144) #10, !dbg !1763
  %188 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !1765
  br label %189, !dbg !1776

; <label>:189:                                    ; preds = %186, %183
  %190 = phi i8* [ %188, %186 ], [ %145, %183 ], !dbg !1765
  %191 = phi i8* [ %187, %186 ], [ %94, %183 ], !dbg !1777
  %192 = getelementptr inbounds i8, i8* %191, i64 %47, !dbg !1778
  %193 = call i8* @memcpy(i8* %192, i8* %114, i64 %144) #9, !dbg !1779
  %194 = load i8, i8* %190, align 1, !dbg !1765, !tbaa !290
  %195 = trunc i8 %194 to i3, !dbg !1783
  switch i3 %195, label %223 [
    i3 0, label %196
    i3 1, label %201
    i3 2, label %206
    i3 3, label %212
    i3 -4, label %218
  ], !dbg !1783

; <label>:196:                                    ; preds = %189
  %197 = trunc i64 %144 to i8, !dbg !1785
  %198 = shl i8 %197, 3, !dbg !1786
  %199 = add i8 %194, %198, !dbg !1786
  %200 = and i8 %199, -8, !dbg !1786
  store i8 %200, i8* %190, align 1, !dbg !1787, !tbaa !290
  br label %223, !dbg !1788

; <label>:201:                                    ; preds = %189
  %202 = getelementptr inbounds i8, i8* %191, i64 -3, !dbg !1789
  %203 = load i8, i8* %202, align 1, !dbg !1790, !tbaa !290
  %204 = trunc i64 %144 to i8, !dbg !1790
  %205 = add i8 %203, %204, !dbg !1790
  store i8 %205, i8* %202, align 1, !dbg !1790, !tbaa !290
  br label %223, !dbg !1791

; <label>:206:                                    ; preds = %189
  %207 = getelementptr inbounds i8, i8* %191, i64 -5, !dbg !1792
  %208 = bitcast i8* %207 to i16*, !dbg !1793
  %209 = load i16, i16* %208, align 1, !dbg !1794, !tbaa !297
  %210 = trunc i64 %144 to i16, !dbg !1794
  %211 = add i16 %209, %210, !dbg !1794
  store i16 %211, i16* %208, align 1, !dbg !1794, !tbaa !297
  br label %223, !dbg !1795

; <label>:212:                                    ; preds = %189
  %213 = getelementptr inbounds i8, i8* %191, i64 -9, !dbg !1796
  %214 = bitcast i8* %213 to i32*, !dbg !1797
  %215 = load i32, i32* %214, align 1, !dbg !1798, !tbaa !253
  %216 = trunc i64 %144 to i32, !dbg !1798
  %217 = add i32 %215, %216, !dbg !1798
  store i32 %217, i32* %214, align 1, !dbg !1798, !tbaa !253
  br label %223, !dbg !1799

; <label>:218:                                    ; preds = %189
  %219 = getelementptr inbounds i8, i8* %191, i64 -17, !dbg !1800
  %220 = bitcast i8* %219 to i64*, !dbg !1801
  %221 = load i64, i64* %220, align 1, !dbg !1802, !tbaa !310
  %222 = add i64 %221, %144, !dbg !1802
  store i64 %222, i64* %220, align 1, !dbg !1802, !tbaa !310
  br label %223, !dbg !1803

; <label>:223:                                    ; preds = %189, %196, %201, %206, %212, %218
  %224 = add i64 %144, %47, !dbg !1804
  br label %575, !dbg !1805

; <label>:225:                                    ; preds = %96, %96
  %226 = icmp eq i8 %98, 105, !dbg !1806
  %227 = load i32, i32* %36, align 16, !dbg !1808
  %228 = icmp ult i32 %227, 41, !dbg !1808
  br i1 %226, label %229, label %243, !dbg !1809

; <label>:229:                                    ; preds = %225
  br i1 %228, label %230, label %235, !dbg !1810

; <label>:230:                                    ; preds = %229
  %231 = load i8*, i8** %37, align 16, !dbg !1810
  %232 = sext i32 %227 to i64, !dbg !1810
  %233 = getelementptr i8, i8* %231, i64 %232, !dbg !1810
  %234 = add i32 %227, 8, !dbg !1810
  store i32 %234, i32* %36, align 16, !dbg !1810
  br label %238, !dbg !1810

; <label>:235:                                    ; preds = %229
  %236 = load i8*, i8** %38, align 8, !dbg !1810
  %237 = getelementptr i8, i8* %236, i64 8, !dbg !1810
  store i8* %237, i8** %38, align 8, !dbg !1810
  br label %238, !dbg !1810

; <label>:238:                                    ; preds = %235, %230
  %239 = phi i8* [ %233, %230 ], [ %236, %235 ]
  %240 = bitcast i8* %239 to i32*, !dbg !1810
  %241 = load i32, i32* %240, align 4, !dbg !1810
  %242 = sext i32 %241 to i64, !dbg !1810
  br label %256, !dbg !1812

; <label>:243:                                    ; preds = %225
  br i1 %228, label %244, label %249, !dbg !1813

; <label>:244:                                    ; preds = %243
  %245 = load i8*, i8** %37, align 16, !dbg !1813
  %246 = sext i32 %227 to i64, !dbg !1813
  %247 = getelementptr i8, i8* %245, i64 %246, !dbg !1813
  %248 = add i32 %227, 8, !dbg !1813
  store i32 %248, i32* %36, align 16, !dbg !1813
  br label %252, !dbg !1813

; <label>:249:                                    ; preds = %243
  %250 = load i8*, i8** %38, align 8, !dbg !1813
  %251 = getelementptr i8, i8* %250, i64 8, !dbg !1813
  store i8* %251, i8** %38, align 8, !dbg !1813
  br label %252, !dbg !1813

; <label>:252:                                    ; preds = %249, %244
  %253 = phi i8* [ %247, %244 ], [ %250, %249 ]
  %254 = bitcast i8* %253 to i64*, !dbg !1813
  %255 = load i64, i64* %254, align 8, !dbg !1813
  br label %256

; <label>:256:                                    ; preds = %252, %238
  %257 = phi i64 [ %242, %238 ], [ %255, %252 ], !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %39) #6, !dbg !1814
  %258 = icmp slt i64 %257, 0, !dbg !1819
  %259 = sub nsw i64 0, %257, !dbg !1820
  %260 = select i1 %258, i64 %259, i64 %257, !dbg !1821
  br label %261, !dbg !1824

; <label>:261:                                    ; preds = %261, %256
  %262 = phi i64 [ 0, %256 ], [ %268, %261 ]
  %263 = phi i64 [ %260, %256 ], [ %269, %261 ], !dbg !1825
  %264 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %262, !dbg !1822
  %265 = urem i64 %263, 10, !dbg !1826
  %266 = trunc i64 %265 to i8, !dbg !1827
  %267 = or i8 %266, 48, !dbg !1827
  %268 = add nuw nsw i64 %262, 1, !dbg !1828
  store i8 %267, i8* %264, align 1, !dbg !1829, !tbaa !290
  %269 = udiv i64 %263, 10, !dbg !1830
  %270 = icmp ugt i64 %263, 9, !dbg !1831
  br i1 %270, label %261, label %271, !dbg !1831, !llvm.loop !1360

; <label>:271:                                    ; preds = %261
  br i1 %258, label %272, label %275, !dbg !1832

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %268, !dbg !1823
  %274 = add nuw nsw i64 %262, 2, !dbg !1833
  store i8 45, i8* %273, align 1, !dbg !1834, !tbaa !290
  br label %275, !dbg !1835

; <label>:275:                                    ; preds = %272, %271
  %276 = phi i8 [ 45, %272 ], [ %267, %271 ]
  %277 = phi i64 [ %274, %272 ], [ %268, %271 ]
  %278 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %277, !dbg !1823
  store i8 0, i8* %278, align 1, !dbg !1837, !tbaa !290
  %279 = icmp sgt i64 %277, 1, !dbg !1838
  br i1 %279, label %280, label %294, !dbg !1839

; <label>:280:                                    ; preds = %275
  %281 = add nsw i64 %277, -1, !dbg !1840
  %282 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 %281, !dbg !1816
  %283 = load i8, i8* %39, align 16, !dbg !1841, !tbaa !290
  store i8 %276, i8* %39, align 16, !dbg !1843, !tbaa !290
  store i8 %283, i8* %282, align 1, !dbg !1844, !tbaa !290
  %284 = getelementptr inbounds i8, i8* %282, i64 -1, !dbg !1840
  %285 = icmp ult i8* %42, %284, !dbg !1838
  br i1 %285, label %286, label %294, !dbg !1839, !llvm.loop !1380

; <label>:286:                                    ; preds = %280, %286
  %287 = phi i8* [ %292, %286 ], [ %284, %280 ]
  %288 = phi i8* [ %291, %286 ], [ %42, %280 ]
  %289 = load i8, i8* %287, align 1, !dbg !1845, !tbaa !290
  %290 = load i8, i8* %288, align 1, !dbg !1841, !tbaa !290
  store i8 %289, i8* %288, align 1, !dbg !1843, !tbaa !290
  store i8 %290, i8* %287, align 1, !dbg !1844, !tbaa !290
  %291 = getelementptr inbounds i8, i8* %288, i64 1, !dbg !1846
  %292 = getelementptr inbounds i8, i8* %287, i64 -1, !dbg !1840
  %293 = icmp ult i8* %291, %292, !dbg !1838
  br i1 %293, label %286, label %294, !dbg !1839, !llvm.loop !1380

; <label>:294:                                    ; preds = %286, %280, %275
  %295 = trunc i64 %277 to i32, !dbg !1847
  %296 = shl i64 %277, 32, !dbg !1848
  %297 = ashr exact i64 %296, 32, !dbg !1848
  %298 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !1852
  %299 = load i8, i8* %298, align 1, !dbg !1852, !tbaa !290
  %300 = trunc i8 %299 to i3, !dbg !1854
  switch i3 %300, label %336 [
    i3 -4, label %328
    i3 1, label %301
    i3 2, label %309
    i3 3, label %319
  ], !dbg !1854

; <label>:301:                                    ; preds = %294
  %302 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1855
  %303 = getelementptr inbounds i8, i8* %94, i64 -2, !dbg !1856
  %304 = load i8, i8* %303, align 1, !dbg !1856, !tbaa !290
  %305 = zext i8 %304 to i64, !dbg !1857
  %306 = load i8, i8* %302, align 1, !dbg !1858, !tbaa !290
  %307 = zext i8 %306 to i64, !dbg !1859
  %308 = sub nsw i64 %305, %307, !dbg !1860
  br label %336

; <label>:309:                                    ; preds = %294
  %310 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1861
  %311 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1862
  %312 = bitcast i8* %311 to i16*, !dbg !1862
  %313 = load i16, i16* %312, align 1, !dbg !1862, !tbaa !297
  %314 = zext i16 %313 to i64, !dbg !1863
  %315 = bitcast i8* %310 to i16*, !dbg !1864
  %316 = load i16, i16* %315, align 1, !dbg !1864, !tbaa !297
  %317 = zext i16 %316 to i64, !dbg !1865
  %318 = sub nsw i64 %314, %317, !dbg !1866
  br label %336

; <label>:319:                                    ; preds = %294
  %320 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1867
  %321 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1868
  %322 = bitcast i8* %321 to i32*, !dbg !1868
  %323 = load i32, i32* %322, align 1, !dbg !1868, !tbaa !253
  %324 = bitcast i8* %320 to i32*, !dbg !1869
  %325 = load i32, i32* %324, align 1, !dbg !1869, !tbaa !253
  %326 = sub i32 %323, %325, !dbg !1870
  %327 = zext i32 %326 to i64, !dbg !1871
  br label %336

; <label>:328:                                    ; preds = %294
  %329 = getelementptr inbounds i8, i8* %94, i64 -17, !dbg !1872
  %330 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1873
  %331 = bitcast i8* %330 to i64*, !dbg !1873
  %332 = load i64, i64* %331, align 1, !dbg !1873, !tbaa !310
  %333 = bitcast i8* %329 to i64*, !dbg !1874
  %334 = load i64, i64* %333, align 1, !dbg !1874, !tbaa !310
  %335 = sub i64 %332, %334, !dbg !1875
  br label %336

; <label>:336:                                    ; preds = %294, %301, %309, %319, %328
  %337 = phi i64 [ %335, %328 ], [ %327, %319 ], [ %318, %309 ], [ %308, %301 ], [ 0, %294 ], !dbg !1876
  %338 = icmp ult i64 %337, %297, !dbg !1877
  br i1 %338, label %339, label %342, !dbg !1878

; <label>:339:                                    ; preds = %336
  %340 = call i8* @sdsMakeRoomFor(i8* nonnull %94, i64 %297) #10, !dbg !1879
  %341 = getelementptr inbounds i8, i8* %340, i64 -1, !dbg !1881
  br label %342, !dbg !1883

; <label>:342:                                    ; preds = %339, %336
  %343 = phi i8* [ %341, %339 ], [ %298, %336 ], !dbg !1881
  %344 = phi i8* [ %340, %339 ], [ %94, %336 ], !dbg !1777
  %345 = getelementptr inbounds i8, i8* %344, i64 %47, !dbg !1884
  %346 = call i8* @memcpy(i8* %345, i8* nonnull %39, i64 %297) #9, !dbg !1885
  %347 = load i8, i8* %343, align 1, !dbg !1881, !tbaa !290
  %348 = trunc i8 %347 to i3, !dbg !1889
  switch i3 %348, label %375 [
    i3 0, label %349
    i3 1, label %354
    i3 2, label %359
    i3 3, label %365
    i3 -4, label %370
  ], !dbg !1889

; <label>:349:                                    ; preds = %342
  %350 = trunc i64 %277 to i8, !dbg !1891
  %351 = shl i8 %350, 3, !dbg !1891
  %352 = add i8 %347, %351, !dbg !1891
  %353 = and i8 %352, -8, !dbg !1891
  store i8 %353, i8* %343, align 1, !dbg !1892, !tbaa !290
  br label %375, !dbg !1893

; <label>:354:                                    ; preds = %342
  %355 = getelementptr inbounds i8, i8* %344, i64 -3, !dbg !1894
  %356 = load i8, i8* %355, align 1, !dbg !1895, !tbaa !290
  %357 = trunc i64 %297 to i8, !dbg !1895
  %358 = add i8 %356, %357, !dbg !1895
  store i8 %358, i8* %355, align 1, !dbg !1895, !tbaa !290
  br label %375, !dbg !1896

; <label>:359:                                    ; preds = %342
  %360 = getelementptr inbounds i8, i8* %344, i64 -5, !dbg !1897
  %361 = bitcast i8* %360 to i16*, !dbg !1898
  %362 = load i16, i16* %361, align 1, !dbg !1899, !tbaa !297
  %363 = trunc i64 %297 to i16, !dbg !1899
  %364 = add i16 %362, %363, !dbg !1899
  store i16 %364, i16* %361, align 1, !dbg !1899, !tbaa !297
  br label %375, !dbg !1900

; <label>:365:                                    ; preds = %342
  %366 = getelementptr inbounds i8, i8* %344, i64 -9, !dbg !1901
  %367 = bitcast i8* %366 to i32*, !dbg !1902
  %368 = load i32, i32* %367, align 1, !dbg !1903, !tbaa !253
  %369 = add i32 %368, %295, !dbg !1903
  store i32 %369, i32* %367, align 1, !dbg !1903, !tbaa !253
  br label %375, !dbg !1904

; <label>:370:                                    ; preds = %342
  %371 = getelementptr inbounds i8, i8* %344, i64 -17, !dbg !1905
  %372 = bitcast i8* %371 to i64*, !dbg !1906
  %373 = load i64, i64* %372, align 1, !dbg !1907, !tbaa !310
  %374 = add i64 %373, %297, !dbg !1907
  store i64 %374, i64* %372, align 1, !dbg !1907, !tbaa !310
  br label %375, !dbg !1908

; <label>:375:                                    ; preds = %342, %349, %354, %359, %365, %370
  %376 = add i64 %297, %47, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %39) #6, !dbg !1910
  br label %575, !dbg !1911

; <label>:377:                                    ; preds = %96, %96
  %378 = icmp eq i8 %98, 117, !dbg !1912
  %379 = load i32, i32* %36, align 16, !dbg !1914
  %380 = icmp ult i32 %379, 41, !dbg !1914
  br i1 %378, label %381, label %395, !dbg !1915

; <label>:381:                                    ; preds = %377
  br i1 %380, label %382, label %387, !dbg !1916

; <label>:382:                                    ; preds = %381
  %383 = load i8*, i8** %37, align 16, !dbg !1916
  %384 = sext i32 %379 to i64, !dbg !1916
  %385 = getelementptr i8, i8* %383, i64 %384, !dbg !1916
  %386 = add i32 %379, 8, !dbg !1916
  store i32 %386, i32* %36, align 16, !dbg !1916
  br label %390, !dbg !1916

; <label>:387:                                    ; preds = %381
  %388 = load i8*, i8** %38, align 8, !dbg !1916
  %389 = getelementptr i8, i8* %388, i64 8, !dbg !1916
  store i8* %389, i8** %38, align 8, !dbg !1916
  br label %390, !dbg !1916

; <label>:390:                                    ; preds = %387, %382
  %391 = phi i8* [ %385, %382 ], [ %388, %387 ]
  %392 = bitcast i8* %391 to i32*, !dbg !1916
  %393 = load i32, i32* %392, align 4, !dbg !1916
  %394 = zext i32 %393 to i64, !dbg !1916
  br label %408, !dbg !1918

; <label>:395:                                    ; preds = %377
  br i1 %380, label %396, label %401, !dbg !1919

; <label>:396:                                    ; preds = %395
  %397 = load i8*, i8** %37, align 16, !dbg !1919
  %398 = sext i32 %379 to i64, !dbg !1919
  %399 = getelementptr i8, i8* %397, i64 %398, !dbg !1919
  %400 = add i32 %379, 8, !dbg !1919
  store i32 %400, i32* %36, align 16, !dbg !1919
  br label %404, !dbg !1919

; <label>:401:                                    ; preds = %395
  %402 = load i8*, i8** %38, align 8, !dbg !1919
  %403 = getelementptr i8, i8* %402, i64 8, !dbg !1919
  store i8* %403, i8** %38, align 8, !dbg !1919
  br label %404, !dbg !1919

; <label>:404:                                    ; preds = %401, %396
  %405 = phi i8* [ %399, %396 ], [ %402, %401 ]
  %406 = bitcast i8* %405 to i64*, !dbg !1919
  %407 = load i64, i64* %406, align 8, !dbg !1919
  br label %408

; <label>:408:                                    ; preds = %404, %390
  %409 = phi i64 [ %394, %390 ], [ %407, %404 ], !dbg !1914
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %40) #6, !dbg !1920
  br label %410, !dbg !1926

; <label>:410:                                    ; preds = %410, %408
  %411 = phi i64 [ 0, %408 ], [ %417, %410 ]
  %412 = phi i64 [ %409, %408 ], [ %418, %410 ]
  %413 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %411, !dbg !1924
  %414 = urem i64 %412, 10, !dbg !1927
  %415 = trunc i64 %414 to i8, !dbg !1928
  %416 = or i8 %415, 48, !dbg !1928
  %417 = add nuw nsw i64 %411, 1, !dbg !1929
  store i8 %416, i8* %413, align 1, !dbg !1930, !tbaa !290
  %418 = udiv i64 %412, 10, !dbg !1931
  %419 = icmp ugt i64 %412, 9, !dbg !1932
  br i1 %419, label %410, label %420, !dbg !1932, !llvm.loop !1404

; <label>:420:                                    ; preds = %410
  %421 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %411, !dbg !1924
  %422 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %417, !dbg !1925
  store i8 0, i8* %422, align 1, !dbg !1934, !tbaa !290
  %423 = icmp eq i64 %411, 0, !dbg !1935
  br i1 %423, label %436, label %424, !dbg !1936

; <label>:424:                                    ; preds = %420
  %425 = load i8, i8* %40, align 16, !dbg !1937, !tbaa !290
  store i8 %416, i8* %40, align 16, !dbg !1939, !tbaa !290
  store i8 %425, i8* %421, align 1, !dbg !1940, !tbaa !290
  %426 = getelementptr inbounds i8, i8* %421, i64 -1, !dbg !1941
  %427 = icmp ult i8* %41, %426, !dbg !1935
  br i1 %427, label %428, label %436, !dbg !1936, !llvm.loop !1415

; <label>:428:                                    ; preds = %424, %428
  %429 = phi i8* [ %434, %428 ], [ %426, %424 ]
  %430 = phi i8* [ %433, %428 ], [ %41, %424 ]
  %431 = load i8, i8* %429, align 1, !dbg !1942, !tbaa !290
  %432 = load i8, i8* %430, align 1, !dbg !1937, !tbaa !290
  store i8 %431, i8* %430, align 1, !dbg !1939, !tbaa !290
  store i8 %432, i8* %429, align 1, !dbg !1940, !tbaa !290
  %433 = getelementptr inbounds i8, i8* %430, i64 1, !dbg !1943
  %434 = getelementptr inbounds i8, i8* %429, i64 -1, !dbg !1941
  %435 = icmp ult i8* %433, %434, !dbg !1935
  br i1 %435, label %428, label %436, !dbg !1936, !llvm.loop !1415

; <label>:436:                                    ; preds = %428, %424, %420
  %437 = trunc i64 %417 to i32, !dbg !1944
  %438 = shl i64 %417, 32, !dbg !1945
  %439 = ashr exact i64 %438, 32, !dbg !1945
  %440 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !1949
  %441 = load i8, i8* %440, align 1, !dbg !1949, !tbaa !290
  %442 = trunc i8 %441 to i3, !dbg !1951
  switch i3 %442, label %478 [
    i3 -4, label %470
    i3 1, label %443
    i3 2, label %451
    i3 3, label %461
  ], !dbg !1951

; <label>:443:                                    ; preds = %436
  %444 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1952
  %445 = getelementptr inbounds i8, i8* %94, i64 -2, !dbg !1953
  %446 = load i8, i8* %445, align 1, !dbg !1953, !tbaa !290
  %447 = zext i8 %446 to i64, !dbg !1954
  %448 = load i8, i8* %444, align 1, !dbg !1955, !tbaa !290
  %449 = zext i8 %448 to i64, !dbg !1956
  %450 = sub nsw i64 %447, %449, !dbg !1957
  br label %478

; <label>:451:                                    ; preds = %436
  %452 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1958
  %453 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !1959
  %454 = bitcast i8* %453 to i16*, !dbg !1959
  %455 = load i16, i16* %454, align 1, !dbg !1959, !tbaa !297
  %456 = zext i16 %455 to i64, !dbg !1960
  %457 = bitcast i8* %452 to i16*, !dbg !1961
  %458 = load i16, i16* %457, align 1, !dbg !1961, !tbaa !297
  %459 = zext i16 %458 to i64, !dbg !1962
  %460 = sub nsw i64 %456, %459, !dbg !1963
  br label %478

; <label>:461:                                    ; preds = %436
  %462 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1964
  %463 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !1965
  %464 = bitcast i8* %463 to i32*, !dbg !1965
  %465 = load i32, i32* %464, align 1, !dbg !1965, !tbaa !253
  %466 = bitcast i8* %462 to i32*, !dbg !1966
  %467 = load i32, i32* %466, align 1, !dbg !1966, !tbaa !253
  %468 = sub i32 %465, %467, !dbg !1967
  %469 = zext i32 %468 to i64, !dbg !1968
  br label %478

; <label>:470:                                    ; preds = %436
  %471 = getelementptr inbounds i8, i8* %94, i64 -17, !dbg !1969
  %472 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !1970
  %473 = bitcast i8* %472 to i64*, !dbg !1970
  %474 = load i64, i64* %473, align 1, !dbg !1970, !tbaa !310
  %475 = bitcast i8* %471 to i64*, !dbg !1971
  %476 = load i64, i64* %475, align 1, !dbg !1971, !tbaa !310
  %477 = sub i64 %474, %476, !dbg !1972
  br label %478

; <label>:478:                                    ; preds = %436, %443, %451, %461, %470
  %479 = phi i64 [ %477, %470 ], [ %469, %461 ], [ %460, %451 ], [ %450, %443 ], [ 0, %436 ], !dbg !1973
  %480 = icmp ult i64 %479, %439, !dbg !1974
  br i1 %480, label %481, label %484, !dbg !1975

; <label>:481:                                    ; preds = %478
  %482 = call i8* @sdsMakeRoomFor(i8* nonnull %94, i64 %439) #10, !dbg !1976
  %483 = getelementptr inbounds i8, i8* %482, i64 -1, !dbg !1978
  br label %484, !dbg !1980

; <label>:484:                                    ; preds = %481, %478
  %485 = phi i8* [ %483, %481 ], [ %440, %478 ], !dbg !1978
  %486 = phi i8* [ %482, %481 ], [ %94, %478 ], !dbg !1777
  %487 = getelementptr inbounds i8, i8* %486, i64 %47, !dbg !1981
  %488 = call i8* @memcpy(i8* %487, i8* nonnull %40, i64 %439) #9, !dbg !1982
  %489 = load i8, i8* %485, align 1, !dbg !1978, !tbaa !290
  %490 = trunc i8 %489 to i3, !dbg !1986
  switch i3 %490, label %517 [
    i3 0, label %491
    i3 1, label %496
    i3 2, label %501
    i3 3, label %507
    i3 -4, label %512
  ], !dbg !1986

; <label>:491:                                    ; preds = %484
  %492 = trunc i64 %417 to i8, !dbg !1988
  %493 = shl i8 %492, 3, !dbg !1988
  %494 = add i8 %489, %493, !dbg !1988
  %495 = and i8 %494, -8, !dbg !1988
  store i8 %495, i8* %485, align 1, !dbg !1989, !tbaa !290
  br label %517, !dbg !1990

; <label>:496:                                    ; preds = %484
  %497 = getelementptr inbounds i8, i8* %486, i64 -3, !dbg !1991
  %498 = load i8, i8* %497, align 1, !dbg !1992, !tbaa !290
  %499 = trunc i64 %439 to i8, !dbg !1992
  %500 = add i8 %498, %499, !dbg !1992
  store i8 %500, i8* %497, align 1, !dbg !1992, !tbaa !290
  br label %517, !dbg !1993

; <label>:501:                                    ; preds = %484
  %502 = getelementptr inbounds i8, i8* %486, i64 -5, !dbg !1994
  %503 = bitcast i8* %502 to i16*, !dbg !1995
  %504 = load i16, i16* %503, align 1, !dbg !1996, !tbaa !297
  %505 = trunc i64 %439 to i16, !dbg !1996
  %506 = add i16 %504, %505, !dbg !1996
  store i16 %506, i16* %503, align 1, !dbg !1996, !tbaa !297
  br label %517, !dbg !1997

; <label>:507:                                    ; preds = %484
  %508 = getelementptr inbounds i8, i8* %486, i64 -9, !dbg !1998
  %509 = bitcast i8* %508 to i32*, !dbg !1999
  %510 = load i32, i32* %509, align 1, !dbg !2000, !tbaa !253
  %511 = add i32 %510, %437, !dbg !2000
  store i32 %511, i32* %509, align 1, !dbg !2000, !tbaa !253
  br label %517, !dbg !2001

; <label>:512:                                    ; preds = %484
  %513 = getelementptr inbounds i8, i8* %486, i64 -17, !dbg !2002
  %514 = bitcast i8* %513 to i64*, !dbg !2003
  %515 = load i64, i64* %514, align 1, !dbg !2004, !tbaa !310
  %516 = add i64 %515, %439, !dbg !2004
  store i64 %516, i64* %514, align 1, !dbg !2004, !tbaa !310
  br label %517, !dbg !2005

; <label>:517:                                    ; preds = %484, %491, %496, %501, %507, %512
  %518 = add i64 %439, %47, !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %40) #6, !dbg !2007
  br label %575, !dbg !2008

; <label>:519:                                    ; preds = %96
  %520 = add nsw i64 %47, 1, !dbg !2009
  %521 = getelementptr inbounds i8, i8* %94, i64 %47, !dbg !2010
  store i8 %98, i8* %521, align 1, !dbg !2011, !tbaa !290
  %522 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !2015
  %523 = load i8, i8* %522, align 1, !dbg !2015, !tbaa !290
  %524 = trunc i8 %523 to i3, !dbg !2017
  switch i3 %524, label %575 [
    i3 0, label %525
    i3 1, label %528
    i3 2, label %532
    i3 3, label %537
    i3 -4, label %542
  ], !dbg !2017

; <label>:525:                                    ; preds = %519
  %526 = add i8 %523, 8, !dbg !2019
  %527 = and i8 %526, -8, !dbg !2019
  store i8 %527, i8* %522, align 1, !dbg !2020, !tbaa !290
  br label %575, !dbg !2021

; <label>:528:                                    ; preds = %519
  %529 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !2022
  %530 = load i8, i8* %529, align 1, !dbg !2023, !tbaa !290
  %531 = add i8 %530, 1, !dbg !2023
  store i8 %531, i8* %529, align 1, !dbg !2023, !tbaa !290
  br label %575, !dbg !2024

; <label>:532:                                    ; preds = %519
  %533 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !2025
  %534 = bitcast i8* %533 to i16*, !dbg !2026
  %535 = load i16, i16* %534, align 1, !dbg !2027, !tbaa !297
  %536 = add i16 %535, 1, !dbg !2027
  store i16 %536, i16* %534, align 1, !dbg !2027, !tbaa !297
  br label %575, !dbg !2028

; <label>:537:                                    ; preds = %519
  %538 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !2029
  %539 = bitcast i8* %538 to i32*, !dbg !2030
  %540 = load i32, i32* %539, align 1, !dbg !2031, !tbaa !253
  %541 = add i32 %540, 1, !dbg !2031
  store i32 %541, i32* %539, align 1, !dbg !2031, !tbaa !253
  br label %575, !dbg !2032

; <label>:542:                                    ; preds = %519
  %543 = getelementptr inbounds i8, i8* %94, i64 -17, !dbg !2033
  %544 = bitcast i8* %543 to i64*, !dbg !2034
  %545 = load i64, i64* %544, align 1, !dbg !2035, !tbaa !310
  %546 = add i64 %545, 1, !dbg !2035
  store i64 %546, i64* %544, align 1, !dbg !2035, !tbaa !310
  br label %575, !dbg !2036

; <label>:547:                                    ; preds = %92
  %548 = add nsw i64 %47, 1, !dbg !2037
  %549 = getelementptr inbounds i8, i8* %94, i64 %47, !dbg !2038
  store i8 %93, i8* %549, align 1, !dbg !2039, !tbaa !290
  %550 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !2043
  %551 = load i8, i8* %550, align 1, !dbg !2043, !tbaa !290
  %552 = trunc i8 %551 to i3, !dbg !2045
  switch i3 %552, label %575 [
    i3 0, label %553
    i3 1, label %556
    i3 2, label %560
    i3 3, label %565
    i3 -4, label %570
  ], !dbg !2045

; <label>:553:                                    ; preds = %547
  %554 = add i8 %551, 8, !dbg !2047
  %555 = and i8 %554, -8, !dbg !2047
  store i8 %555, i8* %550, align 1, !dbg !2048, !tbaa !290
  br label %575, !dbg !2049

; <label>:556:                                    ; preds = %547
  %557 = getelementptr inbounds i8, i8* %94, i64 -3, !dbg !2050
  %558 = load i8, i8* %557, align 1, !dbg !2051, !tbaa !290
  %559 = add i8 %558, 1, !dbg !2051
  store i8 %559, i8* %557, align 1, !dbg !2051, !tbaa !290
  br label %575, !dbg !2052

; <label>:560:                                    ; preds = %547
  %561 = getelementptr inbounds i8, i8* %94, i64 -5, !dbg !2053
  %562 = bitcast i8* %561 to i16*, !dbg !2054
  %563 = load i16, i16* %562, align 1, !dbg !2055, !tbaa !297
  %564 = add i16 %563, 1, !dbg !2055
  store i16 %564, i16* %562, align 1, !dbg !2055, !tbaa !297
  br label %575, !dbg !2056

; <label>:565:                                    ; preds = %547
  %566 = getelementptr inbounds i8, i8* %94, i64 -9, !dbg !2057
  %567 = bitcast i8* %566 to i32*, !dbg !2058
  %568 = load i32, i32* %567, align 1, !dbg !2059, !tbaa !253
  %569 = add i32 %568, 1, !dbg !2059
  store i32 %569, i32* %567, align 1, !dbg !2059, !tbaa !253
  br label %575, !dbg !2060

; <label>:570:                                    ; preds = %547
  %571 = getelementptr inbounds i8, i8* %94, i64 -17, !dbg !2061
  %572 = bitcast i8* %571 to i64*, !dbg !2062
  %573 = load i64, i64* %572, align 1, !dbg !2063, !tbaa !310
  %574 = add i64 %573, 1, !dbg !2063
  store i64 %574, i64* %572, align 1, !dbg !2063, !tbaa !310
  br label %575, !dbg !2064

; <label>:575:                                    ; preds = %570, %565, %560, %556, %553, %547, %542, %537, %532, %528, %525, %519, %223, %375, %517
  %576 = phi i64 [ %518, %517 ], [ %376, %375 ], [ %224, %223 ], [ %520, %519 ], [ %520, %525 ], [ %520, %528 ], [ %520, %532 ], [ %520, %537 ], [ %520, %542 ], [ %548, %547 ], [ %548, %553 ], [ %548, %556 ], [ %548, %560 ], [ %548, %565 ], [ %548, %570 ], !dbg !2065
  %577 = phi i8* [ %97, %517 ], [ %97, %375 ], [ %97, %223 ], [ %97, %519 ], [ %97, %525 ], [ %97, %528 ], [ %97, %532 ], [ %97, %537 ], [ %97, %542 ], [ %46, %547 ], [ %46, %553 ], [ %46, %556 ], [ %46, %560 ], [ %46, %565 ], [ %46, %570 ], !dbg !2066
  %578 = phi i8* [ %486, %517 ], [ %344, %375 ], [ %191, %223 ], [ %94, %519 ], [ %94, %525 ], [ %94, %528 ], [ %94, %532 ], [ %94, %537 ], [ %94, %542 ], [ %94, %547 ], [ %94, %553 ], [ %94, %556 ], [ %94, %560 ], [ %94, %565 ], [ %94, %570 ], !dbg !1777
  %579 = getelementptr inbounds i8, i8* %577, i64 1, !dbg !2067
  %580 = load i8, i8* %579, align 1, !dbg !1666, !tbaa !290
  %581 = icmp eq i8 %580, 0, !dbg !1667
  br i1 %581, label %582, label %43, !dbg !1667, !llvm.loop !2068

; <label>:582:                                    ; preds = %575, %30
  %583 = phi i64 [ %31, %30 ], [ %576, %575 ], !dbg !2070
  %584 = phi i8* [ %0, %30 ], [ %578, %575 ]
  call void @llvm.va_end(i8* nonnull %32), !dbg !2071
  %585 = getelementptr inbounds i8, i8* %584, i64 %583, !dbg !2072
  store i8 0, i8* %585, align 1, !dbg !2073, !tbaa !290
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %32) #6, !dbg !2074
  ret i8* %584, !dbg !2075
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdstrim(i8* returned, i8*) local_unnamed_addr #0 !dbg !2076 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2091
  %4 = load i8, i8* %3, align 1, !dbg !2091, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !2093
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2093

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2094
  %8 = zext i8 %7 to i64, !dbg !2094
  br label %27, !dbg !2095

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2096
  %11 = load i8, i8* %10, align 1, !dbg !2097, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !2096
  br label %27, !dbg !2098

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2099
  %15 = bitcast i8* %14 to i16*, !dbg !2100
  %16 = load i16, i16* %15, align 1, !dbg !2100, !tbaa !297
  %17 = zext i16 %16 to i64, !dbg !2099
  br label %27, !dbg !2101

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2102
  %20 = bitcast i8* %19 to i32*, !dbg !2103
  %21 = load i32, i32* %20, align 1, !dbg !2103, !tbaa !253
  %22 = zext i32 %21 to i64, !dbg !2102
  br label %27, !dbg !2104

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2105
  %25 = bitcast i8* %24 to i64*, !dbg !2106
  %26 = load i64, i64* %25, align 1, !dbg !2106, !tbaa !310
  br label %27, !dbg !2107

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2108
  %29 = getelementptr inbounds i8, i8* %0, i64 %28, !dbg !2109
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2110
  %31 = icmp ult i8* %30, %0, !dbg !2113
  br i1 %31, label %41, label %32, !dbg !2114

; <label>:32:                                     ; preds = %27, %38
  %33 = phi i8* [ %39, %38 ], [ %0, %27 ]
  %34 = load i8, i8* %33, align 1, !dbg !2115, !tbaa !290
  %35 = sext i8 %34 to i32, !dbg !2115
  %36 = tail call i8* @strchr(i8* %1, i32 %35) #9, !dbg !2116
  %37 = icmp eq i8* %36, null, !dbg !2114
  br i1 %37, label %41, label %38, !dbg !2117

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2118
  %40 = icmp ugt i8* %39, %30, !dbg !2113
  br i1 %40, label %41, label %32, !dbg !2114, !llvm.loop !2119

; <label>:41:                                     ; preds = %38, %32, %27
  %42 = phi i8* [ %0, %27 ], [ %33, %32 ], [ %39, %38 ], !dbg !2120
  %43 = icmp ugt i8* %30, %42, !dbg !2121
  br i1 %43, label %44, label %53, !dbg !2122

; <label>:44:                                     ; preds = %41, %50
  %45 = phi i8* [ %51, %50 ], [ %30, %41 ]
  %46 = load i8, i8* %45, align 1, !dbg !2123, !tbaa !290
  %47 = sext i8 %46 to i32, !dbg !2123
  %48 = tail call i8* @strchr(i8* %1, i32 %47) #9, !dbg !2124
  %49 = icmp eq i8* %48, null, !dbg !2122
  br i1 %49, label %53, label %50, !dbg !2125

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !2126
  %52 = icmp ugt i8* %51, %42, !dbg !2121
  br i1 %52, label %44, label %53, !dbg !2122, !llvm.loop !2127

; <label>:53:                                     ; preds = %50, %44, %41
  %54 = phi i8* [ %30, %41 ], [ %45, %44 ], [ %51, %50 ], !dbg !2120
  %55 = icmp ugt i8* %42, %54, !dbg !2128
  %56 = ptrtoint i8* %54 to i64, !dbg !2129
  %57 = ptrtoint i8* %42 to i64, !dbg !2129
  %58 = sub i64 1, %57, !dbg !2129
  %59 = add i64 %58, %56, !dbg !2130
  %60 = select i1 %55, i64 0, i64 %59, !dbg !2131
  %61 = icmp eq i8* %42, %0, !dbg !2133
  br i1 %61, label %64, label %62, !dbg !2135

; <label>:62:                                     ; preds = %53
  %63 = tail call i8* @memmove(i8* %0, i8* %42, i64 %60) #9, !dbg !2136
  br label %64, !dbg !2136

; <label>:64:                                     ; preds = %53, %62
  %65 = getelementptr inbounds i8, i8* %0, i64 %60, !dbg !2137
  store i8 0, i8* %65, align 1, !dbg !2138, !tbaa !290
  %66 = load i8, i8* %3, align 1, !dbg !2142, !tbaa !290
  %67 = trunc i8 %66 to i3, !dbg !2144
  switch i3 %67, label %85 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %74
    i3 3, label %78
    i3 -4, label %82
  ], !dbg !2144

; <label>:68:                                     ; preds = %64
  %69 = trunc i64 %60 to i8, !dbg !2146
  %70 = shl i8 %69, 3, !dbg !2146
  store i8 %70, i8* %3, align 1, !dbg !2147, !tbaa !290
  br label %85, !dbg !2148

; <label>:71:                                     ; preds = %64
  %72 = trunc i64 %60 to i8, !dbg !2149
  %73 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2150
  store i8 %72, i8* %73, align 1, !dbg !2151, !tbaa !290
  br label %85, !dbg !2152

; <label>:74:                                     ; preds = %64
  %75 = trunc i64 %60 to i16, !dbg !2153
  %76 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2154
  %77 = bitcast i8* %76 to i16*, !dbg !2155
  store i16 %75, i16* %77, align 1, !dbg !2156, !tbaa !297
  br label %85, !dbg !2157

; <label>:78:                                     ; preds = %64
  %79 = trunc i64 %60 to i32, !dbg !2158
  %80 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2159
  %81 = bitcast i8* %80 to i32*, !dbg !2160
  store i32 %79, i32* %81, align 1, !dbg !2161, !tbaa !253
  br label %85, !dbg !2162

; <label>:82:                                     ; preds = %64
  %83 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2163
  %84 = bitcast i8* %83 to i64*, !dbg !2164
  store i64 %60, i64* %84, align 1, !dbg !2165, !tbaa !310
  br label %85, !dbg !2166

; <label>:85:                                     ; preds = %64, %68, %71, %74, %78, %82
  ret i8* %0, !dbg !2167
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #0 !dbg !2168 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2182
  %5 = load i8, i8* %4, align 1, !dbg !2182, !tbaa !290
  %6 = trunc i8 %5 to i3, !dbg !2184
  switch i3 %6, label %90 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2184

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2185
  %9 = zext i8 %8 to i64, !dbg !2185
  br label %28, !dbg !2186

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2187
  %12 = load i8, i8* %11, align 1, !dbg !2188, !tbaa !290
  %13 = zext i8 %12 to i64, !dbg !2187
  br label %28, !dbg !2189

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2190
  %16 = bitcast i8* %15 to i16*, !dbg !2191
  %17 = load i16, i16* %16, align 1, !dbg !2191, !tbaa !297
  %18 = zext i16 %17 to i64, !dbg !2190
  br label %28, !dbg !2192

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2193
  %21 = bitcast i8* %20 to i32*, !dbg !2194
  %22 = load i32, i32* %21, align 1, !dbg !2194, !tbaa !253
  %23 = zext i32 %22 to i64, !dbg !2193
  br label %28, !dbg !2195

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2196
  %26 = bitcast i8* %25 to i64*, !dbg !2197
  %27 = load i64, i64* %26, align 1, !dbg !2197, !tbaa !310
  br label %28, !dbg !2198

; <label>:28:                                     ; preds = %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], !dbg !2199
  %30 = icmp eq i64 %29, 0, !dbg !2201
  br i1 %30, label %90, label %31, !dbg !2203

; <label>:31:                                     ; preds = %28
  %32 = icmp slt i64 %1, 0, !dbg !2204
  br i1 %32, label %33, label %37, !dbg !2206

; <label>:33:                                     ; preds = %31
  %34 = add i64 %29, %1, !dbg !2207
  %35 = icmp sgt i64 %34, 0, !dbg !2209
  %36 = select i1 %35, i64 %34, i64 0, !dbg !2209
  br label %37, !dbg !2210

; <label>:37:                                     ; preds = %33, %31
  %38 = phi i64 [ %36, %33 ], [ %1, %31 ]
  %39 = icmp slt i64 %2, 0, !dbg !2211
  br i1 %39, label %40, label %44, !dbg !2213

; <label>:40:                                     ; preds = %37
  %41 = add i64 %29, %2, !dbg !2214
  %42 = icmp sgt i64 %41, 0, !dbg !2216
  %43 = select i1 %42, i64 %41, i64 0, !dbg !2216
  br label %44, !dbg !2217

; <label>:44:                                     ; preds = %40, %37
  %45 = phi i64 [ %43, %40 ], [ %2, %37 ]
  %46 = icmp slt i64 %45, %38, !dbg !2218
  %47 = sub i64 1, %38, !dbg !2219
  %48 = add i64 %47, %45, !dbg !2220
  %49 = select i1 %46, i64 0, i64 %48, !dbg !2221
  %50 = icmp ne i64 %49, 0, !dbg !2223
  %51 = icmp sgt i64 %29, %38, !dbg !2225
  %52 = and i1 %51, %50, !dbg !2228
  br i1 %52, label %53, label %68, !dbg !2228

; <label>:53:                                     ; preds = %44
  %54 = icmp slt i64 %45, %29, !dbg !2229
  br i1 %54, label %60, label %55, !dbg !2231

; <label>:55:                                     ; preds = %53
  %56 = add i64 %29, -1, !dbg !2232
  %57 = icmp slt i64 %56, %38, !dbg !2234
  %58 = sub i64 %29, %38, !dbg !2235
  %59 = select i1 %57, i64 0, i64 %58, !dbg !2236
  br label %60, !dbg !2236

; <label>:60:                                     ; preds = %55, %53
  %61 = phi i64 [ %49, %53 ], [ %59, %55 ], !dbg !2237
  %62 = icmp ne i64 %38, 0, !dbg !2238
  %63 = icmp ne i64 %61, 0, !dbg !2240
  %64 = and i1 %62, %63, !dbg !2241
  br i1 %64, label %65, label %68, !dbg !2241

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %38, !dbg !2242
  %67 = tail call i8* @memmove(i8* nonnull %0, i8* %66, i64 %61) #9, !dbg !2243
  br label %68, !dbg !2243

; <label>:68:                                     ; preds = %44, %65, %60
  %69 = phi i64 [ %61, %65 ], [ %61, %60 ], [ 0, %44 ]
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !2244
  store i8 0, i8* %70, align 1, !dbg !2245, !tbaa !290
  %71 = load i8, i8* %4, align 1, !dbg !2249, !tbaa !290
  %72 = trunc i8 %71 to i3, !dbg !2251
  switch i3 %72, label %90 [
    i3 0, label %73
    i3 1, label %76
    i3 2, label %79
    i3 3, label %83
    i3 -4, label %87
  ], !dbg !2251

; <label>:73:                                     ; preds = %68
  %74 = trunc i64 %69 to i8, !dbg !2253
  %75 = shl i8 %74, 3, !dbg !2253
  store i8 %75, i8* %4, align 1, !dbg !2254, !tbaa !290
  br label %90, !dbg !2255

; <label>:76:                                     ; preds = %68
  %77 = trunc i64 %69 to i8, !dbg !2256
  %78 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2257
  store i8 %77, i8* %78, align 1, !dbg !2258, !tbaa !290
  br label %90, !dbg !2259

; <label>:79:                                     ; preds = %68
  %80 = trunc i64 %69 to i16, !dbg !2260
  %81 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2261
  %82 = bitcast i8* %81 to i16*, !dbg !2262
  store i16 %80, i16* %82, align 1, !dbg !2263, !tbaa !297
  br label %90, !dbg !2264

; <label>:83:                                     ; preds = %68
  %84 = trunc i64 %69 to i32, !dbg !2265
  %85 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2266
  %86 = bitcast i8* %85 to i32*, !dbg !2267
  store i32 %84, i32* %86, align 1, !dbg !2268, !tbaa !253
  br label %90, !dbg !2269

; <label>:87:                                     ; preds = %68
  %88 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2270
  %89 = bitcast i8* %88 to i64*, !dbg !2271
  store i64 %69, i64* %89, align 1, !dbg !2272, !tbaa !310
  br label %90, !dbg !2273

; <label>:90:                                     ; preds = %3, %87, %83, %79, %76, %73, %68, %28
  ret void, !dbg !2274
}

; Function Attrs: noredzone nounwind
define dso_local void @sdstolower(i8* nocapture) local_unnamed_addr #0 !dbg !2275 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2287
  %3 = load i8, i8* %2, align 1, !dbg !2287, !tbaa !290
  %4 = trunc i8 %3 to i3, !dbg !2289
  switch i3 %4, label %44 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !2289

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !2290
  %7 = zext i8 %6 to i64, !dbg !2290
  br label %26, !dbg !2291

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2292
  %10 = load i8, i8* %9, align 1, !dbg !2293, !tbaa !290
  %11 = zext i8 %10 to i64, !dbg !2292
  br label %26, !dbg !2294

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2295
  %14 = bitcast i8* %13 to i16*, !dbg !2296
  %15 = load i16, i16* %14, align 1, !dbg !2296, !tbaa !297
  %16 = zext i16 %15 to i64, !dbg !2295
  br label %26, !dbg !2297

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2298
  %19 = bitcast i8* %18 to i32*, !dbg !2299
  %20 = load i32, i32* %19, align 1, !dbg !2299, !tbaa !253
  %21 = zext i32 %20 to i64, !dbg !2298
  br label %26, !dbg !2300

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2301
  %24 = bitcast i8* %23 to i64*, !dbg !2302
  %25 = load i64, i64* %24, align 1, !dbg !2302, !tbaa !310
  br label %26, !dbg !2303

; <label>:26:                                     ; preds = %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !2304
  %28 = icmp eq i64 %27, 0, !dbg !2307
  br i1 %28, label %44, label %29, !dbg !2308

; <label>:29:                                     ; preds = %26, %29
  %30 = phi i64 [ %42, %29 ], [ 0, %26 ]
  %31 = getelementptr inbounds i8, i8* %0, i64 %30, !dbg !2309
  %32 = load i8, i8* %31, align 1, !dbg !2309, !tbaa !290
  %33 = tail call i8* @__locale_ctype_ptr() #9, !dbg !2309
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2309
  %35 = sext i8 %32 to i64, !dbg !2309
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !2309
  %37 = load i8, i8* %36, align 1, !dbg !2309, !tbaa !290
  %38 = and i8 %37, 3, !dbg !2309
  %39 = icmp eq i8 %38, 1, !dbg !2309
  %40 = add i8 %32, 32, !dbg !2309
  %41 = select i1 %39, i8 %40, i8 %32, !dbg !2309
  store i8 %41, i8* %31, align 1, !dbg !2310, !tbaa !290
  %42 = add nuw i64 %30, 1, !dbg !2311
  %43 = icmp eq i64 %42, %27, !dbg !2307
  br i1 %43, label %44, label %29, !dbg !2308, !llvm.loop !2312

; <label>:44:                                     ; preds = %29, %1, %26
  ret void, !dbg !2314
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sdstoupper(i8* nocapture) local_unnamed_addr #0 !dbg !2315 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2327
  %3 = load i8, i8* %2, align 1, !dbg !2327, !tbaa !290
  %4 = trunc i8 %3 to i3, !dbg !2329
  switch i3 %4, label %44 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !2329

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !2330
  %7 = zext i8 %6 to i64, !dbg !2330
  br label %26, !dbg !2331

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2332
  %10 = load i8, i8* %9, align 1, !dbg !2333, !tbaa !290
  %11 = zext i8 %10 to i64, !dbg !2332
  br label %26, !dbg !2334

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2335
  %14 = bitcast i8* %13 to i16*, !dbg !2336
  %15 = load i16, i16* %14, align 1, !dbg !2336, !tbaa !297
  %16 = zext i16 %15 to i64, !dbg !2335
  br label %26, !dbg !2337

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2338
  %19 = bitcast i8* %18 to i32*, !dbg !2339
  %20 = load i32, i32* %19, align 1, !dbg !2339, !tbaa !253
  %21 = zext i32 %20 to i64, !dbg !2338
  br label %26, !dbg !2340

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2341
  %24 = bitcast i8* %23 to i64*, !dbg !2342
  %25 = load i64, i64* %24, align 1, !dbg !2342, !tbaa !310
  br label %26, !dbg !2343

; <label>:26:                                     ; preds = %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !2344
  %28 = icmp eq i64 %27, 0, !dbg !2347
  br i1 %28, label %44, label %29, !dbg !2348

; <label>:29:                                     ; preds = %26, %29
  %30 = phi i64 [ %42, %29 ], [ 0, %26 ]
  %31 = getelementptr inbounds i8, i8* %0, i64 %30, !dbg !2349
  %32 = load i8, i8* %31, align 1, !dbg !2349, !tbaa !290
  %33 = tail call i8* @__locale_ctype_ptr() #9, !dbg !2349
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2349
  %35 = sext i8 %32 to i64, !dbg !2349
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !2349
  %37 = load i8, i8* %36, align 1, !dbg !2349, !tbaa !290
  %38 = and i8 %37, 3, !dbg !2349
  %39 = icmp eq i8 %38, 2, !dbg !2349
  %40 = add i8 %32, -32, !dbg !2349
  %41 = select i1 %39, i8 %40, i8 %32, !dbg !2349
  store i8 %41, i8* %31, align 1, !dbg !2350, !tbaa !290
  %42 = add nuw i64 %30, 1, !dbg !2351
  %43 = icmp eq i64 %42, %27, !dbg !2347
  br i1 %43, label %44, label %29, !dbg !2348, !llvm.loop !2352

; <label>:44:                                     ; preds = %29, %1, %26
  ret void, !dbg !2354
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #0 !dbg !2355 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2369
  %4 = load i8, i8* %3, align 1, !dbg !2369, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !2371
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2371

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !2372
  %8 = zext i8 %7 to i64, !dbg !2372
  br label %27, !dbg !2373

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2374
  %11 = load i8, i8* %10, align 1, !dbg !2375, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !2374
  br label %27, !dbg !2376

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2377
  %15 = bitcast i8* %14 to i16*, !dbg !2378
  %16 = load i16, i16* %15, align 1, !dbg !2378, !tbaa !297
  %17 = zext i16 %16 to i64, !dbg !2377
  br label %27, !dbg !2379

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2380
  %20 = bitcast i8* %19 to i32*, !dbg !2381
  %21 = load i32, i32* %20, align 1, !dbg !2381, !tbaa !253
  %22 = zext i32 %21 to i64, !dbg !2380
  br label %27, !dbg !2382

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2383
  %25 = bitcast i8* %24 to i64*, !dbg !2384
  %26 = load i64, i64* %25, align 1, !dbg !2384, !tbaa !310
  br label %27, !dbg !2385

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !2386
  %29 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2390
  %30 = load i8, i8* %29, align 1, !dbg !2390, !tbaa !290
  %31 = trunc i8 %30 to i3, !dbg !2392
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !2392

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !2393
  %34 = zext i8 %33 to i64, !dbg !2393
  br label %53, !dbg !2394

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2395
  %37 = load i8, i8* %36, align 1, !dbg !2396, !tbaa !290
  %38 = zext i8 %37 to i64, !dbg !2395
  br label %53, !dbg !2397

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2398
  %41 = bitcast i8* %40 to i16*, !dbg !2399
  %42 = load i16, i16* %41, align 1, !dbg !2399, !tbaa !297
  %43 = zext i16 %42 to i64, !dbg !2398
  br label %53, !dbg !2400

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2401
  %46 = bitcast i8* %45 to i32*, !dbg !2402
  %47 = load i32, i32* %46, align 1, !dbg !2402, !tbaa !253
  %48 = zext i32 %47 to i64, !dbg !2401
  br label %53, !dbg !2403

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2404
  %51 = bitcast i8* %50 to i64*, !dbg !2405
  %52 = load i64, i64* %51, align 1, !dbg !2405, !tbaa !310
  br label %53, !dbg !2406

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !2407
  %55 = icmp ult i64 %28, %54, !dbg !2409
  %56 = select i1 %55, i64 %28, i64 %54, !dbg !2410
  %57 = tail call i32 @memcmp(i8* nonnull %0, i8* nonnull %1, i64 %56) #9, !dbg !2412
  %58 = icmp eq i32 %57, 0, !dbg !2414
  %59 = icmp ugt i64 %28, %54, !dbg !2416
  %60 = sext i1 %55 to i32, !dbg !2417
  %61 = select i1 %59, i32 1, i32 %60, !dbg !2418
  %62 = select i1 %58, i32 %61, i32 %57, !dbg !2419
  ret i32 %62, !dbg !2420
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitlen(i8*, i64, i8*, i32, i32* nocapture) local_unnamed_addr #0 !dbg !2421 {
  %6 = icmp slt i32 %3, 1, !dbg !2453
  %7 = icmp slt i64 %1, 0, !dbg !2455
  %8 = or i1 %7, %6, !dbg !2456
  br i1 %8, label %135, label %9, !dbg !2456

; <label>:9:                                      ; preds = %5
  %10 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2459, !tbaa !179
  %11 = icmp eq %struct.uk_alloc* %10, null, !dbg !2463
  br i1 %11, label %12, label %14, !dbg !2464, !prof !249

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #9, !dbg !2465
  store i32 12, i32* %13, align 4, !dbg !2466, !tbaa !253
  br label %135, !dbg !2468

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.uk_alloc* %10 to i8* (%struct.uk_alloc*, i64)**, !dbg !2472
  %16 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %15, align 8, !dbg !2472, !tbaa !179
  %17 = tail call i8* %16(%struct.uk_alloc* nonnull %10, i64 40) #9, !dbg !2473
  %18 = bitcast i8* %17 to i8**, !dbg !2474
  %19 = icmp eq i8* %17, null, !dbg !2475
  br i1 %19, label %135, label %20, !dbg !2468

; <label>:20:                                     ; preds = %14
  %21 = icmp eq i64 %1, 0, !dbg !2477
  br i1 %21, label %30, label %22, !dbg !2479

; <label>:22:                                     ; preds = %20
  %23 = add nsw i32 %3, -1, !dbg !2481
  %24 = sext i32 %23 to i64, !dbg !2482
  %25 = sub nsw i64 %1, %24, !dbg !2483
  %26 = icmp sgt i64 %25, 0, !dbg !2484
  br i1 %26, label %27, label %85, !dbg !2485

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i32 %3, 1
  %29 = sext i32 %3 to i64
  br label %31, !dbg !2485

; <label>:30:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !2486, !tbaa !253
  br label %135, !dbg !2488

; <label>:31:                                     ; preds = %27, %79
  %32 = phi i8** [ %18, %27 ], [ %59, %79 ]
  %33 = phi i8* [ %17, %27 ], [ %58, %79 ]
  %34 = phi i8* [ %17, %27 ], [ %57, %79 ]
  %35 = phi i64 [ 0, %27 ], [ %83, %79 ]
  %36 = phi i64 [ 0, %27 ], [ %81, %79 ]
  %37 = phi i32 [ 5, %27 ], [ %56, %79 ]
  %38 = phi i32 [ 0, %27 ], [ %80, %79 ]
  %39 = add nsw i32 %38, 2, !dbg !2489
  %40 = icmp slt i32 %37, %39, !dbg !2490
  br i1 %40, label %41, label %55, !dbg !2491

; <label>:41:                                     ; preds = %31
  %42 = shl nsw i32 %37, 1, !dbg !2492
  %43 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2495, !tbaa !179
  %44 = icmp eq %struct.uk_alloc* %43, null, !dbg !2499
  br i1 %44, label %45, label %47, !dbg !2500, !prof !249

; <label>:45:                                     ; preds = %41
  %46 = tail call i32* @__errno() #9, !dbg !2501
  store i32 12, i32* %46, align 4, !dbg !2502, !tbaa !253
  br label %98

; <label>:47:                                     ; preds = %41
  %48 = sext i32 %42 to i64, !dbg !2503
  %49 = shl nsw i64 %48, 3, !dbg !2504
  %50 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %43, i64 0, i32 2, !dbg !2511
  %51 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %50, align 8, !dbg !2511, !tbaa !179
  %52 = tail call i8* %51(%struct.uk_alloc* nonnull %43, i8* %33, i64 %49) #9, !dbg !2512
  %53 = icmp eq i8* %52, null, !dbg !2513
  %54 = bitcast i8* %52 to i8**, !dbg !2515
  br i1 %53, label %98, label %55

; <label>:55:                                     ; preds = %47, %31
  %56 = phi i32 [ %42, %47 ], [ %37, %31 ], !dbg !2516
  %57 = phi i8* [ %52, %47 ], [ %34, %31 ], !dbg !2517
  %58 = phi i8* [ %52, %47 ], [ %33, %31 ], !dbg !2517
  %59 = phi i8** [ %54, %47 ], [ %32, %31 ], !dbg !2517
  %60 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !2518
  br i1 %28, label %61, label %65, !dbg !2520

; <label>:61:                                     ; preds = %55
  %62 = load i8, i8* %60, align 1, !dbg !2521, !tbaa !290
  %63 = load i8, i8* %2, align 1, !dbg !2522, !tbaa !290
  %64 = icmp eq i8 %62, %63, !dbg !2523
  br i1 %64, label %68, label %65, !dbg !2524

; <label>:65:                                     ; preds = %55, %61
  %66 = tail call i32 @memcmp(i8* %60, i8* %2, i64 %29) #9, !dbg !2525
  %67 = icmp eq i32 %66, 0, !dbg !2526
  br i1 %67, label %68, label %79, !dbg !2527

; <label>:68:                                     ; preds = %65, %61
  %69 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !2528
  %70 = sub nsw i64 %35, %36, !dbg !2530
  %71 = tail call i8* @sdsnewlen(i8* %69, i64 %70) #10, !dbg !2531
  %72 = sext i32 %38 to i64, !dbg !2532
  %73 = getelementptr inbounds i8*, i8** %59, i64 %72, !dbg !2532
  store i8* %71, i8** %73, align 8, !dbg !2533, !tbaa !179
  %74 = icmp eq i8* %71, null, !dbg !2534
  br i1 %74, label %98, label %75, !dbg !2536

; <label>:75:                                     ; preds = %68
  %76 = add nsw i32 %38, 1, !dbg !2537
  %77 = add nsw i64 %35, %29, !dbg !2538
  %78 = add nsw i64 %77, -1, !dbg !2539
  br label %79, !dbg !2540

; <label>:79:                                     ; preds = %65, %75
  %80 = phi i32 [ %76, %75 ], [ %38, %65 ], !dbg !2516
  %81 = phi i64 [ %77, %75 ], [ %36, %65 ], !dbg !2516
  %82 = phi i64 [ %78, %75 ], [ %35, %65 ], !dbg !2541
  %83 = add nsw i64 %82, 1, !dbg !2542
  %84 = icmp slt i64 %83, %25, !dbg !2484
  br i1 %84, label %31, label %85, !dbg !2485, !llvm.loop !2543

; <label>:85:                                     ; preds = %79, %22
  %86 = phi i32 [ 0, %22 ], [ %80, %79 ], !dbg !2545
  %87 = phi i64 [ 0, %22 ], [ %81, %79 ], !dbg !2545
  %88 = phi i8* [ %17, %22 ], [ %57, %79 ], !dbg !2517
  %89 = phi i8** [ %18, %22 ], [ %59, %79 ], !dbg !2517
  %90 = getelementptr inbounds i8, i8* %0, i64 %87, !dbg !2546
  %91 = sub nsw i64 %1, %87, !dbg !2547
  %92 = tail call i8* @sdsnewlen(i8* %90, i64 %91) #10, !dbg !2548
  %93 = sext i32 %86 to i64, !dbg !2549
  %94 = getelementptr inbounds i8*, i8** %89, i64 %93, !dbg !2549
  store i8* %92, i8** %94, align 8, !dbg !2550, !tbaa !179
  %95 = icmp eq i8* %92, null, !dbg !2551
  br i1 %95, label %98, label %96, !dbg !2553

; <label>:96:                                     ; preds = %85
  %97 = add nsw i32 %86, 1, !dbg !2554
  store i32 %97, i32* %4, align 4, !dbg !2555, !tbaa !253
  br label %135, !dbg !2556

; <label>:98:                                     ; preds = %47, %68, %45, %85
  %99 = phi i32 [ %86, %85 ], [ %38, %45 ], [ %38, %68 ], [ %38, %47 ]
  %100 = phi i8* [ %88, %85 ], [ %34, %45 ], [ %34, %47 ], [ %57, %68 ], !dbg !2517
  %101 = phi i8** [ %89, %85 ], [ %32, %45 ], [ %32, %47 ], [ %59, %68 ], !dbg !2517
  %102 = icmp sgt i32 %99, 0, !dbg !2558
  br i1 %102, label %103, label %128, !dbg !2561

; <label>:103:                                    ; preds = %98
  %104 = sext i32 %99 to i64, !dbg !2562
  br label %105, !dbg !2562

; <label>:105:                                    ; preds = %103, %125
  %106 = phi i64 [ 0, %103 ], [ %126, %125 ]
  %107 = getelementptr inbounds i8*, i8** %101, i64 %106, !dbg !2562
  %108 = load i8*, i8** %107, align 8, !dbg !2562, !tbaa !179
  %109 = icmp eq i8* %108, null, !dbg !2565
  br i1 %109, label %125, label %110, !dbg !2566

; <label>:110:                                    ; preds = %105
  %111 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2567, !tbaa !179
  %112 = icmp eq %struct.uk_alloc* %111, null, !dbg !2573
  br i1 %112, label %113, label %114, !dbg !2574, !prof !249

; <label>:113:                                    ; preds = %110
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2575
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2575
  unreachable, !dbg !2575

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !2576
  %116 = load i8, i8* %115, align 1, !dbg !2576, !tbaa !290
  %117 = and i8 %116, 7, !dbg !2579
  %118 = xor i8 %117, 4, !dbg !2579
  %119 = zext i8 %118 to i64, !dbg !2579
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %119, !dbg !2579
  %121 = load i64, i64* %120, align 8, !dbg !2579
  %122 = getelementptr inbounds i8, i8* %108, i64 %121, !dbg !2580
  %123 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %111, i64 0, i32 5, !dbg !2584
  %124 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %123, align 8, !dbg !2584, !tbaa !179
  tail call void %124(%struct.uk_alloc* nonnull %111, i8* nonnull %122) #9, !dbg !2585
  br label %125, !dbg !2586

; <label>:125:                                    ; preds = %105, %114
  %126 = add nuw nsw i64 %106, 1, !dbg !2587
  %127 = icmp slt i64 %126, %104, !dbg !2558
  br i1 %127, label %105, label %128, !dbg !2561, !llvm.loop !2588

; <label>:128:                                    ; preds = %125, %98
  %129 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2592, !tbaa !179
  %130 = icmp eq %struct.uk_alloc* %129, null, !dbg !2599
  br i1 %130, label %131, label %132, !dbg !2600, !prof !249

; <label>:131:                                    ; preds = %128
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2601
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2601
  unreachable, !dbg !2601

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %129, i64 0, i32 5, !dbg !2602
  %134 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %133, align 8, !dbg !2602, !tbaa !179
  tail call void %134(%struct.uk_alloc* nonnull %129, i8* %100) #9, !dbg !2603
  store i32 0, i32* %4, align 4, !dbg !2604, !tbaa !253
  br label %135

; <label>:135:                                    ; preds = %12, %14, %5, %132, %96, %30
  %136 = phi i8** [ %18, %30 ], [ null, %132 ], [ %89, %96 ], [ null, %5 ], [ null, %14 ], [ null, %12 ]
  ret i8** %136, !dbg !2605
}

; Function Attrs: noredzone nounwind
define dso_local void @sdsfreesplitres(i8**, i32) local_unnamed_addr #0 !dbg !2606 {
  %3 = icmp eq i8** %0, null, !dbg !2614
  br i1 %3, label %39, label %4, !dbg !2616

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32 %1, 0, !dbg !2617
  br i1 %5, label %31, label %6, !dbg !2617

; <label>:6:                                      ; preds = %4
  %7 = sext i32 %1 to i64, !dbg !2618
  br label %8, !dbg !2618

; <label>:8:                                      ; preds = %6, %29
  %9 = phi i64 [ %7, %6 ], [ %10, %29 ]
  %10 = add nsw i64 %9, -1, !dbg !2618
  %11 = getelementptr inbounds i8*, i8** %0, i64 %10, !dbg !2619
  %12 = load i8*, i8** %11, align 8, !dbg !2619, !tbaa !179
  %13 = icmp eq i8* %12, null, !dbg !2622
  br i1 %13, label %29, label %14, !dbg !2623

; <label>:14:                                     ; preds = %8
  %15 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2624, !tbaa !179
  %16 = icmp eq %struct.uk_alloc* %15, null, !dbg !2630
  br i1 %16, label %17, label %18, !dbg !2631, !prof !249

; <label>:17:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2632
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2632
  unreachable, !dbg !2632

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !2633
  %20 = load i8, i8* %19, align 1, !dbg !2633, !tbaa !290
  %21 = and i8 %20, 7, !dbg !2636
  %22 = xor i8 %21, 4, !dbg !2636
  %23 = zext i8 %22 to i64, !dbg !2636
  %24 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %23, !dbg !2636
  %25 = load i64, i64* %24, align 8, !dbg !2636
  %26 = getelementptr inbounds i8, i8* %12, i64 %25, !dbg !2637
  %27 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %15, i64 0, i32 5, !dbg !2641
  %28 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %27, align 8, !dbg !2641, !tbaa !179
  tail call void %28(%struct.uk_alloc* nonnull %15, i8* nonnull %26) #9, !dbg !2642
  br label %29, !dbg !2643

; <label>:29:                                     ; preds = %8, %18
  %30 = icmp eq i64 %10, 0
  br i1 %30, label %31, label %8, !dbg !2617, !llvm.loop !2644

; <label>:31:                                     ; preds = %29, %4
  %32 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2646, !tbaa !179
  %33 = icmp eq %struct.uk_alloc* %32, null, !dbg !2652
  br i1 %33, label %34, label %35, !dbg !2653, !prof !249

; <label>:34:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2654
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2654
  unreachable, !dbg !2654

; <label>:35:                                     ; preds = %31
  %36 = bitcast i8** %0 to i8*, !dbg !2655
  %37 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %32, i64 0, i32 5, !dbg !2659
  %38 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %37, align 8, !dbg !2659, !tbaa !179
  tail call void %38(%struct.uk_alloc* nonnull %32, i8* %36) #9, !dbg !2660
  br label %39, !dbg !2661

; <label>:39:                                     ; preds = %2, %35
  ret void, !dbg !2661
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdscatrepr(i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2662 {
  %4 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #10, !dbg !2670
  %5 = icmp eq i64 %2, 0, !dbg !2671
  br i1 %5, label %44, label %6, !dbg !2671

; <label>:6:                                      ; preds = %3, %40
  %7 = phi i64 [ %10, %40 ], [ %2, %3 ]
  %8 = phi i8* [ %42, %40 ], [ %1, %3 ]
  %9 = phi i8* [ %41, %40 ], [ %4, %3 ]
  %10 = add i64 %7, -1, !dbg !2672
  %11 = load i8, i8* %8, align 1, !dbg !2673, !tbaa !290
  %12 = sext i8 %11 to i32, !dbg !2673
  switch i32 %12, label %25 [
    i32 92, label %13
    i32 34, label %13
    i32 10, label %15
    i32 13, label %17
    i32 9, label %19
    i32 7, label %21
    i32 8, label %23
  ], !dbg !2675

; <label>:13:                                     ; preds = %6, %6
  %14 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %12) #10, !dbg !2676
  br label %40, !dbg !2678

; <label>:15:                                     ; preds = %6
  %16 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #10, !dbg !2679
  br label %40, !dbg !2680

; <label>:17:                                     ; preds = %6
  %18 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #10, !dbg !2681
  br label %40, !dbg !2682

; <label>:19:                                     ; preds = %6
  %20 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2) #10, !dbg !2683
  br label %40, !dbg !2684

; <label>:21:                                     ; preds = %6
  %22 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2) #10, !dbg !2685
  br label %40, !dbg !2686

; <label>:23:                                     ; preds = %6
  %24 = tail call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 2) #10, !dbg !2687
  br label %40, !dbg !2688

; <label>:25:                                     ; preds = %6
  %26 = tail call i8* @__locale_ctype_ptr() #9, !dbg !2689
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2689
  %28 = load i8, i8* %8, align 1, !dbg !2689, !tbaa !290
  %29 = sext i8 %28 to i64, !dbg !2689
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !2689
  %31 = load i8, i8* %30, align 1, !dbg !2689, !tbaa !290
  %32 = and i8 %31, -105, !dbg !2689
  %33 = icmp eq i8 %32, 0, !dbg !2689
  br i1 %33, label %37, label %34, !dbg !2691

; <label>:34:                                     ; preds = %25
  %35 = sext i8 %28 to i32, !dbg !2689
  %36 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %35) #10, !dbg !2692
  br label %40, !dbg !2693

; <label>:37:                                     ; preds = %25
  %38 = zext i8 %28 to i32, !dbg !2694
  %39 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %38) #10, !dbg !2695
  br label %40

; <label>:40:                                     ; preds = %34, %37, %23, %21, %19, %17, %15, %13
  %41 = phi i8* [ %36, %34 ], [ %39, %37 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], !dbg !2696
  %42 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !2697
  %43 = icmp eq i64 %10, 0, !dbg !2671
  br i1 %43, label %44, label %6, !dbg !2671, !llvm.loop !2698

; <label>:44:                                     ; preds = %40, %3
  %45 = phi i8* [ %4, %3 ], [ %41, %40 ], !dbg !2700
  %46 = tail call i8* @sdscatlen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #10, !dbg !2701
  ret i8* %46, !dbg !2702
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @is_hex_digit(i8 signext) local_unnamed_addr #7 !dbg !2703 {
  %2 = add i8 %0, -48, !dbg !2707
  %3 = icmp ult i8 %2, 10, !dbg !2707
  %4 = and i8 %0, -33, !dbg !2707
  %5 = add i8 %4, -65, !dbg !2707
  %6 = icmp ult i8 %5, 6, !dbg !2707
  %7 = or i1 %6, %3, !dbg !2707
  %8 = zext i1 %7 to i32, !dbg !2707
  ret i32 %8, !dbg !2708
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @hex_digit_to_int(i8 signext) local_unnamed_addr #7 !dbg !2709 {
  %2 = sext i8 %0 to i32, !dbg !2713
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
  ], !dbg !2714

; <label>:3:                                      ; preds = %1
  br label %18, !dbg !2715

; <label>:4:                                      ; preds = %1
  br label %18, !dbg !2717

; <label>:5:                                      ; preds = %1
  br label %18, !dbg !2718

; <label>:6:                                      ; preds = %1
  br label %18, !dbg !2719

; <label>:7:                                      ; preds = %1
  br label %18, !dbg !2720

; <label>:8:                                      ; preds = %1
  br label %18, !dbg !2721

; <label>:9:                                      ; preds = %1
  br label %18, !dbg !2722

; <label>:10:                                     ; preds = %1
  br label %18, !dbg !2723

; <label>:11:                                     ; preds = %1
  br label %18, !dbg !2724

; <label>:12:                                     ; preds = %1, %1
  br label %18, !dbg !2725

; <label>:13:                                     ; preds = %1, %1
  br label %18, !dbg !2726

; <label>:14:                                     ; preds = %1, %1
  br label %18, !dbg !2727

; <label>:15:                                     ; preds = %1, %1
  br label %18, !dbg !2728

; <label>:16:                                     ; preds = %1, %1
  br label %18, !dbg !2729

; <label>:17:                                     ; preds = %1, %1
  br label %18, !dbg !2730

; <label>:18:                                     ; preds = %1, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %19 = phi i32 [ 15, %17 ], [ 14, %16 ], [ 13, %15 ], [ 12, %14 ], [ 11, %13 ], [ 10, %12 ], [ 9, %11 ], [ 8, %10 ], [ 7, %9 ], [ 6, %8 ], [ 5, %7 ], [ 4, %6 ], [ 3, %5 ], [ 2, %4 ], [ 1, %3 ], [ 0, %1 ], !dbg !2731
  ret i32 %19, !dbg !2732
}

; Function Attrs: noredzone nounwind
define dso_local i8** @sdssplitargs(i8*, i32* nocapture) local_unnamed_addr #0 !dbg !2733 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4, !dbg !2763, !tbaa !253
  %5 = load i8, i8* %0, align 1, !dbg !2764, !tbaa !290
  %6 = icmp eq i8 %5, 0, !dbg !2764
  br i1 %6, label %175, label %7, !dbg !2765

; <label>:7:                                      ; preds = %2, %160
  %8 = phi i8** [ %162, %160 ], [ null, %2 ]
  %9 = phi i8* [ %161, %160 ], [ null, %2 ]
  %10 = phi i8* [ %147, %160 ], [ %0, %2 ]
  br label %11, !dbg !2766

; <label>:11:                                     ; preds = %7, %21
  %12 = phi i8* [ %22, %21 ], [ %10, %7 ]
  %13 = call i8* @__locale_ctype_ptr() #9, !dbg !2766
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2766
  %15 = load i8, i8* %12, align 1, !dbg !2766, !tbaa !290
  %16 = sext i8 %15 to i64, !dbg !2766
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !2766
  %18 = load i8, i8* %17, align 1, !dbg !2766, !tbaa !290
  %19 = and i8 %18, 8, !dbg !2766
  %20 = icmp eq i8 %19, 0, !dbg !2765
  br i1 %20, label %25, label %21, !dbg !2767

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2768
  %23 = load i8, i8* %22, align 1, !dbg !2764, !tbaa !290
  %24 = icmp eq i8 %23, 0, !dbg !2764
  br i1 %24, label %175, label %11, !dbg !2765, !llvm.loop !2769

; <label>:25:                                     ; preds = %11
  %26 = icmp eq i8 %15, 0, !dbg !2770
  br i1 %26, label %175, label %27, !dbg !2771

; <label>:27:                                     ; preds = %25
  %28 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2782, !tbaa !179
  %29 = icmp eq %struct.uk_alloc* %28, null, !dbg !2786
  br i1 %29, label %30, label %32, !dbg !2787, !prof !249

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #9, !dbg !2788
  store i32 12, i32* %31, align 4, !dbg !2789, !tbaa !253
  br label %41, !dbg !2791

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.uk_alloc* %28 to i8* (%struct.uk_alloc*, i64)**, !dbg !2795
  %34 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %33, align 8, !dbg !2795, !tbaa !179
  %35 = call i8* %34(%struct.uk_alloc* nonnull %28, i64 4) #9, !dbg !2796
  %36 = icmp eq i8* %35, null, !dbg !2797
  br i1 %36, label %41, label %37, !dbg !2791

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2798
  %39 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2800
  store i8 0, i8* %35, align 1, !dbg !2803, !tbaa !290
  %40 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2804
  store i8 0, i8* %40, align 1, !dbg !2805, !tbaa !290
  store i8 1, i8* %39, align 1, !dbg !2806, !tbaa !290
  store i8 0, i8* %38, align 1, !dbg !2807, !tbaa !290
  br label %41, !dbg !2808

; <label>:41:                                     ; preds = %37, %32, %30
  %42 = phi i8* [ null, %30 ], [ null, %32 ], [ %38, %37 ]
  br label %43, !dbg !2809

; <label>:43:                                     ; preds = %41, %134
  %44 = phi i32 [ %138, %134 ], [ 0, %41 ]
  %45 = phi i32 [ %137, %134 ], [ 0, %41 ]
  %46 = phi i8* [ %136, %134 ], [ %42, %41 ]
  %47 = phi i8* [ %142, %134 ], [ %12, %41 ]
  %48 = icmp eq i32 %45, 0, !dbg !2809
  br i1 %48, label %104, label %49, !dbg !2810

; <label>:49:                                     ; preds = %43
  %50 = load i8, i8* %47, align 1, !dbg !2811, !tbaa !290
  switch i8 %50, label %102 [
    i8 92, label %51
    i8 34, label %89
    i8 0, label %169
  ], !dbg !2812

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2813
  %53 = load i8, i8* %52, align 1, !dbg !2814, !tbaa !290
  switch i8 %53, label %79 [
    i8 120, label %54
    i8 0, label %102
  ], !dbg !2815

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !2816
  %56 = load i8, i8* %55, align 1, !dbg !2817, !tbaa !290
  %57 = add i8 %56, -48, !dbg !2820
  %58 = icmp ugt i8 %57, 9, !dbg !2820
  %59 = and i8 %56, -33, !dbg !2820
  %60 = add i8 %59, -65, !dbg !2820
  %61 = icmp ugt i8 %60, 5, !dbg !2820
  %62 = and i1 %58, %61, !dbg !2821
  br i1 %62, label %79, label %63, !dbg !2822

; <label>:63:                                     ; preds = %54
  %64 = getelementptr inbounds i8, i8* %47, i64 3, !dbg !2823
  %65 = load i8, i8* %64, align 1, !dbg !2824, !tbaa !290
  %66 = add i8 %65, -48, !dbg !2827
  %67 = icmp ugt i8 %66, 9, !dbg !2827
  %68 = and i8 %65, -33, !dbg !2827
  %69 = add i8 %68, -65, !dbg !2827
  %70 = icmp ugt i8 %69, 5, !dbg !2827
  %71 = and i1 %67, %70, !dbg !2828
  br i1 %71, label %79, label %72, !dbg !2829

; <label>:72:                                     ; preds = %63
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #6, !dbg !2831
  %73 = call i32 @hex_digit_to_int(i8 signext %56) #10, !dbg !2832
  %74 = shl i32 %73, 4, !dbg !2833
  %75 = call i32 @hex_digit_to_int(i8 signext %65) #10, !dbg !2834
  %76 = add nsw i32 %75, %74, !dbg !2835
  %77 = trunc i32 %76 to i8, !dbg !2836
  store i8 %77, i8* %3, align 1, !dbg !2837, !tbaa !290
  %78 = call i8* @sdscatlen(i8* %46, i8* nonnull %3, i64 1) #10, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #6, !dbg !2839
  br label %134, !dbg !2840

; <label>:79:                                     ; preds = %51, %54, %63
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #6, !dbg !2842
  %80 = sext i8 %53 to i32, !dbg !2843
  switch i32 %80, label %86 [
    i32 110, label %81
    i32 114, label %82
    i32 116, label %83
    i32 98, label %84
    i32 97, label %85
  ], !dbg !2844

; <label>:81:                                     ; preds = %79
  store i8 10, i8* %4, align 1, !dbg !2845, !tbaa !290
  br label %87, !dbg !2847

; <label>:82:                                     ; preds = %79
  store i8 13, i8* %4, align 1, !dbg !2848, !tbaa !290
  br label %87, !dbg !2849

; <label>:83:                                     ; preds = %79
  store i8 9, i8* %4, align 1, !dbg !2850, !tbaa !290
  br label %87, !dbg !2851

; <label>:84:                                     ; preds = %79
  store i8 8, i8* %4, align 1, !dbg !2852, !tbaa !290
  br label %87, !dbg !2853

; <label>:85:                                     ; preds = %79
  store i8 7, i8* %4, align 1, !dbg !2854, !tbaa !290
  br label %87, !dbg !2855

; <label>:86:                                     ; preds = %79
  store i8 %53, i8* %4, align 1, !dbg !2856, !tbaa !290
  br label %87, !dbg !2857

; <label>:87:                                     ; preds = %86, %85, %84, %83, %82, %81
  %88 = call i8* @sdscatlen(i8* %46, i8* nonnull %4, i64 1) #10, !dbg !2858
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #6, !dbg !2859
  br label %134, !dbg !2860

; <label>:89:                                     ; preds = %49
  %90 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2861
  %91 = load i8, i8* %90, align 1, !dbg !2865, !tbaa !290
  %92 = icmp eq i8 %91, 0, !dbg !2865
  br i1 %92, label %143, label %93, !dbg !2866

; <label>:93:                                     ; preds = %89
  %94 = call i8* @__locale_ctype_ptr() #9, !dbg !2867
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !2867
  %96 = load i8, i8* %90, align 1, !dbg !2867, !tbaa !290
  %97 = sext i8 %96 to i64, !dbg !2867
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !2867
  %99 = load i8, i8* %98, align 1, !dbg !2867, !tbaa !290
  %100 = and i8 %99, 8, !dbg !2867
  %101 = icmp eq i8 %100, 0, !dbg !2867
  br i1 %101, label %169, label %143, !dbg !2868

; <label>:102:                                    ; preds = %51, %49
  %103 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #10, !dbg !2869
  br label %134

; <label>:104:                                    ; preds = %43
  %105 = icmp eq i32 %44, 0, !dbg !2872
  %106 = load i8, i8* %47, align 1, !dbg !2874, !tbaa !290
  br i1 %105, label %129, label %107, !dbg !2876

; <label>:107:                                    ; preds = %104
  switch i8 %106, label %127 [
    i8 92, label %108
    i8 39, label %114
    i8 0, label %169
  ], !dbg !2877

; <label>:108:                                    ; preds = %107
  %109 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2880
  %110 = load i8, i8* %109, align 1, !dbg !2881, !tbaa !290
  %111 = icmp eq i8 %110, 39, !dbg !2882
  br i1 %111, label %112, label %127, !dbg !2883

; <label>:112:                                    ; preds = %108
  %113 = call i8* @sdscatlen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1) #10, !dbg !2884
  br label %134, !dbg !2886

; <label>:114:                                    ; preds = %107
  %115 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2887
  %116 = load i8, i8* %115, align 1, !dbg !2891, !tbaa !290
  %117 = icmp eq i8 %116, 0, !dbg !2891
  br i1 %117, label %143, label %118, !dbg !2892

; <label>:118:                                    ; preds = %114
  %119 = call i8* @__locale_ctype_ptr() #9, !dbg !2893
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !2893
  %121 = load i8, i8* %115, align 1, !dbg !2893, !tbaa !290
  %122 = sext i8 %121 to i64, !dbg !2893
  %123 = getelementptr inbounds i8, i8* %120, i64 %122, !dbg !2893
  %124 = load i8, i8* %123, align 1, !dbg !2893, !tbaa !290
  %125 = and i8 %124, 8, !dbg !2893
  %126 = icmp eq i8 %125, 0, !dbg !2893
  br i1 %126, label %169, label %143, !dbg !2894

; <label>:127:                                    ; preds = %107, %108
  %128 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #10, !dbg !2895
  br label %134

; <label>:129:                                    ; preds = %104
  %130 = sext i8 %106 to i32, !dbg !2874
  switch i32 %130, label %132 [
    i32 32, label %143
    i32 10, label %143
    i32 13, label %143
    i32 9, label %143
    i32 0, label %143
    i32 34, label %134
    i32 39, label %131
  ], !dbg !2898

; <label>:131:                                    ; preds = %129
  br label %134, !dbg !2899

; <label>:132:                                    ; preds = %129
  %133 = call i8* @sdscatlen(i8* %46, i8* nonnull %47, i64 1) #10, !dbg !2901
  br label %134, !dbg !2902

; <label>:134:                                    ; preds = %129, %127, %112, %132, %131, %72, %102, %87
  %135 = phi i8* [ %64, %72 ], [ %52, %87 ], [ %47, %102 ], [ %109, %112 ], [ %47, %127 ], [ %47, %132 ], [ %47, %131 ], [ %47, %129 ], !dbg !2903
  %136 = phi i8* [ %78, %72 ], [ %88, %87 ], [ %103, %102 ], [ %113, %112 ], [ %128, %127 ], [ %133, %132 ], [ %46, %131 ], [ %46, %129 ], !dbg !2904
  %137 = phi i32 [ %45, %72 ], [ %45, %87 ], [ %45, %102 ], [ 0, %112 ], [ 0, %127 ], [ 0, %132 ], [ 0, %131 ], [ 1, %129 ], !dbg !2763
  %138 = phi i32 [ %44, %72 ], [ %44, %87 ], [ %44, %102 ], [ %44, %112 ], [ %44, %127 ], [ 0, %132 ], [ 1, %131 ], [ 0, %129 ], !dbg !2763
  %139 = load i8, i8* %135, align 1, !dbg !2905, !tbaa !290
  %140 = icmp eq i8 %139, 0, !dbg !2905
  %141 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !2907
  %142 = select i1 %140, i8* %135, i8* %141, !dbg !2908
  br label %43, !dbg !2909

; <label>:143:                                    ; preds = %129, %129, %129, %129, %129, %93, %89, %118, %114
  %144 = load i8, i8* %47, align 1, !dbg !2905, !tbaa !290
  %145 = icmp eq i8 %144, 0, !dbg !2905
  %146 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2907
  %147 = select i1 %145, i8* %47, i8* %146, !dbg !2908
  %148 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2912, !tbaa !179
  %149 = icmp eq %struct.uk_alloc* %148, null, !dbg !2916
  br i1 %149, label %150, label %152, !dbg !2917, !prof !249

; <label>:150:                                    ; preds = %143
  %151 = call i32* @__errno() #9, !dbg !2918
  store i32 12, i32* %151, align 4, !dbg !2919, !tbaa !253
  br label %160, !dbg !2920

; <label>:152:                                    ; preds = %143
  %153 = load i32, i32* %1, align 4, !dbg !2921, !tbaa !253
  %154 = add nsw i32 %153, 1, !dbg !2922
  %155 = sext i32 %154 to i64, !dbg !2923
  %156 = shl nsw i64 %155, 3, !dbg !2924
  %157 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %148, i64 0, i32 2, !dbg !2931
  %158 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %157, align 8, !dbg !2931, !tbaa !179
  %159 = call i8* %158(%struct.uk_alloc* nonnull %148, i8* %9, i64 %156) #9, !dbg !2932
  br label %160, !dbg !2933

; <label>:160:                                    ; preds = %152, %150
  %161 = phi i8* [ null, %150 ], [ %159, %152 ], !dbg !2934
  %162 = bitcast i8* %161 to i8**, !dbg !2935
  %163 = load i32, i32* %1, align 4, !dbg !2936, !tbaa !253
  %164 = sext i32 %163 to i64, !dbg !2937
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164, !dbg !2937
  store i8* %46, i8** %165, align 8, !dbg !2938, !tbaa !179
  %166 = add nsw i32 %163, 1, !dbg !2939
  store i32 %166, i32* %1, align 4, !dbg !2763, !tbaa !253
  %167 = load i8, i8* %147, align 1, !dbg !2764, !tbaa !290
  %168 = icmp eq i8 %167, 0, !dbg !2764
  br i1 %168, label %173, label %7, !dbg !2765

; <label>:169:                                    ; preds = %93, %118, %49, %107
  %170 = load i32, i32* %1, align 4, !dbg !2940, !tbaa !253
  %171 = add nsw i32 %170, -1, !dbg !2940
  store i32 %171, i32* %1, align 4, !dbg !2940, !tbaa !253
  %172 = icmp eq i32 %170, 0, !dbg !2941
  br i1 %172, label %214, label %188, !dbg !2941

; <label>:173:                                    ; preds = %160
  %174 = bitcast i8* %161 to i8**, !dbg !2935
  br label %175, !dbg !2942

; <label>:175:                                    ; preds = %173, %25, %21, %2
  %176 = phi i8** [ null, %2 ], [ %8, %21 ], [ %174, %173 ], [ %8, %25 ]
  %177 = icmp eq i8** %176, null, !dbg !2942
  br i1 %177, label %178, label %238, !dbg !2945

; <label>:178:                                    ; preds = %175
  %179 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2948, !tbaa !179
  %180 = icmp eq %struct.uk_alloc* %179, null, !dbg !2952
  br i1 %180, label %181, label %183, !dbg !2953, !prof !249

; <label>:181:                                    ; preds = %178
  %182 = call i32* @__errno() #9, !dbg !2954
  store i32 12, i32* %182, align 4, !dbg !2955, !tbaa !253
  br label %238, !dbg !2956

; <label>:183:                                    ; preds = %178
  %184 = bitcast %struct.uk_alloc* %179 to i8* (%struct.uk_alloc*, i64)**, !dbg !2960
  %185 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %184, align 8, !dbg !2960, !tbaa !179
  %186 = call i8* %185(%struct.uk_alloc* nonnull %179, i64 8) #9, !dbg !2961
  %187 = bitcast i8* %186 to i8**, !dbg !2962
  br label %238, !dbg !2962

; <label>:188:                                    ; preds = %169, %210
  %189 = phi i32 [ %212, %210 ], [ %171, %169 ]
  %190 = sext i32 %189 to i64, !dbg !2963
  %191 = getelementptr inbounds i8*, i8** %8, i64 %190, !dbg !2963
  %192 = load i8*, i8** %191, align 8, !dbg !2963, !tbaa !179
  %193 = icmp eq i8* %192, null, !dbg !2966
  br i1 %193, label %210, label %194, !dbg !2967

; <label>:194:                                    ; preds = %188
  %195 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2968, !tbaa !179
  %196 = icmp eq %struct.uk_alloc* %195, null, !dbg !2974
  br i1 %196, label %197, label %198, !dbg !2975, !prof !249

; <label>:197:                                    ; preds = %194
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2976
  call void @ukplat_terminate(i32 3) #11, !dbg !2976
  unreachable, !dbg !2976

; <label>:198:                                    ; preds = %194
  %199 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !2977
  %200 = load i8, i8* %199, align 1, !dbg !2977, !tbaa !290
  %201 = and i8 %200, 7, !dbg !2980
  %202 = xor i8 %201, 4, !dbg !2980
  %203 = zext i8 %202 to i64, !dbg !2980
  %204 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %203, !dbg !2980
  %205 = load i64, i64* %204, align 8, !dbg !2980
  %206 = getelementptr inbounds i8, i8* %192, i64 %205, !dbg !2981
  %207 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %195, i64 0, i32 5, !dbg !2985
  %208 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %207, align 8, !dbg !2985, !tbaa !179
  call void %208(%struct.uk_alloc* nonnull %195, i8* nonnull %206) #9, !dbg !2986
  %209 = load i32, i32* %1, align 4, !dbg !2940, !tbaa !253
  br label %210, !dbg !2987

; <label>:210:                                    ; preds = %188, %198
  %211 = phi i32 [ %189, %188 ], [ %209, %198 ], !dbg !2940
  %212 = add nsw i32 %211, -1, !dbg !2940
  store i32 %212, i32* %1, align 4, !dbg !2940, !tbaa !253
  %213 = icmp eq i32 %211, 0, !dbg !2941
  br i1 %213, label %214, label %188, !dbg !2941, !llvm.loop !2988

; <label>:214:                                    ; preds = %210, %169
  %215 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2992, !tbaa !179
  %216 = icmp eq %struct.uk_alloc* %215, null, !dbg !2999
  br i1 %216, label %217, label %218, !dbg !3000, !prof !249

; <label>:217:                                    ; preds = %214
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !3001
  call void @ukplat_terminate(i32 3) #11, !dbg !3001
  unreachable, !dbg !3001

; <label>:218:                                    ; preds = %214
  %219 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %215, i64 0, i32 5, !dbg !3002
  %220 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %219, align 8, !dbg !3002, !tbaa !179
  call void %220(%struct.uk_alloc* nonnull %215, i8* %9) #9, !dbg !3003
  %221 = icmp eq i8* %46, null, !dbg !3004
  br i1 %221, label %237, label %222, !dbg !3006

; <label>:222:                                    ; preds = %218
  %223 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3009, !tbaa !179
  %224 = icmp eq %struct.uk_alloc* %223, null, !dbg !3015
  br i1 %224, label %225, label %226, !dbg !3016, !prof !249

; <label>:225:                                    ; preds = %222
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !3017
  call void @ukplat_terminate(i32 3) #11, !dbg !3017
  unreachable, !dbg !3017

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds i8, i8* %46, i64 -1, !dbg !3018
  %228 = load i8, i8* %227, align 1, !dbg !3018, !tbaa !290
  %229 = and i8 %228, 7, !dbg !3021
  %230 = xor i8 %229, 4, !dbg !3021
  %231 = zext i8 %230 to i64, !dbg !3021
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* @switch.table.sdssplitargs.20, i64 0, i64 %231, !dbg !3021
  %233 = load i64, i64* %232, align 8, !dbg !3021
  %234 = getelementptr inbounds i8, i8* %46, i64 %233, !dbg !3022
  %235 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %223, i64 0, i32 5, !dbg !3026
  %236 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %235, align 8, !dbg !3026, !tbaa !179
  call void %236(%struct.uk_alloc* nonnull %223, i8* nonnull %234) #9, !dbg !3027
  br label %237, !dbg !3028

; <label>:237:                                    ; preds = %218, %226
  store i32 0, i32* %1, align 4, !dbg !3029, !tbaa !253
  br label %238, !dbg !3030

; <label>:238:                                    ; preds = %183, %181, %175, %237
  %239 = phi i8** [ null, %237 ], [ %176, %175 ], [ null, %181 ], [ %187, %183 ]
  ret i8** %239, !dbg !3031
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsmapchars(i8* returned, i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !3032 {
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3049
  %6 = load i8, i8* %5, align 1, !dbg !3049, !tbaa !290
  %7 = trunc i8 %6 to i3, !dbg !3051
  switch i3 %7, label %53 [
    i3 0, label %8
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
    i3 -4, label %25
  ], !dbg !3051

; <label>:8:                                      ; preds = %4
  %9 = lshr i8 %6, 3, !dbg !3052
  %10 = zext i8 %9 to i64, !dbg !3052
  br label %29, !dbg !3053

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3054
  %13 = load i8, i8* %12, align 1, !dbg !3055, !tbaa !290
  %14 = zext i8 %13 to i64, !dbg !3054
  br label %29, !dbg !3056

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3057
  %17 = bitcast i8* %16 to i16*, !dbg !3058
  %18 = load i16, i16* %17, align 1, !dbg !3058, !tbaa !297
  %19 = zext i16 %18 to i64, !dbg !3057
  br label %29, !dbg !3059

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3060
  %22 = bitcast i8* %21 to i32*, !dbg !3061
  %23 = load i32, i32* %22, align 1, !dbg !3061, !tbaa !253
  %24 = zext i32 %23 to i64, !dbg !3060
  br label %29, !dbg !3062

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3063
  %27 = bitcast i8* %26 to i64*, !dbg !3064
  %28 = load i64, i64* %27, align 1, !dbg !3064, !tbaa !310
  br label %29, !dbg !3065

; <label>:29:                                     ; preds = %8, %11, %15, %20, %25
  %30 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], [ %10, %8 ], !dbg !3066
  %31 = icmp eq i64 %30, 0, !dbg !3069
  br i1 %31, label %53, label %32, !dbg !3072

; <label>:32:                                     ; preds = %29
  %33 = icmp eq i64 %3, 0
  br label %34, !dbg !3072

; <label>:34:                                     ; preds = %50, %32
  %35 = phi i64 [ 0, %32 ], [ %51, %50 ]
  br i1 %33, label %50, label %36, !dbg !3074

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds i8, i8* %0, i64 %35
  %38 = load i8, i8* %37, align 1, !tbaa !290
  br label %39, !dbg !3074

; <label>:39:                                     ; preds = %36, %47
  %40 = phi i64 [ 0, %36 ], [ %48, %47 ]
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !3077
  %42 = load i8, i8* %41, align 1, !dbg !3077, !tbaa !290
  %43 = icmp eq i8 %38, %42, !dbg !3081
  br i1 %43, label %44, label %47, !dbg !3082

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds i8, i8* %2, i64 %40, !dbg !3083
  %46 = load i8, i8* %45, align 1, !dbg !3083, !tbaa !290
  store i8 %46, i8* %37, align 1, !dbg !3085, !tbaa !290
  br label %50, !dbg !3086

; <label>:47:                                     ; preds = %39
  %48 = add nuw i64 %40, 1, !dbg !3087
  %49 = icmp ult i64 %48, %3, !dbg !3088
  br i1 %49, label %39, label %50, !dbg !3074, !llvm.loop !3089

; <label>:50:                                     ; preds = %47, %34, %44
  %51 = add nuw i64 %35, 1, !dbg !3091
  %52 = icmp eq i64 %51, %30, !dbg !3069
  br i1 %52, label %53, label %34, !dbg !3072, !llvm.loop !3092

; <label>:53:                                     ; preds = %50, %4, %29
  ret i8* %0, !dbg !3094
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoin(i8** nocapture readonly, i32, i8*) local_unnamed_addr #0 !dbg !3095 {
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3113, !tbaa !179
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !3117
  br i1 %5, label %6, label %8, !dbg !3118, !prof !249

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #9, !dbg !3119
  store i32 12, i32* %7, align 4, !dbg !3120, !tbaa !253
  br label %17, !dbg !3122

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct.uk_alloc* %4 to i8* (%struct.uk_alloc*, i64)**, !dbg !3126
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !3126, !tbaa !179
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 4) #9, !dbg !3127
  %12 = icmp eq i8* %11, null, !dbg !3128
  br i1 %12, label %17, label %13, !dbg !3122

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !3129
  %15 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !3131
  store i8 0, i8* %11, align 1, !dbg !3134, !tbaa !290
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3135
  store i8 0, i8* %16, align 1, !dbg !3136, !tbaa !290
  store i8 1, i8* %15, align 1, !dbg !3137, !tbaa !290
  store i8 0, i8* %14, align 1, !dbg !3138, !tbaa !290
  br label %17, !dbg !3139

; <label>:17:                                     ; preds = %6, %8, %13
  %18 = phi i8* [ %14, %13 ], [ null, %8 ], [ null, %6 ], !dbg !3140
  %19 = icmp sgt i32 %1, 0, !dbg !3143
  br i1 %19, label %20, label %39, !dbg !3146

; <label>:20:                                     ; preds = %17
  %21 = add nsw i32 %1, -1
  %22 = zext i32 %21 to i64, !dbg !3146
  %23 = zext i32 %1 to i64
  br label %24, !dbg !3146

; <label>:24:                                     ; preds = %35, %20
  %25 = phi i64 [ 0, %20 ], [ %37, %35 ]
  %26 = phi i8* [ %18, %20 ], [ %36, %35 ]
  %27 = getelementptr inbounds i8*, i8** %0, i64 %25, !dbg !3147
  %28 = load i8*, i8** %27, align 8, !dbg !3147, !tbaa !179
  %29 = tail call i64 @strlen(i8* %28) #9, !dbg !3152
  %30 = tail call i8* @sdscatlen(i8* %26, i8* %28, i64 %29) #9, !dbg !3153
  %31 = icmp eq i64 %25, %22, !dbg !3154
  br i1 %31, label %35, label %32, !dbg !3156

; <label>:32:                                     ; preds = %24
  %33 = tail call i64 @strlen(i8* %2) #9, !dbg !3160
  %34 = tail call i8* @sdscatlen(i8* %30, i8* %2, i64 %33) #9, !dbg !3161
  br label %35, !dbg !3162

; <label>:35:                                     ; preds = %24, %32
  %36 = phi i8* [ %34, %32 ], [ %30, %24 ], !dbg !3163
  %37 = add nuw nsw i64 %25, 1, !dbg !3164
  %38 = icmp eq i64 %37, %23, !dbg !3143
  br i1 %38, label %39, label %24, !dbg !3146, !llvm.loop !3165

; <label>:39:                                     ; preds = %35, %17
  %40 = phi i8* [ %18, %17 ], [ %36, %35 ], !dbg !3167
  ret i8* %40, !dbg !3168
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sdsjoinsds(i8** nocapture readonly, i32, i8*, i64) local_unnamed_addr #0 !dbg !3169 {
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3189, !tbaa !179
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !3193
  br i1 %6, label %7, label %9, !dbg !3194, !prof !249

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #9, !dbg !3195
  store i32 12, i32* %8, align 4, !dbg !3196, !tbaa !253
  br label %18, !dbg !3198

; <label>:9:                                      ; preds = %4
  %10 = bitcast %struct.uk_alloc* %5 to i8* (%struct.uk_alloc*, i64)**, !dbg !3202
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !3202, !tbaa !179
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 4) #9, !dbg !3203
  %13 = icmp eq i8* %12, null, !dbg !3204
  br i1 %13, label %18, label %14, !dbg !3198

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !3205
  %16 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !3207
  store i8 0, i8* %12, align 1, !dbg !3210, !tbaa !290
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3211
  store i8 0, i8* %17, align 1, !dbg !3212, !tbaa !290
  store i8 1, i8* %16, align 1, !dbg !3213, !tbaa !290
  store i8 0, i8* %15, align 1, !dbg !3214, !tbaa !290
  br label %18, !dbg !3215

; <label>:18:                                     ; preds = %7, %9, %14
  %19 = phi i8* [ %15, %14 ], [ null, %9 ], [ null, %7 ], !dbg !3216
  %20 = icmp sgt i32 %1, 0, !dbg !3219
  br i1 %20, label %21, label %64, !dbg !3222

; <label>:21:                                     ; preds = %18
  %22 = add nsw i32 %1, -1
  %23 = zext i32 %22 to i64, !dbg !3222
  %24 = zext i32 %1 to i64
  br label %25, !dbg !3222

; <label>:25:                                     ; preds = %60, %21
  %26 = phi i64 [ 0, %21 ], [ %62, %60 ]
  %27 = phi i8* [ %19, %21 ], [ %61, %60 ]
  %28 = getelementptr inbounds i8*, i8** %0, i64 %26, !dbg !3223
  %29 = load i8*, i8** %28, align 8, !dbg !3223, !tbaa !179
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3230
  %31 = load i8, i8* %30, align 1, !dbg !3230, !tbaa !290
  %32 = trunc i8 %31 to i3, !dbg !3232
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !3232

; <label>:33:                                     ; preds = %25
  %34 = lshr i8 %31, 3, !dbg !3233
  %35 = zext i8 %34 to i64, !dbg !3233
  br label %54, !dbg !3234

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3235
  %38 = load i8, i8* %37, align 1, !dbg !3236, !tbaa !290
  %39 = zext i8 %38 to i64, !dbg !3235
  br label %54, !dbg !3237

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3238
  %42 = bitcast i8* %41 to i16*, !dbg !3239
  %43 = load i16, i16* %42, align 1, !dbg !3239, !tbaa !297
  %44 = zext i16 %43 to i64, !dbg !3238
  br label %54, !dbg !3240

; <label>:45:                                     ; preds = %25
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3241
  %47 = bitcast i8* %46 to i32*, !dbg !3242
  %48 = load i32, i32* %47, align 1, !dbg !3242, !tbaa !253
  %49 = zext i32 %48 to i64, !dbg !3241
  br label %54, !dbg !3243

; <label>:50:                                     ; preds = %25
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3244
  %52 = bitcast i8* %51 to i64*, !dbg !3245
  %53 = load i64, i64* %52, align 1, !dbg !3245, !tbaa !310
  br label %54, !dbg !3246

; <label>:54:                                     ; preds = %25, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %25 ], !dbg !3247
  %56 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %29, i64 %55) #9, !dbg !3248
  %57 = icmp eq i64 %26, %23, !dbg !3249
  br i1 %57, label %60, label %58, !dbg !3251

; <label>:58:                                     ; preds = %54
  %59 = tail call i8* @sdscatlen(i8* %56, i8* %2, i64 %3) #10, !dbg !3252
  br label %60, !dbg !3253

; <label>:60:                                     ; preds = %54, %58
  %61 = phi i8* [ %59, %58 ], [ %56, %54 ], !dbg !3254
  %62 = add nuw nsw i64 %26, 1, !dbg !3255
  %63 = icmp eq i64 %62, %24, !dbg !3219
  br i1 %63, label %64, label %25, !dbg !3222, !llvm.loop !3256

; <label>:64:                                     ; preds = %60, %18
  %65 = phi i8* [ %19, %18 ], [ %61, %60 ], !dbg !3258
  ret i8* %65, !dbg !3259
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_malloc(i64) local_unnamed_addr #0 !dbg !3260 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3266, !tbaa !179
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3270
  br i1 %3, label %4, label %6, !dbg !3271, !prof !249

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno() #9, !dbg !3272
  store i32 12, i32* %5, align 4, !dbg !3273, !tbaa !253
  br label %10, !dbg !3274

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.uk_alloc* %2 to i8* (%struct.uk_alloc*, i64)**, !dbg !3278
  %8 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %7, align 8, !dbg !3278, !tbaa !179
  %9 = tail call i8* %8(%struct.uk_alloc* nonnull %2, i64 %0) #9, !dbg !3279
  br label %10, !dbg !3280

; <label>:10:                                     ; preds = %4, %6
  %11 = phi i8* [ null, %4 ], [ %9, %6 ], !dbg !3281
  ret i8* %11, !dbg !3282
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sds_realloc(i8*, i64) local_unnamed_addr #0 !dbg !3283 {
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3292, !tbaa !179
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !3297
  br i1 %4, label %5, label %7, !dbg !3298, !prof !249

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #9, !dbg !3299
  store i32 12, i32* %6, align 4, !dbg !3300, !tbaa !253
  br label %11, !dbg !3301

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 2, !dbg !3306
  %9 = load i8* (%struct.uk_alloc*, i8*, i64)*, i8* (%struct.uk_alloc*, i8*, i64)** %8, align 8, !dbg !3306, !tbaa !179
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i8* %0, i64 %1) #9, !dbg !3307
  br label %11, !dbg !3308

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !3309
  ret i8* %12, !dbg !3310
}

; Function Attrs: noredzone nounwind
define dso_local void @sds_free(i8*) local_unnamed_addr #0 !dbg !3311 {
  %2 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3317, !tbaa !179
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !3324
  br i1 %3, label %4, label %5, !dbg !3325, !prof !249

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !3326
  tail call void @ukplat_terminate(i32 3) #11, !dbg !3326
  unreachable, !dbg !3326

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %2, i64 0, i32 5, !dbg !3327
  %7 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %6, align 8, !dbg !3327, !tbaa !179
  tail call void %7(%struct.uk_alloc* nonnull %2, i8* %0) #9, !dbg !3328
  ret void, !dbg !3329
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #8 !dbg !72 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !3330
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !3330
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !3332
  call void @llvm.va_start(i8* nonnull %3), !dbg !3332
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.19, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !3333
  call void @llvm.va_end(i8* nonnull %3), !dbg !3336
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !3337
  ret void, !dbg !3337
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

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
!155 = !DILocation(line: 92, column: 10, scope: !107)
!156 = !DILocation(line: 95, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !107, file: !3, line: 95, column: 9)
!158 = !DILocation(line: 95, column: 39, scope: !157)
!159 = !DILocation(line: 95, column: 28, scope: !157)
!160 = !DILocalVariable(name: "type", arg: 1, scope: !161, file: !3, line: 44, type: !16)
!161 = distinct !DISubprogram(name: "sdsHdrSize", scope: !3, file: !3, line: 44, type: !162, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!29, !16}
!164 = !{!160}
!165 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !166)
!166 = distinct !DILocation(line: 96, column: 18, scope: !107)
!167 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !166)
!168 = !DILocation(line: 99, column: 25, scope: !107)
!169 = !DILocation(line: 99, column: 33, scope: !107)
!170 = !DILocalVariable(name: "size", arg: 1, scope: !171, file: !172, line: 52, type: !113)
!171 = distinct !DISubprogram(name: "s_malloc", scope: !172, file: !172, line: 52, type: !173, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !175)
!172 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !DISubroutineType(types: !174)
!174 = !{!14, !113}
!175 = !{!170}
!176 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !177)
!177 = distinct !DILocation(line: 99, column: 10, scope: !107)
!178 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !177)
!179 = !{!180, !180, i64 0}
!180 = !{!"any pointer", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C/C++ TBAA"}
!183 = !DILocalVariable(name: "a", arg: 1, scope: !184, file: !185, line: 157, type: !188)
!184 = distinct !DISubprogram(name: "uk_malloc", scope: !185, file: !185, line: 157, type: !186, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!185 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!186 = !DISubroutineType(types: !187)
!187 = !{!14, !188, !113}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !185, line: 77, size: 832, elements: !190)
!190 = !{!191, !194, !199, !204, !210, !212, !217, !218, !219, !224, !229, !234, !235, !236}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !189, file: !185, line: 79, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !185, line: 54, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !189, file: !185, line: 80, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !185, line: 56, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!14, !188, !113, !113}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !189, file: !185, line: 81, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !185, line: 62, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!14, !188, !14, !113}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !189, file: !185, line: 82, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !185, line: 58, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!29, !188, !209, !113, !113}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !189, file: !185, line: 83, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !185, line: 60, baseType: !196)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !189, file: !185, line: 84, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !185, line: 64, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !188, !14}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !189, file: !185, line: 87, baseType: !213, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !189, file: !185, line: 88, baseType: !192, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !189, file: !185, line: 92, baseType: !220, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !185, line: 66, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!14, !188, !23}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !189, file: !185, line: 93, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !185, line: 68, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !188, !14, !23}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !189, file: !185, line: 99, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !185, line: 70, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!29, !188, !14, !113}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !189, file: !185, line: 100, baseType: !113, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !185, line: 103, baseType: !188, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !189, file: !185, line: 104, baseType: !237, offset: 832)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !41)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !20, line: 20, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !22, line: 41, baseType: !240)
!240 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!241 = !{!183, !242}
!242 = !DILocalVariable(name: "size", arg: 2, scope: !184, file: !185, line: 157, type: !113)
!243 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !244)
!244 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !177)
!245 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !244)
!246 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !244)
!247 = distinct !DILexicalBlock(scope: !184, file: !185, line: 159, column: 6)
!248 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !244)
!249 = !{!"branch_weights", i32 1, i32 2000}
!250 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !244)
!251 = distinct !DILexicalBlock(scope: !247, file: !185, line: 159, column: 20)
!252 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !244)
!253 = !{!254, !254, i64 0}
!254 = !{!"int", !181, i64 0}
!255 = !DILocation(line: 161, column: 3, scope: !251, inlinedAt: !244)
!256 = !DILocalVariable(name: "a", arg: 1, scope: !257, file: !185, line: 151, type: !188)
!257 = distinct !DISubprogram(name: "uk_do_malloc", scope: !185, file: !185, line: 151, type: !186, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!258 = !{!256, !259}
!259 = !DILocalVariable(name: "size", arg: 2, scope: !257, file: !185, line: 151, type: !113)
!260 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !261)
!261 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !244)
!262 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !261)
!263 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !261)
!264 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !261)
!265 = !DILocation(line: 163, column: 2, scope: !184, inlinedAt: !244)
!266 = !DILocation(line: 0, scope: !184, inlinedAt: !244)
!267 = !DILocation(line: 90, column: 11, scope: !107)
!268 = !DILocation(line: 100, column: 15, scope: !269)
!269 = distinct !DILexicalBlock(scope: !107, file: !3, line: 100, column: 9)
!270 = !DILocation(line: 100, column: 13, scope: !269)
!271 = !DILocation(line: 100, column: 9, scope: !107)
!272 = !DILocation(line: 102, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 102, column: 14)
!274 = !DILocation(line: 102, column: 14, scope: !269)
!275 = !DILocation(line: 103, column: 9, scope: !273)
!276 = !DILocation(line: 104, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !107, file: !3, line: 104, column: 9)
!278 = !DILocation(line: 104, column: 9, scope: !107)
!279 = !DILocation(line: 105, column: 18, scope: !107)
!280 = !DILocation(line: 91, column: 9, scope: !107)
!281 = !DILocation(line: 106, column: 29, scope: !107)
!282 = !DILocation(line: 97, column: 20, scope: !107)
!283 = !DILocation(line: 107, column: 5, scope: !107)
!284 = !DILocation(line: 109, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !126, file: !3, line: 108, column: 26)
!286 = !DILocation(line: 110, column: 13, scope: !285)
!287 = !DILocation(line: 113, column: 13, scope: !125)
!288 = !DILocation(line: 114, column: 23, scope: !125)
!289 = !DILocation(line: 114, column: 21, scope: !125)
!290 = !{!181, !181, i64 0}
!291 = !DILocation(line: 115, column: 17, scope: !125)
!292 = !DILocation(line: 115, column: 23, scope: !125)
!293 = !DILocation(line: 120, column: 13, scope: !128)
!294 = !DILocation(line: 121, column: 23, scope: !128)
!295 = !DILocation(line: 121, column: 17, scope: !128)
!296 = !DILocation(line: 121, column: 21, scope: !128)
!297 = !{!298, !298, i64 0}
!298 = !{!"short", !181, i64 0}
!299 = !DILocation(line: 122, column: 17, scope: !128)
!300 = !DILocation(line: 122, column: 23, scope: !128)
!301 = !DILocation(line: 127, column: 13, scope: !130)
!302 = !DILocation(line: 128, column: 23, scope: !130)
!303 = !DILocation(line: 128, column: 17, scope: !130)
!304 = !DILocation(line: 128, column: 21, scope: !130)
!305 = !DILocation(line: 129, column: 17, scope: !130)
!306 = !DILocation(line: 129, column: 23, scope: !130)
!307 = !DILocation(line: 134, column: 13, scope: !132)
!308 = !DILocation(line: 135, column: 17, scope: !132)
!309 = !DILocation(line: 135, column: 21, scope: !132)
!310 = !{!311, !311, i64 0}
!311 = !{!"long", !181, i64 0}
!312 = !DILocation(line: 136, column: 17, scope: !132)
!313 = !DILocation(line: 136, column: 23, scope: !132)
!314 = !DILocation(line: 0, scope: !285)
!315 = !DILocation(line: 141, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !107, file: !3, line: 141, column: 9)
!317 = !DILocation(line: 141, column: 20, scope: !316)
!318 = !DILocation(line: 141, column: 17, scope: !316)
!319 = !DILocation(line: 142, column: 9, scope: !316)
!320 = !DILocation(line: 143, column: 5, scope: !107)
!321 = !DILocation(line: 143, column: 16, scope: !107)
!322 = !DILocation(line: 144, column: 5, scope: !107)
!323 = !DILocation(line: 0, scope: !107)
!324 = !DILocation(line: 145, column: 1, scope: !107)
!325 = distinct !DISubprogram(name: "sdsempty", scope: !3, file: !3, line: 149, type: !326, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!110}
!328 = !{}
!329 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !330)
!330 = distinct !DILocation(line: 150, column: 12, scope: !325)
!331 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !330)
!332 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !333)
!333 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !330)
!334 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !333)
!335 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !336)
!336 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !333)
!337 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !336)
!338 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !336)
!339 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !336)
!340 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !336)
!341 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !336)
!342 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !330)
!343 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !330)
!344 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !345)
!345 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !336)
!346 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !345)
!347 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !345)
!348 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !345)
!349 = !DILocation(line: 104, column: 12, scope: !277, inlinedAt: !330)
!350 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !330)
!351 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !330)
!352 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !330)
!353 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !330)
!354 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !330)
!355 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !330)
!356 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !330)
!357 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !330)
!358 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !330)
!359 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !330)
!360 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !330)
!361 = !DILocation(line: 0, scope: !107, inlinedAt: !330)
!362 = !DILocation(line: 150, column: 5, scope: !325)
!363 = distinct !DISubprogram(name: "sdsnew", scope: !3, file: !3, line: 154, type: !364, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!110, !76}
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "init", arg: 1, scope: !363, file: !3, line: 154, type: !76)
!368 = !DILocalVariable(name: "initlen", scope: !363, file: !3, line: 155, type: !113)
!369 = !DILocation(line: 154, column: 24, scope: !363)
!370 = !DILocation(line: 155, column: 28, scope: !363)
!371 = !DILocation(line: 155, column: 22, scope: !363)
!372 = !DILocation(line: 155, column: 43, scope: !363)
!373 = !DILocation(line: 155, column: 12, scope: !363)
!374 = !DILocation(line: 156, column: 12, scope: !363)
!375 = !DILocation(line: 156, column: 5, scope: !363)
!376 = distinct !DISubprogram(name: "sdsdup", scope: !3, file: !3, line: 160, type: !377, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !380)
!377 = !DISubroutineType(types: !378)
!378 = !{!110, !379}
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!380 = !{!381}
!381 = !DILocalVariable(name: "s", arg: 1, scope: !376, file: !3, line: 160, type: !379)
!382 = !DILocation(line: 160, column: 22, scope: !376)
!383 = !DILocalVariable(name: "s", arg: 1, scope: !384, file: !32, line: 87, type: !379)
!384 = distinct !DISubprogram(name: "sdslen", scope: !32, file: !32, line: 87, type: !385, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!113, !379}
!387 = !{!383, !388}
!388 = !DILocalVariable(name: "flags", scope: !384, file: !32, line: 88, type: !18)
!389 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !390)
!390 = distinct !DILocation(line: 161, column: 25, scope: !376)
!391 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !390)
!392 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !390)
!393 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !390)
!394 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !390)
!395 = distinct !DILexicalBlock(scope: !384, file: !32, line: 89, column: 33)
!396 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !390)
!397 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !390)
!398 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !390)
!399 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !390)
!400 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !390)
!401 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !390)
!402 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !390)
!403 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !390)
!404 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !390)
!405 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !390)
!406 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !390)
!407 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !390)
!408 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !390)
!409 = !DILocation(line: 0, scope: !395, inlinedAt: !390)
!410 = !DILocation(line: 161, column: 12, scope: !376)
!411 = !DILocation(line: 161, column: 5, scope: !376)
!412 = distinct !DISubprogram(name: "sdsfree", scope: !3, file: !3, line: 165, type: !413, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !110}
!415 = !{!416}
!416 = !DILocalVariable(name: "s", arg: 1, scope: !412, file: !3, line: 165, type: !110)
!417 = !DILocation(line: 165, column: 18, scope: !412)
!418 = !DILocation(line: 166, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !412, file: !3, line: 166, column: 9)
!420 = !DILocation(line: 166, column: 9, scope: !412)
!421 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !427)
!422 = distinct !DISubprogram(name: "s_free", scope: !172, file: !172, line: 56, type: !423, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !14}
!425 = !{!426}
!426 = !DILocalVariable(name: "ptr", arg: 1, scope: !422, file: !172, line: 56, type: !14)
!427 = distinct !DILocation(line: 167, column: 5, scope: !412)
!428 = !DILocalVariable(name: "a", arg: 1, scope: !429, file: !185, line: 237, type: !188)
!429 = distinct !DISubprogram(name: "uk_free", scope: !185, file: !185, line: 237, type: !215, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !430)
!430 = !{!428, !431}
!431 = !DILocalVariable(name: "ptr", arg: 2, scope: !429, file: !185, line: 237, type: !14)
!432 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !433)
!433 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !427)
!434 = !DILocalVariable(name: "a", arg: 1, scope: !435, file: !185, line: 231, type: !188)
!435 = distinct !DISubprogram(name: "uk_do_free", scope: !185, file: !185, line: 231, type: !215, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !436)
!436 = !{!434, !437}
!437 = !DILocalVariable(name: "ptr", arg: 2, scope: !435, file: !185, line: 231, type: !14)
!438 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !439)
!439 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !433)
!440 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !439)
!441 = distinct !DILexicalBlock(scope: !442, file: !185, line: 233, column: 2)
!442 = distinct !DILexicalBlock(scope: !435, file: !185, line: 233, column: 2)
!443 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !439)
!444 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !439)
!445 = distinct !DILexicalBlock(scope: !441, file: !185, line: 233, column: 2)
!446 = !DILocation(line: 167, column: 32, scope: !412)
!447 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !448)
!448 = distinct !DILocation(line: 167, column: 21, scope: !412)
!449 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !448)
!450 = !DILocation(line: 167, column: 20, scope: !412)
!451 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !439)
!452 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !433)
!453 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !427)
!454 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !439)
!455 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !439)
!456 = !DILocation(line: 168, column: 1, scope: !412)
!457 = distinct !DISubprogram(name: "sdsupdatelen", scope: !3, file: !3, line: 184, type: !413, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !458)
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "s", arg: 1, scope: !457, file: !3, line: 184, type: !110)
!460 = !DILocalVariable(name: "reallen", scope: !457, file: !3, line: 185, type: !113)
!461 = !DILocation(line: 184, column: 23, scope: !457)
!462 = !DILocation(line: 185, column: 22, scope: !457)
!463 = !DILocation(line: 185, column: 12, scope: !457)
!464 = !DILocalVariable(name: "s", arg: 1, scope: !465, file: !32, line: 130, type: !110)
!465 = distinct !DISubprogram(name: "sdssetlen", scope: !32, file: !32, line: 130, type: !466, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !110, !113}
!468 = !{!464, !469, !470, !471}
!469 = !DILocalVariable(name: "newlen", arg: 2, scope: !465, file: !32, line: 130, type: !113)
!470 = !DILocalVariable(name: "flags", scope: !465, file: !32, line: 131, type: !18)
!471 = !DILocalVariable(name: "fp", scope: !472, file: !32, line: 135, type: !17)
!472 = distinct !DILexicalBlock(scope: !473, file: !32, line: 134, column: 13)
!473 = distinct !DILexicalBlock(scope: !465, file: !32, line: 132, column: 33)
!474 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !475)
!475 = distinct !DILocation(line: 186, column: 5, scope: !457)
!476 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !475)
!477 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !475)
!478 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !475)
!479 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !475)
!480 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !475)
!481 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !475)
!482 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !475)
!483 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !475)
!484 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !475)
!485 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !475)
!486 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !475)
!487 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !475)
!488 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !475)
!489 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !475)
!490 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !475)
!491 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !475)
!492 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !475)
!493 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !475)
!494 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !475)
!495 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !475)
!496 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !475)
!497 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !475)
!498 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !475)
!499 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !475)
!500 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !475)
!501 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !475)
!502 = !DILocation(line: 187, column: 1, scope: !457)
!503 = distinct !DISubprogram(name: "sdsclear", scope: !3, file: !3, line: 193, type: !413, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !504)
!504 = !{!505}
!505 = !DILocalVariable(name: "s", arg: 1, scope: !503, file: !3, line: 193, type: !110)
!506 = !DILocation(line: 193, column: 19, scope: !503)
!507 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !508)
!508 = distinct !DILocation(line: 194, column: 5, scope: !503)
!509 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !508)
!510 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !508)
!511 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !508)
!512 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !508)
!513 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !508)
!514 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !508)
!515 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !508)
!516 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !508)
!517 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !508)
!518 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !508)
!519 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !508)
!520 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !508)
!521 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !508)
!522 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !508)
!523 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !508)
!524 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !508)
!525 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !508)
!526 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !508)
!527 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !508)
!528 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !508)
!529 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !508)
!530 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !508)
!531 = !DILocation(line: 195, column: 10, scope: !503)
!532 = !DILocation(line: 196, column: 1, scope: !503)
!533 = distinct !DISubprogram(name: "sdsMakeRoomFor", scope: !3, file: !3, line: 204, type: !534, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!110, !110, !113}
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!537 = !DILocalVariable(name: "s", arg: 1, scope: !533, file: !3, line: 204, type: !110)
!538 = !DILocalVariable(name: "addlen", arg: 2, scope: !533, file: !3, line: 204, type: !113)
!539 = !DILocalVariable(name: "sh", scope: !533, file: !3, line: 205, type: !14)
!540 = !DILocalVariable(name: "newsh", scope: !533, file: !3, line: 205, type: !14)
!541 = !DILocalVariable(name: "avail", scope: !533, file: !3, line: 206, type: !113)
!542 = !DILocalVariable(name: "len", scope: !533, file: !3, line: 207, type: !113)
!543 = !DILocalVariable(name: "newlen", scope: !533, file: !3, line: 207, type: !113)
!544 = !DILocalVariable(name: "type", scope: !533, file: !3, line: 208, type: !16)
!545 = !DILocalVariable(name: "oldtype", scope: !533, file: !3, line: 208, type: !16)
!546 = !DILocalVariable(name: "hdrlen", scope: !533, file: !3, line: 209, type: !29)
!547 = !DILocation(line: 204, column: 24, scope: !533)
!548 = !DILocation(line: 204, column: 34, scope: !533)
!549 = !DILocalVariable(name: "s", arg: 1, scope: !550, file: !32, line: 104, type: !379)
!550 = distinct !DISubprogram(name: "sdsavail", scope: !32, file: !32, line: 104, type: !385, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !551)
!551 = !{!549, !552, !553, !556, !558, !560}
!552 = !DILocalVariable(name: "flags", scope: !550, file: !32, line: 105, type: !18)
!553 = !DILocalVariable(name: "sh", scope: !554, file: !32, line: 111, type: !30)
!554 = distinct !DILexicalBlock(scope: !555, file: !32, line: 110, column: 26)
!555 = distinct !DILexicalBlock(scope: !550, file: !32, line: 106, column: 33)
!556 = !DILocalVariable(name: "sh", scope: !557, file: !32, line: 115, type: !43)
!557 = distinct !DILexicalBlock(scope: !555, file: !32, line: 114, column: 27)
!558 = !DILocalVariable(name: "sh", scope: !559, file: !32, line: 119, type: !53)
!559 = distinct !DILexicalBlock(scope: !555, file: !32, line: 118, column: 27)
!560 = !DILocalVariable(name: "sh", scope: !561, file: !32, line: 123, type: !62)
!561 = distinct !DILexicalBlock(scope: !555, file: !32, line: 122, column: 27)
!562 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !563)
!563 = distinct !DILocation(line: 206, column: 20, scope: !533)
!564 = !DILocation(line: 105, column: 27, scope: !550, inlinedAt: !563)
!565 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !563)
!566 = !DILocation(line: 106, column: 5, scope: !550, inlinedAt: !563)
!567 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !563)
!568 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !563)
!569 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !563)
!570 = !DILocation(line: 112, column: 36, scope: !554, inlinedAt: !563)
!571 = !DILocation(line: 112, column: 32, scope: !554, inlinedAt: !563)
!572 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !563)
!573 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !563)
!574 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !563)
!575 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !563)
!576 = !DILocation(line: 116, column: 36, scope: !557, inlinedAt: !563)
!577 = !DILocation(line: 116, column: 32, scope: !557, inlinedAt: !563)
!578 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !563)
!579 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !563)
!580 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !563)
!581 = !DILocation(line: 120, column: 36, scope: !559, inlinedAt: !563)
!582 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !563)
!583 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !563)
!584 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !563)
!585 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !563)
!586 = !DILocation(line: 124, column: 36, scope: !561, inlinedAt: !563)
!587 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !563)
!588 = !DILocation(line: 0, scope: !589, inlinedAt: !563)
!589 = distinct !DILexicalBlock(scope: !555, file: !32, line: 107, column: 26)
!590 = !DILocation(line: 206, column: 12, scope: !533)
!591 = !DILocation(line: 208, column: 32, scope: !533)
!592 = !DILocation(line: 208, column: 16, scope: !533)
!593 = !DILocation(line: 212, column: 15, scope: !594)
!594 = distinct !DILexicalBlock(scope: !533, file: !3, line: 212, column: 9)
!595 = !DILocation(line: 212, column: 9, scope: !533)
!596 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !597)
!597 = distinct !DILocation(line: 214, column: 11, scope: !533)
!598 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !597)
!599 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !597)
!600 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !597)
!601 = !DILocation(line: 207, column: 12, scope: !533)
!602 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !603)
!603 = distinct !DILocation(line: 215, column: 19, scope: !533)
!604 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !603)
!605 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !597)
!606 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !597)
!607 = !DILocation(line: 49, column: 13, scope: !608, inlinedAt: !603)
!608 = distinct !DILexicalBlock(scope: !161, file: !3, line: 45, column: 32)
!609 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !597)
!610 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !597)
!611 = !DILocation(line: 51, column: 13, scope: !608, inlinedAt: !603)
!612 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !597)
!613 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !597)
!614 = !DILocation(line: 53, column: 13, scope: !608, inlinedAt: !603)
!615 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !597)
!616 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !597)
!617 = !DILocation(line: 55, column: 13, scope: !608, inlinedAt: !603)
!618 = !DILocation(line: 215, column: 18, scope: !533)
!619 = !DILocation(line: 205, column: 11, scope: !533)
!620 = !DILocation(line: 216, column: 18, scope: !533)
!621 = !DILocation(line: 207, column: 17, scope: !533)
!622 = !DILocation(line: 217, column: 16, scope: !623)
!623 = distinct !DILexicalBlock(scope: !533, file: !3, line: 217, column: 9)
!624 = !DILocation(line: 218, column: 16, scope: !623)
!625 = !DILocation(line: 220, column: 16, scope: !623)
!626 = !DILocation(line: 217, column: 9, scope: !533)
!627 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !628)
!628 = distinct !DILocation(line: 222, column: 12, scope: !533)
!629 = !DILocation(line: 63, column: 21, scope: !146, inlinedAt: !628)
!630 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !628)
!631 = !DILocation(line: 65, column: 21, scope: !149, inlinedAt: !628)
!632 = !DILocation(line: 65, column: 9, scope: !136, inlinedAt: !628)
!633 = !DILocation(line: 68, column: 21, scope: !152, inlinedAt: !628)
!634 = !DILocation(line: 69, column: 9, scope: !152, inlinedAt: !628)
!635 = !DILocation(line: 208, column: 10, scope: !533)
!636 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !637)
!637 = distinct !DILocation(line: 229, column: 14, scope: !533)
!638 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !637)
!639 = !DILocation(line: 49, column: 13, scope: !608, inlinedAt: !637)
!640 = !DILocation(line: 51, column: 13, scope: !608, inlinedAt: !637)
!641 = !DILocation(line: 53, column: 13, scope: !608, inlinedAt: !637)
!642 = !DILocation(line: 55, column: 13, scope: !608, inlinedAt: !637)
!643 = !DILocation(line: 57, column: 5, scope: !161, inlinedAt: !637)
!644 = !DILocation(line: 230, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !533, file: !3, line: 230, column: 9)
!646 = !DILocation(line: 230, column: 18, scope: !645)
!647 = !DILocation(line: 230, column: 16, scope: !645)
!648 = !DILocation(line: 0, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !3, line: 234, column: 12)
!650 = !DILocation(line: 230, column: 9, scope: !533)
!651 = !DILocalVariable(name: "ptr", arg: 1, scope: !652, file: !172, line: 48, type: !14)
!652 = distinct !DISubprogram(name: "s_realloc", scope: !172, file: !172, line: 48, type: !653, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!14, !14, !113}
!655 = !{!651, !656}
!656 = !DILocalVariable(name: "size", arg: 2, scope: !652, file: !172, line: 48, type: !113)
!657 = !DILocation(line: 48, column: 37, scope: !652, inlinedAt: !658)
!658 = distinct !DILocation(line: 231, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !645, file: !3, line: 230, column: 24)
!660 = !DILocation(line: 48, column: 49, scope: !652, inlinedAt: !658)
!661 = !DILocalVariable(name: "a", arg: 1, scope: !662, file: !185, line: 190, type: !188)
!662 = distinct !DISubprogram(name: "uk_realloc", scope: !185, file: !185, line: 190, type: !202, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !663)
!663 = !{!661, !664, !665}
!664 = !DILocalVariable(name: "ptr", arg: 2, scope: !662, file: !185, line: 190, type: !14)
!665 = !DILocalVariable(name: "size", arg: 3, scope: !662, file: !185, line: 190, type: !113)
!666 = !DILocation(line: 190, column: 49, scope: !662, inlinedAt: !667)
!667 = distinct !DILocation(line: 49, column: 9, scope: !652, inlinedAt: !658)
!668 = !DILocation(line: 190, column: 58, scope: !662, inlinedAt: !667)
!669 = !DILocation(line: 190, column: 70, scope: !662, inlinedAt: !667)
!670 = !DILocation(line: 192, column: 6, scope: !662, inlinedAt: !667)
!671 = !DILocation(line: 193, column: 3, scope: !672, inlinedAt: !667)
!672 = distinct !DILexicalBlock(scope: !673, file: !185, line: 192, column: 20)
!673 = distinct !DILexicalBlock(scope: !662, file: !185, line: 192, column: 6)
!674 = !DILocation(line: 193, column: 9, scope: !672, inlinedAt: !667)
!675 = !DILocation(line: 205, column: 16, scope: !533)
!676 = !DILocation(line: 232, column: 13, scope: !659)
!677 = !DILocalVariable(name: "a", arg: 1, scope: !678, file: !185, line: 183, type: !188)
!678 = distinct !DISubprogram(name: "uk_do_realloc", scope: !185, file: !185, line: 183, type: !202, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !679)
!679 = !{!677, !680, !681}
!680 = !DILocalVariable(name: "ptr", arg: 2, scope: !678, file: !185, line: 184, type: !14)
!681 = !DILocalVariable(name: "size", arg: 3, scope: !678, file: !185, line: 184, type: !113)
!682 = !DILocation(line: 183, column: 52, scope: !678, inlinedAt: !683)
!683 = distinct !DILocation(line: 196, column: 9, scope: !662, inlinedAt: !667)
!684 = !DILocation(line: 184, column: 13, scope: !678, inlinedAt: !683)
!685 = !DILocation(line: 184, column: 25, scope: !678, inlinedAt: !683)
!686 = !DILocation(line: 187, column: 12, scope: !678, inlinedAt: !683)
!687 = !DILocation(line: 187, column: 9, scope: !678, inlinedAt: !683)
!688 = !DILocation(line: 232, column: 19, scope: !689)
!689 = distinct !DILexicalBlock(scope: !659, file: !3, line: 232, column: 13)
!690 = !DILocation(line: 233, column: 25, scope: !659)
!691 = !DILocation(line: 198, column: 27, scope: !692, inlinedAt: !697)
!692 = distinct !DISubprogram(name: "sdssetalloc", scope: !32, file: !32, line: 197, type: !466, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !693)
!693 = !{!694, !695, !696}
!694 = !DILocalVariable(name: "s", arg: 1, scope: !692, file: !32, line: 197, type: !110)
!695 = !DILocalVariable(name: "newlen", arg: 2, scope: !692, file: !32, line: 197, type: !113)
!696 = !DILocalVariable(name: "flags", scope: !692, file: !32, line: 198, type: !18)
!697 = distinct !DILocation(line: 245, column: 5, scope: !533)
!698 = !DILocation(line: 234, column: 5, scope: !659)
!699 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !700)
!700 = distinct !DILocation(line: 237, column: 17, scope: !649)
!701 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !702)
!702 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !700)
!703 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !702)
!704 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !702)
!705 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !702)
!706 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !702)
!707 = !DILocation(line: 238, column: 13, scope: !649)
!708 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !709)
!709 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !702)
!710 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !709)
!711 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !709)
!712 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !709)
!713 = !DILocation(line: 238, column: 19, scope: !714)
!714 = distinct !DILexicalBlock(scope: !649, file: !3, line: 238, column: 13)
!715 = !DILocation(line: 239, column: 28, scope: !649)
!716 = !DILocation(line: 239, column: 43, scope: !649)
!717 = !DILocation(line: 239, column: 9, scope: !649)
!718 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !719)
!719 = distinct !DILocation(line: 240, column: 9, scope: !649)
!720 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !719)
!721 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !722)
!722 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !719)
!723 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !722)
!724 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !725)
!725 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !722)
!726 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !725)
!727 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !725)
!728 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !725)
!729 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !725)
!730 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !725)
!731 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !725)
!732 = !DILocation(line: 242, column: 9, scope: !649)
!733 = !DILocation(line: 242, column: 15, scope: !649)
!734 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !735)
!735 = distinct !DILocation(line: 243, column: 9, scope: !649)
!736 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !735)
!737 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !735)
!738 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !735)
!739 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !735)
!740 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !735)
!741 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !735)
!742 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !735)
!743 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !735)
!744 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !735)
!745 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !735)
!746 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !735)
!747 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !735)
!748 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !735)
!749 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !735)
!750 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !735)
!751 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !735)
!752 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !735)
!753 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !735)
!754 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !735)
!755 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !735)
!756 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !735)
!757 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !735)
!758 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !735)
!759 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !735)
!760 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !735)
!761 = !DILocation(line: 197, column: 36, scope: !692, inlinedAt: !697)
!762 = !DILocation(line: 197, column: 46, scope: !692, inlinedAt: !697)
!763 = !DILocation(line: 198, column: 19, scope: !692, inlinedAt: !697)
!764 = !DILocation(line: 199, column: 5, scope: !692, inlinedAt: !697)
!765 = !DILocation(line: 204, column: 35, scope: !766, inlinedAt: !697)
!766 = distinct !DILexicalBlock(scope: !692, file: !32, line: 199, column: 33)
!767 = !DILocation(line: 204, column: 27, scope: !766, inlinedAt: !697)
!768 = !DILocation(line: 204, column: 33, scope: !766, inlinedAt: !697)
!769 = !DILocation(line: 205, column: 13, scope: !766, inlinedAt: !697)
!770 = !DILocation(line: 207, column: 36, scope: !766, inlinedAt: !697)
!771 = !DILocation(line: 207, column: 28, scope: !766, inlinedAt: !697)
!772 = !DILocation(line: 207, column: 34, scope: !766, inlinedAt: !697)
!773 = !DILocation(line: 208, column: 13, scope: !766, inlinedAt: !697)
!774 = !DILocation(line: 210, column: 36, scope: !766, inlinedAt: !697)
!775 = !DILocation(line: 210, column: 28, scope: !766, inlinedAt: !697)
!776 = !DILocation(line: 210, column: 34, scope: !766, inlinedAt: !697)
!777 = !DILocation(line: 211, column: 13, scope: !766, inlinedAt: !697)
!778 = !DILocation(line: 213, column: 28, scope: !766, inlinedAt: !697)
!779 = !DILocation(line: 213, column: 34, scope: !766, inlinedAt: !697)
!780 = !DILocation(line: 214, column: 13, scope: !766, inlinedAt: !697)
!781 = !DILocation(line: 0, scope: !714)
!782 = !DILocation(line: 247, column: 1, scope: !533)
!783 = distinct !DISubprogram(name: "sdsRemoveFreeSpace", scope: !3, file: !3, line: 255, type: !784, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!110, !110}
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795}
!787 = !DILocalVariable(name: "s", arg: 1, scope: !783, file: !3, line: 255, type: !110)
!788 = !DILocalVariable(name: "sh", scope: !783, file: !3, line: 256, type: !14)
!789 = !DILocalVariable(name: "newsh", scope: !783, file: !3, line: 256, type: !14)
!790 = !DILocalVariable(name: "type", scope: !783, file: !3, line: 257, type: !16)
!791 = !DILocalVariable(name: "oldtype", scope: !783, file: !3, line: 257, type: !16)
!792 = !DILocalVariable(name: "hdrlen", scope: !783, file: !3, line: 258, type: !29)
!793 = !DILocalVariable(name: "oldhdrlen", scope: !783, file: !3, line: 258, type: !29)
!794 = !DILocalVariable(name: "len", scope: !783, file: !3, line: 259, type: !113)
!795 = !DILocalVariable(name: "avail", scope: !783, file: !3, line: 260, type: !113)
!796 = !DILocation(line: 255, column: 28, scope: !783)
!797 = !DILocation(line: 257, column: 26, scope: !783)
!798 = !DILocation(line: 257, column: 32, scope: !783)
!799 = !DILocation(line: 257, column: 16, scope: !783)
!800 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !801)
!801 = distinct !DILocation(line: 258, column: 29, scope: !783)
!802 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !801)
!803 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !804)
!804 = distinct !DILocation(line: 259, column: 18, scope: !783)
!805 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !804)
!806 = !DILocation(line: 259, column: 12, scope: !783)
!807 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !808)
!808 = distinct !DILocation(line: 260, column: 20, scope: !783)
!809 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !808)
!810 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !808)
!811 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !808)
!812 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !808)
!813 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !808)
!814 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !804)
!815 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !804)
!816 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !808)
!817 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !808)
!818 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !808)
!819 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !808)
!820 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !804)
!821 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !804)
!822 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !808)
!823 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !808)
!824 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !808)
!825 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !808)
!826 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !804)
!827 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !804)
!828 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !808)
!829 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !808)
!830 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !808)
!831 = !DILocation(line: 0, scope: !589, inlinedAt: !808)
!832 = !DILocation(line: 260, column: 12, scope: !783)
!833 = !DILocation(line: 261, column: 18, scope: !783)
!834 = !DILocation(line: 256, column: 11, scope: !783)
!835 = !DILocation(line: 264, column: 15, scope: !836)
!836 = distinct !DILexicalBlock(scope: !783, file: !3, line: 264, column: 9)
!837 = !DILocation(line: 264, column: 9, scope: !783)
!838 = !DILocation(line: 60, column: 38, scope: !136, inlinedAt: !839)
!839 = distinct !DILocation(line: 268, column: 12, scope: !783)
!840 = !DILocation(line: 61, column: 21, scope: !143, inlinedAt: !839)
!841 = !DILocation(line: 61, column: 9, scope: !136, inlinedAt: !839)
!842 = !DILocation(line: 63, column: 21, scope: !146, inlinedAt: !839)
!843 = !DILocation(line: 63, column: 9, scope: !136, inlinedAt: !839)
!844 = !DILocation(line: 275, column: 16, scope: !845)
!845 = distinct !DILexicalBlock(scope: !783, file: !3, line: 275, column: 9)
!846 = !DILocation(line: 275, column: 23, scope: !845)
!847 = !DILocation(line: 48, column: 37, scope: !652, inlinedAt: !848)
!848 = distinct !DILocation(line: 276, column: 17, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 275, column: 45)
!850 = !DILocation(line: 49, column: 20, scope: !652, inlinedAt: !848)
!851 = !DILocation(line: 190, column: 49, scope: !662, inlinedAt: !852)
!852 = distinct !DILocation(line: 49, column: 9, scope: !652, inlinedAt: !848)
!853 = !DILocation(line: 190, column: 58, scope: !662, inlinedAt: !852)
!854 = !DILocation(line: 192, column: 6, scope: !673, inlinedAt: !852)
!855 = !DILocation(line: 192, column: 6, scope: !662, inlinedAt: !852)
!856 = !DILocation(line: 193, column: 3, scope: !672, inlinedAt: !852)
!857 = !DILocation(line: 193, column: 9, scope: !672, inlinedAt: !852)
!858 = !DILocation(line: 256, column: 16, scope: !783)
!859 = !DILocation(line: 277, column: 13, scope: !849)
!860 = !DILocation(line: 276, column: 40, scope: !849)
!861 = !DILocation(line: 276, column: 44, scope: !849)
!862 = !DILocation(line: 190, column: 70, scope: !662, inlinedAt: !852)
!863 = !DILocation(line: 48, column: 49, scope: !652, inlinedAt: !848)
!864 = !DILocation(line: 183, column: 52, scope: !678, inlinedAt: !865)
!865 = distinct !DILocation(line: 196, column: 9, scope: !662, inlinedAt: !852)
!866 = !DILocation(line: 184, column: 13, scope: !678, inlinedAt: !865)
!867 = !DILocation(line: 184, column: 25, scope: !678, inlinedAt: !865)
!868 = !DILocation(line: 187, column: 12, scope: !678, inlinedAt: !865)
!869 = !DILocation(line: 187, column: 9, scope: !678, inlinedAt: !865)
!870 = !DILocation(line: 277, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !849, file: !3, line: 277, column: 13)
!872 = !DILocation(line: 278, column: 25, scope: !849)
!873 = !DILocation(line: 198, column: 27, scope: !692, inlinedAt: !874)
!874 = distinct !DILocation(line: 288, column: 5, scope: !783)
!875 = !DILocation(line: 279, column: 5, scope: !849)
!876 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !877)
!877 = distinct !DILocation(line: 280, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !845, file: !3, line: 279, column: 12)
!879 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !880)
!880 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !877)
!881 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !880)
!882 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !880)
!883 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !880)
!884 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !880)
!885 = !DILocation(line: 281, column: 13, scope: !878)
!886 = !DILocation(line: 280, column: 32, scope: !878)
!887 = !DILocation(line: 280, column: 36, scope: !878)
!888 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !880)
!889 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !877)
!890 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !891)
!891 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !880)
!892 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !891)
!893 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !891)
!894 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !891)
!895 = !DILocation(line: 281, column: 19, scope: !896)
!896 = distinct !DILexicalBlock(scope: !878, file: !3, line: 281, column: 13)
!897 = !DILocation(line: 282, column: 28, scope: !878)
!898 = !DILocation(line: 282, column: 9, scope: !878)
!899 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !900)
!900 = distinct !DILocation(line: 283, column: 9, scope: !878)
!901 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !900)
!902 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !903)
!903 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !900)
!904 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !903)
!905 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !906)
!906 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !903)
!907 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !906)
!908 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !906)
!909 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !906)
!910 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !906)
!911 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !906)
!912 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !906)
!913 = !DILocation(line: 285, column: 9, scope: !878)
!914 = !DILocation(line: 285, column: 15, scope: !878)
!915 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !916)
!916 = distinct !DILocation(line: 286, column: 9, scope: !878)
!917 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !916)
!918 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !916)
!919 = !DILocation(line: 0, scope: !878)
!920 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !916)
!921 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !916)
!922 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !916)
!923 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !916)
!924 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !916)
!925 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !916)
!926 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !916)
!927 = !DILocation(line: 197, column: 36, scope: !692, inlinedAt: !874)
!928 = !DILocation(line: 197, column: 46, scope: !692, inlinedAt: !874)
!929 = !DILocation(line: 198, column: 19, scope: !692, inlinedAt: !874)
!930 = !DILocation(line: 199, column: 5, scope: !692, inlinedAt: !874)
!931 = !DILocation(line: 204, column: 35, scope: !766, inlinedAt: !874)
!932 = !DILocation(line: 204, column: 27, scope: !766, inlinedAt: !874)
!933 = !DILocation(line: 204, column: 33, scope: !766, inlinedAt: !874)
!934 = !DILocation(line: 205, column: 13, scope: !766, inlinedAt: !874)
!935 = !DILocation(line: 207, column: 36, scope: !766, inlinedAt: !874)
!936 = !DILocation(line: 207, column: 28, scope: !766, inlinedAt: !874)
!937 = !DILocation(line: 207, column: 34, scope: !766, inlinedAt: !874)
!938 = !DILocation(line: 208, column: 13, scope: !766, inlinedAt: !874)
!939 = !DILocation(line: 210, column: 36, scope: !766, inlinedAt: !874)
!940 = !DILocation(line: 210, column: 28, scope: !766, inlinedAt: !874)
!941 = !DILocation(line: 210, column: 34, scope: !766, inlinedAt: !874)
!942 = !DILocation(line: 211, column: 13, scope: !766, inlinedAt: !874)
!943 = !DILocation(line: 213, column: 28, scope: !766, inlinedAt: !874)
!944 = !DILocation(line: 213, column: 34, scope: !766, inlinedAt: !874)
!945 = !DILocation(line: 214, column: 13, scope: !766, inlinedAt: !874)
!946 = !DILocation(line: 0, scope: !896)
!947 = !DILocation(line: 290, column: 1, scope: !783)
!948 = distinct !DISubprogram(name: "sdsAllocSize", scope: !3, file: !3, line: 299, type: !949, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!113, !110}
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "s", arg: 1, scope: !948, file: !3, line: 299, type: !110)
!953 = !DILocalVariable(name: "alloc", scope: !948, file: !3, line: 300, type: !113)
!954 = !DILocation(line: 299, column: 25, scope: !948)
!955 = !DILocalVariable(name: "s", arg: 1, scope: !956, file: !32, line: 180, type: !379)
!956 = distinct !DISubprogram(name: "sdsalloc", scope: !32, file: !32, line: 180, type: !385, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !957)
!957 = !{!955, !958}
!958 = !DILocalVariable(name: "flags", scope: !956, file: !32, line: 181, type: !18)
!959 = !DILocation(line: 180, column: 41, scope: !956, inlinedAt: !960)
!960 = distinct !DILocation(line: 300, column: 20, scope: !948)
!961 = !DILocation(line: 181, column: 27, scope: !956, inlinedAt: !960)
!962 = !DILocation(line: 181, column: 19, scope: !956, inlinedAt: !960)
!963 = !DILocation(line: 182, column: 5, scope: !956, inlinedAt: !960)
!964 = !DILocation(line: 184, column: 20, scope: !965, inlinedAt: !960)
!965 = distinct !DILexicalBlock(scope: !956, file: !32, line: 182, column: 33)
!966 = !DILocation(line: 300, column: 12, scope: !948)
!967 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !968)
!968 = distinct !DILocation(line: 301, column: 12, scope: !948)
!969 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !968)
!970 = !DILocation(line: 186, column: 34, scope: !965, inlinedAt: !960)
!971 = !DILocation(line: 186, column: 20, scope: !965, inlinedAt: !960)
!972 = !DILocation(line: 49, column: 13, scope: !608, inlinedAt: !968)
!973 = !DILocation(line: 188, column: 35, scope: !965, inlinedAt: !960)
!974 = !DILocation(line: 188, column: 20, scope: !965, inlinedAt: !960)
!975 = !DILocation(line: 51, column: 13, scope: !608, inlinedAt: !968)
!976 = !DILocation(line: 190, column: 35, scope: !965, inlinedAt: !960)
!977 = !DILocation(line: 190, column: 20, scope: !965, inlinedAt: !960)
!978 = !DILocation(line: 53, column: 13, scope: !608, inlinedAt: !968)
!979 = !DILocation(line: 192, column: 35, scope: !965, inlinedAt: !960)
!980 = !DILocation(line: 55, column: 13, scope: !608, inlinedAt: !968)
!981 = !DILocation(line: 301, column: 29, scope: !948)
!982 = !DILocation(line: 301, column: 35, scope: !948)
!983 = !DILocation(line: 301, column: 5, scope: !948)
!984 = distinct !DISubprogram(name: "sdsAllocPtr", scope: !3, file: !3, line: 306, type: !985, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!14, !110}
!987 = !{!988}
!988 = !DILocalVariable(name: "s", arg: 1, scope: !984, file: !3, line: 306, type: !110)
!989 = !DILocation(line: 306, column: 23, scope: !984)
!990 = !DILocation(line: 307, column: 34, scope: !984)
!991 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !992)
!992 = distinct !DILocation(line: 307, column: 23, scope: !984)
!993 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !992)
!994 = !DILocation(line: 307, column: 22, scope: !984)
!995 = !DILocation(line: 307, column: 5, scope: !984)
!996 = distinct !DISubprogram(name: "sdsIncrLen", scope: !3, file: !3, line: 333, type: !997, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !110, !24}
!999 = !{!1000, !1001, !1002, !1003, !1004, !1007, !1008, !1010, !1012, !1014}
!1000 = !DILocalVariable(name: "s", arg: 1, scope: !996, file: !3, line: 333, type: !110)
!1001 = !DILocalVariable(name: "incr", arg: 2, scope: !996, file: !3, line: 333, type: !24)
!1002 = !DILocalVariable(name: "flags", scope: !996, file: !3, line: 334, type: !18)
!1003 = !DILocalVariable(name: "len", scope: !996, file: !3, line: 335, type: !113)
!1004 = !DILocalVariable(name: "fp", scope: !1005, file: !3, line: 338, type: !17)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 337, column: 26)
!1006 = distinct !DILexicalBlock(scope: !996, file: !3, line: 336, column: 33)
!1007 = !DILocalVariable(name: "oldlen", scope: !1005, file: !3, line: 339, type: !18)
!1008 = !DILocalVariable(name: "sh", scope: !1009, file: !3, line: 346, type: !30)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 345, column: 26)
!1010 = !DILocalVariable(name: "sh", scope: !1011, file: !3, line: 352, type: !43)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 351, column: 27)
!1012 = !DILocalVariable(name: "sh", scope: !1013, file: !3, line: 358, type: !53)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 357, column: 27)
!1014 = !DILocalVariable(name: "sh", scope: !1015, file: !3, line: 364, type: !62)
!1015 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 363, column: 27)
!1016 = !DILocation(line: 333, column: 21, scope: !996)
!1017 = !DILocation(line: 333, column: 32, scope: !996)
!1018 = !DILocation(line: 334, column: 27, scope: !996)
!1019 = !DILocation(line: 334, column: 19, scope: !996)
!1020 = !DILocation(line: 336, column: 5, scope: !996)
!1021 = !DILocation(line: 338, column: 28, scope: !1005)
!1022 = !DILocation(line: 339, column: 36, scope: !1005)
!1023 = !DILocation(line: 339, column: 27, scope: !1005)
!1024 = !DILocation(line: 340, column: 13, scope: !1005)
!1025 = !DILocation(line: 341, column: 34, scope: !1005)
!1026 = !DILocation(line: 341, column: 40, scope: !1005)
!1027 = !DILocation(line: 341, column: 19, scope: !1005)
!1028 = !DILocation(line: 341, column: 17, scope: !1005)
!1029 = !DILocation(line: 335, column: 12, scope: !996)
!1030 = !DILocation(line: 346, column: 13, scope: !1009)
!1031 = !DILocation(line: 347, column: 13, scope: !1009)
!1032 = !DILocation(line: 348, column: 28, scope: !1009)
!1033 = !DILocation(line: 348, column: 19, scope: !1009)
!1034 = !DILocation(line: 352, column: 13, scope: !1011)
!1035 = !DILocation(line: 353, column: 13, scope: !1011)
!1036 = !DILocation(line: 354, column: 24, scope: !1011)
!1037 = !DILocation(line: 354, column: 28, scope: !1011)
!1038 = !DILocation(line: 354, column: 19, scope: !1011)
!1039 = !DILocation(line: 358, column: 13, scope: !1013)
!1040 = !DILocation(line: 359, column: 13, scope: !1013)
!1041 = !DILocation(line: 360, column: 28, scope: !1013)
!1042 = !DILocation(line: 360, column: 24, scope: !1013)
!1043 = !DILocation(line: 360, column: 19, scope: !1013)
!1044 = !DILocation(line: 364, column: 13, scope: !1015)
!1045 = !DILocation(line: 365, column: 13, scope: !1015)
!1046 = !DILocation(line: 366, column: 24, scope: !1015)
!1047 = !DILocation(line: 366, column: 28, scope: !1015)
!1048 = !DILocation(line: 0, scope: !1005)
!1049 = !DILocation(line: 371, column: 5, scope: !996)
!1050 = !DILocation(line: 371, column: 12, scope: !996)
!1051 = !DILocation(line: 372, column: 1, scope: !996)
!1052 = distinct !DISubprogram(name: "sdsgrowzero", scope: !3, file: !3, line: 379, type: !534, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "s", arg: 1, scope: !1052, file: !3, line: 379, type: !110)
!1055 = !DILocalVariable(name: "len", arg: 2, scope: !1052, file: !3, line: 379, type: !113)
!1056 = !DILocalVariable(name: "curlen", scope: !1052, file: !3, line: 380, type: !113)
!1057 = !DILocation(line: 379, column: 21, scope: !1052)
!1058 = !DILocation(line: 379, column: 31, scope: !1052)
!1059 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 380, column: 21, scope: !1052)
!1061 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !1060)
!1062 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1060)
!1063 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1060)
!1064 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1060)
!1065 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1060)
!1066 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1060)
!1067 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1060)
!1068 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1060)
!1069 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1060)
!1070 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1060)
!1071 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1060)
!1072 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1060)
!1073 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1060)
!1074 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1060)
!1075 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1060)
!1076 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1060)
!1077 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1060)
!1078 = !DILocation(line: 0, scope: !395, inlinedAt: !1060)
!1079 = !DILocation(line: 380, column: 12, scope: !1052)
!1080 = !DILocation(line: 382, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 382, column: 9)
!1082 = !DILocation(line: 382, column: 9, scope: !1052)
!1083 = !DILocation(line: 383, column: 29, scope: !1052)
!1084 = !DILocation(line: 383, column: 9, scope: !1052)
!1085 = !DILocation(line: 384, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 384, column: 9)
!1087 = !DILocation(line: 384, column: 9, scope: !1052)
!1088 = !DILocation(line: 387, column: 13, scope: !1052)
!1089 = !DILocation(line: 387, column: 34, scope: !1052)
!1090 = !DILocation(line: 387, column: 5, scope: !1052)
!1091 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 388, column: 5, scope: !1052)
!1093 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !1092)
!1094 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !1092)
!1095 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !1092)
!1096 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !1092)
!1097 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !1092)
!1098 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !1092)
!1099 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !1092)
!1100 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !1092)
!1101 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !1092)
!1102 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !1092)
!1103 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !1092)
!1104 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !1092)
!1105 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !1092)
!1106 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !1092)
!1107 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !1092)
!1108 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !1092)
!1109 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !1092)
!1110 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !1092)
!1111 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !1092)
!1112 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !1092)
!1113 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !1092)
!1114 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !1092)
!1115 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !1092)
!1116 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !1092)
!1117 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !1092)
!1118 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !1092)
!1119 = !DILocation(line: 0, scope: !1052)
!1120 = !DILocation(line: 390, column: 1, scope: !1052)
!1121 = distinct !DISubprogram(name: "sdscatlen", scope: !3, file: !3, line: 397, type: !1122, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!110, !110, !111, !113}
!1124 = !{!1125, !1126, !1127, !1128}
!1125 = !DILocalVariable(name: "s", arg: 1, scope: !1121, file: !3, line: 397, type: !110)
!1126 = !DILocalVariable(name: "t", arg: 2, scope: !1121, file: !3, line: 397, type: !111)
!1127 = !DILocalVariable(name: "len", arg: 3, scope: !1121, file: !3, line: 397, type: !113)
!1128 = !DILocalVariable(name: "curlen", scope: !1121, file: !3, line: 398, type: !113)
!1129 = !DILocation(line: 397, column: 19, scope: !1121)
!1130 = !DILocation(line: 397, column: 34, scope: !1121)
!1131 = !DILocation(line: 397, column: 44, scope: !1121)
!1132 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 398, column: 21, scope: !1121)
!1134 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !1133)
!1135 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1133)
!1136 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1133)
!1137 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1133)
!1138 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1133)
!1139 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1133)
!1140 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1133)
!1141 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1133)
!1142 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1133)
!1143 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1133)
!1144 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1133)
!1145 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1133)
!1146 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1133)
!1147 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1133)
!1148 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1133)
!1149 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1133)
!1150 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1133)
!1151 = !DILocation(line: 0, scope: !395, inlinedAt: !1133)
!1152 = !DILocation(line: 398, column: 12, scope: !1121)
!1153 = !DILocation(line: 400, column: 9, scope: !1121)
!1154 = !DILocation(line: 401, column: 11, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 401, column: 9)
!1156 = !DILocation(line: 401, column: 9, scope: !1121)
!1157 = !DILocation(line: 402, column: 13, scope: !1121)
!1158 = !DILocation(line: 402, column: 5, scope: !1121)
!1159 = !DILocation(line: 403, column: 24, scope: !1121)
!1160 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 403, column: 5, scope: !1121)
!1162 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !1161)
!1163 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !1161)
!1164 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !1161)
!1165 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !1161)
!1166 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !1161)
!1167 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !1161)
!1168 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !1161)
!1169 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !1161)
!1170 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !1161)
!1171 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !1161)
!1172 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !1161)
!1173 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !1161)
!1174 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !1161)
!1175 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !1161)
!1176 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !1161)
!1177 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !1161)
!1178 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !1161)
!1179 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !1161)
!1180 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !1161)
!1181 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !1161)
!1182 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !1161)
!1183 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !1161)
!1184 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !1161)
!1185 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !1161)
!1186 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !1161)
!1187 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !1161)
!1188 = !DILocation(line: 404, column: 5, scope: !1121)
!1189 = !DILocation(line: 404, column: 19, scope: !1121)
!1190 = !DILocation(line: 405, column: 5, scope: !1121)
!1191 = !DILocation(line: 406, column: 1, scope: !1121)
!1192 = distinct !DISubprogram(name: "sdscat", scope: !3, file: !3, line: 412, type: !1193, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!110, !110, !76}
!1195 = !{!1196, !1197}
!1196 = !DILocalVariable(name: "s", arg: 1, scope: !1192, file: !3, line: 412, type: !110)
!1197 = !DILocalVariable(name: "t", arg: 2, scope: !1192, file: !3, line: 412, type: !76)
!1198 = !DILocation(line: 412, column: 16, scope: !1192)
!1199 = !DILocation(line: 412, column: 31, scope: !1192)
!1200 = !DILocation(line: 413, column: 28, scope: !1192)
!1201 = !DILocation(line: 413, column: 12, scope: !1192)
!1202 = !DILocation(line: 413, column: 5, scope: !1192)
!1203 = distinct !DISubprogram(name: "sdscatsds", scope: !3, file: !3, line: 420, type: !1204, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!110, !110, !379}
!1206 = !{!1207, !1208}
!1207 = !DILocalVariable(name: "s", arg: 1, scope: !1203, file: !3, line: 420, type: !110)
!1208 = !DILocalVariable(name: "t", arg: 2, scope: !1203, file: !3, line: 420, type: !379)
!1209 = !DILocation(line: 420, column: 19, scope: !1203)
!1210 = !DILocation(line: 420, column: 32, scope: !1203)
!1211 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 421, column: 28, scope: !1203)
!1213 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !1212)
!1214 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1212)
!1215 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1212)
!1216 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1212)
!1217 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1212)
!1218 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1212)
!1219 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1212)
!1220 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1212)
!1221 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1212)
!1222 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1212)
!1223 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1212)
!1224 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1212)
!1225 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1212)
!1226 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1212)
!1227 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1212)
!1228 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1212)
!1229 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1212)
!1230 = !DILocation(line: 0, scope: !395, inlinedAt: !1212)
!1231 = !DILocation(line: 421, column: 12, scope: !1203)
!1232 = !DILocation(line: 421, column: 5, scope: !1203)
!1233 = distinct !DISubprogram(name: "sdscpylen", scope: !3, file: !3, line: 426, type: !1234, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!110, !110, !76, !113}
!1236 = !{!1237, !1238, !1239}
!1237 = !DILocalVariable(name: "s", arg: 1, scope: !1233, file: !3, line: 426, type: !110)
!1238 = !DILocalVariable(name: "t", arg: 2, scope: !1233, file: !3, line: 426, type: !76)
!1239 = !DILocalVariable(name: "len", arg: 3, scope: !1233, file: !3, line: 426, type: !113)
!1240 = !DILocation(line: 426, column: 19, scope: !1233)
!1241 = !DILocation(line: 426, column: 34, scope: !1233)
!1242 = !DILocation(line: 426, column: 44, scope: !1233)
!1243 = !DILocation(line: 180, column: 41, scope: !956, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 427, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 427, column: 9)
!1246 = !DILocation(line: 181, column: 27, scope: !956, inlinedAt: !1244)
!1247 = !DILocation(line: 181, column: 19, scope: !956, inlinedAt: !1244)
!1248 = !DILocation(line: 182, column: 5, scope: !956, inlinedAt: !1244)
!1249 = !DILocation(line: 184, column: 20, scope: !965, inlinedAt: !1244)
!1250 = !DILocation(line: 184, column: 13, scope: !965, inlinedAt: !1244)
!1251 = !DILocation(line: 186, column: 34, scope: !965, inlinedAt: !1244)
!1252 = !DILocation(line: 186, column: 20, scope: !965, inlinedAt: !1244)
!1253 = !DILocation(line: 186, column: 13, scope: !965, inlinedAt: !1244)
!1254 = !DILocation(line: 188, column: 35, scope: !965, inlinedAt: !1244)
!1255 = !DILocation(line: 188, column: 20, scope: !965, inlinedAt: !1244)
!1256 = !DILocation(line: 188, column: 13, scope: !965, inlinedAt: !1244)
!1257 = !DILocation(line: 190, column: 35, scope: !965, inlinedAt: !1244)
!1258 = !DILocation(line: 190, column: 20, scope: !965, inlinedAt: !1244)
!1259 = !DILocation(line: 190, column: 13, scope: !965, inlinedAt: !1244)
!1260 = !DILocation(line: 192, column: 35, scope: !965, inlinedAt: !1244)
!1261 = !DILocation(line: 192, column: 13, scope: !965, inlinedAt: !1244)
!1262 = !DILocation(line: 0, scope: !965, inlinedAt: !1244)
!1263 = !DILocation(line: 427, column: 21, scope: !1245)
!1264 = !DILocation(line: 427, column: 9, scope: !1233)
!1265 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 428, column: 34, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 427, column: 28)
!1268 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1266)
!1269 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1266)
!1270 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1266)
!1271 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1266)
!1272 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1266)
!1273 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1266)
!1274 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1266)
!1275 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1266)
!1276 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1266)
!1277 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1266)
!1278 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1266)
!1279 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1266)
!1280 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1266)
!1281 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1266)
!1282 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1266)
!1283 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1266)
!1284 = !DILocation(line: 0, scope: !395, inlinedAt: !1266)
!1285 = !DILocation(line: 428, column: 33, scope: !1267)
!1286 = !DILocation(line: 428, column: 13, scope: !1267)
!1287 = !DILocation(line: 429, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 429, column: 13)
!1289 = !DILocation(line: 429, column: 13, scope: !1267)
!1290 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 433, column: 5, scope: !1233)
!1292 = !DILocation(line: 431, column: 5, scope: !1233)
!1293 = !DILocation(line: 432, column: 5, scope: !1233)
!1294 = !DILocation(line: 432, column: 12, scope: !1233)
!1295 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !1291)
!1296 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !1291)
!1297 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !1291)
!1298 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !1291)
!1299 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !1291)
!1300 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !1291)
!1301 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !1291)
!1302 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !1291)
!1303 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !1291)
!1304 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !1291)
!1305 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !1291)
!1306 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !1291)
!1307 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !1291)
!1308 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !1291)
!1309 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !1291)
!1310 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !1291)
!1311 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !1291)
!1312 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !1291)
!1313 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !1291)
!1314 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !1291)
!1315 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !1291)
!1316 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !1291)
!1317 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !1291)
!1318 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !1291)
!1319 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !1291)
!1320 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !1291)
!1321 = !DILocation(line: 0, scope: !1233)
!1322 = !DILocation(line: 435, column: 1, scope: !1233)
!1323 = distinct !DISubprogram(name: "sdscpy", scope: !3, file: !3, line: 439, type: !1193, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1324)
!1324 = !{!1325, !1326}
!1325 = !DILocalVariable(name: "s", arg: 1, scope: !1323, file: !3, line: 439, type: !110)
!1326 = !DILocalVariable(name: "t", arg: 2, scope: !1323, file: !3, line: 439, type: !76)
!1327 = !DILocation(line: 439, column: 16, scope: !1323)
!1328 = !DILocation(line: 439, column: 31, scope: !1323)
!1329 = !DILocation(line: 440, column: 28, scope: !1323)
!1330 = !DILocation(line: 440, column: 12, scope: !1323)
!1331 = !DILocation(line: 440, column: 5, scope: !1323)
!1332 = distinct !DISubprogram(name: "sdsll2str", scope: !3, file: !3, line: 450, type: !1333, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1336)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!29, !15, !1335}
!1335 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1343}
!1337 = !DILocalVariable(name: "s", arg: 1, scope: !1332, file: !3, line: 450, type: !15)
!1338 = !DILocalVariable(name: "value", arg: 2, scope: !1332, file: !3, line: 450, type: !1335)
!1339 = !DILocalVariable(name: "p", scope: !1332, file: !3, line: 451, type: !15)
!1340 = !DILocalVariable(name: "aux", scope: !1332, file: !3, line: 451, type: !16)
!1341 = !DILocalVariable(name: "v", scope: !1332, file: !3, line: 452, type: !1342)
!1342 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1343 = !DILocalVariable(name: "l", scope: !1332, file: !3, line: 453, type: !113)
!1344 = !DILocation(line: 450, column: 21, scope: !1332)
!1345 = !DILocation(line: 450, column: 34, scope: !1332)
!1346 = !DILocation(line: 457, column: 16, scope: !1332)
!1347 = !DILocation(line: 457, column: 23, scope: !1332)
!1348 = !DILocation(line: 457, column: 9, scope: !1332)
!1349 = !DILocation(line: 452, column: 24, scope: !1332)
!1350 = !DILocation(line: 451, column: 11, scope: !1332)
!1351 = !DILocation(line: 459, column: 5, scope: !1332)
!1352 = !DILocation(line: 0, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 459, column: 8)
!1354 = !DILocation(line: 460, column: 22, scope: !1353)
!1355 = !DILocation(line: 460, column: 16, scope: !1353)
!1356 = !DILocation(line: 460, column: 11, scope: !1353)
!1357 = !DILocation(line: 460, column: 14, scope: !1353)
!1358 = !DILocation(line: 461, column: 11, scope: !1353)
!1359 = !DILocation(line: 462, column: 5, scope: !1353)
!1360 = distinct !{!1360, !1351, !1361}
!1361 = !DILocation(line: 462, column: 14, scope: !1332)
!1362 = !DILocation(line: 463, column: 9, scope: !1332)
!1363 = !DILocation(line: 463, column: 22, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 463, column: 9)
!1365 = !DILocation(line: 463, column: 25, scope: !1364)
!1366 = !DILocation(line: 463, column: 20, scope: !1364)
!1367 = !DILocation(line: 466, column: 10, scope: !1332)
!1368 = !DILocation(line: 453, column: 12, scope: !1332)
!1369 = !DILocation(line: 467, column: 8, scope: !1332)
!1370 = !DILocation(line: 0, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 471, column: 18)
!1372 = !DILocation(line: 471, column: 13, scope: !1332)
!1373 = !DILocation(line: 471, column: 5, scope: !1332)
!1374 = !DILocation(line: 472, column: 15, scope: !1371)
!1375 = !DILocation(line: 451, column: 14, scope: !1332)
!1376 = !DILocation(line: 473, column: 14, scope: !1371)
!1377 = !DILocation(line: 473, column: 12, scope: !1371)
!1378 = !DILocation(line: 474, column: 12, scope: !1371)
!1379 = !DILocation(line: 475, column: 10, scope: !1371)
!1380 = distinct !{!1380, !1373, !1381}
!1381 = !DILocation(line: 477, column: 5, scope: !1332)
!1382 = !DILocation(line: 478, column: 12, scope: !1332)
!1383 = !DILocation(line: 478, column: 5, scope: !1332)
!1384 = distinct !DISubprogram(name: "sdsull2str", scope: !3, file: !3, line: 482, type: !1385, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!29, !15, !1342}
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DILocalVariable(name: "s", arg: 1, scope: !1384, file: !3, line: 482, type: !15)
!1389 = !DILocalVariable(name: "v", arg: 2, scope: !1384, file: !3, line: 482, type: !1342)
!1390 = !DILocalVariable(name: "p", scope: !1384, file: !3, line: 483, type: !15)
!1391 = !DILocalVariable(name: "aux", scope: !1384, file: !3, line: 483, type: !16)
!1392 = !DILocalVariable(name: "l", scope: !1384, file: !3, line: 484, type: !113)
!1393 = !DILocation(line: 482, column: 22, scope: !1384)
!1394 = !DILocation(line: 482, column: 44, scope: !1384)
!1395 = !DILocation(line: 483, column: 11, scope: !1384)
!1396 = !DILocation(line: 489, column: 5, scope: !1384)
!1397 = !DILocation(line: 490, column: 22, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 489, column: 8)
!1399 = !DILocation(line: 490, column: 16, scope: !1398)
!1400 = !DILocation(line: 490, column: 11, scope: !1398)
!1401 = !DILocation(line: 490, column: 14, scope: !1398)
!1402 = !DILocation(line: 491, column: 11, scope: !1398)
!1403 = !DILocation(line: 492, column: 5, scope: !1398)
!1404 = distinct !{!1404, !1396, !1405}
!1405 = !DILocation(line: 492, column: 14, scope: !1384)
!1406 = !DILocation(line: 484, column: 12, scope: !1384)
!1407 = !DILocation(line: 496, column: 8, scope: !1384)
!1408 = !DILocation(line: 500, column: 13, scope: !1384)
!1409 = !DILocation(line: 500, column: 5, scope: !1384)
!1410 = !DILocation(line: 501, column: 15, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 500, column: 18)
!1412 = !DILocation(line: 483, column: 14, scope: !1384)
!1413 = !DILocation(line: 502, column: 12, scope: !1411)
!1414 = !DILocation(line: 503, column: 12, scope: !1411)
!1415 = distinct !{!1415, !1409, !1416}
!1416 = !DILocation(line: 506, column: 5, scope: !1384)
!1417 = !DILocation(line: 505, column: 10, scope: !1411)
!1418 = !DILocation(line: 504, column: 10, scope: !1411)
!1419 = !DILocation(line: 502, column: 14, scope: !1411)
!1420 = !DILocation(line: 507, column: 12, scope: !1384)
!1421 = !DILocation(line: 507, column: 5, scope: !1384)
!1422 = distinct !DISubprogram(name: "sdsfromlonglong", scope: !3, file: !3, line: 514, type: !1423, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!110, !1335}
!1425 = !{!1426, !1427, !1431}
!1426 = !DILocalVariable(name: "value", arg: 1, scope: !1422, file: !3, line: 514, type: !1335)
!1427 = !DILocalVariable(name: "buf", scope: !1422, file: !3, line: 515, type: !1428)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 168, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 21)
!1431 = !DILocalVariable(name: "len", scope: !1422, file: !3, line: 516, type: !29)
!1432 = !DILocation(line: 514, column: 31, scope: !1422)
!1433 = !DILocation(line: 515, column: 5, scope: !1422)
!1434 = !DILocation(line: 515, column: 10, scope: !1422)
!1435 = !DILocation(line: 450, column: 21, scope: !1332, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 516, column: 15, scope: !1422)
!1437 = !DILocation(line: 450, column: 34, scope: !1332, inlinedAt: !1436)
!1438 = !DILocation(line: 457, column: 16, scope: !1332, inlinedAt: !1436)
!1439 = !DILocation(line: 457, column: 23, scope: !1332, inlinedAt: !1436)
!1440 = !DILocation(line: 457, column: 9, scope: !1332, inlinedAt: !1436)
!1441 = !DILocation(line: 452, column: 24, scope: !1332, inlinedAt: !1436)
!1442 = !DILocation(line: 451, column: 11, scope: !1332, inlinedAt: !1436)
!1443 = !DILocation(line: 459, column: 5, scope: !1332, inlinedAt: !1436)
!1444 = !DILocation(line: 0, scope: !1353, inlinedAt: !1436)
!1445 = !DILocation(line: 460, column: 22, scope: !1353, inlinedAt: !1436)
!1446 = !DILocation(line: 460, column: 16, scope: !1353, inlinedAt: !1436)
!1447 = !DILocation(line: 460, column: 11, scope: !1353, inlinedAt: !1436)
!1448 = !DILocation(line: 460, column: 14, scope: !1353, inlinedAt: !1436)
!1449 = !DILocation(line: 461, column: 11, scope: !1353, inlinedAt: !1436)
!1450 = !DILocation(line: 462, column: 5, scope: !1353, inlinedAt: !1436)
!1451 = !DILocation(line: 463, column: 9, scope: !1332, inlinedAt: !1436)
!1452 = !DILocation(line: 463, column: 22, scope: !1364, inlinedAt: !1436)
!1453 = !DILocation(line: 463, column: 25, scope: !1364, inlinedAt: !1436)
!1454 = !DILocation(line: 463, column: 20, scope: !1364, inlinedAt: !1436)
!1455 = !DILocation(line: 453, column: 12, scope: !1332, inlinedAt: !1436)
!1456 = !DILocation(line: 467, column: 8, scope: !1332, inlinedAt: !1436)
!1457 = !DILocation(line: 471, column: 13, scope: !1332, inlinedAt: !1436)
!1458 = !DILocation(line: 471, column: 5, scope: !1332, inlinedAt: !1436)
!1459 = !DILocation(line: 0, scope: !1371, inlinedAt: !1436)
!1460 = !DILocation(line: 472, column: 15, scope: !1371, inlinedAt: !1436)
!1461 = !DILocation(line: 451, column: 14, scope: !1332, inlinedAt: !1436)
!1462 = !DILocation(line: 473, column: 12, scope: !1371, inlinedAt: !1436)
!1463 = !DILocation(line: 474, column: 12, scope: !1371, inlinedAt: !1436)
!1464 = !DILocation(line: 475, column: 10, scope: !1371, inlinedAt: !1436)
!1465 = !DILocation(line: 473, column: 14, scope: !1371, inlinedAt: !1436)
!1466 = !DILocation(line: 518, column: 26, scope: !1422)
!1467 = !DILocation(line: 518, column: 12, scope: !1422)
!1468 = !DILocation(line: 519, column: 1, scope: !1422)
!1469 = !DILocation(line: 518, column: 5, scope: !1422)
!1470 = distinct !DISubprogram(name: "sdscatvprintf", scope: !3, file: !3, line: 522, type: !1471, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1474)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!110, !110, !76, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1483, !1484, !1485}
!1475 = !DILocalVariable(name: "s", arg: 1, scope: !1470, file: !3, line: 522, type: !110)
!1476 = !DILocalVariable(name: "fmt", arg: 2, scope: !1470, file: !3, line: 522, type: !76)
!1477 = !DILocalVariable(name: "ap", arg: 3, scope: !1470, file: !3, line: 522, type: !1473)
!1478 = !DILocalVariable(name: "cpy", scope: !1470, file: !3, line: 523, type: !81)
!1479 = !DILocalVariable(name: "staticbuf", scope: !1470, file: !3, line: 524, type: !1480)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 1024)
!1483 = !DILocalVariable(name: "buf", scope: !1470, file: !3, line: 524, type: !15)
!1484 = !DILocalVariable(name: "t", scope: !1470, file: !3, line: 524, type: !15)
!1485 = !DILocalVariable(name: "buflen", scope: !1470, file: !3, line: 525, type: !113)
!1486 = !DILocation(line: 522, column: 23, scope: !1470)
!1487 = !DILocation(line: 522, column: 38, scope: !1470)
!1488 = !DILocation(line: 522, column: 51, scope: !1470)
!1489 = !DILocation(line: 523, column: 5, scope: !1470)
!1490 = !DILocation(line: 523, column: 13, scope: !1470)
!1491 = !DILocation(line: 524, column: 5, scope: !1470)
!1492 = !DILocation(line: 524, column: 10, scope: !1470)
!1493 = !DILocation(line: 524, column: 28, scope: !1470)
!1494 = !DILocation(line: 525, column: 21, scope: !1470)
!1495 = !DILocation(line: 525, column: 32, scope: !1470)
!1496 = !DILocation(line: 525, column: 12, scope: !1470)
!1497 = !DILocation(line: 529, column: 16, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 529, column: 9)
!1499 = !DILocation(line: 529, column: 9, scope: !1470)
!1500 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 530, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 529, column: 37)
!1503 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !1501)
!1504 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !1501)
!1506 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !1505)
!1507 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !1505)
!1508 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !1505)
!1509 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !1505)
!1510 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !1505)
!1511 = !DILocation(line: 531, column: 13, scope: !1502)
!1512 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !1505)
!1514 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !1513)
!1515 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !1513)
!1516 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !1513)
!1517 = !DILocation(line: 531, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 531, column: 13)
!1519 = !DILocation(line: 0, scope: !1470)
!1520 = !DILocation(line: 0, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 532, column: 12)
!1522 = !DILocation(line: 538, column: 5, scope: !1470)
!1523 = !DILocation(line: 0, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 543, column: 36)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 543, column: 13)
!1526 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 538, column: 14)
!1527 = !DILocation(line: 539, column: 19, scope: !1526)
!1528 = !DILocation(line: 539, column: 9, scope: !1526)
!1529 = !DILocation(line: 539, column: 23, scope: !1526)
!1530 = !DILocation(line: 540, column: 9, scope: !1526)
!1531 = !DILocation(line: 541, column: 9, scope: !1526)
!1532 = !DILocation(line: 542, column: 9, scope: !1526)
!1533 = !DILocation(line: 543, column: 13, scope: !1525)
!1534 = !DILocation(line: 543, column: 27, scope: !1525)
!1535 = !DILocation(line: 543, column: 13, scope: !1526)
!1536 = !DILocation(line: 544, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 544, column: 17)
!1538 = !DILocation(line: 544, column: 17, scope: !1524)
!1539 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 544, column: 35, scope: !1537)
!1541 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !1540)
!1542 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !1540)
!1544 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !1543)
!1545 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !1543)
!1547 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !1546)
!1548 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !1546)
!1549 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !1546)
!1550 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !1546)
!1551 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !1546)
!1552 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !1546)
!1553 = !DILocation(line: 544, column: 35, scope: !1537)
!1554 = !DILocation(line: 545, column: 20, scope: !1524)
!1555 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 546, column: 19, scope: !1524)
!1557 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !1556)
!1558 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !1556)
!1560 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !1559)
!1561 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !1559)
!1562 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !1559)
!1563 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !1559)
!1564 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !1559)
!1565 = !DILocation(line: 547, column: 17, scope: !1524)
!1566 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !1559)
!1568 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !1567)
!1569 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !1567)
!1570 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !1567)
!1571 = !DILocation(line: 547, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 547, column: 17)
!1573 = distinct !{!1573, !1522, !1574}
!1574 = !DILocation(line: 551, column: 5, scope: !1470)
!1575 = !DILocation(line: 412, column: 16, scope: !1192, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 554, column: 9, scope: !1470)
!1577 = !DILocation(line: 412, column: 31, scope: !1192, inlinedAt: !1576)
!1578 = !DILocation(line: 413, column: 28, scope: !1192, inlinedAt: !1576)
!1579 = !DILocation(line: 413, column: 12, scope: !1192, inlinedAt: !1576)
!1580 = !DILocation(line: 524, column: 46, scope: !1470)
!1581 = !DILocation(line: 555, column: 13, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 555, column: 9)
!1583 = !DILocation(line: 555, column: 9, scope: !1470)
!1584 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 555, column: 27, scope: !1582)
!1586 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !1585)
!1587 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !1585)
!1589 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !1588)
!1590 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !1588)
!1592 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !1591)
!1593 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !1591)
!1594 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !1591)
!1595 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !1591)
!1596 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !1591)
!1597 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !1591)
!1598 = !DILocation(line: 555, column: 27, scope: !1582)
!1599 = !DILocation(line: 557, column: 1, scope: !1470)
!1600 = distinct !DISubprogram(name: "sdscatprintf", scope: !3, file: !3, line: 575, type: !1601, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!110, !110, !76, null}
!1603 = !{!1604, !1605, !1606, !1607}
!1604 = !DILocalVariable(name: "s", arg: 1, scope: !1600, file: !3, line: 575, type: !110)
!1605 = !DILocalVariable(name: "fmt", arg: 2, scope: !1600, file: !3, line: 575, type: !76)
!1606 = !DILocalVariable(name: "ap", scope: !1600, file: !3, line: 576, type: !81)
!1607 = !DILocalVariable(name: "t", scope: !1600, file: !3, line: 577, type: !15)
!1608 = !DILocation(line: 575, column: 22, scope: !1600)
!1609 = !DILocation(line: 575, column: 37, scope: !1600)
!1610 = !DILocation(line: 576, column: 5, scope: !1600)
!1611 = !DILocation(line: 576, column: 13, scope: !1600)
!1612 = !DILocation(line: 578, column: 5, scope: !1600)
!1613 = !DILocation(line: 579, column: 9, scope: !1600)
!1614 = !DILocation(line: 577, column: 11, scope: !1600)
!1615 = !DILocation(line: 580, column: 5, scope: !1600)
!1616 = !DILocation(line: 582, column: 1, scope: !1600)
!1617 = !DILocation(line: 581, column: 5, scope: !1600)
!1618 = distinct !DISubprogram(name: "sdscatfmt", scope: !3, file: !3, line: 600, type: !1601, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1628, !1629, !1630, !1631, !1632, !1636}
!1620 = !DILocalVariable(name: "s", arg: 1, scope: !1618, file: !3, line: 600, type: !110)
!1621 = !DILocalVariable(name: "fmt", arg: 2, scope: !1618, file: !3, line: 600, type: !76)
!1622 = !DILocalVariable(name: "initlen", scope: !1618, file: !3, line: 601, type: !113)
!1623 = !DILocalVariable(name: "f", scope: !1618, file: !3, line: 602, type: !76)
!1624 = !DILocalVariable(name: "i", scope: !1618, file: !3, line: 603, type: !28)
!1625 = !DILocalVariable(name: "ap", scope: !1618, file: !3, line: 604, type: !81)
!1626 = !DILocalVariable(name: "next", scope: !1627, file: !3, line: 610, type: !16)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 609, column: 15)
!1628 = !DILocalVariable(name: "str", scope: !1627, file: !3, line: 610, type: !15)
!1629 = !DILocalVariable(name: "l", scope: !1627, file: !3, line: 611, type: !113)
!1630 = !DILocalVariable(name: "num", scope: !1627, file: !3, line: 612, type: !1335)
!1631 = !DILocalVariable(name: "unum", scope: !1627, file: !3, line: 613, type: !1342)
!1632 = !DILocalVariable(name: "buf", scope: !1633, file: !3, line: 643, type: !1428)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 642, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 624, column: 26)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 620, column: 20)
!1636 = !DILocalVariable(name: "buf", scope: !1637, file: !3, line: 660, type: !1428)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 659, column: 17)
!1638 = !DILocation(line: 600, column: 19, scope: !1618)
!1639 = !DILocation(line: 600, column: 34, scope: !1618)
!1640 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 601, column: 22, scope: !1618)
!1642 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !1641)
!1643 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1641)
!1644 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1641)
!1645 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1641)
!1646 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1641)
!1647 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1641)
!1648 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1641)
!1649 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1641)
!1650 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1641)
!1651 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1641)
!1652 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1641)
!1653 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1641)
!1654 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1641)
!1655 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1641)
!1656 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1641)
!1657 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1641)
!1658 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1641)
!1659 = !DILocation(line: 0, scope: !395, inlinedAt: !1641)
!1660 = !DILocation(line: 601, column: 12, scope: !1618)
!1661 = !DILocation(line: 602, column: 17, scope: !1618)
!1662 = !DILocation(line: 604, column: 5, scope: !1618)
!1663 = !DILocation(line: 604, column: 13, scope: !1618)
!1664 = !DILocation(line: 606, column: 5, scope: !1618)
!1665 = !DILocation(line: 603, column: 10, scope: !1618)
!1666 = !DILocation(line: 609, column: 11, scope: !1618)
!1667 = !DILocation(line: 609, column: 5, scope: !1618)
!1668 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 616, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 616, column: 13)
!1671 = !DILocation(line: 105, column: 27, scope: !550, inlinedAt: !1669)
!1672 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !1669)
!1673 = !DILocation(line: 106, column: 5, scope: !550, inlinedAt: !1669)
!1674 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !1669)
!1675 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !1669)
!1676 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !1669)
!1677 = !DILocation(line: 112, column: 36, scope: !554, inlinedAt: !1669)
!1678 = !DILocation(line: 112, column: 32, scope: !554, inlinedAt: !1669)
!1679 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !1669)
!1680 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !1669)
!1681 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !1669)
!1682 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !1669)
!1683 = !DILocation(line: 116, column: 36, scope: !557, inlinedAt: !1669)
!1684 = !DILocation(line: 116, column: 32, scope: !557, inlinedAt: !1669)
!1685 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !1669)
!1686 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !1669)
!1687 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !1669)
!1688 = !DILocation(line: 120, column: 36, scope: !559, inlinedAt: !1669)
!1689 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !1669)
!1690 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !1669)
!1691 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !1669)
!1692 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !1669)
!1693 = !DILocation(line: 124, column: 36, scope: !561, inlinedAt: !1669)
!1694 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !1669)
!1695 = !DILocation(line: 0, scope: !589, inlinedAt: !1669)
!1696 = !DILocation(line: 616, column: 24, scope: !1670)
!1697 = !DILocation(line: 616, column: 13, scope: !1627)
!1698 = !DILocation(line: 617, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 616, column: 29)
!1700 = !DILocation(line: 620, column: 16, scope: !1627)
!1701 = !DILocation(line: 618, column: 9, scope: !1699)
!1702 = !DILocation(line: 620, column: 9, scope: !1627)
!1703 = !DILocation(line: 622, column: 23, scope: !1635)
!1704 = !DILocation(line: 622, column: 20, scope: !1635)
!1705 = !DILocation(line: 610, column: 14, scope: !1627)
!1706 = !DILocation(line: 624, column: 20, scope: !1635)
!1707 = !DILocation(line: 624, column: 13, scope: !1635)
!1708 = !DILocation(line: 627, column: 23, scope: !1634)
!1709 = !DILocation(line: 610, column: 21, scope: !1627)
!1710 = !DILocation(line: 628, column: 27, scope: !1634)
!1711 = !DILocation(line: 628, column: 21, scope: !1634)
!1712 = !DILocation(line: 628, column: 37, scope: !1634)
!1713 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 628, column: 51, scope: !1634)
!1715 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !1714)
!1716 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !1714)
!1717 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !1714)
!1718 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !1714)
!1719 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !1714)
!1720 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !1714)
!1721 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !1714)
!1722 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !1714)
!1723 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !1714)
!1724 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !1714)
!1725 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !1714)
!1726 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !1714)
!1727 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !1714)
!1728 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !1714)
!1729 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !1714)
!1730 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !1714)
!1731 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !1714)
!1732 = !DILocation(line: 611, column: 16, scope: !1627)
!1733 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 629, column: 21, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 629, column: 21)
!1736 = !DILocation(line: 105, column: 27, scope: !550, inlinedAt: !1734)
!1737 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !1734)
!1738 = !DILocation(line: 106, column: 5, scope: !550, inlinedAt: !1734)
!1739 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !1734)
!1740 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !1734)
!1741 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !1734)
!1742 = !DILocation(line: 112, column: 36, scope: !554, inlinedAt: !1734)
!1743 = !DILocation(line: 112, column: 32, scope: !554, inlinedAt: !1734)
!1744 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !1734)
!1745 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !1734)
!1746 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !1734)
!1747 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !1734)
!1748 = !DILocation(line: 116, column: 36, scope: !557, inlinedAt: !1734)
!1749 = !DILocation(line: 116, column: 32, scope: !557, inlinedAt: !1734)
!1750 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !1734)
!1751 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !1734)
!1752 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !1734)
!1753 = !DILocation(line: 120, column: 36, scope: !559, inlinedAt: !1734)
!1754 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !1734)
!1755 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !1734)
!1756 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !1734)
!1757 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !1734)
!1758 = !DILocation(line: 124, column: 36, scope: !561, inlinedAt: !1734)
!1759 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !1734)
!1760 = !DILocation(line: 0, scope: !589, inlinedAt: !1734)
!1761 = !DILocation(line: 629, column: 33, scope: !1735)
!1762 = !DILocation(line: 629, column: 21, scope: !1634)
!1763 = !DILocation(line: 630, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 629, column: 38)
!1765 = !DILocation(line: 155, column: 27, scope: !1766, inlinedAt: !1775)
!1766 = distinct !DISubprogram(name: "sdsinclen", scope: !32, file: !32, line: 154, type: !466, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1774}
!1768 = !DILocalVariable(name: "s", arg: 1, scope: !1766, file: !32, line: 154, type: !110)
!1769 = !DILocalVariable(name: "inc", arg: 2, scope: !1766, file: !32, line: 154, type: !113)
!1770 = !DILocalVariable(name: "flags", scope: !1766, file: !32, line: 155, type: !18)
!1771 = !DILocalVariable(name: "fp", scope: !1772, file: !32, line: 159, type: !17)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !32, line: 158, column: 13)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !32, line: 156, column: 33)
!1774 = !DILocalVariable(name: "newlen", scope: !1772, file: !32, line: 160, type: !18)
!1775 = distinct !DILocation(line: 633, column: 17, scope: !1634)
!1776 = !DILocation(line: 631, column: 17, scope: !1764)
!1777 = !DILocation(line: 0, scope: !1699)
!1778 = !DILocation(line: 632, column: 25, scope: !1634)
!1779 = !DILocation(line: 632, column: 17, scope: !1634)
!1780 = !DILocation(line: 154, column: 34, scope: !1766, inlinedAt: !1775)
!1781 = !DILocation(line: 154, column: 44, scope: !1766, inlinedAt: !1775)
!1782 = !DILocation(line: 155, column: 19, scope: !1766, inlinedAt: !1775)
!1783 = !DILocation(line: 156, column: 5, scope: !1766, inlinedAt: !1775)
!1784 = !DILocation(line: 159, column: 32, scope: !1772, inlinedAt: !1775)
!1785 = !DILocation(line: 160, column: 40, scope: !1772, inlinedAt: !1775)
!1786 = !DILocation(line: 161, column: 44, scope: !1772, inlinedAt: !1775)
!1787 = !DILocation(line: 161, column: 21, scope: !1772, inlinedAt: !1775)
!1788 = !DILocation(line: 163, column: 13, scope: !1773, inlinedAt: !1775)
!1789 = !DILocation(line: 165, column: 13, scope: !1773, inlinedAt: !1775)
!1790 = !DILocation(line: 165, column: 31, scope: !1773, inlinedAt: !1775)
!1791 = !DILocation(line: 166, column: 13, scope: !1773, inlinedAt: !1775)
!1792 = !DILocation(line: 168, column: 13, scope: !1773, inlinedAt: !1775)
!1793 = !DILocation(line: 168, column: 28, scope: !1773, inlinedAt: !1775)
!1794 = !DILocation(line: 168, column: 32, scope: !1773, inlinedAt: !1775)
!1795 = !DILocation(line: 169, column: 13, scope: !1773, inlinedAt: !1775)
!1796 = !DILocation(line: 171, column: 13, scope: !1773, inlinedAt: !1775)
!1797 = !DILocation(line: 171, column: 28, scope: !1773, inlinedAt: !1775)
!1798 = !DILocation(line: 171, column: 32, scope: !1773, inlinedAt: !1775)
!1799 = !DILocation(line: 172, column: 13, scope: !1773, inlinedAt: !1775)
!1800 = !DILocation(line: 174, column: 13, scope: !1773, inlinedAt: !1775)
!1801 = !DILocation(line: 174, column: 28, scope: !1773, inlinedAt: !1775)
!1802 = !DILocation(line: 174, column: 32, scope: !1773, inlinedAt: !1775)
!1803 = !DILocation(line: 175, column: 13, scope: !1773, inlinedAt: !1775)
!1804 = !DILocation(line: 634, column: 19, scope: !1634)
!1805 = !DILocation(line: 635, column: 17, scope: !1634)
!1806 = !DILocation(line: 638, column: 26, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 638, column: 21)
!1808 = !DILocation(line: 0, scope: !1807)
!1809 = !DILocation(line: 638, column: 21, scope: !1634)
!1810 = !DILocation(line: 639, column: 27, scope: !1807)
!1811 = !DILocation(line: 612, column: 19, scope: !1627)
!1812 = !DILocation(line: 639, column: 21, scope: !1807)
!1813 = !DILocation(line: 641, column: 27, scope: !1807)
!1814 = !DILocation(line: 643, column: 21, scope: !1633)
!1815 = !DILocation(line: 643, column: 26, scope: !1633)
!1816 = !DILocation(line: 450, column: 21, scope: !1332, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 644, column: 25, scope: !1633)
!1818 = !DILocation(line: 450, column: 34, scope: !1332, inlinedAt: !1817)
!1819 = !DILocation(line: 457, column: 16, scope: !1332, inlinedAt: !1817)
!1820 = !DILocation(line: 457, column: 23, scope: !1332, inlinedAt: !1817)
!1821 = !DILocation(line: 457, column: 9, scope: !1332, inlinedAt: !1817)
!1822 = !DILocation(line: 452, column: 24, scope: !1332, inlinedAt: !1817)
!1823 = !DILocation(line: 451, column: 11, scope: !1332, inlinedAt: !1817)
!1824 = !DILocation(line: 459, column: 5, scope: !1332, inlinedAt: !1817)
!1825 = !DILocation(line: 0, scope: !1353, inlinedAt: !1817)
!1826 = !DILocation(line: 460, column: 22, scope: !1353, inlinedAt: !1817)
!1827 = !DILocation(line: 460, column: 16, scope: !1353, inlinedAt: !1817)
!1828 = !DILocation(line: 460, column: 11, scope: !1353, inlinedAt: !1817)
!1829 = !DILocation(line: 460, column: 14, scope: !1353, inlinedAt: !1817)
!1830 = !DILocation(line: 461, column: 11, scope: !1353, inlinedAt: !1817)
!1831 = !DILocation(line: 462, column: 5, scope: !1353, inlinedAt: !1817)
!1832 = !DILocation(line: 463, column: 9, scope: !1332, inlinedAt: !1817)
!1833 = !DILocation(line: 463, column: 22, scope: !1364, inlinedAt: !1817)
!1834 = !DILocation(line: 463, column: 25, scope: !1364, inlinedAt: !1817)
!1835 = !DILocation(line: 463, column: 20, scope: !1364, inlinedAt: !1817)
!1836 = !DILocation(line: 453, column: 12, scope: !1332, inlinedAt: !1817)
!1837 = !DILocation(line: 467, column: 8, scope: !1332, inlinedAt: !1817)
!1838 = !DILocation(line: 471, column: 13, scope: !1332, inlinedAt: !1817)
!1839 = !DILocation(line: 471, column: 5, scope: !1332, inlinedAt: !1817)
!1840 = !DILocation(line: 0, scope: !1371, inlinedAt: !1817)
!1841 = !DILocation(line: 472, column: 15, scope: !1371, inlinedAt: !1817)
!1842 = !DILocation(line: 451, column: 14, scope: !1332, inlinedAt: !1817)
!1843 = !DILocation(line: 473, column: 12, scope: !1371, inlinedAt: !1817)
!1844 = !DILocation(line: 474, column: 12, scope: !1371, inlinedAt: !1817)
!1845 = !DILocation(line: 473, column: 14, scope: !1371, inlinedAt: !1817)
!1846 = !DILocation(line: 475, column: 10, scope: !1371, inlinedAt: !1817)
!1847 = !DILocation(line: 478, column: 12, scope: !1332, inlinedAt: !1817)
!1848 = !DILocation(line: 644, column: 25, scope: !1633)
!1849 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 645, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 645, column: 25)
!1852 = !DILocation(line: 105, column: 27, scope: !550, inlinedAt: !1850)
!1853 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !1850)
!1854 = !DILocation(line: 106, column: 5, scope: !550, inlinedAt: !1850)
!1855 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !1850)
!1856 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !1850)
!1857 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !1850)
!1858 = !DILocation(line: 112, column: 36, scope: !554, inlinedAt: !1850)
!1859 = !DILocation(line: 112, column: 32, scope: !554, inlinedAt: !1850)
!1860 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !1850)
!1861 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !1850)
!1862 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !1850)
!1863 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !1850)
!1864 = !DILocation(line: 116, column: 36, scope: !557, inlinedAt: !1850)
!1865 = !DILocation(line: 116, column: 32, scope: !557, inlinedAt: !1850)
!1866 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !1850)
!1867 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !1850)
!1868 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !1850)
!1869 = !DILocation(line: 120, column: 36, scope: !559, inlinedAt: !1850)
!1870 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !1850)
!1871 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !1850)
!1872 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !1850)
!1873 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !1850)
!1874 = !DILocation(line: 124, column: 36, scope: !561, inlinedAt: !1850)
!1875 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !1850)
!1876 = !DILocation(line: 0, scope: !589, inlinedAt: !1850)
!1877 = !DILocation(line: 645, column: 37, scope: !1851)
!1878 = !DILocation(line: 645, column: 25, scope: !1633)
!1879 = !DILocation(line: 646, column: 29, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 645, column: 42)
!1881 = !DILocation(line: 155, column: 27, scope: !1766, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 649, column: 21, scope: !1633)
!1883 = !DILocation(line: 647, column: 21, scope: !1880)
!1884 = !DILocation(line: 648, column: 29, scope: !1633)
!1885 = !DILocation(line: 648, column: 21, scope: !1633)
!1886 = !DILocation(line: 154, column: 34, scope: !1766, inlinedAt: !1882)
!1887 = !DILocation(line: 154, column: 44, scope: !1766, inlinedAt: !1882)
!1888 = !DILocation(line: 155, column: 19, scope: !1766, inlinedAt: !1882)
!1889 = !DILocation(line: 156, column: 5, scope: !1766, inlinedAt: !1882)
!1890 = !DILocation(line: 159, column: 32, scope: !1772, inlinedAt: !1882)
!1891 = !DILocation(line: 161, column: 44, scope: !1772, inlinedAt: !1882)
!1892 = !DILocation(line: 161, column: 21, scope: !1772, inlinedAt: !1882)
!1893 = !DILocation(line: 163, column: 13, scope: !1773, inlinedAt: !1882)
!1894 = !DILocation(line: 165, column: 13, scope: !1773, inlinedAt: !1882)
!1895 = !DILocation(line: 165, column: 31, scope: !1773, inlinedAt: !1882)
!1896 = !DILocation(line: 166, column: 13, scope: !1773, inlinedAt: !1882)
!1897 = !DILocation(line: 168, column: 13, scope: !1773, inlinedAt: !1882)
!1898 = !DILocation(line: 168, column: 28, scope: !1773, inlinedAt: !1882)
!1899 = !DILocation(line: 168, column: 32, scope: !1773, inlinedAt: !1882)
!1900 = !DILocation(line: 169, column: 13, scope: !1773, inlinedAt: !1882)
!1901 = !DILocation(line: 171, column: 13, scope: !1773, inlinedAt: !1882)
!1902 = !DILocation(line: 171, column: 28, scope: !1773, inlinedAt: !1882)
!1903 = !DILocation(line: 171, column: 32, scope: !1773, inlinedAt: !1882)
!1904 = !DILocation(line: 172, column: 13, scope: !1773, inlinedAt: !1882)
!1905 = !DILocation(line: 174, column: 13, scope: !1773, inlinedAt: !1882)
!1906 = !DILocation(line: 174, column: 28, scope: !1773, inlinedAt: !1882)
!1907 = !DILocation(line: 174, column: 32, scope: !1773, inlinedAt: !1882)
!1908 = !DILocation(line: 175, column: 13, scope: !1773, inlinedAt: !1882)
!1909 = !DILocation(line: 650, column: 23, scope: !1633)
!1910 = !DILocation(line: 651, column: 17, scope: !1634)
!1911 = !DILocation(line: 652, column: 17, scope: !1634)
!1912 = !DILocation(line: 655, column: 26, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 655, column: 21)
!1914 = !DILocation(line: 0, scope: !1913)
!1915 = !DILocation(line: 655, column: 21, scope: !1634)
!1916 = !DILocation(line: 656, column: 28, scope: !1913)
!1917 = !DILocation(line: 613, column: 28, scope: !1627)
!1918 = !DILocation(line: 656, column: 21, scope: !1913)
!1919 = !DILocation(line: 658, column: 28, scope: !1913)
!1920 = !DILocation(line: 660, column: 21, scope: !1637)
!1921 = !DILocation(line: 660, column: 26, scope: !1637)
!1922 = !DILocation(line: 482, column: 22, scope: !1384, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 661, column: 25, scope: !1637)
!1924 = !DILocation(line: 482, column: 44, scope: !1384, inlinedAt: !1923)
!1925 = !DILocation(line: 483, column: 11, scope: !1384, inlinedAt: !1923)
!1926 = !DILocation(line: 489, column: 5, scope: !1384, inlinedAt: !1923)
!1927 = !DILocation(line: 490, column: 22, scope: !1398, inlinedAt: !1923)
!1928 = !DILocation(line: 490, column: 16, scope: !1398, inlinedAt: !1923)
!1929 = !DILocation(line: 490, column: 11, scope: !1398, inlinedAt: !1923)
!1930 = !DILocation(line: 490, column: 14, scope: !1398, inlinedAt: !1923)
!1931 = !DILocation(line: 491, column: 11, scope: !1398, inlinedAt: !1923)
!1932 = !DILocation(line: 492, column: 5, scope: !1398, inlinedAt: !1923)
!1933 = !DILocation(line: 484, column: 12, scope: !1384, inlinedAt: !1923)
!1934 = !DILocation(line: 496, column: 8, scope: !1384, inlinedAt: !1923)
!1935 = !DILocation(line: 500, column: 13, scope: !1384, inlinedAt: !1923)
!1936 = !DILocation(line: 500, column: 5, scope: !1384, inlinedAt: !1923)
!1937 = !DILocation(line: 501, column: 15, scope: !1411, inlinedAt: !1923)
!1938 = !DILocation(line: 483, column: 14, scope: !1384, inlinedAt: !1923)
!1939 = !DILocation(line: 502, column: 12, scope: !1411, inlinedAt: !1923)
!1940 = !DILocation(line: 503, column: 12, scope: !1411, inlinedAt: !1923)
!1941 = !DILocation(line: 505, column: 10, scope: !1411, inlinedAt: !1923)
!1942 = !DILocation(line: 502, column: 14, scope: !1411, inlinedAt: !1923)
!1943 = !DILocation(line: 504, column: 10, scope: !1411, inlinedAt: !1923)
!1944 = !DILocation(line: 507, column: 12, scope: !1384, inlinedAt: !1923)
!1945 = !DILocation(line: 661, column: 25, scope: !1637)
!1946 = !DILocation(line: 104, column: 41, scope: !550, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 662, column: 25, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 662, column: 25)
!1949 = !DILocation(line: 105, column: 27, scope: !550, inlinedAt: !1947)
!1950 = !DILocation(line: 105, column: 19, scope: !550, inlinedAt: !1947)
!1951 = !DILocation(line: 106, column: 5, scope: !550, inlinedAt: !1947)
!1952 = !DILocation(line: 111, column: 13, scope: !554, inlinedAt: !1947)
!1953 = !DILocation(line: 112, column: 24, scope: !554, inlinedAt: !1947)
!1954 = !DILocation(line: 112, column: 20, scope: !554, inlinedAt: !1947)
!1955 = !DILocation(line: 112, column: 36, scope: !554, inlinedAt: !1947)
!1956 = !DILocation(line: 112, column: 32, scope: !554, inlinedAt: !1947)
!1957 = !DILocation(line: 112, column: 30, scope: !554, inlinedAt: !1947)
!1958 = !DILocation(line: 115, column: 13, scope: !557, inlinedAt: !1947)
!1959 = !DILocation(line: 116, column: 24, scope: !557, inlinedAt: !1947)
!1960 = !DILocation(line: 116, column: 20, scope: !557, inlinedAt: !1947)
!1961 = !DILocation(line: 116, column: 36, scope: !557, inlinedAt: !1947)
!1962 = !DILocation(line: 116, column: 32, scope: !557, inlinedAt: !1947)
!1963 = !DILocation(line: 116, column: 30, scope: !557, inlinedAt: !1947)
!1964 = !DILocation(line: 119, column: 13, scope: !559, inlinedAt: !1947)
!1965 = !DILocation(line: 120, column: 24, scope: !559, inlinedAt: !1947)
!1966 = !DILocation(line: 120, column: 36, scope: !559, inlinedAt: !1947)
!1967 = !DILocation(line: 120, column: 30, scope: !559, inlinedAt: !1947)
!1968 = !DILocation(line: 120, column: 20, scope: !559, inlinedAt: !1947)
!1969 = !DILocation(line: 123, column: 13, scope: !561, inlinedAt: !1947)
!1970 = !DILocation(line: 124, column: 24, scope: !561, inlinedAt: !1947)
!1971 = !DILocation(line: 124, column: 36, scope: !561, inlinedAt: !1947)
!1972 = !DILocation(line: 124, column: 30, scope: !561, inlinedAt: !1947)
!1973 = !DILocation(line: 0, scope: !589, inlinedAt: !1947)
!1974 = !DILocation(line: 662, column: 37, scope: !1948)
!1975 = !DILocation(line: 662, column: 25, scope: !1637)
!1976 = !DILocation(line: 663, column: 29, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 662, column: 42)
!1978 = !DILocation(line: 155, column: 27, scope: !1766, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 666, column: 21, scope: !1637)
!1980 = !DILocation(line: 664, column: 21, scope: !1977)
!1981 = !DILocation(line: 665, column: 29, scope: !1637)
!1982 = !DILocation(line: 665, column: 21, scope: !1637)
!1983 = !DILocation(line: 154, column: 34, scope: !1766, inlinedAt: !1979)
!1984 = !DILocation(line: 154, column: 44, scope: !1766, inlinedAt: !1979)
!1985 = !DILocation(line: 155, column: 19, scope: !1766, inlinedAt: !1979)
!1986 = !DILocation(line: 156, column: 5, scope: !1766, inlinedAt: !1979)
!1987 = !DILocation(line: 159, column: 32, scope: !1772, inlinedAt: !1979)
!1988 = !DILocation(line: 161, column: 44, scope: !1772, inlinedAt: !1979)
!1989 = !DILocation(line: 161, column: 21, scope: !1772, inlinedAt: !1979)
!1990 = !DILocation(line: 163, column: 13, scope: !1773, inlinedAt: !1979)
!1991 = !DILocation(line: 165, column: 13, scope: !1773, inlinedAt: !1979)
!1992 = !DILocation(line: 165, column: 31, scope: !1773, inlinedAt: !1979)
!1993 = !DILocation(line: 166, column: 13, scope: !1773, inlinedAt: !1979)
!1994 = !DILocation(line: 168, column: 13, scope: !1773, inlinedAt: !1979)
!1995 = !DILocation(line: 168, column: 28, scope: !1773, inlinedAt: !1979)
!1996 = !DILocation(line: 168, column: 32, scope: !1773, inlinedAt: !1979)
!1997 = !DILocation(line: 169, column: 13, scope: !1773, inlinedAt: !1979)
!1998 = !DILocation(line: 171, column: 13, scope: !1773, inlinedAt: !1979)
!1999 = !DILocation(line: 171, column: 28, scope: !1773, inlinedAt: !1979)
!2000 = !DILocation(line: 171, column: 32, scope: !1773, inlinedAt: !1979)
!2001 = !DILocation(line: 172, column: 13, scope: !1773, inlinedAt: !1979)
!2002 = !DILocation(line: 174, column: 13, scope: !1773, inlinedAt: !1979)
!2003 = !DILocation(line: 174, column: 28, scope: !1773, inlinedAt: !1979)
!2004 = !DILocation(line: 174, column: 32, scope: !1773, inlinedAt: !1979)
!2005 = !DILocation(line: 175, column: 13, scope: !1773, inlinedAt: !1979)
!2006 = !DILocation(line: 667, column: 23, scope: !1637)
!2007 = !DILocation(line: 668, column: 17, scope: !1634)
!2008 = !DILocation(line: 669, column: 17, scope: !1634)
!2009 = !DILocation(line: 671, column: 20, scope: !1634)
!2010 = !DILocation(line: 671, column: 17, scope: !1634)
!2011 = !DILocation(line: 671, column: 24, scope: !1634)
!2012 = !DILocation(line: 154, column: 34, scope: !1766, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 672, column: 17, scope: !1634)
!2014 = !DILocation(line: 154, column: 44, scope: !1766, inlinedAt: !2013)
!2015 = !DILocation(line: 155, column: 27, scope: !1766, inlinedAt: !2013)
!2016 = !DILocation(line: 155, column: 19, scope: !1766, inlinedAt: !2013)
!2017 = !DILocation(line: 156, column: 5, scope: !1766, inlinedAt: !2013)
!2018 = !DILocation(line: 159, column: 32, scope: !1772, inlinedAt: !2013)
!2019 = !DILocation(line: 161, column: 44, scope: !1772, inlinedAt: !2013)
!2020 = !DILocation(line: 161, column: 21, scope: !1772, inlinedAt: !2013)
!2021 = !DILocation(line: 163, column: 13, scope: !1773, inlinedAt: !2013)
!2022 = !DILocation(line: 165, column: 13, scope: !1773, inlinedAt: !2013)
!2023 = !DILocation(line: 165, column: 31, scope: !1773, inlinedAt: !2013)
!2024 = !DILocation(line: 166, column: 13, scope: !1773, inlinedAt: !2013)
!2025 = !DILocation(line: 168, column: 13, scope: !1773, inlinedAt: !2013)
!2026 = !DILocation(line: 168, column: 28, scope: !1773, inlinedAt: !2013)
!2027 = !DILocation(line: 168, column: 32, scope: !1773, inlinedAt: !2013)
!2028 = !DILocation(line: 169, column: 13, scope: !1773, inlinedAt: !2013)
!2029 = !DILocation(line: 171, column: 13, scope: !1773, inlinedAt: !2013)
!2030 = !DILocation(line: 171, column: 28, scope: !1773, inlinedAt: !2013)
!2031 = !DILocation(line: 171, column: 32, scope: !1773, inlinedAt: !2013)
!2032 = !DILocation(line: 172, column: 13, scope: !1773, inlinedAt: !2013)
!2033 = !DILocation(line: 174, column: 13, scope: !1773, inlinedAt: !2013)
!2034 = !DILocation(line: 174, column: 28, scope: !1773, inlinedAt: !2013)
!2035 = !DILocation(line: 174, column: 32, scope: !1773, inlinedAt: !2013)
!2036 = !DILocation(line: 175, column: 13, scope: !1773, inlinedAt: !2013)
!2037 = !DILocation(line: 677, column: 16, scope: !1635)
!2038 = !DILocation(line: 677, column: 13, scope: !1635)
!2039 = !DILocation(line: 677, column: 20, scope: !1635)
!2040 = !DILocation(line: 154, column: 34, scope: !1766, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 678, column: 13, scope: !1635)
!2042 = !DILocation(line: 154, column: 44, scope: !1766, inlinedAt: !2041)
!2043 = !DILocation(line: 155, column: 27, scope: !1766, inlinedAt: !2041)
!2044 = !DILocation(line: 155, column: 19, scope: !1766, inlinedAt: !2041)
!2045 = !DILocation(line: 156, column: 5, scope: !1766, inlinedAt: !2041)
!2046 = !DILocation(line: 159, column: 32, scope: !1772, inlinedAt: !2041)
!2047 = !DILocation(line: 161, column: 44, scope: !1772, inlinedAt: !2041)
!2048 = !DILocation(line: 161, column: 21, scope: !1772, inlinedAt: !2041)
!2049 = !DILocation(line: 163, column: 13, scope: !1773, inlinedAt: !2041)
!2050 = !DILocation(line: 165, column: 13, scope: !1773, inlinedAt: !2041)
!2051 = !DILocation(line: 165, column: 31, scope: !1773, inlinedAt: !2041)
!2052 = !DILocation(line: 166, column: 13, scope: !1773, inlinedAt: !2041)
!2053 = !DILocation(line: 168, column: 13, scope: !1773, inlinedAt: !2041)
!2054 = !DILocation(line: 168, column: 28, scope: !1773, inlinedAt: !2041)
!2055 = !DILocation(line: 168, column: 32, scope: !1773, inlinedAt: !2041)
!2056 = !DILocation(line: 169, column: 13, scope: !1773, inlinedAt: !2041)
!2057 = !DILocation(line: 171, column: 13, scope: !1773, inlinedAt: !2041)
!2058 = !DILocation(line: 171, column: 28, scope: !1773, inlinedAt: !2041)
!2059 = !DILocation(line: 171, column: 32, scope: !1773, inlinedAt: !2041)
!2060 = !DILocation(line: 172, column: 13, scope: !1773, inlinedAt: !2041)
!2061 = !DILocation(line: 174, column: 13, scope: !1773, inlinedAt: !2041)
!2062 = !DILocation(line: 174, column: 28, scope: !1773, inlinedAt: !2041)
!2063 = !DILocation(line: 174, column: 32, scope: !1773, inlinedAt: !2041)
!2064 = !DILocation(line: 175, column: 13, scope: !1773, inlinedAt: !2041)
!2065 = !DILocation(line: 0, scope: !1635)
!2066 = !DILocation(line: 0, scope: !1618)
!2067 = !DILocation(line: 681, column: 10, scope: !1627)
!2068 = distinct !{!2068, !1667, !2069}
!2069 = !DILocation(line: 682, column: 5, scope: !1618)
!2070 = !DILocation(line: 0, scope: !1634)
!2071 = !DILocation(line: 683, column: 5, scope: !1618)
!2072 = !DILocation(line: 686, column: 5, scope: !1618)
!2073 = !DILocation(line: 686, column: 10, scope: !1618)
!2074 = !DILocation(line: 688, column: 1, scope: !1618)
!2075 = !DILocation(line: 687, column: 5, scope: !1618)
!2076 = distinct !DISubprogram(name: "sdstrim", scope: !3, file: !3, line: 704, type: !1193, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084}
!2078 = !DILocalVariable(name: "s", arg: 1, scope: !2076, file: !3, line: 704, type: !110)
!2079 = !DILocalVariable(name: "cset", arg: 2, scope: !2076, file: !3, line: 704, type: !76)
!2080 = !DILocalVariable(name: "start", scope: !2076, file: !3, line: 705, type: !15)
!2081 = !DILocalVariable(name: "end", scope: !2076, file: !3, line: 705, type: !15)
!2082 = !DILocalVariable(name: "sp", scope: !2076, file: !3, line: 705, type: !15)
!2083 = !DILocalVariable(name: "ep", scope: !2076, file: !3, line: 705, type: !15)
!2084 = !DILocalVariable(name: "len", scope: !2076, file: !3, line: 706, type: !113)
!2085 = !DILocation(line: 704, column: 17, scope: !2076)
!2086 = !DILocation(line: 704, column: 32, scope: !2076)
!2087 = !DILocation(line: 705, column: 11, scope: !2076)
!2088 = !DILocation(line: 705, column: 25, scope: !2076)
!2089 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 709, column: 18, scope: !2076)
!2091 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2090)
!2092 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2090)
!2093 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2090)
!2094 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2090)
!2095 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2090)
!2096 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2090)
!2097 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2090)
!2098 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2090)
!2099 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2090)
!2100 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2090)
!2101 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2090)
!2102 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2090)
!2103 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2090)
!2104 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2090)
!2105 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2090)
!2106 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2090)
!2107 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2090)
!2108 = !DILocation(line: 0, scope: !395, inlinedAt: !2090)
!2109 = !DILocation(line: 709, column: 17, scope: !2076)
!2110 = !DILocation(line: 709, column: 27, scope: !2076)
!2111 = !DILocation(line: 705, column: 19, scope: !2076)
!2112 = !DILocation(line: 705, column: 30, scope: !2076)
!2113 = !DILocation(line: 710, column: 14, scope: !2076)
!2114 = !DILocation(line: 710, column: 21, scope: !2076)
!2115 = !DILocation(line: 710, column: 37, scope: !2076)
!2116 = !DILocation(line: 710, column: 24, scope: !2076)
!2117 = !DILocation(line: 710, column: 5, scope: !2076)
!2118 = !DILocation(line: 710, column: 45, scope: !2076)
!2119 = distinct !{!2119, !2117, !2118}
!2120 = !DILocation(line: 0, scope: !2076)
!2121 = !DILocation(line: 711, column: 14, scope: !2076)
!2122 = !DILocation(line: 711, column: 19, scope: !2076)
!2123 = !DILocation(line: 711, column: 35, scope: !2076)
!2124 = !DILocation(line: 711, column: 22, scope: !2076)
!2125 = !DILocation(line: 711, column: 5, scope: !2076)
!2126 = !DILocation(line: 711, column: 43, scope: !2076)
!2127 = distinct !{!2127, !2125, !2126}
!2128 = !DILocation(line: 712, column: 15, scope: !2076)
!2129 = !DILocation(line: 712, column: 31, scope: !2076)
!2130 = !DILocation(line: 712, column: 35, scope: !2076)
!2131 = !DILocation(line: 712, column: 11, scope: !2076)
!2132 = !DILocation(line: 706, column: 12, scope: !2076)
!2133 = !DILocation(line: 713, column: 11, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 713, column: 9)
!2135 = !DILocation(line: 713, column: 9, scope: !2076)
!2136 = !DILocation(line: 713, column: 18, scope: !2134)
!2137 = !DILocation(line: 714, column: 5, scope: !2076)
!2138 = !DILocation(line: 714, column: 12, scope: !2076)
!2139 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 715, column: 5, scope: !2076)
!2141 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !2140)
!2142 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !2140)
!2143 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !2140)
!2144 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !2140)
!2145 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !2140)
!2146 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !2140)
!2147 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !2140)
!2148 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !2140)
!2149 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !2140)
!2150 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !2140)
!2151 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !2140)
!2152 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !2140)
!2153 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !2140)
!2154 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !2140)
!2155 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !2140)
!2156 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !2140)
!2157 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !2140)
!2158 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !2140)
!2159 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !2140)
!2160 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !2140)
!2161 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !2140)
!2162 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !2140)
!2163 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !2140)
!2164 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !2140)
!2165 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !2140)
!2166 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !2140)
!2167 = !DILocation(line: 716, column: 5, scope: !2076)
!2168 = distinct !DISubprogram(name: "sdsrange", scope: !3, file: !3, line: 735, type: !2169, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !110, !24, !24}
!2171 = !{!2172, !2173, !2174, !2175, !2176}
!2172 = !DILocalVariable(name: "s", arg: 1, scope: !2168, file: !3, line: 735, type: !110)
!2173 = !DILocalVariable(name: "start", arg: 2, scope: !2168, file: !3, line: 735, type: !24)
!2174 = !DILocalVariable(name: "end", arg: 3, scope: !2168, file: !3, line: 735, type: !24)
!2175 = !DILocalVariable(name: "newlen", scope: !2168, file: !3, line: 736, type: !113)
!2176 = !DILocalVariable(name: "len", scope: !2168, file: !3, line: 736, type: !113)
!2177 = !DILocation(line: 735, column: 19, scope: !2168)
!2178 = !DILocation(line: 735, column: 30, scope: !2168)
!2179 = !DILocation(line: 735, column: 45, scope: !2168)
!2180 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 736, column: 26, scope: !2168)
!2182 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2181)
!2183 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2181)
!2184 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2181)
!2185 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2181)
!2186 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2181)
!2187 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2181)
!2188 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2181)
!2189 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2181)
!2190 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2181)
!2191 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2181)
!2192 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2181)
!2193 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2181)
!2194 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2181)
!2195 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2181)
!2196 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2181)
!2197 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2181)
!2198 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2181)
!2199 = !DILocation(line: 0, scope: !395, inlinedAt: !2181)
!2200 = !DILocation(line: 736, column: 20, scope: !2168)
!2201 = !DILocation(line: 738, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 738, column: 9)
!2203 = !DILocation(line: 738, column: 9, scope: !2168)
!2204 = !DILocation(line: 739, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 739, column: 9)
!2206 = !DILocation(line: 739, column: 9, scope: !2168)
!2207 = !DILocation(line: 740, column: 20, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 739, column: 20)
!2209 = !DILocation(line: 741, column: 13, scope: !2208)
!2210 = !DILocation(line: 742, column: 5, scope: !2208)
!2211 = !DILocation(line: 743, column: 13, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 743, column: 9)
!2213 = !DILocation(line: 743, column: 9, scope: !2168)
!2214 = !DILocation(line: 744, column: 18, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 743, column: 18)
!2216 = !DILocation(line: 745, column: 13, scope: !2215)
!2217 = !DILocation(line: 746, column: 5, scope: !2215)
!2218 = !DILocation(line: 747, column: 21, scope: !2168)
!2219 = !DILocation(line: 747, column: 38, scope: !2168)
!2220 = !DILocation(line: 747, column: 45, scope: !2168)
!2221 = !DILocation(line: 747, column: 14, scope: !2168)
!2222 = !DILocation(line: 736, column: 12, scope: !2168)
!2223 = !DILocation(line: 748, column: 16, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 748, column: 9)
!2225 = !DILocation(line: 749, column: 19, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 749, column: 13)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 748, column: 22)
!2228 = !DILocation(line: 748, column: 9, scope: !2168)
!2229 = !DILocation(line: 751, column: 24, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 751, column: 20)
!2231 = !DILocation(line: 751, column: 20, scope: !2226)
!2232 = !DILocation(line: 752, column: 22, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 751, column: 41)
!2234 = !DILocation(line: 753, column: 29, scope: !2233)
!2235 = !DILocation(line: 753, column: 53, scope: !2233)
!2236 = !DILocation(line: 753, column: 22, scope: !2233)
!2237 = !DILocation(line: 0, scope: !2168)
!2238 = !DILocation(line: 758, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 758, column: 9)
!2240 = !DILocation(line: 758, column: 18, scope: !2239)
!2241 = !DILocation(line: 758, column: 15, scope: !2239)
!2242 = !DILocation(line: 758, column: 38, scope: !2239)
!2243 = !DILocation(line: 758, column: 26, scope: !2239)
!2244 = !DILocation(line: 759, column: 5, scope: !2168)
!2245 = !DILocation(line: 759, column: 15, scope: !2168)
!2246 = !DILocation(line: 130, column: 34, scope: !465, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 760, column: 5, scope: !2168)
!2248 = !DILocation(line: 130, column: 44, scope: !465, inlinedAt: !2247)
!2249 = !DILocation(line: 131, column: 27, scope: !465, inlinedAt: !2247)
!2250 = !DILocation(line: 131, column: 19, scope: !465, inlinedAt: !2247)
!2251 = !DILocation(line: 132, column: 5, scope: !465, inlinedAt: !2247)
!2252 = !DILocation(line: 135, column: 32, scope: !472, inlinedAt: !2247)
!2253 = !DILocation(line: 136, column: 23, scope: !472, inlinedAt: !2247)
!2254 = !DILocation(line: 136, column: 21, scope: !472, inlinedAt: !2247)
!2255 = !DILocation(line: 138, column: 13, scope: !473, inlinedAt: !2247)
!2256 = !DILocation(line: 140, column: 33, scope: !473, inlinedAt: !2247)
!2257 = !DILocation(line: 140, column: 13, scope: !473, inlinedAt: !2247)
!2258 = !DILocation(line: 140, column: 31, scope: !473, inlinedAt: !2247)
!2259 = !DILocation(line: 141, column: 13, scope: !473, inlinedAt: !2247)
!2260 = !DILocation(line: 143, column: 34, scope: !473, inlinedAt: !2247)
!2261 = !DILocation(line: 143, column: 13, scope: !473, inlinedAt: !2247)
!2262 = !DILocation(line: 143, column: 28, scope: !473, inlinedAt: !2247)
!2263 = !DILocation(line: 143, column: 32, scope: !473, inlinedAt: !2247)
!2264 = !DILocation(line: 144, column: 13, scope: !473, inlinedAt: !2247)
!2265 = !DILocation(line: 146, column: 34, scope: !473, inlinedAt: !2247)
!2266 = !DILocation(line: 146, column: 13, scope: !473, inlinedAt: !2247)
!2267 = !DILocation(line: 146, column: 28, scope: !473, inlinedAt: !2247)
!2268 = !DILocation(line: 146, column: 32, scope: !473, inlinedAt: !2247)
!2269 = !DILocation(line: 147, column: 13, scope: !473, inlinedAt: !2247)
!2270 = !DILocation(line: 149, column: 13, scope: !473, inlinedAt: !2247)
!2271 = !DILocation(line: 149, column: 28, scope: !473, inlinedAt: !2247)
!2272 = !DILocation(line: 149, column: 32, scope: !473, inlinedAt: !2247)
!2273 = !DILocation(line: 150, column: 13, scope: !473, inlinedAt: !2247)
!2274 = !DILocation(line: 761, column: 1, scope: !2168)
!2275 = distinct !DISubprogram(name: "sdstolower", scope: !3, file: !3, line: 764, type: !413, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278, !2279, !2280}
!2277 = !DILocalVariable(name: "s", arg: 1, scope: !2275, file: !3, line: 764, type: !110)
!2278 = !DILocalVariable(name: "len", scope: !2275, file: !3, line: 765, type: !113)
!2279 = !DILocalVariable(name: "j", scope: !2275, file: !3, line: 765, type: !113)
!2280 = !DILocalVariable(name: "__x", scope: !2281, file: !3, line: 767, type: !16)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 767, column: 38)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 767, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 767, column: 5)
!2284 = !DILocation(line: 764, column: 21, scope: !2275)
!2285 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 765, column: 18, scope: !2275)
!2287 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2286)
!2288 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2286)
!2289 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2286)
!2290 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2286)
!2291 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2286)
!2292 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2286)
!2293 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2286)
!2294 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2286)
!2295 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2286)
!2296 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2286)
!2297 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2286)
!2298 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2286)
!2299 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2286)
!2300 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2286)
!2301 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2286)
!2302 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2286)
!2303 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2286)
!2304 = !DILocation(line: 0, scope: !395, inlinedAt: !2286)
!2305 = !DILocation(line: 765, column: 12, scope: !2275)
!2306 = !DILocation(line: 765, column: 29, scope: !2275)
!2307 = !DILocation(line: 767, column: 19, scope: !2282)
!2308 = !DILocation(line: 767, column: 5, scope: !2283)
!2309 = !DILocation(line: 767, column: 38, scope: !2281)
!2310 = !DILocation(line: 767, column: 36, scope: !2282)
!2311 = !DILocation(line: 767, column: 27, scope: !2282)
!2312 = distinct !{!2312, !2308, !2313}
!2313 = !DILocation(line: 767, column: 38, scope: !2283)
!2314 = !DILocation(line: 768, column: 1, scope: !2275)
!2315 = distinct !DISubprogram(name: "sdstoupper", scope: !3, file: !3, line: 771, type: !413, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DILocalVariable(name: "s", arg: 1, scope: !2315, file: !3, line: 771, type: !110)
!2318 = !DILocalVariable(name: "len", scope: !2315, file: !3, line: 772, type: !113)
!2319 = !DILocalVariable(name: "j", scope: !2315, file: !3, line: 772, type: !113)
!2320 = !DILocalVariable(name: "__x", scope: !2321, file: !3, line: 774, type: !16)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 774, column: 38)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 774, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 774, column: 5)
!2324 = !DILocation(line: 771, column: 21, scope: !2315)
!2325 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 772, column: 18, scope: !2315)
!2327 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2326)
!2328 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2326)
!2329 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2326)
!2330 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2326)
!2331 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2326)
!2332 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2326)
!2333 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2326)
!2334 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2326)
!2335 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2326)
!2336 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2326)
!2337 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2326)
!2338 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2326)
!2339 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2326)
!2340 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2326)
!2341 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2326)
!2342 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2326)
!2343 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2326)
!2344 = !DILocation(line: 0, scope: !395, inlinedAt: !2326)
!2345 = !DILocation(line: 772, column: 12, scope: !2315)
!2346 = !DILocation(line: 772, column: 29, scope: !2315)
!2347 = !DILocation(line: 774, column: 19, scope: !2322)
!2348 = !DILocation(line: 774, column: 5, scope: !2323)
!2349 = !DILocation(line: 774, column: 38, scope: !2321)
!2350 = !DILocation(line: 774, column: 36, scope: !2322)
!2351 = !DILocation(line: 774, column: 27, scope: !2322)
!2352 = distinct !{!2352, !2348, !2353}
!2353 = !DILocation(line: 774, column: 38, scope: !2323)
!2354 = !DILocation(line: 775, column: 1, scope: !2315)
!2355 = distinct !DISubprogram(name: "sdscmp", scope: !3, file: !3, line: 788, type: !2356, isLocal: false, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!29, !379, !379}
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364}
!2359 = !DILocalVariable(name: "s1", arg: 1, scope: !2355, file: !3, line: 788, type: !379)
!2360 = !DILocalVariable(name: "s2", arg: 2, scope: !2355, file: !3, line: 788, type: !379)
!2361 = !DILocalVariable(name: "l1", scope: !2355, file: !3, line: 789, type: !113)
!2362 = !DILocalVariable(name: "l2", scope: !2355, file: !3, line: 789, type: !113)
!2363 = !DILocalVariable(name: "minlen", scope: !2355, file: !3, line: 789, type: !113)
!2364 = !DILocalVariable(name: "cmp", scope: !2355, file: !3, line: 790, type: !29)
!2365 = !DILocation(line: 788, column: 22, scope: !2355)
!2366 = !DILocation(line: 788, column: 36, scope: !2355)
!2367 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 792, column: 10, scope: !2355)
!2369 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2368)
!2370 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2368)
!2371 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2368)
!2372 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2368)
!2373 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2368)
!2374 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2368)
!2375 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2368)
!2376 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2368)
!2377 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2368)
!2378 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2368)
!2379 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2368)
!2380 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2368)
!2381 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2368)
!2382 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2368)
!2383 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2368)
!2384 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2368)
!2385 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2368)
!2386 = !DILocation(line: 0, scope: !395, inlinedAt: !2368)
!2387 = !DILocation(line: 789, column: 12, scope: !2355)
!2388 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 793, column: 10, scope: !2355)
!2390 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !2389)
!2391 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !2389)
!2392 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !2389)
!2393 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !2389)
!2394 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !2389)
!2395 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !2389)
!2396 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !2389)
!2397 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !2389)
!2398 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !2389)
!2399 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !2389)
!2400 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !2389)
!2401 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !2389)
!2402 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !2389)
!2403 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !2389)
!2404 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !2389)
!2405 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !2389)
!2406 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !2389)
!2407 = !DILocation(line: 0, scope: !395, inlinedAt: !2389)
!2408 = !DILocation(line: 789, column: 16, scope: !2355)
!2409 = !DILocation(line: 794, column: 18, scope: !2355)
!2410 = !DILocation(line: 794, column: 14, scope: !2355)
!2411 = !DILocation(line: 789, column: 20, scope: !2355)
!2412 = !DILocation(line: 795, column: 11, scope: !2355)
!2413 = !DILocation(line: 790, column: 9, scope: !2355)
!2414 = !DILocation(line: 796, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 796, column: 9)
!2416 = !DILocation(line: 796, column: 28, scope: !2415)
!2417 = !DILocation(line: 796, column: 37, scope: !2415)
!2418 = !DILocation(line: 796, column: 26, scope: !2415)
!2419 = !DILocation(line: 796, column: 9, scope: !2355)
!2420 = !DILocation(line: 798, column: 1, scope: !2355)
!2421 = distinct !DISubprogram(name: "sdssplitlen", scope: !3, file: !3, line: 816, type: !2422, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2426)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2424, !76, !24, !76, !29, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2443}
!2427 = !DILocalVariable(name: "s", arg: 1, scope: !2421, file: !3, line: 816, type: !76)
!2428 = !DILocalVariable(name: "len", arg: 2, scope: !2421, file: !3, line: 816, type: !24)
!2429 = !DILocalVariable(name: "sep", arg: 3, scope: !2421, file: !3, line: 816, type: !76)
!2430 = !DILocalVariable(name: "seplen", arg: 4, scope: !2421, file: !3, line: 816, type: !29)
!2431 = !DILocalVariable(name: "count", arg: 5, scope: !2421, file: !3, line: 816, type: !2425)
!2432 = !DILocalVariable(name: "elements", scope: !2421, file: !3, line: 817, type: !29)
!2433 = !DILocalVariable(name: "slots", scope: !2421, file: !3, line: 817, type: !29)
!2434 = !DILocalVariable(name: "start", scope: !2421, file: !3, line: 818, type: !28)
!2435 = !DILocalVariable(name: "j", scope: !2421, file: !3, line: 818, type: !28)
!2436 = !DILocalVariable(name: "tokens", scope: !2421, file: !3, line: 819, type: !2424)
!2437 = !DILocalVariable(name: "newtokens", scope: !2438, file: !3, line: 833, type: !2424)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 832, column: 33)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 832, column: 13)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 830, column: 44)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 830, column: 5)
!2442 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 830, column: 5)
!2443 = !DILocalVariable(name: "i", scope: !2444, file: !3, line: 858, type: !29)
!2444 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 857, column: 5)
!2445 = !DILocation(line: 816, column: 30, scope: !2421)
!2446 = !DILocation(line: 816, column: 41, scope: !2421)
!2447 = !DILocation(line: 816, column: 58, scope: !2421)
!2448 = !DILocation(line: 816, column: 67, scope: !2421)
!2449 = !DILocation(line: 816, column: 80, scope: !2421)
!2450 = !DILocation(line: 817, column: 9, scope: !2421)
!2451 = !DILocation(line: 817, column: 23, scope: !2421)
!2452 = !DILocation(line: 818, column: 10, scope: !2421)
!2453 = !DILocation(line: 821, column: 16, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 821, column: 9)
!2455 = !DILocation(line: 821, column: 27, scope: !2454)
!2456 = !DILocation(line: 821, column: 20, scope: !2454)
!2457 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 823, column: 14, scope: !2421)
!2459 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !2458)
!2460 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !2458)
!2462 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !2461)
!2463 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !2461)
!2464 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !2461)
!2465 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !2461)
!2466 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !2461)
!2467 = !DILocation(line: 819, column: 10, scope: !2421)
!2468 = !DILocation(line: 824, column: 9, scope: !2421)
!2469 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !2461)
!2471 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !2470)
!2472 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !2470)
!2473 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !2470)
!2474 = !DILocation(line: 823, column: 14, scope: !2421)
!2475 = !DILocation(line: 824, column: 16, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 824, column: 9)
!2477 = !DILocation(line: 826, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 826, column: 9)
!2479 = !DILocation(line: 826, column: 9, scope: !2421)
!2480 = !DILocation(line: 818, column: 21, scope: !2421)
!2481 = !DILocation(line: 830, column: 33, scope: !2441)
!2482 = !DILocation(line: 830, column: 26, scope: !2441)
!2483 = !DILocation(line: 830, column: 25, scope: !2441)
!2484 = !DILocation(line: 830, column: 19, scope: !2441)
!2485 = !DILocation(line: 830, column: 5, scope: !2442)
!2486 = !DILocation(line: 827, column: 16, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 826, column: 19)
!2488 = !DILocation(line: 828, column: 9, scope: !2487)
!2489 = !DILocation(line: 832, column: 29, scope: !2439)
!2490 = !DILocation(line: 832, column: 19, scope: !2439)
!2491 = !DILocation(line: 832, column: 13, scope: !2440)
!2492 = !DILocation(line: 835, column: 19, scope: !2438)
!2493 = !DILocation(line: 48, column: 37, scope: !652, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 836, column: 25, scope: !2438)
!2495 = !DILocation(line: 49, column: 20, scope: !652, inlinedAt: !2494)
!2496 = !DILocation(line: 190, column: 49, scope: !662, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 49, column: 9, scope: !652, inlinedAt: !2494)
!2498 = !DILocation(line: 190, column: 58, scope: !662, inlinedAt: !2497)
!2499 = !DILocation(line: 192, column: 6, scope: !673, inlinedAt: !2497)
!2500 = !DILocation(line: 192, column: 6, scope: !662, inlinedAt: !2497)
!2501 = !DILocation(line: 193, column: 3, scope: !672, inlinedAt: !2497)
!2502 = !DILocation(line: 193, column: 9, scope: !672, inlinedAt: !2497)
!2503 = !DILocation(line: 836, column: 54, scope: !2438)
!2504 = !DILocation(line: 836, column: 53, scope: !2438)
!2505 = !DILocation(line: 190, column: 70, scope: !662, inlinedAt: !2497)
!2506 = !DILocation(line: 48, column: 49, scope: !652, inlinedAt: !2494)
!2507 = !DILocation(line: 183, column: 52, scope: !678, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 196, column: 9, scope: !662, inlinedAt: !2497)
!2509 = !DILocation(line: 184, column: 13, scope: !678, inlinedAt: !2508)
!2510 = !DILocation(line: 184, column: 25, scope: !678, inlinedAt: !2508)
!2511 = !DILocation(line: 187, column: 12, scope: !678, inlinedAt: !2508)
!2512 = !DILocation(line: 187, column: 9, scope: !678, inlinedAt: !2508)
!2513 = !DILocation(line: 837, column: 27, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 837, column: 17)
!2515 = !DILocation(line: 836, column: 25, scope: !2438)
!2516 = !DILocation(line: 0, scope: !2421)
!2517 = !DILocation(line: 823, column: 12, scope: !2421)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 841, column: 13)
!2520 = !DILocation(line: 841, column: 26, scope: !2519)
!2521 = !DILocation(line: 841, column: 29, scope: !2519)
!2522 = !DILocation(line: 841, column: 39, scope: !2519)
!2523 = !DILocation(line: 841, column: 36, scope: !2519)
!2524 = !DILocation(line: 841, column: 47, scope: !2519)
!2525 = !DILocation(line: 841, column: 51, scope: !2519)
!2526 = !DILocation(line: 841, column: 74, scope: !2519)
!2527 = !DILocation(line: 841, column: 13, scope: !2440)
!2528 = !DILocation(line: 842, column: 43, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 841, column: 81)
!2530 = !DILocation(line: 842, column: 51, scope: !2529)
!2531 = !DILocation(line: 842, column: 32, scope: !2529)
!2532 = !DILocation(line: 842, column: 13, scope: !2529)
!2533 = !DILocation(line: 842, column: 30, scope: !2529)
!2534 = !DILocation(line: 843, column: 34, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 843, column: 17)
!2536 = !DILocation(line: 843, column: 17, scope: !2529)
!2537 = !DILocation(line: 844, column: 21, scope: !2529)
!2538 = !DILocation(line: 845, column: 22, scope: !2529)
!2539 = !DILocation(line: 846, column: 25, scope: !2529)
!2540 = !DILocation(line: 847, column: 9, scope: !2529)
!2541 = !DILocation(line: 0, scope: !2442)
!2542 = !DILocation(line: 830, column: 40, scope: !2441)
!2543 = distinct !{!2543, !2485, !2544}
!2544 = !DILocation(line: 848, column: 5, scope: !2442)
!2545 = !DILocation(line: 0, scope: !2529)
!2546 = !DILocation(line: 850, column: 35, scope: !2421)
!2547 = !DILocation(line: 850, column: 45, scope: !2421)
!2548 = !DILocation(line: 850, column: 24, scope: !2421)
!2549 = !DILocation(line: 850, column: 5, scope: !2421)
!2550 = !DILocation(line: 850, column: 22, scope: !2421)
!2551 = !DILocation(line: 851, column: 26, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 851, column: 9)
!2553 = !DILocation(line: 851, column: 9, scope: !2421)
!2554 = !DILocation(line: 852, column: 13, scope: !2421)
!2555 = !DILocation(line: 853, column: 12, scope: !2421)
!2556 = !DILocation(line: 854, column: 5, scope: !2421)
!2557 = !DILocation(line: 858, column: 13, scope: !2444)
!2558 = !DILocation(line: 859, column: 23, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 859, column: 9)
!2560 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 859, column: 9)
!2561 = !DILocation(line: 859, column: 9, scope: !2560)
!2562 = !DILocation(line: 859, column: 48, scope: !2559)
!2563 = !DILocation(line: 165, column: 18, scope: !412, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 859, column: 40, scope: !2559)
!2565 = !DILocation(line: 166, column: 11, scope: !419, inlinedAt: !2564)
!2566 = !DILocation(line: 166, column: 9, scope: !412, inlinedAt: !2564)
!2567 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 167, column: 5, scope: !412, inlinedAt: !2564)
!2569 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2568)
!2571 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2570)
!2573 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2572)
!2574 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2572)
!2575 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2572)
!2576 = !DILocation(line: 167, column: 32, scope: !412, inlinedAt: !2564)
!2577 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 167, column: 21, scope: !412, inlinedAt: !2564)
!2579 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !2578)
!2580 = !DILocation(line: 167, column: 20, scope: !412, inlinedAt: !2564)
!2581 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2572)
!2582 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2570)
!2583 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2568)
!2584 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2572)
!2585 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2572)
!2586 = !DILocation(line: 168, column: 1, scope: !412, inlinedAt: !2564)
!2587 = !DILocation(line: 859, column: 36, scope: !2559)
!2588 = distinct !{!2588, !2561, !2589}
!2589 = !DILocation(line: 859, column: 57, scope: !2560)
!2590 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 860, column: 9, scope: !2444)
!2592 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2591)
!2593 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2591)
!2595 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2594)
!2596 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2594)
!2598 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2597)
!2599 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2597)
!2600 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2597)
!2601 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2597)
!2602 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2597)
!2603 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2597)
!2604 = !DILocation(line: 861, column: 16, scope: !2444)
!2605 = !DILocation(line: 864, column: 1, scope: !2421)
!2606 = distinct !DISubprogram(name: "sdsfreesplitres", scope: !3, file: !3, line: 867, type: !2607, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2424, !29}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "tokens", arg: 1, scope: !2606, file: !3, line: 867, type: !2424)
!2611 = !DILocalVariable(name: "count", arg: 2, scope: !2606, file: !3, line: 867, type: !29)
!2612 = !DILocation(line: 867, column: 27, scope: !2606)
!2613 = !DILocation(line: 867, column: 39, scope: !2606)
!2614 = !DILocation(line: 868, column: 10, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 868, column: 9)
!2616 = !DILocation(line: 868, column: 9, scope: !2606)
!2617 = !DILocation(line: 869, column: 5, scope: !2606)
!2618 = !DILocation(line: 869, column: 16, scope: !2606)
!2619 = !DILocation(line: 870, column: 17, scope: !2606)
!2620 = !DILocation(line: 165, column: 18, scope: !412, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 870, column: 9, scope: !2606)
!2622 = !DILocation(line: 166, column: 11, scope: !419, inlinedAt: !2621)
!2623 = !DILocation(line: 166, column: 9, scope: !412, inlinedAt: !2621)
!2624 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 167, column: 5, scope: !412, inlinedAt: !2621)
!2626 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2625)
!2628 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2627)
!2630 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2629)
!2631 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2629)
!2632 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2629)
!2633 = !DILocation(line: 167, column: 32, scope: !412, inlinedAt: !2621)
!2634 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 167, column: 21, scope: !412, inlinedAt: !2621)
!2636 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !2635)
!2637 = !DILocation(line: 167, column: 20, scope: !412, inlinedAt: !2621)
!2638 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2629)
!2639 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2627)
!2640 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2625)
!2641 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2629)
!2642 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2629)
!2643 = !DILocation(line: 168, column: 1, scope: !412, inlinedAt: !2621)
!2644 = distinct !{!2644, !2617, !2645}
!2645 = !DILocation(line: 870, column: 30, scope: !2606)
!2646 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 871, column: 5, scope: !2606)
!2648 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2647)
!2650 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2649)
!2652 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2651)
!2653 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2651)
!2654 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2651)
!2655 = !DILocation(line: 871, column: 12, scope: !2606)
!2656 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2651)
!2657 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2649)
!2658 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2647)
!2659 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2651)
!2660 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2651)
!2661 = !DILocation(line: 872, column: 1, scope: !2606)
!2662 = distinct !DISubprogram(name: "sdscatrepr", scope: !3, file: !3, line: 880, type: !1234, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "s", arg: 1, scope: !2662, file: !3, line: 880, type: !110)
!2665 = !DILocalVariable(name: "p", arg: 2, scope: !2662, file: !3, line: 880, type: !76)
!2666 = !DILocalVariable(name: "len", arg: 3, scope: !2662, file: !3, line: 880, type: !113)
!2667 = !DILocation(line: 880, column: 20, scope: !2662)
!2668 = !DILocation(line: 880, column: 35, scope: !2662)
!2669 = !DILocation(line: 880, column: 45, scope: !2662)
!2670 = !DILocation(line: 881, column: 9, scope: !2662)
!2671 = !DILocation(line: 882, column: 5, scope: !2662)
!2672 = !DILocation(line: 882, column: 14, scope: !2662)
!2673 = !DILocation(line: 883, column: 16, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 882, column: 18)
!2675 = !DILocation(line: 883, column: 9, scope: !2674)
!2676 = !DILocation(line: 886, column: 17, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 883, column: 20)
!2678 = !DILocation(line: 887, column: 13, scope: !2677)
!2679 = !DILocation(line: 888, column: 24, scope: !2677)
!2680 = !DILocation(line: 888, column: 46, scope: !2677)
!2681 = !DILocation(line: 889, column: 24, scope: !2677)
!2682 = !DILocation(line: 889, column: 46, scope: !2677)
!2683 = !DILocation(line: 890, column: 24, scope: !2677)
!2684 = !DILocation(line: 890, column: 46, scope: !2677)
!2685 = !DILocation(line: 891, column: 24, scope: !2677)
!2686 = !DILocation(line: 891, column: 46, scope: !2677)
!2687 = !DILocation(line: 892, column: 24, scope: !2677)
!2688 = !DILocation(line: 892, column: 46, scope: !2677)
!2689 = !DILocation(line: 894, column: 17, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 894, column: 17)
!2691 = !DILocation(line: 894, column: 17, scope: !2677)
!2692 = !DILocation(line: 895, column: 21, scope: !2690)
!2693 = !DILocation(line: 895, column: 17, scope: !2690)
!2694 = !DILocation(line: 897, column: 46, scope: !2690)
!2695 = !DILocation(line: 897, column: 21, scope: !2690)
!2696 = !DILocation(line: 0, scope: !2677)
!2697 = !DILocation(line: 900, column: 10, scope: !2674)
!2698 = distinct !{!2698, !2671, !2699}
!2699 = !DILocation(line: 901, column: 5, scope: !2662)
!2700 = !DILocation(line: 0, scope: !2690)
!2701 = !DILocation(line: 902, column: 12, scope: !2662)
!2702 = !DILocation(line: 902, column: 5, scope: !2662)
!2703 = distinct !DISubprogram(name: "is_hex_digit", scope: !3, file: !3, line: 907, type: !162, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2704)
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "c", arg: 1, scope: !2703, file: !3, line: 907, type: !16)
!2706 = !DILocation(line: 907, column: 23, scope: !2703)
!2707 = !DILocation(line: 908, column: 22, scope: !2703)
!2708 = !DILocation(line: 908, column: 5, scope: !2703)
!2709 = distinct !DISubprogram(name: "hex_digit_to_int", scope: !3, file: !3, line: 914, type: !162, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2710)
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "c", arg: 1, scope: !2709, file: !3, line: 914, type: !16)
!2712 = !DILocation(line: 914, column: 27, scope: !2709)
!2713 = !DILocation(line: 915, column: 12, scope: !2709)
!2714 = !DILocation(line: 915, column: 5, scope: !2709)
!2715 = !DILocation(line: 917, column: 15, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 915, column: 15)
!2717 = !DILocation(line: 918, column: 15, scope: !2716)
!2718 = !DILocation(line: 919, column: 15, scope: !2716)
!2719 = !DILocation(line: 920, column: 15, scope: !2716)
!2720 = !DILocation(line: 921, column: 15, scope: !2716)
!2721 = !DILocation(line: 922, column: 15, scope: !2716)
!2722 = !DILocation(line: 923, column: 15, scope: !2716)
!2723 = !DILocation(line: 924, column: 15, scope: !2716)
!2724 = !DILocation(line: 925, column: 15, scope: !2716)
!2725 = !DILocation(line: 926, column: 25, scope: !2716)
!2726 = !DILocation(line: 927, column: 25, scope: !2716)
!2727 = !DILocation(line: 928, column: 25, scope: !2716)
!2728 = !DILocation(line: 929, column: 25, scope: !2716)
!2729 = !DILocation(line: 930, column: 25, scope: !2716)
!2730 = !DILocation(line: 931, column: 25, scope: !2716)
!2731 = !DILocation(line: 0, scope: !2716)
!2732 = !DILocation(line: 934, column: 1, scope: !2709)
!2733 = distinct !DISubprogram(name: "sdssplitargs", scope: !3, file: !3, line: 955, type: !2734, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!2424, !76, !2425}
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2743, !2747, !2748, !2749, !2755}
!2737 = !DILocalVariable(name: "line", arg: 1, scope: !2733, file: !3, line: 955, type: !76)
!2738 = !DILocalVariable(name: "argc", arg: 2, scope: !2733, file: !3, line: 955, type: !2425)
!2739 = !DILocalVariable(name: "p", scope: !2733, file: !3, line: 956, type: !76)
!2740 = !DILocalVariable(name: "current", scope: !2733, file: !3, line: 957, type: !15)
!2741 = !DILocalVariable(name: "vector", scope: !2733, file: !3, line: 958, type: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!2743 = !DILocalVariable(name: "inq", scope: !2744, file: !3, line: 966, type: !29)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 964, column: 17)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 964, column: 13)
!2746 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 961, column: 14)
!2747 = !DILocalVariable(name: "insq", scope: !2744, file: !3, line: 967, type: !29)
!2748 = !DILocalVariable(name: "done", scope: !2744, file: !3, line: 968, type: !29)
!2749 = !DILocalVariable(name: "byte", scope: !2750, file: !3, line: 977, type: !18)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 976, column: 21)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 973, column: 25)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 972, column: 26)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 972, column: 21)
!2754 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 971, column: 26)
!2755 = !DILocalVariable(name: "c", scope: !2756, file: !3, line: 984, type: !16)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 983, column: 54)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 983, column: 32)
!2758 = !DILocation(line: 955, column: 31, scope: !2733)
!2759 = !DILocation(line: 955, column: 42, scope: !2733)
!2760 = !DILocation(line: 956, column: 17, scope: !2733)
!2761 = !DILocation(line: 957, column: 11, scope: !2733)
!2762 = !DILocation(line: 958, column: 12, scope: !2733)
!2763 = !DILocation(line: 0, scope: !2744)
!2764 = !DILocation(line: 963, column: 15, scope: !2746)
!2765 = !DILocation(line: 963, column: 18, scope: !2746)
!2766 = !DILocation(line: 963, column: 21, scope: !2746)
!2767 = !DILocation(line: 963, column: 9, scope: !2746)
!2768 = !DILocation(line: 963, column: 35, scope: !2746)
!2769 = distinct !{!2769, !2767, !2768}
!2770 = !DILocation(line: 964, column: 13, scope: !2745)
!2771 = !DILocation(line: 964, column: 13, scope: !2746)
!2772 = !DILocation(line: 966, column: 17, scope: !2744)
!2773 = !DILocation(line: 967, column: 17, scope: !2744)
!2774 = !DILocation(line: 968, column: 17, scope: !2744)
!2775 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 150, column: 12, scope: !325, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 970, column: 44, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 970, column: 17)
!2779 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !2776)
!2780 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !2776)
!2782 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !2781)
!2783 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !2781)
!2785 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !2784)
!2786 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !2784)
!2787 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !2784)
!2788 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !2784)
!2789 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !2784)
!2790 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !2776)
!2791 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !2776)
!2792 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !2784)
!2794 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !2793)
!2795 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !2793)
!2796 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !2793)
!2797 = !DILocation(line: 104, column: 12, scope: !277, inlinedAt: !2776)
!2798 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !2776)
!2799 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !2776)
!2800 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !2776)
!2801 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !2776)
!2802 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !2776)
!2803 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !2776)
!2804 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !2776)
!2805 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !2776)
!2806 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !2776)
!2807 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !2776)
!2808 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !2776)
!2809 = !DILocation(line: 972, column: 21, scope: !2753)
!2810 = !DILocation(line: 972, column: 21, scope: !2754)
!2811 = !DILocation(line: 973, column: 25, scope: !2751)
!2812 = !DILocation(line: 973, column: 36, scope: !2751)
!2813 = !DILocation(line: 973, column: 42, scope: !2751)
!2814 = !DILocation(line: 973, column: 39, scope: !2751)
!2815 = !DILocation(line: 973, column: 53, scope: !2751)
!2816 = !DILocation(line: 974, column: 62, scope: !2751)
!2817 = !DILocation(line: 974, column: 59, scope: !2751)
!2818 = !DILocation(line: 907, column: 23, scope: !2703, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 974, column: 46, scope: !2751)
!2820 = !DILocation(line: 908, column: 22, scope: !2703, inlinedAt: !2819)
!2821 = !DILocation(line: 974, column: 46, scope: !2751)
!2822 = !DILocation(line: 974, column: 67, scope: !2751)
!2823 = !DILocation(line: 975, column: 62, scope: !2751)
!2824 = !DILocation(line: 975, column: 59, scope: !2751)
!2825 = !DILocation(line: 907, column: 23, scope: !2703, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 975, column: 46, scope: !2751)
!2827 = !DILocation(line: 908, column: 22, scope: !2703, inlinedAt: !2826)
!2828 = !DILocation(line: 975, column: 46, scope: !2751)
!2829 = !DILocation(line: 973, column: 25, scope: !2752)
!2830 = !DILocation(line: 977, column: 39, scope: !2750)
!2831 = !DILocation(line: 977, column: 25, scope: !2750)
!2832 = !DILocation(line: 979, column: 33, scope: !2750)
!2833 = !DILocation(line: 979, column: 57, scope: !2750)
!2834 = !DILocation(line: 980, column: 33, scope: !2750)
!2835 = !DILocation(line: 979, column: 61, scope: !2750)
!2836 = !DILocation(line: 979, column: 32, scope: !2750)
!2837 = !DILocation(line: 979, column: 30, scope: !2750)
!2838 = !DILocation(line: 981, column: 35, scope: !2750)
!2839 = !DILocation(line: 983, column: 21, scope: !2751)
!2840 = !DILocation(line: 983, column: 21, scope: !2750)
!2841 = !DILocation(line: 984, column: 30, scope: !2756)
!2842 = !DILocation(line: 984, column: 25, scope: !2756)
!2843 = !DILocation(line: 987, column: 32, scope: !2756)
!2844 = !DILocation(line: 987, column: 25, scope: !2756)
!2845 = !DILocation(line: 988, column: 37, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 987, column: 36)
!2847 = !DILocation(line: 988, column: 45, scope: !2846)
!2848 = !DILocation(line: 989, column: 37, scope: !2846)
!2849 = !DILocation(line: 989, column: 45, scope: !2846)
!2850 = !DILocation(line: 990, column: 37, scope: !2846)
!2851 = !DILocation(line: 990, column: 45, scope: !2846)
!2852 = !DILocation(line: 991, column: 37, scope: !2846)
!2853 = !DILocation(line: 991, column: 45, scope: !2846)
!2854 = !DILocation(line: 992, column: 37, scope: !2846)
!2855 = !DILocation(line: 992, column: 45, scope: !2846)
!2856 = !DILocation(line: 993, column: 36, scope: !2846)
!2857 = !DILocation(line: 993, column: 42, scope: !2846)
!2858 = !DILocation(line: 995, column: 35, scope: !2756)
!2859 = !DILocation(line: 996, column: 21, scope: !2757)
!2860 = !DILocation(line: 996, column: 21, scope: !2756)
!2861 = !DILocation(line: 999, column: 32, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 999, column: 29)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 996, column: 43)
!2864 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 996, column: 32)
!2865 = !DILocation(line: 999, column: 29, scope: !2862)
!2866 = !DILocation(line: 999, column: 36, scope: !2862)
!2867 = !DILocation(line: 999, column: 40, scope: !2862)
!2868 = !DILocation(line: 999, column: 29, scope: !2863)
!2869 = !DILocation(line: 1005, column: 35, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 1004, column: 28)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1001, column: 32)
!2872 = !DILocation(line: 1007, column: 28, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 1007, column: 28)
!2874 = !DILocation(line: 0, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1022, column: 24)
!2876 = !DILocation(line: 1007, column: 28, scope: !2753)
!2877 = !DILocation(line: 1008, column: 36, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 1008, column: 25)
!2879 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1007, column: 34)
!2880 = !DILocation(line: 1008, column: 42, scope: !2878)
!2881 = !DILocation(line: 1008, column: 39, scope: !2878)
!2882 = !DILocation(line: 1008, column: 46, scope: !2878)
!2883 = !DILocation(line: 1008, column: 25, scope: !2879)
!2884 = !DILocation(line: 1010, column: 35, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1008, column: 55)
!2886 = !DILocation(line: 1011, column: 21, scope: !2885)
!2887 = !DILocation(line: 1014, column: 32, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1014, column: 29)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1011, column: 44)
!2890 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1011, column: 32)
!2891 = !DILocation(line: 1014, column: 29, scope: !2888)
!2892 = !DILocation(line: 1014, column: 36, scope: !2888)
!2893 = !DILocation(line: 1014, column: 40, scope: !2888)
!2894 = !DILocation(line: 1014, column: 29, scope: !2889)
!2895 = !DILocation(line: 1020, column: 35, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1019, column: 28)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1016, column: 32)
!2898 = !DILocation(line: 1023, column: 21, scope: !2875)
!2899 = !DILocation(line: 1036, column: 25, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1023, column: 32)
!2901 = !DILocation(line: 1038, column: 35, scope: !2900)
!2902 = !DILocation(line: 1039, column: 25, scope: !2900)
!2903 = !DILocation(line: 0, scope: !2733)
!2904 = !DILocation(line: 0, scope: !2778)
!2905 = !DILocation(line: 1042, column: 21, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1042, column: 21)
!2907 = !DILocation(line: 1042, column: 26, scope: !2906)
!2908 = !DILocation(line: 1042, column: 21, scope: !2754)
!2909 = !DILocation(line: 971, column: 13, scope: !2744)
!2910 = !DILocation(line: 48, column: 37, scope: !652, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 1045, column: 22, scope: !2744)
!2912 = !DILocation(line: 49, column: 20, scope: !652, inlinedAt: !2911)
!2913 = !DILocation(line: 190, column: 49, scope: !662, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 49, column: 9, scope: !652, inlinedAt: !2911)
!2915 = !DILocation(line: 190, column: 58, scope: !662, inlinedAt: !2914)
!2916 = !DILocation(line: 192, column: 6, scope: !673, inlinedAt: !2914)
!2917 = !DILocation(line: 192, column: 6, scope: !662, inlinedAt: !2914)
!2918 = !DILocation(line: 193, column: 3, scope: !672, inlinedAt: !2914)
!2919 = !DILocation(line: 193, column: 9, scope: !672, inlinedAt: !2914)
!2920 = !DILocation(line: 194, column: 3, scope: !672, inlinedAt: !2914)
!2921 = !DILocation(line: 1045, column: 41, scope: !2744)
!2922 = !DILocation(line: 1045, column: 47, scope: !2744)
!2923 = !DILocation(line: 1045, column: 39, scope: !2744)
!2924 = !DILocation(line: 1045, column: 50, scope: !2744)
!2925 = !DILocation(line: 190, column: 70, scope: !662, inlinedAt: !2914)
!2926 = !DILocation(line: 48, column: 49, scope: !652, inlinedAt: !2911)
!2927 = !DILocation(line: 183, column: 52, scope: !678, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 196, column: 9, scope: !662, inlinedAt: !2914)
!2929 = !DILocation(line: 184, column: 13, scope: !678, inlinedAt: !2928)
!2930 = !DILocation(line: 184, column: 25, scope: !678, inlinedAt: !2928)
!2931 = !DILocation(line: 187, column: 12, scope: !678, inlinedAt: !2928)
!2932 = !DILocation(line: 187, column: 9, scope: !678, inlinedAt: !2928)
!2933 = !DILocation(line: 196, column: 2, scope: !662, inlinedAt: !2914)
!2934 = !DILocation(line: 0, scope: !662, inlinedAt: !2914)
!2935 = !DILocation(line: 1045, column: 22, scope: !2744)
!2936 = !DILocation(line: 1046, column: 20, scope: !2744)
!2937 = !DILocation(line: 1046, column: 13, scope: !2744)
!2938 = !DILocation(line: 1046, column: 27, scope: !2744)
!2939 = !DILocation(line: 1047, column: 20, scope: !2744)
!2940 = !DILocation(line: 1057, column: 18, scope: !2733)
!2941 = !DILocation(line: 1057, column: 5, scope: !2733)
!2942 = !DILocation(line: 1051, column: 24, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1051, column: 17)
!2944 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1049, column: 16)
!2945 = !DILocation(line: 1051, column: 17, scope: !2944)
!2946 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1051, column: 42, scope: !2943)
!2948 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !2947)
!2949 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !2947)
!2951 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !2950)
!2952 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !2950)
!2953 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !2950)
!2954 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !2950)
!2955 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !2950)
!2956 = !DILocation(line: 161, column: 3, scope: !251, inlinedAt: !2950)
!2957 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !2950)
!2959 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !2958)
!2960 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !2958)
!2961 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !2958)
!2962 = !DILocation(line: 163, column: 2, scope: !184, inlinedAt: !2950)
!2963 = !DILocation(line: 1058, column: 17, scope: !2733)
!2964 = !DILocation(line: 165, column: 18, scope: !412, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1058, column: 9, scope: !2733)
!2966 = !DILocation(line: 166, column: 11, scope: !419, inlinedAt: !2965)
!2967 = !DILocation(line: 166, column: 9, scope: !412, inlinedAt: !2965)
!2968 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 167, column: 5, scope: !412, inlinedAt: !2965)
!2970 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2969)
!2972 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2971)
!2974 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2973)
!2975 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2973)
!2976 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2973)
!2977 = !DILocation(line: 167, column: 32, scope: !412, inlinedAt: !2965)
!2978 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 167, column: 21, scope: !412, inlinedAt: !2965)
!2980 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !2979)
!2981 = !DILocation(line: 167, column: 20, scope: !412, inlinedAt: !2965)
!2982 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2973)
!2983 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2971)
!2984 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2969)
!2985 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2973)
!2986 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2973)
!2987 = !DILocation(line: 168, column: 1, scope: !412, inlinedAt: !2965)
!2988 = distinct !{!2988, !2941, !2989}
!2989 = !DILocation(line: 1058, column: 30, scope: !2733)
!2990 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1059, column: 5, scope: !2733)
!2992 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !2991)
!2993 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !2991)
!2995 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !2994)
!2996 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !2994)
!2998 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !2997)
!2999 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !2997)
!3000 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !2997)
!3001 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !2997)
!3002 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !2997)
!3003 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !2997)
!3004 = !DILocation(line: 1060, column: 9, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 1060, column: 9)
!3006 = !DILocation(line: 1060, column: 9, scope: !2733)
!3007 = !DILocation(line: 165, column: 18, scope: !412, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 1060, column: 18, scope: !3005)
!3009 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 167, column: 5, scope: !412, inlinedAt: !3008)
!3011 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !3010)
!3013 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !3012)
!3015 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !3014)
!3016 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !3014)
!3017 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !3014)
!3018 = !DILocation(line: 167, column: 32, scope: !412, inlinedAt: !3008)
!3019 = !DILocation(line: 44, column: 35, scope: !161, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 167, column: 21, scope: !412, inlinedAt: !3008)
!3021 = !DILocation(line: 45, column: 5, scope: !161, inlinedAt: !3020)
!3022 = !DILocation(line: 167, column: 20, scope: !412, inlinedAt: !3008)
!3023 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !3014)
!3024 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !3012)
!3025 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !3010)
!3026 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !3014)
!3027 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !3014)
!3028 = !DILocation(line: 1060, column: 18, scope: !3005)
!3029 = !DILocation(line: 1061, column: 11, scope: !2733)
!3030 = !DILocation(line: 1062, column: 5, scope: !2733)
!3031 = !DILocation(line: 1063, column: 1, scope: !2733)
!3032 = distinct !DISubprogram(name: "sdsmapchars", scope: !3, file: !3, line: 1074, type: !3033, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!110, !110, !76, !76, !113}
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3036 = !DILocalVariable(name: "s", arg: 1, scope: !3032, file: !3, line: 1074, type: !110)
!3037 = !DILocalVariable(name: "from", arg: 2, scope: !3032, file: !3, line: 1074, type: !76)
!3038 = !DILocalVariable(name: "to", arg: 3, scope: !3032, file: !3, line: 1074, type: !76)
!3039 = !DILocalVariable(name: "setlen", arg: 4, scope: !3032, file: !3, line: 1074, type: !113)
!3040 = !DILocalVariable(name: "j", scope: !3032, file: !3, line: 1075, type: !113)
!3041 = !DILocalVariable(name: "i", scope: !3032, file: !3, line: 1075, type: !113)
!3042 = !DILocalVariable(name: "l", scope: !3032, file: !3, line: 1075, type: !113)
!3043 = !DILocation(line: 1074, column: 21, scope: !3032)
!3044 = !DILocation(line: 1074, column: 36, scope: !3032)
!3045 = !DILocation(line: 1074, column: 54, scope: !3032)
!3046 = !DILocation(line: 1074, column: 65, scope: !3032)
!3047 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1075, column: 22, scope: !3032)
!3049 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !3048)
!3050 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !3048)
!3051 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !3048)
!3052 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !3048)
!3053 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !3048)
!3054 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !3048)
!3055 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !3048)
!3056 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !3048)
!3057 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !3048)
!3058 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !3048)
!3059 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !3048)
!3060 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !3048)
!3061 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !3048)
!3062 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !3048)
!3063 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !3048)
!3064 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !3048)
!3065 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !3048)
!3066 = !DILocation(line: 0, scope: !395, inlinedAt: !3048)
!3067 = !DILocation(line: 1075, column: 18, scope: !3032)
!3068 = !DILocation(line: 1075, column: 12, scope: !3032)
!3069 = !DILocation(line: 1077, column: 19, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1077, column: 5)
!3071 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1077, column: 5)
!3072 = !DILocation(line: 1077, column: 5, scope: !3071)
!3073 = !DILocation(line: 1075, column: 15, scope: !3032)
!3074 = !DILocation(line: 1078, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1078, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1077, column: 29)
!3077 = !DILocation(line: 1079, column: 25, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 1079, column: 17)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1078, column: 38)
!3080 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1078, column: 9)
!3081 = !DILocation(line: 1079, column: 22, scope: !3078)
!3082 = !DILocation(line: 1079, column: 17, scope: !3079)
!3083 = !DILocation(line: 1080, column: 24, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 1079, column: 34)
!3085 = !DILocation(line: 1080, column: 22, scope: !3084)
!3086 = !DILocation(line: 1081, column: 17, scope: !3084)
!3087 = !DILocation(line: 1078, column: 34, scope: !3080)
!3088 = !DILocation(line: 1078, column: 23, scope: !3080)
!3089 = distinct !{!3089, !3074, !3090}
!3090 = !DILocation(line: 1083, column: 9, scope: !3075)
!3091 = !DILocation(line: 1077, column: 25, scope: !3070)
!3092 = distinct !{!3092, !3072, !3093}
!3093 = !DILocation(line: 1084, column: 5, scope: !3071)
!3094 = !DILocation(line: 1085, column: 5, scope: !3032)
!3095 = distinct !DISubprogram(name: "sdsjoin", scope: !3, file: !3, line: 1090, type: !3096, isLocal: false, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!110, !2742, !29, !15}
!3098 = !{!3099, !3100, !3101, !3102, !3103}
!3099 = !DILocalVariable(name: "argv", arg: 1, scope: !3095, file: !3, line: 1090, type: !2742)
!3100 = !DILocalVariable(name: "argc", arg: 2, scope: !3095, file: !3, line: 1090, type: !29)
!3101 = !DILocalVariable(name: "sep", arg: 3, scope: !3095, file: !3, line: 1090, type: !15)
!3102 = !DILocalVariable(name: "join", scope: !3095, file: !3, line: 1091, type: !110)
!3103 = !DILocalVariable(name: "j", scope: !3095, file: !3, line: 1092, type: !29)
!3104 = !DILocation(line: 1090, column: 20, scope: !3095)
!3105 = !DILocation(line: 1090, column: 30, scope: !3095)
!3106 = !DILocation(line: 1090, column: 42, scope: !3095)
!3107 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 150, column: 12, scope: !325, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1091, column: 16, scope: !3095)
!3110 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3108)
!3111 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3108)
!3113 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !3112)
!3114 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !3112)
!3116 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !3115)
!3117 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !3115)
!3118 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !3115)
!3119 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !3115)
!3120 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !3115)
!3121 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3108)
!3122 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3108)
!3123 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !3115)
!3125 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !3124)
!3126 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !3124)
!3127 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !3124)
!3128 = !DILocation(line: 104, column: 12, scope: !277, inlinedAt: !3108)
!3129 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3108)
!3130 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3108)
!3131 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3108)
!3132 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3108)
!3133 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3108)
!3134 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3108)
!3135 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3108)
!3136 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3108)
!3137 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3108)
!3138 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3108)
!3139 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3108)
!3140 = !DILocation(line: 0, scope: !107, inlinedAt: !3108)
!3141 = !DILocation(line: 1091, column: 9, scope: !3095)
!3142 = !DILocation(line: 1092, column: 9, scope: !3095)
!3143 = !DILocation(line: 1094, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1094, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1094, column: 5)
!3146 = !DILocation(line: 1094, column: 5, scope: !3145)
!3147 = !DILocation(line: 1095, column: 29, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1094, column: 32)
!3149 = !DILocation(line: 412, column: 16, scope: !1192, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1095, column: 16, scope: !3148)
!3151 = !DILocation(line: 412, column: 31, scope: !1192, inlinedAt: !3150)
!3152 = !DILocation(line: 413, column: 28, scope: !1192, inlinedAt: !3150)
!3153 = !DILocation(line: 413, column: 12, scope: !1192, inlinedAt: !3150)
!3154 = !DILocation(line: 1096, column: 15, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1096, column: 13)
!3156 = !DILocation(line: 1096, column: 13, scope: !3148)
!3157 = !DILocation(line: 412, column: 16, scope: !1192, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 1096, column: 33, scope: !3155)
!3159 = !DILocation(line: 412, column: 31, scope: !1192, inlinedAt: !3158)
!3160 = !DILocation(line: 413, column: 28, scope: !1192, inlinedAt: !3158)
!3161 = !DILocation(line: 413, column: 12, scope: !1192, inlinedAt: !3158)
!3162 = !DILocation(line: 1096, column: 26, scope: !3155)
!3163 = !DILocation(line: 0, scope: !3148)
!3164 = !DILocation(line: 1094, column: 28, scope: !3144)
!3165 = distinct !{!3165, !3146, !3166}
!3166 = !DILocation(line: 1097, column: 5, scope: !3145)
!3167 = !DILocation(line: 0, scope: !3155)
!3168 = !DILocation(line: 1098, column: 5, scope: !3095)
!3169 = distinct !DISubprogram(name: "sdsjoinsds", scope: !3, file: !3, line: 1102, type: !3170, isLocal: false, isDefinition: true, scopeLine: 1102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!110, !2424, !29, !76, !113}
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178}
!3173 = !DILocalVariable(name: "argv", arg: 1, scope: !3169, file: !3, line: 1102, type: !2424)
!3174 = !DILocalVariable(name: "argc", arg: 2, scope: !3169, file: !3, line: 1102, type: !29)
!3175 = !DILocalVariable(name: "sep", arg: 3, scope: !3169, file: !3, line: 1102, type: !76)
!3176 = !DILocalVariable(name: "seplen", arg: 4, scope: !3169, file: !3, line: 1102, type: !113)
!3177 = !DILocalVariable(name: "join", scope: !3169, file: !3, line: 1103, type: !110)
!3178 = !DILocalVariable(name: "j", scope: !3169, file: !3, line: 1104, type: !29)
!3179 = !DILocation(line: 1102, column: 21, scope: !3169)
!3180 = !DILocation(line: 1102, column: 31, scope: !3169)
!3181 = !DILocation(line: 1102, column: 49, scope: !3169)
!3182 = !DILocation(line: 1102, column: 61, scope: !3169)
!3183 = !DILocation(line: 89, column: 40, scope: !107, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 150, column: 12, scope: !325, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1103, column: 16, scope: !3169)
!3186 = !DILocation(line: 92, column: 10, scope: !107, inlinedAt: !3184)
!3187 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 99, column: 10, scope: !107, inlinedAt: !3184)
!3189 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !3188)
!3190 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !3188)
!3192 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !3191)
!3193 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !3191)
!3194 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !3191)
!3195 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !3191)
!3196 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !3191)
!3197 = !DILocation(line: 90, column: 11, scope: !107, inlinedAt: !3184)
!3198 = !DILocation(line: 104, column: 9, scope: !107, inlinedAt: !3184)
!3199 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !3191)
!3201 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !3200)
!3202 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !3200)
!3203 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !3200)
!3204 = !DILocation(line: 104, column: 12, scope: !277, inlinedAt: !3184)
!3205 = !DILocation(line: 105, column: 18, scope: !107, inlinedAt: !3184)
!3206 = !DILocation(line: 91, column: 9, scope: !107, inlinedAt: !3184)
!3207 = !DILocation(line: 106, column: 29, scope: !107, inlinedAt: !3184)
!3208 = !DILocation(line: 97, column: 20, scope: !107, inlinedAt: !3184)
!3209 = !DILocation(line: 113, column: 13, scope: !125, inlinedAt: !3184)
!3210 = !DILocation(line: 114, column: 21, scope: !125, inlinedAt: !3184)
!3211 = !DILocation(line: 115, column: 17, scope: !125, inlinedAt: !3184)
!3212 = !DILocation(line: 115, column: 23, scope: !125, inlinedAt: !3184)
!3213 = !DILocation(line: 116, column: 17, scope: !125, inlinedAt: !3184)
!3214 = !DILocation(line: 143, column: 16, scope: !107, inlinedAt: !3184)
!3215 = !DILocation(line: 144, column: 5, scope: !107, inlinedAt: !3184)
!3216 = !DILocation(line: 0, scope: !107, inlinedAt: !3184)
!3217 = !DILocation(line: 1103, column: 9, scope: !3169)
!3218 = !DILocation(line: 1104, column: 9, scope: !3169)
!3219 = !DILocation(line: 1106, column: 19, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 1106, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1106, column: 5)
!3222 = !DILocation(line: 1106, column: 5, scope: !3221)
!3223 = !DILocation(line: 1107, column: 32, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 1106, column: 32)
!3225 = !DILocation(line: 420, column: 19, scope: !1203, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1107, column: 16, scope: !3224)
!3227 = !DILocation(line: 420, column: 32, scope: !1203, inlinedAt: !3226)
!3228 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 421, column: 28, scope: !1203, inlinedAt: !3226)
!3230 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !3229)
!3231 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !3229)
!3232 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !3229)
!3233 = !DILocation(line: 91, column: 20, scope: !395, inlinedAt: !3229)
!3234 = !DILocation(line: 91, column: 13, scope: !395, inlinedAt: !3229)
!3235 = !DILocation(line: 93, column: 20, scope: !395, inlinedAt: !3229)
!3236 = !DILocation(line: 93, column: 34, scope: !395, inlinedAt: !3229)
!3237 = !DILocation(line: 93, column: 13, scope: !395, inlinedAt: !3229)
!3238 = !DILocation(line: 95, column: 20, scope: !395, inlinedAt: !3229)
!3239 = !DILocation(line: 95, column: 35, scope: !395, inlinedAt: !3229)
!3240 = !DILocation(line: 95, column: 13, scope: !395, inlinedAt: !3229)
!3241 = !DILocation(line: 97, column: 20, scope: !395, inlinedAt: !3229)
!3242 = !DILocation(line: 97, column: 35, scope: !395, inlinedAt: !3229)
!3243 = !DILocation(line: 97, column: 13, scope: !395, inlinedAt: !3229)
!3244 = !DILocation(line: 99, column: 20, scope: !395, inlinedAt: !3229)
!3245 = !DILocation(line: 99, column: 35, scope: !395, inlinedAt: !3229)
!3246 = !DILocation(line: 99, column: 13, scope: !395, inlinedAt: !3229)
!3247 = !DILocation(line: 0, scope: !395, inlinedAt: !3229)
!3248 = !DILocation(line: 421, column: 12, scope: !1203, inlinedAt: !3226)
!3249 = !DILocation(line: 1108, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1108, column: 13)
!3251 = !DILocation(line: 1108, column: 13, scope: !3224)
!3252 = !DILocation(line: 1108, column: 33, scope: !3250)
!3253 = !DILocation(line: 1108, column: 26, scope: !3250)
!3254 = !DILocation(line: 0, scope: !3224)
!3255 = !DILocation(line: 1106, column: 28, scope: !3220)
!3256 = distinct !{!3256, !3222, !3257}
!3257 = !DILocation(line: 1109, column: 5, scope: !3221)
!3258 = !DILocation(line: 0, scope: !3250)
!3259 = !DILocation(line: 1110, column: 5, scope: !3169)
!3260 = distinct !DISubprogram(name: "sds_malloc", scope: !3, file: !3, line: 1118, type: !173, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3261)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "size", arg: 1, scope: !3260, file: !3, line: 1118, type: !113)
!3263 = !DILocation(line: 1118, column: 25, scope: !3260)
!3264 = !DILocation(line: 52, column: 37, scope: !171, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 1118, column: 40, scope: !3260)
!3266 = !DILocation(line: 53, column: 19, scope: !171, inlinedAt: !3265)
!3267 = !DILocation(line: 157, column: 48, scope: !184, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 53, column: 9, scope: !171, inlinedAt: !3265)
!3269 = !DILocation(line: 157, column: 58, scope: !184, inlinedAt: !3268)
!3270 = !DILocation(line: 159, column: 6, scope: !247, inlinedAt: !3268)
!3271 = !DILocation(line: 159, column: 6, scope: !184, inlinedAt: !3268)
!3272 = !DILocation(line: 160, column: 3, scope: !251, inlinedAt: !3268)
!3273 = !DILocation(line: 160, column: 9, scope: !251, inlinedAt: !3268)
!3274 = !DILocation(line: 161, column: 3, scope: !251, inlinedAt: !3268)
!3275 = !DILocation(line: 151, column: 51, scope: !257, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 163, column: 9, scope: !184, inlinedAt: !3268)
!3277 = !DILocation(line: 151, column: 61, scope: !257, inlinedAt: !3276)
!3278 = !DILocation(line: 154, column: 12, scope: !257, inlinedAt: !3276)
!3279 = !DILocation(line: 154, column: 9, scope: !257, inlinedAt: !3276)
!3280 = !DILocation(line: 163, column: 2, scope: !184, inlinedAt: !3268)
!3281 = !DILocation(line: 0, scope: !184, inlinedAt: !3268)
!3282 = !DILocation(line: 1118, column: 33, scope: !3260)
!3283 = distinct !DISubprogram(name: "sds_realloc", scope: !3, file: !3, line: 1119, type: !653, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3284)
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "ptr", arg: 1, scope: !3283, file: !3, line: 1119, type: !14)
!3286 = !DILocalVariable(name: "size", arg: 2, scope: !3283, file: !3, line: 1119, type: !113)
!3287 = !DILocation(line: 1119, column: 25, scope: !3283)
!3288 = !DILocation(line: 1119, column: 37, scope: !3283)
!3289 = !DILocation(line: 48, column: 37, scope: !652, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1119, column: 52, scope: !3283)
!3291 = !DILocation(line: 48, column: 49, scope: !652, inlinedAt: !3290)
!3292 = !DILocation(line: 49, column: 20, scope: !652, inlinedAt: !3290)
!3293 = !DILocation(line: 190, column: 49, scope: !662, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 49, column: 9, scope: !652, inlinedAt: !3290)
!3295 = !DILocation(line: 190, column: 58, scope: !662, inlinedAt: !3294)
!3296 = !DILocation(line: 190, column: 70, scope: !662, inlinedAt: !3294)
!3297 = !DILocation(line: 192, column: 6, scope: !673, inlinedAt: !3294)
!3298 = !DILocation(line: 192, column: 6, scope: !662, inlinedAt: !3294)
!3299 = !DILocation(line: 193, column: 3, scope: !672, inlinedAt: !3294)
!3300 = !DILocation(line: 193, column: 9, scope: !672, inlinedAt: !3294)
!3301 = !DILocation(line: 194, column: 3, scope: !672, inlinedAt: !3294)
!3302 = !DILocation(line: 183, column: 52, scope: !678, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 196, column: 9, scope: !662, inlinedAt: !3294)
!3304 = !DILocation(line: 184, column: 13, scope: !678, inlinedAt: !3303)
!3305 = !DILocation(line: 184, column: 25, scope: !678, inlinedAt: !3303)
!3306 = !DILocation(line: 187, column: 12, scope: !678, inlinedAt: !3303)
!3307 = !DILocation(line: 187, column: 9, scope: !678, inlinedAt: !3303)
!3308 = !DILocation(line: 196, column: 2, scope: !662, inlinedAt: !3294)
!3309 = !DILocation(line: 0, scope: !662, inlinedAt: !3294)
!3310 = !DILocation(line: 1119, column: 45, scope: !3283)
!3311 = distinct !DISubprogram(name: "sds_free", scope: !3, file: !3, line: 1120, type: !423, isLocal: false, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3312)
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "ptr", arg: 1, scope: !3311, file: !3, line: 1120, type: !14)
!3314 = !DILocation(line: 1120, column: 21, scope: !3311)
!3315 = !DILocation(line: 56, column: 33, scope: !422, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1120, column: 28, scope: !3311)
!3317 = !DILocation(line: 57, column: 10, scope: !422, inlinedAt: !3316)
!3318 = !DILocation(line: 237, column: 45, scope: !429, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 57, column: 2, scope: !422, inlinedAt: !3316)
!3320 = !DILocation(line: 237, column: 54, scope: !429, inlinedAt: !3319)
!3321 = !DILocation(line: 231, column: 48, scope: !435, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 239, column: 2, scope: !429, inlinedAt: !3319)
!3323 = !DILocation(line: 231, column: 57, scope: !435, inlinedAt: !3322)
!3324 = !DILocation(line: 233, column: 2, scope: !441, inlinedAt: !3322)
!3325 = !DILocation(line: 233, column: 2, scope: !442, inlinedAt: !3322)
!3326 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !3322)
!3327 = !DILocation(line: 234, column: 5, scope: !435, inlinedAt: !3322)
!3328 = !DILocation(line: 234, column: 2, scope: !435, inlinedAt: !3322)
!3329 = !DILocation(line: 1120, column: 41, scope: !3311)
!3330 = !DILocation(line: 196, column: 2, scope: !72)
!3331 = !DILocation(line: 196, column: 10, scope: !72)
!3332 = !DILocation(line: 197, column: 2, scope: !72)
!3333 = !DILocation(line: 198, column: 2, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !73, line: 198, column: 2)
!3335 = distinct !DILexicalBlock(scope: !72, file: !73, line: 198, column: 2)
!3336 = !DILocation(line: 199, column: 2, scope: !72)
!3337 = !DILocation(line: 200, column: 1, scope: !72)
