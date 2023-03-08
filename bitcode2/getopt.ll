; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getopt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getopt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.getopt_data = type { i8*, i32, i32, i32, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
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

@optarg = dso_local local_unnamed_addr global i8* null, align 8, !dbg !0
@optind = dso_local local_unnamed_addr global i32 0, align 4, !dbg !16
@opterr = dso_local local_unnamed_addr global i32 1, align 4, !dbg !19
@optopt = dso_local local_unnamed_addr global i32 63, align 4, !dbg !21
@optwhere = internal unnamed_addr global i32 0, align 4, !dbg !23
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c": option `\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"' is ambiguous (could be `--\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"' or `--\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"')\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c": invalid option -- `-\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c": argument required for option `-\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt(i32, i8**, i8*) local_unnamed_addr #0 !dbg !29 {
  %4 = alloca %struct.getopt_data, align 8
  %5 = bitcast %struct.getopt_data* %4 to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !53
  %6 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !63, !tbaa !64
  %7 = bitcast %struct.getopt_data* %4 to i64*, !dbg !68
  store i64 %6, i64* %7, align 8, !dbg !68, !tbaa !69
  %8 = load i32, i32* @optind, align 4, !dbg !72, !tbaa !73
  %9 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %4, i64 0, i32 1, !dbg !74
  store i32 %8, i32* %9, align 8, !dbg !75, !tbaa !76
  %10 = load i32, i32* @opterr, align 4, !dbg !77, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %4, i64 0, i32 2, !dbg !78
  store i32 %10, i32* %11, align 4, !dbg !79, !tbaa !80
  %12 = load i32, i32* @optopt, align 4, !dbg !81, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %4, i64 0, i32 3, !dbg !82
  store i32 %12, i32* %13, align 8, !dbg !83, !tbaa !84
  %14 = load i32, i32* @optwhere, align 4, !dbg !85, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %4, i64 0, i32 4, !dbg !86
  store i32 %14, i32* %15, align 4, !dbg !87, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  %16 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* null, i32* null, i32 0, %struct.getopt_data* nonnull %4) #5, !dbg !90
  %17 = load i64, i64* %7, align 8, !dbg !97, !tbaa !69
  store i64 %17, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !98, !tbaa !64
  %18 = load i32, i32* %9, align 8, !dbg !99, !tbaa !76
  store i32 %18, i32* @optind, align 4, !dbg !100, !tbaa !73
  %19 = load i32, i32* %11, align 4, !dbg !101, !tbaa !80
  store i32 %19, i32* @opterr, align 4, !dbg !102, !tbaa !73
  %20 = load i32, i32* %13, align 8, !dbg !103, !tbaa !84
  store i32 %20, i32* @optopt, align 4, !dbg !104, !tbaa !73
  %21 = load i32, i32* %15, align 4, !dbg !105, !tbaa !88
  store i32 %21, i32* @optwhere, align 4, !dbg !106, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  ret i32 %16, !dbg !109
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @getopt_internal(i32, i8**, i8*, %struct.option* readonly, i32*, i32, %struct.getopt_data*) unnamed_addr #0 !dbg !110 {
  %8 = icmp eq i32 %0, 0, !dbg !165
  %9 = icmp eq i8** %1, null, !dbg !167
  %10 = or i1 %8, %9, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br i1 %10, label %611, label %11, !dbg !168

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i8* %2, null, !dbg !169
  %13 = icmp eq %struct.option* %3, null, !dbg !170
  %14 = and i1 %12, %13, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %14, label %611, label %15, !dbg !171

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !172
  %17 = load i32, i32* %16, align 8, !dbg !172, !tbaa !76
  %18 = icmp slt i32 %17, %0, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br i1 %18, label %19, label %611, !dbg !174

; <label>:19:                                     ; preds = %15
  %20 = sext i32 %17 to i64, !dbg !175
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !175
  %22 = load i8*, i8** %21, align 8, !dbg !175, !tbaa !64
  %23 = icmp eq i8* %22, null, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %23, label %611, label %24, !dbg !177

; <label>:24:                                     ; preds = %19
  %25 = tail call i32 @strcmp(i8* nonnull %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !178
  %26 = icmp eq i32 %25, 0, !dbg !180
  %27 = load i32, i32* %16, align 8, !dbg !181, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %26, label %28, label %30, !dbg !183

; <label>:28:                                     ; preds = %24
  %29 = add nsw i32 %27, 1, !dbg !184
  store i32 %29, i32* %16, align 8, !dbg !184, !tbaa !76
  br label %611, !dbg !186

; <label>:30:                                     ; preds = %24
  %31 = icmp eq i32 %27, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %31, label %32, label %34, !dbg !188

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !189
  store i32 1, i32* %33, align 4, !dbg !190, !tbaa !88
  store i32 1, i32* %16, align 8, !dbg !191, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %34, !dbg !192

; <label>:34:                                     ; preds = %32, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %12, label %43, label %35, !dbg !193

; <label>:35:                                     ; preds = %34
  %36 = load i8, i8* %2, align 1, !dbg !195, !tbaa !196
  %37 = icmp eq i8 %36, 45, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %37, label %40, label %38, !dbg !198

; <label>:38:                                     ; preds = %35
  %39 = icmp eq i8 %36, 43, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %39, label %40, label %43, !dbg !200

; <label>:40:                                     ; preds = %35, %38
  %41 = select i1 %37, i32 1, i32 2, !dbg !201
  %42 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br label %47, !dbg !205

; <label>:43:                                     ; preds = %38, %34
  %44 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !207
  %45 = icmp eq i8* %44, null, !dbg !208
  %46 = select i1 %45, i32 0, i32 2, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %12, label %54, label %47, !dbg !205

; <label>:47:                                     ; preds = %40, %43
  %48 = phi i32 [ %41, %40 ], [ %46, %43 ]
  %49 = phi i8* [ %42, %40 ], [ %2, %43 ]
  %50 = load i8, i8* %49, align 1, !dbg !210, !tbaa !196
  %51 = icmp eq i8 %50, 58, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %51, label %52, label %54, !dbg !212

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br label %54, !dbg !215

; <label>:54:                                     ; preds = %43, %52, %47
  %55 = phi i32 [ %48, %52 ], [ %48, %47 ], [ %46, %43 ]
  %56 = phi i8* [ %53, %52 ], [ %49, %47 ], [ null, %43 ], !dbg !216
  %57 = phi i32 [ 1, %52 ], [ 0, %47 ], [ 0, %43 ], !dbg !217
  %58 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !218
  %59 = load i32, i32* %58, align 4, !dbg !218, !tbaa !88
  %60 = icmp eq i32 %59, 1, !dbg !220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %60, label %61, label %168, !dbg !221

; <label>:61:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %62 = trunc i32 %55 to i2, !dbg !222
  switch i2 %62, label %63 [
    i2 -2, label %153
    i2 1, label %133
  ], !dbg !222

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %16, align 8, !dbg !224, !tbaa !76
  %65 = sext i32 %64 to i64, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !228
  %67 = load i8*, i8** %66, align 8, !dbg !228, !tbaa !64
  %68 = icmp eq i8* %67, null, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %68, label %89, label %69, !dbg !239

; <label>:69:                                     ; preds = %63
  %70 = icmp eq i32 %5, 0
  br label %71, !dbg !239

; <label>:71:                                     ; preds = %69, %81
  %72 = phi i64 [ %65, %69 ], [ %82, %81 ]
  %73 = phi i8* [ %67, %69 ], [ %86, %81 ]
  %74 = phi i32 [ 0, %69 ], [ %84, %81 ]
  %75 = load i8, i8* %73, align 1, !dbg !240, !tbaa !196
  %76 = icmp eq i8 %75, 45, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %76, label %88, label %77, !dbg !242

; <label>:77:                                     ; preds = %71
  br i1 %70, label %78, label %79, !dbg !244

; <label>:78:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br label %81, !dbg !227

; <label>:79:                                     ; preds = %77
  %80 = icmp eq i8 %75, 43, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %80, label %90, label %81, !dbg !227

; <label>:81:                                     ; preds = %79, %78
  %82 = add i64 %72, 1, !dbg !247
  %83 = trunc i64 %82 to i32, !dbg !247
  store i32 %83, i32* %16, align 8, !dbg !247, !tbaa !76
  %84 = add nuw nsw i32 %74, 1, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %85 = getelementptr inbounds i8*, i8** %1, i64 %82, !dbg !228
  %86 = load i8*, i8** %85, align 8, !dbg !228, !tbaa !64
  %87 = icmp eq i8* %86, null, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %87, label %89, label %71, !dbg !239, !llvm.loop !250

; <label>:88:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br label %90

; <label>:89:                                     ; preds = %81, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  store i32 %64, i32* %16, align 8, !dbg !253, !tbaa !76
  br label %611, !dbg !256

; <label>:90:                                     ; preds = %79, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  %91 = tail call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !257
  %92 = icmp eq i32 %91, 0, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %92, label %93, label %168, !dbg !260

; <label>:93:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  %94 = icmp ugt i32 %74, 1, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %94, label %95, label %112, !dbg !289

; <label>:95:                                     ; preds = %93
  %96 = lshr i32 %74, 1
  %97 = zext i32 %96 to i64, !dbg !290
  br label %98, !dbg !290

; <label>:98:                                     ; preds = %98, %95
  %99 = phi i64 [ 0, %95 ], [ %110, %98 ]
  %100 = getelementptr inbounds i8*, i8** %66, i64 %99, !dbg !290
  %101 = bitcast i8** %100 to i64*, !dbg !290
  %102 = load i64, i64* %101, align 8, !dbg !290, !tbaa !64
  %103 = trunc i64 %99 to i32, !dbg !293
  %104 = xor i32 %103, -1, !dbg !293
  %105 = add i32 %74, %104, !dbg !293
  %106 = sext i32 %105 to i64, !dbg !294
  %107 = getelementptr inbounds i8*, i8** %66, i64 %106, !dbg !294
  %108 = bitcast i8** %107 to i64*, !dbg !294
  %109 = load i64, i64* %108, align 8, !dbg !294, !tbaa !64
  store i64 %109, i64* %101, align 8, !dbg !295, !tbaa !64
  store i64 %102, i64* %108, align 8, !dbg !296, !tbaa !64
  %110 = add nuw nsw i64 %99, 1, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %111 = icmp ult i64 %110, %97, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %111, label %98, label %112, !dbg !289, !llvm.loop !299

; <label>:112:                                    ; preds = %98, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  %113 = icmp eq i32 %74, 0, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %113, label %131, label %114, !dbg !308

; <label>:114:                                    ; preds = %112
  %115 = add nuw nsw i32 %74, 1, !dbg !309
  %116 = lshr i32 %115, 1
  %117 = zext i32 %116 to i64, !dbg !311
  br label %118, !dbg !311

; <label>:118:                                    ; preds = %118, %114
  %119 = phi i64 [ 0, %114 ], [ %129, %118 ]
  %120 = getelementptr inbounds i8*, i8** %66, i64 %119, !dbg !311
  %121 = bitcast i8** %120 to i64*, !dbg !311
  %122 = load i64, i64* %121, align 8, !dbg !311, !tbaa !64
  %123 = trunc i64 %119 to i32, !dbg !313
  %124 = sub i32 %74, %123, !dbg !313
  %125 = sext i32 %124 to i64, !dbg !314
  %126 = getelementptr inbounds i8*, i8** %66, i64 %125, !dbg !314
  %127 = bitcast i8** %126 to i64*, !dbg !314
  %128 = load i64, i64* %127, align 8, !dbg !314, !tbaa !64
  store i64 %128, i64* %121, align 8, !dbg !315, !tbaa !64
  store i64 %122, i64* %127, align 8, !dbg !316, !tbaa !64
  %129 = add nuw nsw i64 %119, 1, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %130 = icmp ult i64 %129, %117, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %130, label %118, label %131, !dbg !308, !llvm.loop !299

; <label>:131:                                    ; preds = %118, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %132 = add i32 %64, 1, !dbg !328
  store i32 %132, i32* %16, align 8, !dbg !329, !tbaa !76
  br label %611, !dbg !330

; <label>:133:                                    ; preds = %61
  %134 = load i32, i32* %16, align 8, !dbg !331, !tbaa !76
  %135 = sext i32 %134 to i64, !dbg !333
  %136 = getelementptr inbounds i8*, i8** %1, i64 %135, !dbg !333
  %137 = load i8*, i8** %136, align 8, !dbg !333, !tbaa !64
  %138 = icmp eq i8* %137, null, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %139 = ptrtoint i8* %137 to i64, !dbg !338
  br i1 %138, label %146, label %140, !dbg !338

; <label>:140:                                    ; preds = %133
  %141 = load i8, i8* %137, align 1, !dbg !339, !tbaa !196
  %142 = icmp eq i8 %141, 45, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %142, label %146, label %143, !dbg !341

; <label>:143:                                    ; preds = %140
  %144 = icmp eq i32 %5, 0, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br i1 %144, label %145, label %147, !dbg !343

; <label>:145:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %149, !dbg !345

; <label>:146:                                    ; preds = %140, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %168, !dbg !345

; <label>:147:                                    ; preds = %143
  %148 = icmp eq i8 %141, 43, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %148, label %168, label %149, !dbg !345

; <label>:149:                                    ; preds = %147, %145
  %150 = add nsw i32 %134, 1, !dbg !347
  store i32 %150, i32* %16, align 8, !dbg !347, !tbaa !76
  %151 = bitcast %struct.getopt_data* %6 to i64*, !dbg !349
  store i64 %139, i64* %151, align 8, !dbg !349, !tbaa !69
  %152 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !350
  store i32 1, i32* %152, align 8, !dbg !351, !tbaa !84
  br label %611, !dbg !352

; <label>:153:                                    ; preds = %61
  %154 = load i32, i32* %16, align 8, !dbg !353, !tbaa !76
  %155 = sext i32 %154 to i64, !dbg !355
  %156 = getelementptr inbounds i8*, i8** %1, i64 %155, !dbg !355
  %157 = load i8*, i8** %156, align 8, !dbg !355, !tbaa !64
  %158 = icmp eq i8* %157, null, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %158, label %165, label %159, !dbg !360

; <label>:159:                                    ; preds = %153
  %160 = load i8, i8* %157, align 1, !dbg !361, !tbaa !196
  %161 = icmp eq i8 %160, 45, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %161, label %165, label %162, !dbg !363

; <label>:162:                                    ; preds = %159
  %163 = icmp eq i32 %5, 0, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %163, label %164, label %166, !dbg !365

; <label>:164:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br label %611, !dbg !367

; <label>:165:                                    ; preds = %159, %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br label %168, !dbg !367

; <label>:166:                                    ; preds = %162
  %167 = icmp eq i8 %160, 43, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %167, label %168, label %611, !dbg !367

; <label>:168:                                    ; preds = %166, %147, %165, %146, %90, %54
  %169 = phi i64 [ %65, %90 ], [ 0, %147 ], [ 0, %166 ], [ 0, %54 ], [ 0, %146 ], [ 0, %165 ], !dbg !217
  %170 = phi i32 [ %74, %90 ], [ 0, %147 ], [ 0, %166 ], [ 0, %54 ], [ 0, %146 ], [ 0, %165 ], !dbg !217
  %171 = load i32, i32* %16, align 8, !dbg !369, !tbaa !76
  %172 = sext i32 %171 to i64, !dbg !371
  %173 = getelementptr inbounds i8*, i8** %1, i64 %172, !dbg !371
  %174 = load i8*, i8** %173, align 8, !dbg !371, !tbaa !64
  %175 = icmp eq i8* %174, null, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %175, label %613, label %176, !dbg !373

; <label>:176:                                    ; preds = %168
  br i1 %13, label %329, label %177, !dbg !376

; <label>:177:                                    ; preds = %176
  %178 = tail call i32 @memcmp(i8* nonnull %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !377
  %179 = icmp eq i32 %178, 0, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %179, label %189, label %180, !dbg !379

; <label>:180:                                    ; preds = %177
  %181 = icmp eq i32 %5, 0, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %181, label %329, label %182, !dbg !381

; <label>:182:                                    ; preds = %180
  %183 = load i32, i32* %16, align 8, !dbg !382, !tbaa !76
  %184 = sext i32 %183 to i64, !dbg !383
  %185 = getelementptr inbounds i8*, i8** %1, i64 %184, !dbg !383
  %186 = load i8*, i8** %185, align 8, !dbg !383, !tbaa !64
  %187 = load i8, i8* %186, align 1, !dbg !383, !tbaa !196
  %188 = icmp eq i8 %187, 43, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %188, label %189, label %329, !dbg !385

; <label>:189:                                    ; preds = %182, %177
  %190 = load i32, i32* %58, align 4, !dbg !386, !tbaa !88
  %191 = icmp eq i32 %190, 1, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %191, label %192, label %329, !dbg !388

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %16, align 8, !dbg !389, !tbaa !76
  %194 = sext i32 %193 to i64, !dbg !392
  %195 = getelementptr inbounds i8*, i8** %1, i64 %194, !dbg !392
  %196 = load i8*, i8** %195, align 8, !dbg !392, !tbaa !64
  %197 = tail call i32 @memcmp(i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !393
  %198 = icmp eq i32 %197, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %198, label %201, label %199, !dbg !395

; <label>:199:                                    ; preds = %192
  %200 = load i32, i32* %58, align 4, !dbg !396, !tbaa !88
  br label %202, !dbg !395

; <label>:201:                                    ; preds = %192
  store i32 2, i32* %58, align 4, !dbg !397, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %202, !dbg !398

; <label>:202:                                    ; preds = %199, %201
  %203 = phi i32 [ %200, %199 ], [ 2, %201 ], !dbg !396
  %204 = load i32, i32* %16, align 8, !dbg !399, !tbaa !76
  %205 = sext i32 %204 to i64, !dbg !400
  %206 = getelementptr inbounds i8*, i8** %1, i64 %205, !dbg !400
  %207 = load i8*, i8** %206, align 8, !dbg !400, !tbaa !64
  %208 = sext i32 %203 to i64, !dbg !401
  %209 = getelementptr inbounds i8, i8* %207, i64 %208, !dbg !401
  %210 = tail call i8* @strchr(i8* %209, i32 61) #6, !dbg !402
  %211 = icmp eq i8* %210, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %212 = load i32, i32* %16, align 8, !dbg !406, !tbaa !76
  %213 = sext i32 %212 to i64, !dbg !406
  %214 = getelementptr inbounds i8*, i8** %1, i64 %213, !dbg !406
  br i1 %211, label %215, label %224, !dbg !405

; <label>:215:                                    ; preds = %202
  %216 = load i8*, i8** %214, align 8, !dbg !407, !tbaa !64
  %217 = tail call i64 @strlen(i8* %216) #6, !dbg !409
  %218 = load i32, i32* %16, align 8, !dbg !410, !tbaa !76
  %219 = sext i32 %218 to i64, !dbg !411
  %220 = getelementptr inbounds i8*, i8** %1, i64 %219, !dbg !411
  %221 = load i8*, i8** %220, align 8, !dbg !411, !tbaa !64
  %222 = getelementptr inbounds i8, i8* %221, i64 %217, !dbg !412
  %223 = load i32, i32* %58, align 4, !dbg !413, !tbaa !88
  br label %230, !dbg !414

; <label>:224:                                    ; preds = %202
  %225 = bitcast i8** %214 to i64*, !dbg !415
  %226 = load i64, i64* %225, align 8, !dbg !415, !tbaa !64
  %227 = ptrtoint i8* %210 to i64, !dbg !416
  %228 = sub i64 %227, %226, !dbg !416
  %229 = load i32, i32* %58, align 4, !dbg !417, !tbaa !88
  br label %230

; <label>:230:                                    ; preds = %224, %215
  %231 = phi i32 [ %229, %224 ], [ %223, %215 ]
  %232 = phi i64 [ %228, %224 ], [ %217, %215 ]
  %233 = phi i32 [ %212, %224 ], [ %218, %215 ]
  %234 = phi i8* [ %210, %224 ], [ %222, %215 ], !dbg !418
  %235 = sext i32 %231 to i64, !dbg !419
  %236 = sub i64 %232, %235, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %237 = getelementptr inbounds %struct.option, %struct.option* %3, i64 0, i32 0, !dbg !422
  %238 = load i8*, i8** %237, align 8, !dbg !422, !tbaa !424
  %239 = icmp eq i8* %238, null, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %239, label %240, label %241, !dbg !427

; <label>:240:                                    ; preds = %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br label %329, !dbg !428

; <label>:241:                                    ; preds = %230, %319
  %242 = phi i32 [ %321, %319 ], [ %231, %230 ], !dbg !429
  %243 = phi i32 [ %320, %319 ], [ %233, %230 ], !dbg !432
  %244 = phi i64 [ %315, %319 ], [ 0, %230 ]
  %245 = phi i8* [ %317, %319 ], [ %238, %230 ]
  %246 = phi i8** [ %316, %319 ], [ %237, %230 ]
  %247 = phi i32 [ %314, %319 ], [ -1, %230 ]
  %248 = sext i32 %243 to i64, !dbg !433
  %249 = getelementptr inbounds i8*, i8** %1, i64 %248, !dbg !433
  %250 = load i8*, i8** %249, align 8, !dbg !433, !tbaa !64
  %251 = sext i32 %242 to i64, !dbg !434
  %252 = getelementptr inbounds i8, i8* %250, i64 %251, !dbg !434
  %253 = tail call i32 @memcmp(i8* %252, i8* nonnull %245, i64 %236) #6, !dbg !435
  %254 = icmp eq i32 %253, 0, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %254, label %255, label %313, !dbg !437

; <label>:255:                                    ; preds = %241
  %256 = load i8*, i8** %246, align 8, !dbg !438, !tbaa !424
  %257 = tail call i64 @strlen(i8* %256) #6, !dbg !441
  %258 = icmp eq i64 %236, %257, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %258, label %259, label %261, !dbg !443

; <label>:259:                                    ; preds = %255
  %260 = trunc i64 %244 to i32, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br label %322, !dbg !444

; <label>:261:                                    ; preds = %255
  %262 = icmp slt i32 %247, 0, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %262, label %263, label %265, !dbg !449

; <label>:263:                                    ; preds = %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %264 = trunc i64 %244 to i32, !dbg !450
  br label %313, !dbg !450

; <label>:265:                                    ; preds = %261
  %266 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !451
  %267 = load i32, i32* %266, align 4, !dbg !451, !tbaa !80
  %268 = icmp eq i32 %267, 0, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %268, label %311, label %269, !dbg !455

; <label>:269:                                    ; preds = %265
  %270 = load i8*, i8** %1, align 8, !dbg !456, !tbaa !64
  %271 = tail call %struct._reent* @__getreent() #6, !dbg !458
  %272 = getelementptr inbounds %struct._reent, %struct._reent* %271, i64 0, i32 3, !dbg !458
  %273 = load %struct.__sFILE*, %struct.__sFILE** %272, align 8, !dbg !458, !tbaa !459
  %274 = tail call i32 @fputs(i8* %270, %struct.__sFILE* %273) #6, !dbg !464
  %275 = tail call %struct._reent* @__getreent() #6, !dbg !465
  %276 = getelementptr inbounds %struct._reent, %struct._reent* %275, i64 0, i32 3, !dbg !465
  %277 = load %struct.__sFILE*, %struct.__sFILE** %276, align 8, !dbg !465, !tbaa !459
  %278 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.__sFILE* %277) #6, !dbg !466
  %279 = load i32, i32* %16, align 8, !dbg !467, !tbaa !76
  %280 = sext i32 %279 to i64, !dbg !468
  %281 = getelementptr inbounds i8*, i8** %1, i64 %280, !dbg !468
  %282 = load i8*, i8** %281, align 8, !dbg !468, !tbaa !64
  %283 = tail call %struct._reent* @__getreent() #6, !dbg !469
  %284 = getelementptr inbounds %struct._reent, %struct._reent* %283, i64 0, i32 3, !dbg !469
  %285 = load %struct.__sFILE*, %struct.__sFILE** %284, align 8, !dbg !469, !tbaa !459
  %286 = tail call i32 @fputs(i8* %282, %struct.__sFILE* %285) #6, !dbg !470
  %287 = tail call %struct._reent* @__getreent() #6, !dbg !471
  %288 = getelementptr inbounds %struct._reent, %struct._reent* %287, i64 0, i32 3, !dbg !471
  %289 = load %struct.__sFILE*, %struct.__sFILE** %288, align 8, !dbg !471, !tbaa !459
  %290 = tail call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %289) #6, !dbg !472
  %291 = sext i32 %247 to i64, !dbg !473
  %292 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %291, i32 0, !dbg !474
  %293 = load i8*, i8** %292, align 8, !dbg !474, !tbaa !424
  %294 = tail call %struct._reent* @__getreent() #6, !dbg !475
  %295 = getelementptr inbounds %struct._reent, %struct._reent* %294, i64 0, i32 3, !dbg !475
  %296 = load %struct.__sFILE*, %struct.__sFILE** %295, align 8, !dbg !475, !tbaa !459
  %297 = tail call i32 @fputs(i8* %293, %struct.__sFILE* %296) #6, !dbg !476
  %298 = tail call %struct._reent* @__getreent() #6, !dbg !477
  %299 = getelementptr inbounds %struct._reent, %struct._reent* %298, i64 0, i32 3, !dbg !477
  %300 = load %struct.__sFILE*, %struct.__sFILE** %299, align 8, !dbg !477, !tbaa !459
  %301 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %300) #6, !dbg !478
  %302 = load i8*, i8** %246, align 8, !dbg !479, !tbaa !424
  %303 = tail call %struct._reent* @__getreent() #6, !dbg !480
  %304 = getelementptr inbounds %struct._reent, %struct._reent* %303, i64 0, i32 3, !dbg !480
  %305 = load %struct.__sFILE*, %struct.__sFILE** %304, align 8, !dbg !480, !tbaa !459
  %306 = tail call i32 @fputs(i8* %302, %struct.__sFILE* %305) #6, !dbg !481
  %307 = tail call %struct._reent* @__getreent() #6, !dbg !482
  %308 = getelementptr inbounds %struct._reent, %struct._reent* %307, i64 0, i32 3, !dbg !482
  %309 = load %struct.__sFILE*, %struct.__sFILE** %308, align 8, !dbg !482, !tbaa !459
  %310 = tail call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.__sFILE* %309) #6, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %311, !dbg !484

; <label>:311:                                    ; preds = %265, %269
  %312 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !485
  store i32 63, i32* %312, align 8, !dbg !486, !tbaa !84
  br label %611, !dbg !487

; <label>:313:                                    ; preds = %241, %263
  %314 = phi i32 [ %264, %263 ], [ %247, %241 ], !dbg !418
  %315 = add nuw i64 %244, 1, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %316 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %315, i32 0, !dbg !422
  %317 = load i8*, i8** %316, align 8, !dbg !422, !tbaa !424
  %318 = icmp eq i8* %317, null, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %318, label %322, label %319, !dbg !427, !llvm.loop !490

; <label>:319:                                    ; preds = %313
  %320 = load i32, i32* %16, align 8, !dbg !432, !tbaa !76
  %321 = load i32, i32* %58, align 4, !dbg !429, !tbaa !88
  br label %241, !dbg !427

; <label>:322:                                    ; preds = %313, %259
  %323 = phi i32 [ %260, %259 ], [ %314, %313 ], !dbg !418
  %324 = icmp sgt i32 %323, -1, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %324, label %325, label %329, !dbg !428

; <label>:325:                                    ; preds = %322
  %326 = sext i32 %323 to i64, !dbg !494
  %327 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %326, i32 1, !dbg !495
  %328 = load i32, i32* %327, align 8, !dbg !495, !tbaa !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br label %415, !dbg !498

; <label>:329:                                    ; preds = %240, %180, %176, %322, %189, %182
  %330 = phi i32 [ %323, %322 ], [ -1, %189 ], [ -1, %182 ], [ -1, %180 ], [ -1, %176 ], [ -1, %240 ], !dbg !217
  %331 = icmp slt i32 %330, 0, !dbg !500
  %332 = icmp ne i8* %56, null, !dbg !501
  %333 = and i1 %332, %331, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %333, label %335, label %334, !dbg !498

; <label>:334:                                    ; preds = %329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %507

; <label>:335:                                    ; preds = %329
  %336 = load i32, i32* %16, align 8, !dbg !505, !tbaa !76
  %337 = sext i32 %336 to i64, !dbg !507
  %338 = getelementptr inbounds i8*, i8** %1, i64 %337, !dbg !507
  %339 = load i8*, i8** %338, align 8, !dbg !507, !tbaa !64
  %340 = load i32, i32* %58, align 4, !dbg !508, !tbaa !88
  %341 = sext i32 %340 to i64, !dbg !507
  %342 = getelementptr inbounds i8, i8* %339, i64 %341, !dbg !507
  %343 = load i8, i8* %342, align 1, !dbg !507, !tbaa !196
  %344 = sext i8 %343 to i32, !dbg !507
  %345 = tail call i8* @strchr(i8* nonnull %56, i32 %344) #6, !dbg !509
  %346 = icmp eq i8* %345, null, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %346, label %347, label %393, !dbg !512

; <label>:347:                                    ; preds = %335
  %348 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !513
  %349 = load i32, i32* %348, align 4, !dbg !513, !tbaa !80
  %350 = icmp eq i32 %349, 0, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %350, label %378, label %351, !dbg !517

; <label>:351:                                    ; preds = %347
  %352 = load i8*, i8** %1, align 8, !dbg !518, !tbaa !64
  %353 = tail call %struct._reent* @__getreent() #6, !dbg !520
  %354 = getelementptr inbounds %struct._reent, %struct._reent* %353, i64 0, i32 3, !dbg !520
  %355 = load %struct.__sFILE*, %struct.__sFILE** %354, align 8, !dbg !520, !tbaa !459
  %356 = tail call i32 @fputs(i8* %352, %struct.__sFILE* %355) #6, !dbg !521
  %357 = tail call %struct._reent* @__getreent() #6, !dbg !522
  %358 = getelementptr inbounds %struct._reent, %struct._reent* %357, i64 0, i32 3, !dbg !522
  %359 = load %struct.__sFILE*, %struct.__sFILE** %358, align 8, !dbg !522, !tbaa !459
  %360 = tail call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.__sFILE* %359) #6, !dbg !523
  %361 = load i32, i32* %16, align 8, !dbg !524, !tbaa !76
  %362 = sext i32 %361 to i64, !dbg !525
  %363 = getelementptr inbounds i8*, i8** %1, i64 %362, !dbg !525
  %364 = load i8*, i8** %363, align 8, !dbg !525, !tbaa !64
  %365 = load i32, i32* %58, align 4, !dbg !526, !tbaa !88
  %366 = sext i32 %365 to i64, !dbg !525
  %367 = getelementptr inbounds i8, i8* %364, i64 %366, !dbg !525
  %368 = load i8, i8* %367, align 1, !dbg !525, !tbaa !196
  %369 = sext i8 %368 to i32, !dbg !525
  %370 = tail call %struct._reent* @__getreent() #6, !dbg !527
  %371 = getelementptr inbounds %struct._reent, %struct._reent* %370, i64 0, i32 3, !dbg !527
  %372 = load %struct.__sFILE*, %struct.__sFILE** %371, align 8, !dbg !527, !tbaa !459
  %373 = tail call i32 @fputc(i32 %369, %struct.__sFILE* %372) #6, !dbg !528
  %374 = tail call %struct._reent* @__getreent() #6, !dbg !529
  %375 = getelementptr inbounds %struct._reent, %struct._reent* %374, i64 0, i32 3, !dbg !529
  %376 = load %struct.__sFILE*, %struct.__sFILE** %375, align 8, !dbg !529, !tbaa !459
  %377 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %376) #6, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br label %378, !dbg !531

; <label>:378:                                    ; preds = %347, %351
  %379 = load i32, i32* %58, align 4, !dbg !532, !tbaa !88
  %380 = add nsw i32 %379, 1, !dbg !532
  store i32 %380, i32* %58, align 4, !dbg !532, !tbaa !88
  %381 = load i32, i32* %16, align 8, !dbg !533, !tbaa !76
  %382 = sext i32 %381 to i64, !dbg !535
  %383 = getelementptr inbounds i8*, i8** %1, i64 %382, !dbg !535
  %384 = load i8*, i8** %383, align 8, !dbg !535, !tbaa !64
  %385 = sext i32 %380 to i64, !dbg !535
  %386 = getelementptr inbounds i8, i8* %384, i64 %385, !dbg !535
  %387 = load i8, i8* %386, align 1, !dbg !535, !tbaa !196
  %388 = icmp eq i8 %387, 0, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %388, label %389, label %391, !dbg !537

; <label>:389:                                    ; preds = %378
  %390 = add nsw i32 %381, 1, !dbg !538
  store i32 %390, i32* %16, align 8, !dbg !538, !tbaa !76
  store i32 1, i32* %58, align 4, !dbg !540, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br label %391, !dbg !541

; <label>:391:                                    ; preds = %389, %378
  %392 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !542
  store i32 63, i32* %392, align 8, !dbg !543, !tbaa !84
  br label %611, !dbg !544

; <label>:393:                                    ; preds = %335
  %394 = getelementptr inbounds i8, i8* %345, i64 1, !dbg !545
  %395 = load i8, i8* %394, align 1, !dbg !545, !tbaa !196
  %396 = icmp eq i8 %395, 58, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %396, label %397, label %402, !dbg !547

; <label>:397:                                    ; preds = %393
  %398 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !548
  %399 = load i8, i8* %398, align 1, !dbg !548, !tbaa !196
  %400 = icmp eq i8 %399, 58, !dbg !549
  %401 = select i1 %400, i32 2, i32 1, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br label %402, !dbg !547

; <label>:402:                                    ; preds = %393, %397
  %403 = phi i32 [ %401, %397 ], [ 0, %393 ], !dbg !547
  %404 = load i32, i32* %16, align 8, !dbg !551, !tbaa !76
  %405 = sext i32 %404 to i64, !dbg !552
  %406 = getelementptr inbounds i8*, i8** %1, i64 %405, !dbg !552
  %407 = load i8*, i8** %406, align 8, !dbg !552, !tbaa !64
  %408 = load i32, i32* %58, align 4, !dbg !553, !tbaa !88
  %409 = sext i32 %408 to i64, !dbg !554
  %410 = getelementptr inbounds i8, i8* %407, i64 %409, !dbg !554
  %411 = getelementptr inbounds i8, i8* %410, i64 1, !dbg !555
  %412 = load i8, i8* %345, align 1, !dbg !556, !tbaa !196
  %413 = sext i8 %412 to i32, !dbg !556
  %414 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !557
  store i32 %413, i32* %414, align 8, !dbg !558, !tbaa !84
  br label %415, !dbg !559

; <label>:415:                                    ; preds = %325, %402
  %416 = phi i1 [ true, %402 ], [ false, %325 ]
  %417 = phi i32 [ %330, %402 ], [ %323, %325 ]
  %418 = phi i8* [ %411, %402 ], [ %234, %325 ], !dbg !419
  %419 = phi i32 [ %403, %402 ], [ %328, %325 ], !dbg !560
  %420 = phi i8* [ %345, %402 ], [ null, %325 ], !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  switch i32 %419, label %506 [
    i32 2, label %421
    i32 1, label %433
  ], !dbg !502

; <label>:421:                                    ; preds = %415
  %422 = load i8, i8* %418, align 1, !dbg !562, !tbaa !196
  %423 = icmp eq i8 %422, 61, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %423, label %424, label %427, !dbg !565

; <label>:424:                                    ; preds = %421
  %425 = getelementptr inbounds i8, i8* %418, i64 1, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  %426 = load i8, i8* %425, align 1, !dbg !568, !tbaa !196
  br label %427, !dbg !567

; <label>:427:                                    ; preds = %424, %421
  %428 = phi i8 [ %426, %424 ], [ %422, %421 ], !dbg !568
  %429 = phi i8* [ %425, %424 ], [ %418, %421 ], !dbg !561
  %430 = icmp eq i8 %428, 0, !dbg !569
  %431 = select i1 %430, i8* null, i8* %429, !dbg !570
  %432 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !571
  store i8* %431, i8** %432, align 8, !dbg !572, !tbaa !69
  store i32 1, i32* %58, align 4, !dbg !573, !tbaa !88
  br label %525, !dbg !574

; <label>:433:                                    ; preds = %415
  %434 = load i8, i8* %418, align 1, !dbg !575, !tbaa !196
  %435 = icmp eq i8 %434, 61, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %435, label %436, label %439, !dbg !578

; <label>:436:                                    ; preds = %433
  %437 = getelementptr inbounds i8, i8* %418, i64 1, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  %438 = load i8, i8* %437, align 1, !dbg !581, !tbaa !196
  br label %439, !dbg !580

; <label>:439:                                    ; preds = %436, %433
  %440 = phi i8 [ %438, %436 ], [ %434, %433 ], !dbg !581
  %441 = phi i8* [ %437, %436 ], [ %418, %433 ], !dbg !561
  %442 = icmp eq i8 %440, 0, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %442, label %445, label %443, !dbg !584

; <label>:443:                                    ; preds = %439
  %444 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !585
  store i8* %441, i8** %444, align 8, !dbg !587, !tbaa !69
  store i32 1, i32* %58, align 4, !dbg !588, !tbaa !88
  br label %525, !dbg !589

; <label>:445:                                    ; preds = %439
  %446 = load i32, i32* %16, align 8, !dbg !590, !tbaa !76
  %447 = add nsw i32 %446, 1, !dbg !592
  %448 = icmp slt i32 %447, %0, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %448, label %500, label %449, !dbg !594

; <label>:449:                                    ; preds = %445
  %450 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !595
  %451 = load i32, i32* %450, align 4, !dbg !595, !tbaa !80
  %452 = icmp eq i32 %451, 0, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br i1 %452, label %496, label %453, !dbg !599

; <label>:453:                                    ; preds = %449
  %454 = load i8*, i8** %1, align 8, !dbg !600, !tbaa !64
  %455 = tail call %struct._reent* @__getreent() #6, !dbg !602
  %456 = getelementptr inbounds %struct._reent, %struct._reent* %455, i64 0, i32 3, !dbg !602
  %457 = load %struct.__sFILE*, %struct.__sFILE** %456, align 8, !dbg !602, !tbaa !459
  %458 = tail call i32 @fputs(i8* %454, %struct.__sFILE* %457) #6, !dbg !603
  %459 = tail call %struct._reent* @__getreent() #6, !dbg !604
  %460 = getelementptr inbounds %struct._reent, %struct._reent* %459, i64 0, i32 3, !dbg !604
  %461 = load %struct.__sFILE*, %struct.__sFILE** %460, align 8, !dbg !604, !tbaa !459
  %462 = tail call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), %struct.__sFILE* %461) #6, !dbg !605
  %463 = icmp sgt i32 %417, -1, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %463, label %464, label %478, !dbg !608

; <label>:464:                                    ; preds = %453
  %465 = tail call %struct._reent* @__getreent() #6, !dbg !609
  %466 = getelementptr inbounds %struct._reent, %struct._reent* %465, i64 0, i32 3, !dbg !609
  %467 = load %struct.__sFILE*, %struct.__sFILE** %466, align 8, !dbg !609, !tbaa !459
  %468 = tail call i32 @fputc(i32 45, %struct.__sFILE* %467) #6, !dbg !611
  %469 = sext i32 %417 to i64, !dbg !612
  %470 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %469, i32 0, !dbg !613
  %471 = load i8*, i8** %470, align 8, !dbg !613, !tbaa !424
  %472 = tail call %struct._reent* @__getreent() #6, !dbg !614
  %473 = getelementptr inbounds %struct._reent, %struct._reent* %472, i64 0, i32 3, !dbg !614
  %474 = load %struct.__sFILE*, %struct.__sFILE** %473, align 8, !dbg !614, !tbaa !459
  %475 = tail call i32 @fputs(i8* %471, %struct.__sFILE* %474) #6, !dbg !615
  %476 = icmp eq i32 %57, 0, !dbg !616
  %477 = select i1 %476, i32 63, i32 58, !dbg !616
  br label %487, !dbg !617

; <label>:478:                                    ; preds = %453
  %479 = load i8, i8* %420, align 1, !dbg !618, !tbaa !196
  %480 = sext i8 %479 to i32, !dbg !618
  %481 = tail call %struct._reent* @__getreent() #6, !dbg !620
  %482 = getelementptr inbounds %struct._reent, %struct._reent* %481, i64 0, i32 3, !dbg !620
  %483 = load %struct.__sFILE*, %struct.__sFILE** %482, align 8, !dbg !620, !tbaa !459
  %484 = tail call i32 @fputc(i32 %480, %struct.__sFILE* %483) #6, !dbg !621
  %485 = load i8, i8* %420, align 1, !dbg !622, !tbaa !196
  %486 = sext i8 %485 to i32, !dbg !622
  br label %487

; <label>:487:                                    ; preds = %478, %464
  %488 = phi i32 [ %486, %478 ], [ %477, %464 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %489 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !623
  store i32 %488, i32* %489, align 8, !dbg !624
  %490 = tail call %struct._reent* @__getreent() #6, !dbg !625
  %491 = getelementptr inbounds %struct._reent, %struct._reent* %490, i64 0, i32 3, !dbg !625
  %492 = load %struct.__sFILE*, %struct.__sFILE** %491, align 8, !dbg !625, !tbaa !459
  %493 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %492) #6, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %494 = load i32, i32* %16, align 8, !dbg !628, !tbaa !76
  %495 = add nsw i32 %494, 1, !dbg !628
  br label %496, !dbg !627

; <label>:496:                                    ; preds = %449, %487
  %497 = phi i32 [ %447, %449 ], [ %495, %487 ], !dbg !628
  store i32 %497, i32* %16, align 8, !dbg !628, !tbaa !76
  %498 = icmp eq i32 %57, 0, !dbg !629
  %499 = select i1 %498, i32 63, i32 58, !dbg !629
  br label %611, !dbg !630

; <label>:500:                                    ; preds = %445
  %501 = sext i32 %447 to i64, !dbg !631
  %502 = getelementptr inbounds i8*, i8** %1, i64 %501, !dbg !631
  %503 = bitcast i8** %502 to i64*, !dbg !631
  %504 = load i64, i64* %503, align 8, !dbg !631, !tbaa !64
  %505 = bitcast %struct.getopt_data* %6 to i64*, !dbg !633
  store i64 %504, i64* %505, align 8, !dbg !633, !tbaa !69
  store i32 1, i32* %58, align 4, !dbg !634, !tbaa !88
  br label %525

; <label>:506:                                    ; preds = %415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %416, label %507, label %519, !dbg !503

; <label>:507:                                    ; preds = %334, %506
  %508 = phi i32 [ %330, %334 ], [ %417, %506 ]
  %509 = load i32, i32* %58, align 4, !dbg !635, !tbaa !88
  %510 = add nsw i32 %509, 1, !dbg !635
  store i32 %510, i32* %58, align 4, !dbg !635, !tbaa !88
  %511 = load i32, i32* %16, align 8, !dbg !638, !tbaa !76
  %512 = sext i32 %511 to i64, !dbg !640
  %513 = getelementptr inbounds i8*, i8** %1, i64 %512, !dbg !640
  %514 = load i8*, i8** %513, align 8, !dbg !640, !tbaa !64
  %515 = sext i32 %510 to i64, !dbg !640
  %516 = getelementptr inbounds i8, i8* %514, i64 %515, !dbg !640
  %517 = load i8, i8* %516, align 1, !dbg !640, !tbaa !196
  %518 = icmp eq i8 %517, 0, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %518, label %519, label %521, !dbg !642

; <label>:519:                                    ; preds = %506, %507
  %520 = phi i32 [ %508, %507 ], [ %417, %506 ]
  store i32 1, i32* %58, align 4, !dbg !643, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %521, !dbg !644

; <label>:521:                                    ; preds = %519, %507
  %522 = phi i32 [ %510, %507 ], [ 1, %519 ]
  %523 = phi i32 [ %508, %507 ], [ %520, %519 ]
  %524 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !644
  store i8* null, i8** %524, align 8, !dbg !645, !tbaa !69
  br label %525, !dbg !646

; <label>:525:                                    ; preds = %443, %500, %521, %427
  %526 = phi i32 [ %522, %521 ], [ 1, %443 ], [ 1, %500 ], [ 1, %427 ], !dbg !647
  %527 = phi i32 [ %523, %521 ], [ %417, %443 ], [ %417, %500 ], [ %417, %427 ]
  %528 = phi i32 [ 0, %521 ], [ 0, %443 ], [ 1, %500 ], [ 0, %427 ], !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %529 = icmp eq i32 %55, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %529, label %530, label %587, !dbg !651

; <label>:530:                                    ; preds = %525
  %531 = icmp eq i32 %526, 1, !dbg !652
  %532 = icmp ne i32 %170, 0, !dbg !653
  %533 = and i1 %532, %531, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %533, label %534, label %587, !dbg !654

; <label>:534:                                    ; preds = %530
  %535 = getelementptr inbounds i8*, i8** %1, i64 %169, !dbg !655
  %536 = add nuw nsw i32 %528, 1, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  %537 = icmp ugt i32 %170, 1, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %537, label %538, label %555, !dbg !668

; <label>:538:                                    ; preds = %534
  %539 = lshr i32 %170, 1
  %540 = zext i32 %539 to i64, !dbg !669
  br label %541, !dbg !669

; <label>:541:                                    ; preds = %541, %538
  %542 = phi i64 [ 0, %538 ], [ %553, %541 ]
  %543 = getelementptr inbounds i8*, i8** %535, i64 %542, !dbg !669
  %544 = bitcast i8** %543 to i64*, !dbg !669
  %545 = load i64, i64* %544, align 8, !dbg !669, !tbaa !64
  %546 = trunc i64 %542 to i32, !dbg !671
  %547 = xor i32 %546, -1, !dbg !671
  %548 = add i32 %170, %547, !dbg !671
  %549 = sext i32 %548 to i64, !dbg !672
  %550 = getelementptr inbounds i8*, i8** %535, i64 %549, !dbg !672
  %551 = bitcast i8** %550 to i64*, !dbg !672
  %552 = load i64, i64* %551, align 8, !dbg !672, !tbaa !64
  store i64 %552, i64* %544, align 8, !dbg !673, !tbaa !64
  store i64 %545, i64* %551, align 8, !dbg !674, !tbaa !64
  %553 = add nuw nsw i64 %542, 1, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %554 = icmp ult i64 %553, %540, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %554, label %541, label %555, !dbg !668, !llvm.loop !299

; <label>:555:                                    ; preds = %541, %534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %556 = add nuw nsw i32 %536, %170, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %557 = icmp ugt i32 %556, 1, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %557, label %558, label %575, !dbg !685

; <label>:558:                                    ; preds = %555
  %559 = lshr i32 %556, 1
  %560 = zext i32 %559 to i64, !dbg !686
  br label %561, !dbg !686

; <label>:561:                                    ; preds = %561, %558
  %562 = phi i64 [ 0, %558 ], [ %573, %561 ]
  %563 = getelementptr inbounds i8*, i8** %535, i64 %562, !dbg !686
  %564 = bitcast i8** %563 to i64*, !dbg !686
  %565 = load i64, i64* %564, align 8, !dbg !686, !tbaa !64
  %566 = trunc i64 %562 to i32, !dbg !688
  %567 = xor i32 %566, -1, !dbg !688
  %568 = add i32 %556, %567, !dbg !688
  %569 = sext i32 %568 to i64, !dbg !689
  %570 = getelementptr inbounds i8*, i8** %535, i64 %569, !dbg !689
  %571 = bitcast i8** %570 to i64*, !dbg !689
  %572 = load i64, i64* %571, align 8, !dbg !689, !tbaa !64
  store i64 %572, i64* %564, align 8, !dbg !690, !tbaa !64
  store i64 %565, i64* %571, align 8, !dbg !691, !tbaa !64
  %573 = add nuw nsw i64 %562, 1, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %574 = icmp ult i64 %573, %560, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %574, label %561, label %575, !dbg !685, !llvm.loop !299

; <label>:575:                                    ; preds = %561, %555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  %576 = icmp eq i32 %528, 0, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %576, label %584, label %577, !dbg !701

; <label>:577:                                    ; preds = %575
  %578 = bitcast i8** %535 to i64*, !dbg !702
  %579 = load i64, i64* %578, align 8, !dbg !702, !tbaa !64
  %580 = zext i32 %528 to i64, !dbg !704
  %581 = getelementptr inbounds i8*, i8** %535, i64 %580, !dbg !704
  %582 = bitcast i8** %581 to i64*, !dbg !704
  %583 = load i64, i64* %582, align 8, !dbg !704, !tbaa !64
  store i64 %583, i64* %578, align 8, !dbg !705, !tbaa !64
  store i64 %579, i64* %582, align 8, !dbg !706, !tbaa !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br label %584, !dbg !708

; <label>:584:                                    ; preds = %577, %575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %585 = trunc i64 %169 to i32, !dbg !710
  %586 = add i32 %536, %585, !dbg !710
  br label %593, !dbg !711

; <label>:587:                                    ; preds = %525, %530
  %588 = icmp eq i32 %526, 1, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %588, label %589, label %595, !dbg !713

; <label>:589:                                    ; preds = %587
  %590 = load i32, i32* %16, align 8, !dbg !714, !tbaa !76
  %591 = add nuw nsw i32 %528, 1, !dbg !715
  %592 = add i32 %591, %590, !dbg !716
  br label %593, !dbg !717

; <label>:593:                                    ; preds = %584, %589
  %594 = phi i32 [ %592, %589 ], [ %586, %584 ]
  store i32 %594, i32* %16, align 8, !dbg !718, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br label %595, !dbg !719

; <label>:595:                                    ; preds = %593, %587
  %596 = icmp sgt i32 %527, -1, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %596, label %597, label %608, !dbg !721

; <label>:597:                                    ; preds = %595
  %598 = icmp eq i32* %4, null, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %598, label %600, label %599, !dbg !725

; <label>:599:                                    ; preds = %597
  store i32 %527, i32* %4, align 4, !dbg !726, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br label %600, !dbg !727

; <label>:600:                                    ; preds = %597, %599
  %601 = sext i32 %527 to i64, !dbg !728
  %602 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %601, i32 2, !dbg !730
  %603 = load i32*, i32** %602, align 8, !dbg !730, !tbaa !731
  %604 = icmp eq i32* %603, null, !dbg !732
  %605 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %601, i32 3, !dbg !733
  %606 = load i32, i32* %605, align 8, !dbg !733, !tbaa !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %604, label %611, label %607, !dbg !735

; <label>:607:                                    ; preds = %600
  store i32 %606, i32* %603, align 4, !dbg !736, !tbaa !73
  br label %611, !dbg !738

; <label>:608:                                    ; preds = %595
  %609 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !739
  %610 = load i32, i32* %609, align 8, !dbg !739, !tbaa !84
  br label %611, !dbg !740

; <label>:611:                                    ; preds = %600, %164, %166, %7, %19, %11, %15, %28, %89, %131, %149, %311, %391, %496, %607, %608
  %612 = phi i32 [ 1, %149 ], [ 63, %311 ], [ %499, %496 ], [ %610, %608 ], [ 0, %607 ], [ 63, %391 ], [ -1, %131 ], [ -1, %89 ], [ -1, %28 ], [ -1, %15 ], [ -1, %11 ], [ -1, %19 ], [ -1, %7 ], [ -1, %166 ], [ -1, %164 ], [ %606, %600 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %613, !dbg !742

; <label>:613:                                    ; preds = %611, %168
  %614 = phi i32 [ -1, %168 ], [ %612, %611 ], !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  ret i32 %614, !dbg !742
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !744 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !760
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !760
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !764, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !765
  store i64 %8, i64* %9, align 8, !dbg !765, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !766, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !767
  store i32 %10, i32* %11, align 8, !dbg !768, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !769, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !770
  store i32 %12, i32* %13, align 4, !dbg !771, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !772, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !773
  store i32 %14, i32* %15, align 8, !dbg !774, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !775, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !776
  store i32 %16, i32* %17, align 4, !dbg !777, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* nonnull %6) #5, !dbg !779
  %19 = load i64, i64* %9, align 8, !dbg !783, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !784, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !785, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !786, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !787, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !788, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !789, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !790, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !791, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !792, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  ret i32 %18, !dbg !795
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !796 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !810
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !810
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !814, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !815
  store i64 %8, i64* %9, align 8, !dbg !815, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !816, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !817
  store i32 %10, i32* %11, align 8, !dbg !818, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !819, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !820
  store i32 %12, i32* %13, align 4, !dbg !821, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !822, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !823
  store i32 %14, i32* %15, align 8, !dbg !824, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !825, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !826
  store i32 %16, i32* %17, align 4, !dbg !827, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* nonnull %6) #5, !dbg !829
  %19 = load i64, i64* %9, align 8, !dbg !833, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !834, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !835, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !836, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !837, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !838, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !839, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !840, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !841, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !842, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  ret i32 %18, !dbg !845
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_r(i32, i8**, i8*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !846 {
  %5 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* null, i32* null, i32 0, %struct.getopt_data* %3) #5, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  ret i32 %5, !dbg !859
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !860 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* %5) #5, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  ret i32 %7, !dbg !877
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_only_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !878 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* %5) #5, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  ret i32 %7, !dbg !893
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fputs(i8*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fputc(i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "optarg", scope: !2, file: !3, line: 114, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getopt.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GETOPT_ORDERING_T", file: !3, line: 106, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "PERMUTE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "RETURN_IN_ORDER", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "REQUIRE_ORDER", value: 2, isUnsigned: true)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!0, !16, !19, !21, !23}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "optind", scope: !2, file: !3, line: 115, type: !18, isLocal: false, isDefinition: true)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "opterr", scope: !2, file: !3, line: 116, type: !18, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "optopt", scope: !2, file: !3, line: 117, type: !18, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "optwhere", scope: !2, file: !3, line: 120, type: !18, isLocal: true, isDefinition: true)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "getopt", scope: !3, file: !3, line: 455, type: !30, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !36)
!30 = !DISubroutineType(types: !31)
!31 = !{!18, !18, !32, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!36 = !{!37, !38, !39, !40, !49}
!37 = !DILocalVariable(name: "argc", arg: 1, scope: !29, file: !3, line: 455, type: !18)
!38 = !DILocalVariable(name: "argv", arg: 2, scope: !29, file: !3, line: 455, type: !32)
!39 = !DILocalVariable(name: "optstring", arg: 3, scope: !29, file: !3, line: 455, type: !34)
!40 = !DILocalVariable(name: "data", scope: !29, file: !3, line: 457, type: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "getopt_data", file: !42, line: 141, size: 192, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/getopt.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !41, file: !42, line: 143, baseType: !13, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "optind", scope: !41, file: !42, line: 144, baseType: !18, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "opterr", scope: !41, file: !42, line: 144, baseType: !18, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "optopt", scope: !41, file: !42, line: 144, baseType: !18, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "optwhere", scope: !41, file: !42, line: 144, baseType: !18, size: 32, offset: 160)
!49 = !DILocalVariable(name: "r", scope: !29, file: !3, line: 458, type: !18)
!50 = !DILocation(line: 455, column: 13, scope: !29)
!51 = !DILocation(line: 455, column: 31, scope: !29)
!52 = !DILocation(line: 455, column: 51, scope: !29)
!53 = !DILocation(line: 457, column: 3, scope: !29)
!54 = !DILocation(line: 457, column: 22, scope: !29)
!55 = !DILocalVariable(name: "data", arg: 1, scope: !56, file: !3, line: 159, type: !59)
!56 = distinct !DISubprogram(name: "read_globals", scope: !3, file: !3, line: 159, type: !57, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!60 = !{!55}
!61 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !62)
!62 = distinct !DILocation(line: 460, column: 3, scope: !29)
!63 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !62)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !62)
!69 = !{!70, !65, i64 0}
!70 = !{!"getopt_data", !65, i64 0, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20}
!71 = !{!"int", !66, i64 0}
!72 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !62)
!73 = !{!71, !71, i64 0}
!74 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !62)
!75 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !62)
!76 = !{!70, !71, i64 8}
!77 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !62)
!78 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !62)
!79 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !62)
!80 = !{!70, !71, i64 12}
!81 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !62)
!82 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !62)
!83 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !62)
!84 = !{!70, !71, i64 16}
!85 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !62)
!86 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !62)
!87 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !62)
!88 = !{!70, !71, i64 20}
!89 = !DILocation(line: 166, column: 1, scope: !56, inlinedAt: !62)
!90 = !DILocation(line: 461, column: 7, scope: !29)
!91 = !DILocation(line: 458, column: 7, scope: !29)
!92 = !DILocalVariable(name: "data", arg: 1, scope: !93, file: !3, line: 171, type: !59)
!93 = distinct !DISubprogram(name: "write_globals", scope: !3, file: !3, line: 171, type: !57, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !94)
!94 = !{!92}
!95 = !DILocation(line: 171, column: 36, scope: !93, inlinedAt: !96)
!96 = distinct !DILocation(line: 462, column: 3, scope: !29)
!97 = !DILocation(line: 173, column: 18, scope: !93, inlinedAt: !96)
!98 = !DILocation(line: 173, column: 10, scope: !93, inlinedAt: !96)
!99 = !DILocation(line: 174, column: 18, scope: !93, inlinedAt: !96)
!100 = !DILocation(line: 174, column: 10, scope: !93, inlinedAt: !96)
!101 = !DILocation(line: 175, column: 18, scope: !93, inlinedAt: !96)
!102 = !DILocation(line: 175, column: 10, scope: !93, inlinedAt: !96)
!103 = !DILocation(line: 176, column: 18, scope: !93, inlinedAt: !96)
!104 = !DILocation(line: 176, column: 10, scope: !93, inlinedAt: !96)
!105 = !DILocation(line: 177, column: 20, scope: !93, inlinedAt: !96)
!106 = !DILocation(line: 177, column: 12, scope: !93, inlinedAt: !96)
!107 = !DILocation(line: 178, column: 1, scope: !93, inlinedAt: !96)
!108 = !DILocation(line: 464, column: 1, scope: !29)
!109 = !DILocation(line: 463, column: 3, scope: !29)
!110 = distinct !DISubprogram(name: "getopt_internal", scope: !3, file: !3, line: 184, type: !111, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !122)
!111 = !DISubroutineType(types: !112)
!112 = !{!18, !18, !32, !34, !113, !120, !18, !59}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !42, line: 105, size: 256, elements: !116)
!116 = !{!117, !118, !119, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !42, line: 107, baseType: !34, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !115, file: !42, line: 108, baseType: !18, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !115, file: !42, line: 109, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !42, line: 115, baseType: !18, size: 32, offset: 192)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !132, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!123 = !DILocalVariable(name: "argc", arg: 1, scope: !110, file: !3, line: 184, type: !18)
!124 = !DILocalVariable(name: "argv", arg: 2, scope: !110, file: !3, line: 184, type: !32)
!125 = !DILocalVariable(name: "shortopts", arg: 3, scope: !110, file: !3, line: 184, type: !34)
!126 = !DILocalVariable(name: "longopts", arg: 4, scope: !110, file: !3, line: 185, type: !113)
!127 = !DILocalVariable(name: "longind", arg: 5, scope: !110, file: !3, line: 185, type: !120)
!128 = !DILocalVariable(name: "only", arg: 6, scope: !110, file: !3, line: 185, type: !18)
!129 = !DILocalVariable(name: "data", arg: 7, scope: !110, file: !3, line: 186, type: !59)
!130 = !DILocalVariable(name: "ordering", scope: !110, file: !3, line: 188, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETOPT_ORDERING_T", file: !3, line: 111, baseType: !5)
!132 = !DILocalVariable(name: "permute_from", scope: !110, file: !3, line: 189, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 40, baseType: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !136, line: 129, baseType: !137)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!138 = !DILocalVariable(name: "num_nonopts", scope: !110, file: !3, line: 190, type: !18)
!139 = !DILocalVariable(name: "optindex", scope: !110, file: !3, line: 191, type: !18)
!140 = !DILocalVariable(name: "match_chars", scope: !110, file: !3, line: 192, type: !133)
!141 = !DILocalVariable(name: "possible_arg", scope: !110, file: !3, line: 193, type: !13)
!142 = !DILocalVariable(name: "longopt_match", scope: !110, file: !3, line: 194, type: !18)
!143 = !DILocalVariable(name: "has_arg", scope: !110, file: !3, line: 195, type: !18)
!144 = !DILocalVariable(name: "cp", scope: !110, file: !3, line: 196, type: !13)
!145 = !DILocalVariable(name: "arg_next", scope: !110, file: !3, line: 197, type: !18)
!146 = !DILocalVariable(name: "initial_colon", scope: !110, file: !3, line: 198, type: !18)
!147 = !DILocation(line: 184, column: 22, scope: !110)
!148 = !DILocation(line: 184, column: 40, scope: !110)
!149 = !DILocation(line: 184, column: 60, scope: !110)
!150 = !DILocation(line: 185, column: 25, scope: !110)
!151 = !DILocation(line: 185, column: 40, scope: !110)
!152 = !DILocation(line: 185, column: 53, scope: !110)
!153 = !DILocation(line: 186, column: 24, scope: !110)
!154 = !DILocation(line: 188, column: 21, scope: !110)
!155 = !DILocation(line: 189, column: 10, scope: !110)
!156 = !DILocation(line: 190, column: 7, scope: !110)
!157 = !DILocation(line: 191, column: 7, scope: !110)
!158 = !DILocation(line: 192, column: 10, scope: !110)
!159 = !DILocation(line: 193, column: 9, scope: !110)
!160 = !DILocation(line: 194, column: 7, scope: !110)
!161 = !DILocation(line: 195, column: 7, scope: !110)
!162 = !DILocation(line: 196, column: 9, scope: !110)
!163 = !DILocation(line: 197, column: 7, scope: !110)
!164 = !DILocation(line: 198, column: 7, scope: !110)
!165 = !DILocation(line: 201, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !110, file: !3, line: 201, column: 7)
!167 = !DILocation(line: 201, column: 25, scope: !166)
!168 = !DILocation(line: 201, column: 17, scope: !166)
!169 = !DILocation(line: 201, column: 44, scope: !166)
!170 = !DILocation(line: 201, column: 61, scope: !166)
!171 = !DILocation(line: 201, column: 49, scope: !166)
!172 = !DILocation(line: 202, column: 16, scope: !166)
!173 = !DILocation(line: 202, column: 23, scope: !166)
!174 = !DILocation(line: 202, column: 31, scope: !166)
!175 = !DILocation(line: 202, column: 34, scope: !166)
!176 = !DILocation(line: 202, column: 53, scope: !166)
!177 = !DILocation(line: 201, column: 7, scope: !110)
!178 = !DILocation(line: 204, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !110, file: !3, line: 204, column: 7)
!180 = !DILocation(line: 204, column: 41, scope: !179)
!181 = !DILocation(line: 0, scope: !182)
!182 = distinct !DILexicalBlock(scope: !110, file: !3, line: 211, column: 7)
!183 = !DILocation(line: 204, column: 7, scope: !110)
!184 = !DILocation(line: 206, column: 19, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !3, line: 205, column: 5)
!186 = !DILocation(line: 207, column: 7, scope: !185)
!187 = !DILocation(line: 211, column: 20, scope: !182)
!188 = !DILocation(line: 211, column: 7, scope: !110)
!189 = !DILocation(line: 212, column: 26, scope: !182)
!190 = !DILocation(line: 212, column: 35, scope: !182)
!191 = !DILocation(line: 212, column: 18, scope: !182)
!192 = !DILocation(line: 212, column: 5, scope: !182)
!193 = !DILocation(line: 215, column: 22, scope: !194)
!194 = distinct !DILexicalBlock(scope: !110, file: !3, line: 215, column: 7)
!195 = !DILocation(line: 215, column: 26, scope: !194)
!196 = !{!66, !66, i64 0}
!197 = !DILocation(line: 215, column: 37, scope: !194)
!198 = !DILocation(line: 215, column: 44, scope: !194)
!199 = !DILocation(line: 215, column: 58, scope: !194)
!200 = !DILocation(line: 215, column: 7, scope: !110)
!201 = !DILocation(line: 217, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !3, line: 216, column: 5)
!203 = !DILocation(line: 218, column: 16, scope: !202)
!204 = !DILocation(line: 219, column: 5, scope: !202)
!205 = !DILocation(line: 224, column: 22, scope: !206)
!206 = distinct !DILexicalBlock(scope: !110, file: !3, line: 224, column: 7)
!207 = !DILocation(line: 221, column: 17, scope: !194)
!208 = !DILocation(line: 221, column: 44, scope: !194)
!209 = !DILocation(line: 221, column: 16, scope: !194)
!210 = !DILocation(line: 224, column: 25, scope: !206)
!211 = !DILocation(line: 224, column: 36, scope: !206)
!212 = !DILocation(line: 224, column: 7, scope: !110)
!213 = !DILocation(line: 226, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !206, file: !3, line: 225, column: 5)
!215 = !DILocation(line: 228, column: 5, scope: !214)
!216 = !DILocation(line: 0, scope: !202)
!217 = !DILocation(line: 0, scope: !110)
!218 = !DILocation(line: 234, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !110, file: !3, line: 234, column: 7)
!220 = !DILocation(line: 234, column: 22, scope: !219)
!221 = !DILocation(line: 234, column: 7, scope: !110)
!222 = !DILocation(line: 236, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 235, column: 5)
!224 = !DILocation(line: 240, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !223, file: !3, line: 237, column: 2)
!226 = !DILocation(line: 240, column: 19, scope: !225)
!227 = !DILocation(line: 242, column: 4, scope: !225)
!228 = !DILocation(line: 242, column: 23, scope: !225)
!229 = !DILocalVariable(name: "argv_element", arg: 1, scope: !230, file: !3, line: 150, type: !13)
!230 = distinct !DISubprogram(name: "is_option", scope: !3, file: !3, line: 150, type: !231, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!18, !13, !18}
!233 = !{!229, !234}
!234 = !DILocalVariable(name: "only", arg: 2, scope: !230, file: !3, line: 150, type: !18)
!235 = !DILocation(line: 150, column: 18, scope: !230, inlinedAt: !236)
!236 = distinct !DILocation(line: 242, column: 12, scope: !225)
!237 = !DILocation(line: 150, column: 36, scope: !230, inlinedAt: !236)
!238 = !DILocation(line: 152, column: 25, scope: !230, inlinedAt: !236)
!239 = !DILocation(line: 153, column: 4, scope: !230, inlinedAt: !236)
!240 = !DILocation(line: 153, column: 8, scope: !230, inlinedAt: !236)
!241 = !DILocation(line: 153, column: 24, scope: !230, inlinedAt: !236)
!242 = !DILocation(line: 153, column: 32, scope: !230, inlinedAt: !236)
!243 = !DILocation(line: 0, scope: !225)
!244 = !DILocation(line: 153, column: 41, scope: !230, inlinedAt: !236)
!245 = !DILocation(line: 152, column: 3, scope: !230, inlinedAt: !236)
!246 = !DILocation(line: 153, column: 60, scope: !230, inlinedAt: !236)
!247 = !DILocation(line: 244, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !225, file: !3, line: 243, column: 6)
!249 = !DILocation(line: 245, column: 19, scope: !248)
!250 = distinct !{!250, !227, !251}
!251 = !DILocation(line: 246, column: 6, scope: !225)
!252 = !DILocation(line: 247, column: 8, scope: !225)
!253 = !DILocation(line: 250, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 248, column: 6)
!255 = distinct !DILexicalBlock(scope: !225, file: !3, line: 247, column: 8)
!256 = !DILocation(line: 251, column: 8, scope: !254)
!257 = !DILocation(line: 253, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 253, column: 13)
!259 = !DILocation(line: 253, column: 47, scope: !258)
!260 = !DILocation(line: 253, column: 13, scope: !255)
!261 = !DILocalVariable(name: "argv", arg: 1, scope: !262, file: !3, line: 141, type: !32)
!262 = distinct !DISubprogram(name: "permute", scope: !3, file: !3, line: 141, type: !263, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !32, !18, !18}
!265 = !{!261, !266, !267}
!266 = !DILocalVariable(name: "len1", arg: 2, scope: !262, file: !3, line: 141, type: !18)
!267 = !DILocalVariable(name: "len2", arg: 3, scope: !262, file: !3, line: 141, type: !18)
!268 = !DILocation(line: 141, column: 22, scope: !262, inlinedAt: !269)
!269 = distinct !DILocation(line: 256, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !258, file: !3, line: 254, column: 6)
!271 = !DILocation(line: 141, column: 34, scope: !262, inlinedAt: !269)
!272 = !DILocation(line: 141, column: 44, scope: !262, inlinedAt: !269)
!273 = !DILocalVariable(name: "argv", arg: 1, scope: !274, file: !3, line: 126, type: !12)
!274 = distinct !DISubprogram(name: "reverse_argv_elements", scope: !3, file: !3, line: 126, type: !275, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !12, !18}
!277 = !{!273, !278, !279, !280}
!278 = !DILocalVariable(name: "num", arg: 2, scope: !274, file: !3, line: 126, type: !18)
!279 = !DILocalVariable(name: "i", scope: !274, file: !3, line: 128, type: !18)
!280 = !DILocalVariable(name: "tmp", scope: !274, file: !3, line: 129, type: !13)
!281 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !282)
!282 = distinct !DILocation(line: 143, column: 3, scope: !262, inlinedAt: !269)
!283 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !282)
!284 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !282)
!285 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !282)
!286 = distinct !DILexicalBlock(scope: !274, file: !3, line: 131, column: 3)
!287 = !DILocation(line: 131, column: 17, scope: !288, inlinedAt: !282)
!288 = distinct !DILexicalBlock(scope: !286, file: !3, line: 131, column: 3)
!289 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !282)
!290 = !DILocation(line: 133, column: 13, scope: !291, inlinedAt: !282)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 132, column: 5)
!292 = !DILocation(line: 129, column: 9, scope: !274, inlinedAt: !282)
!293 = !DILocation(line: 134, column: 30, scope: !291, inlinedAt: !282)
!294 = !DILocation(line: 134, column: 17, scope: !291, inlinedAt: !282)
!295 = !DILocation(line: 134, column: 15, scope: !291, inlinedAt: !282)
!296 = !DILocation(line: 135, column: 25, scope: !291, inlinedAt: !282)
!297 = !DILocation(line: 131, column: 32, scope: !288, inlinedAt: !282)
!298 = !DILocation(line: 131, column: 3, scope: !288, inlinedAt: !282)
!299 = distinct !{!299, !300, !301}
!300 = !DILocation(line: 131, column: 3, scope: !286)
!301 = !DILocation(line: 136, column: 5, scope: !286)
!302 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !282)
!303 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !304)
!304 = distinct !DILocation(line: 144, column: 3, scope: !262, inlinedAt: !269)
!305 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !304)
!306 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !304)
!307 = !DILocation(line: 131, column: 17, scope: !288, inlinedAt: !304)
!308 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !304)
!309 = !DILocation(line: 144, column: 47, scope: !262, inlinedAt: !269)
!310 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !304)
!311 = !DILocation(line: 133, column: 13, scope: !291, inlinedAt: !304)
!312 = !DILocation(line: 129, column: 9, scope: !274, inlinedAt: !304)
!313 = !DILocation(line: 134, column: 30, scope: !291, inlinedAt: !304)
!314 = !DILocation(line: 134, column: 17, scope: !291, inlinedAt: !304)
!315 = !DILocation(line: 134, column: 15, scope: !291, inlinedAt: !304)
!316 = !DILocation(line: 135, column: 25, scope: !291, inlinedAt: !304)
!317 = !DILocation(line: 131, column: 32, scope: !288, inlinedAt: !304)
!318 = !DILocation(line: 131, column: 3, scope: !288, inlinedAt: !304)
!319 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !304)
!320 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !321)
!321 = distinct !DILocation(line: 145, column: 3, scope: !262, inlinedAt: !269)
!322 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !321)
!323 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !321)
!324 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !321)
!325 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !321)
!326 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !321)
!327 = !DILocation(line: 146, column: 1, scope: !262, inlinedAt: !269)
!328 = !DILocation(line: 257, column: 36, scope: !270)
!329 = !DILocation(line: 257, column: 21, scope: !270)
!330 = !DILocation(line: 258, column: 8, scope: !270)
!331 = !DILocation(line: 262, column: 31, scope: !332)
!332 = distinct !DILexicalBlock(scope: !225, file: !3, line: 262, column: 8)
!333 = !DILocation(line: 262, column: 20, scope: !332)
!334 = !DILocation(line: 150, column: 18, scope: !230, inlinedAt: !335)
!335 = distinct !DILocation(line: 262, column: 9, scope: !332)
!336 = !DILocation(line: 150, column: 36, scope: !230, inlinedAt: !335)
!337 = !DILocation(line: 152, column: 25, scope: !230, inlinedAt: !335)
!338 = !DILocation(line: 153, column: 4, scope: !230, inlinedAt: !335)
!339 = !DILocation(line: 153, column: 8, scope: !230, inlinedAt: !335)
!340 = !DILocation(line: 153, column: 24, scope: !230, inlinedAt: !335)
!341 = !DILocation(line: 153, column: 32, scope: !230, inlinedAt: !335)
!342 = !DILocation(line: 153, column: 36, scope: !230, inlinedAt: !335)
!343 = !DILocation(line: 153, column: 41, scope: !230, inlinedAt: !335)
!344 = !DILocation(line: 152, column: 3, scope: !230, inlinedAt: !335)
!345 = !DILocation(line: 262, column: 8, scope: !225)
!346 = !DILocation(line: 153, column: 60, scope: !230, inlinedAt: !335)
!347 = !DILocation(line: 264, column: 40, scope: !348)
!348 = distinct !DILexicalBlock(scope: !332, file: !3, line: 263, column: 6)
!349 = !DILocation(line: 264, column: 21, scope: !348)
!350 = !DILocation(line: 265, column: 22, scope: !348)
!351 = !DILocation(line: 265, column: 29, scope: !348)
!352 = !DILocation(line: 265, column: 8, scope: !348)
!353 = !DILocation(line: 269, column: 31, scope: !354)
!354 = distinct !DILexicalBlock(scope: !225, file: !3, line: 269, column: 8)
!355 = !DILocation(line: 269, column: 20, scope: !354)
!356 = !DILocation(line: 150, column: 18, scope: !230, inlinedAt: !357)
!357 = distinct !DILocation(line: 269, column: 9, scope: !354)
!358 = !DILocation(line: 150, column: 36, scope: !230, inlinedAt: !357)
!359 = !DILocation(line: 152, column: 25, scope: !230, inlinedAt: !357)
!360 = !DILocation(line: 153, column: 4, scope: !230, inlinedAt: !357)
!361 = !DILocation(line: 153, column: 8, scope: !230, inlinedAt: !357)
!362 = !DILocation(line: 153, column: 24, scope: !230, inlinedAt: !357)
!363 = !DILocation(line: 153, column: 32, scope: !230, inlinedAt: !357)
!364 = !DILocation(line: 153, column: 36, scope: !230, inlinedAt: !357)
!365 = !DILocation(line: 153, column: 41, scope: !230, inlinedAt: !357)
!366 = !DILocation(line: 152, column: 3, scope: !230, inlinedAt: !357)
!367 = !DILocation(line: 269, column: 8, scope: !225)
!368 = !DILocation(line: 153, column: 60, scope: !230, inlinedAt: !357)
!369 = !DILocation(line: 275, column: 18, scope: !370)
!370 = distinct !DILexicalBlock(scope: !110, file: !3, line: 275, column: 7)
!371 = !DILocation(line: 275, column: 7, scope: !370)
!372 = !DILocation(line: 275, column: 26, scope: !370)
!373 = !DILocation(line: 275, column: 7, scope: !110)
!374 = !DILocation(line: 0, scope: !375)
!375 = distinct !DILexicalBlock(scope: !110, file: !3, line: 281, column: 7)
!376 = !DILocation(line: 282, column: 7, scope: !375)
!377 = !DILocation(line: 282, column: 11, scope: !375)
!378 = !DILocation(line: 282, column: 48, scope: !375)
!379 = !DILocation(line: 283, column: 4, scope: !375)
!380 = !DILocation(line: 283, column: 8, scope: !375)
!381 = !DILocation(line: 283, column: 13, scope: !375)
!382 = !DILocation(line: 283, column: 27, scope: !375)
!383 = !DILocation(line: 283, column: 16, scope: !375)
!384 = !DILocation(line: 283, column: 38, scope: !375)
!385 = !DILocation(line: 283, column: 47, scope: !375)
!386 = !DILocation(line: 283, column: 56, scope: !375)
!387 = !DILocation(line: 283, column: 65, scope: !375)
!388 = !DILocation(line: 281, column: 7, scope: !110)
!389 = !DILocation(line: 286, column: 30, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 286, column: 11)
!391 = distinct !DILexicalBlock(scope: !375, file: !3, line: 284, column: 5)
!392 = !DILocation(line: 286, column: 19, scope: !390)
!393 = !DILocation(line: 286, column: 11, scope: !390)
!394 = !DILocation(line: 286, column: 48, scope: !390)
!395 = !DILocation(line: 286, column: 11, scope: !391)
!396 = !DILocation(line: 289, column: 57, scope: !391)
!397 = !DILocation(line: 287, column: 17, scope: !390)
!398 = !DILocation(line: 287, column: 2, scope: !390)
!399 = !DILocation(line: 289, column: 41, scope: !391)
!400 = !DILocation(line: 289, column: 30, scope: !391)
!401 = !DILocation(line: 289, column: 49, scope: !391)
!402 = !DILocation(line: 289, column: 22, scope: !391)
!403 = !DILocation(line: 290, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !3, line: 290, column: 11)
!405 = !DILocation(line: 290, column: 11, scope: !391)
!406 = !DILocation(line: 0, scope: !404)
!407 = !DILocation(line: 293, column: 26, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !3, line: 291, column: 2)
!409 = !DILocation(line: 293, column: 18, scope: !408)
!410 = !DILocation(line: 294, column: 30, scope: !408)
!411 = !DILocation(line: 294, column: 19, scope: !408)
!412 = !DILocation(line: 294, column: 38, scope: !408)
!413 = !DILocation(line: 295, column: 38, scope: !408)
!414 = !DILocation(line: 296, column: 2, scope: !408)
!415 = !DILocation(line: 298, column: 32, scope: !404)
!416 = !DILocation(line: 298, column: 30, scope: !404)
!417 = !DILocation(line: 298, column: 60, scope: !404)
!418 = !DILocation(line: 0, scope: !391)
!419 = !DILocation(line: 0, scope: !408)
!420 = !DILocation(line: 299, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !391, file: !3, line: 299, column: 7)
!422 = !DILocation(line: 299, column: 45, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !3, line: 299, column: 7)
!424 = !{!425, !65, i64 0}
!425 = !{!"option", !65, i64 0, !71, i64 8, !65, i64 16, !71, i64 24}
!426 = !DILocation(line: 299, column: 50, scope: !423)
!427 = !DILocation(line: 299, column: 7, scope: !421)
!428 = !DILocation(line: 335, column: 11, scope: !391)
!429 = !DILocation(line: 302, column: 36, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 301, column: 8)
!431 = distinct !DILexicalBlock(scope: !423, file: !3, line: 300, column: 2)
!432 = !DILocation(line: 302, column: 20, scope: !430)
!433 = !DILocation(line: 302, column: 9, scope: !430)
!434 = !DILocation(line: 302, column: 28, scope: !430)
!435 = !DILocation(line: 301, column: 8, scope: !430)
!436 = !DILocation(line: 303, column: 22, scope: !430)
!437 = !DILocation(line: 301, column: 8, scope: !431)
!438 = !DILocation(line: 306, column: 54, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 306, column: 12)
!440 = distinct !DILexicalBlock(scope: !430, file: !3, line: 304, column: 6)
!441 = !DILocation(line: 306, column: 27, scope: !439)
!442 = !DILocation(line: 306, column: 24, scope: !439)
!443 = !DILocation(line: 306, column: 12, scope: !440)
!444 = !DILocation(line: 309, column: 5, scope: !445)
!445 = distinct !DILexicalBlock(scope: !439, file: !3, line: 307, column: 3)
!446 = !DILocation(line: 314, column: 23, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 314, column: 9)
!448 = distinct !DILexicalBlock(scope: !439, file: !3, line: 313, column: 3)
!449 = !DILocation(line: 314, column: 9, scope: !448)
!450 = !DILocation(line: 333, column: 6, scope: !440)
!451 = !DILocation(line: 319, column: 19, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 319, column: 13)
!453 = distinct !DILexicalBlock(scope: !447, file: !3, line: 317, column: 7)
!454 = !DILocation(line: 319, column: 13, scope: !452)
!455 = !DILocation(line: 319, column: 13, scope: !453)
!456 = !DILocation(line: 321, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !3, line: 320, column: 4)
!458 = !DILocation(line: 321, column: 22, scope: !457)
!459 = !{!460, !65, i64 24}
!460 = !{!"_reent", !71, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !71, i64 32, !66, i64 36, !71, i64 64, !65, i64 72, !71, i64 80, !65, i64 88, !65, i64 96, !71, i64 104, !65, i64 112, !65, i64 120, !71, i64 128, !65, i64 136, !66, i64 144, !65, i64 504, !461, i64 512, !65, i64 1304, !463, i64 1312, !66, i64 1336}
!461 = !{!"_atexit", !65, i64 0, !71, i64 8, !66, i64 16, !462, i64 272}
!462 = !{!"_on_exit_args", !66, i64 0, !66, i64 256, !71, i64 512, !71, i64 516}
!463 = !{!"_glue", !65, i64 0, !71, i64 8, !65, i64 16}
!464 = !DILocation(line: 321, column: 6, scope: !457)
!465 = !DILocation(line: 322, column: 27, scope: !457)
!466 = !DILocation(line: 322, column: 6, scope: !457)
!467 = !DILocation(line: 323, column: 24, scope: !457)
!468 = !DILocation(line: 323, column: 13, scope: !457)
!469 = !DILocation(line: 323, column: 33, scope: !457)
!470 = !DILocation(line: 323, column: 6, scope: !457)
!471 = !DILocation(line: 324, column: 45, scope: !457)
!472 = !DILocation(line: 324, column: 6, scope: !457)
!473 = !DILocation(line: 325, column: 13, scope: !457)
!474 = !DILocation(line: 325, column: 37, scope: !457)
!475 = !DILocation(line: 325, column: 43, scope: !457)
!476 = !DILocation(line: 325, column: 6, scope: !457)
!477 = !DILocation(line: 326, column: 25, scope: !457)
!478 = !DILocation(line: 326, column: 6, scope: !457)
!479 = !DILocation(line: 327, column: 32, scope: !457)
!480 = !DILocation(line: 327, column: 38, scope: !457)
!481 = !DILocation(line: 327, column: 6, scope: !457)
!482 = !DILocation(line: 328, column: 21, scope: !457)
!483 = !DILocation(line: 328, column: 6, scope: !457)
!484 = !DILocation(line: 329, column: 4, scope: !457)
!485 = !DILocation(line: 330, column: 23, scope: !453)
!486 = !DILocation(line: 330, column: 30, scope: !453)
!487 = !DILocation(line: 330, column: 9, scope: !453)
!488 = !DILocation(line: 299, column: 56, scope: !423)
!489 = !DILocation(line: 299, column: 7, scope: !423)
!490 = distinct !{!490, !427, !491}
!491 = !DILocation(line: 334, column: 2, scope: !421)
!492 = !DILocation(line: 335, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !391, file: !3, line: 335, column: 11)
!494 = !DILocation(line: 336, column: 12, scope: !493)
!495 = !DILocation(line: 336, column: 36, scope: !493)
!496 = !{!425, !71, i64 8}
!497 = !DILocation(line: 336, column: 2, scope: !493)
!498 = !DILocation(line: 340, column: 25, scope: !499)
!499 = distinct !DILexicalBlock(scope: !110, file: !3, line: 340, column: 7)
!500 = !DILocation(line: 340, column: 21, scope: !499)
!501 = !DILocation(line: 340, column: 38, scope: !499)
!502 = !DILocation(line: 369, column: 3, scope: !110)
!503 = !DILocation(line: 416, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !110, file: !3, line: 370, column: 5)
!505 = !DILocation(line: 342, column: 42, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !3, line: 341, column: 5)
!507 = !DILocation(line: 342, column: 31, scope: !506)
!508 = !DILocation(line: 342, column: 56, scope: !506)
!509 = !DILocation(line: 342, column: 12, scope: !506)
!510 = !DILocation(line: 343, column: 14, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 343, column: 11)
!512 = !DILocation(line: 343, column: 11, scope: !506)
!513 = !DILocation(line: 346, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 346, column: 8)
!515 = distinct !DILexicalBlock(scope: !511, file: !3, line: 344, column: 2)
!516 = !DILocation(line: 346, column: 8, scope: !514)
!517 = !DILocation(line: 346, column: 8, scope: !515)
!518 = !DILocation(line: 348, column: 15, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 347, column: 6)
!520 = !DILocation(line: 348, column: 24, scope: !519)
!521 = !DILocation(line: 348, column: 8, scope: !519)
!522 = !DILocation(line: 349, column: 41, scope: !519)
!523 = !DILocation(line: 349, column: 8, scope: !519)
!524 = !DILocation(line: 350, column: 26, scope: !519)
!525 = !DILocation(line: 350, column: 15, scope: !519)
!526 = !DILocation(line: 350, column: 40, scope: !519)
!527 = !DILocation(line: 350, column: 51, scope: !519)
!528 = !DILocation(line: 350, column: 8, scope: !519)
!529 = !DILocation(line: 351, column: 22, scope: !519)
!530 = !DILocation(line: 351, column: 8, scope: !519)
!531 = !DILocation(line: 352, column: 6, scope: !519)
!532 = !DILocation(line: 353, column: 18, scope: !515)
!533 = !DILocation(line: 354, column: 19, scope: !534)
!534 = distinct !DILexicalBlock(scope: !515, file: !3, line: 354, column: 8)
!535 = !DILocation(line: 354, column: 8, scope: !534)
!536 = !DILocation(line: 354, column: 43, scope: !534)
!537 = !DILocation(line: 354, column: 8, scope: !515)
!538 = !DILocation(line: 356, column: 20, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !3, line: 355, column: 6)
!540 = !DILocation(line: 357, column: 23, scope: !539)
!541 = !DILocation(line: 358, column: 6, scope: !539)
!542 = !DILocation(line: 359, column: 18, scope: !515)
!543 = !DILocation(line: 359, column: 25, scope: !515)
!544 = !DILocation(line: 359, column: 4, scope: !515)
!545 = !DILocation(line: 361, column: 19, scope: !506)
!546 = !DILocation(line: 361, column: 25, scope: !506)
!547 = !DILocation(line: 361, column: 18, scope: !506)
!548 = !DILocation(line: 362, column: 8, scope: !506)
!549 = !DILocation(line: 362, column: 14, scope: !506)
!550 = !DILocation(line: 362, column: 7, scope: !506)
!551 = !DILocation(line: 363, column: 33, scope: !506)
!552 = !DILocation(line: 363, column: 22, scope: !506)
!553 = !DILocation(line: 363, column: 49, scope: !506)
!554 = !DILocation(line: 363, column: 41, scope: !506)
!555 = !DILocation(line: 363, column: 58, scope: !506)
!556 = !DILocation(line: 364, column: 22, scope: !506)
!557 = !DILocation(line: 364, column: 13, scope: !506)
!558 = !DILocation(line: 364, column: 20, scope: !506)
!559 = !DILocation(line: 365, column: 5, scope: !506)
!560 = !DILocation(line: 0, scope: !493)
!561 = !DILocation(line: 0, scope: !506)
!562 = !DILocation(line: 372, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !504, file: !3, line: 372, column: 11)
!564 = !DILocation(line: 372, column: 25, scope: !563)
!565 = !DILocation(line: 372, column: 11, scope: !504)
!566 = !DILocation(line: 373, column: 14, scope: !563)
!567 = !DILocation(line: 373, column: 2, scope: !563)
!568 = !DILocation(line: 374, column: 23, scope: !504)
!569 = !DILocation(line: 374, column: 37, scope: !504)
!570 = !DILocation(line: 374, column: 22, scope: !504)
!571 = !DILocation(line: 374, column: 13, scope: !504)
!572 = !DILocation(line: 374, column: 20, scope: !504)
!573 = !DILocation(line: 375, column: 22, scope: !504)
!574 = !DILocation(line: 376, column: 7, scope: !504)
!575 = !DILocation(line: 378, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !504, file: !3, line: 378, column: 11)
!577 = !DILocation(line: 378, column: 25, scope: !576)
!578 = !DILocation(line: 378, column: 11, scope: !504)
!579 = !DILocation(line: 379, column: 14, scope: !576)
!580 = !DILocation(line: 379, column: 2, scope: !576)
!581 = !DILocation(line: 380, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !504, file: !3, line: 380, column: 11)
!583 = !DILocation(line: 380, column: 25, scope: !582)
!584 = !DILocation(line: 380, column: 11, scope: !504)
!585 = !DILocation(line: 382, column: 10, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 381, column: 2)
!587 = !DILocation(line: 382, column: 17, scope: !586)
!588 = !DILocation(line: 383, column: 19, scope: !586)
!589 = !DILocation(line: 384, column: 2, scope: !586)
!590 = !DILocation(line: 385, column: 22, scope: !591)
!591 = distinct !DILexicalBlock(scope: !582, file: !3, line: 385, column: 16)
!592 = !DILocation(line: 385, column: 29, scope: !591)
!593 = !DILocation(line: 385, column: 33, scope: !591)
!594 = !DILocation(line: 385, column: 16, scope: !582)
!595 = !DILocation(line: 387, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 387, column: 8)
!597 = distinct !DILexicalBlock(scope: !591, file: !3, line: 386, column: 2)
!598 = !DILocation(line: 387, column: 8, scope: !596)
!599 = !DILocation(line: 387, column: 8, scope: !597)
!600 = !DILocation(line: 389, column: 15, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !3, line: 388, column: 6)
!602 = !DILocation(line: 389, column: 24, scope: !601)
!603 = !DILocation(line: 389, column: 8, scope: !601)
!604 = !DILocation(line: 390, column: 52, scope: !601)
!605 = !DILocation(line: 390, column: 8, scope: !601)
!606 = !DILocation(line: 391, column: 26, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !3, line: 391, column: 12)
!608 = !DILocation(line: 391, column: 12, scope: !601)
!609 = !DILocation(line: 393, column: 17, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 392, column: 3)
!611 = !DILocation(line: 393, column: 5, scope: !610)
!612 = !DILocation(line: 394, column: 12, scope: !610)
!613 = !DILocation(line: 394, column: 36, scope: !610)
!614 = !DILocation(line: 394, column: 42, scope: !610)
!615 = !DILocation(line: 394, column: 5, scope: !610)
!616 = !DILocation(line: 395, column: 20, scope: !610)
!617 = !DILocation(line: 396, column: 3, scope: !610)
!618 = !DILocation(line: 399, column: 12, scope: !619)
!619 = distinct !DILexicalBlock(scope: !607, file: !3, line: 398, column: 3)
!620 = !DILocation(line: 399, column: 17, scope: !619)
!621 = !DILocation(line: 399, column: 5, scope: !619)
!622 = !DILocation(line: 400, column: 20, scope: !619)
!623 = !DILocation(line: 400, column: 11, scope: !619)
!624 = !DILocation(line: 400, column: 18, scope: !619)
!625 = !DILocation(line: 402, column: 22, scope: !601)
!626 = !DILocation(line: 402, column: 8, scope: !601)
!627 = !DILocation(line: 403, column: 6, scope: !601)
!628 = !DILocation(line: 404, column: 16, scope: !597)
!629 = !DILocation(line: 405, column: 11, scope: !597)
!630 = !DILocation(line: 405, column: 4, scope: !597)
!631 = !DILocation(line: 409, column: 19, scope: !632)
!632 = distinct !DILexicalBlock(scope: !591, file: !3, line: 408, column: 2)
!633 = !DILocation(line: 409, column: 17, scope: !632)
!634 = !DILocation(line: 411, column: 19, scope: !632)
!635 = !DILocation(line: 418, column: 18, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 417, column: 2)
!637 = distinct !DILexicalBlock(scope: !504, file: !3, line: 416, column: 11)
!638 = !DILocation(line: 419, column: 19, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 419, column: 8)
!640 = !DILocation(line: 419, column: 8, scope: !639)
!641 = !DILocation(line: 419, column: 43, scope: !639)
!642 = !DILocation(line: 419, column: 8, scope: !636)
!643 = !DILocation(line: 0, scope: !637)
!644 = !DILocation(line: 424, column: 13, scope: !504)
!645 = !DILocation(line: 424, column: 20, scope: !504)
!646 = !DILocation(line: 425, column: 7, scope: !504)
!647 = !DILocation(line: 0, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 434, column: 12)
!649 = distinct !DILexicalBlock(scope: !110, file: !3, line: 429, column: 7)
!650 = !DILocation(line: 429, column: 16, scope: !649)
!651 = !DILocation(line: 429, column: 27, scope: !649)
!652 = !DILocation(line: 429, column: 45, scope: !649)
!653 = !DILocation(line: 429, column: 65, scope: !649)
!654 = !DILocation(line: 429, column: 50, scope: !649)
!655 = !DILocation(line: 431, column: 21, scope: !656)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 430, column: 5)
!657 = !DILocation(line: 431, column: 52, scope: !656)
!658 = !DILocation(line: 141, column: 22, scope: !262, inlinedAt: !659)
!659 = distinct !DILocation(line: 431, column: 7, scope: !656)
!660 = !DILocation(line: 141, column: 34, scope: !262, inlinedAt: !659)
!661 = !DILocation(line: 141, column: 44, scope: !262, inlinedAt: !659)
!662 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !663)
!663 = distinct !DILocation(line: 143, column: 3, scope: !262, inlinedAt: !659)
!664 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !663)
!665 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !663)
!666 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !663)
!667 = !DILocation(line: 131, column: 17, scope: !288, inlinedAt: !663)
!668 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !663)
!669 = !DILocation(line: 133, column: 13, scope: !291, inlinedAt: !663)
!670 = !DILocation(line: 129, column: 9, scope: !274, inlinedAt: !663)
!671 = !DILocation(line: 134, column: 30, scope: !291, inlinedAt: !663)
!672 = !DILocation(line: 134, column: 17, scope: !291, inlinedAt: !663)
!673 = !DILocation(line: 134, column: 15, scope: !291, inlinedAt: !663)
!674 = !DILocation(line: 135, column: 25, scope: !291, inlinedAt: !663)
!675 = !DILocation(line: 131, column: 32, scope: !288, inlinedAt: !663)
!676 = !DILocation(line: 131, column: 3, scope: !288, inlinedAt: !663)
!677 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !663)
!678 = !DILocation(line: 144, column: 47, scope: !262, inlinedAt: !659)
!679 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !680)
!680 = distinct !DILocation(line: 144, column: 3, scope: !262, inlinedAt: !659)
!681 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !680)
!682 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !680)
!683 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !680)
!684 = !DILocation(line: 131, column: 17, scope: !288, inlinedAt: !680)
!685 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !680)
!686 = !DILocation(line: 133, column: 13, scope: !291, inlinedAt: !680)
!687 = !DILocation(line: 129, column: 9, scope: !274, inlinedAt: !680)
!688 = !DILocation(line: 134, column: 30, scope: !291, inlinedAt: !680)
!689 = !DILocation(line: 134, column: 17, scope: !291, inlinedAt: !680)
!690 = !DILocation(line: 134, column: 15, scope: !291, inlinedAt: !680)
!691 = !DILocation(line: 135, column: 25, scope: !291, inlinedAt: !680)
!692 = !DILocation(line: 131, column: 32, scope: !288, inlinedAt: !680)
!693 = !DILocation(line: 131, column: 3, scope: !288, inlinedAt: !680)
!694 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !680)
!695 = !DILocation(line: 126, column: 31, scope: !274, inlinedAt: !696)
!696 = distinct !DILocation(line: 145, column: 3, scope: !262, inlinedAt: !659)
!697 = !DILocation(line: 126, column: 41, scope: !274, inlinedAt: !696)
!698 = !DILocation(line: 128, column: 7, scope: !274, inlinedAt: !696)
!699 = !DILocation(line: 131, column: 8, scope: !286, inlinedAt: !696)
!700 = !DILocation(line: 131, column: 17, scope: !288, inlinedAt: !696)
!701 = !DILocation(line: 131, column: 3, scope: !286, inlinedAt: !696)
!702 = !DILocation(line: 133, column: 13, scope: !291, inlinedAt: !696)
!703 = !DILocation(line: 129, column: 9, scope: !274, inlinedAt: !696)
!704 = !DILocation(line: 134, column: 17, scope: !291, inlinedAt: !696)
!705 = !DILocation(line: 134, column: 15, scope: !291, inlinedAt: !696)
!706 = !DILocation(line: 135, column: 25, scope: !291, inlinedAt: !696)
!707 = !DILocation(line: 131, column: 3, scope: !288, inlinedAt: !696)
!708 = !DILocation(line: 137, column: 1, scope: !274, inlinedAt: !696)
!709 = !DILocation(line: 146, column: 1, scope: !262, inlinedAt: !659)
!710 = !DILocation(line: 432, column: 22, scope: !656)
!711 = !DILocation(line: 433, column: 5, scope: !656)
!712 = !DILocation(line: 434, column: 27, scope: !648)
!713 = !DILocation(line: 434, column: 12, scope: !649)
!714 = !DILocation(line: 435, column: 26, scope: !648)
!715 = !DILocation(line: 435, column: 33, scope: !648)
!716 = !DILocation(line: 435, column: 37, scope: !648)
!717 = !DILocation(line: 435, column: 5, scope: !648)
!718 = !DILocation(line: 0, scope: !656)
!719 = !DILocation(line: 438, column: 21, scope: !720)
!720 = distinct !DILexicalBlock(scope: !110, file: !3, line: 438, column: 7)
!721 = !DILocation(line: 438, column: 7, scope: !110)
!722 = !DILocation(line: 440, column: 19, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 440, column: 11)
!724 = distinct !DILexicalBlock(scope: !720, file: !3, line: 439, column: 5)
!725 = !DILocation(line: 440, column: 11, scope: !724)
!726 = !DILocation(line: 441, column: 11, scope: !723)
!727 = !DILocation(line: 441, column: 2, scope: !723)
!728 = !DILocation(line: 442, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 442, column: 11)
!730 = !DILocation(line: 442, column: 35, scope: !729)
!731 = !{!425, !65, i64 16}
!732 = !DILocation(line: 442, column: 40, scope: !729)
!733 = !DILocation(line: 0, scope: !729)
!734 = !{!425, !71, i64 24}
!735 = !DILocation(line: 442, column: 11, scope: !724)
!736 = !DILocation(line: 444, column: 36, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !3, line: 443, column: 2)
!738 = !DILocation(line: 445, column: 4, scope: !737)
!739 = !DILocation(line: 451, column: 18, scope: !720)
!740 = !DILocation(line: 451, column: 5, scope: !720)
!741 = !DILocation(line: 0, scope: !166)
!742 = !DILocation(line: 452, column: 1, scope: !110)
!743 = !DILocation(line: 0, scope: !354)
!744 = distinct !DISubprogram(name: "getopt_long", scope: !3, file: !3, line: 467, type: !745, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!18, !18, !32, !34, !113, !120}
!747 = !{!748, !749, !750, !751, !752, !753, !754}
!748 = !DILocalVariable(name: "argc", arg: 1, scope: !744, file: !3, line: 467, type: !18)
!749 = !DILocalVariable(name: "argv", arg: 2, scope: !744, file: !3, line: 467, type: !32)
!750 = !DILocalVariable(name: "shortopts", arg: 3, scope: !744, file: !3, line: 467, type: !34)
!751 = !DILocalVariable(name: "longopts", arg: 4, scope: !744, file: !3, line: 468, type: !113)
!752 = !DILocalVariable(name: "longind", arg: 5, scope: !744, file: !3, line: 468, type: !120)
!753 = !DILocalVariable(name: "data", scope: !744, file: !3, line: 470, type: !41)
!754 = !DILocalVariable(name: "r", scope: !744, file: !3, line: 471, type: !18)
!755 = !DILocation(line: 467, column: 18, scope: !744)
!756 = !DILocation(line: 467, column: 36, scope: !744)
!757 = !DILocation(line: 467, column: 56, scope: !744)
!758 = !DILocation(line: 468, column: 28, scope: !744)
!759 = !DILocation(line: 468, column: 43, scope: !744)
!760 = !DILocation(line: 470, column: 3, scope: !744)
!761 = !DILocation(line: 470, column: 22, scope: !744)
!762 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !763)
!763 = distinct !DILocation(line: 473, column: 3, scope: !744)
!764 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !763)
!765 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !763)
!766 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !763)
!767 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !763)
!768 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !763)
!769 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !763)
!770 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !763)
!771 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !763)
!772 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !763)
!773 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !763)
!774 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !763)
!775 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !763)
!776 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !763)
!777 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !763)
!778 = !DILocation(line: 166, column: 1, scope: !56, inlinedAt: !763)
!779 = !DILocation(line: 474, column: 7, scope: !744)
!780 = !DILocation(line: 471, column: 7, scope: !744)
!781 = !DILocation(line: 171, column: 36, scope: !93, inlinedAt: !782)
!782 = distinct !DILocation(line: 475, column: 3, scope: !744)
!783 = !DILocation(line: 173, column: 18, scope: !93, inlinedAt: !782)
!784 = !DILocation(line: 173, column: 10, scope: !93, inlinedAt: !782)
!785 = !DILocation(line: 174, column: 18, scope: !93, inlinedAt: !782)
!786 = !DILocation(line: 174, column: 10, scope: !93, inlinedAt: !782)
!787 = !DILocation(line: 175, column: 18, scope: !93, inlinedAt: !782)
!788 = !DILocation(line: 175, column: 10, scope: !93, inlinedAt: !782)
!789 = !DILocation(line: 176, column: 18, scope: !93, inlinedAt: !782)
!790 = !DILocation(line: 176, column: 10, scope: !93, inlinedAt: !782)
!791 = !DILocation(line: 177, column: 20, scope: !93, inlinedAt: !782)
!792 = !DILocation(line: 177, column: 12, scope: !93, inlinedAt: !782)
!793 = !DILocation(line: 178, column: 1, scope: !93, inlinedAt: !782)
!794 = !DILocation(line: 477, column: 1, scope: !744)
!795 = !DILocation(line: 476, column: 3, scope: !744)
!796 = distinct !DISubprogram(name: "getopt_long_only", scope: !3, file: !3, line: 480, type: !745, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804}
!798 = !DILocalVariable(name: "argc", arg: 1, scope: !796, file: !3, line: 480, type: !18)
!799 = !DILocalVariable(name: "argv", arg: 2, scope: !796, file: !3, line: 480, type: !32)
!800 = !DILocalVariable(name: "shortopts", arg: 3, scope: !796, file: !3, line: 480, type: !34)
!801 = !DILocalVariable(name: "longopts", arg: 4, scope: !796, file: !3, line: 481, type: !113)
!802 = !DILocalVariable(name: "longind", arg: 5, scope: !796, file: !3, line: 481, type: !120)
!803 = !DILocalVariable(name: "data", scope: !796, file: !3, line: 483, type: !41)
!804 = !DILocalVariable(name: "r", scope: !796, file: !3, line: 484, type: !18)
!805 = !DILocation(line: 480, column: 23, scope: !796)
!806 = !DILocation(line: 480, column: 41, scope: !796)
!807 = !DILocation(line: 480, column: 61, scope: !796)
!808 = !DILocation(line: 481, column: 26, scope: !796)
!809 = !DILocation(line: 481, column: 41, scope: !796)
!810 = !DILocation(line: 483, column: 3, scope: !796)
!811 = !DILocation(line: 483, column: 22, scope: !796)
!812 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !813)
!813 = distinct !DILocation(line: 486, column: 3, scope: !796)
!814 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !813)
!815 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !813)
!816 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !813)
!817 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !813)
!818 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !813)
!819 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !813)
!820 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !813)
!821 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !813)
!822 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !813)
!823 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !813)
!824 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !813)
!825 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !813)
!826 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !813)
!827 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !813)
!828 = !DILocation(line: 166, column: 1, scope: !56, inlinedAt: !813)
!829 = !DILocation(line: 487, column: 7, scope: !796)
!830 = !DILocation(line: 484, column: 7, scope: !796)
!831 = !DILocation(line: 171, column: 36, scope: !93, inlinedAt: !832)
!832 = distinct !DILocation(line: 488, column: 3, scope: !796)
!833 = !DILocation(line: 173, column: 18, scope: !93, inlinedAt: !832)
!834 = !DILocation(line: 173, column: 10, scope: !93, inlinedAt: !832)
!835 = !DILocation(line: 174, column: 18, scope: !93, inlinedAt: !832)
!836 = !DILocation(line: 174, column: 10, scope: !93, inlinedAt: !832)
!837 = !DILocation(line: 175, column: 18, scope: !93, inlinedAt: !832)
!838 = !DILocation(line: 175, column: 10, scope: !93, inlinedAt: !832)
!839 = !DILocation(line: 176, column: 18, scope: !93, inlinedAt: !832)
!840 = !DILocation(line: 176, column: 10, scope: !93, inlinedAt: !832)
!841 = !DILocation(line: 177, column: 20, scope: !93, inlinedAt: !832)
!842 = !DILocation(line: 177, column: 12, scope: !93, inlinedAt: !832)
!843 = !DILocation(line: 178, column: 1, scope: !93, inlinedAt: !832)
!844 = !DILocation(line: 490, column: 1, scope: !796)
!845 = !DILocation(line: 489, column: 3, scope: !796)
!846 = distinct !DISubprogram(name: "__getopt_r", scope: !3, file: !3, line: 493, type: !847, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !18, !32, !34, !59}
!849 = !{!850, !851, !852, !853}
!850 = !DILocalVariable(name: "argc", arg: 1, scope: !846, file: !3, line: 493, type: !18)
!851 = !DILocalVariable(name: "argv", arg: 2, scope: !846, file: !3, line: 493, type: !32)
!852 = !DILocalVariable(name: "optstring", arg: 3, scope: !846, file: !3, line: 493, type: !34)
!853 = !DILocalVariable(name: "data", arg: 4, scope: !846, file: !3, line: 494, type: !59)
!854 = !DILocation(line: 493, column: 17, scope: !846)
!855 = !DILocation(line: 493, column: 35, scope: !846)
!856 = !DILocation(line: 493, column: 55, scope: !846)
!857 = !DILocation(line: 494, column: 26, scope: !846)
!858 = !DILocation(line: 496, column: 10, scope: !846)
!859 = !DILocation(line: 496, column: 3, scope: !846)
!860 = distinct !DISubprogram(name: "__getopt_long_r", scope: !3, file: !3, line: 500, type: !861, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!18, !18, !32, !34, !113, !120, !59}
!863 = !{!864, !865, !866, !867, !868, !869}
!864 = !DILocalVariable(name: "argc", arg: 1, scope: !860, file: !3, line: 500, type: !18)
!865 = !DILocalVariable(name: "argv", arg: 2, scope: !860, file: !3, line: 500, type: !32)
!866 = !DILocalVariable(name: "shortopts", arg: 3, scope: !860, file: !3, line: 500, type: !34)
!867 = !DILocalVariable(name: "longopts", arg: 4, scope: !860, file: !3, line: 501, type: !113)
!868 = !DILocalVariable(name: "longind", arg: 5, scope: !860, file: !3, line: 501, type: !120)
!869 = !DILocalVariable(name: "data", arg: 6, scope: !860, file: !3, line: 502, type: !59)
!870 = !DILocation(line: 500, column: 22, scope: !860)
!871 = !DILocation(line: 500, column: 40, scope: !860)
!872 = !DILocation(line: 500, column: 60, scope: !860)
!873 = !DILocation(line: 501, column: 25, scope: !860)
!874 = !DILocation(line: 501, column: 40, scope: !860)
!875 = !DILocation(line: 502, column: 24, scope: !860)
!876 = !DILocation(line: 504, column: 10, scope: !860)
!877 = !DILocation(line: 504, column: 3, scope: !860)
!878 = distinct !DISubprogram(name: "__getopt_long_only_r", scope: !3, file: !3, line: 508, type: !861, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !879)
!879 = !{!880, !881, !882, !883, !884, !885}
!880 = !DILocalVariable(name: "argc", arg: 1, scope: !878, file: !3, line: 508, type: !18)
!881 = !DILocalVariable(name: "argv", arg: 2, scope: !878, file: !3, line: 508, type: !32)
!882 = !DILocalVariable(name: "shortopts", arg: 3, scope: !878, file: !3, line: 508, type: !34)
!883 = !DILocalVariable(name: "longopts", arg: 4, scope: !878, file: !3, line: 509, type: !113)
!884 = !DILocalVariable(name: "longind", arg: 5, scope: !878, file: !3, line: 509, type: !120)
!885 = !DILocalVariable(name: "data", arg: 6, scope: !878, file: !3, line: 510, type: !59)
!886 = !DILocation(line: 508, column: 27, scope: !878)
!887 = !DILocation(line: 508, column: 45, scope: !878)
!888 = !DILocation(line: 508, column: 65, scope: !878)
!889 = !DILocation(line: 509, column: 30, scope: !878)
!890 = !DILocation(line: 509, column: 45, scope: !878)
!891 = !DILocation(line: 510, column: 29, scope: !878)
!892 = !DILocation(line: 512, column: 10, scope: !878)
!893 = !DILocation(line: 512, column: 3, scope: !878)
