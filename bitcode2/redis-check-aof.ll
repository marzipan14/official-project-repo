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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @consumeNewline(i8*) local_unnamed_addr #0 !dbg !27 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !40
  %4 = icmp eq i32 %3, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  ret i32 %16, !dbg !53
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
define dso_local i32 @readLong(%struct.__sFILE*, i8 signext, i64* nocapture) local_unnamed_addr #0 !dbg !54 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !292
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #8, !dbg !292
  %9 = bitcast i8** %6 to i8*, !dbg !292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !292
  %10 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !294
  store i64 %10, i64* @epos, align 8, !dbg !295, !tbaa !47
  %11 = call i8* @fgets(i8* nonnull %8, i32 128, %struct.__sFILE* %0) #7, !dbg !296
  %12 = icmp eq i8* %11, null, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %12, label %41, label %13, !dbg !299

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* %8, align 16, !dbg !300, !tbaa !44
  %15 = icmp eq i8 %14, %1, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %15, label %23, label %16, !dbg !302

; <label>:16:                                     ; preds = %13
  %17 = sext i8 %1 to i32, !dbg !303
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !304
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %18) #8, !dbg !304
  %19 = sext i8 %14 to i32, !dbg !304
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %18, i64 1024, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %19) #7, !dbg !304
  %21 = load i64, i64* @epos, align 8, !dbg !304, !tbaa !47
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %21, i8* nonnull %18) #7, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %18) #8, !dbg !305
  br label %41, !dbg !306

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1, !dbg !307
  %25 = call i64 @strtol(i8* nonnull %24, i8** nonnull %6, i32 10) #7, !dbg !309
  store i64 %25, i64* %2, align 8, !dbg !310, !tbaa !47
  %26 = load i8*, i8** %6, align 8, !dbg !311, !tbaa !312
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !315
  %28 = icmp eq i32 %27, 0, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %28, label %39, label %29, !dbg !317

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %30) #8, !dbg !287
  %31 = load i8, i8* %26, align 1, !dbg !287, !tbaa !44
  %32 = sext i8 %31 to i32, !dbg !287
  %33 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !287
  %34 = load i8, i8* %33, align 1, !dbg !287, !tbaa !44
  %35 = sext i8 %34 to i32, !dbg !287
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35) #7, !dbg !287
  %37 = load i64, i64* @epos, align 8, !dbg !287, !tbaa !47
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %37, i8* nonnull %30) #7, !dbg !287
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %30) #8, !dbg !318
  br label %39, !dbg !319

; <label>:39:                                     ; preds = %23, %29
  %40 = phi i32 [ 0, %29 ], [ 1, %23 ], !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br label %41, !dbg !323

; <label>:41:                                     ; preds = %3, %39, %16
  %42 = phi i32 [ 0, %16 ], [ %40, %39 ], [ 0, %3 ], !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #8, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  ret i32 %42, !dbg !326
}

; Function Attrs: noredzone
declare dso_local i64 @ftello(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readBytes(%struct.__sFILE*, i8*, i64) local_unnamed_addr #0 !dbg !327 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !342
  store i64 %5, i64* @epos, align 8, !dbg !343, !tbaa !47
  %6 = tail call i64 @fread(i8* %1, i64 1, i64 %2, %struct.__sFILE* %0) #7, !dbg !344
  %7 = icmp eq i64 %6, %2, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br i1 %7, label %13, label %8, !dbg !347

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !348
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %9) #8, !dbg !348
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %2, i64 %6) #7, !dbg !348
  %11 = load i64, i64* @epos, align 8, !dbg !348, !tbaa !47
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %11, i8* nonnull %9) #7, !dbg !348
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %9) #8, !dbg !349
  br label %13, !dbg !350

; <label>:13:                                     ; preds = %3, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %3 ], !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  ret i32 %14, !dbg !353
}

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readString(%struct.__sFILE*, i8** nocapture) local_unnamed_addr #0 !dbg !354 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !370
  store i8* null, i8** %1, align 8, !dbg !371, !tbaa !312
  %6 = call i32 @readLong(%struct.__sFILE* %0, i8 signext 36, i64* nonnull %4) #9, !dbg !373
  %7 = icmp eq i32 %6, 0, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %7, label %38, label %8, !dbg !375

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !376, !tbaa !47
  %10 = add nsw i64 %9, 2, !dbg !376
  store i64 %10, i64* %4, align 8, !dbg !376, !tbaa !47
  %11 = tail call i8* @zmalloc(i64 %10) #7, !dbg !377
  store i8* %11, i8** %1, align 8, !dbg !378, !tbaa !312
  %12 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !382
  store i64 %12, i64* @epos, align 8, !dbg !383, !tbaa !47
  %13 = tail call i64 @fread(i8* %11, i64 1, i64 %10, %struct.__sFILE* %0) #7, !dbg !384
  %14 = icmp eq i64 %13, %10, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %14, label %20, label %15, !dbg !387

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !365
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %16) #8, !dbg !365
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %16, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %10, i64 %13) #7, !dbg !365
  %18 = load i64, i64* @epos, align 8, !dbg !365, !tbaa !47
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %18, i8* nonnull %16) #7, !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %16) #8, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br label %38, !dbg !392

; <label>:20:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %21 = load i8*, i8** %1, align 8, !dbg !395, !tbaa !312
  %22 = getelementptr inbounds i8, i8* %21, i64 %9, !dbg !396
  %23 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !398
  %24 = icmp eq i32 %23, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %24, label %35, label %25, !dbg !400

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !362
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %26) #8, !dbg !362
  %27 = load i8, i8* %22, align 1, !dbg !362, !tbaa !44
  %28 = sext i8 %27 to i32, !dbg !362
  %29 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !362
  %30 = load i8, i8* %29, align 1, !dbg !362, !tbaa !44
  %31 = sext i8 %30 to i32, !dbg !362
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %26, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31) #7, !dbg !362
  %33 = load i64, i64* @epos, align 8, !dbg !362, !tbaa !47
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %33, i8* nonnull %26) #7, !dbg !362
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %26) #8, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br label %38, !dbg !405

; <label>:35:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %36 = load i8*, i8** %1, align 8, !dbg !408, !tbaa !312
  %37 = getelementptr inbounds i8, i8* %36, i64 %9, !dbg !409
  store i8 0, i8* %37, align 1, !dbg !410, !tbaa !44
  br label %38, !dbg !411

; <label>:38:                                     ; preds = %2, %35, %25, %15
  %39 = phi i32 [ 1, %35 ], [ 0, %25 ], [ 0, %15 ], [ 0, %2 ], !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  ret i32 %39, !dbg !414
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @readArgc(%struct.__sFILE*, i64* nocapture) local_unnamed_addr #0 !dbg !415 {
  %3 = tail call i32 @readLong(%struct.__sFILE* %0, i8 signext 42, i64* %1) #9, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  ret i32 %3, !dbg !424
}

; Function Attrs: noredzone nounwind
define dso_local i64 @process(%struct.__sFILE*) local_unnamed_addr #0 !dbg !425 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = bitcast i64* %2 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !458
  %8 = bitcast i8** %3 to i8*, !dbg !461
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !461
  br label %9, !dbg !462

; <label>:9:                                      ; preds = %54, %1
  %10 = phi i64 [ 0, %1 ], [ %18, %54 ]
  %11 = phi i32 [ 0, %1 ], [ %55, %54 ]
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !463

; <label>:13:                                     ; preds = %9, %21
  %14 = phi i64 [ %18, %21 ], [ %10, %9 ], !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %12, label %15, label %17, !dbg !464

; <label>:15:                                     ; preds = %13
  %16 = tail call i64 @ftello(%struct.__sFILE* %0) #7, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br label %17, !dbg !467

; <label>:17:                                     ; preds = %13, %15
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ], !dbg !468
  %19 = call i32 @readLong(%struct.__sFILE* %0, i8 signext 42, i64* nonnull %2) #7, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %20 = icmp eq i32 %19, 0, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %20, label %65, label %21, !dbg !477

; <label>:21:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %22 = load i64, i64* %2, align 8, !dbg !480, !tbaa !47
  %23 = icmp sgt i64 %22, 0, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %23, label %24, label %13, !dbg !482

; <label>:24:                                     ; preds = %21, %54
  %25 = phi i64 [ %56, %54 ], [ 0, %21 ]
  %26 = phi i32 [ %55, %54 ], [ %11, %21 ]
  %27 = call i32 @readString(%struct.__sFILE* %0, i8** nonnull %3) #9, !dbg !484
  %28 = icmp eq i32 %27, 0, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %28, label %58, label %29, !dbg !486

; <label>:29:                                     ; preds = %24
  %30 = icmp eq i64 %25, 0, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  %31 = load i8*, i8** %3, align 8, !dbg !489, !tbaa !312
  br i1 %30, label %32, label %54, !dbg !488

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !490
  %34 = icmp eq i32 %33, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %34, label %35, label %43, !dbg !492

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i32 %26, 0, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %36, label %54, label %37, !dbg !494

; <label>:37:                                     ; preds = %35
  %38 = add nsw i32 %26, 1, !dbg !493
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !495
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %39) #8, !dbg !495
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %39, i64 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !495
  %41 = load i64, i64* @epos, align 8, !dbg !495, !tbaa !47
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %41, i8* nonnull %39) #7, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %39) #8, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br label %60, !dbg !497

; <label>:43:                                     ; preds = %32
  %44 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !498
  %45 = icmp eq i32 %44, 0, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %45, label %46, label %54, !dbg !500

; <label>:46:                                     ; preds = %43
  %47 = add nsw i32 %26, -1, !dbg !501
  %48 = icmp eq i32 %47, 0, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %48, label %54, label %49, !dbg !502

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %50) #8, !dbg !503
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %50, i64 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !503
  %52 = load i64, i64* @epos, align 8, !dbg !503, !tbaa !47
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %52, i8* nonnull %50) #7, !dbg !503
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %50) #8, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br label %60, !dbg !505

; <label>:54:                                     ; preds = %29, %35, %46, %43
  %55 = phi i32 [ 1, %35 ], [ 0, %46 ], [ %26, %43 ], [ %26, %29 ], !dbg !463
  tail call void @zfree(i8* %31) #7, !dbg !506
  %56 = add nuw nsw i64 %25, 1, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %57 = icmp sgt i64 %22, %56, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %57, label %24, label %9, !dbg !482, !llvm.loop !509

; <label>:58:                                     ; preds = %24
  %59 = load i8*, i8** %3, align 8, !dbg !511, !tbaa !312
  br label %60, !dbg !515

; <label>:60:                                     ; preds = %58, %49, %37
  %61 = phi i8* [ %31, %49 ], [ %31, %37 ], [ %59, %58 ], !dbg !511
  %62 = phi i32 [ %47, %49 ], [ %38, %37 ], [ %26, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %63 = icmp eq i8* %61, null, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %63, label %65, label %64, !dbg !516

; <label>:64:                                     ; preds = %60
  call void @zfree(i8* nonnull %61) #7, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %65, !dbg !517

; <label>:65:                                     ; preds = %17, %60, %64
  %66 = phi i32 [ %62, %64 ], [ %62, %60 ], [ %11, %17 ], !dbg !463
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !518
  %68 = load i16, i16* %67, align 8, !dbg !518, !tbaa !519
  %69 = and i16 %68, 32, !dbg !518
  %70 = icmp ne i16 %69, 0, !dbg !518
  %71 = icmp ne i32 %66, 0, !dbg !525
  %72 = and i1 %71, %70, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %72, label %73, label %81, !dbg !526

; <label>:73:                                     ; preds = %65
  %74 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !527
  %75 = icmp eq i64 %74, 0, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %75, label %76, label %81, !dbg !529

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %77) #8, !dbg !530
  %78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %77, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !530
  %79 = load i64, i64* @epos, align 8, !dbg !530, !tbaa !47
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %79, i8* nonnull %77) #7, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %77) #8, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br label %81, !dbg !532

; <label>:81:                                     ; preds = %76, %73, %65
  %82 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !533
  %83 = icmp eq i64 %82, 0, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %83, label %86, label %84, !dbg !536

; <label>:84:                                     ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #7, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %86, !dbg !539

; <label>:86:                                     ; preds = %81, %84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret i64 %18, !dbg !541
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
define dso_local i32 @redis_check_aof_main(i32, i8**) local_unnamed_addr #5 !dbg !542 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = icmp slt i32 %0, 2, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %6, label %7, label %10, !dbg !615

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %1, align 8, !dbg !616, !tbaa !312
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %8) #7, !dbg !618
  tail call void @exit(i32 1) #11, !dbg !619
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = icmp eq i32 %0, 2, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %11, label %24, label %12, !dbg !622

; <label>:12:                                     ; preds = %10
  %13 = icmp eq i32 %0, 3, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %13, label %14, label %22, !dbg !625

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !626
  %16 = load i8*, i8** %15, align 8, !dbg !626, !tbaa !312
  %17 = tail call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !629
  %18 = icmp eq i32 %17, 0, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %18, label %24, label %19, !dbg !631

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %15, align 8, !dbg !632, !tbaa !312
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %20) #7, !dbg !634
  tail call void @exit(i32 1) #11, !dbg !635
  unreachable

; <label>:22:                                     ; preds = %12
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !636
  tail call void @exit(i32 1) #11, !dbg !638
  unreachable

; <label>:24:                                     ; preds = %14, %10
  %25 = phi i64 [ 1, %10 ], [ 2, %14 ]
  %26 = phi i32 [ 0, %10 ], [ 1, %14 ], !dbg !639
  %27 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !639
  %28 = load i8*, i8** %27, align 8, !dbg !639, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %29 = tail call %struct.__sFILE* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !641
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %30, label %31, label %33, !dbg !645

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %28) #7, !dbg !646
  tail call void @exit(i32 1) #11, !dbg !648
  unreachable

; <label>:33:                                     ; preds = %24
  %34 = bitcast %struct.stat* %3 to i8*, !dbg !649
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %34) #8, !dbg !649
  %35 = tail call i32 @fileno(%struct.__sFILE* nonnull %29) #7, !dbg !650
  %36 = call i32 @fstat(i32 %35, %struct.stat* nonnull %3) #7, !dbg !653
  %37 = icmp eq i32 %36, -1, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %37, label %38, label %40, !dbg !655

; <label>:38:                                     ; preds = %33
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %28) #7, !dbg !656
  call void @exit(i32 1) #11, !dbg !658
  unreachable

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 7, !dbg !659
  %42 = load i64, i64* %41, align 8, !dbg !659, !tbaa !660
  %43 = icmp eq i64 %42, 0, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %43, label %44, label %46, !dbg !666

; <label>:44:                                     ; preds = %40
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %28) #7, !dbg !667
  call void @exit(i32 1) #11, !dbg !669
  unreachable

; <label>:46:                                     ; preds = %40
  %47 = icmp sgt i64 %42, 7, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %47, label %48, label %66, !dbg !671

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !672
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %49) #8, !dbg !672
  %50 = call i64 @fread(i8* nonnull %49, i64 5, i64 1, %struct.__sFILE* nonnull %29) #7, !dbg !674
  %51 = icmp eq i64 %50, 1, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %51, label %52, label %63, !dbg !676

; <label>:52:                                     ; preds = %48
  %53 = call i32 @memcmp(i8* nonnull %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 5) #7, !dbg !677
  %54 = icmp eq i32 %53, 0, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @rewind(%struct.__sFILE* nonnull %29) #7, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %54, label %55, label %65, !dbg !680

; <label>:55:                                     ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !681
  %57 = call i32 @redis_check_rdb_main(i32 %0, i8** nonnull %1, %struct.__sFILE* nonnull %29) #7, !dbg !684
  %58 = icmp eq i32 %57, -1, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %58, label %59, label %61, !dbg !687

; <label>:59:                                     ; preds = %55
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !688
  call void @exit(i32 1) #11, !dbg !690
  unreachable

; <label>:61:                                     ; preds = %55
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !691
  br label %64, !dbg !693

; <label>:63:                                     ; preds = %48
  call void @rewind(%struct.__sFILE* nonnull %29) #7, !dbg !679
  br label %64

; <label>:64:                                     ; preds = %61, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br label %65, !dbg !695

; <label>:65:                                     ; preds = %64, %52
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %49) #8, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br label %66, !dbg !696

; <label>:66:                                     ; preds = %65, %46
  %67 = call i64 @process(%struct.__sFILE* nonnull %29) #9, !dbg !697
  %68 = sub nsw i64 %42, %67, !dbg !699
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i64 %42, i64 %67, i64 %68) #7, !dbg !701
  %70 = icmp sgt i64 %68, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %70, label %71, label %97, !dbg !703

; <label>:71:                                     ; preds = %66
  %72 = icmp eq i32 %26, 0, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %72, label %95, label %73, !dbg !705

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !706
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %74) #8, !dbg !706
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.24, i64 0, i64 0), i64 %42, i64 %68, i64 %67) #7, !dbg !708
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !709
  %77 = call %struct._reent* @__getreent() #7, !dbg !710
  %78 = getelementptr inbounds %struct._reent, %struct._reent* %77, i64 0, i32 1, !dbg !710
  %79 = load %struct.__sFILE*, %struct.__sFILE** %78, align 8, !dbg !710, !tbaa !712
  %80 = call i8* @fgets(i8* nonnull %74, i32 2, %struct.__sFILE* %79) #7, !dbg !717
  %81 = icmp eq i8* %80, null, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %81, label %85, label %82, !dbg !719

; <label>:82:                                     ; preds = %73
  %83 = call i32 @strncasecmp(i8* nonnull %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i64 1) #10, !dbg !720
  %84 = icmp eq i32 %83, 0, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %84, label %87, label %85, !dbg !722

; <label>:85:                                     ; preds = %82, %73
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !723
  call void @exit(i32 1) #11, !dbg !725
  unreachable

; <label>:87:                                     ; preds = %82
  %88 = call i32 @fileno(%struct.__sFILE* nonnull %29) #7, !dbg !726
  %89 = call i32 @ftruncate(i32 %88, i64 %67) #7, !dbg !728
  %90 = icmp eq i32 %89, -1, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %90, label %91, label %93, !dbg !730

; <label>:91:                                     ; preds = %87
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !731
  call void @exit(i32 1) #11, !dbg !733
  unreachable

; <label>:93:                                     ; preds = %87
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !734
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %74) #8, !dbg !736
  br label %99, !dbg !737

; <label>:95:                                     ; preds = %71
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !738
  call void @exit(i32 1) #11, !dbg !740
  unreachable

; <label>:97:                                     ; preds = %66
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !741
  br label %99

; <label>:99:                                     ; preds = %97, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %100 = call i32 @fclose(%struct.__sFILE* nonnull %29) #7, !dbg !743
  call void @exit(i32 0) #11, !dbg !744
  unreachable
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
!52 = !DILocation(line: 0, scope: !34)
!53 = !DILocation(line: 49, column: 1, scope: !27)
!54 = distinct !DISubprogram(name: "readLong", scope: !3, file: !3, line: 51, type: !55, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !274)
!55 = !DISubroutineType(types: !56)
!56 = !{!10, !57, !9, !273}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 66, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !61, line: 287, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !61, line: 181, size: 1408, elements: !63)
!63 = !{!64, !67, !68, !69, !71, !72, !77, !78, !79, !241, !247, !252, !256, !257, !258, !259, !261, !263, !264, !265, !266, !267, !271, !272}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !62, file: !61, line: 182, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !62, file: !61, line: 183, baseType: !10, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !62, file: !61, line: 184, baseType: !10, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !62, file: !61, line: 185, baseType: !70, size: 16, offset: 128)
!70 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !62, file: !61, line: 186, baseType: !70, size: 16, offset: 144)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !62, file: !61, line: 187, baseType: !73, size: 128, offset: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !61, line: 117, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !73, file: !61, line: 118, baseType: !65, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !73, file: !61, line: 119, baseType: !10, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !62, file: !61, line: 188, baseType: !10, size: 32, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !62, file: !61, line: 195, baseType: !7, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !62, file: !61, line: 197, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84, !7, !8, !10}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !17, line: 145, baseType: !19)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !61, line: 569, size: 14912, elements: !86)
!86 = !{!87, !88, !90, !91, !92, !93, !97, !98, !101, !102, !106, !121, !122, !123, !125, !126, !127, !205, !226, !227, !232, !239}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !85, file: !61, line: 571, baseType: !10, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !85, file: !61, line: 576, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !85, file: !61, line: 576, baseType: !89, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !85, file: !61, line: 576, baseType: !89, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !85, file: !61, line: 578, baseType: !10, size: 32, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !85, file: !61, line: 579, baseType: !94, size: 200, offset: 288)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 200, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 25)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !85, file: !61, line: 582, baseType: !10, size: 32, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !85, file: !61, line: 583, baseType: !99, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !61, line: 40, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !85, file: !61, line: 585, baseType: !10, size: 32, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !85, file: !61, line: 587, baseType: !103, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !84}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !85, file: !61, line: 590, baseType: !107, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !61, line: 47, size: 256, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !108, file: !61, line: 49, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !108, file: !61, line: 50, baseType: !10, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !108, file: !61, line: 50, baseType: !10, size: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !108, file: !61, line: 50, baseType: !10, size: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !108, file: !61, line: 50, baseType: !10, size: 32, offset: 160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !108, file: !61, line: 51, baseType: !116, size: 32, offset: 192)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 32, elements: !119)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !61, line: 25, baseType: !118)
!118 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !85, file: !61, line: 591, baseType: !10, size: 32, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !85, file: !61, line: 592, baseType: !107, size: 64, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !85, file: !61, line: 593, baseType: !124, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !85, file: !61, line: 596, baseType: !10, size: 32, offset: 1024)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !85, file: !61, line: 597, baseType: !8, size: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !85, file: !61, line: 632, baseType: !128, size: 2880, offset: 1152)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !61, line: 599, size: 2880, elements: !129)
!129 = !{!130, !196}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !128, file: !61, line: 622, baseType: !131, size: 1728)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !61, line: 601, size: 1728, elements: !132)
!132 = !{!133, !134, !135, !139, !151, !152, !154, !164, !179, !180, !181, !185, !189, !190, !191, !192, !193, !194, !195}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !131, file: !61, line: 603, baseType: !118, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !131, file: !61, line: 604, baseType: !8, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !131, file: !61, line: 605, baseType: !136, size: 208, offset: 128)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 26)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !131, file: !61, line: 606, baseType: !140, size: 288, offset: 352)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !61, line: 55, size: 288, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !140, file: !61, line: 57, baseType: !10, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !140, file: !61, line: 58, baseType: !10, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !140, file: !61, line: 59, baseType: !10, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !140, file: !61, line: 60, baseType: !10, size: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !140, file: !61, line: 61, baseType: !10, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !140, file: !61, line: 62, baseType: !10, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !140, file: !61, line: 63, baseType: !10, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !140, file: !61, line: 64, baseType: !10, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !140, file: !61, line: 65, baseType: !10, size: 32, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !131, file: !61, line: 607, baseType: !10, size: 32, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !131, file: !61, line: 608, baseType: !153, size: 64, offset: 704)
!153 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !131, file: !61, line: 609, baseType: !155, size: 112, offset: 768)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !61, line: 319, size: 112, elements: !156)
!156 = !{!157, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !155, file: !61, line: 320, baseType: !158, size: 48)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 48, elements: !160)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !155, file: !61, line: 321, baseType: !158, size: 48, offset: 48)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !155, file: !61, line: 322, baseType: !159, size: 16, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !131, file: !61, line: 610, baseType: !165, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !17, line: 171, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 163, size: 64, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !166, file: !17, line: 165, baseType: !10, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !166, file: !17, line: 170, baseType: !170, size: 32, offset: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !17, line: 166, size: 32, elements: !171)
!171 = !{!172, !175}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !170, file: !17, line: 168, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !174, line: 124, baseType: !118)
!174 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !170, file: !17, line: 169, baseType: !176, size: 32)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !131, file: !61, line: 611, baseType: !165, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !131, file: !61, line: 612, baseType: !165, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !131, file: !61, line: 613, baseType: !182, size: 64, offset: 1088)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !131, file: !61, line: 614, baseType: !186, size: 192, offset: 1152)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 24)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !131, file: !61, line: 615, baseType: !10, size: 32, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !131, file: !61, line: 616, baseType: !165, size: 64, offset: 1376)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !131, file: !61, line: 617, baseType: !165, size: 64, offset: 1440)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !131, file: !61, line: 618, baseType: !165, size: 64, offset: 1504)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !131, file: !61, line: 619, baseType: !165, size: 64, offset: 1568)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !131, file: !61, line: 620, baseType: !165, size: 64, offset: 1632)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !131, file: !61, line: 621, baseType: !10, size: 32, offset: 1696)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !128, file: !61, line: 631, baseType: !197, size: 2880)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !61, line: 626, size: 2880, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !197, file: !61, line: 629, baseType: !200, size: 1920)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1920, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 30)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !197, file: !61, line: 630, baseType: !204, size: 960, offset: 1920)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 960, elements: !201)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !85, file: !61, line: 636, baseType: !206, size: 64, offset: 4032)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !61, line: 93, size: 6336, elements: !208)
!208 = !{!209, !210, !211, !218}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !207, file: !61, line: 94, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !207, file: !61, line: 95, baseType: !10, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !207, file: !61, line: 97, baseType: !212, size: 2048, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 2048, elements: !216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !{!217}
!217 = !DISubrange(count: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !207, file: !61, line: 98, baseType: !219, size: 4160, offset: 2176)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !61, line: 74, size: 4160, elements: !220)
!220 = !{!221, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !219, file: !61, line: 75, baseType: !222, size: 2048)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !216)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !219, file: !61, line: 76, baseType: !222, size: 2048, offset: 2048)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !219, file: !61, line: 78, baseType: !117, size: 32, offset: 4096)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !219, file: !61, line: 81, baseType: !117, size: 32, offset: 4128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !85, file: !61, line: 637, baseType: !207, size: 6336, offset: 4096)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !85, file: !61, line: 641, baseType: !228, size: 64, offset: 10432)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !10}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !85, file: !61, line: 646, baseType: !233, size: 192, offset: 10496)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !61, line: 291, size: 192, elements: !234)
!234 = !{!235, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !233, file: !61, line: 293, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !233, file: !61, line: 294, baseType: !10, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !233, file: !61, line: 295, baseType: !89, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !85, file: !61, line: 648, baseType: !240, size: 4224, offset: 10688)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 4224, elements: !160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !62, file: !61, line: 199, baseType: !242, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!83, !84, !7, !245, !10}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !62, file: !61, line: 202, baseType: !248, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !84, !7, !251, !10}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !17, line: 114, baseType: !19)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !62, file: !61, line: 203, baseType: !253, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!10, !84, !7}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !62, file: !61, line: 206, baseType: !73, size: 128, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !62, file: !61, line: 207, baseType: !65, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !62, file: !61, line: 208, baseType: !10, size: 32, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !62, file: !61, line: 211, baseType: !260, size: 24, offset: 928)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 24, elements: !160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !62, file: !61, line: 212, baseType: !262, size: 8, offset: 952)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 8, elements: !119)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !62, file: !61, line: 215, baseType: !73, size: 128, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !62, file: !61, line: 218, baseType: !10, size: 32, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !62, file: !61, line: 219, baseType: !18, size: 64, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !62, file: !61, line: 222, baseType: !84, size: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !62, file: !61, line: 226, baseType: !268, size: 32, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !17, line: 175, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !270, line: 12, baseType: !10)
!270 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !62, file: !61, line: 228, baseType: !165, size: 64, offset: 1312)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !62, file: !61, line: 229, baseType: !10, size: 32, offset: 1376)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!274 = !{!275, !276, !277, !278, !282, !283}
!275 = !DILocalVariable(name: "fp", arg: 1, scope: !54, file: !3, line: 51, type: !57)
!276 = !DILocalVariable(name: "prefix", arg: 2, scope: !54, file: !3, line: 51, type: !9)
!277 = !DILocalVariable(name: "target", arg: 3, scope: !54, file: !3, line: 51, type: !273)
!278 = !DILocalVariable(name: "buf", scope: !54, file: !3, line: 52, type: !279)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 128)
!282 = !DILocalVariable(name: "eptr", scope: !54, file: !3, line: 52, type: !8)
!283 = !DILocalVariable(name: "__buf", scope: !284, file: !3, line: 58, type: !36)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 58, column: 9)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 57, column: 27)
!286 = distinct !DILexicalBlock(scope: !54, file: !3, line: 57, column: 9)
!287 = !DILocation(line: 45, column: 9, scope: !33, inlinedAt: !288)
!288 = distinct !DILocation(line: 62, column: 12, scope: !54)
!289 = !DILocation(line: 51, column: 20, scope: !54)
!290 = !DILocation(line: 51, column: 29, scope: !54)
!291 = !DILocation(line: 51, column: 43, scope: !54)
!292 = !DILocation(line: 52, column: 5, scope: !54)
!293 = !DILocation(line: 52, column: 10, scope: !54)
!294 = !DILocation(line: 53, column: 12, scope: !54)
!295 = !DILocation(line: 53, column: 10, scope: !54)
!296 = !DILocation(line: 54, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !54, file: !3, line: 54, column: 9)
!298 = !DILocation(line: 54, column: 35, scope: !297)
!299 = !DILocation(line: 54, column: 9, scope: !54)
!300 = !DILocation(line: 57, column: 9, scope: !286)
!301 = !DILocation(line: 57, column: 16, scope: !286)
!302 = !DILocation(line: 57, column: 9, scope: !54)
!303 = !DILocation(line: 57, column: 19, scope: !286)
!304 = !DILocation(line: 58, column: 9, scope: !284)
!305 = !DILocation(line: 58, column: 9, scope: !285)
!306 = !DILocation(line: 59, column: 9, scope: !285)
!307 = !DILocation(line: 61, column: 25, scope: !54)
!308 = !DILocation(line: 52, column: 21, scope: !54)
!309 = !DILocation(line: 61, column: 15, scope: !54)
!310 = !DILocation(line: 61, column: 13, scope: !54)
!311 = !DILocation(line: 62, column: 27, scope: !54)
!312 = !{!313, !313, i64 0}
!313 = !{!"any pointer", !45, i64 0}
!314 = !DILocation(line: 43, column: 26, scope: !27, inlinedAt: !288)
!315 = !DILocation(line: 44, column: 9, scope: !35, inlinedAt: !288)
!316 = !DILocation(line: 44, column: 31, scope: !35, inlinedAt: !288)
!317 = !DILocation(line: 44, column: 9, scope: !27, inlinedAt: !288)
!318 = !DILocation(line: 45, column: 9, scope: !34, inlinedAt: !288)
!319 = !DILocation(line: 46, column: 9, scope: !34, inlinedAt: !288)
!320 = !DILocation(line: 0, scope: !27, inlinedAt: !288)
!321 = !DILocation(line: 0, scope: !54)
!322 = !DILocation(line: 49, column: 1, scope: !27, inlinedAt: !288)
!323 = !DILocation(line: 62, column: 5, scope: !54)
!324 = !DILocation(line: 0, scope: !325)
!325 = distinct !DILexicalBlock(scope: !297, file: !3, line: 54, column: 44)
!326 = !DILocation(line: 63, column: 1, scope: !54)
!327 = distinct !DISubprogram(name: "readBytes", scope: !3, file: !3, line: 65, type: !328, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!10, !57, !8, !19}
!330 = !{!331, !332, !333, !334, !335}
!331 = !DILocalVariable(name: "fp", arg: 1, scope: !327, file: !3, line: 65, type: !57)
!332 = !DILocalVariable(name: "target", arg: 2, scope: !327, file: !3, line: 65, type: !8)
!333 = !DILocalVariable(name: "length", arg: 3, scope: !327, file: !3, line: 65, type: !19)
!334 = !DILocalVariable(name: "real", scope: !327, file: !3, line: 66, type: !19)
!335 = !DILocalVariable(name: "__buf", scope: !336, file: !3, line: 70, type: !36)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 70, column: 9)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 69, column: 25)
!338 = distinct !DILexicalBlock(scope: !327, file: !3, line: 69, column: 9)
!339 = !DILocation(line: 65, column: 21, scope: !327)
!340 = !DILocation(line: 65, column: 31, scope: !327)
!341 = !DILocation(line: 65, column: 44, scope: !327)
!342 = !DILocation(line: 67, column: 12, scope: !327)
!343 = !DILocation(line: 67, column: 10, scope: !327)
!344 = !DILocation(line: 68, column: 12, scope: !327)
!345 = !DILocation(line: 66, column: 10, scope: !327)
!346 = !DILocation(line: 69, column: 14, scope: !338)
!347 = !DILocation(line: 69, column: 9, scope: !327)
!348 = !DILocation(line: 70, column: 9, scope: !336)
!349 = !DILocation(line: 70, column: 9, scope: !337)
!350 = !DILocation(line: 71, column: 9, scope: !337)
!351 = !DILocation(line: 0, scope: !327)
!352 = !DILocation(line: 0, scope: !337)
!353 = !DILocation(line: 74, column: 1, scope: !327)
!354 = distinct !DISubprogram(name: "readString", scope: !3, file: !3, line: 76, type: !355, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !358)
!355 = !DISubroutineType(types: !356)
!356 = !{!10, !57, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!358 = !{!359, !360, !361}
!359 = !DILocalVariable(name: "fp", arg: 1, scope: !354, file: !3, line: 76, type: !57)
!360 = !DILocalVariable(name: "target", arg: 2, scope: !354, file: !3, line: 76, type: !357)
!361 = !DILocalVariable(name: "len", scope: !354, file: !3, line: 77, type: !19)
!362 = !DILocation(line: 45, column: 9, scope: !33, inlinedAt: !363)
!363 = distinct !DILocation(line: 89, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !354, file: !3, line: 89, column: 9)
!365 = !DILocation(line: 70, column: 9, scope: !336, inlinedAt: !366)
!366 = distinct !DILocation(line: 86, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !354, file: !3, line: 86, column: 9)
!368 = !DILocation(line: 76, column: 22, scope: !354)
!369 = !DILocation(line: 76, column: 33, scope: !354)
!370 = !DILocation(line: 77, column: 5, scope: !354)
!371 = !DILocation(line: 78, column: 13, scope: !354)
!372 = !DILocation(line: 77, column: 10, scope: !354)
!373 = !DILocation(line: 79, column: 10, scope: !374)
!374 = distinct !DILexicalBlock(scope: !354, file: !3, line: 79, column: 9)
!375 = !DILocation(line: 79, column: 9, scope: !354)
!376 = !DILocation(line: 84, column: 9, scope: !354)
!377 = !DILocation(line: 85, column: 22, scope: !354)
!378 = !DILocation(line: 85, column: 13, scope: !354)
!379 = !DILocation(line: 65, column: 21, scope: !327, inlinedAt: !366)
!380 = !DILocation(line: 65, column: 31, scope: !327, inlinedAt: !366)
!381 = !DILocation(line: 65, column: 44, scope: !327, inlinedAt: !366)
!382 = !DILocation(line: 67, column: 12, scope: !327, inlinedAt: !366)
!383 = !DILocation(line: 67, column: 10, scope: !327, inlinedAt: !366)
!384 = !DILocation(line: 68, column: 12, scope: !327, inlinedAt: !366)
!385 = !DILocation(line: 66, column: 10, scope: !327, inlinedAt: !366)
!386 = !DILocation(line: 69, column: 14, scope: !338, inlinedAt: !366)
!387 = !DILocation(line: 69, column: 9, scope: !327, inlinedAt: !366)
!388 = !DILocation(line: 70, column: 9, scope: !337, inlinedAt: !366)
!389 = !DILocation(line: 71, column: 9, scope: !337, inlinedAt: !366)
!390 = !DILocation(line: 74, column: 1, scope: !327, inlinedAt: !366)
!391 = !DILocation(line: 86, column: 9, scope: !354)
!392 = !DILocation(line: 87, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !367, file: !3, line: 86, column: 37)
!394 = !DILocation(line: 73, column: 5, scope: !327, inlinedAt: !366)
!395 = !DILocation(line: 89, column: 25, scope: !364)
!396 = !DILocation(line: 89, column: 36, scope: !364)
!397 = !DILocation(line: 43, column: 26, scope: !27, inlinedAt: !363)
!398 = !DILocation(line: 44, column: 9, scope: !35, inlinedAt: !363)
!399 = !DILocation(line: 44, column: 31, scope: !35, inlinedAt: !363)
!400 = !DILocation(line: 44, column: 9, scope: !27, inlinedAt: !363)
!401 = !DILocation(line: 45, column: 9, scope: !34, inlinedAt: !363)
!402 = !DILocation(line: 46, column: 9, scope: !34, inlinedAt: !363)
!403 = !DILocation(line: 49, column: 1, scope: !27, inlinedAt: !363)
!404 = !DILocation(line: 89, column: 9, scope: !354)
!405 = !DILocation(line: 90, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !364, file: !3, line: 89, column: 41)
!407 = !DILocation(line: 48, column: 5, scope: !27, inlinedAt: !363)
!408 = !DILocation(line: 92, column: 6, scope: !354)
!409 = !DILocation(line: 92, column: 5, scope: !354)
!410 = !DILocation(line: 92, column: 22, scope: !354)
!411 = !DILocation(line: 93, column: 5, scope: !354)
!412 = !DILocation(line: 0, scope: !413)
!413 = distinct !DILexicalBlock(scope: !374, file: !3, line: 79, column: 33)
!414 = !DILocation(line: 94, column: 1, scope: !354)
!415 = distinct !DISubprogram(name: "readArgc", scope: !3, file: !3, line: 96, type: !416, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!10, !57, !273}
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "fp", arg: 1, scope: !415, file: !3, line: 96, type: !57)
!420 = !DILocalVariable(name: "target", arg: 2, scope: !415, file: !3, line: 96, type: !273)
!421 = !DILocation(line: 96, column: 20, scope: !415)
!422 = !DILocation(line: 96, column: 30, scope: !415)
!423 = !DILocation(line: 97, column: 12, scope: !415)
!424 = !DILocation(line: 97, column: 5, scope: !415)
!425 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 100, type: !426, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!14, !57}
!428 = !{!429, !430, !431, !432, !433, !434, !435, !447, !453}
!429 = !DILocalVariable(name: "fp", arg: 1, scope: !425, file: !3, line: 100, type: !57)
!430 = !DILocalVariable(name: "argc", scope: !425, file: !3, line: 101, type: !19)
!431 = !DILocalVariable(name: "pos", scope: !425, file: !3, line: 102, type: !14)
!432 = !DILocalVariable(name: "i", scope: !425, file: !3, line: 103, type: !10)
!433 = !DILocalVariable(name: "multi", scope: !425, file: !3, line: 103, type: !10)
!434 = !DILocalVariable(name: "str", scope: !425, file: !3, line: 104, type: !8)
!435 = !DILocalVariable(name: "__buf", scope: !436, file: !3, line: 115, type: !36)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 115, column: 25)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 114, column: 34)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 114, column: 25)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 113, column: 52)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 113, column: 21)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 112, column: 25)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 112, column: 17)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 110, column: 36)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 110, column: 9)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 110, column: 9)
!446 = distinct !DILexicalBlock(scope: !425, file: !3, line: 106, column: 14)
!447 = !DILocalVariable(name: "__buf", scope: !448, file: !3, line: 120, type: !36)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 120, column: 25)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 119, column: 34)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 119, column: 25)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 118, column: 58)
!452 = distinct !DILexicalBlock(scope: !440, file: !3, line: 118, column: 28)
!453 = !DILocalVariable(name: "__buf", scope: !454, file: !3, line: 136, type: !36)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 136, column: 9)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 135, column: 50)
!456 = distinct !DILexicalBlock(scope: !425, file: !3, line: 135, column: 9)
!457 = !DILocation(line: 100, column: 21, scope: !425)
!458 = !DILocation(line: 101, column: 5, scope: !425)
!459 = !DILocation(line: 102, column: 11, scope: !425)
!460 = !DILocation(line: 103, column: 12, scope: !425)
!461 = !DILocation(line: 104, column: 5, scope: !425)
!462 = !DILocation(line: 106, column: 5, scope: !425)
!463 = !DILocation(line: 0, scope: !425)
!464 = !DILocation(line: 107, column: 13, scope: !446)
!465 = !DILocation(line: 107, column: 27, scope: !466)
!466 = distinct !DILexicalBlock(scope: !446, file: !3, line: 107, column: 13)
!467 = !DILocation(line: 107, column: 21, scope: !466)
!468 = !DILocation(line: 0, scope: !466)
!469 = !DILocation(line: 101, column: 10, scope: !425)
!470 = !DILocation(line: 96, column: 20, scope: !415, inlinedAt: !471)
!471 = distinct !DILocation(line: 108, column: 14, scope: !472)
!472 = distinct !DILexicalBlock(scope: !446, file: !3, line: 108, column: 13)
!473 = !DILocation(line: 96, column: 30, scope: !415, inlinedAt: !471)
!474 = !DILocation(line: 97, column: 12, scope: !415, inlinedAt: !471)
!475 = !DILocation(line: 97, column: 5, scope: !415, inlinedAt: !471)
!476 = !DILocation(line: 108, column: 14, scope: !472)
!477 = !DILocation(line: 108, column: 13, scope: !446)
!478 = !DILocation(line: 103, column: 9, scope: !425)
!479 = !DILocation(line: 110, column: 14, scope: !445)
!480 = !DILocation(line: 110, column: 25, scope: !444)
!481 = !DILocation(line: 110, column: 23, scope: !444)
!482 = !DILocation(line: 110, column: 9, scope: !445)
!483 = !DILocation(line: 104, column: 11, scope: !425)
!484 = !DILocation(line: 111, column: 18, scope: !485)
!485 = distinct !DILexicalBlock(scope: !443, file: !3, line: 111, column: 17)
!486 = !DILocation(line: 111, column: 17, scope: !443)
!487 = !DILocation(line: 112, column: 19, scope: !442)
!488 = !DILocation(line: 112, column: 17, scope: !443)
!489 = !DILocation(line: 0, scope: !443)
!490 = !DILocation(line: 113, column: 21, scope: !440)
!491 = !DILocation(line: 113, column: 46, scope: !440)
!492 = !DILocation(line: 113, column: 21, scope: !441)
!493 = !DILocation(line: 114, column: 30, scope: !438)
!494 = !DILocation(line: 114, column: 25, scope: !439)
!495 = !DILocation(line: 115, column: 25, scope: !436)
!496 = !DILocation(line: 115, column: 25, scope: !437)
!497 = !DILocation(line: 116, column: 25, scope: !437)
!498 = !DILocation(line: 118, column: 28, scope: !452)
!499 = !DILocation(line: 118, column: 52, scope: !452)
!500 = !DILocation(line: 118, column: 28, scope: !440)
!501 = !DILocation(line: 119, column: 25, scope: !450)
!502 = !DILocation(line: 119, column: 25, scope: !451)
!503 = !DILocation(line: 120, column: 25, scope: !448)
!504 = !DILocation(line: 120, column: 25, scope: !449)
!505 = !DILocation(line: 121, column: 25, scope: !449)
!506 = !DILocation(line: 125, column: 13, scope: !443)
!507 = !DILocation(line: 110, column: 32, scope: !444)
!508 = !DILocation(line: 110, column: 9, scope: !444)
!509 = distinct !{!509, !482, !510}
!510 = !DILocation(line: 126, column: 9, scope: !445)
!511 = !DILocation(line: 130, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 130, column: 17)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 129, column: 23)
!514 = distinct !DILexicalBlock(scope: !446, file: !3, line: 129, column: 13)
!515 = !DILocation(line: 129, column: 13, scope: !446)
!516 = !DILocation(line: 130, column: 17, scope: !513)
!517 = !DILocation(line: 130, column: 22, scope: !512)
!518 = !DILocation(line: 135, column: 9, scope: !456)
!519 = !{!520, !522, i64 16}
!520 = !{!"__sFILE", !313, i64 0, !521, i64 8, !521, i64 12, !522, i64 16, !522, i64 18, !523, i64 24, !521, i64 40, !313, i64 48, !313, i64 56, !313, i64 64, !313, i64 72, !313, i64 80, !523, i64 88, !313, i64 104, !521, i64 112, !45, i64 116, !45, i64 119, !523, i64 120, !521, i64 136, !48, i64 144, !313, i64 152, !521, i64 160, !524, i64 164, !521, i64 172}
!521 = !{!"int", !45, i64 0}
!522 = !{!"short", !45, i64 0}
!523 = !{!"__sbuf", !313, i64 0, !521, i64 8}
!524 = !{!"", !521, i64 0, !45, i64 4}
!525 = !DILocation(line: 135, column: 21, scope: !456)
!526 = !DILocation(line: 135, column: 18, scope: !456)
!527 = !DILocation(line: 135, column: 30, scope: !456)
!528 = !DILocation(line: 135, column: 44, scope: !456)
!529 = !DILocation(line: 135, column: 9, scope: !425)
!530 = !DILocation(line: 136, column: 9, scope: !454)
!531 = !DILocation(line: 136, column: 9, scope: !455)
!532 = !DILocation(line: 137, column: 5, scope: !455)
!533 = !DILocation(line: 138, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !425, file: !3, line: 138, column: 9)
!535 = !DILocation(line: 138, column: 23, scope: !534)
!536 = !DILocation(line: 138, column: 9, scope: !425)
!537 = !DILocation(line: 139, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !3, line: 138, column: 28)
!539 = !DILocation(line: 140, column: 5, scope: !538)
!540 = !DILocation(line: 142, column: 1, scope: !425)
!541 = !DILocation(line: 141, column: 5, scope: !425)
!542 = distinct !DISubprogram(name: "redis_check_aof_main", scope: !3, file: !3, line: 144, type: !543, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!10, !10, !357}
!545 = !{!546, !547, !548, !549, !550, !551, !592, !593, !599, !600, !601, !602}
!546 = !DILocalVariable(name: "argc", arg: 1, scope: !542, file: !3, line: 144, type: !10)
!547 = !DILocalVariable(name: "argv", arg: 2, scope: !542, file: !3, line: 144, type: !357)
!548 = !DILocalVariable(name: "filename", scope: !542, file: !3, line: 145, type: !8)
!549 = !DILocalVariable(name: "fix", scope: !542, file: !3, line: 146, type: !10)
!550 = !DILocalVariable(name: "fp", scope: !542, file: !3, line: 165, type: !57)
!551 = !DILocalVariable(name: "sb", scope: !542, file: !3, line: 171, type: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !553, line: 27, size: 704, elements: !554)
!553 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!554 = !{!555, !558, !561, !566, !569, !572, !575, !576, !577, !584, !585, !586, !589}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !552, file: !553, line: 29, baseType: !556, size: 16)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !15, line: 177, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !17, line: 54, baseType: !70)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !552, file: !553, line: 30, baseType: !559, size: 16, offset: 16)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !15, line: 155, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !17, line: 73, baseType: !159)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !552, file: !553, line: 31, baseType: !562, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !15, line: 205, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !17, line: 88, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !565, line: 79, baseType: !118)
!565 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !552, file: !553, line: 32, baseType: !567, size: 16, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !15, line: 210, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !17, line: 210, baseType: !159)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !552, file: !553, line: 33, baseType: !570, size: 16, offset: 80)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !15, line: 181, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !17, line: 58, baseType: !159)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !552, file: !553, line: 34, baseType: !573, size: 16, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !15, line: 185, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !17, line: 61, baseType: !159)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !552, file: !553, line: 35, baseType: !556, size: 16, offset: 112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !552, file: !553, line: 36, baseType: !14, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !552, file: !553, line: 37, baseType: !578, size: 128, offset: 192)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !579, line: 52, size: 128, elements: !580)
!579 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!580 = !{!581, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !578, file: !579, line: 53, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !579, line: 34, baseType: !19)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !578, file: !579, line: 54, baseType: !19, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !552, file: !553, line: 38, baseType: !578, size: 128, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !552, file: !553, line: 39, baseType: !578, size: 128, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !552, file: !553, line: 40, baseType: !587, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !15, line: 118, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !17, line: 32, baseType: !19)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !552, file: !553, line: 41, baseType: !590, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !15, line: 113, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !17, line: 28, baseType: !19)
!592 = !DILocalVariable(name: "size", scope: !542, file: !3, line: 177, type: !14)
!593 = !DILocalVariable(name: "sig", scope: !594, file: !3, line: 186, type: !596)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 185, column: 20)
!595 = distinct !DILexicalBlock(scope: !542, file: !3, line: 185, column: 9)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 5)
!599 = !DILocalVariable(name: "has_preamble", scope: !594, file: !3, line: 187, type: !10)
!600 = !DILocalVariable(name: "pos", scope: !542, file: !3, line: 202, type: !14)
!601 = !DILocalVariable(name: "diff", scope: !542, file: !3, line: 203, type: !14)
!602 = !DILocalVariable(name: "buf", scope: !603, file: !3, line: 208, type: !607)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 207, column: 18)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 207, column: 13)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 206, column: 19)
!606 = distinct !DILexicalBlock(scope: !542, file: !3, line: 206, column: 9)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 2)
!610 = !DILocation(line: 144, column: 30, scope: !542)
!611 = !DILocation(line: 144, column: 43, scope: !542)
!612 = !DILocation(line: 146, column: 9, scope: !542)
!613 = !DILocation(line: 148, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !542, file: !3, line: 148, column: 9)
!615 = !DILocation(line: 148, column: 9, scope: !542)
!616 = !DILocation(line: 149, column: 50, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !3, line: 148, column: 19)
!618 = !DILocation(line: 149, column: 9, scope: !617)
!619 = !DILocation(line: 150, column: 9, scope: !617)
!620 = !DILocation(line: 151, column: 21, scope: !621)
!621 = distinct !DILexicalBlock(scope: !614, file: !3, line: 151, column: 16)
!622 = !DILocation(line: 151, column: 16, scope: !614)
!623 = !DILocation(line: 153, column: 21, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 153, column: 16)
!625 = !DILocation(line: 153, column: 16, scope: !621)
!626 = !DILocation(line: 154, column: 20, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 154, column: 13)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 153, column: 27)
!629 = !DILocation(line: 154, column: 13, scope: !627)
!630 = !DILocation(line: 154, column: 37, scope: !627)
!631 = !DILocation(line: 154, column: 13, scope: !628)
!632 = !DILocation(line: 155, column: 46, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !3, line: 154, column: 43)
!634 = !DILocation(line: 155, column: 13, scope: !633)
!635 = !DILocation(line: 156, column: 13, scope: !633)
!636 = !DILocation(line: 161, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !624, file: !3, line: 160, column: 12)
!638 = !DILocation(line: 162, column: 9, scope: !637)
!639 = !DILocation(line: 0, scope: !628)
!640 = !DILocation(line: 145, column: 11, scope: !542)
!641 = !DILocation(line: 165, column: 16, scope: !542)
!642 = !DILocation(line: 165, column: 11, scope: !542)
!643 = !DILocation(line: 166, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !542, file: !3, line: 166, column: 9)
!645 = !DILocation(line: 166, column: 9, scope: !542)
!646 = !DILocation(line: 167, column: 9, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 166, column: 21)
!648 = !DILocation(line: 168, column: 9, scope: !647)
!649 = !DILocation(line: 171, column: 5, scope: !542)
!650 = !DILocation(line: 172, column: 21, scope: !651)
!651 = distinct !DILexicalBlock(scope: !542, file: !3, line: 172, column: 9)
!652 = !DILocation(line: 171, column: 23, scope: !542)
!653 = !DILocation(line: 172, column: 9, scope: !651)
!654 = !DILocation(line: 172, column: 37, scope: !651)
!655 = !DILocation(line: 172, column: 9, scope: !542)
!656 = !DILocation(line: 173, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !3, line: 172, column: 44)
!658 = !DILocation(line: 174, column: 9, scope: !657)
!659 = !DILocation(line: 177, column: 21, scope: !542)
!660 = !{!661, !48, i64 16}
!661 = !{!"stat", !522, i64 0, !522, i64 2, !521, i64 4, !522, i64 8, !522, i64 10, !522, i64 12, !522, i64 14, !48, i64 16, !662, i64 24, !662, i64 40, !662, i64 56, !48, i64 72, !48, i64 80}
!662 = !{!"timespec", !48, i64 0, !48, i64 8}
!663 = !DILocation(line: 177, column: 11, scope: !542)
!664 = !DILocation(line: 178, column: 14, scope: !665)
!665 = distinct !DILexicalBlock(scope: !542, file: !3, line: 178, column: 9)
!666 = !DILocation(line: 178, column: 9, scope: !542)
!667 = !DILocation(line: 179, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 178, column: 20)
!669 = !DILocation(line: 180, column: 9, scope: !668)
!670 = !DILocation(line: 185, column: 14, scope: !595)
!671 = !DILocation(line: 185, column: 9, scope: !542)
!672 = !DILocation(line: 186, column: 9, scope: !594)
!673 = !DILocation(line: 186, column: 14, scope: !594)
!674 = !DILocation(line: 187, column: 28, scope: !594)
!675 = !DILocation(line: 187, column: 56, scope: !594)
!676 = !DILocation(line: 187, column: 61, scope: !594)
!677 = !DILocation(line: 188, column: 29, scope: !594)
!678 = !DILocation(line: 188, column: 61, scope: !594)
!679 = !DILocation(line: 189, column: 9, scope: !594)
!680 = !DILocation(line: 190, column: 13, scope: !594)
!681 = !DILocation(line: 191, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 190, column: 27)
!683 = distinct !DILexicalBlock(scope: !594, file: !3, line: 190, column: 13)
!684 = !DILocation(line: 193, column: 17, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !3, line: 193, column: 17)
!686 = !DILocation(line: 193, column: 52, scope: !685)
!687 = !DILocation(line: 193, column: 17, scope: !682)
!688 = !DILocation(line: 194, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !3, line: 193, column: 62)
!690 = !DILocation(line: 195, column: 17, scope: !689)
!691 = !DILocation(line: 197, column: 17, scope: !692)
!692 = distinct !DILexicalBlock(scope: !685, file: !3, line: 196, column: 20)
!693 = !DILocation(line: 199, column: 9, scope: !682)
!694 = !DILocation(line: 0, scope: !682)
!695 = !DILocation(line: 200, column: 5, scope: !595)
!696 = !DILocation(line: 200, column: 5, scope: !594)
!697 = !DILocation(line: 202, column: 17, scope: !542)
!698 = !DILocation(line: 202, column: 11, scope: !542)
!699 = !DILocation(line: 203, column: 22, scope: !542)
!700 = !DILocation(line: 203, column: 11, scope: !542)
!701 = !DILocation(line: 204, column: 5, scope: !542)
!702 = !DILocation(line: 206, column: 14, scope: !606)
!703 = !DILocation(line: 206, column: 9, scope: !542)
!704 = !DILocation(line: 207, column: 13, scope: !604)
!705 = !DILocation(line: 207, column: 13, scope: !605)
!706 = !DILocation(line: 208, column: 13, scope: !603)
!707 = !DILocation(line: 208, column: 18, scope: !603)
!708 = !DILocation(line: 209, column: 13, scope: !603)
!709 = !DILocation(line: 210, column: 13, scope: !603)
!710 = !DILocation(line: 211, column: 39, scope: !711)
!711 = distinct !DILexicalBlock(scope: !603, file: !3, line: 211, column: 17)
!712 = !{!713, !313, i64 8}
!713 = !{!"_reent", !521, i64 0, !313, i64 8, !313, i64 16, !313, i64 24, !521, i64 32, !45, i64 36, !521, i64 64, !313, i64 72, !521, i64 80, !313, i64 88, !313, i64 96, !521, i64 104, !313, i64 112, !313, i64 120, !521, i64 128, !313, i64 136, !45, i64 144, !313, i64 504, !714, i64 512, !313, i64 1304, !716, i64 1312, !45, i64 1336}
!714 = !{!"_atexit", !313, i64 0, !521, i64 8, !45, i64 16, !715, i64 272}
!715 = !{!"_on_exit_args", !45, i64 0, !45, i64 256, !521, i64 512, !521, i64 516}
!716 = !{!"_glue", !313, i64 0, !521, i64 8, !313, i64 16}
!717 = !DILocation(line: 211, column: 17, scope: !711)
!718 = !DILocation(line: 211, column: 46, scope: !711)
!719 = !DILocation(line: 211, column: 54, scope: !711)
!720 = !DILocation(line: 212, column: 17, scope: !711)
!721 = !DILocation(line: 212, column: 40, scope: !711)
!722 = !DILocation(line: 211, column: 17, scope: !603)
!723 = !DILocation(line: 213, column: 21, scope: !724)
!724 = distinct !DILexicalBlock(scope: !711, file: !3, line: 212, column: 46)
!725 = !DILocation(line: 214, column: 21, scope: !724)
!726 = !DILocation(line: 216, column: 27, scope: !727)
!727 = distinct !DILexicalBlock(scope: !603, file: !3, line: 216, column: 17)
!728 = !DILocation(line: 216, column: 17, scope: !727)
!729 = !DILocation(line: 216, column: 44, scope: !727)
!730 = !DILocation(line: 216, column: 17, scope: !603)
!731 = !DILocation(line: 217, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !3, line: 216, column: 51)
!733 = !DILocation(line: 218, column: 17, scope: !732)
!734 = !DILocation(line: 220, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !3, line: 219, column: 20)
!736 = !DILocation(line: 222, column: 9, scope: !604)
!737 = !DILocation(line: 227, column: 5, scope: !605)
!738 = !DILocation(line: 223, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !604, file: !3, line: 222, column: 16)
!740 = !DILocation(line: 225, column: 13, scope: !739)
!741 = !DILocation(line: 228, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !606, file: !3, line: 227, column: 12)
!743 = !DILocation(line: 231, column: 5, scope: !542)
!744 = !DILocation(line: 232, column: 5, scope: !542)
