; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collate.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__collate_st_char_pri = type { i32, i32 }
%struct.__collate_st_chain_pri = type { [10 x i8], i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__collate_load_error = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@_PathLocale = external dso_local local_unnamed_addr global i8*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/LC_COLLATE\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__collate_version = common dso_local global [10 x i8] zeroinitializer, align 1, !dbg !19
@.str.5 = private unnamed_addr constant [5 x i8] c"1.0\0A\00", align 1
@__collate_substitute_table = common dso_local global [256 x [10 x i8]] zeroinitializer, align 16, !dbg !24
@__collate_char_pri_table = common dso_local global [256 x %struct.__collate_st_char_pri] zeroinitializer, align 16, !dbg !29
@__collate_chain_pri_table = common dso_local global [100 x %struct.__collate_st_chain_pri] zeroinitializer, align 16, !dbg !38
@__collate_substitute_nontrivial = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !16
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__FUNCTION__.__collate_substitute = private unnamed_addr constant [21 x i8] c"__collate_substitute\00", align 1
@__FUNCTION__.__collate_strdup = private unnamed_addr constant [17 x i8] c"__collate_strdup\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"collate_error: \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__collate_load_tables(i8*) local_unnamed_addr #0 !dbg !53 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !282
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #6, !dbg !282
  %4 = load i32, i32* @__collate_load_error, align 4, !dbg !284, !tbaa !285
  store i32 1, i32* @__collate_load_error, align 4, !dbg !290, !tbaa !285
  %5 = icmp eq i8* %0, null, !dbg !291
  br i1 %5, label %6, label %7, !dbg !293

; <label>:6:                                      ; preds = %1
  store i32 %4, i32* @__collate_load_error, align 4, !dbg !294, !tbaa !285
  br label %67, !dbg !296

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @strcmp(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !297
  %9 = icmp eq i32 %8, 0, !dbg !297
  br i1 %9, label %67, label %10, !dbg !299

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* nonnull %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !300
  %12 = icmp eq i32 %11, 0, !dbg !300
  br i1 %12, label %67, label %13, !dbg !301

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** @_PathLocale, align 8, !dbg !302, !tbaa !304
  %15 = icmp eq i8* %14, null, !dbg !302
  br i1 %15, label %16, label %17, !dbg !306

; <label>:16:                                     ; preds = %13
  store i32 %4, i32* @__collate_load_error, align 4, !dbg !307, !tbaa !285
  br label %67, !dbg !309

; <label>:17:                                     ; preds = %13
  %18 = call i8* @strcpy(i8* nonnull %3, i8* nonnull %14) #7, !dbg !310
  %19 = call i8* @strcat(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !311
  %20 = call i8* @strcat(i8* nonnull %3, i8* nonnull %0) #7, !dbg !312
  %21 = call i8* @strcat(i8* nonnull %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !313
  %22 = call %struct.__sFILE* @fopen(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !314
  %23 = icmp eq %struct.__sFILE* %22, null, !dbg !317
  br i1 %23, label %24, label %25, !dbg !318

; <label>:24:                                     ; preds = %17
  store i32 %4, i32* @__collate_load_error, align 4, !dbg !319, !tbaa !285
  br label %67, !dbg !321

; <label>:25:                                     ; preds = %17
  %26 = call i64 @fread(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__collate_version, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* nonnull %22) #7, !dbg !322
  %27 = icmp eq i64 %26, 1, !dbg !322
  br i1 %27, label %30, label %28, !dbg !325

; <label>:28:                                     ; preds = %25
  %29 = call i32 @fclose(%struct.__sFILE* nonnull %22) #7, !dbg !326
  br label %67, !dbg !326

; <label>:30:                                     ; preds = %25
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__collate_version, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !328
  %32 = icmp eq i32 %31, 0, !dbg !330
  br i1 %32, label %35, label %33, !dbg !331

; <label>:33:                                     ; preds = %30
  %34 = call i32 @fclose(%struct.__sFILE* nonnull %22) #7, !dbg !332
  br label %67, !dbg !334

; <label>:35:                                     ; preds = %30
  %36 = call i64 @fread(i8* getelementptr inbounds ([256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 0, i64 0), i64 2560, i64 1, %struct.__sFILE* nonnull %22) #7, !dbg !335
  %37 = icmp eq i64 %36, 1, !dbg !335
  br i1 %37, label %40, label %38, !dbg !338

; <label>:38:                                     ; preds = %35
  %39 = call i32 @fclose(%struct.__sFILE* nonnull %22) #7, !dbg !339
  br label %67, !dbg !339

; <label>:40:                                     ; preds = %35
  %41 = call i64 @fread(i8* bitcast ([256 x %struct.__collate_st_char_pri]* @__collate_char_pri_table to i8*), i64 2048, i64 1, %struct.__sFILE* nonnull %22) #7, !dbg !341
  %42 = icmp eq i64 %41, 1, !dbg !341
  br i1 %42, label %45, label %43, !dbg !344

; <label>:43:                                     ; preds = %40
  %44 = call i32 @fclose(%struct.__sFILE* nonnull %22) #7, !dbg !345
  br label %67, !dbg !345

; <label>:45:                                     ; preds = %40
  %46 = call i64 @fread(i8* getelementptr inbounds ([100 x %struct.__collate_st_chain_pri], [100 x %struct.__collate_st_chain_pri]* @__collate_chain_pri_table, i64 0, i64 0, i32 0, i64 0), i64 2000, i64 1, %struct.__sFILE* nonnull %22) #7, !dbg !347
  %47 = icmp eq i64 %46, 1, !dbg !347
  %48 = call i32 @fclose(%struct.__sFILE* nonnull %22) #7, !dbg !350
  br i1 %47, label %49, label %67, !dbg !351

; <label>:49:                                     ; preds = %45
  store i32 0, i32* @__collate_load_error, align 4, !dbg !352, !tbaa !285
  store i32 0, i32* @__collate_substitute_nontrivial, align 4, !dbg !353, !tbaa !285
  br label %55, !dbg !355

; <label>:50:                                     ; preds = %61
  %51 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %65, i64 0, !dbg !357
  %52 = load i8, i8* %51, align 2, !dbg !357, !tbaa !361
  %53 = zext i8 %52 to i64, !dbg !362
  %54 = icmp eq i64 %65, %53, !dbg !362
  br i1 %54, label %69, label %66, !dbg !363

; <label>:55:                                     ; preds = %74, %49
  %56 = phi i64 [ 0, %49 ], [ %73, %74 ]
  %57 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %56, i64 0, !dbg !357
  %58 = load i8, i8* %57, align 4, !dbg !357, !tbaa !361
  %59 = zext i8 %58 to i64, !dbg !362
  %60 = icmp eq i64 %56, %59, !dbg !362
  br i1 %60, label %61, label %66, !dbg !363

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %56, i64 1, !dbg !364
  %63 = load i8, i8* %62, align 1, !dbg !364, !tbaa !361
  %64 = icmp eq i8 %63, 0, !dbg !365
  %65 = or i64 %56, 1, !dbg !366
  br i1 %64, label %50, label %66, !dbg !367

; <label>:66:                                     ; preds = %69, %50, %61, %55
  store i32 1, i32* @__collate_substitute_nontrivial, align 4, !dbg !368, !tbaa !285
  br label %67, !dbg !370

; <label>:67:                                     ; preds = %74, %66, %45, %7, %10, %43, %38, %33, %28, %24, %16, %6
  %68 = phi i32 [ -1, %24 ], [ -1, %28 ], [ -1, %33 ], [ -1, %38 ], [ -1, %43 ], [ -1, %16 ], [ -1, %6 ], [ 0, %10 ], [ 0, %7 ], [ -1, %45 ], [ 0, %66 ], [ 0, %74 ], !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #6, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  ret i32 %68, !dbg !372

; <label>:69:                                     ; preds = %50
  %70 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %65, i64 1, !dbg !364
  %71 = load i8, i8* %70, align 1, !dbg !364, !tbaa !361
  %72 = icmp eq i8 %71, 0, !dbg !365
  %73 = add nuw nsw i64 %56, 2, !dbg !366
  br i1 %72, label %74, label %66, !dbg !367

; <label>:74:                                     ; preds = %69
  %75 = icmp ult i64 %73, 256, !dbg !373
  br i1 %75, label %55, label %67, !dbg !355, !llvm.loop !374
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__collate_substitute(i8*) local_unnamed_addr #0 !dbg !376 {
  %2 = tail call i64 @strlen(i8* %0) #7, !dbg !389
  %3 = trunc i64 %2 to i32, !dbg !389
  %4 = icmp eq i8* %0, null, !dbg !392
  br i1 %4, label %8, label %5, !dbg !394

; <label>:5:                                      ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !395, !tbaa !361
  %7 = icmp eq i8 %6, 0, !dbg !396
  br i1 %7, label %8, label %13, !dbg !397

; <label>:8:                                      ; preds = %5, %1
  %9 = tail call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !406
  %10 = icmp eq i8* %9, null, !dbg !408
  br i1 %10, label %11, label %12, !dbg !410

; <label>:11:                                     ; preds = %8
  tail call void @__collate_err(i32 71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.__collate_strdup, i64 0, i64 0)) #7, !dbg !411
  unreachable

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %54, !dbg !413

; <label>:13:                                     ; preds = %5
  %14 = sdiv i32 %3, 8, !dbg !414
  %15 = add nsw i32 %14, %3, !dbg !415
  %16 = sext i32 %15 to i64, !dbg !417
  %17 = tail call i8* @malloc(i64 %16) #7, !dbg !418
  %18 = icmp eq i8* %17, null, !dbg !419
  br i1 %18, label %22, label %19, !dbg !421

; <label>:19:                                     ; preds = %13
  %20 = load i8, i8* %0, align 1, !dbg !422, !tbaa !361
  %21 = icmp eq i8 %20, 0, !dbg !423
  br i1 %21, label %54, label %23, !dbg !423

; <label>:22:                                     ; preds = %13
  tail call void @__collate_err(i32 71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.__collate_substitute, i64 0, i64 0)) #8, !dbg !424
  unreachable

; <label>:23:                                     ; preds = %19, %43
  %24 = phi i8 [ %52, %43 ], [ %20, %19 ]
  %25 = phi i8* [ %45, %43 ], [ %17, %19 ]
  %26 = phi i64 [ %34, %43 ], [ 0, %19 ]
  %27 = phi i32 [ %44, %43 ], [ %15, %19 ]
  %28 = phi i8* [ %47, %43 ], [ %0, %19 ]
  %29 = shl i64 %26, 32, !dbg !425
  %30 = ashr exact i64 %29, 32, !dbg !425
  %31 = zext i8 %24 to i64, !dbg !427
  %32 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %31, i64 0, !dbg !427
  %33 = tail call i64 @strlen(i8* nonnull %32) #7, !dbg !428
  %34 = add i64 %33, %30, !dbg !429
  %35 = trunc i64 %34 to i32, !dbg !425
  %36 = icmp sgt i32 %27, %35, !dbg !431
  br i1 %36, label %43, label %37, !dbg !433

; <label>:37:                                     ; preds = %23
  %38 = add nsw i32 %15, %35, !dbg !434
  %39 = sext i32 %38 to i64, !dbg !436
  %40 = tail call i8* @reallocf(i8* %25, i64 %39) #7, !dbg !437
  %41 = icmp eq i8* %40, null, !dbg !438
  br i1 %41, label %42, label %43, !dbg !440

; <label>:42:                                     ; preds = %37
  tail call void @__collate_err(i32 71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.__collate_substitute, i64 0, i64 0)) #8, !dbg !441
  unreachable

; <label>:43:                                     ; preds = %23, %37
  %44 = phi i32 [ %38, %37 ], [ %27, %23 ], !dbg !442
  %45 = phi i8* [ %40, %37 ], [ %25, %23 ], !dbg !442
  %46 = getelementptr inbounds i8, i8* %45, i64 %30, !dbg !443
  %47 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !444
  %48 = load i8, i8* %28, align 1, !dbg !445, !tbaa !361
  %49 = zext i8 %48 to i64, !dbg !446
  %50 = getelementptr inbounds [256 x [10 x i8]], [256 x [10 x i8]]* @__collate_substitute_table, i64 0, i64 %49, i64 0, !dbg !446
  %51 = tail call i8* @strcpy(i8* %46, i8* nonnull %50) #7, !dbg !447
  %52 = load i8, i8* %47, align 1, !dbg !422, !tbaa !361
  %53 = icmp eq i8 %52, 0, !dbg !423
  br i1 %53, label %54, label %23, !dbg !423, !llvm.loop !449

; <label>:54:                                     ; preds = %43, %19, %12
  %55 = phi i8* [ %9, %12 ], [ %17, %19 ], [ %45, %43 ], !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret i8* %55, !dbg !451
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @__collate_strdup(i8*) local_unnamed_addr #0 !dbg !399 {
  %2 = tail call i8* @strdup(i8* %0) #7, !dbg !453
  %3 = icmp eq i8* %2, null, !dbg !455
  br i1 %3, label %4, label %5, !dbg !456

; <label>:4:                                      ; preds = %1
  tail call void @__collate_err(i32 71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.__collate_strdup, i64 0, i64 0)) #8, !dbg !457
  unreachable

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  ret i8* %2, !dbg !458
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone noreturn nounwind
define dso_local void @__collate_err(i32, i8*) local_unnamed_addr #4 !dbg !459 {
  %3 = alloca i32, align 4
  %4 = tail call i32* @__errno() #7, !dbg !470
  %5 = load i32, i32* %4, align 4, !dbg !470, !tbaa !285
  %6 = bitcast i32* %3 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !472
  %7 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 15) #7, !dbg !473
  %8 = tail call i64 @strlen(i8* %1) #7, !dbg !474
  %9 = tail call i64 @write(i32 2, i8* %1, i64 %8) #7, !dbg !475
  %10 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #7, !dbg !476
  %11 = tail call %struct._reent* @__getreent() #7, !dbg !477
  %12 = call i8* @_strerror_r(%struct._reent* %11, i32 %5, i32 1, i32* nonnull %3) #7, !dbg !479
  %13 = call i64 @strlen(i8* %12) #7, !dbg !481
  %14 = call i64 @write(i32 2, i8* %12, i64 %13) #7, !dbg !482
  %15 = call i64 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #7, !dbg !483
  call void @exit(i32 %0) #9, !dbg !484
  unreachable, !dbg !484
}

; Function Attrs: noredzone
declare dso_local i8* @reallocf(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @__collate_lookup(i8*, i32* nocapture, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !485 {
  store i32 1, i32* %1, align 4, !dbg !500, !tbaa !285
  store i32 0, i32* %3, align 4, !dbg !501, !tbaa !285
  store i32 0, i32* %2, align 4, !dbg !502, !tbaa !285
  %5 = load i8, i8* getelementptr inbounds ([100 x %struct.__collate_st_chain_pri], [100 x %struct.__collate_st_chain_pri]* @__collate_chain_pri_table, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !503, !tbaa !361
  %6 = icmp eq i8 %5, 0, !dbg !506
  br i1 %6, label %24, label %7, !dbg !506

; <label>:7:                                      ; preds = %4, %20
  %8 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([100 x %struct.__collate_st_chain_pri], [100 x %struct.__collate_st_chain_pri]* @__collate_chain_pri_table, i64 0, i64 0, i32 0, i64 0), %4 ]
  %9 = tail call i64 @strlen(i8* nonnull %8) #7, !dbg !507
  %10 = tail call i32 @strncmp(i8* %0, i8* nonnull %8, i64 %9) #7, !dbg !510
  %11 = icmp eq i32 %10, 0, !dbg !511
  br i1 %11, label %12, label %20, !dbg !512

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 @strlen(i8* %8) #7, !dbg !514
  %14 = trunc i64 %13 to i32, !dbg !514
  store i32 %14, i32* %1, align 4, !dbg !516, !tbaa !285
  %15 = getelementptr inbounds i8, i8* %8, i64 12, !dbg !517
  %16 = bitcast i8* %15 to i32*, !dbg !517
  %17 = load i32, i32* %16, align 4, !dbg !517, !tbaa !518
  store i32 %17, i32* %2, align 4, !dbg !520, !tbaa !285
  %18 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !521
  %19 = bitcast i8* %18 to i32*, !dbg !521
  br label %32, !dbg !522

; <label>:20:                                     ; preds = %7
  %21 = getelementptr inbounds i8, i8* %8, i64 20, !dbg !523
  %22 = load i8, i8* %21, align 4, !dbg !503, !tbaa !361
  %23 = icmp eq i8 %22, 0, !dbg !506
  br i1 %23, label %24, label %7, !dbg !506, !llvm.loop !524

; <label>:24:                                     ; preds = %20, %4
  %25 = load i8, i8* %0, align 1, !dbg !526, !tbaa !361
  %26 = zext i8 %25 to i64, !dbg !527
  %27 = getelementptr inbounds [256 x %struct.__collate_st_char_pri], [256 x %struct.__collate_st_char_pri]* @__collate_char_pri_table, i64 0, i64 %26, i32 0, !dbg !528
  %28 = load i32, i32* %27, align 8, !dbg !528, !tbaa !529
  store i32 %28, i32* %2, align 4, !dbg !531, !tbaa !285
  %29 = load i8, i8* %0, align 1, !dbg !532, !tbaa !361
  %30 = zext i8 %29 to i64, !dbg !533
  %31 = getelementptr inbounds [256 x %struct.__collate_st_char_pri], [256 x %struct.__collate_st_char_pri]* @__collate_char_pri_table, i64 0, i64 %30, i32 1, !dbg !534
  br label %32, !dbg !535

; <label>:32:                                     ; preds = %24, %12
  %33 = phi i32* [ %31, %24 ], [ %19, %12 ]
  %34 = load i32, i32* %33, align 4, !dbg !536, !tbaa !285
  store i32 %34, i32* %3, align 4, !dbg !536, !tbaa !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  ret void, !dbg !535
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @_strerror_r(%struct._reent*, i32, i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__collate_load_error", scope: !2, file: !3, line: 43, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collate.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !10, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !12, line: 87, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!15 = !{!0, !16, !19, !24, !29, !38}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__collate_substitute_nontrivial", scope: !2, file: !3, line: 44, type: !18, isLocal: false, isDefinition: true)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__collate_version", scope: !2, file: !3, line: 45, type: !21, isLocal: false, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 10)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__collate_substitute_table", scope: !2, file: !3, line: 46, type: !26, isLocal: false, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 20480, elements: !27)
!27 = !{!28, !23}
!28 = !DISubrange(count: 256)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__collate_char_pri_table", scope: !2, file: !3, line: 47, type: !31, isLocal: false, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 16384, elements: !37)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__collate_st_char_pri", file: !33, line: 41, size: 64, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collate.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prim", scope: !32, file: !33, line: 42, baseType: !18, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !32, file: !33, line: 42, baseType: !18, size: 32, offset: 32)
!37 = !{!28}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__collate_chain_pri_table", scope: !2, file: !3, line: 48, type: !40, isLocal: false, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16000, elements: !47)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__collate_st_chain_pri", file: !33, line: 44, size: 160, elements: !42)
!42 = !{!43, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !41, file: !33, line: 45, baseType: !44, size: 80)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 80, elements: !22)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "prim", scope: !41, file: !33, line: 46, baseType: !18, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !41, file: !33, line: 46, baseType: !18, size: 32, offset: 128)
!47 = !{!48}
!48 = !DISubrange(count: 100)
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!53 = distinct !DISubprogram(name: "__collate_load_tables", scope: !3, file: !3, line: 61, type: !54, isLocal: false, isDefinition: true, scopeLine: 63, isOptimized: true, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!18, !14}
!56 = !{!57, !58, !62, !279, !280}
!57 = !DILocalVariable(name: "encoding", arg: 1, scope: !53, file: !3, line: 62, type: !14)
!58 = !DILocalVariable(name: "buf", scope: !53, file: !3, line: 64, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1024)
!62 = !DILocalVariable(name: "fp", scope: !53, file: !3, line: 65, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 66, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !67, line: 287, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !67, line: 181, size: 1408, elements: !69)
!69 = !{!70, !72, !73, !74, !76, !77, !82, !83, !84, !248, !252, !257, !261, !262, !263, !264, !266, !268, !269, !270, !272, !273, !277, !278}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !68, file: !67, line: 182, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !68, file: !67, line: 183, baseType: !18, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !68, file: !67, line: 184, baseType: !18, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !68, file: !67, line: 185, baseType: !75, size: 16, offset: 128)
!75 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !68, file: !67, line: 186, baseType: !75, size: 16, offset: 144)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !68, file: !67, line: 187, baseType: !78, size: 128, offset: 192)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !67, line: 117, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !78, file: !67, line: 118, baseType: !71, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !78, file: !67, line: 119, baseType: !18, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !68, file: !67, line: 188, baseType: !18, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !68, file: !67, line: 195, baseType: !6, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !68, file: !67, line: 197, baseType: !85, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !91, !6, !14, !18}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !89, line: 145, baseType: !90)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !67, line: 569, size: 14912, elements: !93)
!93 = !{!94, !95, !97, !98, !99, !100, !104, !105, !108, !109, !113, !128, !129, !130, !132, !133, !134, !212, !233, !234, !239, !246}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !92, file: !67, line: 571, baseType: !18, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !92, file: !67, line: 576, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !92, file: !67, line: 576, baseType: !96, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !92, file: !67, line: 576, baseType: !96, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !92, file: !67, line: 578, baseType: !18, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !92, file: !67, line: 579, baseType: !101, size: 200, offset: 288)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 200, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 25)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !92, file: !67, line: 582, baseType: !18, size: 32, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !92, file: !67, line: 583, baseType: !106, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !67, line: 40, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !92, file: !67, line: 585, baseType: !18, size: 32, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !92, file: !67, line: 587, baseType: !110, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !91}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !92, file: !67, line: 590, baseType: !114, size: 64, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !67, line: 47, size: 256, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !115, file: !67, line: 49, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !115, file: !67, line: 50, baseType: !18, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !115, file: !67, line: 50, baseType: !18, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !115, file: !67, line: 50, baseType: !18, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !115, file: !67, line: 50, baseType: !18, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !115, file: !67, line: 51, baseType: !123, size: 32, offset: 192)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 32, elements: !126)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !67, line: 25, baseType: !125)
!125 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !92, file: !67, line: 591, baseType: !18, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !92, file: !67, line: 592, baseType: !114, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !92, file: !67, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !92, file: !67, line: 596, baseType: !18, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !92, file: !67, line: 597, baseType: !14, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !92, file: !67, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !67, line: 599, size: 2880, elements: !136)
!136 = !{!137, !203}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !67, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !67, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !171, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !67, line: 603, baseType: !125, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !67, line: 604, baseType: !14, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !67, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !67, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !67, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !67, line: 57, baseType: !18, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !67, line: 58, baseType: !18, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !67, line: 59, baseType: !18, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !67, line: 60, baseType: !18, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !67, line: 61, baseType: !18, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !67, line: 62, baseType: !18, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !67, line: 63, baseType: !18, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !67, line: 64, baseType: !18, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !67, line: 65, baseType: !18, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !67, line: 607, baseType: !18, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !67, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !67, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !67, line: 319, size: 112, elements: !163)
!163 = !{!164, !169, !170}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !67, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !167)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !{!168}
!168 = !DISubrange(count: 3)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !67, line: 321, baseType: !165, size: 48, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !67, line: 322, baseType: !166, size: 16, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !67, line: 610, baseType: !172, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !89, line: 171, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 163, size: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !173, file: !89, line: 165, baseType: !18, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !173, file: !89, line: 170, baseType: !177, size: 32, offset: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !89, line: 166, size: 32, elements: !178)
!178 = !{!179, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !177, file: !89, line: 168, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !181, line: 124, baseType: !125)
!181 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !177, file: !89, line: 169, baseType: !183, size: 32)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 4)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !67, line: 611, baseType: !172, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !67, line: 612, baseType: !172, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !67, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !67, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !67, line: 615, baseType: !18, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !67, line: 616, baseType: !172, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !67, line: 617, baseType: !172, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !67, line: 618, baseType: !172, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !67, line: 619, baseType: !172, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !67, line: 620, baseType: !172, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !67, line: 621, baseType: !18, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !67, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !67, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !67, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !67, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !92, file: !67, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !67, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !67, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !67, line: 95, baseType: !18, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !67, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !67, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !67, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !67, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !67, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !67, line: 78, baseType: !124, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !67, line: 81, baseType: !124, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !92, file: !67, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !92, file: !67, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !18}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !92, file: !67, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !67, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !67, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !67, line: 294, baseType: !18, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !67, line: 295, baseType: !96, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !92, file: !67, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 4224, elements: !167)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !68, file: !67, line: 199, baseType: !249, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!88, !91, !6, !7, !18}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !68, file: !67, line: 202, baseType: !253, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !91, !6, !256, !18}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !89, line: 114, baseType: !90)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !68, file: !67, line: 203, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!18, !91, !6}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !68, file: !67, line: 206, baseType: !78, size: 128, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !68, file: !67, line: 207, baseType: !71, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !68, file: !67, line: 208, baseType: !18, size: 32, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !68, file: !67, line: 211, baseType: !265, size: 24, offset: 928)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !167)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !68, file: !67, line: 212, baseType: !267, size: 8, offset: 952)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !126)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !68, file: !67, line: 215, baseType: !78, size: 128, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !68, file: !67, line: 218, baseType: !18, size: 32, offset: 1088)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !68, file: !67, line: 219, baseType: !271, size: 64, offset: 1152)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !89, line: 44, baseType: !90)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !68, file: !67, line: 222, baseType: !91, size: 64, offset: 1216)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !68, file: !67, line: 226, baseType: !274, size: 32, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !89, line: 175, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !276, line: 12, baseType: !18)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !68, file: !67, line: 228, baseType: !172, size: 64, offset: 1312)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !68, file: !67, line: 229, baseType: !18, size: 32, offset: 1376)
!279 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 66, type: !18)
!280 = !DILocalVariable(name: "save_load_error", scope: !53, file: !3, line: 66, type: !18)
!281 = !DILocation(line: 62, column: 8, scope: !53)
!282 = !DILocation(line: 64, column: 2, scope: !53)
!283 = !DILocation(line: 64, column: 7, scope: !53)
!284 = !DILocation(line: 68, column: 20, scope: !53)
!285 = !{!286, !286, i64 0}
!286 = !{!"int", !287, i64 0}
!287 = !{!"omnipotent char", !288, i64 0}
!288 = !{!"Simple C/C++ TBAA"}
!289 = !DILocation(line: 66, column: 9, scope: !53)
!290 = !DILocation(line: 69, column: 23, scope: !53)
!291 = !DILocation(line: 70, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !53, file: !3, line: 70, column: 6)
!293 = !DILocation(line: 70, column: 6, scope: !53)
!294 = !DILocation(line: 71, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 70, column: 17)
!296 = !DILocation(line: 72, column: 3, scope: !295)
!297 = !DILocation(line: 74, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !53, file: !3, line: 74, column: 6)
!299 = !DILocation(line: 74, column: 29, scope: !298)
!300 = !DILocation(line: 74, column: 33, scope: !298)
!301 = !DILocation(line: 74, column: 6, scope: !53)
!302 = !DILocation(line: 76, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !53, file: !3, line: 76, column: 6)
!304 = !{!305, !305, i64 0}
!305 = !{!"any pointer", !287, i64 0}
!306 = !DILocation(line: 76, column: 6, scope: !53)
!307 = !DILocation(line: 77, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 76, column: 20)
!309 = !DILocation(line: 78, column: 3, scope: !308)
!310 = !DILocation(line: 81, column: 9, scope: !53)
!311 = !DILocation(line: 82, column: 9, scope: !53)
!312 = !DILocation(line: 83, column: 9, scope: !53)
!313 = !DILocation(line: 84, column: 9, scope: !53)
!314 = !DILocation(line: 85, column: 12, scope: !315)
!315 = distinct !DILexicalBlock(scope: !53, file: !3, line: 85, column: 6)
!316 = !DILocation(line: 65, column: 8, scope: !53)
!317 = !DILocation(line: 85, column: 29, scope: !315)
!318 = !DILocation(line: 85, column: 6, scope: !53)
!319 = !DILocation(line: 86, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 85, column: 38)
!321 = !DILocation(line: 87, column: 3, scope: !320)
!322 = !DILocation(line: 89, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 89, column: 2)
!324 = distinct !DILexicalBlock(scope: !53, file: !3, line: 89, column: 2)
!325 = !DILocation(line: 89, column: 2, scope: !324)
!326 = !DILocation(line: 89, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 89, column: 2)
!328 = !DILocation(line: 90, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !53, file: !3, line: 90, column: 6)
!330 = !DILocation(line: 90, column: 49, scope: !329)
!331 = !DILocation(line: 90, column: 6, scope: !53)
!332 = !DILocation(line: 91, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !3, line: 90, column: 55)
!334 = !DILocation(line: 92, column: 3, scope: !333)
!335 = !DILocation(line: 94, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 94, column: 2)
!337 = distinct !DILexicalBlock(scope: !53, file: !3, line: 94, column: 2)
!338 = !DILocation(line: 94, column: 2, scope: !337)
!339 = !DILocation(line: 94, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 94, column: 2)
!341 = !DILocation(line: 96, column: 2, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 96, column: 2)
!343 = distinct !DILexicalBlock(scope: !53, file: !3, line: 96, column: 2)
!344 = !DILocation(line: 96, column: 2, scope: !343)
!345 = !DILocation(line: 96, column: 2, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 96, column: 2)
!347 = !DILocation(line: 98, column: 2, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 98, column: 2)
!349 = distinct !DILexicalBlock(scope: !53, file: !3, line: 98, column: 2)
!350 = !DILocation(line: 0, scope: !53)
!351 = !DILocation(line: 98, column: 2, scope: !349)
!352 = !DILocation(line: 101, column: 23, scope: !53)
!353 = !DILocation(line: 103, column: 34, scope: !53)
!354 = !DILocation(line: 66, column: 6, scope: !53)
!355 = !DILocation(line: 104, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !53, file: !3, line: 104, column: 2)
!357 = !DILocation(line: 105, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 105, column: 7)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 104, column: 38)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 104, column: 2)
!361 = !{!287, !287, i64 0}
!362 = !DILocation(line: 105, column: 40, scope: !358)
!363 = !DILocation(line: 105, column: 45, scope: !358)
!364 = !DILocation(line: 106, column: 7, scope: !358)
!365 = !DILocation(line: 106, column: 40, scope: !358)
!366 = !DILocation(line: 104, column: 34, scope: !360)
!367 = !DILocation(line: 105, column: 7, scope: !359)
!368 = !DILocation(line: 107, column: 36, scope: !369)
!369 = distinct !DILexicalBlock(scope: !358, file: !3, line: 106, column: 46)
!370 = !DILocation(line: 108, column: 4, scope: !369)
!371 = !DILocation(line: 0, scope: !295)
!372 = !DILocation(line: 113, column: 1, scope: !53)
!373 = !DILocation(line: 104, column: 16, scope: !360)
!374 = distinct !{!374, !355, !375}
!375 = !DILocation(line: 110, column: 2, scope: !356)
!376 = distinct !DISubprogram(name: "__collate_substitute", scope: !3, file: !3, line: 116, type: !377, isLocal: false, isDefinition: true, scopeLine: 118, isOptimized: true, unit: !2, retainedNodes: !381)
!377 = !DISubroutineType(types: !378)
!378 = !{!10, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!381 = !{!382, !383, !384, !385, !386, !387}
!382 = !DILocalVariable(name: "s", arg: 1, scope: !376, file: !3, line: 117, type: !379)
!383 = !DILocalVariable(name: "dest_len", scope: !376, file: !3, line: 119, type: !18)
!384 = !DILocalVariable(name: "len", scope: !376, file: !3, line: 119, type: !18)
!385 = !DILocalVariable(name: "nlen", scope: !376, file: !3, line: 119, type: !18)
!386 = !DILocalVariable(name: "delta", scope: !376, file: !3, line: 120, type: !18)
!387 = !DILocalVariable(name: "dest_str", scope: !376, file: !3, line: 121, type: !10)
!388 = !DILocation(line: 117, column: 16, scope: !376)
!389 = !DILocation(line: 120, column: 14, scope: !376)
!390 = !DILocation(line: 120, column: 6, scope: !376)
!391 = !DILocation(line: 121, column: 10, scope: !376)
!392 = !DILocation(line: 123, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !376, file: !3, line: 123, column: 5)
!394 = !DILocation(line: 123, column: 15, scope: !393)
!395 = !DILocation(line: 123, column: 18, scope: !393)
!396 = !DILocation(line: 123, column: 21, scope: !393)
!397 = !DILocation(line: 123, column: 5, scope: !376)
!398 = !DILocalVariable(name: "s", arg: 1, scope: !399, file: !3, line: 169, type: !10)
!399 = distinct !DISubprogram(name: "__collate_strdup", scope: !3, file: !3, line: 168, type: !400, isLocal: false, isDefinition: true, scopeLine: 170, isOptimized: true, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!10, !10}
!402 = !{!398, !403}
!403 = !DILocalVariable(name: "t", scope: !399, file: !3, line: 171, type: !10)
!404 = !DILocation(line: 169, column: 10, scope: !399, inlinedAt: !405)
!405 = distinct !DILocation(line: 124, column: 10, scope: !393)
!406 = !DILocation(line: 171, column: 25, scope: !399, inlinedAt: !405)
!407 = !DILocation(line: 171, column: 10, scope: !399, inlinedAt: !405)
!408 = !DILocation(line: 173, column: 8, scope: !409, inlinedAt: !405)
!409 = distinct !DILexicalBlock(scope: !399, file: !3, line: 173, column: 6)
!410 = !DILocation(line: 173, column: 6, scope: !399, inlinedAt: !405)
!411 = !DILocation(line: 174, column: 3, scope: !409, inlinedAt: !405)
!412 = !DILocation(line: 175, column: 2, scope: !399, inlinedAt: !405)
!413 = !DILocation(line: 124, column: 3, scope: !393)
!414 = !DILocation(line: 125, column: 17, scope: !376)
!415 = !DILocation(line: 125, column: 8, scope: !376)
!416 = !DILocation(line: 119, column: 6, scope: !376)
!417 = !DILocation(line: 126, column: 31, scope: !376)
!418 = !DILocation(line: 126, column: 24, scope: !376)
!419 = !DILocation(line: 127, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !376, file: !3, line: 127, column: 5)
!421 = !DILocation(line: 127, column: 5, scope: !376)
!422 = !DILocation(line: 130, column: 8, scope: !376)
!423 = !DILocation(line: 130, column: 2, scope: !376)
!424 = !DILocation(line: 128, column: 3, scope: !420)
!425 = !DILocation(line: 131, column: 10, scope: !426)
!426 = distinct !DILexicalBlock(scope: !376, file: !3, line: 130, column: 12)
!427 = !DILocation(line: 132, column: 9, scope: !426)
!428 = !DILocation(line: 131, column: 16, scope: !426)
!429 = !DILocation(line: 131, column: 14, scope: !426)
!430 = !DILocation(line: 119, column: 21, scope: !376)
!431 = !DILocation(line: 133, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !3, line: 133, column: 7)
!433 = !DILocation(line: 133, column: 7, scope: !426)
!434 = !DILocation(line: 134, column: 50, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !3, line: 133, column: 25)
!436 = !DILocation(line: 134, column: 34, scope: !435)
!437 = !DILocation(line: 134, column: 15, scope: !435)
!438 = !DILocation(line: 135, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 135, column: 7)
!440 = !DILocation(line: 135, column: 7, scope: !435)
!441 = !DILocation(line: 136, column: 5, scope: !439)
!442 = !DILocation(line: 0, scope: !376)
!443 = !DILocation(line: 138, column: 28, scope: !426)
!444 = !DILocation(line: 139, column: 54, scope: !426)
!445 = !DILocation(line: 139, column: 52, scope: !426)
!446 = !DILocation(line: 139, column: 25, scope: !426)
!447 = !DILocation(line: 138, column: 3, scope: !426)
!448 = !DILocation(line: 119, column: 16, scope: !376)
!449 = distinct !{!449, !423, !450}
!450 = !DILocation(line: 141, column: 2, scope: !376)
!451 = !DILocation(line: 143, column: 1, scope: !376)
!452 = !DILocation(line: 169, column: 10, scope: !399)
!453 = !DILocation(line: 171, column: 25, scope: !399)
!454 = !DILocation(line: 171, column: 10, scope: !399)
!455 = !DILocation(line: 173, column: 8, scope: !409)
!456 = !DILocation(line: 173, column: 6, scope: !399)
!457 = !DILocation(line: 174, column: 3, scope: !409)
!458 = !DILocation(line: 175, column: 2, scope: !399)
!459 = distinct !DISubprogram(name: "__collate_err", scope: !3, file: !3, line: 179, type: !460, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !18, !7}
!462 = !{!463, !464, !465, !466, !467}
!463 = !DILocalVariable(name: "ex", arg: 1, scope: !459, file: !3, line: 179, type: !18)
!464 = !DILocalVariable(name: "f", arg: 2, scope: !459, file: !3, line: 179, type: !7)
!465 = !DILocalVariable(name: "s", scope: !459, file: !3, line: 181, type: !7)
!466 = !DILocalVariable(name: "serrno", scope: !459, file: !3, line: 182, type: !18)
!467 = !DILocalVariable(name: "dummy", scope: !459, file: !3, line: 183, type: !18)
!468 = !DILocation(line: 179, column: 19, scope: !459)
!469 = !DILocation(line: 179, column: 35, scope: !459)
!470 = !DILocation(line: 182, column: 15, scope: !459)
!471 = !DILocation(line: 182, column: 6, scope: !459)
!472 = !DILocation(line: 183, column: 2, scope: !459)
!473 = !DILocation(line: 186, column: 2, scope: !459)
!474 = !DILocation(line: 187, column: 26, scope: !459)
!475 = !DILocation(line: 187, column: 2, scope: !459)
!476 = !DILocation(line: 188, column: 2, scope: !459)
!477 = !DILocation(line: 189, column: 18, scope: !459)
!478 = !DILocation(line: 183, column: 6, scope: !459)
!479 = !DILocation(line: 189, column: 6, scope: !459)
!480 = !DILocation(line: 181, column: 14, scope: !459)
!481 = !DILocation(line: 190, column: 26, scope: !459)
!482 = !DILocation(line: 190, column: 2, scope: !459)
!483 = !DILocation(line: 191, column: 2, scope: !459)
!484 = !DILocation(line: 192, column: 2, scope: !459)
!485 = distinct !DISubprogram(name: "__collate_lookup", scope: !3, file: !3, line: 146, type: !486, isLocal: false, isDefinition: true, scopeLine: 149, isOptimized: true, unit: !2, retainedNodes: !489)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !379, !488, !488, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!489 = !{!490, !491, !492, !493, !494}
!490 = !DILocalVariable(name: "t", arg: 1, scope: !485, file: !3, line: 147, type: !379)
!491 = !DILocalVariable(name: "len", arg: 2, scope: !485, file: !3, line: 148, type: !488)
!492 = !DILocalVariable(name: "prim", arg: 3, scope: !485, file: !3, line: 148, type: !488)
!493 = !DILocalVariable(name: "sec", arg: 4, scope: !485, file: !3, line: 148, type: !488)
!494 = !DILocalVariable(name: "p2", scope: !485, file: !3, line: 150, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!496 = !DILocation(line: 147, column: 16, scope: !485)
!497 = !DILocation(line: 148, column: 7, scope: !485)
!498 = !DILocation(line: 148, column: 13, scope: !485)
!499 = !DILocation(line: 148, column: 20, scope: !485)
!500 = !DILocation(line: 152, column: 7, scope: !485)
!501 = !DILocation(line: 153, column: 15, scope: !485)
!502 = !DILocation(line: 153, column: 8, scope: !485)
!503 = !DILocation(line: 154, column: 38, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 154, column: 2)
!505 = distinct !DILexicalBlock(scope: !485, file: !3, line: 154, column: 2)
!506 = !DILocation(line: 154, column: 2, scope: !505)
!507 = !DILocation(line: 156, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 155, column: 6)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 154, column: 56)
!510 = !DILocation(line: 155, column: 6, scope: !508)
!511 = !DILocation(line: 156, column: 39, scope: !508)
!512 = !DILocation(line: 155, column: 6, scope: !509)
!513 = !DILocation(line: 150, column: 33, scope: !485)
!514 = !DILocation(line: 157, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !3, line: 156, column: 45)
!516 = !DILocation(line: 157, column: 9, scope: !515)
!517 = !DILocation(line: 158, column: 16, scope: !515)
!518 = !{!519, !286, i64 12}
!519 = !{!"__collate_st_chain_pri", !287, i64 0, !286, i64 12, !286, i64 16}
!520 = !DILocation(line: 158, column: 10, scope: !515)
!521 = !DILocation(line: 159, column: 15, scope: !515)
!522 = !DILocation(line: 160, column: 4, scope: !515)
!523 = !DILocation(line: 154, column: 52, scope: !504)
!524 = distinct !{!524, !506, !525}
!525 = !DILocation(line: 162, column: 2, scope: !505)
!526 = !DILocation(line: 163, column: 35, scope: !485)
!527 = !DILocation(line: 163, column: 10, scope: !485)
!528 = !DILocation(line: 163, column: 39, scope: !485)
!529 = !{!530, !286, i64 0}
!530 = !{!"__collate_st_char_pri", !286, i64 0, !286, i64 4}
!531 = !DILocation(line: 163, column: 8, scope: !485)
!532 = !DILocation(line: 164, column: 34, scope: !485)
!533 = !DILocation(line: 164, column: 9, scope: !485)
!534 = !DILocation(line: 164, column: 38, scope: !485)
!535 = !DILocation(line: 165, column: 1, scope: !485)
!536 = !DILocation(line: 0, scope: !515)
