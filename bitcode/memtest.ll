; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/memtest.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/memtest.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.winsize = type { i16, i16, i16, i16 }
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

@.str = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2J\00", align 1
@ws = internal global %struct.winsize zeroinitializer, align 2, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Please keep the test running several minutes per GB of memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Also check http://www.memtest86.com/ and http://pyropus.ca/software/memtester/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2K\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s [%d]\0A\00", align 1
@progress_printed = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !13
@progress_full = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !19
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\0A*** MEMORY ADDRESSING ERROR: %p contains %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/memtest.c\00", align 1
@__func__.memtest_fill_random = private unnamed_addr constant [20 x i8] c"memtest_fill_random\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"(bytes & 4095) == 0\00", align 1
@__func__.memtest_fill_value = private unnamed_addr constant [19 x i8] c"memtest_fill_value\00", align 1
@__func__.memtest_compare = private unnamed_addr constant [16 x i8] c"memtest_compare\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\0A*** MEMORY ERROR DETECTED: %p != %p (%lu vs %lu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Addressing test\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Random fill\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Solid fill\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Checkerboard fill\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Unable to allocate %zu megabytes: %s\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"\0AYour memory passed this test.\0A\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"Please if you are still in doubt use the following two tools:\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"1) memtest86: http://www.memtest86.com/\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"2) memtester: http://pyropus.ca/software/memtester/\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @memtest_progress_start(i8*, i32) local_unnamed_addr #0 !dbg !33 {
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !45
  %4 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 1), align 2, !dbg !47, !tbaa !50
  %5 = zext i16 %4 to i32, !dbg !55
  %6 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 0), align 2, !dbg !56, !tbaa !57
  %7 = zext i16 %6 to i32, !dbg !58
  %8 = add nsw i32 %7, -2, !dbg !59
  %9 = mul nsw i32 %8, %5, !dbg !60
  %10 = icmp sgt i32 %9, 0, !dbg !61
  br i1 %10, label %11, label %22, !dbg !62

; <label>:11:                                     ; preds = %2, %11
  %12 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !63
  %14 = add nuw nsw i32 %12, 1, !dbg !64
  %15 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 1), align 2, !dbg !47, !tbaa !50
  %16 = zext i16 %15 to i32, !dbg !55
  %17 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 0), align 2, !dbg !56, !tbaa !57
  %18 = zext i16 %17 to i32, !dbg !58
  %19 = add nsw i32 %18, -2, !dbg !59
  %20 = mul nsw i32 %19, %16, !dbg !60
  %21 = icmp slt i32 %14, %20, !dbg !61
  br i1 %21, label %11, label %22, !dbg !62, !llvm.loop !65

; <label>:22:                                     ; preds = %11, %2
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !67
  %24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !68
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !69
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %0, i32 %1) #6, !dbg !70
  store i64 0, i64* @progress_printed, align 8, !dbg !71, !tbaa !72
  %27 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 1), align 2, !dbg !74, !tbaa !50
  %28 = zext i16 %27 to i64, !dbg !75
  %29 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 0), align 2, !dbg !76, !tbaa !57
  %30 = zext i16 %29 to i64, !dbg !77
  %31 = add nsw i64 %30, -3, !dbg !78
  %32 = shl nuw nsw i64 %28, 32, !dbg !79
  %33 = mul i64 %32, %31, !dbg !75
  %34 = ashr exact i64 %33, 32, !dbg !75
  store i64 %34, i64* @progress_full, align 8, !dbg !80, !tbaa !72
  %35 = tail call %struct._reent* @__getreent() #6, !dbg !81
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %35, i64 0, i32 2, !dbg !81
  %37 = load %struct.__sFILE*, %struct.__sFILE** %36, align 8, !dbg !81, !tbaa !82
  %38 = tail call i32 @fflush(%struct.__sFILE* %37) #6, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  ret void, !dbg !90
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @memtest_progress_end() local_unnamed_addr #0 !dbg !91 {
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  ret void, !dbg !95
}

; Function Attrs: noredzone nounwind
define dso_local void @memtest_progress_step(i64, i64, i8 signext) local_unnamed_addr #0 !dbg !96 {
  %4 = load i64, i64* @progress_full, align 8, !dbg !108, !tbaa !72
  %5 = mul i64 %4, %0, !dbg !109
  %6 = udiv i64 %5, %1, !dbg !110
  %7 = load i64, i64* @progress_printed, align 8, !dbg !113, !tbaa !72
  %8 = icmp eq i64 %6, %7, !dbg !116
  br i1 %8, label %18, label %9, !dbg !117

; <label>:9:                                      ; preds = %3
  %10 = sext i8 %2 to i32
  br label %11, !dbg !117

; <label>:11:                                     ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %10) #6, !dbg !118
  %14 = add nuw i64 %12, 1, !dbg !119
  %15 = load i64, i64* @progress_printed, align 8, !dbg !113, !tbaa !72
  %16 = sub i64 %6, %15, !dbg !120
  %17 = icmp ult i64 %14, %16, !dbg !116
  br i1 %17, label %11, label %18, !dbg !117, !llvm.loop !121

; <label>:18:                                     ; preds = %11, %3
  store i64 %6, i64* @progress_printed, align 8, !dbg !123, !tbaa !72
  %19 = tail call %struct._reent* @__getreent() #6, !dbg !124
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i64 0, i32 2, !dbg !124
  %21 = load %struct.__sFILE*, %struct.__sFILE** %20, align 8, !dbg !124, !tbaa !82
  %22 = tail call i32 @fflush(%struct.__sFILE* %21) #6, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: noredzone nounwind
define dso_local i32 @memtest_addressing(i64*, i64, i32) local_unnamed_addr #0 !dbg !127 {
  %4 = lshr i64 %1, 3, !dbg !140
  %5 = icmp eq i64 %4, 0, !dbg !144
  br i1 %5, label %79, label %6, !dbg !147

; <label>:6:                                      ; preds = %3
  %7 = icmp ne i32 %2, 0
  %8 = shl nuw nsw i64 %4, 1
  br label %13, !dbg !147

; <label>:9:                                      ; preds = %39
  br i1 %5, label %79, label %10, !dbg !148

; <label>:10:                                     ; preds = %9
  %11 = icmp ne i32 %2, 0
  %12 = shl nuw nsw i64 %4, 1
  br label %42, !dbg !148

; <label>:13:                                     ; preds = %39, %6
  %14 = phi i64* [ %0, %6 ], [ %17, %39 ]
  %15 = phi i64 [ 0, %6 ], [ %40, %39 ]
  %16 = ptrtoint i64* %14 to i64, !dbg !150
  store i64 %16, i64* %14, align 8, !dbg !152, !tbaa !72
  %17 = getelementptr inbounds i64, i64* %14, i64 1, !dbg !153
  %18 = and i64 %15, 65535, !dbg !154
  %19 = icmp eq i64 %18, 0, !dbg !156
  %20 = and i1 %7, %19, !dbg !157
  br i1 %20, label %21, label %39, !dbg !157

; <label>:21:                                     ; preds = %13
  %22 = load i64, i64* @progress_full, align 8, !dbg !162, !tbaa !72
  %23 = mul i64 %22, %15, !dbg !163
  %24 = udiv i64 %23, %8, !dbg !164
  %25 = load i64, i64* @progress_printed, align 8, !dbg !167, !tbaa !72
  %26 = icmp eq i64 %24, %25, !dbg !168
  br i1 %26, label %34, label %27, !dbg !169

; <label>:27:                                     ; preds = %21, %27
  %28 = phi i64 [ %30, %27 ], [ 0, %21 ]
  %29 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 65) #6, !dbg !170
  %30 = add nuw i64 %28, 1, !dbg !171
  %31 = load i64, i64* @progress_printed, align 8, !dbg !167, !tbaa !72
  %32 = sub i64 %24, %31, !dbg !172
  %33 = icmp ult i64 %30, %32, !dbg !168
  br i1 %33, label %27, label %34, !dbg !169, !llvm.loop !121

; <label>:34:                                     ; preds = %27, %21
  store i64 %24, i64* @progress_printed, align 8, !dbg !173, !tbaa !72
  %35 = tail call %struct._reent* @__getreent() #6, !dbg !174
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %35, i64 0, i32 2, !dbg !174
  %37 = load %struct.__sFILE*, %struct.__sFILE** %36, align 8, !dbg !174, !tbaa !82
  %38 = tail call i32 @fflush(%struct.__sFILE* %37) #6, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br label %39, !dbg !177

; <label>:39:                                     ; preds = %13, %34
  %40 = add nuw nsw i64 %15, 1, !dbg !178
  %41 = icmp eq i64 %40, %4, !dbg !144
  br i1 %41, label %9, label %13, !dbg !147, !llvm.loop !179

; <label>:42:                                     ; preds = %10, %76
  %43 = phi i64* [ %0, %10 ], [ %53, %76 ]
  %44 = phi i64 [ 0, %10 ], [ %77, %76 ]
  %45 = load i64, i64* %43, align 8, !dbg !181, !tbaa !72
  %46 = ptrtoint i64* %43 to i64, !dbg !185
  %47 = icmp eq i64 %45, %46, !dbg !186
  br i1 %47, label %52, label %48, !dbg !187

; <label>:48:                                     ; preds = %42
  %49 = icmp eq i32 %2, 0, !dbg !188
  br i1 %49, label %79, label %50, !dbg !191

; <label>:50:                                     ; preds = %48
  %51 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %43, i64 %45) #6, !dbg !192
  tail call void @exit(i32 1) #8, !dbg !194
  unreachable, !dbg !194

; <label>:52:                                     ; preds = %42
  %53 = getelementptr inbounds i64, i64* %43, i64 1, !dbg !195
  %54 = and i64 %44, 65535, !dbg !196
  %55 = icmp eq i64 %54, 0, !dbg !198
  %56 = and i1 %11, %55, !dbg !199
  br i1 %56, label %57, label %76, !dbg !199

; <label>:57:                                     ; preds = %52
  %58 = add nuw nsw i64 %44, %4, !dbg !200
  %59 = load i64, i64* @progress_full, align 8, !dbg !205, !tbaa !72
  %60 = mul i64 %59, %58, !dbg !206
  %61 = udiv i64 %60, %12, !dbg !207
  %62 = load i64, i64* @progress_printed, align 8, !dbg !210, !tbaa !72
  %63 = icmp eq i64 %61, %62, !dbg !211
  br i1 %63, label %71, label %64, !dbg !212

; <label>:64:                                     ; preds = %57, %64
  %65 = phi i64 [ %67, %64 ], [ 0, %57 ]
  %66 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 65) #6, !dbg !213
  %67 = add nuw i64 %65, 1, !dbg !214
  %68 = load i64, i64* @progress_printed, align 8, !dbg !210, !tbaa !72
  %69 = sub i64 %61, %68, !dbg !215
  %70 = icmp ult i64 %67, %69, !dbg !211
  br i1 %70, label %64, label %71, !dbg !212, !llvm.loop !121

; <label>:71:                                     ; preds = %64, %57
  store i64 %61, i64* @progress_printed, align 8, !dbg !216, !tbaa !72
  %72 = tail call %struct._reent* @__getreent() #6, !dbg !217
  %73 = getelementptr inbounds %struct._reent, %struct._reent* %72, i64 0, i32 2, !dbg !217
  %74 = load %struct.__sFILE*, %struct.__sFILE** %73, align 8, !dbg !217, !tbaa !82
  %75 = tail call i32 @fflush(%struct.__sFILE* %74) #6, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br label %76, !dbg !220

; <label>:76:                                     ; preds = %52, %71
  %77 = add nuw nsw i64 %44, 1, !dbg !221
  %78 = icmp ult i64 %77, %4, !dbg !222
  br i1 %78, label %42, label %79, !dbg !148, !llvm.loop !223

; <label>:79:                                     ; preds = %76, %3, %9, %48
  %80 = phi i32 [ 1, %48 ], [ 0, %9 ], [ 0, %3 ], [ 0, %76 ], !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  ret i32 %80, !dbg !226
}

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @memtest_fill_random(i64* nocapture, i64, i32) local_unnamed_addr #0 !dbg !227 {
  %4 = lshr i64 %1, 4, !dbg !251
  %5 = lshr i64 %1, 13, !dbg !253
  %6 = and i64 %1, 4095, !dbg !257
  %7 = icmp eq i64 %6, 0, !dbg !257
  br i1 %7, label %8, label %11, !dbg !257

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i64 %5, 0
  %10 = icmp ne i32 %2, 0
  br label %12, !dbg !259

; <label>:11:                                     ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.memtest_fill_random, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !257
  unreachable, !dbg !257

; <label>:12:                                     ; preds = %58, %8
  %13 = phi i64 [ -3372857614747716250, %8 ], [ %59, %58 ]
  %14 = phi i64 [ 0, %8 ], [ %60, %58 ]
  %15 = getelementptr inbounds i64, i64* %0, i64 %14, !dbg !261
  br i1 %9, label %58, label %16, !dbg !266

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i64, i64* %15, i64 %4, !dbg !268
  %18 = mul nuw nsw i64 %14, %5
  br label %19, !dbg !266

; <label>:19:                                     ; preds = %55, %16
  %20 = phi i64 [ %13, %16 ], [ %29, %55 ]
  %21 = phi i64* [ %17, %16 ], [ %32, %55 ]
  %22 = phi i64* [ %15, %16 ], [ %31, %55 ]
  %23 = phi i64 [ 0, %16 ], [ %56, %55 ]
  %24 = lshr i64 %20, 12, !dbg !270
  %25 = xor i64 %24, %20, !dbg !270
  %26 = shl i64 %25, 25, !dbg !270
  %27 = xor i64 %26, %25, !dbg !270
  %28 = lshr i64 %27, 27, !dbg !270
  %29 = xor i64 %28, %27, !dbg !270
  %30 = mul i64 %29, 2685821657736338717, !dbg !270
  store i64 %30, i64* %21, align 8, !dbg !274, !tbaa !72
  store i64 %30, i64* %22, align 8, !dbg !275, !tbaa !72
  %31 = getelementptr inbounds i64, i64* %22, i64 512, !dbg !276
  %32 = getelementptr inbounds i64, i64* %21, i64 512, !dbg !277
  %33 = and i64 %23, 65535, !dbg !278
  %34 = icmp eq i64 %33, 0, !dbg !280
  %35 = and i1 %10, %34, !dbg !281
  br i1 %35, label %36, label %55, !dbg !281

; <label>:36:                                     ; preds = %19
  %37 = add nuw nsw i64 %23, %18, !dbg !282
  %38 = load i64, i64* @progress_full, align 8, !dbg !287, !tbaa !72
  %39 = mul i64 %38, %37, !dbg !288
  %40 = udiv i64 %39, %4, !dbg !289
  %41 = load i64, i64* @progress_printed, align 8, !dbg !292, !tbaa !72
  %42 = icmp eq i64 %40, %41, !dbg !293
  br i1 %42, label %50, label %43, !dbg !294

; <label>:43:                                     ; preds = %36, %43
  %44 = phi i64 [ %46, %43 ], [ 0, %36 ]
  %45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 82) #6, !dbg !295
  %46 = add nuw i64 %44, 1, !dbg !296
  %47 = load i64, i64* @progress_printed, align 8, !dbg !292, !tbaa !72
  %48 = sub i64 %40, %47, !dbg !297
  %49 = icmp ult i64 %46, %48, !dbg !293
  br i1 %49, label %43, label %50, !dbg !294, !llvm.loop !121

; <label>:50:                                     ; preds = %43, %36
  store i64 %40, i64* @progress_printed, align 8, !dbg !298, !tbaa !72
  %51 = tail call %struct._reent* @__getreent() #6, !dbg !299
  %52 = getelementptr inbounds %struct._reent, %struct._reent* %51, i64 0, i32 2, !dbg !299
  %53 = load %struct.__sFILE*, %struct.__sFILE** %52, align 8, !dbg !299, !tbaa !82
  %54 = tail call i32 @fflush(%struct.__sFILE* %53) #6, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br label %55, !dbg !302

; <label>:55:                                     ; preds = %19, %50
  %56 = add nuw nsw i64 %23, 1, !dbg !303
  %57 = icmp eq i64 %56, %5, !dbg !304
  br i1 %57, label %58, label %19, !dbg !266, !llvm.loop !305

; <label>:58:                                     ; preds = %55, %12
  %59 = phi i64 [ %13, %12 ], [ %29, %55 ], !dbg !307
  %60 = add nuw nsw i64 %14, 1, !dbg !308
  %61 = icmp eq i64 %60, 512, !dbg !309
  br i1 %61, label %62, label %12, !dbg !259, !llvm.loop !310

; <label>:62:                                     ; preds = %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  ret void, !dbg !312
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @memtest_fill_value(i64* nocapture, i64, i64, i64, i8 signext, i32) local_unnamed_addr #0 !dbg !313 {
  %7 = lshr i64 %1, 4, !dbg !338
  %8 = lshr i64 %1, 13, !dbg !340
  %9 = and i64 %1, 4095, !dbg !342
  %10 = icmp eq i64 %9, 0, !dbg !342
  br i1 %10, label %11, label %15, !dbg !342

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i64 %8, 0
  %13 = icmp ne i32 %5, 0
  %14 = sext i8 %4 to i32
  br label %16, !dbg !344

; <label>:15:                                     ; preds = %6
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.memtest_fill_value, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !342
  unreachable, !dbg !342

; <label>:16:                                     ; preds = %62, %11
  %17 = phi i64 [ 0, %11 ], [ %63, %62 ]
  %18 = getelementptr inbounds i64, i64* %0, i64 %17, !dbg !346
  %19 = and i64 %17, 1, !dbg !350
  %20 = icmp eq i64 %19, 0, !dbg !350
  %21 = select i1 %20, i64 %2, i64 %3, !dbg !351
  br i1 %12, label %62, label %22, !dbg !354

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i64, i64* %18, i64 %7, !dbg !356
  %24 = shl i64 %21, 16
  %25 = or i64 %24, %21
  %26 = shl i64 %21, 32
  %27 = or i64 %25, %26
  %28 = shl i64 %21, 48
  %29 = or i64 %27, %28
  %30 = mul nuw nsw i64 %17, %8
  br label %31, !dbg !354

; <label>:31:                                     ; preds = %59, %22
  %32 = phi i64* [ %23, %22 ], [ %36, %59 ]
  %33 = phi i64* [ %18, %22 ], [ %35, %59 ]
  %34 = phi i64 [ 0, %22 ], [ %60, %59 ]
  store i64 %29, i64* %32, align 8, !dbg !358, !tbaa !72
  store i64 %29, i64* %33, align 8, !dbg !361, !tbaa !72
  %35 = getelementptr inbounds i64, i64* %33, i64 512, !dbg !362
  %36 = getelementptr inbounds i64, i64* %32, i64 512, !dbg !363
  %37 = and i64 %34, 65535, !dbg !364
  %38 = icmp eq i64 %37, 0, !dbg !366
  %39 = and i1 %13, %38, !dbg !367
  br i1 %39, label %40, label %59, !dbg !367

; <label>:40:                                     ; preds = %31
  %41 = add nuw nsw i64 %34, %30, !dbg !368
  %42 = load i64, i64* @progress_full, align 8, !dbg !373, !tbaa !72
  %43 = mul i64 %42, %41, !dbg !374
  %44 = udiv i64 %43, %7, !dbg !375
  %45 = load i64, i64* @progress_printed, align 8, !dbg !378, !tbaa !72
  %46 = icmp eq i64 %44, %45, !dbg !379
  br i1 %46, label %54, label %47, !dbg !380

; <label>:47:                                     ; preds = %40, %47
  %48 = phi i64 [ %50, %47 ], [ 0, %40 ]
  %49 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %14) #6, !dbg !381
  %50 = add nuw i64 %48, 1, !dbg !382
  %51 = load i64, i64* @progress_printed, align 8, !dbg !378, !tbaa !72
  %52 = sub i64 %44, %51, !dbg !383
  %53 = icmp ult i64 %50, %52, !dbg !379
  br i1 %53, label %47, label %54, !dbg !380, !llvm.loop !121

; <label>:54:                                     ; preds = %47, %40
  store i64 %44, i64* @progress_printed, align 8, !dbg !384, !tbaa !72
  %55 = tail call %struct._reent* @__getreent() #6, !dbg !385
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %55, i64 0, i32 2, !dbg !385
  %57 = load %struct.__sFILE*, %struct.__sFILE** %56, align 8, !dbg !385, !tbaa !82
  %58 = tail call i32 @fflush(%struct.__sFILE* %57) #6, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %59, !dbg !388

; <label>:59:                                     ; preds = %31, %54
  %60 = add nuw nsw i64 %34, 1, !dbg !389
  %61 = icmp eq i64 %60, %8, !dbg !390
  br i1 %61, label %62, label %31, !dbg !354, !llvm.loop !391

; <label>:62:                                     ; preds = %59, %16
  %63 = add nuw nsw i64 %17, 1, !dbg !393
  %64 = icmp eq i64 %63, 512, !dbg !394
  br i1 %64, label %65, label %16, !dbg !344, !llvm.loop !395

; <label>:65:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret void, !dbg !397
}

; Function Attrs: noredzone nounwind
define dso_local i32 @memtest_compare(i64*, i64, i32) local_unnamed_addr #0 !dbg !398 {
  %4 = lshr i64 %1, 4, !dbg !410
  %5 = and i64 %1, 4095, !dbg !412
  %6 = icmp eq i64 %5, 0, !dbg !412
  br i1 %6, label %8, label %7, !dbg !412

; <label>:7:                                      ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.memtest_compare, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !412
  unreachable, !dbg !412

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i64 %4, 0, !dbg !415
  br i1 %9, label %51, label %10, !dbg !418

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds i64, i64* %0, i64 %4, !dbg !419
  %12 = icmp ne i32 %2, 0
  br label %13, !dbg !418

; <label>:13:                                     ; preds = %10, %48
  %14 = phi i64* [ %11, %10 ], [ %26, %48 ]
  %15 = phi i64* [ %0, %10 ], [ %25, %48 ]
  %16 = phi i64 [ 0, %10 ], [ %49, %48 ]
  %17 = load i64, i64* %15, align 8, !dbg !421, !tbaa !72
  %18 = load i64, i64* %14, align 8, !dbg !424, !tbaa !72
  %19 = icmp eq i64 %17, %18, !dbg !425
  br i1 %19, label %24, label %20, !dbg !426

; <label>:20:                                     ; preds = %13
  %21 = icmp eq i32 %2, 0, !dbg !427
  br i1 %21, label %51, label %22, !dbg !430

; <label>:22:                                     ; preds = %20
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i64* nonnull %15, i64* nonnull %14, i64 %17, i64 %18) #6, !dbg !431
  tail call void @exit(i32 1) #8, !dbg !433
  unreachable, !dbg !433

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !434
  %26 = getelementptr inbounds i64, i64* %14, i64 1, !dbg !435
  %27 = and i64 %16, 65535, !dbg !436
  %28 = icmp eq i64 %27, 0, !dbg !438
  %29 = and i1 %12, %28, !dbg !439
  br i1 %29, label %30, label %48, !dbg !439

; <label>:30:                                     ; preds = %24
  %31 = load i64, i64* @progress_full, align 8, !dbg !444, !tbaa !72
  %32 = mul i64 %31, %16, !dbg !445
  %33 = udiv i64 %32, %4, !dbg !446
  %34 = load i64, i64* @progress_printed, align 8, !dbg !449, !tbaa !72
  %35 = icmp eq i64 %33, %34, !dbg !450
  br i1 %35, label %43, label %36, !dbg !451

; <label>:36:                                     ; preds = %30, %36
  %37 = phi i64 [ %39, %36 ], [ 0, %30 ]
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 61) #6, !dbg !452
  %39 = add nuw i64 %37, 1, !dbg !453
  %40 = load i64, i64* @progress_printed, align 8, !dbg !449, !tbaa !72
  %41 = sub i64 %33, %40, !dbg !454
  %42 = icmp ult i64 %39, %41, !dbg !450
  br i1 %42, label %36, label %43, !dbg !451, !llvm.loop !121

; <label>:43:                                     ; preds = %36, %30
  store i64 %33, i64* @progress_printed, align 8, !dbg !455, !tbaa !72
  %44 = tail call %struct._reent* @__getreent() #6, !dbg !456
  %45 = getelementptr inbounds %struct._reent, %struct._reent* %44, i64 0, i32 2, !dbg !456
  %46 = load %struct.__sFILE*, %struct.__sFILE** %45, align 8, !dbg !456, !tbaa !82
  %47 = tail call i32 @fflush(%struct.__sFILE* %46) #6, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br label %48, !dbg !459

; <label>:48:                                     ; preds = %24, %43
  %49 = add nuw nsw i64 %16, 1, !dbg !460
  %50 = icmp ult i64 %49, %4, !dbg !415
  br i1 %50, label %13, label %51, !dbg !418, !llvm.loop !461

; <label>:51:                                     ; preds = %48, %8, %20
  %52 = phi i32 [ 1, %20 ], [ 0, %8 ], [ 0, %48 ], !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  ret i32 %52, !dbg !464
}

; Function Attrs: noredzone nounwind
define dso_local i32 @memtest_compare_times(i64*, i64, i32, i32, i32) local_unnamed_addr #0 !dbg !465 {
  %6 = icmp sgt i32 %3, 0, !dbg !483
  br i1 %6, label %7, label %22, !dbg !486

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i32 %4, 0
  br label %9, !dbg !486

; <label>:9:                                      ; preds = %17, %7
  %10 = phi i32 [ 0, %7 ], [ %19, %17 ]
  %11 = phi i32 [ 0, %7 ], [ %20, %17 ]
  br i1 %8, label %12, label %14, !dbg !487

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 0) #9, !dbg !489
  br label %17

; <label>:14:                                     ; preds = %9
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %2) #9, !dbg !490
  %15 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %4) #9, !dbg !489
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %17, !dbg !496

; <label>:17:                                     ; preds = %12, %14
  %18 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %19 = add nsw i32 %18, %10, !dbg !497
  %20 = add nuw nsw i32 %11, 1, !dbg !498
  %21 = icmp eq i32 %20, %3, !dbg !483
  br i1 %21, label %22, label %9, !dbg !486, !llvm.loop !499

; <label>:22:                                     ; preds = %17, %5
  %23 = phi i32 [ 0, %5 ], [ %19, %17 ], !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  ret i32 %23, !dbg !502
}

; Function Attrs: noredzone nounwind
define dso_local i32 @memtest_test(i64*, i64, i32, i32) local_unnamed_addr #0 !dbg !503 {
  %5 = icmp eq i32 %2, 0, !dbg !519
  br i1 %5, label %98, label %6, !dbg !520

; <label>:6:                                      ; preds = %4
  %7 = icmp ne i32 %3, 0
  %8 = icmp eq i32 %3, 0
  %9 = lshr i64 %1, 4
  %10 = and i64 %1, 4095
  %11 = icmp eq i64 %10, 0
  %12 = icmp eq i64 %9, 0
  %13 = getelementptr inbounds i64, i64* %0, i64 %9
  br label %14, !dbg !520

; <label>:14:                                     ; preds = %6, %287
  %15 = phi i32 [ 0, %6 ], [ %291, %287 ]
  %16 = phi i32 [ 0, %6 ], [ %17, %287 ]
  %17 = add nuw nsw i32 %16, 1, !dbg !521
  br i1 %7, label %18, label %22, !dbg !523

; <label>:18:                                     ; preds = %14
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %17) #9, !dbg !524
  %19 = tail call i32 @memtest_addressing(i64* %0, i64 %1, i32 %3) #9, !dbg !526
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %17) #9, !dbg !531
  tail call void @memtest_fill_random(i64* %0, i64 %1, i32 %3) #9, !dbg !533
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br label %24, !dbg !538

; <label>:22:                                     ; preds = %14
  %23 = tail call i32 @memtest_addressing(i64* %0, i64 %1, i32 0) #9, !dbg !526
  tail call void @memtest_fill_random(i64* %0, i64 %1, i32 0) #9, !dbg !533
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ %19, %18 ]
  %26 = add nsw i32 %25, %15, !dbg !539
  br i1 %8, label %27, label %43, !dbg !547

; <label>:27:                                     ; preds = %24
  br i1 %11, label %29, label %28, !dbg !553

; <label>:28:                                     ; preds = %146, %126, %105, %27
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.memtest_compare, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !553
  unreachable, !dbg !553

; <label>:29:                                     ; preds = %27
  br i1 %12, label %30, label %31, !dbg !556

; <label>:30:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br label %159, !dbg !556

; <label>:31:                                     ; preds = %29, %38
  %32 = phi i64* [ %40, %38 ], [ %13, %29 ]
  %33 = phi i64* [ %39, %38 ], [ %0, %29 ]
  %34 = phi i64 [ %41, %38 ], [ 0, %29 ]
  %35 = load i64, i64* %33, align 8, !dbg !559, !tbaa !72
  %36 = load i64, i64* %32, align 8, !dbg !560, !tbaa !72
  %37 = icmp eq i64 %35, %36, !dbg !561
  br i1 %37, label %38, label %46, !dbg !562

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i64, i64* %33, i64 1, !dbg !563
  %40 = getelementptr inbounds i64, i64* %32, i64 1, !dbg !564
  %41 = add nuw nsw i64 %34, 1, !dbg !565
  %42 = icmp ult i64 %41, %9, !dbg !566
  br i1 %42, label %31, label %46, !dbg !556, !llvm.loop !461

; <label>:43:                                     ; preds = %24
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !567
  %44 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !568
  %45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %100, !dbg !547

; <label>:46:                                     ; preds = %38, %31
  %47 = phi i32 [ 0, %38 ], [ 1, %31 ], !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %8, label %105, label %100, !dbg !547

; <label>:48:                                     ; preds = %159
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %17) #9, !dbg !573
  tail call void @memtest_fill_value(i64* %0, i64 %1, i64 0, i64 -1, i8 signext 83, i32 %3) #9, !dbg !575
  %49 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br label %51, !dbg !580

; <label>:50:                                     ; preds = %159
  tail call void @memtest_fill_value(i64* %0, i64 %1, i64 0, i64 -1, i8 signext 83, i32 0) #9, !dbg !575
  br label %51

; <label>:51:                                     ; preds = %50, %48
  br i1 %8, label %52, label %68, !dbg !588

; <label>:52:                                     ; preds = %51
  br i1 %11, label %54, label %53, !dbg !594

; <label>:53:                                     ; preds = %210, %190, %169, %52
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.memtest_compare, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !594
  unreachable, !dbg !594

; <label>:54:                                     ; preds = %52
  br i1 %12, label %55, label %56, !dbg !597

; <label>:55:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %223, !dbg !597

; <label>:56:                                     ; preds = %54, %63
  %57 = phi i64* [ %65, %63 ], [ %13, %54 ]
  %58 = phi i64* [ %64, %63 ], [ %0, %54 ]
  %59 = phi i64 [ %66, %63 ], [ 0, %54 ]
  %60 = load i64, i64* %58, align 8, !dbg !600, !tbaa !72
  %61 = load i64, i64* %57, align 8, !dbg !601, !tbaa !72
  %62 = icmp eq i64 %60, %61, !dbg !602
  br i1 %62, label %63, label %71, !dbg !603

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds i64, i64* %58, i64 1, !dbg !604
  %65 = getelementptr inbounds i64, i64* %57, i64 1, !dbg !605
  %66 = add nuw nsw i64 %59, 1, !dbg !606
  %67 = icmp ult i64 %66, %9, !dbg !607
  br i1 %67, label %56, label %71, !dbg !597, !llvm.loop !461

; <label>:68:                                     ; preds = %51
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !608
  %69 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !609
  %70 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %164, !dbg !588

; <label>:71:                                     ; preds = %63, %56
  %72 = phi i32 [ 0, %63 ], [ 1, %56 ], !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %8, label %169, label %164, !dbg !588

; <label>:73:                                     ; preds = %223
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %17) #9, !dbg !614
  tail call void @memtest_fill_value(i64* %0, i64 %1, i64 -6148914691236517206, i64 6148914691236517205, i8 signext 67, i32 %3) #9, !dbg !616
  %74 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br label %76, !dbg !621

; <label>:75:                                     ; preds = %223
  tail call void @memtest_fill_value(i64* %0, i64 %1, i64 -6148914691236517206, i64 6148914691236517205, i8 signext 67, i32 0) #9, !dbg !616
  br label %76

; <label>:76:                                     ; preds = %75, %73
  br i1 %8, label %77, label %93, !dbg !630

; <label>:77:                                     ; preds = %76
  br i1 %11, label %79, label %78, !dbg !636

; <label>:78:                                     ; preds = %274, %254, %233, %77
  tail call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.memtest_compare, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !636
  unreachable, !dbg !636

; <label>:79:                                     ; preds = %77
  br i1 %12, label %80, label %81, !dbg !639

; <label>:80:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %287, !dbg !639

; <label>:81:                                     ; preds = %79, %88
  %82 = phi i64* [ %90, %88 ], [ %13, %79 ]
  %83 = phi i64* [ %89, %88 ], [ %0, %79 ]
  %84 = phi i64 [ %91, %88 ], [ 0, %79 ]
  %85 = load i64, i64* %83, align 8, !dbg !642, !tbaa !72
  %86 = load i64, i64* %82, align 8, !dbg !643, !tbaa !72
  %87 = icmp eq i64 %85, %86, !dbg !644
  br i1 %87, label %88, label %96, !dbg !645

; <label>:88:                                     ; preds = %81
  %89 = getelementptr inbounds i64, i64* %83, i64 1, !dbg !646
  %90 = getelementptr inbounds i64, i64* %82, i64 1, !dbg !647
  %91 = add nuw nsw i64 %84, 1, !dbg !648
  %92 = icmp ult i64 %91, %9, !dbg !649
  br i1 %92, label %81, label %96, !dbg !639, !llvm.loop !461

; <label>:93:                                     ; preds = %76
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !650
  %94 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !651
  %95 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %228, !dbg !630

; <label>:96:                                     ; preds = %88, %81
  %97 = phi i32 [ 0, %88 ], [ 1, %81 ], !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br i1 %8, label %233, label %228, !dbg !630

; <label>:98:                                     ; preds = %287, %4
  %99 = phi i32 [ 0, %4 ], [ %291, %287 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  ret i32 %99, !dbg !657

; <label>:100:                                    ; preds = %46, %43
  %101 = phi i32 [ %44, %43 ], [ %47, %46 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !567
  %102 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !568
  %103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  %104 = add nsw i32 %102, %101, !dbg !658
  br label %121, !dbg !547

; <label>:105:                                    ; preds = %46
  br i1 %11, label %106, label %28, !dbg !553

; <label>:106:                                    ; preds = %105, %113
  %107 = phi i64* [ %115, %113 ], [ %13, %105 ]
  %108 = phi i64* [ %114, %113 ], [ %0, %105 ]
  %109 = phi i64 [ %116, %113 ], [ 0, %105 ]
  %110 = load i64, i64* %108, align 8, !dbg !559, !tbaa !72
  %111 = load i64, i64* %107, align 8, !dbg !560, !tbaa !72
  %112 = icmp eq i64 %110, %111, !dbg !561
  br i1 %112, label %113, label %118, !dbg !562

; <label>:113:                                    ; preds = %106
  %114 = getelementptr inbounds i64, i64* %108, i64 1, !dbg !563
  %115 = getelementptr inbounds i64, i64* %107, i64 1, !dbg !564
  %116 = add nuw nsw i64 %109, 1, !dbg !565
  %117 = icmp ult i64 %116, %9, !dbg !566
  br i1 %117, label %106, label %118, !dbg !556, !llvm.loop !461

; <label>:118:                                    ; preds = %113, %106
  %119 = phi i32 [ 0, %113 ], [ 1, %106 ], !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %120 = add nuw nsw i32 %119, %47, !dbg !658
  br i1 %8, label %126, label %121, !dbg !547

; <label>:121:                                    ; preds = %118, %100
  %122 = phi i32 [ %104, %100 ], [ %120, %118 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !567
  %123 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !568
  %124 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  %125 = add nsw i32 %123, %122, !dbg !658
  br label %142, !dbg !547

; <label>:126:                                    ; preds = %118
  br i1 %11, label %127, label %28, !dbg !553

; <label>:127:                                    ; preds = %126, %134
  %128 = phi i64* [ %136, %134 ], [ %13, %126 ]
  %129 = phi i64* [ %135, %134 ], [ %0, %126 ]
  %130 = phi i64 [ %137, %134 ], [ 0, %126 ]
  %131 = load i64, i64* %129, align 8, !dbg !559, !tbaa !72
  %132 = load i64, i64* %128, align 8, !dbg !560, !tbaa !72
  %133 = icmp eq i64 %131, %132, !dbg !561
  br i1 %133, label %134, label %139, !dbg !562

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds i64, i64* %129, i64 1, !dbg !563
  %136 = getelementptr inbounds i64, i64* %128, i64 1, !dbg !564
  %137 = add nuw nsw i64 %130, 1, !dbg !565
  %138 = icmp ult i64 %137, %9, !dbg !566
  br i1 %138, label %127, label %139, !dbg !556, !llvm.loop !461

; <label>:139:                                    ; preds = %134, %127
  %140 = phi i32 [ 0, %134 ], [ 1, %127 ], !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %141 = add nuw nsw i32 %140, %120, !dbg !658
  br i1 %8, label %146, label %142, !dbg !547

; <label>:142:                                    ; preds = %121, %139
  %143 = phi i32 [ %125, %121 ], [ %141, %139 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !567
  %144 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !568
  %145 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !569
  br label %159, !dbg !659

; <label>:146:                                    ; preds = %139
  br i1 %11, label %147, label %28, !dbg !553

; <label>:147:                                    ; preds = %146, %154
  %148 = phi i64* [ %156, %154 ], [ %13, %146 ]
  %149 = phi i64* [ %155, %154 ], [ %0, %146 ]
  %150 = phi i64 [ %157, %154 ], [ 0, %146 ]
  %151 = load i64, i64* %149, align 8, !dbg !559, !tbaa !72
  %152 = load i64, i64* %148, align 8, !dbg !560, !tbaa !72
  %153 = icmp eq i64 %151, %152, !dbg !561
  br i1 %153, label %154, label %159, !dbg !562

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds i64, i64* %149, i64 1, !dbg !563
  %156 = getelementptr inbounds i64, i64* %148, i64 1, !dbg !564
  %157 = add nuw nsw i64 %150, 1, !dbg !565
  %158 = icmp ult i64 %157, %9, !dbg !566
  br i1 %158, label %147, label %159, !dbg !556, !llvm.loop !461

; <label>:159:                                    ; preds = %154, %147, %30, %142
  %160 = phi i32 [ %143, %142 ], [ 0, %30 ], [ %141, %147 ], [ %141, %154 ]
  %161 = phi i32 [ %144, %142 ], [ 0, %30 ], [ 1, %147 ], [ 0, %154 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  %162 = add nsw i32 %161, %160, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %163 = add nsw i32 %26, %162, !dbg !661
  br i1 %7, label %48, label %50, !dbg !662

; <label>:164:                                    ; preds = %71, %68
  %165 = phi i32 [ %69, %68 ], [ %72, %71 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !608
  %166 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !609
  %167 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  %168 = add nsw i32 %166, %165, !dbg !663
  br label %185, !dbg !588

; <label>:169:                                    ; preds = %71
  br i1 %11, label %170, label %53, !dbg !594

; <label>:170:                                    ; preds = %169, %177
  %171 = phi i64* [ %179, %177 ], [ %13, %169 ]
  %172 = phi i64* [ %178, %177 ], [ %0, %169 ]
  %173 = phi i64 [ %180, %177 ], [ 0, %169 ]
  %174 = load i64, i64* %172, align 8, !dbg !600, !tbaa !72
  %175 = load i64, i64* %171, align 8, !dbg !601, !tbaa !72
  %176 = icmp eq i64 %174, %175, !dbg !602
  br i1 %176, label %177, label %182, !dbg !603

; <label>:177:                                    ; preds = %170
  %178 = getelementptr inbounds i64, i64* %172, i64 1, !dbg !604
  %179 = getelementptr inbounds i64, i64* %171, i64 1, !dbg !605
  %180 = add nuw nsw i64 %173, 1, !dbg !606
  %181 = icmp ult i64 %180, %9, !dbg !607
  br i1 %181, label %170, label %182, !dbg !597, !llvm.loop !461

; <label>:182:                                    ; preds = %177, %170
  %183 = phi i32 [ 0, %177 ], [ 1, %170 ], !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %184 = add nuw nsw i32 %183, %72, !dbg !663
  br i1 %8, label %190, label %185, !dbg !588

; <label>:185:                                    ; preds = %182, %164
  %186 = phi i32 [ %168, %164 ], [ %184, %182 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !608
  %187 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !609
  %188 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  %189 = add nsw i32 %187, %186, !dbg !663
  br label %206, !dbg !588

; <label>:190:                                    ; preds = %182
  br i1 %11, label %191, label %53, !dbg !594

; <label>:191:                                    ; preds = %190, %198
  %192 = phi i64* [ %200, %198 ], [ %13, %190 ]
  %193 = phi i64* [ %199, %198 ], [ %0, %190 ]
  %194 = phi i64 [ %201, %198 ], [ 0, %190 ]
  %195 = load i64, i64* %193, align 8, !dbg !600, !tbaa !72
  %196 = load i64, i64* %192, align 8, !dbg !601, !tbaa !72
  %197 = icmp eq i64 %195, %196, !dbg !602
  br i1 %197, label %198, label %203, !dbg !603

; <label>:198:                                    ; preds = %191
  %199 = getelementptr inbounds i64, i64* %193, i64 1, !dbg !604
  %200 = getelementptr inbounds i64, i64* %192, i64 1, !dbg !605
  %201 = add nuw nsw i64 %194, 1, !dbg !606
  %202 = icmp ult i64 %201, %9, !dbg !607
  br i1 %202, label %191, label %203, !dbg !597, !llvm.loop !461

; <label>:203:                                    ; preds = %198, %191
  %204 = phi i32 [ 0, %198 ], [ 1, %191 ], !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %205 = add nuw nsw i32 %204, %184, !dbg !663
  br i1 %8, label %210, label %206, !dbg !588

; <label>:206:                                    ; preds = %185, %203
  %207 = phi i32 [ %189, %185 ], [ %205, %203 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !608
  %208 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !609
  %209 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !610
  br label %223, !dbg !664

; <label>:210:                                    ; preds = %203
  br i1 %11, label %211, label %53, !dbg !594

; <label>:211:                                    ; preds = %210, %218
  %212 = phi i64* [ %220, %218 ], [ %13, %210 ]
  %213 = phi i64* [ %219, %218 ], [ %0, %210 ]
  %214 = phi i64 [ %221, %218 ], [ 0, %210 ]
  %215 = load i64, i64* %213, align 8, !dbg !600, !tbaa !72
  %216 = load i64, i64* %212, align 8, !dbg !601, !tbaa !72
  %217 = icmp eq i64 %215, %216, !dbg !602
  br i1 %217, label %218, label %223, !dbg !603

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds i64, i64* %213, i64 1, !dbg !604
  %220 = getelementptr inbounds i64, i64* %212, i64 1, !dbg !605
  %221 = add nuw nsw i64 %214, 1, !dbg !606
  %222 = icmp ult i64 %221, %9, !dbg !607
  br i1 %222, label %211, label %223, !dbg !597, !llvm.loop !461

; <label>:223:                                    ; preds = %218, %211, %55, %206
  %224 = phi i32 [ %207, %206 ], [ 0, %55 ], [ %205, %211 ], [ %205, %218 ]
  %225 = phi i32 [ %208, %206 ], [ 0, %55 ], [ 1, %211 ], [ 0, %218 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  %226 = add nsw i32 %225, %224, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  %227 = add nsw i32 %163, %226, !dbg !666
  br i1 %7, label %73, label %75, !dbg !667

; <label>:228:                                    ; preds = %96, %93
  %229 = phi i32 [ %94, %93 ], [ %97, %96 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !650
  %230 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !651
  %231 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %232 = add nsw i32 %230, %229, !dbg !668
  br label %249, !dbg !630

; <label>:233:                                    ; preds = %96
  br i1 %11, label %234, label %78, !dbg !636

; <label>:234:                                    ; preds = %233, %241
  %235 = phi i64* [ %243, %241 ], [ %13, %233 ]
  %236 = phi i64* [ %242, %241 ], [ %0, %233 ]
  %237 = phi i64 [ %244, %241 ], [ 0, %233 ]
  %238 = load i64, i64* %236, align 8, !dbg !642, !tbaa !72
  %239 = load i64, i64* %235, align 8, !dbg !643, !tbaa !72
  %240 = icmp eq i64 %238, %239, !dbg !644
  br i1 %240, label %241, label %246, !dbg !645

; <label>:241:                                    ; preds = %234
  %242 = getelementptr inbounds i64, i64* %236, i64 1, !dbg !646
  %243 = getelementptr inbounds i64, i64* %235, i64 1, !dbg !647
  %244 = add nuw nsw i64 %237, 1, !dbg !648
  %245 = icmp ult i64 %244, %9, !dbg !649
  br i1 %245, label %234, label %246, !dbg !639, !llvm.loop !461

; <label>:246:                                    ; preds = %241, %234
  %247 = phi i32 [ 0, %241 ], [ 1, %234 ], !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %248 = add nuw nsw i32 %247, %97, !dbg !668
  br i1 %8, label %254, label %249, !dbg !630

; <label>:249:                                    ; preds = %246, %228
  %250 = phi i32 [ %232, %228 ], [ %248, %246 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !650
  %251 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !651
  %252 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %253 = add nsw i32 %251, %250, !dbg !668
  br label %270, !dbg !630

; <label>:254:                                    ; preds = %246
  br i1 %11, label %255, label %78, !dbg !636

; <label>:255:                                    ; preds = %254, %262
  %256 = phi i64* [ %264, %262 ], [ %13, %254 ]
  %257 = phi i64* [ %263, %262 ], [ %0, %254 ]
  %258 = phi i64 [ %265, %262 ], [ 0, %254 ]
  %259 = load i64, i64* %257, align 8, !dbg !642, !tbaa !72
  %260 = load i64, i64* %256, align 8, !dbg !643, !tbaa !72
  %261 = icmp eq i64 %259, %260, !dbg !644
  br i1 %261, label %262, label %267, !dbg !645

; <label>:262:                                    ; preds = %255
  %263 = getelementptr inbounds i64, i64* %257, i64 1, !dbg !646
  %264 = getelementptr inbounds i64, i64* %256, i64 1, !dbg !647
  %265 = add nuw nsw i64 %258, 1, !dbg !648
  %266 = icmp ult i64 %265, %9, !dbg !649
  br i1 %266, label %255, label %267, !dbg !639, !llvm.loop !461

; <label>:267:                                    ; preds = %262, %255
  %268 = phi i32 [ 0, %262 ], [ 1, %255 ], !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %269 = add nuw nsw i32 %268, %248, !dbg !668
  br i1 %8, label %274, label %270, !dbg !630

; <label>:270:                                    ; preds = %249, %267
  %271 = phi i32 [ %253, %249 ], [ %269, %267 ]
  tail call void @memtest_progress_start(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %17) #6, !dbg !650
  %272 = tail call i32 @memtest_compare(i64* %0, i64 %1, i32 %3) #6, !dbg !651
  %273 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !652
  br label %287, !dbg !669

; <label>:274:                                    ; preds = %267
  br i1 %11, label %275, label %78, !dbg !636

; <label>:275:                                    ; preds = %274, %282
  %276 = phi i64* [ %284, %282 ], [ %13, %274 ]
  %277 = phi i64* [ %283, %282 ], [ %0, %274 ]
  %278 = phi i64 [ %285, %282 ], [ 0, %274 ]
  %279 = load i64, i64* %277, align 8, !dbg !642, !tbaa !72
  %280 = load i64, i64* %276, align 8, !dbg !643, !tbaa !72
  %281 = icmp eq i64 %279, %280, !dbg !644
  br i1 %281, label %282, label %287, !dbg !645

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i64, i64* %277, i64 1, !dbg !646
  %284 = getelementptr inbounds i64, i64* %276, i64 1, !dbg !647
  %285 = add nuw nsw i64 %278, 1, !dbg !648
  %286 = icmp ult i64 %285, %9, !dbg !649
  br i1 %286, label %275, label %287, !dbg !639, !llvm.loop !461

; <label>:287:                                    ; preds = %282, %275, %80, %270
  %288 = phi i32 [ %271, %270 ], [ 0, %80 ], [ %269, %275 ], [ %269, %282 ]
  %289 = phi i32 [ %272, %270 ], [ 0, %80 ], [ 1, %275 ], [ 0, %282 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  %290 = add nsw i32 %289, %288, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  %291 = add nsw i32 %227, %290, !dbg !671
  %292 = icmp eq i32 %17, %2, !dbg !519
  br i1 %292, label %98, label %14, !dbg !520, !llvm.loop !672
}

; Function Attrs: noredzone nounwind
define dso_local i32 @memtest_preserving_test(i64*, i64, i32) local_unnamed_addr #0 !dbg !674 {
  %4 = alloca [131072 x i64], align 16
  %5 = bitcast [131072 x i64]* %4 to i8*, !dbg !693
  call void @llvm.lifetime.start.p0i8(i64 1048576, i8* nonnull %5) #7, !dbg !693
  %6 = and i64 %1, 4095, !dbg !698
  %7 = icmp ne i64 %6, 0, !dbg !698
  %8 = icmp ult i64 %1, 8192, !dbg !700
  %9 = or i1 %8, %7, !dbg !702
  br i1 %9, label %364, label %10, !dbg !702

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i32 %2, 0
  br label %12, !dbg !703

; <label>:12:                                     ; preds = %10, %359
  %13 = phi i64* [ %363, %359 ], [ %0, %10 ], !dbg !704
  %14 = phi i64 [ %362, %359 ], [ %1, %10 ], !dbg !704
  %15 = phi i32 [ %360, %359 ], [ 0, %10 ], !dbg !697
  switch i64 %14, label %18 [
    i64 0, label %364
    i64 4096, label %16
  ], !dbg !703

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i64, i64* %13, i64 -512, !dbg !705
  br label %20, !dbg !709

; <label>:18:                                     ; preds = %12
  %19 = icmp ult i64 %14, 1048576, !dbg !709
  br i1 %19, label %20, label %23, !dbg !709

; <label>:20:                                     ; preds = %16, %18
  %21 = phi i64 [ 8192, %16 ], [ %14, %18 ]
  %22 = phi i64* [ %17, %16 ], [ %13, %18 ]
  br label %23, !dbg !709

; <label>:23:                                     ; preds = %18, %20
  %24 = phi i64 [ %21, %20 ], [ %14, %18 ]
  %25 = phi i64* [ %22, %20 ], [ %13, %18 ]
  %26 = phi i64 [ %21, %20 ], [ 1048576, %18 ]
  %27 = and i64 %26, 4096, !dbg !711
  %28 = icmp eq i64 %27, 0, !dbg !711
  %29 = add nsw i64 %26, -4096, !dbg !713
  %30 = select i1 %28, i64 %26, i64 %29, !dbg !714
  %31 = bitcast i64* %25 to i8*, !dbg !715
  %32 = call i8* @memcpy(i8* nonnull %5, i8* %31, i64 %30) #6, !dbg !716
  %33 = lshr i64 %30, 3
  br i1 %11, label %359, label %34, !dbg !717

; <label>:34:                                     ; preds = %23
  %35 = icmp eq i64 %33, 0
  %36 = lshr i64 %30, 4
  %37 = lshr i64 %30, 13
  %38 = and i64 %30, 4095
  %39 = icmp eq i64 %38, 0
  %40 = icmp eq i64 %37, 0
  %41 = icmp eq i64 %36, 0
  %42 = getelementptr inbounds i64, i64* %25, i64 %36
  %43 = and i64 %33, 2305843009213693948, !dbg !717
  %44 = lshr i64 %30, 5, !dbg !717
  %45 = shl nuw nsw i64 %44, 2, !dbg !717
  %46 = add nsw i64 %45, -4, !dbg !717
  %47 = lshr exact i64 %46, 2, !dbg !717
  %48 = add nuw nsw i64 %47, 1, !dbg !717
  %49 = add nsw i64 %37, -1, !dbg !717
  %50 = icmp ult i64 %30, 32
  %51 = and i64 %37, 1
  %52 = icmp eq i64 %49, 0
  %53 = sub nsw i64 %37, %51
  %54 = icmp eq i64 %51, 0
  %55 = and i64 %33, 2305843009213693948
  %56 = getelementptr i64, i64* %25, i64 %43
  %57 = and i64 %48, 1
  %58 = icmp eq i64 %46, 0
  %59 = sub nsw i64 %48, %57
  %60 = icmp eq i64 %57, 0
  %61 = icmp eq i64 %33, %55
  %62 = and i64 %37, 7
  %63 = icmp ult i64 %49, 7
  %64 = sub nsw i64 %37, %62
  %65 = icmp eq i64 %62, 0
  %66 = and i64 %37, 7
  %67 = icmp ult i64 %49, 7
  %68 = sub nsw i64 %37, %66
  %69 = icmp eq i64 %66, 0
  br label %70, !dbg !717

; <label>:70:                                     ; preds = %34, %510
  %71 = phi i32 [ 0, %34 ], [ %73, %510 ]
  %72 = phi i32 [ %15, %34 ], [ %514, %510 ]
  %73 = add nuw nsw i32 %71, 1, !dbg !718
  br i1 %35, label %156, label %74, !dbg !727

; <label>:74:                                     ; preds = %70
  br i1 %50, label %135, label %75, !dbg !728

; <label>:75:                                     ; preds = %74
  br i1 %58, label %115, label %76, !dbg !728

; <label>:76:                                     ; preds = %75, %76
  %77 = phi i64 [ %112, %76 ], [ 0, %75 ], !dbg !729
  %78 = phi i64 [ %113, %76 ], [ %59, %75 ]
  %79 = getelementptr i64, i64* %25, i64 %77
  %80 = or i64 %77, 1
  %81 = getelementptr i64, i64* %25, i64 %80
  %82 = insertelement <2 x i64*> undef, i64* %79, i32 0
  %83 = insertelement <2 x i64*> %82, i64* %81, i32 1
  %84 = or i64 %77, 2
  %85 = getelementptr i64, i64* %25, i64 %84
  %86 = or i64 %77, 3
  %87 = getelementptr i64, i64* %25, i64 %86
  %88 = insertelement <2 x i64*> undef, i64* %85, i32 0
  %89 = insertelement <2 x i64*> %88, i64* %87, i32 1
  %90 = ptrtoint <2 x i64*> %83 to <2 x i64>, !dbg !729
  %91 = ptrtoint <2 x i64*> %89 to <2 x i64>, !dbg !729
  %92 = bitcast i64* %79 to <2 x i64>*, !dbg !730
  store <2 x i64> %90, <2 x i64>* %92, align 8, !dbg !730, !tbaa !72
  %93 = getelementptr i64, i64* %79, i64 2, !dbg !730
  %94 = bitcast i64* %93 to <2 x i64>*, !dbg !730
  store <2 x i64> %91, <2 x i64>* %94, align 8, !dbg !730, !tbaa !72
  %95 = or i64 %77, 4, !dbg !729
  %96 = getelementptr i64, i64* %25, i64 %95
  %97 = or i64 %77, 5
  %98 = getelementptr i64, i64* %25, i64 %97
  %99 = insertelement <2 x i64*> undef, i64* %96, i32 0
  %100 = insertelement <2 x i64*> %99, i64* %98, i32 1
  %101 = or i64 %77, 6
  %102 = getelementptr i64, i64* %25, i64 %101
  %103 = or i64 %77, 7
  %104 = getelementptr i64, i64* %25, i64 %103
  %105 = insertelement <2 x i64*> undef, i64* %102, i32 0
  %106 = insertelement <2 x i64*> %105, i64* %104, i32 1
  %107 = ptrtoint <2 x i64*> %100 to <2 x i64>, !dbg !729
  %108 = ptrtoint <2 x i64*> %106 to <2 x i64>, !dbg !729
  %109 = bitcast i64* %96 to <2 x i64>*, !dbg !730
  store <2 x i64> %107, <2 x i64>* %109, align 8, !dbg !730, !tbaa !72
  %110 = getelementptr i64, i64* %96, i64 2, !dbg !730
  %111 = bitcast i64* %110 to <2 x i64>*, !dbg !730
  store <2 x i64> %108, <2 x i64>* %111, align 8, !dbg !730, !tbaa !72
  %112 = add i64 %77, 8, !dbg !729
  %113 = add i64 %78, -2, !dbg !729
  %114 = icmp eq i64 %113, 0, !dbg !729
  br i1 %114, label %115, label %76, !dbg !729, !llvm.loop !731

; <label>:115:                                    ; preds = %76, %75
  %116 = phi i64 [ 0, %75 ], [ %112, %76 ]
  br i1 %60, label %134, label %117, !dbg !729

; <label>:117:                                    ; preds = %115
  %118 = getelementptr i64, i64* %25, i64 %116
  %119 = or i64 %116, 1
  %120 = getelementptr i64, i64* %25, i64 %119
  %121 = insertelement <2 x i64*> undef, i64* %118, i32 0
  %122 = insertelement <2 x i64*> %121, i64* %120, i32 1
  %123 = or i64 %116, 2
  %124 = getelementptr i64, i64* %25, i64 %123
  %125 = or i64 %116, 3
  %126 = getelementptr i64, i64* %25, i64 %125
  %127 = insertelement <2 x i64*> undef, i64* %124, i32 0
  %128 = insertelement <2 x i64*> %127, i64* %126, i32 1
  %129 = ptrtoint <2 x i64*> %122 to <2 x i64>, !dbg !729
  %130 = ptrtoint <2 x i64*> %128 to <2 x i64>, !dbg !729
  %131 = bitcast i64* %118 to <2 x i64>*, !dbg !730
  store <2 x i64> %129, <2 x i64>* %131, align 8, !dbg !730, !tbaa !72
  %132 = getelementptr i64, i64* %118, i64 2, !dbg !730
  %133 = bitcast i64* %132 to <2 x i64>*, !dbg !730
  store <2 x i64> %130, <2 x i64>* %133, align 8, !dbg !730, !tbaa !72
  br label %134

; <label>:134:                                    ; preds = %115, %117
  br i1 %61, label %145, label %135, !dbg !728

; <label>:135:                                    ; preds = %134, %74
  %136 = phi i64* [ %25, %74 ], [ %56, %134 ]
  %137 = phi i64 [ 0, %74 ], [ %55, %134 ]
  br label %138, !dbg !728

; <label>:138:                                    ; preds = %135, %138
  %139 = phi i64* [ %142, %138 ], [ %136, %135 ]
  %140 = phi i64 [ %143, %138 ], [ %137, %135 ]
  %141 = ptrtoint i64* %139 to i64, !dbg !728
  store i64 %141, i64* %139, align 8, !dbg !730, !tbaa !72
  %142 = getelementptr inbounds i64, i64* %139, i64 1, !dbg !733
  %143 = add nuw nsw i64 %140, 1, !dbg !729
  %144 = icmp eq i64 %143, %33, !dbg !734
  br i1 %144, label %145, label %138, !dbg !727, !llvm.loop !735

; <label>:145:                                    ; preds = %138, %134
  br label %146, !dbg !737

; <label>:146:                                    ; preds = %145, %152
  %147 = phi i64* [ %153, %152 ], [ %25, %145 ]
  %148 = phi i64 [ %154, %152 ], [ 0, %145 ]
  %149 = load i64, i64* %147, align 8, !dbg !737, !tbaa !72
  %150 = ptrtoint i64* %147 to i64, !dbg !738
  %151 = icmp eq i64 %149, %150, !dbg !739
  br i1 %151, label %152, label %156, !dbg !740

; <label>:152:                                    ; preds = %146
  %153 = getelementptr inbounds i64, i64* %147, i64 1, !dbg !741
  %154 = add nuw nsw i64 %148, 1, !dbg !742
  %155 = icmp ult i64 %154, %33, !dbg !743
  br i1 %155, label %146, label %156, !dbg !744, !llvm.loop !223

; <label>:156:                                    ; preds = %146, %152, %70
  %157 = phi i32 [ 0, %70 ], [ 1, %146 ], [ 0, %152 ], !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  %158 = add nsw i32 %157, %72, !dbg !747
  br i1 %39, label %160, label %159, !dbg !757

; <label>:159:                                    ; preds = %156
  call void @__assert_func(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.memtest_fill_random, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !757
  unreachable, !dbg !757

; <label>:160:                                    ; preds = %156, %204
  %161 = phi i64 [ %205, %204 ], [ -3372857614747716250, %156 ]
  %162 = phi i64 [ %206, %204 ], [ 0, %156 ]
  %163 = getelementptr inbounds i64, i64* %25, i64 %162, !dbg !759
  br i1 %40, label %204, label %164, !dbg !762

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds i64, i64* %163, i64 %36, !dbg !763
  br i1 %52, label %191, label %166, !dbg !762

; <label>:166:                                    ; preds = %164, %166
  %167 = phi i64 [ %185, %166 ], [ %161, %164 ]
  %168 = phi i64* [ %188, %166 ], [ %165, %164 ]
  %169 = phi i64* [ %187, %166 ], [ %163, %164 ]
  %170 = phi i64 [ %189, %166 ], [ %53, %164 ]
  %171 = lshr i64 %167, 12, !dbg !765
  %172 = xor i64 %171, %167, !dbg !765
  %173 = shl i64 %172, 25, !dbg !765
  %174 = xor i64 %173, %172, !dbg !765
  %175 = lshr i64 %174, 27, !dbg !765
  %176 = xor i64 %175, %174, !dbg !765
  %177 = mul i64 %176, 2685821657736338717, !dbg !765
  store i64 %177, i64* %168, align 8, !dbg !766, !tbaa !72
  store i64 %177, i64* %169, align 8, !dbg !767, !tbaa !72
  %178 = getelementptr inbounds i64, i64* %169, i64 512, !dbg !768
  %179 = getelementptr inbounds i64, i64* %168, i64 512, !dbg !769
  %180 = lshr i64 %176, 12, !dbg !765
  %181 = xor i64 %180, %176, !dbg !765
  %182 = shl i64 %181, 25, !dbg !765
  %183 = xor i64 %182, %181, !dbg !765
  %184 = lshr i64 %183, 27, !dbg !765
  %185 = xor i64 %184, %183, !dbg !765
  %186 = mul i64 %185, 2685821657736338717, !dbg !765
  store i64 %186, i64* %179, align 8, !dbg !766, !tbaa !72
  store i64 %186, i64* %178, align 8, !dbg !767, !tbaa !72
  %187 = getelementptr inbounds i64, i64* %169, i64 1024, !dbg !768
  %188 = getelementptr inbounds i64, i64* %168, i64 1024, !dbg !769
  %189 = add i64 %170, -2, !dbg !762
  %190 = icmp eq i64 %189, 0, !dbg !762
  br i1 %190, label %191, label %166, !dbg !762, !llvm.loop !305

; <label>:191:                                    ; preds = %166, %164
  %192 = phi i64 [ undef, %164 ], [ %185, %166 ]
  %193 = phi i64 [ %161, %164 ], [ %185, %166 ]
  %194 = phi i64* [ %165, %164 ], [ %188, %166 ]
  %195 = phi i64* [ %163, %164 ], [ %187, %166 ]
  br i1 %54, label %204, label %196, !dbg !762

; <label>:196:                                    ; preds = %191
  %197 = lshr i64 %193, 12, !dbg !765
  %198 = xor i64 %197, %193, !dbg !765
  %199 = shl i64 %198, 25, !dbg !765
  %200 = xor i64 %199, %198, !dbg !765
  %201 = lshr i64 %200, 27, !dbg !765
  %202 = xor i64 %201, %200, !dbg !765
  %203 = mul i64 %202, 2685821657736338717, !dbg !765
  store i64 %203, i64* %194, align 8, !dbg !766, !tbaa !72
  store i64 %203, i64* %195, align 8, !dbg !767, !tbaa !72
  br label %204, !dbg !770

; <label>:204:                                    ; preds = %196, %191, %160
  %205 = phi i64 [ %161, %160 ], [ %192, %191 ], [ %202, %196 ], !dbg !771
  %206 = add nuw nsw i64 %162, 1, !dbg !770
  %207 = icmp eq i64 %206, 512, !dbg !772
  br i1 %207, label %208, label %160, !dbg !773, !llvm.loop !310

; <label>:208:                                    ; preds = %204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %41, label %209, label %210, !dbg !817

; <label>:209:                                    ; preds = %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %378, !dbg !817

; <label>:210:                                    ; preds = %208, %217
  %211 = phi i64* [ %219, %217 ], [ %42, %208 ]
  %212 = phi i64* [ %218, %217 ], [ %25, %208 ]
  %213 = phi i64 [ %220, %217 ], [ 0, %208 ]
  %214 = load i64, i64* %212, align 8, !dbg !820, !tbaa !72
  %215 = load i64, i64* %211, align 8, !dbg !821, !tbaa !72
  %216 = icmp eq i64 %214, %215, !dbg !822
  br i1 %216, label %217, label %222, !dbg !823

; <label>:217:                                    ; preds = %210
  %218 = getelementptr inbounds i64, i64* %212, i64 1, !dbg !824
  %219 = getelementptr inbounds i64, i64* %211, i64 1, !dbg !825
  %220 = add nuw nsw i64 %213, 1, !dbg !826
  %221 = icmp ult i64 %220, %36, !dbg !827
  br i1 %221, label %210, label %222, !dbg !817, !llvm.loop !461

; <label>:222:                                    ; preds = %210, %217
  %223 = phi i32 [ 0, %217 ], [ 1, %210 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %41, label %378, label %366, !dbg !817

; <label>:224:                                    ; preds = %270, %412
  %225 = phi i64 [ 0, %412 ], [ %271, %270 ]
  %226 = getelementptr inbounds i64, i64* %25, i64 %225, !dbg !831
  %227 = shl i64 %225, 63, !dbg !833
  br i1 %40, label %270, label %228, !dbg !835

; <label>:228:                                    ; preds = %224
  %229 = ashr exact i64 %227, 63, !dbg !833
  %230 = getelementptr inbounds i64, i64* %226, i64 %36, !dbg !837
  %231 = ashr exact i64 %227, 47
  %232 = or i64 %231, %229
  %233 = ashr exact i64 %227, 31
  %234 = or i64 %232, %233
  %235 = ashr exact i64 %227, 15
  %236 = or i64 %234, %235
  br i1 %63, label %259, label %237, !dbg !835

; <label>:237:                                    ; preds = %228, %237
  %238 = phi i64* [ %256, %237 ], [ %230, %228 ]
  %239 = phi i64* [ %255, %237 ], [ %226, %228 ]
  %240 = phi i64 [ %257, %237 ], [ %64, %228 ]
  store i64 %236, i64* %238, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %239, align 8, !dbg !840, !tbaa !72
  %241 = getelementptr inbounds i64, i64* %239, i64 512, !dbg !841
  %242 = getelementptr inbounds i64, i64* %238, i64 512, !dbg !842
  store i64 %236, i64* %242, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %241, align 8, !dbg !840, !tbaa !72
  %243 = getelementptr inbounds i64, i64* %239, i64 1024, !dbg !841
  %244 = getelementptr inbounds i64, i64* %238, i64 1024, !dbg !842
  store i64 %236, i64* %244, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %243, align 8, !dbg !840, !tbaa !72
  %245 = getelementptr inbounds i64, i64* %239, i64 1536, !dbg !841
  %246 = getelementptr inbounds i64, i64* %238, i64 1536, !dbg !842
  store i64 %236, i64* %246, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %245, align 8, !dbg !840, !tbaa !72
  %247 = getelementptr inbounds i64, i64* %239, i64 2048, !dbg !841
  %248 = getelementptr inbounds i64, i64* %238, i64 2048, !dbg !842
  store i64 %236, i64* %248, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %247, align 8, !dbg !840, !tbaa !72
  %249 = getelementptr inbounds i64, i64* %239, i64 2560, !dbg !841
  %250 = getelementptr inbounds i64, i64* %238, i64 2560, !dbg !842
  store i64 %236, i64* %250, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %249, align 8, !dbg !840, !tbaa !72
  %251 = getelementptr inbounds i64, i64* %239, i64 3072, !dbg !841
  %252 = getelementptr inbounds i64, i64* %238, i64 3072, !dbg !842
  store i64 %236, i64* %252, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %251, align 8, !dbg !840, !tbaa !72
  %253 = getelementptr inbounds i64, i64* %239, i64 3584, !dbg !841
  %254 = getelementptr inbounds i64, i64* %238, i64 3584, !dbg !842
  store i64 %236, i64* %254, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %253, align 8, !dbg !840, !tbaa !72
  %255 = getelementptr inbounds i64, i64* %239, i64 4096, !dbg !841
  %256 = getelementptr inbounds i64, i64* %238, i64 4096, !dbg !842
  %257 = add i64 %240, -8, !dbg !835
  %258 = icmp eq i64 %257, 0, !dbg !835
  br i1 %258, label %259, label %237, !dbg !835, !llvm.loop !391

; <label>:259:                                    ; preds = %237, %228
  %260 = phi i64* [ %230, %228 ], [ %256, %237 ]
  %261 = phi i64* [ %226, %228 ], [ %255, %237 ]
  br i1 %65, label %270, label %262, !dbg !835

; <label>:262:                                    ; preds = %259, %262
  %263 = phi i64* [ %267, %262 ], [ %260, %259 ]
  %264 = phi i64* [ %266, %262 ], [ %261, %259 ]
  %265 = phi i64 [ %268, %262 ], [ %62, %259 ]
  store i64 %236, i64* %263, align 8, !dbg !839, !tbaa !72
  store i64 %236, i64* %264, align 8, !dbg !840, !tbaa !72
  %266 = getelementptr inbounds i64, i64* %264, i64 512, !dbg !841
  %267 = getelementptr inbounds i64, i64* %263, i64 512, !dbg !842
  %268 = add i64 %265, -1, !dbg !835
  %269 = icmp eq i64 %268, 0, !dbg !835
  br i1 %269, label %270, label %262, !dbg !835, !llvm.loop !843

; <label>:270:                                    ; preds = %259, %262, %224
  %271 = add nuw nsw i64 %225, 1, !dbg !845
  %272 = icmp eq i64 %271, 512, !dbg !846
  br i1 %272, label %273, label %224, !dbg !847, !llvm.loop !395

; <label>:273:                                    ; preds = %270
  %274 = add nuw nsw i32 %414, %413, !dbg !848
  %275 = add nsw i32 %158, %274, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %41, label %276, label %277, !dbg !894

; <label>:276:                                    ; preds = %273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %427, !dbg !894

; <label>:277:                                    ; preds = %273, %284
  %278 = phi i64* [ %286, %284 ], [ %42, %273 ]
  %279 = phi i64* [ %285, %284 ], [ %25, %273 ]
  %280 = phi i64 [ %287, %284 ], [ 0, %273 ]
  %281 = load i64, i64* %279, align 8, !dbg !897, !tbaa !72
  %282 = load i64, i64* %278, align 8, !dbg !898, !tbaa !72
  %283 = icmp eq i64 %281, %282, !dbg !899
  br i1 %283, label %284, label %289, !dbg !900

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i64, i64* %279, i64 1, !dbg !901
  %286 = getelementptr inbounds i64, i64* %278, i64 1, !dbg !902
  %287 = add nuw nsw i64 %280, 1, !dbg !903
  %288 = icmp ult i64 %287, %36, !dbg !904
  br i1 %288, label %277, label %289, !dbg !894, !llvm.loop !461

; <label>:289:                                    ; preds = %277, %284
  %290 = phi i32 [ 0, %284 ], [ 1, %277 ], !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %41, label %427, label %415, !dbg !894

; <label>:291:                                    ; preds = %338, %461
  %292 = phi i64 [ 0, %461 ], [ %339, %338 ]
  %293 = getelementptr inbounds i64, i64* %25, i64 %292, !dbg !908
  %294 = and i64 %292, 1, !dbg !910
  %295 = icmp eq i64 %294, 0, !dbg !910
  %296 = select i1 %295, i64 -6148914691236517206, i64 6148914691236517205, !dbg !911
  br i1 %40, label %338, label %297, !dbg !914

; <label>:297:                                    ; preds = %291
  %298 = getelementptr inbounds i64, i64* %293, i64 %36, !dbg !915
  %299 = shl i64 %296, 16
  %300 = or i64 %299, %296
  %301 = shl i64 %296, 32
  %302 = or i64 %300, %301
  %303 = shl i64 %296, 48
  %304 = or i64 %302, %303
  br i1 %67, label %327, label %305, !dbg !914

; <label>:305:                                    ; preds = %297, %305
  %306 = phi i64* [ %324, %305 ], [ %298, %297 ]
  %307 = phi i64* [ %323, %305 ], [ %293, %297 ]
  %308 = phi i64 [ %325, %305 ], [ %68, %297 ]
  store i64 %304, i64* %306, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %307, align 8, !dbg !918, !tbaa !72
  %309 = getelementptr inbounds i64, i64* %307, i64 512, !dbg !919
  %310 = getelementptr inbounds i64, i64* %306, i64 512, !dbg !920
  store i64 %304, i64* %310, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %309, align 8, !dbg !918, !tbaa !72
  %311 = getelementptr inbounds i64, i64* %307, i64 1024, !dbg !919
  %312 = getelementptr inbounds i64, i64* %306, i64 1024, !dbg !920
  store i64 %304, i64* %312, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %311, align 8, !dbg !918, !tbaa !72
  %313 = getelementptr inbounds i64, i64* %307, i64 1536, !dbg !919
  %314 = getelementptr inbounds i64, i64* %306, i64 1536, !dbg !920
  store i64 %304, i64* %314, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %313, align 8, !dbg !918, !tbaa !72
  %315 = getelementptr inbounds i64, i64* %307, i64 2048, !dbg !919
  %316 = getelementptr inbounds i64, i64* %306, i64 2048, !dbg !920
  store i64 %304, i64* %316, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %315, align 8, !dbg !918, !tbaa !72
  %317 = getelementptr inbounds i64, i64* %307, i64 2560, !dbg !919
  %318 = getelementptr inbounds i64, i64* %306, i64 2560, !dbg !920
  store i64 %304, i64* %318, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %317, align 8, !dbg !918, !tbaa !72
  %319 = getelementptr inbounds i64, i64* %307, i64 3072, !dbg !919
  %320 = getelementptr inbounds i64, i64* %306, i64 3072, !dbg !920
  store i64 %304, i64* %320, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %319, align 8, !dbg !918, !tbaa !72
  %321 = getelementptr inbounds i64, i64* %307, i64 3584, !dbg !919
  %322 = getelementptr inbounds i64, i64* %306, i64 3584, !dbg !920
  store i64 %304, i64* %322, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %321, align 8, !dbg !918, !tbaa !72
  %323 = getelementptr inbounds i64, i64* %307, i64 4096, !dbg !919
  %324 = getelementptr inbounds i64, i64* %306, i64 4096, !dbg !920
  %325 = add i64 %308, -8, !dbg !914
  %326 = icmp eq i64 %325, 0, !dbg !914
  br i1 %326, label %327, label %305, !dbg !914, !llvm.loop !391

; <label>:327:                                    ; preds = %305, %297
  %328 = phi i64* [ %298, %297 ], [ %324, %305 ]
  %329 = phi i64* [ %293, %297 ], [ %323, %305 ]
  br i1 %69, label %338, label %330, !dbg !914

; <label>:330:                                    ; preds = %327, %330
  %331 = phi i64* [ %335, %330 ], [ %328, %327 ]
  %332 = phi i64* [ %334, %330 ], [ %329, %327 ]
  %333 = phi i64 [ %336, %330 ], [ %66, %327 ]
  store i64 %304, i64* %331, align 8, !dbg !917, !tbaa !72
  store i64 %304, i64* %332, align 8, !dbg !918, !tbaa !72
  %334 = getelementptr inbounds i64, i64* %332, i64 512, !dbg !919
  %335 = getelementptr inbounds i64, i64* %331, i64 512, !dbg !920
  %336 = add i64 %333, -1, !dbg !914
  %337 = icmp eq i64 %336, 0, !dbg !914
  br i1 %337, label %338, label %330, !dbg !914, !llvm.loop !921

; <label>:338:                                    ; preds = %327, %330, %291
  %339 = add nuw nsw i64 %292, 1, !dbg !922
  %340 = icmp eq i64 %339, 512, !dbg !923
  br i1 %340, label %341, label %291, !dbg !924, !llvm.loop !395

; <label>:341:                                    ; preds = %338
  %342 = add nuw nsw i32 %463, %462, !dbg !925
  %343 = add nsw i32 %275, %342, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %41, label %344, label %345, !dbg !970

; <label>:344:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %476, !dbg !970

; <label>:345:                                    ; preds = %341, %352
  %346 = phi i64* [ %354, %352 ], [ %42, %341 ]
  %347 = phi i64* [ %353, %352 ], [ %25, %341 ]
  %348 = phi i64 [ %355, %352 ], [ 0, %341 ]
  %349 = load i64, i64* %347, align 8, !dbg !973, !tbaa !72
  %350 = load i64, i64* %346, align 8, !dbg !974, !tbaa !72
  %351 = icmp eq i64 %349, %350, !dbg !975
  br i1 %351, label %352, label %357, !dbg !976

; <label>:352:                                    ; preds = %345
  %353 = getelementptr inbounds i64, i64* %347, i64 1, !dbg !977
  %354 = getelementptr inbounds i64, i64* %346, i64 1, !dbg !978
  %355 = add nuw nsw i64 %348, 1, !dbg !979
  %356 = icmp ult i64 %355, %36, !dbg !980
  br i1 %356, label %345, label %357, !dbg !970, !llvm.loop !461

; <label>:357:                                    ; preds = %345, %352
  %358 = phi i32 [ 0, %352 ], [ 1, %345 ], !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %41, label %476, label %464, !dbg !970

; <label>:359:                                    ; preds = %510, %23
  %360 = phi i32 [ %15, %23 ], [ %514, %510 ], !dbg !982
  %361 = call i8* @memcpy(i8* %31, i8* nonnull %5, i64 %30) #6, !dbg !983
  %362 = sub i64 %24, %30, !dbg !984
  %363 = getelementptr inbounds i64, i64* %25, i64 %33, !dbg !985
  br label %12, !dbg !703, !llvm.loop !986

; <label>:364:                                    ; preds = %12, %3
  %365 = phi i32 [ 0, %3 ], [ %15, %12 ], !dbg !988
  call void @llvm.lifetime.end.p0i8(i64 1048576, i8* nonnull %5) #7, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  ret i32 %365, !dbg !989

; <label>:366:                                    ; preds = %222, %373
  %367 = phi i64* [ %375, %373 ], [ %42, %222 ]
  %368 = phi i64* [ %374, %373 ], [ %25, %222 ]
  %369 = phi i64 [ %376, %373 ], [ 0, %222 ]
  %370 = load i64, i64* %368, align 8, !dbg !820, !tbaa !72
  %371 = load i64, i64* %367, align 8, !dbg !821, !tbaa !72
  %372 = icmp eq i64 %370, %371, !dbg !822
  br i1 %372, label %373, label %380, !dbg !823

; <label>:373:                                    ; preds = %366
  %374 = getelementptr inbounds i64, i64* %368, i64 1, !dbg !824
  %375 = getelementptr inbounds i64, i64* %367, i64 1, !dbg !825
  %376 = add nuw nsw i64 %369, 1, !dbg !826
  %377 = icmp ult i64 %376, %36, !dbg !827
  br i1 %377, label %366, label %380, !dbg !817, !llvm.loop !461

; <label>:378:                                    ; preds = %209, %222
  %379 = phi i32 [ 0, %209 ], [ %223, %222 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %395, !dbg !817

; <label>:380:                                    ; preds = %366, %373
  %381 = phi i32 [ 0, %373 ], [ 1, %366 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %382 = add nuw nsw i32 %381, %223, !dbg !848
  br i1 %41, label %395, label %383, !dbg !817

; <label>:383:                                    ; preds = %380, %390
  %384 = phi i64* [ %392, %390 ], [ %42, %380 ]
  %385 = phi i64* [ %391, %390 ], [ %25, %380 ]
  %386 = phi i64 [ %393, %390 ], [ 0, %380 ]
  %387 = load i64, i64* %385, align 8, !dbg !820, !tbaa !72
  %388 = load i64, i64* %384, align 8, !dbg !821, !tbaa !72
  %389 = icmp eq i64 %387, %388, !dbg !822
  br i1 %389, label %390, label %397, !dbg !823

; <label>:390:                                    ; preds = %383
  %391 = getelementptr inbounds i64, i64* %385, i64 1, !dbg !824
  %392 = getelementptr inbounds i64, i64* %384, i64 1, !dbg !825
  %393 = add nuw nsw i64 %386, 1, !dbg !826
  %394 = icmp ult i64 %393, %36, !dbg !827
  br i1 %394, label %383, label %397, !dbg !817, !llvm.loop !461

; <label>:395:                                    ; preds = %378, %380
  %396 = phi i32 [ %379, %378 ], [ %382, %380 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %412, !dbg !817

; <label>:397:                                    ; preds = %383, %390
  %398 = phi i32 [ 0, %390 ], [ 1, %383 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %399 = add nuw nsw i32 %398, %382, !dbg !848
  br i1 %41, label %412, label %400, !dbg !817

; <label>:400:                                    ; preds = %397, %407
  %401 = phi i64* [ %409, %407 ], [ %42, %397 ]
  %402 = phi i64* [ %408, %407 ], [ %25, %397 ]
  %403 = phi i64 [ %410, %407 ], [ 0, %397 ]
  %404 = load i64, i64* %402, align 8, !dbg !820, !tbaa !72
  %405 = load i64, i64* %401, align 8, !dbg !821, !tbaa !72
  %406 = icmp eq i64 %404, %405, !dbg !822
  br i1 %406, label %407, label %412, !dbg !823

; <label>:407:                                    ; preds = %400
  %408 = getelementptr inbounds i64, i64* %402, i64 1, !dbg !824
  %409 = getelementptr inbounds i64, i64* %401, i64 1, !dbg !825
  %410 = add nuw nsw i64 %403, 1, !dbg !826
  %411 = icmp ult i64 %410, %36, !dbg !827
  br i1 %411, label %400, label %412, !dbg !817, !llvm.loop !461

; <label>:412:                                    ; preds = %400, %407, %395, %397
  %413 = phi i32 [ %399, %397 ], [ %396, %395 ], [ %399, %407 ], [ %399, %400 ]
  %414 = phi i32 [ 0, %397 ], [ 0, %395 ], [ 1, %400 ], [ 0, %407 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %224, !dbg !847

; <label>:415:                                    ; preds = %289, %422
  %416 = phi i64* [ %424, %422 ], [ %42, %289 ]
  %417 = phi i64* [ %423, %422 ], [ %25, %289 ]
  %418 = phi i64 [ %425, %422 ], [ 0, %289 ]
  %419 = load i64, i64* %417, align 8, !dbg !897, !tbaa !72
  %420 = load i64, i64* %416, align 8, !dbg !898, !tbaa !72
  %421 = icmp eq i64 %419, %420, !dbg !899
  br i1 %421, label %422, label %429, !dbg !900

; <label>:422:                                    ; preds = %415
  %423 = getelementptr inbounds i64, i64* %417, i64 1, !dbg !901
  %424 = getelementptr inbounds i64, i64* %416, i64 1, !dbg !902
  %425 = add nuw nsw i64 %418, 1, !dbg !903
  %426 = icmp ult i64 %425, %36, !dbg !904
  br i1 %426, label %415, label %429, !dbg !894, !llvm.loop !461

; <label>:427:                                    ; preds = %276, %289
  %428 = phi i32 [ 0, %276 ], [ %290, %289 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %444, !dbg !894

; <label>:429:                                    ; preds = %415, %422
  %430 = phi i32 [ 0, %422 ], [ 1, %415 ], !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %431 = add nuw nsw i32 %430, %290, !dbg !925
  br i1 %41, label %444, label %432, !dbg !894

; <label>:432:                                    ; preds = %429, %439
  %433 = phi i64* [ %441, %439 ], [ %42, %429 ]
  %434 = phi i64* [ %440, %439 ], [ %25, %429 ]
  %435 = phi i64 [ %442, %439 ], [ 0, %429 ]
  %436 = load i64, i64* %434, align 8, !dbg !897, !tbaa !72
  %437 = load i64, i64* %433, align 8, !dbg !898, !tbaa !72
  %438 = icmp eq i64 %436, %437, !dbg !899
  br i1 %438, label %439, label %446, !dbg !900

; <label>:439:                                    ; preds = %432
  %440 = getelementptr inbounds i64, i64* %434, i64 1, !dbg !901
  %441 = getelementptr inbounds i64, i64* %433, i64 1, !dbg !902
  %442 = add nuw nsw i64 %435, 1, !dbg !903
  %443 = icmp ult i64 %442, %36, !dbg !904
  br i1 %443, label %432, label %446, !dbg !894, !llvm.loop !461

; <label>:444:                                    ; preds = %427, %429
  %445 = phi i32 [ %428, %427 ], [ %431, %429 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %461, !dbg !894

; <label>:446:                                    ; preds = %432, %439
  %447 = phi i32 [ 0, %439 ], [ 1, %432 ], !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %448 = add nuw nsw i32 %447, %431, !dbg !925
  br i1 %41, label %461, label %449, !dbg !894

; <label>:449:                                    ; preds = %446, %456
  %450 = phi i64* [ %458, %456 ], [ %42, %446 ]
  %451 = phi i64* [ %457, %456 ], [ %25, %446 ]
  %452 = phi i64 [ %459, %456 ], [ 0, %446 ]
  %453 = load i64, i64* %451, align 8, !dbg !897, !tbaa !72
  %454 = load i64, i64* %450, align 8, !dbg !898, !tbaa !72
  %455 = icmp eq i64 %453, %454, !dbg !899
  br i1 %455, label %456, label %461, !dbg !900

; <label>:456:                                    ; preds = %449
  %457 = getelementptr inbounds i64, i64* %451, i64 1, !dbg !901
  %458 = getelementptr inbounds i64, i64* %450, i64 1, !dbg !902
  %459 = add nuw nsw i64 %452, 1, !dbg !903
  %460 = icmp ult i64 %459, %36, !dbg !904
  br i1 %460, label %449, label %461, !dbg !894, !llvm.loop !461

; <label>:461:                                    ; preds = %449, %456, %444, %446
  %462 = phi i32 [ %448, %446 ], [ %445, %444 ], [ %448, %456 ], [ %448, %449 ]
  %463 = phi i32 [ 0, %446 ], [ 0, %444 ], [ 1, %449 ], [ 0, %456 ], !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br label %291, !dbg !924

; <label>:464:                                    ; preds = %357, %471
  %465 = phi i64* [ %473, %471 ], [ %42, %357 ]
  %466 = phi i64* [ %472, %471 ], [ %25, %357 ]
  %467 = phi i64 [ %474, %471 ], [ 0, %357 ]
  %468 = load i64, i64* %466, align 8, !dbg !973, !tbaa !72
  %469 = load i64, i64* %465, align 8, !dbg !974, !tbaa !72
  %470 = icmp eq i64 %468, %469, !dbg !975
  br i1 %470, label %471, label %478, !dbg !976

; <label>:471:                                    ; preds = %464
  %472 = getelementptr inbounds i64, i64* %466, i64 1, !dbg !977
  %473 = getelementptr inbounds i64, i64* %465, i64 1, !dbg !978
  %474 = add nuw nsw i64 %467, 1, !dbg !979
  %475 = icmp ult i64 %474, %36, !dbg !980
  br i1 %475, label %464, label %478, !dbg !970, !llvm.loop !461

; <label>:476:                                    ; preds = %344, %357
  %477 = phi i32 [ 0, %344 ], [ %358, %357 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %493, !dbg !970

; <label>:478:                                    ; preds = %464, %471
  %479 = phi i32 [ 0, %471 ], [ 1, %464 ], !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  %480 = add nuw nsw i32 %479, %358, !dbg !1010
  br i1 %41, label %493, label %481, !dbg !970

; <label>:481:                                    ; preds = %478, %488
  %482 = phi i64* [ %490, %488 ], [ %42, %478 ]
  %483 = phi i64* [ %489, %488 ], [ %25, %478 ]
  %484 = phi i64 [ %491, %488 ], [ 0, %478 ]
  %485 = load i64, i64* %483, align 8, !dbg !973, !tbaa !72
  %486 = load i64, i64* %482, align 8, !dbg !974, !tbaa !72
  %487 = icmp eq i64 %485, %486, !dbg !975
  br i1 %487, label %488, label %495, !dbg !976

; <label>:488:                                    ; preds = %481
  %489 = getelementptr inbounds i64, i64* %483, i64 1, !dbg !977
  %490 = getelementptr inbounds i64, i64* %482, i64 1, !dbg !978
  %491 = add nuw nsw i64 %484, 1, !dbg !979
  %492 = icmp ult i64 %491, %36, !dbg !980
  br i1 %492, label %481, label %495, !dbg !970, !llvm.loop !461

; <label>:493:                                    ; preds = %476, %478
  %494 = phi i32 [ %477, %476 ], [ %480, %478 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %510, !dbg !970

; <label>:495:                                    ; preds = %481, %488
  %496 = phi i32 [ 0, %488 ], [ 1, %481 ], !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  %497 = add nuw nsw i32 %496, %480, !dbg !1010
  br i1 %41, label %510, label %498, !dbg !970

; <label>:498:                                    ; preds = %495, %505
  %499 = phi i64* [ %507, %505 ], [ %42, %495 ]
  %500 = phi i64* [ %506, %505 ], [ %25, %495 ]
  %501 = phi i64 [ %508, %505 ], [ 0, %495 ]
  %502 = load i64, i64* %500, align 8, !dbg !973, !tbaa !72
  %503 = load i64, i64* %499, align 8, !dbg !974, !tbaa !72
  %504 = icmp eq i64 %502, %503, !dbg !975
  br i1 %504, label %505, label %510, !dbg !976

; <label>:505:                                    ; preds = %498
  %506 = getelementptr inbounds i64, i64* %500, i64 1, !dbg !977
  %507 = getelementptr inbounds i64, i64* %499, i64 1, !dbg !978
  %508 = add nuw nsw i64 %501, 1, !dbg !979
  %509 = icmp ult i64 %508, %36, !dbg !980
  br i1 %509, label %498, label %510, !dbg !970, !llvm.loop !461

; <label>:510:                                    ; preds = %498, %505, %493, %495
  %511 = phi i32 [ %497, %495 ], [ %494, %493 ], [ %497, %505 ], [ %497, %498 ]
  %512 = phi i32 [ 0, %495 ], [ 0, %493 ], [ 1, %498 ], [ 0, %505 ], !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  %513 = add nuw nsw i32 %512, %511, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  %514 = add nsw i32 %343, %513, !dbg !1012
  %515 = icmp eq i32 %73, %2, !dbg !1013
  br i1 %515, label %359, label %70, !dbg !717, !llvm.loop !1014
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @memtest_alloc_and_test(i64, i32) local_unnamed_addr #0 !dbg !1016 {
  %3 = shl i64 %0, 20, !dbg !1026
  %4 = tail call i8* @malloc(i64 %3) #6, !dbg !1028
  %5 = icmp eq i8* %4, null, !dbg !1029
  br i1 %5, label %6, label %14, !dbg !1031

; <label>:6:                                      ; preds = %2
  %7 = tail call %struct._reent* @__getreent() #6, !dbg !1032
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 3, !dbg !1032
  %9 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8, !dbg !1032, !tbaa !1034
  %10 = tail call i32* @__errno() #6, !dbg !1035
  %11 = load i32, i32* %10, align 4, !dbg !1035, !tbaa !1036
  %12 = tail call i8* @strerror(i32 %11) #6, !dbg !1037
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i64 %0, i8* %12) #6, !dbg !1038
  tail call void @exit(i32 1) #8, !dbg !1039
  unreachable, !dbg !1039

; <label>:14:                                     ; preds = %2
  %15 = bitcast i8* %4 to i64*, !dbg !1028
  %16 = tail call i32 @memtest_test(i64* %15, i64 %3, i32 %1, i32 1) #9, !dbg !1041
  tail call void @free(i8* nonnull %4) #6, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  ret void, !dbg !1043
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone noreturn nounwind
define dso_local void @memtest(i64, i32) local_unnamed_addr #5 !dbg !1044 {
  %3 = tail call i32 (i32, i32, ...) @ioctl(i32 1, i32 21523, %struct.winsize* nonnull @ws) #6, !dbg !1050
  %4 = icmp eq i32 %3, -1, !dbg !1052
  br i1 %4, label %5, label %6, !dbg !1053

; <label>:5:                                      ; preds = %2
  store i16 80, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 1), align 2, !dbg !1054, !tbaa !50
  store i16 20, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @ws, i64 0, i32 0), align 2, !dbg !1056, !tbaa !57
  br label %6, !dbg !1057

; <label>:6:                                      ; preds = %5, %2
  tail call void @memtest_alloc_and_test(i64 %0, i32 %1) #9, !dbg !1058
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1059
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1060
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1061
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !1062
  tail call void @exit(i32 0) #8, !dbg !1063
  unreachable, !dbg !1063
}

; Function Attrs: noredzone
declare dso_local i32 @ioctl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ws", scope: !2, file: !3, line: 59, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/memtest.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!0, !13, !19}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "progress_printed", scope: !2, file: !3, line: 60, type: !15, isLocal: false, isDefinition: true)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !7)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "progress_full", scope: !2, file: !3, line: 61, type: !15, isLocal: false, isDefinition: true)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !22, line: 73, size: 64, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/ioctl.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !26, !27, !28}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !21, file: !22, line: 74, baseType: !25, size: 16)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !21, file: !22, line: 75, baseType: !25, size: 16, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !21, file: !22, line: 76, baseType: !25, size: 16, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !21, file: !22, line: 77, baseType: !25, size: 16, offset: 48)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "memtest_progress_start", scope: !3, file: !3, line: 63, type: !34, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !38}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "title", arg: 1, scope: !33, file: !3, line: 63, type: !36)
!41 = !DILocalVariable(name: "pass", arg: 2, scope: !33, file: !3, line: 63, type: !38)
!42 = !DILocalVariable(name: "j", scope: !33, file: !3, line: 64, type: !38)
!43 = !DILocation(line: 63, column: 35, scope: !33)
!44 = !DILocation(line: 63, column: 46, scope: !33)
!45 = !DILocation(line: 66, column: 5, scope: !33)
!46 = !DILocation(line: 64, column: 9, scope: !33)
!47 = !DILocation(line: 68, column: 24, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 68, column: 5)
!49 = distinct !DILexicalBlock(scope: !33, file: !3, line: 68, column: 5)
!50 = !{!51, !52, i64 2}
!51 = !{!"winsize", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6}
!52 = !{!"short", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 68, column: 21, scope: !48)
!56 = !DILocation(line: 68, column: 35, scope: !48)
!57 = !{!51, !52, i64 0}
!58 = !DILocation(line: 68, column: 32, scope: !48)
!59 = !DILocation(line: 68, column: 41, scope: !48)
!60 = !DILocation(line: 68, column: 30, scope: !48)
!61 = !DILocation(line: 68, column: 19, scope: !48)
!62 = !DILocation(line: 68, column: 5, scope: !49)
!63 = !DILocation(line: 68, column: 51, scope: !48)
!64 = !DILocation(line: 68, column: 47, scope: !48)
!65 = distinct !{!65, !62, !66}
!66 = !DILocation(line: 68, column: 61, scope: !49)
!67 = !DILocation(line: 69, column: 5, scope: !33)
!68 = !DILocation(line: 70, column: 5, scope: !33)
!69 = !DILocation(line: 71, column: 5, scope: !33)
!70 = !DILocation(line: 72, column: 5, scope: !33)
!71 = !DILocation(line: 73, column: 22, scope: !33)
!72 = !{!73, !73, i64 0}
!73 = !{!"long", !53, i64 0}
!74 = !DILocation(line: 74, column: 24, scope: !33)
!75 = !DILocation(line: 74, column: 21, scope: !33)
!76 = !DILocation(line: 74, column: 35, scope: !33)
!77 = !DILocation(line: 74, column: 32, scope: !33)
!78 = !DILocation(line: 74, column: 41, scope: !33)
!79 = !DILocation(line: 74, column: 30, scope: !33)
!80 = !DILocation(line: 74, column: 19, scope: !33)
!81 = !DILocation(line: 75, column: 12, scope: !33)
!82 = !{!83, !85, i64 16}
!83 = !{!"_reent", !84, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !84, i64 32, !53, i64 36, !84, i64 64, !85, i64 72, !84, i64 80, !85, i64 88, !85, i64 96, !84, i64 104, !85, i64 112, !85, i64 120, !84, i64 128, !85, i64 136, !53, i64 144, !85, i64 504, !86, i64 512, !85, i64 1304, !88, i64 1312, !53, i64 1336}
!84 = !{!"int", !53, i64 0}
!85 = !{!"any pointer", !53, i64 0}
!86 = !{!"_atexit", !85, i64 0, !84, i64 8, !53, i64 16, !87, i64 272}
!87 = !{!"_on_exit_args", !53, i64 0, !53, i64 256, !84, i64 512, !84, i64 516}
!88 = !{!"_glue", !85, i64 0, !84, i64 8, !85, i64 16}
!89 = !DILocation(line: 75, column: 5, scope: !33)
!90 = !DILocation(line: 76, column: 1, scope: !33)
!91 = distinct !DISubprogram(name: "memtest_progress_end", scope: !3, file: !3, line: 78, type: !92, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !DILocation(line: 79, column: 5, scope: !91)
!95 = !DILocation(line: 80, column: 1, scope: !91)
!96 = distinct !DISubprogram(name: "memtest_progress_step", scope: !3, file: !3, line: 82, type: !97, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !15, !15, !37}
!99 = !{!100, !101, !102, !103, !104}
!100 = !DILocalVariable(name: "curr", arg: 1, scope: !96, file: !3, line: 82, type: !15)
!101 = !DILocalVariable(name: "size", arg: 2, scope: !96, file: !3, line: 82, type: !15)
!102 = !DILocalVariable(name: "c", arg: 3, scope: !96, file: !3, line: 82, type: !37)
!103 = !DILocalVariable(name: "chars", scope: !96, file: !3, line: 83, type: !15)
!104 = !DILocalVariable(name: "j", scope: !96, file: !3, line: 83, type: !15)
!105 = !DILocation(line: 82, column: 35, scope: !96)
!106 = !DILocation(line: 82, column: 48, scope: !96)
!107 = !DILocation(line: 82, column: 59, scope: !96)
!108 = !DILocation(line: 83, column: 46, scope: !96)
!109 = !DILocation(line: 83, column: 45, scope: !96)
!110 = !DILocation(line: 83, column: 60, scope: !96)
!111 = !DILocation(line: 83, column: 12, scope: !96)
!112 = !DILocation(line: 83, column: 67, scope: !96)
!113 = !DILocation(line: 85, column: 27, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 85, column: 5)
!115 = distinct !DILexicalBlock(scope: !96, file: !3, line: 85, column: 5)
!116 = !DILocation(line: 85, column: 19, scope: !114)
!117 = !DILocation(line: 85, column: 5, scope: !115)
!118 = !DILocation(line: 85, column: 50, scope: !114)
!119 = !DILocation(line: 85, column: 46, scope: !114)
!120 = !DILocation(line: 85, column: 26, scope: !114)
!121 = distinct !{!121, !117, !122}
!122 = !DILocation(line: 85, column: 63, scope: !115)
!123 = !DILocation(line: 86, column: 22, scope: !96)
!124 = !DILocation(line: 87, column: 12, scope: !96)
!125 = !DILocation(line: 87, column: 5, scope: !96)
!126 = !DILocation(line: 88, column: 1, scope: !96)
!127 = distinct !DISubprogram(name: "memtest_addressing", scope: !3, file: !3, line: 93, type: !128, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!38, !9, !15, !38}
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DILocalVariable(name: "l", arg: 1, scope: !127, file: !3, line: 93, type: !9)
!132 = !DILocalVariable(name: "bytes", arg: 2, scope: !127, file: !3, line: 93, type: !15)
!133 = !DILocalVariable(name: "interactive", arg: 3, scope: !127, file: !3, line: 93, type: !38)
!134 = !DILocalVariable(name: "words", scope: !127, file: !3, line: 94, type: !7)
!135 = !DILocalVariable(name: "j", scope: !127, file: !3, line: 95, type: !7)
!136 = !DILocalVariable(name: "p", scope: !127, file: !3, line: 95, type: !9)
!137 = !DILocation(line: 93, column: 39, scope: !127)
!138 = !DILocation(line: 93, column: 49, scope: !127)
!139 = !DILocation(line: 93, column: 60, scope: !127)
!140 = !DILocation(line: 94, column: 32, scope: !127)
!141 = !DILocation(line: 94, column: 19, scope: !127)
!142 = !DILocation(line: 95, column: 23, scope: !127)
!143 = !DILocation(line: 95, column: 19, scope: !127)
!144 = !DILocation(line: 99, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 99, column: 5)
!146 = distinct !DILexicalBlock(scope: !127, file: !3, line: 99, column: 5)
!147 = !DILocation(line: 99, column: 5, scope: !146)
!148 = !DILocation(line: 107, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !127, file: !3, line: 107, column: 5)
!150 = !DILocation(line: 100, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 99, column: 33)
!152 = !DILocation(line: 100, column: 12, scope: !151)
!153 = !DILocation(line: 101, column: 10, scope: !151)
!154 = !DILocation(line: 102, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 102, column: 13)
!156 = !DILocation(line: 102, column: 26, scope: !155)
!157 = !DILocation(line: 102, column: 31, scope: !155)
!158 = !DILocation(line: 82, column: 35, scope: !96, inlinedAt: !159)
!159 = distinct !DILocation(line: 103, column: 13, scope: !155)
!160 = !DILocation(line: 82, column: 48, scope: !96, inlinedAt: !159)
!161 = !DILocation(line: 82, column: 59, scope: !96, inlinedAt: !159)
!162 = !DILocation(line: 83, column: 46, scope: !96, inlinedAt: !159)
!163 = !DILocation(line: 83, column: 45, scope: !96, inlinedAt: !159)
!164 = !DILocation(line: 83, column: 60, scope: !96, inlinedAt: !159)
!165 = !DILocation(line: 83, column: 12, scope: !96, inlinedAt: !159)
!166 = !DILocation(line: 83, column: 67, scope: !96, inlinedAt: !159)
!167 = !DILocation(line: 85, column: 27, scope: !114, inlinedAt: !159)
!168 = !DILocation(line: 85, column: 19, scope: !114, inlinedAt: !159)
!169 = !DILocation(line: 85, column: 5, scope: !115, inlinedAt: !159)
!170 = !DILocation(line: 85, column: 50, scope: !114, inlinedAt: !159)
!171 = !DILocation(line: 85, column: 46, scope: !114, inlinedAt: !159)
!172 = !DILocation(line: 85, column: 26, scope: !114, inlinedAt: !159)
!173 = !DILocation(line: 86, column: 22, scope: !96, inlinedAt: !159)
!174 = !DILocation(line: 87, column: 12, scope: !96, inlinedAt: !159)
!175 = !DILocation(line: 87, column: 5, scope: !96, inlinedAt: !159)
!176 = !DILocation(line: 88, column: 1, scope: !96, inlinedAt: !159)
!177 = !DILocation(line: 103, column: 13, scope: !155)
!178 = !DILocation(line: 99, column: 29, scope: !145)
!179 = distinct !{!179, !147, !180}
!180 = !DILocation(line: 104, column: 5, scope: !146)
!181 = !DILocation(line: 108, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 108, column: 13)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 107, column: 33)
!184 = distinct !DILexicalBlock(scope: !149, file: !3, line: 107, column: 5)
!185 = !DILocation(line: 108, column: 19, scope: !182)
!186 = !DILocation(line: 108, column: 16, scope: !182)
!187 = !DILocation(line: 108, column: 13, scope: !183)
!188 = !DILocation(line: 109, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 109, column: 17)
!190 = distinct !DILexicalBlock(scope: !182, file: !3, line: 108, column: 37)
!191 = !DILocation(line: 109, column: 17, scope: !190)
!192 = !DILocation(line: 110, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 109, column: 30)
!194 = !DILocation(line: 112, column: 17, scope: !193)
!195 = !DILocation(line: 116, column: 10, scope: !183)
!196 = !DILocation(line: 117, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !183, file: !3, line: 117, column: 13)
!198 = !DILocation(line: 117, column: 26, scope: !197)
!199 = !DILocation(line: 117, column: 31, scope: !197)
!200 = !DILocation(line: 118, column: 36, scope: !197)
!201 = !DILocation(line: 82, column: 35, scope: !96, inlinedAt: !202)
!202 = distinct !DILocation(line: 118, column: 13, scope: !197)
!203 = !DILocation(line: 82, column: 48, scope: !96, inlinedAt: !202)
!204 = !DILocation(line: 82, column: 59, scope: !96, inlinedAt: !202)
!205 = !DILocation(line: 83, column: 46, scope: !96, inlinedAt: !202)
!206 = !DILocation(line: 83, column: 45, scope: !96, inlinedAt: !202)
!207 = !DILocation(line: 83, column: 60, scope: !96, inlinedAt: !202)
!208 = !DILocation(line: 83, column: 12, scope: !96, inlinedAt: !202)
!209 = !DILocation(line: 83, column: 67, scope: !96, inlinedAt: !202)
!210 = !DILocation(line: 85, column: 27, scope: !114, inlinedAt: !202)
!211 = !DILocation(line: 85, column: 19, scope: !114, inlinedAt: !202)
!212 = !DILocation(line: 85, column: 5, scope: !115, inlinedAt: !202)
!213 = !DILocation(line: 85, column: 50, scope: !114, inlinedAt: !202)
!214 = !DILocation(line: 85, column: 46, scope: !114, inlinedAt: !202)
!215 = !DILocation(line: 85, column: 26, scope: !114, inlinedAt: !202)
!216 = !DILocation(line: 86, column: 22, scope: !96, inlinedAt: !202)
!217 = !DILocation(line: 87, column: 12, scope: !96, inlinedAt: !202)
!218 = !DILocation(line: 87, column: 5, scope: !96, inlinedAt: !202)
!219 = !DILocation(line: 88, column: 1, scope: !96, inlinedAt: !202)
!220 = !DILocation(line: 118, column: 13, scope: !197)
!221 = !DILocation(line: 107, column: 29, scope: !184)
!222 = !DILocation(line: 107, column: 19, scope: !184)
!223 = distinct !{!223, !148, !224}
!224 = !DILocation(line: 119, column: 5, scope: !149)
!225 = !DILocation(line: 0, scope: !127)
!226 = !DILocation(line: 121, column: 1, scope: !127)
!227 = distinct !DISubprogram(name: "memtest_fill_random", scope: !3, file: !3, line: 138, type: !228, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !9, !15, !38}
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !246}
!231 = !DILocalVariable(name: "l", arg: 1, scope: !227, file: !3, line: 138, type: !9)
!232 = !DILocalVariable(name: "bytes", arg: 2, scope: !227, file: !3, line: 138, type: !15)
!233 = !DILocalVariable(name: "interactive", arg: 3, scope: !227, file: !3, line: 138, type: !38)
!234 = !DILocalVariable(name: "step", scope: !227, file: !3, line: 139, type: !7)
!235 = !DILocalVariable(name: "words", scope: !227, file: !3, line: 140, type: !7)
!236 = !DILocalVariable(name: "iwords", scope: !227, file: !3, line: 141, type: !7)
!237 = !DILocalVariable(name: "off", scope: !227, file: !3, line: 142, type: !7)
!238 = !DILocalVariable(name: "w", scope: !227, file: !3, line: 142, type: !7)
!239 = !DILocalVariable(name: "l1", scope: !227, file: !3, line: 142, type: !9)
!240 = !DILocalVariable(name: "l2", scope: !227, file: !3, line: 142, type: !9)
!241 = !DILocalVariable(name: "rseed", scope: !227, file: !3, line: 143, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !243, line: 60, baseType: !244)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !245, line: 105, baseType: !7)
!245 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DILocalVariable(name: "rout", scope: !227, file: !3, line: 144, type: !242)
!247 = !DILocation(line: 138, column: 41, scope: !227)
!248 = !DILocation(line: 138, column: 51, scope: !227)
!249 = !DILocation(line: 138, column: 62, scope: !227)
!250 = !DILocation(line: 139, column: 19, scope: !227)
!251 = !DILocation(line: 140, column: 54, scope: !227)
!252 = !DILocation(line: 140, column: 19, scope: !227)
!253 = !DILocation(line: 141, column: 33, scope: !227)
!254 = !DILocation(line: 141, column: 19, scope: !227)
!255 = !DILocation(line: 143, column: 14, scope: !227)
!256 = !DILocation(line: 144, column: 14, scope: !227)
!257 = !DILocation(line: 146, column: 5, scope: !227)
!258 = !DILocation(line: 142, column: 19, scope: !227)
!259 = !DILocation(line: 147, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !227, file: !3, line: 147, column: 5)
!261 = !DILocation(line: 148, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 147, column: 38)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 147, column: 5)
!264 = !DILocation(line: 142, column: 28, scope: !227)
!265 = !DILocation(line: 142, column: 24, scope: !227)
!266 = !DILocation(line: 150, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 150, column: 9)
!268 = !DILocation(line: 149, column: 16, scope: !262)
!269 = !DILocation(line: 142, column: 33, scope: !227)
!270 = !DILocation(line: 151, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 151, column: 13)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 150, column: 38)
!273 = distinct !DILexicalBlock(scope: !267, file: !3, line: 150, column: 9)
!274 = !DILocation(line: 152, column: 23, scope: !272)
!275 = !DILocation(line: 152, column: 17, scope: !272)
!276 = !DILocation(line: 153, column: 16, scope: !272)
!277 = !DILocation(line: 154, column: 16, scope: !272)
!278 = !DILocation(line: 155, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 155, column: 17)
!280 = !DILocation(line: 155, column: 30, scope: !279)
!281 = !DILocation(line: 155, column: 35, scope: !279)
!282 = !DILocation(line: 156, column: 40, scope: !279)
!283 = !DILocation(line: 82, column: 35, scope: !96, inlinedAt: !284)
!284 = distinct !DILocation(line: 156, column: 17, scope: !279)
!285 = !DILocation(line: 82, column: 48, scope: !96, inlinedAt: !284)
!286 = !DILocation(line: 82, column: 59, scope: !96, inlinedAt: !284)
!287 = !DILocation(line: 83, column: 46, scope: !96, inlinedAt: !284)
!288 = !DILocation(line: 83, column: 45, scope: !96, inlinedAt: !284)
!289 = !DILocation(line: 83, column: 60, scope: !96, inlinedAt: !284)
!290 = !DILocation(line: 83, column: 12, scope: !96, inlinedAt: !284)
!291 = !DILocation(line: 83, column: 67, scope: !96, inlinedAt: !284)
!292 = !DILocation(line: 85, column: 27, scope: !114, inlinedAt: !284)
!293 = !DILocation(line: 85, column: 19, scope: !114, inlinedAt: !284)
!294 = !DILocation(line: 85, column: 5, scope: !115, inlinedAt: !284)
!295 = !DILocation(line: 85, column: 50, scope: !114, inlinedAt: !284)
!296 = !DILocation(line: 85, column: 46, scope: !114, inlinedAt: !284)
!297 = !DILocation(line: 85, column: 26, scope: !114, inlinedAt: !284)
!298 = !DILocation(line: 86, column: 22, scope: !96, inlinedAt: !284)
!299 = !DILocation(line: 87, column: 12, scope: !96, inlinedAt: !284)
!300 = !DILocation(line: 87, column: 5, scope: !96, inlinedAt: !284)
!301 = !DILocation(line: 88, column: 1, scope: !96, inlinedAt: !284)
!302 = !DILocation(line: 156, column: 17, scope: !279)
!303 = !DILocation(line: 150, column: 34, scope: !273)
!304 = !DILocation(line: 150, column: 23, scope: !273)
!305 = distinct !{!305, !266, !306}
!306 = !DILocation(line: 157, column: 9, scope: !267)
!307 = !DILocation(line: 0, scope: !271)
!308 = !DILocation(line: 147, column: 34, scope: !263)
!309 = !DILocation(line: 147, column: 23, scope: !263)
!310 = distinct !{!310, !259, !311}
!311 = !DILocation(line: 158, column: 5, scope: !260)
!312 = !DILocation(line: 159, column: 1, scope: !227)
!313 = distinct !DISubprogram(name: "memtest_fill_value", scope: !3, file: !3, line: 163, type: !314, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !9, !15, !7, !7, !37, !38}
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!317 = !DILocalVariable(name: "l", arg: 1, scope: !313, file: !3, line: 163, type: !9)
!318 = !DILocalVariable(name: "bytes", arg: 2, scope: !313, file: !3, line: 163, type: !15)
!319 = !DILocalVariable(name: "v1", arg: 3, scope: !313, file: !3, line: 163, type: !7)
!320 = !DILocalVariable(name: "v2", arg: 4, scope: !313, file: !3, line: 164, type: !7)
!321 = !DILocalVariable(name: "sym", arg: 5, scope: !313, file: !3, line: 164, type: !37)
!322 = !DILocalVariable(name: "interactive", arg: 6, scope: !313, file: !3, line: 164, type: !38)
!323 = !DILocalVariable(name: "step", scope: !313, file: !3, line: 166, type: !7)
!324 = !DILocalVariable(name: "words", scope: !313, file: !3, line: 167, type: !7)
!325 = !DILocalVariable(name: "iwords", scope: !313, file: !3, line: 168, type: !7)
!326 = !DILocalVariable(name: "off", scope: !313, file: !3, line: 169, type: !7)
!327 = !DILocalVariable(name: "w", scope: !313, file: !3, line: 169, type: !7)
!328 = !DILocalVariable(name: "l1", scope: !313, file: !3, line: 169, type: !9)
!329 = !DILocalVariable(name: "l2", scope: !313, file: !3, line: 169, type: !9)
!330 = !DILocalVariable(name: "v", scope: !313, file: !3, line: 169, type: !7)
!331 = !DILocation(line: 163, column: 40, scope: !313)
!332 = !DILocation(line: 163, column: 50, scope: !313)
!333 = !DILocation(line: 163, column: 71, scope: !313)
!334 = !DILocation(line: 164, column: 39, scope: !313)
!335 = !DILocation(line: 164, column: 48, scope: !313)
!336 = !DILocation(line: 164, column: 57, scope: !313)
!337 = !DILocation(line: 166, column: 19, scope: !313)
!338 = !DILocation(line: 167, column: 54, scope: !313)
!339 = !DILocation(line: 167, column: 19, scope: !313)
!340 = !DILocation(line: 168, column: 33, scope: !313)
!341 = !DILocation(line: 168, column: 19, scope: !313)
!342 = !DILocation(line: 171, column: 5, scope: !313)
!343 = !DILocation(line: 169, column: 19, scope: !313)
!344 = !DILocation(line: 172, column: 5, scope: !345)
!345 = distinct !DILexicalBlock(scope: !313, file: !3, line: 172, column: 5)
!346 = !DILocation(line: 173, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 172, column: 38)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 172, column: 5)
!349 = !DILocation(line: 169, column: 28, scope: !313)
!350 = !DILocation(line: 175, column: 18, scope: !347)
!351 = !DILocation(line: 175, column: 13, scope: !347)
!352 = !DILocation(line: 169, column: 37, scope: !313)
!353 = !DILocation(line: 169, column: 24, scope: !313)
!354 = !DILocation(line: 176, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !347, file: !3, line: 176, column: 9)
!356 = !DILocation(line: 174, column: 16, scope: !347)
!357 = !DILocation(line: 169, column: 33, scope: !313)
!358 = !DILocation(line: 181, column: 23, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 176, column: 38)
!360 = distinct !DILexicalBlock(scope: !355, file: !3, line: 176, column: 9)
!361 = !DILocation(line: 181, column: 17, scope: !359)
!362 = !DILocation(line: 186, column: 16, scope: !359)
!363 = !DILocation(line: 187, column: 16, scope: !359)
!364 = !DILocation(line: 188, column: 20, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !3, line: 188, column: 17)
!366 = !DILocation(line: 188, column: 30, scope: !365)
!367 = !DILocation(line: 188, column: 35, scope: !365)
!368 = !DILocation(line: 189, column: 40, scope: !365)
!369 = !DILocation(line: 82, column: 35, scope: !96, inlinedAt: !370)
!370 = distinct !DILocation(line: 189, column: 17, scope: !365)
!371 = !DILocation(line: 82, column: 48, scope: !96, inlinedAt: !370)
!372 = !DILocation(line: 82, column: 59, scope: !96, inlinedAt: !370)
!373 = !DILocation(line: 83, column: 46, scope: !96, inlinedAt: !370)
!374 = !DILocation(line: 83, column: 45, scope: !96, inlinedAt: !370)
!375 = !DILocation(line: 83, column: 60, scope: !96, inlinedAt: !370)
!376 = !DILocation(line: 83, column: 12, scope: !96, inlinedAt: !370)
!377 = !DILocation(line: 83, column: 67, scope: !96, inlinedAt: !370)
!378 = !DILocation(line: 85, column: 27, scope: !114, inlinedAt: !370)
!379 = !DILocation(line: 85, column: 19, scope: !114, inlinedAt: !370)
!380 = !DILocation(line: 85, column: 5, scope: !115, inlinedAt: !370)
!381 = !DILocation(line: 85, column: 50, scope: !114, inlinedAt: !370)
!382 = !DILocation(line: 85, column: 46, scope: !114, inlinedAt: !370)
!383 = !DILocation(line: 85, column: 26, scope: !114, inlinedAt: !370)
!384 = !DILocation(line: 86, column: 22, scope: !96, inlinedAt: !370)
!385 = !DILocation(line: 87, column: 12, scope: !96, inlinedAt: !370)
!386 = !DILocation(line: 87, column: 5, scope: !96, inlinedAt: !370)
!387 = !DILocation(line: 88, column: 1, scope: !96, inlinedAt: !370)
!388 = !DILocation(line: 189, column: 17, scope: !365)
!389 = !DILocation(line: 176, column: 34, scope: !360)
!390 = !DILocation(line: 176, column: 23, scope: !360)
!391 = distinct !{!391, !354, !392}
!392 = !DILocation(line: 190, column: 9, scope: !355)
!393 = !DILocation(line: 172, column: 34, scope: !348)
!394 = !DILocation(line: 172, column: 23, scope: !348)
!395 = distinct !{!395, !344, !396}
!396 = !DILocation(line: 191, column: 5, scope: !345)
!397 = !DILocation(line: 192, column: 1, scope: !313)
!398 = distinct !DISubprogram(name: "memtest_compare", scope: !3, file: !3, line: 194, type: !128, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406}
!400 = !DILocalVariable(name: "l", arg: 1, scope: !398, file: !3, line: 194, type: !9)
!401 = !DILocalVariable(name: "bytes", arg: 2, scope: !398, file: !3, line: 194, type: !15)
!402 = !DILocalVariable(name: "interactive", arg: 3, scope: !398, file: !3, line: 194, type: !38)
!403 = !DILocalVariable(name: "words", scope: !398, file: !3, line: 195, type: !7)
!404 = !DILocalVariable(name: "w", scope: !398, file: !3, line: 196, type: !7)
!405 = !DILocalVariable(name: "l1", scope: !398, file: !3, line: 196, type: !9)
!406 = !DILocalVariable(name: "l2", scope: !398, file: !3, line: 196, type: !9)
!407 = !DILocation(line: 194, column: 36, scope: !398)
!408 = !DILocation(line: 194, column: 46, scope: !398)
!409 = !DILocation(line: 194, column: 57, scope: !398)
!410 = !DILocation(line: 195, column: 54, scope: !398)
!411 = !DILocation(line: 195, column: 19, scope: !398)
!412 = !DILocation(line: 198, column: 5, scope: !398)
!413 = !DILocation(line: 196, column: 23, scope: !398)
!414 = !DILocation(line: 196, column: 19, scope: !398)
!415 = !DILocation(line: 201, column: 19, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 201, column: 5)
!417 = distinct !DILexicalBlock(scope: !398, file: !3, line: 201, column: 5)
!418 = !DILocation(line: 201, column: 5, scope: !417)
!419 = !DILocation(line: 200, column: 12, scope: !398)
!420 = !DILocation(line: 196, column: 28, scope: !398)
!421 = !DILocation(line: 202, column: 13, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 202, column: 13)
!423 = distinct !DILexicalBlock(scope: !416, file: !3, line: 201, column: 33)
!424 = !DILocation(line: 202, column: 20, scope: !422)
!425 = !DILocation(line: 202, column: 17, scope: !422)
!426 = !DILocation(line: 202, column: 13, scope: !423)
!427 = !DILocation(line: 203, column: 17, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 203, column: 17)
!429 = distinct !DILexicalBlock(scope: !422, file: !3, line: 202, column: 25)
!430 = !DILocation(line: 203, column: 17, scope: !429)
!431 = !DILocation(line: 204, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 203, column: 30)
!433 = !DILocation(line: 206, column: 17, scope: !432)
!434 = !DILocation(line: 210, column: 12, scope: !423)
!435 = !DILocation(line: 211, column: 12, scope: !423)
!436 = !DILocation(line: 212, column: 16, scope: !437)
!437 = distinct !DILexicalBlock(scope: !423, file: !3, line: 212, column: 13)
!438 = !DILocation(line: 212, column: 26, scope: !437)
!439 = !DILocation(line: 212, column: 31, scope: !437)
!440 = !DILocation(line: 82, column: 35, scope: !96, inlinedAt: !441)
!441 = distinct !DILocation(line: 213, column: 13, scope: !437)
!442 = !DILocation(line: 82, column: 48, scope: !96, inlinedAt: !441)
!443 = !DILocation(line: 82, column: 59, scope: !96, inlinedAt: !441)
!444 = !DILocation(line: 83, column: 46, scope: !96, inlinedAt: !441)
!445 = !DILocation(line: 83, column: 45, scope: !96, inlinedAt: !441)
!446 = !DILocation(line: 83, column: 60, scope: !96, inlinedAt: !441)
!447 = !DILocation(line: 83, column: 12, scope: !96, inlinedAt: !441)
!448 = !DILocation(line: 83, column: 67, scope: !96, inlinedAt: !441)
!449 = !DILocation(line: 85, column: 27, scope: !114, inlinedAt: !441)
!450 = !DILocation(line: 85, column: 19, scope: !114, inlinedAt: !441)
!451 = !DILocation(line: 85, column: 5, scope: !115, inlinedAt: !441)
!452 = !DILocation(line: 85, column: 50, scope: !114, inlinedAt: !441)
!453 = !DILocation(line: 85, column: 46, scope: !114, inlinedAt: !441)
!454 = !DILocation(line: 85, column: 26, scope: !114, inlinedAt: !441)
!455 = !DILocation(line: 86, column: 22, scope: !96, inlinedAt: !441)
!456 = !DILocation(line: 87, column: 12, scope: !96, inlinedAt: !441)
!457 = !DILocation(line: 87, column: 5, scope: !96, inlinedAt: !441)
!458 = !DILocation(line: 88, column: 1, scope: !96, inlinedAt: !441)
!459 = !DILocation(line: 213, column: 13, scope: !437)
!460 = !DILocation(line: 201, column: 29, scope: !416)
!461 = distinct !{!461, !418, !462}
!462 = !DILocation(line: 214, column: 5, scope: !417)
!463 = !DILocation(line: 0, scope: !398)
!464 = !DILocation(line: 216, column: 1, scope: !398)
!465 = distinct !DISubprogram(name: "memtest_compare_times", scope: !3, file: !3, line: 218, type: !466, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!38, !9, !15, !38, !38, !38}
!468 = !{!469, !470, !471, !472, !473, !474, !475}
!469 = !DILocalVariable(name: "m", arg: 1, scope: !465, file: !3, line: 218, type: !9)
!470 = !DILocalVariable(name: "bytes", arg: 2, scope: !465, file: !3, line: 218, type: !15)
!471 = !DILocalVariable(name: "pass", arg: 3, scope: !465, file: !3, line: 218, type: !38)
!472 = !DILocalVariable(name: "times", arg: 4, scope: !465, file: !3, line: 218, type: !38)
!473 = !DILocalVariable(name: "interactive", arg: 5, scope: !465, file: !3, line: 219, type: !38)
!474 = !DILocalVariable(name: "j", scope: !465, file: !3, line: 221, type: !38)
!475 = !DILocalVariable(name: "errors", scope: !465, file: !3, line: 222, type: !38)
!476 = !DILocation(line: 218, column: 42, scope: !465)
!477 = !DILocation(line: 218, column: 52, scope: !465)
!478 = !DILocation(line: 218, column: 63, scope: !465)
!479 = !DILocation(line: 218, column: 73, scope: !465)
!480 = !DILocation(line: 219, column: 31, scope: !465)
!481 = !DILocation(line: 222, column: 9, scope: !465)
!482 = !DILocation(line: 221, column: 9, scope: !465)
!483 = !DILocation(line: 224, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 224, column: 5)
!485 = distinct !DILexicalBlock(scope: !465, file: !3, line: 224, column: 5)
!486 = !DILocation(line: 224, column: 5, scope: !485)
!487 = !DILocation(line: 225, column: 13, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 224, column: 33)
!489 = !DILocation(line: 226, column: 19, scope: !488)
!490 = !DILocation(line: 225, column: 26, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !3, line: 225, column: 13)
!492 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !493)
!493 = distinct !DILocation(line: 227, column: 26, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !3, line: 227, column: 13)
!495 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !493)
!496 = !DILocation(line: 227, column: 26, scope: !494)
!497 = !DILocation(line: 226, column: 16, scope: !488)
!498 = !DILocation(line: 224, column: 29, scope: !484)
!499 = distinct !{!499, !486, !500}
!500 = !DILocation(line: 228, column: 5, scope: !485)
!501 = !DILocation(line: 0, scope: !488)
!502 = !DILocation(line: 229, column: 5, scope: !465)
!503 = distinct !DISubprogram(name: "memtest_test", scope: !3, file: !3, line: 237, type: !504, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!38, !9, !15, !38, !38}
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DILocalVariable(name: "m", arg: 1, scope: !503, file: !3, line: 237, type: !9)
!508 = !DILocalVariable(name: "bytes", arg: 2, scope: !503, file: !3, line: 237, type: !15)
!509 = !DILocalVariable(name: "passes", arg: 3, scope: !503, file: !3, line: 237, type: !38)
!510 = !DILocalVariable(name: "interactive", arg: 4, scope: !503, file: !3, line: 237, type: !38)
!511 = !DILocalVariable(name: "pass", scope: !503, file: !3, line: 238, type: !38)
!512 = !DILocalVariable(name: "errors", scope: !503, file: !3, line: 239, type: !38)
!513 = !DILocation(line: 237, column: 33, scope: !503)
!514 = !DILocation(line: 237, column: 43, scope: !503)
!515 = !DILocation(line: 237, column: 54, scope: !503)
!516 = !DILocation(line: 237, column: 66, scope: !503)
!517 = !DILocation(line: 238, column: 9, scope: !503)
!518 = !DILocation(line: 239, column: 9, scope: !503)
!519 = !DILocation(line: 241, column: 17, scope: !503)
!520 = !DILocation(line: 241, column: 5, scope: !503)
!521 = !DILocation(line: 242, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !503, file: !3, line: 241, column: 28)
!523 = !DILocation(line: 244, column: 13, scope: !522)
!524 = !DILocation(line: 244, column: 26, scope: !525)
!525 = distinct !DILexicalBlock(scope: !522, file: !3, line: 244, column: 13)
!526 = !DILocation(line: 245, column: 19, scope: !522)
!527 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !528)
!528 = distinct !DILocation(line: 246, column: 26, scope: !529)
!529 = distinct !DILexicalBlock(scope: !522, file: !3, line: 246, column: 13)
!530 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !528)
!531 = !DILocation(line: 248, column: 26, scope: !532)
!532 = distinct !DILexicalBlock(scope: !522, file: !3, line: 248, column: 13)
!533 = !DILocation(line: 249, column: 9, scope: !522)
!534 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !535)
!535 = distinct !DILocation(line: 250, column: 26, scope: !536)
!536 = distinct !DILexicalBlock(scope: !522, file: !3, line: 250, column: 13)
!537 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !535)
!538 = !DILocation(line: 250, column: 26, scope: !536)
!539 = !DILocation(line: 245, column: 16, scope: !522)
!540 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !541)
!541 = distinct !DILocation(line: 251, column: 19, scope: !522)
!542 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !541)
!543 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !541)
!544 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !541)
!545 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !541)
!546 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !541)
!547 = !DILocation(line: 225, column: 13, scope: !488, inlinedAt: !541)
!548 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !549)
!549 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !541)
!550 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !549)
!551 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !549)
!552 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !549)
!553 = !DILocation(line: 198, column: 5, scope: !398, inlinedAt: !549)
!554 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !549)
!555 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !549)
!556 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !549)
!557 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !549)
!558 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !549)
!559 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !549)
!560 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !549)
!561 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !549)
!562 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !549)
!563 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !549)
!564 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !549)
!565 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !549)
!566 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !549)
!567 = !DILocation(line: 225, column: 26, scope: !491, inlinedAt: !541)
!568 = !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !541)
!569 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !570)
!570 = distinct !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !541)
!571 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !570)
!572 = !DILocation(line: 0, scope: !398, inlinedAt: !549)
!573 = !DILocation(line: 253, column: 26, scope: !574)
!574 = distinct !DILexicalBlock(scope: !522, file: !3, line: 253, column: 13)
!575 = !DILocation(line: 254, column: 9, scope: !522)
!576 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !577)
!577 = distinct !DILocation(line: 255, column: 26, scope: !578)
!578 = distinct !DILexicalBlock(scope: !522, file: !3, line: 255, column: 13)
!579 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !577)
!580 = !DILocation(line: 255, column: 26, scope: !578)
!581 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !582)
!582 = distinct !DILocation(line: 256, column: 19, scope: !522)
!583 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !582)
!584 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !582)
!585 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !582)
!586 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !582)
!587 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !582)
!588 = !DILocation(line: 225, column: 13, scope: !488, inlinedAt: !582)
!589 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !590)
!590 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !582)
!591 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !590)
!592 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !590)
!593 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !590)
!594 = !DILocation(line: 198, column: 5, scope: !398, inlinedAt: !590)
!595 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !590)
!596 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !590)
!597 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !590)
!598 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !590)
!599 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !590)
!600 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !590)
!601 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !590)
!602 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !590)
!603 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !590)
!604 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !590)
!605 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !590)
!606 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !590)
!607 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !590)
!608 = !DILocation(line: 225, column: 26, scope: !491, inlinedAt: !582)
!609 = !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !582)
!610 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !611)
!611 = distinct !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !582)
!612 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !611)
!613 = !DILocation(line: 0, scope: !398, inlinedAt: !590)
!614 = !DILocation(line: 258, column: 26, scope: !615)
!615 = distinct !DILexicalBlock(scope: !522, file: !3, line: 258, column: 13)
!616 = !DILocation(line: 259, column: 9, scope: !522)
!617 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !618)
!618 = distinct !DILocation(line: 260, column: 26, scope: !619)
!619 = distinct !DILexicalBlock(scope: !522, file: !3, line: 260, column: 13)
!620 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !618)
!621 = !DILocation(line: 260, column: 26, scope: !619)
!622 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !623)
!623 = distinct !DILocation(line: 261, column: 19, scope: !522)
!624 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !623)
!625 = !DILocation(line: 218, column: 63, scope: !465, inlinedAt: !623)
!626 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !623)
!627 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !623)
!628 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !623)
!629 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !623)
!630 = !DILocation(line: 225, column: 13, scope: !488, inlinedAt: !623)
!631 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !632)
!632 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !623)
!633 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !632)
!634 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !632)
!635 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !632)
!636 = !DILocation(line: 198, column: 5, scope: !398, inlinedAt: !632)
!637 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !632)
!638 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !632)
!639 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !632)
!640 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !632)
!641 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !632)
!642 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !632)
!643 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !632)
!644 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !632)
!645 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !632)
!646 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !632)
!647 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !632)
!648 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !632)
!649 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !632)
!650 = !DILocation(line: 225, column: 26, scope: !491, inlinedAt: !623)
!651 = !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !623)
!652 = !DILocation(line: 79, column: 5, scope: !91, inlinedAt: !653)
!653 = distinct !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !623)
!654 = !DILocation(line: 80, column: 1, scope: !91, inlinedAt: !653)
!655 = !DILocation(line: 0, scope: !398, inlinedAt: !632)
!656 = !DILocation(line: 0, scope: !522)
!657 = !DILocation(line: 263, column: 5, scope: !503)
!658 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !541)
!659 = !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !541)
!660 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !541)
!661 = !DILocation(line: 251, column: 16, scope: !522)
!662 = !DILocation(line: 253, column: 13, scope: !522)
!663 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !582)
!664 = !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !582)
!665 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !582)
!666 = !DILocation(line: 256, column: 16, scope: !522)
!667 = !DILocation(line: 258, column: 13, scope: !522)
!668 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !623)
!669 = !DILocation(line: 227, column: 26, scope: !494, inlinedAt: !623)
!670 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !623)
!671 = !DILocation(line: 261, column: 16, scope: !522)
!672 = distinct !{!672, !520, !673}
!673 = !DILocation(line: 262, column: 5, scope: !503)
!674 = distinct !DISubprogram(name: "memtest_preserving_test", scope: !3, file: !3, line: 280, type: !128, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !675)
!675 = !{!676, !677, !678, !679, !683, !684, !685, !686, !687, !689}
!676 = !DILocalVariable(name: "m", arg: 1, scope: !674, file: !3, line: 280, type: !9)
!677 = !DILocalVariable(name: "bytes", arg: 2, scope: !674, file: !3, line: 280, type: !15)
!678 = !DILocalVariable(name: "passes", arg: 3, scope: !674, file: !3, line: 280, type: !38)
!679 = !DILocalVariable(name: "backup", scope: !674, file: !3, line: 281, type: !680)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8388608, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 131072)
!683 = !DILocalVariable(name: "p", scope: !674, file: !3, line: 282, type: !9)
!684 = !DILocalVariable(name: "end", scope: !674, file: !3, line: 283, type: !9)
!685 = !DILocalVariable(name: "left", scope: !674, file: !3, line: 284, type: !15)
!686 = !DILocalVariable(name: "errors", scope: !674, file: !3, line: 285, type: !38)
!687 = !DILocalVariable(name: "pass", scope: !688, file: !3, line: 299, type: !38)
!688 = distinct !DILexicalBlock(scope: !674, file: !3, line: 290, column: 17)
!689 = !DILocalVariable(name: "len", scope: !688, file: !3, line: 300, type: !15)
!690 = !DILocation(line: 280, column: 44, scope: !674)
!691 = !DILocation(line: 280, column: 54, scope: !674)
!692 = !DILocation(line: 280, column: 65, scope: !674)
!693 = !DILocation(line: 281, column: 5, scope: !674)
!694 = !DILocation(line: 281, column: 19, scope: !674)
!695 = !DILocation(line: 282, column: 20, scope: !674)
!696 = !DILocation(line: 284, column: 12, scope: !674)
!697 = !DILocation(line: 285, column: 9, scope: !674)
!698 = !DILocation(line: 287, column: 15, scope: !699)
!699 = distinct !DILexicalBlock(scope: !674, file: !3, line: 287, column: 9)
!700 = !DILocation(line: 288, column: 15, scope: !701)
!701 = distinct !DILexicalBlock(scope: !674, file: !3, line: 288, column: 9)
!702 = !DILocation(line: 287, column: 9, scope: !674)
!703 = !DILocation(line: 290, column: 5, scope: !674)
!704 = !DILocation(line: 0, scope: !688)
!705 = !DILocation(line: 296, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 294, column: 27)
!707 = distinct !DILexicalBlock(scope: !688, file: !3, line: 294, column: 13)
!708 = !DILocation(line: 299, column: 13, scope: !688)
!709 = !DILocation(line: 300, column: 22, scope: !688)
!710 = !DILocation(line: 300, column: 16, scope: !688)
!711 = !DILocation(line: 303, column: 22, scope: !712)
!712 = distinct !DILexicalBlock(scope: !688, file: !3, line: 303, column: 13)
!713 = !DILocation(line: 303, column: 31, scope: !712)
!714 = !DILocation(line: 303, column: 13, scope: !688)
!715 = !DILocation(line: 305, column: 23, scope: !688)
!716 = !DILocation(line: 305, column: 9, scope: !688)
!717 = !DILocation(line: 306, column: 9, scope: !688)
!718 = !DILocation(line: 307, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !688, file: !3, line: 306, column: 31)
!720 = !DILocation(line: 93, column: 39, scope: !127, inlinedAt: !721)
!721 = distinct !DILocation(line: 308, column: 23, scope: !719)
!722 = !DILocation(line: 93, column: 49, scope: !127, inlinedAt: !721)
!723 = !DILocation(line: 93, column: 60, scope: !127, inlinedAt: !721)
!724 = !DILocation(line: 94, column: 19, scope: !127, inlinedAt: !721)
!725 = !DILocation(line: 95, column: 23, scope: !127, inlinedAt: !721)
!726 = !DILocation(line: 95, column: 19, scope: !127, inlinedAt: !721)
!727 = !DILocation(line: 99, column: 5, scope: !146, inlinedAt: !721)
!728 = !DILocation(line: 100, column: 14, scope: !151, inlinedAt: !721)
!729 = !DILocation(line: 99, column: 29, scope: !145, inlinedAt: !721)
!730 = !DILocation(line: 100, column: 12, scope: !151, inlinedAt: !721)
!731 = distinct !{!731, !147, !180, !732}
!732 = !{!"llvm.loop.isvectorized", i32 1}
!733 = !DILocation(line: 101, column: 10, scope: !151, inlinedAt: !721)
!734 = !DILocation(line: 99, column: 19, scope: !145, inlinedAt: !721)
!735 = distinct !{!735, !147, !180, !736, !732}
!736 = !{!"llvm.loop.unroll.runtime.disable"}
!737 = !DILocation(line: 108, column: 13, scope: !182, inlinedAt: !721)
!738 = !DILocation(line: 108, column: 19, scope: !182, inlinedAt: !721)
!739 = !DILocation(line: 108, column: 16, scope: !182, inlinedAt: !721)
!740 = !DILocation(line: 108, column: 13, scope: !183, inlinedAt: !721)
!741 = !DILocation(line: 116, column: 10, scope: !183, inlinedAt: !721)
!742 = !DILocation(line: 107, column: 29, scope: !184, inlinedAt: !721)
!743 = !DILocation(line: 107, column: 19, scope: !184, inlinedAt: !721)
!744 = !DILocation(line: 107, column: 5, scope: !149, inlinedAt: !721)
!745 = !DILocation(line: 0, scope: !127, inlinedAt: !721)
!746 = !DILocation(line: 121, column: 1, scope: !127, inlinedAt: !721)
!747 = !DILocation(line: 308, column: 20, scope: !719)
!748 = !DILocation(line: 138, column: 41, scope: !227, inlinedAt: !749)
!749 = distinct !DILocation(line: 309, column: 13, scope: !719)
!750 = !DILocation(line: 138, column: 51, scope: !227, inlinedAt: !749)
!751 = !DILocation(line: 138, column: 62, scope: !227, inlinedAt: !749)
!752 = !DILocation(line: 139, column: 19, scope: !227, inlinedAt: !749)
!753 = !DILocation(line: 140, column: 19, scope: !227, inlinedAt: !749)
!754 = !DILocation(line: 141, column: 19, scope: !227, inlinedAt: !749)
!755 = !DILocation(line: 143, column: 14, scope: !227, inlinedAt: !749)
!756 = !DILocation(line: 144, column: 14, scope: !227, inlinedAt: !749)
!757 = !DILocation(line: 146, column: 5, scope: !227, inlinedAt: !749)
!758 = !DILocation(line: 142, column: 19, scope: !227, inlinedAt: !749)
!759 = !DILocation(line: 148, column: 15, scope: !262, inlinedAt: !749)
!760 = !DILocation(line: 142, column: 28, scope: !227, inlinedAt: !749)
!761 = !DILocation(line: 142, column: 24, scope: !227, inlinedAt: !749)
!762 = !DILocation(line: 150, column: 9, scope: !267, inlinedAt: !749)
!763 = !DILocation(line: 149, column: 16, scope: !262, inlinedAt: !749)
!764 = !DILocation(line: 142, column: 33, scope: !227, inlinedAt: !749)
!765 = !DILocation(line: 151, column: 13, scope: !271, inlinedAt: !749)
!766 = !DILocation(line: 152, column: 23, scope: !272, inlinedAt: !749)
!767 = !DILocation(line: 152, column: 17, scope: !272, inlinedAt: !749)
!768 = !DILocation(line: 153, column: 16, scope: !272, inlinedAt: !749)
!769 = !DILocation(line: 154, column: 16, scope: !272, inlinedAt: !749)
!770 = !DILocation(line: 147, column: 34, scope: !263, inlinedAt: !749)
!771 = !DILocation(line: 0, scope: !271, inlinedAt: !749)
!772 = !DILocation(line: 147, column: 23, scope: !263, inlinedAt: !749)
!773 = !DILocation(line: 147, column: 5, scope: !260, inlinedAt: !749)
!774 = !DILocation(line: 159, column: 1, scope: !227, inlinedAt: !749)
!775 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !776)
!776 = distinct !DILocation(line: 311, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 310, column: 48)
!778 = distinct !DILexicalBlock(scope: !719, file: !3, line: 310, column: 17)
!779 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !776)
!780 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !781)
!781 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !776)
!782 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !781)
!783 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !781)
!784 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !781)
!785 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !781)
!786 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !781)
!787 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !781)
!788 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !781)
!789 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !776)
!790 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !791)
!791 = distinct !DILocation(line: 312, column: 17, scope: !777)
!792 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !791)
!793 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !791)
!794 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !791)
!795 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !791)
!796 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !797)
!797 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !791)
!798 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !797)
!799 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !797)
!800 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !797)
!801 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !797)
!802 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !791)
!803 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !804)
!804 = distinct !DILocation(line: 314, column: 23, scope: !719)
!805 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !804)
!806 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !804)
!807 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !804)
!808 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !804)
!809 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !804)
!810 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !811)
!811 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !804)
!812 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !811)
!813 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !811)
!814 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !811)
!815 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !811)
!816 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !811)
!817 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !811)
!818 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !811)
!819 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !811)
!820 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !811)
!821 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !811)
!822 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !811)
!823 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !811)
!824 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !811)
!825 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !811)
!826 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !811)
!827 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !811)
!828 = !DILocation(line: 0, scope: !398, inlinedAt: !811)
!829 = !DILocation(line: 169, column: 19, scope: !313, inlinedAt: !830)
!830 = distinct !DILocation(line: 315, column: 13, scope: !719)
!831 = !DILocation(line: 173, column: 15, scope: !347, inlinedAt: !830)
!832 = !DILocation(line: 169, column: 28, scope: !313, inlinedAt: !830)
!833 = !DILocation(line: 175, column: 13, scope: !347, inlinedAt: !830)
!834 = !DILocation(line: 169, column: 24, scope: !313, inlinedAt: !830)
!835 = !DILocation(line: 176, column: 9, scope: !355, inlinedAt: !830)
!836 = !DILocation(line: 169, column: 37, scope: !313, inlinedAt: !830)
!837 = !DILocation(line: 174, column: 16, scope: !347, inlinedAt: !830)
!838 = !DILocation(line: 169, column: 33, scope: !313, inlinedAt: !830)
!839 = !DILocation(line: 181, column: 23, scope: !359, inlinedAt: !830)
!840 = !DILocation(line: 181, column: 17, scope: !359, inlinedAt: !830)
!841 = !DILocation(line: 186, column: 16, scope: !359, inlinedAt: !830)
!842 = !DILocation(line: 187, column: 16, scope: !359, inlinedAt: !830)
!843 = distinct !{!843, !844}
!844 = !{!"llvm.loop.unroll.disable"}
!845 = !DILocation(line: 172, column: 34, scope: !348, inlinedAt: !830)
!846 = !DILocation(line: 172, column: 23, scope: !348, inlinedAt: !830)
!847 = !DILocation(line: 172, column: 5, scope: !345, inlinedAt: !830)
!848 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !804)
!849 = !DILocation(line: 314, column: 20, scope: !719)
!850 = !DILocation(line: 192, column: 1, scope: !313, inlinedAt: !830)
!851 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !852)
!852 = distinct !DILocation(line: 317, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 316, column: 48)
!854 = distinct !DILexicalBlock(scope: !719, file: !3, line: 316, column: 17)
!855 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !852)
!856 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !857)
!857 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !852)
!858 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !857)
!859 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !857)
!860 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !857)
!861 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !857)
!862 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !857)
!863 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !857)
!864 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !857)
!865 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !852)
!866 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !867)
!867 = distinct !DILocation(line: 318, column: 17, scope: !853)
!868 = !DILocation(line: 218, column: 63, scope: !465, inlinedAt: !867)
!869 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !867)
!870 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !867)
!871 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !867)
!872 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !867)
!873 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !874)
!874 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !867)
!875 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !874)
!876 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !874)
!877 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !874)
!878 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !874)
!879 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !867)
!880 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !881)
!881 = distinct !DILocation(line: 320, column: 23, scope: !719)
!882 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !881)
!883 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !881)
!884 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !881)
!885 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !881)
!886 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !881)
!887 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !888)
!888 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !881)
!889 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !888)
!890 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !888)
!891 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !888)
!892 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !888)
!893 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !888)
!894 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !888)
!895 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !888)
!896 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !888)
!897 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !888)
!898 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !888)
!899 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !888)
!900 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !888)
!901 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !888)
!902 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !888)
!903 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !888)
!904 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !888)
!905 = !DILocation(line: 0, scope: !398, inlinedAt: !888)
!906 = !DILocation(line: 169, column: 19, scope: !313, inlinedAt: !907)
!907 = distinct !DILocation(line: 321, column: 13, scope: !719)
!908 = !DILocation(line: 173, column: 15, scope: !347, inlinedAt: !907)
!909 = !DILocation(line: 169, column: 28, scope: !313, inlinedAt: !907)
!910 = !DILocation(line: 175, column: 18, scope: !347, inlinedAt: !907)
!911 = !DILocation(line: 175, column: 13, scope: !347, inlinedAt: !907)
!912 = !DILocation(line: 169, column: 37, scope: !313, inlinedAt: !907)
!913 = !DILocation(line: 169, column: 24, scope: !313, inlinedAt: !907)
!914 = !DILocation(line: 176, column: 9, scope: !355, inlinedAt: !907)
!915 = !DILocation(line: 174, column: 16, scope: !347, inlinedAt: !907)
!916 = !DILocation(line: 169, column: 33, scope: !313, inlinedAt: !907)
!917 = !DILocation(line: 181, column: 23, scope: !359, inlinedAt: !907)
!918 = !DILocation(line: 181, column: 17, scope: !359, inlinedAt: !907)
!919 = !DILocation(line: 186, column: 16, scope: !359, inlinedAt: !907)
!920 = !DILocation(line: 187, column: 16, scope: !359, inlinedAt: !907)
!921 = distinct !{!921, !844}
!922 = !DILocation(line: 172, column: 34, scope: !348, inlinedAt: !907)
!923 = !DILocation(line: 172, column: 23, scope: !348, inlinedAt: !907)
!924 = !DILocation(line: 172, column: 5, scope: !345, inlinedAt: !907)
!925 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !881)
!926 = !DILocation(line: 320, column: 20, scope: !719)
!927 = !DILocation(line: 192, column: 1, scope: !313, inlinedAt: !907)
!928 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !929)
!929 = distinct !DILocation(line: 323, column: 17, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 322, column: 48)
!931 = distinct !DILexicalBlock(scope: !719, file: !3, line: 322, column: 17)
!932 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !929)
!933 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !934)
!934 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !929)
!935 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !934)
!936 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !934)
!937 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !934)
!938 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !934)
!939 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !934)
!940 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !934)
!941 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !934)
!942 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !929)
!943 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !944)
!944 = distinct !DILocation(line: 324, column: 17, scope: !930)
!945 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !944)
!946 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !944)
!947 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !944)
!948 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !944)
!949 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !950)
!950 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !944)
!951 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !950)
!952 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !950)
!953 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !950)
!954 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !950)
!955 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !944)
!956 = !DILocation(line: 218, column: 42, scope: !465, inlinedAt: !957)
!957 = distinct !DILocation(line: 326, column: 23, scope: !719)
!958 = !DILocation(line: 218, column: 52, scope: !465, inlinedAt: !957)
!959 = !DILocation(line: 218, column: 73, scope: !465, inlinedAt: !957)
!960 = !DILocation(line: 219, column: 31, scope: !465, inlinedAt: !957)
!961 = !DILocation(line: 222, column: 9, scope: !465, inlinedAt: !957)
!962 = !DILocation(line: 221, column: 9, scope: !465, inlinedAt: !957)
!963 = !DILocation(line: 194, column: 36, scope: !398, inlinedAt: !964)
!964 = distinct !DILocation(line: 226, column: 19, scope: !488, inlinedAt: !957)
!965 = !DILocation(line: 194, column: 46, scope: !398, inlinedAt: !964)
!966 = !DILocation(line: 194, column: 57, scope: !398, inlinedAt: !964)
!967 = !DILocation(line: 195, column: 19, scope: !398, inlinedAt: !964)
!968 = !DILocation(line: 196, column: 23, scope: !398, inlinedAt: !964)
!969 = !DILocation(line: 196, column: 19, scope: !398, inlinedAt: !964)
!970 = !DILocation(line: 201, column: 5, scope: !417, inlinedAt: !964)
!971 = !DILocation(line: 216, column: 1, scope: !398, inlinedAt: !964)
!972 = !DILocation(line: 196, column: 28, scope: !398, inlinedAt: !964)
!973 = !DILocation(line: 202, column: 13, scope: !422, inlinedAt: !964)
!974 = !DILocation(line: 202, column: 20, scope: !422, inlinedAt: !964)
!975 = !DILocation(line: 202, column: 17, scope: !422, inlinedAt: !964)
!976 = !DILocation(line: 202, column: 13, scope: !423, inlinedAt: !964)
!977 = !DILocation(line: 210, column: 12, scope: !423, inlinedAt: !964)
!978 = !DILocation(line: 211, column: 12, scope: !423, inlinedAt: !964)
!979 = !DILocation(line: 201, column: 29, scope: !416, inlinedAt: !964)
!980 = !DILocation(line: 201, column: 19, scope: !416, inlinedAt: !964)
!981 = !DILocation(line: 0, scope: !398, inlinedAt: !964)
!982 = !DILocation(line: 0, scope: !719)
!983 = !DILocation(line: 328, column: 9, scope: !688)
!984 = !DILocation(line: 329, column: 14, scope: !688)
!985 = !DILocation(line: 330, column: 11, scope: !688)
!986 = distinct !{!986, !703, !987}
!987 = !DILocation(line: 331, column: 5, scope: !674)
!988 = !DILocation(line: 0, scope: !674)
!989 = !DILocation(line: 333, column: 1, scope: !674)
!990 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !804)
!991 = !DILocation(line: 163, column: 40, scope: !313, inlinedAt: !830)
!992 = !DILocation(line: 163, column: 50, scope: !313, inlinedAt: !830)
!993 = !DILocation(line: 163, column: 71, scope: !313, inlinedAt: !830)
!994 = !DILocation(line: 164, column: 39, scope: !313, inlinedAt: !830)
!995 = !DILocation(line: 164, column: 48, scope: !313, inlinedAt: !830)
!996 = !DILocation(line: 164, column: 57, scope: !313, inlinedAt: !830)
!997 = !DILocation(line: 166, column: 19, scope: !313, inlinedAt: !830)
!998 = !DILocation(line: 167, column: 19, scope: !313, inlinedAt: !830)
!999 = !DILocation(line: 168, column: 19, scope: !313, inlinedAt: !830)
!1000 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !881)
!1001 = !DILocation(line: 163, column: 40, scope: !313, inlinedAt: !907)
!1002 = !DILocation(line: 163, column: 50, scope: !313, inlinedAt: !907)
!1003 = !DILocation(line: 163, column: 71, scope: !313, inlinedAt: !907)
!1004 = !DILocation(line: 164, column: 39, scope: !313, inlinedAt: !907)
!1005 = !DILocation(line: 164, column: 48, scope: !313, inlinedAt: !907)
!1006 = !DILocation(line: 164, column: 57, scope: !313, inlinedAt: !907)
!1007 = !DILocation(line: 166, column: 19, scope: !313, inlinedAt: !907)
!1008 = !DILocation(line: 167, column: 19, scope: !313, inlinedAt: !907)
!1009 = !DILocation(line: 168, column: 19, scope: !313, inlinedAt: !907)
!1010 = !DILocation(line: 226, column: 16, scope: !488, inlinedAt: !957)
!1011 = !DILocation(line: 229, column: 5, scope: !465, inlinedAt: !957)
!1012 = !DILocation(line: 326, column: 20, scope: !719)
!1013 = !DILocation(line: 306, column: 20, scope: !688)
!1014 = distinct !{!1014, !717, !1015}
!1015 = !DILocation(line: 327, column: 9, scope: !688)
!1016 = distinct !DISubprogram(name: "memtest_alloc_and_test", scope: !3, file: !3, line: 336, type: !1017, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !15, !38}
!1019 = !{!1020, !1021, !1022, !1023}
!1020 = !DILocalVariable(name: "megabytes", arg: 1, scope: !1016, file: !3, line: 336, type: !15)
!1021 = !DILocalVariable(name: "passes", arg: 2, scope: !1016, file: !3, line: 336, type: !38)
!1022 = !DILocalVariable(name: "bytes", scope: !1016, file: !3, line: 337, type: !15)
!1023 = !DILocalVariable(name: "m", scope: !1016, file: !3, line: 338, type: !9)
!1024 = !DILocation(line: 336, column: 36, scope: !1016)
!1025 = !DILocation(line: 336, column: 51, scope: !1016)
!1026 = !DILocation(line: 337, column: 34, scope: !1016)
!1027 = !DILocation(line: 337, column: 12, scope: !1016)
!1028 = !DILocation(line: 338, column: 24, scope: !1016)
!1029 = !DILocation(line: 340, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 340, column: 9)
!1031 = !DILocation(line: 340, column: 9, scope: !1016)
!1032 = !DILocation(line: 341, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 340, column: 20)
!1034 = !{!83, !85, i64 24}
!1035 = !DILocation(line: 342, column: 33, scope: !1033)
!1036 = !{!84, !84, i64 0}
!1037 = !DILocation(line: 342, column: 24, scope: !1033)
!1038 = !DILocation(line: 341, column: 9, scope: !1033)
!1039 = !DILocation(line: 343, column: 9, scope: !1033)
!1040 = !DILocation(line: 338, column: 20, scope: !1016)
!1041 = !DILocation(line: 345, column: 5, scope: !1016)
!1042 = !DILocation(line: 346, column: 5, scope: !1016)
!1043 = !DILocation(line: 347, column: 1, scope: !1016)
!1044 = distinct !DISubprogram(name: "memtest", scope: !3, file: !3, line: 349, type: !1017, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1045)
!1045 = !{!1046, !1047}
!1046 = !DILocalVariable(name: "megabytes", arg: 1, scope: !1044, file: !3, line: 349, type: !15)
!1047 = !DILocalVariable(name: "passes", arg: 2, scope: !1044, file: !3, line: 349, type: !38)
!1048 = !DILocation(line: 349, column: 21, scope: !1044)
!1049 = !DILocation(line: 349, column: 36, scope: !1044)
!1050 = !DILocation(line: 350, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 350, column: 9)
!1052 = !DILocation(line: 350, column: 35, scope: !1051)
!1053 = !DILocation(line: 350, column: 9, scope: !1044)
!1054 = !DILocation(line: 351, column: 19, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 350, column: 42)
!1056 = !DILocation(line: 352, column: 19, scope: !1055)
!1057 = !DILocation(line: 353, column: 5, scope: !1055)
!1058 = !DILocation(line: 354, column: 5, scope: !1044)
!1059 = !DILocation(line: 355, column: 5, scope: !1044)
!1060 = !DILocation(line: 356, column: 5, scope: !1044)
!1061 = !DILocation(line: 357, column: 5, scope: !1044)
!1062 = !DILocation(line: 358, column: 5, scope: !1044)
!1063 = !DILocation(line: 359, column: 5, scope: !1044)
