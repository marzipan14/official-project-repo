; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ziplist.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ziplist.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlentry = type { i32, i32, i32, i32, i32, i8, i8* }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@.str = private unnamed_addr constant [75 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ziplist.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid integer encoding 0x%02X\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid string encoding 0x%02X\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"prevlen > 0\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"{total bytes %d} {num entries %u}\0A{tail offset %u}\0A\00", align 1
@.str.7 = private unnamed_addr constant [131 x i8] c"{\0A\09addr 0x%08lx,\0A\09index %2d,\0A\09offset %5ld,\0A\09hdr+entry len: %5u,\0A\09hdr len%2u,\0A\09prevrawlen: %5u,\0A\09prevrawlensize: %2u,\0A\09payload %5u\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\09[int]%lld\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"{end}\0A\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @zipIntSize(i8 zeroext) local_unnamed_addr #0 !dbg !31 {
  %2 = zext i8 %0 to i32, !dbg !37
  switch i8 %0, label %7 [
    i8 -2, label %11
    i8 -64, label %3
    i8 -16, label %4
    i8 -48, label %5
    i8 -32, label %6
  ], !dbg !38

; <label>:3:                                      ; preds = %1
  br label %11, !dbg !39

; <label>:4:                                      ; preds = %1
  br label %11, !dbg !41

; <label>:5:                                      ; preds = %1
  br label %11, !dbg !42

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = add i8 %0, 15, !dbg !44
  %9 = icmp ult i8 %8, 13, !dbg !44
  br i1 %9, label %11, label %10, !dbg !44

; <label>:10:                                     ; preds = %7
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %2) #5, !dbg !46
  tail call void @_exit(i32 1) #6, !dbg !46
  unreachable, !dbg !46

; <label>:11:                                     ; preds = %7, %1, %6, %5, %4, %3
  %12 = phi i32 [ 8, %6 ], [ 4, %5 ], [ 3, %4 ], [ 2, %3 ], [ 1, %1 ], [ 0, %7 ], !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32 %12, !dbg !48
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStoreEntryEncoding(i8*, i8 zeroext, i32) local_unnamed_addr #0 !dbg !49 {
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %5) #7, !dbg !66
  %6 = icmp ult i8 %1, -64, !dbg !68
  br i1 %6, label %7, label %37, !dbg !70

; <label>:7:                                      ; preds = %3
  %8 = icmp ult i32 %2, 64, !dbg !71
  br i1 %8, label %9, label %13, !dbg !74

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %0, null, !dbg !75
  br i1 %10, label %45, label %11, !dbg !78

; <label>:11:                                     ; preds = %9
  %12 = trunc i32 %2 to i8, !dbg !79
  store i8 %12, i8* %5, align 1, !dbg !80, !tbaa !81
  br label %40, !dbg !84

; <label>:13:                                     ; preds = %7
  %14 = icmp ult i32 %2, 16384, !dbg !85
  %15 = icmp eq i8* %0, null, !dbg !87
  br i1 %14, label %16, label %24, !dbg !90

; <label>:16:                                     ; preds = %13
  br i1 %15, label %45, label %17, !dbg !91

; <label>:17:                                     ; preds = %16
  %18 = lshr i32 %2, 8, !dbg !93
  %19 = trunc i32 %18 to i8, !dbg !94
  %20 = and i8 %19, 63, !dbg !94
  %21 = or i8 %20, 64, !dbg !94
  store i8 %21, i8* %5, align 1, !dbg !95, !tbaa !81
  %22 = trunc i32 %2 to i8, !dbg !96
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !97
  store i8 %22, i8* %23, align 1, !dbg !98, !tbaa !81
  br label %40, !dbg !99

; <label>:24:                                     ; preds = %13
  br i1 %15, label %45, label %25, !dbg !100

; <label>:25:                                     ; preds = %24
  store i8 -128, i8* %5, align 1, !dbg !101, !tbaa !81
  %26 = lshr i32 %2, 24, !dbg !102
  %27 = trunc i32 %26 to i8, !dbg !103
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !104
  store i8 %27, i8* %28, align 1, !dbg !105, !tbaa !81
  %29 = lshr i32 %2, 16, !dbg !106
  %30 = trunc i32 %29 to i8, !dbg !107
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2, !dbg !108
  store i8 %30, i8* %31, align 1, !dbg !109, !tbaa !81
  %32 = lshr i32 %2, 8, !dbg !110
  %33 = trunc i32 %32 to i8, !dbg !111
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3, !dbg !112
  store i8 %33, i8* %34, align 1, !dbg !113, !tbaa !81
  %35 = trunc i32 %2 to i8, !dbg !114
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4, !dbg !115
  store i8 %35, i8* %36, align 1, !dbg !116, !tbaa !81
  br label %40

; <label>:37:                                     ; preds = %3
  %38 = icmp eq i8* %0, null, !dbg !117
  br i1 %38, label %45, label %39, !dbg !120

; <label>:39:                                     ; preds = %37
  store i8 %1, i8* %5, align 1, !dbg !121, !tbaa !81
  br label %40

; <label>:40:                                     ; preds = %11, %25, %17, %39
  %41 = phi i8 [ 1, %11 ], [ 2, %17 ], [ 5, %25 ], [ 1, %39 ], !dbg !122
  %42 = zext i8 %41 to i64, !dbg !123
  %43 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %5, i64 %42) #5, !dbg !124
  %44 = zext i8 %41 to i32, !dbg !125
  br label %45, !dbg !126

; <label>:45:                                     ; preds = %37, %24, %16, %9, %40
  %46 = phi i32 [ %44, %40 ], [ 1, %9 ], [ 2, %16 ], [ 5, %24 ], [ 1, %37 ], !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %5) #7, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  ret i32 %46, !dbg !128
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStorePrevEntryLengthLarge(i8*, i32) local_unnamed_addr #0 !dbg !129 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4, !tbaa !138
  %4 = icmp eq i8* %0, null, !dbg !140
  br i1 %4, label %9, label %5, !dbg !142

; <label>:5:                                      ; preds = %2
  store i8 -2, i8* %0, align 1, !dbg !143, !tbaa !81
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !145
  %7 = bitcast i32* %3 to i8*, !dbg !146
  %8 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %7, i64 4) #5, !dbg !147
  br label %9, !dbg !148

; <label>:9:                                      ; preds = %2, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  ret i32 5, !dbg !149
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStorePrevEntryLength(i8*, i32) local_unnamed_addr #0 !dbg !150 {
  %3 = alloca i32, align 4
  %4 = icmp eq i8* %0, null, !dbg !158
  %5 = icmp ult i32 %1, 254, !dbg !160
  br i1 %4, label %6, label %8, !dbg !163

; <label>:6:                                      ; preds = %2
  %7 = select i1 %5, i32 1, i32 5, !dbg !164
  br label %15, !dbg !166

; <label>:8:                                      ; preds = %2
  br i1 %5, label %9, label %11, !dbg !167

; <label>:9:                                      ; preds = %8
  %10 = trunc i32 %1 to i8, !dbg !168
  store i8 %10, i8* %0, align 1, !dbg !170, !tbaa !81
  br label %15, !dbg !171

; <label>:11:                                     ; preds = %8
  %12 = bitcast i32* %3 to i8*, !dbg !172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !172
  store i32 %1, i32* %3, align 4, !tbaa !138
  store i8 -2, i8* %0, align 1, !dbg !176, !tbaa !81
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !177
  %14 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %12, i64 4) #5, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !179
  br label %15, !dbg !180

; <label>:15:                                     ; preds = %11, %9, %6
  %16 = phi i32 [ %7, %6 ], [ 1, %9 ], [ 5, %11 ], !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  ret i32 %16, !dbg !182
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipPrevLenByteDiff(i8* nocapture readonly, i32) local_unnamed_addr #0 !dbg !183 {
  %3 = load i8, i8* %0, align 1, !dbg !190, !tbaa !81
  %4 = icmp ult i8 %3, -2, !dbg !190
  %5 = select i1 %4, i32 1, i32 5, !dbg !193
  %6 = icmp ult i32 %1, 254, !dbg !199
  %7 = select i1 %6, i32 1, i32 5, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  %8 = sub nsw i32 %7, %5, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  ret i32 %8, !dbg !203
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipRawEntryLength(i8* nocapture readonly) local_unnamed_addr #0 !dbg !204 {
  %2 = load i8, i8* %0, align 1, !dbg !214, !tbaa !81
  %3 = icmp ult i8 %2, -2, !dbg !214
  %4 = select i1 %3, i32 1, i32 5, !dbg !217
  %5 = zext i32 %4 to i64, !dbg !220
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !220
  %7 = load i8, i8* %6, align 1, !dbg !220, !tbaa !81
  %8 = zext i8 %7 to i32, !dbg !220
  %9 = icmp ult i8 %7, -64, !dbg !224
  %10 = and i32 %8, 192, !dbg !224
  %11 = select i1 %9, i32 %10, i32 %8, !dbg !220
  %12 = icmp ult i32 %11, 192, !dbg !226
  %13 = trunc i32 %11 to i8, !dbg !228
  br i1 %12, label %14, label %46, !dbg !230

; <label>:14:                                     ; preds = %1
  switch i8 %13, label %45 [
    i8 0, label %15
    i8 64, label %18
    i8 -128, label %26
  ], !dbg !228

; <label>:15:                                     ; preds = %14
  %16 = and i8 %7, 63, !dbg !232
  %17 = zext i8 %16 to i32, !dbg !232
  br label %57, !dbg !232

; <label>:18:                                     ; preds = %14
  %19 = and i8 %7, 63, !dbg !236
  %20 = zext i8 %19 to i32, !dbg !236
  %21 = shl nuw nsw i32 %20, 8, !dbg !236
  %22 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !236
  %23 = load i8, i8* %22, align 1, !dbg !236, !tbaa !81
  %24 = zext i8 %23 to i32, !dbg !236
  %25 = or i32 %21, %24, !dbg !236
  br label %57, !dbg !236

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !239
  %28 = load i8, i8* %27, align 1, !dbg !239, !tbaa !81
  %29 = zext i8 %28 to i32, !dbg !239
  %30 = shl nuw i32 %29, 24, !dbg !239
  %31 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !239
  %32 = load i8, i8* %31, align 1, !dbg !239, !tbaa !81
  %33 = zext i8 %32 to i32, !dbg !239
  %34 = shl nuw nsw i32 %33, 16, !dbg !239
  %35 = or i32 %34, %30, !dbg !239
  %36 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !239
  %37 = load i8, i8* %36, align 1, !dbg !239, !tbaa !81
  %38 = zext i8 %37 to i32, !dbg !239
  %39 = shl nuw nsw i32 %38, 8, !dbg !239
  %40 = or i32 %35, %39, !dbg !239
  %41 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !239
  %42 = load i8, i8* %41, align 1, !dbg !239, !tbaa !81
  %43 = zext i8 %42 to i32, !dbg !239
  %44 = or i32 %40, %43, !dbg !239
  br label %57

; <label>:45:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %11) #5, !dbg !242
  tail call void @_exit(i32 1) #6, !dbg !242
  unreachable, !dbg !242

; <label>:46:                                     ; preds = %1
  switch i8 %13, label %51 [
    i8 -2, label %55
    i8 -64, label %47
    i8 -16, label %48
    i8 -48, label %49
    i8 -32, label %50
  ], !dbg !247

; <label>:47:                                     ; preds = %46
  br label %55, !dbg !248

; <label>:48:                                     ; preds = %46
  br label %55, !dbg !249

; <label>:49:                                     ; preds = %46
  br label %55, !dbg !250

; <label>:50:                                     ; preds = %46
  br label %55, !dbg !251

; <label>:51:                                     ; preds = %46
  %52 = add i8 %13, 15, !dbg !252
  %53 = icmp ult i8 %52, 13, !dbg !252
  br i1 %53, label %55, label %54, !dbg !252

; <label>:54:                                     ; preds = %51
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %11) #5, !dbg !253
  tail call void @_exit(i32 1) #6, !dbg !253
  unreachable, !dbg !253

; <label>:55:                                     ; preds = %46, %47, %48, %49, %50, %51
  %56 = phi i32 [ 8, %50 ], [ 4, %49 ], [ 3, %48 ], [ 2, %47 ], [ 1, %46 ], [ 0, %51 ], !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  br label %57

; <label>:57:                                     ; preds = %15, %26, %18, %55
  %58 = phi i32 [ 1, %15 ], [ 2, %18 ], [ 5, %26 ], [ 1, %55 ], !dbg !232
  %59 = phi i32 [ %17, %15 ], [ %25, %18 ], [ %44, %26 ], [ %56, %55 ], !dbg !232
  %60 = add nuw nsw i32 %58, %4, !dbg !256
  %61 = add i32 %60, %59, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  ret i32 %61, !dbg !258
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipTryEncoding(i8*, i32, i64* nocapture, i8* nocapture) local_unnamed_addr #0 !dbg !259 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !273
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !273
  %7 = add i32 %1, -1, !dbg !274
  %8 = icmp ugt i32 %7, 30, !dbg !274
  br i1 %8, label %34, label %9, !dbg !274

; <label>:9:                                      ; preds = %4
  %10 = zext i32 %1 to i64, !dbg !276
  %11 = call i32 @string2ll(i8* %0, i64 %10, i64* nonnull %5) #5, !dbg !279
  %12 = icmp eq i32 %11, 0, !dbg !279
  br i1 %12, label %34, label %13, !dbg !280

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %5, align 8, !dbg !281, !tbaa !284
  %15 = icmp ult i64 %14, 13, !dbg !286
  br i1 %15, label %16, label %19, !dbg !286

; <label>:16:                                     ; preds = %13
  %17 = trunc i64 %14 to i8, !dbg !287
  %18 = add i8 %17, -15, !dbg !287
  br label %32, !dbg !289

; <label>:19:                                     ; preds = %13
  %20 = add i64 %14, 128, !dbg !290
  %21 = icmp ult i64 %20, 256, !dbg !290
  br i1 %21, label %32, label %22, !dbg !290

; <label>:22:                                     ; preds = %19
  %23 = add i64 %14, 32768, !dbg !292
  %24 = icmp ult i64 %23, 65536, !dbg !292
  br i1 %24, label %32, label %25, !dbg !292

; <label>:25:                                     ; preds = %22
  %26 = add i64 %14, 8388608, !dbg !294
  %27 = icmp ult i64 %26, 16777216, !dbg !294
  br i1 %27, label %32, label %28, !dbg !294

; <label>:28:                                     ; preds = %25
  %29 = add i64 %14, 2147483648, !dbg !296
  %30 = icmp ult i64 %29, 4294967296, !dbg !296
  %31 = select i1 %30, i8 -48, i8 -32, !dbg !298
  br label %32, !dbg !298

; <label>:32:                                     ; preds = %28, %25, %22, %19, %16
  %33 = phi i8 [ %18, %16 ], [ -2, %19 ], [ -64, %22 ], [ -16, %25 ], [ %31, %28 ]
  store i8 %33, i8* %3, align 1, !dbg !300, !tbaa !81
  store i64 %14, i64* %2, align 8, !dbg !301, !tbaa !284
  br label %34, !dbg !302

; <label>:34:                                     ; preds = %9, %4, %32
  %35 = phi i32 [ 1, %32 ], [ 0, %4 ], [ 0, %9 ], !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  ret i32 %35, !dbg !304
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @zipSaveInteger(i8*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !305 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast i16* %4 to i8*, !dbg !326
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #7, !dbg !326
  %8 = bitcast i32* %5 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !327
  %9 = bitcast i64* %6 to i8*, !dbg !328
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !328
  switch i8 %2, label %25 [
    i8 -2, label %10
    i8 -64, label %12
    i8 -16, label %15
    i8 -48, label %20
    i8 -32, label %23
  ], !dbg !329

; <label>:10:                                     ; preds = %3
  %11 = trunc i64 %1 to i8, !dbg !330
  store i8 %11, i8* %0, align 1, !dbg !333, !tbaa !81
  br label %29, !dbg !334

; <label>:12:                                     ; preds = %3
  %13 = trunc i64 %1 to i16, !dbg !335
  store i16 %13, i16* %4, align 2, !dbg !339, !tbaa !340
  %14 = call i8* @memcpy(i8* %0, i8* nonnull %7, i64 2) #5, !dbg !342
  br label %29, !dbg !343

; <label>:15:                                     ; preds = %3
  %16 = trunc i64 %1 to i32, !dbg !344
  %17 = shl i32 %16, 8, !dbg !344
  store i32 %17, i32* %5, align 4, !dbg !348, !tbaa !138
  %18 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !349
  %19 = call i8* @memcpy(i8* %0, i8* nonnull %18, i64 3) #5, !dbg !350
  br label %29, !dbg !351

; <label>:20:                                     ; preds = %3
  %21 = trunc i64 %1 to i32, !dbg !352
  store i32 %21, i32* %5, align 4, !dbg !355, !tbaa !138
  %22 = call i8* @memcpy(i8* %0, i8* nonnull %8, i64 4) #5, !dbg !356
  br label %29, !dbg !357

; <label>:23:                                     ; preds = %3
  store i64 %1, i64* %6, align 8, !dbg !359, !tbaa !362
  %24 = call i8* @memcpy(i8* %0, i8* nonnull %9, i64 8) #5, !dbg !364
  br label %29, !dbg !365

; <label>:25:                                     ; preds = %3
  %26 = add i8 %2, 15, !dbg !366
  %27 = icmp ult i8 %26, 13, !dbg !366
  br i1 %27, label %29, label %28, !dbg !366

; <label>:28:                                     ; preds = %25
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 532) #5, !dbg !368
  tail call void @_exit(i32 1) #6, !dbg !368
  unreachable, !dbg !368

; <label>:29:                                     ; preds = %25, %12, %20, %23, %15, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #7, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  ret void, !dbg !370
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @zipLoadInteger(i8*, i8 zeroext) local_unnamed_addr #0 !dbg !371 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i16* %3 to i8*, !dbg !383
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #7, !dbg !383
  %7 = bitcast i32* %4 to i8*, !dbg !384
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7, !dbg !384
  %8 = bitcast i64* %5 to i8*, !dbg !385
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !385
  switch i8 %1, label %29 [
    i8 -2, label %9
    i8 -64, label %12
    i8 -48, label %16
    i8 -16, label %20
    i8 -32, label %26
  ], !dbg !387

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %0, align 1, !dbg !388, !tbaa !81
  %11 = sext i8 %10 to i64, !dbg !388
  br label %37, !dbg !391

; <label>:12:                                     ; preds = %2
  %13 = call i8* @memcpy(i8* nonnull %6, i8* %0, i64 2) #5, !dbg !392
  %14 = load i16, i16* %3, align 2, !dbg !395, !tbaa !340
  %15 = sext i16 %14 to i64, !dbg !395
  br label %37, !dbg !397

; <label>:16:                                     ; preds = %2
  %17 = call i8* @memcpy(i8* nonnull %7, i8* %0, i64 4) #5, !dbg !398
  %18 = load i32, i32* %4, align 4, !dbg !401, !tbaa !138
  %19 = sext i32 %18 to i64, !dbg !401
  br label %37, !dbg !403

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %4, align 4, !dbg !404, !tbaa !138
  %21 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !407
  %22 = call i8* @memcpy(i8* nonnull %21, i8* %0, i64 3) #5, !dbg !408
  %23 = load i32, i32* %4, align 4, !dbg !409, !tbaa !138
  %24 = ashr i32 %23, 8, !dbg !410
  %25 = sext i32 %24 to i64, !dbg !409
  br label %37, !dbg !411

; <label>:26:                                     ; preds = %2
  %27 = call i8* @memcpy(i8* nonnull %8, i8* %0, i64 8) #5, !dbg !412
  %28 = load i64, i64* %5, align 8, !dbg !415, !tbaa !362
  br label %37, !dbg !417

; <label>:29:                                     ; preds = %2
  %30 = add i8 %1, 15, !dbg !418
  %31 = icmp ult i8 %30, 13, !dbg !418
  br i1 %31, label %32, label %36, !dbg !418

; <label>:32:                                     ; preds = %29
  %33 = and i8 %1, 15, !dbg !420
  %34 = zext i8 %33 to i64, !dbg !420
  %35 = add nsw i64 %34, -1, !dbg !422
  br label %37

; <label>:36:                                     ; preds = %29
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 563) #5, !dbg !423
  tail call void @_exit(i32 1) #6, !dbg !423
  unreachable, !dbg !423

; <label>:37:                                     ; preds = %12, %20, %32, %26, %16, %9
  %38 = phi i64 [ %11, %9 ], [ %15, %12 ], [ %19, %16 ], [ %25, %20 ], [ %28, %26 ], [ %35, %32 ], !dbg !425
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #7, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret i64 %38, !dbg !427
}

; Function Attrs: noredzone nounwind
define dso_local void @zipEntry(i8*, %struct.zlentry*) local_unnamed_addr #0 !dbg !428 {
  %3 = load i8, i8* %0, align 1, !dbg !447, !tbaa !81
  %4 = icmp ult i8 %3, -2, !dbg !447
  %5 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 0, !dbg !451
  %6 = select i1 %4, i32 1, i32 5, !dbg !451
  store i32 %6, i32* %5, align 8, !dbg !453, !tbaa !455
  br i1 %4, label %7, label %11, !dbg !458

; <label>:7:                                      ; preds = %2
  %8 = load i8, i8* %0, align 1, !dbg !459, !tbaa !81
  %9 = zext i8 %8 to i32, !dbg !459
  %10 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !459
  store i32 %9, i32* %10, align 4, !dbg !459, !tbaa !462
  br label %17, !dbg !459

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !463
  %13 = bitcast i32* %12 to i8*, !dbg !463
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !463
  %15 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull %14, i64 4) #5, !dbg !463
  %16 = load i32, i32* %5, align 8, !dbg !466, !tbaa !455
  br label %17, !dbg !463

; <label>:17:                                     ; preds = %7, %11
  %18 = phi i32 [ 1, %7 ], [ %16, %11 ], !dbg !466
  %19 = zext i32 %18 to i64, !dbg !466
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !466
  %21 = load i8, i8* %20, align 1, !dbg !466, !tbaa !81
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 5, !dbg !466
  %23 = icmp ult i8 %21, -64, !dbg !469
  %24 = and i8 %21, -64, !dbg !469
  %25 = select i1 %23, i8 %24, i8 %21, !dbg !466
  store i8 %25, i8* %22, align 4, !dbg !469, !tbaa !471
  %26 = zext i8 %25 to i32, !dbg !472
  %27 = icmp ult i8 %25, -64, !dbg !472
  br i1 %27, label %28, label %65, !dbg !474

; <label>:28:                                     ; preds = %17
  switch i8 %25, label %64 [
    i8 0, label %29
    i8 64, label %34
    i8 -128, label %44
  ], !dbg !475

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !477
  store i32 1, i32* %30, align 8, !dbg !477, !tbaa !480
  %31 = load i8, i8* %20, align 1, !dbg !477, !tbaa !81
  %32 = and i8 %31, 63, !dbg !477
  %33 = zext i8 %32 to i32, !dbg !477
  br label %77, !dbg !477

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !481
  store i32 2, i32* %35, align 8, !dbg !481, !tbaa !480
  %36 = load i8, i8* %20, align 1, !dbg !481, !tbaa !81
  %37 = and i8 %36, 63, !dbg !481
  %38 = zext i8 %37 to i32, !dbg !481
  %39 = shl nuw nsw i32 %38, 8, !dbg !481
  %40 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !481
  %41 = load i8, i8* %40, align 1, !dbg !481, !tbaa !81
  %42 = zext i8 %41 to i32, !dbg !481
  %43 = or i32 %39, %42, !dbg !481
  br label %77, !dbg !481

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !484
  store i32 5, i32* %45, align 8, !dbg !484, !tbaa !480
  %46 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !484
  %47 = load i8, i8* %46, align 1, !dbg !484, !tbaa !81
  %48 = zext i8 %47 to i32, !dbg !484
  %49 = shl nuw i32 %48, 24, !dbg !484
  %50 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !484
  %51 = load i8, i8* %50, align 1, !dbg !484, !tbaa !81
  %52 = zext i8 %51 to i32, !dbg !484
  %53 = shl nuw nsw i32 %52, 16, !dbg !484
  %54 = or i32 %53, %49, !dbg !484
  %55 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !484
  %56 = load i8, i8* %55, align 1, !dbg !484, !tbaa !81
  %57 = zext i8 %56 to i32, !dbg !484
  %58 = shl nuw nsw i32 %57, 8, !dbg !484
  %59 = or i32 %54, %58, !dbg !484
  %60 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !484
  %61 = load i8, i8* %60, align 1, !dbg !484, !tbaa !81
  %62 = zext i8 %61 to i32, !dbg !484
  %63 = or i32 %59, %62, !dbg !484
  br label %77

; <label>:64:                                     ; preds = %28
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %26) #5, !dbg !487
  tail call void @_exit(i32 1) #6, !dbg !487
  unreachable, !dbg !487

; <label>:65:                                     ; preds = %17
  %66 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !489
  store i32 1, i32* %66, align 8, !dbg !489, !tbaa !480
  switch i8 %25, label %71 [
    i8 -2, label %75
    i8 -64, label %67
    i8 -16, label %68
    i8 -48, label %69
    i8 -32, label %70
  ], !dbg !493

; <label>:67:                                     ; preds = %65
  br label %75, !dbg !494

; <label>:68:                                     ; preds = %65
  br label %75, !dbg !495

; <label>:69:                                     ; preds = %65
  br label %75, !dbg !496

; <label>:70:                                     ; preds = %65
  br label %75, !dbg !497

; <label>:71:                                     ; preds = %65
  %72 = add i8 %25, 15, !dbg !498
  %73 = icmp ult i8 %72, 13, !dbg !498
  br i1 %73, label %75, label %74, !dbg !498

; <label>:74:                                     ; preds = %71
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26) #5, !dbg !499
  tail call void @_exit(i32 1) #6, !dbg !499
  unreachable, !dbg !499

; <label>:75:                                     ; preds = %65, %67, %68, %69, %70, %71
  %76 = phi i32 [ 8, %70 ], [ 4, %69 ], [ 3, %68 ], [ 2, %67 ], [ 1, %65 ], [ 0, %71 ], !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br label %77

; <label>:77:                                     ; preds = %75, %34, %44, %29
  %78 = phi i32 [ %76, %75 ], [ %43, %34 ], [ %63, %44 ], [ %33, %29 ]
  %79 = phi i32 [ 1, %75 ], [ 2, %34 ], [ 5, %44 ], [ 1, %29 ], !dbg !502
  %80 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 3, !dbg !489
  store i32 %78, i32* %80, align 4, !dbg !489, !tbaa !503
  %81 = add i32 %79, %18, !dbg !504
  %82 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 4, !dbg !505
  store i32 %81, i32* %82, align 8, !dbg !506, !tbaa !507
  %83 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 6, !dbg !508
  store i8* %0, i8** %83, align 8, !dbg !509, !tbaa !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  ret void, !dbg !511
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNew() local_unnamed_addr #0 !dbg !512 {
  %1 = tail call i8* @zmalloc(i64 11) #5, !dbg !519
  %2 = bitcast i8* %1 to i32*, !dbg !521
  store i32 11, i32* %2, align 4, !dbg !522, !tbaa !138
  %3 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !523
  %4 = bitcast i8* %3 to i32*, !dbg !523
  store i32 10, i32* %4, align 4, !dbg !524, !tbaa !138
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !525
  %6 = bitcast i8* %5 to i16*, !dbg !525
  store i16 0, i16* %6, align 2, !dbg !526, !tbaa !340
  %7 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !527
  store i8 -1, i8* %7, align 1, !dbg !528, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  ret i8* %1, !dbg !529
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistResize(i8*, i32) local_unnamed_addr #0 !dbg !530 {
  %3 = zext i32 %1 to i64, !dbg !538
  %4 = tail call i8* @zrealloc(i8* %0, i64 %3) #5, !dbg !539
  %5 = bitcast i8* %4 to i32*, !dbg !540
  store i32 %1, i32* %5, align 4, !dbg !541, !tbaa !138
  %6 = add i32 %1, -1, !dbg !542
  %7 = zext i32 %6 to i64, !dbg !543
  %8 = getelementptr inbounds i8, i8* %4, i64 %7, !dbg !543
  store i8 -1, i8* %8, align 1, !dbg !544, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  ret i8* %4, !dbg !545
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistCascadeUpdate(i8*, i8*) local_unnamed_addr #0 !dbg !546 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zlentry, align 8
  %7 = alloca %struct.zlentry, align 8
  %8 = bitcast i8* %0 to i32*, !dbg !567
  %9 = load i32, i32* %8, align 4, !dbg !567, !tbaa !138
  %10 = bitcast %struct.zlentry* %6 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #7, !dbg !568
  %11 = bitcast %struct.zlentry* %7 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #7, !dbg !568
  %12 = load i8, i8* %1, align 1, !dbg !569, !tbaa !81
  %13 = icmp eq i8 %12, -1, !dbg !570
  br i1 %13, label %107, label %14, !dbg !571

; <label>:14:                                     ; preds = %2
  %15 = zext i32 %9 to i64, !dbg !567
  %16 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4
  %17 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 0
  %20 = bitcast i32* %4 to i8*
  br label %21, !dbg !571

; <label>:21:                                     ; preds = %14, %85
  %22 = phi i8* [ %0, %14 ], [ %50, %85 ]
  %23 = phi i8* [ %1, %14 ], [ %56, %85 ]
  %24 = phi i64 [ %15, %14 ], [ %47, %85 ]
  call void @zipEntry(i8* nonnull %23, %struct.zlentry* nonnull %6) #8, !dbg !574
  %25 = load i32, i32* %16, align 8, !dbg !576, !tbaa !507
  %26 = load i32, i32* %17, align 4, !dbg !577, !tbaa !503
  %27 = add i32 %26, %25, !dbg !578
  %28 = zext i32 %27 to i64, !dbg !579
  %29 = icmp ult i32 %27, 254, !dbg !584
  %30 = select i1 %29, i32 1, i32 5, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %31 = zext i32 %30 to i64, !dbg !587
  %32 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !589
  %33 = load i8, i8* %32, align 1, !dbg !589, !tbaa !81
  %34 = icmp eq i8 %33, -1, !dbg !591
  br i1 %34, label %107, label %35, !dbg !592

; <label>:35:                                     ; preds = %21
  call void @zipEntry(i8* %32, %struct.zlentry* nonnull %7) #8, !dbg !594
  %36 = load i32, i32* %18, align 4, !dbg !595, !tbaa !462
  %37 = icmp eq i32 %36, %27, !dbg !597
  br i1 %37, label %107, label %38, !dbg !598

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %19, align 8, !dbg !599, !tbaa !455
  %40 = icmp ugt i32 %30, %39, !dbg !601
  br i1 %40, label %41, label %88, !dbg !602

; <label>:41:                                     ; preds = %38
  %42 = zext i32 %39 to i64, !dbg !603
  %43 = ptrtoint i8* %23 to i64, !dbg !604
  %44 = ptrtoint i8* %22 to i64, !dbg !604
  %45 = sub i64 %43, %44, !dbg !604
  %46 = sub nsw i64 %31, %42, !dbg !607
  %47 = add i64 %46, %24, !dbg !609
  %48 = trunc i64 %47 to i32, !dbg !610
  %49 = and i64 %47, 4294967295, !dbg !614
  %50 = call i8* @zrealloc(i8* nonnull %22, i64 %49) #5, !dbg !615
  %51 = bitcast i8* %50 to i32*, !dbg !616
  store i32 %48, i32* %51, align 4, !dbg !617, !tbaa !138
  %52 = add i64 %47, 4294967295, !dbg !618
  %53 = and i64 %52, 4294967295, !dbg !619
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !619
  store i8 -1, i8* %54, align 1, !dbg !620, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %55 = getelementptr inbounds i8, i8* %50, i64 %45, !dbg !622
  %56 = getelementptr inbounds i8, i8* %55, i64 %28, !dbg !623
  %57 = ptrtoint i8* %56 to i64, !dbg !625
  %58 = ptrtoint i8* %50 to i64, !dbg !625
  %59 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !626
  %60 = bitcast i8* %59 to i32*, !dbg !626
  %61 = load i32, i32* %60, align 4, !dbg !626, !tbaa !138
  %62 = zext i32 %61 to i64, !dbg !628
  %63 = getelementptr inbounds i8, i8* %50, i64 %62, !dbg !628
  %64 = icmp eq i8* %63, %56, !dbg !629
  br i1 %64, label %68, label %65, !dbg !630

; <label>:65:                                     ; preds = %41
  %66 = trunc i64 %46 to i32, !dbg !631
  %67 = add i32 %61, %66, !dbg !631
  store i32 %67, i32* %60, align 4, !dbg !633, !tbaa !138
  br label %68, !dbg !634

; <label>:68:                                     ; preds = %41, %65
  %69 = getelementptr inbounds i8, i8* %56, i64 %31, !dbg !635
  %70 = load i32, i32* %19, align 8, !dbg !636, !tbaa !455
  %71 = zext i32 %70 to i64, !dbg !637
  %72 = getelementptr inbounds i8, i8* %56, i64 %71, !dbg !637
  %73 = xor i64 %71, -1, !dbg !638
  %74 = add i64 %24, %58, !dbg !639
  %75 = sub i64 %74, %57, !dbg !639
  %76 = add i64 %75, %73, !dbg !638
  %77 = call i8* @memmove(i8* nonnull %69, i8* %72, i64 %76) #5, !dbg !640
  %78 = icmp eq i8* %56, null, !dbg !644
  br i1 %78, label %85, label %79, !dbg !645

; <label>:79:                                     ; preds = %68
  br i1 %29, label %80, label %82, !dbg !646

; <label>:80:                                     ; preds = %79
  %81 = trunc i32 %27 to i8, !dbg !647
  store i8 %81, i8* %56, align 1, !dbg !648, !tbaa !81
  br label %85, !dbg !649

; <label>:82:                                     ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !650
  store i32 %27, i32* %4, align 4, !tbaa !138
  store i8 -2, i8* %56, align 1, !dbg !653, !tbaa !81
  %83 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !654
  %84 = call i8* @memcpy(i8* nonnull %83, i8* nonnull %20, i64 4) #5, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !656
  br label %85, !dbg !657

; <label>:85:                                     ; preds = %68, %80, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %86 = load i8, i8* %56, align 1, !dbg !569, !tbaa !81
  %87 = icmp eq i8 %86, -1, !dbg !570
  br i1 %87, label %107, label %21, !dbg !571, !llvm.loop !659

; <label>:88:                                     ; preds = %38
  %89 = icmp ult i32 %30, %39, !dbg !661
  br i1 %89, label %90, label %97, !dbg !664

; <label>:90:                                     ; preds = %88
  %91 = bitcast i32* %3 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91), !dbg !665
  store i32 %27, i32* %3, align 4, !tbaa !138
  %92 = icmp eq i8* %32, null, !dbg !669
  br i1 %92, label %96, label %93, !dbg !670

; <label>:93:                                     ; preds = %90
  store i8 -2, i8* %32, align 1, !dbg !671, !tbaa !81
  %94 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !672
  %95 = call i8* @memcpy(i8* nonnull %94, i8* nonnull %91, i64 4) #5, !dbg !673
  br label %96, !dbg !674

; <label>:96:                                     ; preds = %90, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91), !dbg !675
  br label %107, !dbg !676

; <label>:97:                                     ; preds = %88
  %98 = icmp eq i8* %32, null, !dbg !681
  br i1 %98, label %106, label %99, !dbg !682

; <label>:99:                                     ; preds = %97
  br i1 %29, label %100, label %102, !dbg !683

; <label>:100:                                    ; preds = %99
  %101 = trunc i32 %27 to i8, !dbg !684
  store i8 %101, i8* %32, align 1, !dbg !685, !tbaa !81
  br label %106, !dbg !686

; <label>:102:                                    ; preds = %99
  %103 = bitcast i32* %5 to i8*, !dbg !687
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %103) #7, !dbg !687
  store i32 %27, i32* %5, align 4, !tbaa !138
  store i8 -2, i8* %32, align 1, !dbg !690, !tbaa !81
  %104 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !691
  %105 = call i8* @memcpy(i8* nonnull %104, i8* nonnull %103, i64 4) #5, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %103) #7, !dbg !693
  br label %106, !dbg !694

; <label>:106:                                    ; preds = %97, %100, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  br label %107

; <label>:107:                                    ; preds = %21, %35, %85, %2, %96, %106
  %108 = phi i8* [ %22, %96 ], [ %22, %106 ], [ %0, %2 ], [ %22, %21 ], [ %22, %35 ], [ %50, %85 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #7, !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #7, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret i8* %108, !dbg !697
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistDelete(i8*, i8*, i32) local_unnamed_addr #0 !dbg !698 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlentry, align 8
  %6 = alloca %struct.zlentry, align 8
  %7 = bitcast %struct.zlentry* %5 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #7, !dbg !717
  %8 = bitcast %struct.zlentry* %6 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #7, !dbg !717
  call void @zipEntry(i8* %1, %struct.zlentry* nonnull %5) #8, !dbg !719
  %9 = load i8, i8* %1, align 1, !dbg !721, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !724
  %11 = icmp ne i32 %2, 0, !dbg !725
  %12 = xor i1 %10, true, !dbg !726
  %13 = and i1 %11, %12, !dbg !726
  br i1 %13, label %14, label %28, !dbg !727

; <label>:14:                                     ; preds = %3, %14
  %15 = phi i32 [ %20, %14 ], [ 0, %3 ]
  %16 = phi i8* [ %19, %14 ], [ %1, %3 ]
  %17 = call i32 @zipRawEntryLength(i8* %16) #8, !dbg !728
  %18 = zext i32 %17 to i64, !dbg !730
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !730
  %20 = add nuw i32 %15, 1, !dbg !731
  %21 = load i8, i8* %19, align 1, !dbg !721, !tbaa !81
  %22 = icmp eq i8 %21, -1, !dbg !724
  %23 = icmp ult i32 %20, %2, !dbg !725
  %24 = xor i1 %22, true, !dbg !726
  %25 = and i1 %23, %24, !dbg !726
  br i1 %25, label %14, label %26, !dbg !727, !llvm.loop !732

; <label>:26:                                     ; preds = %14
  %27 = trunc i32 %20 to i16, !dbg !734
  br label %28, !dbg !734

; <label>:28:                                     ; preds = %26, %3
  %29 = phi i8* [ %1, %3 ], [ %19, %26 ]
  %30 = phi i16 [ 0, %3 ], [ %27, %26 ]
  %31 = phi i8 [ %9, %3 ], [ %21, %26 ], !dbg !721
  %32 = phi i1 [ %10, %3 ], [ %22, %26 ], !dbg !724
  %33 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 6, !dbg !734
  %34 = bitcast i8** %33 to i64*, !dbg !734
  %35 = load i64, i64* %34, align 8, !dbg !734, !tbaa !510
  %36 = ptrtoint i8* %29 to i64, !dbg !735
  %37 = sub i64 %36, %35, !dbg !735
  %38 = trunc i64 %37 to i32, !dbg !736
  %39 = icmp eq i32 %38, 0, !dbg !738
  br i1 %39, label %124, label %40, !dbg !740

; <label>:40:                                     ; preds = %28
  br i1 %32, label %90, label %41, !dbg !741

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !743
  %43 = load i32, i32* %42, align 4, !dbg !743, !tbaa !462
  %44 = icmp eq i8 %31, -2, !dbg !749
  %45 = select i1 %44, i32 5, i32 1, !dbg !750
  %46 = icmp ult i32 %43, 254, !dbg !755
  %47 = select i1 %46, i32 1, i32 5, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %48 = sub nsw i32 %47, %45, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  %49 = sext i32 %48 to i64, !dbg !760
  %50 = sub nsw i64 0, %49, !dbg !760
  %51 = getelementptr inbounds i8, i8* %29, i64 %50, !dbg !760
  %52 = icmp eq i8* %51, null, !dbg !764
  br i1 %52, label %60, label %53, !dbg !765

; <label>:53:                                     ; preds = %41
  br i1 %46, label %54, label %56, !dbg !766

; <label>:54:                                     ; preds = %53
  %55 = trunc i32 %43 to i8, !dbg !767
  store i8 %55, i8* %51, align 1, !dbg !768, !tbaa !81
  br label %60, !dbg !769

; <label>:56:                                     ; preds = %53
  %57 = bitcast i32* %4 to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #7, !dbg !770
  store i32 %43, i32* %4, align 4, !tbaa !138
  store i8 -2, i8* %51, align 1, !dbg !773, !tbaa !81
  %58 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !774
  %59 = call i8* @memcpy(i8* nonnull %58, i8* nonnull %57, i64 4) #5, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #7, !dbg !776
  br label %60, !dbg !777

; <label>:60:                                     ; preds = %41, %54, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %61 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !779
  %62 = bitcast i8* %61 to i32*, !dbg !779
  %63 = load i32, i32* %62, align 4, !dbg !779, !tbaa !138
  %64 = sub i32 %63, %38, !dbg !779
  store i32 %64, i32* %62, align 4, !dbg !780, !tbaa !138
  call void @zipEntry(i8* %51, %struct.zlentry* nonnull %6) #8, !dbg !782
  %65 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4, !dbg !783
  %66 = load i32, i32* %65, align 8, !dbg !783, !tbaa !507
  %67 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3, !dbg !785
  %68 = load i32, i32* %67, align 4, !dbg !785, !tbaa !503
  %69 = add i32 %68, %66, !dbg !786
  %70 = zext i32 %69 to i64, !dbg !787
  %71 = getelementptr inbounds i8, i8* %51, i64 %70, !dbg !787
  %72 = load i8, i8* %71, align 1, !dbg !787, !tbaa !81
  %73 = icmp eq i8 %72, -1, !dbg !788
  br i1 %73, label %77, label %74, !dbg !789

; <label>:74:                                     ; preds = %60
  %75 = load i32, i32* %62, align 4, !dbg !790, !tbaa !138
  %76 = add i32 %75, %48, !dbg !790
  store i32 %76, i32* %62, align 4, !dbg !792, !tbaa !138
  br label %77, !dbg !793

; <label>:77:                                     ; preds = %60, %74
  %78 = load i8*, i8** %33, align 8, !dbg !794, !tbaa !510
  %79 = bitcast i8* %0 to i32*, !dbg !795
  %80 = load i32, i32* %79, align 4, !dbg !795, !tbaa !138
  %81 = zext i32 %80 to i64, !dbg !795
  %82 = ptrtoint i8* %51 to i64, !dbg !796
  %83 = ptrtoint i8* %0 to i64, !dbg !796
  %84 = xor i64 %82, -1, !dbg !797
  %85 = add i64 %84, %83, !dbg !797
  %86 = add i64 %85, %81, !dbg !798
  %87 = call i8* @memmove(i8* %78, i8* nonnull %51, i64 %86) #5, !dbg !799
  %88 = load i64, i64* %34, align 8, !dbg !800, !tbaa !510
  %89 = sub i64 %88, %83, !dbg !801
  br label %100, !dbg !802

; <label>:90:                                     ; preds = %40
  %91 = ptrtoint i8* %0 to i64, !dbg !803
  %92 = sub i64 %35, %91, !dbg !803
  %93 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !803
  %94 = load i32, i32* %93, align 4, !dbg !803, !tbaa !462
  %95 = trunc i64 %92 to i32, !dbg !803
  %96 = sub i32 %95, %94, !dbg !803
  %97 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !805
  %98 = bitcast i8* %97 to i32*, !dbg !805
  store i32 %96, i32* %98, align 4, !dbg !806, !tbaa !138
  %99 = bitcast i8* %0 to i32*, !dbg !807
  br label %100

; <label>:100:                                    ; preds = %90, %77
  %101 = phi i32* [ %99, %90 ], [ %79, %77 ], !dbg !807
  %102 = phi i64 [ %92, %90 ], [ %89, %77 ], !dbg !801
  %103 = phi i32 [ 0, %90 ], [ %48, %77 ], !dbg !808
  %104 = load i32, i32* %101, align 4, !dbg !807, !tbaa !138
  %105 = sub i32 %104, %38, !dbg !810
  %106 = add i32 %105, %103, !dbg !811
  %107 = zext i32 %106 to i64, !dbg !815
  %108 = call i8* @zrealloc(i8* nonnull %0, i64 %107) #5, !dbg !816
  %109 = bitcast i8* %108 to i32*, !dbg !817
  store i32 %106, i32* %109, align 4, !dbg !818, !tbaa !138
  %110 = add i32 %106, -1, !dbg !819
  %111 = zext i32 %110 to i64, !dbg !820
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !820
  store i8 -1, i8* %112, align 1, !dbg !821, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  %113 = getelementptr inbounds i8, i8* %108, i64 8, !dbg !823
  %114 = bitcast i8* %113 to i16*, !dbg !823
  %115 = load i16, i16* %114, align 2, !dbg !823, !tbaa !340
  %116 = icmp eq i16 %115, -1, !dbg !823
  br i1 %116, label %119, label %117, !dbg !826

; <label>:117:                                    ; preds = %100
  %118 = sub i16 %115, %30, !dbg !823
  store i16 %118, i16* %114, align 2, !dbg !823, !tbaa !340
  br label %119, !dbg !823

; <label>:119:                                    ; preds = %100, %117
  %120 = icmp eq i32 %103, 0, !dbg !827
  br i1 %120, label %124, label %121, !dbg !829

; <label>:121:                                    ; preds = %119
  %122 = getelementptr inbounds i8, i8* %108, i64 %102, !dbg !830
  %123 = call i8* @__ziplistCascadeUpdate(i8* %108, i8* %122) #8, !dbg !831
  br label %124, !dbg !832

; <label>:124:                                    ; preds = %119, %28, %121
  %125 = phi i8* [ %123, %121 ], [ %108, %119 ], [ %0, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #7, !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #7, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  ret i8* %125, !dbg !834
}

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !835 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zlentry, align 8
  %12 = bitcast i8* %0 to i32*, !dbg !864
  %13 = load i32, i32* %12, align 4, !dbg !864, !tbaa !138
  %14 = zext i32 %13 to i64, !dbg !864
  %15 = bitcast i32* %10 to i8*, !dbg !866
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #7, !dbg !866
  store i32 0, i32* %10, align 4, !dbg !867, !tbaa !138
  %16 = bitcast %struct.zlentry* %11 to i8*, !dbg !871
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #7, !dbg !871
  %17 = load i8, i8* %1, align 1, !dbg !872, !tbaa !81
  switch i8 %17, label %18 [
    i8 -1, label %23
    i8 -2, label %20
  ], !dbg !873

; <label>:18:                                     ; preds = %4
  %19 = zext i8 %17 to i32, !dbg !875
  store i32 %19, i32* %10, align 4, !dbg !875, !tbaa !138
  br label %33, !dbg !875

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !880
  %22 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %21, i64 4) #5, !dbg !880
  br label %33, !dbg !880

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !883
  %25 = bitcast i8* %24 to i32*, !dbg !883
  %26 = load i32, i32* %25, align 4, !dbg !883, !tbaa !138
  %27 = zext i32 %26 to i64, !dbg !883
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !883
  %29 = load i8, i8* %28, align 1, !dbg !885, !tbaa !81
  %30 = icmp eq i8 %29, -1, !dbg !887
  br i1 %30, label %33, label %31, !dbg !888

; <label>:31:                                     ; preds = %23
  %32 = tail call i32 @zipRawEntryLength(i8* %28) #8, !dbg !889
  store i32 %32, i32* %10, align 4, !dbg !891, !tbaa !138
  br label %33, !dbg !892

; <label>:33:                                     ; preds = %31, %23, %18, %20
  %34 = bitcast i64* %9 to i8*, !dbg !897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #7, !dbg !897
  %35 = add i32 %3, -1, !dbg !898
  %36 = icmp ugt i32 %35, 30, !dbg !898
  br i1 %36, label %59, label %37, !dbg !898

; <label>:37:                                     ; preds = %33
  %38 = zext i32 %3 to i64, !dbg !899
  %39 = call i32 @string2ll(i8* %2, i64 %38, i64* nonnull %9) #5, !dbg !901
  %40 = icmp eq i32 %39, 0, !dbg !901
  br i1 %40, label %59, label %41, !dbg !902

; <label>:41:                                     ; preds = %37
  %42 = load i64, i64* %9, align 8, !dbg !903, !tbaa !284
  %43 = icmp ult i64 %42, 13, !dbg !904
  br i1 %43, label %60, label %44, !dbg !904

; <label>:44:                                     ; preds = %41
  %45 = add i64 %42, 128, !dbg !905
  %46 = icmp ult i64 %45, 256, !dbg !905
  br i1 %46, label %47, label %48, !dbg !905

; <label>:47:                                     ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %68, !dbg !910

; <label>:48:                                     ; preds = %44
  %49 = add i64 %42, 32768, !dbg !911
  %50 = icmp ult i64 %49, 65536, !dbg !911
  br i1 %50, label %51, label %52, !dbg !911

; <label>:51:                                     ; preds = %48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %62, !dbg !910

; <label>:52:                                     ; preds = %48
  %53 = add i64 %42, 8388608, !dbg !912
  %54 = icmp ult i64 %53, 16777216, !dbg !912
  br i1 %54, label %55, label %56, !dbg !912

; <label>:55:                                     ; preds = %52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %63, !dbg !910

; <label>:56:                                     ; preds = %52
  %57 = add i64 %42, 2147483648, !dbg !913
  %58 = icmp ult i64 %57, 4294967296, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br i1 %58, label %64, label %65, !dbg !913

; <label>:59:                                     ; preds = %33, %37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  br label %68

; <label>:60:                                     ; preds = %41
  %61 = trunc i64 %42 to i8, !dbg !914
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  switch i8 %61, label %66 [
    i8 13, label %68
    i8 -49, label %62
    i8 -1, label %63
    i8 -33, label %64
    i8 -17, label %65
  ], !dbg !910

; <label>:62:                                     ; preds = %51, %60
  br label %68, !dbg !915

; <label>:63:                                     ; preds = %55, %60
  br label %68, !dbg !916

; <label>:64:                                     ; preds = %56, %60
  br label %68, !dbg !917

; <label>:65:                                     ; preds = %56, %60
  br label %68, !dbg !918

; <label>:66:                                     ; preds = %60
  %67 = add i8 %61, -15, !dbg !914
  br label %68

; <label>:68:                                     ; preds = %65, %64, %63, %62, %60, %47, %66, %59
  %69 = phi i64 [ 123456789, %59 ], [ %42, %66 ], [ %42, %47 ], [ %42, %60 ], [ %42, %62 ], [ %42, %63 ], [ %42, %64 ], [ %42, %65 ]
  %70 = phi i8 [ 0, %59 ], [ %67, %66 ], [ -2, %47 ], [ -2, %60 ], [ -64, %62 ], [ -16, %63 ], [ -48, %64 ], [ -32, %65 ]
  %71 = phi i32 [ %3, %59 ], [ 0, %66 ], [ 1, %47 ], [ 1, %60 ], [ 2, %62 ], [ 3, %63 ], [ 4, %64 ], [ 8, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %72 = zext i32 %71 to i64, !dbg !920
  %73 = load i32, i32* %10, align 4, !dbg !923, !tbaa !138
  %74 = icmp ult i32 %73, 254, !dbg !927
  %75 = select i1 %74, i64 1, i64 5, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  %76 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !934
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %76) #7, !dbg !934
  %77 = icmp ult i8 %70, -64, !dbg !935
  %78 = xor i1 %77, true, !dbg !936
  %79 = icmp ult i32 %3, 64, !dbg !937
  %80 = or i1 %79, %78, !dbg !936
  %81 = icmp ult i32 %3, 16384, !dbg !938
  %82 = select i1 %81, i64 2, i64 5, !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %76) #7, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  %83 = select i1 %80, i64 1, i64 %82, !dbg !941
  %84 = add nuw nsw i64 %83, %72, !dbg !942
  %85 = add nuw nsw i64 %84, %75, !dbg !943
  %86 = load i8, i8* %1, align 1, !dbg !945, !tbaa !81
  %87 = icmp eq i8 %86, -1, !dbg !946
  %88 = trunc i64 %85 to i32, !dbg !947
  br i1 %87, label %95, label %89, !dbg !948

; <label>:89:                                     ; preds = %68
  %90 = icmp eq i8 %86, -2, !dbg !952
  %91 = select i1 %90, i32 5, i32 1, !dbg !953
  %92 = icmp ult i32 %88, 254, !dbg !958
  %93 = select i1 %92, i32 1, i32 5, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  %94 = sub nsw i32 %93, %91, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br label %95, !dbg !948

; <label>:95:                                     ; preds = %68, %89
  %96 = phi i32 [ %94, %89 ], [ 0, %68 ], !dbg !948
  %97 = icmp eq i32 %96, -4, !dbg !963
  %98 = icmp ult i64 %85, 4, !dbg !965
  %99 = and i1 %98, %97, !dbg !966
  %100 = select i1 %99, i32 0, i32 %96, !dbg !966
  %101 = ptrtoint i8* %1 to i64, !dbg !967
  %102 = ptrtoint i8* %0 to i64, !dbg !967
  %103 = sub i64 %101, %102, !dbg !967
  %104 = sext i32 %100 to i64, !dbg !969
  %105 = add i32 %13, %88, !dbg !970
  %106 = add i32 %105, %100, !dbg !970
  %107 = zext i32 %106 to i64, !dbg !974
  %108 = call i8* @zrealloc(i8* nonnull %0, i64 %107) #5, !dbg !975
  %109 = bitcast i8* %108 to i32*, !dbg !976
  store i32 %106, i32* %109, align 4, !dbg !977, !tbaa !138
  %110 = add i32 %106, -1, !dbg !978
  %111 = zext i32 %110 to i64, !dbg !979
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !979
  store i8 -1, i8* %112, align 1, !dbg !980, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %113 = getelementptr inbounds i8, i8* %108, i64 %103, !dbg !982
  %114 = load i8, i8* %113, align 1, !dbg !983, !tbaa !81
  %115 = icmp eq i8 %114, -1, !dbg !985
  br i1 %115, label %156, label %116, !dbg !986

; <label>:116:                                    ; preds = %95
  %117 = getelementptr inbounds i8, i8* %113, i64 %85, !dbg !987
  %118 = sub nsw i64 0, %104, !dbg !989
  %119 = getelementptr inbounds i8, i8* %113, i64 %118, !dbg !989
  %120 = xor i64 %103, -1, !dbg !990
  %121 = add i64 %14, %120, !dbg !990
  %122 = add i64 %121, %104, !dbg !991
  %123 = call i8* @memmove(i8* nonnull %117, i8* %119, i64 %122) #5, !dbg !992
  br i1 %99, label %124, label %128, !dbg !993

; <label>:124:                                    ; preds = %116
  %125 = bitcast i32* %7 to i8*, !dbg !994
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125), !dbg !994
  store i32 %88, i32* %7, align 4, !tbaa !138
  store i8 -2, i8* %117, align 1, !dbg !998, !tbaa !81
  %126 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !999
  %127 = call i8* @memcpy(i8* nonnull %126, i8* nonnull %125, i64 4) #5, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125), !dbg !1001
  br label %137, !dbg !1002

; <label>:128:                                    ; preds = %116
  %129 = icmp ult i32 %88, 254, !dbg !1006
  br i1 %129, label %130, label %132, !dbg !1007

; <label>:130:                                    ; preds = %128
  %131 = trunc i64 %85 to i8, !dbg !1008
  store i8 %131, i8* %117, align 1, !dbg !1009, !tbaa !81
  br label %136, !dbg !1010

; <label>:132:                                    ; preds = %128
  %133 = bitcast i32* %6 to i8*, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133) #7, !dbg !1011
  store i32 %88, i32* %6, align 4, !tbaa !138
  store i8 -2, i8* %117, align 1, !dbg !1014, !tbaa !81
  %134 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1015
  %135 = call i8* @memcpy(i8* nonnull %134, i8* nonnull %133, i64 4) #5, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133) #7, !dbg !1017
  br label %136, !dbg !1018

; <label>:136:                                    ; preds = %130, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br label %137

; <label>:137:                                    ; preds = %136, %124
  %138 = getelementptr inbounds i8, i8* %108, i64 4, !dbg !1020
  %139 = bitcast i8* %138 to i32*, !dbg !1020
  %140 = load i32, i32* %139, align 4, !dbg !1020, !tbaa !138
  %141 = add i32 %140, %88, !dbg !1020
  store i32 %141, i32* %139, align 4, !dbg !1021, !tbaa !138
  call void @zipEntry(i8* nonnull %117, %struct.zlentry* nonnull %11) #8, !dbg !1023
  %142 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %11, i64 0, i32 4, !dbg !1024
  %143 = load i32, i32* %142, align 8, !dbg !1024, !tbaa !507
  %144 = zext i32 %143 to i64, !dbg !1026
  %145 = add nuw nsw i64 %85, %144, !dbg !1027
  %146 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %11, i64 0, i32 3, !dbg !1028
  %147 = load i32, i32* %146, align 4, !dbg !1028, !tbaa !503
  %148 = zext i32 %147 to i64, !dbg !1029
  %149 = add nuw nsw i64 %145, %148, !dbg !1030
  %150 = getelementptr inbounds i8, i8* %113, i64 %149, !dbg !1031
  %151 = load i8, i8* %150, align 1, !dbg !1031, !tbaa !81
  %152 = icmp eq i8 %151, -1, !dbg !1032
  br i1 %152, label %160, label %153, !dbg !1033

; <label>:153:                                    ; preds = %137
  %154 = load i32, i32* %139, align 4, !dbg !1034, !tbaa !138
  %155 = add i32 %154, %100, !dbg !1034
  store i32 %155, i32* %139, align 4, !dbg !1036, !tbaa !138
  br label %160, !dbg !1037

; <label>:156:                                    ; preds = %95
  %157 = trunc i64 %103 to i32, !dbg !1038
  %158 = getelementptr inbounds i8, i8* %108, i64 4, !dbg !1040
  %159 = bitcast i8* %158 to i32*, !dbg !1040
  store i32 %157, i32* %159, align 4, !dbg !1041, !tbaa !138
  br label %160

; <label>:160:                                    ; preds = %137, %153, %156
  %161 = icmp eq i32 %100, 0, !dbg !1042
  br i1 %161, label %162, label %165, !dbg !1044

; <label>:162:                                    ; preds = %160
  %163 = load i32, i32* %10, align 4, !dbg !1045, !tbaa !138
  %164 = icmp ult i32 %163, 254, !dbg !1049
  br i1 %164, label %175, label %180, !dbg !1050

; <label>:165:                                    ; preds = %160
  %166 = getelementptr inbounds i8, i8* %113, i64 %85, !dbg !1051
  %167 = call i8* @__ziplistCascadeUpdate(i8* nonnull %108, i8* nonnull %166) #8, !dbg !1053
  %168 = getelementptr inbounds i8, i8* %167, i64 %103, !dbg !1054
  %169 = load i32, i32* %10, align 4, !dbg !1045, !tbaa !138
  %170 = icmp eq i8* %168, null, !dbg !1055
  %171 = icmp ult i32 %169, 254, !dbg !1049
  br i1 %170, label %172, label %174, !dbg !1056

; <label>:172:                                    ; preds = %165
  %173 = select i1 %171, i64 1, i64 5, !dbg !1057
  br label %187, !dbg !1058

; <label>:174:                                    ; preds = %165
  br i1 %171, label %175, label %180, !dbg !1050

; <label>:175:                                    ; preds = %162, %174
  %176 = phi i8* [ %113, %162 ], [ %168, %174 ]
  %177 = phi i8* [ %108, %162 ], [ %167, %174 ]
  %178 = phi i32 [ %163, %162 ], [ %169, %174 ]
  %179 = trunc i32 %178 to i8, !dbg !1059
  store i8 %179, i8* %176, align 1, !dbg !1060, !tbaa !81
  br label %187, !dbg !1061

; <label>:180:                                    ; preds = %162, %174
  %181 = phi i8* [ %113, %162 ], [ %168, %174 ]
  %182 = phi i8* [ %108, %162 ], [ %167, %174 ]
  %183 = phi i32 [ %163, %162 ], [ %169, %174 ]
  %184 = bitcast i32* %5 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %184) #7, !dbg !1062
  store i32 %183, i32* %5, align 4, !tbaa !138
  store i8 -2, i8* %181, align 1, !dbg !1065, !tbaa !81
  %185 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !1066
  %186 = call i8* @memcpy(i8* nonnull %185, i8* nonnull %184, i64 4) #5, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %184) #7, !dbg !1068
  br label %187, !dbg !1069

; <label>:187:                                    ; preds = %172, %175, %180
  %188 = phi i8* [ %167, %172 ], [ %177, %175 ], [ %182, %180 ]
  %189 = phi i8* [ null, %172 ], [ %176, %175 ], [ %181, %180 ]
  %190 = phi i64 [ %173, %172 ], [ 1, %175 ], [ 5, %180 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  %191 = getelementptr inbounds i8, i8* %189, i64 %190, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %76) #7, !dbg !1076
  br i1 %77, label %192, label %215, !dbg !1077

; <label>:192:                                    ; preds = %187
  br i1 %79, label %193, label %195, !dbg !1078

; <label>:193:                                    ; preds = %192
  %194 = trunc i32 %3 to i8, !dbg !1079
  store i8 %194, i8* %76, align 1, !dbg !1080, !tbaa !81
  br label %216, !dbg !1081

; <label>:195:                                    ; preds = %192
  br i1 %81, label %196, label %203, !dbg !1082

; <label>:196:                                    ; preds = %195
  %197 = lshr i32 %3, 8, !dbg !1083
  %198 = trunc i32 %197 to i8, !dbg !1084
  %199 = and i8 %198, 63, !dbg !1084
  %200 = or i8 %199, 64, !dbg !1084
  store i8 %200, i8* %76, align 1, !dbg !1085, !tbaa !81
  %201 = trunc i32 %3 to i8, !dbg !1086
  %202 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1087
  store i8 %201, i8* %202, align 1, !dbg !1088, !tbaa !81
  br label %216, !dbg !1089

; <label>:203:                                    ; preds = %195
  store i8 -128, i8* %76, align 1, !dbg !1090, !tbaa !81
  %204 = lshr i32 %3, 24, !dbg !1091
  %205 = trunc i32 %204 to i8, !dbg !1092
  %206 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1093
  store i8 %205, i8* %206, align 1, !dbg !1094, !tbaa !81
  %207 = lshr i32 %3, 16, !dbg !1095
  %208 = trunc i32 %207 to i8, !dbg !1096
  %209 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1097
  store i8 %208, i8* %209, align 1, !dbg !1098, !tbaa !81
  %210 = lshr i32 %3, 8, !dbg !1099
  %211 = trunc i32 %210 to i8, !dbg !1100
  %212 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1101
  store i8 %211, i8* %212, align 1, !dbg !1102, !tbaa !81
  %213 = trunc i32 %3 to i8, !dbg !1103
  %214 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4, !dbg !1104
  store i8 %213, i8* %214, align 1, !dbg !1105, !tbaa !81
  br label %216

; <label>:215:                                    ; preds = %187
  store i8 %70, i8* %76, align 1, !dbg !1106, !tbaa !81
  br label %216

; <label>:216:                                    ; preds = %193, %196, %203, %215
  %217 = phi i64 [ 1, %193 ], [ 2, %196 ], [ 5, %203 ], [ 1, %215 ]
  %218 = call i8* @memcpy(i8* nonnull %191, i8* nonnull %76, i64 %217) #5, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %76) #7, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  %219 = getelementptr inbounds i8, i8* %191, i64 %217, !dbg !1109
  br i1 %77, label %220, label %223, !dbg !1110

; <label>:220:                                    ; preds = %216
  %221 = zext i32 %3 to i64, !dbg !1111
  %222 = call i8* @memcpy(i8* nonnull %219, i8* %2, i64 %221) #5, !dbg !1114
  br label %224, !dbg !1115

; <label>:223:                                    ; preds = %216
  call void @zipSaveInteger(i8* nonnull %219, i64 %69, i8 zeroext %70) #8, !dbg !1116
  br label %224

; <label>:224:                                    ; preds = %223, %220
  %225 = getelementptr inbounds i8, i8* %188, i64 8, !dbg !1118
  %226 = bitcast i8* %225 to i16*, !dbg !1118
  %227 = load i16, i16* %226, align 2, !dbg !1118, !tbaa !340
  %228 = icmp eq i16 %227, -1, !dbg !1118
  br i1 %228, label %231, label %229, !dbg !1121

; <label>:229:                                    ; preds = %224
  %230 = add i16 %227, 1, !dbg !1118
  store i16 %230, i16* %226, align 2, !dbg !1118, !tbaa !340
  br label %231, !dbg !1118

; <label>:231:                                    ; preds = %224, %229
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #7, !dbg !1122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #7, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  ret i8* %188, !dbg !1123
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #0 !dbg !1124 {
  %3 = icmp eq i8** %0, null, !dbg !1146
  br i1 %3, label %77, label %4, !dbg !1148

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %0, align 8, !dbg !1149, !tbaa !1150
  %6 = icmp eq i8* %5, null, !dbg !1151
  %7 = icmp eq i8** %1, null, !dbg !1152
  %8 = or i1 %7, %6, !dbg !1153
  br i1 %8, label %77, label %9, !dbg !1153

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %1, align 8, !dbg !1154, !tbaa !1150
  %11 = icmp eq i8* %10, null, !dbg !1155
  %12 = icmp eq i8* %5, %10, !dbg !1156
  %13 = or i1 %11, %12, !dbg !1158
  br i1 %13, label %77, label %14, !dbg !1158

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %5 to i32*, !dbg !1159
  %16 = load i32, i32* %15, align 4, !dbg !1159, !tbaa !138
  %17 = zext i32 %16 to i64, !dbg !1159
  %18 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !1161
  %19 = bitcast i8* %18 to i16*, !dbg !1161
  %20 = load i16, i16* %19, align 2, !dbg !1161, !tbaa !340
  %21 = zext i16 %20 to i64, !dbg !1161
  %22 = bitcast i8* %10 to i32*, !dbg !1163
  %23 = load i32, i32* %22, align 4, !dbg !1163, !tbaa !138
  %24 = zext i32 %23 to i64, !dbg !1163
  %25 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1165
  %26 = bitcast i8* %25 to i16*, !dbg !1165
  %27 = load i16, i16* %26, align 2, !dbg !1165, !tbaa !340
  %28 = zext i16 %27 to i64, !dbg !1165
  %29 = icmp ult i16 %20, %27, !dbg !1167
  %30 = select i1 %29, i8* %10, i8* %5
  %31 = select i1 %29, i64 %24, i64 %17
  %32 = select i1 %29, i64 %17, i64 %24
  %33 = select i1 %29, i8* %5, i8* %10
  %34 = add nsw i64 %17, -11, !dbg !1173
  %35 = add nsw i64 %34, %24, !dbg !1174
  %36 = add nuw nsw i64 %28, %21, !dbg !1176
  %37 = icmp ult i64 %36, 65535, !dbg !1178
  %38 = select i1 %37, i64 %36, i64 65535, !dbg !1179
  %39 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !1180
  %40 = bitcast i8* %39 to i32*, !dbg !1180
  %41 = load i32, i32* %40, align 4, !dbg !1180, !tbaa !138
  %42 = zext i32 %41 to i64, !dbg !1180
  %43 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1182
  %44 = bitcast i8* %43 to i32*, !dbg !1182
  %45 = load i32, i32* %44, align 4, !dbg !1182, !tbaa !138
  %46 = tail call i8* @zrealloc(i8* %30, i64 %35) #5, !dbg !1183
  br i1 %29, label %53, label %47, !dbg !1184

; <label>:47:                                     ; preds = %14
  %48 = getelementptr inbounds i8, i8* %46, i64 %31, !dbg !1185
  %49 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !1188
  %50 = getelementptr inbounds i8, i8* %33, i64 10, !dbg !1189
  %51 = add nsw i64 %32, -10, !dbg !1190
  %52 = tail call i8* @memcpy(i8* nonnull %49, i8* nonnull %50, i64 %51) #5, !dbg !1191
  br label %61, !dbg !1192

; <label>:53:                                     ; preds = %14
  %54 = getelementptr inbounds i8, i8* %46, i64 %32, !dbg !1193
  %55 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1195
  %56 = getelementptr inbounds i8, i8* %46, i64 10, !dbg !1196
  %57 = add nsw i64 %31, -10, !dbg !1197
  %58 = tail call i8* @memmove(i8* nonnull %55, i8* nonnull %56, i64 %57) #5, !dbg !1198
  %59 = add nsw i64 %32, -1, !dbg !1199
  %60 = tail call i8* @memcpy(i8* %46, i8* nonnull %33, i64 %59) #5, !dbg !1200
  br label %61

; <label>:61:                                     ; preds = %53, %47
  %62 = trunc i64 %35 to i32, !dbg !1201
  %63 = bitcast i8* %46 to i32*, !dbg !1202
  store i32 %62, i32* %63, align 4, !dbg !1203, !tbaa !138
  %64 = trunc i64 %38 to i16, !dbg !1204
  %65 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1205
  %66 = bitcast i8* %65 to i16*, !dbg !1205
  store i16 %64, i16* %66, align 2, !dbg !1206, !tbaa !340
  %67 = add i32 %16, -11, !dbg !1207
  %68 = add i32 %67, %45, !dbg !1207
  %69 = getelementptr inbounds i8, i8* %46, i64 4, !dbg !1208
  %70 = bitcast i8* %69 to i32*, !dbg !1208
  store i32 %68, i32* %70, align 4, !dbg !1209, !tbaa !138
  %71 = getelementptr inbounds i8, i8* %46, i64 %42, !dbg !1210
  %72 = tail call i8* @__ziplistCascadeUpdate(i8* %46, i8* %71) #8, !dbg !1211
  br i1 %29, label %75, label %73, !dbg !1212

; <label>:73:                                     ; preds = %61
  %74 = load i8*, i8** %1, align 8, !dbg !1213, !tbaa !1150
  tail call void @zfree(i8* %74) #5, !dbg !1216
  store i8* null, i8** %1, align 8, !dbg !1217, !tbaa !1150
  store i8* %72, i8** %0, align 8, !dbg !1218, !tbaa !1150
  br label %77, !dbg !1219

; <label>:75:                                     ; preds = %61
  %76 = load i8*, i8** %0, align 8, !dbg !1220, !tbaa !1150
  tail call void @zfree(i8* %76) #5, !dbg !1222
  store i8* null, i8** %0, align 8, !dbg !1223, !tbaa !1150
  store i8* %72, i8** %1, align 8, !dbg !1224, !tbaa !1150
  br label %77

; <label>:77:                                     ; preds = %73, %75, %2, %4, %9
  %78 = phi i8* [ null, %9 ], [ null, %4 ], [ null, %2 ], [ %72, %75 ], [ %72, %73 ], !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  ret i8* %78, !dbg !1226
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1227 {
  %5 = icmp eq i32 %3, 0, !dbg !1240
  br i1 %5, label %6, label %8, !dbg !1241

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1242
  br label %14, !dbg !1241

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8* %0 to i32*, !dbg !1243
  %10 = load i32, i32* %9, align 4, !dbg !1243, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1243
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1243
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !1243
  br label %14, !dbg !1241

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i8* [ %7, %6 ], [ %13, %8 ], !dbg !1241
  %16 = tail call i8* @__ziplistInsert(i8* %0, i8* nonnull %15, i8* %1, i32 %2) #8, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  ret i8* %16, !dbg !1246
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #0 !dbg !1247 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1258
  store i32 0, i32* %3, align 4, !dbg !1259, !tbaa !138
  %5 = icmp slt i32 %1, 0, !dbg !1260
  br i1 %5, label %6, label %44, !dbg !1262

; <label>:6:                                      ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1263
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1265
  %9 = bitcast i8* %8 to i32*, !dbg !1265
  %10 = load i32, i32* %9, align 4, !dbg !1265, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1265
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1265
  %13 = load i8, i8* %12, align 1, !dbg !1267, !tbaa !81
  switch i8 %13, label %14 [
    i8 -1, label %59
    i8 -2, label %16
  ], !dbg !1269

; <label>:14:                                     ; preds = %6
  %15 = zext i8 %13 to i32, !dbg !1271
  store i32 %15, i32* %3, align 4, !dbg !1271, !tbaa !138
  br label %20, !dbg !1271

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1276
  %18 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %17, i64 4) #5, !dbg !1276
  %19 = load i32, i32* %3, align 4, !dbg !1279, !tbaa !138
  br label %20, !dbg !1276

; <label>:20:                                     ; preds = %16, %14
  %21 = phi i32 [ %19, %16 ], [ %15, %14 ], !dbg !1279
  %22 = icmp eq i32 %21, 0, !dbg !1280
  br i1 %22, label %59, label %23, !dbg !1281

; <label>:23:                                     ; preds = %20, %41
  %24 = phi i32 [ %42, %41 ], [ %21, %20 ]
  %25 = phi i8* [ %32, %41 ], [ %12, %20 ]
  %26 = phi i32 [ %27, %41 ], [ %7, %20 ]
  %27 = add nsw i32 %26, -1, !dbg !1282
  %28 = icmp eq i32 %26, 0, !dbg !1281
  br i1 %28, label %59, label %29, !dbg !1283

; <label>:29:                                     ; preds = %23
  %30 = zext i32 %24 to i64, !dbg !1284
  %31 = sub nsw i64 0, %30, !dbg !1284
  %32 = getelementptr inbounds i8, i8* %25, i64 %31, !dbg !1284
  %33 = load i8, i8* %32, align 1, !dbg !1286, !tbaa !81
  %34 = icmp ult i8 %33, -2, !dbg !1286
  br i1 %34, label %35, label %37, !dbg !1290

; <label>:35:                                     ; preds = %29
  %36 = zext i8 %33 to i32, !dbg !1291
  store i32 %36, i32* %3, align 4, !dbg !1291, !tbaa !138
  br label %41, !dbg !1291

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1294
  %39 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %38, i64 4) #5, !dbg !1294
  %40 = load i32, i32* %3, align 4, !dbg !1279, !tbaa !138
  br label %41, !dbg !1294

; <label>:41:                                     ; preds = %37, %35
  %42 = phi i32 [ %40, %37 ], [ %36, %35 ], !dbg !1279
  %43 = icmp eq i32 %42, 0, !dbg !1280
  br i1 %43, label %59, label %23, !dbg !1281, !llvm.loop !1297

; <label>:44:                                     ; preds = %2
  %45 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1299
  %46 = load i8, i8* %45, align 1, !dbg !1301, !tbaa !81
  %47 = icmp eq i8 %46, -1, !dbg !1302
  br i1 %47, label %59, label %48, !dbg !1303

; <label>:48:                                     ; preds = %44, %52
  %49 = phi i8* [ %56, %52 ], [ %45, %44 ]
  %50 = phi i32 [ %53, %52 ], [ %1, %44 ]
  %51 = icmp eq i32 %50, 0, !dbg !1303
  br i1 %51, label %59, label %52, !dbg !1304

; <label>:52:                                     ; preds = %48
  %53 = add nsw i32 %50, -1, !dbg !1305
  %54 = tail call i32 @zipRawEntryLength(i8* %49) #8, !dbg !1306
  %55 = zext i32 %54 to i64, !dbg !1308
  %56 = getelementptr inbounds i8, i8* %49, i64 %55, !dbg !1308
  %57 = load i8, i8* %56, align 1, !dbg !1301, !tbaa !81
  %58 = icmp eq i8 %57, -1, !dbg !1302
  br i1 %58, label %59, label %48, !dbg !1303, !llvm.loop !1309

; <label>:59:                                     ; preds = %52, %48, %41, %23, %44, %20, %6
  %60 = phi i32 [ %7, %6 ], [ %7, %20 ], [ %1, %44 ], [ %27, %41 ], [ -1, %23 ], [ %53, %52 ], [ -1, %48 ]
  %61 = phi i8* [ %12, %6 ], [ %12, %20 ], [ %45, %44 ], [ %32, %41 ], [ %25, %23 ], [ %56, %52 ], [ %49, %48 ], !dbg !1311
  %62 = load i8, i8* %61, align 1, !dbg !1312, !tbaa !81
  %63 = icmp eq i8 %62, -1, !dbg !1313
  %64 = icmp sgt i32 %60, 0, !dbg !1314
  %65 = or i1 %64, %63, !dbg !1315
  %66 = select i1 %65, i8* null, i8* %61, !dbg !1315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  ret i8* %66, !dbg !1317
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #0 !dbg !1318 {
  %3 = load i8, i8* %1, align 1, !dbg !1324, !tbaa !81
  %4 = icmp eq i8 %3, -1, !dbg !1326
  br i1 %4, label %12, label %5, !dbg !1327

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @zipRawEntryLength(i8* nonnull %1) #8, !dbg !1328
  %7 = zext i32 %6 to i64, !dbg !1329
  %8 = getelementptr inbounds i8, i8* %1, i64 %7, !dbg !1329
  %9 = load i8, i8* %8, align 1, !dbg !1330, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !1332
  %11 = select i1 %10, i8* null, i8* %8, !dbg !1333
  br label %12, !dbg !1333

; <label>:12:                                     ; preds = %5, %2
  %13 = phi i8* [ null, %2 ], [ %11, %5 ], !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  ret i8* %13, !dbg !1336
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPrev(i8* readonly, i8*) local_unnamed_addr #0 !dbg !1337 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1345
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1345
  store i32 0, i32* %3, align 4, !dbg !1346, !tbaa !138
  %5 = load i8, i8* %1, align 1, !dbg !1347, !tbaa !81
  %6 = icmp eq i8 %5, -1, !dbg !1349
  br i1 %6, label %7, label %16, !dbg !1350

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1351
  %9 = bitcast i8* %8 to i32*, !dbg !1351
  %10 = load i32, i32* %9, align 4, !dbg !1351, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1351
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1351
  %13 = load i8, i8* %12, align 1, !dbg !1353, !tbaa !81
  %14 = icmp eq i8 %13, -1, !dbg !1354
  %15 = select i1 %14, i8* null, i8* %12, !dbg !1355
  br label %35, !dbg !1356

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1357
  %18 = icmp eq i8* %17, %1, !dbg !1359
  br i1 %18, label %35, label %19, !dbg !1360

; <label>:19:                                     ; preds = %16
  %20 = icmp ult i8 %5, -2, !dbg !1361
  br i1 %20, label %21, label %23, !dbg !1366

; <label>:21:                                     ; preds = %19
  %22 = zext i8 %5 to i32, !dbg !1367
  store i32 %22, i32* %3, align 4, !dbg !1367, !tbaa !138
  br label %27, !dbg !1367

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1370
  %25 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %24, i64 4) #5, !dbg !1370
  %26 = load i32, i32* %3, align 4, !dbg !1373, !tbaa !138
  br label %27, !dbg !1370

; <label>:27:                                     ; preds = %23, %21
  %28 = phi i32 [ %26, %23 ], [ %22, %21 ], !dbg !1373
  %29 = icmp eq i32 %28, 0, !dbg !1373
  br i1 %29, label %30, label %31, !dbg !1373

; <label>:30:                                     ; preds = %27
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1025) #5, !dbg !1373
  call void @_exit(i32 1) #6, !dbg !1373
  unreachable, !dbg !1373

; <label>:31:                                     ; preds = %27
  %32 = zext i32 %28 to i64, !dbg !1374
  %33 = sub nsw i64 0, %32, !dbg !1374
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !1374
  br label %35, !dbg !1375

; <label>:35:                                     ; preds = %16, %31, %7
  %36 = phi i8* [ %15, %7 ], [ %34, %31 ], [ null, %16 ], !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  ret i8* %36, !dbg !1377
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistGet(i8*, i8**, i32* nocapture, i64*) local_unnamed_addr #0 !dbg !1378 {
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1392
  %7 = icmp eq i8* %0, null, !dbg !1393
  br i1 %7, label %34, label %8, !dbg !1395

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %0, align 1, !dbg !1396, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !1397
  br i1 %10, label %34, label %11, !dbg !1398

; <label>:11:                                     ; preds = %8
  %12 = icmp ne i8** %1, null, !dbg !1399
  br i1 %12, label %13, label %14, !dbg !1401

; <label>:13:                                     ; preds = %11
  store i8* null, i8** %1, align 8, !dbg !1402, !tbaa !1150
  br label %14, !dbg !1403

; <label>:14:                                     ; preds = %13, %11
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #8, !dbg !1405
  %15 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1406
  %16 = load i8, i8* %15, align 4, !dbg !1406, !tbaa !471
  %17 = icmp ult i8 %16, -64, !dbg !1406
  br i1 %17, label %18, label %26, !dbg !1408

; <label>:18:                                     ; preds = %14
  br i1 %12, label %19, label %34, !dbg !1409

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1411
  %21 = load i32, i32* %20, align 4, !dbg !1411, !tbaa !503
  store i32 %21, i32* %2, align 4, !dbg !1414, !tbaa !138
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1415
  %23 = load i32, i32* %22, align 8, !dbg !1415, !tbaa !507
  %24 = zext i32 %23 to i64, !dbg !1416
  %25 = getelementptr inbounds i8, i8* %0, i64 %24, !dbg !1416
  store i8* %25, i8** %1, align 8, !dbg !1417, !tbaa !1150
  br label %34, !dbg !1418

; <label>:26:                                     ; preds = %14
  %27 = icmp eq i64* %3, null, !dbg !1419
  br i1 %27, label %34, label %28, !dbg !1422

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1423
  %30 = load i32, i32* %29, align 8, !dbg !1423, !tbaa !507
  %31 = zext i32 %30 to i64, !dbg !1425
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !1425
  %33 = call i64 @zipLoadInteger(i8* nonnull %32, i8 zeroext %16) #8, !dbg !1426
  store i64 %33, i64* %3, align 8, !dbg !1427, !tbaa !284
  br label %34, !dbg !1428

; <label>:34:                                     ; preds = %19, %18, %28, %26, %4, %8
  %35 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 1, %26 ], [ 1, %28 ], [ 1, %18 ], [ 1, %19 ], !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  ret i32 %35, !dbg !1430
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !1431 {
  %5 = tail call i8* @__ziplistInsert(i8* %0, i8* %1, i8* %2, i32 %3) #8, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  ret i8* %5, !dbg !1442
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDelete(i8*, i8** nocapture) local_unnamed_addr #0 !dbg !1443 {
  %3 = load i8*, i8** %1, align 8, !dbg !1452, !tbaa !1150
  %4 = ptrtoint i8* %3 to i64, !dbg !1453
  %5 = ptrtoint i8* %0 to i64, !dbg !1453
  %6 = sub i64 %4, %5, !dbg !1453
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* %3, i32 1) #8, !dbg !1455
  %8 = getelementptr inbounds i8, i8* %7, i64 %6, !dbg !1456
  store i8* %8, i8** %1, align 8, !dbg !1457, !tbaa !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  ret i8* %7, !dbg !1458
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #0 !dbg !1459 {
  %4 = tail call i8* @ziplistIndex(i8* %0, i32 %1) #8, !dbg !1470
  %5 = icmp eq i8* %4, null, !dbg !1472
  br i1 %5, label %8, label %6, !dbg !1473

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* nonnull %4, i32 %2) #8, !dbg !1474
  br label %8, !dbg !1473

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %0, %3 ], !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  ret i8* %9, !dbg !1475
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1476 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1490
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1490
  %7 = load i8, i8* %0, align 1, !dbg !1491, !tbaa !81
  %8 = icmp eq i8 %7, -1, !dbg !1493
  br i1 %8, label %43, label %9, !dbg !1494

; <label>:9:                                      ; preds = %3
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #8, !dbg !1496
  %10 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1497
  %11 = load i8, i8* %10, align 4, !dbg !1497, !tbaa !471
  %12 = icmp ult i8 %11, -64, !dbg !1497
  br i1 %12, label %13, label %25, !dbg !1499

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1500
  %15 = load i32, i32* %14, align 4, !dbg !1500, !tbaa !503
  %16 = icmp eq i32 %15, %2, !dbg !1503
  br i1 %16, label %17, label %43, !dbg !1504

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1505
  %19 = load i32, i32* %18, align 8, !dbg !1505, !tbaa !507
  %20 = zext i32 %19 to i64, !dbg !1507
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1507
  %22 = zext i32 %2 to i64, !dbg !1508
  %23 = call i32 @memcmp(i8* %21, i8* %1, i64 %22) #5, !dbg !1509
  %24 = icmp eq i32 %23, 0, !dbg !1510
  br label %43, !dbg !1511

; <label>:25:                                     ; preds = %9
  %26 = bitcast i64* %4 to i8*, !dbg !1517
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1517
  %27 = add i32 %2, -1, !dbg !1518
  %28 = icmp ugt i32 %27, 30, !dbg !1518
  br i1 %28, label %42, label %29, !dbg !1518

; <label>:29:                                     ; preds = %25
  %30 = zext i32 %2 to i64, !dbg !1519
  %31 = call i32 @string2ll(i8* %1, i64 %30, i64* nonnull %4) #5, !dbg !1521
  %32 = icmp eq i32 %31, 0, !dbg !1521
  br i1 %32, label %42, label %33, !dbg !1522

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %4, align 8, !dbg !1523, !tbaa !284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  %35 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1525
  %36 = load i32, i32* %35, align 8, !dbg !1525, !tbaa !507
  %37 = zext i32 %36 to i64, !dbg !1527
  %38 = getelementptr inbounds i8, i8* %0, i64 %37, !dbg !1527
  %39 = load i8, i8* %10, align 4, !dbg !1528, !tbaa !471
  %40 = call i64 @zipLoadInteger(i8* %38, i8 zeroext %39) #8, !dbg !1529
  %41 = icmp eq i64 %40, %34, !dbg !1532
  br label %43, !dbg !1533

; <label>:42:                                     ; preds = %25, %29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br label %43

; <label>:43:                                     ; preds = %42, %13, %3, %33, %17
  %44 = phi i1 [ %24, %17 ], [ %41, %33 ], [ false, %3 ], [ false, %13 ], [ false, %42 ]
  %45 = zext i1 %44 to i32, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  ret i32 %45, !dbg !1535
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistFind(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1536 {
  %5 = alloca i64, align 8
  %6 = zext i32 %2 to i64
  %7 = bitcast i64* %5 to i8*
  %8 = add i32 %2, -1
  %9 = icmp ugt i32 %8, 30
  br label %10, !dbg !1567

; <label>:10:                                     ; preds = %115, %4
  %11 = phi i8 [ 0, %4 ], [ %116, %115 ], !dbg !1565
  %12 = phi i64 [ 0, %4 ], [ %117, %115 ], !dbg !1566
  %13 = phi i32 [ 0, %4 ], [ %118, %115 ], !dbg !1564
  %14 = phi i8* [ %0, %4 ], [ %120, %115 ]
  %15 = load i8, i8* %14, align 1, !dbg !1568, !tbaa !81
  switch i8 %15, label %17 [
    i8 -1, label %121
    i8 -2, label %16
  ], !dbg !1567

; <label>:16:                                     ; preds = %10
  br label %17

; <label>:17:                                     ; preds = %10, %16
  %18 = phi i64 [ 5, %16 ], [ 1, %10 ]
  %19 = getelementptr inbounds i8, i8* %14, i64 %18, !dbg !1570
  %20 = load i8, i8* %19, align 1, !dbg !1570, !tbaa !81
  %21 = zext i8 %20 to i32, !dbg !1570
  %22 = icmp ult i8 %20, -64, !dbg !1574
  %23 = and i32 %21, 192, !dbg !1574
  %24 = select i1 %22, i32 %23, i32 %21, !dbg !1570
  %25 = icmp ult i32 %24, 192, !dbg !1576
  %26 = trunc i32 %24 to i8, !dbg !1578
  br i1 %25, label %27, label %59, !dbg !1580

; <label>:27:                                     ; preds = %17
  switch i8 %26, label %58 [
    i8 0, label %28
    i8 64, label %31
    i8 -128, label %39
  ], !dbg !1578

; <label>:28:                                     ; preds = %27
  %29 = and i8 %20, 63, !dbg !1582
  %30 = zext i8 %29 to i32, !dbg !1582
  br label %70, !dbg !1582

; <label>:31:                                     ; preds = %27
  %32 = and i8 %20, 63, !dbg !1586
  %33 = zext i8 %32 to i32, !dbg !1586
  %34 = shl nuw nsw i32 %33, 8, !dbg !1586
  %35 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1586
  %36 = load i8, i8* %35, align 1, !dbg !1586, !tbaa !81
  %37 = zext i8 %36 to i32, !dbg !1586
  %38 = or i32 %34, %37, !dbg !1586
  br label %70, !dbg !1586

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1589
  %41 = load i8, i8* %40, align 1, !dbg !1589, !tbaa !81
  %42 = zext i8 %41 to i32, !dbg !1589
  %43 = shl nuw i32 %42, 24, !dbg !1589
  %44 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !1589
  %45 = load i8, i8* %44, align 1, !dbg !1589, !tbaa !81
  %46 = zext i8 %45 to i32, !dbg !1589
  %47 = shl nuw nsw i32 %46, 16, !dbg !1589
  %48 = or i32 %47, %43, !dbg !1589
  %49 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1589
  %50 = load i8, i8* %49, align 1, !dbg !1589, !tbaa !81
  %51 = zext i8 %50 to i32, !dbg !1589
  %52 = shl nuw nsw i32 %51, 8, !dbg !1589
  %53 = or i32 %48, %52, !dbg !1589
  %54 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !1589
  %55 = load i8, i8* %54, align 1, !dbg !1589, !tbaa !81
  %56 = zext i8 %55 to i32, !dbg !1589
  %57 = or i32 %53, %56, !dbg !1589
  br label %70

; <label>:58:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %24) #5, !dbg !1592
  call void @_exit(i32 1) #6, !dbg !1592
  unreachable, !dbg !1592

; <label>:59:                                     ; preds = %17
  switch i8 %26, label %64 [
    i8 -2, label %68
    i8 -64, label %60
    i8 -16, label %61
    i8 -48, label %62
    i8 -32, label %63
  ], !dbg !1597

; <label>:60:                                     ; preds = %59
  br label %68, !dbg !1598

; <label>:61:                                     ; preds = %59
  br label %68, !dbg !1599

; <label>:62:                                     ; preds = %59
  br label %68, !dbg !1600

; <label>:63:                                     ; preds = %59
  br label %68, !dbg !1601

; <label>:64:                                     ; preds = %59
  %65 = add i8 %26, 15, !dbg !1602
  %66 = icmp ult i8 %65, 13, !dbg !1602
  br i1 %66, label %68, label %67, !dbg !1602

; <label>:67:                                     ; preds = %64
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24) #5, !dbg !1603
  call void @_exit(i32 1) #6, !dbg !1603
  unreachable, !dbg !1603

; <label>:68:                                     ; preds = %59, %60, %61, %62, %63, %64
  %69 = phi i32 [ 8, %63 ], [ 4, %62 ], [ 3, %61 ], [ 2, %60 ], [ 1, %59 ], [ 0, %64 ], !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  br label %70

; <label>:70:                                     ; preds = %28, %39, %31, %68
  %71 = phi i64 [ 1, %28 ], [ 2, %31 ], [ 5, %39 ], [ 1, %68 ]
  %72 = phi i32 [ %30, %28 ], [ %38, %31 ], [ %57, %39 ], [ %69, %68 ], !dbg !1582
  %73 = getelementptr inbounds i8, i8* %19, i64 %71, !dbg !1606
  %74 = icmp eq i32 %13, 0, !dbg !1608
  br i1 %74, label %75, label %113, !dbg !1609

; <label>:75:                                     ; preds = %70
  br i1 %25, label %76, label %81, !dbg !1610

; <label>:76:                                     ; preds = %75
  %77 = icmp eq i32 %72, %2, !dbg !1611
  br i1 %77, label %78, label %115, !dbg !1614

; <label>:78:                                     ; preds = %76
  %79 = call i32 @memcmp(i8* nonnull %73, i8* %1, i64 %6) #5, !dbg !1615
  %80 = icmp eq i32 %79, 0, !dbg !1616
  br i1 %80, label %121, label %115, !dbg !1617

; <label>:81:                                     ; preds = %75
  switch i8 %11, label %108 [
    i8 0, label %82
    i8 -1, label %115
  ], !dbg !1618

; <label>:82:                                     ; preds = %81
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1625
  br i1 %9, label %107, label %83, !dbg !1626

; <label>:83:                                     ; preds = %82
  %84 = call i32 @string2ll(i8* %1, i64 %6, i64* nonnull %5) #5, !dbg !1628
  %85 = icmp eq i32 %84, 0, !dbg !1628
  br i1 %85, label %107, label %86, !dbg !1629

; <label>:86:                                     ; preds = %83
  %87 = load i64, i64* %5, align 8, !dbg !1630, !tbaa !284
  %88 = icmp ult i64 %87, 13, !dbg !1631
  br i1 %88, label %89, label %92, !dbg !1631

; <label>:89:                                     ; preds = %86
  %90 = trunc i64 %87 to i8, !dbg !1632
  %91 = add i8 %90, -15, !dbg !1632
  br label %105, !dbg !1633

; <label>:92:                                     ; preds = %86
  %93 = add i64 %87, 128, !dbg !1634
  %94 = icmp ult i64 %93, 256, !dbg !1634
  br i1 %94, label %105, label %95, !dbg !1634

; <label>:95:                                     ; preds = %92
  %96 = add i64 %87, 32768, !dbg !1635
  %97 = icmp ult i64 %96, 65536, !dbg !1635
  br i1 %97, label %105, label %98, !dbg !1635

; <label>:98:                                     ; preds = %95
  %99 = add i64 %87, 8388608, !dbg !1636
  %100 = icmp ult i64 %99, 16777216, !dbg !1636
  br i1 %100, label %105, label %101, !dbg !1636

; <label>:101:                                    ; preds = %98
  %102 = add i64 %87, 2147483648, !dbg !1637
  %103 = icmp ult i64 %102, 4294967296, !dbg !1637
  %104 = select i1 %103, i8 -48, i8 -32, !dbg !1637
  br label %105, !dbg !1637

; <label>:105:                                    ; preds = %101, %89, %92, %95, %98
  %106 = phi i8 [ -16, %98 ], [ -64, %95 ], [ -2, %92 ], [ %91, %89 ], [ %104, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br label %108, !dbg !1639

; <label>:107:                                    ; preds = %82, %83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br label %115, !dbg !1639

; <label>:108:                                    ; preds = %81, %105
  %109 = phi i64 [ %87, %105 ], [ %12, %81 ]
  %110 = phi i8 [ %106, %105 ], [ %11, %81 ]
  %111 = call i64 @zipLoadInteger(i8* nonnull %73, i8 zeroext %26) #8, !dbg !1640
  %112 = icmp eq i64 %111, %109, !dbg !1642
  br i1 %112, label %121, label %115

; <label>:113:                                    ; preds = %70
  %114 = add nsw i32 %13, -1, !dbg !1644
  br label %115

; <label>:115:                                    ; preds = %108, %81, %113, %76, %78, %107
  %116 = phi i8 [ %11, %78 ], [ %11, %76 ], [ %110, %108 ], [ %11, %113 ], [ -1, %107 ], [ %11, %81 ], !dbg !1646
  %117 = phi i64 [ %12, %78 ], [ %12, %76 ], [ %109, %108 ], [ %12, %113 ], [ %12, %107 ], [ %12, %81 ], !dbg !1566
  %118 = phi i32 [ %3, %78 ], [ %3, %76 ], [ %3, %108 ], [ %114, %113 ], [ %3, %107 ], [ %3, %81 ], !dbg !1647
  %119 = zext i32 %72 to i64, !dbg !1648
  %120 = getelementptr inbounds i8, i8* %73, i64 %119, !dbg !1648
  br label %10

; <label>:121:                                    ; preds = %108, %78, %10
  %122 = phi i8* [ null, %10 ], [ %14, %78 ], [ %14, %108 ], !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  ret i8* %122, !dbg !1649
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistLen(i8* nocapture) local_unnamed_addr #0 !dbg !1650 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1659
  %3 = bitcast i8* %2 to i16*, !dbg !1659
  %4 = load i16, i16* %3, align 2, !dbg !1659, !tbaa !340
  %5 = icmp eq i16 %4, -1, !dbg !1660
  br i1 %5, label %8, label %6, !dbg !1661

; <label>:6:                                      ; preds = %1
  %7 = zext i16 %4 to i32, !dbg !1659
  br label %26, !dbg !1662

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1664
  %10 = load i8, i8* %9, align 1, !dbg !1666, !tbaa !81
  %11 = icmp eq i8 %10, -1, !dbg !1667
  br i1 %11, label %23, label %12, !dbg !1668

; <label>:12:                                     ; preds = %8, %12
  %13 = phi i8* [ %17, %12 ], [ %9, %8 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %15 = tail call i32 @zipRawEntryLength(i8* %13) #8, !dbg !1669
  %16 = zext i32 %15 to i64, !dbg !1671
  %17 = getelementptr inbounds i8, i8* %13, i64 %16, !dbg !1671
  %18 = add i32 %14, 1, !dbg !1672
  %19 = load i8, i8* %17, align 1, !dbg !1666, !tbaa !81
  %20 = icmp eq i8 %19, -1, !dbg !1667
  br i1 %20, label %21, label %12, !dbg !1668, !llvm.loop !1673

; <label>:21:                                     ; preds = %12
  %22 = icmp ult i32 %18, 65535, !dbg !1675
  br i1 %22, label %23, label %26, !dbg !1677

; <label>:23:                                     ; preds = %8, %21
  %24 = phi i32 [ %18, %21 ], [ 0, %8 ]
  %25 = trunc i32 %24 to i16, !dbg !1678
  store i16 %25, i16* %3, align 2, !dbg !1679, !tbaa !340
  br label %26, !dbg !1680

; <label>:26:                                     ; preds = %21, %23, %6
  %27 = phi i32 [ %7, %6 ], [ %24, %23 ], [ %18, %21 ], !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  ret i32 %27, !dbg !1682
}

; Function Attrs: noredzone nounwind
define dso_local i64 @ziplistBlobLen(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1683 {
  %2 = bitcast i8* %0 to i32*, !dbg !1689
  %3 = load i32, i32* %2, align 4, !dbg !1689, !tbaa !138
  %4 = zext i32 %3 to i64, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  ret i64 %4, !dbg !1690
}

; Function Attrs: noredzone nounwind
define dso_local void @ziplistRepr(i8*) local_unnamed_addr #0 !dbg !1691 {
  %2 = alloca %struct.zlentry, align 8
  %3 = bitcast %struct.zlentry* %2 to i8*, !dbg !1704
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !1704
  %4 = bitcast i8* %0 to i32*, !dbg !1705
  %5 = load i32, i32* %4, align 4, !dbg !1705, !tbaa !138
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1706
  %7 = bitcast i8* %6 to i16*, !dbg !1706
  %8 = load i16, i16* %7, align 2, !dbg !1706, !tbaa !340
  %9 = zext i16 %8 to i32, !dbg !1706
  %10 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1707
  %11 = bitcast i8* %10 to i32*, !dbg !1707
  %12 = load i32, i32* %11, align 4, !dbg !1707, !tbaa !138
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %5, i32 %9, i32 %12) #5, !dbg !1708
  %14 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1709
  %15 = load i8, i8* %14, align 1, !dbg !1711, !tbaa !81
  %16 = icmp eq i8 %15, -1, !dbg !1712
  br i1 %16, label %93, label %17, !dbg !1713

; <label>:17:                                     ; preds = %1
  %18 = ptrtoint i8* %0 to i64
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 4
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 3
  %21 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 0
  %23 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 5
  br label %24, !dbg !1713

; <label>:24:                                     ; preds = %17, %85
  %25 = phi i32 [ 0, %17 ], [ %90, %85 ]
  %26 = phi i8* [ %14, %17 ], [ %89, %85 ]
  call void @zipEntry(i8* %26, %struct.zlentry* nonnull %2) #8, !dbg !1715
  %27 = ptrtoint i8* %26 to i64, !dbg !1716
  %28 = sub i64 %27, %18, !dbg !1717
  %29 = load i32, i32* %19, align 8, !dbg !1718, !tbaa !507
  %30 = load i32, i32* %20, align 4, !dbg !1719, !tbaa !503
  %31 = add i32 %30, %29, !dbg !1720
  %32 = load i32, i32* %21, align 4, !dbg !1721, !tbaa !462
  %33 = load i32, i32* %22, align 8, !dbg !1722, !tbaa !455
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.7, i64 0, i64 0), i64 %27, i32 %25, i64 %28, i32 %31, i32 %29, i32 %32, i32 %33, i32 %30) #5, !dbg !1723
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1724
  %36 = load i32, i32* %19, align 8, !dbg !1726, !tbaa !507
  %37 = load i32, i32* %20, align 4, !dbg !1728, !tbaa !503
  %38 = sub i32 0, %36, !dbg !1729
  %39 = icmp eq i32 %37, %38, !dbg !1729
  br i1 %39, label %40, label %47, !dbg !1730

; <label>:40:                                     ; preds = %47, %24
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1731
  %42 = load i32, i32* %19, align 8, !dbg !1732, !tbaa !507
  %43 = zext i32 %42 to i64, !dbg !1733
  %44 = getelementptr inbounds i8, i8* %26, i64 %43, !dbg !1733
  %45 = load i8, i8* %23, align 4, !dbg !1734, !tbaa !471
  %46 = icmp ult i8 %45, -64, !dbg !1734
  br i1 %46, label %59, label %82, !dbg !1736

; <label>:47:                                     ; preds = %24, %47
  %48 = phi i64 [ %53, %47 ], [ 0, %24 ]
  %49 = getelementptr inbounds i8, i8* %26, i64 %48, !dbg !1737
  %50 = load i8, i8* %49, align 1, !dbg !1737, !tbaa !81
  %51 = zext i8 %50 to i32, !dbg !1737
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %51) #5, !dbg !1739
  %53 = add nuw nsw i64 %48, 1, !dbg !1740
  %54 = load i32, i32* %19, align 8, !dbg !1726, !tbaa !507
  %55 = load i32, i32* %20, align 4, !dbg !1728, !tbaa !503
  %56 = add i32 %55, %54, !dbg !1741
  %57 = zext i32 %56 to i64, !dbg !1729
  %58 = icmp ult i64 %53, %57, !dbg !1729
  br i1 %58, label %47, label %40, !dbg !1730, !llvm.loop !1742

; <label>:59:                                     ; preds = %40
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !1744
  %61 = load i32, i32* %20, align 4, !dbg !1746, !tbaa !503
  %62 = icmp ugt i32 %61, 40, !dbg !1748
  br i1 %62, label %63, label %72, !dbg !1749

; <label>:63:                                     ; preds = %59
  %64 = call %struct._reent* @__getreent() #5, !dbg !1750
  %65 = getelementptr inbounds %struct._reent, %struct._reent* %64, i64 0, i32 2, !dbg !1750
  %66 = load %struct.__sFILE*, %struct.__sFILE** %65, align 8, !dbg !1750, !tbaa !1753
  %67 = call i64 @fwrite(i8* %44, i64 40, i64 1, %struct.__sFILE* %66) #5, !dbg !1758
  %68 = icmp eq i64 %67, 0, !dbg !1759
  br i1 %68, label %69, label %70, !dbg !1760

; <label>:69:                                     ; preds = %63
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1761
  br label %70, !dbg !1761

; <label>:70:                                     ; preds = %69, %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !1762
  br label %85, !dbg !1763

; <label>:72:                                     ; preds = %59
  %73 = icmp eq i32 %61, 0, !dbg !1764
  br i1 %73, label %85, label %74, !dbg !1767

; <label>:74:                                     ; preds = %72
  %75 = zext i32 %61 to i64, !dbg !1768
  %76 = call %struct._reent* @__getreent() #5, !dbg !1769
  %77 = getelementptr inbounds %struct._reent, %struct._reent* %76, i64 0, i32 2, !dbg !1769
  %78 = load %struct.__sFILE*, %struct.__sFILE** %77, align 8, !dbg !1769, !tbaa !1753
  %79 = call i64 @fwrite(i8* %44, i64 %75, i64 1, %struct.__sFILE* %78) #5, !dbg !1770
  %80 = icmp eq i64 %79, 0, !dbg !1771
  br i1 %80, label %81, label %85, !dbg !1772

; <label>:81:                                     ; preds = %74
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1773
  br label %85, !dbg !1773

; <label>:82:                                     ; preds = %40
  %83 = call i64 @zipLoadInteger(i8* %44, i8 zeroext %45) #8, !dbg !1774
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %83) #5, !dbg !1776
  br label %85

; <label>:85:                                     ; preds = %72, %70, %81, %74, %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !1777
  %87 = load i32, i32* %20, align 4, !dbg !1778, !tbaa !503
  %88 = zext i32 %87 to i64, !dbg !1779
  %89 = getelementptr inbounds i8, i8* %44, i64 %88, !dbg !1779
  %90 = add nuw nsw i32 %25, 1, !dbg !1780
  %91 = load i8, i8* %89, align 1, !dbg !1711, !tbaa !81
  %92 = icmp eq i8 %91, -1, !dbg !1712
  br i1 %92, label %93, label %24, !dbg !1713, !llvm.loop !1781

; <label>:93:                                     ; preds = %85, %1
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  ret void, !dbg !1784
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @fwrite(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @perror(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ziplist.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !12, !13, !17, !21, !25, !26}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !8, line: 20, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !10, line: 41, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 43, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 48, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 36, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 57, baseType: !24)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!31 = distinct !DISubprogram(name: "zipIntSize", scope: !1, file: !1, line: 306, type: !32, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!20, !16}
!34 = !{!35}
!35 = !DILocalVariable(name: "encoding", arg: 1, scope: !31, file: !1, line: 306, type: !16)
!36 = !DILocation(line: 306, column: 39, scope: !31)
!37 = !DILocation(line: 307, column: 12, scope: !31)
!38 = !DILocation(line: 307, column: 5, scope: !31)
!39 = !DILocation(line: 309, column: 23, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 307, column: 22)
!41 = !DILocation(line: 310, column: 23, scope: !40)
!42 = !DILocation(line: 311, column: 23, scope: !40)
!43 = !DILocation(line: 312, column: 23, scope: !40)
!44 = !DILocation(line: 314, column: 37, scope: !45)
!45 = distinct !DILexicalBlock(scope: !31, file: !1, line: 314, column: 9)
!46 = !DILocation(line: 316, column: 5, scope: !31)
!47 = !DILocation(line: 0, scope: !40)
!48 = !DILocation(line: 318, column: 1, scope: !31)
!49 = distinct !DISubprogram(name: "zipStoreEntryEncoding", scope: !1, file: !1, line: 332, type: !50, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !53)
!50 = !DISubroutineType(types: !51)
!51 = !{!20, !52, !16, !20}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DILocalVariable(name: "p", arg: 1, scope: !49, file: !1, line: 332, type: !52)
!55 = !DILocalVariable(name: "encoding", arg: 2, scope: !49, file: !1, line: 332, type: !16)
!56 = !DILocalVariable(name: "rawlen", arg: 3, scope: !49, file: !1, line: 332, type: !20)
!57 = !DILocalVariable(name: "len", scope: !49, file: !1, line: 333, type: !16)
!58 = !DILocalVariable(name: "buf", scope: !49, file: !1, line: 333, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DILocation(line: 332, column: 51, scope: !49)
!63 = !DILocation(line: 332, column: 68, scope: !49)
!64 = !DILocation(line: 332, column: 91, scope: !49)
!65 = !DILocation(line: 333, column: 19, scope: !49)
!66 = !DILocation(line: 333, column: 5, scope: !49)
!67 = !DILocation(line: 333, column: 28, scope: !49)
!68 = !DILocation(line: 335, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !1, line: 335, column: 9)
!70 = !DILocation(line: 335, column: 9, scope: !49)
!71 = !DILocation(line: 338, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 338, column: 13)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 335, column: 31)
!74 = !DILocation(line: 338, column: 13, scope: !73)
!75 = !DILocation(line: 339, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 339, column: 17)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 338, column: 29)
!78 = !DILocation(line: 339, column: 17, scope: !77)
!79 = !DILocation(line: 340, column: 22, scope: !77)
!80 = !DILocation(line: 340, column: 20, scope: !77)
!81 = !{!82, !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !DILocation(line: 341, column: 9, scope: !77)
!85 = !DILocation(line: 341, column: 27, scope: !86)
!86 = distinct !DILexicalBlock(scope: !72, file: !1, line: 341, column: 20)
!87 = !DILocation(line: 0, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 348, column: 17)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 346, column: 16)
!90 = !DILocation(line: 341, column: 20, scope: !72)
!91 = !DILocation(line: 343, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 341, column: 38)
!93 = !DILocation(line: 344, column: 45, scope: !92)
!94 = !DILocation(line: 344, column: 22, scope: !92)
!95 = !DILocation(line: 344, column: 20, scope: !92)
!96 = !DILocation(line: 345, column: 22, scope: !92)
!97 = !DILocation(line: 345, column: 13, scope: !92)
!98 = !DILocation(line: 345, column: 20, scope: !92)
!99 = !DILocation(line: 346, column: 9, scope: !92)
!100 = !DILocation(line: 348, column: 17, scope: !89)
!101 = !DILocation(line: 349, column: 20, scope: !89)
!102 = !DILocation(line: 350, column: 30, scope: !89)
!103 = !DILocation(line: 350, column: 22, scope: !89)
!104 = !DILocation(line: 350, column: 13, scope: !89)
!105 = !DILocation(line: 350, column: 20, scope: !89)
!106 = !DILocation(line: 351, column: 30, scope: !89)
!107 = !DILocation(line: 351, column: 22, scope: !89)
!108 = !DILocation(line: 351, column: 13, scope: !89)
!109 = !DILocation(line: 351, column: 20, scope: !89)
!110 = !DILocation(line: 352, column: 30, scope: !89)
!111 = !DILocation(line: 352, column: 22, scope: !89)
!112 = !DILocation(line: 352, column: 13, scope: !89)
!113 = !DILocation(line: 352, column: 20, scope: !89)
!114 = !DILocation(line: 353, column: 22, scope: !89)
!115 = !DILocation(line: 353, column: 13, scope: !89)
!116 = !DILocation(line: 353, column: 20, scope: !89)
!117 = !DILocation(line: 357, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 357, column: 13)
!119 = distinct !DILexicalBlock(scope: !69, file: !1, line: 355, column: 12)
!120 = !DILocation(line: 357, column: 13, scope: !119)
!121 = !DILocation(line: 358, column: 16, scope: !119)
!122 = !DILocation(line: 0, scope: !49)
!123 = !DILocation(line: 362, column: 18, scope: !49)
!124 = !DILocation(line: 362, column: 5, scope: !49)
!125 = !DILocation(line: 363, column: 12, scope: !49)
!126 = !DILocation(line: 363, column: 5, scope: !49)
!127 = !DILocation(line: 0, scope: !118)
!128 = !DILocation(line: 364, column: 1, scope: !49)
!129 = distinct !DISubprogram(name: "zipStorePrevEntryLengthLarge", scope: !1, file: !1, line: 397, type: !130, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !133)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !52, !20}
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "p", arg: 1, scope: !129, file: !1, line: 397, type: !52)
!135 = !DILocalVariable(name: "len", arg: 2, scope: !129, file: !1, line: 397, type: !20)
!136 = !DILocation(line: 397, column: 49, scope: !129)
!137 = !DILocation(line: 397, column: 65, scope: !129)
!138 = !{!139, !139, i64 0}
!139 = !{!"int", !82, i64 0}
!140 = !DILocation(line: 398, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !129, file: !1, line: 398, column: 9)
!142 = !DILocation(line: 398, column: 9, scope: !129)
!143 = !DILocation(line: 399, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 398, column: 20)
!145 = !DILocation(line: 400, column: 17, scope: !144)
!146 = !DILocation(line: 400, column: 20, scope: !144)
!147 = !DILocation(line: 400, column: 9, scope: !144)
!148 = !DILocation(line: 402, column: 5, scope: !144)
!149 = !DILocation(line: 403, column: 5, scope: !129)
!150 = distinct !DISubprogram(name: "zipStorePrevEntryLength", scope: !1, file: !1, line: 408, type: !151, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!20, !52, !20}
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "p", arg: 1, scope: !150, file: !1, line: 408, type: !52)
!155 = !DILocalVariable(name: "len", arg: 2, scope: !150, file: !1, line: 408, type: !20)
!156 = !DILocation(line: 408, column: 53, scope: !150)
!157 = !DILocation(line: 408, column: 69, scope: !150)
!158 = !DILocation(line: 409, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !1, line: 409, column: 9)
!160 = !DILocation(line: 0, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 412, column: 13)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 411, column: 12)
!163 = !DILocation(line: 409, column: 9, scope: !150)
!164 = !DILocation(line: 410, column: 16, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !1, line: 409, column: 20)
!166 = !DILocation(line: 410, column: 9, scope: !165)
!167 = !DILocation(line: 412, column: 13, scope: !162)
!168 = !DILocation(line: 413, column: 20, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !1, line: 412, column: 36)
!170 = !DILocation(line: 413, column: 18, scope: !169)
!171 = !DILocation(line: 414, column: 13, scope: !169)
!172 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !173)
!173 = distinct !DILocation(line: 416, column: 20, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 415, column: 16)
!175 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !173)
!176 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !173)
!177 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !173)
!178 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !173)
!179 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !173)
!180 = !DILocation(line: 416, column: 13, scope: !174)
!181 = !DILocation(line: 0, scope: !174)
!182 = !DILocation(line: 419, column: 1, scope: !150)
!183 = distinct !DISubprogram(name: "zipPrevLenByteDiff", scope: !1, file: !1, line: 464, type: !130, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !184)
!184 = !{!185, !186, !187}
!185 = !DILocalVariable(name: "p", arg: 1, scope: !183, file: !1, line: 464, type: !52)
!186 = !DILocalVariable(name: "len", arg: 2, scope: !183, file: !1, line: 464, type: !20)
!187 = !DILocalVariable(name: "prevlensize", scope: !183, file: !1, line: 465, type: !20)
!188 = !DILocation(line: 464, column: 39, scope: !183)
!189 = !DILocation(line: 464, column: 55, scope: !183)
!190 = !DILocation(line: 466, column: 5, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 466, column: 5)
!192 = distinct !DILexicalBlock(scope: !183, file: !1, line: 466, column: 5)
!193 = !DILocation(line: 466, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 466, column: 5)
!195 = !DILocation(line: 465, column: 18, scope: !183)
!196 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !197)
!197 = distinct !DILocation(line: 467, column: 12, scope: !183)
!198 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !197)
!199 = !DILocation(line: 0, scope: !161, inlinedAt: !197)
!200 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !197)
!201 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !197)
!202 = !DILocation(line: 467, column: 47, scope: !183)
!203 = !DILocation(line: 467, column: 5, scope: !183)
!204 = distinct !DISubprogram(name: "zipRawEntryLength", scope: !1, file: !1, line: 471, type: !205, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!20, !52}
!207 = !{!208, !209, !210, !211, !212}
!208 = !DILocalVariable(name: "p", arg: 1, scope: !204, file: !1, line: 471, type: !52)
!209 = !DILocalVariable(name: "prevlensize", scope: !204, file: !1, line: 472, type: !20)
!210 = !DILocalVariable(name: "encoding", scope: !204, file: !1, line: 472, type: !20)
!211 = !DILocalVariable(name: "lensize", scope: !204, file: !1, line: 472, type: !20)
!212 = !DILocalVariable(name: "len", scope: !204, file: !1, line: 472, type: !20)
!213 = !DILocation(line: 471, column: 47, scope: !204)
!214 = !DILocation(line: 473, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 473, column: 5)
!216 = distinct !DILexicalBlock(scope: !204, file: !1, line: 473, column: 5)
!217 = !DILocation(line: 473, column: 5, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !1, line: 473, column: 5)
!219 = !DILocation(line: 472, column: 18, scope: !204)
!220 = !DILocation(line: 474, column: 5, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 474, column: 5)
!222 = distinct !DILexicalBlock(scope: !204, file: !1, line: 474, column: 5)
!223 = !DILocation(line: 472, column: 31, scope: !204)
!224 = !DILocation(line: 474, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 474, column: 5)
!226 = !DILocation(line: 474, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 474, column: 5)
!228 = !DILocation(line: 474, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !1, line: 474, column: 5)
!230 = !DILocation(line: 474, column: 5, scope: !222)
!231 = !DILocation(line: 472, column: 41, scope: !204)
!232 = !DILocation(line: 474, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 474, column: 5)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 474, column: 5)
!235 = !DILocation(line: 472, column: 50, scope: !204)
!236 = !DILocation(line: 474, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 474, column: 5)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 474, column: 5)
!239 = !DILocation(line: 474, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 474, column: 5)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 474, column: 5)
!242 = !DILocation(line: 474, column: 5, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !1, line: 474, column: 5)
!244 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !245)
!245 = distinct !DILocation(line: 474, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !227, file: !1, line: 474, column: 5)
!247 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !245)
!248 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !245)
!249 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !245)
!250 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !245)
!251 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !245)
!252 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !245)
!253 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !245)
!254 = !DILocation(line: 0, scope: !40, inlinedAt: !245)
!255 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !245)
!256 = !DILocation(line: 475, column: 24, scope: !204)
!257 = !DILocation(line: 475, column: 34, scope: !204)
!258 = !DILocation(line: 475, column: 5, scope: !204)
!259 = distinct !DISubprogram(name: "zipTryEncoding", scope: !1, file: !1, line: 480, type: !260, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !263)
!260 = !DISubroutineType(types: !261)
!261 = !{!132, !52, !20, !262, !52}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!263 = !{!264, !265, !266, !267, !268}
!264 = !DILocalVariable(name: "entry", arg: 1, scope: !259, file: !1, line: 480, type: !52)
!265 = !DILocalVariable(name: "entrylen", arg: 2, scope: !259, file: !1, line: 480, type: !20)
!266 = !DILocalVariable(name: "v", arg: 3, scope: !259, file: !1, line: 480, type: !262)
!267 = !DILocalVariable(name: "encoding", arg: 4, scope: !259, file: !1, line: 480, type: !52)
!268 = !DILocalVariable(name: "value", scope: !259, file: !1, line: 481, type: !26)
!269 = !DILocation(line: 480, column: 35, scope: !259)
!270 = !DILocation(line: 480, column: 55, scope: !259)
!271 = !DILocation(line: 480, column: 76, scope: !259)
!272 = !DILocation(line: 480, column: 94, scope: !259)
!273 = !DILocation(line: 481, column: 5, scope: !259)
!274 = !DILocation(line: 483, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !259, file: !1, line: 483, column: 9)
!276 = !DILocation(line: 484, column: 32, scope: !277)
!277 = distinct !DILexicalBlock(scope: !259, file: !1, line: 484, column: 9)
!278 = !DILocation(line: 481, column: 15, scope: !259)
!279 = !DILocation(line: 484, column: 9, scope: !277)
!280 = !DILocation(line: 484, column: 9, scope: !259)
!281 = !DILocation(line: 487, column: 13, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 487, column: 13)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 484, column: 50)
!284 = !{!285, !285, i64 0}
!285 = !{!"long long", !82, i64 0}
!286 = !DILocation(line: 487, column: 24, scope: !282)
!287 = !DILocation(line: 488, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !1, line: 487, column: 40)
!289 = !DILocation(line: 489, column: 9, scope: !288)
!290 = !DILocation(line: 489, column: 38, scope: !291)
!291 = distinct !DILexicalBlock(scope: !282, file: !1, line: 489, column: 20)
!292 = !DILocation(line: 491, column: 39, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !1, line: 491, column: 20)
!294 = !DILocation(line: 493, column: 39, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !1, line: 493, column: 20)
!296 = !DILocation(line: 495, column: 39, scope: !297)
!297 = distinct !DILexicalBlock(scope: !295, file: !1, line: 495, column: 20)
!298 = !DILocation(line: 497, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !1, line: 495, column: 62)
!300 = !DILocation(line: 0, scope: !288)
!301 = !DILocation(line: 500, column: 12, scope: !283)
!302 = !DILocation(line: 501, column: 9, scope: !283)
!303 = !DILocation(line: 0, scope: !259)
!304 = !DILocation(line: 504, column: 1, scope: !259)
!305 = distinct !DISubprogram(name: "zipSaveInteger", scope: !1, file: !1, line: 507, type: !306, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !311)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !52, !308, !16}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 56, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 103, baseType: !310)
!310 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!311 = !{!312, !313, !314, !315, !319, !322}
!312 = !DILocalVariable(name: "p", arg: 1, scope: !305, file: !1, line: 507, type: !52)
!313 = !DILocalVariable(name: "value", arg: 2, scope: !305, file: !1, line: 507, type: !308)
!314 = !DILocalVariable(name: "encoding", arg: 3, scope: !305, file: !1, line: 507, type: !16)
!315 = !DILocalVariable(name: "i16", scope: !305, file: !1, line: 508, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !8, line: 32, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !10, line: 55, baseType: !318)
!318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!319 = !DILocalVariable(name: "i32", scope: !305, file: !1, line: 509, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 44, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 77, baseType: !132)
!322 = !DILocalVariable(name: "i64", scope: !305, file: !1, line: 510, type: !308)
!323 = !DILocation(line: 507, column: 36, scope: !305)
!324 = !DILocation(line: 507, column: 47, scope: !305)
!325 = !DILocation(line: 507, column: 68, scope: !305)
!326 = !DILocation(line: 508, column: 5, scope: !305)
!327 = !DILocation(line: 509, column: 5, scope: !305)
!328 = !DILocation(line: 510, column: 5, scope: !305)
!329 = !DILocation(line: 511, column: 9, scope: !305)
!330 = !DILocation(line: 512, column: 27, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 511, column: 33)
!332 = distinct !DILexicalBlock(scope: !305, file: !1, line: 511, column: 9)
!333 = !DILocation(line: 512, column: 25, scope: !331)
!334 = !DILocation(line: 513, column: 5, scope: !331)
!335 = !DILocation(line: 514, column: 15, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 513, column: 41)
!337 = distinct !DILexicalBlock(scope: !332, file: !1, line: 513, column: 16)
!338 = !DILocation(line: 508, column: 13, scope: !305)
!339 = !DILocation(line: 514, column: 13, scope: !336)
!340 = !{!341, !341, i64 0}
!341 = !{!"short", !82, i64 0}
!342 = !DILocation(line: 515, column: 9, scope: !336)
!343 = !DILocation(line: 517, column: 5, scope: !336)
!344 = !DILocation(line: 518, column: 15, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 517, column: 41)
!346 = distinct !DILexicalBlock(scope: !337, file: !1, line: 517, column: 16)
!347 = !DILocation(line: 509, column: 13, scope: !305)
!348 = !DILocation(line: 518, column: 13, scope: !345)
!349 = !DILocation(line: 520, column: 34, scope: !345)
!350 = !DILocation(line: 520, column: 9, scope: !345)
!351 = !DILocation(line: 521, column: 5, scope: !345)
!352 = !DILocation(line: 522, column: 15, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 521, column: 41)
!354 = distinct !DILexicalBlock(scope: !346, file: !1, line: 521, column: 16)
!355 = !DILocation(line: 522, column: 13, scope: !353)
!356 = !DILocation(line: 523, column: 9, scope: !353)
!357 = !DILocation(line: 525, column: 5, scope: !353)
!358 = !DILocation(line: 510, column: 13, scope: !305)
!359 = !DILocation(line: 526, column: 13, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 525, column: 41)
!361 = distinct !DILexicalBlock(scope: !354, file: !1, line: 525, column: 16)
!362 = !{!363, !363, i64 0}
!363 = !{!"long", !82, i64 0}
!364 = !DILocation(line: 527, column: 9, scope: !360)
!365 = !DILocation(line: 529, column: 5, scope: !360)
!366 = !DILocation(line: 529, column: 44, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !1, line: 529, column: 16)
!368 = !DILocation(line: 532, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 531, column: 12)
!370 = !DILocation(line: 534, column: 1, scope: !305)
!371 = distinct !DISubprogram(name: "zipLoadInteger", scope: !1, file: !1, line: 537, type: !372, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!308, !52, !16}
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DILocalVariable(name: "p", arg: 1, scope: !371, file: !1, line: 537, type: !52)
!376 = !DILocalVariable(name: "encoding", arg: 2, scope: !371, file: !1, line: 537, type: !16)
!377 = !DILocalVariable(name: "i16", scope: !371, file: !1, line: 538, type: !316)
!378 = !DILocalVariable(name: "i32", scope: !371, file: !1, line: 539, type: !320)
!379 = !DILocalVariable(name: "i64", scope: !371, file: !1, line: 540, type: !308)
!380 = !DILocalVariable(name: "ret", scope: !371, file: !1, line: 540, type: !308)
!381 = !DILocation(line: 537, column: 39, scope: !371)
!382 = !DILocation(line: 537, column: 56, scope: !371)
!383 = !DILocation(line: 538, column: 5, scope: !371)
!384 = !DILocation(line: 539, column: 5, scope: !371)
!385 = !DILocation(line: 540, column: 5, scope: !371)
!386 = !DILocation(line: 540, column: 18, scope: !371)
!387 = !DILocation(line: 541, column: 9, scope: !371)
!388 = !DILocation(line: 542, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 541, column: 33)
!390 = distinct !DILexicalBlock(scope: !371, file: !1, line: 541, column: 9)
!391 = !DILocation(line: 543, column: 5, scope: !389)
!392 = !DILocation(line: 544, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 543, column: 41)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 543, column: 16)
!395 = !DILocation(line: 546, column: 15, scope: !393)
!396 = !DILocation(line: 538, column: 13, scope: !371)
!397 = !DILocation(line: 547, column: 5, scope: !393)
!398 = !DILocation(line: 548, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 547, column: 41)
!400 = distinct !DILexicalBlock(scope: !394, file: !1, line: 547, column: 16)
!401 = !DILocation(line: 550, column: 15, scope: !399)
!402 = !DILocation(line: 539, column: 13, scope: !371)
!403 = !DILocation(line: 551, column: 5, scope: !399)
!404 = !DILocation(line: 552, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 551, column: 41)
!406 = distinct !DILexicalBlock(scope: !400, file: !1, line: 551, column: 16)
!407 = !DILocation(line: 553, column: 32, scope: !405)
!408 = !DILocation(line: 553, column: 9, scope: !405)
!409 = !DILocation(line: 555, column: 15, scope: !405)
!410 = !DILocation(line: 555, column: 18, scope: !405)
!411 = !DILocation(line: 556, column: 5, scope: !405)
!412 = !DILocation(line: 557, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 556, column: 41)
!414 = distinct !DILexicalBlock(scope: !406, file: !1, line: 556, column: 16)
!415 = !DILocation(line: 559, column: 15, scope: !413)
!416 = !DILocation(line: 540, column: 13, scope: !371)
!417 = !DILocation(line: 560, column: 5, scope: !413)
!418 = !DILocation(line: 560, column: 44, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 560, column: 16)
!420 = !DILocation(line: 561, column: 25, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !1, line: 560, column: 76)
!422 = !DILocation(line: 561, column: 44, scope: !421)
!423 = !DILocation(line: 563, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 562, column: 12)
!425 = !DILocation(line: 0, scope: !421)
!426 = !DILocation(line: 566, column: 1, scope: !371)
!427 = !DILocation(line: 565, column: 5, scope: !371)
!428 = distinct !DISubprogram(name: "zipEntry", scope: !1, file: !1, line: 569, type: !429, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !442)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !52, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlentry", file: !1, line: 289, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlentry", file: !1, line: 271, size: 256, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlensize", scope: !433, file: !1, line: 272, baseType: !20, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlen", scope: !433, file: !1, line: 273, baseType: !20, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lensize", scope: !433, file: !1, line: 274, baseType: !20, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !433, file: !1, line: 277, baseType: !20, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !433, file: !1, line: 282, baseType: !20, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !433, file: !1, line: 283, baseType: !16, size: 8, offset: 160)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !433, file: !1, line: 287, baseType: !52, size: 64, offset: 192)
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "p", arg: 1, scope: !428, file: !1, line: 569, type: !52)
!444 = !DILocalVariable(name: "e", arg: 2, scope: !428, file: !1, line: 569, type: !431)
!445 = !DILocation(line: 569, column: 30, scope: !428)
!446 = !DILocation(line: 569, column: 42, scope: !428)
!447 = !DILocation(line: 571, column: 5, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 571, column: 5)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 571, column: 5)
!450 = distinct !DILexicalBlock(scope: !428, file: !1, line: 571, column: 5)
!451 = !DILocation(line: 571, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !1, line: 571, column: 5)
!453 = !DILocation(line: 571, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !1, line: 571, column: 5)
!455 = !{!456, !139, i64 0}
!456 = !{!"zlentry", !139, i64 0, !139, i64 4, !139, i64 8, !139, i64 12, !139, i64 16, !82, i64 20, !457, i64 24}
!457 = !{!"any pointer", !82, i64 0}
!458 = !DILocation(line: 571, column: 5, scope: !450)
!459 = !DILocation(line: 571, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 571, column: 5)
!461 = distinct !DILexicalBlock(scope: !450, file: !1, line: 571, column: 5)
!462 = !{!456, !139, i64 4}
!463 = !DILocation(line: 571, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 571, column: 5)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 571, column: 5)
!466 = !DILocation(line: 572, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 572, column: 5)
!468 = distinct !DILexicalBlock(scope: !428, file: !1, line: 572, column: 5)
!469 = !DILocation(line: 572, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !1, line: 572, column: 5)
!471 = !{!456, !82, i64 20}
!472 = !DILocation(line: 572, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !1, line: 572, column: 5)
!474 = !DILocation(line: 572, column: 5, scope: !468)
!475 = !DILocation(line: 572, column: 5, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !1, line: 572, column: 5)
!477 = !DILocation(line: 572, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 572, column: 5)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 572, column: 5)
!480 = !{!456, !139, i64 8}
!481 = !DILocation(line: 572, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 572, column: 5)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 572, column: 5)
!484 = !DILocation(line: 572, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 572, column: 5)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 572, column: 5)
!487 = !DILocation(line: 572, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !486, file: !1, line: 572, column: 5)
!489 = !DILocation(line: 572, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !473, file: !1, line: 572, column: 5)
!491 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !492)
!492 = distinct !DILocation(line: 572, column: 5, scope: !490)
!493 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !492)
!494 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !492)
!495 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !492)
!496 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !492)
!497 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !492)
!498 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !492)
!499 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !492)
!500 = !DILocation(line: 0, scope: !40, inlinedAt: !492)
!501 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !492)
!502 = !DILocation(line: 573, column: 44, scope: !428)
!503 = !{!456, !139, i64 12}
!504 = !DILocation(line: 573, column: 39, scope: !428)
!505 = !DILocation(line: 573, column: 8, scope: !428)
!506 = !DILocation(line: 573, column: 19, scope: !428)
!507 = !{!456, !139, i64 16}
!508 = !DILocation(line: 574, column: 8, scope: !428)
!509 = !DILocation(line: 574, column: 10, scope: !428)
!510 = !{!456, !457, i64 24}
!511 = !DILocation(line: 575, column: 1, scope: !428)
!512 = distinct !DISubprogram(name: "ziplistNew", scope: !1, file: !1, line: 578, type: !513, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!52}
!515 = !{!516, !517}
!516 = !DILocalVariable(name: "bytes", scope: !512, file: !1, line: 579, type: !20)
!517 = !DILocalVariable(name: "zl", scope: !512, file: !1, line: 580, type: !52)
!518 = !DILocation(line: 579, column: 18, scope: !512)
!519 = !DILocation(line: 580, column: 25, scope: !512)
!520 = !DILocation(line: 580, column: 20, scope: !512)
!521 = !DILocation(line: 581, column: 5, scope: !512)
!522 = !DILocation(line: 581, column: 23, scope: !512)
!523 = !DILocation(line: 582, column: 5, scope: !512)
!524 = !DILocation(line: 582, column: 29, scope: !512)
!525 = !DILocation(line: 583, column: 5, scope: !512)
!526 = !DILocation(line: 583, column: 24, scope: !512)
!527 = !DILocation(line: 584, column: 5, scope: !512)
!528 = !DILocation(line: 584, column: 17, scope: !512)
!529 = !DILocation(line: 585, column: 5, scope: !512)
!530 = distinct !DISubprogram(name: "ziplistResize", scope: !1, file: !1, line: 589, type: !531, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!52, !52, !20}
!533 = !{!534, !535}
!534 = !DILocalVariable(name: "zl", arg: 1, scope: !530, file: !1, line: 589, type: !52)
!535 = !DILocalVariable(name: "len", arg: 2, scope: !530, file: !1, line: 589, type: !20)
!536 = !DILocation(line: 589, column: 45, scope: !530)
!537 = !DILocation(line: 589, column: 62, scope: !530)
!538 = !DILocation(line: 590, column: 22, scope: !530)
!539 = !DILocation(line: 590, column: 10, scope: !530)
!540 = !DILocation(line: 591, column: 5, scope: !530)
!541 = !DILocation(line: 591, column: 23, scope: !530)
!542 = !DILocation(line: 592, column: 11, scope: !530)
!543 = !DILocation(line: 592, column: 5, scope: !530)
!544 = !DILocation(line: 592, column: 15, scope: !530)
!545 = !DILocation(line: 593, column: 5, scope: !530)
!546 = distinct !DISubprogram(name: "__ziplistCascadeUpdate", scope: !1, file: !1, line: 616, type: !547, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!52, !52, !52}
!549 = !{!550, !551, !552, !557, !558, !559, !560, !561, !562, !563, !564}
!550 = !DILocalVariable(name: "zl", arg: 1, scope: !546, file: !1, line: 616, type: !52)
!551 = !DILocalVariable(name: "p", arg: 2, scope: !546, file: !1, line: 616, type: !52)
!552 = !DILocalVariable(name: "curlen", scope: !546, file: !1, line: 617, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !554, line: 40, baseType: !555)
!554 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !556, line: 129, baseType: !25)
!556 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!557 = !DILocalVariable(name: "rawlen", scope: !546, file: !1, line: 617, type: !553)
!558 = !DILocalVariable(name: "rawlensize", scope: !546, file: !1, line: 617, type: !553)
!559 = !DILocalVariable(name: "offset", scope: !546, file: !1, line: 618, type: !553)
!560 = !DILocalVariable(name: "noffset", scope: !546, file: !1, line: 618, type: !553)
!561 = !DILocalVariable(name: "extra", scope: !546, file: !1, line: 618, type: !553)
!562 = !DILocalVariable(name: "np", scope: !546, file: !1, line: 619, type: !52)
!563 = !DILocalVariable(name: "cur", scope: !546, file: !1, line: 620, type: !432)
!564 = !DILocalVariable(name: "next", scope: !546, file: !1, line: 620, type: !432)
!565 = !DILocation(line: 616, column: 54, scope: !546)
!566 = !DILocation(line: 616, column: 73, scope: !546)
!567 = !DILocation(line: 617, column: 21, scope: !546)
!568 = !DILocation(line: 620, column: 5, scope: !546)
!569 = !DILocation(line: 622, column: 12, scope: !546)
!570 = !DILocation(line: 622, column: 17, scope: !546)
!571 = !DILocation(line: 622, column: 5, scope: !546)
!572 = !DILocation(line: 617, column: 12, scope: !546)
!573 = !DILocation(line: 620, column: 13, scope: !546)
!574 = !DILocation(line: 623, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !546, file: !1, line: 622, column: 29)
!576 = !DILocation(line: 624, column: 22, scope: !575)
!577 = !DILocation(line: 624, column: 39, scope: !575)
!578 = !DILocation(line: 624, column: 33, scope: !575)
!579 = !DILocation(line: 624, column: 18, scope: !575)
!580 = !DILocation(line: 617, column: 54, scope: !546)
!581 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !582)
!582 = distinct !DILocation(line: 625, column: 22, scope: !575)
!583 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !582)
!584 = !DILocation(line: 0, scope: !161, inlinedAt: !582)
!585 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !582)
!586 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !582)
!587 = !DILocation(line: 625, column: 22, scope: !575)
!588 = !DILocation(line: 617, column: 62, scope: !546)
!589 = !DILocation(line: 628, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !575, file: !1, line: 628, column: 13)
!591 = !DILocation(line: 628, column: 23, scope: !590)
!592 = !DILocation(line: 628, column: 13, scope: !575)
!593 = !DILocation(line: 620, column: 18, scope: !546)
!594 = !DILocation(line: 629, column: 9, scope: !575)
!595 = !DILocation(line: 632, column: 18, scope: !596)
!596 = distinct !DILexicalBlock(scope: !575, file: !1, line: 632, column: 13)
!597 = !DILocation(line: 632, column: 29, scope: !596)
!598 = !DILocation(line: 632, column: 13, scope: !575)
!599 = !DILocation(line: 634, column: 18, scope: !600)
!600 = distinct !DILexicalBlock(scope: !575, file: !1, line: 634, column: 13)
!601 = !DILocation(line: 634, column: 33, scope: !600)
!602 = !DILocation(line: 634, column: 13, scope: !575)
!603 = !DILocation(line: 634, column: 13, scope: !600)
!604 = !DILocation(line: 637, column: 23, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !1, line: 634, column: 47)
!606 = !DILocation(line: 618, column: 12, scope: !546)
!607 = !DILocation(line: 638, column: 31, scope: !605)
!608 = !DILocation(line: 618, column: 29, scope: !546)
!609 = !DILocation(line: 639, column: 41, scope: !605)
!610 = !DILocation(line: 639, column: 35, scope: !605)
!611 = !DILocation(line: 589, column: 45, scope: !530, inlinedAt: !612)
!612 = distinct !DILocation(line: 639, column: 18, scope: !605)
!613 = !DILocation(line: 589, column: 62, scope: !530, inlinedAt: !612)
!614 = !DILocation(line: 590, column: 22, scope: !530, inlinedAt: !612)
!615 = !DILocation(line: 590, column: 10, scope: !530, inlinedAt: !612)
!616 = !DILocation(line: 591, column: 5, scope: !530, inlinedAt: !612)
!617 = !DILocation(line: 591, column: 23, scope: !530, inlinedAt: !612)
!618 = !DILocation(line: 592, column: 11, scope: !530, inlinedAt: !612)
!619 = !DILocation(line: 592, column: 5, scope: !530, inlinedAt: !612)
!620 = !DILocation(line: 592, column: 15, scope: !530, inlinedAt: !612)
!621 = !DILocation(line: 593, column: 5, scope: !530, inlinedAt: !612)
!622 = !DILocation(line: 640, column: 19, scope: !605)
!623 = !DILocation(line: 643, column: 19, scope: !605)
!624 = !DILocation(line: 619, column: 20, scope: !546)
!625 = !DILocation(line: 644, column: 25, scope: !605)
!626 = !DILocation(line: 647, column: 21, scope: !627)
!627 = distinct !DILexicalBlock(scope: !605, file: !1, line: 647, column: 17)
!628 = !DILocation(line: 647, column: 20, scope: !627)
!629 = !DILocation(line: 647, column: 60, scope: !627)
!630 = !DILocation(line: 647, column: 17, scope: !605)
!631 = !DILocation(line: 649, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !1, line: 647, column: 67)
!633 = !DILocation(line: 648, column: 41, scope: !632)
!634 = !DILocation(line: 650, column: 13, scope: !632)
!635 = !DILocation(line: 653, column: 23, scope: !605)
!636 = !DILocation(line: 654, column: 25, scope: !605)
!637 = !DILocation(line: 654, column: 19, scope: !605)
!638 = !DILocation(line: 655, column: 51, scope: !605)
!639 = !DILocation(line: 655, column: 23, scope: !605)
!640 = !DILocation(line: 653, column: 13, scope: !605)
!641 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !642)
!642 = distinct !DILocation(line: 656, column: 13, scope: !605)
!643 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !642)
!644 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !642)
!645 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !642)
!646 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !642)
!647 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !642)
!648 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !642)
!649 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !642)
!650 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !651)
!651 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !642)
!652 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !651)
!653 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !651)
!654 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !651)
!655 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !651)
!656 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !651)
!657 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !642)
!658 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !642)
!659 = distinct !{!659, !571, !660}
!660 = !DILocation(line: 673, column: 5, scope: !546)
!661 = !DILocation(line: 662, column: 37, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 662, column: 17)
!663 = distinct !DILexicalBlock(scope: !600, file: !1, line: 661, column: 16)
!664 = !DILocation(line: 662, column: 17, scope: !663)
!665 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !666)
!666 = distinct !DILocation(line: 665, column: 17, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 662, column: 51)
!668 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !666)
!669 = !DILocation(line: 398, column: 11, scope: !141, inlinedAt: !666)
!670 = !DILocation(line: 398, column: 9, scope: !129, inlinedAt: !666)
!671 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !666)
!672 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !666)
!673 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !666)
!674 = !DILocation(line: 402, column: 5, scope: !144, inlinedAt: !666)
!675 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !666)
!676 = !DILocation(line: 666, column: 13, scope: !667)
!677 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !678)
!678 = distinct !DILocation(line: 667, column: 17, scope: !679)
!679 = distinct !DILexicalBlock(scope: !662, file: !1, line: 666, column: 20)
!680 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !678)
!681 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !678)
!682 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !678)
!683 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !678)
!684 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !678)
!685 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !678)
!686 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !678)
!687 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !688)
!688 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !678)
!689 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !688)
!690 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !688)
!691 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !688)
!692 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !688)
!693 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !688)
!694 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !678)
!695 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !678)
!696 = !DILocation(line: 675, column: 1, scope: !546)
!697 = !DILocation(line: 674, column: 5, scope: !546)
!698 = distinct !DISubprogram(name: "__ziplistDelete", scope: !1, file: !1, line: 678, type: !699, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!52, !52, !52, !20}
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!702 = !DILocalVariable(name: "zl", arg: 1, scope: !698, file: !1, line: 678, type: !52)
!703 = !DILocalVariable(name: "p", arg: 2, scope: !698, file: !1, line: 678, type: !52)
!704 = !DILocalVariable(name: "num", arg: 3, scope: !698, file: !1, line: 678, type: !20)
!705 = !DILocalVariable(name: "i", scope: !698, file: !1, line: 679, type: !20)
!706 = !DILocalVariable(name: "totlen", scope: !698, file: !1, line: 679, type: !20)
!707 = !DILocalVariable(name: "deleted", scope: !698, file: !1, line: 679, type: !20)
!708 = !DILocalVariable(name: "offset", scope: !698, file: !1, line: 680, type: !553)
!709 = !DILocalVariable(name: "nextdiff", scope: !698, file: !1, line: 681, type: !132)
!710 = !DILocalVariable(name: "first", scope: !698, file: !1, line: 682, type: !432)
!711 = !DILocalVariable(name: "tail", scope: !698, file: !1, line: 682, type: !432)
!712 = !DILocation(line: 678, column: 47, scope: !698)
!713 = !DILocation(line: 678, column: 66, scope: !698)
!714 = !DILocation(line: 678, column: 82, scope: !698)
!715 = !DILocation(line: 679, column: 29, scope: !698)
!716 = !DILocation(line: 681, column: 9, scope: !698)
!717 = !DILocation(line: 682, column: 5, scope: !698)
!718 = !DILocation(line: 682, column: 13, scope: !698)
!719 = !DILocation(line: 684, column: 5, scope: !698)
!720 = !DILocation(line: 679, column: 18, scope: !698)
!721 = !DILocation(line: 685, column: 17, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 685, column: 5)
!723 = distinct !DILexicalBlock(scope: !698, file: !1, line: 685, column: 5)
!724 = !DILocation(line: 685, column: 22, scope: !722)
!725 = !DILocation(line: 685, column: 38, scope: !722)
!726 = !DILocation(line: 685, column: 33, scope: !722)
!727 = !DILocation(line: 685, column: 5, scope: !723)
!728 = !DILocation(line: 686, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !722, file: !1, line: 685, column: 50)
!730 = !DILocation(line: 686, column: 11, scope: !729)
!731 = !DILocation(line: 687, column: 16, scope: !729)
!732 = distinct !{!732, !727, !733}
!733 = !DILocation(line: 688, column: 5, scope: !723)
!734 = !DILocation(line: 690, column: 22, scope: !698)
!735 = !DILocation(line: 690, column: 15, scope: !698)
!736 = !DILocation(line: 690, column: 14, scope: !698)
!737 = !DILocation(line: 679, column: 21, scope: !698)
!738 = !DILocation(line: 691, column: 16, scope: !739)
!739 = distinct !DILexicalBlock(scope: !698, file: !1, line: 691, column: 9)
!740 = !DILocation(line: 691, column: 9, scope: !698)
!741 = !DILocation(line: 692, column: 13, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !1, line: 691, column: 21)
!743 = !DILocation(line: 697, column: 51, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 692, column: 30)
!745 = distinct !DILexicalBlock(scope: !742, file: !1, line: 692, column: 13)
!746 = !DILocation(line: 464, column: 39, scope: !183, inlinedAt: !747)
!747 = distinct !DILocation(line: 697, column: 24, scope: !744)
!748 = !DILocation(line: 464, column: 55, scope: !183, inlinedAt: !747)
!749 = !DILocation(line: 466, column: 5, scope: !191, inlinedAt: !747)
!750 = !DILocation(line: 466, column: 5, scope: !194, inlinedAt: !747)
!751 = !DILocation(line: 465, column: 18, scope: !183, inlinedAt: !747)
!752 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !753)
!753 = distinct !DILocation(line: 467, column: 12, scope: !183, inlinedAt: !747)
!754 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !753)
!755 = !DILocation(line: 0, scope: !161, inlinedAt: !753)
!756 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !753)
!757 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !753)
!758 = !DILocation(line: 467, column: 47, scope: !183, inlinedAt: !747)
!759 = !DILocation(line: 467, column: 5, scope: !183, inlinedAt: !747)
!760 = !DILocation(line: 703, column: 15, scope: !744)
!761 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !762)
!762 = distinct !DILocation(line: 704, column: 13, scope: !744)
!763 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !762)
!764 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !762)
!765 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !762)
!766 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !762)
!767 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !762)
!768 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !762)
!769 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !762)
!770 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !771)
!771 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !762)
!772 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !771)
!773 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !771)
!774 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !771)
!775 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !771)
!776 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !771)
!777 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !762)
!778 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !762)
!779 = !DILocation(line: 708, column: 17, scope: !744)
!780 = !DILocation(line: 707, column: 37, scope: !744)
!781 = !DILocation(line: 682, column: 20, scope: !698)
!782 = !DILocation(line: 713, column: 13, scope: !744)
!783 = !DILocation(line: 714, column: 24, scope: !784)
!784 = distinct !DILexicalBlock(scope: !744, file: !1, line: 714, column: 17)
!785 = !DILocation(line: 714, column: 40, scope: !784)
!786 = !DILocation(line: 714, column: 34, scope: !784)
!787 = !DILocation(line: 714, column: 17, scope: !784)
!788 = !DILocation(line: 714, column: 45, scope: !784)
!789 = !DILocation(line: 714, column: 17, scope: !744)
!790 = !DILocation(line: 716, column: 20, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !1, line: 714, column: 57)
!792 = !DILocation(line: 715, column: 41, scope: !791)
!793 = !DILocation(line: 717, column: 13, scope: !791)
!794 = !DILocation(line: 720, column: 27, scope: !744)
!795 = !DILocation(line: 721, column: 17, scope: !744)
!796 = !DILocation(line: 721, column: 51, scope: !744)
!797 = !DILocation(line: 721, column: 48, scope: !744)
!798 = !DILocation(line: 721, column: 55, scope: !744)
!799 = !DILocation(line: 720, column: 13, scope: !744)
!800 = !DILocation(line: 729, column: 24, scope: !742)
!801 = !DILocation(line: 729, column: 25, scope: !742)
!802 = !DILocation(line: 722, column: 9, scope: !744)
!803 = !DILocation(line: 725, column: 17, scope: !804)
!804 = distinct !DILexicalBlock(scope: !745, file: !1, line: 722, column: 16)
!805 = !DILocation(line: 724, column: 13, scope: !804)
!806 = !DILocation(line: 724, column: 37, scope: !804)
!807 = !DILocation(line: 730, column: 32, scope: !742)
!808 = !DILocation(line: 0, scope: !698)
!809 = !DILocation(line: 680, column: 12, scope: !698)
!810 = !DILocation(line: 730, column: 63, scope: !742)
!811 = !DILocation(line: 730, column: 70, scope: !742)
!812 = !DILocation(line: 589, column: 45, scope: !530, inlinedAt: !813)
!813 = distinct !DILocation(line: 730, column: 14, scope: !742)
!814 = !DILocation(line: 589, column: 62, scope: !530, inlinedAt: !813)
!815 = !DILocation(line: 590, column: 22, scope: !530, inlinedAt: !813)
!816 = !DILocation(line: 590, column: 10, scope: !530, inlinedAt: !813)
!817 = !DILocation(line: 591, column: 5, scope: !530, inlinedAt: !813)
!818 = !DILocation(line: 591, column: 23, scope: !530, inlinedAt: !813)
!819 = !DILocation(line: 592, column: 11, scope: !530, inlinedAt: !813)
!820 = !DILocation(line: 592, column: 5, scope: !530, inlinedAt: !813)
!821 = !DILocation(line: 592, column: 15, scope: !530, inlinedAt: !813)
!822 = !DILocation(line: 593, column: 5, scope: !530, inlinedAt: !813)
!823 = !DILocation(line: 731, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 731, column: 9)
!825 = distinct !DILexicalBlock(scope: !742, file: !1, line: 731, column: 9)
!826 = !DILocation(line: 731, column: 9, scope: !825)
!827 = !DILocation(line: 736, column: 22, scope: !828)
!828 = distinct !DILexicalBlock(scope: !742, file: !1, line: 736, column: 13)
!829 = !DILocation(line: 736, column: 13, scope: !742)
!830 = !DILocation(line: 732, column: 15, scope: !742)
!831 = !DILocation(line: 737, column: 18, scope: !828)
!832 = !DILocation(line: 737, column: 13, scope: !828)
!833 = !DILocation(line: 740, column: 1, scope: !698)
!834 = !DILocation(line: 739, column: 5, scope: !698)
!835 = distinct !DISubprogram(name: "__ziplistInsert", scope: !1, file: !1, line: 743, type: !836, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!52, !52, !52, !52, !20}
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !855}
!839 = !DILocalVariable(name: "zl", arg: 1, scope: !835, file: !1, line: 743, type: !52)
!840 = !DILocalVariable(name: "p", arg: 2, scope: !835, file: !1, line: 743, type: !52)
!841 = !DILocalVariable(name: "s", arg: 3, scope: !835, file: !1, line: 743, type: !52)
!842 = !DILocalVariable(name: "slen", arg: 4, scope: !835, file: !1, line: 743, type: !20)
!843 = !DILocalVariable(name: "curlen", scope: !835, file: !1, line: 744, type: !553)
!844 = !DILocalVariable(name: "reqlen", scope: !835, file: !1, line: 744, type: !553)
!845 = !DILocalVariable(name: "prevlensize", scope: !835, file: !1, line: 745, type: !20)
!846 = !DILocalVariable(name: "prevlen", scope: !835, file: !1, line: 745, type: !20)
!847 = !DILocalVariable(name: "offset", scope: !835, file: !1, line: 746, type: !553)
!848 = !DILocalVariable(name: "nextdiff", scope: !835, file: !1, line: 747, type: !132)
!849 = !DILocalVariable(name: "encoding", scope: !835, file: !1, line: 748, type: !16)
!850 = !DILocalVariable(name: "value", scope: !835, file: !1, line: 749, type: !26)
!851 = !DILocalVariable(name: "tail", scope: !835, file: !1, line: 752, type: !432)
!852 = !DILocalVariable(name: "ptail", scope: !853, file: !1, line: 758, type: !52)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 757, column: 12)
!854 = distinct !DILexicalBlock(scope: !835, file: !1, line: 755, column: 9)
!855 = !DILocalVariable(name: "forcelarge", scope: !835, file: !1, line: 781, type: !132)
!856 = !DILocation(line: 333, column: 28, scope: !49, inlinedAt: !857)
!857 = distinct !DILocation(line: 831, column: 10, scope: !835)
!858 = !DILocation(line: 333, column: 28, scope: !49, inlinedAt: !859)
!859 = distinct !DILocation(line: 776, column: 15, scope: !835)
!860 = !DILocation(line: 743, column: 47, scope: !835)
!861 = !DILocation(line: 743, column: 66, scope: !835)
!862 = !DILocation(line: 743, column: 84, scope: !835)
!863 = !DILocation(line: 743, column: 100, scope: !835)
!864 = !DILocation(line: 744, column: 21, scope: !835)
!865 = !DILocation(line: 744, column: 12, scope: !835)
!866 = !DILocation(line: 745, column: 5, scope: !835)
!867 = !DILocation(line: 745, column: 31, scope: !835)
!868 = !DILocation(line: 747, column: 9, scope: !835)
!869 = !DILocation(line: 748, column: 19, scope: !835)
!870 = !DILocation(line: 749, column: 15, scope: !835)
!871 = !DILocation(line: 752, column: 5, scope: !835)
!872 = !DILocation(line: 755, column: 9, scope: !854)
!873 = !DILocation(line: 755, column: 9, scope: !835)
!874 = !DILocation(line: 745, column: 18, scope: !835)
!875 = !DILocation(line: 756, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 756, column: 9)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 756, column: 9)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 756, column: 9)
!879 = distinct !DILexicalBlock(scope: !854, file: !1, line: 755, column: 26)
!880 = !DILocation(line: 756, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 756, column: 9)
!882 = distinct !DILexicalBlock(scope: !877, file: !1, line: 756, column: 9)
!883 = !DILocation(line: 758, column: 32, scope: !853)
!884 = !DILocation(line: 758, column: 24, scope: !853)
!885 = !DILocation(line: 759, column: 13, scope: !886)
!886 = distinct !DILexicalBlock(scope: !853, file: !1, line: 759, column: 13)
!887 = !DILocation(line: 759, column: 22, scope: !886)
!888 = !DILocation(line: 759, column: 13, scope: !853)
!889 = !DILocation(line: 760, column: 23, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !1, line: 759, column: 34)
!891 = !DILocation(line: 760, column: 21, scope: !890)
!892 = !DILocation(line: 761, column: 9, scope: !890)
!893 = !DILocation(line: 480, column: 35, scope: !259, inlinedAt: !894)
!894 = distinct !DILocation(line: 765, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !835, file: !1, line: 765, column: 9)
!896 = !DILocation(line: 480, column: 55, scope: !259, inlinedAt: !894)
!897 = !DILocation(line: 481, column: 5, scope: !259, inlinedAt: !894)
!898 = !DILocation(line: 483, column: 24, scope: !275, inlinedAt: !894)
!899 = !DILocation(line: 484, column: 32, scope: !277, inlinedAt: !894)
!900 = !DILocation(line: 481, column: 15, scope: !259, inlinedAt: !894)
!901 = !DILocation(line: 484, column: 9, scope: !277, inlinedAt: !894)
!902 = !DILocation(line: 484, column: 9, scope: !259, inlinedAt: !894)
!903 = !DILocation(line: 487, column: 13, scope: !282, inlinedAt: !894)
!904 = !DILocation(line: 487, column: 24, scope: !282, inlinedAt: !894)
!905 = !DILocation(line: 489, column: 38, scope: !291, inlinedAt: !894)
!906 = !DILocation(line: 504, column: 1, scope: !259, inlinedAt: !894)
!907 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !908)
!908 = distinct !DILocation(line: 767, column: 18, scope: !909)
!909 = distinct !DILexicalBlock(scope: !895, file: !1, line: 765, column: 50)
!910 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !908)
!911 = !DILocation(line: 491, column: 39, scope: !293, inlinedAt: !894)
!912 = !DILocation(line: 493, column: 39, scope: !295, inlinedAt: !894)
!913 = !DILocation(line: 495, column: 39, scope: !297, inlinedAt: !894)
!914 = !DILocation(line: 488, column: 25, scope: !288, inlinedAt: !894)
!915 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !908)
!916 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !908)
!917 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !908)
!918 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !908)
!919 = !DILocation(line: 0, scope: !909)
!920 = !DILocation(line: 0, scope: !921)
!921 = distinct !DILexicalBlock(scope: !895, file: !1, line: 768, column: 12)
!922 = !DILocation(line: 744, column: 54, scope: !835)
!923 = !DILocation(line: 775, column: 44, scope: !835)
!924 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !925)
!925 = distinct !DILocation(line: 775, column: 15, scope: !835)
!926 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !925)
!927 = !DILocation(line: 0, scope: !161, inlinedAt: !925)
!928 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !925)
!929 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !925)
!930 = !DILocation(line: 332, column: 51, scope: !49, inlinedAt: !859)
!931 = !DILocation(line: 332, column: 68, scope: !49, inlinedAt: !859)
!932 = !DILocation(line: 332, column: 91, scope: !49, inlinedAt: !859)
!933 = !DILocation(line: 333, column: 19, scope: !49, inlinedAt: !859)
!934 = !DILocation(line: 333, column: 5, scope: !49, inlinedAt: !859)
!935 = !DILocation(line: 335, column: 9, scope: !69, inlinedAt: !859)
!936 = !DILocation(line: 335, column: 9, scope: !49, inlinedAt: !859)
!937 = !DILocation(line: 338, column: 20, scope: !72, inlinedAt: !859)
!938 = !DILocation(line: 341, column: 27, scope: !86, inlinedAt: !859)
!939 = !DILocation(line: 341, column: 20, scope: !72, inlinedAt: !859)
!940 = !DILocation(line: 364, column: 1, scope: !49, inlinedAt: !859)
!941 = !DILocation(line: 776, column: 15, scope: !835)
!942 = !DILocation(line: 775, column: 12, scope: !835)
!943 = !DILocation(line: 776, column: 12, scope: !835)
!944 = !DILocation(line: 781, column: 9, scope: !835)
!945 = !DILocation(line: 782, column: 17, scope: !835)
!946 = !DILocation(line: 782, column: 22, scope: !835)
!947 = !DILocation(line: 0, scope: !835)
!948 = !DILocation(line: 782, column: 16, scope: !835)
!949 = !DILocation(line: 464, column: 39, scope: !183, inlinedAt: !950)
!950 = distinct !DILocation(line: 782, column: 36, scope: !835)
!951 = !DILocation(line: 464, column: 55, scope: !183, inlinedAt: !950)
!952 = !DILocation(line: 466, column: 5, scope: !191, inlinedAt: !950)
!953 = !DILocation(line: 466, column: 5, scope: !194, inlinedAt: !950)
!954 = !DILocation(line: 465, column: 18, scope: !183, inlinedAt: !950)
!955 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !956)
!956 = distinct !DILocation(line: 467, column: 12, scope: !183, inlinedAt: !950)
!957 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !956)
!958 = !DILocation(line: 0, scope: !161, inlinedAt: !956)
!959 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !956)
!960 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !956)
!961 = !DILocation(line: 467, column: 47, scope: !183, inlinedAt: !950)
!962 = !DILocation(line: 467, column: 5, scope: !183, inlinedAt: !950)
!963 = !DILocation(line: 783, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !835, file: !1, line: 783, column: 9)
!965 = !DILocation(line: 783, column: 34, scope: !964)
!966 = !DILocation(line: 783, column: 24, scope: !964)
!967 = !DILocation(line: 789, column: 15, scope: !835)
!968 = !DILocation(line: 746, column: 12, scope: !835)
!969 = !DILocation(line: 790, column: 41, scope: !835)
!970 = !DILocation(line: 790, column: 27, scope: !835)
!971 = !DILocation(line: 589, column: 45, scope: !530, inlinedAt: !972)
!972 = distinct !DILocation(line: 790, column: 10, scope: !835)
!973 = !DILocation(line: 589, column: 62, scope: !530, inlinedAt: !972)
!974 = !DILocation(line: 590, column: 22, scope: !530, inlinedAt: !972)
!975 = !DILocation(line: 590, column: 10, scope: !530, inlinedAt: !972)
!976 = !DILocation(line: 591, column: 5, scope: !530, inlinedAt: !972)
!977 = !DILocation(line: 591, column: 23, scope: !530, inlinedAt: !972)
!978 = !DILocation(line: 592, column: 11, scope: !530, inlinedAt: !972)
!979 = !DILocation(line: 592, column: 5, scope: !530, inlinedAt: !972)
!980 = !DILocation(line: 592, column: 15, scope: !530, inlinedAt: !972)
!981 = !DILocation(line: 593, column: 5, scope: !530, inlinedAt: !972)
!982 = !DILocation(line: 791, column: 11, scope: !835)
!983 = !DILocation(line: 794, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !835, file: !1, line: 794, column: 9)
!985 = !DILocation(line: 794, column: 14, scope: !984)
!986 = !DILocation(line: 794, column: 9, scope: !835)
!987 = !DILocation(line: 796, column: 18, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !1, line: 794, column: 26)
!989 = !DILocation(line: 796, column: 27, scope: !988)
!990 = !DILocation(line: 796, column: 50, scope: !988)
!991 = !DILocation(line: 796, column: 52, scope: !988)
!992 = !DILocation(line: 796, column: 9, scope: !988)
!993 = !DILocation(line: 799, column: 13, scope: !988)
!994 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !995)
!995 = distinct !DILocation(line: 800, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !1, line: 799, column: 13)
!997 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !995)
!998 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !995)
!999 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !995)
!1000 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !995)
!1001 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !995)
!1002 = !DILocation(line: 800, column: 13, scope: !996)
!1003 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 802, column: 13, scope: !996)
!1005 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !1004)
!1006 = !DILocation(line: 0, scope: !161, inlinedAt: !1004)
!1007 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !1004)
!1008 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !1004)
!1009 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !1004)
!1010 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !1004)
!1011 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !1004)
!1013 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !1012)
!1014 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !1012)
!1015 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !1012)
!1016 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !1012)
!1017 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !1012)
!1018 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !1004)
!1019 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !1004)
!1020 = !DILocation(line: 806, column: 13, scope: !988)
!1021 = !DILocation(line: 805, column: 33, scope: !988)
!1022 = !DILocation(line: 752, column: 13, scope: !835)
!1023 = !DILocation(line: 811, column: 9, scope: !988)
!1024 = !DILocation(line: 812, column: 27, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !988, file: !1, line: 812, column: 13)
!1026 = !DILocation(line: 812, column: 22, scope: !1025)
!1027 = !DILocation(line: 812, column: 21, scope: !1025)
!1028 = !DILocation(line: 812, column: 43, scope: !1025)
!1029 = !DILocation(line: 812, column: 38, scope: !1025)
!1030 = !DILocation(line: 812, column: 37, scope: !1025)
!1031 = !DILocation(line: 812, column: 13, scope: !1025)
!1032 = !DILocation(line: 812, column: 48, scope: !1025)
!1033 = !DILocation(line: 812, column: 13, scope: !988)
!1034 = !DILocation(line: 814, column: 17, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 812, column: 60)
!1036 = !DILocation(line: 813, column: 37, scope: !1035)
!1037 = !DILocation(line: 815, column: 9, scope: !1035)
!1038 = !DILocation(line: 818, column: 35, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !984, file: !1, line: 816, column: 12)
!1040 = !DILocation(line: 818, column: 9, scope: !1039)
!1041 = !DILocation(line: 818, column: 33, scope: !1039)
!1042 = !DILocation(line: 823, column: 18, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !835, file: !1, line: 823, column: 9)
!1044 = !DILocation(line: 823, column: 9, scope: !835)
!1045 = !DILocation(line: 830, column: 36, scope: !835)
!1046 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 830, column: 10, scope: !835)
!1048 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !1047)
!1049 = !DILocation(line: 0, scope: !161, inlinedAt: !1047)
!1050 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !1047)
!1051 = !DILocation(line: 825, column: 41, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 823, column: 24)
!1053 = !DILocation(line: 825, column: 14, scope: !1052)
!1054 = !DILocation(line: 826, column: 15, scope: !1052)
!1055 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !1047)
!1056 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !1047)
!1057 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !1047)
!1058 = !DILocation(line: 410, column: 9, scope: !165, inlinedAt: !1047)
!1059 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !1047)
!1060 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !1047)
!1061 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !1047)
!1062 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !1047)
!1064 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !1063)
!1065 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !1063)
!1066 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !1063)
!1067 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !1063)
!1068 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !1063)
!1069 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !1047)
!1070 = !DILocation(line: 419, column: 1, scope: !150, inlinedAt: !1047)
!1071 = !DILocation(line: 830, column: 7, scope: !835)
!1072 = !DILocation(line: 332, column: 51, scope: !49, inlinedAt: !857)
!1073 = !DILocation(line: 332, column: 68, scope: !49, inlinedAt: !857)
!1074 = !DILocation(line: 332, column: 91, scope: !49, inlinedAt: !857)
!1075 = !DILocation(line: 333, column: 19, scope: !49, inlinedAt: !857)
!1076 = !DILocation(line: 333, column: 5, scope: !49, inlinedAt: !857)
!1077 = !DILocation(line: 335, column: 9, scope: !49, inlinedAt: !857)
!1078 = !DILocation(line: 338, column: 13, scope: !73, inlinedAt: !857)
!1079 = !DILocation(line: 340, column: 22, scope: !77, inlinedAt: !857)
!1080 = !DILocation(line: 340, column: 20, scope: !77, inlinedAt: !857)
!1081 = !DILocation(line: 341, column: 9, scope: !77, inlinedAt: !857)
!1082 = !DILocation(line: 341, column: 20, scope: !72, inlinedAt: !857)
!1083 = !DILocation(line: 344, column: 45, scope: !92, inlinedAt: !857)
!1084 = !DILocation(line: 344, column: 22, scope: !92, inlinedAt: !857)
!1085 = !DILocation(line: 344, column: 20, scope: !92, inlinedAt: !857)
!1086 = !DILocation(line: 345, column: 22, scope: !92, inlinedAt: !857)
!1087 = !DILocation(line: 345, column: 13, scope: !92, inlinedAt: !857)
!1088 = !DILocation(line: 345, column: 20, scope: !92, inlinedAt: !857)
!1089 = !DILocation(line: 346, column: 9, scope: !92, inlinedAt: !857)
!1090 = !DILocation(line: 349, column: 20, scope: !89, inlinedAt: !857)
!1091 = !DILocation(line: 350, column: 30, scope: !89, inlinedAt: !857)
!1092 = !DILocation(line: 350, column: 22, scope: !89, inlinedAt: !857)
!1093 = !DILocation(line: 350, column: 13, scope: !89, inlinedAt: !857)
!1094 = !DILocation(line: 350, column: 20, scope: !89, inlinedAt: !857)
!1095 = !DILocation(line: 351, column: 30, scope: !89, inlinedAt: !857)
!1096 = !DILocation(line: 351, column: 22, scope: !89, inlinedAt: !857)
!1097 = !DILocation(line: 351, column: 13, scope: !89, inlinedAt: !857)
!1098 = !DILocation(line: 351, column: 20, scope: !89, inlinedAt: !857)
!1099 = !DILocation(line: 352, column: 30, scope: !89, inlinedAt: !857)
!1100 = !DILocation(line: 352, column: 22, scope: !89, inlinedAt: !857)
!1101 = !DILocation(line: 352, column: 13, scope: !89, inlinedAt: !857)
!1102 = !DILocation(line: 352, column: 20, scope: !89, inlinedAt: !857)
!1103 = !DILocation(line: 353, column: 22, scope: !89, inlinedAt: !857)
!1104 = !DILocation(line: 353, column: 13, scope: !89, inlinedAt: !857)
!1105 = !DILocation(line: 353, column: 20, scope: !89, inlinedAt: !857)
!1106 = !DILocation(line: 358, column: 16, scope: !119, inlinedAt: !857)
!1107 = !DILocation(line: 362, column: 5, scope: !49, inlinedAt: !857)
!1108 = !DILocation(line: 364, column: 1, scope: !49, inlinedAt: !857)
!1109 = !DILocation(line: 831, column: 7, scope: !835)
!1110 = !DILocation(line: 832, column: 9, scope: !835)
!1111 = !DILocation(line: 833, column: 20, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 832, column: 31)
!1113 = distinct !DILexicalBlock(scope: !835, file: !1, line: 832, column: 9)
!1114 = !DILocation(line: 833, column: 9, scope: !1112)
!1115 = !DILocation(line: 834, column: 5, scope: !1112)
!1116 = !DILocation(line: 835, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 834, column: 12)
!1118 = !DILocation(line: 837, column: 5, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 837, column: 5)
!1120 = distinct !DILexicalBlock(scope: !835, file: !1, line: 837, column: 5)
!1121 = !DILocation(line: 837, column: 5, scope: !1120)
!1122 = !DILocation(line: 839, column: 1, scope: !835)
!1123 = !DILocation(line: 838, column: 5, scope: !835)
!1124 = distinct !DISubprogram(name: "ziplistMerge", scope: !1, file: !1, line: 856, type: !1125, isLocal: false, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1128)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!52, !1127, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1129 = !DILocalVariable(name: "first", arg: 1, scope: !1124, file: !1, line: 856, type: !1127)
!1130 = !DILocalVariable(name: "second", arg: 2, scope: !1124, file: !1, line: 856, type: !1127)
!1131 = !DILocalVariable(name: "first_bytes", scope: !1124, file: !1, line: 865, type: !553)
!1132 = !DILocalVariable(name: "first_len", scope: !1124, file: !1, line: 866, type: !553)
!1133 = !DILocalVariable(name: "second_bytes", scope: !1124, file: !1, line: 868, type: !553)
!1134 = !DILocalVariable(name: "second_len", scope: !1124, file: !1, line: 869, type: !553)
!1135 = !DILocalVariable(name: "append", scope: !1124, file: !1, line: 871, type: !132)
!1136 = !DILocalVariable(name: "source", scope: !1124, file: !1, line: 872, type: !52)
!1137 = !DILocalVariable(name: "target", scope: !1124, file: !1, line: 872, type: !52)
!1138 = !DILocalVariable(name: "target_bytes", scope: !1124, file: !1, line: 873, type: !553)
!1139 = !DILocalVariable(name: "source_bytes", scope: !1124, file: !1, line: 873, type: !553)
!1140 = !DILocalVariable(name: "zlbytes", scope: !1124, file: !1, line: 894, type: !553)
!1141 = !DILocalVariable(name: "zllength", scope: !1124, file: !1, line: 896, type: !553)
!1142 = !DILocalVariable(name: "first_offset", scope: !1124, file: !1, line: 902, type: !553)
!1143 = !DILocalVariable(name: "second_offset", scope: !1124, file: !1, line: 903, type: !553)
!1144 = !DILocation(line: 856, column: 45, scope: !1124)
!1145 = !DILocation(line: 856, column: 68, scope: !1124)
!1146 = !DILocation(line: 858, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 858, column: 9)
!1148 = !DILocation(line: 858, column: 23, scope: !1147)
!1149 = !DILocation(line: 858, column: 26, scope: !1147)
!1150 = !{!457, !457, i64 0}
!1151 = !DILocation(line: 858, column: 33, scope: !1147)
!1152 = !DILocation(line: 858, column: 51, scope: !1147)
!1153 = !DILocation(line: 858, column: 41, scope: !1147)
!1154 = !DILocation(line: 858, column: 62, scope: !1147)
!1155 = !DILocation(line: 858, column: 70, scope: !1147)
!1156 = !DILocation(line: 862, column: 16, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 862, column: 9)
!1158 = !DILocation(line: 858, column: 9, scope: !1124)
!1159 = !DILocation(line: 865, column: 26, scope: !1124)
!1160 = !DILocation(line: 865, column: 12, scope: !1124)
!1161 = !DILocation(line: 866, column: 24, scope: !1124)
!1162 = !DILocation(line: 866, column: 12, scope: !1124)
!1163 = !DILocation(line: 868, column: 27, scope: !1124)
!1164 = !DILocation(line: 868, column: 12, scope: !1124)
!1165 = !DILocation(line: 869, column: 25, scope: !1124)
!1166 = !DILocation(line: 869, column: 12, scope: !1124)
!1167 = !DILocation(line: 877, column: 19, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 877, column: 9)
!1169 = !DILocation(line: 872, column: 20, scope: !1124)
!1170 = !DILocation(line: 873, column: 26, scope: !1124)
!1171 = !DILocation(line: 873, column: 12, scope: !1124)
!1172 = !DILocation(line: 872, column: 29, scope: !1124)
!1173 = !DILocation(line: 894, column: 34, scope: !1124)
!1174 = !DILocation(line: 895, column: 42, scope: !1124)
!1175 = !DILocation(line: 894, column: 12, scope: !1124)
!1176 = !DILocation(line: 896, column: 33, scope: !1124)
!1177 = !DILocation(line: 896, column: 12, scope: !1124)
!1178 = !DILocation(line: 899, column: 25, scope: !1124)
!1179 = !DILocation(line: 899, column: 16, scope: !1124)
!1180 = !DILocation(line: 902, column: 27, scope: !1124)
!1181 = !DILocation(line: 902, column: 12, scope: !1124)
!1182 = !DILocation(line: 903, column: 28, scope: !1124)
!1183 = !DILocation(line: 906, column: 14, scope: !1124)
!1184 = !DILocation(line: 907, column: 9, scope: !1124)
!1185 = !DILocation(line: 911, column: 23, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 907, column: 17)
!1187 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 907, column: 9)
!1188 = !DILocation(line: 911, column: 38, scope: !1186)
!1189 = !DILocation(line: 912, column: 23, scope: !1186)
!1190 = !DILocation(line: 913, column: 29, scope: !1186)
!1191 = !DILocation(line: 911, column: 9, scope: !1186)
!1192 = !DILocation(line: 914, column: 5, scope: !1186)
!1193 = !DILocation(line: 919, column: 24, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 914, column: 12)
!1195 = !DILocation(line: 919, column: 39, scope: !1194)
!1196 = !DILocation(line: 920, column: 24, scope: !1194)
!1197 = !DILocation(line: 921, column: 30, scope: !1194)
!1198 = !DILocation(line: 919, column: 9, scope: !1194)
!1199 = !DILocation(line: 922, column: 45, scope: !1194)
!1200 = !DILocation(line: 922, column: 9, scope: !1194)
!1201 = !DILocation(line: 926, column: 29, scope: !1124)
!1202 = !DILocation(line: 926, column: 5, scope: !1124)
!1203 = !DILocation(line: 926, column: 27, scope: !1124)
!1204 = !DILocation(line: 927, column: 30, scope: !1124)
!1205 = !DILocation(line: 927, column: 5, scope: !1124)
!1206 = !DILocation(line: 927, column: 28, scope: !1124)
!1207 = !DILocation(line: 933, column: 35, scope: !1124)
!1208 = !DILocation(line: 933, column: 5, scope: !1124)
!1209 = !DILocation(line: 933, column: 33, scope: !1124)
!1210 = !DILocation(line: 941, column: 51, scope: !1124)
!1211 = !DILocation(line: 941, column: 14, scope: !1124)
!1212 = !DILocation(line: 944, column: 9, scope: !1124)
!1213 = !DILocation(line: 945, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 944, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 944, column: 9)
!1216 = !DILocation(line: 945, column: 9, scope: !1214)
!1217 = !DILocation(line: 946, column: 17, scope: !1214)
!1218 = !DILocation(line: 947, column: 16, scope: !1214)
!1219 = !DILocation(line: 948, column: 5, scope: !1214)
!1220 = !DILocation(line: 949, column: 15, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 948, column: 12)
!1222 = !DILocation(line: 949, column: 9, scope: !1221)
!1223 = !DILocation(line: 950, column: 16, scope: !1221)
!1224 = !DILocation(line: 951, column: 17, scope: !1221)
!1225 = !DILocation(line: 0, scope: !1124)
!1226 = !DILocation(line: 954, column: 1, scope: !1124)
!1227 = distinct !DISubprogram(name: "ziplistPush", scope: !1, file: !1, line: 956, type: !1228, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!52, !52, !52, !20, !132}
!1230 = !{!1231, !1232, !1233, !1234, !1235}
!1231 = !DILocalVariable(name: "zl", arg: 1, scope: !1227, file: !1, line: 956, type: !52)
!1232 = !DILocalVariable(name: "s", arg: 2, scope: !1227, file: !1, line: 956, type: !52)
!1233 = !DILocalVariable(name: "slen", arg: 3, scope: !1227, file: !1, line: 956, type: !20)
!1234 = !DILocalVariable(name: "where", arg: 4, scope: !1227, file: !1, line: 956, type: !132)
!1235 = !DILocalVariable(name: "p", scope: !1227, file: !1, line: 957, type: !52)
!1236 = !DILocation(line: 956, column: 43, scope: !1227)
!1237 = !DILocation(line: 956, column: 62, scope: !1227)
!1238 = !DILocation(line: 956, column: 78, scope: !1227)
!1239 = !DILocation(line: 956, column: 88, scope: !1227)
!1240 = !DILocation(line: 958, column: 16, scope: !1227)
!1241 = !DILocation(line: 958, column: 9, scope: !1227)
!1242 = !DILocation(line: 958, column: 35, scope: !1227)
!1243 = !DILocation(line: 958, column: 60, scope: !1227)
!1244 = !DILocation(line: 957, column: 20, scope: !1227)
!1245 = !DILocation(line: 959, column: 12, scope: !1227)
!1246 = !DILocation(line: 959, column: 5, scope: !1227)
!1247 = distinct !DISubprogram(name: "ziplistIndex", scope: !1, file: !1, line: 965, type: !1248, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!52, !52, !132}
!1250 = !{!1251, !1252, !1253, !1254, !1255}
!1251 = !DILocalVariable(name: "zl", arg: 1, scope: !1247, file: !1, line: 965, type: !52)
!1252 = !DILocalVariable(name: "index", arg: 2, scope: !1247, file: !1, line: 965, type: !132)
!1253 = !DILocalVariable(name: "p", scope: !1247, file: !1, line: 966, type: !52)
!1254 = !DILocalVariable(name: "prevlensize", scope: !1247, file: !1, line: 967, type: !20)
!1255 = !DILocalVariable(name: "prevlen", scope: !1247, file: !1, line: 967, type: !20)
!1256 = !DILocation(line: 965, column: 44, scope: !1247)
!1257 = !DILocation(line: 965, column: 52, scope: !1247)
!1258 = !DILocation(line: 967, column: 5, scope: !1247)
!1259 = !DILocation(line: 967, column: 31, scope: !1247)
!1260 = !DILocation(line: 968, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 968, column: 9)
!1262 = !DILocation(line: 968, column: 9, scope: !1247)
!1263 = !DILocation(line: 969, column: 25, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 968, column: 20)
!1265 = !DILocation(line: 970, column: 13, scope: !1264)
!1266 = !DILocation(line: 966, column: 20, scope: !1247)
!1267 = !DILocation(line: 971, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 971, column: 13)
!1269 = !DILocation(line: 971, column: 13, scope: !1264)
!1270 = !DILocation(line: 967, column: 18, scope: !1247)
!1271 = !DILocation(line: 972, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 972, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 972, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 972, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 971, column: 30)
!1276 = !DILocation(line: 972, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 972, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 972, column: 13)
!1279 = !DILocation(line: 973, column: 20, scope: !1275)
!1280 = !DILocation(line: 973, column: 28, scope: !1275)
!1281 = !DILocation(line: 973, column: 32, scope: !1275)
!1282 = !DILocation(line: 973, column: 40, scope: !1275)
!1283 = !DILocation(line: 973, column: 13, scope: !1275)
!1284 = !DILocation(line: 974, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 973, column: 44)
!1286 = !DILocation(line: 975, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 975, column: 17)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 975, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 975, column: 17)
!1290 = !DILocation(line: 975, column: 17, scope: !1289)
!1291 = !DILocation(line: 975, column: 17, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 975, column: 17)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 975, column: 17)
!1294 = !DILocation(line: 975, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 975, column: 17)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 975, column: 17)
!1297 = distinct !{!1297, !1283, !1298}
!1298 = !DILocation(line: 976, column: 13, scope: !1275)
!1299 = !DILocation(line: 979, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 978, column: 12)
!1301 = !DILocation(line: 980, column: 16, scope: !1300)
!1302 = !DILocation(line: 980, column: 21, scope: !1300)
!1303 = !DILocation(line: 980, column: 32, scope: !1300)
!1304 = !DILocation(line: 980, column: 9, scope: !1300)
!1305 = !DILocation(line: 980, column: 40, scope: !1300)
!1306 = !DILocation(line: 981, column: 18, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 980, column: 44)
!1308 = !DILocation(line: 981, column: 15, scope: !1307)
!1309 = distinct !{!1309, !1304, !1310}
!1310 = !DILocation(line: 982, column: 9, scope: !1300)
!1311 = !DILocation(line: 0, scope: !1300)
!1312 = !DILocation(line: 984, column: 13, scope: !1247)
!1313 = !DILocation(line: 984, column: 18, scope: !1247)
!1314 = !DILocation(line: 984, column: 38, scope: !1247)
!1315 = !DILocation(line: 984, column: 29, scope: !1247)
!1316 = !DILocation(line: 985, column: 1, scope: !1247)
!1317 = !DILocation(line: 984, column: 5, scope: !1247)
!1318 = distinct !DISubprogram(name: "ziplistNext", scope: !1, file: !1, line: 993, type: !547, isLocal: false, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1319)
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "zl", arg: 1, scope: !1318, file: !1, line: 993, type: !52)
!1321 = !DILocalVariable(name: "p", arg: 2, scope: !1318, file: !1, line: 993, type: !52)
!1322 = !DILocation(line: 993, column: 43, scope: !1318)
!1323 = !DILocation(line: 993, column: 62, scope: !1318)
!1324 = !DILocation(line: 999, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 999, column: 9)
!1326 = !DILocation(line: 999, column: 14, scope: !1325)
!1327 = !DILocation(line: 999, column: 9, scope: !1318)
!1328 = !DILocation(line: 1003, column: 10, scope: !1318)
!1329 = !DILocation(line: 1003, column: 7, scope: !1318)
!1330 = !DILocation(line: 1004, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 1004, column: 9)
!1332 = !DILocation(line: 1004, column: 14, scope: !1331)
!1333 = !DILocation(line: 1005, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 1004, column: 26)
!1335 = !DILocation(line: 0, scope: !1318)
!1336 = !DILocation(line: 1009, column: 1, scope: !1318)
!1337 = distinct !DISubprogram(name: "ziplistPrev", scope: !1, file: !1, line: 1012, type: !547, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "zl", arg: 1, scope: !1337, file: !1, line: 1012, type: !52)
!1340 = !DILocalVariable(name: "p", arg: 2, scope: !1337, file: !1, line: 1012, type: !52)
!1341 = !DILocalVariable(name: "prevlensize", scope: !1337, file: !1, line: 1013, type: !20)
!1342 = !DILocalVariable(name: "prevlen", scope: !1337, file: !1, line: 1013, type: !20)
!1343 = !DILocation(line: 1012, column: 43, scope: !1337)
!1344 = !DILocation(line: 1012, column: 62, scope: !1337)
!1345 = !DILocation(line: 1013, column: 5, scope: !1337)
!1346 = !DILocation(line: 1013, column: 31, scope: !1337)
!1347 = !DILocation(line: 1018, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 1018, column: 9)
!1349 = !DILocation(line: 1018, column: 14, scope: !1348)
!1350 = !DILocation(line: 1018, column: 9, scope: !1337)
!1351 = !DILocation(line: 1019, column: 13, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 1018, column: 26)
!1353 = !DILocation(line: 1020, column: 17, scope: !1352)
!1354 = !DILocation(line: 1020, column: 22, scope: !1352)
!1355 = !DILocation(line: 1020, column: 16, scope: !1352)
!1356 = !DILocation(line: 1020, column: 9, scope: !1352)
!1357 = !DILocation(line: 1021, column: 21, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 1021, column: 16)
!1359 = !DILocation(line: 1021, column: 18, scope: !1358)
!1360 = !DILocation(line: 1021, column: 16, scope: !1348)
!1361 = !DILocation(line: 1024, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 1024, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 1024, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 1024, column: 9)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 1023, column: 12)
!1366 = !DILocation(line: 1024, column: 9, scope: !1364)
!1367 = !DILocation(line: 1024, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 1024, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 1024, column: 9)
!1370 = !DILocation(line: 1024, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 1024, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 1024, column: 9)
!1373 = !DILocation(line: 1025, column: 9, scope: !1365)
!1374 = !DILocation(line: 1026, column: 17, scope: !1365)
!1375 = !DILocation(line: 1026, column: 9, scope: !1365)
!1376 = !DILocation(line: 0, scope: !1365)
!1377 = !DILocation(line: 1028, column: 1, scope: !1337)
!1378 = distinct !DISubprogram(name: "ziplistGet", scope: !1, file: !1, line: 1034, type: !1379, isLocal: false, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1382)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!20, !52, !1127, !1381, !262}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1382 = !{!1383, !1384, !1385, !1386, !1387}
!1383 = !DILocalVariable(name: "p", arg: 1, scope: !1378, file: !1, line: 1034, type: !52)
!1384 = !DILocalVariable(name: "sstr", arg: 2, scope: !1378, file: !1, line: 1034, type: !1127)
!1385 = !DILocalVariable(name: "slen", arg: 3, scope: !1378, file: !1, line: 1034, type: !1381)
!1386 = !DILocalVariable(name: "sval", arg: 4, scope: !1378, file: !1, line: 1034, type: !262)
!1387 = !DILocalVariable(name: "entry", scope: !1378, file: !1, line: 1035, type: !432)
!1388 = !DILocation(line: 1034, column: 40, scope: !1378)
!1389 = !DILocation(line: 1034, column: 59, scope: !1378)
!1390 = !DILocation(line: 1034, column: 79, scope: !1378)
!1391 = !DILocation(line: 1034, column: 96, scope: !1378)
!1392 = !DILocation(line: 1035, column: 5, scope: !1378)
!1393 = !DILocation(line: 1036, column: 11, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 1036, column: 9)
!1395 = !DILocation(line: 1036, column: 19, scope: !1394)
!1396 = !DILocation(line: 1036, column: 22, scope: !1394)
!1397 = !DILocation(line: 1036, column: 27, scope: !1394)
!1398 = !DILocation(line: 1036, column: 9, scope: !1378)
!1399 = !DILocation(line: 1037, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 1037, column: 9)
!1401 = !DILocation(line: 1037, column: 9, scope: !1378)
!1402 = !DILocation(line: 1037, column: 21, scope: !1400)
!1403 = !DILocation(line: 1037, column: 15, scope: !1400)
!1404 = !DILocation(line: 1035, column: 13, scope: !1378)
!1405 = !DILocation(line: 1039, column: 5, scope: !1378)
!1406 = !DILocation(line: 1040, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 1040, column: 9)
!1408 = !DILocation(line: 1040, column: 9, scope: !1378)
!1409 = !DILocation(line: 1041, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 1040, column: 37)
!1411 = !DILocation(line: 1042, column: 27, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 1041, column: 19)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 1041, column: 13)
!1414 = !DILocation(line: 1042, column: 19, scope: !1412)
!1415 = !DILocation(line: 1043, column: 29, scope: !1412)
!1416 = !DILocation(line: 1043, column: 22, scope: !1412)
!1417 = !DILocation(line: 1043, column: 19, scope: !1412)
!1418 = !DILocation(line: 1044, column: 9, scope: !1412)
!1419 = !DILocation(line: 1046, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 1046, column: 13)
!1421 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 1045, column: 12)
!1422 = !DILocation(line: 1046, column: 13, scope: !1421)
!1423 = !DILocation(line: 1047, column: 44, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 1046, column: 19)
!1425 = !DILocation(line: 1047, column: 37, scope: !1424)
!1426 = !DILocation(line: 1047, column: 21, scope: !1424)
!1427 = !DILocation(line: 1047, column: 19, scope: !1424)
!1428 = !DILocation(line: 1048, column: 9, scope: !1424)
!1429 = !DILocation(line: 0, scope: !1378)
!1430 = !DILocation(line: 1051, column: 1, scope: !1378)
!1431 = distinct !DISubprogram(name: "ziplistInsert", scope: !1, file: !1, line: 1054, type: !836, isLocal: false, isDefinition: true, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DILocalVariable(name: "zl", arg: 1, scope: !1431, file: !1, line: 1054, type: !52)
!1434 = !DILocalVariable(name: "p", arg: 2, scope: !1431, file: !1, line: 1054, type: !52)
!1435 = !DILocalVariable(name: "s", arg: 3, scope: !1431, file: !1, line: 1054, type: !52)
!1436 = !DILocalVariable(name: "slen", arg: 4, scope: !1431, file: !1, line: 1054, type: !20)
!1437 = !DILocation(line: 1054, column: 45, scope: !1431)
!1438 = !DILocation(line: 1054, column: 64, scope: !1431)
!1439 = !DILocation(line: 1054, column: 82, scope: !1431)
!1440 = !DILocation(line: 1054, column: 98, scope: !1431)
!1441 = !DILocation(line: 1055, column: 12, scope: !1431)
!1442 = !DILocation(line: 1055, column: 5, scope: !1431)
!1443 = distinct !DISubprogram(name: "ziplistDelete", scope: !1, file: !1, line: 1061, type: !1444, isLocal: false, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!52, !52, !1127}
!1446 = !{!1447, !1448, !1449}
!1447 = !DILocalVariable(name: "zl", arg: 1, scope: !1443, file: !1, line: 1061, type: !52)
!1448 = !DILocalVariable(name: "p", arg: 2, scope: !1443, file: !1, line: 1061, type: !1127)
!1449 = !DILocalVariable(name: "offset", scope: !1443, file: !1, line: 1062, type: !553)
!1450 = !DILocation(line: 1061, column: 45, scope: !1443)
!1451 = !DILocation(line: 1061, column: 65, scope: !1443)
!1452 = !DILocation(line: 1062, column: 21, scope: !1443)
!1453 = !DILocation(line: 1062, column: 23, scope: !1443)
!1454 = !DILocation(line: 1062, column: 12, scope: !1443)
!1455 = !DILocation(line: 1063, column: 10, scope: !1443)
!1456 = !DILocation(line: 1069, column: 12, scope: !1443)
!1457 = !DILocation(line: 1069, column: 8, scope: !1443)
!1458 = !DILocation(line: 1070, column: 5, scope: !1443)
!1459 = distinct !DISubprogram(name: "ziplistDeleteRange", scope: !1, file: !1, line: 1074, type: !1460, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!52, !52, !132, !20}
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "zl", arg: 1, scope: !1459, file: !1, line: 1074, type: !52)
!1464 = !DILocalVariable(name: "index", arg: 2, scope: !1459, file: !1, line: 1074, type: !132)
!1465 = !DILocalVariable(name: "num", arg: 3, scope: !1459, file: !1, line: 1074, type: !20)
!1466 = !DILocalVariable(name: "p", scope: !1459, file: !1, line: 1075, type: !52)
!1467 = !DILocation(line: 1074, column: 50, scope: !1459)
!1468 = !DILocation(line: 1074, column: 58, scope: !1459)
!1469 = !DILocation(line: 1074, column: 78, scope: !1459)
!1470 = !DILocation(line: 1075, column: 24, scope: !1459)
!1471 = !DILocation(line: 1075, column: 20, scope: !1459)
!1472 = !DILocation(line: 1076, column: 15, scope: !1459)
!1473 = !DILocation(line: 1076, column: 12, scope: !1459)
!1474 = !DILocation(line: 1076, column: 31, scope: !1459)
!1475 = !DILocation(line: 1076, column: 5, scope: !1459)
!1476 = distinct !DISubprogram(name: "ziplistCompare", scope: !1, file: !1, line: 1081, type: !1477, isLocal: false, isDefinition: true, scopeLine: 1081, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!20, !52, !52, !20}
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1480 = !DILocalVariable(name: "p", arg: 1, scope: !1476, file: !1, line: 1081, type: !52)
!1481 = !DILocalVariable(name: "sstr", arg: 2, scope: !1476, file: !1, line: 1081, type: !52)
!1482 = !DILocalVariable(name: "slen", arg: 3, scope: !1476, file: !1, line: 1081, type: !20)
!1483 = !DILocalVariable(name: "entry", scope: !1476, file: !1, line: 1082, type: !432)
!1484 = !DILocalVariable(name: "sencoding", scope: !1476, file: !1, line: 1083, type: !16)
!1485 = !DILocalVariable(name: "zval", scope: !1476, file: !1, line: 1084, type: !26)
!1486 = !DILocalVariable(name: "sval", scope: !1476, file: !1, line: 1084, type: !26)
!1487 = !DILocation(line: 1081, column: 44, scope: !1476)
!1488 = !DILocation(line: 1081, column: 62, scope: !1476)
!1489 = !DILocation(line: 1081, column: 81, scope: !1476)
!1490 = !DILocation(line: 1082, column: 5, scope: !1476)
!1491 = !DILocation(line: 1085, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 1085, column: 9)
!1493 = !DILocation(line: 1085, column: 14, scope: !1492)
!1494 = !DILocation(line: 1085, column: 9, scope: !1476)
!1495 = !DILocation(line: 1082, column: 13, scope: !1476)
!1496 = !DILocation(line: 1087, column: 5, scope: !1476)
!1497 = !DILocation(line: 1088, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 1088, column: 9)
!1499 = !DILocation(line: 1088, column: 9, scope: !1476)
!1500 = !DILocation(line: 1090, column: 19, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 1090, column: 13)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 1088, column: 37)
!1503 = !DILocation(line: 1090, column: 23, scope: !1501)
!1504 = !DILocation(line: 1090, column: 13, scope: !1502)
!1505 = !DILocation(line: 1091, column: 35, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 1090, column: 32)
!1507 = !DILocation(line: 1091, column: 28, scope: !1506)
!1508 = !DILocation(line: 1091, column: 51, scope: !1506)
!1509 = !DILocation(line: 1091, column: 20, scope: !1506)
!1510 = !DILocation(line: 1091, column: 57, scope: !1506)
!1511 = !DILocation(line: 1091, column: 13, scope: !1506)
!1512 = !DILocation(line: 480, column: 35, scope: !259, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 1098, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 1098, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 1095, column: 12)
!1516 = !DILocation(line: 480, column: 55, scope: !259, inlinedAt: !1513)
!1517 = !DILocation(line: 481, column: 5, scope: !259, inlinedAt: !1513)
!1518 = !DILocation(line: 483, column: 24, scope: !275, inlinedAt: !1513)
!1519 = !DILocation(line: 484, column: 32, scope: !277, inlinedAt: !1513)
!1520 = !DILocation(line: 481, column: 15, scope: !259, inlinedAt: !1513)
!1521 = !DILocation(line: 484, column: 9, scope: !277, inlinedAt: !1513)
!1522 = !DILocation(line: 484, column: 9, scope: !259, inlinedAt: !1513)
!1523 = !DILocation(line: 487, column: 13, scope: !282, inlinedAt: !1513)
!1524 = !DILocation(line: 504, column: 1, scope: !259, inlinedAt: !1513)
!1525 = !DILocation(line: 1099, column: 41, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 1098, column: 57)
!1527 = !DILocation(line: 1099, column: 34, scope: !1526)
!1528 = !DILocation(line: 1099, column: 58, scope: !1526)
!1529 = !DILocation(line: 1099, column: 18, scope: !1526)
!1530 = !DILocation(line: 1084, column: 15, scope: !1476)
!1531 = !DILocation(line: 1084, column: 21, scope: !1476)
!1532 = !DILocation(line: 1100, column: 23, scope: !1526)
!1533 = !DILocation(line: 1100, column: 11, scope: !1526)
!1534 = !DILocation(line: 0, scope: !1476)
!1535 = !DILocation(line: 1104, column: 1, scope: !1476)
!1536 = distinct !DISubprogram(name: "ziplistFind", scope: !1, file: !1, line: 1108, type: !1537, isLocal: false, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!52, !52, !52, !20, !20}
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1549, !1550, !1551, !1552, !1553}
!1540 = !DILocalVariable(name: "p", arg: 1, scope: !1536, file: !1, line: 1108, type: !52)
!1541 = !DILocalVariable(name: "vstr", arg: 2, scope: !1536, file: !1, line: 1108, type: !52)
!1542 = !DILocalVariable(name: "vlen", arg: 3, scope: !1536, file: !1, line: 1108, type: !20)
!1543 = !DILocalVariable(name: "skip", arg: 4, scope: !1536, file: !1, line: 1108, type: !20)
!1544 = !DILocalVariable(name: "skipcnt", scope: !1536, file: !1, line: 1109, type: !132)
!1545 = !DILocalVariable(name: "vencoding", scope: !1536, file: !1, line: 1110, type: !16)
!1546 = !DILocalVariable(name: "vll", scope: !1536, file: !1, line: 1111, type: !26)
!1547 = !DILocalVariable(name: "prevlensize", scope: !1548, file: !1, line: 1114, type: !20)
!1548 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 1113, column: 29)
!1549 = !DILocalVariable(name: "encoding", scope: !1548, file: !1, line: 1114, type: !20)
!1550 = !DILocalVariable(name: "lensize", scope: !1548, file: !1, line: 1114, type: !20)
!1551 = !DILocalVariable(name: "len", scope: !1548, file: !1, line: 1114, type: !20)
!1552 = !DILocalVariable(name: "q", scope: !1548, file: !1, line: 1115, type: !52)
!1553 = !DILocalVariable(name: "ll", scope: !1554, file: !1, line: 1146, type: !26)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 1145, column: 45)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 1145, column: 21)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 1127, column: 20)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 1123, column: 17)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 1121, column: 27)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !1, line: 1121, column: 13)
!1560 = !DILocation(line: 1108, column: 43, scope: !1536)
!1561 = !DILocation(line: 1108, column: 61, scope: !1536)
!1562 = !DILocation(line: 1108, column: 80, scope: !1536)
!1563 = !DILocation(line: 1108, column: 99, scope: !1536)
!1564 = !DILocation(line: 1109, column: 9, scope: !1536)
!1565 = !DILocation(line: 1110, column: 19, scope: !1536)
!1566 = !DILocation(line: 1111, column: 15, scope: !1536)
!1567 = !DILocation(line: 1113, column: 5, scope: !1536)
!1568 = !DILocation(line: 1113, column: 12, scope: !1536)
!1569 = !DILocation(line: 1114, column: 22, scope: !1548)
!1570 = !DILocation(line: 1118, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 1118, column: 9)
!1572 = distinct !DILexicalBlock(scope: !1548, file: !1, line: 1118, column: 9)
!1573 = !DILocation(line: 1114, column: 35, scope: !1548)
!1574 = !DILocation(line: 1118, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 1118, column: 9)
!1576 = !DILocation(line: 1118, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 1118, column: 9)
!1578 = !DILocation(line: 1118, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 1118, column: 9)
!1580 = !DILocation(line: 1118, column: 9, scope: !1572)
!1581 = !DILocation(line: 1114, column: 45, scope: !1548)
!1582 = !DILocation(line: 1118, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1118, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !1, line: 1118, column: 9)
!1585 = !DILocation(line: 1114, column: 54, scope: !1548)
!1586 = !DILocation(line: 1118, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 1118, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1118, column: 9)
!1589 = !DILocation(line: 1118, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 1118, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 1118, column: 9)
!1592 = !DILocation(line: 1118, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 1118, column: 9)
!1594 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 1118, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 1118, column: 9)
!1597 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !1595)
!1598 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !1595)
!1599 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !1595)
!1600 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !1595)
!1601 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !1595)
!1602 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !1595)
!1603 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !1595)
!1604 = !DILocation(line: 0, scope: !40, inlinedAt: !1595)
!1605 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !1595)
!1606 = !DILocation(line: 1119, column: 29, scope: !1548)
!1607 = !DILocation(line: 1115, column: 24, scope: !1548)
!1608 = !DILocation(line: 1121, column: 21, scope: !1559)
!1609 = !DILocation(line: 1121, column: 13, scope: !1548)
!1610 = !DILocation(line: 1123, column: 17, scope: !1558)
!1611 = !DILocation(line: 1124, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 1124, column: 21)
!1613 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 1123, column: 39)
!1614 = !DILocation(line: 1124, column: 33, scope: !1612)
!1615 = !DILocation(line: 1124, column: 36, scope: !1612)
!1616 = !DILocation(line: 1124, column: 58, scope: !1612)
!1617 = !DILocation(line: 1124, column: 21, scope: !1613)
!1618 = !DILocation(line: 1131, column: 21, scope: !1556)
!1619 = !DILocation(line: 480, column: 35, scope: !259, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 1132, column: 26, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 1132, column: 25)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 1131, column: 37)
!1623 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 1131, column: 21)
!1624 = !DILocation(line: 480, column: 55, scope: !259, inlinedAt: !1620)
!1625 = !DILocation(line: 481, column: 5, scope: !259, inlinedAt: !1620)
!1626 = !DILocation(line: 483, column: 24, scope: !275, inlinedAt: !1620)
!1627 = !DILocation(line: 481, column: 15, scope: !259, inlinedAt: !1620)
!1628 = !DILocation(line: 484, column: 9, scope: !277, inlinedAt: !1620)
!1629 = !DILocation(line: 484, column: 9, scope: !259, inlinedAt: !1620)
!1630 = !DILocation(line: 487, column: 13, scope: !282, inlinedAt: !1620)
!1631 = !DILocation(line: 487, column: 24, scope: !282, inlinedAt: !1620)
!1632 = !DILocation(line: 488, column: 25, scope: !288, inlinedAt: !1620)
!1633 = !DILocation(line: 489, column: 9, scope: !288, inlinedAt: !1620)
!1634 = !DILocation(line: 489, column: 38, scope: !291, inlinedAt: !1620)
!1635 = !DILocation(line: 491, column: 39, scope: !293, inlinedAt: !1620)
!1636 = !DILocation(line: 493, column: 39, scope: !295, inlinedAt: !1620)
!1637 = !DILocation(line: 495, column: 39, scope: !297, inlinedAt: !1620)
!1638 = !DILocation(line: 504, column: 1, scope: !259, inlinedAt: !1620)
!1639 = !DILocation(line: 1145, column: 21, scope: !1556)
!1640 = !DILocation(line: 1146, column: 36, scope: !1554)
!1641 = !DILocation(line: 1146, column: 31, scope: !1554)
!1642 = !DILocation(line: 1147, column: 28, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 1147, column: 25)
!1644 = !DILocation(line: 1157, column: 20, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 1155, column: 16)
!1646 = !DILocation(line: 0, scope: !1536)
!1647 = !DILocation(line: 0, scope: !1645)
!1648 = !DILocation(line: 1161, column: 15, scope: !1548)
!1649 = !DILocation(line: 1165, column: 1, scope: !1536)
!1650 = distinct !DISubprogram(name: "ziplistLen", scope: !1, file: !1, line: 1168, type: !205, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DILocalVariable(name: "zl", arg: 1, scope: !1650, file: !1, line: 1168, type: !52)
!1653 = !DILocalVariable(name: "len", scope: !1650, file: !1, line: 1169, type: !20)
!1654 = !DILocalVariable(name: "p", scope: !1655, file: !1, line: 1173, type: !52)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 1172, column: 12)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !1, line: 1170, column: 9)
!1657 = !DILocation(line: 1168, column: 40, scope: !1650)
!1658 = !DILocation(line: 1169, column: 18, scope: !1650)
!1659 = !DILocation(line: 1170, column: 9, scope: !1656)
!1660 = !DILocation(line: 1170, column: 42, scope: !1656)
!1661 = !DILocation(line: 1170, column: 9, scope: !1650)
!1662 = !DILocation(line: 1172, column: 5, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 1170, column: 56)
!1664 = !DILocation(line: 1173, column: 30, scope: !1655)
!1665 = !DILocation(line: 1173, column: 24, scope: !1655)
!1666 = !DILocation(line: 1174, column: 16, scope: !1655)
!1667 = !DILocation(line: 1174, column: 19, scope: !1655)
!1668 = !DILocation(line: 1174, column: 9, scope: !1655)
!1669 = !DILocation(line: 1175, column: 18, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 1174, column: 31)
!1671 = !DILocation(line: 1175, column: 15, scope: !1670)
!1672 = !DILocation(line: 1176, column: 16, scope: !1670)
!1673 = distinct !{!1673, !1668, !1674}
!1674 = !DILocation(line: 1177, column: 9, scope: !1655)
!1675 = !DILocation(line: 1180, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 1180, column: 13)
!1677 = !DILocation(line: 1180, column: 13, scope: !1655)
!1678 = !DILocation(line: 1180, column: 52, scope: !1676)
!1679 = !DILocation(line: 1180, column: 50, scope: !1676)
!1680 = !DILocation(line: 1180, column: 31, scope: !1676)
!1681 = !DILocation(line: 0, scope: !1650)
!1682 = !DILocation(line: 1182, column: 5, scope: !1650)
!1683 = distinct !DISubprogram(name: "ziplistBlobLen", scope: !1, file: !1, line: 1186, type: !1684, isLocal: false, isDefinition: true, scopeLine: 1186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!553, !52}
!1686 = !{!1687}
!1687 = !DILocalVariable(name: "zl", arg: 1, scope: !1683, file: !1, line: 1186, type: !52)
!1688 = !DILocation(line: 1186, column: 38, scope: !1683)
!1689 = !DILocation(line: 1187, column: 12, scope: !1683)
!1690 = !DILocation(line: 1187, column: 5, scope: !1683)
!1691 = distinct !DISubprogram(name: "ziplistRepr", scope: !1, file: !1, line: 1190, type: !1692, isLocal: false, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !52}
!1694 = !{!1695, !1696, !1697, !1698, !1699}
!1695 = !DILocalVariable(name: "zl", arg: 1, scope: !1691, file: !1, line: 1190, type: !52)
!1696 = !DILocalVariable(name: "p", scope: !1691, file: !1, line: 1191, type: !52)
!1697 = !DILocalVariable(name: "index", scope: !1691, file: !1, line: 1192, type: !132)
!1698 = !DILocalVariable(name: "entry", scope: !1691, file: !1, line: 1193, type: !432)
!1699 = !DILocalVariable(name: "i", scope: !1700, file: !1, line: 1224, type: !20)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 1224, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 1203, column: 26)
!1702 = !DILocation(line: 1190, column: 33, scope: !1691)
!1703 = !DILocation(line: 1192, column: 9, scope: !1691)
!1704 = !DILocation(line: 1193, column: 5, scope: !1691)
!1705 = !DILocation(line: 1199, column: 9, scope: !1691)
!1706 = !DILocation(line: 1200, column: 9, scope: !1691)
!1707 = !DILocation(line: 1201, column: 9, scope: !1691)
!1708 = !DILocation(line: 1195, column: 5, scope: !1691)
!1709 = !DILocation(line: 1202, column: 9, scope: !1691)
!1710 = !DILocation(line: 1191, column: 20, scope: !1691)
!1711 = !DILocation(line: 1203, column: 11, scope: !1691)
!1712 = !DILocation(line: 1203, column: 14, scope: !1691)
!1713 = !DILocation(line: 1203, column: 5, scope: !1691)
!1714 = !DILocation(line: 1193, column: 13, scope: !1691)
!1715 = !DILocation(line: 1204, column: 9, scope: !1701)
!1716 = !DILocation(line: 1215, column: 13, scope: !1701)
!1717 = !DILocation(line: 1217, column: 31, scope: !1701)
!1718 = !DILocation(line: 1218, column: 19, scope: !1701)
!1719 = !DILocation(line: 1218, column: 36, scope: !1701)
!1720 = !DILocation(line: 1218, column: 29, scope: !1701)
!1721 = !DILocation(line: 1220, column: 19, scope: !1701)
!1722 = !DILocation(line: 1221, column: 19, scope: !1701)
!1723 = !DILocation(line: 1205, column: 9, scope: !1701)
!1724 = !DILocation(line: 1223, column: 9, scope: !1701)
!1725 = !DILocation(line: 1224, column: 27, scope: !1700)
!1726 = !DILocation(line: 1224, column: 44, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 1224, column: 9)
!1728 = !DILocation(line: 1224, column: 61, scope: !1727)
!1729 = !DILocation(line: 1224, column: 36, scope: !1727)
!1730 = !DILocation(line: 1224, column: 9, scope: !1700)
!1731 = !DILocation(line: 1227, column: 9, scope: !1701)
!1732 = !DILocation(line: 1228, column: 20, scope: !1701)
!1733 = !DILocation(line: 1228, column: 11, scope: !1701)
!1734 = !DILocation(line: 1229, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 1229, column: 13)
!1736 = !DILocation(line: 1229, column: 13, scope: !1701)
!1737 = !DILocation(line: 1225, column: 28, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 1224, column: 71)
!1739 = !DILocation(line: 1225, column: 13, scope: !1738)
!1740 = !DILocation(line: 1224, column: 67, scope: !1727)
!1741 = !DILocation(line: 1224, column: 54, scope: !1727)
!1742 = distinct !{!1742, !1730, !1743}
!1743 = !DILocation(line: 1226, column: 9, scope: !1700)
!1744 = !DILocation(line: 1230, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 1229, column: 41)
!1746 = !DILocation(line: 1231, column: 23, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 1231, column: 17)
!1748 = !DILocation(line: 1231, column: 27, scope: !1747)
!1749 = !DILocation(line: 1231, column: 17, scope: !1745)
!1750 = !DILocation(line: 1232, column: 35, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 1232, column: 21)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 1231, column: 33)
!1753 = !{!1754, !457, i64 16}
!1754 = !{!"_reent", !139, i64 0, !457, i64 8, !457, i64 16, !457, i64 24, !139, i64 32, !82, i64 36, !139, i64 64, !457, i64 72, !139, i64 80, !457, i64 88, !457, i64 96, !139, i64 104, !457, i64 112, !457, i64 120, !139, i64 128, !457, i64 136, !82, i64 144, !457, i64 504, !1755, i64 512, !457, i64 1304, !1757, i64 1312, !82, i64 1336}
!1755 = !{!"_atexit", !457, i64 0, !139, i64 8, !82, i64 16, !1756, i64 272}
!1756 = !{!"_on_exit_args", !82, i64 0, !82, i64 256, !139, i64 512, !139, i64 516}
!1757 = !{!"_glue", !457, i64 0, !139, i64 8, !457, i64 16}
!1758 = !DILocation(line: 1232, column: 21, scope: !1751)
!1759 = !DILocation(line: 1232, column: 43, scope: !1751)
!1760 = !DILocation(line: 1232, column: 21, scope: !1752)
!1761 = !DILocation(line: 1232, column: 49, scope: !1751)
!1762 = !DILocation(line: 1233, column: 17, scope: !1752)
!1763 = !DILocation(line: 1234, column: 13, scope: !1752)
!1764 = !DILocation(line: 1235, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 1235, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 1234, column: 20)
!1767 = !DILocation(line: 1235, column: 31, scope: !1765)
!1768 = !DILocation(line: 1236, column: 30, scope: !1765)
!1769 = !DILocation(line: 1236, column: 42, scope: !1765)
!1770 = !DILocation(line: 1236, column: 21, scope: !1765)
!1771 = !DILocation(line: 1236, column: 50, scope: !1765)
!1772 = !DILocation(line: 1235, column: 21, scope: !1766)
!1773 = !DILocation(line: 1236, column: 56, scope: !1765)
!1774 = !DILocation(line: 1239, column: 47, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 1238, column: 16)
!1776 = !DILocation(line: 1239, column: 13, scope: !1775)
!1777 = !DILocation(line: 1241, column: 9, scope: !1701)
!1778 = !DILocation(line: 1242, column: 20, scope: !1701)
!1779 = !DILocation(line: 1242, column: 11, scope: !1701)
!1780 = !DILocation(line: 1243, column: 14, scope: !1701)
!1781 = distinct !{!1781, !1713, !1782}
!1782 = !DILocation(line: 1244, column: 5, scope: !1691)
!1783 = !DILocation(line: 1245, column: 5, scope: !1691)
!1784 = !DILocation(line: 1246, column: 1, scope: !1691)
