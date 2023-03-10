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
  br i1 %10, label %605, label %11, !dbg !168

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i8* %2, null, !dbg !169
  %13 = icmp eq %struct.option* %3, null, !dbg !170
  %14 = and i1 %12, %13, !dbg !171
  br i1 %14, label %605, label %15, !dbg !171

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !172
  %17 = load i32, i32* %16, align 8, !dbg !172, !tbaa !76
  %18 = icmp slt i32 %17, %0, !dbg !173
  br i1 %18, label %19, label %605, !dbg !174

; <label>:19:                                     ; preds = %15
  %20 = sext i32 %17 to i64, !dbg !175
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !175
  %22 = load i8*, i8** %21, align 8, !dbg !175, !tbaa !64
  %23 = icmp eq i8* %22, null, !dbg !176
  br i1 %23, label %605, label %24, !dbg !177

; <label>:24:                                     ; preds = %19
  %25 = tail call i32 @strcmp(i8* nonnull %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !178
  %26 = icmp eq i32 %25, 0, !dbg !180
  %27 = load i32, i32* %16, align 8, !dbg !181, !tbaa !76
  br i1 %26, label %28, label %30, !dbg !183

; <label>:28:                                     ; preds = %24
  %29 = add nsw i32 %27, 1, !dbg !184
  store i32 %29, i32* %16, align 8, !dbg !184, !tbaa !76
  br label %605, !dbg !186

; <label>:30:                                     ; preds = %24
  %31 = icmp eq i32 %27, 0, !dbg !187
  br i1 %31, label %32, label %34, !dbg !188

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !189
  store i32 1, i32* %33, align 4, !dbg !190, !tbaa !88
  store i32 1, i32* %16, align 8, !dbg !191, !tbaa !76
  br label %34, !dbg !192

; <label>:34:                                     ; preds = %32, %30
  br i1 %12, label %35, label %39, !dbg !193

; <label>:35:                                     ; preds = %34
  %36 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !195
  %37 = icmp eq i8* %36, null, !dbg !196
  %38 = select i1 %37, i32 0, i32 2, !dbg !197
  br label %57, !dbg !198

; <label>:39:                                     ; preds = %34
  %40 = load i8, i8* %2, align 1, !dbg !200, !tbaa !201
  switch i8 %40, label %45 [
    i8 45, label %41
    i8 43, label %41
  ], !dbg !202

; <label>:41:                                     ; preds = %39, %39
  %42 = icmp eq i8 %40, 45, !dbg !203
  %43 = select i1 %42, i32 1, i32 2, !dbg !205
  %44 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !206
  br label %49, !dbg !198

; <label>:45:                                     ; preds = %39
  %46 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !195
  %47 = icmp eq i8* %46, null, !dbg !196
  %48 = select i1 %47, i32 0, i32 2, !dbg !197
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = phi i32 [ %43, %41 ], [ %48, %45 ]
  %51 = phi i8* [ %44, %41 ], [ %2, %45 ]
  %52 = load i8, i8* %51, align 1, !dbg !207, !tbaa !201
  %53 = icmp eq i8 %52, 58, !dbg !208
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !209
  %55 = select i1 %53, i8* %54, i8* %51, !dbg !211
  %56 = zext i1 %53 to i32, !dbg !211
  br label %57, !dbg !211

; <label>:57:                                     ; preds = %35, %49
  %58 = phi i32 [ %50, %49 ], [ %38, %35 ]
  %59 = phi i8* [ %55, %49 ], [ null, %35 ], !dbg !212
  %60 = phi i32 [ %56, %49 ], [ 0, %35 ], !dbg !213
  %61 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !214
  %62 = load i32, i32* %61, align 4, !dbg !214, !tbaa !88
  %63 = icmp eq i32 %62, 1, !dbg !216
  br i1 %63, label %64, label %171, !dbg !217

; <label>:64:                                     ; preds = %57
  %65 = trunc i32 %58 to i2, !dbg !218
  switch i2 %65, label %66 [
    i2 -2, label %156
    i2 1, label %136
  ], !dbg !218

; <label>:66:                                     ; preds = %64
  %67 = load i32, i32* %16, align 8, !dbg !220, !tbaa !76
  %68 = sext i32 %67 to i64, !dbg !222
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !223
  %70 = load i8*, i8** %69, align 8, !dbg !223, !tbaa !64
  %71 = icmp eq i8* %70, null, !dbg !233
  br i1 %71, label %92, label %72, !dbg !234

; <label>:72:                                     ; preds = %66
  %73 = icmp eq i32 %5, 0
  br label %74, !dbg !234

; <label>:74:                                     ; preds = %72, %84
  %75 = phi i64 [ %68, %72 ], [ %85, %84 ]
  %76 = phi i8* [ %70, %72 ], [ %89, %84 ]
  %77 = phi i32 [ 0, %72 ], [ %87, %84 ]
  %78 = load i8, i8* %76, align 1, !dbg !235, !tbaa !201
  %79 = icmp eq i8 %78, 45, !dbg !236
  br i1 %79, label %91, label %80, !dbg !237

; <label>:80:                                     ; preds = %74
  br i1 %73, label %81, label %82, !dbg !238

; <label>:81:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br label %84, !dbg !240

; <label>:82:                                     ; preds = %80
  %83 = icmp eq i8 %78, 43, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %83, label %93, label %84, !dbg !240

; <label>:84:                                     ; preds = %82, %81
  %85 = add i64 %75, 1, !dbg !242
  %86 = trunc i64 %85 to i32, !dbg !242
  store i32 %86, i32* %16, align 8, !dbg !242, !tbaa !76
  %87 = add nuw nsw i32 %77, 1, !dbg !244
  %88 = getelementptr inbounds i8*, i8** %1, i64 %85, !dbg !223
  %89 = load i8*, i8** %88, align 8, !dbg !223, !tbaa !64
  %90 = icmp eq i8* %89, null, !dbg !233
  br i1 %90, label %92, label %74, !dbg !234, !llvm.loop !245

; <label>:91:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br label %93

; <label>:92:                                     ; preds = %84, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  store i32 %67, i32* %16, align 8, !dbg !247, !tbaa !76
  br label %605, !dbg !250

; <label>:93:                                     ; preds = %82, %91
  %94 = tail call i32 @strcmp(i8* nonnull %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !251
  %95 = icmp eq i32 %94, 0, !dbg !253
  br i1 %95, label %96, label %171, !dbg !254

; <label>:96:                                     ; preds = %93
  %97 = icmp ugt i32 %77, 1, !dbg !279
  br i1 %97, label %98, label %115, !dbg !282

; <label>:98:                                     ; preds = %96
  %99 = lshr i32 %77, 1
  %100 = zext i32 %99 to i64, !dbg !283
  br label %101, !dbg !283

; <label>:101:                                    ; preds = %101, %98
  %102 = phi i64 [ 0, %98 ], [ %113, %101 ]
  %103 = getelementptr inbounds i8*, i8** %69, i64 %102, !dbg !283
  %104 = bitcast i8** %103 to i64*, !dbg !283
  %105 = load i64, i64* %104, align 8, !dbg !283, !tbaa !64
  %106 = trunc i64 %102 to i32, !dbg !286
  %107 = xor i32 %106, -1, !dbg !286
  %108 = add i32 %77, %107, !dbg !286
  %109 = sext i32 %108 to i64, !dbg !287
  %110 = getelementptr inbounds i8*, i8** %69, i64 %109, !dbg !287
  %111 = bitcast i8** %110 to i64*, !dbg !287
  %112 = load i64, i64* %111, align 8, !dbg !287, !tbaa !64
  store i64 %112, i64* %104, align 8, !dbg !288, !tbaa !64
  store i64 %105, i64* %111, align 8, !dbg !289, !tbaa !64
  %113 = add nuw nsw i64 %102, 1, !dbg !290
  %114 = icmp ult i64 %113, %100, !dbg !279
  br i1 %114, label %101, label %115, !dbg !282, !llvm.loop !291

; <label>:115:                                    ; preds = %101, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  %116 = icmp eq i32 %77, 0, !dbg !298
  br i1 %116, label %134, label %117, !dbg !299

; <label>:117:                                    ; preds = %115
  %118 = add nuw nsw i32 %77, 1, !dbg !300
  %119 = lshr i32 %118, 1
  %120 = zext i32 %119 to i64, !dbg !302
  br label %121, !dbg !302

; <label>:121:                                    ; preds = %121, %117
  %122 = phi i64 [ 0, %117 ], [ %132, %121 ]
  %123 = getelementptr inbounds i8*, i8** %69, i64 %122, !dbg !302
  %124 = bitcast i8** %123 to i64*, !dbg !302
  %125 = load i64, i64* %124, align 8, !dbg !302, !tbaa !64
  %126 = trunc i64 %122 to i32, !dbg !304
  %127 = sub i32 %77, %126, !dbg !304
  %128 = sext i32 %127 to i64, !dbg !305
  %129 = getelementptr inbounds i8*, i8** %69, i64 %128, !dbg !305
  %130 = bitcast i8** %129 to i64*, !dbg !305
  %131 = load i64, i64* %130, align 8, !dbg !305, !tbaa !64
  store i64 %131, i64* %124, align 8, !dbg !306, !tbaa !64
  store i64 %125, i64* %130, align 8, !dbg !307, !tbaa !64
  %132 = add nuw nsw i64 %122, 1, !dbg !308
  %133 = icmp ult i64 %132, %120, !dbg !298
  br i1 %133, label %121, label %134, !dbg !299, !llvm.loop !291

; <label>:134:                                    ; preds = %121, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  %135 = add i32 %67, 1, !dbg !316
  store i32 %135, i32* %16, align 8, !dbg !317, !tbaa !76
  br label %605, !dbg !318

; <label>:136:                                    ; preds = %64
  %137 = load i32, i32* %16, align 8, !dbg !319, !tbaa !76
  %138 = sext i32 %137 to i64, !dbg !321
  %139 = getelementptr inbounds i8*, i8** %1, i64 %138, !dbg !321
  %140 = load i8*, i8** %139, align 8, !dbg !321, !tbaa !64
  %141 = icmp eq i8* %140, null, !dbg !325
  %142 = ptrtoint i8* %140 to i64, !dbg !326
  br i1 %141, label %149, label %143, !dbg !326

; <label>:143:                                    ; preds = %136
  %144 = load i8, i8* %140, align 1, !dbg !327, !tbaa !201
  %145 = icmp eq i8 %144, 45, !dbg !328
  br i1 %145, label %149, label %146, !dbg !329

; <label>:146:                                    ; preds = %143
  %147 = icmp eq i32 %5, 0, !dbg !330
  br i1 %147, label %148, label %150, !dbg !331

; <label>:148:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %152, !dbg !333

; <label>:149:                                    ; preds = %143, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %171, !dbg !333

; <label>:150:                                    ; preds = %146
  %151 = icmp eq i8 %144, 43, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %151, label %171, label %152, !dbg !333

; <label>:152:                                    ; preds = %150, %148
  %153 = add nsw i32 %137, 1, !dbg !335
  store i32 %153, i32* %16, align 8, !dbg !335, !tbaa !76
  %154 = bitcast %struct.getopt_data* %6 to i64*, !dbg !337
  store i64 %142, i64* %154, align 8, !dbg !337, !tbaa !69
  %155 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !338
  store i32 1, i32* %155, align 8, !dbg !339, !tbaa !84
  br label %605, !dbg !340

; <label>:156:                                    ; preds = %64
  %157 = load i32, i32* %16, align 8, !dbg !341, !tbaa !76
  %158 = sext i32 %157 to i64, !dbg !343
  %159 = getelementptr inbounds i8*, i8** %1, i64 %158, !dbg !343
  %160 = load i8*, i8** %159, align 8, !dbg !343, !tbaa !64
  %161 = icmp eq i8* %160, null, !dbg !347
  br i1 %161, label %168, label %162, !dbg !348

; <label>:162:                                    ; preds = %156
  %163 = load i8, i8* %160, align 1, !dbg !349, !tbaa !201
  %164 = icmp eq i8 %163, 45, !dbg !350
  br i1 %164, label %168, label %165, !dbg !351

; <label>:165:                                    ; preds = %162
  %166 = icmp eq i32 %5, 0, !dbg !352
  br i1 %166, label %167, label %169, !dbg !353

; <label>:167:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br label %605, !dbg !355

; <label>:168:                                    ; preds = %162, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br label %171, !dbg !355

; <label>:169:                                    ; preds = %165
  %170 = icmp eq i8 %163, 43, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %170, label %171, label %605, !dbg !355

; <label>:171:                                    ; preds = %169, %150, %168, %149, %93, %57
  %172 = phi i64 [ %68, %93 ], [ 0, %150 ], [ 0, %169 ], [ 0, %57 ], [ 0, %149 ], [ 0, %168 ], !dbg !213
  %173 = phi i32 [ %77, %93 ], [ 0, %150 ], [ 0, %169 ], [ 0, %57 ], [ 0, %149 ], [ 0, %168 ], !dbg !213
  %174 = load i32, i32* %16, align 8, !dbg !357, !tbaa !76
  %175 = sext i32 %174 to i64, !dbg !359
  %176 = getelementptr inbounds i8*, i8** %1, i64 %175, !dbg !359
  %177 = load i8*, i8** %176, align 8, !dbg !359, !tbaa !64
  %178 = icmp eq i8* %177, null, !dbg !360
  br i1 %178, label %605, label %179, !dbg !361

; <label>:179:                                    ; preds = %171
  br i1 %13, label %330, label %180, !dbg !362

; <label>:180:                                    ; preds = %179
  %181 = tail call i32 @memcmp(i8* nonnull %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !364
  %182 = icmp eq i32 %181, 0, !dbg !365
  br i1 %182, label %192, label %183, !dbg !366

; <label>:183:                                    ; preds = %180
  %184 = icmp eq i32 %5, 0, !dbg !367
  br i1 %184, label %330, label %185, !dbg !368

; <label>:185:                                    ; preds = %183
  %186 = load i32, i32* %16, align 8, !dbg !369, !tbaa !76
  %187 = sext i32 %186 to i64, !dbg !370
  %188 = getelementptr inbounds i8*, i8** %1, i64 %187, !dbg !370
  %189 = load i8*, i8** %188, align 8, !dbg !370, !tbaa !64
  %190 = load i8, i8* %189, align 1, !dbg !370, !tbaa !201
  %191 = icmp eq i8 %190, 43, !dbg !371
  br i1 %191, label %192, label %330, !dbg !372

; <label>:192:                                    ; preds = %185, %180
  %193 = load i32, i32* %61, align 4, !dbg !373, !tbaa !88
  %194 = icmp eq i32 %193, 1, !dbg !374
  br i1 %194, label %195, label %330, !dbg !375

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %16, align 8, !dbg !376, !tbaa !76
  %197 = sext i32 %196 to i64, !dbg !379
  %198 = getelementptr inbounds i8*, i8** %1, i64 %197, !dbg !379
  %199 = load i8*, i8** %198, align 8, !dbg !379, !tbaa !64
  %200 = tail call i32 @memcmp(i8* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !380
  %201 = icmp eq i32 %200, 0, !dbg !381
  br i1 %201, label %204, label %202, !dbg !382

; <label>:202:                                    ; preds = %195
  %203 = load i32, i32* %61, align 4, !dbg !383, !tbaa !88
  br label %205, !dbg !382

; <label>:204:                                    ; preds = %195
  store i32 2, i32* %61, align 4, !dbg !384, !tbaa !88
  br label %205, !dbg !385

; <label>:205:                                    ; preds = %202, %204
  %206 = phi i32 [ %203, %202 ], [ 2, %204 ], !dbg !383
  %207 = load i32, i32* %16, align 8, !dbg !386, !tbaa !76
  %208 = sext i32 %207 to i64, !dbg !387
  %209 = getelementptr inbounds i8*, i8** %1, i64 %208, !dbg !387
  %210 = load i8*, i8** %209, align 8, !dbg !387, !tbaa !64
  %211 = sext i32 %206 to i64, !dbg !388
  %212 = getelementptr inbounds i8, i8* %210, i64 %211, !dbg !388
  %213 = tail call i8* @strchr(i8* %212, i32 61) #6, !dbg !389
  %214 = icmp eq i8* %213, null, !dbg !390
  %215 = load i32, i32* %16, align 8, !dbg !392, !tbaa !76
  %216 = sext i32 %215 to i64, !dbg !392
  %217 = getelementptr inbounds i8*, i8** %1, i64 %216, !dbg !392
  br i1 %214, label %218, label %227, !dbg !393

; <label>:218:                                    ; preds = %205
  %219 = load i8*, i8** %217, align 8, !dbg !394, !tbaa !64
  %220 = tail call i64 @strlen(i8* %219) #6, !dbg !396
  %221 = load i32, i32* %16, align 8, !dbg !397, !tbaa !76
  %222 = sext i32 %221 to i64, !dbg !398
  %223 = getelementptr inbounds i8*, i8** %1, i64 %222, !dbg !398
  %224 = load i8*, i8** %223, align 8, !dbg !398, !tbaa !64
  %225 = getelementptr inbounds i8, i8* %224, i64 %220, !dbg !399
  %226 = load i32, i32* %61, align 4, !dbg !400, !tbaa !88
  br label %233, !dbg !401

; <label>:227:                                    ; preds = %205
  %228 = bitcast i8** %217 to i64*, !dbg !402
  %229 = load i64, i64* %228, align 8, !dbg !402, !tbaa !64
  %230 = ptrtoint i8* %213 to i64, !dbg !403
  %231 = sub i64 %230, %229, !dbg !403
  %232 = load i32, i32* %61, align 4, !dbg !404, !tbaa !88
  br label %233

; <label>:233:                                    ; preds = %227, %218
  %234 = phi i32 [ %232, %227 ], [ %226, %218 ]
  %235 = phi i64 [ %231, %227 ], [ %220, %218 ]
  %236 = phi i32 [ %215, %227 ], [ %221, %218 ]
  %237 = phi i8* [ %213, %227 ], [ %225, %218 ], !dbg !405
  %238 = sext i32 %234 to i64, !dbg !406
  %239 = sub i64 %235, %238, !dbg !406
  %240 = getelementptr inbounds %struct.option, %struct.option* %3, i64 0, i32 0, !dbg !407
  %241 = load i8*, i8** %240, align 8, !dbg !407, !tbaa !410
  %242 = icmp eq i8* %241, null, !dbg !412
  br i1 %242, label %330, label %243, !dbg !413

; <label>:243:                                    ; preds = %233, %318
  %244 = phi i32 [ %320, %318 ], [ %234, %233 ], !dbg !414
  %245 = phi i32 [ %319, %318 ], [ %236, %233 ], !dbg !417
  %246 = phi i64 [ %314, %318 ], [ 0, %233 ]
  %247 = phi i8* [ %316, %318 ], [ %241, %233 ]
  %248 = phi i8** [ %315, %318 ], [ %240, %233 ]
  %249 = phi i32 [ %313, %318 ], [ -1, %233 ]
  %250 = sext i32 %245 to i64, !dbg !418
  %251 = getelementptr inbounds i8*, i8** %1, i64 %250, !dbg !418
  %252 = load i8*, i8** %251, align 8, !dbg !418, !tbaa !64
  %253 = sext i32 %244 to i64, !dbg !419
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !419
  %255 = tail call i32 @memcmp(i8* %254, i8* nonnull %247, i64 %239) #6, !dbg !420
  %256 = icmp eq i32 %255, 0, !dbg !421
  br i1 %256, label %257, label %312, !dbg !422

; <label>:257:                                    ; preds = %243
  %258 = load i8*, i8** %248, align 8, !dbg !423, !tbaa !410
  %259 = tail call i64 @strlen(i8* %258) #6, !dbg !426
  %260 = icmp eq i64 %239, %259, !dbg !427
  %261 = trunc i64 %246 to i32, !dbg !428
  br i1 %260, label %321, label %262, !dbg !428

; <label>:262:                                    ; preds = %257
  %263 = icmp slt i32 %249, 0, !dbg !429
  br i1 %263, label %312, label %264, !dbg !432

; <label>:264:                                    ; preds = %262
  %265 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !433
  %266 = load i32, i32* %265, align 4, !dbg !433, !tbaa !80
  %267 = icmp eq i32 %266, 0, !dbg !436
  br i1 %267, label %310, label %268, !dbg !437

; <label>:268:                                    ; preds = %264
  %269 = load i8*, i8** %1, align 8, !dbg !438, !tbaa !64
  %270 = tail call %struct._reent* @__getreent() #6, !dbg !440
  %271 = getelementptr inbounds %struct._reent, %struct._reent* %270, i64 0, i32 3, !dbg !440
  %272 = load %struct.__sFILE*, %struct.__sFILE** %271, align 8, !dbg !440, !tbaa !441
  %273 = tail call i32 @fputs(i8* %269, %struct.__sFILE* %272) #6, !dbg !446
  %274 = tail call %struct._reent* @__getreent() #6, !dbg !447
  %275 = getelementptr inbounds %struct._reent, %struct._reent* %274, i64 0, i32 3, !dbg !447
  %276 = load %struct.__sFILE*, %struct.__sFILE** %275, align 8, !dbg !447, !tbaa !441
  %277 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.__sFILE* %276) #6, !dbg !448
  %278 = load i32, i32* %16, align 8, !dbg !449, !tbaa !76
  %279 = sext i32 %278 to i64, !dbg !450
  %280 = getelementptr inbounds i8*, i8** %1, i64 %279, !dbg !450
  %281 = load i8*, i8** %280, align 8, !dbg !450, !tbaa !64
  %282 = tail call %struct._reent* @__getreent() #6, !dbg !451
  %283 = getelementptr inbounds %struct._reent, %struct._reent* %282, i64 0, i32 3, !dbg !451
  %284 = load %struct.__sFILE*, %struct.__sFILE** %283, align 8, !dbg !451, !tbaa !441
  %285 = tail call i32 @fputs(i8* %281, %struct.__sFILE* %284) #6, !dbg !452
  %286 = tail call %struct._reent* @__getreent() #6, !dbg !453
  %287 = getelementptr inbounds %struct._reent, %struct._reent* %286, i64 0, i32 3, !dbg !453
  %288 = load %struct.__sFILE*, %struct.__sFILE** %287, align 8, !dbg !453, !tbaa !441
  %289 = tail call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %288) #6, !dbg !454
  %290 = sext i32 %249 to i64, !dbg !455
  %291 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %290, i32 0, !dbg !456
  %292 = load i8*, i8** %291, align 8, !dbg !456, !tbaa !410
  %293 = tail call %struct._reent* @__getreent() #6, !dbg !457
  %294 = getelementptr inbounds %struct._reent, %struct._reent* %293, i64 0, i32 3, !dbg !457
  %295 = load %struct.__sFILE*, %struct.__sFILE** %294, align 8, !dbg !457, !tbaa !441
  %296 = tail call i32 @fputs(i8* %292, %struct.__sFILE* %295) #6, !dbg !458
  %297 = tail call %struct._reent* @__getreent() #6, !dbg !459
  %298 = getelementptr inbounds %struct._reent, %struct._reent* %297, i64 0, i32 3, !dbg !459
  %299 = load %struct.__sFILE*, %struct.__sFILE** %298, align 8, !dbg !459, !tbaa !441
  %300 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %299) #6, !dbg !460
  %301 = load i8*, i8** %248, align 8, !dbg !461, !tbaa !410
  %302 = tail call %struct._reent* @__getreent() #6, !dbg !462
  %303 = getelementptr inbounds %struct._reent, %struct._reent* %302, i64 0, i32 3, !dbg !462
  %304 = load %struct.__sFILE*, %struct.__sFILE** %303, align 8, !dbg !462, !tbaa !441
  %305 = tail call i32 @fputs(i8* %301, %struct.__sFILE* %304) #6, !dbg !463
  %306 = tail call %struct._reent* @__getreent() #6, !dbg !464
  %307 = getelementptr inbounds %struct._reent, %struct._reent* %306, i64 0, i32 3, !dbg !464
  %308 = load %struct.__sFILE*, %struct.__sFILE** %307, align 8, !dbg !464, !tbaa !441
  %309 = tail call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.__sFILE* %308) #6, !dbg !465
  br label %310, !dbg !466

; <label>:310:                                    ; preds = %264, %268
  %311 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !467
  store i32 63, i32* %311, align 8, !dbg !468, !tbaa !84
  br label %605, !dbg !469

; <label>:312:                                    ; preds = %262, %243
  %313 = phi i32 [ %249, %243 ], [ %261, %262 ], !dbg !405
  %314 = add nuw i64 %246, 1, !dbg !470
  %315 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %314, i32 0, !dbg !407
  %316 = load i8*, i8** %315, align 8, !dbg !407, !tbaa !410
  %317 = icmp eq i8* %316, null, !dbg !412
  br i1 %317, label %323, label %318, !dbg !413, !llvm.loop !471

; <label>:318:                                    ; preds = %312
  %319 = load i32, i32* %16, align 8, !dbg !417, !tbaa !76
  %320 = load i32, i32* %61, align 4, !dbg !414, !tbaa !88
  br label %243, !dbg !413

; <label>:321:                                    ; preds = %257
  %322 = trunc i64 %246 to i32, !dbg !428
  br label %323, !dbg !473

; <label>:323:                                    ; preds = %312, %321
  %324 = phi i32 [ %322, %321 ], [ %313, %312 ], !dbg !405
  %325 = icmp sgt i32 %324, -1, !dbg !473
  br i1 %325, label %326, label %330, !dbg !475

; <label>:326:                                    ; preds = %323
  %327 = sext i32 %324 to i64, !dbg !476
  %328 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %327, i32 1, !dbg !477
  %329 = load i32, i32* %328, align 8, !dbg !477, !tbaa !478
  br label %415, !dbg !479

; <label>:330:                                    ; preds = %233, %183, %179, %323, %192, %185
  %331 = phi i32 [ %324, %323 ], [ -1, %192 ], [ -1, %185 ], [ -1, %183 ], [ -1, %179 ], [ -1, %233 ], !dbg !213
  %332 = icmp slt i32 %331, 0, !dbg !481
  %333 = icmp ne i8* %59, null, !dbg !482
  %334 = and i1 %333, %332, !dbg !479
  br i1 %334, label %335, label %501, !dbg !479

; <label>:335:                                    ; preds = %330
  %336 = load i32, i32* %16, align 8, !dbg !483, !tbaa !76
  %337 = sext i32 %336 to i64, !dbg !485
  %338 = getelementptr inbounds i8*, i8** %1, i64 %337, !dbg !485
  %339 = load i8*, i8** %338, align 8, !dbg !485, !tbaa !64
  %340 = load i32, i32* %61, align 4, !dbg !486, !tbaa !88
  %341 = sext i32 %340 to i64, !dbg !485
  %342 = getelementptr inbounds i8, i8* %339, i64 %341, !dbg !485
  %343 = load i8, i8* %342, align 1, !dbg !485, !tbaa !201
  %344 = sext i8 %343 to i32, !dbg !485
  %345 = tail call i8* @strchr(i8* nonnull %59, i32 %344) #6, !dbg !487
  %346 = icmp eq i8* %345, null, !dbg !488
  br i1 %346, label %347, label %393, !dbg !490

; <label>:347:                                    ; preds = %335
  %348 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !491
  %349 = load i32, i32* %348, align 4, !dbg !491, !tbaa !80
  %350 = icmp eq i32 %349, 0, !dbg !494
  br i1 %350, label %378, label %351, !dbg !495

; <label>:351:                                    ; preds = %347
  %352 = load i8*, i8** %1, align 8, !dbg !496, !tbaa !64
  %353 = tail call %struct._reent* @__getreent() #6, !dbg !498
  %354 = getelementptr inbounds %struct._reent, %struct._reent* %353, i64 0, i32 3, !dbg !498
  %355 = load %struct.__sFILE*, %struct.__sFILE** %354, align 8, !dbg !498, !tbaa !441
  %356 = tail call i32 @fputs(i8* %352, %struct.__sFILE* %355) #6, !dbg !499
  %357 = tail call %struct._reent* @__getreent() #6, !dbg !500
  %358 = getelementptr inbounds %struct._reent, %struct._reent* %357, i64 0, i32 3, !dbg !500
  %359 = load %struct.__sFILE*, %struct.__sFILE** %358, align 8, !dbg !500, !tbaa !441
  %360 = tail call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.__sFILE* %359) #6, !dbg !501
  %361 = load i32, i32* %16, align 8, !dbg !502, !tbaa !76
  %362 = sext i32 %361 to i64, !dbg !503
  %363 = getelementptr inbounds i8*, i8** %1, i64 %362, !dbg !503
  %364 = load i8*, i8** %363, align 8, !dbg !503, !tbaa !64
  %365 = load i32, i32* %61, align 4, !dbg !504, !tbaa !88
  %366 = sext i32 %365 to i64, !dbg !503
  %367 = getelementptr inbounds i8, i8* %364, i64 %366, !dbg !503
  %368 = load i8, i8* %367, align 1, !dbg !503, !tbaa !201
  %369 = sext i8 %368 to i32, !dbg !503
  %370 = tail call %struct._reent* @__getreent() #6, !dbg !505
  %371 = getelementptr inbounds %struct._reent, %struct._reent* %370, i64 0, i32 3, !dbg !505
  %372 = load %struct.__sFILE*, %struct.__sFILE** %371, align 8, !dbg !505, !tbaa !441
  %373 = tail call i32 @fputc(i32 %369, %struct.__sFILE* %372) #6, !dbg !506
  %374 = tail call %struct._reent* @__getreent() #6, !dbg !507
  %375 = getelementptr inbounds %struct._reent, %struct._reent* %374, i64 0, i32 3, !dbg !507
  %376 = load %struct.__sFILE*, %struct.__sFILE** %375, align 8, !dbg !507, !tbaa !441
  %377 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %376) #6, !dbg !508
  br label %378, !dbg !509

; <label>:378:                                    ; preds = %347, %351
  %379 = load i32, i32* %61, align 4, !dbg !510, !tbaa !88
  %380 = add nsw i32 %379, 1, !dbg !510
  store i32 %380, i32* %61, align 4, !dbg !510, !tbaa !88
  %381 = load i32, i32* %16, align 8, !dbg !511, !tbaa !76
  %382 = sext i32 %381 to i64, !dbg !513
  %383 = getelementptr inbounds i8*, i8** %1, i64 %382, !dbg !513
  %384 = load i8*, i8** %383, align 8, !dbg !513, !tbaa !64
  %385 = sext i32 %380 to i64, !dbg !513
  %386 = getelementptr inbounds i8, i8* %384, i64 %385, !dbg !513
  %387 = load i8, i8* %386, align 1, !dbg !513, !tbaa !201
  %388 = icmp eq i8 %387, 0, !dbg !514
  br i1 %388, label %389, label %391, !dbg !515

; <label>:389:                                    ; preds = %378
  %390 = add nsw i32 %381, 1, !dbg !516
  store i32 %390, i32* %16, align 8, !dbg !516, !tbaa !76
  store i32 1, i32* %61, align 4, !dbg !518, !tbaa !88
  br label %391, !dbg !519

; <label>:391:                                    ; preds = %389, %378
  %392 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !520
  store i32 63, i32* %392, align 8, !dbg !521, !tbaa !84
  br label %605, !dbg !522

; <label>:393:                                    ; preds = %335
  %394 = getelementptr inbounds i8, i8* %345, i64 1, !dbg !523
  %395 = load i8, i8* %394, align 1, !dbg !523, !tbaa !201
  %396 = icmp eq i8 %395, 58, !dbg !524
  br i1 %396, label %397, label %402, !dbg !525

; <label>:397:                                    ; preds = %393
  %398 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !526
  %399 = load i8, i8* %398, align 1, !dbg !526, !tbaa !201
  %400 = icmp eq i8 %399, 58, !dbg !527
  %401 = select i1 %400, i32 2, i32 1, !dbg !528
  br label %402, !dbg !525

; <label>:402:                                    ; preds = %393, %397
  %403 = phi i32 [ %401, %397 ], [ 0, %393 ], !dbg !525
  %404 = load i32, i32* %16, align 8, !dbg !529, !tbaa !76
  %405 = sext i32 %404 to i64, !dbg !530
  %406 = getelementptr inbounds i8*, i8** %1, i64 %405, !dbg !530
  %407 = load i8*, i8** %406, align 8, !dbg !530, !tbaa !64
  %408 = load i32, i32* %61, align 4, !dbg !531, !tbaa !88
  %409 = sext i32 %408 to i64, !dbg !532
  %410 = getelementptr inbounds i8, i8* %407, i64 %409, !dbg !532
  %411 = getelementptr inbounds i8, i8* %410, i64 1, !dbg !533
  %412 = load i8, i8* %345, align 1, !dbg !534, !tbaa !201
  %413 = sext i8 %412 to i32, !dbg !534
  %414 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !535
  store i32 %413, i32* %414, align 8, !dbg !536, !tbaa !84
  br label %415, !dbg !537

; <label>:415:                                    ; preds = %326, %402
  %416 = phi i1 [ true, %402 ], [ false, %326 ]
  %417 = phi i32 [ %331, %402 ], [ %324, %326 ]
  %418 = phi i8* [ %411, %402 ], [ %237, %326 ], !dbg !406
  %419 = phi i32 [ %403, %402 ], [ %329, %326 ], !dbg !538
  %420 = phi i8* [ %345, %402 ], [ null, %326 ], !dbg !213
  switch i32 %419, label %500 [
    i32 2, label %421
    i32 1, label %430
  ], !dbg !539

; <label>:421:                                    ; preds = %415
  %422 = load i8, i8* %418, align 1, !dbg !540, !tbaa !201
  %423 = icmp eq i8 %422, 61, !dbg !543
  %424 = getelementptr inbounds i8, i8* %418, i64 1, !dbg !544
  %425 = select i1 %423, i8* %424, i8* %418, !dbg !545
  %426 = load i8, i8* %425, align 1, !dbg !546, !tbaa !201
  %427 = icmp eq i8 %426, 0, !dbg !547
  %428 = select i1 %427, i8* null, i8* %425, !dbg !548
  %429 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !549
  store i8* %428, i8** %429, align 8, !dbg !550, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !551, !tbaa !88
  br label %519, !dbg !552

; <label>:430:                                    ; preds = %415
  %431 = load i8, i8* %418, align 1, !dbg !553, !tbaa !201
  %432 = icmp eq i8 %431, 61, !dbg !555
  %433 = getelementptr inbounds i8, i8* %418, i64 1, !dbg !556
  %434 = select i1 %432, i8* %433, i8* %418, !dbg !557
  %435 = load i8, i8* %434, align 1, !dbg !558, !tbaa !201
  %436 = icmp eq i8 %435, 0, !dbg !560
  br i1 %436, label %439, label %437, !dbg !561

; <label>:437:                                    ; preds = %430
  %438 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !562
  store i8* %434, i8** %438, align 8, !dbg !564, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !565, !tbaa !88
  br label %519, !dbg !566

; <label>:439:                                    ; preds = %430
  %440 = load i32, i32* %16, align 8, !dbg !567, !tbaa !76
  %441 = add nsw i32 %440, 1, !dbg !569
  %442 = icmp slt i32 %441, %0, !dbg !570
  br i1 %442, label %494, label %443, !dbg !571

; <label>:443:                                    ; preds = %439
  %444 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !572
  %445 = load i32, i32* %444, align 4, !dbg !572, !tbaa !80
  %446 = icmp eq i32 %445, 0, !dbg !575
  br i1 %446, label %490, label %447, !dbg !576

; <label>:447:                                    ; preds = %443
  %448 = load i8*, i8** %1, align 8, !dbg !577, !tbaa !64
  %449 = tail call %struct._reent* @__getreent() #6, !dbg !579
  %450 = getelementptr inbounds %struct._reent, %struct._reent* %449, i64 0, i32 3, !dbg !579
  %451 = load %struct.__sFILE*, %struct.__sFILE** %450, align 8, !dbg !579, !tbaa !441
  %452 = tail call i32 @fputs(i8* %448, %struct.__sFILE* %451) #6, !dbg !580
  %453 = tail call %struct._reent* @__getreent() #6, !dbg !581
  %454 = getelementptr inbounds %struct._reent, %struct._reent* %453, i64 0, i32 3, !dbg !581
  %455 = load %struct.__sFILE*, %struct.__sFILE** %454, align 8, !dbg !581, !tbaa !441
  %456 = tail call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), %struct.__sFILE* %455) #6, !dbg !582
  %457 = icmp sgt i32 %417, -1, !dbg !583
  br i1 %457, label %458, label %472, !dbg !585

; <label>:458:                                    ; preds = %447
  %459 = tail call %struct._reent* @__getreent() #6, !dbg !586
  %460 = getelementptr inbounds %struct._reent, %struct._reent* %459, i64 0, i32 3, !dbg !586
  %461 = load %struct.__sFILE*, %struct.__sFILE** %460, align 8, !dbg !586, !tbaa !441
  %462 = tail call i32 @fputc(i32 45, %struct.__sFILE* %461) #6, !dbg !588
  %463 = sext i32 %417 to i64, !dbg !589
  %464 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %463, i32 0, !dbg !590
  %465 = load i8*, i8** %464, align 8, !dbg !590, !tbaa !410
  %466 = tail call %struct._reent* @__getreent() #6, !dbg !591
  %467 = getelementptr inbounds %struct._reent, %struct._reent* %466, i64 0, i32 3, !dbg !591
  %468 = load %struct.__sFILE*, %struct.__sFILE** %467, align 8, !dbg !591, !tbaa !441
  %469 = tail call i32 @fputs(i8* %465, %struct.__sFILE* %468) #6, !dbg !592
  %470 = icmp eq i32 %60, 0, !dbg !593
  %471 = select i1 %470, i32 63, i32 58, !dbg !593
  br label %481, !dbg !594

; <label>:472:                                    ; preds = %447
  %473 = load i8, i8* %420, align 1, !dbg !595, !tbaa !201
  %474 = sext i8 %473 to i32, !dbg !595
  %475 = tail call %struct._reent* @__getreent() #6, !dbg !597
  %476 = getelementptr inbounds %struct._reent, %struct._reent* %475, i64 0, i32 3, !dbg !597
  %477 = load %struct.__sFILE*, %struct.__sFILE** %476, align 8, !dbg !597, !tbaa !441
  %478 = tail call i32 @fputc(i32 %474, %struct.__sFILE* %477) #6, !dbg !598
  %479 = load i8, i8* %420, align 1, !dbg !599, !tbaa !201
  %480 = sext i8 %479 to i32, !dbg !599
  br label %481

; <label>:481:                                    ; preds = %472, %458
  %482 = phi i32 [ %480, %472 ], [ %471, %458 ]
  %483 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !600
  store i32 %482, i32* %483, align 8, !dbg !601
  %484 = tail call %struct._reent* @__getreent() #6, !dbg !602
  %485 = getelementptr inbounds %struct._reent, %struct._reent* %484, i64 0, i32 3, !dbg !602
  %486 = load %struct.__sFILE*, %struct.__sFILE** %485, align 8, !dbg !602, !tbaa !441
  %487 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %486) #6, !dbg !603
  %488 = load i32, i32* %16, align 8, !dbg !604, !tbaa !76
  %489 = add nsw i32 %488, 1, !dbg !604
  br label %490, !dbg !605

; <label>:490:                                    ; preds = %443, %481
  %491 = phi i32 [ %441, %443 ], [ %489, %481 ], !dbg !604
  store i32 %491, i32* %16, align 8, !dbg !604, !tbaa !76
  %492 = icmp eq i32 %60, 0, !dbg !606
  %493 = select i1 %492, i32 63, i32 58, !dbg !606
  br label %605, !dbg !607

; <label>:494:                                    ; preds = %439
  %495 = sext i32 %441 to i64, !dbg !608
  %496 = getelementptr inbounds i8*, i8** %1, i64 %495, !dbg !608
  %497 = bitcast i8** %496 to i64*, !dbg !608
  %498 = load i64, i64* %497, align 8, !dbg !608, !tbaa !64
  %499 = bitcast %struct.getopt_data* %6 to i64*, !dbg !610
  store i64 %498, i64* %499, align 8, !dbg !610, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !611, !tbaa !88
  br label %519

; <label>:500:                                    ; preds = %415
  br i1 %416, label %501, label %513, !dbg !612

; <label>:501:                                    ; preds = %330, %500
  %502 = phi i32 [ %417, %500 ], [ %331, %330 ]
  %503 = load i32, i32* %61, align 4, !dbg !613, !tbaa !88
  %504 = add nsw i32 %503, 1, !dbg !613
  store i32 %504, i32* %61, align 4, !dbg !613, !tbaa !88
  %505 = load i32, i32* %16, align 8, !dbg !616, !tbaa !76
  %506 = sext i32 %505 to i64, !dbg !618
  %507 = getelementptr inbounds i8*, i8** %1, i64 %506, !dbg !618
  %508 = load i8*, i8** %507, align 8, !dbg !618, !tbaa !64
  %509 = sext i32 %504 to i64, !dbg !618
  %510 = getelementptr inbounds i8, i8* %508, i64 %509, !dbg !618
  %511 = load i8, i8* %510, align 1, !dbg !618, !tbaa !201
  %512 = icmp eq i8 %511, 0, !dbg !619
  br i1 %512, label %513, label %515, !dbg !620

; <label>:513:                                    ; preds = %500, %501
  %514 = phi i32 [ %502, %501 ], [ %417, %500 ]
  store i32 1, i32* %61, align 4, !dbg !621, !tbaa !88
  br label %515, !dbg !622

; <label>:515:                                    ; preds = %513, %501
  %516 = phi i32 [ %504, %501 ], [ 1, %513 ]
  %517 = phi i32 [ %502, %501 ], [ %514, %513 ]
  %518 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !622
  store i8* null, i8** %518, align 8, !dbg !623, !tbaa !69
  br label %519, !dbg !624

; <label>:519:                                    ; preds = %437, %494, %515, %421
  %520 = phi i32 [ %516, %515 ], [ 1, %437 ], [ 1, %494 ], [ 1, %421 ], !dbg !625
  %521 = phi i32 [ %517, %515 ], [ %417, %437 ], [ %417, %494 ], [ %417, %421 ]
  %522 = phi i32 [ 0, %515 ], [ 0, %437 ], [ 1, %494 ], [ 0, %421 ], !dbg !213
  %523 = icmp eq i32 %58, 0, !dbg !628
  br i1 %523, label %524, label %581, !dbg !629

; <label>:524:                                    ; preds = %519
  %525 = icmp eq i32 %520, 1, !dbg !630
  %526 = icmp ne i32 %173, 0, !dbg !631
  %527 = and i1 %526, %525, !dbg !632
  br i1 %527, label %528, label %581, !dbg !632

; <label>:528:                                    ; preds = %524
  %529 = getelementptr inbounds i8*, i8** %1, i64 %172, !dbg !633
  %530 = add nuw nsw i32 %522, 1, !dbg !635
  %531 = icmp ugt i32 %173, 1, !dbg !644
  br i1 %531, label %532, label %549, !dbg !645

; <label>:532:                                    ; preds = %528
  %533 = lshr i32 %173, 1
  %534 = zext i32 %533 to i64, !dbg !646
  br label %535, !dbg !646

; <label>:535:                                    ; preds = %535, %532
  %536 = phi i64 [ 0, %532 ], [ %547, %535 ]
  %537 = getelementptr inbounds i8*, i8** %529, i64 %536, !dbg !646
  %538 = bitcast i8** %537 to i64*, !dbg !646
  %539 = load i64, i64* %538, align 8, !dbg !646, !tbaa !64
  %540 = trunc i64 %536 to i32, !dbg !648
  %541 = xor i32 %540, -1, !dbg !648
  %542 = add i32 %173, %541, !dbg !648
  %543 = sext i32 %542 to i64, !dbg !649
  %544 = getelementptr inbounds i8*, i8** %529, i64 %543, !dbg !649
  %545 = bitcast i8** %544 to i64*, !dbg !649
  %546 = load i64, i64* %545, align 8, !dbg !649, !tbaa !64
  store i64 %546, i64* %538, align 8, !dbg !650, !tbaa !64
  store i64 %539, i64* %545, align 8, !dbg !651, !tbaa !64
  %547 = add nuw nsw i64 %536, 1, !dbg !652
  %548 = icmp ult i64 %547, %534, !dbg !644
  br i1 %548, label %535, label %549, !dbg !645, !llvm.loop !291

; <label>:549:                                    ; preds = %535, %528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  %550 = add nuw nsw i32 %530, %173, !dbg !654
  %551 = icmp ugt i32 %550, 1, !dbg !659
  br i1 %551, label %552, label %569, !dbg !660

; <label>:552:                                    ; preds = %549
  %553 = lshr i32 %550, 1
  %554 = zext i32 %553 to i64, !dbg !661
  br label %555, !dbg !661

; <label>:555:                                    ; preds = %555, %552
  %556 = phi i64 [ 0, %552 ], [ %567, %555 ]
  %557 = getelementptr inbounds i8*, i8** %529, i64 %556, !dbg !661
  %558 = bitcast i8** %557 to i64*, !dbg !661
  %559 = load i64, i64* %558, align 8, !dbg !661, !tbaa !64
  %560 = trunc i64 %556 to i32, !dbg !663
  %561 = xor i32 %560, -1, !dbg !663
  %562 = add i32 %550, %561, !dbg !663
  %563 = sext i32 %562 to i64, !dbg !664
  %564 = getelementptr inbounds i8*, i8** %529, i64 %563, !dbg !664
  %565 = bitcast i8** %564 to i64*, !dbg !664
  %566 = load i64, i64* %565, align 8, !dbg !664, !tbaa !64
  store i64 %566, i64* %558, align 8, !dbg !665, !tbaa !64
  store i64 %559, i64* %565, align 8, !dbg !666, !tbaa !64
  %567 = add nuw nsw i64 %556, 1, !dbg !667
  %568 = icmp ult i64 %567, %554, !dbg !659
  br i1 %568, label %555, label %569, !dbg !660, !llvm.loop !291

; <label>:569:                                    ; preds = %555, %549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %570 = icmp eq i32 %522, 0, !dbg !673
  br i1 %570, label %578, label %571, !dbg !674

; <label>:571:                                    ; preds = %569
  %572 = bitcast i8** %529 to i64*, !dbg !675
  %573 = load i64, i64* %572, align 8, !dbg !675, !tbaa !64
  %574 = zext i32 %522 to i64, !dbg !677
  %575 = getelementptr inbounds i8*, i8** %529, i64 %574, !dbg !677
  %576 = bitcast i8** %575 to i64*, !dbg !677
  %577 = load i64, i64* %576, align 8, !dbg !677, !tbaa !64
  store i64 %577, i64* %572, align 8, !dbg !678, !tbaa !64
  store i64 %573, i64* %576, align 8, !dbg !679, !tbaa !64
  br label %578, !dbg !680

; <label>:578:                                    ; preds = %571, %569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  %579 = trunc i64 %172 to i32, !dbg !682
  %580 = add i32 %530, %579, !dbg !682
  br label %587, !dbg !683

; <label>:581:                                    ; preds = %519, %524
  %582 = icmp eq i32 %520, 1, !dbg !684
  br i1 %582, label %583, label %589, !dbg !685

; <label>:583:                                    ; preds = %581
  %584 = load i32, i32* %16, align 8, !dbg !686, !tbaa !76
  %585 = add nuw nsw i32 %522, 1, !dbg !687
  %586 = add i32 %585, %584, !dbg !688
  br label %587, !dbg !689

; <label>:587:                                    ; preds = %578, %583
  %588 = phi i32 [ %586, %583 ], [ %580, %578 ]
  store i32 %588, i32* %16, align 8, !dbg !690, !tbaa !76
  br label %589, !dbg !691

; <label>:589:                                    ; preds = %587, %581
  %590 = icmp sgt i32 %521, -1, !dbg !691
  br i1 %590, label %591, label %602, !dbg !693

; <label>:591:                                    ; preds = %589
  %592 = icmp eq i32* %4, null, !dbg !694
  br i1 %592, label %594, label %593, !dbg !697

; <label>:593:                                    ; preds = %591
  store i32 %521, i32* %4, align 4, !dbg !698, !tbaa !73
  br label %594, !dbg !699

; <label>:594:                                    ; preds = %591, %593
  %595 = sext i32 %521 to i64, !dbg !700
  %596 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %595, i32 2, !dbg !702
  %597 = load i32*, i32** %596, align 8, !dbg !702, !tbaa !703
  %598 = icmp eq i32* %597, null, !dbg !704
  %599 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %595, i32 3, !dbg !705
  %600 = load i32, i32* %599, align 8, !dbg !705, !tbaa !706
  br i1 %598, label %605, label %601, !dbg !707

; <label>:601:                                    ; preds = %594
  store i32 %600, i32* %597, align 4, !dbg !708, !tbaa !73
  br label %605, !dbg !710

; <label>:602:                                    ; preds = %589
  %603 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !711
  %604 = load i32, i32* %603, align 8, !dbg !711, !tbaa !84
  br label %605, !dbg !712

; <label>:605:                                    ; preds = %169, %167, %594, %171, %7, %19, %11, %15, %602, %601, %490, %391, %310, %152, %134, %92, %28
  %606 = phi i32 [ -1, %28 ], [ -1, %92 ], [ -1, %134 ], [ 63, %391 ], [ 0, %601 ], [ %604, %602 ], [ %493, %490 ], [ 63, %310 ], [ 1, %152 ], [ -1, %15 ], [ -1, %11 ], [ -1, %19 ], [ -1, %7 ], [ -1, %169 ], [ -1, %171 ], [ %600, %594 ], [ -1, %167 ], !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  ret i32 %606, !dbg !714
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !715 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !731
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !735, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !736
  store i64 %8, i64* %9, align 8, !dbg !736, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !737, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !738
  store i32 %10, i32* %11, align 8, !dbg !739, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !740, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !741
  store i32 %12, i32* %13, align 4, !dbg !742, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !743, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !744
  store i32 %14, i32* %15, align 8, !dbg !745, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !746, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !747
  store i32 %16, i32* %17, align 4, !dbg !748, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* nonnull %6) #5, !dbg !750
  %19 = load i64, i64* %9, align 8, !dbg !754, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !755, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !756, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !757, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !758, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !759, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !760, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !761, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !762, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !763, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  ret i32 %18, !dbg !766
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !767 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !781
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !785, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !786
  store i64 %8, i64* %9, align 8, !dbg !786, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !787, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !788
  store i32 %10, i32* %11, align 8, !dbg !789, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !790, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !791
  store i32 %12, i32* %13, align 4, !dbg !792, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !793, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !794
  store i32 %14, i32* %15, align 8, !dbg !795, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !796, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !797
  store i32 %16, i32* %17, align 4, !dbg !798, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* nonnull %6) #5, !dbg !800
  %19 = load i64, i64* %9, align 8, !dbg !804, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !805, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !806, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !807, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !808, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !809, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !810, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !811, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !812, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !813, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  ret i32 %18, !dbg !816
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_r(i32, i8**, i8*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !817 {
  %5 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* null, i32* null, i32 0, %struct.getopt_data* %3) #5, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  ret i32 %5, !dbg !830
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !831 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* %5) #5, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  ret i32 %7, !dbg !848
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_only_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !849 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* %5) #5, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  ret i32 %7, !dbg !864
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
!195 = !DILocation(line: 221, column: 17, scope: !194)
!196 = !DILocation(line: 221, column: 44, scope: !194)
!197 = !DILocation(line: 221, column: 16, scope: !194)
!198 = !DILocation(line: 224, column: 22, scope: !199)
!199 = distinct !DILexicalBlock(scope: !110, file: !3, line: 224, column: 7)
!200 = !DILocation(line: 215, column: 26, scope: !194)
!201 = !{!66, !66, i64 0}
!202 = !DILocation(line: 215, column: 44, scope: !194)
!203 = !DILocation(line: 217, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 216, column: 5)
!205 = !DILocation(line: 217, column: 18, scope: !204)
!206 = !DILocation(line: 218, column: 16, scope: !204)
!207 = !DILocation(line: 224, column: 25, scope: !199)
!208 = !DILocation(line: 224, column: 36, scope: !199)
!209 = !DILocation(line: 226, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !199, file: !3, line: 225, column: 5)
!211 = !DILocation(line: 224, column: 7, scope: !110)
!212 = !DILocation(line: 0, scope: !204)
!213 = !DILocation(line: 0, scope: !110)
!214 = !DILocation(line: 234, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !110, file: !3, line: 234, column: 7)
!216 = !DILocation(line: 234, column: 22, scope: !215)
!217 = !DILocation(line: 234, column: 7, scope: !110)
!218 = !DILocation(line: 236, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 235, column: 5)
!220 = !DILocation(line: 240, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !219, file: !3, line: 237, column: 2)
!222 = !DILocation(line: 240, column: 19, scope: !221)
!223 = !DILocation(line: 242, column: 23, scope: !221)
!224 = !DILocalVariable(name: "argv_element", arg: 1, scope: !225, file: !3, line: 150, type: !13)
!225 = distinct !DISubprogram(name: "is_option", scope: !3, file: !3, line: 150, type: !226, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{!18, !13, !18}
!228 = !{!224, !229}
!229 = !DILocalVariable(name: "only", arg: 2, scope: !225, file: !3, line: 150, type: !18)
!230 = !DILocation(line: 150, column: 18, scope: !225, inlinedAt: !231)
!231 = distinct !DILocation(line: 242, column: 12, scope: !221)
!232 = !DILocation(line: 150, column: 36, scope: !225, inlinedAt: !231)
!233 = !DILocation(line: 152, column: 25, scope: !225, inlinedAt: !231)
!234 = !DILocation(line: 153, column: 4, scope: !225, inlinedAt: !231)
!235 = !DILocation(line: 153, column: 8, scope: !225, inlinedAt: !231)
!236 = !DILocation(line: 153, column: 24, scope: !225, inlinedAt: !231)
!237 = !DILocation(line: 153, column: 32, scope: !225, inlinedAt: !231)
!238 = !DILocation(line: 153, column: 41, scope: !225, inlinedAt: !231)
!239 = !DILocation(line: 152, column: 3, scope: !225, inlinedAt: !231)
!240 = !DILocation(line: 242, column: 4, scope: !221)
!241 = !DILocation(line: 153, column: 60, scope: !225, inlinedAt: !231)
!242 = !DILocation(line: 244, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !221, file: !3, line: 243, column: 6)
!244 = !DILocation(line: 245, column: 19, scope: !243)
!245 = distinct !{!245, !240, !246}
!246 = !DILocation(line: 246, column: 6, scope: !221)
!247 = !DILocation(line: 250, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 248, column: 6)
!249 = distinct !DILexicalBlock(scope: !221, file: !3, line: 247, column: 8)
!250 = !DILocation(line: 251, column: 8, scope: !248)
!251 = !DILocation(line: 253, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 253, column: 13)
!253 = !DILocation(line: 253, column: 47, scope: !252)
!254 = !DILocation(line: 253, column: 13, scope: !249)
!255 = !DILocalVariable(name: "argv", arg: 1, scope: !256, file: !3, line: 141, type: !32)
!256 = distinct !DISubprogram(name: "permute", scope: !3, file: !3, line: 141, type: !257, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !32, !18, !18}
!259 = !{!255, !260, !261}
!260 = !DILocalVariable(name: "len1", arg: 2, scope: !256, file: !3, line: 141, type: !18)
!261 = !DILocalVariable(name: "len2", arg: 3, scope: !256, file: !3, line: 141, type: !18)
!262 = !DILocation(line: 141, column: 22, scope: !256, inlinedAt: !263)
!263 = distinct !DILocation(line: 256, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !3, line: 254, column: 6)
!265 = !DILocation(line: 141, column: 34, scope: !256, inlinedAt: !263)
!266 = !DILocation(line: 141, column: 44, scope: !256, inlinedAt: !263)
!267 = !DILocalVariable(name: "argv", arg: 1, scope: !268, file: !3, line: 126, type: !12)
!268 = distinct !DISubprogram(name: "reverse_argv_elements", scope: !3, file: !3, line: 126, type: !269, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !12, !18}
!271 = !{!267, !272, !273, !274}
!272 = !DILocalVariable(name: "num", arg: 2, scope: !268, file: !3, line: 126, type: !18)
!273 = !DILocalVariable(name: "i", scope: !268, file: !3, line: 128, type: !18)
!274 = !DILocalVariable(name: "tmp", scope: !268, file: !3, line: 129, type: !13)
!275 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !276)
!276 = distinct !DILocation(line: 143, column: 3, scope: !256, inlinedAt: !263)
!277 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !276)
!278 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !276)
!279 = !DILocation(line: 131, column: 17, scope: !280, inlinedAt: !276)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 131, column: 3)
!281 = distinct !DILexicalBlock(scope: !268, file: !3, line: 131, column: 3)
!282 = !DILocation(line: 131, column: 3, scope: !281, inlinedAt: !276)
!283 = !DILocation(line: 133, column: 13, scope: !284, inlinedAt: !276)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 132, column: 5)
!285 = !DILocation(line: 129, column: 9, scope: !268, inlinedAt: !276)
!286 = !DILocation(line: 134, column: 30, scope: !284, inlinedAt: !276)
!287 = !DILocation(line: 134, column: 17, scope: !284, inlinedAt: !276)
!288 = !DILocation(line: 134, column: 15, scope: !284, inlinedAt: !276)
!289 = !DILocation(line: 135, column: 25, scope: !284, inlinedAt: !276)
!290 = !DILocation(line: 131, column: 32, scope: !280, inlinedAt: !276)
!291 = distinct !{!291, !292, !293}
!292 = !DILocation(line: 131, column: 3, scope: !281)
!293 = !DILocation(line: 136, column: 5, scope: !281)
!294 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !276)
!295 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !296)
!296 = distinct !DILocation(line: 144, column: 3, scope: !256, inlinedAt: !263)
!297 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !296)
!298 = !DILocation(line: 131, column: 17, scope: !280, inlinedAt: !296)
!299 = !DILocation(line: 131, column: 3, scope: !281, inlinedAt: !296)
!300 = !DILocation(line: 144, column: 47, scope: !256, inlinedAt: !263)
!301 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !296)
!302 = !DILocation(line: 133, column: 13, scope: !284, inlinedAt: !296)
!303 = !DILocation(line: 129, column: 9, scope: !268, inlinedAt: !296)
!304 = !DILocation(line: 134, column: 30, scope: !284, inlinedAt: !296)
!305 = !DILocation(line: 134, column: 17, scope: !284, inlinedAt: !296)
!306 = !DILocation(line: 134, column: 15, scope: !284, inlinedAt: !296)
!307 = !DILocation(line: 135, column: 25, scope: !284, inlinedAt: !296)
!308 = !DILocation(line: 131, column: 32, scope: !280, inlinedAt: !296)
!309 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !296)
!310 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !311)
!311 = distinct !DILocation(line: 145, column: 3, scope: !256, inlinedAt: !263)
!312 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !311)
!313 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !311)
!314 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !311)
!315 = !DILocation(line: 146, column: 1, scope: !256, inlinedAt: !263)
!316 = !DILocation(line: 257, column: 36, scope: !264)
!317 = !DILocation(line: 257, column: 21, scope: !264)
!318 = !DILocation(line: 258, column: 8, scope: !264)
!319 = !DILocation(line: 262, column: 31, scope: !320)
!320 = distinct !DILexicalBlock(scope: !221, file: !3, line: 262, column: 8)
!321 = !DILocation(line: 262, column: 20, scope: !320)
!322 = !DILocation(line: 150, column: 18, scope: !225, inlinedAt: !323)
!323 = distinct !DILocation(line: 262, column: 9, scope: !320)
!324 = !DILocation(line: 150, column: 36, scope: !225, inlinedAt: !323)
!325 = !DILocation(line: 152, column: 25, scope: !225, inlinedAt: !323)
!326 = !DILocation(line: 153, column: 4, scope: !225, inlinedAt: !323)
!327 = !DILocation(line: 153, column: 8, scope: !225, inlinedAt: !323)
!328 = !DILocation(line: 153, column: 24, scope: !225, inlinedAt: !323)
!329 = !DILocation(line: 153, column: 32, scope: !225, inlinedAt: !323)
!330 = !DILocation(line: 153, column: 36, scope: !225, inlinedAt: !323)
!331 = !DILocation(line: 153, column: 41, scope: !225, inlinedAt: !323)
!332 = !DILocation(line: 152, column: 3, scope: !225, inlinedAt: !323)
!333 = !DILocation(line: 262, column: 8, scope: !221)
!334 = !DILocation(line: 153, column: 60, scope: !225, inlinedAt: !323)
!335 = !DILocation(line: 264, column: 40, scope: !336)
!336 = distinct !DILexicalBlock(scope: !320, file: !3, line: 263, column: 6)
!337 = !DILocation(line: 264, column: 21, scope: !336)
!338 = !DILocation(line: 265, column: 22, scope: !336)
!339 = !DILocation(line: 265, column: 29, scope: !336)
!340 = !DILocation(line: 265, column: 8, scope: !336)
!341 = !DILocation(line: 269, column: 31, scope: !342)
!342 = distinct !DILexicalBlock(scope: !221, file: !3, line: 269, column: 8)
!343 = !DILocation(line: 269, column: 20, scope: !342)
!344 = !DILocation(line: 150, column: 18, scope: !225, inlinedAt: !345)
!345 = distinct !DILocation(line: 269, column: 9, scope: !342)
!346 = !DILocation(line: 150, column: 36, scope: !225, inlinedAt: !345)
!347 = !DILocation(line: 152, column: 25, scope: !225, inlinedAt: !345)
!348 = !DILocation(line: 153, column: 4, scope: !225, inlinedAt: !345)
!349 = !DILocation(line: 153, column: 8, scope: !225, inlinedAt: !345)
!350 = !DILocation(line: 153, column: 24, scope: !225, inlinedAt: !345)
!351 = !DILocation(line: 153, column: 32, scope: !225, inlinedAt: !345)
!352 = !DILocation(line: 153, column: 36, scope: !225, inlinedAt: !345)
!353 = !DILocation(line: 153, column: 41, scope: !225, inlinedAt: !345)
!354 = !DILocation(line: 152, column: 3, scope: !225, inlinedAt: !345)
!355 = !DILocation(line: 269, column: 8, scope: !221)
!356 = !DILocation(line: 153, column: 60, scope: !225, inlinedAt: !345)
!357 = !DILocation(line: 275, column: 18, scope: !358)
!358 = distinct !DILexicalBlock(scope: !110, file: !3, line: 275, column: 7)
!359 = !DILocation(line: 275, column: 7, scope: !358)
!360 = !DILocation(line: 275, column: 26, scope: !358)
!361 = !DILocation(line: 275, column: 7, scope: !110)
!362 = !DILocation(line: 282, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !110, file: !3, line: 281, column: 7)
!364 = !DILocation(line: 282, column: 11, scope: !363)
!365 = !DILocation(line: 282, column: 48, scope: !363)
!366 = !DILocation(line: 283, column: 4, scope: !363)
!367 = !DILocation(line: 283, column: 8, scope: !363)
!368 = !DILocation(line: 283, column: 13, scope: !363)
!369 = !DILocation(line: 283, column: 27, scope: !363)
!370 = !DILocation(line: 283, column: 16, scope: !363)
!371 = !DILocation(line: 283, column: 38, scope: !363)
!372 = !DILocation(line: 283, column: 47, scope: !363)
!373 = !DILocation(line: 283, column: 56, scope: !363)
!374 = !DILocation(line: 283, column: 65, scope: !363)
!375 = !DILocation(line: 281, column: 7, scope: !110)
!376 = !DILocation(line: 286, column: 30, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 286, column: 11)
!378 = distinct !DILexicalBlock(scope: !363, file: !3, line: 284, column: 5)
!379 = !DILocation(line: 286, column: 19, scope: !377)
!380 = !DILocation(line: 286, column: 11, scope: !377)
!381 = !DILocation(line: 286, column: 48, scope: !377)
!382 = !DILocation(line: 286, column: 11, scope: !378)
!383 = !DILocation(line: 289, column: 57, scope: !378)
!384 = !DILocation(line: 287, column: 17, scope: !377)
!385 = !DILocation(line: 287, column: 2, scope: !377)
!386 = !DILocation(line: 289, column: 41, scope: !378)
!387 = !DILocation(line: 289, column: 30, scope: !378)
!388 = !DILocation(line: 289, column: 49, scope: !378)
!389 = !DILocation(line: 289, column: 22, scope: !378)
!390 = !DILocation(line: 290, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !378, file: !3, line: 290, column: 11)
!392 = !DILocation(line: 0, scope: !391)
!393 = !DILocation(line: 290, column: 11, scope: !378)
!394 = !DILocation(line: 293, column: 26, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 291, column: 2)
!396 = !DILocation(line: 293, column: 18, scope: !395)
!397 = !DILocation(line: 294, column: 30, scope: !395)
!398 = !DILocation(line: 294, column: 19, scope: !395)
!399 = !DILocation(line: 294, column: 38, scope: !395)
!400 = !DILocation(line: 295, column: 38, scope: !395)
!401 = !DILocation(line: 296, column: 2, scope: !395)
!402 = !DILocation(line: 298, column: 32, scope: !391)
!403 = !DILocation(line: 298, column: 30, scope: !391)
!404 = !DILocation(line: 298, column: 60, scope: !391)
!405 = !DILocation(line: 0, scope: !378)
!406 = !DILocation(line: 0, scope: !395)
!407 = !DILocation(line: 299, column: 45, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 299, column: 7)
!409 = distinct !DILexicalBlock(scope: !378, file: !3, line: 299, column: 7)
!410 = !{!411, !65, i64 0}
!411 = !{!"option", !65, i64 0, !71, i64 8, !65, i64 16, !71, i64 24}
!412 = !DILocation(line: 299, column: 50, scope: !408)
!413 = !DILocation(line: 299, column: 7, scope: !409)
!414 = !DILocation(line: 302, column: 36, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 301, column: 8)
!416 = distinct !DILexicalBlock(scope: !408, file: !3, line: 300, column: 2)
!417 = !DILocation(line: 302, column: 20, scope: !415)
!418 = !DILocation(line: 302, column: 9, scope: !415)
!419 = !DILocation(line: 302, column: 28, scope: !415)
!420 = !DILocation(line: 301, column: 8, scope: !415)
!421 = !DILocation(line: 303, column: 22, scope: !415)
!422 = !DILocation(line: 301, column: 8, scope: !416)
!423 = !DILocation(line: 306, column: 54, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 306, column: 12)
!425 = distinct !DILexicalBlock(scope: !415, file: !3, line: 304, column: 6)
!426 = !DILocation(line: 306, column: 27, scope: !424)
!427 = !DILocation(line: 306, column: 24, scope: !424)
!428 = !DILocation(line: 306, column: 12, scope: !425)
!429 = !DILocation(line: 314, column: 23, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 314, column: 9)
!431 = distinct !DILexicalBlock(scope: !424, file: !3, line: 313, column: 3)
!432 = !DILocation(line: 314, column: 9, scope: !431)
!433 = !DILocation(line: 319, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 319, column: 13)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 317, column: 7)
!436 = !DILocation(line: 319, column: 13, scope: !434)
!437 = !DILocation(line: 319, column: 13, scope: !435)
!438 = !DILocation(line: 321, column: 13, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !3, line: 320, column: 4)
!440 = !DILocation(line: 321, column: 22, scope: !439)
!441 = !{!442, !65, i64 24}
!442 = !{!"_reent", !71, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !71, i64 32, !66, i64 36, !71, i64 64, !65, i64 72, !71, i64 80, !65, i64 88, !65, i64 96, !71, i64 104, !65, i64 112, !65, i64 120, !71, i64 128, !65, i64 136, !66, i64 144, !65, i64 504, !443, i64 512, !65, i64 1304, !445, i64 1312, !66, i64 1336}
!443 = !{!"_atexit", !65, i64 0, !71, i64 8, !66, i64 16, !444, i64 272}
!444 = !{!"_on_exit_args", !66, i64 0, !66, i64 256, !71, i64 512, !71, i64 516}
!445 = !{!"_glue", !65, i64 0, !71, i64 8, !65, i64 16}
!446 = !DILocation(line: 321, column: 6, scope: !439)
!447 = !DILocation(line: 322, column: 27, scope: !439)
!448 = !DILocation(line: 322, column: 6, scope: !439)
!449 = !DILocation(line: 323, column: 24, scope: !439)
!450 = !DILocation(line: 323, column: 13, scope: !439)
!451 = !DILocation(line: 323, column: 33, scope: !439)
!452 = !DILocation(line: 323, column: 6, scope: !439)
!453 = !DILocation(line: 324, column: 45, scope: !439)
!454 = !DILocation(line: 324, column: 6, scope: !439)
!455 = !DILocation(line: 325, column: 13, scope: !439)
!456 = !DILocation(line: 325, column: 37, scope: !439)
!457 = !DILocation(line: 325, column: 43, scope: !439)
!458 = !DILocation(line: 325, column: 6, scope: !439)
!459 = !DILocation(line: 326, column: 25, scope: !439)
!460 = !DILocation(line: 326, column: 6, scope: !439)
!461 = !DILocation(line: 327, column: 32, scope: !439)
!462 = !DILocation(line: 327, column: 38, scope: !439)
!463 = !DILocation(line: 327, column: 6, scope: !439)
!464 = !DILocation(line: 328, column: 21, scope: !439)
!465 = !DILocation(line: 328, column: 6, scope: !439)
!466 = !DILocation(line: 329, column: 4, scope: !439)
!467 = !DILocation(line: 330, column: 23, scope: !435)
!468 = !DILocation(line: 330, column: 30, scope: !435)
!469 = !DILocation(line: 330, column: 9, scope: !435)
!470 = !DILocation(line: 299, column: 56, scope: !408)
!471 = distinct !{!471, !413, !472}
!472 = !DILocation(line: 334, column: 2, scope: !409)
!473 = !DILocation(line: 335, column: 25, scope: !474)
!474 = distinct !DILexicalBlock(scope: !378, file: !3, line: 335, column: 11)
!475 = !DILocation(line: 335, column: 11, scope: !378)
!476 = !DILocation(line: 336, column: 12, scope: !474)
!477 = !DILocation(line: 336, column: 36, scope: !474)
!478 = !{!411, !71, i64 8}
!479 = !DILocation(line: 340, column: 25, scope: !480)
!480 = distinct !DILexicalBlock(scope: !110, file: !3, line: 340, column: 7)
!481 = !DILocation(line: 340, column: 21, scope: !480)
!482 = !DILocation(line: 340, column: 38, scope: !480)
!483 = !DILocation(line: 342, column: 42, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 341, column: 5)
!485 = !DILocation(line: 342, column: 31, scope: !484)
!486 = !DILocation(line: 342, column: 56, scope: !484)
!487 = !DILocation(line: 342, column: 12, scope: !484)
!488 = !DILocation(line: 343, column: 14, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 343, column: 11)
!490 = !DILocation(line: 343, column: 11, scope: !484)
!491 = !DILocation(line: 346, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 346, column: 8)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 344, column: 2)
!494 = !DILocation(line: 346, column: 8, scope: !492)
!495 = !DILocation(line: 346, column: 8, scope: !493)
!496 = !DILocation(line: 348, column: 15, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !3, line: 347, column: 6)
!498 = !DILocation(line: 348, column: 24, scope: !497)
!499 = !DILocation(line: 348, column: 8, scope: !497)
!500 = !DILocation(line: 349, column: 41, scope: !497)
!501 = !DILocation(line: 349, column: 8, scope: !497)
!502 = !DILocation(line: 350, column: 26, scope: !497)
!503 = !DILocation(line: 350, column: 15, scope: !497)
!504 = !DILocation(line: 350, column: 40, scope: !497)
!505 = !DILocation(line: 350, column: 51, scope: !497)
!506 = !DILocation(line: 350, column: 8, scope: !497)
!507 = !DILocation(line: 351, column: 22, scope: !497)
!508 = !DILocation(line: 351, column: 8, scope: !497)
!509 = !DILocation(line: 352, column: 6, scope: !497)
!510 = !DILocation(line: 353, column: 18, scope: !493)
!511 = !DILocation(line: 354, column: 19, scope: !512)
!512 = distinct !DILexicalBlock(scope: !493, file: !3, line: 354, column: 8)
!513 = !DILocation(line: 354, column: 8, scope: !512)
!514 = !DILocation(line: 354, column: 43, scope: !512)
!515 = !DILocation(line: 354, column: 8, scope: !493)
!516 = !DILocation(line: 356, column: 20, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !3, line: 355, column: 6)
!518 = !DILocation(line: 357, column: 23, scope: !517)
!519 = !DILocation(line: 358, column: 6, scope: !517)
!520 = !DILocation(line: 359, column: 18, scope: !493)
!521 = !DILocation(line: 359, column: 25, scope: !493)
!522 = !DILocation(line: 359, column: 4, scope: !493)
!523 = !DILocation(line: 361, column: 19, scope: !484)
!524 = !DILocation(line: 361, column: 25, scope: !484)
!525 = !DILocation(line: 361, column: 18, scope: !484)
!526 = !DILocation(line: 362, column: 8, scope: !484)
!527 = !DILocation(line: 362, column: 14, scope: !484)
!528 = !DILocation(line: 362, column: 7, scope: !484)
!529 = !DILocation(line: 363, column: 33, scope: !484)
!530 = !DILocation(line: 363, column: 22, scope: !484)
!531 = !DILocation(line: 363, column: 49, scope: !484)
!532 = !DILocation(line: 363, column: 41, scope: !484)
!533 = !DILocation(line: 363, column: 58, scope: !484)
!534 = !DILocation(line: 364, column: 22, scope: !484)
!535 = !DILocation(line: 364, column: 13, scope: !484)
!536 = !DILocation(line: 364, column: 20, scope: !484)
!537 = !DILocation(line: 365, column: 5, scope: !484)
!538 = !DILocation(line: 0, scope: !474)
!539 = !DILocation(line: 369, column: 3, scope: !110)
!540 = !DILocation(line: 372, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 372, column: 11)
!542 = distinct !DILexicalBlock(scope: !110, file: !3, line: 370, column: 5)
!543 = !DILocation(line: 372, column: 25, scope: !541)
!544 = !DILocation(line: 373, column: 14, scope: !541)
!545 = !DILocation(line: 372, column: 11, scope: !542)
!546 = !DILocation(line: 374, column: 23, scope: !542)
!547 = !DILocation(line: 374, column: 37, scope: !542)
!548 = !DILocation(line: 374, column: 22, scope: !542)
!549 = !DILocation(line: 374, column: 13, scope: !542)
!550 = !DILocation(line: 374, column: 20, scope: !542)
!551 = !DILocation(line: 375, column: 22, scope: !542)
!552 = !DILocation(line: 376, column: 7, scope: !542)
!553 = !DILocation(line: 378, column: 11, scope: !554)
!554 = distinct !DILexicalBlock(scope: !542, file: !3, line: 378, column: 11)
!555 = !DILocation(line: 378, column: 25, scope: !554)
!556 = !DILocation(line: 379, column: 14, scope: !554)
!557 = !DILocation(line: 378, column: 11, scope: !542)
!558 = !DILocation(line: 380, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !542, file: !3, line: 380, column: 11)
!560 = !DILocation(line: 380, column: 25, scope: !559)
!561 = !DILocation(line: 380, column: 11, scope: !542)
!562 = !DILocation(line: 382, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !3, line: 381, column: 2)
!564 = !DILocation(line: 382, column: 17, scope: !563)
!565 = !DILocation(line: 383, column: 19, scope: !563)
!566 = !DILocation(line: 384, column: 2, scope: !563)
!567 = !DILocation(line: 385, column: 22, scope: !568)
!568 = distinct !DILexicalBlock(scope: !559, file: !3, line: 385, column: 16)
!569 = !DILocation(line: 385, column: 29, scope: !568)
!570 = !DILocation(line: 385, column: 33, scope: !568)
!571 = !DILocation(line: 385, column: 16, scope: !559)
!572 = !DILocation(line: 387, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 387, column: 8)
!574 = distinct !DILexicalBlock(scope: !568, file: !3, line: 386, column: 2)
!575 = !DILocation(line: 387, column: 8, scope: !573)
!576 = !DILocation(line: 387, column: 8, scope: !574)
!577 = !DILocation(line: 389, column: 15, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !3, line: 388, column: 6)
!579 = !DILocation(line: 389, column: 24, scope: !578)
!580 = !DILocation(line: 389, column: 8, scope: !578)
!581 = !DILocation(line: 390, column: 52, scope: !578)
!582 = !DILocation(line: 390, column: 8, scope: !578)
!583 = !DILocation(line: 391, column: 26, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !3, line: 391, column: 12)
!585 = !DILocation(line: 391, column: 12, scope: !578)
!586 = !DILocation(line: 393, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 392, column: 3)
!588 = !DILocation(line: 393, column: 5, scope: !587)
!589 = !DILocation(line: 394, column: 12, scope: !587)
!590 = !DILocation(line: 394, column: 36, scope: !587)
!591 = !DILocation(line: 394, column: 42, scope: !587)
!592 = !DILocation(line: 394, column: 5, scope: !587)
!593 = !DILocation(line: 395, column: 20, scope: !587)
!594 = !DILocation(line: 396, column: 3, scope: !587)
!595 = !DILocation(line: 399, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !584, file: !3, line: 398, column: 3)
!597 = !DILocation(line: 399, column: 17, scope: !596)
!598 = !DILocation(line: 399, column: 5, scope: !596)
!599 = !DILocation(line: 400, column: 20, scope: !596)
!600 = !DILocation(line: 400, column: 11, scope: !596)
!601 = !DILocation(line: 400, column: 18, scope: !596)
!602 = !DILocation(line: 402, column: 22, scope: !578)
!603 = !DILocation(line: 402, column: 8, scope: !578)
!604 = !DILocation(line: 404, column: 16, scope: !574)
!605 = !DILocation(line: 403, column: 6, scope: !578)
!606 = !DILocation(line: 405, column: 11, scope: !574)
!607 = !DILocation(line: 405, column: 4, scope: !574)
!608 = !DILocation(line: 409, column: 19, scope: !609)
!609 = distinct !DILexicalBlock(scope: !568, file: !3, line: 408, column: 2)
!610 = !DILocation(line: 409, column: 17, scope: !609)
!611 = !DILocation(line: 411, column: 19, scope: !609)
!612 = !DILocation(line: 416, column: 11, scope: !542)
!613 = !DILocation(line: 418, column: 18, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 417, column: 2)
!615 = distinct !DILexicalBlock(scope: !542, file: !3, line: 416, column: 11)
!616 = !DILocation(line: 419, column: 19, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !3, line: 419, column: 8)
!618 = !DILocation(line: 419, column: 8, scope: !617)
!619 = !DILocation(line: 419, column: 43, scope: !617)
!620 = !DILocation(line: 419, column: 8, scope: !614)
!621 = !DILocation(line: 0, scope: !615)
!622 = !DILocation(line: 424, column: 13, scope: !542)
!623 = !DILocation(line: 424, column: 20, scope: !542)
!624 = !DILocation(line: 425, column: 7, scope: !542)
!625 = !DILocation(line: 0, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 434, column: 12)
!627 = distinct !DILexicalBlock(scope: !110, file: !3, line: 429, column: 7)
!628 = !DILocation(line: 429, column: 16, scope: !627)
!629 = !DILocation(line: 429, column: 27, scope: !627)
!630 = !DILocation(line: 429, column: 45, scope: !627)
!631 = !DILocation(line: 429, column: 65, scope: !627)
!632 = !DILocation(line: 429, column: 50, scope: !627)
!633 = !DILocation(line: 431, column: 21, scope: !634)
!634 = distinct !DILexicalBlock(scope: !627, file: !3, line: 430, column: 5)
!635 = !DILocation(line: 431, column: 52, scope: !634)
!636 = !DILocation(line: 141, column: 22, scope: !256, inlinedAt: !637)
!637 = distinct !DILocation(line: 431, column: 7, scope: !634)
!638 = !DILocation(line: 141, column: 34, scope: !256, inlinedAt: !637)
!639 = !DILocation(line: 141, column: 44, scope: !256, inlinedAt: !637)
!640 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !641)
!641 = distinct !DILocation(line: 143, column: 3, scope: !256, inlinedAt: !637)
!642 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !641)
!643 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !641)
!644 = !DILocation(line: 131, column: 17, scope: !280, inlinedAt: !641)
!645 = !DILocation(line: 131, column: 3, scope: !281, inlinedAt: !641)
!646 = !DILocation(line: 133, column: 13, scope: !284, inlinedAt: !641)
!647 = !DILocation(line: 129, column: 9, scope: !268, inlinedAt: !641)
!648 = !DILocation(line: 134, column: 30, scope: !284, inlinedAt: !641)
!649 = !DILocation(line: 134, column: 17, scope: !284, inlinedAt: !641)
!650 = !DILocation(line: 134, column: 15, scope: !284, inlinedAt: !641)
!651 = !DILocation(line: 135, column: 25, scope: !284, inlinedAt: !641)
!652 = !DILocation(line: 131, column: 32, scope: !280, inlinedAt: !641)
!653 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !641)
!654 = !DILocation(line: 144, column: 47, scope: !256, inlinedAt: !637)
!655 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !656)
!656 = distinct !DILocation(line: 144, column: 3, scope: !256, inlinedAt: !637)
!657 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !656)
!658 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !656)
!659 = !DILocation(line: 131, column: 17, scope: !280, inlinedAt: !656)
!660 = !DILocation(line: 131, column: 3, scope: !281, inlinedAt: !656)
!661 = !DILocation(line: 133, column: 13, scope: !284, inlinedAt: !656)
!662 = !DILocation(line: 129, column: 9, scope: !268, inlinedAt: !656)
!663 = !DILocation(line: 134, column: 30, scope: !284, inlinedAt: !656)
!664 = !DILocation(line: 134, column: 17, scope: !284, inlinedAt: !656)
!665 = !DILocation(line: 134, column: 15, scope: !284, inlinedAt: !656)
!666 = !DILocation(line: 135, column: 25, scope: !284, inlinedAt: !656)
!667 = !DILocation(line: 131, column: 32, scope: !280, inlinedAt: !656)
!668 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !656)
!669 = !DILocation(line: 126, column: 31, scope: !268, inlinedAt: !670)
!670 = distinct !DILocation(line: 145, column: 3, scope: !256, inlinedAt: !637)
!671 = !DILocation(line: 126, column: 41, scope: !268, inlinedAt: !670)
!672 = !DILocation(line: 128, column: 7, scope: !268, inlinedAt: !670)
!673 = !DILocation(line: 131, column: 17, scope: !280, inlinedAt: !670)
!674 = !DILocation(line: 131, column: 3, scope: !281, inlinedAt: !670)
!675 = !DILocation(line: 133, column: 13, scope: !284, inlinedAt: !670)
!676 = !DILocation(line: 129, column: 9, scope: !268, inlinedAt: !670)
!677 = !DILocation(line: 134, column: 17, scope: !284, inlinedAt: !670)
!678 = !DILocation(line: 134, column: 15, scope: !284, inlinedAt: !670)
!679 = !DILocation(line: 135, column: 25, scope: !284, inlinedAt: !670)
!680 = !DILocation(line: 137, column: 1, scope: !268, inlinedAt: !670)
!681 = !DILocation(line: 146, column: 1, scope: !256, inlinedAt: !637)
!682 = !DILocation(line: 432, column: 22, scope: !634)
!683 = !DILocation(line: 433, column: 5, scope: !634)
!684 = !DILocation(line: 434, column: 27, scope: !626)
!685 = !DILocation(line: 434, column: 12, scope: !627)
!686 = !DILocation(line: 435, column: 26, scope: !626)
!687 = !DILocation(line: 435, column: 33, scope: !626)
!688 = !DILocation(line: 435, column: 37, scope: !626)
!689 = !DILocation(line: 435, column: 5, scope: !626)
!690 = !DILocation(line: 0, scope: !634)
!691 = !DILocation(line: 438, column: 21, scope: !692)
!692 = distinct !DILexicalBlock(scope: !110, file: !3, line: 438, column: 7)
!693 = !DILocation(line: 438, column: 7, scope: !110)
!694 = !DILocation(line: 440, column: 19, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 440, column: 11)
!696 = distinct !DILexicalBlock(scope: !692, file: !3, line: 439, column: 5)
!697 = !DILocation(line: 440, column: 11, scope: !696)
!698 = !DILocation(line: 441, column: 11, scope: !695)
!699 = !DILocation(line: 441, column: 2, scope: !695)
!700 = !DILocation(line: 442, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !3, line: 442, column: 11)
!702 = !DILocation(line: 442, column: 35, scope: !701)
!703 = !{!411, !65, i64 16}
!704 = !DILocation(line: 442, column: 40, scope: !701)
!705 = !DILocation(line: 0, scope: !701)
!706 = !{!411, !71, i64 24}
!707 = !DILocation(line: 442, column: 11, scope: !696)
!708 = !DILocation(line: 444, column: 36, scope: !709)
!709 = distinct !DILexicalBlock(scope: !701, file: !3, line: 443, column: 2)
!710 = !DILocation(line: 445, column: 4, scope: !709)
!711 = !DILocation(line: 451, column: 18, scope: !692)
!712 = !DILocation(line: 451, column: 5, scope: !692)
!713 = !DILocation(line: 0, scope: !342)
!714 = !DILocation(line: 452, column: 1, scope: !110)
!715 = distinct !DISubprogram(name: "getopt_long", scope: !3, file: !3, line: 467, type: !716, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!18, !18, !32, !34, !113, !120}
!718 = !{!719, !720, !721, !722, !723, !724, !725}
!719 = !DILocalVariable(name: "argc", arg: 1, scope: !715, file: !3, line: 467, type: !18)
!720 = !DILocalVariable(name: "argv", arg: 2, scope: !715, file: !3, line: 467, type: !32)
!721 = !DILocalVariable(name: "shortopts", arg: 3, scope: !715, file: !3, line: 467, type: !34)
!722 = !DILocalVariable(name: "longopts", arg: 4, scope: !715, file: !3, line: 468, type: !113)
!723 = !DILocalVariable(name: "longind", arg: 5, scope: !715, file: !3, line: 468, type: !120)
!724 = !DILocalVariable(name: "data", scope: !715, file: !3, line: 470, type: !41)
!725 = !DILocalVariable(name: "r", scope: !715, file: !3, line: 471, type: !18)
!726 = !DILocation(line: 467, column: 18, scope: !715)
!727 = !DILocation(line: 467, column: 36, scope: !715)
!728 = !DILocation(line: 467, column: 56, scope: !715)
!729 = !DILocation(line: 468, column: 28, scope: !715)
!730 = !DILocation(line: 468, column: 43, scope: !715)
!731 = !DILocation(line: 470, column: 3, scope: !715)
!732 = !DILocation(line: 470, column: 22, scope: !715)
!733 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !734)
!734 = distinct !DILocation(line: 473, column: 3, scope: !715)
!735 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !734)
!736 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !734)
!737 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !734)
!738 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !734)
!739 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !734)
!740 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !734)
!741 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !734)
!742 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !734)
!743 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !734)
!744 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !734)
!745 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !734)
!746 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !734)
!747 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !734)
!748 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !734)
!749 = !DILocation(line: 166, column: 1, scope: !56, inlinedAt: !734)
!750 = !DILocation(line: 474, column: 7, scope: !715)
!751 = !DILocation(line: 471, column: 7, scope: !715)
!752 = !DILocation(line: 171, column: 36, scope: !93, inlinedAt: !753)
!753 = distinct !DILocation(line: 475, column: 3, scope: !715)
!754 = !DILocation(line: 173, column: 18, scope: !93, inlinedAt: !753)
!755 = !DILocation(line: 173, column: 10, scope: !93, inlinedAt: !753)
!756 = !DILocation(line: 174, column: 18, scope: !93, inlinedAt: !753)
!757 = !DILocation(line: 174, column: 10, scope: !93, inlinedAt: !753)
!758 = !DILocation(line: 175, column: 18, scope: !93, inlinedAt: !753)
!759 = !DILocation(line: 175, column: 10, scope: !93, inlinedAt: !753)
!760 = !DILocation(line: 176, column: 18, scope: !93, inlinedAt: !753)
!761 = !DILocation(line: 176, column: 10, scope: !93, inlinedAt: !753)
!762 = !DILocation(line: 177, column: 20, scope: !93, inlinedAt: !753)
!763 = !DILocation(line: 177, column: 12, scope: !93, inlinedAt: !753)
!764 = !DILocation(line: 178, column: 1, scope: !93, inlinedAt: !753)
!765 = !DILocation(line: 477, column: 1, scope: !715)
!766 = !DILocation(line: 476, column: 3, scope: !715)
!767 = distinct !DISubprogram(name: "getopt_long_only", scope: !3, file: !3, line: 480, type: !716, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775}
!769 = !DILocalVariable(name: "argc", arg: 1, scope: !767, file: !3, line: 480, type: !18)
!770 = !DILocalVariable(name: "argv", arg: 2, scope: !767, file: !3, line: 480, type: !32)
!771 = !DILocalVariable(name: "shortopts", arg: 3, scope: !767, file: !3, line: 480, type: !34)
!772 = !DILocalVariable(name: "longopts", arg: 4, scope: !767, file: !3, line: 481, type: !113)
!773 = !DILocalVariable(name: "longind", arg: 5, scope: !767, file: !3, line: 481, type: !120)
!774 = !DILocalVariable(name: "data", scope: !767, file: !3, line: 483, type: !41)
!775 = !DILocalVariable(name: "r", scope: !767, file: !3, line: 484, type: !18)
!776 = !DILocation(line: 480, column: 23, scope: !767)
!777 = !DILocation(line: 480, column: 41, scope: !767)
!778 = !DILocation(line: 480, column: 61, scope: !767)
!779 = !DILocation(line: 481, column: 26, scope: !767)
!780 = !DILocation(line: 481, column: 41, scope: !767)
!781 = !DILocation(line: 483, column: 3, scope: !767)
!782 = !DILocation(line: 483, column: 22, scope: !767)
!783 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !784)
!784 = distinct !DILocation(line: 486, column: 3, scope: !767)
!785 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !784)
!786 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !784)
!787 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !784)
!788 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !784)
!789 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !784)
!790 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !784)
!791 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !784)
!792 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !784)
!793 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !784)
!794 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !784)
!795 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !784)
!796 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !784)
!797 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !784)
!798 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !784)
!799 = !DILocation(line: 166, column: 1, scope: !56, inlinedAt: !784)
!800 = !DILocation(line: 487, column: 7, scope: !767)
!801 = !DILocation(line: 484, column: 7, scope: !767)
!802 = !DILocation(line: 171, column: 36, scope: !93, inlinedAt: !803)
!803 = distinct !DILocation(line: 488, column: 3, scope: !767)
!804 = !DILocation(line: 173, column: 18, scope: !93, inlinedAt: !803)
!805 = !DILocation(line: 173, column: 10, scope: !93, inlinedAt: !803)
!806 = !DILocation(line: 174, column: 18, scope: !93, inlinedAt: !803)
!807 = !DILocation(line: 174, column: 10, scope: !93, inlinedAt: !803)
!808 = !DILocation(line: 175, column: 18, scope: !93, inlinedAt: !803)
!809 = !DILocation(line: 175, column: 10, scope: !93, inlinedAt: !803)
!810 = !DILocation(line: 176, column: 18, scope: !93, inlinedAt: !803)
!811 = !DILocation(line: 176, column: 10, scope: !93, inlinedAt: !803)
!812 = !DILocation(line: 177, column: 20, scope: !93, inlinedAt: !803)
!813 = !DILocation(line: 177, column: 12, scope: !93, inlinedAt: !803)
!814 = !DILocation(line: 178, column: 1, scope: !93, inlinedAt: !803)
!815 = !DILocation(line: 490, column: 1, scope: !767)
!816 = !DILocation(line: 489, column: 3, scope: !767)
!817 = distinct !DISubprogram(name: "__getopt_r", scope: !3, file: !3, line: 493, type: !818, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!18, !18, !32, !34, !59}
!820 = !{!821, !822, !823, !824}
!821 = !DILocalVariable(name: "argc", arg: 1, scope: !817, file: !3, line: 493, type: !18)
!822 = !DILocalVariable(name: "argv", arg: 2, scope: !817, file: !3, line: 493, type: !32)
!823 = !DILocalVariable(name: "optstring", arg: 3, scope: !817, file: !3, line: 493, type: !34)
!824 = !DILocalVariable(name: "data", arg: 4, scope: !817, file: !3, line: 494, type: !59)
!825 = !DILocation(line: 493, column: 17, scope: !817)
!826 = !DILocation(line: 493, column: 35, scope: !817)
!827 = !DILocation(line: 493, column: 55, scope: !817)
!828 = !DILocation(line: 494, column: 26, scope: !817)
!829 = !DILocation(line: 496, column: 10, scope: !817)
!830 = !DILocation(line: 496, column: 3, scope: !817)
!831 = distinct !DISubprogram(name: "__getopt_long_r", scope: !3, file: !3, line: 500, type: !832, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!18, !18, !32, !34, !113, !120, !59}
!834 = !{!835, !836, !837, !838, !839, !840}
!835 = !DILocalVariable(name: "argc", arg: 1, scope: !831, file: !3, line: 500, type: !18)
!836 = !DILocalVariable(name: "argv", arg: 2, scope: !831, file: !3, line: 500, type: !32)
!837 = !DILocalVariable(name: "shortopts", arg: 3, scope: !831, file: !3, line: 500, type: !34)
!838 = !DILocalVariable(name: "longopts", arg: 4, scope: !831, file: !3, line: 501, type: !113)
!839 = !DILocalVariable(name: "longind", arg: 5, scope: !831, file: !3, line: 501, type: !120)
!840 = !DILocalVariable(name: "data", arg: 6, scope: !831, file: !3, line: 502, type: !59)
!841 = !DILocation(line: 500, column: 22, scope: !831)
!842 = !DILocation(line: 500, column: 40, scope: !831)
!843 = !DILocation(line: 500, column: 60, scope: !831)
!844 = !DILocation(line: 501, column: 25, scope: !831)
!845 = !DILocation(line: 501, column: 40, scope: !831)
!846 = !DILocation(line: 502, column: 24, scope: !831)
!847 = !DILocation(line: 504, column: 10, scope: !831)
!848 = !DILocation(line: 504, column: 3, scope: !831)
!849 = distinct !DISubprogram(name: "__getopt_long_only_r", scope: !3, file: !3, line: 508, type: !832, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !850)
!850 = !{!851, !852, !853, !854, !855, !856}
!851 = !DILocalVariable(name: "argc", arg: 1, scope: !849, file: !3, line: 508, type: !18)
!852 = !DILocalVariable(name: "argv", arg: 2, scope: !849, file: !3, line: 508, type: !32)
!853 = !DILocalVariable(name: "shortopts", arg: 3, scope: !849, file: !3, line: 508, type: !34)
!854 = !DILocalVariable(name: "longopts", arg: 4, scope: !849, file: !3, line: 509, type: !113)
!855 = !DILocalVariable(name: "longind", arg: 5, scope: !849, file: !3, line: 509, type: !120)
!856 = !DILocalVariable(name: "data", arg: 6, scope: !849, file: !3, line: 510, type: !59)
!857 = !DILocation(line: 508, column: 27, scope: !849)
!858 = !DILocation(line: 508, column: 45, scope: !849)
!859 = !DILocation(line: 508, column: 65, scope: !849)
!860 = !DILocation(line: 509, column: 30, scope: !849)
!861 = !DILocation(line: 509, column: 45, scope: !849)
!862 = !DILocation(line: 510, column: 29, scope: !849)
!863 = !DILocation(line: 512, column: 10, scope: !849)
!864 = !DILocation(line: 512, column: 3, scope: !849)
