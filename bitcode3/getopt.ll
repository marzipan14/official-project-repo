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
  %16 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* null, i32* null, i32 0, %struct.getopt_data* nonnull %4) #5, !dbg !89
  %17 = load i64, i64* %7, align 8, !dbg !96, !tbaa !69
  store i64 %17, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !97, !tbaa !64
  %18 = load i32, i32* %9, align 8, !dbg !98, !tbaa !76
  store i32 %18, i32* @optind, align 4, !dbg !99, !tbaa !73
  %19 = load i32, i32* %11, align 4, !dbg !100, !tbaa !80
  store i32 %19, i32* @opterr, align 4, !dbg !101, !tbaa !73
  %20 = load i32, i32* %13, align 8, !dbg !102, !tbaa !84
  store i32 %20, i32* @optopt, align 4, !dbg !103, !tbaa !73
  %21 = load i32, i32* %15, align 4, !dbg !104, !tbaa !88
  store i32 %21, i32* @optwhere, align 4, !dbg !105, !tbaa !73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !106
  ret i32 %16, !dbg !107
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @getopt_internal(i32, i8**, i8*, %struct.option* readonly, i32*, i32, %struct.getopt_data*) unnamed_addr #0 !dbg !108 {
  %8 = icmp eq i32 %0, 0, !dbg !163
  %9 = icmp eq i8** %1, null, !dbg !165
  %10 = or i1 %8, %9, !dbg !166
  br i1 %10, label %599, label %11, !dbg !166

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i8* %2, null, !dbg !167
  %13 = icmp eq %struct.option* %3, null, !dbg !168
  %14 = and i1 %12, %13, !dbg !169
  br i1 %14, label %599, label %15, !dbg !169

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !170
  %17 = load i32, i32* %16, align 8, !dbg !170, !tbaa !76
  %18 = icmp slt i32 %17, %0, !dbg !171
  br i1 %18, label %19, label %599, !dbg !172

; <label>:19:                                     ; preds = %15
  %20 = sext i32 %17 to i64, !dbg !173
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !173
  %22 = load i8*, i8** %21, align 8, !dbg !173, !tbaa !64
  %23 = icmp eq i8* %22, null, !dbg !174
  br i1 %23, label %599, label %24, !dbg !175

; <label>:24:                                     ; preds = %19
  %25 = tail call i32 @strcmp(i8* nonnull %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !176
  %26 = icmp eq i32 %25, 0, !dbg !178
  %27 = load i32, i32* %16, align 8, !dbg !179, !tbaa !76
  br i1 %26, label %28, label %30, !dbg !181

; <label>:28:                                     ; preds = %24
  %29 = add nsw i32 %27, 1, !dbg !182
  store i32 %29, i32* %16, align 8, !dbg !182, !tbaa !76
  br label %599, !dbg !184

; <label>:30:                                     ; preds = %24
  %31 = icmp eq i32 %27, 0, !dbg !185
  br i1 %31, label %32, label %34, !dbg !186

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !187
  store i32 1, i32* %33, align 4, !dbg !188, !tbaa !88
  store i32 1, i32* %16, align 8, !dbg !189, !tbaa !76
  br label %34, !dbg !190

; <label>:34:                                     ; preds = %32, %30
  br i1 %12, label %35, label %39, !dbg !191

; <label>:35:                                     ; preds = %34
  %36 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !193
  %37 = icmp eq i8* %36, null, !dbg !194
  %38 = select i1 %37, i32 0, i32 2, !dbg !195
  br label %57, !dbg !196

; <label>:39:                                     ; preds = %34
  %40 = load i8, i8* %2, align 1, !dbg !198, !tbaa !199
  switch i8 %40, label %45 [
    i8 45, label %41
    i8 43, label %41
  ], !dbg !200

; <label>:41:                                     ; preds = %39, %39
  %42 = icmp eq i8 %40, 45, !dbg !201
  %43 = select i1 %42, i32 1, i32 2, !dbg !203
  %44 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !204
  br label %49, !dbg !196

; <label>:45:                                     ; preds = %39
  %46 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !193
  %47 = icmp eq i8* %46, null, !dbg !194
  %48 = select i1 %47, i32 0, i32 2, !dbg !195
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = phi i32 [ %43, %41 ], [ %48, %45 ]
  %51 = phi i8* [ %44, %41 ], [ %2, %45 ]
  %52 = load i8, i8* %51, align 1, !dbg !205, !tbaa !199
  %53 = icmp eq i8 %52, 58, !dbg !206
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !207
  %55 = select i1 %53, i8* %54, i8* %51, !dbg !209
  %56 = zext i1 %53 to i32, !dbg !209
  br label %57, !dbg !209

; <label>:57:                                     ; preds = %35, %49
  %58 = phi i32 [ %50, %49 ], [ %38, %35 ]
  %59 = phi i8* [ %55, %49 ], [ null, %35 ], !dbg !210
  %60 = phi i32 [ %56, %49 ], [ 0, %35 ], !dbg !211
  %61 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !212
  %62 = load i32, i32* %61, align 4, !dbg !212, !tbaa !88
  %63 = icmp eq i32 %62, 1, !dbg !214
  br i1 %63, label %64, label %165, !dbg !215

; <label>:64:                                     ; preds = %57
  %65 = trunc i32 %58 to i2, !dbg !216
  switch i2 %65, label %66 [
    i2 -2, label %152
    i2 1, label %134
  ], !dbg !216

; <label>:66:                                     ; preds = %64
  %67 = load i32, i32* %16, align 8, !dbg !218, !tbaa !76
  %68 = sext i32 %67 to i64, !dbg !220
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !221
  %70 = load i8*, i8** %69, align 8, !dbg !221, !tbaa !64
  %71 = icmp eq i8* %70, null, !dbg !231
  br i1 %71, label %90, label %72, !dbg !232

; <label>:72:                                     ; preds = %66
  %73 = icmp ne i32 %5, 0
  br label %74, !dbg !232

; <label>:74:                                     ; preds = %72, %83
  %75 = phi i64 [ %68, %72 ], [ %84, %83 ]
  %76 = phi i8* [ %70, %72 ], [ %88, %83 ]
  %77 = phi i32 [ 0, %72 ], [ %86, %83 ]
  %78 = load i8, i8* %76, align 1, !dbg !233, !tbaa !199
  %79 = icmp eq i8 %78, 45, !dbg !234
  %80 = icmp eq i8 %78, 43, !dbg !235
  %81 = and i1 %73, %80, !dbg !236
  %82 = or i1 %79, %81, !dbg !237
  br i1 %82, label %91, label %83, !dbg !237

; <label>:83:                                     ; preds = %74
  %84 = add i64 %75, 1, !dbg !238
  %85 = trunc i64 %84 to i32, !dbg !238
  store i32 %85, i32* %16, align 8, !dbg !238, !tbaa !76
  %86 = add nuw nsw i32 %77, 1, !dbg !240
  %87 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !221
  %88 = load i8*, i8** %87, align 8, !dbg !221, !tbaa !64
  %89 = icmp eq i8* %88, null, !dbg !231
  br i1 %89, label %90, label %74, !dbg !232, !llvm.loop !241

; <label>:90:                                     ; preds = %83, %66
  store i32 %67, i32* %16, align 8, !dbg !244, !tbaa !76
  br label %599, !dbg !247

; <label>:91:                                     ; preds = %74
  %92 = tail call i32 @strcmp(i8* nonnull %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !248
  %93 = icmp eq i32 %92, 0, !dbg !250
  br i1 %93, label %94, label %165, !dbg !251

; <label>:94:                                     ; preds = %91
  %95 = icmp ugt i32 %77, 1, !dbg !276
  br i1 %95, label %96, label %113, !dbg !279

; <label>:96:                                     ; preds = %94
  %97 = lshr i32 %77, 1
  %98 = zext i32 %97 to i64, !dbg !280
  br label %99, !dbg !280

; <label>:99:                                     ; preds = %99, %96
  %100 = phi i64 [ 0, %96 ], [ %111, %99 ]
  %101 = getelementptr inbounds i8*, i8** %69, i64 %100, !dbg !280
  %102 = bitcast i8** %101 to i64*, !dbg !280
  %103 = load i64, i64* %102, align 8, !dbg !280, !tbaa !64
  %104 = trunc i64 %100 to i32, !dbg !283
  %105 = xor i32 %104, -1, !dbg !283
  %106 = add i32 %77, %105, !dbg !283
  %107 = sext i32 %106 to i64, !dbg !284
  %108 = getelementptr inbounds i8*, i8** %69, i64 %107, !dbg !284
  %109 = bitcast i8** %108 to i64*, !dbg !284
  %110 = load i64, i64* %109, align 8, !dbg !284, !tbaa !64
  store i64 %110, i64* %102, align 8, !dbg !285, !tbaa !64
  store i64 %103, i64* %109, align 8, !dbg !286, !tbaa !64
  %111 = add nuw nsw i64 %100, 1, !dbg !287
  %112 = icmp ult i64 %111, %98, !dbg !276
  br i1 %112, label %99, label %113, !dbg !279, !llvm.loop !288

; <label>:113:                                    ; preds = %99, %94
  %114 = icmp eq i32 %77, 0, !dbg !294
  br i1 %114, label %132, label %115, !dbg !295

; <label>:115:                                    ; preds = %113
  %116 = add nuw nsw i32 %77, 1, !dbg !296
  %117 = lshr i32 %116, 1
  %118 = zext i32 %117 to i64, !dbg !298
  br label %119, !dbg !298

; <label>:119:                                    ; preds = %119, %115
  %120 = phi i64 [ 0, %115 ], [ %130, %119 ]
  %121 = getelementptr inbounds i8*, i8** %69, i64 %120, !dbg !298
  %122 = bitcast i8** %121 to i64*, !dbg !298
  %123 = load i64, i64* %122, align 8, !dbg !298, !tbaa !64
  %124 = trunc i64 %120 to i32, !dbg !300
  %125 = sub i32 %77, %124, !dbg !300
  %126 = sext i32 %125 to i64, !dbg !301
  %127 = getelementptr inbounds i8*, i8** %69, i64 %126, !dbg !301
  %128 = bitcast i8** %127 to i64*, !dbg !301
  %129 = load i64, i64* %128, align 8, !dbg !301, !tbaa !64
  store i64 %129, i64* %122, align 8, !dbg !302, !tbaa !64
  store i64 %123, i64* %128, align 8, !dbg !303, !tbaa !64
  %130 = add nuw nsw i64 %120, 1, !dbg !304
  %131 = icmp ult i64 %130, %118, !dbg !294
  br i1 %131, label %119, label %132, !dbg !295, !llvm.loop !288

; <label>:132:                                    ; preds = %119, %113
  %133 = add i32 %67, 1, !dbg !309
  store i32 %133, i32* %16, align 8, !dbg !310, !tbaa !76
  br label %599, !dbg !311

; <label>:134:                                    ; preds = %64
  %135 = load i32, i32* %16, align 8, !dbg !312, !tbaa !76
  %136 = sext i32 %135 to i64, !dbg !314
  %137 = getelementptr inbounds i8*, i8** %1, i64 %136, !dbg !314
  %138 = load i8*, i8** %137, align 8, !dbg !314, !tbaa !64
  %139 = icmp eq i8* %138, null, !dbg !318
  %140 = ptrtoint i8* %138 to i64, !dbg !319
  br i1 %139, label %165, label %141, !dbg !319

; <label>:141:                                    ; preds = %134
  %142 = load i8, i8* %138, align 1, !dbg !320, !tbaa !199
  %143 = icmp eq i8 %142, 45, !dbg !321
  br i1 %143, label %165, label %144, !dbg !322

; <label>:144:                                    ; preds = %141
  %145 = icmp ne i32 %5, 0, !dbg !323
  %146 = icmp eq i8 %142, 43, !dbg !324
  %147 = and i1 %145, %146, !dbg !325
  br i1 %147, label %165, label %148, !dbg !325

; <label>:148:                                    ; preds = %144
  %149 = add nsw i32 %135, 1, !dbg !326
  store i32 %149, i32* %16, align 8, !dbg !326, !tbaa !76
  %150 = bitcast %struct.getopt_data* %6 to i64*, !dbg !328
  store i64 %140, i64* %150, align 8, !dbg !328, !tbaa !69
  %151 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !329
  store i32 1, i32* %151, align 8, !dbg !330, !tbaa !84
  br label %599, !dbg !331

; <label>:152:                                    ; preds = %64
  %153 = load i32, i32* %16, align 8, !dbg !332, !tbaa !76
  %154 = sext i32 %153 to i64, !dbg !334
  %155 = getelementptr inbounds i8*, i8** %1, i64 %154, !dbg !334
  %156 = load i8*, i8** %155, align 8, !dbg !334, !tbaa !64
  %157 = icmp eq i8* %156, null, !dbg !338
  br i1 %157, label %165, label %158, !dbg !339

; <label>:158:                                    ; preds = %152
  %159 = load i8, i8* %156, align 1, !dbg !340, !tbaa !199
  %160 = icmp eq i8 %159, 45, !dbg !341
  br i1 %160, label %165, label %161, !dbg !342

; <label>:161:                                    ; preds = %158
  %162 = icmp ne i32 %5, 0, !dbg !343
  %163 = icmp eq i8 %159, 43, !dbg !344
  %164 = and i1 %162, %163, !dbg !345
  br i1 %164, label %165, label %599, !dbg !345

; <label>:165:                                    ; preds = %161, %144, %152, %158, %134, %141, %91, %57
  %166 = phi i64 [ %68, %91 ], [ 0, %57 ], [ 0, %141 ], [ 0, %134 ], [ 0, %158 ], [ 0, %152 ], [ 0, %144 ], [ 0, %161 ], !dbg !211
  %167 = phi i32 [ %77, %91 ], [ 0, %57 ], [ 0, %141 ], [ 0, %134 ], [ 0, %158 ], [ 0, %152 ], [ 0, %144 ], [ 0, %161 ], !dbg !211
  %168 = load i32, i32* %16, align 8, !dbg !346, !tbaa !76
  %169 = sext i32 %168 to i64, !dbg !348
  %170 = getelementptr inbounds i8*, i8** %1, i64 %169, !dbg !348
  %171 = load i8*, i8** %170, align 8, !dbg !348, !tbaa !64
  %172 = icmp eq i8* %171, null, !dbg !349
  br i1 %172, label %599, label %173, !dbg !350

; <label>:173:                                    ; preds = %165
  br i1 %13, label %324, label %174, !dbg !351

; <label>:174:                                    ; preds = %173
  %175 = tail call i32 @memcmp(i8* nonnull %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !353
  %176 = icmp eq i32 %175, 0, !dbg !354
  br i1 %176, label %186, label %177, !dbg !355

; <label>:177:                                    ; preds = %174
  %178 = icmp eq i32 %5, 0, !dbg !356
  br i1 %178, label %324, label %179, !dbg !357

; <label>:179:                                    ; preds = %177
  %180 = load i32, i32* %16, align 8, !dbg !358, !tbaa !76
  %181 = sext i32 %180 to i64, !dbg !359
  %182 = getelementptr inbounds i8*, i8** %1, i64 %181, !dbg !359
  %183 = load i8*, i8** %182, align 8, !dbg !359, !tbaa !64
  %184 = load i8, i8* %183, align 1, !dbg !359, !tbaa !199
  %185 = icmp eq i8 %184, 43, !dbg !360
  br i1 %185, label %186, label %324, !dbg !361

; <label>:186:                                    ; preds = %179, %174
  %187 = load i32, i32* %61, align 4, !dbg !362, !tbaa !88
  %188 = icmp eq i32 %187, 1, !dbg !363
  br i1 %188, label %189, label %324, !dbg !364

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %16, align 8, !dbg !365, !tbaa !76
  %191 = sext i32 %190 to i64, !dbg !368
  %192 = getelementptr inbounds i8*, i8** %1, i64 %191, !dbg !368
  %193 = load i8*, i8** %192, align 8, !dbg !368, !tbaa !64
  %194 = tail call i32 @memcmp(i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !369
  %195 = icmp eq i32 %194, 0, !dbg !370
  br i1 %195, label %198, label %196, !dbg !371

; <label>:196:                                    ; preds = %189
  %197 = load i32, i32* %61, align 4, !dbg !372, !tbaa !88
  br label %199, !dbg !371

; <label>:198:                                    ; preds = %189
  store i32 2, i32* %61, align 4, !dbg !373, !tbaa !88
  br label %199, !dbg !374

; <label>:199:                                    ; preds = %196, %198
  %200 = phi i32 [ %197, %196 ], [ 2, %198 ], !dbg !372
  %201 = load i32, i32* %16, align 8, !dbg !375, !tbaa !76
  %202 = sext i32 %201 to i64, !dbg !376
  %203 = getelementptr inbounds i8*, i8** %1, i64 %202, !dbg !376
  %204 = load i8*, i8** %203, align 8, !dbg !376, !tbaa !64
  %205 = sext i32 %200 to i64, !dbg !377
  %206 = getelementptr inbounds i8, i8* %204, i64 %205, !dbg !377
  %207 = tail call i8* @strchr(i8* %206, i32 61) #6, !dbg !378
  %208 = icmp eq i8* %207, null, !dbg !379
  %209 = load i32, i32* %16, align 8, !dbg !381, !tbaa !76
  %210 = sext i32 %209 to i64, !dbg !381
  %211 = getelementptr inbounds i8*, i8** %1, i64 %210, !dbg !381
  br i1 %208, label %212, label %221, !dbg !382

; <label>:212:                                    ; preds = %199
  %213 = load i8*, i8** %211, align 8, !dbg !383, !tbaa !64
  %214 = tail call i64 @strlen(i8* %213) #6, !dbg !385
  %215 = load i32, i32* %16, align 8, !dbg !386, !tbaa !76
  %216 = sext i32 %215 to i64, !dbg !387
  %217 = getelementptr inbounds i8*, i8** %1, i64 %216, !dbg !387
  %218 = load i8*, i8** %217, align 8, !dbg !387, !tbaa !64
  %219 = getelementptr inbounds i8, i8* %218, i64 %214, !dbg !388
  %220 = load i32, i32* %61, align 4, !dbg !389, !tbaa !88
  br label %227, !dbg !390

; <label>:221:                                    ; preds = %199
  %222 = bitcast i8** %211 to i64*, !dbg !391
  %223 = load i64, i64* %222, align 8, !dbg !391, !tbaa !64
  %224 = ptrtoint i8* %207 to i64, !dbg !392
  %225 = sub i64 %224, %223, !dbg !392
  %226 = load i32, i32* %61, align 4, !dbg !393, !tbaa !88
  br label %227

; <label>:227:                                    ; preds = %221, %212
  %228 = phi i32 [ %226, %221 ], [ %220, %212 ]
  %229 = phi i64 [ %225, %221 ], [ %214, %212 ]
  %230 = phi i32 [ %209, %221 ], [ %215, %212 ]
  %231 = phi i8* [ %207, %221 ], [ %219, %212 ], !dbg !394
  %232 = sext i32 %228 to i64, !dbg !395
  %233 = sub i64 %229, %232, !dbg !395
  %234 = getelementptr inbounds %struct.option, %struct.option* %3, i64 0, i32 0, !dbg !396
  %235 = load i8*, i8** %234, align 8, !dbg !396, !tbaa !399
  %236 = icmp eq i8* %235, null, !dbg !401
  br i1 %236, label %324, label %237, !dbg !402

; <label>:237:                                    ; preds = %227, %312
  %238 = phi i32 [ %314, %312 ], [ %228, %227 ], !dbg !403
  %239 = phi i32 [ %313, %312 ], [ %230, %227 ], !dbg !406
  %240 = phi i64 [ %308, %312 ], [ 0, %227 ]
  %241 = phi i8* [ %310, %312 ], [ %235, %227 ]
  %242 = phi i8** [ %309, %312 ], [ %234, %227 ]
  %243 = phi i32 [ %307, %312 ], [ -1, %227 ]
  %244 = sext i32 %239 to i64, !dbg !407
  %245 = getelementptr inbounds i8*, i8** %1, i64 %244, !dbg !407
  %246 = load i8*, i8** %245, align 8, !dbg !407, !tbaa !64
  %247 = sext i32 %238 to i64, !dbg !408
  %248 = getelementptr inbounds i8, i8* %246, i64 %247, !dbg !408
  %249 = tail call i32 @memcmp(i8* %248, i8* nonnull %241, i64 %233) #6, !dbg !409
  %250 = icmp eq i32 %249, 0, !dbg !410
  br i1 %250, label %251, label %306, !dbg !411

; <label>:251:                                    ; preds = %237
  %252 = load i8*, i8** %242, align 8, !dbg !412, !tbaa !399
  %253 = tail call i64 @strlen(i8* %252) #6, !dbg !415
  %254 = icmp eq i64 %233, %253, !dbg !416
  %255 = trunc i64 %240 to i32, !dbg !417
  br i1 %254, label %315, label %256, !dbg !417

; <label>:256:                                    ; preds = %251
  %257 = icmp slt i32 %243, 0, !dbg !418
  br i1 %257, label %306, label %258, !dbg !421

; <label>:258:                                    ; preds = %256
  %259 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !422
  %260 = load i32, i32* %259, align 4, !dbg !422, !tbaa !80
  %261 = icmp eq i32 %260, 0, !dbg !425
  br i1 %261, label %304, label %262, !dbg !426

; <label>:262:                                    ; preds = %258
  %263 = load i8*, i8** %1, align 8, !dbg !427, !tbaa !64
  %264 = tail call %struct._reent* @__getreent() #6, !dbg !429
  %265 = getelementptr inbounds %struct._reent, %struct._reent* %264, i64 0, i32 3, !dbg !429
  %266 = load %struct.__sFILE*, %struct.__sFILE** %265, align 8, !dbg !429, !tbaa !430
  %267 = tail call i32 @fputs(i8* %263, %struct.__sFILE* %266) #6, !dbg !435
  %268 = tail call %struct._reent* @__getreent() #6, !dbg !436
  %269 = getelementptr inbounds %struct._reent, %struct._reent* %268, i64 0, i32 3, !dbg !436
  %270 = load %struct.__sFILE*, %struct.__sFILE** %269, align 8, !dbg !436, !tbaa !430
  %271 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.__sFILE* %270) #6, !dbg !437
  %272 = load i32, i32* %16, align 8, !dbg !438, !tbaa !76
  %273 = sext i32 %272 to i64, !dbg !439
  %274 = getelementptr inbounds i8*, i8** %1, i64 %273, !dbg !439
  %275 = load i8*, i8** %274, align 8, !dbg !439, !tbaa !64
  %276 = tail call %struct._reent* @__getreent() #6, !dbg !440
  %277 = getelementptr inbounds %struct._reent, %struct._reent* %276, i64 0, i32 3, !dbg !440
  %278 = load %struct.__sFILE*, %struct.__sFILE** %277, align 8, !dbg !440, !tbaa !430
  %279 = tail call i32 @fputs(i8* %275, %struct.__sFILE* %278) #6, !dbg !441
  %280 = tail call %struct._reent* @__getreent() #6, !dbg !442
  %281 = getelementptr inbounds %struct._reent, %struct._reent* %280, i64 0, i32 3, !dbg !442
  %282 = load %struct.__sFILE*, %struct.__sFILE** %281, align 8, !dbg !442, !tbaa !430
  %283 = tail call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %282) #6, !dbg !443
  %284 = sext i32 %243 to i64, !dbg !444
  %285 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %284, i32 0, !dbg !445
  %286 = load i8*, i8** %285, align 8, !dbg !445, !tbaa !399
  %287 = tail call %struct._reent* @__getreent() #6, !dbg !446
  %288 = getelementptr inbounds %struct._reent, %struct._reent* %287, i64 0, i32 3, !dbg !446
  %289 = load %struct.__sFILE*, %struct.__sFILE** %288, align 8, !dbg !446, !tbaa !430
  %290 = tail call i32 @fputs(i8* %286, %struct.__sFILE* %289) #6, !dbg !447
  %291 = tail call %struct._reent* @__getreent() #6, !dbg !448
  %292 = getelementptr inbounds %struct._reent, %struct._reent* %291, i64 0, i32 3, !dbg !448
  %293 = load %struct.__sFILE*, %struct.__sFILE** %292, align 8, !dbg !448, !tbaa !430
  %294 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %293) #6, !dbg !449
  %295 = load i8*, i8** %242, align 8, !dbg !450, !tbaa !399
  %296 = tail call %struct._reent* @__getreent() #6, !dbg !451
  %297 = getelementptr inbounds %struct._reent, %struct._reent* %296, i64 0, i32 3, !dbg !451
  %298 = load %struct.__sFILE*, %struct.__sFILE** %297, align 8, !dbg !451, !tbaa !430
  %299 = tail call i32 @fputs(i8* %295, %struct.__sFILE* %298) #6, !dbg !452
  %300 = tail call %struct._reent* @__getreent() #6, !dbg !453
  %301 = getelementptr inbounds %struct._reent, %struct._reent* %300, i64 0, i32 3, !dbg !453
  %302 = load %struct.__sFILE*, %struct.__sFILE** %301, align 8, !dbg !453, !tbaa !430
  %303 = tail call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.__sFILE* %302) #6, !dbg !454
  br label %304, !dbg !455

; <label>:304:                                    ; preds = %258, %262
  %305 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !456
  store i32 63, i32* %305, align 8, !dbg !457, !tbaa !84
  br label %599, !dbg !458

; <label>:306:                                    ; preds = %256, %237
  %307 = phi i32 [ %243, %237 ], [ %255, %256 ], !dbg !394
  %308 = add nuw i64 %240, 1, !dbg !459
  %309 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %308, i32 0, !dbg !396
  %310 = load i8*, i8** %309, align 8, !dbg !396, !tbaa !399
  %311 = icmp eq i8* %310, null, !dbg !401
  br i1 %311, label %317, label %312, !dbg !402, !llvm.loop !460

; <label>:312:                                    ; preds = %306
  %313 = load i32, i32* %16, align 8, !dbg !406, !tbaa !76
  %314 = load i32, i32* %61, align 4, !dbg !403, !tbaa !88
  br label %237, !dbg !402

; <label>:315:                                    ; preds = %251
  %316 = trunc i64 %240 to i32, !dbg !417
  br label %317, !dbg !462

; <label>:317:                                    ; preds = %306, %315
  %318 = phi i32 [ %316, %315 ], [ %307, %306 ], !dbg !394
  %319 = icmp sgt i32 %318, -1, !dbg !462
  br i1 %319, label %320, label %324, !dbg !464

; <label>:320:                                    ; preds = %317
  %321 = sext i32 %318 to i64, !dbg !465
  %322 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %321, i32 1, !dbg !466
  %323 = load i32, i32* %322, align 8, !dbg !466, !tbaa !467
  br label %409, !dbg !468

; <label>:324:                                    ; preds = %227, %177, %173, %317, %186, %179
  %325 = phi i32 [ %318, %317 ], [ -1, %186 ], [ -1, %179 ], [ -1, %177 ], [ -1, %173 ], [ -1, %227 ], !dbg !211
  %326 = icmp slt i32 %325, 0, !dbg !470
  %327 = icmp ne i8* %59, null, !dbg !471
  %328 = and i1 %327, %326, !dbg !468
  br i1 %328, label %329, label %495, !dbg !468

; <label>:329:                                    ; preds = %324
  %330 = load i32, i32* %16, align 8, !dbg !472, !tbaa !76
  %331 = sext i32 %330 to i64, !dbg !474
  %332 = getelementptr inbounds i8*, i8** %1, i64 %331, !dbg !474
  %333 = load i8*, i8** %332, align 8, !dbg !474, !tbaa !64
  %334 = load i32, i32* %61, align 4, !dbg !475, !tbaa !88
  %335 = sext i32 %334 to i64, !dbg !474
  %336 = getelementptr inbounds i8, i8* %333, i64 %335, !dbg !474
  %337 = load i8, i8* %336, align 1, !dbg !474, !tbaa !199
  %338 = sext i8 %337 to i32, !dbg !474
  %339 = tail call i8* @strchr(i8* nonnull %59, i32 %338) #6, !dbg !476
  %340 = icmp eq i8* %339, null, !dbg !477
  br i1 %340, label %341, label %387, !dbg !479

; <label>:341:                                    ; preds = %329
  %342 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !480
  %343 = load i32, i32* %342, align 4, !dbg !480, !tbaa !80
  %344 = icmp eq i32 %343, 0, !dbg !483
  br i1 %344, label %372, label %345, !dbg !484

; <label>:345:                                    ; preds = %341
  %346 = load i8*, i8** %1, align 8, !dbg !485, !tbaa !64
  %347 = tail call %struct._reent* @__getreent() #6, !dbg !487
  %348 = getelementptr inbounds %struct._reent, %struct._reent* %347, i64 0, i32 3, !dbg !487
  %349 = load %struct.__sFILE*, %struct.__sFILE** %348, align 8, !dbg !487, !tbaa !430
  %350 = tail call i32 @fputs(i8* %346, %struct.__sFILE* %349) #6, !dbg !488
  %351 = tail call %struct._reent* @__getreent() #6, !dbg !489
  %352 = getelementptr inbounds %struct._reent, %struct._reent* %351, i64 0, i32 3, !dbg !489
  %353 = load %struct.__sFILE*, %struct.__sFILE** %352, align 8, !dbg !489, !tbaa !430
  %354 = tail call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.__sFILE* %353) #6, !dbg !490
  %355 = load i32, i32* %16, align 8, !dbg !491, !tbaa !76
  %356 = sext i32 %355 to i64, !dbg !492
  %357 = getelementptr inbounds i8*, i8** %1, i64 %356, !dbg !492
  %358 = load i8*, i8** %357, align 8, !dbg !492, !tbaa !64
  %359 = load i32, i32* %61, align 4, !dbg !493, !tbaa !88
  %360 = sext i32 %359 to i64, !dbg !492
  %361 = getelementptr inbounds i8, i8* %358, i64 %360, !dbg !492
  %362 = load i8, i8* %361, align 1, !dbg !492, !tbaa !199
  %363 = sext i8 %362 to i32, !dbg !492
  %364 = tail call %struct._reent* @__getreent() #6, !dbg !494
  %365 = getelementptr inbounds %struct._reent, %struct._reent* %364, i64 0, i32 3, !dbg !494
  %366 = load %struct.__sFILE*, %struct.__sFILE** %365, align 8, !dbg !494, !tbaa !430
  %367 = tail call i32 @fputc(i32 %363, %struct.__sFILE* %366) #6, !dbg !495
  %368 = tail call %struct._reent* @__getreent() #6, !dbg !496
  %369 = getelementptr inbounds %struct._reent, %struct._reent* %368, i64 0, i32 3, !dbg !496
  %370 = load %struct.__sFILE*, %struct.__sFILE** %369, align 8, !dbg !496, !tbaa !430
  %371 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %370) #6, !dbg !497
  br label %372, !dbg !498

; <label>:372:                                    ; preds = %341, %345
  %373 = load i32, i32* %61, align 4, !dbg !499, !tbaa !88
  %374 = add nsw i32 %373, 1, !dbg !499
  store i32 %374, i32* %61, align 4, !dbg !499, !tbaa !88
  %375 = load i32, i32* %16, align 8, !dbg !500, !tbaa !76
  %376 = sext i32 %375 to i64, !dbg !502
  %377 = getelementptr inbounds i8*, i8** %1, i64 %376, !dbg !502
  %378 = load i8*, i8** %377, align 8, !dbg !502, !tbaa !64
  %379 = sext i32 %374 to i64, !dbg !502
  %380 = getelementptr inbounds i8, i8* %378, i64 %379, !dbg !502
  %381 = load i8, i8* %380, align 1, !dbg !502, !tbaa !199
  %382 = icmp eq i8 %381, 0, !dbg !503
  br i1 %382, label %383, label %385, !dbg !504

; <label>:383:                                    ; preds = %372
  %384 = add nsw i32 %375, 1, !dbg !505
  store i32 %384, i32* %16, align 8, !dbg !505, !tbaa !76
  store i32 1, i32* %61, align 4, !dbg !507, !tbaa !88
  br label %385, !dbg !508

; <label>:385:                                    ; preds = %383, %372
  %386 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !509
  store i32 63, i32* %386, align 8, !dbg !510, !tbaa !84
  br label %599, !dbg !511

; <label>:387:                                    ; preds = %329
  %388 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !512
  %389 = load i8, i8* %388, align 1, !dbg !512, !tbaa !199
  %390 = icmp eq i8 %389, 58, !dbg !513
  br i1 %390, label %391, label %396, !dbg !514

; <label>:391:                                    ; preds = %387
  %392 = getelementptr inbounds i8, i8* %339, i64 2, !dbg !515
  %393 = load i8, i8* %392, align 1, !dbg !515, !tbaa !199
  %394 = icmp eq i8 %393, 58, !dbg !516
  %395 = select i1 %394, i32 2, i32 1, !dbg !517
  br label %396, !dbg !514

; <label>:396:                                    ; preds = %387, %391
  %397 = phi i32 [ %395, %391 ], [ 0, %387 ], !dbg !514
  %398 = load i32, i32* %16, align 8, !dbg !518, !tbaa !76
  %399 = sext i32 %398 to i64, !dbg !519
  %400 = getelementptr inbounds i8*, i8** %1, i64 %399, !dbg !519
  %401 = load i8*, i8** %400, align 8, !dbg !519, !tbaa !64
  %402 = load i32, i32* %61, align 4, !dbg !520, !tbaa !88
  %403 = sext i32 %402 to i64, !dbg !521
  %404 = getelementptr inbounds i8, i8* %401, i64 %403, !dbg !521
  %405 = getelementptr inbounds i8, i8* %404, i64 1, !dbg !522
  %406 = load i8, i8* %339, align 1, !dbg !523, !tbaa !199
  %407 = sext i8 %406 to i32, !dbg !523
  %408 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !524
  store i32 %407, i32* %408, align 8, !dbg !525, !tbaa !84
  br label %409, !dbg !526

; <label>:409:                                    ; preds = %320, %396
  %410 = phi i1 [ true, %396 ], [ false, %320 ]
  %411 = phi i32 [ %325, %396 ], [ %318, %320 ]
  %412 = phi i8* [ %405, %396 ], [ %231, %320 ], !dbg !395
  %413 = phi i32 [ %397, %396 ], [ %323, %320 ], !dbg !527
  %414 = phi i8* [ %339, %396 ], [ null, %320 ], !dbg !211
  switch i32 %413, label %494 [
    i32 2, label %415
    i32 1, label %424
  ], !dbg !528

; <label>:415:                                    ; preds = %409
  %416 = load i8, i8* %412, align 1, !dbg !529, !tbaa !199
  %417 = icmp eq i8 %416, 61, !dbg !532
  %418 = getelementptr inbounds i8, i8* %412, i64 1, !dbg !533
  %419 = select i1 %417, i8* %418, i8* %412, !dbg !534
  %420 = load i8, i8* %419, align 1, !dbg !535, !tbaa !199
  %421 = icmp eq i8 %420, 0, !dbg !536
  %422 = select i1 %421, i8* null, i8* %419, !dbg !537
  %423 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !538
  store i8* %422, i8** %423, align 8, !dbg !539, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !540, !tbaa !88
  br label %513, !dbg !541

; <label>:424:                                    ; preds = %409
  %425 = load i8, i8* %412, align 1, !dbg !542, !tbaa !199
  %426 = icmp eq i8 %425, 61, !dbg !544
  %427 = getelementptr inbounds i8, i8* %412, i64 1, !dbg !545
  %428 = select i1 %426, i8* %427, i8* %412, !dbg !546
  %429 = load i8, i8* %428, align 1, !dbg !547, !tbaa !199
  %430 = icmp eq i8 %429, 0, !dbg !549
  br i1 %430, label %433, label %431, !dbg !550

; <label>:431:                                    ; preds = %424
  %432 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !551
  store i8* %428, i8** %432, align 8, !dbg !553, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !554, !tbaa !88
  br label %513, !dbg !555

; <label>:433:                                    ; preds = %424
  %434 = load i32, i32* %16, align 8, !dbg !556, !tbaa !76
  %435 = add nsw i32 %434, 1, !dbg !558
  %436 = icmp slt i32 %435, %0, !dbg !559
  br i1 %436, label %488, label %437, !dbg !560

; <label>:437:                                    ; preds = %433
  %438 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !561
  %439 = load i32, i32* %438, align 4, !dbg !561, !tbaa !80
  %440 = icmp eq i32 %439, 0, !dbg !564
  br i1 %440, label %484, label %441, !dbg !565

; <label>:441:                                    ; preds = %437
  %442 = load i8*, i8** %1, align 8, !dbg !566, !tbaa !64
  %443 = tail call %struct._reent* @__getreent() #6, !dbg !568
  %444 = getelementptr inbounds %struct._reent, %struct._reent* %443, i64 0, i32 3, !dbg !568
  %445 = load %struct.__sFILE*, %struct.__sFILE** %444, align 8, !dbg !568, !tbaa !430
  %446 = tail call i32 @fputs(i8* %442, %struct.__sFILE* %445) #6, !dbg !569
  %447 = tail call %struct._reent* @__getreent() #6, !dbg !570
  %448 = getelementptr inbounds %struct._reent, %struct._reent* %447, i64 0, i32 3, !dbg !570
  %449 = load %struct.__sFILE*, %struct.__sFILE** %448, align 8, !dbg !570, !tbaa !430
  %450 = tail call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), %struct.__sFILE* %449) #6, !dbg !571
  %451 = icmp sgt i32 %411, -1, !dbg !572
  br i1 %451, label %452, label %466, !dbg !574

; <label>:452:                                    ; preds = %441
  %453 = tail call %struct._reent* @__getreent() #6, !dbg !575
  %454 = getelementptr inbounds %struct._reent, %struct._reent* %453, i64 0, i32 3, !dbg !575
  %455 = load %struct.__sFILE*, %struct.__sFILE** %454, align 8, !dbg !575, !tbaa !430
  %456 = tail call i32 @fputc(i32 45, %struct.__sFILE* %455) #6, !dbg !577
  %457 = sext i32 %411 to i64, !dbg !578
  %458 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %457, i32 0, !dbg !579
  %459 = load i8*, i8** %458, align 8, !dbg !579, !tbaa !399
  %460 = tail call %struct._reent* @__getreent() #6, !dbg !580
  %461 = getelementptr inbounds %struct._reent, %struct._reent* %460, i64 0, i32 3, !dbg !580
  %462 = load %struct.__sFILE*, %struct.__sFILE** %461, align 8, !dbg !580, !tbaa !430
  %463 = tail call i32 @fputs(i8* %459, %struct.__sFILE* %462) #6, !dbg !581
  %464 = icmp eq i32 %60, 0, !dbg !582
  %465 = select i1 %464, i32 63, i32 58, !dbg !582
  br label %475, !dbg !583

; <label>:466:                                    ; preds = %441
  %467 = load i8, i8* %414, align 1, !dbg !584, !tbaa !199
  %468 = sext i8 %467 to i32, !dbg !584
  %469 = tail call %struct._reent* @__getreent() #6, !dbg !586
  %470 = getelementptr inbounds %struct._reent, %struct._reent* %469, i64 0, i32 3, !dbg !586
  %471 = load %struct.__sFILE*, %struct.__sFILE** %470, align 8, !dbg !586, !tbaa !430
  %472 = tail call i32 @fputc(i32 %468, %struct.__sFILE* %471) #6, !dbg !587
  %473 = load i8, i8* %414, align 1, !dbg !588, !tbaa !199
  %474 = sext i8 %473 to i32, !dbg !588
  br label %475

; <label>:475:                                    ; preds = %466, %452
  %476 = phi i32 [ %474, %466 ], [ %465, %452 ]
  %477 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !589
  store i32 %476, i32* %477, align 8, !dbg !590
  %478 = tail call %struct._reent* @__getreent() #6, !dbg !591
  %479 = getelementptr inbounds %struct._reent, %struct._reent* %478, i64 0, i32 3, !dbg !591
  %480 = load %struct.__sFILE*, %struct.__sFILE** %479, align 8, !dbg !591, !tbaa !430
  %481 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__sFILE* %480) #6, !dbg !592
  %482 = load i32, i32* %16, align 8, !dbg !593, !tbaa !76
  %483 = add nsw i32 %482, 1, !dbg !593
  br label %484, !dbg !594

; <label>:484:                                    ; preds = %437, %475
  %485 = phi i32 [ %435, %437 ], [ %483, %475 ], !dbg !593
  store i32 %485, i32* %16, align 8, !dbg !593, !tbaa !76
  %486 = icmp eq i32 %60, 0, !dbg !595
  %487 = select i1 %486, i32 63, i32 58, !dbg !595
  br label %599, !dbg !596

; <label>:488:                                    ; preds = %433
  %489 = sext i32 %435 to i64, !dbg !597
  %490 = getelementptr inbounds i8*, i8** %1, i64 %489, !dbg !597
  %491 = bitcast i8** %490 to i64*, !dbg !597
  %492 = load i64, i64* %491, align 8, !dbg !597, !tbaa !64
  %493 = bitcast %struct.getopt_data* %6 to i64*, !dbg !599
  store i64 %492, i64* %493, align 8, !dbg !599, !tbaa !69
  store i32 1, i32* %61, align 4, !dbg !600, !tbaa !88
  br label %513

; <label>:494:                                    ; preds = %409
  br i1 %410, label %495, label %507, !dbg !601

; <label>:495:                                    ; preds = %324, %494
  %496 = phi i32 [ %411, %494 ], [ %325, %324 ]
  %497 = load i32, i32* %61, align 4, !dbg !602, !tbaa !88
  %498 = add nsw i32 %497, 1, !dbg !602
  store i32 %498, i32* %61, align 4, !dbg !602, !tbaa !88
  %499 = load i32, i32* %16, align 8, !dbg !605, !tbaa !76
  %500 = sext i32 %499 to i64, !dbg !607
  %501 = getelementptr inbounds i8*, i8** %1, i64 %500, !dbg !607
  %502 = load i8*, i8** %501, align 8, !dbg !607, !tbaa !64
  %503 = sext i32 %498 to i64, !dbg !607
  %504 = getelementptr inbounds i8, i8* %502, i64 %503, !dbg !607
  %505 = load i8, i8* %504, align 1, !dbg !607, !tbaa !199
  %506 = icmp eq i8 %505, 0, !dbg !608
  br i1 %506, label %507, label %509, !dbg !609

; <label>:507:                                    ; preds = %494, %495
  %508 = phi i32 [ %496, %495 ], [ %411, %494 ]
  store i32 1, i32* %61, align 4, !dbg !610, !tbaa !88
  br label %509, !dbg !611

; <label>:509:                                    ; preds = %507, %495
  %510 = phi i32 [ %498, %495 ], [ 1, %507 ]
  %511 = phi i32 [ %496, %495 ], [ %508, %507 ]
  %512 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 0, !dbg !611
  store i8* null, i8** %512, align 8, !dbg !612, !tbaa !69
  br label %513, !dbg !613

; <label>:513:                                    ; preds = %431, %488, %509, %415
  %514 = phi i32 [ %510, %509 ], [ 1, %431 ], [ 1, %488 ], [ 1, %415 ], !dbg !614
  %515 = phi i32 [ %511, %509 ], [ %411, %431 ], [ %411, %488 ], [ %411, %415 ]
  %516 = phi i32 [ 0, %509 ], [ 0, %431 ], [ 1, %488 ], [ 0, %415 ], !dbg !211
  %517 = icmp eq i32 %58, 0, !dbg !617
  br i1 %517, label %518, label %575, !dbg !618

; <label>:518:                                    ; preds = %513
  %519 = icmp eq i32 %514, 1, !dbg !619
  %520 = icmp ne i32 %167, 0, !dbg !620
  %521 = and i1 %520, %519, !dbg !621
  br i1 %521, label %522, label %575, !dbg !621

; <label>:522:                                    ; preds = %518
  %523 = getelementptr inbounds i8*, i8** %1, i64 %166, !dbg !622
  %524 = add nuw nsw i32 %516, 1, !dbg !624
  %525 = icmp ugt i32 %167, 1, !dbg !633
  br i1 %525, label %526, label %543, !dbg !634

; <label>:526:                                    ; preds = %522
  %527 = lshr i32 %167, 1
  %528 = zext i32 %527 to i64, !dbg !635
  br label %529, !dbg !635

; <label>:529:                                    ; preds = %529, %526
  %530 = phi i64 [ 0, %526 ], [ %541, %529 ]
  %531 = getelementptr inbounds i8*, i8** %523, i64 %530, !dbg !635
  %532 = bitcast i8** %531 to i64*, !dbg !635
  %533 = load i64, i64* %532, align 8, !dbg !635, !tbaa !64
  %534 = trunc i64 %530 to i32, !dbg !637
  %535 = xor i32 %534, -1, !dbg !637
  %536 = add i32 %167, %535, !dbg !637
  %537 = sext i32 %536 to i64, !dbg !638
  %538 = getelementptr inbounds i8*, i8** %523, i64 %537, !dbg !638
  %539 = bitcast i8** %538 to i64*, !dbg !638
  %540 = load i64, i64* %539, align 8, !dbg !638, !tbaa !64
  store i64 %540, i64* %532, align 8, !dbg !639, !tbaa !64
  store i64 %533, i64* %539, align 8, !dbg !640, !tbaa !64
  %541 = add nuw nsw i64 %530, 1, !dbg !641
  %542 = icmp ult i64 %541, %528, !dbg !633
  br i1 %542, label %529, label %543, !dbg !634, !llvm.loop !288

; <label>:543:                                    ; preds = %529, %522
  %544 = add nuw nsw i32 %524, %167, !dbg !642
  %545 = icmp ugt i32 %544, 1, !dbg !647
  br i1 %545, label %546, label %563, !dbg !648

; <label>:546:                                    ; preds = %543
  %547 = lshr i32 %544, 1
  %548 = zext i32 %547 to i64, !dbg !649
  br label %549, !dbg !649

; <label>:549:                                    ; preds = %549, %546
  %550 = phi i64 [ 0, %546 ], [ %561, %549 ]
  %551 = getelementptr inbounds i8*, i8** %523, i64 %550, !dbg !649
  %552 = bitcast i8** %551 to i64*, !dbg !649
  %553 = load i64, i64* %552, align 8, !dbg !649, !tbaa !64
  %554 = trunc i64 %550 to i32, !dbg !651
  %555 = xor i32 %554, -1, !dbg !651
  %556 = add i32 %544, %555, !dbg !651
  %557 = sext i32 %556 to i64, !dbg !652
  %558 = getelementptr inbounds i8*, i8** %523, i64 %557, !dbg !652
  %559 = bitcast i8** %558 to i64*, !dbg !652
  %560 = load i64, i64* %559, align 8, !dbg !652, !tbaa !64
  store i64 %560, i64* %552, align 8, !dbg !653, !tbaa !64
  store i64 %553, i64* %559, align 8, !dbg !654, !tbaa !64
  %561 = add nuw nsw i64 %550, 1, !dbg !655
  %562 = icmp ult i64 %561, %548, !dbg !647
  br i1 %562, label %549, label %563, !dbg !648, !llvm.loop !288

; <label>:563:                                    ; preds = %549, %543
  %564 = icmp eq i32 %516, 0, !dbg !660
  br i1 %564, label %572, label %565, !dbg !661

; <label>:565:                                    ; preds = %563
  %566 = bitcast i8** %523 to i64*, !dbg !662
  %567 = load i64, i64* %566, align 8, !dbg !662, !tbaa !64
  %568 = zext i32 %516 to i64, !dbg !664
  %569 = getelementptr inbounds i8*, i8** %523, i64 %568, !dbg !664
  %570 = bitcast i8** %569 to i64*, !dbg !664
  %571 = load i64, i64* %570, align 8, !dbg !664, !tbaa !64
  store i64 %571, i64* %566, align 8, !dbg !665, !tbaa !64
  store i64 %567, i64* %570, align 8, !dbg !666, !tbaa !64
  br label %572, !dbg !667

; <label>:572:                                    ; preds = %565, %563
  %573 = trunc i64 %166 to i32, !dbg !667
  %574 = add i32 %524, %573, !dbg !667
  br label %581, !dbg !668

; <label>:575:                                    ; preds = %513, %518
  %576 = icmp eq i32 %514, 1, !dbg !669
  br i1 %576, label %577, label %583, !dbg !670

; <label>:577:                                    ; preds = %575
  %578 = load i32, i32* %16, align 8, !dbg !671, !tbaa !76
  %579 = add nuw nsw i32 %516, 1, !dbg !672
  %580 = add i32 %579, %578, !dbg !673
  br label %581, !dbg !674

; <label>:581:                                    ; preds = %572, %577
  %582 = phi i32 [ %580, %577 ], [ %574, %572 ]
  store i32 %582, i32* %16, align 8, !dbg !675, !tbaa !76
  br label %583, !dbg !676

; <label>:583:                                    ; preds = %581, %575
  %584 = icmp sgt i32 %515, -1, !dbg !676
  br i1 %584, label %585, label %596, !dbg !678

; <label>:585:                                    ; preds = %583
  %586 = icmp eq i32* %4, null, !dbg !679
  br i1 %586, label %588, label %587, !dbg !682

; <label>:587:                                    ; preds = %585
  store i32 %515, i32* %4, align 4, !dbg !683, !tbaa !73
  br label %588, !dbg !684

; <label>:588:                                    ; preds = %585, %587
  %589 = sext i32 %515 to i64, !dbg !685
  %590 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %589, i32 2, !dbg !687
  %591 = load i32*, i32** %590, align 8, !dbg !687, !tbaa !688
  %592 = icmp eq i32* %591, null, !dbg !689
  %593 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %589, i32 3, !dbg !690
  %594 = load i32, i32* %593, align 8, !dbg !690, !tbaa !691
  br i1 %592, label %599, label %595, !dbg !692

; <label>:595:                                    ; preds = %588
  store i32 %594, i32* %591, align 4, !dbg !693, !tbaa !73
  br label %599, !dbg !695

; <label>:596:                                    ; preds = %583
  %597 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !696
  %598 = load i32, i32* %597, align 8, !dbg !696, !tbaa !84
  br label %599, !dbg !697

; <label>:599:                                    ; preds = %161, %588, %165, %7, %19, %11, %15, %596, %595, %484, %385, %304, %148, %132, %90, %28
  %600 = phi i32 [ -1, %28 ], [ -1, %90 ], [ -1, %132 ], [ 63, %385 ], [ 0, %595 ], [ %598, %596 ], [ %487, %484 ], [ 63, %304 ], [ 1, %148 ], [ -1, %15 ], [ -1, %11 ], [ -1, %19 ], [ -1, %7 ], [ -1, %165 ], [ %594, %588 ], [ -1, %161 ], !dbg !698
  ret i32 %600, !dbg !699
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !700 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !716
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !720, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !721
  store i64 %8, i64* %9, align 8, !dbg !721, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !722, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !723
  store i32 %10, i32* %11, align 8, !dbg !724, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !725, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !726
  store i32 %12, i32* %13, align 4, !dbg !727, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !728, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !729
  store i32 %14, i32* %15, align 8, !dbg !730, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !731, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !732
  store i32 %16, i32* %17, align 4, !dbg !733, !tbaa !88
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* nonnull %6) #5, !dbg !734
  %19 = load i64, i64* %9, align 8, !dbg !738, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !739, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !740, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !741, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !742, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !743, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !744, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !745, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !746, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !747, !tbaa !73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !748
  ret i32 %18, !dbg !749
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option* readonly, i32*) local_unnamed_addr #0 !dbg !750 {
  %6 = alloca %struct.getopt_data, align 8
  %7 = bitcast %struct.getopt_data* %6 to i8*, !dbg !764
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #4, !dbg !764
  %8 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !768, !tbaa !64
  %9 = bitcast %struct.getopt_data* %6 to i64*, !dbg !769
  store i64 %8, i64* %9, align 8, !dbg !769, !tbaa !69
  %10 = load i32, i32* @optind, align 4, !dbg !770, !tbaa !73
  %11 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 1, !dbg !771
  store i32 %10, i32* %11, align 8, !dbg !772, !tbaa !76
  %12 = load i32, i32* @opterr, align 4, !dbg !773, !tbaa !73
  %13 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 2, !dbg !774
  store i32 %12, i32* %13, align 4, !dbg !775, !tbaa !80
  %14 = load i32, i32* @optopt, align 4, !dbg !776, !tbaa !73
  %15 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 3, !dbg !777
  store i32 %14, i32* %15, align 8, !dbg !778, !tbaa !84
  %16 = load i32, i32* @optwhere, align 4, !dbg !779, !tbaa !73
  %17 = getelementptr inbounds %struct.getopt_data, %struct.getopt_data* %6, i64 0, i32 4, !dbg !780
  store i32 %16, i32* %17, align 4, !dbg !781, !tbaa !88
  %18 = call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* nonnull %6) #5, !dbg !782
  %19 = load i64, i64* %9, align 8, !dbg !786, !tbaa !69
  store i64 %19, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !787, !tbaa !64
  %20 = load i32, i32* %11, align 8, !dbg !788, !tbaa !76
  store i32 %20, i32* @optind, align 4, !dbg !789, !tbaa !73
  %21 = load i32, i32* %13, align 4, !dbg !790, !tbaa !80
  store i32 %21, i32* @opterr, align 4, !dbg !791, !tbaa !73
  %22 = load i32, i32* %15, align 8, !dbg !792, !tbaa !84
  store i32 %22, i32* @optopt, align 4, !dbg !793, !tbaa !73
  %23 = load i32, i32* %17, align 4, !dbg !794, !tbaa !88
  store i32 %23, i32* @optwhere, align 4, !dbg !795, !tbaa !73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #4, !dbg !796
  ret i32 %18, !dbg !797
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_r(i32, i8**, i8*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !798 {
  %5 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* null, i32* null, i32 0, %struct.getopt_data* %3) #5, !dbg !810
  ret i32 %5, !dbg !811
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !812 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 0, %struct.getopt_data* %5) #5, !dbg !828
  ret i32 %7, !dbg !829
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__getopt_long_only_r(i32, i8**, i8*, %struct.option* readonly, i32*, %struct.getopt_data*) local_unnamed_addr #0 !dbg !830 {
  %7 = tail call fastcc i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 1, %struct.getopt_data* %5) #5, !dbg !844
  ret i32 %7, !dbg !845
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
!89 = !DILocation(line: 461, column: 7, scope: !29)
!90 = !DILocation(line: 458, column: 7, scope: !29)
!91 = !DILocalVariable(name: "data", arg: 1, scope: !92, file: !3, line: 171, type: !59)
!92 = distinct !DISubprogram(name: "write_globals", scope: !3, file: !3, line: 171, type: !57, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !93)
!93 = !{!91}
!94 = !DILocation(line: 171, column: 36, scope: !92, inlinedAt: !95)
!95 = distinct !DILocation(line: 462, column: 3, scope: !29)
!96 = !DILocation(line: 173, column: 18, scope: !92, inlinedAt: !95)
!97 = !DILocation(line: 173, column: 10, scope: !92, inlinedAt: !95)
!98 = !DILocation(line: 174, column: 18, scope: !92, inlinedAt: !95)
!99 = !DILocation(line: 174, column: 10, scope: !92, inlinedAt: !95)
!100 = !DILocation(line: 175, column: 18, scope: !92, inlinedAt: !95)
!101 = !DILocation(line: 175, column: 10, scope: !92, inlinedAt: !95)
!102 = !DILocation(line: 176, column: 18, scope: !92, inlinedAt: !95)
!103 = !DILocation(line: 176, column: 10, scope: !92, inlinedAt: !95)
!104 = !DILocation(line: 177, column: 20, scope: !92, inlinedAt: !95)
!105 = !DILocation(line: 177, column: 12, scope: !92, inlinedAt: !95)
!106 = !DILocation(line: 464, column: 1, scope: !29)
!107 = !DILocation(line: 463, column: 3, scope: !29)
!108 = distinct !DISubprogram(name: "getopt_internal", scope: !3, file: !3, line: 184, type: !109, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !120)
!109 = !DISubroutineType(types: !110)
!110 = !{!18, !18, !32, !34, !111, !118, !18, !59}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !42, line: 105, size: 256, elements: !114)
!114 = !{!115, !116, !117, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !42, line: 107, baseType: !34, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !113, file: !42, line: 108, baseType: !18, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !113, file: !42, line: 109, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !113, file: !42, line: 115, baseType: !18, size: 32, offset: 192)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !130, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!121 = !DILocalVariable(name: "argc", arg: 1, scope: !108, file: !3, line: 184, type: !18)
!122 = !DILocalVariable(name: "argv", arg: 2, scope: !108, file: !3, line: 184, type: !32)
!123 = !DILocalVariable(name: "shortopts", arg: 3, scope: !108, file: !3, line: 184, type: !34)
!124 = !DILocalVariable(name: "longopts", arg: 4, scope: !108, file: !3, line: 185, type: !111)
!125 = !DILocalVariable(name: "longind", arg: 5, scope: !108, file: !3, line: 185, type: !118)
!126 = !DILocalVariable(name: "only", arg: 6, scope: !108, file: !3, line: 185, type: !18)
!127 = !DILocalVariable(name: "data", arg: 7, scope: !108, file: !3, line: 186, type: !59)
!128 = !DILocalVariable(name: "ordering", scope: !108, file: !3, line: 188, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETOPT_ORDERING_T", file: !3, line: 111, baseType: !5)
!130 = !DILocalVariable(name: "permute_from", scope: !108, file: !3, line: 189, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 40, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !134, line: 129, baseType: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!136 = !DILocalVariable(name: "num_nonopts", scope: !108, file: !3, line: 190, type: !18)
!137 = !DILocalVariable(name: "optindex", scope: !108, file: !3, line: 191, type: !18)
!138 = !DILocalVariable(name: "match_chars", scope: !108, file: !3, line: 192, type: !131)
!139 = !DILocalVariable(name: "possible_arg", scope: !108, file: !3, line: 193, type: !13)
!140 = !DILocalVariable(name: "longopt_match", scope: !108, file: !3, line: 194, type: !18)
!141 = !DILocalVariable(name: "has_arg", scope: !108, file: !3, line: 195, type: !18)
!142 = !DILocalVariable(name: "cp", scope: !108, file: !3, line: 196, type: !13)
!143 = !DILocalVariable(name: "arg_next", scope: !108, file: !3, line: 197, type: !18)
!144 = !DILocalVariable(name: "initial_colon", scope: !108, file: !3, line: 198, type: !18)
!145 = !DILocation(line: 184, column: 22, scope: !108)
!146 = !DILocation(line: 184, column: 40, scope: !108)
!147 = !DILocation(line: 184, column: 60, scope: !108)
!148 = !DILocation(line: 185, column: 25, scope: !108)
!149 = !DILocation(line: 185, column: 40, scope: !108)
!150 = !DILocation(line: 185, column: 53, scope: !108)
!151 = !DILocation(line: 186, column: 24, scope: !108)
!152 = !DILocation(line: 188, column: 21, scope: !108)
!153 = !DILocation(line: 189, column: 10, scope: !108)
!154 = !DILocation(line: 190, column: 7, scope: !108)
!155 = !DILocation(line: 191, column: 7, scope: !108)
!156 = !DILocation(line: 192, column: 10, scope: !108)
!157 = !DILocation(line: 193, column: 9, scope: !108)
!158 = !DILocation(line: 194, column: 7, scope: !108)
!159 = !DILocation(line: 195, column: 7, scope: !108)
!160 = !DILocation(line: 196, column: 9, scope: !108)
!161 = !DILocation(line: 197, column: 7, scope: !108)
!162 = !DILocation(line: 198, column: 7, scope: !108)
!163 = !DILocation(line: 201, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !108, file: !3, line: 201, column: 7)
!165 = !DILocation(line: 201, column: 25, scope: !164)
!166 = !DILocation(line: 201, column: 17, scope: !164)
!167 = !DILocation(line: 201, column: 44, scope: !164)
!168 = !DILocation(line: 201, column: 61, scope: !164)
!169 = !DILocation(line: 201, column: 49, scope: !164)
!170 = !DILocation(line: 202, column: 16, scope: !164)
!171 = !DILocation(line: 202, column: 23, scope: !164)
!172 = !DILocation(line: 202, column: 31, scope: !164)
!173 = !DILocation(line: 202, column: 34, scope: !164)
!174 = !DILocation(line: 202, column: 53, scope: !164)
!175 = !DILocation(line: 201, column: 7, scope: !108)
!176 = !DILocation(line: 204, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !108, file: !3, line: 204, column: 7)
!178 = !DILocation(line: 204, column: 41, scope: !177)
!179 = !DILocation(line: 0, scope: !180)
!180 = distinct !DILexicalBlock(scope: !108, file: !3, line: 211, column: 7)
!181 = !DILocation(line: 204, column: 7, scope: !108)
!182 = !DILocation(line: 206, column: 19, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !3, line: 205, column: 5)
!184 = !DILocation(line: 207, column: 7, scope: !183)
!185 = !DILocation(line: 211, column: 20, scope: !180)
!186 = !DILocation(line: 211, column: 7, scope: !108)
!187 = !DILocation(line: 212, column: 26, scope: !180)
!188 = !DILocation(line: 212, column: 35, scope: !180)
!189 = !DILocation(line: 212, column: 18, scope: !180)
!190 = !DILocation(line: 212, column: 5, scope: !180)
!191 = !DILocation(line: 215, column: 22, scope: !192)
!192 = distinct !DILexicalBlock(scope: !108, file: !3, line: 215, column: 7)
!193 = !DILocation(line: 221, column: 17, scope: !192)
!194 = !DILocation(line: 221, column: 44, scope: !192)
!195 = !DILocation(line: 221, column: 16, scope: !192)
!196 = !DILocation(line: 224, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !108, file: !3, line: 224, column: 7)
!198 = !DILocation(line: 215, column: 26, scope: !192)
!199 = !{!66, !66, i64 0}
!200 = !DILocation(line: 215, column: 44, scope: !192)
!201 = !DILocation(line: 217, column: 30, scope: !202)
!202 = distinct !DILexicalBlock(scope: !192, file: !3, line: 216, column: 5)
!203 = !DILocation(line: 217, column: 18, scope: !202)
!204 = !DILocation(line: 218, column: 16, scope: !202)
!205 = !DILocation(line: 224, column: 25, scope: !197)
!206 = !DILocation(line: 224, column: 36, scope: !197)
!207 = !DILocation(line: 226, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !197, file: !3, line: 225, column: 5)
!209 = !DILocation(line: 224, column: 7, scope: !108)
!210 = !DILocation(line: 0, scope: !202)
!211 = !DILocation(line: 0, scope: !108)
!212 = !DILocation(line: 234, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !108, file: !3, line: 234, column: 7)
!214 = !DILocation(line: 234, column: 22, scope: !213)
!215 = !DILocation(line: 234, column: 7, scope: !108)
!216 = !DILocation(line: 236, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 235, column: 5)
!218 = !DILocation(line: 240, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !3, line: 237, column: 2)
!220 = !DILocation(line: 240, column: 19, scope: !219)
!221 = !DILocation(line: 242, column: 23, scope: !219)
!222 = !DILocalVariable(name: "argv_element", arg: 1, scope: !223, file: !3, line: 150, type: !13)
!223 = distinct !DISubprogram(name: "is_option", scope: !3, file: !3, line: 150, type: !224, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!18, !13, !18}
!226 = !{!222, !227}
!227 = !DILocalVariable(name: "only", arg: 2, scope: !223, file: !3, line: 150, type: !18)
!228 = !DILocation(line: 150, column: 18, scope: !223, inlinedAt: !229)
!229 = distinct !DILocation(line: 242, column: 12, scope: !219)
!230 = !DILocation(line: 150, column: 36, scope: !223, inlinedAt: !229)
!231 = !DILocation(line: 152, column: 25, scope: !223, inlinedAt: !229)
!232 = !DILocation(line: 153, column: 4, scope: !223, inlinedAt: !229)
!233 = !DILocation(line: 153, column: 8, scope: !223, inlinedAt: !229)
!234 = !DILocation(line: 153, column: 24, scope: !223, inlinedAt: !229)
!235 = !DILocation(line: 153, column: 60, scope: !223, inlinedAt: !229)
!236 = !DILocation(line: 153, column: 41, scope: !223, inlinedAt: !229)
!237 = !DILocation(line: 153, column: 32, scope: !223, inlinedAt: !229)
!238 = !DILocation(line: 244, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !219, file: !3, line: 243, column: 6)
!240 = !DILocation(line: 245, column: 19, scope: !239)
!241 = distinct !{!241, !242, !243}
!242 = !DILocation(line: 242, column: 4, scope: !219)
!243 = !DILocation(line: 246, column: 6, scope: !219)
!244 = !DILocation(line: 250, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 248, column: 6)
!246 = distinct !DILexicalBlock(scope: !219, file: !3, line: 247, column: 8)
!247 = !DILocation(line: 251, column: 8, scope: !245)
!248 = !DILocation(line: 253, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 253, column: 13)
!250 = !DILocation(line: 253, column: 47, scope: !249)
!251 = !DILocation(line: 253, column: 13, scope: !246)
!252 = !DILocalVariable(name: "argv", arg: 1, scope: !253, file: !3, line: 141, type: !32)
!253 = distinct !DISubprogram(name: "permute", scope: !3, file: !3, line: 141, type: !254, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !32, !18, !18}
!256 = !{!252, !257, !258}
!257 = !DILocalVariable(name: "len1", arg: 2, scope: !253, file: !3, line: 141, type: !18)
!258 = !DILocalVariable(name: "len2", arg: 3, scope: !253, file: !3, line: 141, type: !18)
!259 = !DILocation(line: 141, column: 22, scope: !253, inlinedAt: !260)
!260 = distinct !DILocation(line: 256, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !249, file: !3, line: 254, column: 6)
!262 = !DILocation(line: 141, column: 34, scope: !253, inlinedAt: !260)
!263 = !DILocation(line: 141, column: 44, scope: !253, inlinedAt: !260)
!264 = !DILocalVariable(name: "argv", arg: 1, scope: !265, file: !3, line: 126, type: !12)
!265 = distinct !DISubprogram(name: "reverse_argv_elements", scope: !3, file: !3, line: 126, type: !266, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !12, !18}
!268 = !{!264, !269, !270, !271}
!269 = !DILocalVariable(name: "num", arg: 2, scope: !265, file: !3, line: 126, type: !18)
!270 = !DILocalVariable(name: "i", scope: !265, file: !3, line: 128, type: !18)
!271 = !DILocalVariable(name: "tmp", scope: !265, file: !3, line: 129, type: !13)
!272 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !273)
!273 = distinct !DILocation(line: 143, column: 3, scope: !253, inlinedAt: !260)
!274 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !273)
!275 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !273)
!276 = !DILocation(line: 131, column: 17, scope: !277, inlinedAt: !273)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 131, column: 3)
!278 = distinct !DILexicalBlock(scope: !265, file: !3, line: 131, column: 3)
!279 = !DILocation(line: 131, column: 3, scope: !278, inlinedAt: !273)
!280 = !DILocation(line: 133, column: 13, scope: !281, inlinedAt: !273)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 132, column: 5)
!282 = !DILocation(line: 129, column: 9, scope: !265, inlinedAt: !273)
!283 = !DILocation(line: 134, column: 30, scope: !281, inlinedAt: !273)
!284 = !DILocation(line: 134, column: 17, scope: !281, inlinedAt: !273)
!285 = !DILocation(line: 134, column: 15, scope: !281, inlinedAt: !273)
!286 = !DILocation(line: 135, column: 25, scope: !281, inlinedAt: !273)
!287 = !DILocation(line: 131, column: 32, scope: !277, inlinedAt: !273)
!288 = distinct !{!288, !289, !290}
!289 = !DILocation(line: 131, column: 3, scope: !278)
!290 = !DILocation(line: 136, column: 5, scope: !278)
!291 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !292)
!292 = distinct !DILocation(line: 144, column: 3, scope: !253, inlinedAt: !260)
!293 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !292)
!294 = !DILocation(line: 131, column: 17, scope: !277, inlinedAt: !292)
!295 = !DILocation(line: 131, column: 3, scope: !278, inlinedAt: !292)
!296 = !DILocation(line: 144, column: 47, scope: !253, inlinedAt: !260)
!297 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !292)
!298 = !DILocation(line: 133, column: 13, scope: !281, inlinedAt: !292)
!299 = !DILocation(line: 129, column: 9, scope: !265, inlinedAt: !292)
!300 = !DILocation(line: 134, column: 30, scope: !281, inlinedAt: !292)
!301 = !DILocation(line: 134, column: 17, scope: !281, inlinedAt: !292)
!302 = !DILocation(line: 134, column: 15, scope: !281, inlinedAt: !292)
!303 = !DILocation(line: 135, column: 25, scope: !281, inlinedAt: !292)
!304 = !DILocation(line: 131, column: 32, scope: !277, inlinedAt: !292)
!305 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !306)
!306 = distinct !DILocation(line: 145, column: 3, scope: !253, inlinedAt: !260)
!307 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !306)
!308 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !306)
!309 = !DILocation(line: 257, column: 36, scope: !261)
!310 = !DILocation(line: 257, column: 21, scope: !261)
!311 = !DILocation(line: 258, column: 8, scope: !261)
!312 = !DILocation(line: 262, column: 31, scope: !313)
!313 = distinct !DILexicalBlock(scope: !219, file: !3, line: 262, column: 8)
!314 = !DILocation(line: 262, column: 20, scope: !313)
!315 = !DILocation(line: 150, column: 18, scope: !223, inlinedAt: !316)
!316 = distinct !DILocation(line: 262, column: 9, scope: !313)
!317 = !DILocation(line: 150, column: 36, scope: !223, inlinedAt: !316)
!318 = !DILocation(line: 152, column: 25, scope: !223, inlinedAt: !316)
!319 = !DILocation(line: 153, column: 4, scope: !223, inlinedAt: !316)
!320 = !DILocation(line: 153, column: 8, scope: !223, inlinedAt: !316)
!321 = !DILocation(line: 153, column: 24, scope: !223, inlinedAt: !316)
!322 = !DILocation(line: 153, column: 32, scope: !223, inlinedAt: !316)
!323 = !DILocation(line: 153, column: 36, scope: !223, inlinedAt: !316)
!324 = !DILocation(line: 153, column: 60, scope: !223, inlinedAt: !316)
!325 = !DILocation(line: 153, column: 41, scope: !223, inlinedAt: !316)
!326 = !DILocation(line: 264, column: 40, scope: !327)
!327 = distinct !DILexicalBlock(scope: !313, file: !3, line: 263, column: 6)
!328 = !DILocation(line: 264, column: 21, scope: !327)
!329 = !DILocation(line: 265, column: 22, scope: !327)
!330 = !DILocation(line: 265, column: 29, scope: !327)
!331 = !DILocation(line: 265, column: 8, scope: !327)
!332 = !DILocation(line: 269, column: 31, scope: !333)
!333 = distinct !DILexicalBlock(scope: !219, file: !3, line: 269, column: 8)
!334 = !DILocation(line: 269, column: 20, scope: !333)
!335 = !DILocation(line: 150, column: 18, scope: !223, inlinedAt: !336)
!336 = distinct !DILocation(line: 269, column: 9, scope: !333)
!337 = !DILocation(line: 150, column: 36, scope: !223, inlinedAt: !336)
!338 = !DILocation(line: 152, column: 25, scope: !223, inlinedAt: !336)
!339 = !DILocation(line: 153, column: 4, scope: !223, inlinedAt: !336)
!340 = !DILocation(line: 153, column: 8, scope: !223, inlinedAt: !336)
!341 = !DILocation(line: 153, column: 24, scope: !223, inlinedAt: !336)
!342 = !DILocation(line: 153, column: 32, scope: !223, inlinedAt: !336)
!343 = !DILocation(line: 153, column: 36, scope: !223, inlinedAt: !336)
!344 = !DILocation(line: 153, column: 60, scope: !223, inlinedAt: !336)
!345 = !DILocation(line: 153, column: 41, scope: !223, inlinedAt: !336)
!346 = !DILocation(line: 275, column: 18, scope: !347)
!347 = distinct !DILexicalBlock(scope: !108, file: !3, line: 275, column: 7)
!348 = !DILocation(line: 275, column: 7, scope: !347)
!349 = !DILocation(line: 275, column: 26, scope: !347)
!350 = !DILocation(line: 275, column: 7, scope: !108)
!351 = !DILocation(line: 282, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !108, file: !3, line: 281, column: 7)
!353 = !DILocation(line: 282, column: 11, scope: !352)
!354 = !DILocation(line: 282, column: 48, scope: !352)
!355 = !DILocation(line: 283, column: 4, scope: !352)
!356 = !DILocation(line: 283, column: 8, scope: !352)
!357 = !DILocation(line: 283, column: 13, scope: !352)
!358 = !DILocation(line: 283, column: 27, scope: !352)
!359 = !DILocation(line: 283, column: 16, scope: !352)
!360 = !DILocation(line: 283, column: 38, scope: !352)
!361 = !DILocation(line: 283, column: 47, scope: !352)
!362 = !DILocation(line: 283, column: 56, scope: !352)
!363 = !DILocation(line: 283, column: 65, scope: !352)
!364 = !DILocation(line: 281, column: 7, scope: !108)
!365 = !DILocation(line: 286, column: 30, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 286, column: 11)
!367 = distinct !DILexicalBlock(scope: !352, file: !3, line: 284, column: 5)
!368 = !DILocation(line: 286, column: 19, scope: !366)
!369 = !DILocation(line: 286, column: 11, scope: !366)
!370 = !DILocation(line: 286, column: 48, scope: !366)
!371 = !DILocation(line: 286, column: 11, scope: !367)
!372 = !DILocation(line: 289, column: 57, scope: !367)
!373 = !DILocation(line: 287, column: 17, scope: !366)
!374 = !DILocation(line: 287, column: 2, scope: !366)
!375 = !DILocation(line: 289, column: 41, scope: !367)
!376 = !DILocation(line: 289, column: 30, scope: !367)
!377 = !DILocation(line: 289, column: 49, scope: !367)
!378 = !DILocation(line: 289, column: 22, scope: !367)
!379 = !DILocation(line: 290, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !367, file: !3, line: 290, column: 11)
!381 = !DILocation(line: 0, scope: !380)
!382 = !DILocation(line: 290, column: 11, scope: !367)
!383 = !DILocation(line: 293, column: 26, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 291, column: 2)
!385 = !DILocation(line: 293, column: 18, scope: !384)
!386 = !DILocation(line: 294, column: 30, scope: !384)
!387 = !DILocation(line: 294, column: 19, scope: !384)
!388 = !DILocation(line: 294, column: 38, scope: !384)
!389 = !DILocation(line: 295, column: 38, scope: !384)
!390 = !DILocation(line: 296, column: 2, scope: !384)
!391 = !DILocation(line: 298, column: 32, scope: !380)
!392 = !DILocation(line: 298, column: 30, scope: !380)
!393 = !DILocation(line: 298, column: 60, scope: !380)
!394 = !DILocation(line: 0, scope: !367)
!395 = !DILocation(line: 0, scope: !384)
!396 = !DILocation(line: 299, column: 45, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 299, column: 7)
!398 = distinct !DILexicalBlock(scope: !367, file: !3, line: 299, column: 7)
!399 = !{!400, !65, i64 0}
!400 = !{!"option", !65, i64 0, !71, i64 8, !65, i64 16, !71, i64 24}
!401 = !DILocation(line: 299, column: 50, scope: !397)
!402 = !DILocation(line: 299, column: 7, scope: !398)
!403 = !DILocation(line: 302, column: 36, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 301, column: 8)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 300, column: 2)
!406 = !DILocation(line: 302, column: 20, scope: !404)
!407 = !DILocation(line: 302, column: 9, scope: !404)
!408 = !DILocation(line: 302, column: 28, scope: !404)
!409 = !DILocation(line: 301, column: 8, scope: !404)
!410 = !DILocation(line: 303, column: 22, scope: !404)
!411 = !DILocation(line: 301, column: 8, scope: !405)
!412 = !DILocation(line: 306, column: 54, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 306, column: 12)
!414 = distinct !DILexicalBlock(scope: !404, file: !3, line: 304, column: 6)
!415 = !DILocation(line: 306, column: 27, scope: !413)
!416 = !DILocation(line: 306, column: 24, scope: !413)
!417 = !DILocation(line: 306, column: 12, scope: !414)
!418 = !DILocation(line: 314, column: 23, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 314, column: 9)
!420 = distinct !DILexicalBlock(scope: !413, file: !3, line: 313, column: 3)
!421 = !DILocation(line: 314, column: 9, scope: !420)
!422 = !DILocation(line: 319, column: 19, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 319, column: 13)
!424 = distinct !DILexicalBlock(scope: !419, file: !3, line: 317, column: 7)
!425 = !DILocation(line: 319, column: 13, scope: !423)
!426 = !DILocation(line: 319, column: 13, scope: !424)
!427 = !DILocation(line: 321, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !3, line: 320, column: 4)
!429 = !DILocation(line: 321, column: 22, scope: !428)
!430 = !{!431, !65, i64 24}
!431 = !{!"_reent", !71, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !71, i64 32, !66, i64 36, !71, i64 64, !65, i64 72, !71, i64 80, !65, i64 88, !65, i64 96, !71, i64 104, !65, i64 112, !65, i64 120, !71, i64 128, !65, i64 136, !66, i64 144, !65, i64 504, !432, i64 512, !65, i64 1304, !434, i64 1312, !66, i64 1336}
!432 = !{!"_atexit", !65, i64 0, !71, i64 8, !66, i64 16, !433, i64 272}
!433 = !{!"_on_exit_args", !66, i64 0, !66, i64 256, !71, i64 512, !71, i64 516}
!434 = !{!"_glue", !65, i64 0, !71, i64 8, !65, i64 16}
!435 = !DILocation(line: 321, column: 6, scope: !428)
!436 = !DILocation(line: 322, column: 27, scope: !428)
!437 = !DILocation(line: 322, column: 6, scope: !428)
!438 = !DILocation(line: 323, column: 24, scope: !428)
!439 = !DILocation(line: 323, column: 13, scope: !428)
!440 = !DILocation(line: 323, column: 33, scope: !428)
!441 = !DILocation(line: 323, column: 6, scope: !428)
!442 = !DILocation(line: 324, column: 45, scope: !428)
!443 = !DILocation(line: 324, column: 6, scope: !428)
!444 = !DILocation(line: 325, column: 13, scope: !428)
!445 = !DILocation(line: 325, column: 37, scope: !428)
!446 = !DILocation(line: 325, column: 43, scope: !428)
!447 = !DILocation(line: 325, column: 6, scope: !428)
!448 = !DILocation(line: 326, column: 25, scope: !428)
!449 = !DILocation(line: 326, column: 6, scope: !428)
!450 = !DILocation(line: 327, column: 32, scope: !428)
!451 = !DILocation(line: 327, column: 38, scope: !428)
!452 = !DILocation(line: 327, column: 6, scope: !428)
!453 = !DILocation(line: 328, column: 21, scope: !428)
!454 = !DILocation(line: 328, column: 6, scope: !428)
!455 = !DILocation(line: 329, column: 4, scope: !428)
!456 = !DILocation(line: 330, column: 23, scope: !424)
!457 = !DILocation(line: 330, column: 30, scope: !424)
!458 = !DILocation(line: 330, column: 9, scope: !424)
!459 = !DILocation(line: 299, column: 56, scope: !397)
!460 = distinct !{!460, !402, !461}
!461 = !DILocation(line: 334, column: 2, scope: !398)
!462 = !DILocation(line: 335, column: 25, scope: !463)
!463 = distinct !DILexicalBlock(scope: !367, file: !3, line: 335, column: 11)
!464 = !DILocation(line: 335, column: 11, scope: !367)
!465 = !DILocation(line: 336, column: 12, scope: !463)
!466 = !DILocation(line: 336, column: 36, scope: !463)
!467 = !{!400, !71, i64 8}
!468 = !DILocation(line: 340, column: 25, scope: !469)
!469 = distinct !DILexicalBlock(scope: !108, file: !3, line: 340, column: 7)
!470 = !DILocation(line: 340, column: 21, scope: !469)
!471 = !DILocation(line: 340, column: 38, scope: !469)
!472 = !DILocation(line: 342, column: 42, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 341, column: 5)
!474 = !DILocation(line: 342, column: 31, scope: !473)
!475 = !DILocation(line: 342, column: 56, scope: !473)
!476 = !DILocation(line: 342, column: 12, scope: !473)
!477 = !DILocation(line: 343, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 343, column: 11)
!479 = !DILocation(line: 343, column: 11, scope: !473)
!480 = !DILocation(line: 346, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 346, column: 8)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 344, column: 2)
!483 = !DILocation(line: 346, column: 8, scope: !481)
!484 = !DILocation(line: 346, column: 8, scope: !482)
!485 = !DILocation(line: 348, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !3, line: 347, column: 6)
!487 = !DILocation(line: 348, column: 24, scope: !486)
!488 = !DILocation(line: 348, column: 8, scope: !486)
!489 = !DILocation(line: 349, column: 41, scope: !486)
!490 = !DILocation(line: 349, column: 8, scope: !486)
!491 = !DILocation(line: 350, column: 26, scope: !486)
!492 = !DILocation(line: 350, column: 15, scope: !486)
!493 = !DILocation(line: 350, column: 40, scope: !486)
!494 = !DILocation(line: 350, column: 51, scope: !486)
!495 = !DILocation(line: 350, column: 8, scope: !486)
!496 = !DILocation(line: 351, column: 22, scope: !486)
!497 = !DILocation(line: 351, column: 8, scope: !486)
!498 = !DILocation(line: 352, column: 6, scope: !486)
!499 = !DILocation(line: 353, column: 18, scope: !482)
!500 = !DILocation(line: 354, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !482, file: !3, line: 354, column: 8)
!502 = !DILocation(line: 354, column: 8, scope: !501)
!503 = !DILocation(line: 354, column: 43, scope: !501)
!504 = !DILocation(line: 354, column: 8, scope: !482)
!505 = !DILocation(line: 356, column: 20, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 355, column: 6)
!507 = !DILocation(line: 357, column: 23, scope: !506)
!508 = !DILocation(line: 358, column: 6, scope: !506)
!509 = !DILocation(line: 359, column: 18, scope: !482)
!510 = !DILocation(line: 359, column: 25, scope: !482)
!511 = !DILocation(line: 359, column: 4, scope: !482)
!512 = !DILocation(line: 361, column: 19, scope: !473)
!513 = !DILocation(line: 361, column: 25, scope: !473)
!514 = !DILocation(line: 361, column: 18, scope: !473)
!515 = !DILocation(line: 362, column: 8, scope: !473)
!516 = !DILocation(line: 362, column: 14, scope: !473)
!517 = !DILocation(line: 362, column: 7, scope: !473)
!518 = !DILocation(line: 363, column: 33, scope: !473)
!519 = !DILocation(line: 363, column: 22, scope: !473)
!520 = !DILocation(line: 363, column: 49, scope: !473)
!521 = !DILocation(line: 363, column: 41, scope: !473)
!522 = !DILocation(line: 363, column: 58, scope: !473)
!523 = !DILocation(line: 364, column: 22, scope: !473)
!524 = !DILocation(line: 364, column: 13, scope: !473)
!525 = !DILocation(line: 364, column: 20, scope: !473)
!526 = !DILocation(line: 365, column: 5, scope: !473)
!527 = !DILocation(line: 0, scope: !463)
!528 = !DILocation(line: 369, column: 3, scope: !108)
!529 = !DILocation(line: 372, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 372, column: 11)
!531 = distinct !DILexicalBlock(scope: !108, file: !3, line: 370, column: 5)
!532 = !DILocation(line: 372, column: 25, scope: !530)
!533 = !DILocation(line: 373, column: 14, scope: !530)
!534 = !DILocation(line: 372, column: 11, scope: !531)
!535 = !DILocation(line: 374, column: 23, scope: !531)
!536 = !DILocation(line: 374, column: 37, scope: !531)
!537 = !DILocation(line: 374, column: 22, scope: !531)
!538 = !DILocation(line: 374, column: 13, scope: !531)
!539 = !DILocation(line: 374, column: 20, scope: !531)
!540 = !DILocation(line: 375, column: 22, scope: !531)
!541 = !DILocation(line: 376, column: 7, scope: !531)
!542 = !DILocation(line: 378, column: 11, scope: !543)
!543 = distinct !DILexicalBlock(scope: !531, file: !3, line: 378, column: 11)
!544 = !DILocation(line: 378, column: 25, scope: !543)
!545 = !DILocation(line: 379, column: 14, scope: !543)
!546 = !DILocation(line: 378, column: 11, scope: !531)
!547 = !DILocation(line: 380, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !531, file: !3, line: 380, column: 11)
!549 = !DILocation(line: 380, column: 25, scope: !548)
!550 = !DILocation(line: 380, column: 11, scope: !531)
!551 = !DILocation(line: 382, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 381, column: 2)
!553 = !DILocation(line: 382, column: 17, scope: !552)
!554 = !DILocation(line: 383, column: 19, scope: !552)
!555 = !DILocation(line: 384, column: 2, scope: !552)
!556 = !DILocation(line: 385, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !3, line: 385, column: 16)
!558 = !DILocation(line: 385, column: 29, scope: !557)
!559 = !DILocation(line: 385, column: 33, scope: !557)
!560 = !DILocation(line: 385, column: 16, scope: !548)
!561 = !DILocation(line: 387, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 387, column: 8)
!563 = distinct !DILexicalBlock(scope: !557, file: !3, line: 386, column: 2)
!564 = !DILocation(line: 387, column: 8, scope: !562)
!565 = !DILocation(line: 387, column: 8, scope: !563)
!566 = !DILocation(line: 389, column: 15, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 388, column: 6)
!568 = !DILocation(line: 389, column: 24, scope: !567)
!569 = !DILocation(line: 389, column: 8, scope: !567)
!570 = !DILocation(line: 390, column: 52, scope: !567)
!571 = !DILocation(line: 390, column: 8, scope: !567)
!572 = !DILocation(line: 391, column: 26, scope: !573)
!573 = distinct !DILexicalBlock(scope: !567, file: !3, line: 391, column: 12)
!574 = !DILocation(line: 391, column: 12, scope: !567)
!575 = !DILocation(line: 393, column: 17, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 392, column: 3)
!577 = !DILocation(line: 393, column: 5, scope: !576)
!578 = !DILocation(line: 394, column: 12, scope: !576)
!579 = !DILocation(line: 394, column: 36, scope: !576)
!580 = !DILocation(line: 394, column: 42, scope: !576)
!581 = !DILocation(line: 394, column: 5, scope: !576)
!582 = !DILocation(line: 395, column: 20, scope: !576)
!583 = !DILocation(line: 396, column: 3, scope: !576)
!584 = !DILocation(line: 399, column: 12, scope: !585)
!585 = distinct !DILexicalBlock(scope: !573, file: !3, line: 398, column: 3)
!586 = !DILocation(line: 399, column: 17, scope: !585)
!587 = !DILocation(line: 399, column: 5, scope: !585)
!588 = !DILocation(line: 400, column: 20, scope: !585)
!589 = !DILocation(line: 400, column: 11, scope: !585)
!590 = !DILocation(line: 400, column: 18, scope: !585)
!591 = !DILocation(line: 402, column: 22, scope: !567)
!592 = !DILocation(line: 402, column: 8, scope: !567)
!593 = !DILocation(line: 404, column: 16, scope: !563)
!594 = !DILocation(line: 403, column: 6, scope: !567)
!595 = !DILocation(line: 405, column: 11, scope: !563)
!596 = !DILocation(line: 405, column: 4, scope: !563)
!597 = !DILocation(line: 409, column: 19, scope: !598)
!598 = distinct !DILexicalBlock(scope: !557, file: !3, line: 408, column: 2)
!599 = !DILocation(line: 409, column: 17, scope: !598)
!600 = !DILocation(line: 411, column: 19, scope: !598)
!601 = !DILocation(line: 416, column: 11, scope: !531)
!602 = !DILocation(line: 418, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 417, column: 2)
!604 = distinct !DILexicalBlock(scope: !531, file: !3, line: 416, column: 11)
!605 = !DILocation(line: 419, column: 19, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 419, column: 8)
!607 = !DILocation(line: 419, column: 8, scope: !606)
!608 = !DILocation(line: 419, column: 43, scope: !606)
!609 = !DILocation(line: 419, column: 8, scope: !603)
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocation(line: 424, column: 13, scope: !531)
!612 = !DILocation(line: 424, column: 20, scope: !531)
!613 = !DILocation(line: 425, column: 7, scope: !531)
!614 = !DILocation(line: 0, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 434, column: 12)
!616 = distinct !DILexicalBlock(scope: !108, file: !3, line: 429, column: 7)
!617 = !DILocation(line: 429, column: 16, scope: !616)
!618 = !DILocation(line: 429, column: 27, scope: !616)
!619 = !DILocation(line: 429, column: 45, scope: !616)
!620 = !DILocation(line: 429, column: 65, scope: !616)
!621 = !DILocation(line: 429, column: 50, scope: !616)
!622 = !DILocation(line: 431, column: 21, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !3, line: 430, column: 5)
!624 = !DILocation(line: 431, column: 52, scope: !623)
!625 = !DILocation(line: 141, column: 22, scope: !253, inlinedAt: !626)
!626 = distinct !DILocation(line: 431, column: 7, scope: !623)
!627 = !DILocation(line: 141, column: 34, scope: !253, inlinedAt: !626)
!628 = !DILocation(line: 141, column: 44, scope: !253, inlinedAt: !626)
!629 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !630)
!630 = distinct !DILocation(line: 143, column: 3, scope: !253, inlinedAt: !626)
!631 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !630)
!632 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !630)
!633 = !DILocation(line: 131, column: 17, scope: !277, inlinedAt: !630)
!634 = !DILocation(line: 131, column: 3, scope: !278, inlinedAt: !630)
!635 = !DILocation(line: 133, column: 13, scope: !281, inlinedAt: !630)
!636 = !DILocation(line: 129, column: 9, scope: !265, inlinedAt: !630)
!637 = !DILocation(line: 134, column: 30, scope: !281, inlinedAt: !630)
!638 = !DILocation(line: 134, column: 17, scope: !281, inlinedAt: !630)
!639 = !DILocation(line: 134, column: 15, scope: !281, inlinedAt: !630)
!640 = !DILocation(line: 135, column: 25, scope: !281, inlinedAt: !630)
!641 = !DILocation(line: 131, column: 32, scope: !277, inlinedAt: !630)
!642 = !DILocation(line: 144, column: 47, scope: !253, inlinedAt: !626)
!643 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !644)
!644 = distinct !DILocation(line: 144, column: 3, scope: !253, inlinedAt: !626)
!645 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !644)
!646 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !644)
!647 = !DILocation(line: 131, column: 17, scope: !277, inlinedAt: !644)
!648 = !DILocation(line: 131, column: 3, scope: !278, inlinedAt: !644)
!649 = !DILocation(line: 133, column: 13, scope: !281, inlinedAt: !644)
!650 = !DILocation(line: 129, column: 9, scope: !265, inlinedAt: !644)
!651 = !DILocation(line: 134, column: 30, scope: !281, inlinedAt: !644)
!652 = !DILocation(line: 134, column: 17, scope: !281, inlinedAt: !644)
!653 = !DILocation(line: 134, column: 15, scope: !281, inlinedAt: !644)
!654 = !DILocation(line: 135, column: 25, scope: !281, inlinedAt: !644)
!655 = !DILocation(line: 131, column: 32, scope: !277, inlinedAt: !644)
!656 = !DILocation(line: 126, column: 31, scope: !265, inlinedAt: !657)
!657 = distinct !DILocation(line: 145, column: 3, scope: !253, inlinedAt: !626)
!658 = !DILocation(line: 126, column: 41, scope: !265, inlinedAt: !657)
!659 = !DILocation(line: 128, column: 7, scope: !265, inlinedAt: !657)
!660 = !DILocation(line: 131, column: 17, scope: !277, inlinedAt: !657)
!661 = !DILocation(line: 131, column: 3, scope: !278, inlinedAt: !657)
!662 = !DILocation(line: 133, column: 13, scope: !281, inlinedAt: !657)
!663 = !DILocation(line: 129, column: 9, scope: !265, inlinedAt: !657)
!664 = !DILocation(line: 134, column: 17, scope: !281, inlinedAt: !657)
!665 = !DILocation(line: 134, column: 15, scope: !281, inlinedAt: !657)
!666 = !DILocation(line: 135, column: 25, scope: !281, inlinedAt: !657)
!667 = !DILocation(line: 432, column: 22, scope: !623)
!668 = !DILocation(line: 433, column: 5, scope: !623)
!669 = !DILocation(line: 434, column: 27, scope: !615)
!670 = !DILocation(line: 434, column: 12, scope: !616)
!671 = !DILocation(line: 435, column: 26, scope: !615)
!672 = !DILocation(line: 435, column: 33, scope: !615)
!673 = !DILocation(line: 435, column: 37, scope: !615)
!674 = !DILocation(line: 435, column: 5, scope: !615)
!675 = !DILocation(line: 0, scope: !623)
!676 = !DILocation(line: 438, column: 21, scope: !677)
!677 = distinct !DILexicalBlock(scope: !108, file: !3, line: 438, column: 7)
!678 = !DILocation(line: 438, column: 7, scope: !108)
!679 = !DILocation(line: 440, column: 19, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 440, column: 11)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 439, column: 5)
!682 = !DILocation(line: 440, column: 11, scope: !681)
!683 = !DILocation(line: 441, column: 11, scope: !680)
!684 = !DILocation(line: 441, column: 2, scope: !680)
!685 = !DILocation(line: 442, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !3, line: 442, column: 11)
!687 = !DILocation(line: 442, column: 35, scope: !686)
!688 = !{!400, !65, i64 16}
!689 = !DILocation(line: 442, column: 40, scope: !686)
!690 = !DILocation(line: 0, scope: !686)
!691 = !{!400, !71, i64 24}
!692 = !DILocation(line: 442, column: 11, scope: !681)
!693 = !DILocation(line: 444, column: 36, scope: !694)
!694 = distinct !DILexicalBlock(scope: !686, file: !3, line: 443, column: 2)
!695 = !DILocation(line: 445, column: 4, scope: !694)
!696 = !DILocation(line: 451, column: 18, scope: !677)
!697 = !DILocation(line: 451, column: 5, scope: !677)
!698 = !DILocation(line: 0, scope: !333)
!699 = !DILocation(line: 452, column: 1, scope: !108)
!700 = distinct !DISubprogram(name: "getopt_long", scope: !3, file: !3, line: 467, type: !701, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!18, !18, !32, !34, !111, !118}
!703 = !{!704, !705, !706, !707, !708, !709, !710}
!704 = !DILocalVariable(name: "argc", arg: 1, scope: !700, file: !3, line: 467, type: !18)
!705 = !DILocalVariable(name: "argv", arg: 2, scope: !700, file: !3, line: 467, type: !32)
!706 = !DILocalVariable(name: "shortopts", arg: 3, scope: !700, file: !3, line: 467, type: !34)
!707 = !DILocalVariable(name: "longopts", arg: 4, scope: !700, file: !3, line: 468, type: !111)
!708 = !DILocalVariable(name: "longind", arg: 5, scope: !700, file: !3, line: 468, type: !118)
!709 = !DILocalVariable(name: "data", scope: !700, file: !3, line: 470, type: !41)
!710 = !DILocalVariable(name: "r", scope: !700, file: !3, line: 471, type: !18)
!711 = !DILocation(line: 467, column: 18, scope: !700)
!712 = !DILocation(line: 467, column: 36, scope: !700)
!713 = !DILocation(line: 467, column: 56, scope: !700)
!714 = !DILocation(line: 468, column: 28, scope: !700)
!715 = !DILocation(line: 468, column: 43, scope: !700)
!716 = !DILocation(line: 470, column: 3, scope: !700)
!717 = !DILocation(line: 470, column: 22, scope: !700)
!718 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !719)
!719 = distinct !DILocation(line: 473, column: 3, scope: !700)
!720 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !719)
!721 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !719)
!722 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !719)
!723 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !719)
!724 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !719)
!725 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !719)
!726 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !719)
!727 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !719)
!728 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !719)
!729 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !719)
!730 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !719)
!731 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !719)
!732 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !719)
!733 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !719)
!734 = !DILocation(line: 474, column: 7, scope: !700)
!735 = !DILocation(line: 471, column: 7, scope: !700)
!736 = !DILocation(line: 171, column: 36, scope: !92, inlinedAt: !737)
!737 = distinct !DILocation(line: 475, column: 3, scope: !700)
!738 = !DILocation(line: 173, column: 18, scope: !92, inlinedAt: !737)
!739 = !DILocation(line: 173, column: 10, scope: !92, inlinedAt: !737)
!740 = !DILocation(line: 174, column: 18, scope: !92, inlinedAt: !737)
!741 = !DILocation(line: 174, column: 10, scope: !92, inlinedAt: !737)
!742 = !DILocation(line: 175, column: 18, scope: !92, inlinedAt: !737)
!743 = !DILocation(line: 175, column: 10, scope: !92, inlinedAt: !737)
!744 = !DILocation(line: 176, column: 18, scope: !92, inlinedAt: !737)
!745 = !DILocation(line: 176, column: 10, scope: !92, inlinedAt: !737)
!746 = !DILocation(line: 177, column: 20, scope: !92, inlinedAt: !737)
!747 = !DILocation(line: 177, column: 12, scope: !92, inlinedAt: !737)
!748 = !DILocation(line: 477, column: 1, scope: !700)
!749 = !DILocation(line: 476, column: 3, scope: !700)
!750 = distinct !DISubprogram(name: "getopt_long_only", scope: !3, file: !3, line: 480, type: !701, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758}
!752 = !DILocalVariable(name: "argc", arg: 1, scope: !750, file: !3, line: 480, type: !18)
!753 = !DILocalVariable(name: "argv", arg: 2, scope: !750, file: !3, line: 480, type: !32)
!754 = !DILocalVariable(name: "shortopts", arg: 3, scope: !750, file: !3, line: 480, type: !34)
!755 = !DILocalVariable(name: "longopts", arg: 4, scope: !750, file: !3, line: 481, type: !111)
!756 = !DILocalVariable(name: "longind", arg: 5, scope: !750, file: !3, line: 481, type: !118)
!757 = !DILocalVariable(name: "data", scope: !750, file: !3, line: 483, type: !41)
!758 = !DILocalVariable(name: "r", scope: !750, file: !3, line: 484, type: !18)
!759 = !DILocation(line: 480, column: 23, scope: !750)
!760 = !DILocation(line: 480, column: 41, scope: !750)
!761 = !DILocation(line: 480, column: 61, scope: !750)
!762 = !DILocation(line: 481, column: 26, scope: !750)
!763 = !DILocation(line: 481, column: 41, scope: !750)
!764 = !DILocation(line: 483, column: 3, scope: !750)
!765 = !DILocation(line: 483, column: 22, scope: !750)
!766 = !DILocation(line: 159, column: 35, scope: !56, inlinedAt: !767)
!767 = distinct !DILocation(line: 486, column: 3, scope: !750)
!768 = !DILocation(line: 161, column: 18, scope: !56, inlinedAt: !767)
!769 = !DILocation(line: 161, column: 16, scope: !56, inlinedAt: !767)
!770 = !DILocation(line: 162, column: 18, scope: !56, inlinedAt: !767)
!771 = !DILocation(line: 162, column: 9, scope: !56, inlinedAt: !767)
!772 = !DILocation(line: 162, column: 16, scope: !56, inlinedAt: !767)
!773 = !DILocation(line: 163, column: 18, scope: !56, inlinedAt: !767)
!774 = !DILocation(line: 163, column: 9, scope: !56, inlinedAt: !767)
!775 = !DILocation(line: 163, column: 16, scope: !56, inlinedAt: !767)
!776 = !DILocation(line: 164, column: 18, scope: !56, inlinedAt: !767)
!777 = !DILocation(line: 164, column: 9, scope: !56, inlinedAt: !767)
!778 = !DILocation(line: 164, column: 16, scope: !56, inlinedAt: !767)
!779 = !DILocation(line: 165, column: 20, scope: !56, inlinedAt: !767)
!780 = !DILocation(line: 165, column: 9, scope: !56, inlinedAt: !767)
!781 = !DILocation(line: 165, column: 18, scope: !56, inlinedAt: !767)
!782 = !DILocation(line: 487, column: 7, scope: !750)
!783 = !DILocation(line: 484, column: 7, scope: !750)
!784 = !DILocation(line: 171, column: 36, scope: !92, inlinedAt: !785)
!785 = distinct !DILocation(line: 488, column: 3, scope: !750)
!786 = !DILocation(line: 173, column: 18, scope: !92, inlinedAt: !785)
!787 = !DILocation(line: 173, column: 10, scope: !92, inlinedAt: !785)
!788 = !DILocation(line: 174, column: 18, scope: !92, inlinedAt: !785)
!789 = !DILocation(line: 174, column: 10, scope: !92, inlinedAt: !785)
!790 = !DILocation(line: 175, column: 18, scope: !92, inlinedAt: !785)
!791 = !DILocation(line: 175, column: 10, scope: !92, inlinedAt: !785)
!792 = !DILocation(line: 176, column: 18, scope: !92, inlinedAt: !785)
!793 = !DILocation(line: 176, column: 10, scope: !92, inlinedAt: !785)
!794 = !DILocation(line: 177, column: 20, scope: !92, inlinedAt: !785)
!795 = !DILocation(line: 177, column: 12, scope: !92, inlinedAt: !785)
!796 = !DILocation(line: 490, column: 1, scope: !750)
!797 = !DILocation(line: 489, column: 3, scope: !750)
!798 = distinct !DISubprogram(name: "__getopt_r", scope: !3, file: !3, line: 493, type: !799, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!18, !18, !32, !34, !59}
!801 = !{!802, !803, !804, !805}
!802 = !DILocalVariable(name: "argc", arg: 1, scope: !798, file: !3, line: 493, type: !18)
!803 = !DILocalVariable(name: "argv", arg: 2, scope: !798, file: !3, line: 493, type: !32)
!804 = !DILocalVariable(name: "optstring", arg: 3, scope: !798, file: !3, line: 493, type: !34)
!805 = !DILocalVariable(name: "data", arg: 4, scope: !798, file: !3, line: 494, type: !59)
!806 = !DILocation(line: 493, column: 17, scope: !798)
!807 = !DILocation(line: 493, column: 35, scope: !798)
!808 = !DILocation(line: 493, column: 55, scope: !798)
!809 = !DILocation(line: 494, column: 26, scope: !798)
!810 = !DILocation(line: 496, column: 10, scope: !798)
!811 = !DILocation(line: 496, column: 3, scope: !798)
!812 = distinct !DISubprogram(name: "__getopt_long_r", scope: !3, file: !3, line: 500, type: !813, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!18, !18, !32, !34, !111, !118, !59}
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DILocalVariable(name: "argc", arg: 1, scope: !812, file: !3, line: 500, type: !18)
!817 = !DILocalVariable(name: "argv", arg: 2, scope: !812, file: !3, line: 500, type: !32)
!818 = !DILocalVariable(name: "shortopts", arg: 3, scope: !812, file: !3, line: 500, type: !34)
!819 = !DILocalVariable(name: "longopts", arg: 4, scope: !812, file: !3, line: 501, type: !111)
!820 = !DILocalVariable(name: "longind", arg: 5, scope: !812, file: !3, line: 501, type: !118)
!821 = !DILocalVariable(name: "data", arg: 6, scope: !812, file: !3, line: 502, type: !59)
!822 = !DILocation(line: 500, column: 22, scope: !812)
!823 = !DILocation(line: 500, column: 40, scope: !812)
!824 = !DILocation(line: 500, column: 60, scope: !812)
!825 = !DILocation(line: 501, column: 25, scope: !812)
!826 = !DILocation(line: 501, column: 40, scope: !812)
!827 = !DILocation(line: 502, column: 24, scope: !812)
!828 = !DILocation(line: 504, column: 10, scope: !812)
!829 = !DILocation(line: 504, column: 3, scope: !812)
!830 = distinct !DISubprogram(name: "__getopt_long_only_r", scope: !3, file: !3, line: 508, type: !813, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !831)
!831 = !{!832, !833, !834, !835, !836, !837}
!832 = !DILocalVariable(name: "argc", arg: 1, scope: !830, file: !3, line: 508, type: !18)
!833 = !DILocalVariable(name: "argv", arg: 2, scope: !830, file: !3, line: 508, type: !32)
!834 = !DILocalVariable(name: "shortopts", arg: 3, scope: !830, file: !3, line: 508, type: !34)
!835 = !DILocalVariable(name: "longopts", arg: 4, scope: !830, file: !3, line: 509, type: !111)
!836 = !DILocalVariable(name: "longind", arg: 5, scope: !830, file: !3, line: 509, type: !118)
!837 = !DILocalVariable(name: "data", arg: 6, scope: !830, file: !3, line: 510, type: !59)
!838 = !DILocation(line: 508, column: 27, scope: !830)
!839 = !DILocation(line: 508, column: 45, scope: !830)
!840 = !DILocation(line: 508, column: 65, scope: !830)
!841 = !DILocation(line: 509, column: 30, scope: !830)
!842 = !DILocation(line: 509, column: 45, scope: !830)
!843 = !DILocation(line: 510, column: 29, scope: !830)
!844 = !DILocation(line: 512, column: 10, scope: !830)
!845 = !DILocation(line: 512, column: 3, scope: !830)
