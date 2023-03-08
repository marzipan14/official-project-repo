; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-aof.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-aof.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected \5Cr\5Cn, got: %02x%02x\00", align 1
@error = internal global [1044 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [13 x i8] c"0x%16llx: %s\00", align 1
@epos = internal unnamed_addr global i64 0, align 8, !dbg !12
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected prefix '%c', got: '%c'\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected to read %ld bytes, got %ld bytes\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Unexpected MULTI\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Unexpected EXEC\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Reached EOF before reading EXEC for MULTI\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Usage: %s [--fix] <file.aof>\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Invalid arguments\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Cannot open file: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.20 = private unnamed_addr constant [84 x i8] c"The AOF appears to start with an RDB preamble.\0AChecking the RDB preamble to start:\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"RDB preamble of AOF file is not sane, aborting.\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"RDB preamble is OK, proceeding with AOF tail...\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\0A\00", align 1
@.str.24 = private unnamed_addr constant [74 x i8] c"This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Failed to truncate AOF\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Successfully truncated AOF\0A\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"AOF is not valid. Use the --fix option to try fixing it.\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"AOF is valid\0A\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @consumeNewline(i8*) local_unnamed_addr #0 !dbg !27 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !40
  %4 = icmp eq i32 %3, 0, !dbg !41
  br i1 %4, label %15, label %5, !dbg !42

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #8, !dbg !43
  %7 = load i8, i8* %0, align 1, !dbg !43, !tbaa !44
  %8 = sext i8 %7 to i32, !dbg !43
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !43
  %10 = load i8, i8* %9, align 1, !dbg !43, !tbaa !44
  %11 = sext i8 %10 to i32, !dbg !43
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11) #7, !dbg !43
  %13 = load i64, i64* @epos, align 8, !dbg !43, !tbaa !47
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %13, i8* nonnull %6) #7, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #8, !dbg !49
  br label %15, !dbg !50

; <label>:15:                                     ; preds = %1, %5
  %16 = phi i32 [ 0, %5 ], [ 1, %1 ], !dbg !51
  ret i32 %16, !dbg !52
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @readLong(%struct.__sFILE*, i8 signext, i64* nocapture) local_unnamed_addr #0 !dbg !53 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #8, !dbg !291
  %9 = bitcast i8** %6 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !291
  %10 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !293
  store i64 %10, i64* @epos, align 8, !dbg !294, !tbaa !47
  %11 = call i8* @fgets(i8* nonnull %8, i32 128, %struct.__sFILE* %0) #7, !dbg !295
  %12 = icmp eq i8* %11, null, !dbg !297
  br i1 %12, label %39, label %13, !dbg !298

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* %8, align 16, !dbg !299, !tbaa !44
  %15 = icmp eq i8 %14, %1, !dbg !300
  br i1 %15, label %23, label %16, !dbg !301

; <label>:16:                                     ; preds = %13
  %17 = sext i8 %1 to i32, !dbg !302
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %18) #8, !dbg !303
  %19 = sext i8 %14 to i32, !dbg !303
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %18, i64 1024, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %19) #7, !dbg !303
  %21 = load i64, i64* @epos, align 8, !dbg !303, !tbaa !47
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %21, i8* nonnull %18) #7, !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %18) #8, !dbg !304
  br label %39, !dbg !305

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1, !dbg !306
  %25 = call i64 @strtol(i8* nonnull %24, i8** nonnull %6, i32 10) #7, !dbg !308
  store i64 %25, i64* %2, align 8, !dbg !309, !tbaa !47
  %26 = load i8*, i8** %6, align 8, !dbg !310, !tbaa !311
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !314
  %28 = icmp eq i32 %27, 0, !dbg !315
  br i1 %28, label %39, label %29, !dbg !316

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !286
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %30) #8, !dbg !286
  %31 = load i8, i8* %26, align 1, !dbg !286, !tbaa !44
  %32 = sext i8 %31 to i32, !dbg !286
  %33 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !286
  %34 = load i8, i8* %33, align 1, !dbg !286, !tbaa !44
  %35 = sext i8 %34 to i32, !dbg !286
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35) #7, !dbg !286
  %37 = load i64, i64* @epos, align 8, !dbg !286, !tbaa !47
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %37, i8* nonnull %30) #7, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %30) #8, !dbg !317
  br label %39, !dbg !318

; <label>:39:                                     ; preds = %29, %23, %3, %16
  %40 = phi i32 [ 0, %16 ], [ 0, %3 ], [ 0, %29 ], [ 1, %23 ], !dbg !319
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !320
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #8, !dbg !320
  ret i32 %40, !dbg !320
}

; Function Attrs: noredzone
declare dso_local i64 @ftello(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readBytes(%struct.__sFILE*, i8*, i64) local_unnamed_addr #0 !dbg !321 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !336
  store i64 %5, i64* @epos, align 8, !dbg !337, !tbaa !47
  %6 = tail call i64 @fread(i8* %1, i64 1, i64 %2, %struct.__sFILE* %0) #7, !dbg !338
  %7 = icmp eq i64 %6, %2, !dbg !340
  br i1 %7, label %13, label %8, !dbg !341

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !342
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %9) #8, !dbg !342
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %2, i64 %6) #7, !dbg !342
  %11 = load i64, i64* @epos, align 8, !dbg !342, !tbaa !47
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %11, i8* nonnull %9) #7, !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %9) #8, !dbg !343
  br label %13, !dbg !344

; <label>:13:                                     ; preds = %3, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %3 ], !dbg !345
  ret i32 %14, !dbg !346
}

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readString(%struct.__sFILE*, i8** nocapture) local_unnamed_addr #0 !dbg !347 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !363
  store i8* null, i8** %1, align 8, !dbg !364, !tbaa !311
  %6 = call i32 @readLong(%struct.__sFILE* %0, i8 signext 36, i64* nonnull %4) #9, !dbg !366
  %7 = icmp eq i32 %6, 0, !dbg !366
  br i1 %7, label %38, label %8, !dbg !368

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !369, !tbaa !47
  %10 = add nsw i64 %9, 2, !dbg !369
  store i64 %10, i64* %4, align 8, !dbg !369, !tbaa !47
  %11 = tail call i8* @zmalloc(i64 %10) #7, !dbg !370
  store i8* %11, i8** %1, align 8, !dbg !371, !tbaa !311
  %12 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !375
  store i64 %12, i64* @epos, align 8, !dbg !376, !tbaa !47
  %13 = tail call i64 @fread(i8* %11, i64 1, i64 %10, %struct.__sFILE* %0) #7, !dbg !377
  %14 = icmp eq i64 %13, %10, !dbg !379
  br i1 %14, label %20, label %15, !dbg !380

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %16) #8, !dbg !358
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %16, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %10, i64 %13) #7, !dbg !358
  %18 = load i64, i64* @epos, align 8, !dbg !358, !tbaa !47
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %18, i8* nonnull %16) #7, !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %16) #8, !dbg !381
  br label %38, !dbg !382

; <label>:20:                                     ; preds = %8
  %21 = load i8*, i8** %1, align 8, !dbg !383, !tbaa !311
  %22 = getelementptr inbounds i8, i8* %21, i64 %9, !dbg !384
  %23 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !386
  %24 = icmp eq i32 %23, 0, !dbg !387
  br i1 %24, label %35, label %25, !dbg !388

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !355
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %26) #8, !dbg !355
  %27 = load i8, i8* %22, align 1, !dbg !355, !tbaa !44
  %28 = sext i8 %27 to i32, !dbg !355
  %29 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !355
  %30 = load i8, i8* %29, align 1, !dbg !355, !tbaa !44
  %31 = sext i8 %30 to i32, !dbg !355
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %26, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31) #7, !dbg !355
  %33 = load i64, i64* @epos, align 8, !dbg !355, !tbaa !47
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %33, i8* nonnull %26) #7, !dbg !355
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %26) #8, !dbg !389
  br label %38, !dbg !390

; <label>:35:                                     ; preds = %20
  %36 = load i8*, i8** %1, align 8, !dbg !391, !tbaa !311
  %37 = getelementptr inbounds i8, i8* %36, i64 %9, !dbg !392
  store i8 0, i8* %37, align 1, !dbg !393, !tbaa !44
  br label %38, !dbg !394

; <label>:38:                                     ; preds = %25, %15, %2, %35
  %39 = phi i32 [ 1, %35 ], [ 0, %2 ], [ 0, %15 ], [ 0, %25 ], !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !397
  ret i32 %39, !dbg !397
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readArgc(%struct.__sFILE*, i64* nocapture) local_unnamed_addr #0 !dbg !398 {
  %3 = tail call i32 @readLong(%struct.__sFILE* %0, i8 signext 42, i64* %1) #9, !dbg !406
  ret i32 %3, !dbg !407
}

; Function Attrs: noredzone nounwind
define dso_local i64 @process(%struct.__sFILE*) local_unnamed_addr #0 !dbg !408 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = bitcast i64* %2 to i8*, !dbg !441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !441
  %8 = bitcast i8** %3 to i8*, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !444
  br label %9, !dbg !445

; <label>:9:                                      ; preds = %54, %1
  %10 = phi i64 [ 0, %1 ], [ %18, %54 ]
  %11 = phi i32 [ 0, %1 ], [ %55, %54 ]
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !446

; <label>:13:                                     ; preds = %9, %21
  %14 = phi i64 [ %18, %21 ], [ %10, %9 ], !dbg !442
  br i1 %12, label %15, label %17, !dbg !448

; <label>:15:                                     ; preds = %13
  %16 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !449
  br label %17, !dbg !450

; <label>:17:                                     ; preds = %13, %15
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ], !dbg !451
  %19 = call i32 @readLong(%struct.__sFILE* %0, i8 signext 42, i64* nonnull %2) #7, !dbg !457
  %20 = icmp eq i32 %19, 0, !dbg !458
  br i1 %20, label %65, label %21, !dbg !459

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %2, align 8, !dbg !461, !tbaa !47
  %23 = icmp sgt i64 %22, 0, !dbg !462
  br i1 %23, label %24, label %13, !dbg !463

; <label>:24:                                     ; preds = %21, %54
  %25 = phi i64 [ %56, %54 ], [ 0, %21 ]
  %26 = phi i32 [ %55, %54 ], [ %11, %21 ]
  %27 = call i32 @readString(%struct.__sFILE* %0, i8** nonnull %3) #9, !dbg !465
  %28 = icmp eq i32 %27, 0, !dbg !465
  br i1 %28, label %58, label %29, !dbg !467

; <label>:29:                                     ; preds = %24
  %30 = icmp eq i64 %25, 0, !dbg !468
  %31 = load i8*, i8** %3, align 8, !dbg !469, !tbaa !311
  br i1 %30, label %32, label %54, !dbg !470

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !471
  %34 = icmp eq i32 %33, 0, !dbg !472
  br i1 %34, label %35, label %43, !dbg !473

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i32 %26, 0, !dbg !474
  br i1 %36, label %54, label %37, !dbg !475

; <label>:37:                                     ; preds = %35
  %38 = add nsw i32 %26, 1, !dbg !474
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %39) #8, !dbg !476
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %39, i64 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !476
  %41 = load i64, i64* @epos, align 8, !dbg !476, !tbaa !47
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %41, i8* nonnull %39) #7, !dbg !476
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %39) #8, !dbg !477
  br label %60, !dbg !478

; <label>:43:                                     ; preds = %32
  %44 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !479
  %45 = icmp eq i32 %44, 0, !dbg !480
  br i1 %45, label %46, label %54, !dbg !481

; <label>:46:                                     ; preds = %43
  %47 = add nsw i32 %26, -1, !dbg !482
  %48 = icmp eq i32 %47, 0, !dbg !482
  br i1 %48, label %54, label %49, !dbg !483

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %50) #8, !dbg !484
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %50, i64 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !484
  %52 = load i64, i64* @epos, align 8, !dbg !484, !tbaa !47
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %52, i8* nonnull %50) #7, !dbg !484
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %50) #8, !dbg !485
  br label %60, !dbg !486

; <label>:54:                                     ; preds = %29, %35, %46, %43
  %55 = phi i32 [ 1, %35 ], [ 0, %46 ], [ %26, %43 ], [ %26, %29 ], !dbg !487
  tail call void @zfree(i8* %31) #7, !dbg !488
  %56 = add nuw nsw i64 %25, 1, !dbg !489
  %57 = icmp sgt i64 %22, %56, !dbg !462
  br i1 %57, label %24, label %9, !dbg !463, !llvm.loop !490

; <label>:58:                                     ; preds = %24
  %59 = load i8*, i8** %3, align 8, !dbg !492, !tbaa !311
  br label %60, !dbg !492

; <label>:60:                                     ; preds = %58, %49, %37
  %61 = phi i8* [ %31, %49 ], [ %31, %37 ], [ %59, %58 ], !dbg !492
  %62 = phi i32 [ %47, %49 ], [ %38, %37 ], [ %26, %58 ]
  %63 = icmp eq i8* %61, null, !dbg !492
  br i1 %63, label %65, label %64, !dbg !496

; <label>:64:                                     ; preds = %60
  call void @zfree(i8* nonnull %61) #7, !dbg !497
  br label %65, !dbg !497

; <label>:65:                                     ; preds = %17, %60, %64
  %66 = phi i32 [ %62, %64 ], [ %62, %60 ], [ %11, %17 ], !dbg !487
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !498
  %68 = load i16, i16* %67, align 8, !dbg !498, !tbaa !499
  %69 = and i16 %68, 32, !dbg !498
  %70 = icmp ne i16 %69, 0, !dbg !498
  %71 = icmp ne i32 %66, 0, !dbg !505
  %72 = and i1 %71, %70, !dbg !506
  br i1 %72, label %73, label %81, !dbg !506

; <label>:73:                                     ; preds = %65
  %74 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !507
  %75 = icmp eq i64 %74, 0, !dbg !508
  br i1 %75, label %76, label %81, !dbg !509

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !510
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %77) #8, !dbg !510
  %78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %77, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !510
  %79 = load i64, i64* @epos, align 8, !dbg !510, !tbaa !47
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %79, i8* nonnull %77) #7, !dbg !510
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %77) #8, !dbg !511
  br label %81, !dbg !512

; <label>:81:                                     ; preds = %76, %73, %65
  %82 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !513
  %83 = icmp eq i64 %82, 0, !dbg !515
  br i1 %83, label %86, label %84, !dbg !516

; <label>:84:                                     ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !517
  br label %86, !dbg !519

; <label>:86:                                     ; preds = %81, %84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !520
  ret i64 %18, !dbg !521
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn nounwind
define dso_local i32 @redis_check_aof_main(i32, i8**) local_unnamed_addr #5 !dbg !522 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = icmp slt i32 %0, 2, !dbg !593
  br i1 %6, label %7, label %10, !dbg !595

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %1, align 8, !dbg !596, !tbaa !311
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %8) #7, !dbg !598
  tail call void @exit(i32 1) #11, !dbg !599
  unreachable, !dbg !599

; <label>:10:                                     ; preds = %2
  switch i32 %0, label %19 [
    i32 2, label %21
    i32 3, label %11
  ], !dbg !600

; <label>:11:                                     ; preds = %10
  %12 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !601
  %13 = load i8*, i8** %12, align 8, !dbg !601, !tbaa !311
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !606
  %15 = icmp eq i32 %14, 0, !dbg !607
  br i1 %15, label %21, label %16, !dbg !608

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %12, align 8, !dbg !609, !tbaa !311
  %18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %17) #7, !dbg !611
  tail call void @exit(i32 1) #11, !dbg !612
  unreachable, !dbg !612

; <label>:19:                                     ; preds = %10
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !613
  tail call void @exit(i32 1) #11, !dbg !615
  unreachable, !dbg !615

; <label>:21:                                     ; preds = %11, %10
  %22 = phi i64 [ 1, %10 ], [ 2, %11 ]
  %23 = phi i32 [ 0, %10 ], [ 1, %11 ], !dbg !616
  %24 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !616
  %25 = load i8*, i8** %24, align 8, !dbg !616, !tbaa !311
  %26 = tail call %struct.__sFILE* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !618
  %27 = icmp eq %struct.__sFILE* %26, null, !dbg !620
  br i1 %27, label %28, label %30, !dbg !622

; <label>:28:                                     ; preds = %21
  %29 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %25) #7, !dbg !623
  tail call void @exit(i32 1) #11, !dbg !625
  unreachable, !dbg !625

; <label>:30:                                     ; preds = %21
  %31 = bitcast %struct.stat* %3 to i8*, !dbg !626
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %31) #8, !dbg !626
  %32 = tail call i32 @fileno(%struct.__sFILE* nonnull %26) #7, !dbg !627
  %33 = call i32 @fstat(i32 %32, %struct.stat* nonnull %3) #7, !dbg !630
  %34 = icmp eq i32 %33, -1, !dbg !631
  br i1 %34, label %35, label %37, !dbg !632

; <label>:35:                                     ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %25) #7, !dbg !633
  call void @exit(i32 1) #11, !dbg !635
  unreachable, !dbg !635

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 7, !dbg !636
  %39 = load i64, i64* %38, align 8, !dbg !636, !tbaa !637
  %40 = icmp eq i64 %39, 0, !dbg !641
  br i1 %40, label %41, label %43, !dbg !643

; <label>:41:                                     ; preds = %37
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %25) #7, !dbg !644
  call void @exit(i32 1) #11, !dbg !646
  unreachable, !dbg !646

; <label>:43:                                     ; preds = %37
  %44 = icmp sgt i64 %39, 7, !dbg !647
  br i1 %44, label %45, label %62, !dbg !648

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !649
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %46) #8, !dbg !649
  %47 = call i64 @fread(i8* nonnull %46, i64 5, i64 1, %struct.__sFILE* nonnull %26) #7, !dbg !651
  %48 = icmp eq i64 %47, 1, !dbg !652
  br i1 %48, label %49, label %60, !dbg !653

; <label>:49:                                     ; preds = %45
  %50 = call i32 @memcmp(i8* nonnull %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 5) #7, !dbg !654
  %51 = icmp eq i32 %50, 0, !dbg !655
  call void @rewind(%struct.__sFILE* nonnull %26) #7, !dbg !656
  br i1 %51, label %52, label %61, !dbg !657

; <label>:52:                                     ; preds = %49
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !658
  %54 = call i32 @redis_check_rdb_main(i32 %0, i8** %1, %struct.__sFILE* nonnull %26) #7, !dbg !661
  %55 = icmp eq i32 %54, -1, !dbg !663
  br i1 %55, label %56, label %58, !dbg !664

; <label>:56:                                     ; preds = %52
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !665
  call void @exit(i32 1) #11, !dbg !667
  unreachable, !dbg !667

; <label>:58:                                     ; preds = %52
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !668
  br label %61, !dbg !670

; <label>:60:                                     ; preds = %45
  call void @rewind(%struct.__sFILE* nonnull %26) #7, !dbg !656
  br label %61

; <label>:61:                                     ; preds = %60, %58, %49
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %46) #8, !dbg !671
  br label %62, !dbg !672

; <label>:62:                                     ; preds = %61, %43
  %63 = call i64 @process(%struct.__sFILE* nonnull %26) #9, !dbg !673
  %64 = sub nsw i64 %39, %63, !dbg !675
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i64 %39, i64 %63, i64 %64) #7, !dbg !677
  %66 = icmp sgt i64 %64, 0, !dbg !678
  br i1 %66, label %67, label %93, !dbg !679

; <label>:67:                                     ; preds = %62
  %68 = icmp eq i32 %23, 0, !dbg !680
  br i1 %68, label %91, label %69, !dbg !681

; <label>:69:                                     ; preds = %67
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %70) #8, !dbg !682
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.24, i64 0, i64 0), i64 %39, i64 %64, i64 %63) #7, !dbg !684
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !685
  %73 = call %struct._reent* @__getreent() #7, !dbg !686
  %74 = getelementptr inbounds %struct._reent, %struct._reent* %73, i64 0, i32 1, !dbg !686
  %75 = load %struct.__sFILE*, %struct.__sFILE** %74, align 8, !dbg !686, !tbaa !688
  %76 = call i8* @fgets(i8* nonnull %70, i32 2, %struct.__sFILE* %75) #7, !dbg !693
  %77 = icmp eq i8* %76, null, !dbg !694
  br i1 %77, label %81, label %78, !dbg !695

; <label>:78:                                     ; preds = %69
  %79 = call i32 @strncasecmp(i8* nonnull %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i64 1) #10, !dbg !696
  %80 = icmp eq i32 %79, 0, !dbg !697
  br i1 %80, label %83, label %81, !dbg !698

; <label>:81:                                     ; preds = %78, %69
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !699
  call void @exit(i32 1) #11, !dbg !701
  unreachable, !dbg !701

; <label>:83:                                     ; preds = %78
  %84 = call i32 @fileno(%struct.__sFILE* nonnull %26) #7, !dbg !702
  %85 = call i32 @ftruncate(i32 %84, i64 %63) #7, !dbg !704
  %86 = icmp eq i32 %85, -1, !dbg !705
  br i1 %86, label %87, label %89, !dbg !706

; <label>:87:                                     ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !707
  call void @exit(i32 1) #11, !dbg !709
  unreachable, !dbg !709

; <label>:89:                                     ; preds = %83
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %70) #8, !dbg !712
  br label %95, !dbg !713

; <label>:91:                                     ; preds = %67
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !714
  call void @exit(i32 1) #11, !dbg !716
  unreachable, !dbg !716

; <label>:93:                                     ; preds = %62
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !717
  br label %95

; <label>:95:                                     ; preds = %93, %89
  %96 = call i32 @fclose(%struct.__sFILE* nonnull %26) #7, !dbg !719
  call void @exit(i32 0) #11, !dbg !720
  unreachable, !dbg !720
}

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fileno(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @rewind(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @redis_check_rdb_main(i32, i8**, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error", scope: !2, file: !3, line: 40, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-aof.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !10}
!6 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "epos", scope: !2, file: !3, line: 41, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !15, line: 173, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 100, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !17, line: 44, baseType: !19)
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8352, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 1044)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "consumeNewline", scope: !3, file: !3, line: 43, type: !28, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!10, !8}
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "buf", arg: 1, scope: !27, file: !3, line: 43, type: !8)
!32 = !DILocalVariable(name: "__buf", scope: !33, file: !3, line: 45, type: !36)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 45, column: 9)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 44, column: 37)
!35 = distinct !DILexicalBlock(scope: !27, file: !3, line: 44, column: 9)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1024)
!39 = !DILocation(line: 43, column: 26, scope: !27)
!40 = !DILocation(line: 44, column: 9, scope: !35)
!41 = !DILocation(line: 44, column: 31, scope: !35)
!42 = !DILocation(line: 44, column: 9, scope: !27)
!43 = !DILocation(line: 45, column: 9, scope: !33)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !45, i64 0}
!49 = !DILocation(line: 45, column: 9, scope: !34)
!50 = !DILocation(line: 46, column: 9, scope: !34)
!51 = !DILocation(line: 0, scope: !27)
!52 = !DILocation(line: 49, column: 1, scope: !27)
!53 = distinct !DISubprogram(name: "readLong", scope: !3, file: !3, line: 51, type: !54, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !273)
!54 = !DISubroutineType(types: !55)
!55 = !{!10, !56, !9, !272}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !58, line: 66, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !60, line: 287, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !60, line: 181, size: 1408, elements: !62)
!62 = !{!63, !66, !67, !68, !70, !71, !76, !77, !78, !240, !246, !251, !255, !256, !257, !258, !260, !262, !263, !264, !265, !266, !270, !271}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !61, file: !60, line: 182, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !61, file: !60, line: 183, baseType: !10, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !61, file: !60, line: 184, baseType: !10, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !60, line: 185, baseType: !69, size: 16, offset: 128)
!69 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !61, file: !60, line: 186, baseType: !69, size: 16, offset: 144)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !61, file: !60, line: 187, baseType: !72, size: 128, offset: 192)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !60, line: 117, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !72, file: !60, line: 118, baseType: !64, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !72, file: !60, line: 119, baseType: !10, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !61, file: !60, line: 188, baseType: !10, size: 32, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !61, file: !60, line: 195, baseType: !7, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !61, file: !60, line: 197, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !83, !7, !8, !10}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !17, line: 145, baseType: !19)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !60, line: 569, size: 14912, elements: !85)
!85 = !{!86, !87, !89, !90, !91, !92, !96, !97, !100, !101, !105, !120, !121, !122, !124, !125, !126, !204, !225, !226, !231, !238}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !84, file: !60, line: 571, baseType: !10, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !84, file: !60, line: 576, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !84, file: !60, line: 576, baseType: !88, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !84, file: !60, line: 576, baseType: !88, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !84, file: !60, line: 578, baseType: !10, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !84, file: !60, line: 579, baseType: !93, size: 200, offset: 288)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 200, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 25)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !84, file: !60, line: 582, baseType: !10, size: 32, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !84, file: !60, line: 583, baseType: !98, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !60, line: 40, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !84, file: !60, line: 585, baseType: !10, size: 32, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !84, file: !60, line: 587, baseType: !102, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !83}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !84, file: !60, line: 590, baseType: !106, size: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !60, line: 47, size: 256, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !107, file: !60, line: 49, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !107, file: !60, line: 50, baseType: !10, size: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !107, file: !60, line: 50, baseType: !10, size: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !107, file: !60, line: 50, baseType: !10, size: 32, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !107, file: !60, line: 50, baseType: !10, size: 32, offset: 160)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !107, file: !60, line: 51, baseType: !115, size: 32, offset: 192)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 32, elements: !118)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !60, line: 25, baseType: !117)
!117 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!118 = !{!119}
!119 = !DISubrange(count: 1)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !84, file: !60, line: 591, baseType: !10, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !84, file: !60, line: 592, baseType: !106, size: 64, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !84, file: !60, line: 593, baseType: !123, size: 64, offset: 960)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !84, file: !60, line: 596, baseType: !10, size: 32, offset: 1024)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !84, file: !60, line: 597, baseType: !8, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !84, file: !60, line: 632, baseType: !127, size: 2880, offset: 1152)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !60, line: 599, size: 2880, elements: !128)
!128 = !{!129, !195}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !127, file: !60, line: 622, baseType: !130, size: 1728)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !60, line: 601, size: 1728, elements: !131)
!131 = !{!132, !133, !134, !138, !150, !151, !153, !163, !178, !179, !180, !184, !188, !189, !190, !191, !192, !193, !194}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !130, file: !60, line: 603, baseType: !117, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !130, file: !60, line: 604, baseType: !8, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !130, file: !60, line: 605, baseType: !135, size: 208, offset: 128)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 26)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !130, file: !60, line: 606, baseType: !139, size: 288, offset: 352)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !60, line: 55, size: 288, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !139, file: !60, line: 57, baseType: !10, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !139, file: !60, line: 58, baseType: !10, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !139, file: !60, line: 59, baseType: !10, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !139, file: !60, line: 60, baseType: !10, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !139, file: !60, line: 61, baseType: !10, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !139, file: !60, line: 62, baseType: !10, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !139, file: !60, line: 63, baseType: !10, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !139, file: !60, line: 64, baseType: !10, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !139, file: !60, line: 65, baseType: !10, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !130, file: !60, line: 607, baseType: !10, size: 32, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !130, file: !60, line: 608, baseType: !152, size: 64, offset: 704)
!152 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !130, file: !60, line: 609, baseType: !154, size: 112, offset: 768)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !60, line: 319, size: 112, elements: !155)
!155 = !{!156, !161, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !154, file: !60, line: 320, baseType: !157, size: 48)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 48, elements: !159)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !{!160}
!160 = !DISubrange(count: 3)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !154, file: !60, line: 321, baseType: !157, size: 48, offset: 48)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !154, file: !60, line: 322, baseType: !158, size: 16, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !130, file: !60, line: 610, baseType: !164, size: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !17, line: 171, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 163, size: 64, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !165, file: !17, line: 165, baseType: !10, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !165, file: !17, line: 170, baseType: !169, size: 32, offset: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !17, line: 166, size: 32, elements: !170)
!170 = !{!171, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !169, file: !17, line: 168, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !173, line: 124, baseType: !117)
!173 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !169, file: !17, line: 169, baseType: !175, size: 32)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 32, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 4)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !130, file: !60, line: 611, baseType: !164, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !130, file: !60, line: 612, baseType: !164, size: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !130, file: !60, line: 613, baseType: !181, size: 64, offset: 1088)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !130, file: !60, line: 614, baseType: !185, size: 192, offset: 1152)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 24)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !130, file: !60, line: 615, baseType: !10, size: 32, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !130, file: !60, line: 616, baseType: !164, size: 64, offset: 1376)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !130, file: !60, line: 617, baseType: !164, size: 64, offset: 1440)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !130, file: !60, line: 618, baseType: !164, size: 64, offset: 1504)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !130, file: !60, line: 619, baseType: !164, size: 64, offset: 1568)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !130, file: !60, line: 620, baseType: !164, size: 64, offset: 1632)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !130, file: !60, line: 621, baseType: !10, size: 32, offset: 1696)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !127, file: !60, line: 631, baseType: !196, size: 2880)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !60, line: 626, size: 2880, elements: !197)
!197 = !{!198, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !196, file: !60, line: 629, baseType: !199, size: 1920)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1920, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 30)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !196, file: !60, line: 630, baseType: !203, size: 960, offset: 1920)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 960, elements: !200)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !84, file: !60, line: 636, baseType: !205, size: 64, offset: 4032)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !60, line: 93, size: 6336, elements: !207)
!207 = !{!208, !209, !210, !217}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !206, file: !60, line: 94, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !206, file: !60, line: 95, baseType: !10, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !206, file: !60, line: 97, baseType: !211, size: 2048, offset: 128)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 2048, elements: !215)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null}
!215 = !{!216}
!216 = !DISubrange(count: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !206, file: !60, line: 98, baseType: !218, size: 4160, offset: 2176)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !60, line: 74, size: 4160, elements: !219)
!219 = !{!220, !222, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !218, file: !60, line: 75, baseType: !221, size: 2048)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !215)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !218, file: !60, line: 76, baseType: !221, size: 2048, offset: 2048)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !218, file: !60, line: 78, baseType: !116, size: 32, offset: 4096)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !218, file: !60, line: 81, baseType: !116, size: 32, offset: 4128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !84, file: !60, line: 637, baseType: !206, size: 6336, offset: 4096)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !84, file: !60, line: 641, baseType: !227, size: 64, offset: 10432)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !10}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !84, file: !60, line: 646, baseType: !232, size: 192, offset: 10496)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !60, line: 291, size: 192, elements: !233)
!233 = !{!234, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !232, file: !60, line: 293, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !232, file: !60, line: 294, baseType: !10, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !232, file: !60, line: 295, baseType: !88, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !84, file: !60, line: 648, baseType: !239, size: 4224, offset: 10688)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 4224, elements: !159)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !61, file: !60, line: 199, baseType: !241, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!82, !83, !7, !244, !10}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !61, file: !60, line: 202, baseType: !247, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !83, !7, !250, !10}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !17, line: 114, baseType: !19)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !61, file: !60, line: 203, baseType: !252, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!10, !83, !7}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !61, file: !60, line: 206, baseType: !72, size: 128, offset: 704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !61, file: !60, line: 207, baseType: !64, size: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !61, file: !60, line: 208, baseType: !10, size: 32, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !61, file: !60, line: 211, baseType: !259, size: 24, offset: 928)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 24, elements: !159)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !61, file: !60, line: 212, baseType: !261, size: 8, offset: 952)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 8, elements: !118)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !61, file: !60, line: 215, baseType: !72, size: 128, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !61, file: !60, line: 218, baseType: !10, size: 32, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !60, line: 219, baseType: !18, size: 64, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !61, file: !60, line: 222, baseType: !83, size: 64, offset: 1216)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !60, line: 226, baseType: !267, size: 32, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !17, line: 175, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !269, line: 12, baseType: !10)
!269 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !61, file: !60, line: 228, baseType: !164, size: 64, offset: 1312)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !60, line: 229, baseType: !10, size: 32, offset: 1376)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!273 = !{!274, !275, !276, !277, !281, !282}
!274 = !DILocalVariable(name: "fp", arg: 1, scope: !53, file: !3, line: 51, type: !56)
!275 = !DILocalVariable(name: "prefix", arg: 2, scope: !53, file: !3, line: 51, type: !9)
!276 = !DILocalVariable(name: "target", arg: 3, scope: !53, file: !3, line: 51, type: !272)
!277 = !DILocalVariable(name: "buf", scope: !53, file: !3, line: 52, type: !278)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 128)
!281 = !DILocalVariable(name: "eptr", scope: !53, file: !3, line: 52, type: !8)
!282 = !DILocalVariable(name: "__buf", scope: !283, file: !3, line: 58, type: !36)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 58, column: 9)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 57, column: 27)
!285 = distinct !DILexicalBlock(scope: !53, file: !3, line: 57, column: 9)
!286 = !DILocation(line: 45, column: 9, scope: !33, inlinedAt: !287)
!287 = distinct !DILocation(line: 62, column: 12, scope: !53)
!288 = !DILocation(line: 51, column: 20, scope: !53)
!289 = !DILocation(line: 51, column: 29, scope: !53)
!290 = !DILocation(line: 51, column: 43, scope: !53)
!291 = !DILocation(line: 52, column: 5, scope: !53)
!292 = !DILocation(line: 52, column: 10, scope: !53)
!293 = !DILocation(line: 53, column: 12, scope: !53)
!294 = !DILocation(line: 53, column: 10, scope: !53)
!295 = !DILocation(line: 54, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !53, file: !3, line: 54, column: 9)
!297 = !DILocation(line: 54, column: 35, scope: !296)
!298 = !DILocation(line: 54, column: 9, scope: !53)
!299 = !DILocation(line: 57, column: 9, scope: !285)
!300 = !DILocation(line: 57, column: 16, scope: !285)
!301 = !DILocation(line: 57, column: 9, scope: !53)
!302 = !DILocation(line: 57, column: 19, scope: !285)
!303 = !DILocation(line: 58, column: 9, scope: !283)
!304 = !DILocation(line: 58, column: 9, scope: !284)
!305 = !DILocation(line: 59, column: 9, scope: !284)
!306 = !DILocation(line: 61, column: 25, scope: !53)
!307 = !DILocation(line: 52, column: 21, scope: !53)
!308 = !DILocation(line: 61, column: 15, scope: !53)
!309 = !DILocation(line: 61, column: 13, scope: !53)
!310 = !DILocation(line: 62, column: 27, scope: !53)
!311 = !{!312, !312, i64 0}
!312 = !{!"any pointer", !45, i64 0}
!313 = !DILocation(line: 43, column: 26, scope: !27, inlinedAt: !287)
!314 = !DILocation(line: 44, column: 9, scope: !35, inlinedAt: !287)
!315 = !DILocation(line: 44, column: 31, scope: !35, inlinedAt: !287)
!316 = !DILocation(line: 44, column: 9, scope: !27, inlinedAt: !287)
!317 = !DILocation(line: 45, column: 9, scope: !34, inlinedAt: !287)
!318 = !DILocation(line: 46, column: 9, scope: !34, inlinedAt: !287)
!319 = !DILocation(line: 0, scope: !53)
!320 = !DILocation(line: 63, column: 1, scope: !53)
!321 = distinct !DISubprogram(name: "readBytes", scope: !3, file: !3, line: 65, type: !322, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!10, !56, !8, !19}
!324 = !{!325, !326, !327, !328, !329}
!325 = !DILocalVariable(name: "fp", arg: 1, scope: !321, file: !3, line: 65, type: !56)
!326 = !DILocalVariable(name: "target", arg: 2, scope: !321, file: !3, line: 65, type: !8)
!327 = !DILocalVariable(name: "length", arg: 3, scope: !321, file: !3, line: 65, type: !19)
!328 = !DILocalVariable(name: "real", scope: !321, file: !3, line: 66, type: !19)
!329 = !DILocalVariable(name: "__buf", scope: !330, file: !3, line: 70, type: !36)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 70, column: 9)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 69, column: 25)
!332 = distinct !DILexicalBlock(scope: !321, file: !3, line: 69, column: 9)
!333 = !DILocation(line: 65, column: 21, scope: !321)
!334 = !DILocation(line: 65, column: 31, scope: !321)
!335 = !DILocation(line: 65, column: 44, scope: !321)
!336 = !DILocation(line: 67, column: 12, scope: !321)
!337 = !DILocation(line: 67, column: 10, scope: !321)
!338 = !DILocation(line: 68, column: 12, scope: !321)
!339 = !DILocation(line: 66, column: 10, scope: !321)
!340 = !DILocation(line: 69, column: 14, scope: !332)
!341 = !DILocation(line: 69, column: 9, scope: !321)
!342 = !DILocation(line: 70, column: 9, scope: !330)
!343 = !DILocation(line: 70, column: 9, scope: !331)
!344 = !DILocation(line: 71, column: 9, scope: !331)
!345 = !DILocation(line: 0, scope: !321)
!346 = !DILocation(line: 74, column: 1, scope: !321)
!347 = distinct !DISubprogram(name: "readString", scope: !3, file: !3, line: 76, type: !348, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !351)
!348 = !DISubroutineType(types: !349)
!349 = !{!10, !56, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "fp", arg: 1, scope: !347, file: !3, line: 76, type: !56)
!353 = !DILocalVariable(name: "target", arg: 2, scope: !347, file: !3, line: 76, type: !350)
!354 = !DILocalVariable(name: "len", scope: !347, file: !3, line: 77, type: !19)
!355 = !DILocation(line: 45, column: 9, scope: !33, inlinedAt: !356)
!356 = distinct !DILocation(line: 89, column: 10, scope: !357)
!357 = distinct !DILexicalBlock(scope: !347, file: !3, line: 89, column: 9)
!358 = !DILocation(line: 70, column: 9, scope: !330, inlinedAt: !359)
!359 = distinct !DILocation(line: 86, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !347, file: !3, line: 86, column: 9)
!361 = !DILocation(line: 76, column: 22, scope: !347)
!362 = !DILocation(line: 76, column: 33, scope: !347)
!363 = !DILocation(line: 77, column: 5, scope: !347)
!364 = !DILocation(line: 78, column: 13, scope: !347)
!365 = !DILocation(line: 77, column: 10, scope: !347)
!366 = !DILocation(line: 79, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !347, file: !3, line: 79, column: 9)
!368 = !DILocation(line: 79, column: 9, scope: !347)
!369 = !DILocation(line: 84, column: 9, scope: !347)
!370 = !DILocation(line: 85, column: 22, scope: !347)
!371 = !DILocation(line: 85, column: 13, scope: !347)
!372 = !DILocation(line: 65, column: 21, scope: !321, inlinedAt: !359)
!373 = !DILocation(line: 65, column: 31, scope: !321, inlinedAt: !359)
!374 = !DILocation(line: 65, column: 44, scope: !321, inlinedAt: !359)
!375 = !DILocation(line: 67, column: 12, scope: !321, inlinedAt: !359)
!376 = !DILocation(line: 67, column: 10, scope: !321, inlinedAt: !359)
!377 = !DILocation(line: 68, column: 12, scope: !321, inlinedAt: !359)
!378 = !DILocation(line: 66, column: 10, scope: !321, inlinedAt: !359)
!379 = !DILocation(line: 69, column: 14, scope: !332, inlinedAt: !359)
!380 = !DILocation(line: 69, column: 9, scope: !321, inlinedAt: !359)
!381 = !DILocation(line: 70, column: 9, scope: !331, inlinedAt: !359)
!382 = !DILocation(line: 86, column: 9, scope: !347)
!383 = !DILocation(line: 89, column: 25, scope: !357)
!384 = !DILocation(line: 89, column: 36, scope: !357)
!385 = !DILocation(line: 43, column: 26, scope: !27, inlinedAt: !356)
!386 = !DILocation(line: 44, column: 9, scope: !35, inlinedAt: !356)
!387 = !DILocation(line: 44, column: 31, scope: !35, inlinedAt: !356)
!388 = !DILocation(line: 44, column: 9, scope: !27, inlinedAt: !356)
!389 = !DILocation(line: 45, column: 9, scope: !34, inlinedAt: !356)
!390 = !DILocation(line: 89, column: 9, scope: !347)
!391 = !DILocation(line: 92, column: 6, scope: !347)
!392 = !DILocation(line: 92, column: 5, scope: !347)
!393 = !DILocation(line: 92, column: 22, scope: !347)
!394 = !DILocation(line: 93, column: 5, scope: !347)
!395 = !DILocation(line: 0, scope: !396)
!396 = distinct !DILexicalBlock(scope: !367, file: !3, line: 79, column: 33)
!397 = !DILocation(line: 94, column: 1, scope: !347)
!398 = distinct !DISubprogram(name: "readArgc", scope: !3, file: !3, line: 96, type: !399, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!10, !56, !272}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "fp", arg: 1, scope: !398, file: !3, line: 96, type: !56)
!403 = !DILocalVariable(name: "target", arg: 2, scope: !398, file: !3, line: 96, type: !272)
!404 = !DILocation(line: 96, column: 20, scope: !398)
!405 = !DILocation(line: 96, column: 30, scope: !398)
!406 = !DILocation(line: 97, column: 12, scope: !398)
!407 = !DILocation(line: 97, column: 5, scope: !398)
!408 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 100, type: !409, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!14, !56}
!411 = !{!412, !413, !414, !415, !416, !417, !418, !430, !436}
!412 = !DILocalVariable(name: "fp", arg: 1, scope: !408, file: !3, line: 100, type: !56)
!413 = !DILocalVariable(name: "argc", scope: !408, file: !3, line: 101, type: !19)
!414 = !DILocalVariable(name: "pos", scope: !408, file: !3, line: 102, type: !14)
!415 = !DILocalVariable(name: "i", scope: !408, file: !3, line: 103, type: !10)
!416 = !DILocalVariable(name: "multi", scope: !408, file: !3, line: 103, type: !10)
!417 = !DILocalVariable(name: "str", scope: !408, file: !3, line: 104, type: !8)
!418 = !DILocalVariable(name: "__buf", scope: !419, file: !3, line: 115, type: !36)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 115, column: 25)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 114, column: 34)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 114, column: 25)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 113, column: 52)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 113, column: 21)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 112, column: 25)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 112, column: 17)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 110, column: 36)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 110, column: 9)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 110, column: 9)
!429 = distinct !DILexicalBlock(scope: !408, file: !3, line: 106, column: 14)
!430 = !DILocalVariable(name: "__buf", scope: !431, file: !3, line: 120, type: !36)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 120, column: 25)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 119, column: 34)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 119, column: 25)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 118, column: 58)
!435 = distinct !DILexicalBlock(scope: !423, file: !3, line: 118, column: 28)
!436 = !DILocalVariable(name: "__buf", scope: !437, file: !3, line: 136, type: !36)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 136, column: 9)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 135, column: 50)
!439 = distinct !DILexicalBlock(scope: !408, file: !3, line: 135, column: 9)
!440 = !DILocation(line: 100, column: 21, scope: !408)
!441 = !DILocation(line: 101, column: 5, scope: !408)
!442 = !DILocation(line: 102, column: 11, scope: !408)
!443 = !DILocation(line: 103, column: 12, scope: !408)
!444 = !DILocation(line: 104, column: 5, scope: !408)
!445 = !DILocation(line: 106, column: 5, scope: !408)
!446 = !DILocation(line: 107, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !429, file: !3, line: 107, column: 13)
!448 = !DILocation(line: 107, column: 13, scope: !429)
!449 = !DILocation(line: 107, column: 27, scope: !447)
!450 = !DILocation(line: 107, column: 21, scope: !447)
!451 = !DILocation(line: 0, scope: !447)
!452 = !DILocation(line: 101, column: 10, scope: !408)
!453 = !DILocation(line: 96, column: 20, scope: !398, inlinedAt: !454)
!454 = distinct !DILocation(line: 108, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !429, file: !3, line: 108, column: 13)
!456 = !DILocation(line: 96, column: 30, scope: !398, inlinedAt: !454)
!457 = !DILocation(line: 97, column: 12, scope: !398, inlinedAt: !454)
!458 = !DILocation(line: 108, column: 14, scope: !455)
!459 = !DILocation(line: 108, column: 13, scope: !429)
!460 = !DILocation(line: 103, column: 9, scope: !408)
!461 = !DILocation(line: 110, column: 25, scope: !427)
!462 = !DILocation(line: 110, column: 23, scope: !427)
!463 = !DILocation(line: 110, column: 9, scope: !428)
!464 = !DILocation(line: 104, column: 11, scope: !408)
!465 = !DILocation(line: 111, column: 18, scope: !466)
!466 = distinct !DILexicalBlock(scope: !426, file: !3, line: 111, column: 17)
!467 = !DILocation(line: 111, column: 17, scope: !426)
!468 = !DILocation(line: 112, column: 19, scope: !425)
!469 = !DILocation(line: 0, scope: !426)
!470 = !DILocation(line: 112, column: 17, scope: !426)
!471 = !DILocation(line: 113, column: 21, scope: !423)
!472 = !DILocation(line: 113, column: 46, scope: !423)
!473 = !DILocation(line: 113, column: 21, scope: !424)
!474 = !DILocation(line: 114, column: 30, scope: !421)
!475 = !DILocation(line: 114, column: 25, scope: !422)
!476 = !DILocation(line: 115, column: 25, scope: !419)
!477 = !DILocation(line: 115, column: 25, scope: !420)
!478 = !DILocation(line: 116, column: 25, scope: !420)
!479 = !DILocation(line: 118, column: 28, scope: !435)
!480 = !DILocation(line: 118, column: 52, scope: !435)
!481 = !DILocation(line: 118, column: 28, scope: !423)
!482 = !DILocation(line: 119, column: 25, scope: !433)
!483 = !DILocation(line: 119, column: 25, scope: !434)
!484 = !DILocation(line: 120, column: 25, scope: !431)
!485 = !DILocation(line: 120, column: 25, scope: !432)
!486 = !DILocation(line: 121, column: 25, scope: !432)
!487 = !DILocation(line: 0, scope: !408)
!488 = !DILocation(line: 125, column: 13, scope: !426)
!489 = !DILocation(line: 110, column: 32, scope: !427)
!490 = distinct !{!490, !463, !491}
!491 = !DILocation(line: 126, column: 9, scope: !428)
!492 = !DILocation(line: 130, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 130, column: 17)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 129, column: 23)
!495 = distinct !DILexicalBlock(scope: !429, file: !3, line: 129, column: 13)
!496 = !DILocation(line: 130, column: 17, scope: !494)
!497 = !DILocation(line: 130, column: 22, scope: !493)
!498 = !DILocation(line: 135, column: 9, scope: !439)
!499 = !{!500, !502, i64 16}
!500 = !{!"__sFILE", !312, i64 0, !501, i64 8, !501, i64 12, !502, i64 16, !502, i64 18, !503, i64 24, !501, i64 40, !312, i64 48, !312, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !503, i64 88, !312, i64 104, !501, i64 112, !45, i64 116, !45, i64 119, !503, i64 120, !501, i64 136, !48, i64 144, !312, i64 152, !501, i64 160, !504, i64 164, !501, i64 172}
!501 = !{!"int", !45, i64 0}
!502 = !{!"short", !45, i64 0}
!503 = !{!"__sbuf", !312, i64 0, !501, i64 8}
!504 = !{!"", !501, i64 0, !45, i64 4}
!505 = !DILocation(line: 135, column: 21, scope: !439)
!506 = !DILocation(line: 135, column: 18, scope: !439)
!507 = !DILocation(line: 135, column: 30, scope: !439)
!508 = !DILocation(line: 135, column: 44, scope: !439)
!509 = !DILocation(line: 135, column: 9, scope: !408)
!510 = !DILocation(line: 136, column: 9, scope: !437)
!511 = !DILocation(line: 136, column: 9, scope: !438)
!512 = !DILocation(line: 137, column: 5, scope: !438)
!513 = !DILocation(line: 138, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !408, file: !3, line: 138, column: 9)
!515 = !DILocation(line: 138, column: 23, scope: !514)
!516 = !DILocation(line: 138, column: 9, scope: !408)
!517 = !DILocation(line: 139, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 138, column: 28)
!519 = !DILocation(line: 140, column: 5, scope: !518)
!520 = !DILocation(line: 142, column: 1, scope: !408)
!521 = !DILocation(line: 141, column: 5, scope: !408)
!522 = distinct !DISubprogram(name: "redis_check_aof_main", scope: !3, file: !3, line: 144, type: !523, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!10, !10, !350}
!525 = !{!526, !527, !528, !529, !530, !531, !572, !573, !579, !580, !581, !582}
!526 = !DILocalVariable(name: "argc", arg: 1, scope: !522, file: !3, line: 144, type: !10)
!527 = !DILocalVariable(name: "argv", arg: 2, scope: !522, file: !3, line: 144, type: !350)
!528 = !DILocalVariable(name: "filename", scope: !522, file: !3, line: 145, type: !8)
!529 = !DILocalVariable(name: "fix", scope: !522, file: !3, line: 146, type: !10)
!530 = !DILocalVariable(name: "fp", scope: !522, file: !3, line: 165, type: !56)
!531 = !DILocalVariable(name: "sb", scope: !522, file: !3, line: 171, type: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !533, line: 27, size: 704, elements: !534)
!533 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!534 = !{!535, !538, !541, !546, !549, !552, !555, !556, !557, !564, !565, !566, !569}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !532, file: !533, line: 29, baseType: !536, size: 16)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !15, line: 177, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !17, line: 54, baseType: !69)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !532, file: !533, line: 30, baseType: !539, size: 16, offset: 16)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !15, line: 155, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !17, line: 73, baseType: !158)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !532, file: !533, line: 31, baseType: !542, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !15, line: 205, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !17, line: 88, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !545, line: 79, baseType: !117)
!545 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !532, file: !533, line: 32, baseType: !547, size: 16, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !15, line: 210, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !17, line: 210, baseType: !158)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !532, file: !533, line: 33, baseType: !550, size: 16, offset: 80)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !15, line: 181, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !17, line: 58, baseType: !158)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !532, file: !533, line: 34, baseType: !553, size: 16, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !15, line: 185, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !17, line: 61, baseType: !158)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !532, file: !533, line: 35, baseType: !536, size: 16, offset: 112)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !532, file: !533, line: 36, baseType: !14, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !532, file: !533, line: 37, baseType: !558, size: 128, offset: 192)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !559, line: 52, size: 128, elements: !560)
!559 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!560 = !{!561, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !558, file: !559, line: 53, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !559, line: 34, baseType: !19)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !558, file: !559, line: 54, baseType: !19, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !532, file: !533, line: 38, baseType: !558, size: 128, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !532, file: !533, line: 39, baseType: !558, size: 128, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !532, file: !533, line: 40, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !15, line: 118, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !17, line: 32, baseType: !19)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !532, file: !533, line: 41, baseType: !570, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !15, line: 113, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !17, line: 28, baseType: !19)
!572 = !DILocalVariable(name: "size", scope: !522, file: !3, line: 177, type: !14)
!573 = !DILocalVariable(name: "sig", scope: !574, file: !3, line: 186, type: !576)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 185, column: 20)
!575 = distinct !DILexicalBlock(scope: !522, file: !3, line: 185, column: 9)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 5)
!579 = !DILocalVariable(name: "has_preamble", scope: !574, file: !3, line: 187, type: !10)
!580 = !DILocalVariable(name: "pos", scope: !522, file: !3, line: 202, type: !14)
!581 = !DILocalVariable(name: "diff", scope: !522, file: !3, line: 203, type: !14)
!582 = !DILocalVariable(name: "buf", scope: !583, file: !3, line: 208, type: !587)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 207, column: 18)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 207, column: 13)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 206, column: 19)
!586 = distinct !DILexicalBlock(scope: !522, file: !3, line: 206, column: 9)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 2)
!590 = !DILocation(line: 144, column: 30, scope: !522)
!591 = !DILocation(line: 144, column: 43, scope: !522)
!592 = !DILocation(line: 146, column: 9, scope: !522)
!593 = !DILocation(line: 148, column: 14, scope: !594)
!594 = distinct !DILexicalBlock(scope: !522, file: !3, line: 148, column: 9)
!595 = !DILocation(line: 148, column: 9, scope: !522)
!596 = !DILocation(line: 149, column: 50, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !3, line: 148, column: 19)
!598 = !DILocation(line: 149, column: 9, scope: !597)
!599 = !DILocation(line: 150, column: 9, scope: !597)
!600 = !DILocation(line: 151, column: 16, scope: !594)
!601 = !DILocation(line: 154, column: 20, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 154, column: 13)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 153, column: 27)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 153, column: 16)
!605 = distinct !DILexicalBlock(scope: !594, file: !3, line: 151, column: 16)
!606 = !DILocation(line: 154, column: 13, scope: !602)
!607 = !DILocation(line: 154, column: 37, scope: !602)
!608 = !DILocation(line: 154, column: 13, scope: !603)
!609 = !DILocation(line: 155, column: 46, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !3, line: 154, column: 43)
!611 = !DILocation(line: 155, column: 13, scope: !610)
!612 = !DILocation(line: 156, column: 13, scope: !610)
!613 = !DILocation(line: 161, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !604, file: !3, line: 160, column: 12)
!615 = !DILocation(line: 162, column: 9, scope: !614)
!616 = !DILocation(line: 0, scope: !603)
!617 = !DILocation(line: 145, column: 11, scope: !522)
!618 = !DILocation(line: 165, column: 16, scope: !522)
!619 = !DILocation(line: 165, column: 11, scope: !522)
!620 = !DILocation(line: 166, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !522, file: !3, line: 166, column: 9)
!622 = !DILocation(line: 166, column: 9, scope: !522)
!623 = !DILocation(line: 167, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 166, column: 21)
!625 = !DILocation(line: 168, column: 9, scope: !624)
!626 = !DILocation(line: 171, column: 5, scope: !522)
!627 = !DILocation(line: 172, column: 21, scope: !628)
!628 = distinct !DILexicalBlock(scope: !522, file: !3, line: 172, column: 9)
!629 = !DILocation(line: 171, column: 23, scope: !522)
!630 = !DILocation(line: 172, column: 9, scope: !628)
!631 = !DILocation(line: 172, column: 37, scope: !628)
!632 = !DILocation(line: 172, column: 9, scope: !522)
!633 = !DILocation(line: 173, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !3, line: 172, column: 44)
!635 = !DILocation(line: 174, column: 9, scope: !634)
!636 = !DILocation(line: 177, column: 21, scope: !522)
!637 = !{!638, !48, i64 16}
!638 = !{!"stat", !502, i64 0, !502, i64 2, !501, i64 4, !502, i64 8, !502, i64 10, !502, i64 12, !502, i64 14, !48, i64 16, !639, i64 24, !639, i64 40, !639, i64 56, !48, i64 72, !48, i64 80}
!639 = !{!"timespec", !48, i64 0, !48, i64 8}
!640 = !DILocation(line: 177, column: 11, scope: !522)
!641 = !DILocation(line: 178, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !522, file: !3, line: 178, column: 9)
!643 = !DILocation(line: 178, column: 9, scope: !522)
!644 = !DILocation(line: 179, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 178, column: 20)
!646 = !DILocation(line: 180, column: 9, scope: !645)
!647 = !DILocation(line: 185, column: 14, scope: !575)
!648 = !DILocation(line: 185, column: 9, scope: !522)
!649 = !DILocation(line: 186, column: 9, scope: !574)
!650 = !DILocation(line: 186, column: 14, scope: !574)
!651 = !DILocation(line: 187, column: 28, scope: !574)
!652 = !DILocation(line: 187, column: 56, scope: !574)
!653 = !DILocation(line: 187, column: 61, scope: !574)
!654 = !DILocation(line: 188, column: 29, scope: !574)
!655 = !DILocation(line: 188, column: 61, scope: !574)
!656 = !DILocation(line: 189, column: 9, scope: !574)
!657 = !DILocation(line: 190, column: 13, scope: !574)
!658 = !DILocation(line: 191, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 190, column: 27)
!660 = distinct !DILexicalBlock(scope: !574, file: !3, line: 190, column: 13)
!661 = !DILocation(line: 193, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 193, column: 17)
!663 = !DILocation(line: 193, column: 52, scope: !662)
!664 = !DILocation(line: 193, column: 17, scope: !659)
!665 = !DILocation(line: 194, column: 17, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 193, column: 62)
!667 = !DILocation(line: 195, column: 17, scope: !666)
!668 = !DILocation(line: 197, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !662, file: !3, line: 196, column: 20)
!670 = !DILocation(line: 199, column: 9, scope: !659)
!671 = !DILocation(line: 200, column: 5, scope: !575)
!672 = !DILocation(line: 200, column: 5, scope: !574)
!673 = !DILocation(line: 202, column: 17, scope: !522)
!674 = !DILocation(line: 202, column: 11, scope: !522)
!675 = !DILocation(line: 203, column: 22, scope: !522)
!676 = !DILocation(line: 203, column: 11, scope: !522)
!677 = !DILocation(line: 204, column: 5, scope: !522)
!678 = !DILocation(line: 206, column: 14, scope: !586)
!679 = !DILocation(line: 206, column: 9, scope: !522)
!680 = !DILocation(line: 207, column: 13, scope: !584)
!681 = !DILocation(line: 207, column: 13, scope: !585)
!682 = !DILocation(line: 208, column: 13, scope: !583)
!683 = !DILocation(line: 208, column: 18, scope: !583)
!684 = !DILocation(line: 209, column: 13, scope: !583)
!685 = !DILocation(line: 210, column: 13, scope: !583)
!686 = !DILocation(line: 211, column: 39, scope: !687)
!687 = distinct !DILexicalBlock(scope: !583, file: !3, line: 211, column: 17)
!688 = !{!689, !312, i64 8}
!689 = !{!"_reent", !501, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !501, i64 32, !45, i64 36, !501, i64 64, !312, i64 72, !501, i64 80, !312, i64 88, !312, i64 96, !501, i64 104, !312, i64 112, !312, i64 120, !501, i64 128, !312, i64 136, !45, i64 144, !312, i64 504, !690, i64 512, !312, i64 1304, !692, i64 1312, !45, i64 1336}
!690 = !{!"_atexit", !312, i64 0, !501, i64 8, !45, i64 16, !691, i64 272}
!691 = !{!"_on_exit_args", !45, i64 0, !45, i64 256, !501, i64 512, !501, i64 516}
!692 = !{!"_glue", !312, i64 0, !501, i64 8, !312, i64 16}
!693 = !DILocation(line: 211, column: 17, scope: !687)
!694 = !DILocation(line: 211, column: 46, scope: !687)
!695 = !DILocation(line: 211, column: 54, scope: !687)
!696 = !DILocation(line: 212, column: 17, scope: !687)
!697 = !DILocation(line: 212, column: 40, scope: !687)
!698 = !DILocation(line: 211, column: 17, scope: !583)
!699 = !DILocation(line: 213, column: 21, scope: !700)
!700 = distinct !DILexicalBlock(scope: !687, file: !3, line: 212, column: 46)
!701 = !DILocation(line: 214, column: 21, scope: !700)
!702 = !DILocation(line: 216, column: 27, scope: !703)
!703 = distinct !DILexicalBlock(scope: !583, file: !3, line: 216, column: 17)
!704 = !DILocation(line: 216, column: 17, scope: !703)
!705 = !DILocation(line: 216, column: 44, scope: !703)
!706 = !DILocation(line: 216, column: 17, scope: !583)
!707 = !DILocation(line: 217, column: 17, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !3, line: 216, column: 51)
!709 = !DILocation(line: 218, column: 17, scope: !708)
!710 = !DILocation(line: 220, column: 17, scope: !711)
!711 = distinct !DILexicalBlock(scope: !703, file: !3, line: 219, column: 20)
!712 = !DILocation(line: 222, column: 9, scope: !584)
!713 = !DILocation(line: 227, column: 5, scope: !585)
!714 = !DILocation(line: 223, column: 13, scope: !715)
!715 = distinct !DILexicalBlock(scope: !584, file: !3, line: 222, column: 16)
!716 = !DILocation(line: 225, column: 13, scope: !715)
!717 = !DILocation(line: 228, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !586, file: !3, line: 227, column: 12)
!719 = !DILocation(line: 231, column: 5, scope: !522)
!720 = !DILocation(line: 232, column: 5, scope: !522)
