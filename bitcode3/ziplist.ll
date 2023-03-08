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
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %2) #6, !dbg !46
  tail call void @_exit(i32 1) #7, !dbg !46
  unreachable, !dbg !46

; <label>:11:                                     ; preds = %7, %1, %6, %5, %4, %3
  %12 = phi i32 [ 8, %6 ], [ 4, %5 ], [ 3, %4 ], [ 2, %3 ], [ 1, %1 ], [ 0, %7 ], !dbg !47
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
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %5) #8, !dbg !66
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
  %43 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %5, i64 %42) #6, !dbg !124
  %44 = zext i8 %41 to i32, !dbg !125
  br label %45, !dbg !126

; <label>:45:                                     ; preds = %37, %24, %16, %9, %40
  %46 = phi i32 [ %44, %40 ], [ 1, %9 ], [ 2, %16 ], [ 5, %24 ], [ 1, %37 ], !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %5) #8, !dbg !128
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
  %8 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %7, i64 4) #6, !dbg !147
  br label %9, !dbg !148

; <label>:9:                                      ; preds = %2, %5
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
  %14 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %12, i64 4) #6, !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !179
  br label %15, !dbg !180

; <label>:15:                                     ; preds = %11, %9, %6
  %16 = phi i32 [ %7, %6 ], [ 1, %9 ], [ 5, %11 ], !dbg !181
  ret i32 %16, !dbg !182
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @zipPrevLenByteDiff(i8* nocapture readonly, i32) local_unnamed_addr #5 !dbg !183 {
  %3 = load i8, i8* %0, align 1, !dbg !190, !tbaa !81
  %4 = icmp ult i8 %3, -2, !dbg !190
  %5 = select i1 %4, i32 1, i32 5, !dbg !193
  %6 = icmp ult i32 %1, 254, !dbg !199
  %7 = select i1 %6, i32 1, i32 5, !dbg !200
  %8 = sub nsw i32 %7, %5, !dbg !201
  ret i32 %8, !dbg !202
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipRawEntryLength(i8* nocapture readonly) local_unnamed_addr #0 !dbg !203 {
  %2 = load i8, i8* %0, align 1, !dbg !213, !tbaa !81
  %3 = icmp ult i8 %2, -2, !dbg !213
  %4 = select i1 %3, i32 1, i32 5, !dbg !216
  %5 = zext i32 %4 to i64, !dbg !219
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !219
  %7 = load i8, i8* %6, align 1, !dbg !219, !tbaa !81
  %8 = zext i8 %7 to i32, !dbg !219
  %9 = icmp ult i8 %7, -64, !dbg !223
  %10 = and i32 %8, 192, !dbg !223
  %11 = select i1 %9, i32 %10, i32 %8, !dbg !219
  %12 = icmp ult i32 %11, 192, !dbg !225
  %13 = trunc i32 %11 to i8, !dbg !227
  br i1 %12, label %14, label %46, !dbg !229

; <label>:14:                                     ; preds = %1
  switch i8 %13, label %45 [
    i8 0, label %15
    i8 64, label %18
    i8 -128, label %26
  ], !dbg !227

; <label>:15:                                     ; preds = %14
  %16 = and i8 %7, 63, !dbg !231
  %17 = zext i8 %16 to i32, !dbg !231
  br label %55, !dbg !231

; <label>:18:                                     ; preds = %14
  %19 = and i8 %7, 63, !dbg !235
  %20 = zext i8 %19 to i32, !dbg !235
  %21 = shl nuw nsw i32 %20, 8, !dbg !235
  %22 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !235
  %23 = load i8, i8* %22, align 1, !dbg !235, !tbaa !81
  %24 = zext i8 %23 to i32, !dbg !235
  %25 = or i32 %21, %24, !dbg !235
  br label %55, !dbg !235

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !238
  %28 = load i8, i8* %27, align 1, !dbg !238, !tbaa !81
  %29 = zext i8 %28 to i32, !dbg !238
  %30 = shl nuw i32 %29, 24, !dbg !238
  %31 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !238
  %32 = load i8, i8* %31, align 1, !dbg !238, !tbaa !81
  %33 = zext i8 %32 to i32, !dbg !238
  %34 = shl nuw nsw i32 %33, 16, !dbg !238
  %35 = or i32 %34, %30, !dbg !238
  %36 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !238
  %37 = load i8, i8* %36, align 1, !dbg !238, !tbaa !81
  %38 = zext i8 %37 to i32, !dbg !238
  %39 = shl nuw nsw i32 %38, 8, !dbg !238
  %40 = or i32 %35, %39, !dbg !238
  %41 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !238
  %42 = load i8, i8* %41, align 1, !dbg !238, !tbaa !81
  %43 = zext i8 %42 to i32, !dbg !238
  %44 = or i32 %40, %43, !dbg !238
  br label %55

; <label>:45:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %11) #6, !dbg !241
  tail call void @_exit(i32 1) #7, !dbg !241
  unreachable, !dbg !241

; <label>:46:                                     ; preds = %1
  switch i8 %13, label %51 [
    i8 -2, label %55
    i8 -64, label %47
    i8 -16, label %48
    i8 -48, label %49
    i8 -32, label %50
  ], !dbg !246

; <label>:47:                                     ; preds = %46
  br label %55, !dbg !247

; <label>:48:                                     ; preds = %46
  br label %55, !dbg !248

; <label>:49:                                     ; preds = %46
  br label %55, !dbg !249

; <label>:50:                                     ; preds = %46
  br label %55, !dbg !250

; <label>:51:                                     ; preds = %46
  %52 = add i8 %13, 15, !dbg !251
  %53 = icmp ult i8 %52, 13, !dbg !251
  br i1 %53, label %55, label %54, !dbg !251

; <label>:54:                                     ; preds = %51
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %11) #6, !dbg !252
  tail call void @_exit(i32 1) #7, !dbg !252
  unreachable, !dbg !252

; <label>:55:                                     ; preds = %51, %50, %49, %48, %47, %46, %15, %26, %18
  %56 = phi i32 [ 1, %15 ], [ 2, %18 ], [ 5, %26 ], [ 1, %46 ], [ 1, %47 ], [ 1, %48 ], [ 1, %49 ], [ 1, %50 ], [ 1, %51 ], !dbg !231
  %57 = phi i32 [ %17, %15 ], [ %25, %18 ], [ %44, %26 ], [ 1, %46 ], [ 2, %47 ], [ 3, %48 ], [ 4, %49 ], [ 8, %50 ], [ 0, %51 ], !dbg !231
  %58 = add nuw nsw i32 %56, %4, !dbg !253
  %59 = add i32 %58, %57, !dbg !254
  ret i32 %59, !dbg !255
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipTryEncoding(i8*, i32, i64* nocapture, i8* nocapture) local_unnamed_addr #0 !dbg !256 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !270
  %7 = add i32 %1, -1, !dbg !271
  %8 = icmp ugt i32 %7, 30, !dbg !271
  br i1 %8, label %34, label %9, !dbg !271

; <label>:9:                                      ; preds = %4
  %10 = zext i32 %1 to i64, !dbg !273
  %11 = call i32 @string2ll(i8* %0, i64 %10, i64* nonnull %5) #6, !dbg !276
  %12 = icmp eq i32 %11, 0, !dbg !276
  br i1 %12, label %34, label %13, !dbg !277

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %5, align 8, !dbg !278, !tbaa !281
  %15 = icmp ult i64 %14, 13, !dbg !283
  br i1 %15, label %16, label %19, !dbg !283

; <label>:16:                                     ; preds = %13
  %17 = trunc i64 %14 to i8, !dbg !284
  %18 = add i8 %17, -15, !dbg !284
  br label %32, !dbg !286

; <label>:19:                                     ; preds = %13
  %20 = add i64 %14, 128, !dbg !287
  %21 = icmp ult i64 %20, 256, !dbg !287
  br i1 %21, label %32, label %22, !dbg !287

; <label>:22:                                     ; preds = %19
  %23 = add i64 %14, 32768, !dbg !289
  %24 = icmp ult i64 %23, 65536, !dbg !289
  br i1 %24, label %32, label %25, !dbg !289

; <label>:25:                                     ; preds = %22
  %26 = add i64 %14, 8388608, !dbg !291
  %27 = icmp ult i64 %26, 16777216, !dbg !291
  br i1 %27, label %32, label %28, !dbg !291

; <label>:28:                                     ; preds = %25
  %29 = add i64 %14, 2147483648, !dbg !293
  %30 = icmp ult i64 %29, 4294967296, !dbg !293
  %31 = select i1 %30, i8 -48, i8 -32, !dbg !295
  br label %32, !dbg !295

; <label>:32:                                     ; preds = %28, %25, %22, %19, %16
  %33 = phi i8 [ %18, %16 ], [ -2, %19 ], [ -64, %22 ], [ -16, %25 ], [ %31, %28 ]
  store i8 %33, i8* %3, align 1, !dbg !297, !tbaa !81
  store i64 %14, i64* %2, align 8, !dbg !298, !tbaa !281
  br label %34, !dbg !299

; <label>:34:                                     ; preds = %9, %4, %32
  %35 = phi i32 [ 1, %32 ], [ 0, %4 ], [ 0, %9 ], !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !301
  ret i32 %35, !dbg !301
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @zipSaveInteger(i8*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !302 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast i16* %4 to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #8, !dbg !323
  %8 = bitcast i32* %5 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8, !dbg !324
  %9 = bitcast i64* %6 to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !325
  switch i8 %2, label %25 [
    i8 -2, label %10
    i8 -64, label %12
    i8 -16, label %15
    i8 -48, label %20
    i8 -32, label %23
  ], !dbg !326

; <label>:10:                                     ; preds = %3
  %11 = trunc i64 %1 to i8, !dbg !327
  store i8 %11, i8* %0, align 1, !dbg !330, !tbaa !81
  br label %29, !dbg !331

; <label>:12:                                     ; preds = %3
  %13 = trunc i64 %1 to i16, !dbg !332
  store i16 %13, i16* %4, align 2, !dbg !336, !tbaa !337
  %14 = call i8* @memcpy(i8* %0, i8* nonnull %7, i64 2) #6, !dbg !339
  br label %29, !dbg !340

; <label>:15:                                     ; preds = %3
  %16 = trunc i64 %1 to i32, !dbg !341
  %17 = shl i32 %16, 8, !dbg !341
  store i32 %17, i32* %5, align 4, !dbg !345, !tbaa !138
  %18 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !346
  %19 = call i8* @memcpy(i8* %0, i8* nonnull %18, i64 3) #6, !dbg !347
  br label %29, !dbg !348

; <label>:20:                                     ; preds = %3
  %21 = trunc i64 %1 to i32, !dbg !349
  store i32 %21, i32* %5, align 4, !dbg !352, !tbaa !138
  %22 = call i8* @memcpy(i8* %0, i8* nonnull %8, i64 4) #6, !dbg !353
  br label %29, !dbg !354

; <label>:23:                                     ; preds = %3
  store i64 %1, i64* %6, align 8, !dbg !356, !tbaa !359
  %24 = call i8* @memcpy(i8* %0, i8* nonnull %9, i64 8) #6, !dbg !361
  br label %29, !dbg !362

; <label>:25:                                     ; preds = %3
  %26 = add i8 %2, 15, !dbg !363
  %27 = icmp ult i8 %26, 13, !dbg !363
  br i1 %27, label %29, label %28, !dbg !363

; <label>:28:                                     ; preds = %25
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 532) #6, !dbg !365
  tail call void @_exit(i32 1) #7, !dbg !365
  unreachable, !dbg !365

; <label>:29:                                     ; preds = %25, %12, %20, %23, %15, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8, !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #8, !dbg !367
  ret void, !dbg !367
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @zipLoadInteger(i8*, i8 zeroext) local_unnamed_addr #0 !dbg !368 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i16* %3 to i8*, !dbg !380
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #8, !dbg !380
  %7 = bitcast i32* %4 to i8*, !dbg !381
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #8, !dbg !381
  %8 = bitcast i64* %5 to i8*, !dbg !382
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !382
  switch i8 %1, label %29 [
    i8 -2, label %9
    i8 -64, label %12
    i8 -48, label %16
    i8 -16, label %20
    i8 -32, label %26
  ], !dbg !384

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %0, align 1, !dbg !385, !tbaa !81
  %11 = sext i8 %10 to i64, !dbg !385
  br label %37, !dbg !388

; <label>:12:                                     ; preds = %2
  %13 = call i8* @memcpy(i8* nonnull %6, i8* %0, i64 2) #6, !dbg !389
  %14 = load i16, i16* %3, align 2, !dbg !392, !tbaa !337
  %15 = sext i16 %14 to i64, !dbg !392
  br label %37, !dbg !394

; <label>:16:                                     ; preds = %2
  %17 = call i8* @memcpy(i8* nonnull %7, i8* %0, i64 4) #6, !dbg !395
  %18 = load i32, i32* %4, align 4, !dbg !398, !tbaa !138
  %19 = sext i32 %18 to i64, !dbg !398
  br label %37, !dbg !400

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %4, align 4, !dbg !401, !tbaa !138
  %21 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !404
  %22 = call i8* @memcpy(i8* nonnull %21, i8* %0, i64 3) #6, !dbg !405
  %23 = load i32, i32* %4, align 4, !dbg !406, !tbaa !138
  %24 = ashr i32 %23, 8, !dbg !407
  %25 = sext i32 %24 to i64, !dbg !406
  br label %37, !dbg !408

; <label>:26:                                     ; preds = %2
  %27 = call i8* @memcpy(i8* nonnull %8, i8* %0, i64 8) #6, !dbg !409
  %28 = load i64, i64* %5, align 8, !dbg !412, !tbaa !359
  br label %37, !dbg !414

; <label>:29:                                     ; preds = %2
  %30 = add i8 %1, 15, !dbg !415
  %31 = icmp ult i8 %30, 13, !dbg !415
  br i1 %31, label %32, label %36, !dbg !415

; <label>:32:                                     ; preds = %29
  %33 = and i8 %1, 15, !dbg !417
  %34 = zext i8 %33 to i64, !dbg !417
  %35 = add nsw i64 %34, -1, !dbg !419
  br label %37

; <label>:36:                                     ; preds = %29
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 563) #6, !dbg !420
  tail call void @_exit(i32 1) #7, !dbg !420
  unreachable, !dbg !420

; <label>:37:                                     ; preds = %12, %20, %32, %26, %16, %9
  %38 = phi i64 [ %11, %9 ], [ %15, %12 ], [ %19, %16 ], [ %25, %20 ], [ %28, %26 ], [ %35, %32 ], !dbg !422
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #8, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #8, !dbg !423
  ret i64 %38, !dbg !424
}

; Function Attrs: noredzone nounwind
define dso_local void @zipEntry(i8*, %struct.zlentry*) local_unnamed_addr #0 !dbg !425 {
  %3 = load i8, i8* %0, align 1, !dbg !444, !tbaa !81
  %4 = icmp ult i8 %3, -2, !dbg !444
  %5 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 0, !dbg !448
  %6 = select i1 %4, i32 1, i32 5, !dbg !448
  store i32 %6, i32* %5, align 8, !dbg !450, !tbaa !452
  br i1 %4, label %7, label %11, !dbg !455

; <label>:7:                                      ; preds = %2
  %8 = load i8, i8* %0, align 1, !dbg !456, !tbaa !81
  %9 = zext i8 %8 to i32, !dbg !456
  %10 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !456
  store i32 %9, i32* %10, align 4, !dbg !456, !tbaa !459
  br label %17, !dbg !456

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !460
  %13 = bitcast i32* %12 to i8*, !dbg !460
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !460
  %15 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull %14, i64 4) #6, !dbg !460
  %16 = load i32, i32* %5, align 8, !dbg !463, !tbaa !452
  br label %17, !dbg !460

; <label>:17:                                     ; preds = %7, %11
  %18 = phi i32 [ 1, %7 ], [ %16, %11 ], !dbg !463
  %19 = zext i32 %18 to i64, !dbg !463
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !463
  %21 = load i8, i8* %20, align 1, !dbg !463, !tbaa !81
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 5, !dbg !463
  %23 = icmp ult i8 %21, -64, !dbg !466
  %24 = and i8 %21, -64, !dbg !466
  %25 = select i1 %23, i8 %24, i8 %21, !dbg !463
  store i8 %25, i8* %22, align 4, !dbg !466, !tbaa !468
  %26 = zext i8 %25 to i32, !dbg !469
  %27 = icmp ult i8 %25, -64, !dbg !469
  br i1 %27, label %28, label %65, !dbg !471

; <label>:28:                                     ; preds = %17
  switch i8 %25, label %64 [
    i8 0, label %29
    i8 64, label %34
    i8 -128, label %44
  ], !dbg !472

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !474
  store i32 1, i32* %30, align 8, !dbg !474, !tbaa !477
  %31 = load i8, i8* %20, align 1, !dbg !474, !tbaa !81
  %32 = and i8 %31, 63, !dbg !474
  %33 = zext i8 %32 to i32, !dbg !474
  br label %75, !dbg !474

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !478
  store i32 2, i32* %35, align 8, !dbg !478, !tbaa !477
  %36 = load i8, i8* %20, align 1, !dbg !478, !tbaa !81
  %37 = and i8 %36, 63, !dbg !478
  %38 = zext i8 %37 to i32, !dbg !478
  %39 = shl nuw nsw i32 %38, 8, !dbg !478
  %40 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !478
  %41 = load i8, i8* %40, align 1, !dbg !478, !tbaa !81
  %42 = zext i8 %41 to i32, !dbg !478
  %43 = or i32 %39, %42, !dbg !478
  br label %75, !dbg !478

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !481
  store i32 5, i32* %45, align 8, !dbg !481, !tbaa !477
  %46 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !481
  %47 = load i8, i8* %46, align 1, !dbg !481, !tbaa !81
  %48 = zext i8 %47 to i32, !dbg !481
  %49 = shl nuw i32 %48, 24, !dbg !481
  %50 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !481
  %51 = load i8, i8* %50, align 1, !dbg !481, !tbaa !81
  %52 = zext i8 %51 to i32, !dbg !481
  %53 = shl nuw nsw i32 %52, 16, !dbg !481
  %54 = or i32 %53, %49, !dbg !481
  %55 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !481
  %56 = load i8, i8* %55, align 1, !dbg !481, !tbaa !81
  %57 = zext i8 %56 to i32, !dbg !481
  %58 = shl nuw nsw i32 %57, 8, !dbg !481
  %59 = or i32 %54, %58, !dbg !481
  %60 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !481
  %61 = load i8, i8* %60, align 1, !dbg !481, !tbaa !81
  %62 = zext i8 %61 to i32, !dbg !481
  %63 = or i32 %59, %62, !dbg !481
  br label %75

; <label>:64:                                     ; preds = %28
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %26) #6, !dbg !484
  tail call void @_exit(i32 1) #7, !dbg !484
  unreachable, !dbg !484

; <label>:65:                                     ; preds = %17
  %66 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !486
  store i32 1, i32* %66, align 8, !dbg !486, !tbaa !477
  switch i8 %25, label %71 [
    i8 -2, label %75
    i8 -64, label %67
    i8 -16, label %68
    i8 -48, label %69
    i8 -32, label %70
  ], !dbg !490

; <label>:67:                                     ; preds = %65
  br label %75, !dbg !491

; <label>:68:                                     ; preds = %65
  br label %75, !dbg !492

; <label>:69:                                     ; preds = %65
  br label %75, !dbg !493

; <label>:70:                                     ; preds = %65
  br label %75, !dbg !494

; <label>:71:                                     ; preds = %65
  %72 = add i8 %25, 15, !dbg !495
  %73 = icmp ult i8 %72, 13, !dbg !495
  br i1 %73, label %75, label %74, !dbg !495

; <label>:74:                                     ; preds = %71
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26) #6, !dbg !496
  tail call void @_exit(i32 1) #7, !dbg !496
  unreachable, !dbg !496

; <label>:75:                                     ; preds = %71, %70, %69, %68, %67, %65, %34, %44, %29
  %76 = phi i32 [ %43, %34 ], [ %63, %44 ], [ %33, %29 ], [ 8, %70 ], [ 4, %69 ], [ 3, %68 ], [ 2, %67 ], [ 1, %65 ], [ 0, %71 ]
  %77 = phi i32 [ 2, %34 ], [ 5, %44 ], [ 1, %29 ], [ 1, %70 ], [ 1, %69 ], [ 1, %68 ], [ 1, %67 ], [ 1, %65 ], [ 1, %71 ], !dbg !497
  %78 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 3, !dbg !486
  store i32 %76, i32* %78, align 4, !dbg !486, !tbaa !498
  %79 = add i32 %77, %18, !dbg !499
  %80 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 4, !dbg !500
  store i32 %79, i32* %80, align 8, !dbg !501, !tbaa !502
  %81 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 6, !dbg !503
  store i8* %0, i8** %81, align 8, !dbg !504, !tbaa !505
  ret void, !dbg !506
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNew() local_unnamed_addr #0 !dbg !507 {
  %1 = tail call i8* @zmalloc(i64 11) #6, !dbg !514
  %2 = bitcast i8* %1 to i32*, !dbg !516
  store i32 11, i32* %2, align 4, !dbg !517, !tbaa !138
  %3 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !518
  %4 = bitcast i8* %3 to i32*, !dbg !518
  store i32 10, i32* %4, align 4, !dbg !519, !tbaa !138
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !520
  %6 = bitcast i8* %5 to i16*, !dbg !520
  store i16 0, i16* %6, align 2, !dbg !521, !tbaa !337
  %7 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !522
  store i8 -1, i8* %7, align 1, !dbg !523, !tbaa !81
  ret i8* %1, !dbg !524
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistResize(i8*, i32) local_unnamed_addr #0 !dbg !525 {
  %3 = zext i32 %1 to i64, !dbg !533
  %4 = tail call i8* @zrealloc(i8* %0, i64 %3) #6, !dbg !534
  %5 = bitcast i8* %4 to i32*, !dbg !535
  store i32 %1, i32* %5, align 4, !dbg !536, !tbaa !138
  %6 = add i32 %1, -1, !dbg !537
  %7 = zext i32 %6 to i64, !dbg !538
  %8 = getelementptr inbounds i8, i8* %4, i64 %7, !dbg !538
  store i8 -1, i8* %8, align 1, !dbg !539, !tbaa !81
  ret i8* %4, !dbg !540
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistCascadeUpdate(i8*, i8*) local_unnamed_addr #0 !dbg !541 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zlentry, align 8
  %7 = alloca %struct.zlentry, align 8
  %8 = bitcast i8* %0 to i32*, !dbg !562
  %9 = load i32, i32* %8, align 4, !dbg !562, !tbaa !138
  %10 = bitcast %struct.zlentry* %6 to i8*, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #8, !dbg !563
  %11 = bitcast %struct.zlentry* %7 to i8*, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #8, !dbg !563
  %12 = load i8, i8* %1, align 1, !dbg !564, !tbaa !81
  %13 = icmp eq i8 %12, -1, !dbg !565
  br i1 %13, label %108, label %14, !dbg !566

; <label>:14:                                     ; preds = %2
  %15 = zext i32 %9 to i64, !dbg !562
  %16 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4
  %17 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 0
  %20 = bitcast i32* %4 to i8*
  br label %21, !dbg !566

; <label>:21:                                     ; preds = %14, %87
  %22 = phi i8* [ %0, %14 ], [ %50, %87 ]
  %23 = phi i8* [ %1, %14 ], [ %56, %87 ]
  %24 = phi i64 [ %15, %14 ], [ %47, %87 ]
  call void @zipEntry(i8* nonnull %23, %struct.zlentry* nonnull %6) #9, !dbg !569
  %25 = load i32, i32* %16, align 8, !dbg !571, !tbaa !502
  %26 = load i32, i32* %17, align 4, !dbg !572, !tbaa !498
  %27 = add i32 %26, %25, !dbg !573
  %28 = zext i32 %27 to i64, !dbg !574
  %29 = icmp ult i32 %27, 254, !dbg !579
  %30 = select i1 %29, i32 1, i32 5, !dbg !580
  %31 = zext i32 %30 to i64, !dbg !581
  %32 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !583
  %33 = load i8, i8* %32, align 1, !dbg !583, !tbaa !81
  %34 = icmp eq i8 %33, -1, !dbg !585
  br i1 %34, label %108, label %35, !dbg !586

; <label>:35:                                     ; preds = %21
  call void @zipEntry(i8* %32, %struct.zlentry* nonnull %7) #9, !dbg !588
  %36 = load i32, i32* %18, align 4, !dbg !589, !tbaa !459
  %37 = icmp eq i32 %36, %27, !dbg !591
  br i1 %37, label %108, label %38, !dbg !592

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %19, align 8, !dbg !593, !tbaa !452
  %40 = icmp ugt i32 %30, %39, !dbg !595
  br i1 %40, label %41, label %90, !dbg !596

; <label>:41:                                     ; preds = %38
  %42 = zext i32 %39 to i64, !dbg !597
  %43 = ptrtoint i8* %23 to i64, !dbg !598
  %44 = ptrtoint i8* %22 to i64, !dbg !598
  %45 = sub i64 %43, %44, !dbg !598
  %46 = sub nsw i64 %31, %42, !dbg !601
  %47 = add i64 %46, %24, !dbg !603
  %48 = trunc i64 %47 to i32, !dbg !604
  %49 = and i64 %47, 4294967295, !dbg !608
  %50 = call i8* @zrealloc(i8* nonnull %22, i64 %49) #6, !dbg !609
  %51 = bitcast i8* %50 to i32*, !dbg !610
  store i32 %48, i32* %51, align 4, !dbg !611, !tbaa !138
  %52 = add i64 %47, 4294967295, !dbg !612
  %53 = and i64 %52, 4294967295, !dbg !613
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !613
  store i8 -1, i8* %54, align 1, !dbg !614, !tbaa !81
  %55 = getelementptr inbounds i8, i8* %50, i64 %45, !dbg !615
  %56 = getelementptr inbounds i8, i8* %55, i64 %28, !dbg !616
  %57 = ptrtoint i8* %56 to i64, !dbg !618
  %58 = ptrtoint i8* %50 to i64, !dbg !618
  %59 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !619
  %60 = bitcast i8* %59 to i32*, !dbg !619
  %61 = load i32, i32* %60, align 4, !dbg !619, !tbaa !138
  %62 = zext i32 %61 to i64, !dbg !621
  %63 = getelementptr inbounds i8, i8* %50, i64 %62, !dbg !621
  %64 = icmp eq i8* %63, %56, !dbg !622
  br i1 %64, label %68, label %65, !dbg !623

; <label>:65:                                     ; preds = %41
  %66 = trunc i64 %46 to i32, !dbg !624
  %67 = add i32 %61, %66, !dbg !624
  store i32 %67, i32* %60, align 4, !dbg !626, !tbaa !138
  br label %68, !dbg !627

; <label>:68:                                     ; preds = %41, %65
  %69 = getelementptr inbounds i8, i8* %56, i64 %31, !dbg !628
  %70 = load i32, i32* %19, align 8, !dbg !629, !tbaa !452
  %71 = zext i32 %70 to i64, !dbg !630
  %72 = getelementptr inbounds i8, i8* %56, i64 %71, !dbg !630
  %73 = xor i64 %71, -1, !dbg !631
  %74 = add i64 %24, %58, !dbg !632
  %75 = sub i64 %74, %57, !dbg !632
  %76 = add i64 %75, %73, !dbg !631
  %77 = call i8* @memmove(i8* nonnull %69, i8* %72, i64 %76) #6, !dbg !633
  %78 = icmp eq i8* %56, null, !dbg !637
  br i1 %78, label %85, label %79, !dbg !638

; <label>:79:                                     ; preds = %68
  br i1 %29, label %80, label %82, !dbg !639

; <label>:80:                                     ; preds = %79
  %81 = trunc i32 %27 to i8, !dbg !640
  store i8 %81, i8* %56, align 1, !dbg !641, !tbaa !81
  br label %87, !dbg !642

; <label>:82:                                     ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !643
  store i32 %27, i32* %4, align 4, !tbaa !138
  store i8 -2, i8* %56, align 1, !dbg !646, !tbaa !81
  %83 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !647
  %84 = call i8* @memcpy(i8* nonnull %83, i8* nonnull %20, i64 4) #6, !dbg !648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !649
  br label %85, !dbg !650

; <label>:85:                                     ; preds = %82, %68
  %86 = load i8, i8* %56, align 1, !dbg !564, !tbaa !81
  br label %87, !dbg !564

; <label>:87:                                     ; preds = %85, %80
  %88 = phi i8 [ %86, %85 ], [ %81, %80 ], !dbg !564
  %89 = icmp eq i8 %88, -1, !dbg !565
  br i1 %89, label %108, label %21, !dbg !566, !llvm.loop !651

; <label>:90:                                     ; preds = %38
  %91 = icmp ult i32 %30, %39, !dbg !653
  br i1 %91, label %92, label %99, !dbg !656

; <label>:92:                                     ; preds = %90
  %93 = bitcast i32* %3 to i8*, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %93), !dbg !657
  store i32 %27, i32* %3, align 4, !tbaa !138
  %94 = icmp eq i8* %32, null, !dbg !661
  br i1 %94, label %98, label %95, !dbg !662

; <label>:95:                                     ; preds = %92
  store i8 -2, i8* %32, align 1, !dbg !663, !tbaa !81
  %96 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !664
  %97 = call i8* @memcpy(i8* nonnull %96, i8* nonnull %93, i64 4) #6, !dbg !665
  br label %98, !dbg !666

; <label>:98:                                     ; preds = %92, %95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %93), !dbg !667
  br label %108, !dbg !668

; <label>:99:                                     ; preds = %90
  %100 = icmp eq i8* %32, null, !dbg !673
  br i1 %100, label %108, label %101, !dbg !674

; <label>:101:                                    ; preds = %99
  br i1 %29, label %102, label %104, !dbg !675

; <label>:102:                                    ; preds = %101
  %103 = trunc i32 %27 to i8, !dbg !676
  store i8 %103, i8* %32, align 1, !dbg !677, !tbaa !81
  br label %108, !dbg !678

; <label>:104:                                    ; preds = %101
  %105 = bitcast i32* %5 to i8*, !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %105) #8, !dbg !679
  store i32 %27, i32* %5, align 4, !tbaa !138
  store i8 -2, i8* %32, align 1, !dbg !682, !tbaa !81
  %106 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !683
  %107 = call i8* @memcpy(i8* nonnull %106, i8* nonnull %105, i64 4) #6, !dbg !684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %105) #8, !dbg !685
  br label %108, !dbg !686

; <label>:108:                                    ; preds = %21, %35, %87, %2, %104, %102, %99, %98
  %109 = phi i8* [ %22, %104 ], [ %22, %102 ], [ %22, %99 ], [ %22, %98 ], [ %0, %2 ], [ %22, %21 ], [ %22, %35 ], [ %50, %87 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #8, !dbg !687
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #8, !dbg !687
  ret i8* %109, !dbg !688
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistDelete(i8*, i8*, i32) local_unnamed_addr #0 !dbg !689 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlentry, align 8
  %6 = alloca %struct.zlentry, align 8
  %7 = bitcast %struct.zlentry* %5 to i8*, !dbg !708
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #8, !dbg !708
  %8 = bitcast %struct.zlentry* %6 to i8*, !dbg !708
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #8, !dbg !708
  call void @zipEntry(i8* %1, %struct.zlentry* nonnull %5) #9, !dbg !710
  %9 = load i8, i8* %1, align 1, !dbg !712, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !715
  %11 = icmp ne i32 %2, 0, !dbg !716
  %12 = xor i1 %10, true, !dbg !717
  %13 = and i1 %11, %12, !dbg !717
  br i1 %13, label %14, label %28, !dbg !718

; <label>:14:                                     ; preds = %3, %14
  %15 = phi i32 [ %20, %14 ], [ 0, %3 ]
  %16 = phi i8* [ %19, %14 ], [ %1, %3 ]
  %17 = call i32 @zipRawEntryLength(i8* %16) #9, !dbg !719
  %18 = zext i32 %17 to i64, !dbg !721
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !721
  %20 = add nuw i32 %15, 1, !dbg !722
  %21 = load i8, i8* %19, align 1, !dbg !712, !tbaa !81
  %22 = icmp eq i8 %21, -1, !dbg !715
  %23 = icmp ult i32 %20, %2, !dbg !716
  %24 = xor i1 %22, true, !dbg !717
  %25 = and i1 %23, %24, !dbg !717
  br i1 %25, label %14, label %26, !dbg !718, !llvm.loop !723

; <label>:26:                                     ; preds = %14
  %27 = trunc i32 %20 to i16, !dbg !725
  br label %28, !dbg !725

; <label>:28:                                     ; preds = %26, %3
  %29 = phi i8* [ %1, %3 ], [ %19, %26 ]
  %30 = phi i16 [ 0, %3 ], [ %27, %26 ]
  %31 = phi i8 [ %9, %3 ], [ %21, %26 ], !dbg !712
  %32 = phi i1 [ %10, %3 ], [ %22, %26 ], !dbg !715
  %33 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 6, !dbg !725
  %34 = bitcast i8** %33 to i64*, !dbg !725
  %35 = load i64, i64* %34, align 8, !dbg !725, !tbaa !505
  %36 = ptrtoint i8* %29 to i64, !dbg !726
  %37 = sub i64 %36, %35, !dbg !726
  %38 = trunc i64 %37 to i32, !dbg !727
  %39 = icmp eq i32 %38, 0, !dbg !729
  br i1 %39, label %124, label %40, !dbg !731

; <label>:40:                                     ; preds = %28
  br i1 %32, label %90, label %41, !dbg !732

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !734
  %43 = load i32, i32* %42, align 4, !dbg !734, !tbaa !459
  %44 = icmp eq i8 %31, -2, !dbg !740
  %45 = select i1 %44, i32 5, i32 1, !dbg !741
  %46 = icmp ult i32 %43, 254, !dbg !746
  %47 = select i1 %46, i32 1, i32 5, !dbg !747
  %48 = sub nsw i32 %47, %45, !dbg !748
  %49 = sext i32 %48 to i64, !dbg !749
  %50 = sub nsw i64 0, %49, !dbg !749
  %51 = getelementptr inbounds i8, i8* %29, i64 %50, !dbg !749
  %52 = icmp eq i8* %51, null, !dbg !753
  br i1 %52, label %60, label %53, !dbg !754

; <label>:53:                                     ; preds = %41
  br i1 %46, label %54, label %56, !dbg !755

; <label>:54:                                     ; preds = %53
  %55 = trunc i32 %43 to i8, !dbg !756
  store i8 %55, i8* %51, align 1, !dbg !757, !tbaa !81
  br label %60, !dbg !758

; <label>:56:                                     ; preds = %53
  %57 = bitcast i32* %4 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #8, !dbg !759
  store i32 %43, i32* %4, align 4, !tbaa !138
  store i8 -2, i8* %51, align 1, !dbg !762, !tbaa !81
  %58 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !763
  %59 = call i8* @memcpy(i8* nonnull %58, i8* nonnull %57, i64 4) #6, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #8, !dbg !765
  br label %60, !dbg !766

; <label>:60:                                     ; preds = %41, %54, %56
  %61 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !767
  %62 = bitcast i8* %61 to i32*, !dbg !767
  %63 = load i32, i32* %62, align 4, !dbg !767, !tbaa !138
  %64 = sub i32 %63, %38, !dbg !767
  store i32 %64, i32* %62, align 4, !dbg !768, !tbaa !138
  call void @zipEntry(i8* %51, %struct.zlentry* nonnull %6) #9, !dbg !770
  %65 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4, !dbg !771
  %66 = load i32, i32* %65, align 8, !dbg !771, !tbaa !502
  %67 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3, !dbg !773
  %68 = load i32, i32* %67, align 4, !dbg !773, !tbaa !498
  %69 = add i32 %68, %66, !dbg !774
  %70 = zext i32 %69 to i64, !dbg !775
  %71 = getelementptr inbounds i8, i8* %51, i64 %70, !dbg !775
  %72 = load i8, i8* %71, align 1, !dbg !775, !tbaa !81
  %73 = icmp eq i8 %72, -1, !dbg !776
  br i1 %73, label %77, label %74, !dbg !777

; <label>:74:                                     ; preds = %60
  %75 = load i32, i32* %62, align 4, !dbg !778, !tbaa !138
  %76 = add i32 %75, %48, !dbg !778
  store i32 %76, i32* %62, align 4, !dbg !780, !tbaa !138
  br label %77, !dbg !781

; <label>:77:                                     ; preds = %60, %74
  %78 = load i8*, i8** %33, align 8, !dbg !782, !tbaa !505
  %79 = bitcast i8* %0 to i32*, !dbg !783
  %80 = load i32, i32* %79, align 4, !dbg !783, !tbaa !138
  %81 = zext i32 %80 to i64, !dbg !783
  %82 = ptrtoint i8* %51 to i64, !dbg !784
  %83 = ptrtoint i8* %0 to i64, !dbg !784
  %84 = xor i64 %82, -1, !dbg !785
  %85 = add i64 %84, %83, !dbg !785
  %86 = add i64 %85, %81, !dbg !786
  %87 = call i8* @memmove(i8* %78, i8* nonnull %51, i64 %86) #6, !dbg !787
  %88 = load i64, i64* %34, align 8, !dbg !788, !tbaa !505
  %89 = sub i64 %88, %83, !dbg !789
  br label %100, !dbg !790

; <label>:90:                                     ; preds = %40
  %91 = ptrtoint i8* %0 to i64, !dbg !791
  %92 = sub i64 %35, %91, !dbg !791
  %93 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !791
  %94 = load i32, i32* %93, align 4, !dbg !791, !tbaa !459
  %95 = trunc i64 %92 to i32, !dbg !791
  %96 = sub i32 %95, %94, !dbg !791
  %97 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !793
  %98 = bitcast i8* %97 to i32*, !dbg !793
  store i32 %96, i32* %98, align 4, !dbg !794, !tbaa !138
  %99 = bitcast i8* %0 to i32*, !dbg !795
  br label %100

; <label>:100:                                    ; preds = %90, %77
  %101 = phi i32* [ %99, %90 ], [ %79, %77 ], !dbg !795
  %102 = phi i64 [ %92, %90 ], [ %89, %77 ], !dbg !789
  %103 = phi i32 [ 0, %90 ], [ %48, %77 ], !dbg !796
  %104 = load i32, i32* %101, align 4, !dbg !795, !tbaa !138
  %105 = sub i32 %104, %38, !dbg !798
  %106 = add i32 %105, %103, !dbg !799
  %107 = zext i32 %106 to i64, !dbg !803
  %108 = call i8* @zrealloc(i8* nonnull %0, i64 %107) #6, !dbg !804
  %109 = bitcast i8* %108 to i32*, !dbg !805
  store i32 %106, i32* %109, align 4, !dbg !806, !tbaa !138
  %110 = add i32 %106, -1, !dbg !807
  %111 = zext i32 %110 to i64, !dbg !808
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !808
  store i8 -1, i8* %112, align 1, !dbg !809, !tbaa !81
  %113 = getelementptr inbounds i8, i8* %108, i64 8, !dbg !810
  %114 = bitcast i8* %113 to i16*, !dbg !810
  %115 = load i16, i16* %114, align 2, !dbg !810, !tbaa !337
  %116 = icmp eq i16 %115, -1, !dbg !810
  br i1 %116, label %119, label %117, !dbg !813

; <label>:117:                                    ; preds = %100
  %118 = sub i16 %115, %30, !dbg !810
  store i16 %118, i16* %114, align 2, !dbg !810, !tbaa !337
  br label %119, !dbg !810

; <label>:119:                                    ; preds = %100, %117
  %120 = icmp eq i32 %103, 0, !dbg !814
  br i1 %120, label %124, label %121, !dbg !816

; <label>:121:                                    ; preds = %119
  %122 = getelementptr inbounds i8, i8* %108, i64 %102, !dbg !817
  %123 = call i8* @__ziplistCascadeUpdate(i8* %108, i8* %122) #9, !dbg !818
  br label %124, !dbg !819

; <label>:124:                                    ; preds = %119, %28, %121
  %125 = phi i8* [ %123, %121 ], [ %108, %119 ], [ %0, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #8, !dbg !820
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #8, !dbg !820
  ret i8* %125, !dbg !821
}

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !822 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zlentry, align 8
  %12 = bitcast i8* %0 to i32*, !dbg !851
  %13 = load i32, i32* %12, align 4, !dbg !851, !tbaa !138
  %14 = zext i32 %13 to i64, !dbg !851
  %15 = bitcast i32* %10 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #8, !dbg !853
  store i32 0, i32* %10, align 4, !dbg !854, !tbaa !138
  %16 = bitcast %struct.zlentry* %11 to i8*, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #8, !dbg !858
  %17 = load i8, i8* %1, align 1, !dbg !859, !tbaa !81
  switch i8 %17, label %18 [
    i8 -1, label %23
    i8 -2, label %20
  ], !dbg !860

; <label>:18:                                     ; preds = %4
  %19 = zext i8 %17 to i32, !dbg !862
  store i32 %19, i32* %10, align 4, !dbg !862, !tbaa !138
  br label %33, !dbg !862

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !867
  %22 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %21, i64 4) #6, !dbg !867
  br label %33, !dbg !867

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !870
  %25 = bitcast i8* %24 to i32*, !dbg !870
  %26 = load i32, i32* %25, align 4, !dbg !870, !tbaa !138
  %27 = zext i32 %26 to i64, !dbg !870
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !870
  %29 = load i8, i8* %28, align 1, !dbg !872, !tbaa !81
  %30 = icmp eq i8 %29, -1, !dbg !874
  br i1 %30, label %33, label %31, !dbg !875

; <label>:31:                                     ; preds = %23
  %32 = tail call i32 @zipRawEntryLength(i8* %28) #9, !dbg !876
  store i32 %32, i32* %10, align 4, !dbg !878, !tbaa !138
  br label %33, !dbg !879

; <label>:33:                                     ; preds = %31, %23, %18, %20
  %34 = bitcast i64* %9 to i8*, !dbg !884
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #8, !dbg !884
  %35 = add i32 %3, -1, !dbg !885
  %36 = icmp ugt i32 %35, 30, !dbg !885
  %37 = zext i32 %3 to i64
  br i1 %36, label %59, label %38, !dbg !885

; <label>:38:                                     ; preds = %33
  %39 = call i32 @string2ll(i8* %2, i64 %37, i64* nonnull %9) #6, !dbg !887
  %40 = icmp eq i32 %39, 0, !dbg !887
  br i1 %40, label %59, label %41, !dbg !888

; <label>:41:                                     ; preds = %38
  %42 = load i64, i64* %9, align 8, !dbg !889, !tbaa !281
  %43 = icmp ult i64 %42, 13, !dbg !890
  br i1 %43, label %60, label %44, !dbg !890

; <label>:44:                                     ; preds = %41
  %45 = add i64 %42, 128, !dbg !891
  %46 = icmp ult i64 %45, 256, !dbg !891
  br i1 %46, label %47, label %48, !dbg !891

; <label>:47:                                     ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  br label %68, !dbg !896

; <label>:48:                                     ; preds = %44
  %49 = add i64 %42, 32768, !dbg !897
  %50 = icmp ult i64 %49, 65536, !dbg !897
  br i1 %50, label %51, label %52, !dbg !897

; <label>:51:                                     ; preds = %48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  br label %62, !dbg !896

; <label>:52:                                     ; preds = %48
  %53 = add i64 %42, 8388608, !dbg !898
  %54 = icmp ult i64 %53, 16777216, !dbg !898
  br i1 %54, label %55, label %56, !dbg !898

; <label>:55:                                     ; preds = %52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  br label %63, !dbg !896

; <label>:56:                                     ; preds = %52
  %57 = add i64 %42, 2147483648, !dbg !899
  %58 = icmp ult i64 %57, 4294967296, !dbg !899
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  br i1 %58, label %64, label %65, !dbg !899

; <label>:59:                                     ; preds = %33, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  br label %68

; <label>:60:                                     ; preds = %41
  %61 = trunc i64 %42 to i8, !dbg !900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !892
  switch i8 %61, label %66 [
    i8 13, label %68
    i8 -49, label %62
    i8 -1, label %63
    i8 -33, label %64
    i8 -17, label %65
  ], !dbg !896

; <label>:62:                                     ; preds = %51, %60
  br label %68, !dbg !901

; <label>:63:                                     ; preds = %55, %60
  br label %68, !dbg !902

; <label>:64:                                     ; preds = %56, %60
  br label %68, !dbg !903

; <label>:65:                                     ; preds = %56, %60
  br label %68, !dbg !904

; <label>:66:                                     ; preds = %60
  %67 = add i8 %61, -15, !dbg !900
  br label %68

; <label>:68:                                     ; preds = %65, %64, %63, %62, %60, %47, %66, %59
  %69 = phi i64 [ 123456789, %59 ], [ %42, %66 ], [ %42, %47 ], [ %42, %60 ], [ %42, %62 ], [ %42, %63 ], [ %42, %64 ], [ %42, %65 ]
  %70 = phi i8 [ 0, %59 ], [ %67, %66 ], [ -2, %47 ], [ -2, %60 ], [ -64, %62 ], [ -16, %63 ], [ -48, %64 ], [ -32, %65 ]
  %71 = phi i64 [ %37, %59 ], [ 0, %66 ], [ 1, %47 ], [ 1, %60 ], [ 2, %62 ], [ 3, %63 ], [ 4, %64 ], [ 8, %65 ]
  %72 = load i32, i32* %10, align 4, !dbg !906, !tbaa !138
  %73 = icmp ult i32 %72, 254, !dbg !910
  %74 = select i1 %73, i64 1, i64 5, !dbg !911
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %75) #8, !dbg !916
  %76 = icmp ult i8 %70, -64, !dbg !917
  %77 = xor i1 %76, true, !dbg !918
  %78 = icmp ult i32 %3, 64, !dbg !919
  %79 = or i1 %78, %77, !dbg !918
  %80 = icmp ult i32 %3, 16384, !dbg !920
  %81 = select i1 %80, i64 2, i64 5, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %75) #8, !dbg !922
  %82 = select i1 %79, i64 1, i64 %81, !dbg !923
  %83 = add nuw nsw i64 %82, %71, !dbg !924
  %84 = add nuw nsw i64 %83, %74, !dbg !925
  %85 = load i8, i8* %1, align 1, !dbg !927, !tbaa !81
  %86 = icmp eq i8 %85, -1, !dbg !928
  %87 = trunc i64 %84 to i32, !dbg !929
  br i1 %86, label %94, label %88, !dbg !930

; <label>:88:                                     ; preds = %68
  %89 = icmp eq i8 %85, -2, !dbg !934
  %90 = select i1 %89, i32 5, i32 1, !dbg !935
  %91 = icmp ult i32 %87, 254, !dbg !940
  %92 = select i1 %91, i32 1, i32 5, !dbg !941
  %93 = sub nsw i32 %92, %90, !dbg !942
  br label %94, !dbg !930

; <label>:94:                                     ; preds = %68, %88
  %95 = phi i32 [ %93, %88 ], [ 0, %68 ], !dbg !930
  %96 = icmp eq i32 %95, -4, !dbg !943
  %97 = icmp ult i64 %84, 4, !dbg !945
  %98 = and i1 %97, %96, !dbg !946
  %99 = select i1 %98, i32 0, i32 %95, !dbg !946
  %100 = ptrtoint i8* %1 to i64, !dbg !947
  %101 = ptrtoint i8* %0 to i64, !dbg !947
  %102 = sub i64 %100, %101, !dbg !947
  %103 = sext i32 %99 to i64, !dbg !949
  %104 = add i32 %13, %87, !dbg !950
  %105 = add i32 %104, %99, !dbg !950
  %106 = zext i32 %105 to i64, !dbg !954
  %107 = call i8* @zrealloc(i8* nonnull %0, i64 %106) #6, !dbg !955
  %108 = bitcast i8* %107 to i32*, !dbg !956
  store i32 %105, i32* %108, align 4, !dbg !957, !tbaa !138
  %109 = add i32 %105, -1, !dbg !958
  %110 = zext i32 %109 to i64, !dbg !959
  %111 = getelementptr inbounds i8, i8* %107, i64 %110, !dbg !959
  store i8 -1, i8* %111, align 1, !dbg !960, !tbaa !81
  %112 = getelementptr inbounds i8, i8* %107, i64 %102, !dbg !961
  %113 = load i8, i8* %112, align 1, !dbg !962, !tbaa !81
  %114 = icmp eq i8 %113, -1, !dbg !964
  br i1 %114, label %154, label %115, !dbg !965

; <label>:115:                                    ; preds = %94
  %116 = getelementptr inbounds i8, i8* %112, i64 %84, !dbg !966
  %117 = sub nsw i64 0, %103, !dbg !968
  %118 = getelementptr inbounds i8, i8* %112, i64 %117, !dbg !968
  %119 = xor i64 %102, -1, !dbg !969
  %120 = add i64 %14, %119, !dbg !969
  %121 = add i64 %120, %103, !dbg !970
  %122 = call i8* @memmove(i8* nonnull %116, i8* %118, i64 %121) #6, !dbg !971
  br i1 %98, label %123, label %127, !dbg !972

; <label>:123:                                    ; preds = %115
  %124 = bitcast i32* %7 to i8*, !dbg !973
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124), !dbg !973
  store i32 %87, i32* %7, align 4, !tbaa !138
  store i8 -2, i8* %116, align 1, !dbg !977, !tbaa !81
  %125 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !978
  %126 = call i8* @memcpy(i8* nonnull %125, i8* nonnull %124, i64 4) #6, !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124), !dbg !980
  br label %135, !dbg !981

; <label>:127:                                    ; preds = %115
  %128 = icmp ult i32 %87, 254, !dbg !985
  br i1 %128, label %129, label %131, !dbg !986

; <label>:129:                                    ; preds = %127
  %130 = trunc i64 %84 to i8, !dbg !987
  store i8 %130, i8* %116, align 1, !dbg !988, !tbaa !81
  br label %135, !dbg !989

; <label>:131:                                    ; preds = %127
  %132 = bitcast i32* %6 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %132) #8, !dbg !990
  store i32 %87, i32* %6, align 4, !tbaa !138
  store i8 -2, i8* %116, align 1, !dbg !993, !tbaa !81
  %133 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !994
  %134 = call i8* @memcpy(i8* nonnull %133, i8* nonnull %132, i64 4) #6, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %132) #8, !dbg !996
  br label %135, !dbg !997

; <label>:135:                                    ; preds = %131, %129, %123
  %136 = getelementptr inbounds i8, i8* %107, i64 4, !dbg !998
  %137 = bitcast i8* %136 to i32*, !dbg !998
  %138 = load i32, i32* %137, align 4, !dbg !998, !tbaa !138
  %139 = add i32 %138, %87, !dbg !998
  store i32 %139, i32* %137, align 4, !dbg !999, !tbaa !138
  call void @zipEntry(i8* nonnull %116, %struct.zlentry* nonnull %11) #9, !dbg !1001
  %140 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %11, i64 0, i32 4, !dbg !1002
  %141 = load i32, i32* %140, align 8, !dbg !1002, !tbaa !502
  %142 = zext i32 %141 to i64, !dbg !1004
  %143 = add nuw nsw i64 %84, %142, !dbg !1005
  %144 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %11, i64 0, i32 3, !dbg !1006
  %145 = load i32, i32* %144, align 4, !dbg !1006, !tbaa !498
  %146 = zext i32 %145 to i64, !dbg !1007
  %147 = add nuw nsw i64 %143, %146, !dbg !1008
  %148 = getelementptr inbounds i8, i8* %112, i64 %147, !dbg !1009
  %149 = load i8, i8* %148, align 1, !dbg !1009, !tbaa !81
  %150 = icmp eq i8 %149, -1, !dbg !1010
  br i1 %150, label %158, label %151, !dbg !1011

; <label>:151:                                    ; preds = %135
  %152 = load i32, i32* %137, align 4, !dbg !1012, !tbaa !138
  %153 = add i32 %152, %99, !dbg !1012
  store i32 %153, i32* %137, align 4, !dbg !1014, !tbaa !138
  br label %158, !dbg !1015

; <label>:154:                                    ; preds = %94
  %155 = trunc i64 %102 to i32, !dbg !1016
  %156 = getelementptr inbounds i8, i8* %107, i64 4, !dbg !1018
  %157 = bitcast i8* %156 to i32*, !dbg !1018
  store i32 %155, i32* %157, align 4, !dbg !1019, !tbaa !138
  br label %158

; <label>:158:                                    ; preds = %135, %151, %154
  %159 = icmp eq i32 %99, 0, !dbg !1020
  br i1 %159, label %160, label %163, !dbg !1022

; <label>:160:                                    ; preds = %158
  %161 = load i32, i32* %10, align 4, !dbg !1023, !tbaa !138
  %162 = icmp ult i32 %161, 254, !dbg !1027
  br i1 %162, label %173, label %178, !dbg !1028

; <label>:163:                                    ; preds = %158
  %164 = getelementptr inbounds i8, i8* %112, i64 %84, !dbg !1029
  %165 = call i8* @__ziplistCascadeUpdate(i8* nonnull %107, i8* nonnull %164) #9, !dbg !1031
  %166 = getelementptr inbounds i8, i8* %165, i64 %102, !dbg !1032
  %167 = load i32, i32* %10, align 4, !dbg !1023, !tbaa !138
  %168 = icmp eq i8* %166, null, !dbg !1033
  %169 = icmp ult i32 %167, 254, !dbg !1027
  br i1 %168, label %170, label %172, !dbg !1034

; <label>:170:                                    ; preds = %163
  %171 = select i1 %169, i64 1, i64 5, !dbg !1035
  br label %185, !dbg !1036

; <label>:172:                                    ; preds = %163
  br i1 %169, label %173, label %178, !dbg !1028

; <label>:173:                                    ; preds = %160, %172
  %174 = phi i8* [ %112, %160 ], [ %166, %172 ]
  %175 = phi i8* [ %107, %160 ], [ %165, %172 ]
  %176 = phi i32 [ %161, %160 ], [ %167, %172 ]
  %177 = trunc i32 %176 to i8, !dbg !1037
  store i8 %177, i8* %174, align 1, !dbg !1038, !tbaa !81
  br label %185, !dbg !1039

; <label>:178:                                    ; preds = %160, %172
  %179 = phi i8* [ %112, %160 ], [ %166, %172 ]
  %180 = phi i8* [ %107, %160 ], [ %165, %172 ]
  %181 = phi i32 [ %161, %160 ], [ %167, %172 ]
  %182 = bitcast i32* %5 to i8*, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %182) #8, !dbg !1040
  store i32 %181, i32* %5, align 4, !tbaa !138
  store i8 -2, i8* %179, align 1, !dbg !1043, !tbaa !81
  %183 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !1044
  %184 = call i8* @memcpy(i8* nonnull %183, i8* nonnull %182, i64 4) #6, !dbg !1045
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %182) #8, !dbg !1046
  br label %185, !dbg !1047

; <label>:185:                                    ; preds = %170, %173, %178
  %186 = phi i8* [ %165, %170 ], [ %175, %173 ], [ %180, %178 ]
  %187 = phi i8* [ null, %170 ], [ %174, %173 ], [ %179, %178 ]
  %188 = phi i64 [ %171, %170 ], [ 1, %173 ], [ 5, %178 ]
  %189 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !1048
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %75) #8, !dbg !1053
  br i1 %76, label %190, label %213, !dbg !1054

; <label>:190:                                    ; preds = %185
  br i1 %78, label %191, label %193, !dbg !1055

; <label>:191:                                    ; preds = %190
  %192 = trunc i32 %3 to i8, !dbg !1056
  store i8 %192, i8* %75, align 1, !dbg !1057, !tbaa !81
  br label %214, !dbg !1058

; <label>:193:                                    ; preds = %190
  br i1 %80, label %194, label %201, !dbg !1059

; <label>:194:                                    ; preds = %193
  %195 = lshr i32 %3, 8, !dbg !1060
  %196 = trunc i32 %195 to i8, !dbg !1061
  %197 = and i8 %196, 63, !dbg !1061
  %198 = or i8 %197, 64, !dbg !1061
  store i8 %198, i8* %75, align 1, !dbg !1062, !tbaa !81
  %199 = trunc i32 %3 to i8, !dbg !1063
  %200 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1064
  store i8 %199, i8* %200, align 1, !dbg !1065, !tbaa !81
  br label %214, !dbg !1066

; <label>:201:                                    ; preds = %193
  store i8 -128, i8* %75, align 1, !dbg !1067, !tbaa !81
  %202 = lshr i32 %3, 24, !dbg !1068
  %203 = trunc i32 %202 to i8, !dbg !1069
  %204 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1070
  store i8 %203, i8* %204, align 1, !dbg !1071, !tbaa !81
  %205 = lshr i32 %3, 16, !dbg !1072
  %206 = trunc i32 %205 to i8, !dbg !1073
  %207 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1074
  store i8 %206, i8* %207, align 1, !dbg !1075, !tbaa !81
  %208 = lshr i32 %3, 8, !dbg !1076
  %209 = trunc i32 %208 to i8, !dbg !1077
  %210 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1078
  store i8 %209, i8* %210, align 1, !dbg !1079, !tbaa !81
  %211 = trunc i32 %3 to i8, !dbg !1080
  %212 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4, !dbg !1081
  store i8 %211, i8* %212, align 1, !dbg !1082, !tbaa !81
  br label %214

; <label>:213:                                    ; preds = %185
  store i8 %70, i8* %75, align 1, !dbg !1083, !tbaa !81
  br label %214

; <label>:214:                                    ; preds = %191, %194, %201, %213
  %215 = phi i64 [ 1, %191 ], [ 2, %194 ], [ 5, %201 ], [ 1, %213 ]
  %216 = call i8* @memcpy(i8* nonnull %189, i8* nonnull %75, i64 %215) #6, !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %75) #8, !dbg !1085
  %217 = getelementptr inbounds i8, i8* %189, i64 %215, !dbg !1086
  br i1 %76, label %218, label %221, !dbg !1087

; <label>:218:                                    ; preds = %214
  %219 = zext i32 %3 to i64, !dbg !1088
  %220 = call i8* @memcpy(i8* nonnull %217, i8* %2, i64 %219) #6, !dbg !1091
  br label %222, !dbg !1092

; <label>:221:                                    ; preds = %214
  call void @zipSaveInteger(i8* nonnull %217, i64 %69, i8 zeroext %70) #9, !dbg !1093
  br label %222

; <label>:222:                                    ; preds = %221, %218
  %223 = getelementptr inbounds i8, i8* %186, i64 8, !dbg !1095
  %224 = bitcast i8* %223 to i16*, !dbg !1095
  %225 = load i16, i16* %224, align 2, !dbg !1095, !tbaa !337
  %226 = icmp eq i16 %225, -1, !dbg !1095
  br i1 %226, label %229, label %227, !dbg !1098

; <label>:227:                                    ; preds = %222
  %228 = add i16 %225, 1, !dbg !1095
  store i16 %228, i16* %224, align 2, !dbg !1095, !tbaa !337
  br label %229, !dbg !1095

; <label>:229:                                    ; preds = %222, %227
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #8, !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #8, !dbg !1099
  ret i8* %186, !dbg !1100
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #0 !dbg !1101 {
  %3 = icmp eq i8** %0, null, !dbg !1123
  br i1 %3, label %77, label %4, !dbg !1125

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %0, align 8, !dbg !1126, !tbaa !1127
  %6 = icmp eq i8* %5, null, !dbg !1128
  %7 = icmp eq i8** %1, null, !dbg !1129
  %8 = or i1 %7, %6, !dbg !1130
  br i1 %8, label %77, label %9, !dbg !1130

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %1, align 8, !dbg !1131, !tbaa !1127
  %11 = icmp eq i8* %10, null, !dbg !1132
  %12 = icmp eq i8* %5, %10, !dbg !1133
  %13 = or i1 %11, %12, !dbg !1135
  br i1 %13, label %77, label %14, !dbg !1135

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %5 to i32*, !dbg !1136
  %16 = load i32, i32* %15, align 4, !dbg !1136, !tbaa !138
  %17 = zext i32 %16 to i64, !dbg !1136
  %18 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !1138
  %19 = bitcast i8* %18 to i16*, !dbg !1138
  %20 = load i16, i16* %19, align 2, !dbg !1138, !tbaa !337
  %21 = zext i16 %20 to i64, !dbg !1138
  %22 = bitcast i8* %10 to i32*, !dbg !1140
  %23 = load i32, i32* %22, align 4, !dbg !1140, !tbaa !138
  %24 = zext i32 %23 to i64, !dbg !1140
  %25 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1142
  %26 = bitcast i8* %25 to i16*, !dbg !1142
  %27 = load i16, i16* %26, align 2, !dbg !1142, !tbaa !337
  %28 = zext i16 %27 to i64, !dbg !1142
  %29 = icmp ult i16 %20, %27, !dbg !1144
  %30 = select i1 %29, i8* %10, i8* %5
  %31 = select i1 %29, i64 %24, i64 %17
  %32 = select i1 %29, i64 %17, i64 %24
  %33 = select i1 %29, i8* %5, i8* %10
  %34 = add nsw i64 %17, -11, !dbg !1150
  %35 = add nsw i64 %34, %24, !dbg !1151
  %36 = add nuw nsw i64 %28, %21, !dbg !1153
  %37 = icmp ult i64 %36, 65535, !dbg !1155
  %38 = select i1 %37, i64 %36, i64 65535, !dbg !1156
  %39 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !1157
  %40 = bitcast i8* %39 to i32*, !dbg !1157
  %41 = load i32, i32* %40, align 4, !dbg !1157, !tbaa !138
  %42 = zext i32 %41 to i64, !dbg !1157
  %43 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1159
  %44 = bitcast i8* %43 to i32*, !dbg !1159
  %45 = load i32, i32* %44, align 4, !dbg !1159, !tbaa !138
  %46 = tail call i8* @zrealloc(i8* %30, i64 %35) #6, !dbg !1160
  br i1 %29, label %53, label %47, !dbg !1161

; <label>:47:                                     ; preds = %14
  %48 = getelementptr inbounds i8, i8* %46, i64 %31, !dbg !1162
  %49 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !1165
  %50 = getelementptr inbounds i8, i8* %33, i64 10, !dbg !1166
  %51 = add nsw i64 %32, -10, !dbg !1167
  %52 = tail call i8* @memcpy(i8* nonnull %49, i8* nonnull %50, i64 %51) #6, !dbg !1168
  br label %61, !dbg !1169

; <label>:53:                                     ; preds = %14
  %54 = getelementptr inbounds i8, i8* %46, i64 %32, !dbg !1170
  %55 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1172
  %56 = getelementptr inbounds i8, i8* %46, i64 10, !dbg !1173
  %57 = add nsw i64 %31, -10, !dbg !1174
  %58 = tail call i8* @memmove(i8* nonnull %55, i8* nonnull %56, i64 %57) #6, !dbg !1175
  %59 = add nsw i64 %32, -1, !dbg !1176
  %60 = tail call i8* @memcpy(i8* %46, i8* nonnull %33, i64 %59) #6, !dbg !1177
  br label %61

; <label>:61:                                     ; preds = %53, %47
  %62 = trunc i64 %35 to i32, !dbg !1178
  %63 = bitcast i8* %46 to i32*, !dbg !1179
  store i32 %62, i32* %63, align 4, !dbg !1180, !tbaa !138
  %64 = trunc i64 %38 to i16, !dbg !1181
  %65 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1182
  %66 = bitcast i8* %65 to i16*, !dbg !1182
  store i16 %64, i16* %66, align 2, !dbg !1183, !tbaa !337
  %67 = add i32 %16, -11, !dbg !1184
  %68 = add i32 %67, %45, !dbg !1184
  %69 = getelementptr inbounds i8, i8* %46, i64 4, !dbg !1185
  %70 = bitcast i8* %69 to i32*, !dbg !1185
  store i32 %68, i32* %70, align 4, !dbg !1186, !tbaa !138
  %71 = getelementptr inbounds i8, i8* %46, i64 %42, !dbg !1187
  %72 = tail call i8* @__ziplistCascadeUpdate(i8* %46, i8* %71) #9, !dbg !1188
  br i1 %29, label %75, label %73, !dbg !1189

; <label>:73:                                     ; preds = %61
  %74 = load i8*, i8** %1, align 8, !dbg !1190, !tbaa !1127
  tail call void @zfree(i8* %74) #6, !dbg !1193
  store i8* null, i8** %1, align 8, !dbg !1194, !tbaa !1127
  store i8* %72, i8** %0, align 8, !dbg !1195, !tbaa !1127
  br label %77, !dbg !1196

; <label>:75:                                     ; preds = %61
  %76 = load i8*, i8** %0, align 8, !dbg !1197, !tbaa !1127
  tail call void @zfree(i8* %76) #6, !dbg !1199
  store i8* null, i8** %0, align 8, !dbg !1200, !tbaa !1127
  store i8* %72, i8** %1, align 8, !dbg !1201, !tbaa !1127
  br label %77

; <label>:77:                                     ; preds = %73, %75, %2, %4, %9
  %78 = phi i8* [ null, %9 ], [ null, %4 ], [ null, %2 ], [ %72, %75 ], [ %72, %73 ], !dbg !1202
  ret i8* %78, !dbg !1203
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1204 {
  %5 = icmp eq i32 %3, 0, !dbg !1217
  br i1 %5, label %6, label %8, !dbg !1218

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1219
  br label %14, !dbg !1218

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8* %0 to i32*, !dbg !1220
  %10 = load i32, i32* %9, align 4, !dbg !1220, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1220
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1220
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !1220
  br label %14, !dbg !1218

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i8* [ %7, %6 ], [ %13, %8 ], !dbg !1218
  %16 = tail call i8* @__ziplistInsert(i8* %0, i8* nonnull %15, i8* %1, i32 %2) #9, !dbg !1222
  ret i8* %16, !dbg !1223
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #0 !dbg !1224 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1235
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1235
  store i32 0, i32* %3, align 4, !dbg !1236, !tbaa !138
  %5 = icmp slt i32 %1, 0, !dbg !1237
  br i1 %5, label %6, label %44, !dbg !1239

; <label>:6:                                      ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1240
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1242
  %9 = bitcast i8* %8 to i32*, !dbg !1242
  %10 = load i32, i32* %9, align 4, !dbg !1242, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1242
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1242
  %13 = load i8, i8* %12, align 1, !dbg !1244, !tbaa !81
  switch i8 %13, label %14 [
    i8 -1, label %59
    i8 -2, label %16
  ], !dbg !1246

; <label>:14:                                     ; preds = %6
  %15 = zext i8 %13 to i32, !dbg !1248
  store i32 %15, i32* %3, align 4, !dbg !1248, !tbaa !138
  br label %20, !dbg !1248

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1253
  %18 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %17, i64 4) #6, !dbg !1253
  %19 = load i32, i32* %3, align 4, !dbg !1256, !tbaa !138
  br label %20, !dbg !1253

; <label>:20:                                     ; preds = %16, %14
  %21 = phi i32 [ %19, %16 ], [ %15, %14 ], !dbg !1256
  %22 = icmp eq i32 %21, 0, !dbg !1257
  br i1 %22, label %59, label %23, !dbg !1258

; <label>:23:                                     ; preds = %20, %41
  %24 = phi i32 [ %42, %41 ], [ %21, %20 ]
  %25 = phi i8* [ %32, %41 ], [ %12, %20 ]
  %26 = phi i32 [ %27, %41 ], [ %7, %20 ]
  %27 = add nsw i32 %26, -1, !dbg !1259
  %28 = icmp eq i32 %26, 0, !dbg !1258
  br i1 %28, label %59, label %29, !dbg !1260

; <label>:29:                                     ; preds = %23
  %30 = zext i32 %24 to i64, !dbg !1261
  %31 = sub nsw i64 0, %30, !dbg !1261
  %32 = getelementptr inbounds i8, i8* %25, i64 %31, !dbg !1261
  %33 = load i8, i8* %32, align 1, !dbg !1263, !tbaa !81
  %34 = icmp ult i8 %33, -2, !dbg !1263
  br i1 %34, label %35, label %37, !dbg !1267

; <label>:35:                                     ; preds = %29
  %36 = zext i8 %33 to i32, !dbg !1268
  store i32 %36, i32* %3, align 4, !dbg !1268, !tbaa !138
  br label %41, !dbg !1268

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1271
  %39 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %38, i64 4) #6, !dbg !1271
  %40 = load i32, i32* %3, align 4, !dbg !1256, !tbaa !138
  br label %41, !dbg !1271

; <label>:41:                                     ; preds = %37, %35
  %42 = phi i32 [ %40, %37 ], [ %36, %35 ], !dbg !1256
  %43 = icmp eq i32 %42, 0, !dbg !1257
  br i1 %43, label %59, label %23, !dbg !1258, !llvm.loop !1274

; <label>:44:                                     ; preds = %2
  %45 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1276
  %46 = load i8, i8* %45, align 1, !dbg !1278, !tbaa !81
  %47 = icmp eq i8 %46, -1, !dbg !1279
  br i1 %47, label %59, label %48, !dbg !1280

; <label>:48:                                     ; preds = %44, %52
  %49 = phi i8* [ %56, %52 ], [ %45, %44 ]
  %50 = phi i32 [ %53, %52 ], [ %1, %44 ]
  %51 = icmp eq i32 %50, 0, !dbg !1280
  br i1 %51, label %59, label %52, !dbg !1281

; <label>:52:                                     ; preds = %48
  %53 = add nsw i32 %50, -1, !dbg !1282
  %54 = tail call i32 @zipRawEntryLength(i8* %49) #9, !dbg !1283
  %55 = zext i32 %54 to i64, !dbg !1285
  %56 = getelementptr inbounds i8, i8* %49, i64 %55, !dbg !1285
  %57 = load i8, i8* %56, align 1, !dbg !1278, !tbaa !81
  %58 = icmp eq i8 %57, -1, !dbg !1279
  br i1 %58, label %59, label %48, !dbg !1280, !llvm.loop !1286

; <label>:59:                                     ; preds = %52, %48, %41, %23, %44, %20, %6
  %60 = phi i32 [ %7, %6 ], [ %7, %20 ], [ %1, %44 ], [ %27, %41 ], [ -1, %23 ], [ %53, %52 ], [ -1, %48 ]
  %61 = phi i8* [ %12, %6 ], [ %12, %20 ], [ %45, %44 ], [ %32, %41 ], [ %25, %23 ], [ %56, %52 ], [ %49, %48 ], !dbg !1288
  %62 = load i8, i8* %61, align 1, !dbg !1289, !tbaa !81
  %63 = icmp eq i8 %62, -1, !dbg !1290
  %64 = icmp sgt i32 %60, 0, !dbg !1291
  %65 = or i1 %64, %63, !dbg !1292
  %66 = select i1 %65, i8* null, i8* %61, !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1293
  ret i8* %66, !dbg !1294
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #0 !dbg !1295 {
  %3 = load i8, i8* %1, align 1, !dbg !1301, !tbaa !81
  %4 = icmp eq i8 %3, -1, !dbg !1303
  br i1 %4, label %12, label %5, !dbg !1304

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @zipRawEntryLength(i8* nonnull %1) #9, !dbg !1305
  %7 = zext i32 %6 to i64, !dbg !1306
  %8 = getelementptr inbounds i8, i8* %1, i64 %7, !dbg !1306
  %9 = load i8, i8* %8, align 1, !dbg !1307, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !1309
  %11 = select i1 %10, i8* null, i8* %8, !dbg !1310
  br label %12, !dbg !1310

; <label>:12:                                     ; preds = %5, %2
  %13 = phi i8* [ null, %2 ], [ %11, %5 ], !dbg !1312
  ret i8* %13, !dbg !1313
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPrev(i8* readonly, i8*) local_unnamed_addr #0 !dbg !1314 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1322
  store i32 0, i32* %3, align 4, !dbg !1323, !tbaa !138
  %5 = load i8, i8* %1, align 1, !dbg !1324, !tbaa !81
  %6 = icmp eq i8 %5, -1, !dbg !1326
  br i1 %6, label %7, label %16, !dbg !1327

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1328
  %9 = bitcast i8* %8 to i32*, !dbg !1328
  %10 = load i32, i32* %9, align 4, !dbg !1328, !tbaa !138
  %11 = zext i32 %10 to i64, !dbg !1328
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1328
  %13 = load i8, i8* %12, align 1, !dbg !1330, !tbaa !81
  %14 = icmp eq i8 %13, -1, !dbg !1331
  %15 = select i1 %14, i8* null, i8* %12, !dbg !1332
  br label %35, !dbg !1333

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1334
  %18 = icmp eq i8* %17, %1, !dbg !1336
  br i1 %18, label %35, label %19, !dbg !1337

; <label>:19:                                     ; preds = %16
  %20 = icmp ult i8 %5, -2, !dbg !1338
  br i1 %20, label %21, label %23, !dbg !1343

; <label>:21:                                     ; preds = %19
  %22 = zext i8 %5 to i32, !dbg !1344
  store i32 %22, i32* %3, align 4, !dbg !1344, !tbaa !138
  br label %27, !dbg !1344

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1347
  %25 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %24, i64 4) #6, !dbg !1347
  %26 = load i32, i32* %3, align 4, !dbg !1350, !tbaa !138
  br label %27, !dbg !1347

; <label>:27:                                     ; preds = %23, %21
  %28 = phi i32 [ %26, %23 ], [ %22, %21 ], !dbg !1350
  %29 = icmp eq i32 %28, 0, !dbg !1350
  br i1 %29, label %30, label %31, !dbg !1350

; <label>:30:                                     ; preds = %27
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1025) #6, !dbg !1350
  call void @_exit(i32 1) #7, !dbg !1350
  unreachable, !dbg !1350

; <label>:31:                                     ; preds = %27
  %32 = zext i32 %28 to i64, !dbg !1351
  %33 = sub nsw i64 0, %32, !dbg !1351
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !1351
  br label %35, !dbg !1352

; <label>:35:                                     ; preds = %16, %31, %7
  %36 = phi i8* [ %15, %7 ], [ %34, %31 ], [ null, %16 ], !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1354
  ret i8* %36, !dbg !1354
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistGet(i8*, i8**, i32* nocapture, i64*) local_unnamed_addr #0 !dbg !1355 {
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1369
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #8, !dbg !1369
  %7 = icmp eq i8* %0, null, !dbg !1370
  br i1 %7, label %34, label %8, !dbg !1372

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %0, align 1, !dbg !1373, !tbaa !81
  %10 = icmp eq i8 %9, -1, !dbg !1374
  br i1 %10, label %34, label %11, !dbg !1375

; <label>:11:                                     ; preds = %8
  %12 = icmp ne i8** %1, null, !dbg !1376
  br i1 %12, label %13, label %14, !dbg !1378

; <label>:13:                                     ; preds = %11
  store i8* null, i8** %1, align 8, !dbg !1379, !tbaa !1127
  br label %14, !dbg !1380

; <label>:14:                                     ; preds = %13, %11
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #9, !dbg !1382
  %15 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1383
  %16 = load i8, i8* %15, align 4, !dbg !1383, !tbaa !468
  %17 = icmp ult i8 %16, -64, !dbg !1383
  br i1 %17, label %18, label %26, !dbg !1385

; <label>:18:                                     ; preds = %14
  br i1 %12, label %19, label %34, !dbg !1386

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1388
  %21 = load i32, i32* %20, align 4, !dbg !1388, !tbaa !498
  store i32 %21, i32* %2, align 4, !dbg !1391, !tbaa !138
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1392
  %23 = load i32, i32* %22, align 8, !dbg !1392, !tbaa !502
  %24 = zext i32 %23 to i64, !dbg !1393
  %25 = getelementptr inbounds i8, i8* %0, i64 %24, !dbg !1393
  store i8* %25, i8** %1, align 8, !dbg !1394, !tbaa !1127
  br label %34, !dbg !1395

; <label>:26:                                     ; preds = %14
  %27 = icmp eq i64* %3, null, !dbg !1396
  br i1 %27, label %34, label %28, !dbg !1399

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1400
  %30 = load i32, i32* %29, align 8, !dbg !1400, !tbaa !502
  %31 = zext i32 %30 to i64, !dbg !1402
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !1402
  %33 = call i64 @zipLoadInteger(i8* nonnull %32, i8 zeroext %16) #9, !dbg !1403
  store i64 %33, i64* %3, align 8, !dbg !1404, !tbaa !281
  br label %34, !dbg !1405

; <label>:34:                                     ; preds = %19, %18, %28, %26, %4, %8
  %35 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 1, %26 ], [ 1, %28 ], [ 1, %18 ], [ 1, %19 ], !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #8, !dbg !1407
  ret i32 %35, !dbg !1407
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !1408 {
  %5 = tail call i8* @__ziplistInsert(i8* %0, i8* %1, i8* %2, i32 %3) #9, !dbg !1418
  ret i8* %5, !dbg !1419
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDelete(i8*, i8** nocapture) local_unnamed_addr #0 !dbg !1420 {
  %3 = load i8*, i8** %1, align 8, !dbg !1429, !tbaa !1127
  %4 = ptrtoint i8* %3 to i64, !dbg !1430
  %5 = ptrtoint i8* %0 to i64, !dbg !1430
  %6 = sub i64 %4, %5, !dbg !1430
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* %3, i32 1) #9, !dbg !1432
  %8 = getelementptr inbounds i8, i8* %7, i64 %6, !dbg !1433
  store i8* %8, i8** %1, align 8, !dbg !1434, !tbaa !1127
  ret i8* %7, !dbg !1435
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #0 !dbg !1436 {
  %4 = tail call i8* @ziplistIndex(i8* %0, i32 %1) #9, !dbg !1447
  %5 = icmp eq i8* %4, null, !dbg !1449
  br i1 %5, label %8, label %6, !dbg !1450

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* nonnull %4, i32 %2) #9, !dbg !1451
  br label %8, !dbg !1450

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %0, %3 ], !dbg !1450
  ret i8* %9, !dbg !1452
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1453 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1467
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #8, !dbg !1467
  %7 = load i8, i8* %0, align 1, !dbg !1468, !tbaa !81
  %8 = icmp eq i8 %7, -1, !dbg !1470
  br i1 %8, label %43, label %9, !dbg !1471

; <label>:9:                                      ; preds = %3
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #9, !dbg !1473
  %10 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1474
  %11 = load i8, i8* %10, align 4, !dbg !1474, !tbaa !468
  %12 = icmp ult i8 %11, -64, !dbg !1474
  br i1 %12, label %13, label %25, !dbg !1476

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1477
  %15 = load i32, i32* %14, align 4, !dbg !1477, !tbaa !498
  %16 = icmp eq i32 %15, %2, !dbg !1480
  br i1 %16, label %17, label %43, !dbg !1481

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1482
  %19 = load i32, i32* %18, align 8, !dbg !1482, !tbaa !502
  %20 = zext i32 %19 to i64, !dbg !1484
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1484
  %22 = zext i32 %2 to i64, !dbg !1485
  %23 = call i32 @memcmp(i8* %21, i8* %1, i64 %22) #6, !dbg !1486
  %24 = icmp eq i32 %23, 0, !dbg !1487
  br label %43, !dbg !1488

; <label>:25:                                     ; preds = %9
  %26 = bitcast i64* %4 to i8*, !dbg !1494
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #8, !dbg !1494
  %27 = add i32 %2, -1, !dbg !1495
  %28 = icmp ugt i32 %27, 30, !dbg !1495
  br i1 %28, label %42, label %29, !dbg !1495

; <label>:29:                                     ; preds = %25
  %30 = zext i32 %2 to i64, !dbg !1496
  %31 = call i32 @string2ll(i8* %1, i64 %30, i64* nonnull %4) #6, !dbg !1498
  %32 = icmp eq i32 %31, 0, !dbg !1498
  br i1 %32, label %42, label %33, !dbg !1499

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %4, align 8, !dbg !1500, !tbaa !281
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #8, !dbg !1501
  %35 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1502
  %36 = load i32, i32* %35, align 8, !dbg !1502, !tbaa !502
  %37 = zext i32 %36 to i64, !dbg !1504
  %38 = getelementptr inbounds i8, i8* %0, i64 %37, !dbg !1504
  %39 = load i8, i8* %10, align 4, !dbg !1505, !tbaa !468
  %40 = call i64 @zipLoadInteger(i8* %38, i8 zeroext %39) #9, !dbg !1506
  %41 = icmp eq i64 %40, %34, !dbg !1509
  br label %43, !dbg !1510

; <label>:42:                                     ; preds = %25, %29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #8, !dbg !1501
  br label %43

; <label>:43:                                     ; preds = %42, %13, %3, %33, %17
  %44 = phi i1 [ %24, %17 ], [ %41, %33 ], [ false, %3 ], [ false, %13 ], [ false, %42 ]
  %45 = zext i1 %44 to i32, !dbg !1511
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #8, !dbg !1512
  ret i32 %45, !dbg !1512
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistFind(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1513 {
  %5 = alloca i64, align 8
  %6 = zext i32 %2 to i64
  %7 = bitcast i64* %5 to i8*
  %8 = add i32 %2, -1
  %9 = icmp ugt i32 %8, 30
  br label %10, !dbg !1544

; <label>:10:                                     ; preds = %113, %4
  %11 = phi i8 [ 0, %4 ], [ %114, %113 ], !dbg !1542
  %12 = phi i64 [ 0, %4 ], [ %115, %113 ], !dbg !1543
  %13 = phi i32 [ 0, %4 ], [ %116, %113 ], !dbg !1541
  %14 = phi i8* [ %0, %4 ], [ %118, %113 ]
  %15 = load i8, i8* %14, align 1, !dbg !1545, !tbaa !81
  switch i8 %15, label %17 [
    i8 -1, label %119
    i8 -2, label %16
  ], !dbg !1544

; <label>:16:                                     ; preds = %10
  br label %17

; <label>:17:                                     ; preds = %10, %16
  %18 = phi i64 [ 5, %16 ], [ 1, %10 ]
  %19 = getelementptr inbounds i8, i8* %14, i64 %18, !dbg !1547
  %20 = load i8, i8* %19, align 1, !dbg !1547, !tbaa !81
  %21 = zext i8 %20 to i32, !dbg !1547
  %22 = icmp ult i8 %20, -64, !dbg !1551
  %23 = and i32 %21, 192, !dbg !1551
  %24 = select i1 %22, i32 %23, i32 %21, !dbg !1547
  %25 = icmp ult i32 %24, 192, !dbg !1553
  %26 = trunc i32 %24 to i8, !dbg !1555
  br i1 %25, label %27, label %59, !dbg !1557

; <label>:27:                                     ; preds = %17
  switch i8 %26, label %58 [
    i8 0, label %28
    i8 64, label %31
    i8 -128, label %39
  ], !dbg !1555

; <label>:28:                                     ; preds = %27
  %29 = and i8 %20, 63, !dbg !1559
  %30 = zext i8 %29 to i32, !dbg !1559
  br label %68, !dbg !1559

; <label>:31:                                     ; preds = %27
  %32 = and i8 %20, 63, !dbg !1563
  %33 = zext i8 %32 to i32, !dbg !1563
  %34 = shl nuw nsw i32 %33, 8, !dbg !1563
  %35 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1563
  %36 = load i8, i8* %35, align 1, !dbg !1563, !tbaa !81
  %37 = zext i8 %36 to i32, !dbg !1563
  %38 = or i32 %34, %37, !dbg !1563
  br label %68, !dbg !1563

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1566
  %41 = load i8, i8* %40, align 1, !dbg !1566, !tbaa !81
  %42 = zext i8 %41 to i32, !dbg !1566
  %43 = shl nuw i32 %42, 24, !dbg !1566
  %44 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !1566
  %45 = load i8, i8* %44, align 1, !dbg !1566, !tbaa !81
  %46 = zext i8 %45 to i32, !dbg !1566
  %47 = shl nuw nsw i32 %46, 16, !dbg !1566
  %48 = or i32 %47, %43, !dbg !1566
  %49 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1566
  %50 = load i8, i8* %49, align 1, !dbg !1566, !tbaa !81
  %51 = zext i8 %50 to i32, !dbg !1566
  %52 = shl nuw nsw i32 %51, 8, !dbg !1566
  %53 = or i32 %48, %52, !dbg !1566
  %54 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !1566
  %55 = load i8, i8* %54, align 1, !dbg !1566, !tbaa !81
  %56 = zext i8 %55 to i32, !dbg !1566
  %57 = or i32 %53, %56, !dbg !1566
  br label %68

; <label>:58:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %24) #6, !dbg !1569
  call void @_exit(i32 1) #7, !dbg !1569
  unreachable, !dbg !1569

; <label>:59:                                     ; preds = %17
  switch i8 %26, label %64 [
    i8 -2, label %68
    i8 -64, label %60
    i8 -16, label %61
    i8 -48, label %62
    i8 -32, label %63
  ], !dbg !1574

; <label>:60:                                     ; preds = %59
  br label %68, !dbg !1575

; <label>:61:                                     ; preds = %59
  br label %68, !dbg !1576

; <label>:62:                                     ; preds = %59
  br label %68, !dbg !1577

; <label>:63:                                     ; preds = %59
  br label %68, !dbg !1578

; <label>:64:                                     ; preds = %59
  %65 = add i8 %26, 15, !dbg !1579
  %66 = icmp ult i8 %65, 13, !dbg !1579
  br i1 %66, label %68, label %67, !dbg !1579

; <label>:67:                                     ; preds = %64
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24) #6, !dbg !1580
  call void @_exit(i32 1) #7, !dbg !1580
  unreachable, !dbg !1580

; <label>:68:                                     ; preds = %64, %63, %62, %61, %60, %59, %28, %39, %31
  %69 = phi i64 [ 1, %28 ], [ 2, %31 ], [ 5, %39 ], [ 1, %59 ], [ 1, %60 ], [ 1, %61 ], [ 1, %62 ], [ 1, %63 ], [ 1, %64 ]
  %70 = phi i32 [ %30, %28 ], [ %38, %31 ], [ %57, %39 ], [ 1, %59 ], [ 2, %60 ], [ 3, %61 ], [ 4, %62 ], [ 8, %63 ], [ 0, %64 ], !dbg !1559
  %71 = getelementptr inbounds i8, i8* %19, i64 %69, !dbg !1581
  %72 = icmp eq i32 %13, 0, !dbg !1583
  br i1 %72, label %73, label %111, !dbg !1584

; <label>:73:                                     ; preds = %68
  br i1 %25, label %74, label %79, !dbg !1585

; <label>:74:                                     ; preds = %73
  %75 = icmp eq i32 %70, %2, !dbg !1586
  br i1 %75, label %76, label %113, !dbg !1589

; <label>:76:                                     ; preds = %74
  %77 = call i32 @memcmp(i8* nonnull %71, i8* %1, i64 %6) #6, !dbg !1590
  %78 = icmp eq i32 %77, 0, !dbg !1591
  br i1 %78, label %119, label %113, !dbg !1592

; <label>:79:                                     ; preds = %73
  switch i8 %11, label %106 [
    i8 0, label %80
    i8 -1, label %113
  ], !dbg !1593

; <label>:80:                                     ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1600
  br i1 %9, label %105, label %81, !dbg !1601

; <label>:81:                                     ; preds = %80
  %82 = call i32 @string2ll(i8* %1, i64 %6, i64* nonnull %5) #6, !dbg !1603
  %83 = icmp eq i32 %82, 0, !dbg !1603
  br i1 %83, label %105, label %84, !dbg !1604

; <label>:84:                                     ; preds = %81
  %85 = load i64, i64* %5, align 8, !dbg !1605, !tbaa !281
  %86 = icmp ult i64 %85, 13, !dbg !1606
  br i1 %86, label %87, label %90, !dbg !1606

; <label>:87:                                     ; preds = %84
  %88 = trunc i64 %85 to i8, !dbg !1607
  %89 = add i8 %88, -15, !dbg !1607
  br label %103, !dbg !1608

; <label>:90:                                     ; preds = %84
  %91 = add i64 %85, 128, !dbg !1609
  %92 = icmp ult i64 %91, 256, !dbg !1609
  br i1 %92, label %103, label %93, !dbg !1609

; <label>:93:                                     ; preds = %90
  %94 = add i64 %85, 32768, !dbg !1610
  %95 = icmp ult i64 %94, 65536, !dbg !1610
  br i1 %95, label %103, label %96, !dbg !1610

; <label>:96:                                     ; preds = %93
  %97 = add i64 %85, 8388608, !dbg !1611
  %98 = icmp ult i64 %97, 16777216, !dbg !1611
  br i1 %98, label %103, label %99, !dbg !1611

; <label>:99:                                     ; preds = %96
  %100 = add i64 %85, 2147483648, !dbg !1612
  %101 = icmp ult i64 %100, 4294967296, !dbg !1612
  %102 = select i1 %101, i8 -48, i8 -32, !dbg !1612
  br label %103, !dbg !1612

; <label>:103:                                    ; preds = %99, %87, %90, %93, %96
  %104 = phi i8 [ -16, %96 ], [ -64, %93 ], [ -2, %90 ], [ %89, %87 ], [ %102, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1613
  br label %106, !dbg !1614

; <label>:105:                                    ; preds = %80, %81
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1613
  br label %113, !dbg !1614

; <label>:106:                                    ; preds = %79, %103
  %107 = phi i64 [ %85, %103 ], [ %12, %79 ]
  %108 = phi i8 [ %104, %103 ], [ %11, %79 ]
  %109 = call i64 @zipLoadInteger(i8* nonnull %71, i8 zeroext %26) #9, !dbg !1615
  %110 = icmp eq i64 %109, %107, !dbg !1617
  br i1 %110, label %119, label %113

; <label>:111:                                    ; preds = %68
  %112 = add nsw i32 %13, -1, !dbg !1619
  br label %113

; <label>:113:                                    ; preds = %106, %79, %111, %74, %76, %105
  %114 = phi i8 [ %11, %76 ], [ %11, %74 ], [ %108, %106 ], [ %11, %111 ], [ -1, %105 ], [ %11, %79 ], !dbg !1621
  %115 = phi i64 [ %12, %76 ], [ %12, %74 ], [ %107, %106 ], [ %12, %111 ], [ %12, %105 ], [ %12, %79 ], !dbg !1543
  %116 = phi i32 [ %3, %76 ], [ %3, %74 ], [ %3, %106 ], [ %112, %111 ], [ %3, %105 ], [ %3, %79 ], !dbg !1622
  %117 = zext i32 %70 to i64, !dbg !1623
  %118 = getelementptr inbounds i8, i8* %71, i64 %117, !dbg !1623
  br label %10

; <label>:119:                                    ; preds = %106, %76, %10
  %120 = phi i8* [ null, %10 ], [ %14, %76 ], [ %14, %106 ], !dbg !1621
  ret i8* %120, !dbg !1624
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistLen(i8* nocapture) local_unnamed_addr #0 !dbg !1625 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1634
  %3 = bitcast i8* %2 to i16*, !dbg !1634
  %4 = load i16, i16* %3, align 2, !dbg !1634, !tbaa !337
  %5 = icmp eq i16 %4, -1, !dbg !1635
  br i1 %5, label %8, label %6, !dbg !1636

; <label>:6:                                      ; preds = %1
  %7 = zext i16 %4 to i32, !dbg !1634
  br label %26, !dbg !1637

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1639
  %10 = load i8, i8* %9, align 1, !dbg !1641, !tbaa !81
  %11 = icmp eq i8 %10, -1, !dbg !1642
  br i1 %11, label %23, label %12, !dbg !1643

; <label>:12:                                     ; preds = %8, %12
  %13 = phi i8* [ %17, %12 ], [ %9, %8 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %15 = tail call i32 @zipRawEntryLength(i8* %13) #9, !dbg !1644
  %16 = zext i32 %15 to i64, !dbg !1646
  %17 = getelementptr inbounds i8, i8* %13, i64 %16, !dbg !1646
  %18 = add i32 %14, 1, !dbg !1647
  %19 = load i8, i8* %17, align 1, !dbg !1641, !tbaa !81
  %20 = icmp eq i8 %19, -1, !dbg !1642
  br i1 %20, label %21, label %12, !dbg !1643, !llvm.loop !1648

; <label>:21:                                     ; preds = %12
  %22 = icmp ult i32 %18, 65535, !dbg !1650
  br i1 %22, label %23, label %26, !dbg !1652

; <label>:23:                                     ; preds = %8, %21
  %24 = phi i32 [ %18, %21 ], [ 0, %8 ]
  %25 = trunc i32 %24 to i16, !dbg !1653
  store i16 %25, i16* %3, align 2, !dbg !1654, !tbaa !337
  br label %26, !dbg !1655

; <label>:26:                                     ; preds = %21, %23, %6
  %27 = phi i32 [ %7, %6 ], [ %24, %23 ], [ %18, %21 ], !dbg !1656
  ret i32 %27, !dbg !1657
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @ziplistBlobLen(i8* nocapture readonly) local_unnamed_addr #5 !dbg !1658 {
  %2 = bitcast i8* %0 to i32*, !dbg !1664
  %3 = load i32, i32* %2, align 4, !dbg !1664, !tbaa !138
  %4 = zext i32 %3 to i64, !dbg !1664
  ret i64 %4, !dbg !1665
}

; Function Attrs: noredzone nounwind
define dso_local void @ziplistRepr(i8*) local_unnamed_addr #0 !dbg !1666 {
  %2 = alloca %struct.zlentry, align 8
  %3 = bitcast %struct.zlentry* %2 to i8*, !dbg !1679
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #8, !dbg !1679
  %4 = bitcast i8* %0 to i32*, !dbg !1680
  %5 = load i32, i32* %4, align 4, !dbg !1680, !tbaa !138
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1681
  %7 = bitcast i8* %6 to i16*, !dbg !1681
  %8 = load i16, i16* %7, align 2, !dbg !1681, !tbaa !337
  %9 = zext i16 %8 to i32, !dbg !1681
  %10 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1682
  %11 = bitcast i8* %10 to i32*, !dbg !1682
  %12 = load i32, i32* %11, align 4, !dbg !1682, !tbaa !138
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %5, i32 %9, i32 %12) #6, !dbg !1683
  %14 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1684
  %15 = load i8, i8* %14, align 1, !dbg !1686, !tbaa !81
  %16 = icmp eq i8 %15, -1, !dbg !1687
  br i1 %16, label %93, label %17, !dbg !1688

; <label>:17:                                     ; preds = %1
  %18 = ptrtoint i8* %0 to i64
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 4
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 3
  %21 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 0
  %23 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 5
  br label %24, !dbg !1688

; <label>:24:                                     ; preds = %17, %85
  %25 = phi i32 [ 0, %17 ], [ %90, %85 ]
  %26 = phi i8* [ %14, %17 ], [ %89, %85 ]
  call void @zipEntry(i8* %26, %struct.zlentry* nonnull %2) #9, !dbg !1690
  %27 = ptrtoint i8* %26 to i64, !dbg !1691
  %28 = sub i64 %27, %18, !dbg !1692
  %29 = load i32, i32* %19, align 8, !dbg !1693, !tbaa !502
  %30 = load i32, i32* %20, align 4, !dbg !1694, !tbaa !498
  %31 = add i32 %30, %29, !dbg !1695
  %32 = load i32, i32* %21, align 4, !dbg !1696, !tbaa !459
  %33 = load i32, i32* %22, align 8, !dbg !1697, !tbaa !452
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.7, i64 0, i64 0), i64 %27, i32 %25, i64 %28, i32 %31, i32 %29, i32 %32, i32 %33, i32 %30) #6, !dbg !1698
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1699
  %36 = load i32, i32* %19, align 8, !dbg !1701, !tbaa !502
  %37 = load i32, i32* %20, align 4, !dbg !1703, !tbaa !498
  %38 = sub i32 0, %36, !dbg !1704
  %39 = icmp eq i32 %37, %38, !dbg !1704
  br i1 %39, label %40, label %47, !dbg !1705

; <label>:40:                                     ; preds = %47, %24
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1706
  %42 = load i32, i32* %19, align 8, !dbg !1707, !tbaa !502
  %43 = zext i32 %42 to i64, !dbg !1708
  %44 = getelementptr inbounds i8, i8* %26, i64 %43, !dbg !1708
  %45 = load i8, i8* %23, align 4, !dbg !1709, !tbaa !468
  %46 = icmp ult i8 %45, -64, !dbg !1709
  br i1 %46, label %59, label %82, !dbg !1711

; <label>:47:                                     ; preds = %24, %47
  %48 = phi i64 [ %53, %47 ], [ 0, %24 ]
  %49 = getelementptr inbounds i8, i8* %26, i64 %48, !dbg !1712
  %50 = load i8, i8* %49, align 1, !dbg !1712, !tbaa !81
  %51 = zext i8 %50 to i32, !dbg !1712
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %51) #6, !dbg !1714
  %53 = add nuw nsw i64 %48, 1, !dbg !1715
  %54 = load i32, i32* %19, align 8, !dbg !1701, !tbaa !502
  %55 = load i32, i32* %20, align 4, !dbg !1703, !tbaa !498
  %56 = add i32 %55, %54, !dbg !1716
  %57 = zext i32 %56 to i64, !dbg !1704
  %58 = icmp ult i64 %53, %57, !dbg !1704
  br i1 %58, label %47, label %40, !dbg !1705, !llvm.loop !1717

; <label>:59:                                     ; preds = %40
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1719
  %61 = load i32, i32* %20, align 4, !dbg !1721, !tbaa !498
  %62 = icmp ugt i32 %61, 40, !dbg !1723
  br i1 %62, label %63, label %72, !dbg !1724

; <label>:63:                                     ; preds = %59
  %64 = call %struct._reent* @__getreent() #6, !dbg !1725
  %65 = getelementptr inbounds %struct._reent, %struct._reent* %64, i64 0, i32 2, !dbg !1725
  %66 = load %struct.__sFILE*, %struct.__sFILE** %65, align 8, !dbg !1725, !tbaa !1728
  %67 = call i64 @fwrite(i8* %44, i64 40, i64 1, %struct.__sFILE* %66) #6, !dbg !1733
  %68 = icmp eq i64 %67, 0, !dbg !1734
  br i1 %68, label %69, label %70, !dbg !1735

; <label>:69:                                     ; preds = %63
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !1736
  br label %70, !dbg !1736

; <label>:70:                                     ; preds = %69, %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1737
  br label %85, !dbg !1738

; <label>:72:                                     ; preds = %59
  %73 = icmp eq i32 %61, 0, !dbg !1739
  br i1 %73, label %85, label %74, !dbg !1742

; <label>:74:                                     ; preds = %72
  %75 = zext i32 %61 to i64, !dbg !1743
  %76 = call %struct._reent* @__getreent() #6, !dbg !1744
  %77 = getelementptr inbounds %struct._reent, %struct._reent* %76, i64 0, i32 2, !dbg !1744
  %78 = load %struct.__sFILE*, %struct.__sFILE** %77, align 8, !dbg !1744, !tbaa !1728
  %79 = call i64 @fwrite(i8* %44, i64 %75, i64 1, %struct.__sFILE* %78) #6, !dbg !1745
  %80 = icmp eq i64 %79, 0, !dbg !1746
  br i1 %80, label %81, label %85, !dbg !1747

; <label>:81:                                     ; preds = %74
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !1748
  br label %85, !dbg !1748

; <label>:82:                                     ; preds = %40
  %83 = call i64 @zipLoadInteger(i8* %44, i8 zeroext %45) #9, !dbg !1749
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %83) #6, !dbg !1751
  br label %85

; <label>:85:                                     ; preds = %72, %70, %81, %74, %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1752
  %87 = load i32, i32* %20, align 4, !dbg !1753, !tbaa !498
  %88 = zext i32 %87 to i64, !dbg !1754
  %89 = getelementptr inbounds i8, i8* %44, i64 %88, !dbg !1754
  %90 = add nuw nsw i32 %25, 1, !dbg !1755
  %91 = load i8, i8* %89, align 1, !dbg !1686, !tbaa !81
  %92 = icmp eq i8 %91, -1, !dbg !1687
  br i1 %92, label %93, label %24, !dbg !1688, !llvm.loop !1756

; <label>:93:                                     ; preds = %85, %1
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1758
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #8, !dbg !1759
  ret void, !dbg !1759
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
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }

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
!201 = !DILocation(line: 467, column: 47, scope: !183)
!202 = !DILocation(line: 467, column: 5, scope: !183)
!203 = distinct !DISubprogram(name: "zipRawEntryLength", scope: !1, file: !1, line: 471, type: !204, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!20, !52}
!206 = !{!207, !208, !209, !210, !211}
!207 = !DILocalVariable(name: "p", arg: 1, scope: !203, file: !1, line: 471, type: !52)
!208 = !DILocalVariable(name: "prevlensize", scope: !203, file: !1, line: 472, type: !20)
!209 = !DILocalVariable(name: "encoding", scope: !203, file: !1, line: 472, type: !20)
!210 = !DILocalVariable(name: "lensize", scope: !203, file: !1, line: 472, type: !20)
!211 = !DILocalVariable(name: "len", scope: !203, file: !1, line: 472, type: !20)
!212 = !DILocation(line: 471, column: 47, scope: !203)
!213 = !DILocation(line: 473, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 473, column: 5)
!215 = distinct !DILexicalBlock(scope: !203, file: !1, line: 473, column: 5)
!216 = !DILocation(line: 473, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 473, column: 5)
!218 = !DILocation(line: 472, column: 18, scope: !203)
!219 = !DILocation(line: 474, column: 5, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 474, column: 5)
!221 = distinct !DILexicalBlock(scope: !203, file: !1, line: 474, column: 5)
!222 = !DILocation(line: 472, column: 31, scope: !203)
!223 = !DILocation(line: 474, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 474, column: 5)
!225 = !DILocation(line: 474, column: 5, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 474, column: 5)
!227 = !DILocation(line: 474, column: 5, scope: !228)
!228 = distinct !DILexicalBlock(scope: !226, file: !1, line: 474, column: 5)
!229 = !DILocation(line: 474, column: 5, scope: !221)
!230 = !DILocation(line: 472, column: 41, scope: !203)
!231 = !DILocation(line: 474, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 474, column: 5)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 474, column: 5)
!234 = !DILocation(line: 472, column: 50, scope: !203)
!235 = !DILocation(line: 474, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 474, column: 5)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 474, column: 5)
!238 = !DILocation(line: 474, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 474, column: 5)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 474, column: 5)
!241 = !DILocation(line: 474, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !240, file: !1, line: 474, column: 5)
!243 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !244)
!244 = distinct !DILocation(line: 474, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !226, file: !1, line: 474, column: 5)
!246 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !244)
!247 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !244)
!248 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !244)
!249 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !244)
!250 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !244)
!251 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !244)
!252 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !244)
!253 = !DILocation(line: 475, column: 24, scope: !203)
!254 = !DILocation(line: 475, column: 34, scope: !203)
!255 = !DILocation(line: 475, column: 5, scope: !203)
!256 = distinct !DISubprogram(name: "zipTryEncoding", scope: !1, file: !1, line: 480, type: !257, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !260)
!257 = !DISubroutineType(types: !258)
!258 = !{!132, !52, !20, !259, !52}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!260 = !{!261, !262, !263, !264, !265}
!261 = !DILocalVariable(name: "entry", arg: 1, scope: !256, file: !1, line: 480, type: !52)
!262 = !DILocalVariable(name: "entrylen", arg: 2, scope: !256, file: !1, line: 480, type: !20)
!263 = !DILocalVariable(name: "v", arg: 3, scope: !256, file: !1, line: 480, type: !259)
!264 = !DILocalVariable(name: "encoding", arg: 4, scope: !256, file: !1, line: 480, type: !52)
!265 = !DILocalVariable(name: "value", scope: !256, file: !1, line: 481, type: !26)
!266 = !DILocation(line: 480, column: 35, scope: !256)
!267 = !DILocation(line: 480, column: 55, scope: !256)
!268 = !DILocation(line: 480, column: 76, scope: !256)
!269 = !DILocation(line: 480, column: 94, scope: !256)
!270 = !DILocation(line: 481, column: 5, scope: !256)
!271 = !DILocation(line: 483, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !256, file: !1, line: 483, column: 9)
!273 = !DILocation(line: 484, column: 32, scope: !274)
!274 = distinct !DILexicalBlock(scope: !256, file: !1, line: 484, column: 9)
!275 = !DILocation(line: 481, column: 15, scope: !256)
!276 = !DILocation(line: 484, column: 9, scope: !274)
!277 = !DILocation(line: 484, column: 9, scope: !256)
!278 = !DILocation(line: 487, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 487, column: 13)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 484, column: 50)
!281 = !{!282, !282, i64 0}
!282 = !{!"long long", !82, i64 0}
!283 = !DILocation(line: 487, column: 24, scope: !279)
!284 = !DILocation(line: 488, column: 25, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !1, line: 487, column: 40)
!286 = !DILocation(line: 489, column: 9, scope: !285)
!287 = !DILocation(line: 489, column: 38, scope: !288)
!288 = distinct !DILexicalBlock(scope: !279, file: !1, line: 489, column: 20)
!289 = !DILocation(line: 491, column: 39, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !1, line: 491, column: 20)
!291 = !DILocation(line: 493, column: 39, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !1, line: 493, column: 20)
!293 = !DILocation(line: 495, column: 39, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 495, column: 20)
!295 = !DILocation(line: 497, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !294, file: !1, line: 495, column: 62)
!297 = !DILocation(line: 0, scope: !285)
!298 = !DILocation(line: 500, column: 12, scope: !280)
!299 = !DILocation(line: 501, column: 9, scope: !280)
!300 = !DILocation(line: 0, scope: !256)
!301 = !DILocation(line: 504, column: 1, scope: !256)
!302 = distinct !DISubprogram(name: "zipSaveInteger", scope: !1, file: !1, line: 507, type: !303, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !308)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !52, !305, !16}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 56, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 103, baseType: !307)
!307 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!308 = !{!309, !310, !311, !312, !316, !319}
!309 = !DILocalVariable(name: "p", arg: 1, scope: !302, file: !1, line: 507, type: !52)
!310 = !DILocalVariable(name: "value", arg: 2, scope: !302, file: !1, line: 507, type: !305)
!311 = !DILocalVariable(name: "encoding", arg: 3, scope: !302, file: !1, line: 507, type: !16)
!312 = !DILocalVariable(name: "i16", scope: !302, file: !1, line: 508, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !8, line: 32, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !10, line: 55, baseType: !315)
!315 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!316 = !DILocalVariable(name: "i32", scope: !302, file: !1, line: 509, type: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 44, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 77, baseType: !132)
!319 = !DILocalVariable(name: "i64", scope: !302, file: !1, line: 510, type: !305)
!320 = !DILocation(line: 507, column: 36, scope: !302)
!321 = !DILocation(line: 507, column: 47, scope: !302)
!322 = !DILocation(line: 507, column: 68, scope: !302)
!323 = !DILocation(line: 508, column: 5, scope: !302)
!324 = !DILocation(line: 509, column: 5, scope: !302)
!325 = !DILocation(line: 510, column: 5, scope: !302)
!326 = !DILocation(line: 511, column: 9, scope: !302)
!327 = !DILocation(line: 512, column: 27, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 511, column: 33)
!329 = distinct !DILexicalBlock(scope: !302, file: !1, line: 511, column: 9)
!330 = !DILocation(line: 512, column: 25, scope: !328)
!331 = !DILocation(line: 513, column: 5, scope: !328)
!332 = !DILocation(line: 514, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 513, column: 41)
!334 = distinct !DILexicalBlock(scope: !329, file: !1, line: 513, column: 16)
!335 = !DILocation(line: 508, column: 13, scope: !302)
!336 = !DILocation(line: 514, column: 13, scope: !333)
!337 = !{!338, !338, i64 0}
!338 = !{!"short", !82, i64 0}
!339 = !DILocation(line: 515, column: 9, scope: !333)
!340 = !DILocation(line: 517, column: 5, scope: !333)
!341 = !DILocation(line: 518, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 517, column: 41)
!343 = distinct !DILexicalBlock(scope: !334, file: !1, line: 517, column: 16)
!344 = !DILocation(line: 509, column: 13, scope: !302)
!345 = !DILocation(line: 518, column: 13, scope: !342)
!346 = !DILocation(line: 520, column: 34, scope: !342)
!347 = !DILocation(line: 520, column: 9, scope: !342)
!348 = !DILocation(line: 521, column: 5, scope: !342)
!349 = !DILocation(line: 522, column: 15, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 521, column: 41)
!351 = distinct !DILexicalBlock(scope: !343, file: !1, line: 521, column: 16)
!352 = !DILocation(line: 522, column: 13, scope: !350)
!353 = !DILocation(line: 523, column: 9, scope: !350)
!354 = !DILocation(line: 525, column: 5, scope: !350)
!355 = !DILocation(line: 510, column: 13, scope: !302)
!356 = !DILocation(line: 526, column: 13, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 525, column: 41)
!358 = distinct !DILexicalBlock(scope: !351, file: !1, line: 525, column: 16)
!359 = !{!360, !360, i64 0}
!360 = !{!"long", !82, i64 0}
!361 = !DILocation(line: 527, column: 9, scope: !357)
!362 = !DILocation(line: 529, column: 5, scope: !357)
!363 = !DILocation(line: 529, column: 44, scope: !364)
!364 = distinct !DILexicalBlock(scope: !358, file: !1, line: 529, column: 16)
!365 = !DILocation(line: 532, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !364, file: !1, line: 531, column: 12)
!367 = !DILocation(line: 534, column: 1, scope: !302)
!368 = distinct !DISubprogram(name: "zipLoadInteger", scope: !1, file: !1, line: 537, type: !369, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!305, !52, !16}
!371 = !{!372, !373, !374, !375, !376, !377}
!372 = !DILocalVariable(name: "p", arg: 1, scope: !368, file: !1, line: 537, type: !52)
!373 = !DILocalVariable(name: "encoding", arg: 2, scope: !368, file: !1, line: 537, type: !16)
!374 = !DILocalVariable(name: "i16", scope: !368, file: !1, line: 538, type: !313)
!375 = !DILocalVariable(name: "i32", scope: !368, file: !1, line: 539, type: !317)
!376 = !DILocalVariable(name: "i64", scope: !368, file: !1, line: 540, type: !305)
!377 = !DILocalVariable(name: "ret", scope: !368, file: !1, line: 540, type: !305)
!378 = !DILocation(line: 537, column: 39, scope: !368)
!379 = !DILocation(line: 537, column: 56, scope: !368)
!380 = !DILocation(line: 538, column: 5, scope: !368)
!381 = !DILocation(line: 539, column: 5, scope: !368)
!382 = !DILocation(line: 540, column: 5, scope: !368)
!383 = !DILocation(line: 540, column: 18, scope: !368)
!384 = !DILocation(line: 541, column: 9, scope: !368)
!385 = !DILocation(line: 542, column: 15, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 541, column: 33)
!387 = distinct !DILexicalBlock(scope: !368, file: !1, line: 541, column: 9)
!388 = !DILocation(line: 543, column: 5, scope: !386)
!389 = !DILocation(line: 544, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 543, column: 41)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 543, column: 16)
!392 = !DILocation(line: 546, column: 15, scope: !390)
!393 = !DILocation(line: 538, column: 13, scope: !368)
!394 = !DILocation(line: 547, column: 5, scope: !390)
!395 = !DILocation(line: 548, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 547, column: 41)
!397 = distinct !DILexicalBlock(scope: !391, file: !1, line: 547, column: 16)
!398 = !DILocation(line: 550, column: 15, scope: !396)
!399 = !DILocation(line: 539, column: 13, scope: !368)
!400 = !DILocation(line: 551, column: 5, scope: !396)
!401 = !DILocation(line: 552, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 551, column: 41)
!403 = distinct !DILexicalBlock(scope: !397, file: !1, line: 551, column: 16)
!404 = !DILocation(line: 553, column: 32, scope: !402)
!405 = !DILocation(line: 553, column: 9, scope: !402)
!406 = !DILocation(line: 555, column: 15, scope: !402)
!407 = !DILocation(line: 555, column: 18, scope: !402)
!408 = !DILocation(line: 556, column: 5, scope: !402)
!409 = !DILocation(line: 557, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 556, column: 41)
!411 = distinct !DILexicalBlock(scope: !403, file: !1, line: 556, column: 16)
!412 = !DILocation(line: 559, column: 15, scope: !410)
!413 = !DILocation(line: 540, column: 13, scope: !368)
!414 = !DILocation(line: 560, column: 5, scope: !410)
!415 = !DILocation(line: 560, column: 44, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 560, column: 16)
!417 = !DILocation(line: 561, column: 25, scope: !418)
!418 = distinct !DILexicalBlock(scope: !416, file: !1, line: 560, column: 76)
!419 = !DILocation(line: 561, column: 44, scope: !418)
!420 = !DILocation(line: 563, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 562, column: 12)
!422 = !DILocation(line: 0, scope: !418)
!423 = !DILocation(line: 566, column: 1, scope: !368)
!424 = !DILocation(line: 565, column: 5, scope: !368)
!425 = distinct !DISubprogram(name: "zipEntry", scope: !1, file: !1, line: 569, type: !426, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !439)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !52, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlentry", file: !1, line: 289, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlentry", file: !1, line: 271, size: 256, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlensize", scope: !430, file: !1, line: 272, baseType: !20, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlen", scope: !430, file: !1, line: 273, baseType: !20, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lensize", scope: !430, file: !1, line: 274, baseType: !20, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !1, line: 277, baseType: !20, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !430, file: !1, line: 282, baseType: !20, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !430, file: !1, line: 283, baseType: !16, size: 8, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !430, file: !1, line: 287, baseType: !52, size: 64, offset: 192)
!439 = !{!440, !441}
!440 = !DILocalVariable(name: "p", arg: 1, scope: !425, file: !1, line: 569, type: !52)
!441 = !DILocalVariable(name: "e", arg: 2, scope: !425, file: !1, line: 569, type: !428)
!442 = !DILocation(line: 569, column: 30, scope: !425)
!443 = !DILocation(line: 569, column: 42, scope: !425)
!444 = !DILocation(line: 571, column: 5, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 571, column: 5)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 571, column: 5)
!447 = distinct !DILexicalBlock(scope: !425, file: !1, line: 571, column: 5)
!448 = !DILocation(line: 571, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !1, line: 571, column: 5)
!450 = !DILocation(line: 571, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !1, line: 571, column: 5)
!452 = !{!453, !139, i64 0}
!453 = !{!"zlentry", !139, i64 0, !139, i64 4, !139, i64 8, !139, i64 12, !139, i64 16, !82, i64 20, !454, i64 24}
!454 = !{!"any pointer", !82, i64 0}
!455 = !DILocation(line: 571, column: 5, scope: !447)
!456 = !DILocation(line: 571, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 571, column: 5)
!458 = distinct !DILexicalBlock(scope: !447, file: !1, line: 571, column: 5)
!459 = !{!453, !139, i64 4}
!460 = !DILocation(line: 571, column: 5, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 571, column: 5)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 571, column: 5)
!463 = !DILocation(line: 572, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 572, column: 5)
!465 = distinct !DILexicalBlock(scope: !425, file: !1, line: 572, column: 5)
!466 = !DILocation(line: 572, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 572, column: 5)
!468 = !{!453, !82, i64 20}
!469 = !DILocation(line: 572, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !1, line: 572, column: 5)
!471 = !DILocation(line: 572, column: 5, scope: !465)
!472 = !DILocation(line: 572, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !1, line: 572, column: 5)
!474 = !DILocation(line: 572, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 572, column: 5)
!476 = distinct !DILexicalBlock(scope: !473, file: !1, line: 572, column: 5)
!477 = !{!453, !139, i64 8}
!478 = !DILocation(line: 572, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 572, column: 5)
!480 = distinct !DILexicalBlock(scope: !476, file: !1, line: 572, column: 5)
!481 = !DILocation(line: 572, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 572, column: 5)
!483 = distinct !DILexicalBlock(scope: !480, file: !1, line: 572, column: 5)
!484 = !DILocation(line: 572, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !1, line: 572, column: 5)
!486 = !DILocation(line: 572, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !470, file: !1, line: 572, column: 5)
!488 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !489)
!489 = distinct !DILocation(line: 572, column: 5, scope: !487)
!490 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !489)
!491 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !489)
!492 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !489)
!493 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !489)
!494 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !489)
!495 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !489)
!496 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !489)
!497 = !DILocation(line: 573, column: 44, scope: !425)
!498 = !{!453, !139, i64 12}
!499 = !DILocation(line: 573, column: 39, scope: !425)
!500 = !DILocation(line: 573, column: 8, scope: !425)
!501 = !DILocation(line: 573, column: 19, scope: !425)
!502 = !{!453, !139, i64 16}
!503 = !DILocation(line: 574, column: 8, scope: !425)
!504 = !DILocation(line: 574, column: 10, scope: !425)
!505 = !{!453, !454, i64 24}
!506 = !DILocation(line: 575, column: 1, scope: !425)
!507 = distinct !DISubprogram(name: "ziplistNew", scope: !1, file: !1, line: 578, type: !508, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!52}
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "bytes", scope: !507, file: !1, line: 579, type: !20)
!512 = !DILocalVariable(name: "zl", scope: !507, file: !1, line: 580, type: !52)
!513 = !DILocation(line: 579, column: 18, scope: !507)
!514 = !DILocation(line: 580, column: 25, scope: !507)
!515 = !DILocation(line: 580, column: 20, scope: !507)
!516 = !DILocation(line: 581, column: 5, scope: !507)
!517 = !DILocation(line: 581, column: 23, scope: !507)
!518 = !DILocation(line: 582, column: 5, scope: !507)
!519 = !DILocation(line: 582, column: 29, scope: !507)
!520 = !DILocation(line: 583, column: 5, scope: !507)
!521 = !DILocation(line: 583, column: 24, scope: !507)
!522 = !DILocation(line: 584, column: 5, scope: !507)
!523 = !DILocation(line: 584, column: 17, scope: !507)
!524 = !DILocation(line: 585, column: 5, scope: !507)
!525 = distinct !DISubprogram(name: "ziplistResize", scope: !1, file: !1, line: 589, type: !526, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!52, !52, !20}
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "zl", arg: 1, scope: !525, file: !1, line: 589, type: !52)
!530 = !DILocalVariable(name: "len", arg: 2, scope: !525, file: !1, line: 589, type: !20)
!531 = !DILocation(line: 589, column: 45, scope: !525)
!532 = !DILocation(line: 589, column: 62, scope: !525)
!533 = !DILocation(line: 590, column: 22, scope: !525)
!534 = !DILocation(line: 590, column: 10, scope: !525)
!535 = !DILocation(line: 591, column: 5, scope: !525)
!536 = !DILocation(line: 591, column: 23, scope: !525)
!537 = !DILocation(line: 592, column: 11, scope: !525)
!538 = !DILocation(line: 592, column: 5, scope: !525)
!539 = !DILocation(line: 592, column: 15, scope: !525)
!540 = !DILocation(line: 593, column: 5, scope: !525)
!541 = distinct !DISubprogram(name: "__ziplistCascadeUpdate", scope: !1, file: !1, line: 616, type: !542, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!52, !52, !52}
!544 = !{!545, !546, !547, !552, !553, !554, !555, !556, !557, !558, !559}
!545 = !DILocalVariable(name: "zl", arg: 1, scope: !541, file: !1, line: 616, type: !52)
!546 = !DILocalVariable(name: "p", arg: 2, scope: !541, file: !1, line: 616, type: !52)
!547 = !DILocalVariable(name: "curlen", scope: !541, file: !1, line: 617, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !549, line: 40, baseType: !550)
!549 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !551, line: 129, baseType: !25)
!551 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!552 = !DILocalVariable(name: "rawlen", scope: !541, file: !1, line: 617, type: !548)
!553 = !DILocalVariable(name: "rawlensize", scope: !541, file: !1, line: 617, type: !548)
!554 = !DILocalVariable(name: "offset", scope: !541, file: !1, line: 618, type: !548)
!555 = !DILocalVariable(name: "noffset", scope: !541, file: !1, line: 618, type: !548)
!556 = !DILocalVariable(name: "extra", scope: !541, file: !1, line: 618, type: !548)
!557 = !DILocalVariable(name: "np", scope: !541, file: !1, line: 619, type: !52)
!558 = !DILocalVariable(name: "cur", scope: !541, file: !1, line: 620, type: !429)
!559 = !DILocalVariable(name: "next", scope: !541, file: !1, line: 620, type: !429)
!560 = !DILocation(line: 616, column: 54, scope: !541)
!561 = !DILocation(line: 616, column: 73, scope: !541)
!562 = !DILocation(line: 617, column: 21, scope: !541)
!563 = !DILocation(line: 620, column: 5, scope: !541)
!564 = !DILocation(line: 622, column: 12, scope: !541)
!565 = !DILocation(line: 622, column: 17, scope: !541)
!566 = !DILocation(line: 622, column: 5, scope: !541)
!567 = !DILocation(line: 617, column: 12, scope: !541)
!568 = !DILocation(line: 620, column: 13, scope: !541)
!569 = !DILocation(line: 623, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !541, file: !1, line: 622, column: 29)
!571 = !DILocation(line: 624, column: 22, scope: !570)
!572 = !DILocation(line: 624, column: 39, scope: !570)
!573 = !DILocation(line: 624, column: 33, scope: !570)
!574 = !DILocation(line: 624, column: 18, scope: !570)
!575 = !DILocation(line: 617, column: 54, scope: !541)
!576 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !577)
!577 = distinct !DILocation(line: 625, column: 22, scope: !570)
!578 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !577)
!579 = !DILocation(line: 0, scope: !161, inlinedAt: !577)
!580 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !577)
!581 = !DILocation(line: 625, column: 22, scope: !570)
!582 = !DILocation(line: 617, column: 62, scope: !541)
!583 = !DILocation(line: 628, column: 13, scope: !584)
!584 = distinct !DILexicalBlock(scope: !570, file: !1, line: 628, column: 13)
!585 = !DILocation(line: 628, column: 23, scope: !584)
!586 = !DILocation(line: 628, column: 13, scope: !570)
!587 = !DILocation(line: 620, column: 18, scope: !541)
!588 = !DILocation(line: 629, column: 9, scope: !570)
!589 = !DILocation(line: 632, column: 18, scope: !590)
!590 = distinct !DILexicalBlock(scope: !570, file: !1, line: 632, column: 13)
!591 = !DILocation(line: 632, column: 29, scope: !590)
!592 = !DILocation(line: 632, column: 13, scope: !570)
!593 = !DILocation(line: 634, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !570, file: !1, line: 634, column: 13)
!595 = !DILocation(line: 634, column: 33, scope: !594)
!596 = !DILocation(line: 634, column: 13, scope: !570)
!597 = !DILocation(line: 634, column: 13, scope: !594)
!598 = !DILocation(line: 637, column: 23, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !1, line: 634, column: 47)
!600 = !DILocation(line: 618, column: 12, scope: !541)
!601 = !DILocation(line: 638, column: 31, scope: !599)
!602 = !DILocation(line: 618, column: 29, scope: !541)
!603 = !DILocation(line: 639, column: 41, scope: !599)
!604 = !DILocation(line: 639, column: 35, scope: !599)
!605 = !DILocation(line: 589, column: 45, scope: !525, inlinedAt: !606)
!606 = distinct !DILocation(line: 639, column: 18, scope: !599)
!607 = !DILocation(line: 589, column: 62, scope: !525, inlinedAt: !606)
!608 = !DILocation(line: 590, column: 22, scope: !525, inlinedAt: !606)
!609 = !DILocation(line: 590, column: 10, scope: !525, inlinedAt: !606)
!610 = !DILocation(line: 591, column: 5, scope: !525, inlinedAt: !606)
!611 = !DILocation(line: 591, column: 23, scope: !525, inlinedAt: !606)
!612 = !DILocation(line: 592, column: 11, scope: !525, inlinedAt: !606)
!613 = !DILocation(line: 592, column: 5, scope: !525, inlinedAt: !606)
!614 = !DILocation(line: 592, column: 15, scope: !525, inlinedAt: !606)
!615 = !DILocation(line: 640, column: 19, scope: !599)
!616 = !DILocation(line: 643, column: 19, scope: !599)
!617 = !DILocation(line: 619, column: 20, scope: !541)
!618 = !DILocation(line: 644, column: 25, scope: !599)
!619 = !DILocation(line: 647, column: 21, scope: !620)
!620 = distinct !DILexicalBlock(scope: !599, file: !1, line: 647, column: 17)
!621 = !DILocation(line: 647, column: 20, scope: !620)
!622 = !DILocation(line: 647, column: 60, scope: !620)
!623 = !DILocation(line: 647, column: 17, scope: !599)
!624 = !DILocation(line: 649, column: 21, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !1, line: 647, column: 67)
!626 = !DILocation(line: 648, column: 41, scope: !625)
!627 = !DILocation(line: 650, column: 13, scope: !625)
!628 = !DILocation(line: 653, column: 23, scope: !599)
!629 = !DILocation(line: 654, column: 25, scope: !599)
!630 = !DILocation(line: 654, column: 19, scope: !599)
!631 = !DILocation(line: 655, column: 51, scope: !599)
!632 = !DILocation(line: 655, column: 23, scope: !599)
!633 = !DILocation(line: 653, column: 13, scope: !599)
!634 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !635)
!635 = distinct !DILocation(line: 656, column: 13, scope: !599)
!636 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !635)
!637 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !635)
!638 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !635)
!639 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !635)
!640 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !635)
!641 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !635)
!642 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !635)
!643 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !644)
!644 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !635)
!645 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !644)
!646 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !644)
!647 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !644)
!648 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !644)
!649 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !644)
!650 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !635)
!651 = distinct !{!651, !566, !652}
!652 = !DILocation(line: 673, column: 5, scope: !541)
!653 = !DILocation(line: 662, column: 37, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 662, column: 17)
!655 = distinct !DILexicalBlock(scope: !594, file: !1, line: 661, column: 16)
!656 = !DILocation(line: 662, column: 17, scope: !655)
!657 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !658)
!658 = distinct !DILocation(line: 665, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !1, line: 662, column: 51)
!660 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !658)
!661 = !DILocation(line: 398, column: 11, scope: !141, inlinedAt: !658)
!662 = !DILocation(line: 398, column: 9, scope: !129, inlinedAt: !658)
!663 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !658)
!664 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !658)
!665 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !658)
!666 = !DILocation(line: 402, column: 5, scope: !144, inlinedAt: !658)
!667 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !658)
!668 = !DILocation(line: 666, column: 13, scope: !659)
!669 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !670)
!670 = distinct !DILocation(line: 667, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !654, file: !1, line: 666, column: 20)
!672 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !670)
!673 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !670)
!674 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !670)
!675 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !670)
!676 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !670)
!677 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !670)
!678 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !670)
!679 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !680)
!680 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !670)
!681 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !680)
!682 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !680)
!683 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !680)
!684 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !680)
!685 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !680)
!686 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !670)
!687 = !DILocation(line: 675, column: 1, scope: !541)
!688 = !DILocation(line: 674, column: 5, scope: !541)
!689 = distinct !DISubprogram(name: "__ziplistDelete", scope: !1, file: !1, line: 678, type: !690, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!52, !52, !52, !20}
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!693 = !DILocalVariable(name: "zl", arg: 1, scope: !689, file: !1, line: 678, type: !52)
!694 = !DILocalVariable(name: "p", arg: 2, scope: !689, file: !1, line: 678, type: !52)
!695 = !DILocalVariable(name: "num", arg: 3, scope: !689, file: !1, line: 678, type: !20)
!696 = !DILocalVariable(name: "i", scope: !689, file: !1, line: 679, type: !20)
!697 = !DILocalVariable(name: "totlen", scope: !689, file: !1, line: 679, type: !20)
!698 = !DILocalVariable(name: "deleted", scope: !689, file: !1, line: 679, type: !20)
!699 = !DILocalVariable(name: "offset", scope: !689, file: !1, line: 680, type: !548)
!700 = !DILocalVariable(name: "nextdiff", scope: !689, file: !1, line: 681, type: !132)
!701 = !DILocalVariable(name: "first", scope: !689, file: !1, line: 682, type: !429)
!702 = !DILocalVariable(name: "tail", scope: !689, file: !1, line: 682, type: !429)
!703 = !DILocation(line: 678, column: 47, scope: !689)
!704 = !DILocation(line: 678, column: 66, scope: !689)
!705 = !DILocation(line: 678, column: 82, scope: !689)
!706 = !DILocation(line: 679, column: 29, scope: !689)
!707 = !DILocation(line: 681, column: 9, scope: !689)
!708 = !DILocation(line: 682, column: 5, scope: !689)
!709 = !DILocation(line: 682, column: 13, scope: !689)
!710 = !DILocation(line: 684, column: 5, scope: !689)
!711 = !DILocation(line: 679, column: 18, scope: !689)
!712 = !DILocation(line: 685, column: 17, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 685, column: 5)
!714 = distinct !DILexicalBlock(scope: !689, file: !1, line: 685, column: 5)
!715 = !DILocation(line: 685, column: 22, scope: !713)
!716 = !DILocation(line: 685, column: 38, scope: !713)
!717 = !DILocation(line: 685, column: 33, scope: !713)
!718 = !DILocation(line: 685, column: 5, scope: !714)
!719 = !DILocation(line: 686, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !713, file: !1, line: 685, column: 50)
!721 = !DILocation(line: 686, column: 11, scope: !720)
!722 = !DILocation(line: 687, column: 16, scope: !720)
!723 = distinct !{!723, !718, !724}
!724 = !DILocation(line: 688, column: 5, scope: !714)
!725 = !DILocation(line: 690, column: 22, scope: !689)
!726 = !DILocation(line: 690, column: 15, scope: !689)
!727 = !DILocation(line: 690, column: 14, scope: !689)
!728 = !DILocation(line: 679, column: 21, scope: !689)
!729 = !DILocation(line: 691, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !689, file: !1, line: 691, column: 9)
!731 = !DILocation(line: 691, column: 9, scope: !689)
!732 = !DILocation(line: 692, column: 13, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 691, column: 21)
!734 = !DILocation(line: 697, column: 51, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 692, column: 30)
!736 = distinct !DILexicalBlock(scope: !733, file: !1, line: 692, column: 13)
!737 = !DILocation(line: 464, column: 39, scope: !183, inlinedAt: !738)
!738 = distinct !DILocation(line: 697, column: 24, scope: !735)
!739 = !DILocation(line: 464, column: 55, scope: !183, inlinedAt: !738)
!740 = !DILocation(line: 466, column: 5, scope: !191, inlinedAt: !738)
!741 = !DILocation(line: 466, column: 5, scope: !194, inlinedAt: !738)
!742 = !DILocation(line: 465, column: 18, scope: !183, inlinedAt: !738)
!743 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !744)
!744 = distinct !DILocation(line: 467, column: 12, scope: !183, inlinedAt: !738)
!745 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !744)
!746 = !DILocation(line: 0, scope: !161, inlinedAt: !744)
!747 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !744)
!748 = !DILocation(line: 467, column: 47, scope: !183, inlinedAt: !738)
!749 = !DILocation(line: 703, column: 15, scope: !735)
!750 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !751)
!751 = distinct !DILocation(line: 704, column: 13, scope: !735)
!752 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !751)
!753 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !751)
!754 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !751)
!755 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !751)
!756 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !751)
!757 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !751)
!758 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !751)
!759 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !760)
!760 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !751)
!761 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !760)
!762 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !760)
!763 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !760)
!764 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !760)
!765 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !760)
!766 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !751)
!767 = !DILocation(line: 708, column: 17, scope: !735)
!768 = !DILocation(line: 707, column: 37, scope: !735)
!769 = !DILocation(line: 682, column: 20, scope: !689)
!770 = !DILocation(line: 713, column: 13, scope: !735)
!771 = !DILocation(line: 714, column: 24, scope: !772)
!772 = distinct !DILexicalBlock(scope: !735, file: !1, line: 714, column: 17)
!773 = !DILocation(line: 714, column: 40, scope: !772)
!774 = !DILocation(line: 714, column: 34, scope: !772)
!775 = !DILocation(line: 714, column: 17, scope: !772)
!776 = !DILocation(line: 714, column: 45, scope: !772)
!777 = !DILocation(line: 714, column: 17, scope: !735)
!778 = !DILocation(line: 716, column: 20, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !1, line: 714, column: 57)
!780 = !DILocation(line: 715, column: 41, scope: !779)
!781 = !DILocation(line: 717, column: 13, scope: !779)
!782 = !DILocation(line: 720, column: 27, scope: !735)
!783 = !DILocation(line: 721, column: 17, scope: !735)
!784 = !DILocation(line: 721, column: 51, scope: !735)
!785 = !DILocation(line: 721, column: 48, scope: !735)
!786 = !DILocation(line: 721, column: 55, scope: !735)
!787 = !DILocation(line: 720, column: 13, scope: !735)
!788 = !DILocation(line: 729, column: 24, scope: !733)
!789 = !DILocation(line: 729, column: 25, scope: !733)
!790 = !DILocation(line: 722, column: 9, scope: !735)
!791 = !DILocation(line: 725, column: 17, scope: !792)
!792 = distinct !DILexicalBlock(scope: !736, file: !1, line: 722, column: 16)
!793 = !DILocation(line: 724, column: 13, scope: !792)
!794 = !DILocation(line: 724, column: 37, scope: !792)
!795 = !DILocation(line: 730, column: 32, scope: !733)
!796 = !DILocation(line: 0, scope: !689)
!797 = !DILocation(line: 680, column: 12, scope: !689)
!798 = !DILocation(line: 730, column: 63, scope: !733)
!799 = !DILocation(line: 730, column: 70, scope: !733)
!800 = !DILocation(line: 589, column: 45, scope: !525, inlinedAt: !801)
!801 = distinct !DILocation(line: 730, column: 14, scope: !733)
!802 = !DILocation(line: 589, column: 62, scope: !525, inlinedAt: !801)
!803 = !DILocation(line: 590, column: 22, scope: !525, inlinedAt: !801)
!804 = !DILocation(line: 590, column: 10, scope: !525, inlinedAt: !801)
!805 = !DILocation(line: 591, column: 5, scope: !525, inlinedAt: !801)
!806 = !DILocation(line: 591, column: 23, scope: !525, inlinedAt: !801)
!807 = !DILocation(line: 592, column: 11, scope: !525, inlinedAt: !801)
!808 = !DILocation(line: 592, column: 5, scope: !525, inlinedAt: !801)
!809 = !DILocation(line: 592, column: 15, scope: !525, inlinedAt: !801)
!810 = !DILocation(line: 731, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 731, column: 9)
!812 = distinct !DILexicalBlock(scope: !733, file: !1, line: 731, column: 9)
!813 = !DILocation(line: 731, column: 9, scope: !812)
!814 = !DILocation(line: 736, column: 22, scope: !815)
!815 = distinct !DILexicalBlock(scope: !733, file: !1, line: 736, column: 13)
!816 = !DILocation(line: 736, column: 13, scope: !733)
!817 = !DILocation(line: 732, column: 15, scope: !733)
!818 = !DILocation(line: 737, column: 18, scope: !815)
!819 = !DILocation(line: 737, column: 13, scope: !815)
!820 = !DILocation(line: 740, column: 1, scope: !689)
!821 = !DILocation(line: 739, column: 5, scope: !689)
!822 = distinct !DISubprogram(name: "__ziplistInsert", scope: !1, file: !1, line: 743, type: !823, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!52, !52, !52, !52, !20}
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !842}
!826 = !DILocalVariable(name: "zl", arg: 1, scope: !822, file: !1, line: 743, type: !52)
!827 = !DILocalVariable(name: "p", arg: 2, scope: !822, file: !1, line: 743, type: !52)
!828 = !DILocalVariable(name: "s", arg: 3, scope: !822, file: !1, line: 743, type: !52)
!829 = !DILocalVariable(name: "slen", arg: 4, scope: !822, file: !1, line: 743, type: !20)
!830 = !DILocalVariable(name: "curlen", scope: !822, file: !1, line: 744, type: !548)
!831 = !DILocalVariable(name: "reqlen", scope: !822, file: !1, line: 744, type: !548)
!832 = !DILocalVariable(name: "prevlensize", scope: !822, file: !1, line: 745, type: !20)
!833 = !DILocalVariable(name: "prevlen", scope: !822, file: !1, line: 745, type: !20)
!834 = !DILocalVariable(name: "offset", scope: !822, file: !1, line: 746, type: !548)
!835 = !DILocalVariable(name: "nextdiff", scope: !822, file: !1, line: 747, type: !132)
!836 = !DILocalVariable(name: "encoding", scope: !822, file: !1, line: 748, type: !16)
!837 = !DILocalVariable(name: "value", scope: !822, file: !1, line: 749, type: !26)
!838 = !DILocalVariable(name: "tail", scope: !822, file: !1, line: 752, type: !429)
!839 = !DILocalVariable(name: "ptail", scope: !840, file: !1, line: 758, type: !52)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 757, column: 12)
!841 = distinct !DILexicalBlock(scope: !822, file: !1, line: 755, column: 9)
!842 = !DILocalVariable(name: "forcelarge", scope: !822, file: !1, line: 781, type: !132)
!843 = !DILocation(line: 333, column: 28, scope: !49, inlinedAt: !844)
!844 = distinct !DILocation(line: 831, column: 10, scope: !822)
!845 = !DILocation(line: 333, column: 28, scope: !49, inlinedAt: !846)
!846 = distinct !DILocation(line: 776, column: 15, scope: !822)
!847 = !DILocation(line: 743, column: 47, scope: !822)
!848 = !DILocation(line: 743, column: 66, scope: !822)
!849 = !DILocation(line: 743, column: 84, scope: !822)
!850 = !DILocation(line: 743, column: 100, scope: !822)
!851 = !DILocation(line: 744, column: 21, scope: !822)
!852 = !DILocation(line: 744, column: 12, scope: !822)
!853 = !DILocation(line: 745, column: 5, scope: !822)
!854 = !DILocation(line: 745, column: 31, scope: !822)
!855 = !DILocation(line: 747, column: 9, scope: !822)
!856 = !DILocation(line: 748, column: 19, scope: !822)
!857 = !DILocation(line: 749, column: 15, scope: !822)
!858 = !DILocation(line: 752, column: 5, scope: !822)
!859 = !DILocation(line: 755, column: 9, scope: !841)
!860 = !DILocation(line: 755, column: 9, scope: !822)
!861 = !DILocation(line: 745, column: 18, scope: !822)
!862 = !DILocation(line: 756, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 756, column: 9)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 756, column: 9)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 756, column: 9)
!866 = distinct !DILexicalBlock(scope: !841, file: !1, line: 755, column: 26)
!867 = !DILocation(line: 756, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !1, line: 756, column: 9)
!869 = distinct !DILexicalBlock(scope: !864, file: !1, line: 756, column: 9)
!870 = !DILocation(line: 758, column: 32, scope: !840)
!871 = !DILocation(line: 758, column: 24, scope: !840)
!872 = !DILocation(line: 759, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !840, file: !1, line: 759, column: 13)
!874 = !DILocation(line: 759, column: 22, scope: !873)
!875 = !DILocation(line: 759, column: 13, scope: !840)
!876 = !DILocation(line: 760, column: 23, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !1, line: 759, column: 34)
!878 = !DILocation(line: 760, column: 21, scope: !877)
!879 = !DILocation(line: 761, column: 9, scope: !877)
!880 = !DILocation(line: 480, column: 35, scope: !256, inlinedAt: !881)
!881 = distinct !DILocation(line: 765, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !822, file: !1, line: 765, column: 9)
!883 = !DILocation(line: 480, column: 55, scope: !256, inlinedAt: !881)
!884 = !DILocation(line: 481, column: 5, scope: !256, inlinedAt: !881)
!885 = !DILocation(line: 483, column: 24, scope: !272, inlinedAt: !881)
!886 = !DILocation(line: 481, column: 15, scope: !256, inlinedAt: !881)
!887 = !DILocation(line: 484, column: 9, scope: !274, inlinedAt: !881)
!888 = !DILocation(line: 484, column: 9, scope: !256, inlinedAt: !881)
!889 = !DILocation(line: 487, column: 13, scope: !279, inlinedAt: !881)
!890 = !DILocation(line: 487, column: 24, scope: !279, inlinedAt: !881)
!891 = !DILocation(line: 489, column: 38, scope: !288, inlinedAt: !881)
!892 = !DILocation(line: 504, column: 1, scope: !256, inlinedAt: !881)
!893 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !894)
!894 = distinct !DILocation(line: 767, column: 18, scope: !895)
!895 = distinct !DILexicalBlock(scope: !882, file: !1, line: 765, column: 50)
!896 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !894)
!897 = !DILocation(line: 491, column: 39, scope: !290, inlinedAt: !881)
!898 = !DILocation(line: 493, column: 39, scope: !292, inlinedAt: !881)
!899 = !DILocation(line: 495, column: 39, scope: !294, inlinedAt: !881)
!900 = !DILocation(line: 488, column: 25, scope: !285, inlinedAt: !881)
!901 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !894)
!902 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !894)
!903 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !894)
!904 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !894)
!905 = !DILocation(line: 744, column: 54, scope: !822)
!906 = !DILocation(line: 775, column: 44, scope: !822)
!907 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !908)
!908 = distinct !DILocation(line: 775, column: 15, scope: !822)
!909 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !908)
!910 = !DILocation(line: 0, scope: !161, inlinedAt: !908)
!911 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !908)
!912 = !DILocation(line: 332, column: 51, scope: !49, inlinedAt: !846)
!913 = !DILocation(line: 332, column: 68, scope: !49, inlinedAt: !846)
!914 = !DILocation(line: 332, column: 91, scope: !49, inlinedAt: !846)
!915 = !DILocation(line: 333, column: 19, scope: !49, inlinedAt: !846)
!916 = !DILocation(line: 333, column: 5, scope: !49, inlinedAt: !846)
!917 = !DILocation(line: 335, column: 9, scope: !69, inlinedAt: !846)
!918 = !DILocation(line: 335, column: 9, scope: !49, inlinedAt: !846)
!919 = !DILocation(line: 338, column: 20, scope: !72, inlinedAt: !846)
!920 = !DILocation(line: 341, column: 27, scope: !86, inlinedAt: !846)
!921 = !DILocation(line: 341, column: 20, scope: !72, inlinedAt: !846)
!922 = !DILocation(line: 364, column: 1, scope: !49, inlinedAt: !846)
!923 = !DILocation(line: 776, column: 15, scope: !822)
!924 = !DILocation(line: 775, column: 12, scope: !822)
!925 = !DILocation(line: 776, column: 12, scope: !822)
!926 = !DILocation(line: 781, column: 9, scope: !822)
!927 = !DILocation(line: 782, column: 17, scope: !822)
!928 = !DILocation(line: 782, column: 22, scope: !822)
!929 = !DILocation(line: 0, scope: !822)
!930 = !DILocation(line: 782, column: 16, scope: !822)
!931 = !DILocation(line: 464, column: 39, scope: !183, inlinedAt: !932)
!932 = distinct !DILocation(line: 782, column: 36, scope: !822)
!933 = !DILocation(line: 464, column: 55, scope: !183, inlinedAt: !932)
!934 = !DILocation(line: 466, column: 5, scope: !191, inlinedAt: !932)
!935 = !DILocation(line: 466, column: 5, scope: !194, inlinedAt: !932)
!936 = !DILocation(line: 465, column: 18, scope: !183, inlinedAt: !932)
!937 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !938)
!938 = distinct !DILocation(line: 467, column: 12, scope: !183, inlinedAt: !932)
!939 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !938)
!940 = !DILocation(line: 0, scope: !161, inlinedAt: !938)
!941 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !938)
!942 = !DILocation(line: 467, column: 47, scope: !183, inlinedAt: !932)
!943 = !DILocation(line: 783, column: 18, scope: !944)
!944 = distinct !DILexicalBlock(scope: !822, file: !1, line: 783, column: 9)
!945 = !DILocation(line: 783, column: 34, scope: !944)
!946 = !DILocation(line: 783, column: 24, scope: !944)
!947 = !DILocation(line: 789, column: 15, scope: !822)
!948 = !DILocation(line: 746, column: 12, scope: !822)
!949 = !DILocation(line: 790, column: 41, scope: !822)
!950 = !DILocation(line: 790, column: 27, scope: !822)
!951 = !DILocation(line: 589, column: 45, scope: !525, inlinedAt: !952)
!952 = distinct !DILocation(line: 790, column: 10, scope: !822)
!953 = !DILocation(line: 589, column: 62, scope: !525, inlinedAt: !952)
!954 = !DILocation(line: 590, column: 22, scope: !525, inlinedAt: !952)
!955 = !DILocation(line: 590, column: 10, scope: !525, inlinedAt: !952)
!956 = !DILocation(line: 591, column: 5, scope: !525, inlinedAt: !952)
!957 = !DILocation(line: 591, column: 23, scope: !525, inlinedAt: !952)
!958 = !DILocation(line: 592, column: 11, scope: !525, inlinedAt: !952)
!959 = !DILocation(line: 592, column: 5, scope: !525, inlinedAt: !952)
!960 = !DILocation(line: 592, column: 15, scope: !525, inlinedAt: !952)
!961 = !DILocation(line: 791, column: 11, scope: !822)
!962 = !DILocation(line: 794, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !822, file: !1, line: 794, column: 9)
!964 = !DILocation(line: 794, column: 14, scope: !963)
!965 = !DILocation(line: 794, column: 9, scope: !822)
!966 = !DILocation(line: 796, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !1, line: 794, column: 26)
!968 = !DILocation(line: 796, column: 27, scope: !967)
!969 = !DILocation(line: 796, column: 50, scope: !967)
!970 = !DILocation(line: 796, column: 52, scope: !967)
!971 = !DILocation(line: 796, column: 9, scope: !967)
!972 = !DILocation(line: 799, column: 13, scope: !967)
!973 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !974)
!974 = distinct !DILocation(line: 800, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !967, file: !1, line: 799, column: 13)
!976 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !974)
!977 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !974)
!978 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !974)
!979 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !974)
!980 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !974)
!981 = !DILocation(line: 800, column: 13, scope: !975)
!982 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !983)
!983 = distinct !DILocation(line: 802, column: 13, scope: !975)
!984 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !983)
!985 = !DILocation(line: 0, scope: !161, inlinedAt: !983)
!986 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !983)
!987 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !983)
!988 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !983)
!989 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !983)
!990 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !991)
!991 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !983)
!992 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !991)
!993 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !991)
!994 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !991)
!995 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !991)
!996 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !991)
!997 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !983)
!998 = !DILocation(line: 806, column: 13, scope: !967)
!999 = !DILocation(line: 805, column: 33, scope: !967)
!1000 = !DILocation(line: 752, column: 13, scope: !822)
!1001 = !DILocation(line: 811, column: 9, scope: !967)
!1002 = !DILocation(line: 812, column: 27, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !967, file: !1, line: 812, column: 13)
!1004 = !DILocation(line: 812, column: 22, scope: !1003)
!1005 = !DILocation(line: 812, column: 21, scope: !1003)
!1006 = !DILocation(line: 812, column: 43, scope: !1003)
!1007 = !DILocation(line: 812, column: 38, scope: !1003)
!1008 = !DILocation(line: 812, column: 37, scope: !1003)
!1009 = !DILocation(line: 812, column: 13, scope: !1003)
!1010 = !DILocation(line: 812, column: 48, scope: !1003)
!1011 = !DILocation(line: 812, column: 13, scope: !967)
!1012 = !DILocation(line: 814, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 812, column: 60)
!1014 = !DILocation(line: 813, column: 37, scope: !1013)
!1015 = !DILocation(line: 815, column: 9, scope: !1013)
!1016 = !DILocation(line: 818, column: 35, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !963, file: !1, line: 816, column: 12)
!1018 = !DILocation(line: 818, column: 9, scope: !1017)
!1019 = !DILocation(line: 818, column: 33, scope: !1017)
!1020 = !DILocation(line: 823, column: 18, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !822, file: !1, line: 823, column: 9)
!1022 = !DILocation(line: 823, column: 9, scope: !822)
!1023 = !DILocation(line: 830, column: 36, scope: !822)
!1024 = !DILocation(line: 408, column: 53, scope: !150, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 830, column: 10, scope: !822)
!1026 = !DILocation(line: 408, column: 69, scope: !150, inlinedAt: !1025)
!1027 = !DILocation(line: 0, scope: !161, inlinedAt: !1025)
!1028 = !DILocation(line: 412, column: 13, scope: !162, inlinedAt: !1025)
!1029 = !DILocation(line: 825, column: 41, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 823, column: 24)
!1031 = !DILocation(line: 825, column: 14, scope: !1030)
!1032 = !DILocation(line: 826, column: 15, scope: !1030)
!1033 = !DILocation(line: 409, column: 11, scope: !159, inlinedAt: !1025)
!1034 = !DILocation(line: 409, column: 9, scope: !150, inlinedAt: !1025)
!1035 = !DILocation(line: 410, column: 16, scope: !165, inlinedAt: !1025)
!1036 = !DILocation(line: 410, column: 9, scope: !165, inlinedAt: !1025)
!1037 = !DILocation(line: 413, column: 20, scope: !169, inlinedAt: !1025)
!1038 = !DILocation(line: 413, column: 18, scope: !169, inlinedAt: !1025)
!1039 = !DILocation(line: 414, column: 13, scope: !169, inlinedAt: !1025)
!1040 = !DILocation(line: 397, column: 49, scope: !129, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 416, column: 20, scope: !174, inlinedAt: !1025)
!1042 = !DILocation(line: 397, column: 65, scope: !129, inlinedAt: !1041)
!1043 = !DILocation(line: 399, column: 14, scope: !144, inlinedAt: !1041)
!1044 = !DILocation(line: 400, column: 17, scope: !144, inlinedAt: !1041)
!1045 = !DILocation(line: 400, column: 9, scope: !144, inlinedAt: !1041)
!1046 = !DILocation(line: 403, column: 5, scope: !129, inlinedAt: !1041)
!1047 = !DILocation(line: 416, column: 13, scope: !174, inlinedAt: !1025)
!1048 = !DILocation(line: 830, column: 7, scope: !822)
!1049 = !DILocation(line: 332, column: 51, scope: !49, inlinedAt: !844)
!1050 = !DILocation(line: 332, column: 68, scope: !49, inlinedAt: !844)
!1051 = !DILocation(line: 332, column: 91, scope: !49, inlinedAt: !844)
!1052 = !DILocation(line: 333, column: 19, scope: !49, inlinedAt: !844)
!1053 = !DILocation(line: 333, column: 5, scope: !49, inlinedAt: !844)
!1054 = !DILocation(line: 335, column: 9, scope: !49, inlinedAt: !844)
!1055 = !DILocation(line: 338, column: 13, scope: !73, inlinedAt: !844)
!1056 = !DILocation(line: 340, column: 22, scope: !77, inlinedAt: !844)
!1057 = !DILocation(line: 340, column: 20, scope: !77, inlinedAt: !844)
!1058 = !DILocation(line: 341, column: 9, scope: !77, inlinedAt: !844)
!1059 = !DILocation(line: 341, column: 20, scope: !72, inlinedAt: !844)
!1060 = !DILocation(line: 344, column: 45, scope: !92, inlinedAt: !844)
!1061 = !DILocation(line: 344, column: 22, scope: !92, inlinedAt: !844)
!1062 = !DILocation(line: 344, column: 20, scope: !92, inlinedAt: !844)
!1063 = !DILocation(line: 345, column: 22, scope: !92, inlinedAt: !844)
!1064 = !DILocation(line: 345, column: 13, scope: !92, inlinedAt: !844)
!1065 = !DILocation(line: 345, column: 20, scope: !92, inlinedAt: !844)
!1066 = !DILocation(line: 346, column: 9, scope: !92, inlinedAt: !844)
!1067 = !DILocation(line: 349, column: 20, scope: !89, inlinedAt: !844)
!1068 = !DILocation(line: 350, column: 30, scope: !89, inlinedAt: !844)
!1069 = !DILocation(line: 350, column: 22, scope: !89, inlinedAt: !844)
!1070 = !DILocation(line: 350, column: 13, scope: !89, inlinedAt: !844)
!1071 = !DILocation(line: 350, column: 20, scope: !89, inlinedAt: !844)
!1072 = !DILocation(line: 351, column: 30, scope: !89, inlinedAt: !844)
!1073 = !DILocation(line: 351, column: 22, scope: !89, inlinedAt: !844)
!1074 = !DILocation(line: 351, column: 13, scope: !89, inlinedAt: !844)
!1075 = !DILocation(line: 351, column: 20, scope: !89, inlinedAt: !844)
!1076 = !DILocation(line: 352, column: 30, scope: !89, inlinedAt: !844)
!1077 = !DILocation(line: 352, column: 22, scope: !89, inlinedAt: !844)
!1078 = !DILocation(line: 352, column: 13, scope: !89, inlinedAt: !844)
!1079 = !DILocation(line: 352, column: 20, scope: !89, inlinedAt: !844)
!1080 = !DILocation(line: 353, column: 22, scope: !89, inlinedAt: !844)
!1081 = !DILocation(line: 353, column: 13, scope: !89, inlinedAt: !844)
!1082 = !DILocation(line: 353, column: 20, scope: !89, inlinedAt: !844)
!1083 = !DILocation(line: 358, column: 16, scope: !119, inlinedAt: !844)
!1084 = !DILocation(line: 362, column: 5, scope: !49, inlinedAt: !844)
!1085 = !DILocation(line: 364, column: 1, scope: !49, inlinedAt: !844)
!1086 = !DILocation(line: 831, column: 7, scope: !822)
!1087 = !DILocation(line: 832, column: 9, scope: !822)
!1088 = !DILocation(line: 833, column: 20, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 832, column: 31)
!1090 = distinct !DILexicalBlock(scope: !822, file: !1, line: 832, column: 9)
!1091 = !DILocation(line: 833, column: 9, scope: !1089)
!1092 = !DILocation(line: 834, column: 5, scope: !1089)
!1093 = !DILocation(line: 835, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 834, column: 12)
!1095 = !DILocation(line: 837, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 837, column: 5)
!1097 = distinct !DILexicalBlock(scope: !822, file: !1, line: 837, column: 5)
!1098 = !DILocation(line: 837, column: 5, scope: !1097)
!1099 = !DILocation(line: 839, column: 1, scope: !822)
!1100 = !DILocation(line: 838, column: 5, scope: !822)
!1101 = distinct !DISubprogram(name: "ziplistMerge", scope: !1, file: !1, line: 856, type: !1102, isLocal: false, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1105)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!52, !1104, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1106 = !DILocalVariable(name: "first", arg: 1, scope: !1101, file: !1, line: 856, type: !1104)
!1107 = !DILocalVariable(name: "second", arg: 2, scope: !1101, file: !1, line: 856, type: !1104)
!1108 = !DILocalVariable(name: "first_bytes", scope: !1101, file: !1, line: 865, type: !548)
!1109 = !DILocalVariable(name: "first_len", scope: !1101, file: !1, line: 866, type: !548)
!1110 = !DILocalVariable(name: "second_bytes", scope: !1101, file: !1, line: 868, type: !548)
!1111 = !DILocalVariable(name: "second_len", scope: !1101, file: !1, line: 869, type: !548)
!1112 = !DILocalVariable(name: "append", scope: !1101, file: !1, line: 871, type: !132)
!1113 = !DILocalVariable(name: "source", scope: !1101, file: !1, line: 872, type: !52)
!1114 = !DILocalVariable(name: "target", scope: !1101, file: !1, line: 872, type: !52)
!1115 = !DILocalVariable(name: "target_bytes", scope: !1101, file: !1, line: 873, type: !548)
!1116 = !DILocalVariable(name: "source_bytes", scope: !1101, file: !1, line: 873, type: !548)
!1117 = !DILocalVariable(name: "zlbytes", scope: !1101, file: !1, line: 894, type: !548)
!1118 = !DILocalVariable(name: "zllength", scope: !1101, file: !1, line: 896, type: !548)
!1119 = !DILocalVariable(name: "first_offset", scope: !1101, file: !1, line: 902, type: !548)
!1120 = !DILocalVariable(name: "second_offset", scope: !1101, file: !1, line: 903, type: !548)
!1121 = !DILocation(line: 856, column: 45, scope: !1101)
!1122 = !DILocation(line: 856, column: 68, scope: !1101)
!1123 = !DILocation(line: 858, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 858, column: 9)
!1125 = !DILocation(line: 858, column: 23, scope: !1124)
!1126 = !DILocation(line: 858, column: 26, scope: !1124)
!1127 = !{!454, !454, i64 0}
!1128 = !DILocation(line: 858, column: 33, scope: !1124)
!1129 = !DILocation(line: 858, column: 51, scope: !1124)
!1130 = !DILocation(line: 858, column: 41, scope: !1124)
!1131 = !DILocation(line: 858, column: 62, scope: !1124)
!1132 = !DILocation(line: 858, column: 70, scope: !1124)
!1133 = !DILocation(line: 862, column: 16, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 862, column: 9)
!1135 = !DILocation(line: 858, column: 9, scope: !1101)
!1136 = !DILocation(line: 865, column: 26, scope: !1101)
!1137 = !DILocation(line: 865, column: 12, scope: !1101)
!1138 = !DILocation(line: 866, column: 24, scope: !1101)
!1139 = !DILocation(line: 866, column: 12, scope: !1101)
!1140 = !DILocation(line: 868, column: 27, scope: !1101)
!1141 = !DILocation(line: 868, column: 12, scope: !1101)
!1142 = !DILocation(line: 869, column: 25, scope: !1101)
!1143 = !DILocation(line: 869, column: 12, scope: !1101)
!1144 = !DILocation(line: 877, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 877, column: 9)
!1146 = !DILocation(line: 872, column: 20, scope: !1101)
!1147 = !DILocation(line: 873, column: 26, scope: !1101)
!1148 = !DILocation(line: 873, column: 12, scope: !1101)
!1149 = !DILocation(line: 872, column: 29, scope: !1101)
!1150 = !DILocation(line: 894, column: 34, scope: !1101)
!1151 = !DILocation(line: 895, column: 42, scope: !1101)
!1152 = !DILocation(line: 894, column: 12, scope: !1101)
!1153 = !DILocation(line: 896, column: 33, scope: !1101)
!1154 = !DILocation(line: 896, column: 12, scope: !1101)
!1155 = !DILocation(line: 899, column: 25, scope: !1101)
!1156 = !DILocation(line: 899, column: 16, scope: !1101)
!1157 = !DILocation(line: 902, column: 27, scope: !1101)
!1158 = !DILocation(line: 902, column: 12, scope: !1101)
!1159 = !DILocation(line: 903, column: 28, scope: !1101)
!1160 = !DILocation(line: 906, column: 14, scope: !1101)
!1161 = !DILocation(line: 907, column: 9, scope: !1101)
!1162 = !DILocation(line: 911, column: 23, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 907, column: 17)
!1164 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 907, column: 9)
!1165 = !DILocation(line: 911, column: 38, scope: !1163)
!1166 = !DILocation(line: 912, column: 23, scope: !1163)
!1167 = !DILocation(line: 913, column: 29, scope: !1163)
!1168 = !DILocation(line: 911, column: 9, scope: !1163)
!1169 = !DILocation(line: 914, column: 5, scope: !1163)
!1170 = !DILocation(line: 919, column: 24, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 914, column: 12)
!1172 = !DILocation(line: 919, column: 39, scope: !1171)
!1173 = !DILocation(line: 920, column: 24, scope: !1171)
!1174 = !DILocation(line: 921, column: 30, scope: !1171)
!1175 = !DILocation(line: 919, column: 9, scope: !1171)
!1176 = !DILocation(line: 922, column: 45, scope: !1171)
!1177 = !DILocation(line: 922, column: 9, scope: !1171)
!1178 = !DILocation(line: 926, column: 29, scope: !1101)
!1179 = !DILocation(line: 926, column: 5, scope: !1101)
!1180 = !DILocation(line: 926, column: 27, scope: !1101)
!1181 = !DILocation(line: 927, column: 30, scope: !1101)
!1182 = !DILocation(line: 927, column: 5, scope: !1101)
!1183 = !DILocation(line: 927, column: 28, scope: !1101)
!1184 = !DILocation(line: 933, column: 35, scope: !1101)
!1185 = !DILocation(line: 933, column: 5, scope: !1101)
!1186 = !DILocation(line: 933, column: 33, scope: !1101)
!1187 = !DILocation(line: 941, column: 51, scope: !1101)
!1188 = !DILocation(line: 941, column: 14, scope: !1101)
!1189 = !DILocation(line: 944, column: 9, scope: !1101)
!1190 = !DILocation(line: 945, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 944, column: 17)
!1192 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 944, column: 9)
!1193 = !DILocation(line: 945, column: 9, scope: !1191)
!1194 = !DILocation(line: 946, column: 17, scope: !1191)
!1195 = !DILocation(line: 947, column: 16, scope: !1191)
!1196 = !DILocation(line: 948, column: 5, scope: !1191)
!1197 = !DILocation(line: 949, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 948, column: 12)
!1199 = !DILocation(line: 949, column: 9, scope: !1198)
!1200 = !DILocation(line: 950, column: 16, scope: !1198)
!1201 = !DILocation(line: 951, column: 17, scope: !1198)
!1202 = !DILocation(line: 0, scope: !1101)
!1203 = !DILocation(line: 954, column: 1, scope: !1101)
!1204 = distinct !DISubprogram(name: "ziplistPush", scope: !1, file: !1, line: 956, type: !1205, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!52, !52, !52, !20, !132}
!1207 = !{!1208, !1209, !1210, !1211, !1212}
!1208 = !DILocalVariable(name: "zl", arg: 1, scope: !1204, file: !1, line: 956, type: !52)
!1209 = !DILocalVariable(name: "s", arg: 2, scope: !1204, file: !1, line: 956, type: !52)
!1210 = !DILocalVariable(name: "slen", arg: 3, scope: !1204, file: !1, line: 956, type: !20)
!1211 = !DILocalVariable(name: "where", arg: 4, scope: !1204, file: !1, line: 956, type: !132)
!1212 = !DILocalVariable(name: "p", scope: !1204, file: !1, line: 957, type: !52)
!1213 = !DILocation(line: 956, column: 43, scope: !1204)
!1214 = !DILocation(line: 956, column: 62, scope: !1204)
!1215 = !DILocation(line: 956, column: 78, scope: !1204)
!1216 = !DILocation(line: 956, column: 88, scope: !1204)
!1217 = !DILocation(line: 958, column: 16, scope: !1204)
!1218 = !DILocation(line: 958, column: 9, scope: !1204)
!1219 = !DILocation(line: 958, column: 35, scope: !1204)
!1220 = !DILocation(line: 958, column: 60, scope: !1204)
!1221 = !DILocation(line: 957, column: 20, scope: !1204)
!1222 = !DILocation(line: 959, column: 12, scope: !1204)
!1223 = !DILocation(line: 959, column: 5, scope: !1204)
!1224 = distinct !DISubprogram(name: "ziplistIndex", scope: !1, file: !1, line: 965, type: !1225, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!52, !52, !132}
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DILocalVariable(name: "zl", arg: 1, scope: !1224, file: !1, line: 965, type: !52)
!1229 = !DILocalVariable(name: "index", arg: 2, scope: !1224, file: !1, line: 965, type: !132)
!1230 = !DILocalVariable(name: "p", scope: !1224, file: !1, line: 966, type: !52)
!1231 = !DILocalVariable(name: "prevlensize", scope: !1224, file: !1, line: 967, type: !20)
!1232 = !DILocalVariable(name: "prevlen", scope: !1224, file: !1, line: 967, type: !20)
!1233 = !DILocation(line: 965, column: 44, scope: !1224)
!1234 = !DILocation(line: 965, column: 52, scope: !1224)
!1235 = !DILocation(line: 967, column: 5, scope: !1224)
!1236 = !DILocation(line: 967, column: 31, scope: !1224)
!1237 = !DILocation(line: 968, column: 15, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 968, column: 9)
!1239 = !DILocation(line: 968, column: 9, scope: !1224)
!1240 = !DILocation(line: 969, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 968, column: 20)
!1242 = !DILocation(line: 970, column: 13, scope: !1241)
!1243 = !DILocation(line: 966, column: 20, scope: !1224)
!1244 = !DILocation(line: 971, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 971, column: 13)
!1246 = !DILocation(line: 971, column: 13, scope: !1241)
!1247 = !DILocation(line: 967, column: 18, scope: !1224)
!1248 = !DILocation(line: 972, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 972, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 972, column: 13)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 972, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 971, column: 30)
!1253 = !DILocation(line: 972, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 972, column: 13)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 972, column: 13)
!1256 = !DILocation(line: 973, column: 20, scope: !1252)
!1257 = !DILocation(line: 973, column: 28, scope: !1252)
!1258 = !DILocation(line: 973, column: 32, scope: !1252)
!1259 = !DILocation(line: 973, column: 40, scope: !1252)
!1260 = !DILocation(line: 973, column: 13, scope: !1252)
!1261 = !DILocation(line: 974, column: 19, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 973, column: 44)
!1263 = !DILocation(line: 975, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 975, column: 17)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 975, column: 17)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 975, column: 17)
!1267 = !DILocation(line: 975, column: 17, scope: !1266)
!1268 = !DILocation(line: 975, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 975, column: 17)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 975, column: 17)
!1271 = !DILocation(line: 975, column: 17, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 975, column: 17)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 975, column: 17)
!1274 = distinct !{!1274, !1260, !1275}
!1275 = !DILocation(line: 976, column: 13, scope: !1252)
!1276 = !DILocation(line: 979, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 978, column: 12)
!1278 = !DILocation(line: 980, column: 16, scope: !1277)
!1279 = !DILocation(line: 980, column: 21, scope: !1277)
!1280 = !DILocation(line: 980, column: 32, scope: !1277)
!1281 = !DILocation(line: 980, column: 9, scope: !1277)
!1282 = !DILocation(line: 980, column: 40, scope: !1277)
!1283 = !DILocation(line: 981, column: 18, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 980, column: 44)
!1285 = !DILocation(line: 981, column: 15, scope: !1284)
!1286 = distinct !{!1286, !1281, !1287}
!1287 = !DILocation(line: 982, column: 9, scope: !1277)
!1288 = !DILocation(line: 0, scope: !1277)
!1289 = !DILocation(line: 984, column: 13, scope: !1224)
!1290 = !DILocation(line: 984, column: 18, scope: !1224)
!1291 = !DILocation(line: 984, column: 38, scope: !1224)
!1292 = !DILocation(line: 984, column: 29, scope: !1224)
!1293 = !DILocation(line: 985, column: 1, scope: !1224)
!1294 = !DILocation(line: 984, column: 5, scope: !1224)
!1295 = distinct !DISubprogram(name: "ziplistNext", scope: !1, file: !1, line: 993, type: !542, isLocal: false, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1296)
!1296 = !{!1297, !1298}
!1297 = !DILocalVariable(name: "zl", arg: 1, scope: !1295, file: !1, line: 993, type: !52)
!1298 = !DILocalVariable(name: "p", arg: 2, scope: !1295, file: !1, line: 993, type: !52)
!1299 = !DILocation(line: 993, column: 43, scope: !1295)
!1300 = !DILocation(line: 993, column: 62, scope: !1295)
!1301 = !DILocation(line: 999, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 999, column: 9)
!1303 = !DILocation(line: 999, column: 14, scope: !1302)
!1304 = !DILocation(line: 999, column: 9, scope: !1295)
!1305 = !DILocation(line: 1003, column: 10, scope: !1295)
!1306 = !DILocation(line: 1003, column: 7, scope: !1295)
!1307 = !DILocation(line: 1004, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 1004, column: 9)
!1309 = !DILocation(line: 1004, column: 14, scope: !1308)
!1310 = !DILocation(line: 1005, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 1004, column: 26)
!1312 = !DILocation(line: 0, scope: !1295)
!1313 = !DILocation(line: 1009, column: 1, scope: !1295)
!1314 = distinct !DISubprogram(name: "ziplistPrev", scope: !1, file: !1, line: 1012, type: !542, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1315)
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DILocalVariable(name: "zl", arg: 1, scope: !1314, file: !1, line: 1012, type: !52)
!1317 = !DILocalVariable(name: "p", arg: 2, scope: !1314, file: !1, line: 1012, type: !52)
!1318 = !DILocalVariable(name: "prevlensize", scope: !1314, file: !1, line: 1013, type: !20)
!1319 = !DILocalVariable(name: "prevlen", scope: !1314, file: !1, line: 1013, type: !20)
!1320 = !DILocation(line: 1012, column: 43, scope: !1314)
!1321 = !DILocation(line: 1012, column: 62, scope: !1314)
!1322 = !DILocation(line: 1013, column: 5, scope: !1314)
!1323 = !DILocation(line: 1013, column: 31, scope: !1314)
!1324 = !DILocation(line: 1018, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 1018, column: 9)
!1326 = !DILocation(line: 1018, column: 14, scope: !1325)
!1327 = !DILocation(line: 1018, column: 9, scope: !1314)
!1328 = !DILocation(line: 1019, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 1018, column: 26)
!1330 = !DILocation(line: 1020, column: 17, scope: !1329)
!1331 = !DILocation(line: 1020, column: 22, scope: !1329)
!1332 = !DILocation(line: 1020, column: 16, scope: !1329)
!1333 = !DILocation(line: 1020, column: 9, scope: !1329)
!1334 = !DILocation(line: 1021, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 1021, column: 16)
!1336 = !DILocation(line: 1021, column: 18, scope: !1335)
!1337 = !DILocation(line: 1021, column: 16, scope: !1325)
!1338 = !DILocation(line: 1024, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 1024, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 1024, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 1024, column: 9)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 1023, column: 12)
!1343 = !DILocation(line: 1024, column: 9, scope: !1341)
!1344 = !DILocation(line: 1024, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 1024, column: 9)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 1024, column: 9)
!1347 = !DILocation(line: 1024, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 1024, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 1024, column: 9)
!1350 = !DILocation(line: 1025, column: 9, scope: !1342)
!1351 = !DILocation(line: 1026, column: 17, scope: !1342)
!1352 = !DILocation(line: 1026, column: 9, scope: !1342)
!1353 = !DILocation(line: 0, scope: !1342)
!1354 = !DILocation(line: 1028, column: 1, scope: !1314)
!1355 = distinct !DISubprogram(name: "ziplistGet", scope: !1, file: !1, line: 1034, type: !1356, isLocal: false, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1359)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!20, !52, !1104, !1358, !259}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1359 = !{!1360, !1361, !1362, !1363, !1364}
!1360 = !DILocalVariable(name: "p", arg: 1, scope: !1355, file: !1, line: 1034, type: !52)
!1361 = !DILocalVariable(name: "sstr", arg: 2, scope: !1355, file: !1, line: 1034, type: !1104)
!1362 = !DILocalVariable(name: "slen", arg: 3, scope: !1355, file: !1, line: 1034, type: !1358)
!1363 = !DILocalVariable(name: "sval", arg: 4, scope: !1355, file: !1, line: 1034, type: !259)
!1364 = !DILocalVariable(name: "entry", scope: !1355, file: !1, line: 1035, type: !429)
!1365 = !DILocation(line: 1034, column: 40, scope: !1355)
!1366 = !DILocation(line: 1034, column: 59, scope: !1355)
!1367 = !DILocation(line: 1034, column: 79, scope: !1355)
!1368 = !DILocation(line: 1034, column: 96, scope: !1355)
!1369 = !DILocation(line: 1035, column: 5, scope: !1355)
!1370 = !DILocation(line: 1036, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 1036, column: 9)
!1372 = !DILocation(line: 1036, column: 19, scope: !1371)
!1373 = !DILocation(line: 1036, column: 22, scope: !1371)
!1374 = !DILocation(line: 1036, column: 27, scope: !1371)
!1375 = !DILocation(line: 1036, column: 9, scope: !1355)
!1376 = !DILocation(line: 1037, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 1037, column: 9)
!1378 = !DILocation(line: 1037, column: 9, scope: !1355)
!1379 = !DILocation(line: 1037, column: 21, scope: !1377)
!1380 = !DILocation(line: 1037, column: 15, scope: !1377)
!1381 = !DILocation(line: 1035, column: 13, scope: !1355)
!1382 = !DILocation(line: 1039, column: 5, scope: !1355)
!1383 = !DILocation(line: 1040, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 1040, column: 9)
!1385 = !DILocation(line: 1040, column: 9, scope: !1355)
!1386 = !DILocation(line: 1041, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 1040, column: 37)
!1388 = !DILocation(line: 1042, column: 27, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 1041, column: 19)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 1041, column: 13)
!1391 = !DILocation(line: 1042, column: 19, scope: !1389)
!1392 = !DILocation(line: 1043, column: 29, scope: !1389)
!1393 = !DILocation(line: 1043, column: 22, scope: !1389)
!1394 = !DILocation(line: 1043, column: 19, scope: !1389)
!1395 = !DILocation(line: 1044, column: 9, scope: !1389)
!1396 = !DILocation(line: 1046, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 1046, column: 13)
!1398 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 1045, column: 12)
!1399 = !DILocation(line: 1046, column: 13, scope: !1398)
!1400 = !DILocation(line: 1047, column: 44, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 1046, column: 19)
!1402 = !DILocation(line: 1047, column: 37, scope: !1401)
!1403 = !DILocation(line: 1047, column: 21, scope: !1401)
!1404 = !DILocation(line: 1047, column: 19, scope: !1401)
!1405 = !DILocation(line: 1048, column: 9, scope: !1401)
!1406 = !DILocation(line: 0, scope: !1355)
!1407 = !DILocation(line: 1051, column: 1, scope: !1355)
!1408 = distinct !DISubprogram(name: "ziplistInsert", scope: !1, file: !1, line: 1054, type: !823, isLocal: false, isDefinition: true, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1409)
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DILocalVariable(name: "zl", arg: 1, scope: !1408, file: !1, line: 1054, type: !52)
!1411 = !DILocalVariable(name: "p", arg: 2, scope: !1408, file: !1, line: 1054, type: !52)
!1412 = !DILocalVariable(name: "s", arg: 3, scope: !1408, file: !1, line: 1054, type: !52)
!1413 = !DILocalVariable(name: "slen", arg: 4, scope: !1408, file: !1, line: 1054, type: !20)
!1414 = !DILocation(line: 1054, column: 45, scope: !1408)
!1415 = !DILocation(line: 1054, column: 64, scope: !1408)
!1416 = !DILocation(line: 1054, column: 82, scope: !1408)
!1417 = !DILocation(line: 1054, column: 98, scope: !1408)
!1418 = !DILocation(line: 1055, column: 12, scope: !1408)
!1419 = !DILocation(line: 1055, column: 5, scope: !1408)
!1420 = distinct !DISubprogram(name: "ziplistDelete", scope: !1, file: !1, line: 1061, type: !1421, isLocal: false, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!52, !52, !1104}
!1423 = !{!1424, !1425, !1426}
!1424 = !DILocalVariable(name: "zl", arg: 1, scope: !1420, file: !1, line: 1061, type: !52)
!1425 = !DILocalVariable(name: "p", arg: 2, scope: !1420, file: !1, line: 1061, type: !1104)
!1426 = !DILocalVariable(name: "offset", scope: !1420, file: !1, line: 1062, type: !548)
!1427 = !DILocation(line: 1061, column: 45, scope: !1420)
!1428 = !DILocation(line: 1061, column: 65, scope: !1420)
!1429 = !DILocation(line: 1062, column: 21, scope: !1420)
!1430 = !DILocation(line: 1062, column: 23, scope: !1420)
!1431 = !DILocation(line: 1062, column: 12, scope: !1420)
!1432 = !DILocation(line: 1063, column: 10, scope: !1420)
!1433 = !DILocation(line: 1069, column: 12, scope: !1420)
!1434 = !DILocation(line: 1069, column: 8, scope: !1420)
!1435 = !DILocation(line: 1070, column: 5, scope: !1420)
!1436 = distinct !DISubprogram(name: "ziplistDeleteRange", scope: !1, file: !1, line: 1074, type: !1437, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!52, !52, !132, !20}
!1439 = !{!1440, !1441, !1442, !1443}
!1440 = !DILocalVariable(name: "zl", arg: 1, scope: !1436, file: !1, line: 1074, type: !52)
!1441 = !DILocalVariable(name: "index", arg: 2, scope: !1436, file: !1, line: 1074, type: !132)
!1442 = !DILocalVariable(name: "num", arg: 3, scope: !1436, file: !1, line: 1074, type: !20)
!1443 = !DILocalVariable(name: "p", scope: !1436, file: !1, line: 1075, type: !52)
!1444 = !DILocation(line: 1074, column: 50, scope: !1436)
!1445 = !DILocation(line: 1074, column: 58, scope: !1436)
!1446 = !DILocation(line: 1074, column: 78, scope: !1436)
!1447 = !DILocation(line: 1075, column: 24, scope: !1436)
!1448 = !DILocation(line: 1075, column: 20, scope: !1436)
!1449 = !DILocation(line: 1076, column: 15, scope: !1436)
!1450 = !DILocation(line: 1076, column: 12, scope: !1436)
!1451 = !DILocation(line: 1076, column: 31, scope: !1436)
!1452 = !DILocation(line: 1076, column: 5, scope: !1436)
!1453 = distinct !DISubprogram(name: "ziplistCompare", scope: !1, file: !1, line: 1081, type: !1454, isLocal: false, isDefinition: true, scopeLine: 1081, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!20, !52, !52, !20}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1457 = !DILocalVariable(name: "p", arg: 1, scope: !1453, file: !1, line: 1081, type: !52)
!1458 = !DILocalVariable(name: "sstr", arg: 2, scope: !1453, file: !1, line: 1081, type: !52)
!1459 = !DILocalVariable(name: "slen", arg: 3, scope: !1453, file: !1, line: 1081, type: !20)
!1460 = !DILocalVariable(name: "entry", scope: !1453, file: !1, line: 1082, type: !429)
!1461 = !DILocalVariable(name: "sencoding", scope: !1453, file: !1, line: 1083, type: !16)
!1462 = !DILocalVariable(name: "zval", scope: !1453, file: !1, line: 1084, type: !26)
!1463 = !DILocalVariable(name: "sval", scope: !1453, file: !1, line: 1084, type: !26)
!1464 = !DILocation(line: 1081, column: 44, scope: !1453)
!1465 = !DILocation(line: 1081, column: 62, scope: !1453)
!1466 = !DILocation(line: 1081, column: 81, scope: !1453)
!1467 = !DILocation(line: 1082, column: 5, scope: !1453)
!1468 = !DILocation(line: 1085, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 1085, column: 9)
!1470 = !DILocation(line: 1085, column: 14, scope: !1469)
!1471 = !DILocation(line: 1085, column: 9, scope: !1453)
!1472 = !DILocation(line: 1082, column: 13, scope: !1453)
!1473 = !DILocation(line: 1087, column: 5, scope: !1453)
!1474 = !DILocation(line: 1088, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 1088, column: 9)
!1476 = !DILocation(line: 1088, column: 9, scope: !1453)
!1477 = !DILocation(line: 1090, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 1090, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 1088, column: 37)
!1480 = !DILocation(line: 1090, column: 23, scope: !1478)
!1481 = !DILocation(line: 1090, column: 13, scope: !1479)
!1482 = !DILocation(line: 1091, column: 35, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 1090, column: 32)
!1484 = !DILocation(line: 1091, column: 28, scope: !1483)
!1485 = !DILocation(line: 1091, column: 51, scope: !1483)
!1486 = !DILocation(line: 1091, column: 20, scope: !1483)
!1487 = !DILocation(line: 1091, column: 57, scope: !1483)
!1488 = !DILocation(line: 1091, column: 13, scope: !1483)
!1489 = !DILocation(line: 480, column: 35, scope: !256, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 1098, column: 13, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 1098, column: 13)
!1492 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 1095, column: 12)
!1493 = !DILocation(line: 480, column: 55, scope: !256, inlinedAt: !1490)
!1494 = !DILocation(line: 481, column: 5, scope: !256, inlinedAt: !1490)
!1495 = !DILocation(line: 483, column: 24, scope: !272, inlinedAt: !1490)
!1496 = !DILocation(line: 484, column: 32, scope: !274, inlinedAt: !1490)
!1497 = !DILocation(line: 481, column: 15, scope: !256, inlinedAt: !1490)
!1498 = !DILocation(line: 484, column: 9, scope: !274, inlinedAt: !1490)
!1499 = !DILocation(line: 484, column: 9, scope: !256, inlinedAt: !1490)
!1500 = !DILocation(line: 487, column: 13, scope: !279, inlinedAt: !1490)
!1501 = !DILocation(line: 504, column: 1, scope: !256, inlinedAt: !1490)
!1502 = !DILocation(line: 1099, column: 41, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 1098, column: 57)
!1504 = !DILocation(line: 1099, column: 34, scope: !1503)
!1505 = !DILocation(line: 1099, column: 58, scope: !1503)
!1506 = !DILocation(line: 1099, column: 18, scope: !1503)
!1507 = !DILocation(line: 1084, column: 15, scope: !1453)
!1508 = !DILocation(line: 1084, column: 21, scope: !1453)
!1509 = !DILocation(line: 1100, column: 23, scope: !1503)
!1510 = !DILocation(line: 1100, column: 11, scope: !1503)
!1511 = !DILocation(line: 0, scope: !1453)
!1512 = !DILocation(line: 1104, column: 1, scope: !1453)
!1513 = distinct !DISubprogram(name: "ziplistFind", scope: !1, file: !1, line: 1108, type: !1514, isLocal: false, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!52, !52, !52, !20, !20}
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1526, !1527, !1528, !1529, !1530}
!1517 = !DILocalVariable(name: "p", arg: 1, scope: !1513, file: !1, line: 1108, type: !52)
!1518 = !DILocalVariable(name: "vstr", arg: 2, scope: !1513, file: !1, line: 1108, type: !52)
!1519 = !DILocalVariable(name: "vlen", arg: 3, scope: !1513, file: !1, line: 1108, type: !20)
!1520 = !DILocalVariable(name: "skip", arg: 4, scope: !1513, file: !1, line: 1108, type: !20)
!1521 = !DILocalVariable(name: "skipcnt", scope: !1513, file: !1, line: 1109, type: !132)
!1522 = !DILocalVariable(name: "vencoding", scope: !1513, file: !1, line: 1110, type: !16)
!1523 = !DILocalVariable(name: "vll", scope: !1513, file: !1, line: 1111, type: !26)
!1524 = !DILocalVariable(name: "prevlensize", scope: !1525, file: !1, line: 1114, type: !20)
!1525 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 1113, column: 29)
!1526 = !DILocalVariable(name: "encoding", scope: !1525, file: !1, line: 1114, type: !20)
!1527 = !DILocalVariable(name: "lensize", scope: !1525, file: !1, line: 1114, type: !20)
!1528 = !DILocalVariable(name: "len", scope: !1525, file: !1, line: 1114, type: !20)
!1529 = !DILocalVariable(name: "q", scope: !1525, file: !1, line: 1115, type: !52)
!1530 = !DILocalVariable(name: "ll", scope: !1531, file: !1, line: 1146, type: !26)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 1145, column: 45)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 1145, column: 21)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 1127, column: 20)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 1123, column: 17)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 1121, column: 27)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 1121, column: 13)
!1537 = !DILocation(line: 1108, column: 43, scope: !1513)
!1538 = !DILocation(line: 1108, column: 61, scope: !1513)
!1539 = !DILocation(line: 1108, column: 80, scope: !1513)
!1540 = !DILocation(line: 1108, column: 99, scope: !1513)
!1541 = !DILocation(line: 1109, column: 9, scope: !1513)
!1542 = !DILocation(line: 1110, column: 19, scope: !1513)
!1543 = !DILocation(line: 1111, column: 15, scope: !1513)
!1544 = !DILocation(line: 1113, column: 5, scope: !1513)
!1545 = !DILocation(line: 1113, column: 12, scope: !1513)
!1546 = !DILocation(line: 1114, column: 22, scope: !1525)
!1547 = !DILocation(line: 1118, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 1118, column: 9)
!1549 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 1118, column: 9)
!1550 = !DILocation(line: 1114, column: 35, scope: !1525)
!1551 = !DILocation(line: 1118, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !1, line: 1118, column: 9)
!1553 = !DILocation(line: 1118, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 1118, column: 9)
!1555 = !DILocation(line: 1118, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 1118, column: 9)
!1557 = !DILocation(line: 1118, column: 9, scope: !1549)
!1558 = !DILocation(line: 1114, column: 45, scope: !1525)
!1559 = !DILocation(line: 1118, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 1118, column: 9)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 1118, column: 9)
!1562 = !DILocation(line: 1114, column: 54, scope: !1525)
!1563 = !DILocation(line: 1118, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 1118, column: 9)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 1118, column: 9)
!1566 = !DILocation(line: 1118, column: 9, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1118, column: 9)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 1118, column: 9)
!1569 = !DILocation(line: 1118, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1118, column: 9)
!1571 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 1118, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 1118, column: 9)
!1574 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !1572)
!1575 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !1572)
!1576 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !1572)
!1577 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !1572)
!1578 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !1572)
!1579 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !1572)
!1580 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !1572)
!1581 = !DILocation(line: 1119, column: 29, scope: !1525)
!1582 = !DILocation(line: 1115, column: 24, scope: !1525)
!1583 = !DILocation(line: 1121, column: 21, scope: !1536)
!1584 = !DILocation(line: 1121, column: 13, scope: !1525)
!1585 = !DILocation(line: 1123, column: 17, scope: !1535)
!1586 = !DILocation(line: 1124, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 1124, column: 21)
!1588 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 1123, column: 39)
!1589 = !DILocation(line: 1124, column: 33, scope: !1587)
!1590 = !DILocation(line: 1124, column: 36, scope: !1587)
!1591 = !DILocation(line: 1124, column: 58, scope: !1587)
!1592 = !DILocation(line: 1124, column: 21, scope: !1588)
!1593 = !DILocation(line: 1131, column: 21, scope: !1533)
!1594 = !DILocation(line: 480, column: 35, scope: !256, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 1132, column: 26, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 1132, column: 25)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 1131, column: 37)
!1598 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 1131, column: 21)
!1599 = !DILocation(line: 480, column: 55, scope: !256, inlinedAt: !1595)
!1600 = !DILocation(line: 481, column: 5, scope: !256, inlinedAt: !1595)
!1601 = !DILocation(line: 483, column: 24, scope: !272, inlinedAt: !1595)
!1602 = !DILocation(line: 481, column: 15, scope: !256, inlinedAt: !1595)
!1603 = !DILocation(line: 484, column: 9, scope: !274, inlinedAt: !1595)
!1604 = !DILocation(line: 484, column: 9, scope: !256, inlinedAt: !1595)
!1605 = !DILocation(line: 487, column: 13, scope: !279, inlinedAt: !1595)
!1606 = !DILocation(line: 487, column: 24, scope: !279, inlinedAt: !1595)
!1607 = !DILocation(line: 488, column: 25, scope: !285, inlinedAt: !1595)
!1608 = !DILocation(line: 489, column: 9, scope: !285, inlinedAt: !1595)
!1609 = !DILocation(line: 489, column: 38, scope: !288, inlinedAt: !1595)
!1610 = !DILocation(line: 491, column: 39, scope: !290, inlinedAt: !1595)
!1611 = !DILocation(line: 493, column: 39, scope: !292, inlinedAt: !1595)
!1612 = !DILocation(line: 495, column: 39, scope: !294, inlinedAt: !1595)
!1613 = !DILocation(line: 504, column: 1, scope: !256, inlinedAt: !1595)
!1614 = !DILocation(line: 1145, column: 21, scope: !1533)
!1615 = !DILocation(line: 1146, column: 36, scope: !1531)
!1616 = !DILocation(line: 1146, column: 31, scope: !1531)
!1617 = !DILocation(line: 1147, column: 28, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 1147, column: 25)
!1619 = !DILocation(line: 1157, column: 20, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 1155, column: 16)
!1621 = !DILocation(line: 0, scope: !1513)
!1622 = !DILocation(line: 0, scope: !1620)
!1623 = !DILocation(line: 1161, column: 15, scope: !1525)
!1624 = !DILocation(line: 1165, column: 1, scope: !1513)
!1625 = distinct !DISubprogram(name: "ziplistLen", scope: !1, file: !1, line: 1168, type: !204, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "zl", arg: 1, scope: !1625, file: !1, line: 1168, type: !52)
!1628 = !DILocalVariable(name: "len", scope: !1625, file: !1, line: 1169, type: !20)
!1629 = !DILocalVariable(name: "p", scope: !1630, file: !1, line: 1173, type: !52)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 1172, column: 12)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 1170, column: 9)
!1632 = !DILocation(line: 1168, column: 40, scope: !1625)
!1633 = !DILocation(line: 1169, column: 18, scope: !1625)
!1634 = !DILocation(line: 1170, column: 9, scope: !1631)
!1635 = !DILocation(line: 1170, column: 42, scope: !1631)
!1636 = !DILocation(line: 1170, column: 9, scope: !1625)
!1637 = !DILocation(line: 1172, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 1170, column: 56)
!1639 = !DILocation(line: 1173, column: 30, scope: !1630)
!1640 = !DILocation(line: 1173, column: 24, scope: !1630)
!1641 = !DILocation(line: 1174, column: 16, scope: !1630)
!1642 = !DILocation(line: 1174, column: 19, scope: !1630)
!1643 = !DILocation(line: 1174, column: 9, scope: !1630)
!1644 = !DILocation(line: 1175, column: 18, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1630, file: !1, line: 1174, column: 31)
!1646 = !DILocation(line: 1175, column: 15, scope: !1645)
!1647 = !DILocation(line: 1176, column: 16, scope: !1645)
!1648 = distinct !{!1648, !1643, !1649}
!1649 = !DILocation(line: 1177, column: 9, scope: !1630)
!1650 = !DILocation(line: 1180, column: 17, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1630, file: !1, line: 1180, column: 13)
!1652 = !DILocation(line: 1180, column: 13, scope: !1630)
!1653 = !DILocation(line: 1180, column: 52, scope: !1651)
!1654 = !DILocation(line: 1180, column: 50, scope: !1651)
!1655 = !DILocation(line: 1180, column: 31, scope: !1651)
!1656 = !DILocation(line: 0, scope: !1625)
!1657 = !DILocation(line: 1182, column: 5, scope: !1625)
!1658 = distinct !DISubprogram(name: "ziplistBlobLen", scope: !1, file: !1, line: 1186, type: !1659, isLocal: false, isDefinition: true, scopeLine: 1186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!548, !52}
!1661 = !{!1662}
!1662 = !DILocalVariable(name: "zl", arg: 1, scope: !1658, file: !1, line: 1186, type: !52)
!1663 = !DILocation(line: 1186, column: 38, scope: !1658)
!1664 = !DILocation(line: 1187, column: 12, scope: !1658)
!1665 = !DILocation(line: 1187, column: 5, scope: !1658)
!1666 = distinct !DISubprogram(name: "ziplistRepr", scope: !1, file: !1, line: 1190, type: !1667, isLocal: false, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !52}
!1669 = !{!1670, !1671, !1672, !1673, !1674}
!1670 = !DILocalVariable(name: "zl", arg: 1, scope: !1666, file: !1, line: 1190, type: !52)
!1671 = !DILocalVariable(name: "p", scope: !1666, file: !1, line: 1191, type: !52)
!1672 = !DILocalVariable(name: "index", scope: !1666, file: !1, line: 1192, type: !132)
!1673 = !DILocalVariable(name: "entry", scope: !1666, file: !1, line: 1193, type: !429)
!1674 = !DILocalVariable(name: "i", scope: !1675, file: !1, line: 1224, type: !20)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 1224, column: 9)
!1676 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 1203, column: 26)
!1677 = !DILocation(line: 1190, column: 33, scope: !1666)
!1678 = !DILocation(line: 1192, column: 9, scope: !1666)
!1679 = !DILocation(line: 1193, column: 5, scope: !1666)
!1680 = !DILocation(line: 1199, column: 9, scope: !1666)
!1681 = !DILocation(line: 1200, column: 9, scope: !1666)
!1682 = !DILocation(line: 1201, column: 9, scope: !1666)
!1683 = !DILocation(line: 1195, column: 5, scope: !1666)
!1684 = !DILocation(line: 1202, column: 9, scope: !1666)
!1685 = !DILocation(line: 1191, column: 20, scope: !1666)
!1686 = !DILocation(line: 1203, column: 11, scope: !1666)
!1687 = !DILocation(line: 1203, column: 14, scope: !1666)
!1688 = !DILocation(line: 1203, column: 5, scope: !1666)
!1689 = !DILocation(line: 1193, column: 13, scope: !1666)
!1690 = !DILocation(line: 1204, column: 9, scope: !1676)
!1691 = !DILocation(line: 1215, column: 13, scope: !1676)
!1692 = !DILocation(line: 1217, column: 31, scope: !1676)
!1693 = !DILocation(line: 1218, column: 19, scope: !1676)
!1694 = !DILocation(line: 1218, column: 36, scope: !1676)
!1695 = !DILocation(line: 1218, column: 29, scope: !1676)
!1696 = !DILocation(line: 1220, column: 19, scope: !1676)
!1697 = !DILocation(line: 1221, column: 19, scope: !1676)
!1698 = !DILocation(line: 1205, column: 9, scope: !1676)
!1699 = !DILocation(line: 1223, column: 9, scope: !1676)
!1700 = !DILocation(line: 1224, column: 27, scope: !1675)
!1701 = !DILocation(line: 1224, column: 44, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 1224, column: 9)
!1703 = !DILocation(line: 1224, column: 61, scope: !1702)
!1704 = !DILocation(line: 1224, column: 36, scope: !1702)
!1705 = !DILocation(line: 1224, column: 9, scope: !1675)
!1706 = !DILocation(line: 1227, column: 9, scope: !1676)
!1707 = !DILocation(line: 1228, column: 20, scope: !1676)
!1708 = !DILocation(line: 1228, column: 11, scope: !1676)
!1709 = !DILocation(line: 1229, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 1229, column: 13)
!1711 = !DILocation(line: 1229, column: 13, scope: !1676)
!1712 = !DILocation(line: 1225, column: 28, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 1224, column: 71)
!1714 = !DILocation(line: 1225, column: 13, scope: !1713)
!1715 = !DILocation(line: 1224, column: 67, scope: !1702)
!1716 = !DILocation(line: 1224, column: 54, scope: !1702)
!1717 = distinct !{!1717, !1705, !1718}
!1718 = !DILocation(line: 1226, column: 9, scope: !1675)
!1719 = !DILocation(line: 1230, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1710, file: !1, line: 1229, column: 41)
!1721 = !DILocation(line: 1231, column: 23, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 1231, column: 17)
!1723 = !DILocation(line: 1231, column: 27, scope: !1722)
!1724 = !DILocation(line: 1231, column: 17, scope: !1720)
!1725 = !DILocation(line: 1232, column: 35, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 1232, column: 21)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 1231, column: 33)
!1728 = !{!1729, !454, i64 16}
!1729 = !{!"_reent", !139, i64 0, !454, i64 8, !454, i64 16, !454, i64 24, !139, i64 32, !82, i64 36, !139, i64 64, !454, i64 72, !139, i64 80, !454, i64 88, !454, i64 96, !139, i64 104, !454, i64 112, !454, i64 120, !139, i64 128, !454, i64 136, !82, i64 144, !454, i64 504, !1730, i64 512, !454, i64 1304, !1732, i64 1312, !82, i64 1336}
!1730 = !{!"_atexit", !454, i64 0, !139, i64 8, !82, i64 16, !1731, i64 272}
!1731 = !{!"_on_exit_args", !82, i64 0, !82, i64 256, !139, i64 512, !139, i64 516}
!1732 = !{!"_glue", !454, i64 0, !139, i64 8, !454, i64 16}
!1733 = !DILocation(line: 1232, column: 21, scope: !1726)
!1734 = !DILocation(line: 1232, column: 43, scope: !1726)
!1735 = !DILocation(line: 1232, column: 21, scope: !1727)
!1736 = !DILocation(line: 1232, column: 49, scope: !1726)
!1737 = !DILocation(line: 1233, column: 17, scope: !1727)
!1738 = !DILocation(line: 1234, column: 13, scope: !1727)
!1739 = !DILocation(line: 1235, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 1235, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 1234, column: 20)
!1742 = !DILocation(line: 1235, column: 31, scope: !1740)
!1743 = !DILocation(line: 1236, column: 30, scope: !1740)
!1744 = !DILocation(line: 1236, column: 42, scope: !1740)
!1745 = !DILocation(line: 1236, column: 21, scope: !1740)
!1746 = !DILocation(line: 1236, column: 50, scope: !1740)
!1747 = !DILocation(line: 1235, column: 21, scope: !1741)
!1748 = !DILocation(line: 1236, column: 56, scope: !1740)
!1749 = !DILocation(line: 1239, column: 47, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1710, file: !1, line: 1238, column: 16)
!1751 = !DILocation(line: 1239, column: 13, scope: !1750)
!1752 = !DILocation(line: 1241, column: 9, scope: !1676)
!1753 = !DILocation(line: 1242, column: 20, scope: !1676)
!1754 = !DILocation(line: 1242, column: 11, scope: !1676)
!1755 = !DILocation(line: 1243, column: 14, scope: !1676)
!1756 = distinct !{!1756, !1688, !1757}
!1757 = !DILocation(line: 1244, column: 5, scope: !1666)
!1758 = !DILocation(line: 1245, column: 5, scope: !1666)
!1759 = !DILocation(line: 1246, column: 1, scope: !1666)
