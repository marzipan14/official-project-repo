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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  switch i8 %0, label %7 [
    i8 -2, label %12
    i8 -64, label %3
    i8 -16, label %4
    i8 -48, label %5
    i8 -32, label %6
  ], !dbg !38

; <label>:3:                                      ; preds = %1
  br label %12, !dbg !39

; <label>:4:                                      ; preds = %1
  br label %12, !dbg !41

; <label>:5:                                      ; preds = %1
  br label %12, !dbg !42

; <label>:6:                                      ; preds = %1
  br label %12, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = icmp ugt i8 %0, -16, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %8, label %9, label %11, !dbg !46

; <label>:9:                                      ; preds = %7
  %10 = icmp ult i8 %0, -2, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %10, label %12, label %11, !dbg !48

; <label>:11:                                     ; preds = %9, %7
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %2) #5, !dbg !49
  tail call void @_exit(i32 1) #6, !dbg !49
  unreachable

; <label>:12:                                     ; preds = %9, %1, %6, %5, %4, %3
  %13 = phi i32 [ 8, %6 ], [ 4, %5 ], [ 3, %4 ], [ 2, %3 ], [ 1, %1 ], [ 0, %9 ], !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  ret i32 %13, !dbg !51
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStoreEntryEncoding(i8*, i8 zeroext, i32) local_unnamed_addr #0 !dbg !52 {
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %5) #7, !dbg !69
  %6 = icmp ult i8 %1, -64, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %6, label %7, label %37, !dbg !73

; <label>:7:                                      ; preds = %3
  %8 = icmp ult i32 %2, 64, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %8, label %9, label %13, !dbg !77

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %0, null, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %10, label %45, label %11, !dbg !81

; <label>:11:                                     ; preds = %9
  %12 = trunc i32 %2 to i8, !dbg !82
  store i8 %12, i8* %5, align 1, !dbg !83, !tbaa !84
  br label %40, !dbg !87

; <label>:13:                                     ; preds = %7
  %14 = icmp ult i32 %2, 16384, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  %15 = icmp eq i8* %0, null, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %14, label %16, label %24, !dbg !90

; <label>:16:                                     ; preds = %13
  br i1 %15, label %45, label %17, !dbg !95

; <label>:17:                                     ; preds = %16
  %18 = lshr i32 %2, 8, !dbg !97
  %19 = trunc i32 %18 to i8, !dbg !98
  %20 = and i8 %19, 63, !dbg !98
  %21 = or i8 %20, 64, !dbg !98
  store i8 %21, i8* %5, align 1, !dbg !99, !tbaa !84
  %22 = trunc i32 %2 to i8, !dbg !100
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !101
  store i8 %22, i8* %23, align 1, !dbg !102, !tbaa !84
  br label %40, !dbg !103

; <label>:24:                                     ; preds = %13
  br i1 %15, label %45, label %25, !dbg !104

; <label>:25:                                     ; preds = %24
  store i8 -128, i8* %5, align 1, !dbg !105, !tbaa !84
  %26 = lshr i32 %2, 24, !dbg !106
  %27 = trunc i32 %26 to i8, !dbg !107
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !108
  store i8 %27, i8* %28, align 1, !dbg !109, !tbaa !84
  %29 = lshr i32 %2, 16, !dbg !110
  %30 = trunc i32 %29 to i8, !dbg !111
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2, !dbg !112
  store i8 %30, i8* %31, align 1, !dbg !113, !tbaa !84
  %32 = lshr i32 %2, 8, !dbg !114
  %33 = trunc i32 %32 to i8, !dbg !115
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3, !dbg !116
  store i8 %33, i8* %34, align 1, !dbg !117, !tbaa !84
  %35 = trunc i32 %2 to i8, !dbg !118
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4, !dbg !119
  store i8 %35, i8* %36, align 1, !dbg !120, !tbaa !84
  br label %40

; <label>:37:                                     ; preds = %3
  %38 = icmp eq i8* %0, null, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %38, label %45, label %39, !dbg !124

; <label>:39:                                     ; preds = %37
  store i8 %1, i8* %5, align 1, !dbg !125, !tbaa !84
  br label %40

; <label>:40:                                     ; preds = %11, %25, %17, %39
  %41 = phi i8 [ 1, %11 ], [ 2, %17 ], [ 5, %25 ], [ 1, %39 ], !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = zext i8 %41 to i64, !dbg !127
  %43 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %5, i64 %42) #5, !dbg !128
  %44 = zext i8 %41 to i32, !dbg !129
  br label %45, !dbg !130

; <label>:45:                                     ; preds = %37, %24, %16, %9, %40
  %46 = phi i32 [ %44, %40 ], [ 1, %9 ], [ 2, %16 ], [ 5, %24 ], [ 1, %37 ], !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %5) #7, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  ret i32 %46, !dbg !133
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStorePrevEntryLengthLarge(i8*, i32) local_unnamed_addr #0 !dbg !134 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4, !tbaa !143
  %4 = icmp eq i8* %0, null, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %4, label %9, label %5, !dbg !147

; <label>:5:                                      ; preds = %2
  store i8 -2, i8* %0, align 1, !dbg !148, !tbaa !84
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !150
  %7 = bitcast i32* %3 to i8*, !dbg !151
  %8 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %7, i64 4) #5, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br label %9, !dbg !153

; <label>:9:                                      ; preds = %2, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  ret i32 5, !dbg !154
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipStorePrevEntryLength(i8*, i32) local_unnamed_addr #0 !dbg !155 {
  %3 = alloca i32, align 4
  %4 = icmp eq i8* %0, null, !dbg !163
  %5 = icmp ult i32 %1, 254, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br i1 %4, label %6, label %8, !dbg !168

; <label>:6:                                      ; preds = %2
  %7 = select i1 %5, i32 1, i32 5, !dbg !169
  br label %15, !dbg !171

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  br i1 %5, label %9, label %11, !dbg !172

; <label>:9:                                      ; preds = %8
  %10 = trunc i32 %1 to i8, !dbg !173
  store i8 %10, i8* %0, align 1, !dbg !175, !tbaa !84
  br label %15, !dbg !176

; <label>:11:                                     ; preds = %8
  %12 = bitcast i32* %3 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !177
  store i32 %1, i32* %3, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  store i8 -2, i8* %0, align 1, !dbg !182, !tbaa !84
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !183
  %14 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %12, i64 4) #5, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !186
  br label %15, !dbg !187

; <label>:15:                                     ; preds = %11, %9, %6
  %16 = phi i32 [ %7, %6 ], [ 1, %9 ], [ 5, %11 ], !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  ret i32 %16, !dbg !190
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipPrevLenByteDiff(i8* nocapture readonly, i32) local_unnamed_addr #0 !dbg !191 {
  %3 = load i8, i8* %0, align 1, !dbg !198, !tbaa !84
  %4 = icmp ult i8 %3, -2, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %5 = select i1 %4, i32 1, i32 5, !dbg !202
  %6 = icmp ult i32 %1, 254, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %7 = select i1 %6, i32 1, i32 5, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  %8 = sub nsw i32 %7, %5, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  ret i32 %8, !dbg !214
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipRawEntryLength(i8* nocapture readonly) local_unnamed_addr #0 !dbg !215 {
  %2 = load i8, i8* %0, align 1, !dbg !225, !tbaa !84
  %3 = icmp ult i8 %2, -2, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %4 = select i1 %3, i32 1, i32 5, !dbg !229
  %5 = zext i32 %4 to i64, !dbg !232
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !232
  %7 = load i8, i8* %6, align 1, !dbg !232, !tbaa !84
  %8 = zext i8 %7 to i32, !dbg !232
  %9 = icmp ult i8 %7, -64, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %9, label %10, label %12, !dbg !232

; <label>:10:                                     ; preds = %1
  %11 = and i32 %8, 192, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br label %12, !dbg !236

; <label>:12:                                     ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %8, %1 ], !dbg !236
  %14 = icmp ult i32 %13, 192, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %14, label %15, label %52, !dbg !240

; <label>:15:                                     ; preds = %12
  %16 = icmp eq i32 %13, 0, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %16, label %17, label %20, !dbg !244

; <label>:17:                                     ; preds = %15
  %18 = and i8 %7, 63, !dbg !246
  %19 = zext i8 %18 to i32, !dbg !246
  br label %65, !dbg !246

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i32 %13, 64, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %21, label %22, label %30, !dbg !241

; <label>:22:                                     ; preds = %20
  %23 = and i8 %7, 63, !dbg !251
  %24 = zext i8 %23 to i32, !dbg !251
  %25 = shl nuw nsw i32 %24, 8, !dbg !251
  %26 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !251
  %27 = load i8, i8* %26, align 1, !dbg !251, !tbaa !84
  %28 = zext i8 %27 to i32, !dbg !251
  %29 = or i32 %25, %28, !dbg !251
  br label %65, !dbg !251

; <label>:30:                                     ; preds = %20
  %31 = icmp eq i32 %13, 128, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %31, label %32, label %51, !dbg !249

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !255
  %34 = load i8, i8* %33, align 1, !dbg !255, !tbaa !84
  %35 = zext i8 %34 to i32, !dbg !255
  %36 = shl nuw i32 %35, 24, !dbg !255
  %37 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !255
  %38 = load i8, i8* %37, align 1, !dbg !255, !tbaa !84
  %39 = zext i8 %38 to i32, !dbg !255
  %40 = shl nuw nsw i32 %39, 16, !dbg !255
  %41 = or i32 %40, %36, !dbg !255
  %42 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !255
  %43 = load i8, i8* %42, align 1, !dbg !255, !tbaa !84
  %44 = zext i8 %43 to i32, !dbg !255
  %45 = shl nuw nsw i32 %44, 8, !dbg !255
  %46 = or i32 %41, %45, !dbg !255
  %47 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !255
  %48 = load i8, i8* %47, align 1, !dbg !255, !tbaa !84
  %49 = zext i8 %48 to i32, !dbg !255
  %50 = or i32 %46, %49, !dbg !255
  br label %65

; <label>:51:                                     ; preds = %30
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %13) #5, !dbg !257
  tail call void @_exit(i32 1) #6, !dbg !257
  unreachable

; <label>:52:                                     ; preds = %12
  %53 = trunc i32 %13 to i8, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  switch i8 %53, label %58 [
    i8 -2, label %63
    i8 -64, label %54
    i8 -16, label %55
    i8 -48, label %56
    i8 -32, label %57
  ], !dbg !263

; <label>:54:                                     ; preds = %52
  br label %63, !dbg !264

; <label>:55:                                     ; preds = %52
  br label %63, !dbg !265

; <label>:56:                                     ; preds = %52
  br label %63, !dbg !266

; <label>:57:                                     ; preds = %52
  br label %63, !dbg !267

; <label>:58:                                     ; preds = %52
  %59 = icmp ugt i8 %53, -16, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %59, label %60, label %62, !dbg !269

; <label>:60:                                     ; preds = %58
  %61 = icmp ult i8 %53, -2, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %61, label %63, label %62, !dbg !271

; <label>:62:                                     ; preds = %60, %58
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %13) #5, !dbg !272
  tail call void @_exit(i32 1) #6, !dbg !272
  unreachable

; <label>:63:                                     ; preds = %60, %52, %54, %55, %56, %57
  %64 = phi i32 [ 8, %57 ], [ 4, %56 ], [ 3, %55 ], [ 2, %54 ], [ 1, %52 ], [ 0, %60 ], !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br label %65

; <label>:65:                                     ; preds = %17, %32, %22, %63
  %66 = phi i32 [ 1, %17 ], [ 2, %22 ], [ 5, %32 ], [ 1, %63 ], !dbg !246
  %67 = phi i32 [ %19, %17 ], [ %29, %22 ], [ %50, %32 ], [ %64, %63 ], !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = add nuw nsw i32 %66, %4, !dbg !276
  %69 = add i32 %68, %67, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  ret i32 %69, !dbg !278
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipTryEncoding(i8*, i32, i64* nocapture, i8* nocapture) local_unnamed_addr #0 !dbg !279 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !293
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !293
  %7 = add i32 %1, -1, !dbg !294
  %8 = icmp ugt i32 %7, 30, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %8, label %34, label %9, !dbg !294

; <label>:9:                                      ; preds = %4
  %10 = zext i32 %1 to i64, !dbg !296
  %11 = call i32 @string2ll(i8* %0, i64 %10, i64* nonnull %5) #5, !dbg !299
  %12 = icmp eq i32 %11, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %12, label %34, label %13, !dbg !300

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %5, align 8, !dbg !301, !tbaa !304
  %15 = icmp ult i64 %14, 13, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %15, label %16, label %19, !dbg !306

; <label>:16:                                     ; preds = %13
  %17 = trunc i64 %14 to i8, !dbg !307
  %18 = add i8 %17, -15, !dbg !307
  br label %32, !dbg !309

; <label>:19:                                     ; preds = %13
  %20 = add i64 %14, 128, !dbg !310
  %21 = icmp ult i64 %20, 256, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %21, label %32, label %22, !dbg !310

; <label>:22:                                     ; preds = %19
  %23 = add i64 %14, 32768, !dbg !312
  %24 = icmp ult i64 %23, 65536, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %24, label %32, label %25, !dbg !312

; <label>:25:                                     ; preds = %22
  %26 = add i64 %14, 8388608, !dbg !314
  %27 = icmp ult i64 %26, 16777216, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %27, label %32, label %28, !dbg !314

; <label>:28:                                     ; preds = %25
  %29 = add i64 %14, 2147483648, !dbg !316
  %30 = icmp ult i64 %29, 4294967296, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  %31 = select i1 %30, i8 -48, i8 -32, !dbg !318
  br label %32, !dbg !318

; <label>:32:                                     ; preds = %28, %25, %22, %19, %16
  %33 = phi i8 [ %18, %16 ], [ -2, %19 ], [ -64, %22 ], [ -16, %25 ], [ %31, %28 ]
  store i8 %33, i8* %3, align 1, !dbg !320, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i64 %14, i64* %2, align 8, !dbg !321, !tbaa !304
  br label %34, !dbg !322

; <label>:34:                                     ; preds = %9, %4, %32
  %35 = phi i32 [ 1, %32 ], [ 0, %4 ], [ 0, %9 ], !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  ret i32 %35, !dbg !325
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @zipSaveInteger(i8*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !326 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast i16* %4 to i8*, !dbg !347
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #7, !dbg !347
  %8 = bitcast i32* %5 to i8*, !dbg !348
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !348
  %9 = bitcast i64* %6 to i8*, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !349
  %10 = icmp eq i8 %2, -2, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %10, label %11, label %13, !dbg !352

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %1 to i8, !dbg !353
  store i8 %12, i8* %0, align 1, !dbg !355, !tbaa !84
  br label %39, !dbg !356

; <label>:13:                                     ; preds = %3
  %14 = icmp eq i8 %2, -64, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %14, label %15, label %18, !dbg !359

; <label>:15:                                     ; preds = %13
  %16 = trunc i64 %1 to i16, !dbg !360
  store i16 %16, i16* %4, align 2, !dbg !363, !tbaa !364
  %17 = call i8* @memcpy(i8* %0, i8* nonnull %7, i64 2) #5, !dbg !366
  br label %39, !dbg !367

; <label>:18:                                     ; preds = %13
  %19 = icmp eq i8 %2, -16, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %19, label %20, label %25, !dbg !370

; <label>:20:                                     ; preds = %18
  %21 = trunc i64 %1 to i32, !dbg !371
  %22 = shl i32 %21, 8, !dbg !371
  store i32 %22, i32* %5, align 4, !dbg !374, !tbaa !143
  %23 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !375
  %24 = call i8* @memcpy(i8* %0, i8* nonnull %23, i64 3) #5, !dbg !376
  br label %39, !dbg !377

; <label>:25:                                     ; preds = %18
  %26 = icmp eq i8 %2, -48, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %26, label %27, label %30, !dbg !380

; <label>:27:                                     ; preds = %25
  %28 = trunc i64 %1 to i32, !dbg !381
  store i32 %28, i32* %5, align 4, !dbg !383, !tbaa !143
  %29 = call i8* @memcpy(i8* %0, i8* nonnull %8, i64 4) #5, !dbg !384
  br label %39, !dbg !385

; <label>:30:                                     ; preds = %25
  %31 = icmp eq i8 %2, -32, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %31, label %32, label %34, !dbg !388

; <label>:32:                                     ; preds = %30
  store i64 %1, i64* %6, align 8, !dbg !390, !tbaa !392
  %33 = call i8* @memcpy(i8* %0, i8* nonnull %9, i64 8) #5, !dbg !394
  br label %39, !dbg !395

; <label>:34:                                     ; preds = %30
  %35 = icmp ugt i8 %2, -16, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %35, label %36, label %38, !dbg !398

; <label>:36:                                     ; preds = %34
  %37 = icmp ult i8 %2, -2, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %37, label %40, label %38, !dbg !400

; <label>:38:                                     ; preds = %34, %36
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 532) #5, !dbg !401
  tail call void @_exit(i32 1) #6, !dbg !401
  unreachable

; <label>:39:                                     ; preds = %11, %20, %32, %27, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br label %40, !dbg !404

; <label>:40:                                     ; preds = %39, %36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !404
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !404
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #7, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  ret void, !dbg !404
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @zipLoadInteger(i8*, i8 zeroext) local_unnamed_addr #0 !dbg !405 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i16* %3 to i8*, !dbg !417
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #7, !dbg !417
  %7 = bitcast i32* %4 to i8*, !dbg !418
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7, !dbg !418
  %8 = bitcast i64* %5 to i8*, !dbg !419
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !419
  %9 = icmp eq i8 %1, -2, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %9, label %10, label %13, !dbg !423

; <label>:10:                                     ; preds = %2
  %11 = load i8, i8* %0, align 1, !dbg !424, !tbaa !84
  %12 = sext i8 %11 to i64, !dbg !424
  br label %47, !dbg !426

; <label>:13:                                     ; preds = %2
  %14 = icmp eq i8 %1, -64, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %14, label %15, label %19, !dbg !429

; <label>:15:                                     ; preds = %13
  %16 = call i8* @memcpy(i8* nonnull %6, i8* %0, i64 2) #5, !dbg !430
  %17 = load i16, i16* %3, align 2, !dbg !432, !tbaa !364
  %18 = sext i16 %17 to i64, !dbg !432
  br label %47, !dbg !434

; <label>:19:                                     ; preds = %13
  %20 = icmp eq i8 %1, -48, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %20, label %21, label %25, !dbg !437

; <label>:21:                                     ; preds = %19
  %22 = call i8* @memcpy(i8* nonnull %7, i8* %0, i64 4) #5, !dbg !438
  %23 = load i32, i32* %4, align 4, !dbg !440, !tbaa !143
  %24 = sext i32 %23 to i64, !dbg !440
  br label %47, !dbg !442

; <label>:25:                                     ; preds = %19
  %26 = icmp eq i8 %1, -16, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %26, label %27, label %33, !dbg !445

; <label>:27:                                     ; preds = %25
  store i32 0, i32* %4, align 4, !dbg !446, !tbaa !143
  %28 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !448
  %29 = call i8* @memcpy(i8* nonnull %28, i8* %0, i64 3) #5, !dbg !449
  %30 = load i32, i32* %4, align 4, !dbg !450, !tbaa !143
  %31 = ashr i32 %30, 8, !dbg !451
  %32 = sext i32 %31 to i64, !dbg !450
  br label %47, !dbg !452

; <label>:33:                                     ; preds = %25
  %34 = icmp eq i8 %1, -32, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %34, label %35, label %38, !dbg !455

; <label>:35:                                     ; preds = %33
  %36 = call i8* @memcpy(i8* nonnull %8, i8* %0, i64 8) #5, !dbg !456
  %37 = load i64, i64* %5, align 8, !dbg !458, !tbaa !392
  br label %47, !dbg !460

; <label>:38:                                     ; preds = %33
  %39 = icmp ugt i8 %1, -16, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %39, label %40, label %46, !dbg !463

; <label>:40:                                     ; preds = %38
  %41 = icmp ult i8 %1, -2, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %41, label %42, label %46, !dbg !465

; <label>:42:                                     ; preds = %40
  %43 = and i8 %1, 15, !dbg !466
  %44 = zext i8 %43 to i64, !dbg !466
  %45 = add nsw i64 %44, -1, !dbg !468
  br label %47

; <label>:46:                                     ; preds = %38, %40
  tail call void @_serverAssert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 563) #5, !dbg !469
  tail call void @_exit(i32 1) #6, !dbg !469
  unreachable

; <label>:47:                                     ; preds = %15, %27, %42, %35, %21, %10
  %48 = phi i64 [ %12, %10 ], [ %18, %15 ], [ %24, %21 ], [ %32, %27 ], [ %37, %35 ], [ %45, %42 ], !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !472
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7, !dbg !472
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #7, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  ret i64 %48, !dbg !473
}

; Function Attrs: noredzone nounwind
define dso_local void @zipEntry(i8*, %struct.zlentry*) local_unnamed_addr #0 !dbg !474 {
  %3 = load i8, i8* %0, align 1, !dbg !493, !tbaa !84
  %4 = icmp ult i8 %3, -2, !dbg !493
  %5 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 0, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %4, label %6, label %10, !dbg !499

; <label>:6:                                      ; preds = %2
  store i32 1, i32* %5, align 8, !dbg !497, !tbaa !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %7 = load i8, i8* %0, align 1, !dbg !504, !tbaa !84
  %8 = zext i8 %7 to i32, !dbg !504
  %9 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !504
  store i32 %8, i32* %9, align 4, !dbg !504, !tbaa !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br label %16, !dbg !504

; <label>:10:                                     ; preds = %2
  store i32 5, i32* %5, align 8, !dbg !508, !tbaa !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %11 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 1, !dbg !511
  %12 = bitcast i32* %11 to i8*, !dbg !511
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !511
  %14 = tail call i8* @memcpy(i8* nonnull %12, i8* nonnull %13, i64 4) #5, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  %15 = load i32, i32* %5, align 8, !dbg !514, !tbaa !500
  br label %16, !dbg !511

; <label>:16:                                     ; preds = %6, %10
  %17 = phi i32 [ 1, %6 ], [ %15, %10 ], !dbg !514
  %18 = zext i32 %17 to i64, !dbg !514
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !514
  %20 = load i8, i8* %19, align 1, !dbg !514, !tbaa !84
  %21 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 5, !dbg !514
  store i8 %20, i8* %21, align 4, !dbg !514, !tbaa !517
  %22 = icmp ult i8 %20, -64, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %22, label %23, label %67, !dbg !514

; <label>:23:                                     ; preds = %16
  %24 = and i8 %20, -64, !dbg !518
  store i8 %24, i8* %21, align 4, !dbg !518, !tbaa !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %25 = zext i8 %24 to i32, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %26 = icmp eq i8 %24, 0, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %26, label %27, label %32, !dbg !526

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !527
  store i32 1, i32* %28, align 8, !dbg !527, !tbaa !529
  %29 = load i8, i8* %19, align 1, !dbg !527, !tbaa !84
  %30 = and i8 %29, 63, !dbg !527
  %31 = zext i8 %30 to i32, !dbg !527
  br label %81, !dbg !527

; <label>:32:                                     ; preds = %23
  %33 = icmp eq i8 %24, 64, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %33, label %34, label %44, !dbg !523

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !532
  store i32 2, i32* %35, align 8, !dbg !532, !tbaa !529
  %36 = load i8, i8* %19, align 1, !dbg !532, !tbaa !84
  %37 = and i8 %36, 63, !dbg !532
  %38 = zext i8 %37 to i32, !dbg !532
  %39 = shl nuw nsw i32 %38, 8, !dbg !532
  %40 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !532
  %41 = load i8, i8* %40, align 1, !dbg !532, !tbaa !84
  %42 = zext i8 %41 to i32, !dbg !532
  %43 = or i32 %39, %42, !dbg !532
  br label %81, !dbg !532

; <label>:44:                                     ; preds = %32
  %45 = icmp eq i8 %24, -128, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %45, label %46, label %66, !dbg !530

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !536
  store i32 5, i32* %47, align 8, !dbg !536, !tbaa !529
  %48 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !536
  %49 = load i8, i8* %48, align 1, !dbg !536, !tbaa !84
  %50 = zext i8 %49 to i32, !dbg !536
  %51 = shl nuw i32 %50, 24, !dbg !536
  %52 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !536
  %53 = load i8, i8* %52, align 1, !dbg !536, !tbaa !84
  %54 = zext i8 %53 to i32, !dbg !536
  %55 = shl nuw nsw i32 %54, 16, !dbg !536
  %56 = or i32 %55, %51, !dbg !536
  %57 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !536
  %58 = load i8, i8* %57, align 1, !dbg !536, !tbaa !84
  %59 = zext i8 %58 to i32, !dbg !536
  %60 = shl nuw nsw i32 %59, 8, !dbg !536
  %61 = or i32 %56, %60, !dbg !536
  %62 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !536
  %63 = load i8, i8* %62, align 1, !dbg !536, !tbaa !84
  %64 = zext i8 %63 to i32, !dbg !536
  %65 = or i32 %61, %64, !dbg !536
  br label %81

; <label>:66:                                     ; preds = %44
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %25) #5, !dbg !538
  tail call void @_exit(i32 1) #6, !dbg !538
  unreachable

; <label>:67:                                     ; preds = %16
  %68 = zext i8 %20 to i32, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %69 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 2, !dbg !540
  store i32 1, i32* %69, align 8, !dbg !540, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  switch i8 %20, label %74 [
    i8 -2, label %79
    i8 -64, label %70
    i8 -16, label %71
    i8 -48, label %72
    i8 -32, label %73
  ], !dbg !544

; <label>:70:                                     ; preds = %67
  br label %79, !dbg !545

; <label>:71:                                     ; preds = %67
  br label %79, !dbg !546

; <label>:72:                                     ; preds = %67
  br label %79, !dbg !547

; <label>:73:                                     ; preds = %67
  br label %79, !dbg !548

; <label>:74:                                     ; preds = %67
  %75 = icmp ugt i8 %20, -16, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %75, label %76, label %78, !dbg !550

; <label>:76:                                     ; preds = %74
  %77 = icmp ult i8 %20, -2, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %77, label %79, label %78, !dbg !552

; <label>:78:                                     ; preds = %76, %74
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68) #5, !dbg !553
  tail call void @_exit(i32 1) #6, !dbg !553
  unreachable

; <label>:79:                                     ; preds = %76, %67, %70, %71, %72, %73
  %80 = phi i32 [ 8, %73 ], [ 4, %72 ], [ 3, %71 ], [ 2, %70 ], [ 1, %67 ], [ 0, %76 ], !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br label %81

; <label>:81:                                     ; preds = %79, %34, %46, %27
  %82 = phi i32 [ %80, %79 ], [ %43, %34 ], [ %65, %46 ], [ %31, %27 ]
  %83 = phi i32 [ 1, %79 ], [ 2, %34 ], [ 5, %46 ], [ 1, %27 ], !dbg !557
  %84 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 3, !dbg !540
  store i32 %82, i32* %84, align 4, !dbg !540, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %85 = add i32 %83, %17, !dbg !559
  %86 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 4, !dbg !560
  store i32 %85, i32* %86, align 8, !dbg !561, !tbaa !562
  %87 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %1, i64 0, i32 6, !dbg !563
  store i8* %0, i8** %87, align 8, !dbg !564, !tbaa !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  ret void, !dbg !566
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNew() local_unnamed_addr #0 !dbg !567 {
  %1 = tail call i8* @zmalloc(i64 11) #5, !dbg !574
  %2 = bitcast i8* %1 to i32*, !dbg !576
  store i32 11, i32* %2, align 4, !dbg !577, !tbaa !143
  %3 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !578
  %4 = bitcast i8* %3 to i32*, !dbg !578
  store i32 10, i32* %4, align 4, !dbg !579, !tbaa !143
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !580
  %6 = bitcast i8* %5 to i16*, !dbg !580
  store i16 0, i16* %6, align 2, !dbg !581, !tbaa !364
  %7 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !582
  store i8 -1, i8* %7, align 1, !dbg !583, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret i8* %1, !dbg !584
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistResize(i8*, i32) local_unnamed_addr #0 !dbg !585 {
  %3 = zext i32 %1 to i64, !dbg !593
  %4 = tail call i8* @zrealloc(i8* %0, i64 %3) #5, !dbg !594
  %5 = bitcast i8* %4 to i32*, !dbg !595
  store i32 %1, i32* %5, align 4, !dbg !596, !tbaa !143
  %6 = add i32 %1, -1, !dbg !597
  %7 = zext i32 %6 to i64, !dbg !598
  %8 = getelementptr inbounds i8, i8* %4, i64 %7, !dbg !598
  store i8 -1, i8* %8, align 1, !dbg !599, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  ret i8* %4, !dbg !600
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistCascadeUpdate(i8*, i8*) local_unnamed_addr #0 !dbg !601 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zlentry, align 8
  %7 = alloca %struct.zlentry, align 8
  %8 = bitcast i8* %0 to i32*, !dbg !622
  %9 = load i32, i32* %8, align 4, !dbg !622, !tbaa !143
  %10 = bitcast %struct.zlentry* %6 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #7, !dbg !623
  %11 = bitcast %struct.zlentry* %7 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #7, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %12 = load i8, i8* %1, align 1, !dbg !625, !tbaa !84
  %13 = icmp eq i8 %12, -1, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %13, label %109, label %14, !dbg !624

; <label>:14:                                     ; preds = %2
  %15 = zext i32 %9 to i64, !dbg !622
  %16 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4
  %17 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %7, i64 0, i32 0
  %20 = bitcast i32* %4 to i8*
  br label %21, !dbg !624

; <label>:21:                                     ; preds = %14, %86
  %22 = phi i8* [ %0, %14 ], [ %50, %86 ]
  %23 = phi i8* [ %1, %14 ], [ %56, %86 ]
  %24 = phi i64 [ %15, %14 ], [ %47, %86 ]
  call void @zipEntry(i8* nonnull %23, %struct.zlentry* nonnull %6) #8, !dbg !629
  %25 = load i32, i32* %16, align 8, !dbg !631, !tbaa !562
  %26 = load i32, i32* %17, align 4, !dbg !632, !tbaa !558
  %27 = add i32 %26, %25, !dbg !633
  %28 = zext i32 %27 to i64, !dbg !634
  %29 = icmp ult i32 %27, 254, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %30 = select i1 %29, i32 1, i32 5, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %31 = zext i32 %30 to i64, !dbg !644
  %32 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !646
  %33 = load i8, i8* %32, align 1, !dbg !646, !tbaa !84
  %34 = icmp eq i8 %33, -1, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %34, label %109, label %35, !dbg !649

; <label>:35:                                     ; preds = %21
  call void @zipEntry(i8* %32, %struct.zlentry* nonnull %7) #8, !dbg !651
  %36 = load i32, i32* %18, align 4, !dbg !652, !tbaa !507
  %37 = icmp eq i32 %36, %27, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %37, label %109, label %38, !dbg !655

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %19, align 8, !dbg !656, !tbaa !500
  %40 = icmp ugt i32 %30, %39, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %40, label %41, label %89, !dbg !659

; <label>:41:                                     ; preds = %38
  %42 = zext i32 %39 to i64, !dbg !660
  %43 = ptrtoint i8* %23 to i64, !dbg !661
  %44 = ptrtoint i8* %22 to i64, !dbg !661
  %45 = sub i64 %43, %44, !dbg !661
  %46 = sub nsw i64 %31, %42, !dbg !664
  %47 = add i64 %46, %24, !dbg !666
  %48 = trunc i64 %47 to i32, !dbg !667
  %49 = and i64 %47, 4294967295, !dbg !671
  %50 = call i8* @zrealloc(i8* nonnull %22, i64 %49) #5, !dbg !672
  %51 = bitcast i8* %50 to i32*, !dbg !673
  store i32 %48, i32* %51, align 4, !dbg !674, !tbaa !143
  %52 = add i64 %47, 4294967295, !dbg !675
  %53 = and i64 %52, 4294967295, !dbg !676
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !676
  store i8 -1, i8* %54, align 1, !dbg !677, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %55 = getelementptr inbounds i8, i8* %50, i64 %45, !dbg !679
  %56 = getelementptr inbounds i8, i8* %55, i64 %28, !dbg !680
  %57 = ptrtoint i8* %56 to i64, !dbg !682
  %58 = ptrtoint i8* %50 to i64, !dbg !682
  %59 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !683
  %60 = bitcast i8* %59 to i32*, !dbg !683
  %61 = load i32, i32* %60, align 4, !dbg !683, !tbaa !143
  %62 = zext i32 %61 to i64, !dbg !685
  %63 = getelementptr inbounds i8, i8* %50, i64 %62, !dbg !685
  %64 = icmp eq i8* %63, %56, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %64, label %68, label %65, !dbg !687

; <label>:65:                                     ; preds = %41
  %66 = trunc i64 %46 to i32, !dbg !688
  %67 = add i32 %61, %66, !dbg !688
  store i32 %67, i32* %60, align 4, !dbg !690, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br label %68, !dbg !691

; <label>:68:                                     ; preds = %41, %65
  %69 = getelementptr inbounds i8, i8* %56, i64 %31, !dbg !692
  %70 = load i32, i32* %19, align 8, !dbg !693, !tbaa !500
  %71 = zext i32 %70 to i64, !dbg !694
  %72 = getelementptr inbounds i8, i8* %56, i64 %71, !dbg !694
  %73 = xor i64 %71, -1, !dbg !695
  %74 = add i64 %24, %58, !dbg !696
  %75 = sub i64 %74, %57, !dbg !696
  %76 = add i64 %75, %73, !dbg !695
  %77 = call i8* @memmove(i8* nonnull %69, i8* %72, i64 %76) #5, !dbg !697
  %78 = icmp eq i8* %56, null, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %78, label %86, label %79, !dbg !702

; <label>:79:                                     ; preds = %68
  br i1 %29, label %80, label %82, !dbg !704

; <label>:80:                                     ; preds = %79
  %81 = trunc i32 %27 to i8, !dbg !705
  store i8 %81, i8* %56, align 1, !dbg !706, !tbaa !84
  br label %85, !dbg !707

; <label>:82:                                     ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !708
  store i32 %27, i32* %4, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  store i8 -2, i8* %56, align 1, !dbg !712, !tbaa !84
  %83 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !713
  %84 = call i8* @memcpy(i8* nonnull %83, i8* nonnull %20, i64 4) #5, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !716
  br label %85, !dbg !717

; <label>:85:                                     ; preds = %82, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br label %86, !dbg !718

; <label>:86:                                     ; preds = %85, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %87 = load i8, i8* %56, align 1, !dbg !625, !tbaa !84
  %88 = icmp eq i8 %87, -1, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %88, label %109, label %21, !dbg !624, !llvm.loop !719

; <label>:89:                                     ; preds = %38
  %90 = icmp ult i32 %30, %39, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %90, label %91, label %98, !dbg !724

; <label>:91:                                     ; preds = %89
  %92 = bitcast i32* %3 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92), !dbg !725
  store i32 %27, i32* %3, align 4, !tbaa !143
  %93 = icmp eq i8* %32, null, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %93, label %97, label %94, !dbg !730

; <label>:94:                                     ; preds = %91
  store i8 -2, i8* %32, align 1, !dbg !731, !tbaa !84
  %95 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !732
  %96 = call i8* @memcpy(i8* nonnull %95, i8* nonnull %92, i64 4) #5, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br label %97, !dbg !734

; <label>:97:                                     ; preds = %91, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92), !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %109, !dbg !736

; <label>:98:                                     ; preds = %89
  %99 = icmp eq i8* %32, null, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  br i1 %99, label %108, label %100, !dbg !742

; <label>:100:                                    ; preds = %98
  br i1 %29, label %101, label %103, !dbg !744

; <label>:101:                                    ; preds = %100
  %102 = trunc i32 %27 to i8, !dbg !745
  store i8 %102, i8* %32, align 1, !dbg !746, !tbaa !84
  br label %107, !dbg !747

; <label>:103:                                    ; preds = %100
  %104 = bitcast i32* %5 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %104) #7, !dbg !748
  store i32 %27, i32* %5, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  store i8 -2, i8* %32, align 1, !dbg !752, !tbaa !84
  %105 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !753
  %106 = call i8* @memcpy(i8* nonnull %105, i8* nonnull %104, i64 4) #5, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %104) #7, !dbg !756
  br label %107, !dbg !757

; <label>:107:                                    ; preds = %103, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  br label %108, !dbg !758

; <label>:108:                                    ; preds = %107, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %109

; <label>:109:                                    ; preds = %21, %35, %86, %2, %97, %108
  %110 = phi i8* [ %22, %97 ], [ %22, %108 ], [ %0, %2 ], [ %22, %21 ], [ %22, %35 ], [ %50, %86 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #7, !dbg !759
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #7, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  ret i8* %110, !dbg !760
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistDelete(i8*, i8*, i32) local_unnamed_addr #0 !dbg !761 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlentry, align 8
  %6 = alloca %struct.zlentry, align 8
  %7 = bitcast %struct.zlentry* %5 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #7, !dbg !780
  %8 = bitcast %struct.zlentry* %6 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #7, !dbg !780
  call void @zipEntry(i8* %1, %struct.zlentry* nonnull %5) #8, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  %9 = load i8, i8* %1, align 1, !dbg !786, !tbaa !84
  %10 = icmp eq i8 %9, -1, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %10, label %24, label %11, !dbg !789

; <label>:11:                                     ; preds = %3
  %12 = icmp eq i32 %2, 0, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %12, label %27, label %15, !dbg !791

; <label>:13:                                     ; preds = %15
  %14 = icmp ult i32 %21, %2, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %14, label %15, label %27, !dbg !791, !llvm.loop !792

; <label>:15:                                     ; preds = %11, %13
  %16 = phi i8* [ %20, %13 ], [ %1, %11 ]
  %17 = phi i32 [ %21, %13 ], [ 0, %11 ]
  %18 = call i32 @zipRawEntryLength(i8* %16) #8, !dbg !794
  %19 = zext i32 %18 to i64, !dbg !796
  %20 = getelementptr inbounds i8, i8* %16, i64 %19, !dbg !796
  %21 = add i32 %17, 1, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %22 = load i8, i8* %20, align 1, !dbg !786, !tbaa !84
  %23 = icmp eq i8 %22, -1, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %23, label %24, label %13, !dbg !789, !llvm.loop !792

; <label>:24:                                     ; preds = %15, %3
  %25 = phi i8* [ %1, %3 ], [ %20, %15 ]
  %26 = phi i32 [ 0, %3 ], [ %21, %15 ], !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br label %27

; <label>:27:                                     ; preds = %13, %11, %24
  %28 = phi i8* [ %25, %24 ], [ %1, %11 ], [ %20, %13 ]
  %29 = phi i32 [ %26, %24 ], [ 0, %11 ], [ %21, %13 ]
  %30 = phi i8 [ -1, %24 ], [ %9, %11 ], [ %22, %13 ]
  %31 = phi i1 [ true, %24 ], [ false, %11 ], [ false, %13 ]
  %32 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 6, !dbg !800
  %33 = bitcast i8** %32 to i64*, !dbg !800
  %34 = load i64, i64* %33, align 8, !dbg !800, !tbaa !565
  %35 = ptrtoint i8* %28 to i64, !dbg !801
  %36 = sub i64 %35, %34, !dbg !801
  %37 = trunc i64 %36 to i32, !dbg !802
  %38 = icmp eq i32 %37, 0, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %38, label %125, label %39, !dbg !806

; <label>:39:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %31, label %90, label %40, !dbg !807

; <label>:40:                                     ; preds = %39
  %41 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !809
  %42 = load i32, i32* %41, align 4, !dbg !809, !tbaa !507
  %43 = icmp eq i8 %30, -2, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = select i1 %43, i32 5, i32 1, !dbg !817
  %45 = icmp ult i32 %42, 254, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  %46 = select i1 %45, i32 1, i32 5, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %47 = sub nsw i32 %46, %44, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %48 = sext i32 %47 to i64, !dbg !829
  %49 = sub nsw i64 0, %48, !dbg !829
  %50 = getelementptr inbounds i8, i8* %28, i64 %49, !dbg !829
  %51 = icmp eq i8* %50, null, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %51, label %60, label %52, !dbg !834

; <label>:52:                                     ; preds = %40
  br i1 %45, label %53, label %55, !dbg !836

; <label>:53:                                     ; preds = %52
  %54 = trunc i32 %42 to i8, !dbg !837
  store i8 %54, i8* %50, align 1, !dbg !838, !tbaa !84
  br label %59, !dbg !839

; <label>:55:                                     ; preds = %52
  %56 = bitcast i32* %4 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #7, !dbg !840
  store i32 %42, i32* %4, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  store i8 -2, i8* %50, align 1, !dbg !844, !tbaa !84
  %57 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !845
  %58 = call i8* @memcpy(i8* nonnull %57, i8* nonnull %56, i64 4) #5, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #7, !dbg !848
  br label %59, !dbg !849

; <label>:59:                                     ; preds = %55, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br label %60, !dbg !850

; <label>:60:                                     ; preds = %59, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %61 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !851
  %62 = bitcast i8* %61 to i32*, !dbg !851
  %63 = load i32, i32* %62, align 4, !dbg !851, !tbaa !143
  %64 = sub i32 %63, %37, !dbg !851
  store i32 %64, i32* %62, align 4, !dbg !852, !tbaa !143
  call void @zipEntry(i8* %50, %struct.zlentry* nonnull %6) #8, !dbg !854
  %65 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 4, !dbg !855
  %66 = load i32, i32* %65, align 8, !dbg !855, !tbaa !562
  %67 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %6, i64 0, i32 3, !dbg !857
  %68 = load i32, i32* %67, align 4, !dbg !857, !tbaa !558
  %69 = add i32 %68, %66, !dbg !858
  %70 = zext i32 %69 to i64, !dbg !859
  %71 = getelementptr inbounds i8, i8* %50, i64 %70, !dbg !859
  %72 = load i8, i8* %71, align 1, !dbg !859, !tbaa !84
  %73 = icmp eq i8 %72, -1, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %73, label %77, label %74, !dbg !861

; <label>:74:                                     ; preds = %60
  %75 = load i32, i32* %62, align 4, !dbg !862, !tbaa !143
  %76 = add i32 %75, %47, !dbg !862
  store i32 %76, i32* %62, align 4, !dbg !864, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br label %77, !dbg !865

; <label>:77:                                     ; preds = %60, %74
  %78 = load i8*, i8** %32, align 8, !dbg !866, !tbaa !565
  %79 = bitcast i8* %0 to i32*, !dbg !867
  %80 = load i32, i32* %79, align 4, !dbg !867, !tbaa !143
  %81 = zext i32 %80 to i64, !dbg !867
  %82 = ptrtoint i8* %50 to i64, !dbg !868
  %83 = ptrtoint i8* %0 to i64, !dbg !868
  %84 = xor i64 %82, -1, !dbg !869
  %85 = add i64 %84, %83, !dbg !869
  %86 = add i64 %85, %81, !dbg !870
  %87 = call i8* @memmove(i8* %78, i8* nonnull %50, i64 %86) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  %88 = load i64, i64* %33, align 8, !dbg !873, !tbaa !565
  %89 = sub i64 %88, %83, !dbg !874
  br label %100, !dbg !872

; <label>:90:                                     ; preds = %39
  %91 = ptrtoint i8* %0 to i64, !dbg !875
  %92 = sub i64 %34, %91, !dbg !875
  %93 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 1, !dbg !875
  %94 = load i32, i32* %93, align 4, !dbg !875, !tbaa !507
  %95 = trunc i64 %92 to i32, !dbg !875
  %96 = sub i32 %95, %94, !dbg !875
  %97 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !877
  %98 = bitcast i8* %97 to i32*, !dbg !877
  store i32 %96, i32* %98, align 4, !dbg !878, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %99 = bitcast i8* %0 to i32*, !dbg !879
  br label %100

; <label>:100:                                    ; preds = %90, %77
  %101 = phi i32* [ %99, %90 ], [ %79, %77 ], !dbg !879
  %102 = phi i64 [ %92, %90 ], [ %89, %77 ], !dbg !874
  %103 = phi i32 [ 0, %90 ], [ %47, %77 ], !dbg !880
  %104 = load i32, i32* %101, align 4, !dbg !879, !tbaa !143
  %105 = sub i32 %104, %37, !dbg !882
  %106 = add i32 %105, %103, !dbg !883
  %107 = zext i32 %106 to i64, !dbg !887
  %108 = call i8* @zrealloc(i8* nonnull %0, i64 %107) #5, !dbg !888
  %109 = bitcast i8* %108 to i32*, !dbg !889
  store i32 %106, i32* %109, align 4, !dbg !890, !tbaa !143
  %110 = add i32 %106, -1, !dbg !891
  %111 = zext i32 %110 to i64, !dbg !892
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !892
  store i8 -1, i8* %112, align 1, !dbg !893, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  %113 = getelementptr inbounds i8, i8* %108, i64 8, !dbg !895
  %114 = bitcast i8* %113 to i16*, !dbg !895
  %115 = load i16, i16* %114, align 2, !dbg !895, !tbaa !364
  %116 = icmp eq i16 %115, -1, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %116, label %120, label %117, !dbg !898

; <label>:117:                                    ; preds = %100
  %118 = trunc i32 %29 to i16, !dbg !895
  %119 = sub i16 %115, %118, !dbg !895
  store i16 %119, i16* %114, align 2, !dbg !895, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %120, !dbg !895

; <label>:120:                                    ; preds = %100, %117
  %121 = icmp eq i32 %103, 0, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %121, label %125, label %122, !dbg !901

; <label>:122:                                    ; preds = %120
  %123 = getelementptr inbounds i8, i8* %108, i64 %102, !dbg !902
  %124 = call i8* @__ziplistCascadeUpdate(i8* %108, i8* %123) #8, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br label %125, !dbg !904

; <label>:125:                                    ; preds = %120, %27, %122
  %126 = phi i8* [ %124, %122 ], [ %108, %120 ], [ %0, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #7, !dbg !905
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #7, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  ret i8* %126, !dbg !906
}

; Function Attrs: noredzone nounwind
define dso_local i8* @__ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !907 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zlentry, align 8
  %11 = bitcast i8* %0 to i32*, !dbg !932
  %12 = load i32, i32* %11, align 4, !dbg !932, !tbaa !143
  %13 = zext i32 %12 to i64, !dbg !932
  %14 = bitcast i32* %9 to i8*, !dbg !934
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #7, !dbg !934
  store i32 0, i32* %9, align 4, !dbg !935, !tbaa !143
  %15 = bitcast %struct.zlentry* %10 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #7, !dbg !939
  %16 = load i8, i8* %1, align 1, !dbg !940, !tbaa !84
  %17 = icmp eq i8 %16, -1, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %17, label %25, label %18, !dbg !942

; <label>:18:                                     ; preds = %4
  %19 = icmp eq i8 %16, -2, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br i1 %19, label %22, label %20, !dbg !949

; <label>:20:                                     ; preds = %18
  %21 = zext i8 %16 to i32, !dbg !950
  store i32 %21, i32* %9, align 4, !dbg !950, !tbaa !143
  br label %35, !dbg !950

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  %23 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !954
  %24 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %23, i64 4) #5, !dbg !954
  br label %35, !dbg !954

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !957
  %27 = bitcast i8* %26 to i32*, !dbg !957
  %28 = load i32, i32* %27, align 4, !dbg !957, !tbaa !143
  %29 = zext i32 %28 to i64, !dbg !957
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !957
  %31 = load i8, i8* %30, align 1, !dbg !959, !tbaa !84
  %32 = icmp eq i8 %31, -1, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br i1 %32, label %35, label %33, !dbg !962

; <label>:33:                                     ; preds = %25
  %34 = tail call i32 @zipRawEntryLength(i8* %30) #8, !dbg !963
  store i32 %34, i32* %9, align 4, !dbg !965, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br label %35, !dbg !966

; <label>:35:                                     ; preds = %33, %25, %20, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = bitcast i64* %8 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #7, !dbg !971
  %37 = add i32 %3, -1, !dbg !972
  %38 = icmp ugt i32 %37, 30, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br i1 %38, label %69, label %39, !dbg !972

; <label>:39:                                     ; preds = %35
  %40 = zext i32 %3 to i64, !dbg !973
  %41 = call i32 @string2ll(i8* %2, i64 %40, i64* nonnull %8) #5, !dbg !975
  %42 = icmp eq i32 %41, 0, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %42, label %69, label %43, !dbg !976

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %8, align 8, !dbg !977, !tbaa !304
  %45 = icmp ult i64 %44, 13, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %45, label %61, label %46, !dbg !978

; <label>:46:                                     ; preds = %43
  %47 = add i64 %44, 128, !dbg !979
  %48 = icmp ult i64 %47, 256, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br i1 %48, label %49, label %50, !dbg !979

; <label>:49:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %70, !dbg !988

; <label>:50:                                     ; preds = %46
  %51 = add i64 %44, 32768, !dbg !989
  %52 = icmp ult i64 %51, 65536, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %52, label %53, label %54, !dbg !989

; <label>:53:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %63, !dbg !988

; <label>:54:                                     ; preds = %50
  %55 = add i64 %44, 8388608, !dbg !992
  %56 = icmp ult i64 %55, 16777216, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %56, label %57, label %58, !dbg !992

; <label>:57:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %64, !dbg !988

; <label>:58:                                     ; preds = %54
  %59 = add i64 %44, 2147483648, !dbg !995
  %60 = icmp ult i64 %59, 4294967296, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %60, label %65, label %66, !dbg !995

; <label>:61:                                     ; preds = %43
  %62 = trunc i64 %44 to i8, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  switch i8 %62, label %67 [
    i8 13, label %70
    i8 -49, label %63
    i8 -1, label %64
    i8 -33, label %65
    i8 -17, label %66
  ], !dbg !988

; <label>:63:                                     ; preds = %53, %61
  br label %70, !dbg !998

; <label>:64:                                     ; preds = %57, %61
  br label %70, !dbg !999

; <label>:65:                                     ; preds = %58, %61
  br label %70, !dbg !1000

; <label>:66:                                     ; preds = %58, %61
  br label %70, !dbg !1001

; <label>:67:                                     ; preds = %61
  %68 = add i8 %62, -15, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %70, !dbg !1004

; <label>:69:                                     ; preds = %39, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !983
  br label %70

; <label>:70:                                     ; preds = %67, %66, %65, %64, %63, %49, %61, %69
  %71 = phi i64 [ 123456789, %69 ], [ %44, %61 ], [ %44, %49 ], [ %44, %63 ], [ %44, %64 ], [ %44, %65 ], [ %44, %66 ], [ %44, %67 ]
  %72 = phi i8 [ 0, %69 ], [ -2, %61 ], [ -2, %49 ], [ -64, %63 ], [ -16, %64 ], [ -48, %65 ], [ -32, %66 ], [ %68, %67 ]
  %73 = phi i32 [ %3, %69 ], [ 1, %61 ], [ 1, %49 ], [ 2, %63 ], [ 3, %64 ], [ 4, %65 ], [ 8, %66 ], [ 0, %67 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = zext i32 %73 to i64, !dbg !1008
  %75 = load i32, i32* %9, align 4, !dbg !1010, !tbaa !143
  %76 = icmp ult i32 %75, 254, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  %77 = select i1 %76, i64 1, i64 5, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  %78 = add nuw nsw i64 %77, %74, !dbg !1019
  %79 = icmp ult i8 %72, -64, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br i1 %79, label %80, label %86, !dbg !1026

; <label>:80:                                     ; preds = %70
  %81 = icmp ult i32 %3, 64, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %81, label %82, label %83, !dbg !1028

; <label>:82:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br label %87, !dbg !1030

; <label>:83:                                     ; preds = %80
  %84 = icmp ult i32 %3, 16384, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  %85 = select i1 %84, i64 2, i64 5, !dbg !1035
  br label %87, !dbg !1035

; <label>:86:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br label %87, !dbg !1038

; <label>:87:                                     ; preds = %83, %82, %86
  %88 = phi i64 [ 1, %82 ], [ 1, %86 ], [ %85, %83 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %89 = add nuw nsw i64 %78, %88, !dbg !1040
  %90 = load i8, i8* %1, align 1, !dbg !1042, !tbaa !84
  %91 = icmp eq i8 %90, -1, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %91, label %92, label %94, !dbg !1044

; <label>:92:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %93 = trunc i64 %89 to i32, !dbg !1047
  br label %105, !dbg !1045

; <label>:94:                                     ; preds = %87
  %95 = trunc i64 %89 to i32, !dbg !1048
  %96 = icmp eq i8 %90, -2, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %97 = select i1 %96, i32 5, i32 1, !dbg !1054
  %98 = icmp ult i32 %95, 254, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %99 = select i1 %98, i32 1, i32 5, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  %100 = sub nsw i32 %99, %97, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  %101 = icmp eq i32 %100, -4, !dbg !1066
  %102 = icmp ult i64 %89, 4, !dbg !1067
  %103 = and i1 %102, %101, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %103, label %104, label %105, !dbg !1045

; <label>:104:                                    ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br label %105, !dbg !1068

; <label>:105:                                    ; preds = %92, %104, %94
  %106 = phi i32 [ %93, %92 ], [ %95, %104 ], [ %95, %94 ], !dbg !1047
  %107 = phi i32 [ 0, %92 ], [ 0, %104 ], [ %100, %94 ], !dbg !1034
  %108 = phi i32 [ 0, %92 ], [ 1, %104 ], [ 0, %94 ], !dbg !1034
  %109 = ptrtoint i8* %1 to i64, !dbg !1070
  %110 = ptrtoint i8* %0 to i64, !dbg !1070
  %111 = sub i64 %109, %110, !dbg !1070
  %112 = sext i32 %107 to i64, !dbg !1072
  %113 = add i32 %12, %106, !dbg !1047
  %114 = add i32 %113, %107, !dbg !1047
  %115 = zext i32 %114 to i64, !dbg !1076
  %116 = call i8* @zrealloc(i8* nonnull %0, i64 %115) #5, !dbg !1077
  %117 = bitcast i8* %116 to i32*, !dbg !1078
  store i32 %114, i32* %117, align 4, !dbg !1079, !tbaa !143
  %118 = add i32 %114, -1, !dbg !1080
  %119 = zext i32 %118 to i64, !dbg !1081
  %120 = getelementptr inbounds i8, i8* %116, i64 %119, !dbg !1081
  store i8 -1, i8* %120, align 1, !dbg !1082, !tbaa !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  %121 = getelementptr inbounds i8, i8* %116, i64 %111, !dbg !1084
  %122 = load i8, i8* %121, align 1, !dbg !1085, !tbaa !84
  %123 = icmp eq i8 %122, -1, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br i1 %123, label %165, label %124, !dbg !1088

; <label>:124:                                    ; preds = %105
  %125 = getelementptr inbounds i8, i8* %121, i64 %89, !dbg !1089
  %126 = sub nsw i64 0, %112, !dbg !1091
  %127 = getelementptr inbounds i8, i8* %121, i64 %126, !dbg !1091
  %128 = xor i64 %111, -1, !dbg !1092
  %129 = add i64 %13, %128, !dbg !1092
  %130 = add i64 %129, %112, !dbg !1093
  %131 = call i8* @memmove(i8* nonnull %125, i8* %127, i64 %130) #5, !dbg !1094
  %132 = icmp eq i32 %108, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %132, label %137, label %133, !dbg !1097

; <label>:133:                                    ; preds = %124
  %134 = bitcast i32* %7 to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134), !dbg !1098
  store i32 %106, i32* %7, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  store i8 -2, i8* %125, align 1, !dbg !1102, !tbaa !84
  %135 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !1103
  %136 = call i8* @memcpy(i8* nonnull %135, i8* nonnull %134, i64 4) #5, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134), !dbg !1106
  br label %146, !dbg !1107

; <label>:137:                                    ; preds = %124
  %138 = icmp ult i32 %106, 254, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  br i1 %138, label %139, label %141, !dbg !1113

; <label>:139:                                    ; preds = %137
  %140 = trunc i64 %89 to i8, !dbg !1114
  store i8 %140, i8* %125, align 1, !dbg !1115, !tbaa !84
  br label %145, !dbg !1116

; <label>:141:                                    ; preds = %137
  %142 = bitcast i32* %6 to i8*, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #7, !dbg !1117
  store i32 %106, i32* %6, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  store i8 -2, i8* %125, align 1, !dbg !1121, !tbaa !84
  %143 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !1122
  %144 = call i8* @memcpy(i8* nonnull %143, i8* nonnull %142, i64 4) #5, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #7, !dbg !1125
  br label %145, !dbg !1126

; <label>:145:                                    ; preds = %139, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br label %146

; <label>:146:                                    ; preds = %145, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %147 = getelementptr inbounds i8, i8* %116, i64 4, !dbg !1129
  %148 = bitcast i8* %147 to i32*, !dbg !1129
  %149 = load i32, i32* %148, align 4, !dbg !1129, !tbaa !143
  %150 = add i32 %149, %106, !dbg !1129
  store i32 %150, i32* %148, align 4, !dbg !1130, !tbaa !143
  call void @zipEntry(i8* nonnull %125, %struct.zlentry* nonnull %10) #8, !dbg !1132
  %151 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %10, i64 0, i32 4, !dbg !1133
  %152 = load i32, i32* %151, align 8, !dbg !1133, !tbaa !562
  %153 = zext i32 %152 to i64, !dbg !1135
  %154 = add nuw nsw i64 %89, %153, !dbg !1136
  %155 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %10, i64 0, i32 3, !dbg !1137
  %156 = load i32, i32* %155, align 4, !dbg !1137, !tbaa !558
  %157 = zext i32 %156 to i64, !dbg !1138
  %158 = add nuw nsw i64 %154, %157, !dbg !1139
  %159 = getelementptr inbounds i8, i8* %121, i64 %158, !dbg !1140
  %160 = load i8, i8* %159, align 1, !dbg !1140, !tbaa !84
  %161 = icmp eq i8 %160, -1, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  br i1 %161, label %170, label %162, !dbg !1142

; <label>:162:                                    ; preds = %146
  %163 = load i32, i32* %148, align 4, !dbg !1143, !tbaa !143
  %164 = add i32 %163, %107, !dbg !1143
  store i32 %164, i32* %148, align 4, !dbg !1145, !tbaa !143
  br label %169, !dbg !1146

; <label>:165:                                    ; preds = %105
  %166 = trunc i64 %111 to i32, !dbg !1147
  %167 = getelementptr inbounds i8, i8* %116, i64 4, !dbg !1149
  %168 = bitcast i8* %167 to i32*, !dbg !1149
  store i32 %166, i32* %168, align 4, !dbg !1150, !tbaa !143
  br label %169

; <label>:169:                                    ; preds = %165, %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %170, !dbg !1151

; <label>:170:                                    ; preds = %169, %146
  %171 = icmp eq i32 %107, 0, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %171, label %172, label %175, !dbg !1153

; <label>:172:                                    ; preds = %170
  %173 = load i32, i32* %9, align 4, !dbg !1154, !tbaa !143
  %174 = icmp ult i32 %173, 254, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br i1 %174, label %185, label %190, !dbg !1160

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds i8, i8* %121, i64 %89, !dbg !1161
  %177 = call i8* @__ziplistCascadeUpdate(i8* nonnull %116, i8* nonnull %176) #8, !dbg !1163
  %178 = getelementptr inbounds i8, i8* %177, i64 %111, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %179 = load i32, i32* %9, align 4, !dbg !1154, !tbaa !143
  %180 = icmp eq i8* %178, null, !dbg !1166
  %181 = icmp ult i32 %179, 254, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  br i1 %180, label %182, label %184, !dbg !1159

; <label>:182:                                    ; preds = %175
  %183 = select i1 %181, i64 1, i64 5, !dbg !1167
  br label %197, !dbg !1168

; <label>:184:                                    ; preds = %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br i1 %181, label %185, label %190, !dbg !1160

; <label>:185:                                    ; preds = %172, %184
  %186 = phi i8* [ %121, %172 ], [ %178, %184 ]
  %187 = phi i8* [ %116, %172 ], [ %177, %184 ]
  %188 = phi i32 [ %173, %172 ], [ %179, %184 ]
  %189 = trunc i32 %188 to i8, !dbg !1169
  store i8 %189, i8* %186, align 1, !dbg !1170, !tbaa !84
  br label %197, !dbg !1171

; <label>:190:                                    ; preds = %172, %184
  %191 = phi i8* [ %121, %172 ], [ %178, %184 ]
  %192 = phi i8* [ %116, %172 ], [ %177, %184 ]
  %193 = phi i32 [ %173, %172 ], [ %179, %184 ]
  %194 = bitcast i32* %5 to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %194) #7, !dbg !1172
  store i32 %193, i32* %5, align 4, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  store i8 -2, i8* %191, align 1, !dbg !1176, !tbaa !84
  %195 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1177
  %196 = call i8* @memcpy(i8* nonnull %195, i8* nonnull %194, i64 4) #5, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %194) #7, !dbg !1180
  br label %197, !dbg !1181

; <label>:197:                                    ; preds = %182, %185, %190
  %198 = phi i8* [ %177, %182 ], [ %187, %185 ], [ %192, %190 ]
  %199 = phi i8* [ null, %182 ], [ %186, %185 ], [ %191, %190 ]
  %200 = phi i64 [ %183, %182 ], [ 1, %185 ], [ 5, %190 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %201 = getelementptr inbounds i8, i8* %199, i64 %200, !dbg !1183
  %202 = call i32 @zipStoreEntryEncoding(i8* nonnull %201, i8 zeroext %72, i32 %3) #8, !dbg !1184
  %203 = zext i32 %202 to i64, !dbg !1185
  %204 = getelementptr inbounds i8, i8* %201, i64 %203, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %79, label %205, label %208, !dbg !1186

; <label>:205:                                    ; preds = %197
  %206 = zext i32 %3 to i64, !dbg !1187
  %207 = call i8* @memcpy(i8* nonnull %204, i8* %2, i64 %206) #5, !dbg !1190
  br label %209, !dbg !1191

; <label>:208:                                    ; preds = %197
  call void @zipSaveInteger(i8* nonnull %204, i64 %71, i8 zeroext %72) #8, !dbg !1192
  br label %209

; <label>:209:                                    ; preds = %208, %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %210 = getelementptr inbounds i8, i8* %198, i64 8, !dbg !1194
  %211 = bitcast i8* %210 to i16*, !dbg !1194
  %212 = load i16, i16* %211, align 2, !dbg !1194, !tbaa !364
  %213 = icmp eq i16 %212, -1, !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  br i1 %213, label %216, label %214, !dbg !1197

; <label>:214:                                    ; preds = %209
  %215 = add i16 %212, 1, !dbg !1194
  store i16 %215, i16* %211, align 2, !dbg !1194, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  br label %216, !dbg !1194

; <label>:216:                                    ; preds = %209, %214
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #7, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #7, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  ret i8* %198, !dbg !1199
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #0 !dbg !1200 {
  %3 = icmp eq i8** %0, null, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %3, label %80, label %4, !dbg !1224

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %0, align 8, !dbg !1225, !tbaa !1226
  %6 = icmp eq i8* %5, null, !dbg !1227
  %7 = icmp eq i8** %1, null, !dbg !1228
  %8 = or i1 %7, %6, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br i1 %8, label %80, label %9, !dbg !1229

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %1, align 8, !dbg !1230, !tbaa !1226
  %11 = icmp eq i8* %10, null, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %11, label %80, label %12, !dbg !1232

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8* %5, %10, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %13, label %80, label %14, !dbg !1235

; <label>:14:                                     ; preds = %12
  %15 = bitcast i8* %5 to i32*, !dbg !1236
  %16 = load i32, i32* %15, align 4, !dbg !1236, !tbaa !143
  %17 = zext i32 %16 to i64, !dbg !1236
  %18 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !1238
  %19 = bitcast i8* %18 to i16*, !dbg !1238
  %20 = load i16, i16* %19, align 2, !dbg !1238, !tbaa !364
  %21 = zext i16 %20 to i64, !dbg !1238
  %22 = bitcast i8* %10 to i32*, !dbg !1240
  %23 = load i32, i32* %22, align 4, !dbg !1240, !tbaa !143
  %24 = zext i32 %23 to i64, !dbg !1240
  %25 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1242
  %26 = bitcast i8* %25 to i16*, !dbg !1242
  %27 = load i16, i16* %26, align 2, !dbg !1242, !tbaa !364
  %28 = zext i16 %27 to i64, !dbg !1242
  %29 = icmp ult i16 %20, %27, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = select i1 %29, i8* %10, i8* %5
  %31 = select i1 %29, i64 %24, i64 %17
  %32 = select i1 %29, i64 %17, i64 %24
  %33 = select i1 %29, i8* %5, i8* %10
  %34 = add nsw i64 %17, -11, !dbg !1251
  %35 = add nsw i64 %34, %24, !dbg !1252
  %36 = add nuw nsw i64 %28, %21, !dbg !1254
  %37 = icmp ult i64 %36, 65535, !dbg !1256
  %38 = select i1 %37, i64 %36, i64 65535, !dbg !1257
  %39 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !1258
  %40 = bitcast i8* %39 to i32*, !dbg !1258
  %41 = load i32, i32* %40, align 4, !dbg !1258, !tbaa !143
  %42 = zext i32 %41 to i64, !dbg !1258
  %43 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1260
  %44 = bitcast i8* %43 to i32*, !dbg !1260
  %45 = load i32, i32* %44, align 4, !dbg !1260, !tbaa !143
  %46 = tail call i8* @zrealloc(i8* %30, i64 %35) #5, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  br i1 %29, label %53, label %47, !dbg !1262

; <label>:47:                                     ; preds = %14
  %48 = getelementptr inbounds i8, i8* %46, i64 %31, !dbg !1263
  %49 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !1266
  %50 = getelementptr inbounds i8, i8* %33, i64 10, !dbg !1267
  %51 = add nsw i64 %32, -10, !dbg !1268
  %52 = tail call i8* @memcpy(i8* nonnull %49, i8* nonnull %50, i64 %51) #5, !dbg !1269
  br label %61, !dbg !1270

; <label>:53:                                     ; preds = %14
  %54 = getelementptr inbounds i8, i8* %46, i64 %32, !dbg !1271
  %55 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1273
  %56 = getelementptr inbounds i8, i8* %46, i64 10, !dbg !1274
  %57 = add nsw i64 %31, -10, !dbg !1275
  %58 = tail call i8* @memmove(i8* nonnull %55, i8* nonnull %56, i64 %57) #5, !dbg !1276
  %59 = add nsw i64 %32, -1, !dbg !1277
  %60 = tail call i8* @memcpy(i8* %46, i8* nonnull %33, i64 %59) #5, !dbg !1278
  br label %61

; <label>:61:                                     ; preds = %53, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %62 = trunc i64 %35 to i32, !dbg !1279
  %63 = bitcast i8* %46 to i32*, !dbg !1280
  store i32 %62, i32* %63, align 4, !dbg !1281, !tbaa !143
  %64 = trunc i64 %38 to i16, !dbg !1282
  %65 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1283
  %66 = bitcast i8* %65 to i16*, !dbg !1283
  store i16 %64, i16* %66, align 2, !dbg !1284, !tbaa !364
  %67 = add i32 %16, -11, !dbg !1285
  %68 = add i32 %67, %45, !dbg !1285
  %69 = getelementptr inbounds i8, i8* %46, i64 4, !dbg !1286
  %70 = bitcast i8* %69 to i32*, !dbg !1286
  store i32 %68, i32* %70, align 4, !dbg !1287, !tbaa !143
  %71 = getelementptr inbounds i8, i8* %46, i64 %42, !dbg !1288
  %72 = tail call i8* @__ziplistCascadeUpdate(i8* %46, i8* %71) #8, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %29, label %75, label %73, !dbg !1290

; <label>:73:                                     ; preds = %61
  %74 = load i8*, i8** %1, align 8, !dbg !1291, !tbaa !1226
  tail call void @zfree(i8* %74) #5, !dbg !1294
  br label %77, !dbg !1295

; <label>:75:                                     ; preds = %61
  %76 = load i8*, i8** %0, align 8, !dbg !1296, !tbaa !1226
  tail call void @zfree(i8* %76) #5, !dbg !1298
  br label %77

; <label>:77:                                     ; preds = %75, %73
  %78 = phi i8** [ %0, %75 ], [ %1, %73 ]
  %79 = phi i8** [ %1, %75 ], [ %0, %73 ]
  store i8* null, i8** %78, align 8, !dbg !1299, !tbaa !1226
  store i8* %72, i8** %79, align 8, !dbg !1299, !tbaa !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %80

; <label>:80:                                     ; preds = %12, %2, %4, %9, %77
  %81 = phi i8* [ %72, %77 ], [ null, %9 ], [ null, %4 ], [ null, %2 ], [ null, %12 ], !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  ret i8* %81, !dbg !1301
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1302 {
  %5 = icmp eq i32 %3, 0, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br i1 %5, label %6, label %8, !dbg !1316

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1317
  br label %14, !dbg !1316

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8* %0 to i32*, !dbg !1318
  %10 = load i32, i32* %9, align 4, !dbg !1318, !tbaa !143
  %11 = zext i32 %10 to i64, !dbg !1318
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1318
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !1318
  br label %14, !dbg !1316

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i8* [ %7, %6 ], [ %13, %8 ], !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  %16 = tail call i8* @__ziplistInsert(i8* %0, i8* nonnull %15, i8* %1, i32 %2) #8, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  ret i8* %16, !dbg !1321
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #0 !dbg !1322 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1333
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1333
  store i32 0, i32* %3, align 4, !dbg !1334, !tbaa !143
  %5 = icmp slt i32 %1, 0, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %5, label %6, label %47, !dbg !1337

; <label>:6:                                      ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1338
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1340
  %9 = bitcast i8* %8 to i32*, !dbg !1340
  %10 = load i32, i32* %9, align 4, !dbg !1340, !tbaa !143
  %11 = zext i32 %10 to i64, !dbg !1340
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1340
  %13 = load i8, i8* %12, align 1, !dbg !1342, !tbaa !84
  %14 = icmp eq i8 %13, -1, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %14, label %62, label %15, !dbg !1345

; <label>:15:                                     ; preds = %6
  %16 = icmp eq i8 %13, -2, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %16, label %19, label %17, !dbg !1352

; <label>:17:                                     ; preds = %15
  %18 = zext i8 %13 to i32, !dbg !1353
  store i32 %18, i32* %3, align 4, !dbg !1353, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br label %23, !dbg !1353

; <label>:19:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  %20 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1357
  %21 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %20, i64 4) #5, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %22 = load i32, i32* %3, align 4, !dbg !1360, !tbaa !143
  br label %23, !dbg !1357

; <label>:23:                                     ; preds = %19, %17
  %24 = phi i32 [ %22, %19 ], [ %18, %17 ], !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  %25 = icmp eq i32 %24, 0, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br i1 %25, label %62, label %26, !dbg !1363

; <label>:26:                                     ; preds = %23, %44
  %27 = phi i32 [ %45, %44 ], [ %24, %23 ]
  %28 = phi i8* [ %35, %44 ], [ %12, %23 ]
  %29 = phi i32 [ %30, %44 ], [ %7, %23 ]
  %30 = add nsw i32 %29, -1, !dbg !1364
  %31 = icmp eq i32 %29, 0, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br i1 %31, label %62, label %32, !dbg !1361

; <label>:32:                                     ; preds = %26
  %33 = zext i32 %27 to i64, !dbg !1365
  %34 = sub nsw i64 0, %33, !dbg !1365
  %35 = getelementptr inbounds i8, i8* %28, i64 %34, !dbg !1365
  %36 = load i8, i8* %35, align 1, !dbg !1367, !tbaa !84
  %37 = icmp ult i8 %36, -2, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %37, label %38, label %40, !dbg !1372

; <label>:38:                                     ; preds = %32
  %39 = zext i8 %36 to i32, !dbg !1373
  store i32 %39, i32* %3, align 4, !dbg !1373, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  br label %44, !dbg !1373

; <label>:40:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  %41 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1378
  %42 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %41, i64 4) #5, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  %43 = load i32, i32* %3, align 4, !dbg !1360, !tbaa !143
  br label %44, !dbg !1378

; <label>:44:                                     ; preds = %40, %38
  %45 = phi i32 [ %43, %40 ], [ %39, %38 ], !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  %46 = icmp eq i32 %45, 0, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br i1 %46, label %62, label %26, !dbg !1363, !llvm.loop !1381

; <label>:47:                                     ; preds = %2
  %48 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %49 = load i8, i8* %48, align 1, !dbg !1386, !tbaa !84
  %50 = icmp eq i8 %49, -1, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br i1 %50, label %62, label %51, !dbg !1388

; <label>:51:                                     ; preds = %47, %55
  %52 = phi i8* [ %59, %55 ], [ %48, %47 ]
  %53 = phi i32 [ %56, %55 ], [ %1, %47 ]
  %54 = icmp eq i32 %53, 0, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  br i1 %54, label %62, label %55, !dbg !1385

; <label>:55:                                     ; preds = %51
  %56 = add nsw i32 %53, -1, !dbg !1389
  %57 = tail call i32 @zipRawEntryLength(i8* %52) #8, !dbg !1390
  %58 = zext i32 %57 to i64, !dbg !1392
  %59 = getelementptr inbounds i8, i8* %52, i64 %58, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %60 = load i8, i8* %59, align 1, !dbg !1386, !tbaa !84
  %61 = icmp eq i8 %60, -1, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br i1 %61, label %62, label %51, !dbg !1388, !llvm.loop !1393

; <label>:62:                                     ; preds = %55, %51, %44, %26, %47, %23, %6
  %63 = phi i32 [ %7, %6 ], [ %7, %23 ], [ %1, %47 ], [ %30, %44 ], [ -1, %26 ], [ %56, %55 ], [ -1, %51 ]
  %64 = phi i8* [ %12, %6 ], [ %12, %23 ], [ %48, %47 ], [ %35, %44 ], [ %28, %26 ], [ %59, %55 ], [ %52, %51 ], !dbg !1395
  %65 = load i8, i8* %64, align 1, !dbg !1396, !tbaa !84
  %66 = icmp eq i8 %65, -1, !dbg !1397
  %67 = icmp sgt i32 %63, 0, !dbg !1398
  %68 = or i1 %67, %66, !dbg !1399
  %69 = select i1 %68, i8* null, i8* %64, !dbg !1399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  ret i8* %69, !dbg !1401
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #0 !dbg !1402 {
  %3 = load i8, i8* %1, align 1, !dbg !1408, !tbaa !84
  %4 = icmp eq i8 %3, -1, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br i1 %4, label %5, label %6, !dbg !1411

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  br label %13, !dbg !1412

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @zipRawEntryLength(i8* nonnull %1) #8, !dbg !1414
  %8 = zext i32 %7 to i64, !dbg !1415
  %9 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !1415
  %10 = load i8, i8* %9, align 1, !dbg !1416, !tbaa !84
  %11 = icmp eq i8 %10, -1, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %12 = select i1 %11, i8* null, i8* %9, !dbg !1421
  br label %13, !dbg !1421

; <label>:13:                                     ; preds = %6, %5
  %14 = phi i8* [ null, %5 ], [ %12, %6 ], !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  ret i8* %14, !dbg !1423
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistPrev(i8* readonly, i8*) local_unnamed_addr #0 !dbg !1424 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !1432
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1432
  store i32 0, i32* %3, align 4, !dbg !1433, !tbaa !143
  %5 = load i8, i8* %1, align 1, !dbg !1434, !tbaa !84
  %6 = icmp eq i8 %5, -1, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %6, label %7, label %16, !dbg !1437

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1438
  %9 = bitcast i8* %8 to i32*, !dbg !1438
  %10 = load i32, i32* %9, align 4, !dbg !1438, !tbaa !143
  %11 = zext i32 %10 to i64, !dbg !1438
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1438
  %13 = load i8, i8* %12, align 1, !dbg !1440, !tbaa !84
  %14 = icmp eq i8 %13, -1, !dbg !1441
  %15 = select i1 %14, i8* null, i8* %12, !dbg !1442
  br label %35, !dbg !1443

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1444
  %18 = icmp eq i8* %17, %1, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %18, label %35, label %19, !dbg !1447

; <label>:19:                                     ; preds = %16
  %20 = icmp ult i8 %5, -2, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %20, label %21, label %23, !dbg !1454

; <label>:21:                                     ; preds = %19
  %22 = zext i8 %5 to i32, !dbg !1455
  store i32 %22, i32* %3, align 4, !dbg !1455, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %27, !dbg !1455

; <label>:23:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  %24 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1460
  %25 = call i8* @memcpy(i8* nonnull %4, i8* nonnull %24, i64 4) #5, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  %26 = load i32, i32* %3, align 4, !dbg !1463, !tbaa !143
  br label %27, !dbg !1463

; <label>:27:                                     ; preds = %23, %21
  %28 = phi i32 [ %26, %23 ], [ %22, %21 ], !dbg !1463
  %29 = icmp eq i32 %28, 0, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %29, label %30, label %31, !dbg !1463

; <label>:30:                                     ; preds = %27
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1025) #5, !dbg !1463
  call void @_exit(i32 1) #6, !dbg !1463
  unreachable

; <label>:31:                                     ; preds = %27
  %32 = zext i32 %28 to i64, !dbg !1464
  %33 = sub nsw i64 0, %32, !dbg !1464
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !1464
  br label %35, !dbg !1465

; <label>:35:                                     ; preds = %16, %31, %7
  %36 = phi i8* [ %15, %7 ], [ %34, %31 ], [ null, %16 ], !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  ret i8* %36, !dbg !1468
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistGet(i8*, i8**, i32* nocapture, i64*) local_unnamed_addr #0 !dbg !1469 {
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1483
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1483
  %7 = icmp eq i8* %0, null, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br i1 %7, label %34, label %8, !dbg !1486

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %0, align 1, !dbg !1487, !tbaa !84
  %10 = icmp eq i8 %9, -1, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %10, label %34, label %11, !dbg !1489

; <label>:11:                                     ; preds = %8
  %12 = icmp ne i8** %1, null, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br i1 %12, label %13, label %14, !dbg !1492

; <label>:13:                                     ; preds = %11
  store i8* null, i8** %1, align 8, !dbg !1493, !tbaa !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  br label %14, !dbg !1494

; <label>:14:                                     ; preds = %13, %11
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #8, !dbg !1496
  %15 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1497
  %16 = load i8, i8* %15, align 4, !dbg !1497, !tbaa !517
  %17 = icmp ult i8 %16, -64, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br i1 %17, label %18, label %26, !dbg !1499

; <label>:18:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br i1 %12, label %19, label %34, !dbg !1500

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1502
  %21 = load i32, i32* %20, align 4, !dbg !1502, !tbaa !558
  store i32 %21, i32* %2, align 4, !dbg !1505, !tbaa !143
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1506
  %23 = load i32, i32* %22, align 8, !dbg !1506, !tbaa !562
  %24 = zext i32 %23 to i64, !dbg !1507
  %25 = getelementptr inbounds i8, i8* %0, i64 %24, !dbg !1507
  store i8* %25, i8** %1, align 8, !dbg !1508, !tbaa !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  br label %34, !dbg !1509

; <label>:26:                                     ; preds = %14
  %27 = icmp eq i64* %3, null, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %27, label %34, label %28, !dbg !1513

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1514
  %30 = load i32, i32* %29, align 8, !dbg !1514, !tbaa !562
  %31 = zext i32 %30 to i64, !dbg !1516
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !1516
  %33 = call i64 @zipLoadInteger(i8* nonnull %32, i8 zeroext %16) #8, !dbg !1517
  store i64 %33, i64* %3, align 8, !dbg !1518, !tbaa !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br label %34, !dbg !1519

; <label>:34:                                     ; preds = %19, %18, %28, %26, %4, %8
  %35 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 1, %26 ], [ 1, %28 ], [ 1, %18 ], [ 1, %19 ], !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  ret i32 %35, !dbg !1522
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !1523 {
  %5 = tail call i8* @__ziplistInsert(i8* %0, i8* %1, i8* %2, i32 %3) #8, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  ret i8* %5, !dbg !1534
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDelete(i8*, i8** nocapture) local_unnamed_addr #0 !dbg !1535 {
  %3 = load i8*, i8** %1, align 8, !dbg !1544, !tbaa !1226
  %4 = ptrtoint i8* %3 to i64, !dbg !1545
  %5 = ptrtoint i8* %0 to i64, !dbg !1545
  %6 = sub i64 %4, %5, !dbg !1545
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* %3, i32 1) #8, !dbg !1547
  %8 = getelementptr inbounds i8, i8* %7, i64 %6, !dbg !1548
  store i8* %8, i8** %1, align 8, !dbg !1549, !tbaa !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  ret i8* %7, !dbg !1550
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #0 !dbg !1551 {
  %4 = tail call i8* @ziplistIndex(i8* %0, i32 %1) #8, !dbg !1562
  %5 = icmp eq i8* %4, null, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %5, label %8, label %6, !dbg !1565

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @__ziplistDelete(i8* %0, i8* nonnull %4, i32 %2) #8, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br label %8, !dbg !1565

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %0, %3 ], !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  ret i8* %9, !dbg !1567
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1568 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zlentry, align 8
  %6 = bitcast %struct.zlentry* %5 to i8*, !dbg !1582
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1582
  %7 = load i8, i8* %0, align 1, !dbg !1583, !tbaa !84
  %8 = icmp eq i8 %7, -1, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br i1 %8, label %55, label %9, !dbg !1586

; <label>:9:                                      ; preds = %3
  call void @zipEntry(i8* nonnull %0, %struct.zlentry* nonnull %5) #8, !dbg !1588
  %10 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 5, !dbg !1589
  %11 = load i8, i8* %10, align 4, !dbg !1589, !tbaa !517
  %12 = icmp ult i8 %11, -64, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %12, label %13, label %25, !dbg !1591

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 3, !dbg !1592
  %15 = load i32, i32* %14, align 4, !dbg !1592, !tbaa !558
  %16 = icmp eq i32 %15, %2, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %16, label %17, label %55, !dbg !1596

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1597
  %19 = load i32, i32* %18, align 8, !dbg !1597, !tbaa !562
  %20 = zext i32 %19 to i64, !dbg !1599
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1599
  %22 = zext i32 %2 to i64, !dbg !1600
  %23 = call i32 @memcmp(i8* %21, i8* %1, i64 %22) #5, !dbg !1601
  %24 = icmp eq i32 %23, 0, !dbg !1602
  br label %55, !dbg !1603

; <label>:25:                                     ; preds = %9
  %26 = bitcast i64* %4 to i8*, !dbg !1609
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1609
  %27 = add i32 %2, -1, !dbg !1610
  %28 = icmp ugt i32 %27, 30, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br i1 %28, label %54, label %29, !dbg !1610

; <label>:29:                                     ; preds = %25
  %30 = zext i32 %2 to i64, !dbg !1611
  %31 = call i32 @string2ll(i8* %1, i64 %30, i64* nonnull %4) #5, !dbg !1613
  %32 = icmp eq i32 %31, 0, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %32, label %54, label %33, !dbg !1614

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %4, align 8, !dbg !1615, !tbaa !304
  %35 = icmp ult i64 %34, 13, !dbg !1616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %35, label %45, label %36, !dbg !1616

; <label>:36:                                     ; preds = %33
  %37 = add i64 %34, 128, !dbg !1617
  %38 = icmp ult i64 %37, 256, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br i1 %38, label %45, label %39, !dbg !1617

; <label>:39:                                     ; preds = %36
  %40 = add i64 %34, 32768, !dbg !1618
  %41 = icmp ult i64 %40, 65536, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br i1 %41, label %45, label %42, !dbg !1618

; <label>:42:                                     ; preds = %39
  %43 = add i64 %34, 8388608, !dbg !1619
  %44 = icmp ult i64 %43, 16777216, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %44, label %46, label %45, !dbg !1619

; <label>:45:                                     ; preds = %42, %39, %36, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %46, !dbg !1621

; <label>:46:                                     ; preds = %45, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %47 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %5, i64 0, i32 4, !dbg !1624
  %48 = load i32, i32* %47, align 8, !dbg !1624, !tbaa !562
  %49 = zext i32 %48 to i64, !dbg !1626
  %50 = getelementptr inbounds i8, i8* %0, i64 %49, !dbg !1626
  %51 = load i8, i8* %10, align 4, !dbg !1627, !tbaa !517
  %52 = call i64 @zipLoadInteger(i8* %50, i8 zeroext %51) #8, !dbg !1628
  %53 = icmp eq i64 %52, %34, !dbg !1631
  br label %55, !dbg !1632

; <label>:54:                                     ; preds = %29, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  br label %55, !dbg !1633

; <label>:55:                                     ; preds = %13, %3, %54, %46, %17
  %56 = phi i1 [ %24, %17 ], [ %53, %46 ], [ false, %54 ], [ false, %3 ], [ false, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %57 = zext i1 %56 to i32, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  ret i32 %57, !dbg !1636
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ziplistFind(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1637 {
  %5 = alloca i64, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  %6 = load i8, i8* %0, align 1, !dbg !1669, !tbaa !84
  %7 = icmp eq i8 %6, -1, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %7, label %144, label %8, !dbg !1668

; <label>:8:                                      ; preds = %4
  %9 = zext i32 %2 to i64
  %10 = bitcast i64* %5 to i8*
  %11 = add i32 %2, -1
  %12 = icmp ugt i32 %11, 30
  br label %13, !dbg !1668

; <label>:13:                                     ; preds = %8, %136
  %14 = phi i8 [ %6, %8 ], [ %142, %136 ]
  %15 = phi i8* [ %0, %8 ], [ %141, %136 ]
  %16 = phi i32 [ 0, %8 ], [ %139, %136 ]
  %17 = phi i64 [ 0, %8 ], [ %138, %136 ]
  %18 = phi i8 [ 0, %8 ], [ %137, %136 ]
  %19 = icmp eq i8 %14, -2, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = select i1 %19, i64 5, i64 1
  %21 = getelementptr inbounds i8, i8* %15, i64 %20, !dbg !1675
  %22 = load i8, i8* %21, align 1, !dbg !1675, !tbaa !84
  %23 = zext i8 %22 to i32, !dbg !1675
  %24 = icmp ult i8 %22, -64, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br i1 %24, label %25, label %27, !dbg !1675

; <label>:25:                                     ; preds = %13
  %26 = and i32 %23, 192, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  br label %27, !dbg !1679

; <label>:27:                                     ; preds = %25, %13
  %28 = phi i32 [ %26, %25 ], [ %23, %13 ], !dbg !1679
  %29 = icmp ult i32 %28, 192, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  br i1 %29, label %30, label %67, !dbg !1683

; <label>:30:                                     ; preds = %27
  %31 = icmp eq i32 %28, 0, !dbg !1684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  br i1 %31, label %32, label %35, !dbg !1687

; <label>:32:                                     ; preds = %30
  %33 = and i8 %22, 63, !dbg !1689
  %34 = zext i8 %33 to i32, !dbg !1689
  br label %80, !dbg !1689

; <label>:35:                                     ; preds = %30
  %36 = icmp eq i32 %28, 64, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br i1 %36, label %37, label %45, !dbg !1684

; <label>:37:                                     ; preds = %35
  %38 = and i8 %22, 63, !dbg !1694
  %39 = zext i8 %38 to i32, !dbg !1694
  %40 = shl nuw nsw i32 %39, 8, !dbg !1694
  %41 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1694
  %42 = load i8, i8* %41, align 1, !dbg !1694, !tbaa !84
  %43 = zext i8 %42 to i32, !dbg !1694
  %44 = or i32 %40, %43, !dbg !1694
  br label %80, !dbg !1694

; <label>:45:                                     ; preds = %35
  %46 = icmp eq i32 %28, 128, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  br i1 %46, label %47, label %66, !dbg !1692

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1698
  %49 = load i8, i8* %48, align 1, !dbg !1698, !tbaa !84
  %50 = zext i8 %49 to i32, !dbg !1698
  %51 = shl nuw i32 %50, 24, !dbg !1698
  %52 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !1698
  %53 = load i8, i8* %52, align 1, !dbg !1698, !tbaa !84
  %54 = zext i8 %53 to i32, !dbg !1698
  %55 = shl nuw nsw i32 %54, 16, !dbg !1698
  %56 = or i32 %55, %51, !dbg !1698
  %57 = getelementptr inbounds i8, i8* %21, i64 3, !dbg !1698
  %58 = load i8, i8* %57, align 1, !dbg !1698, !tbaa !84
  %59 = zext i8 %58 to i32, !dbg !1698
  %60 = shl nuw nsw i32 %59, 8, !dbg !1698
  %61 = or i32 %56, %60, !dbg !1698
  %62 = getelementptr inbounds i8, i8* %21, i64 4, !dbg !1698
  %63 = load i8, i8* %62, align 1, !dbg !1698, !tbaa !84
  %64 = zext i8 %63 to i32, !dbg !1698
  %65 = or i32 %61, %64, !dbg !1698
  br label %80

; <label>:66:                                     ; preds = %45
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 1118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %28) #5, !dbg !1700
  call void @_exit(i32 1) #6, !dbg !1700
  unreachable

; <label>:67:                                     ; preds = %27
  %68 = trunc i32 %28 to i8, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  switch i8 %68, label %73 [
    i8 -2, label %78
    i8 -64, label %69
    i8 -16, label %70
    i8 -48, label %71
    i8 -32, label %72
  ], !dbg !1706

; <label>:69:                                     ; preds = %67
  br label %78, !dbg !1707

; <label>:70:                                     ; preds = %67
  br label %78, !dbg !1708

; <label>:71:                                     ; preds = %67
  br label %78, !dbg !1709

; <label>:72:                                     ; preds = %67
  br label %78, !dbg !1710

; <label>:73:                                     ; preds = %67
  %74 = icmp ugt i8 %68, -16, !dbg !1711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  br i1 %74, label %75, label %77, !dbg !1712

; <label>:75:                                     ; preds = %73
  %76 = icmp ult i8 %68, -2, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br i1 %76, label %78, label %77, !dbg !1714

; <label>:77:                                     ; preds = %75, %73
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28) #5, !dbg !1715
  call void @_exit(i32 1) #6, !dbg !1715
  unreachable

; <label>:78:                                     ; preds = %75, %67, %69, %70, %71, %72
  %79 = phi i32 [ 8, %72 ], [ 4, %71 ], [ 3, %70 ], [ 2, %69 ], [ 1, %67 ], [ 0, %75 ], !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  br label %80

; <label>:80:                                     ; preds = %32, %47, %37, %78
  %81 = phi i64 [ 1, %32 ], [ 2, %37 ], [ 5, %47 ], [ 1, %78 ]
  %82 = phi i32 [ %34, %32 ], [ %44, %37 ], [ %65, %47 ], [ %79, %78 ], !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = getelementptr inbounds i8, i8* %21, i64 %81, !dbg !1719
  %84 = icmp eq i32 %16, 0, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %84, label %85, label %134, !dbg !1722

; <label>:85:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %29, label %86, label %92, !dbg !1723

; <label>:86:                                     ; preds = %85
  %87 = icmp eq i32 %82, %2, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  br i1 %87, label %88, label %136, !dbg !1727

; <label>:88:                                     ; preds = %86
  %89 = call i32 @memcmp(i8* nonnull %83, i8* %1, i64 %9) #5, !dbg !1728
  %90 = icmp eq i32 %89, 0, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  br i1 %90, label %91, label %136, !dbg !1730

; <label>:91:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br label %144, !dbg !1731

; <label>:92:                                     ; preds = %85
  %93 = icmp eq i8 %18, 0, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  br i1 %93, label %94, label %126, !dbg !1735

; <label>:94:                                     ; preds = %92
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  br i1 %12, label %122, label %95, !dbg !1742

; <label>:95:                                     ; preds = %94
  %96 = call i32 @string2ll(i8* %1, i64 %9, i64* nonnull %5) #5, !dbg !1744
  %97 = icmp eq i32 %96, 0, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %97, label %122, label %98, !dbg !1745

; <label>:98:                                     ; preds = %95
  %99 = load i64, i64* %5, align 8, !dbg !1746, !tbaa !304
  %100 = icmp ult i64 %99, 13, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  br i1 %100, label %101, label %104, !dbg !1747

; <label>:101:                                    ; preds = %98
  %102 = trunc i64 %99 to i8, !dbg !1748
  %103 = add i8 %102, -15, !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  br label %120, !dbg !1749

; <label>:104:                                    ; preds = %98
  %105 = add i64 %99, 128, !dbg !1750
  %106 = icmp ult i64 %105, 256, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  br i1 %106, label %107, label %108, !dbg !1750

; <label>:107:                                    ; preds = %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br label %120, !dbg !1751

; <label>:108:                                    ; preds = %104
  %109 = add i64 %99, 32768, !dbg !1752
  %110 = icmp ult i64 %109, 65536, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  br i1 %110, label %111, label %112, !dbg !1752

; <label>:111:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br label %120, !dbg !1753

; <label>:112:                                    ; preds = %108
  %113 = add i64 %99, 8388608, !dbg !1754
  %114 = icmp ult i64 %113, 16777216, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %114, label %115, label %116, !dbg !1754

; <label>:115:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br label %120, !dbg !1755

; <label>:116:                                    ; preds = %112
  %117 = add i64 %99, 2147483648, !dbg !1756
  %118 = icmp ult i64 %117, 4294967296, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %119 = select i1 %118, i8 -48, i8 -32, !dbg !1757
  br label %120, !dbg !1757

; <label>:120:                                    ; preds = %116, %101, %107, %111, %115
  %121 = phi i8 [ %103, %101 ], [ -2, %107 ], [ -64, %111 ], [ -16, %115 ], [ %119, %116 ], !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1760
  br label %123, !dbg !1761

; <label>:122:                                    ; preds = %95, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %123, !dbg !1762

; <label>:123:                                    ; preds = %120, %122
  %124 = phi i64 [ %17, %122 ], [ %99, %120 ]
  %125 = phi i8 [ -1, %122 ], [ %121, %120 ], !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br label %126

; <label>:126:                                    ; preds = %123, %92
  %127 = phi i8 [ %125, %123 ], [ %18, %92 ], !dbg !1764
  %128 = phi i64 [ %124, %123 ], [ %17, %92 ], !dbg !1667
  %129 = icmp eq i8 %127, -1, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  br i1 %129, label %136, label %130, !dbg !1769

; <label>:130:                                    ; preds = %126
  %131 = trunc i32 %28 to i8, !dbg !1770
  %132 = call i64 @zipLoadInteger(i8* nonnull %83, i8 zeroext %131) #8, !dbg !1771
  %133 = icmp eq i64 %132, %128, !dbg !1773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %133, label %144, label %136

; <label>:134:                                    ; preds = %80
  %135 = add nsw i32 %16, -1, !dbg !1777
  br label %136

; <label>:136:                                    ; preds = %88, %86, %126, %130, %134
  %137 = phi i8 [ %18, %134 ], [ %18, %88 ], [ %18, %86 ], [ -1, %126 ], [ %127, %130 ], !dbg !1666
  %138 = phi i64 [ %17, %134 ], [ %17, %88 ], [ %17, %86 ], [ %128, %126 ], [ %128, %130 ], !dbg !1667
  %139 = phi i32 [ %135, %134 ], [ %3, %88 ], [ %3, %86 ], [ %3, %126 ], [ %3, %130 ], !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %140 = zext i32 %82 to i64, !dbg !1780
  %141 = getelementptr inbounds i8, i8* %83, i64 %140, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %142 = load i8, i8* %141, align 1, !dbg !1669, !tbaa !84
  %143 = icmp eq i8 %142, -1, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %143, label %144, label %13, !dbg !1668

; <label>:144:                                    ; preds = %136, %130, %4, %91
  %145 = phi i8* [ %15, %91 ], [ null, %4 ], [ null, %136 ], [ %15, %130 ], !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  ret i8* %145, !dbg !1782
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ziplistLen(i8* nocapture) local_unnamed_addr #0 !dbg !1783 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1792
  %3 = bitcast i8* %2 to i16*, !dbg !1792
  %4 = load i16, i16* %3, align 2, !dbg !1792, !tbaa !364
  %5 = icmp eq i16 %4, -1, !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  br i1 %5, label %8, label %6, !dbg !1794

; <label>:6:                                      ; preds = %1
  %7 = zext i16 %4 to i32, !dbg !1792
  br label %27, !dbg !1795

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  %10 = load i8, i8* %9, align 1, !dbg !1800, !tbaa !84
  %11 = icmp eq i8 %10, -1, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br i1 %11, label %12, label %13, !dbg !1799

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  br label %24, !dbg !1802

; <label>:13:                                     ; preds = %8, %13
  %14 = phi i8* [ %18, %13 ], [ %9, %8 ]
  %15 = phi i32 [ %19, %13 ], [ 0, %8 ]
  %16 = tail call i32 @zipRawEntryLength(i8* %14) #8, !dbg !1803
  %17 = zext i32 %16 to i64, !dbg !1805
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1805
  %19 = add i32 %15, 1, !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  %20 = load i8, i8* %18, align 1, !dbg !1800, !tbaa !84
  %21 = icmp eq i8 %20, -1, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br i1 %21, label %22, label %13, !dbg !1799, !llvm.loop !1807

; <label>:22:                                     ; preds = %13
  %23 = icmp ult i32 %19, 65535, !dbg !1809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  br i1 %23, label %24, label %27, !dbg !1802

; <label>:24:                                     ; preds = %12, %22
  %25 = phi i32 [ 0, %12 ], [ %19, %22 ]
  %26 = trunc i32 %25 to i16, !dbg !1811
  store i16 %26, i16* %3, align 2, !dbg !1812, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  br label %27, !dbg !1813

; <label>:27:                                     ; preds = %22, %24, %6
  %28 = phi i32 [ %7, %6 ], [ %25, %24 ], [ %19, %22 ], !dbg !1814
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  ret i32 %28, !dbg !1815
}

; Function Attrs: noredzone nounwind
define dso_local i64 @ziplistBlobLen(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1816 {
  %2 = bitcast i8* %0 to i32*, !dbg !1822
  %3 = load i32, i32* %2, align 4, !dbg !1822, !tbaa !143
  %4 = zext i32 %3 to i64, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  ret i64 %4, !dbg !1823
}

; Function Attrs: noredzone nounwind
define dso_local void @ziplistRepr(i8*) local_unnamed_addr #0 !dbg !1824 {
  %2 = alloca %struct.zlentry, align 8
  %3 = bitcast %struct.zlentry* %2 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !1837
  %4 = bitcast i8* %0 to i32*, !dbg !1838
  %5 = load i32, i32* %4, align 4, !dbg !1838, !tbaa !143
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1839
  %7 = bitcast i8* %6 to i16*, !dbg !1839
  %8 = load i16, i16* %7, align 2, !dbg !1839, !tbaa !364
  %9 = zext i16 %8 to i32, !dbg !1839
  %10 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1840
  %11 = bitcast i8* %10 to i32*, !dbg !1840
  %12 = load i32, i32* %11, align 4, !dbg !1840, !tbaa !143
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %5, i32 %9, i32 %12) #5, !dbg !1841
  %14 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  %15 = load i8, i8* %14, align 1, !dbg !1845, !tbaa !84
  %16 = icmp eq i8 %15, -1, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  br i1 %16, label %93, label %17, !dbg !1844

; <label>:17:                                     ; preds = %1
  %18 = ptrtoint i8* %0 to i64
  %19 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 4
  %20 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 3
  %21 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 0
  %23 = getelementptr inbounds %struct.zlentry, %struct.zlentry* %2, i64 0, i32 5
  br label %24, !dbg !1844

; <label>:24:                                     ; preds = %17, %85
  %25 = phi i32 [ 0, %17 ], [ %90, %85 ]
  %26 = phi i8* [ %14, %17 ], [ %89, %85 ]
  call void @zipEntry(i8* %26, %struct.zlentry* nonnull %2) #8, !dbg !1848
  %27 = ptrtoint i8* %26 to i64, !dbg !1849
  %28 = sub i64 %27, %18, !dbg !1850
  %29 = load i32, i32* %19, align 8, !dbg !1851, !tbaa !562
  %30 = load i32, i32* %20, align 4, !dbg !1852, !tbaa !558
  %31 = add i32 %30, %29, !dbg !1853
  %32 = load i32, i32* %21, align 4, !dbg !1854, !tbaa !507
  %33 = load i32, i32* %22, align 8, !dbg !1855, !tbaa !500
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.7, i64 0, i64 0), i64 %27, i32 %25, i64 %28, i32 %31, i32 %29, i32 %32, i32 %33, i32 %30) #5, !dbg !1856
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  %36 = load i32, i32* %19, align 8, !dbg !1860, !tbaa !562
  %37 = load i32, i32* %20, align 4, !dbg !1862, !tbaa !558
  %38 = sub i32 0, %36, !dbg !1863
  %39 = icmp eq i32 %37, %38, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br i1 %39, label %40, label %47, !dbg !1864

; <label>:40:                                     ; preds = %47, %24
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1865
  %42 = load i32, i32* %19, align 8, !dbg !1866, !tbaa !562
  %43 = zext i32 %42 to i64, !dbg !1867
  %44 = getelementptr inbounds i8, i8* %26, i64 %43, !dbg !1867
  %45 = load i8, i8* %23, align 4, !dbg !1868, !tbaa !517
  %46 = icmp ult i8 %45, -64, !dbg !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %46, label %59, label %82, !dbg !1870

; <label>:47:                                     ; preds = %24, %47
  %48 = phi i64 [ %53, %47 ], [ 0, %24 ]
  %49 = getelementptr inbounds i8, i8* %26, i64 %48, !dbg !1871
  %50 = load i8, i8* %49, align 1, !dbg !1871, !tbaa !84
  %51 = zext i8 %50 to i32, !dbg !1871
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %51) #5, !dbg !1873
  %53 = add nuw nsw i64 %48, 1, !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  %54 = load i32, i32* %19, align 8, !dbg !1860, !tbaa !562
  %55 = load i32, i32* %20, align 4, !dbg !1862, !tbaa !558
  %56 = add i32 %55, %54, !dbg !1876
  %57 = zext i32 %56 to i64, !dbg !1863
  %58 = icmp ult i64 %53, %57, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br i1 %58, label %47, label %40, !dbg !1864, !llvm.loop !1877

; <label>:59:                                     ; preds = %40
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !1879
  %61 = load i32, i32* %20, align 4, !dbg !1881, !tbaa !558
  %62 = icmp ugt i32 %61, 40, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br i1 %62, label %63, label %72, !dbg !1884

; <label>:63:                                     ; preds = %59
  %64 = call %struct._reent* @__getreent() #5, !dbg !1885
  %65 = getelementptr inbounds %struct._reent, %struct._reent* %64, i64 0, i32 2, !dbg !1885
  %66 = load %struct.__sFILE*, %struct.__sFILE** %65, align 8, !dbg !1885, !tbaa !1888
  %67 = call i64 @fwrite(i8* %44, i64 40, i64 1, %struct.__sFILE* %66) #5, !dbg !1893
  %68 = icmp eq i64 %67, 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  br i1 %68, label %69, label %70, !dbg !1895

; <label>:69:                                     ; preds = %63
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  br label %70, !dbg !1896

; <label>:70:                                     ; preds = %69, %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !1897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1898
  br label %85, !dbg !1898

; <label>:72:                                     ; preds = %59
  %73 = icmp eq i32 %61, 0, !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  br i1 %73, label %85, label %74, !dbg !1902

; <label>:74:                                     ; preds = %72
  %75 = zext i32 %61 to i64, !dbg !1903
  %76 = call %struct._reent* @__getreent() #5, !dbg !1904
  %77 = getelementptr inbounds %struct._reent, %struct._reent* %76, i64 0, i32 2, !dbg !1904
  %78 = load %struct.__sFILE*, %struct.__sFILE** %77, align 8, !dbg !1904, !tbaa !1888
  %79 = call i64 @fwrite(i8* %44, i64 %75, i64 1, %struct.__sFILE* %78) #5, !dbg !1905
  %80 = icmp eq i64 %79, 0, !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  br i1 %80, label %81, label %85, !dbg !1907

; <label>:81:                                     ; preds = %74
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br label %85, !dbg !1908

; <label>:82:                                     ; preds = %40
  %83 = call i64 @zipLoadInteger(i8* %44, i8 zeroext %45) #8, !dbg !1909
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %83) #5, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %85

; <label>:85:                                     ; preds = %72, %70, %81, %74, %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !1912
  %87 = load i32, i32* %20, align 4, !dbg !1913, !tbaa !558
  %88 = zext i32 %87 to i64, !dbg !1914
  %89 = getelementptr inbounds i8, i8* %44, i64 %88, !dbg !1914
  %90 = add nuw nsw i32 %25, 1, !dbg !1915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  %91 = load i8, i8* %89, align 1, !dbg !1845, !tbaa !84
  %92 = icmp eq i8 %91, -1, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  br i1 %92, label %93, label %24, !dbg !1844, !llvm.loop !1916

; <label>:93:                                     ; preds = %85, %1
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  ret void, !dbg !1919
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
!44 = !DILocation(line: 314, column: 18, scope: !45)
!45 = distinct !DILexicalBlock(scope: !31, file: !1, line: 314, column: 9)
!46 = !DILocation(line: 314, column: 37, scope: !45)
!47 = !DILocation(line: 314, column: 49, scope: !45)
!48 = !DILocation(line: 314, column: 9, scope: !31)
!49 = !DILocation(line: 316, column: 5, scope: !31)
!50 = !DILocation(line: 0, scope: !40)
!51 = !DILocation(line: 318, column: 1, scope: !31)
!52 = distinct !DISubprogram(name: "zipStoreEntryEncoding", scope: !1, file: !1, line: 332, type: !53, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!20, !55, !16, !20}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DILocalVariable(name: "p", arg: 1, scope: !52, file: !1, line: 332, type: !55)
!58 = !DILocalVariable(name: "encoding", arg: 2, scope: !52, file: !1, line: 332, type: !16)
!59 = !DILocalVariable(name: "rawlen", arg: 3, scope: !52, file: !1, line: 332, type: !20)
!60 = !DILocalVariable(name: "len", scope: !52, file: !1, line: 333, type: !16)
!61 = !DILocalVariable(name: "buf", scope: !52, file: !1, line: 333, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DILocation(line: 332, column: 51, scope: !52)
!66 = !DILocation(line: 332, column: 68, scope: !52)
!67 = !DILocation(line: 332, column: 91, scope: !52)
!68 = !DILocation(line: 333, column: 19, scope: !52)
!69 = !DILocation(line: 333, column: 5, scope: !52)
!70 = !DILocation(line: 333, column: 28, scope: !52)
!71 = !DILocation(line: 335, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !52, file: !1, line: 335, column: 9)
!73 = !DILocation(line: 335, column: 9, scope: !52)
!74 = !DILocation(line: 338, column: 20, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 338, column: 13)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 335, column: 31)
!77 = !DILocation(line: 338, column: 13, scope: !76)
!78 = !DILocation(line: 339, column: 18, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 339, column: 17)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 338, column: 29)
!81 = !DILocation(line: 339, column: 17, scope: !80)
!82 = !DILocation(line: 340, column: 22, scope: !80)
!83 = !DILocation(line: 340, column: 20, scope: !80)
!84 = !{!85, !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !DILocation(line: 341, column: 9, scope: !80)
!88 = !DILocation(line: 341, column: 27, scope: !89)
!89 = distinct !DILexicalBlock(scope: !75, file: !1, line: 341, column: 20)
!90 = !DILocation(line: 341, column: 20, scope: !75)
!91 = !DILocation(line: 0, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 348, column: 17)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 346, column: 16)
!94 = !DILocation(line: 0, scope: !93)
!95 = !DILocation(line: 343, column: 17, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 341, column: 38)
!97 = !DILocation(line: 344, column: 45, scope: !96)
!98 = !DILocation(line: 344, column: 22, scope: !96)
!99 = !DILocation(line: 344, column: 20, scope: !96)
!100 = !DILocation(line: 345, column: 22, scope: !96)
!101 = !DILocation(line: 345, column: 13, scope: !96)
!102 = !DILocation(line: 345, column: 20, scope: !96)
!103 = !DILocation(line: 346, column: 9, scope: !96)
!104 = !DILocation(line: 348, column: 17, scope: !93)
!105 = !DILocation(line: 349, column: 20, scope: !93)
!106 = !DILocation(line: 350, column: 30, scope: !93)
!107 = !DILocation(line: 350, column: 22, scope: !93)
!108 = !DILocation(line: 350, column: 13, scope: !93)
!109 = !DILocation(line: 350, column: 20, scope: !93)
!110 = !DILocation(line: 351, column: 30, scope: !93)
!111 = !DILocation(line: 351, column: 22, scope: !93)
!112 = !DILocation(line: 351, column: 13, scope: !93)
!113 = !DILocation(line: 351, column: 20, scope: !93)
!114 = !DILocation(line: 352, column: 30, scope: !93)
!115 = !DILocation(line: 352, column: 22, scope: !93)
!116 = !DILocation(line: 352, column: 13, scope: !93)
!117 = !DILocation(line: 352, column: 20, scope: !93)
!118 = !DILocation(line: 353, column: 22, scope: !93)
!119 = !DILocation(line: 353, column: 13, scope: !93)
!120 = !DILocation(line: 353, column: 20, scope: !93)
!121 = !DILocation(line: 357, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 357, column: 13)
!123 = distinct !DILexicalBlock(scope: !72, file: !1, line: 355, column: 12)
!124 = !DILocation(line: 357, column: 13, scope: !123)
!125 = !DILocation(line: 358, column: 16, scope: !123)
!126 = !DILocation(line: 0, scope: !52)
!127 = !DILocation(line: 362, column: 18, scope: !52)
!128 = !DILocation(line: 362, column: 5, scope: !52)
!129 = !DILocation(line: 363, column: 12, scope: !52)
!130 = !DILocation(line: 363, column: 5, scope: !52)
!131 = !DILocation(line: 0, scope: !122)
!132 = !DILocation(line: 0, scope: !79)
!133 = !DILocation(line: 364, column: 1, scope: !52)
!134 = distinct !DISubprogram(name: "zipStorePrevEntryLengthLarge", scope: !1, file: !1, line: 397, type: !135, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !138)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !55, !20}
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "p", arg: 1, scope: !134, file: !1, line: 397, type: !55)
!140 = !DILocalVariable(name: "len", arg: 2, scope: !134, file: !1, line: 397, type: !20)
!141 = !DILocation(line: 397, column: 49, scope: !134)
!142 = !DILocation(line: 397, column: 65, scope: !134)
!143 = !{!144, !144, i64 0}
!144 = !{!"int", !85, i64 0}
!145 = !DILocation(line: 398, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !134, file: !1, line: 398, column: 9)
!147 = !DILocation(line: 398, column: 9, scope: !134)
!148 = !DILocation(line: 399, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 398, column: 20)
!150 = !DILocation(line: 400, column: 17, scope: !149)
!151 = !DILocation(line: 400, column: 20, scope: !149)
!152 = !DILocation(line: 400, column: 9, scope: !149)
!153 = !DILocation(line: 402, column: 5, scope: !149)
!154 = !DILocation(line: 403, column: 5, scope: !134)
!155 = distinct !DISubprogram(name: "zipStorePrevEntryLength", scope: !1, file: !1, line: 408, type: !156, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!20, !55, !20}
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !1, line: 408, type: !55)
!160 = !DILocalVariable(name: "len", arg: 2, scope: !155, file: !1, line: 408, type: !20)
!161 = !DILocation(line: 408, column: 53, scope: !155)
!162 = !DILocation(line: 408, column: 69, scope: !155)
!163 = !DILocation(line: 409, column: 11, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !1, line: 409, column: 9)
!165 = !DILocation(line: 0, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 412, column: 13)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 411, column: 12)
!168 = !DILocation(line: 409, column: 9, scope: !155)
!169 = !DILocation(line: 410, column: 16, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 409, column: 20)
!171 = !DILocation(line: 410, column: 9, scope: !170)
!172 = !DILocation(line: 412, column: 13, scope: !167)
!173 = !DILocation(line: 413, column: 20, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !1, line: 412, column: 36)
!175 = !DILocation(line: 413, column: 18, scope: !174)
!176 = !DILocation(line: 414, column: 13, scope: !174)
!177 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !178)
!178 = distinct !DILocation(line: 416, column: 20, scope: !179)
!179 = distinct !DILexicalBlock(scope: !166, file: !1, line: 415, column: 16)
!180 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !178)
!181 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !178)
!182 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !178)
!183 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !178)
!184 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !178)
!185 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !178)
!186 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !178)
!187 = !DILocation(line: 416, column: 13, scope: !179)
!188 = !DILocation(line: 0, scope: !179)
!189 = !DILocation(line: 0, scope: !170)
!190 = !DILocation(line: 419, column: 1, scope: !155)
!191 = distinct !DISubprogram(name: "zipPrevLenByteDiff", scope: !1, file: !1, line: 464, type: !135, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !192)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: "p", arg: 1, scope: !191, file: !1, line: 464, type: !55)
!194 = !DILocalVariable(name: "len", arg: 2, scope: !191, file: !1, line: 464, type: !20)
!195 = !DILocalVariable(name: "prevlensize", scope: !191, file: !1, line: 465, type: !20)
!196 = !DILocation(line: 464, column: 39, scope: !191)
!197 = !DILocation(line: 464, column: 55, scope: !191)
!198 = !DILocation(line: 466, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 466, column: 5)
!200 = distinct !DILexicalBlock(scope: !191, file: !1, line: 466, column: 5)
!201 = !DILocation(line: 466, column: 5, scope: !200)
!202 = !DILocation(line: 466, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 466, column: 5)
!204 = !DILocation(line: 465, column: 18, scope: !191)
!205 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !206)
!206 = distinct !DILocation(line: 467, column: 12, scope: !191)
!207 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !206)
!208 = !DILocation(line: 0, scope: !166, inlinedAt: !206)
!209 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !206)
!210 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !206)
!211 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !206)
!212 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !206)
!213 = !DILocation(line: 467, column: 47, scope: !191)
!214 = !DILocation(line: 467, column: 5, scope: !191)
!215 = distinct !DISubprogram(name: "zipRawEntryLength", scope: !1, file: !1, line: 471, type: !216, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!20, !55}
!218 = !{!219, !220, !221, !222, !223}
!219 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !1, line: 471, type: !55)
!220 = !DILocalVariable(name: "prevlensize", scope: !215, file: !1, line: 472, type: !20)
!221 = !DILocalVariable(name: "encoding", scope: !215, file: !1, line: 472, type: !20)
!222 = !DILocalVariable(name: "lensize", scope: !215, file: !1, line: 472, type: !20)
!223 = !DILocalVariable(name: "len", scope: !215, file: !1, line: 472, type: !20)
!224 = !DILocation(line: 471, column: 47, scope: !215)
!225 = !DILocation(line: 473, column: 5, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 473, column: 5)
!227 = distinct !DILexicalBlock(scope: !215, file: !1, line: 473, column: 5)
!228 = !DILocation(line: 473, column: 5, scope: !227)
!229 = !DILocation(line: 473, column: 5, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 473, column: 5)
!231 = !DILocation(line: 472, column: 18, scope: !215)
!232 = !DILocation(line: 474, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 474, column: 5)
!234 = distinct !DILexicalBlock(scope: !215, file: !1, line: 474, column: 5)
!235 = !DILocation(line: 472, column: 31, scope: !215)
!236 = !DILocation(line: 474, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 474, column: 5)
!238 = !DILocation(line: 474, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 474, column: 5)
!240 = !DILocation(line: 474, column: 5, scope: !234)
!241 = !DILocation(line: 474, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 474, column: 5)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 474, column: 5)
!244 = !DILocation(line: 474, column: 5, scope: !243)
!245 = !DILocation(line: 472, column: 41, scope: !215)
!246 = !DILocation(line: 474, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 474, column: 5)
!248 = !DILocation(line: 472, column: 50, scope: !215)
!249 = !DILocation(line: 474, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !1, line: 474, column: 5)
!251 = !DILocation(line: 474, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !1, line: 474, column: 5)
!253 = !DILocation(line: 474, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 474, column: 5)
!255 = !DILocation(line: 474, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !1, line: 474, column: 5)
!257 = !DILocation(line: 474, column: 5, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 474, column: 5)
!259 = !DILocation(line: 474, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !239, file: !1, line: 474, column: 5)
!261 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !262)
!262 = distinct !DILocation(line: 474, column: 5, scope: !260)
!263 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !262)
!264 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !262)
!265 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !262)
!266 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !262)
!267 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !262)
!268 = !DILocation(line: 314, column: 18, scope: !45, inlinedAt: !262)
!269 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !262)
!270 = !DILocation(line: 314, column: 49, scope: !45, inlinedAt: !262)
!271 = !DILocation(line: 314, column: 9, scope: !31, inlinedAt: !262)
!272 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !262)
!273 = !DILocation(line: 0, scope: !40, inlinedAt: !262)
!274 = !DILocation(line: 0, scope: !260)
!275 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !262)
!276 = !DILocation(line: 475, column: 24, scope: !215)
!277 = !DILocation(line: 475, column: 34, scope: !215)
!278 = !DILocation(line: 475, column: 5, scope: !215)
!279 = distinct !DISubprogram(name: "zipTryEncoding", scope: !1, file: !1, line: 480, type: !280, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !283)
!280 = !DISubroutineType(types: !281)
!281 = !{!137, !55, !20, !282, !55}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DILocalVariable(name: "entry", arg: 1, scope: !279, file: !1, line: 480, type: !55)
!285 = !DILocalVariable(name: "entrylen", arg: 2, scope: !279, file: !1, line: 480, type: !20)
!286 = !DILocalVariable(name: "v", arg: 3, scope: !279, file: !1, line: 480, type: !282)
!287 = !DILocalVariable(name: "encoding", arg: 4, scope: !279, file: !1, line: 480, type: !55)
!288 = !DILocalVariable(name: "value", scope: !279, file: !1, line: 481, type: !26)
!289 = !DILocation(line: 480, column: 35, scope: !279)
!290 = !DILocation(line: 480, column: 55, scope: !279)
!291 = !DILocation(line: 480, column: 76, scope: !279)
!292 = !DILocation(line: 480, column: 94, scope: !279)
!293 = !DILocation(line: 481, column: 5, scope: !279)
!294 = !DILocation(line: 483, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !279, file: !1, line: 483, column: 9)
!296 = !DILocation(line: 484, column: 32, scope: !297)
!297 = distinct !DILexicalBlock(scope: !279, file: !1, line: 484, column: 9)
!298 = !DILocation(line: 481, column: 15, scope: !279)
!299 = !DILocation(line: 484, column: 9, scope: !297)
!300 = !DILocation(line: 484, column: 9, scope: !279)
!301 = !DILocation(line: 487, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 487, column: 13)
!303 = distinct !DILexicalBlock(scope: !297, file: !1, line: 484, column: 50)
!304 = !{!305, !305, i64 0}
!305 = !{!"long long", !85, i64 0}
!306 = !DILocation(line: 487, column: 24, scope: !302)
!307 = !DILocation(line: 488, column: 25, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !1, line: 487, column: 40)
!309 = !DILocation(line: 489, column: 9, scope: !308)
!310 = !DILocation(line: 489, column: 38, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !1, line: 489, column: 20)
!312 = !DILocation(line: 491, column: 39, scope: !313)
!313 = distinct !DILexicalBlock(scope: !311, file: !1, line: 491, column: 20)
!314 = !DILocation(line: 493, column: 39, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 493, column: 20)
!316 = !DILocation(line: 495, column: 39, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !1, line: 495, column: 20)
!318 = !DILocation(line: 497, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !1, line: 495, column: 62)
!320 = !DILocation(line: 0, scope: !308)
!321 = !DILocation(line: 500, column: 12, scope: !303)
!322 = !DILocation(line: 501, column: 9, scope: !303)
!323 = !DILocation(line: 0, scope: !279)
!324 = !DILocation(line: 0, scope: !295)
!325 = !DILocation(line: 504, column: 1, scope: !279)
!326 = distinct !DISubprogram(name: "zipSaveInteger", scope: !1, file: !1, line: 507, type: !327, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !332)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !55, !329, !16}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 56, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 103, baseType: !331)
!331 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!332 = !{!333, !334, !335, !336, !340, !343}
!333 = !DILocalVariable(name: "p", arg: 1, scope: !326, file: !1, line: 507, type: !55)
!334 = !DILocalVariable(name: "value", arg: 2, scope: !326, file: !1, line: 507, type: !329)
!335 = !DILocalVariable(name: "encoding", arg: 3, scope: !326, file: !1, line: 507, type: !16)
!336 = !DILocalVariable(name: "i16", scope: !326, file: !1, line: 508, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !8, line: 32, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !10, line: 55, baseType: !339)
!339 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!340 = !DILocalVariable(name: "i32", scope: !326, file: !1, line: 509, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 44, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 77, baseType: !137)
!343 = !DILocalVariable(name: "i64", scope: !326, file: !1, line: 510, type: !329)
!344 = !DILocation(line: 507, column: 36, scope: !326)
!345 = !DILocation(line: 507, column: 47, scope: !326)
!346 = !DILocation(line: 507, column: 68, scope: !326)
!347 = !DILocation(line: 508, column: 5, scope: !326)
!348 = !DILocation(line: 509, column: 5, scope: !326)
!349 = !DILocation(line: 510, column: 5, scope: !326)
!350 = !DILocation(line: 511, column: 18, scope: !351)
!351 = distinct !DILexicalBlock(scope: !326, file: !1, line: 511, column: 9)
!352 = !DILocation(line: 511, column: 9, scope: !326)
!353 = !DILocation(line: 512, column: 27, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 511, column: 33)
!355 = !DILocation(line: 512, column: 25, scope: !354)
!356 = !DILocation(line: 513, column: 5, scope: !354)
!357 = !DILocation(line: 513, column: 25, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !1, line: 513, column: 16)
!359 = !DILocation(line: 513, column: 16, scope: !351)
!360 = !DILocation(line: 514, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 513, column: 41)
!362 = !DILocation(line: 508, column: 13, scope: !326)
!363 = !DILocation(line: 514, column: 13, scope: !361)
!364 = !{!365, !365, i64 0}
!365 = !{!"short", !85, i64 0}
!366 = !DILocation(line: 515, column: 9, scope: !361)
!367 = !DILocation(line: 517, column: 5, scope: !361)
!368 = !DILocation(line: 517, column: 25, scope: !369)
!369 = distinct !DILexicalBlock(scope: !358, file: !1, line: 517, column: 16)
!370 = !DILocation(line: 517, column: 16, scope: !358)
!371 = !DILocation(line: 518, column: 15, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !1, line: 517, column: 41)
!373 = !DILocation(line: 509, column: 13, scope: !326)
!374 = !DILocation(line: 518, column: 13, scope: !372)
!375 = !DILocation(line: 520, column: 34, scope: !372)
!376 = !DILocation(line: 520, column: 9, scope: !372)
!377 = !DILocation(line: 521, column: 5, scope: !372)
!378 = !DILocation(line: 521, column: 25, scope: !379)
!379 = distinct !DILexicalBlock(scope: !369, file: !1, line: 521, column: 16)
!380 = !DILocation(line: 521, column: 16, scope: !369)
!381 = !DILocation(line: 522, column: 15, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 521, column: 41)
!383 = !DILocation(line: 522, column: 13, scope: !382)
!384 = !DILocation(line: 523, column: 9, scope: !382)
!385 = !DILocation(line: 525, column: 5, scope: !382)
!386 = !DILocation(line: 525, column: 25, scope: !387)
!387 = distinct !DILexicalBlock(scope: !379, file: !1, line: 525, column: 16)
!388 = !DILocation(line: 525, column: 16, scope: !379)
!389 = !DILocation(line: 510, column: 13, scope: !326)
!390 = !DILocation(line: 526, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 525, column: 41)
!392 = !{!393, !393, i64 0}
!393 = !{!"long", !85, i64 0}
!394 = !DILocation(line: 527, column: 9, scope: !391)
!395 = !DILocation(line: 529, column: 5, scope: !391)
!396 = !DILocation(line: 529, column: 25, scope: !397)
!397 = distinct !DILexicalBlock(scope: !387, file: !1, line: 529, column: 16)
!398 = !DILocation(line: 529, column: 44, scope: !397)
!399 = !DILocation(line: 529, column: 56, scope: !397)
!400 = !DILocation(line: 529, column: 16, scope: !387)
!401 = !DILocation(line: 532, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !1, line: 531, column: 12)
!403 = !DILocation(line: 0, scope: !354)
!404 = !DILocation(line: 534, column: 1, scope: !326)
!405 = distinct !DISubprogram(name: "zipLoadInteger", scope: !1, file: !1, line: 537, type: !406, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!329, !55, !16}
!408 = !{!409, !410, !411, !412, !413, !414}
!409 = !DILocalVariable(name: "p", arg: 1, scope: !405, file: !1, line: 537, type: !55)
!410 = !DILocalVariable(name: "encoding", arg: 2, scope: !405, file: !1, line: 537, type: !16)
!411 = !DILocalVariable(name: "i16", scope: !405, file: !1, line: 538, type: !337)
!412 = !DILocalVariable(name: "i32", scope: !405, file: !1, line: 539, type: !341)
!413 = !DILocalVariable(name: "i64", scope: !405, file: !1, line: 540, type: !329)
!414 = !DILocalVariable(name: "ret", scope: !405, file: !1, line: 540, type: !329)
!415 = !DILocation(line: 537, column: 39, scope: !405)
!416 = !DILocation(line: 537, column: 56, scope: !405)
!417 = !DILocation(line: 538, column: 5, scope: !405)
!418 = !DILocation(line: 539, column: 5, scope: !405)
!419 = !DILocation(line: 540, column: 5, scope: !405)
!420 = !DILocation(line: 540, column: 18, scope: !405)
!421 = !DILocation(line: 541, column: 18, scope: !422)
!422 = distinct !DILexicalBlock(scope: !405, file: !1, line: 541, column: 9)
!423 = !DILocation(line: 541, column: 9, scope: !405)
!424 = !DILocation(line: 542, column: 15, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 541, column: 33)
!426 = !DILocation(line: 543, column: 5, scope: !425)
!427 = !DILocation(line: 543, column: 25, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !1, line: 543, column: 16)
!429 = !DILocation(line: 543, column: 16, scope: !422)
!430 = !DILocation(line: 544, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !1, line: 543, column: 41)
!432 = !DILocation(line: 546, column: 15, scope: !431)
!433 = !DILocation(line: 538, column: 13, scope: !405)
!434 = !DILocation(line: 547, column: 5, scope: !431)
!435 = !DILocation(line: 547, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !1, line: 547, column: 16)
!437 = !DILocation(line: 547, column: 16, scope: !428)
!438 = !DILocation(line: 548, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !1, line: 547, column: 41)
!440 = !DILocation(line: 550, column: 15, scope: !439)
!441 = !DILocation(line: 539, column: 13, scope: !405)
!442 = !DILocation(line: 551, column: 5, scope: !439)
!443 = !DILocation(line: 551, column: 25, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !1, line: 551, column: 16)
!445 = !DILocation(line: 551, column: 16, scope: !436)
!446 = !DILocation(line: 552, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !1, line: 551, column: 41)
!448 = !DILocation(line: 553, column: 32, scope: !447)
!449 = !DILocation(line: 553, column: 9, scope: !447)
!450 = !DILocation(line: 555, column: 15, scope: !447)
!451 = !DILocation(line: 555, column: 18, scope: !447)
!452 = !DILocation(line: 556, column: 5, scope: !447)
!453 = !DILocation(line: 556, column: 25, scope: !454)
!454 = distinct !DILexicalBlock(scope: !444, file: !1, line: 556, column: 16)
!455 = !DILocation(line: 556, column: 16, scope: !444)
!456 = !DILocation(line: 557, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 556, column: 41)
!458 = !DILocation(line: 559, column: 15, scope: !457)
!459 = !DILocation(line: 540, column: 13, scope: !405)
!460 = !DILocation(line: 560, column: 5, scope: !457)
!461 = !DILocation(line: 560, column: 25, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 560, column: 16)
!463 = !DILocation(line: 560, column: 44, scope: !462)
!464 = !DILocation(line: 560, column: 56, scope: !462)
!465 = !DILocation(line: 560, column: 16, scope: !454)
!466 = !DILocation(line: 561, column: 25, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 560, column: 76)
!468 = !DILocation(line: 561, column: 44, scope: !467)
!469 = !DILocation(line: 563, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !1, line: 562, column: 12)
!471 = !DILocation(line: 0, scope: !467)
!472 = !DILocation(line: 566, column: 1, scope: !405)
!473 = !DILocation(line: 565, column: 5, scope: !405)
!474 = distinct !DISubprogram(name: "zipEntry", scope: !1, file: !1, line: 569, type: !475, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !488)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !55, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlentry", file: !1, line: 289, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlentry", file: !1, line: 271, size: 256, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlensize", scope: !479, file: !1, line: 272, baseType: !20, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "prevrawlen", scope: !479, file: !1, line: 273, baseType: !20, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lensize", scope: !479, file: !1, line: 274, baseType: !20, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !479, file: !1, line: 277, baseType: !20, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !479, file: !1, line: 282, baseType: !20, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !479, file: !1, line: 283, baseType: !16, size: 8, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !479, file: !1, line: 287, baseType: !55, size: 64, offset: 192)
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "p", arg: 1, scope: !474, file: !1, line: 569, type: !55)
!490 = !DILocalVariable(name: "e", arg: 2, scope: !474, file: !1, line: 569, type: !477)
!491 = !DILocation(line: 569, column: 30, scope: !474)
!492 = !DILocation(line: 569, column: 42, scope: !474)
!493 = !DILocation(line: 571, column: 5, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 571, column: 5)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 571, column: 5)
!496 = distinct !DILexicalBlock(scope: !474, file: !1, line: 571, column: 5)
!497 = !DILocation(line: 571, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !1, line: 571, column: 5)
!499 = !DILocation(line: 571, column: 5, scope: !495)
!500 = !{!501, !144, i64 0}
!501 = !{!"zlentry", !144, i64 0, !144, i64 4, !144, i64 8, !144, i64 12, !144, i64 16, !85, i64 20, !502, i64 24}
!502 = !{!"any pointer", !85, i64 0}
!503 = !DILocation(line: 571, column: 5, scope: !496)
!504 = !DILocation(line: 571, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 571, column: 5)
!506 = distinct !DILexicalBlock(scope: !496, file: !1, line: 571, column: 5)
!507 = !{!501, !144, i64 4}
!508 = !DILocation(line: 571, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !494, file: !1, line: 571, column: 5)
!510 = !DILocation(line: 571, column: 5, scope: !506)
!511 = !DILocation(line: 571, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 571, column: 5)
!513 = distinct !DILexicalBlock(scope: !506, file: !1, line: 571, column: 5)
!514 = !DILocation(line: 572, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 572, column: 5)
!516 = distinct !DILexicalBlock(scope: !474, file: !1, line: 572, column: 5)
!517 = !{!501, !85, i64 20}
!518 = !DILocation(line: 572, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !1, line: 572, column: 5)
!520 = !DILocation(line: 572, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !1, line: 572, column: 5)
!522 = !DILocation(line: 572, column: 5, scope: !516)
!523 = !DILocation(line: 572, column: 5, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 572, column: 5)
!525 = distinct !DILexicalBlock(scope: !521, file: !1, line: 572, column: 5)
!526 = !DILocation(line: 572, column: 5, scope: !525)
!527 = !DILocation(line: 572, column: 5, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 572, column: 5)
!529 = !{!501, !144, i64 8}
!530 = !DILocation(line: 572, column: 5, scope: !531)
!531 = distinct !DILexicalBlock(scope: !524, file: !1, line: 572, column: 5)
!532 = !DILocation(line: 572, column: 5, scope: !533)
!533 = distinct !DILexicalBlock(scope: !531, file: !1, line: 572, column: 5)
!534 = !DILocation(line: 572, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 572, column: 5)
!536 = !DILocation(line: 572, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !1, line: 572, column: 5)
!538 = !DILocation(line: 572, column: 5, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !1, line: 572, column: 5)
!540 = !DILocation(line: 572, column: 5, scope: !541)
!541 = distinct !DILexicalBlock(scope: !521, file: !1, line: 572, column: 5)
!542 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !543)
!543 = distinct !DILocation(line: 572, column: 5, scope: !541)
!544 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !543)
!545 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !543)
!546 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !543)
!547 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !543)
!548 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !543)
!549 = !DILocation(line: 314, column: 18, scope: !45, inlinedAt: !543)
!550 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !543)
!551 = !DILocation(line: 314, column: 49, scope: !45, inlinedAt: !543)
!552 = !DILocation(line: 314, column: 9, scope: !31, inlinedAt: !543)
!553 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !543)
!554 = !DILocation(line: 0, scope: !40, inlinedAt: !543)
!555 = !DILocation(line: 0, scope: !541)
!556 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !543)
!557 = !DILocation(line: 573, column: 44, scope: !474)
!558 = !{!501, !144, i64 12}
!559 = !DILocation(line: 573, column: 39, scope: !474)
!560 = !DILocation(line: 573, column: 8, scope: !474)
!561 = !DILocation(line: 573, column: 19, scope: !474)
!562 = !{!501, !144, i64 16}
!563 = !DILocation(line: 574, column: 8, scope: !474)
!564 = !DILocation(line: 574, column: 10, scope: !474)
!565 = !{!501, !502, i64 24}
!566 = !DILocation(line: 575, column: 1, scope: !474)
!567 = distinct !DISubprogram(name: "ziplistNew", scope: !1, file: !1, line: 578, type: !568, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!55}
!570 = !{!571, !572}
!571 = !DILocalVariable(name: "bytes", scope: !567, file: !1, line: 579, type: !20)
!572 = !DILocalVariable(name: "zl", scope: !567, file: !1, line: 580, type: !55)
!573 = !DILocation(line: 579, column: 18, scope: !567)
!574 = !DILocation(line: 580, column: 25, scope: !567)
!575 = !DILocation(line: 580, column: 20, scope: !567)
!576 = !DILocation(line: 581, column: 5, scope: !567)
!577 = !DILocation(line: 581, column: 23, scope: !567)
!578 = !DILocation(line: 582, column: 5, scope: !567)
!579 = !DILocation(line: 582, column: 29, scope: !567)
!580 = !DILocation(line: 583, column: 5, scope: !567)
!581 = !DILocation(line: 583, column: 24, scope: !567)
!582 = !DILocation(line: 584, column: 5, scope: !567)
!583 = !DILocation(line: 584, column: 17, scope: !567)
!584 = !DILocation(line: 585, column: 5, scope: !567)
!585 = distinct !DISubprogram(name: "ziplistResize", scope: !1, file: !1, line: 589, type: !586, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!55, !55, !20}
!588 = !{!589, !590}
!589 = !DILocalVariable(name: "zl", arg: 1, scope: !585, file: !1, line: 589, type: !55)
!590 = !DILocalVariable(name: "len", arg: 2, scope: !585, file: !1, line: 589, type: !20)
!591 = !DILocation(line: 589, column: 45, scope: !585)
!592 = !DILocation(line: 589, column: 62, scope: !585)
!593 = !DILocation(line: 590, column: 22, scope: !585)
!594 = !DILocation(line: 590, column: 10, scope: !585)
!595 = !DILocation(line: 591, column: 5, scope: !585)
!596 = !DILocation(line: 591, column: 23, scope: !585)
!597 = !DILocation(line: 592, column: 11, scope: !585)
!598 = !DILocation(line: 592, column: 5, scope: !585)
!599 = !DILocation(line: 592, column: 15, scope: !585)
!600 = !DILocation(line: 593, column: 5, scope: !585)
!601 = distinct !DISubprogram(name: "__ziplistCascadeUpdate", scope: !1, file: !1, line: 616, type: !602, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!55, !55, !55}
!604 = !{!605, !606, !607, !612, !613, !614, !615, !616, !617, !618, !619}
!605 = !DILocalVariable(name: "zl", arg: 1, scope: !601, file: !1, line: 616, type: !55)
!606 = !DILocalVariable(name: "p", arg: 2, scope: !601, file: !1, line: 616, type: !55)
!607 = !DILocalVariable(name: "curlen", scope: !601, file: !1, line: 617, type: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !609, line: 40, baseType: !610)
!609 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !611, line: 129, baseType: !25)
!611 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!612 = !DILocalVariable(name: "rawlen", scope: !601, file: !1, line: 617, type: !608)
!613 = !DILocalVariable(name: "rawlensize", scope: !601, file: !1, line: 617, type: !608)
!614 = !DILocalVariable(name: "offset", scope: !601, file: !1, line: 618, type: !608)
!615 = !DILocalVariable(name: "noffset", scope: !601, file: !1, line: 618, type: !608)
!616 = !DILocalVariable(name: "extra", scope: !601, file: !1, line: 618, type: !608)
!617 = !DILocalVariable(name: "np", scope: !601, file: !1, line: 619, type: !55)
!618 = !DILocalVariable(name: "cur", scope: !601, file: !1, line: 620, type: !478)
!619 = !DILocalVariable(name: "next", scope: !601, file: !1, line: 620, type: !478)
!620 = !DILocation(line: 616, column: 54, scope: !601)
!621 = !DILocation(line: 616, column: 73, scope: !601)
!622 = !DILocation(line: 617, column: 21, scope: !601)
!623 = !DILocation(line: 620, column: 5, scope: !601)
!624 = !DILocation(line: 622, column: 5, scope: !601)
!625 = !DILocation(line: 622, column: 12, scope: !601)
!626 = !DILocation(line: 622, column: 17, scope: !601)
!627 = !DILocation(line: 617, column: 12, scope: !601)
!628 = !DILocation(line: 620, column: 13, scope: !601)
!629 = !DILocation(line: 623, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !601, file: !1, line: 622, column: 29)
!631 = !DILocation(line: 624, column: 22, scope: !630)
!632 = !DILocation(line: 624, column: 39, scope: !630)
!633 = !DILocation(line: 624, column: 33, scope: !630)
!634 = !DILocation(line: 624, column: 18, scope: !630)
!635 = !DILocation(line: 617, column: 54, scope: !601)
!636 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !637)
!637 = distinct !DILocation(line: 625, column: 22, scope: !630)
!638 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !637)
!639 = !DILocation(line: 0, scope: !166, inlinedAt: !637)
!640 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !637)
!641 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !637)
!642 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !637)
!643 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !637)
!644 = !DILocation(line: 625, column: 22, scope: !630)
!645 = !DILocation(line: 617, column: 62, scope: !601)
!646 = !DILocation(line: 628, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !630, file: !1, line: 628, column: 13)
!648 = !DILocation(line: 628, column: 23, scope: !647)
!649 = !DILocation(line: 628, column: 13, scope: !630)
!650 = !DILocation(line: 620, column: 18, scope: !601)
!651 = !DILocation(line: 629, column: 9, scope: !630)
!652 = !DILocation(line: 632, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !630, file: !1, line: 632, column: 13)
!654 = !DILocation(line: 632, column: 29, scope: !653)
!655 = !DILocation(line: 632, column: 13, scope: !630)
!656 = !DILocation(line: 634, column: 18, scope: !657)
!657 = distinct !DILexicalBlock(scope: !630, file: !1, line: 634, column: 13)
!658 = !DILocation(line: 634, column: 33, scope: !657)
!659 = !DILocation(line: 634, column: 13, scope: !630)
!660 = !DILocation(line: 634, column: 13, scope: !657)
!661 = !DILocation(line: 637, column: 23, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !1, line: 634, column: 47)
!663 = !DILocation(line: 618, column: 12, scope: !601)
!664 = !DILocation(line: 638, column: 31, scope: !662)
!665 = !DILocation(line: 618, column: 29, scope: !601)
!666 = !DILocation(line: 639, column: 41, scope: !662)
!667 = !DILocation(line: 639, column: 35, scope: !662)
!668 = !DILocation(line: 589, column: 45, scope: !585, inlinedAt: !669)
!669 = distinct !DILocation(line: 639, column: 18, scope: !662)
!670 = !DILocation(line: 589, column: 62, scope: !585, inlinedAt: !669)
!671 = !DILocation(line: 590, column: 22, scope: !585, inlinedAt: !669)
!672 = !DILocation(line: 590, column: 10, scope: !585, inlinedAt: !669)
!673 = !DILocation(line: 591, column: 5, scope: !585, inlinedAt: !669)
!674 = !DILocation(line: 591, column: 23, scope: !585, inlinedAt: !669)
!675 = !DILocation(line: 592, column: 11, scope: !585, inlinedAt: !669)
!676 = !DILocation(line: 592, column: 5, scope: !585, inlinedAt: !669)
!677 = !DILocation(line: 592, column: 15, scope: !585, inlinedAt: !669)
!678 = !DILocation(line: 593, column: 5, scope: !585, inlinedAt: !669)
!679 = !DILocation(line: 640, column: 19, scope: !662)
!680 = !DILocation(line: 643, column: 19, scope: !662)
!681 = !DILocation(line: 619, column: 20, scope: !601)
!682 = !DILocation(line: 644, column: 25, scope: !662)
!683 = !DILocation(line: 647, column: 21, scope: !684)
!684 = distinct !DILexicalBlock(scope: !662, file: !1, line: 647, column: 17)
!685 = !DILocation(line: 647, column: 20, scope: !684)
!686 = !DILocation(line: 647, column: 60, scope: !684)
!687 = !DILocation(line: 647, column: 17, scope: !662)
!688 = !DILocation(line: 649, column: 21, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !1, line: 647, column: 67)
!690 = !DILocation(line: 648, column: 41, scope: !689)
!691 = !DILocation(line: 650, column: 13, scope: !689)
!692 = !DILocation(line: 653, column: 23, scope: !662)
!693 = !DILocation(line: 654, column: 25, scope: !662)
!694 = !DILocation(line: 654, column: 19, scope: !662)
!695 = !DILocation(line: 655, column: 51, scope: !662)
!696 = !DILocation(line: 655, column: 23, scope: !662)
!697 = !DILocation(line: 653, column: 13, scope: !662)
!698 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !699)
!699 = distinct !DILocation(line: 656, column: 13, scope: !662)
!700 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !699)
!701 = !DILocation(line: 409, column: 11, scope: !164, inlinedAt: !699)
!702 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !699)
!703 = !DILocation(line: 0, scope: !662)
!704 = !DILocation(line: 412, column: 13, scope: !167, inlinedAt: !699)
!705 = !DILocation(line: 413, column: 20, scope: !174, inlinedAt: !699)
!706 = !DILocation(line: 413, column: 18, scope: !174, inlinedAt: !699)
!707 = !DILocation(line: 414, column: 13, scope: !174, inlinedAt: !699)
!708 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !709)
!709 = distinct !DILocation(line: 416, column: 20, scope: !179, inlinedAt: !699)
!710 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !709)
!711 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !709)
!712 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !709)
!713 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !709)
!714 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !709)
!715 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !709)
!716 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !709)
!717 = !DILocation(line: 416, column: 13, scope: !179, inlinedAt: !699)
!718 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !699)
!719 = distinct !{!719, !624, !720}
!720 = !DILocation(line: 673, column: 5, scope: !601)
!721 = !DILocation(line: 662, column: 37, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 662, column: 17)
!723 = distinct !DILexicalBlock(scope: !657, file: !1, line: 661, column: 16)
!724 = !DILocation(line: 662, column: 17, scope: !723)
!725 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !726)
!726 = distinct !DILocation(line: 665, column: 17, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !1, line: 662, column: 51)
!728 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !726)
!729 = !DILocation(line: 398, column: 11, scope: !146, inlinedAt: !726)
!730 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !726)
!731 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !726)
!732 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !726)
!733 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !726)
!734 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !726)
!735 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !726)
!736 = !DILocation(line: 666, column: 13, scope: !727)
!737 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !738)
!738 = distinct !DILocation(line: 667, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !722, file: !1, line: 666, column: 20)
!740 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !738)
!741 = !DILocation(line: 409, column: 11, scope: !164, inlinedAt: !738)
!742 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !738)
!743 = !DILocation(line: 0, scope: !739)
!744 = !DILocation(line: 412, column: 13, scope: !167, inlinedAt: !738)
!745 = !DILocation(line: 413, column: 20, scope: !174, inlinedAt: !738)
!746 = !DILocation(line: 413, column: 18, scope: !174, inlinedAt: !738)
!747 = !DILocation(line: 414, column: 13, scope: !174, inlinedAt: !738)
!748 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !749)
!749 = distinct !DILocation(line: 416, column: 20, scope: !179, inlinedAt: !738)
!750 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !749)
!751 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !749)
!752 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !749)
!753 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !749)
!754 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !749)
!755 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !749)
!756 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !749)
!757 = !DILocation(line: 416, column: 13, scope: !179, inlinedAt: !738)
!758 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !738)
!759 = !DILocation(line: 675, column: 1, scope: !601)
!760 = !DILocation(line: 674, column: 5, scope: !601)
!761 = distinct !DISubprogram(name: "__ziplistDelete", scope: !1, file: !1, line: 678, type: !762, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!55, !55, !55, !20}
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!765 = !DILocalVariable(name: "zl", arg: 1, scope: !761, file: !1, line: 678, type: !55)
!766 = !DILocalVariable(name: "p", arg: 2, scope: !761, file: !1, line: 678, type: !55)
!767 = !DILocalVariable(name: "num", arg: 3, scope: !761, file: !1, line: 678, type: !20)
!768 = !DILocalVariable(name: "i", scope: !761, file: !1, line: 679, type: !20)
!769 = !DILocalVariable(name: "totlen", scope: !761, file: !1, line: 679, type: !20)
!770 = !DILocalVariable(name: "deleted", scope: !761, file: !1, line: 679, type: !20)
!771 = !DILocalVariable(name: "offset", scope: !761, file: !1, line: 680, type: !608)
!772 = !DILocalVariable(name: "nextdiff", scope: !761, file: !1, line: 681, type: !137)
!773 = !DILocalVariable(name: "first", scope: !761, file: !1, line: 682, type: !478)
!774 = !DILocalVariable(name: "tail", scope: !761, file: !1, line: 682, type: !478)
!775 = !DILocation(line: 678, column: 47, scope: !761)
!776 = !DILocation(line: 678, column: 66, scope: !761)
!777 = !DILocation(line: 678, column: 82, scope: !761)
!778 = !DILocation(line: 679, column: 29, scope: !761)
!779 = !DILocation(line: 681, column: 9, scope: !761)
!780 = !DILocation(line: 682, column: 5, scope: !761)
!781 = !DILocation(line: 682, column: 13, scope: !761)
!782 = !DILocation(line: 684, column: 5, scope: !761)
!783 = !DILocation(line: 679, column: 18, scope: !761)
!784 = !DILocation(line: 685, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !761, file: !1, line: 685, column: 5)
!786 = !DILocation(line: 685, column: 17, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !1, line: 685, column: 5)
!788 = !DILocation(line: 685, column: 22, scope: !787)
!789 = !DILocation(line: 685, column: 33, scope: !787)
!790 = !DILocation(line: 685, column: 38, scope: !787)
!791 = !DILocation(line: 685, column: 5, scope: !785)
!792 = distinct !{!792, !791, !793}
!793 = !DILocation(line: 688, column: 5, scope: !785)
!794 = !DILocation(line: 686, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !787, file: !1, line: 685, column: 50)
!796 = !DILocation(line: 686, column: 11, scope: !795)
!797 = !DILocation(line: 687, column: 16, scope: !795)
!798 = !DILocation(line: 685, column: 5, scope: !787)
!799 = !DILocation(line: 0, scope: !795)
!800 = !DILocation(line: 690, column: 22, scope: !761)
!801 = !DILocation(line: 690, column: 15, scope: !761)
!802 = !DILocation(line: 690, column: 14, scope: !761)
!803 = !DILocation(line: 679, column: 21, scope: !761)
!804 = !DILocation(line: 691, column: 16, scope: !805)
!805 = distinct !DILexicalBlock(scope: !761, file: !1, line: 691, column: 9)
!806 = !DILocation(line: 691, column: 9, scope: !761)
!807 = !DILocation(line: 692, column: 13, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !1, line: 691, column: 21)
!809 = !DILocation(line: 697, column: 51, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 692, column: 30)
!811 = distinct !DILexicalBlock(scope: !808, file: !1, line: 692, column: 13)
!812 = !DILocation(line: 464, column: 39, scope: !191, inlinedAt: !813)
!813 = distinct !DILocation(line: 697, column: 24, scope: !810)
!814 = !DILocation(line: 464, column: 55, scope: !191, inlinedAt: !813)
!815 = !DILocation(line: 466, column: 5, scope: !199, inlinedAt: !813)
!816 = !DILocation(line: 466, column: 5, scope: !200, inlinedAt: !813)
!817 = !DILocation(line: 466, column: 5, scope: !203, inlinedAt: !813)
!818 = !DILocation(line: 465, column: 18, scope: !191, inlinedAt: !813)
!819 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !820)
!820 = distinct !DILocation(line: 467, column: 12, scope: !191, inlinedAt: !813)
!821 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !820)
!822 = !DILocation(line: 0, scope: !166, inlinedAt: !820)
!823 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !820)
!824 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !820)
!825 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !820)
!826 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !820)
!827 = !DILocation(line: 467, column: 47, scope: !191, inlinedAt: !813)
!828 = !DILocation(line: 467, column: 5, scope: !191, inlinedAt: !813)
!829 = !DILocation(line: 703, column: 15, scope: !810)
!830 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !831)
!831 = distinct !DILocation(line: 704, column: 13, scope: !810)
!832 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !831)
!833 = !DILocation(line: 409, column: 11, scope: !164, inlinedAt: !831)
!834 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !831)
!835 = !DILocation(line: 0, scope: !810)
!836 = !DILocation(line: 412, column: 13, scope: !167, inlinedAt: !831)
!837 = !DILocation(line: 413, column: 20, scope: !174, inlinedAt: !831)
!838 = !DILocation(line: 413, column: 18, scope: !174, inlinedAt: !831)
!839 = !DILocation(line: 414, column: 13, scope: !174, inlinedAt: !831)
!840 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !841)
!841 = distinct !DILocation(line: 416, column: 20, scope: !179, inlinedAt: !831)
!842 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !841)
!843 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !841)
!844 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !841)
!845 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !841)
!846 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !841)
!847 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !841)
!848 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !841)
!849 = !DILocation(line: 416, column: 13, scope: !179, inlinedAt: !831)
!850 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !831)
!851 = !DILocation(line: 708, column: 17, scope: !810)
!852 = !DILocation(line: 707, column: 37, scope: !810)
!853 = !DILocation(line: 682, column: 20, scope: !761)
!854 = !DILocation(line: 713, column: 13, scope: !810)
!855 = !DILocation(line: 714, column: 24, scope: !856)
!856 = distinct !DILexicalBlock(scope: !810, file: !1, line: 714, column: 17)
!857 = !DILocation(line: 714, column: 40, scope: !856)
!858 = !DILocation(line: 714, column: 34, scope: !856)
!859 = !DILocation(line: 714, column: 17, scope: !856)
!860 = !DILocation(line: 714, column: 45, scope: !856)
!861 = !DILocation(line: 714, column: 17, scope: !810)
!862 = !DILocation(line: 716, column: 20, scope: !863)
!863 = distinct !DILexicalBlock(scope: !856, file: !1, line: 714, column: 57)
!864 = !DILocation(line: 715, column: 41, scope: !863)
!865 = !DILocation(line: 717, column: 13, scope: !863)
!866 = !DILocation(line: 720, column: 27, scope: !810)
!867 = !DILocation(line: 721, column: 17, scope: !810)
!868 = !DILocation(line: 721, column: 51, scope: !810)
!869 = !DILocation(line: 721, column: 48, scope: !810)
!870 = !DILocation(line: 721, column: 55, scope: !810)
!871 = !DILocation(line: 720, column: 13, scope: !810)
!872 = !DILocation(line: 722, column: 9, scope: !810)
!873 = !DILocation(line: 729, column: 24, scope: !808)
!874 = !DILocation(line: 729, column: 25, scope: !808)
!875 = !DILocation(line: 725, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !811, file: !1, line: 722, column: 16)
!877 = !DILocation(line: 724, column: 13, scope: !876)
!878 = !DILocation(line: 724, column: 37, scope: !876)
!879 = !DILocation(line: 730, column: 32, scope: !808)
!880 = !DILocation(line: 0, scope: !761)
!881 = !DILocation(line: 680, column: 12, scope: !761)
!882 = !DILocation(line: 730, column: 63, scope: !808)
!883 = !DILocation(line: 730, column: 70, scope: !808)
!884 = !DILocation(line: 589, column: 45, scope: !585, inlinedAt: !885)
!885 = distinct !DILocation(line: 730, column: 14, scope: !808)
!886 = !DILocation(line: 589, column: 62, scope: !585, inlinedAt: !885)
!887 = !DILocation(line: 590, column: 22, scope: !585, inlinedAt: !885)
!888 = !DILocation(line: 590, column: 10, scope: !585, inlinedAt: !885)
!889 = !DILocation(line: 591, column: 5, scope: !585, inlinedAt: !885)
!890 = !DILocation(line: 591, column: 23, scope: !585, inlinedAt: !885)
!891 = !DILocation(line: 592, column: 11, scope: !585, inlinedAt: !885)
!892 = !DILocation(line: 592, column: 5, scope: !585, inlinedAt: !885)
!893 = !DILocation(line: 592, column: 15, scope: !585, inlinedAt: !885)
!894 = !DILocation(line: 593, column: 5, scope: !585, inlinedAt: !885)
!895 = !DILocation(line: 731, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 731, column: 9)
!897 = distinct !DILexicalBlock(scope: !808, file: !1, line: 731, column: 9)
!898 = !DILocation(line: 731, column: 9, scope: !897)
!899 = !DILocation(line: 736, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !808, file: !1, line: 736, column: 13)
!901 = !DILocation(line: 736, column: 13, scope: !808)
!902 = !DILocation(line: 732, column: 15, scope: !808)
!903 = !DILocation(line: 737, column: 18, scope: !900)
!904 = !DILocation(line: 737, column: 13, scope: !900)
!905 = !DILocation(line: 740, column: 1, scope: !761)
!906 = !DILocation(line: 739, column: 5, scope: !761)
!907 = distinct !DISubprogram(name: "__ziplistInsert", scope: !1, file: !1, line: 743, type: !908, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!55, !55, !55, !55, !20}
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !927}
!911 = !DILocalVariable(name: "zl", arg: 1, scope: !907, file: !1, line: 743, type: !55)
!912 = !DILocalVariable(name: "p", arg: 2, scope: !907, file: !1, line: 743, type: !55)
!913 = !DILocalVariable(name: "s", arg: 3, scope: !907, file: !1, line: 743, type: !55)
!914 = !DILocalVariable(name: "slen", arg: 4, scope: !907, file: !1, line: 743, type: !20)
!915 = !DILocalVariable(name: "curlen", scope: !907, file: !1, line: 744, type: !608)
!916 = !DILocalVariable(name: "reqlen", scope: !907, file: !1, line: 744, type: !608)
!917 = !DILocalVariable(name: "prevlensize", scope: !907, file: !1, line: 745, type: !20)
!918 = !DILocalVariable(name: "prevlen", scope: !907, file: !1, line: 745, type: !20)
!919 = !DILocalVariable(name: "offset", scope: !907, file: !1, line: 746, type: !608)
!920 = !DILocalVariable(name: "nextdiff", scope: !907, file: !1, line: 747, type: !137)
!921 = !DILocalVariable(name: "encoding", scope: !907, file: !1, line: 748, type: !16)
!922 = !DILocalVariable(name: "value", scope: !907, file: !1, line: 749, type: !26)
!923 = !DILocalVariable(name: "tail", scope: !907, file: !1, line: 752, type: !478)
!924 = !DILocalVariable(name: "ptail", scope: !925, file: !1, line: 758, type: !55)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 757, column: 12)
!926 = distinct !DILexicalBlock(scope: !907, file: !1, line: 755, column: 9)
!927 = !DILocalVariable(name: "forcelarge", scope: !907, file: !1, line: 781, type: !137)
!928 = !DILocation(line: 743, column: 47, scope: !907)
!929 = !DILocation(line: 743, column: 66, scope: !907)
!930 = !DILocation(line: 743, column: 84, scope: !907)
!931 = !DILocation(line: 743, column: 100, scope: !907)
!932 = !DILocation(line: 744, column: 21, scope: !907)
!933 = !DILocation(line: 744, column: 12, scope: !907)
!934 = !DILocation(line: 745, column: 5, scope: !907)
!935 = !DILocation(line: 745, column: 31, scope: !907)
!936 = !DILocation(line: 747, column: 9, scope: !907)
!937 = !DILocation(line: 748, column: 19, scope: !907)
!938 = !DILocation(line: 749, column: 15, scope: !907)
!939 = !DILocation(line: 752, column: 5, scope: !907)
!940 = !DILocation(line: 755, column: 9, scope: !926)
!941 = !DILocation(line: 755, column: 14, scope: !926)
!942 = !DILocation(line: 755, column: 9, scope: !907)
!943 = !DILocation(line: 756, column: 9, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !1, line: 756, column: 9)
!945 = distinct !DILexicalBlock(scope: !946, file: !1, line: 756, column: 9)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 756, column: 9)
!947 = distinct !DILexicalBlock(scope: !926, file: !1, line: 755, column: 26)
!948 = !DILocation(line: 756, column: 9, scope: !945)
!949 = !DILocation(line: 756, column: 9, scope: !946)
!950 = !DILocation(line: 756, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 756, column: 9)
!952 = distinct !DILexicalBlock(scope: !946, file: !1, line: 756, column: 9)
!953 = !DILocation(line: 756, column: 9, scope: !952)
!954 = !DILocation(line: 756, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 756, column: 9)
!956 = distinct !DILexicalBlock(scope: !952, file: !1, line: 756, column: 9)
!957 = !DILocation(line: 758, column: 32, scope: !925)
!958 = !DILocation(line: 758, column: 24, scope: !925)
!959 = !DILocation(line: 759, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !925, file: !1, line: 759, column: 13)
!961 = !DILocation(line: 759, column: 22, scope: !960)
!962 = !DILocation(line: 759, column: 13, scope: !925)
!963 = !DILocation(line: 760, column: 23, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !1, line: 759, column: 34)
!965 = !DILocation(line: 760, column: 21, scope: !964)
!966 = !DILocation(line: 761, column: 9, scope: !964)
!967 = !DILocation(line: 480, column: 35, scope: !279, inlinedAt: !968)
!968 = distinct !DILocation(line: 765, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !907, file: !1, line: 765, column: 9)
!970 = !DILocation(line: 480, column: 55, scope: !279, inlinedAt: !968)
!971 = !DILocation(line: 481, column: 5, scope: !279, inlinedAt: !968)
!972 = !DILocation(line: 483, column: 24, scope: !295, inlinedAt: !968)
!973 = !DILocation(line: 484, column: 32, scope: !297, inlinedAt: !968)
!974 = !DILocation(line: 481, column: 15, scope: !279, inlinedAt: !968)
!975 = !DILocation(line: 484, column: 9, scope: !297, inlinedAt: !968)
!976 = !DILocation(line: 484, column: 9, scope: !279, inlinedAt: !968)
!977 = !DILocation(line: 487, column: 13, scope: !302, inlinedAt: !968)
!978 = !DILocation(line: 487, column: 24, scope: !302, inlinedAt: !968)
!979 = !DILocation(line: 489, column: 38, scope: !311, inlinedAt: !968)
!980 = !DILocation(line: 491, column: 9, scope: !981, inlinedAt: !968)
!981 = distinct !DILexicalBlock(scope: !311, file: !1, line: 489, column: 60)
!982 = !DILocation(line: 501, column: 9, scope: !303, inlinedAt: !968)
!983 = !DILocation(line: 504, column: 1, scope: !279, inlinedAt: !968)
!984 = !DILocation(line: 765, column: 9, scope: !907)
!985 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !986)
!986 = distinct !DILocation(line: 767, column: 18, scope: !987)
!987 = distinct !DILexicalBlock(scope: !969, file: !1, line: 765, column: 50)
!988 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !986)
!989 = !DILocation(line: 491, column: 39, scope: !313, inlinedAt: !968)
!990 = !DILocation(line: 493, column: 9, scope: !991, inlinedAt: !968)
!991 = distinct !DILexicalBlock(scope: !313, file: !1, line: 491, column: 62)
!992 = !DILocation(line: 493, column: 39, scope: !315, inlinedAt: !968)
!993 = !DILocation(line: 495, column: 9, scope: !994, inlinedAt: !968)
!994 = distinct !DILexicalBlock(scope: !315, file: !1, line: 493, column: 62)
!995 = !DILocation(line: 495, column: 39, scope: !317, inlinedAt: !968)
!996 = !DILocation(line: 488, column: 25, scope: !308, inlinedAt: !968)
!997 = !DILocation(line: 489, column: 9, scope: !308, inlinedAt: !968)
!998 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !986)
!999 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !986)
!1000 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !986)
!1001 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !986)
!1002 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !986)
!1003 = !DILocation(line: 314, column: 9, scope: !31, inlinedAt: !986)
!1004 = !DILocation(line: 315, column: 9, scope: !45, inlinedAt: !986)
!1005 = !DILocation(line: 0, scope: !969)
!1006 = !DILocation(line: 744, column: 54, scope: !907)
!1007 = !DILocation(line: 0, scope: !987)
!1008 = !DILocation(line: 0, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !969, file: !1, line: 768, column: 12)
!1010 = !DILocation(line: 775, column: 44, scope: !907)
!1011 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 775, column: 15, scope: !907)
!1013 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !1012)
!1014 = !DILocation(line: 0, scope: !166, inlinedAt: !1012)
!1015 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !1012)
!1016 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !1012)
!1017 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !1012)
!1018 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !1012)
!1019 = !DILocation(line: 775, column: 12, scope: !907)
!1020 = !DILocation(line: 332, column: 51, scope: !52, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 776, column: 15, scope: !907)
!1022 = !DILocation(line: 332, column: 68, scope: !52, inlinedAt: !1021)
!1023 = !DILocation(line: 332, column: 91, scope: !52, inlinedAt: !1021)
!1024 = !DILocation(line: 333, column: 19, scope: !52, inlinedAt: !1021)
!1025 = !DILocation(line: 335, column: 9, scope: !72, inlinedAt: !1021)
!1026 = !DILocation(line: 335, column: 9, scope: !52, inlinedAt: !1021)
!1027 = !DILocation(line: 338, column: 20, scope: !75, inlinedAt: !1021)
!1028 = !DILocation(line: 338, column: 13, scope: !76, inlinedAt: !1021)
!1029 = !DILocation(line: 339, column: 17, scope: !80, inlinedAt: !1021)
!1030 = !DILocation(line: 339, column: 21, scope: !79, inlinedAt: !1021)
!1031 = !DILocation(line: 341, column: 27, scope: !89, inlinedAt: !1021)
!1032 = !DILocation(line: 341, column: 20, scope: !75, inlinedAt: !1021)
!1033 = !DILocation(line: 0, scope: !93, inlinedAt: !1021)
!1034 = !DILocation(line: 0, scope: !907)
!1035 = !DILocation(line: 343, column: 21, scope: !1036, inlinedAt: !1021)
!1036 = distinct !DILexicalBlock(scope: !96, file: !1, line: 343, column: 17)
!1037 = !DILocation(line: 357, column: 13, scope: !123, inlinedAt: !1021)
!1038 = !DILocation(line: 357, column: 17, scope: !122, inlinedAt: !1021)
!1039 = !DILocation(line: 364, column: 1, scope: !52, inlinedAt: !1021)
!1040 = !DILocation(line: 776, column: 12, scope: !907)
!1041 = !DILocation(line: 781, column: 9, scope: !907)
!1042 = !DILocation(line: 782, column: 17, scope: !907)
!1043 = !DILocation(line: 782, column: 22, scope: !907)
!1044 = !DILocation(line: 782, column: 16, scope: !907)
!1045 = !DILocation(line: 783, column: 24, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !907, file: !1, line: 783, column: 9)
!1047 = !DILocation(line: 790, column: 27, scope: !907)
!1048 = !DILocation(line: 782, column: 57, scope: !907)
!1049 = !DILocation(line: 464, column: 39, scope: !191, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 782, column: 36, scope: !907)
!1051 = !DILocation(line: 464, column: 55, scope: !191, inlinedAt: !1050)
!1052 = !DILocation(line: 466, column: 5, scope: !199, inlinedAt: !1050)
!1053 = !DILocation(line: 466, column: 5, scope: !200, inlinedAt: !1050)
!1054 = !DILocation(line: 466, column: 5, scope: !203, inlinedAt: !1050)
!1055 = !DILocation(line: 465, column: 18, scope: !191, inlinedAt: !1050)
!1056 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 467, column: 12, scope: !191, inlinedAt: !1050)
!1058 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !1057)
!1059 = !DILocation(line: 0, scope: !166, inlinedAt: !1057)
!1060 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !1057)
!1061 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !1057)
!1062 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !1057)
!1063 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !1057)
!1064 = !DILocation(line: 467, column: 47, scope: !191, inlinedAt: !1050)
!1065 = !DILocation(line: 467, column: 5, scope: !191, inlinedAt: !1050)
!1066 = !DILocation(line: 783, column: 18, scope: !1046)
!1067 = !DILocation(line: 783, column: 34, scope: !1046)
!1068 = !DILocation(line: 786, column: 5, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 783, column: 39)
!1070 = !DILocation(line: 789, column: 15, scope: !907)
!1071 = !DILocation(line: 746, column: 12, scope: !907)
!1072 = !DILocation(line: 790, column: 41, scope: !907)
!1073 = !DILocation(line: 589, column: 45, scope: !585, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 790, column: 10, scope: !907)
!1075 = !DILocation(line: 589, column: 62, scope: !585, inlinedAt: !1074)
!1076 = !DILocation(line: 590, column: 22, scope: !585, inlinedAt: !1074)
!1077 = !DILocation(line: 590, column: 10, scope: !585, inlinedAt: !1074)
!1078 = !DILocation(line: 591, column: 5, scope: !585, inlinedAt: !1074)
!1079 = !DILocation(line: 591, column: 23, scope: !585, inlinedAt: !1074)
!1080 = !DILocation(line: 592, column: 11, scope: !585, inlinedAt: !1074)
!1081 = !DILocation(line: 592, column: 5, scope: !585, inlinedAt: !1074)
!1082 = !DILocation(line: 592, column: 15, scope: !585, inlinedAt: !1074)
!1083 = !DILocation(line: 593, column: 5, scope: !585, inlinedAt: !1074)
!1084 = !DILocation(line: 791, column: 11, scope: !907)
!1085 = !DILocation(line: 794, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !907, file: !1, line: 794, column: 9)
!1087 = !DILocation(line: 794, column: 14, scope: !1086)
!1088 = !DILocation(line: 794, column: 9, scope: !907)
!1089 = !DILocation(line: 796, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 794, column: 26)
!1091 = !DILocation(line: 796, column: 27, scope: !1090)
!1092 = !DILocation(line: 796, column: 50, scope: !1090)
!1093 = !DILocation(line: 796, column: 52, scope: !1090)
!1094 = !DILocation(line: 796, column: 9, scope: !1090)
!1095 = !DILocation(line: 799, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 799, column: 13)
!1097 = !DILocation(line: 799, column: 13, scope: !1090)
!1098 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 800, column: 13, scope: !1096)
!1100 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !1099)
!1101 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !1099)
!1102 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !1099)
!1103 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !1099)
!1104 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !1099)
!1105 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !1099)
!1106 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !1099)
!1107 = !DILocation(line: 800, column: 13, scope: !1096)
!1108 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 802, column: 13, scope: !1096)
!1110 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !1109)
!1111 = !DILocation(line: 0, scope: !166, inlinedAt: !1109)
!1112 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !1109)
!1113 = !DILocation(line: 412, column: 13, scope: !167, inlinedAt: !1109)
!1114 = !DILocation(line: 413, column: 20, scope: !174, inlinedAt: !1109)
!1115 = !DILocation(line: 413, column: 18, scope: !174, inlinedAt: !1109)
!1116 = !DILocation(line: 414, column: 13, scope: !174, inlinedAt: !1109)
!1117 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 416, column: 20, scope: !179, inlinedAt: !1109)
!1119 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !1118)
!1120 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !1118)
!1121 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !1118)
!1122 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !1118)
!1123 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !1118)
!1124 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !1118)
!1125 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !1118)
!1126 = !DILocation(line: 416, column: 13, scope: !179, inlinedAt: !1109)
!1127 = !DILocation(line: 0, scope: !1096)
!1128 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !1109)
!1129 = !DILocation(line: 806, column: 13, scope: !1090)
!1130 = !DILocation(line: 805, column: 33, scope: !1090)
!1131 = !DILocation(line: 752, column: 13, scope: !907)
!1132 = !DILocation(line: 811, column: 9, scope: !1090)
!1133 = !DILocation(line: 812, column: 27, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 812, column: 13)
!1135 = !DILocation(line: 812, column: 22, scope: !1134)
!1136 = !DILocation(line: 812, column: 21, scope: !1134)
!1137 = !DILocation(line: 812, column: 43, scope: !1134)
!1138 = !DILocation(line: 812, column: 38, scope: !1134)
!1139 = !DILocation(line: 812, column: 37, scope: !1134)
!1140 = !DILocation(line: 812, column: 13, scope: !1134)
!1141 = !DILocation(line: 812, column: 48, scope: !1134)
!1142 = !DILocation(line: 812, column: 13, scope: !1090)
!1143 = !DILocation(line: 814, column: 17, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 812, column: 60)
!1145 = !DILocation(line: 813, column: 37, scope: !1144)
!1146 = !DILocation(line: 815, column: 9, scope: !1144)
!1147 = !DILocation(line: 818, column: 35, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 816, column: 12)
!1149 = !DILocation(line: 818, column: 9, scope: !1148)
!1150 = !DILocation(line: 818, column: 33, scope: !1148)
!1151 = !DILocation(line: 823, column: 18, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !907, file: !1, line: 823, column: 9)
!1153 = !DILocation(line: 823, column: 9, scope: !907)
!1154 = !DILocation(line: 830, column: 36, scope: !907)
!1155 = !DILocation(line: 408, column: 53, scope: !155, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 830, column: 10, scope: !907)
!1157 = !DILocation(line: 408, column: 69, scope: !155, inlinedAt: !1156)
!1158 = !DILocation(line: 0, scope: !166, inlinedAt: !1156)
!1159 = !DILocation(line: 409, column: 9, scope: !155, inlinedAt: !1156)
!1160 = !DILocation(line: 412, column: 13, scope: !167, inlinedAt: !1156)
!1161 = !DILocation(line: 825, column: 41, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 823, column: 24)
!1163 = !DILocation(line: 825, column: 14, scope: !1162)
!1164 = !DILocation(line: 826, column: 15, scope: !1162)
!1165 = !DILocation(line: 827, column: 5, scope: !1162)
!1166 = !DILocation(line: 409, column: 11, scope: !164, inlinedAt: !1156)
!1167 = !DILocation(line: 410, column: 16, scope: !170, inlinedAt: !1156)
!1168 = !DILocation(line: 410, column: 9, scope: !170, inlinedAt: !1156)
!1169 = !DILocation(line: 413, column: 20, scope: !174, inlinedAt: !1156)
!1170 = !DILocation(line: 413, column: 18, scope: !174, inlinedAt: !1156)
!1171 = !DILocation(line: 414, column: 13, scope: !174, inlinedAt: !1156)
!1172 = !DILocation(line: 397, column: 49, scope: !134, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 416, column: 20, scope: !179, inlinedAt: !1156)
!1174 = !DILocation(line: 397, column: 65, scope: !134, inlinedAt: !1173)
!1175 = !DILocation(line: 398, column: 9, scope: !134, inlinedAt: !1173)
!1176 = !DILocation(line: 399, column: 14, scope: !149, inlinedAt: !1173)
!1177 = !DILocation(line: 400, column: 17, scope: !149, inlinedAt: !1173)
!1178 = !DILocation(line: 400, column: 9, scope: !149, inlinedAt: !1173)
!1179 = !DILocation(line: 402, column: 5, scope: !149, inlinedAt: !1173)
!1180 = !DILocation(line: 403, column: 5, scope: !134, inlinedAt: !1173)
!1181 = !DILocation(line: 416, column: 13, scope: !179, inlinedAt: !1156)
!1182 = !DILocation(line: 419, column: 1, scope: !155, inlinedAt: !1156)
!1183 = !DILocation(line: 830, column: 7, scope: !907)
!1184 = !DILocation(line: 831, column: 10, scope: !907)
!1185 = !DILocation(line: 831, column: 7, scope: !907)
!1186 = !DILocation(line: 832, column: 9, scope: !907)
!1187 = !DILocation(line: 833, column: 20, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 832, column: 31)
!1189 = distinct !DILexicalBlock(scope: !907, file: !1, line: 832, column: 9)
!1190 = !DILocation(line: 833, column: 9, scope: !1188)
!1191 = !DILocation(line: 834, column: 5, scope: !1188)
!1192 = !DILocation(line: 835, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 834, column: 12)
!1194 = !DILocation(line: 837, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 837, column: 5)
!1196 = distinct !DILexicalBlock(scope: !907, file: !1, line: 837, column: 5)
!1197 = !DILocation(line: 837, column: 5, scope: !1196)
!1198 = !DILocation(line: 839, column: 1, scope: !907)
!1199 = !DILocation(line: 838, column: 5, scope: !907)
!1200 = distinct !DISubprogram(name: "ziplistMerge", scope: !1, file: !1, line: 856, type: !1201, isLocal: false, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1204)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!55, !1203, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1205 = !DILocalVariable(name: "first", arg: 1, scope: !1200, file: !1, line: 856, type: !1203)
!1206 = !DILocalVariable(name: "second", arg: 2, scope: !1200, file: !1, line: 856, type: !1203)
!1207 = !DILocalVariable(name: "first_bytes", scope: !1200, file: !1, line: 865, type: !608)
!1208 = !DILocalVariable(name: "first_len", scope: !1200, file: !1, line: 866, type: !608)
!1209 = !DILocalVariable(name: "second_bytes", scope: !1200, file: !1, line: 868, type: !608)
!1210 = !DILocalVariable(name: "second_len", scope: !1200, file: !1, line: 869, type: !608)
!1211 = !DILocalVariable(name: "append", scope: !1200, file: !1, line: 871, type: !137)
!1212 = !DILocalVariable(name: "source", scope: !1200, file: !1, line: 872, type: !55)
!1213 = !DILocalVariable(name: "target", scope: !1200, file: !1, line: 872, type: !55)
!1214 = !DILocalVariable(name: "target_bytes", scope: !1200, file: !1, line: 873, type: !608)
!1215 = !DILocalVariable(name: "source_bytes", scope: !1200, file: !1, line: 873, type: !608)
!1216 = !DILocalVariable(name: "zlbytes", scope: !1200, file: !1, line: 894, type: !608)
!1217 = !DILocalVariable(name: "zllength", scope: !1200, file: !1, line: 896, type: !608)
!1218 = !DILocalVariable(name: "first_offset", scope: !1200, file: !1, line: 902, type: !608)
!1219 = !DILocalVariable(name: "second_offset", scope: !1200, file: !1, line: 903, type: !608)
!1220 = !DILocation(line: 856, column: 45, scope: !1200)
!1221 = !DILocation(line: 856, column: 68, scope: !1200)
!1222 = !DILocation(line: 858, column: 15, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 858, column: 9)
!1224 = !DILocation(line: 858, column: 23, scope: !1223)
!1225 = !DILocation(line: 858, column: 26, scope: !1223)
!1226 = !{!502, !502, i64 0}
!1227 = !DILocation(line: 858, column: 33, scope: !1223)
!1228 = !DILocation(line: 858, column: 51, scope: !1223)
!1229 = !DILocation(line: 858, column: 41, scope: !1223)
!1230 = !DILocation(line: 858, column: 62, scope: !1223)
!1231 = !DILocation(line: 858, column: 70, scope: !1223)
!1232 = !DILocation(line: 858, column: 9, scope: !1200)
!1233 = !DILocation(line: 862, column: 16, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 862, column: 9)
!1235 = !DILocation(line: 862, column: 9, scope: !1200)
!1236 = !DILocation(line: 865, column: 26, scope: !1200)
!1237 = !DILocation(line: 865, column: 12, scope: !1200)
!1238 = !DILocation(line: 866, column: 24, scope: !1200)
!1239 = !DILocation(line: 866, column: 12, scope: !1200)
!1240 = !DILocation(line: 868, column: 27, scope: !1200)
!1241 = !DILocation(line: 868, column: 12, scope: !1200)
!1242 = !DILocation(line: 869, column: 25, scope: !1200)
!1243 = !DILocation(line: 869, column: 12, scope: !1200)
!1244 = !DILocation(line: 877, column: 19, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 877, column: 9)
!1246 = !DILocation(line: 877, column: 9, scope: !1200)
!1247 = !DILocation(line: 872, column: 20, scope: !1200)
!1248 = !DILocation(line: 873, column: 26, scope: !1200)
!1249 = !DILocation(line: 873, column: 12, scope: !1200)
!1250 = !DILocation(line: 872, column: 29, scope: !1200)
!1251 = !DILocation(line: 894, column: 34, scope: !1200)
!1252 = !DILocation(line: 895, column: 42, scope: !1200)
!1253 = !DILocation(line: 894, column: 12, scope: !1200)
!1254 = !DILocation(line: 896, column: 33, scope: !1200)
!1255 = !DILocation(line: 896, column: 12, scope: !1200)
!1256 = !DILocation(line: 899, column: 25, scope: !1200)
!1257 = !DILocation(line: 899, column: 16, scope: !1200)
!1258 = !DILocation(line: 902, column: 27, scope: !1200)
!1259 = !DILocation(line: 902, column: 12, scope: !1200)
!1260 = !DILocation(line: 903, column: 28, scope: !1200)
!1261 = !DILocation(line: 906, column: 14, scope: !1200)
!1262 = !DILocation(line: 907, column: 9, scope: !1200)
!1263 = !DILocation(line: 911, column: 23, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 907, column: 17)
!1265 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 907, column: 9)
!1266 = !DILocation(line: 911, column: 38, scope: !1264)
!1267 = !DILocation(line: 912, column: 23, scope: !1264)
!1268 = !DILocation(line: 913, column: 29, scope: !1264)
!1269 = !DILocation(line: 911, column: 9, scope: !1264)
!1270 = !DILocation(line: 914, column: 5, scope: !1264)
!1271 = !DILocation(line: 919, column: 24, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 914, column: 12)
!1273 = !DILocation(line: 919, column: 39, scope: !1272)
!1274 = !DILocation(line: 920, column: 24, scope: !1272)
!1275 = !DILocation(line: 921, column: 30, scope: !1272)
!1276 = !DILocation(line: 919, column: 9, scope: !1272)
!1277 = !DILocation(line: 922, column: 45, scope: !1272)
!1278 = !DILocation(line: 922, column: 9, scope: !1272)
!1279 = !DILocation(line: 926, column: 29, scope: !1200)
!1280 = !DILocation(line: 926, column: 5, scope: !1200)
!1281 = !DILocation(line: 926, column: 27, scope: !1200)
!1282 = !DILocation(line: 927, column: 30, scope: !1200)
!1283 = !DILocation(line: 927, column: 5, scope: !1200)
!1284 = !DILocation(line: 927, column: 28, scope: !1200)
!1285 = !DILocation(line: 933, column: 35, scope: !1200)
!1286 = !DILocation(line: 933, column: 5, scope: !1200)
!1287 = !DILocation(line: 933, column: 33, scope: !1200)
!1288 = !DILocation(line: 941, column: 51, scope: !1200)
!1289 = !DILocation(line: 941, column: 14, scope: !1200)
!1290 = !DILocation(line: 944, column: 9, scope: !1200)
!1291 = !DILocation(line: 945, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 944, column: 17)
!1293 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 944, column: 9)
!1294 = !DILocation(line: 945, column: 9, scope: !1292)
!1295 = !DILocation(line: 948, column: 5, scope: !1292)
!1296 = !DILocation(line: 949, column: 15, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 948, column: 12)
!1298 = !DILocation(line: 949, column: 9, scope: !1297)
!1299 = !DILocation(line: 0, scope: !1292)
!1300 = !DILocation(line: 0, scope: !1200)
!1301 = !DILocation(line: 954, column: 1, scope: !1200)
!1302 = distinct !DISubprogram(name: "ziplistPush", scope: !1, file: !1, line: 956, type: !1303, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!55, !55, !55, !20, !137}
!1305 = !{!1306, !1307, !1308, !1309, !1310}
!1306 = !DILocalVariable(name: "zl", arg: 1, scope: !1302, file: !1, line: 956, type: !55)
!1307 = !DILocalVariable(name: "s", arg: 2, scope: !1302, file: !1, line: 956, type: !55)
!1308 = !DILocalVariable(name: "slen", arg: 3, scope: !1302, file: !1, line: 956, type: !20)
!1309 = !DILocalVariable(name: "where", arg: 4, scope: !1302, file: !1, line: 956, type: !137)
!1310 = !DILocalVariable(name: "p", scope: !1302, file: !1, line: 957, type: !55)
!1311 = !DILocation(line: 956, column: 43, scope: !1302)
!1312 = !DILocation(line: 956, column: 62, scope: !1302)
!1313 = !DILocation(line: 956, column: 78, scope: !1302)
!1314 = !DILocation(line: 956, column: 88, scope: !1302)
!1315 = !DILocation(line: 958, column: 16, scope: !1302)
!1316 = !DILocation(line: 958, column: 9, scope: !1302)
!1317 = !DILocation(line: 958, column: 35, scope: !1302)
!1318 = !DILocation(line: 958, column: 60, scope: !1302)
!1319 = !DILocation(line: 957, column: 20, scope: !1302)
!1320 = !DILocation(line: 959, column: 12, scope: !1302)
!1321 = !DILocation(line: 959, column: 5, scope: !1302)
!1322 = distinct !DISubprogram(name: "ziplistIndex", scope: !1, file: !1, line: 965, type: !1323, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!55, !55, !137}
!1325 = !{!1326, !1327, !1328, !1329, !1330}
!1326 = !DILocalVariable(name: "zl", arg: 1, scope: !1322, file: !1, line: 965, type: !55)
!1327 = !DILocalVariable(name: "index", arg: 2, scope: !1322, file: !1, line: 965, type: !137)
!1328 = !DILocalVariable(name: "p", scope: !1322, file: !1, line: 966, type: !55)
!1329 = !DILocalVariable(name: "prevlensize", scope: !1322, file: !1, line: 967, type: !20)
!1330 = !DILocalVariable(name: "prevlen", scope: !1322, file: !1, line: 967, type: !20)
!1331 = !DILocation(line: 965, column: 44, scope: !1322)
!1332 = !DILocation(line: 965, column: 52, scope: !1322)
!1333 = !DILocation(line: 967, column: 5, scope: !1322)
!1334 = !DILocation(line: 967, column: 31, scope: !1322)
!1335 = !DILocation(line: 968, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 968, column: 9)
!1337 = !DILocation(line: 968, column: 9, scope: !1322)
!1338 = !DILocation(line: 969, column: 25, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 968, column: 20)
!1340 = !DILocation(line: 970, column: 13, scope: !1339)
!1341 = !DILocation(line: 966, column: 20, scope: !1322)
!1342 = !DILocation(line: 971, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 971, column: 13)
!1344 = !DILocation(line: 971, column: 18, scope: !1343)
!1345 = !DILocation(line: 971, column: 13, scope: !1339)
!1346 = !DILocation(line: 972, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 972, column: 13)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 972, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 972, column: 13)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 971, column: 30)
!1351 = !DILocation(line: 972, column: 13, scope: !1348)
!1352 = !DILocation(line: 972, column: 13, scope: !1349)
!1353 = !DILocation(line: 972, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 972, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 972, column: 13)
!1356 = !DILocation(line: 972, column: 13, scope: !1355)
!1357 = !DILocation(line: 972, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 972, column: 13)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 972, column: 13)
!1360 = !DILocation(line: 973, column: 20, scope: !1350)
!1361 = !DILocation(line: 973, column: 13, scope: !1350)
!1362 = !DILocation(line: 973, column: 28, scope: !1350)
!1363 = !DILocation(line: 973, column: 32, scope: !1350)
!1364 = !DILocation(line: 973, column: 40, scope: !1350)
!1365 = !DILocation(line: 974, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 973, column: 44)
!1367 = !DILocation(line: 975, column: 17, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 975, column: 17)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 975, column: 17)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 975, column: 17)
!1371 = !DILocation(line: 975, column: 17, scope: !1369)
!1372 = !DILocation(line: 975, column: 17, scope: !1370)
!1373 = !DILocation(line: 975, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 975, column: 17)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 975, column: 17)
!1376 = !DILocation(line: 967, column: 18, scope: !1322)
!1377 = !DILocation(line: 975, column: 17, scope: !1375)
!1378 = !DILocation(line: 975, column: 17, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 975, column: 17)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 975, column: 17)
!1381 = distinct !{!1381, !1361, !1382}
!1382 = !DILocation(line: 976, column: 13, scope: !1350)
!1383 = !DILocation(line: 979, column: 13, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 978, column: 12)
!1385 = !DILocation(line: 980, column: 9, scope: !1384)
!1386 = !DILocation(line: 980, column: 16, scope: !1384)
!1387 = !DILocation(line: 980, column: 21, scope: !1384)
!1388 = !DILocation(line: 980, column: 32, scope: !1384)
!1389 = !DILocation(line: 980, column: 40, scope: !1384)
!1390 = !DILocation(line: 981, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 980, column: 44)
!1392 = !DILocation(line: 981, column: 15, scope: !1391)
!1393 = distinct !{!1393, !1385, !1394}
!1394 = !DILocation(line: 982, column: 9, scope: !1384)
!1395 = !DILocation(line: 0, scope: !1384)
!1396 = !DILocation(line: 984, column: 13, scope: !1322)
!1397 = !DILocation(line: 984, column: 18, scope: !1322)
!1398 = !DILocation(line: 984, column: 38, scope: !1322)
!1399 = !DILocation(line: 984, column: 29, scope: !1322)
!1400 = !DILocation(line: 985, column: 1, scope: !1322)
!1401 = !DILocation(line: 984, column: 5, scope: !1322)
!1402 = distinct !DISubprogram(name: "ziplistNext", scope: !1, file: !1, line: 993, type: !602, isLocal: false, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1403)
!1403 = !{!1404, !1405}
!1404 = !DILocalVariable(name: "zl", arg: 1, scope: !1402, file: !1, line: 993, type: !55)
!1405 = !DILocalVariable(name: "p", arg: 2, scope: !1402, file: !1, line: 993, type: !55)
!1406 = !DILocation(line: 993, column: 43, scope: !1402)
!1407 = !DILocation(line: 993, column: 62, scope: !1402)
!1408 = !DILocation(line: 999, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 999, column: 9)
!1410 = !DILocation(line: 999, column: 14, scope: !1409)
!1411 = !DILocation(line: 999, column: 9, scope: !1402)
!1412 = !DILocation(line: 1000, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 999, column: 26)
!1414 = !DILocation(line: 1003, column: 10, scope: !1402)
!1415 = !DILocation(line: 1003, column: 7, scope: !1402)
!1416 = !DILocation(line: 1004, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 1004, column: 9)
!1418 = !DILocation(line: 1004, column: 14, scope: !1417)
!1419 = !DILocation(line: 1004, column: 9, scope: !1402)
!1420 = !DILocation(line: 0, scope: !1402)
!1421 = !DILocation(line: 1005, column: 9, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 1004, column: 26)
!1423 = !DILocation(line: 1009, column: 1, scope: !1402)
!1424 = distinct !DISubprogram(name: "ziplistPrev", scope: !1, file: !1, line: 1012, type: !602, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1425)
!1425 = !{!1426, !1427, !1428, !1429}
!1426 = !DILocalVariable(name: "zl", arg: 1, scope: !1424, file: !1, line: 1012, type: !55)
!1427 = !DILocalVariable(name: "p", arg: 2, scope: !1424, file: !1, line: 1012, type: !55)
!1428 = !DILocalVariable(name: "prevlensize", scope: !1424, file: !1, line: 1013, type: !20)
!1429 = !DILocalVariable(name: "prevlen", scope: !1424, file: !1, line: 1013, type: !20)
!1430 = !DILocation(line: 1012, column: 43, scope: !1424)
!1431 = !DILocation(line: 1012, column: 62, scope: !1424)
!1432 = !DILocation(line: 1013, column: 5, scope: !1424)
!1433 = !DILocation(line: 1013, column: 31, scope: !1424)
!1434 = !DILocation(line: 1018, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 1018, column: 9)
!1436 = !DILocation(line: 1018, column: 14, scope: !1435)
!1437 = !DILocation(line: 1018, column: 9, scope: !1424)
!1438 = !DILocation(line: 1019, column: 13, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 1018, column: 26)
!1440 = !DILocation(line: 1020, column: 17, scope: !1439)
!1441 = !DILocation(line: 1020, column: 22, scope: !1439)
!1442 = !DILocation(line: 1020, column: 16, scope: !1439)
!1443 = !DILocation(line: 1020, column: 9, scope: !1439)
!1444 = !DILocation(line: 1021, column: 21, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 1021, column: 16)
!1446 = !DILocation(line: 1021, column: 18, scope: !1445)
!1447 = !DILocation(line: 1021, column: 16, scope: !1435)
!1448 = !DILocation(line: 1024, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 1024, column: 9)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 1024, column: 9)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !1, line: 1024, column: 9)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 1023, column: 12)
!1453 = !DILocation(line: 1024, column: 9, scope: !1450)
!1454 = !DILocation(line: 1024, column: 9, scope: !1451)
!1455 = !DILocation(line: 1024, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1024, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 1024, column: 9)
!1458 = !DILocation(line: 1013, column: 18, scope: !1424)
!1459 = !DILocation(line: 1024, column: 9, scope: !1457)
!1460 = !DILocation(line: 1024, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 1024, column: 9)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1024, column: 9)
!1463 = !DILocation(line: 1025, column: 9, scope: !1452)
!1464 = !DILocation(line: 1026, column: 17, scope: !1452)
!1465 = !DILocation(line: 1026, column: 9, scope: !1452)
!1466 = !DILocation(line: 0, scope: !1452)
!1467 = !DILocation(line: 0, scope: !1439)
!1468 = !DILocation(line: 1028, column: 1, scope: !1424)
!1469 = distinct !DISubprogram(name: "ziplistGet", scope: !1, file: !1, line: 1034, type: !1470, isLocal: false, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1473)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!20, !55, !1203, !1472, !282}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DILocalVariable(name: "p", arg: 1, scope: !1469, file: !1, line: 1034, type: !55)
!1475 = !DILocalVariable(name: "sstr", arg: 2, scope: !1469, file: !1, line: 1034, type: !1203)
!1476 = !DILocalVariable(name: "slen", arg: 3, scope: !1469, file: !1, line: 1034, type: !1472)
!1477 = !DILocalVariable(name: "sval", arg: 4, scope: !1469, file: !1, line: 1034, type: !282)
!1478 = !DILocalVariable(name: "entry", scope: !1469, file: !1, line: 1035, type: !478)
!1479 = !DILocation(line: 1034, column: 40, scope: !1469)
!1480 = !DILocation(line: 1034, column: 59, scope: !1469)
!1481 = !DILocation(line: 1034, column: 79, scope: !1469)
!1482 = !DILocation(line: 1034, column: 96, scope: !1469)
!1483 = !DILocation(line: 1035, column: 5, scope: !1469)
!1484 = !DILocation(line: 1036, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 1036, column: 9)
!1486 = !DILocation(line: 1036, column: 19, scope: !1485)
!1487 = !DILocation(line: 1036, column: 22, scope: !1485)
!1488 = !DILocation(line: 1036, column: 27, scope: !1485)
!1489 = !DILocation(line: 1036, column: 9, scope: !1469)
!1490 = !DILocation(line: 1037, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 1037, column: 9)
!1492 = !DILocation(line: 1037, column: 9, scope: !1469)
!1493 = !DILocation(line: 1037, column: 21, scope: !1491)
!1494 = !DILocation(line: 1037, column: 15, scope: !1491)
!1495 = !DILocation(line: 1035, column: 13, scope: !1469)
!1496 = !DILocation(line: 1039, column: 5, scope: !1469)
!1497 = !DILocation(line: 1040, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 1040, column: 9)
!1499 = !DILocation(line: 1040, column: 9, scope: !1469)
!1500 = !DILocation(line: 1041, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 1040, column: 37)
!1502 = !DILocation(line: 1042, column: 27, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 1041, column: 19)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 1041, column: 13)
!1505 = !DILocation(line: 1042, column: 19, scope: !1503)
!1506 = !DILocation(line: 1043, column: 29, scope: !1503)
!1507 = !DILocation(line: 1043, column: 22, scope: !1503)
!1508 = !DILocation(line: 1043, column: 19, scope: !1503)
!1509 = !DILocation(line: 1044, column: 9, scope: !1503)
!1510 = !DILocation(line: 1046, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 1046, column: 13)
!1512 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 1045, column: 12)
!1513 = !DILocation(line: 1046, column: 13, scope: !1512)
!1514 = !DILocation(line: 1047, column: 44, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 1046, column: 19)
!1516 = !DILocation(line: 1047, column: 37, scope: !1515)
!1517 = !DILocation(line: 1047, column: 21, scope: !1515)
!1518 = !DILocation(line: 1047, column: 19, scope: !1515)
!1519 = !DILocation(line: 1048, column: 9, scope: !1515)
!1520 = !DILocation(line: 0, scope: !1469)
!1521 = !DILocation(line: 0, scope: !1485)
!1522 = !DILocation(line: 1051, column: 1, scope: !1469)
!1523 = distinct !DISubprogram(name: "ziplistInsert", scope: !1, file: !1, line: 1054, type: !908, isLocal: false, isDefinition: true, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DILocalVariable(name: "zl", arg: 1, scope: !1523, file: !1, line: 1054, type: !55)
!1526 = !DILocalVariable(name: "p", arg: 2, scope: !1523, file: !1, line: 1054, type: !55)
!1527 = !DILocalVariable(name: "s", arg: 3, scope: !1523, file: !1, line: 1054, type: !55)
!1528 = !DILocalVariable(name: "slen", arg: 4, scope: !1523, file: !1, line: 1054, type: !20)
!1529 = !DILocation(line: 1054, column: 45, scope: !1523)
!1530 = !DILocation(line: 1054, column: 64, scope: !1523)
!1531 = !DILocation(line: 1054, column: 82, scope: !1523)
!1532 = !DILocation(line: 1054, column: 98, scope: !1523)
!1533 = !DILocation(line: 1055, column: 12, scope: !1523)
!1534 = !DILocation(line: 1055, column: 5, scope: !1523)
!1535 = distinct !DISubprogram(name: "ziplistDelete", scope: !1, file: !1, line: 1061, type: !1536, isLocal: false, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!55, !55, !1203}
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "zl", arg: 1, scope: !1535, file: !1, line: 1061, type: !55)
!1540 = !DILocalVariable(name: "p", arg: 2, scope: !1535, file: !1, line: 1061, type: !1203)
!1541 = !DILocalVariable(name: "offset", scope: !1535, file: !1, line: 1062, type: !608)
!1542 = !DILocation(line: 1061, column: 45, scope: !1535)
!1543 = !DILocation(line: 1061, column: 65, scope: !1535)
!1544 = !DILocation(line: 1062, column: 21, scope: !1535)
!1545 = !DILocation(line: 1062, column: 23, scope: !1535)
!1546 = !DILocation(line: 1062, column: 12, scope: !1535)
!1547 = !DILocation(line: 1063, column: 10, scope: !1535)
!1548 = !DILocation(line: 1069, column: 12, scope: !1535)
!1549 = !DILocation(line: 1069, column: 8, scope: !1535)
!1550 = !DILocation(line: 1070, column: 5, scope: !1535)
!1551 = distinct !DISubprogram(name: "ziplistDeleteRange", scope: !1, file: !1, line: 1074, type: !1552, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!55, !55, !137, !20}
!1554 = !{!1555, !1556, !1557, !1558}
!1555 = !DILocalVariable(name: "zl", arg: 1, scope: !1551, file: !1, line: 1074, type: !55)
!1556 = !DILocalVariable(name: "index", arg: 2, scope: !1551, file: !1, line: 1074, type: !137)
!1557 = !DILocalVariable(name: "num", arg: 3, scope: !1551, file: !1, line: 1074, type: !20)
!1558 = !DILocalVariable(name: "p", scope: !1551, file: !1, line: 1075, type: !55)
!1559 = !DILocation(line: 1074, column: 50, scope: !1551)
!1560 = !DILocation(line: 1074, column: 58, scope: !1551)
!1561 = !DILocation(line: 1074, column: 78, scope: !1551)
!1562 = !DILocation(line: 1075, column: 24, scope: !1551)
!1563 = !DILocation(line: 1075, column: 20, scope: !1551)
!1564 = !DILocation(line: 1076, column: 15, scope: !1551)
!1565 = !DILocation(line: 1076, column: 12, scope: !1551)
!1566 = !DILocation(line: 1076, column: 31, scope: !1551)
!1567 = !DILocation(line: 1076, column: 5, scope: !1551)
!1568 = distinct !DISubprogram(name: "ziplistCompare", scope: !1, file: !1, line: 1081, type: !1569, isLocal: false, isDefinition: true, scopeLine: 1081, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!20, !55, !55, !20}
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1572 = !DILocalVariable(name: "p", arg: 1, scope: !1568, file: !1, line: 1081, type: !55)
!1573 = !DILocalVariable(name: "sstr", arg: 2, scope: !1568, file: !1, line: 1081, type: !55)
!1574 = !DILocalVariable(name: "slen", arg: 3, scope: !1568, file: !1, line: 1081, type: !20)
!1575 = !DILocalVariable(name: "entry", scope: !1568, file: !1, line: 1082, type: !478)
!1576 = !DILocalVariable(name: "sencoding", scope: !1568, file: !1, line: 1083, type: !16)
!1577 = !DILocalVariable(name: "zval", scope: !1568, file: !1, line: 1084, type: !26)
!1578 = !DILocalVariable(name: "sval", scope: !1568, file: !1, line: 1084, type: !26)
!1579 = !DILocation(line: 1081, column: 44, scope: !1568)
!1580 = !DILocation(line: 1081, column: 62, scope: !1568)
!1581 = !DILocation(line: 1081, column: 81, scope: !1568)
!1582 = !DILocation(line: 1082, column: 5, scope: !1568)
!1583 = !DILocation(line: 1085, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1085, column: 9)
!1585 = !DILocation(line: 1085, column: 14, scope: !1584)
!1586 = !DILocation(line: 1085, column: 9, scope: !1568)
!1587 = !DILocation(line: 1082, column: 13, scope: !1568)
!1588 = !DILocation(line: 1087, column: 5, scope: !1568)
!1589 = !DILocation(line: 1088, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1088, column: 9)
!1591 = !DILocation(line: 1088, column: 9, scope: !1568)
!1592 = !DILocation(line: 1090, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 1090, column: 13)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 1088, column: 37)
!1595 = !DILocation(line: 1090, column: 23, scope: !1593)
!1596 = !DILocation(line: 1090, column: 13, scope: !1594)
!1597 = !DILocation(line: 1091, column: 35, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 1090, column: 32)
!1599 = !DILocation(line: 1091, column: 28, scope: !1598)
!1600 = !DILocation(line: 1091, column: 51, scope: !1598)
!1601 = !DILocation(line: 1091, column: 20, scope: !1598)
!1602 = !DILocation(line: 1091, column: 57, scope: !1598)
!1603 = !DILocation(line: 1091, column: 13, scope: !1598)
!1604 = !DILocation(line: 480, column: 35, scope: !279, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 1098, column: 13, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 1098, column: 13)
!1607 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 1095, column: 12)
!1608 = !DILocation(line: 480, column: 55, scope: !279, inlinedAt: !1605)
!1609 = !DILocation(line: 481, column: 5, scope: !279, inlinedAt: !1605)
!1610 = !DILocation(line: 483, column: 24, scope: !295, inlinedAt: !1605)
!1611 = !DILocation(line: 484, column: 32, scope: !297, inlinedAt: !1605)
!1612 = !DILocation(line: 481, column: 15, scope: !279, inlinedAt: !1605)
!1613 = !DILocation(line: 484, column: 9, scope: !297, inlinedAt: !1605)
!1614 = !DILocation(line: 484, column: 9, scope: !279, inlinedAt: !1605)
!1615 = !DILocation(line: 487, column: 13, scope: !302, inlinedAt: !1605)
!1616 = !DILocation(line: 487, column: 24, scope: !302, inlinedAt: !1605)
!1617 = !DILocation(line: 489, column: 38, scope: !311, inlinedAt: !1605)
!1618 = !DILocation(line: 491, column: 39, scope: !313, inlinedAt: !1605)
!1619 = !DILocation(line: 493, column: 39, scope: !315, inlinedAt: !1605)
!1620 = !DILocation(line: 0, scope: !1606)
!1621 = !DILocation(line: 501, column: 9, scope: !303, inlinedAt: !1605)
!1622 = !DILocation(line: 504, column: 1, scope: !279, inlinedAt: !1605)
!1623 = !DILocation(line: 1098, column: 13, scope: !1607)
!1624 = !DILocation(line: 1099, column: 41, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 1098, column: 57)
!1626 = !DILocation(line: 1099, column: 34, scope: !1625)
!1627 = !DILocation(line: 1099, column: 58, scope: !1625)
!1628 = !DILocation(line: 1099, column: 18, scope: !1625)
!1629 = !DILocation(line: 1084, column: 15, scope: !1568)
!1630 = !DILocation(line: 1084, column: 21, scope: !1568)
!1631 = !DILocation(line: 1100, column: 23, scope: !1625)
!1632 = !DILocation(line: 1100, column: 11, scope: !1625)
!1633 = !DILocation(line: 1103, column: 5, scope: !1568)
!1634 = !DILocation(line: 0, scope: !1584)
!1635 = !DILocation(line: 0, scope: !1568)
!1636 = !DILocation(line: 1104, column: 1, scope: !1568)
!1637 = distinct !DISubprogram(name: "ziplistFind", scope: !1, file: !1, line: 1108, type: !1638, isLocal: false, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!55, !55, !55, !20, !20}
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1650, !1651, !1652, !1653, !1654}
!1641 = !DILocalVariable(name: "p", arg: 1, scope: !1637, file: !1, line: 1108, type: !55)
!1642 = !DILocalVariable(name: "vstr", arg: 2, scope: !1637, file: !1, line: 1108, type: !55)
!1643 = !DILocalVariable(name: "vlen", arg: 3, scope: !1637, file: !1, line: 1108, type: !20)
!1644 = !DILocalVariable(name: "skip", arg: 4, scope: !1637, file: !1, line: 1108, type: !20)
!1645 = !DILocalVariable(name: "skipcnt", scope: !1637, file: !1, line: 1109, type: !137)
!1646 = !DILocalVariable(name: "vencoding", scope: !1637, file: !1, line: 1110, type: !16)
!1647 = !DILocalVariable(name: "vll", scope: !1637, file: !1, line: 1111, type: !26)
!1648 = !DILocalVariable(name: "prevlensize", scope: !1649, file: !1, line: 1114, type: !20)
!1649 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 1113, column: 29)
!1650 = !DILocalVariable(name: "encoding", scope: !1649, file: !1, line: 1114, type: !20)
!1651 = !DILocalVariable(name: "lensize", scope: !1649, file: !1, line: 1114, type: !20)
!1652 = !DILocalVariable(name: "len", scope: !1649, file: !1, line: 1114, type: !20)
!1653 = !DILocalVariable(name: "q", scope: !1649, file: !1, line: 1115, type: !55)
!1654 = !DILocalVariable(name: "ll", scope: !1655, file: !1, line: 1146, type: !26)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 1145, column: 45)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 1145, column: 21)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 1127, column: 20)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 1123, column: 17)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 1121, column: 27)
!1660 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1121, column: 13)
!1661 = !DILocation(line: 1108, column: 43, scope: !1637)
!1662 = !DILocation(line: 1108, column: 61, scope: !1637)
!1663 = !DILocation(line: 1108, column: 80, scope: !1637)
!1664 = !DILocation(line: 1108, column: 99, scope: !1637)
!1665 = !DILocation(line: 1109, column: 9, scope: !1637)
!1666 = !DILocation(line: 1110, column: 19, scope: !1637)
!1667 = !DILocation(line: 1111, column: 15, scope: !1637)
!1668 = !DILocation(line: 1113, column: 5, scope: !1637)
!1669 = !DILocation(line: 1113, column: 12, scope: !1637)
!1670 = !DILocation(line: 1113, column: 17, scope: !1637)
!1671 = !DILocation(line: 1117, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 1117, column: 9)
!1673 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1117, column: 9)
!1674 = !DILocation(line: 1117, column: 9, scope: !1673)
!1675 = !DILocation(line: 1118, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 1118, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1118, column: 9)
!1678 = !DILocation(line: 1114, column: 35, scope: !1649)
!1679 = !DILocation(line: 1118, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 1118, column: 9)
!1681 = !DILocation(line: 1118, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 1118, column: 9)
!1683 = !DILocation(line: 1118, column: 9, scope: !1677)
!1684 = !DILocation(line: 1118, column: 9, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 1118, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1118, column: 9)
!1687 = !DILocation(line: 1118, column: 9, scope: !1686)
!1688 = !DILocation(line: 1114, column: 45, scope: !1649)
!1689 = !DILocation(line: 1118, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 1118, column: 9)
!1691 = !DILocation(line: 1114, column: 54, scope: !1649)
!1692 = !DILocation(line: 1118, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 1118, column: 9)
!1694 = !DILocation(line: 1118, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 1118, column: 9)
!1696 = !DILocation(line: 1118, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 1118, column: 9)
!1698 = !DILocation(line: 1118, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 1118, column: 9)
!1700 = !DILocation(line: 1118, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 1118, column: 9)
!1702 = !DILocation(line: 1118, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1118, column: 9)
!1704 = !DILocation(line: 306, column: 39, scope: !31, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 1118, column: 9, scope: !1703)
!1706 = !DILocation(line: 307, column: 5, scope: !31, inlinedAt: !1705)
!1707 = !DILocation(line: 309, column: 23, scope: !40, inlinedAt: !1705)
!1708 = !DILocation(line: 310, column: 23, scope: !40, inlinedAt: !1705)
!1709 = !DILocation(line: 311, column: 23, scope: !40, inlinedAt: !1705)
!1710 = !DILocation(line: 312, column: 23, scope: !40, inlinedAt: !1705)
!1711 = !DILocation(line: 314, column: 18, scope: !45, inlinedAt: !1705)
!1712 = !DILocation(line: 314, column: 37, scope: !45, inlinedAt: !1705)
!1713 = !DILocation(line: 314, column: 49, scope: !45, inlinedAt: !1705)
!1714 = !DILocation(line: 314, column: 9, scope: !31, inlinedAt: !1705)
!1715 = !DILocation(line: 316, column: 5, scope: !31, inlinedAt: !1705)
!1716 = !DILocation(line: 0, scope: !40, inlinedAt: !1705)
!1717 = !DILocation(line: 0, scope: !1703)
!1718 = !DILocation(line: 318, column: 1, scope: !31, inlinedAt: !1705)
!1719 = !DILocation(line: 1119, column: 29, scope: !1649)
!1720 = !DILocation(line: 1115, column: 24, scope: !1649)
!1721 = !DILocation(line: 1121, column: 21, scope: !1660)
!1722 = !DILocation(line: 1121, column: 13, scope: !1649)
!1723 = !DILocation(line: 1123, column: 17, scope: !1659)
!1724 = !DILocation(line: 1124, column: 25, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 1124, column: 21)
!1726 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 1123, column: 39)
!1727 = !DILocation(line: 1124, column: 33, scope: !1725)
!1728 = !DILocation(line: 1124, column: 36, scope: !1725)
!1729 = !DILocation(line: 1124, column: 58, scope: !1725)
!1730 = !DILocation(line: 1124, column: 21, scope: !1726)
!1731 = !DILocation(line: 1125, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 1124, column: 64)
!1733 = !DILocation(line: 1131, column: 31, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 1131, column: 21)
!1735 = !DILocation(line: 1131, column: 21, scope: !1657)
!1736 = !DILocation(line: 480, column: 35, scope: !279, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 1132, column: 26, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 1132, column: 25)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 1131, column: 37)
!1740 = !DILocation(line: 480, column: 55, scope: !279, inlinedAt: !1737)
!1741 = !DILocation(line: 481, column: 5, scope: !279, inlinedAt: !1737)
!1742 = !DILocation(line: 483, column: 24, scope: !295, inlinedAt: !1737)
!1743 = !DILocation(line: 481, column: 15, scope: !279, inlinedAt: !1737)
!1744 = !DILocation(line: 484, column: 9, scope: !297, inlinedAt: !1737)
!1745 = !DILocation(line: 484, column: 9, scope: !279, inlinedAt: !1737)
!1746 = !DILocation(line: 487, column: 13, scope: !302, inlinedAt: !1737)
!1747 = !DILocation(line: 487, column: 24, scope: !302, inlinedAt: !1737)
!1748 = !DILocation(line: 488, column: 25, scope: !308, inlinedAt: !1737)
!1749 = !DILocation(line: 489, column: 9, scope: !308, inlinedAt: !1737)
!1750 = !DILocation(line: 489, column: 38, scope: !311, inlinedAt: !1737)
!1751 = !DILocation(line: 491, column: 9, scope: !981, inlinedAt: !1737)
!1752 = !DILocation(line: 491, column: 39, scope: !313, inlinedAt: !1737)
!1753 = !DILocation(line: 493, column: 9, scope: !991, inlinedAt: !1737)
!1754 = !DILocation(line: 493, column: 39, scope: !315, inlinedAt: !1737)
!1755 = !DILocation(line: 495, column: 9, scope: !994, inlinedAt: !1737)
!1756 = !DILocation(line: 495, column: 39, scope: !317, inlinedAt: !1737)
!1757 = !DILocation(line: 497, column: 9, scope: !319, inlinedAt: !1737)
!1758 = !DILocation(line: 0, scope: !1738)
!1759 = !DILocation(line: 501, column: 9, scope: !303, inlinedAt: !1737)
!1760 = !DILocation(line: 504, column: 1, scope: !279, inlinedAt: !1737)
!1761 = !DILocation(line: 1132, column: 25, scope: !1739)
!1762 = !DILocation(line: 1137, column: 21, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 1132, column: 72)
!1764 = !DILocation(line: 0, scope: !1637)
!1765 = !DILocation(line: 0, scope: !1739)
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !DILocation(line: 1139, column: 21, scope: !1739)
!1768 = !DILocation(line: 1145, column: 31, scope: !1656)
!1769 = !DILocation(line: 1145, column: 21, scope: !1657)
!1770 = !DILocation(line: 1146, column: 54, scope: !1655)
!1771 = !DILocation(line: 1146, column: 36, scope: !1655)
!1772 = !DILocation(line: 1146, column: 31, scope: !1655)
!1773 = !DILocation(line: 1147, column: 28, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 1147, column: 25)
!1775 = !DILocation(line: 1147, column: 25, scope: !1655)
!1776 = !DILocation(line: 0, scope: !1656)
!1777 = !DILocation(line: 1157, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 1155, column: 16)
!1779 = !DILocation(line: 0, scope: !1778)
!1780 = !DILocation(line: 1161, column: 15, scope: !1649)
!1781 = !DILocation(line: 1162, column: 5, scope: !1637)
!1782 = !DILocation(line: 1165, column: 1, scope: !1637)
!1783 = distinct !DISubprogram(name: "ziplistLen", scope: !1, file: !1, line: 1168, type: !216, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "zl", arg: 1, scope: !1783, file: !1, line: 1168, type: !55)
!1786 = !DILocalVariable(name: "len", scope: !1783, file: !1, line: 1169, type: !20)
!1787 = !DILocalVariable(name: "p", scope: !1788, file: !1, line: 1173, type: !55)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 1172, column: 12)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !1, line: 1170, column: 9)
!1790 = !DILocation(line: 1168, column: 40, scope: !1783)
!1791 = !DILocation(line: 1169, column: 18, scope: !1783)
!1792 = !DILocation(line: 1170, column: 9, scope: !1789)
!1793 = !DILocation(line: 1170, column: 42, scope: !1789)
!1794 = !DILocation(line: 1170, column: 9, scope: !1783)
!1795 = !DILocation(line: 1172, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 1170, column: 56)
!1797 = !DILocation(line: 1173, column: 30, scope: !1788)
!1798 = !DILocation(line: 1173, column: 24, scope: !1788)
!1799 = !DILocation(line: 1174, column: 9, scope: !1788)
!1800 = !DILocation(line: 1174, column: 16, scope: !1788)
!1801 = !DILocation(line: 1174, column: 19, scope: !1788)
!1802 = !DILocation(line: 1180, column: 13, scope: !1788)
!1803 = !DILocation(line: 1175, column: 18, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 1174, column: 31)
!1805 = !DILocation(line: 1175, column: 15, scope: !1804)
!1806 = !DILocation(line: 1176, column: 16, scope: !1804)
!1807 = distinct !{!1807, !1799, !1808}
!1808 = !DILocation(line: 1177, column: 9, scope: !1788)
!1809 = !DILocation(line: 1180, column: 17, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 1180, column: 13)
!1811 = !DILocation(line: 1180, column: 52, scope: !1810)
!1812 = !DILocation(line: 1180, column: 50, scope: !1810)
!1813 = !DILocation(line: 1180, column: 31, scope: !1810)
!1814 = !DILocation(line: 0, scope: !1783)
!1815 = !DILocation(line: 1182, column: 5, scope: !1783)
!1816 = distinct !DISubprogram(name: "ziplistBlobLen", scope: !1, file: !1, line: 1186, type: !1817, isLocal: false, isDefinition: true, scopeLine: 1186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!608, !55}
!1819 = !{!1820}
!1820 = !DILocalVariable(name: "zl", arg: 1, scope: !1816, file: !1, line: 1186, type: !55)
!1821 = !DILocation(line: 1186, column: 38, scope: !1816)
!1822 = !DILocation(line: 1187, column: 12, scope: !1816)
!1823 = !DILocation(line: 1187, column: 5, scope: !1816)
!1824 = distinct !DISubprogram(name: "ziplistRepr", scope: !1, file: !1, line: 1190, type: !1825, isLocal: false, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !55}
!1827 = !{!1828, !1829, !1830, !1831, !1832}
!1828 = !DILocalVariable(name: "zl", arg: 1, scope: !1824, file: !1, line: 1190, type: !55)
!1829 = !DILocalVariable(name: "p", scope: !1824, file: !1, line: 1191, type: !55)
!1830 = !DILocalVariable(name: "index", scope: !1824, file: !1, line: 1192, type: !137)
!1831 = !DILocalVariable(name: "entry", scope: !1824, file: !1, line: 1193, type: !478)
!1832 = !DILocalVariable(name: "i", scope: !1833, file: !1, line: 1224, type: !20)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 1224, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1824, file: !1, line: 1203, column: 26)
!1835 = !DILocation(line: 1190, column: 33, scope: !1824)
!1836 = !DILocation(line: 1192, column: 9, scope: !1824)
!1837 = !DILocation(line: 1193, column: 5, scope: !1824)
!1838 = !DILocation(line: 1199, column: 9, scope: !1824)
!1839 = !DILocation(line: 1200, column: 9, scope: !1824)
!1840 = !DILocation(line: 1201, column: 9, scope: !1824)
!1841 = !DILocation(line: 1195, column: 5, scope: !1824)
!1842 = !DILocation(line: 1202, column: 9, scope: !1824)
!1843 = !DILocation(line: 1191, column: 20, scope: !1824)
!1844 = !DILocation(line: 1203, column: 5, scope: !1824)
!1845 = !DILocation(line: 1203, column: 11, scope: !1824)
!1846 = !DILocation(line: 1203, column: 14, scope: !1824)
!1847 = !DILocation(line: 1193, column: 13, scope: !1824)
!1848 = !DILocation(line: 1204, column: 9, scope: !1834)
!1849 = !DILocation(line: 1215, column: 13, scope: !1834)
!1850 = !DILocation(line: 1217, column: 31, scope: !1834)
!1851 = !DILocation(line: 1218, column: 19, scope: !1834)
!1852 = !DILocation(line: 1218, column: 36, scope: !1834)
!1853 = !DILocation(line: 1218, column: 29, scope: !1834)
!1854 = !DILocation(line: 1220, column: 19, scope: !1834)
!1855 = !DILocation(line: 1221, column: 19, scope: !1834)
!1856 = !DILocation(line: 1205, column: 9, scope: !1834)
!1857 = !DILocation(line: 1223, column: 9, scope: !1834)
!1858 = !DILocation(line: 1224, column: 27, scope: !1833)
!1859 = !DILocation(line: 1224, column: 14, scope: !1833)
!1860 = !DILocation(line: 1224, column: 44, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 1224, column: 9)
!1862 = !DILocation(line: 1224, column: 61, scope: !1861)
!1863 = !DILocation(line: 1224, column: 36, scope: !1861)
!1864 = !DILocation(line: 1224, column: 9, scope: !1833)
!1865 = !DILocation(line: 1227, column: 9, scope: !1834)
!1866 = !DILocation(line: 1228, column: 20, scope: !1834)
!1867 = !DILocation(line: 1228, column: 11, scope: !1834)
!1868 = !DILocation(line: 1229, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 1229, column: 13)
!1870 = !DILocation(line: 1229, column: 13, scope: !1834)
!1871 = !DILocation(line: 1225, column: 28, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 1224, column: 71)
!1873 = !DILocation(line: 1225, column: 13, scope: !1872)
!1874 = !DILocation(line: 1224, column: 67, scope: !1861)
!1875 = !DILocation(line: 1224, column: 9, scope: !1861)
!1876 = !DILocation(line: 1224, column: 54, scope: !1861)
!1877 = distinct !{!1877, !1864, !1878}
!1878 = !DILocation(line: 1226, column: 9, scope: !1833)
!1879 = !DILocation(line: 1230, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 1229, column: 41)
!1881 = !DILocation(line: 1231, column: 23, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 1231, column: 17)
!1883 = !DILocation(line: 1231, column: 27, scope: !1882)
!1884 = !DILocation(line: 1231, column: 17, scope: !1880)
!1885 = !DILocation(line: 1232, column: 35, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 1232, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 1231, column: 33)
!1888 = !{!1889, !502, i64 16}
!1889 = !{!"_reent", !144, i64 0, !502, i64 8, !502, i64 16, !502, i64 24, !144, i64 32, !85, i64 36, !144, i64 64, !502, i64 72, !144, i64 80, !502, i64 88, !502, i64 96, !144, i64 104, !502, i64 112, !502, i64 120, !144, i64 128, !502, i64 136, !85, i64 144, !502, i64 504, !1890, i64 512, !502, i64 1304, !1892, i64 1312, !85, i64 1336}
!1890 = !{!"_atexit", !502, i64 0, !144, i64 8, !85, i64 16, !1891, i64 272}
!1891 = !{!"_on_exit_args", !85, i64 0, !85, i64 256, !144, i64 512, !144, i64 516}
!1892 = !{!"_glue", !502, i64 0, !144, i64 8, !502, i64 16}
!1893 = !DILocation(line: 1232, column: 21, scope: !1886)
!1894 = !DILocation(line: 1232, column: 43, scope: !1886)
!1895 = !DILocation(line: 1232, column: 21, scope: !1887)
!1896 = !DILocation(line: 1232, column: 49, scope: !1886)
!1897 = !DILocation(line: 1233, column: 17, scope: !1887)
!1898 = !DILocation(line: 1234, column: 13, scope: !1887)
!1899 = !DILocation(line: 1235, column: 21, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 1235, column: 21)
!1901 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 1234, column: 20)
!1902 = !DILocation(line: 1235, column: 31, scope: !1900)
!1903 = !DILocation(line: 1236, column: 30, scope: !1900)
!1904 = !DILocation(line: 1236, column: 42, scope: !1900)
!1905 = !DILocation(line: 1236, column: 21, scope: !1900)
!1906 = !DILocation(line: 1236, column: 50, scope: !1900)
!1907 = !DILocation(line: 1235, column: 21, scope: !1901)
!1908 = !DILocation(line: 1236, column: 56, scope: !1900)
!1909 = !DILocation(line: 1239, column: 47, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 1238, column: 16)
!1911 = !DILocation(line: 1239, column: 13, scope: !1910)
!1912 = !DILocation(line: 1241, column: 9, scope: !1834)
!1913 = !DILocation(line: 1242, column: 20, scope: !1834)
!1914 = !DILocation(line: 1242, column: 11, scope: !1834)
!1915 = !DILocation(line: 1243, column: 14, scope: !1834)
!1916 = distinct !{!1916, !1844, !1917}
!1917 = !DILocation(line: 1244, column: 5, scope: !1824)
!1918 = !DILocation(line: 1245, column: 5, scope: !1824)
!1919 = !DILocation(line: 1246, column: 1, scope: !1824)
