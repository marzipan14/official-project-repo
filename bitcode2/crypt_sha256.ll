; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha256.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha256.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha256 = type { i64, [8 x i32], [64 x i8] }

@__crypt_sha256.testkey = internal constant [18 x i8] c"Xy01@#\01\02\80\7F\FF\0D\0A\81\09 !\00", align 16, !dbg !0
@__crypt_sha256.testsetting = internal constant [30 x i8] c"$5$rounds=1234$abc0123456789$\00", align 16, !dbg !20
@__crypt_sha256.testhash = internal constant [73 x i8] c"$5$rounds=1234$abc0123456789$3VfDjPt05VHFn47C/ojFZ6KRPYrOjj1lLbH.dkF3bZ6\00", align 16, !dbg !25
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"$5$\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rounds=\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rounds=%u$\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"$5$%s%.*s$\00", align 1
@sha256crypt.perm = internal unnamed_addr constant [10 x [3 x i8]] [[3 x i8] c"\00\0A\14", [3 x i8] c"\15\01\0B", [3 x i8] c"\0C\16\02", [3 x i8] c"\03\0D\17", [3 x i8] c"\18\04\0E", [3 x i8] c"\0F\19\05", [3 x i8] c"\06\10\1A", [3 x i8] c"\1B\07\11", [3 x i8] c"\12\1C\08", [3 x i8] c"\09\13\1D"], align 16, !dbg !30
@K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !dbg !80
@b64 = internal unnamed_addr constant [65 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 16, !dbg !84
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__crypt_sha256(i8*, i8*, i8*) local_unnamed_addr #0 !dbg !2 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #4, !dbg !109
  %6 = tail call fastcc i8* @sha256crypt(i8* %0, i8* %1, i8* %2) #5, !dbg !111
  %7 = call fastcc i8* @sha256crypt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__crypt_sha256.testkey, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__crypt_sha256.testsetting, i64 0, i64 0), i8* nonnull %5) #5, !dbg !113
  %8 = icmp eq i8* %6, null, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %8, label %15, label %9, !dbg !117

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8* %7, %5, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %10, label %11, label %15, !dbg !119

; <label>:11:                                     ; preds = %9
  %12 = call i32 @memcmp(i8* nonnull %5, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__crypt_sha256.testhash, i64 0, i64 0), i64 73) #6, !dbg !120
  %13 = icmp eq i32 %12, 0, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %14 = select i1 %13, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), !dbg !121
  br label %15, !dbg !121

; <label>:15:                                     ; preds = %11, %3, %9
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %3 ], [ %14, %11 ], !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #4, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  ret i8* %16, !dbg !124
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @sha256crypt(i8*, i8*, i8*) unnamed_addr #0 !dbg !32 {
  %4 = alloca %struct.sha256, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = bitcast %struct.sha256* %4 to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %10) #4, !dbg !128
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #4, !dbg !129
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #4, !dbg !129
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #4, !dbg !129
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %14) #4, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 20, i1 false), !dbg !134
  %15 = tail call i64 @strnlen(i8* %0, i64 257) #6, !dbg !135
  %16 = trunc i64 %15 to i32, !dbg !135
  %17 = icmp ugt i32 %16, 256, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br i1 %17, label %257, label %18, !dbg !139

; <label>:18:                                     ; preds = %3
  %19 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #6, !dbg !140
  %20 = icmp eq i32 %19, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %20, label %21, label %257, !dbg !143

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !144
  %23 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7) #6, !dbg !147
  %24 = icmp eq i32 %23, 0, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %24, label %25, label %52, !dbg !149

; <label>:25:                                     ; preds = %21
  %26 = bitcast i8** %9 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !150
  %27 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !151
  %28 = tail call i8* @__locale_ctype_ptr() #6, !dbg !152
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !152
  %30 = load i8, i8* %27, align 1, !dbg !152, !tbaa !154
  %31 = sext i8 %30 to i64, !dbg !152
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !152
  %33 = load i8, i8* %32, align 1, !dbg !152, !tbaa !154
  %34 = and i8 %33, 4, !dbg !152
  %35 = icmp eq i8 %34, 0, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %35, label %48, label %36, !dbg !157

; <label>:36:                                     ; preds = %25
  %37 = call i64 @strtoul(i8* nonnull %27, i8** nonnull %9, i32 10) #6, !dbg !159
  %38 = load i8*, i8** %9, align 8, !dbg !161, !tbaa !163
  %39 = load i8, i8* %38, align 1, !dbg !165, !tbaa !154
  %40 = icmp eq i8 %39, 36, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br i1 %40, label %41, label %48, !dbg !167

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !168
  %43 = icmp ult i64 %37, 1000, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %43, label %49, label %44, !dbg !171

; <label>:44:                                     ; preds = %41
  %45 = icmp ugt i64 %37, 9999999, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br i1 %45, label %48, label %46, !dbg !174

; <label>:46:                                     ; preds = %44
  %47 = trunc i64 %37 to i32, !dbg !175
  br label %49

; <label>:48:                                     ; preds = %44, %36, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !177
  br label %257

; <label>:49:                                     ; preds = %41, %46
  %50 = phi i32 [ %47, %46 ], [ 1000, %41 ], !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %50) #6, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %52

; <label>:52:                                     ; preds = %49, %21
  %53 = phi i32 [ %50, %49 ], [ 5000, %21 ], !dbg !180
  %54 = phi i8* [ %42, %49 ], [ %22, %21 ], !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br label %55, !dbg !185

; <label>:55:                                     ; preds = %52, %67
  %56 = phi i32 [ 0, %52 ], [ %68, %67 ]
  %57 = zext i32 %56 to i64, !dbg !187
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !187
  %59 = load i8, i8* %58, align 1, !dbg !187, !tbaa !154
  %60 = icmp eq i8 %59, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %60, label %70, label %61, !dbg !188

; <label>:61:                                     ; preds = %55
  %62 = icmp eq i8 %59, 36, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %62, label %70, label %63, !dbg !190

; <label>:63:                                     ; preds = %61
  %64 = icmp eq i8 %59, 10, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %64, label %257, label %65, !dbg !193

; <label>:65:                                     ; preds = %63
  %66 = icmp eq i8 %59, 58, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  br i1 %66, label %257, label %67, !dbg !195

; <label>:67:                                     ; preds = %65
  %68 = add nuw nsw i32 %56, 1, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  %69 = icmp ult i32 %68, 16, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %69, label %55, label %70, !dbg !185, !llvm.loop !199

; <label>:70:                                     ; preds = %61, %55, %67
  %71 = phi i32 [ %68, %67 ], [ %56, %55 ], [ %56, %61 ]
  %72 = zext i32 %71 to i64, !dbg !201
  %73 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 0, !dbg !212
  store i64 0, i64* %73, align 8, !dbg !213, !tbaa !214
  %74 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 0, !dbg !217
  %75 = bitcast i32* %74 to <4 x i32>*, !dbg !218
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %75, align 8, !dbg !218, !tbaa !219
  %76 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 4, !dbg !221
  %77 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 5, !dbg !222
  %78 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 6, !dbg !223
  %79 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 7, !dbg !224
  %80 = bitcast i32* %76 to <4 x i32>*, !dbg !225
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %80, align 8, !dbg !225, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  %81 = and i64 %15, 4294967295, !dbg !227
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %81) #5, !dbg !228
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %72) #5, !dbg !229
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %81) #5, !dbg !230
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !231
  store i64 0, i64* %73, align 8, !dbg !234, !tbaa !214
  %82 = bitcast i32* %74 to <4 x i32>*, !dbg !235
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %82, align 8, !dbg !235, !tbaa !219
  store i32 1359893119, i32* %76, align 8, !dbg !236, !tbaa !219
  store i32 -1694144372, i32* %77, align 4, !dbg !237, !tbaa !219
  store i32 528734635, i32* %78, align 8, !dbg !238, !tbaa !219
  store i32 1541459225, i32* %79, align 4, !dbg !239, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %81) #5, !dbg !241
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %72) #5, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  %83 = icmp ugt i32 %16, 32, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %83, label %84, label %95, !dbg !262

; <label>:84:                                     ; preds = %70
  %85 = add i64 %15, 4294967263, !dbg !263
  br label %86, !dbg !263

; <label>:86:                                     ; preds = %86, %84
  %87 = phi i32 [ %88, %86 ], [ %16, %84 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #6, !dbg !263
  %88 = add i32 %87, -32, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  %89 = icmp ugt i32 %88, 32, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %89, label %86, label %90, !dbg !262, !llvm.loop !266

; <label>:90:                                     ; preds = %86
  %91 = and i64 %85, 4294967264, !dbg !263
  %92 = add i64 %15, 4294967264, !dbg !263
  %93 = sub i64 %92, %91, !dbg !263
  %94 = and i64 %93, 4294967295, !dbg !269
  br label %95, !dbg !269

; <label>:95:                                     ; preds = %70, %90
  %96 = phi i64 [ %81, %70 ], [ %94, %90 ], !dbg !269
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 %96) #6, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %97 = icmp eq i32 %16, 0, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %97, label %114, label %98, !dbg !276

; <label>:98:                                     ; preds = %95, %104
  %99 = phi i32 [ %105, %104 ], [ %16, %95 ]
  %100 = and i32 %99, 1, !dbg !277
  %101 = icmp eq i32 %100, 0, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %101, label %103, label %102, !dbg !279

; <label>:102:                                    ; preds = %98
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !280
  br label %104, !dbg !280

; <label>:103:                                    ; preds = %98
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %81) #5, !dbg !281
  br label %104

; <label>:104:                                    ; preds = %102, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %105 = lshr i32 %99, 1, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %106 = icmp eq i32 %105, 0, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %106, label %107, label %98, !dbg !276, !llvm.loop !284

; <label>:107:                                    ; preds = %104
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !286
  store i64 0, i64* %73, align 8, !dbg !289, !tbaa !214
  %108 = bitcast i32* %74 to <4 x i32>*, !dbg !290
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %108, align 8, !dbg !290, !tbaa !219
  %109 = bitcast i32* %76 to <4 x i32>*, !dbg !291
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %109, align 8, !dbg !291, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %97, label %117, label %110, !dbg !295

; <label>:110:                                    ; preds = %107, %110
  %111 = phi i32 [ %112, %110 ], [ 0, %107 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %81) #5, !dbg !296
  %112 = add nuw i32 %111, 1, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %113 = icmp eq i32 %112, %16, !dbg !300
  br i1 %113, label %117, label %110, !dbg !295, !llvm.loop !301

; <label>:114:                                    ; preds = %95
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !286
  store i64 0, i64* %73, align 8, !dbg !289, !tbaa !214
  %115 = bitcast i32* %74 to <4 x i32>*, !dbg !290
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %115, align 8, !dbg !290, !tbaa !219
  %116 = bitcast i32* %76 to <4 x i32>*, !dbg !291
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %116, align 8, !dbg !291, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br label %117

; <label>:117:                                    ; preds = %110, %114, %107
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %12) #5, !dbg !303
  store i64 0, i64* %73, align 8, !dbg !306, !tbaa !214
  %118 = bitcast i32* %74 to <4 x i32>*, !dbg !307
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %118, align 8, !dbg !307, !tbaa !219
  %119 = bitcast i32* %76 to <4 x i32>*, !dbg !308
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %119, align 8, !dbg !308, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br label %120, !dbg !312

; <label>:120:                                    ; preds = %117, %120
  %121 = phi i32 [ 0, %117 ], [ %122, %120 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %54, i64 %72) #5, !dbg !313
  %122 = add nuw nsw i32 %121, 1, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  %123 = load i8, i8* %11, align 16, !dbg !317, !tbaa !154
  %124 = zext i8 %123 to i32, !dbg !317
  %125 = add nuw nsw i32 %124, 16, !dbg !318
  %126 = icmp ult i32 %122, %125, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %126, label %120, label %127, !dbg !312, !llvm.loop !320

; <label>:127:                                    ; preds = %120
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %13) #5, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %128 = icmp eq i32 %53, 0, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %128, label %177, label %129, !dbg !327

; <label>:129:                                    ; preds = %127
  %130 = add i64 %15, 4294967263
  %131 = and i64 %130, 4294967264
  %132 = add i64 %15, 4294967264
  %133 = sub i64 %132, %131
  %134 = and i64 %133, 4294967295
  %135 = and i64 %133, 4294967295
  %136 = and i64 %133, 4294967295
  %137 = bitcast i32* %74 to <4 x i32>*
  %138 = bitcast i32* %76 to <4 x i32>*
  br label %139, !dbg !327

; <label>:139:                                    ; preds = %174, %129
  %140 = phi i32 [ 0, %129 ], [ %175, %174 ]
  store i64 0, i64* %73, align 8, !dbg !331, !tbaa !214
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %137, align 8, !dbg !332, !tbaa !219
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %138, align 8, !dbg !333, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  %141 = and i32 %140, 1, !dbg !335
  %142 = icmp ne i32 %141, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %142, label %143, label %150, !dbg !337

; <label>:143:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %83, label %144, label %148, !dbg !344

; <label>:144:                                    ; preds = %143, %144
  %145 = phi i32 [ %146, %144 ], [ %16, %143 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !345
  %146 = add i32 %145, -32, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  %147 = icmp ugt i32 %146, 32, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %147, label %144, label %148, !dbg !344, !llvm.loop !266

; <label>:148:                                    ; preds = %144, %143
  %149 = phi i64 [ %81, %143 ], [ %134, %144 ], !dbg !349
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %149) #6, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br label %151, !dbg !352

; <label>:150:                                    ; preds = %139
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !353
  br label %151

; <label>:151:                                    ; preds = %150, %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %152 = urem i32 %140, 3, !dbg !354
  %153 = icmp eq i32 %152, 0, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %153, label %155, label %154, !dbg !356

; <label>:154:                                    ; preds = %151
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %13, i64 %72) #5, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br label %155, !dbg !357

; <label>:155:                                    ; preds = %151, %154
  %156 = urem i32 %140, 7, !dbg !358
  %157 = icmp eq i32 %156, 0, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %157, label %165, label %158, !dbg !360

; <label>:158:                                    ; preds = %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %83, label %159, label %163, !dbg !367

; <label>:159:                                    ; preds = %158, %159
  %160 = phi i32 [ %161, %159 ], [ %16, %158 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !368
  %161 = add i32 %160, -32, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  %162 = icmp ugt i32 %161, 32, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %162, label %159, label %163, !dbg !367, !llvm.loop !266

; <label>:163:                                    ; preds = %159, %158
  %164 = phi i64 [ %81, %158 ], [ %135, %159 ], !dbg !372
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %164) #6, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br label %165, !dbg !375

; <label>:165:                                    ; preds = %155, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %142, label %166, label %167, !dbg !376

; <label>:166:                                    ; preds = %165
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !377
  br label %174, !dbg !377

; <label>:167:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %83, label %168, label %172, !dbg !385

; <label>:168:                                    ; preds = %167, %168
  %169 = phi i32 [ %170, %168 ], [ %16, %167 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !386
  %170 = add i32 %169, -32, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %171 = icmp ugt i32 %170, 32, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %171, label %168, label %172, !dbg !385, !llvm.loop !266

; <label>:172:                                    ; preds = %168, %167
  %173 = phi i64 [ %81, %167 ], [ %136, %168 ], !dbg !390
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %173) #6, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br label %174

; <label>:174:                                    ; preds = %172, %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !393
  %175 = add nuw i32 %140, 1, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %176 = icmp eq i32 %175, %53, !dbg !325
  br i1 %176, label %177, label %139, !dbg !327, !llvm.loop !396

; <label>:177:                                    ; preds = %174, %127
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %71, i8* %54) #6, !dbg !399
  %179 = sext i32 %178 to i64, !dbg !400
  %180 = getelementptr inbounds i8, i8* %2, i64 %179, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  %181 = add nsw i64 %179, 40, !dbg !403
  br label %182, !dbg !403

; <label>:182:                                    ; preds = %182, %177
  %183 = phi i64 [ 0, %177 ], [ %229, %182 ]
  %184 = phi i8* [ %180, %177 ], [ %228, %182 ]
  %185 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %183, i64 0, !dbg !404
  %186 = load i8, i8* %185, align 1, !dbg !404, !tbaa !154
  %187 = zext i8 %186 to i64, !dbg !406
  %188 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %187, !dbg !406
  %189 = load i8, i8* %188, align 1, !dbg !406, !tbaa !154
  %190 = zext i8 %189 to i32, !dbg !406
  %191 = shl nuw nsw i32 %190, 16, !dbg !407
  %192 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %183, i64 1, !dbg !408
  %193 = load i8, i8* %192, align 1, !dbg !408, !tbaa !154
  %194 = zext i8 %193 to i64, !dbg !409
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %194, !dbg !409
  %196 = load i8, i8* %195, align 1, !dbg !409, !tbaa !154
  %197 = zext i8 %196 to i32, !dbg !409
  %198 = shl nuw nsw i32 %197, 8, !dbg !410
  %199 = or i32 %198, %191, !dbg !411
  %200 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %183, i64 2, !dbg !412
  %201 = load i8, i8* %200, align 1, !dbg !412, !tbaa !154
  %202 = zext i8 %201 to i64, !dbg !413
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %202, !dbg !413
  %204 = load i8, i8* %203, align 1, !dbg !413, !tbaa !154
  %205 = zext i8 %204 to i32, !dbg !413
  %206 = or i32 %198, %205, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %207 = and i32 %205, 63, !dbg !427
  %208 = zext i32 %207 to i64, !dbg !429
  %209 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %208, !dbg !429
  %210 = load i8, i8* %209, align 1, !dbg !429, !tbaa !154
  %211 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !430
  store i8 %210, i8* %184, align 1, !dbg !431, !tbaa !154
  %212 = lshr i32 %206, 6, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %213 = and i32 %212, 63, !dbg !427
  %214 = zext i32 %213 to i64, !dbg !429
  %215 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %214, !dbg !429
  %216 = load i8, i8* %215, align 1, !dbg !429, !tbaa !154
  %217 = getelementptr inbounds i8, i8* %184, i64 2, !dbg !430
  store i8 %216, i8* %211, align 1, !dbg !431, !tbaa !154
  %218 = lshr i32 %199, 12, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %219 = and i32 %218, 63, !dbg !427
  %220 = zext i32 %219 to i64, !dbg !429
  %221 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %220, !dbg !429
  %222 = load i8, i8* %221, align 1, !dbg !429, !tbaa !154
  %223 = getelementptr inbounds i8, i8* %184, i64 3, !dbg !430
  store i8 %222, i8* %217, align 1, !dbg !431, !tbaa !154
  %224 = lshr i32 %190, 2, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %225 = zext i32 %224 to i64, !dbg !429
  %226 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %225, !dbg !429
  %227 = load i8, i8* %226, align 1, !dbg !429, !tbaa !154
  store i8 %227, i8* %223, align 1, !dbg !431, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %228 = getelementptr i8, i8* %184, i64 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %229 = add nuw nsw i64 %183, 1, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  %230 = icmp eq i64 %229, 10, !dbg !436
  br i1 %230, label %231, label %182, !dbg !403, !llvm.loop !437

; <label>:231:                                    ; preds = %182
  %232 = getelementptr i8, i8* %2, i64 %181, !dbg !403
  %233 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !439
  %234 = load i8, i8* %233, align 1, !dbg !439, !tbaa !154
  %235 = zext i8 %234 to i32, !dbg !439
  %236 = shl nuw nsw i32 %235, 8, !dbg !440
  %237 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30, !dbg !441
  %238 = load i8, i8* %237, align 2, !dbg !441, !tbaa !154
  %239 = zext i8 %238 to i32, !dbg !441
  %240 = or i32 %236, %239, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %241 = and i32 %239, 63, !dbg !448
  %242 = zext i32 %241 to i64, !dbg !449
  %243 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %242, !dbg !449
  %244 = load i8, i8* %243, align 1, !dbg !449, !tbaa !154
  %245 = getelementptr inbounds i8, i8* %232, i64 1, !dbg !450
  store i8 %244, i8* %232, align 1, !dbg !451, !tbaa !154
  %246 = lshr i32 %240, 6, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %247 = and i32 %246, 63, !dbg !448
  %248 = zext i32 %247 to i64, !dbg !449
  %249 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %248, !dbg !449
  %250 = load i8, i8* %249, align 1, !dbg !449, !tbaa !154
  %251 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !450
  store i8 %250, i8* %245, align 1, !dbg !451, !tbaa !154
  %252 = lshr i32 %235, 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %253 = zext i32 %252 to i64, !dbg !449
  %254 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %253, !dbg !449
  %255 = load i8, i8* %254, align 1, !dbg !449, !tbaa !154
  store i8 %255, i8* %251, align 1, !dbg !451, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %256 = getelementptr i8, i8* %232, i64 3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  store i8 0, i8* %256, align 1, !dbg !454, !tbaa !154
  br label %257, !dbg !455

; <label>:257:                                    ; preds = %63, %65, %18, %3, %48, %231
  %258 = phi i8* [ %2, %231 ], [ null, %48 ], [ null, %3 ], [ null, %18 ], [ null, %65 ], [ null, %63 ], !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #4, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #4, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #4, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %10) #4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret i8* %258, !dbg !457
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @sha256_update(%struct.sha256*, i8*, i64) unnamed_addr #0 !dbg !458 {
  %4 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !473
  %5 = load i64, i64* %4, align 8, !dbg !473, !tbaa !214
  %6 = trunc i64 %5 to i32, !dbg !474
  %7 = and i32 %6, 63, !dbg !474
  %8 = add i64 %5, %2, !dbg !476
  store i64 %8, i64* %4, align 8, !dbg !476, !tbaa !214
  %9 = icmp eq i32 %7, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br i1 %9, label %23, label %10, !dbg !479

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 64, %7, !dbg !480
  %12 = zext i32 %11 to i64, !dbg !483
  %13 = icmp ugt i64 %12, %2, !dbg !484
  %14 = zext i32 %7 to i64, !dbg !485
  %15 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %14, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %13, label %16, label %18, !dbg !486

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !487
  br label %45, !dbg !489

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !485
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !490
  %21 = sub i64 %2, %12, !dbg !491
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !492
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %19) #5, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br label %23, !dbg !494

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !495
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  %26 = icmp ugt i64 %25, 63, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %26, label %27, label %40, !dbg !500

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -64, !dbg !501
  %29 = and i64 %28, -64, !dbg !501
  %30 = add i64 %29, 64, !dbg !501
  br label %31, !dbg !501

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha256* %0, i8* %33) #5, !dbg !501
  %34 = add i64 %32, -64, !dbg !502
  %35 = getelementptr inbounds i8, i8* %33, i64 64, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  %36 = icmp ugt i64 %34, 63, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %36, label %31, label %37, !dbg !500, !llvm.loop !505

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !501
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !501
  br label %40, !dbg !507

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !508
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !508
  %43 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !507
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !509
  br label %45, !dbg !510

; <label>:45:                                     ; preds = %40, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  ret void, !dbg !510
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha256_sum(%struct.sha256*, i8* nocapture) unnamed_addr #0 !dbg !512 {
  %3 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !528
  %4 = load i64, i64* %3, align 8, !dbg !528, !tbaa !214
  %5 = trunc i64 %4 to i32, !dbg !529
  %6 = and i32 %5, 63, !dbg !529
  %7 = add nuw nsw i32 %6, 1, !dbg !531
  %8 = zext i32 %6 to i64, !dbg !532
  %9 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %8, !dbg !532
  store i8 -128, i8* %9, align 1, !dbg !533, !tbaa !154
  %10 = icmp ugt i32 %6, 55, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  %11 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !537
  br i1 %10, label %12, label %18, !dbg !536

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !538
  %14 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %13, !dbg !538
  %15 = xor i32 %6, 63, !dbg !540
  %16 = zext i32 %15 to i64, !dbg !541
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !542
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %18, !dbg !544

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !537
  %20 = zext i32 %19 to i64, !dbg !545
  %21 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %20, !dbg !545
  %22 = sub nsw i32 56, %19, !dbg !546
  %23 = zext i32 %22 to i64, !dbg !547
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !548
  %25 = load i64, i64* %3, align 8, !dbg !549, !tbaa !214
  %26 = shl i64 %25, 3, !dbg !549
  store i64 %26, i64* %3, align 8, !dbg !549, !tbaa !214
  %27 = lshr i64 %25, 53, !dbg !550
  %28 = trunc i64 %27 to i8, !dbg !551
  %29 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 56, !dbg !552
  store i8 %28, i8* %29, align 8, !dbg !553, !tbaa !154
  %30 = lshr i64 %25, 45, !dbg !554
  %31 = trunc i64 %30 to i8, !dbg !555
  %32 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 57, !dbg !556
  store i8 %31, i8* %32, align 1, !dbg !557, !tbaa !154
  %33 = lshr i64 %25, 37, !dbg !558
  %34 = trunc i64 %33 to i8, !dbg !559
  %35 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 58, !dbg !560
  store i8 %34, i8* %35, align 2, !dbg !561, !tbaa !154
  %36 = lshr i64 %25, 29, !dbg !562
  %37 = trunc i64 %36 to i8, !dbg !563
  %38 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 59, !dbg !564
  store i8 %37, i8* %38, align 1, !dbg !565, !tbaa !154
  %39 = lshr i64 %25, 21, !dbg !566
  %40 = trunc i64 %39 to i8, !dbg !567
  %41 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 60, !dbg !568
  store i8 %40, i8* %41, align 4, !dbg !569, !tbaa !154
  %42 = lshr i64 %25, 13, !dbg !570
  %43 = trunc i64 %42 to i8, !dbg !571
  %44 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 61, !dbg !572
  store i8 %43, i8* %44, align 1, !dbg !573, !tbaa !154
  %45 = lshr i64 %25, 5, !dbg !574
  %46 = trunc i64 %45 to i8, !dbg !575
  %47 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 62, !dbg !576
  store i8 %46, i8* %47, align 2, !dbg !577, !tbaa !154
  %48 = trunc i64 %26 to i8, !dbg !578
  %49 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 63, !dbg !579
  store i8 %48, i8* %49, align 1, !dbg !580, !tbaa !154
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %50 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !587
  %51 = load i32, i32* %50, align 4, !dbg !587, !tbaa !219
  %52 = lshr i32 %51, 24, !dbg !590
  %53 = trunc i32 %52 to i8, !dbg !587
  store i8 %53, i8* %1, align 1, !dbg !591, !tbaa !154
  %54 = load i32, i32* %50, align 4, !dbg !592, !tbaa !219
  %55 = lshr i32 %54, 16, !dbg !593
  %56 = trunc i32 %55 to i8, !dbg !592
  %57 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !594
  store i8 %56, i8* %57, align 1, !dbg !595, !tbaa !154
  %58 = load i32, i32* %50, align 4, !dbg !596, !tbaa !219
  %59 = lshr i32 %58, 8, !dbg !597
  %60 = trunc i32 %59 to i8, !dbg !596
  %61 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !598
  store i8 %60, i8* %61, align 1, !dbg !599, !tbaa !154
  %62 = load i32, i32* %50, align 4, !dbg !600, !tbaa !219
  %63 = trunc i32 %62 to i8, !dbg !600
  %64 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !601
  store i8 %63, i8* %64, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %65 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 1, !dbg !587
  %66 = load i32, i32* %65, align 4, !dbg !587, !tbaa !219
  %67 = lshr i32 %66, 24, !dbg !590
  %68 = trunc i32 %67 to i8, !dbg !587
  %69 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !604
  store i8 %68, i8* %69, align 1, !dbg !591, !tbaa !154
  %70 = load i32, i32* %65, align 4, !dbg !592, !tbaa !219
  %71 = lshr i32 %70, 16, !dbg !593
  %72 = trunc i32 %71 to i8, !dbg !592
  %73 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !594
  store i8 %72, i8* %73, align 1, !dbg !595, !tbaa !154
  %74 = load i32, i32* %65, align 4, !dbg !596, !tbaa !219
  %75 = lshr i32 %74, 8, !dbg !597
  %76 = trunc i32 %75 to i8, !dbg !596
  %77 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !598
  store i8 %76, i8* %77, align 1, !dbg !599, !tbaa !154
  %78 = load i32, i32* %65, align 4, !dbg !600, !tbaa !219
  %79 = trunc i32 %78 to i8, !dbg !600
  %80 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !601
  store i8 %79, i8* %80, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %81 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 2, !dbg !587
  %82 = load i32, i32* %81, align 4, !dbg !587, !tbaa !219
  %83 = lshr i32 %82, 24, !dbg !590
  %84 = trunc i32 %83 to i8, !dbg !587
  %85 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !604
  store i8 %84, i8* %85, align 1, !dbg !591, !tbaa !154
  %86 = load i32, i32* %81, align 4, !dbg !592, !tbaa !219
  %87 = lshr i32 %86, 16, !dbg !593
  %88 = trunc i32 %87 to i8, !dbg !592
  %89 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !594
  store i8 %88, i8* %89, align 1, !dbg !595, !tbaa !154
  %90 = load i32, i32* %81, align 4, !dbg !596, !tbaa !219
  %91 = lshr i32 %90, 8, !dbg !597
  %92 = trunc i32 %91 to i8, !dbg !596
  %93 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !598
  store i8 %92, i8* %93, align 1, !dbg !599, !tbaa !154
  %94 = load i32, i32* %81, align 4, !dbg !600, !tbaa !219
  %95 = trunc i32 %94 to i8, !dbg !600
  %96 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !601
  store i8 %95, i8* %96, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %97 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 3, !dbg !587
  %98 = load i32, i32* %97, align 4, !dbg !587, !tbaa !219
  %99 = lshr i32 %98, 24, !dbg !590
  %100 = trunc i32 %99 to i8, !dbg !587
  %101 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !604
  store i8 %100, i8* %101, align 1, !dbg !591, !tbaa !154
  %102 = load i32, i32* %97, align 4, !dbg !592, !tbaa !219
  %103 = lshr i32 %102, 16, !dbg !593
  %104 = trunc i32 %103 to i8, !dbg !592
  %105 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !594
  store i8 %104, i8* %105, align 1, !dbg !595, !tbaa !154
  %106 = load i32, i32* %97, align 4, !dbg !596, !tbaa !219
  %107 = lshr i32 %106, 8, !dbg !597
  %108 = trunc i32 %107 to i8, !dbg !596
  %109 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !598
  store i8 %108, i8* %109, align 1, !dbg !599, !tbaa !154
  %110 = load i32, i32* %97, align 4, !dbg !600, !tbaa !219
  %111 = trunc i32 %110 to i8, !dbg !600
  %112 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !601
  store i8 %111, i8* %112, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %113 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !587
  %114 = load i32, i32* %113, align 4, !dbg !587, !tbaa !219
  %115 = lshr i32 %114, 24, !dbg !590
  %116 = trunc i32 %115 to i8, !dbg !587
  %117 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !604
  store i8 %116, i8* %117, align 1, !dbg !591, !tbaa !154
  %118 = load i32, i32* %113, align 4, !dbg !592, !tbaa !219
  %119 = lshr i32 %118, 16, !dbg !593
  %120 = trunc i32 %119 to i8, !dbg !592
  %121 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !594
  store i8 %120, i8* %121, align 1, !dbg !595, !tbaa !154
  %122 = load i32, i32* %113, align 4, !dbg !596, !tbaa !219
  %123 = lshr i32 %122, 8, !dbg !597
  %124 = trunc i32 %123 to i8, !dbg !596
  %125 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !598
  store i8 %124, i8* %125, align 1, !dbg !599, !tbaa !154
  %126 = load i32, i32* %113, align 4, !dbg !600, !tbaa !219
  %127 = trunc i32 %126 to i8, !dbg !600
  %128 = getelementptr inbounds i8, i8* %1, i64 19, !dbg !601
  store i8 %127, i8* %128, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %129 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 5, !dbg !587
  %130 = load i32, i32* %129, align 4, !dbg !587, !tbaa !219
  %131 = lshr i32 %130, 24, !dbg !590
  %132 = trunc i32 %131 to i8, !dbg !587
  %133 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !604
  store i8 %132, i8* %133, align 1, !dbg !591, !tbaa !154
  %134 = load i32, i32* %129, align 4, !dbg !592, !tbaa !219
  %135 = lshr i32 %134, 16, !dbg !593
  %136 = trunc i32 %135 to i8, !dbg !592
  %137 = getelementptr inbounds i8, i8* %1, i64 21, !dbg !594
  store i8 %136, i8* %137, align 1, !dbg !595, !tbaa !154
  %138 = load i32, i32* %129, align 4, !dbg !596, !tbaa !219
  %139 = lshr i32 %138, 8, !dbg !597
  %140 = trunc i32 %139 to i8, !dbg !596
  %141 = getelementptr inbounds i8, i8* %1, i64 22, !dbg !598
  store i8 %140, i8* %141, align 1, !dbg !599, !tbaa !154
  %142 = load i32, i32* %129, align 4, !dbg !600, !tbaa !219
  %143 = trunc i32 %142 to i8, !dbg !600
  %144 = getelementptr inbounds i8, i8* %1, i64 23, !dbg !601
  store i8 %143, i8* %144, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %145 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 6, !dbg !587
  %146 = load i32, i32* %145, align 4, !dbg !587, !tbaa !219
  %147 = lshr i32 %146, 24, !dbg !590
  %148 = trunc i32 %147 to i8, !dbg !587
  %149 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !604
  store i8 %148, i8* %149, align 1, !dbg !591, !tbaa !154
  %150 = load i32, i32* %145, align 4, !dbg !592, !tbaa !219
  %151 = lshr i32 %150, 16, !dbg !593
  %152 = trunc i32 %151 to i8, !dbg !592
  %153 = getelementptr inbounds i8, i8* %1, i64 25, !dbg !594
  store i8 %152, i8* %153, align 1, !dbg !595, !tbaa !154
  %154 = load i32, i32* %145, align 4, !dbg !596, !tbaa !219
  %155 = lshr i32 %154, 8, !dbg !597
  %156 = trunc i32 %155 to i8, !dbg !596
  %157 = getelementptr inbounds i8, i8* %1, i64 26, !dbg !598
  store i8 %156, i8* %157, align 1, !dbg !599, !tbaa !154
  %158 = load i32, i32* %145, align 4, !dbg !600, !tbaa !219
  %159 = trunc i32 %158 to i8, !dbg !600
  %160 = getelementptr inbounds i8, i8* %1, i64 27, !dbg !601
  store i8 %159, i8* %160, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %161 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 7, !dbg !587
  %162 = load i32, i32* %161, align 4, !dbg !587, !tbaa !219
  %163 = lshr i32 %162, 24, !dbg !590
  %164 = trunc i32 %163 to i8, !dbg !587
  %165 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !604
  store i8 %164, i8* %165, align 1, !dbg !591, !tbaa !154
  %166 = load i32, i32* %161, align 4, !dbg !592, !tbaa !219
  %167 = lshr i32 %166, 16, !dbg !593
  %168 = trunc i32 %167 to i8, !dbg !592
  %169 = getelementptr inbounds i8, i8* %1, i64 29, !dbg !594
  store i8 %168, i8* %169, align 1, !dbg !595, !tbaa !154
  %170 = load i32, i32* %161, align 4, !dbg !596, !tbaa !219
  %171 = lshr i32 %170, 8, !dbg !597
  %172 = trunc i32 %171 to i8, !dbg !596
  %173 = getelementptr inbounds i8, i8* %1, i64 30, !dbg !598
  store i8 %172, i8* %173, align 1, !dbg !599, !tbaa !154
  %174 = load i32, i32* %161, align 4, !dbg !600, !tbaa !219
  %175 = trunc i32 %174 to i8, !dbg !600
  %176 = getelementptr inbounds i8, i8* %1, i64 31, !dbg !601
  store i8 %175, i8* %176, align 1, !dbg !602, !tbaa !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  ret void, !dbg !605
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha256* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !606 {
  %3 = alloca [64 x i32], align 16
  %4 = bitcast [64 x i32]* %3 to i8*, !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br label %8, !dbg !632

; <label>:5:                                      ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %6 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %7 = load i32, i32* %6, align 16, !dbg !635, !tbaa !219
  br label %35, !dbg !637

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %33, %8 ]
  %10 = shl nsw i64 %9, 2, !dbg !638
  %11 = getelementptr inbounds i8, i8* %1, i64 %10, !dbg !641
  %12 = load i8, i8* %11, align 1, !dbg !641, !tbaa !154
  %13 = zext i8 %12 to i32, !dbg !642
  %14 = shl nuw i32 %13, 24, !dbg !643
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %9, !dbg !644
  %16 = or i64 %10, 1, !dbg !645
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !646
  %18 = load i8, i8* %17, align 1, !dbg !646, !tbaa !154
  %19 = zext i8 %18 to i32, !dbg !647
  %20 = shl nuw nsw i32 %19, 16, !dbg !648
  %21 = or i32 %20, %14, !dbg !649
  %22 = or i64 %10, 2, !dbg !650
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !651
  %24 = load i8, i8* %23, align 1, !dbg !651, !tbaa !154
  %25 = zext i8 %24 to i32, !dbg !652
  %26 = shl nuw nsw i32 %25, 8, !dbg !653
  %27 = or i32 %26, %21, !dbg !654
  %28 = or i64 %10, 3, !dbg !655
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !656
  %30 = load i8, i8* %29, align 1, !dbg !656, !tbaa !154
  %31 = zext i8 %30 to i32, !dbg !656
  %32 = or i32 %27, %31, !dbg !657
  store i32 %32, i32* %15, align 4, !dbg !657, !tbaa !219
  %33 = add nuw nsw i64 %9, 1, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  %34 = icmp eq i64 %33, 16, !dbg !660
  br i1 %34, label %5, label %8, !dbg !632, !llvm.loop !661

; <label>:35:                                     ; preds = %35, %5
  %36 = phi i32 [ %7, %5 ], [ %56, %35 ], !dbg !635
  %37 = phi i64 [ 16, %5 ], [ %69, %35 ]
  %38 = add nsw i64 %37, -2, !dbg !637
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %38, !dbg !637
  %40 = load i32, i32* %39, align 4, !dbg !637, !tbaa !219
  %41 = lshr i32 %40, 17, !dbg !672
  %42 = shl i32 %40, 15, !dbg !673
  %43 = or i32 %42, %41, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %44 = lshr i32 %40, 19, !dbg !679
  %45 = shl i32 %40, 13, !dbg !680
  %46 = or i32 %45, %44, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %47 = lshr i32 %40, 10, !dbg !637
  %48 = xor i32 %46, %47, !dbg !637
  %49 = xor i32 %48, %43, !dbg !637
  %50 = add nsw i64 %37, -7, !dbg !683
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %50, !dbg !684
  %52 = load i32, i32* %51, align 4, !dbg !684, !tbaa !219
  %53 = add i32 %49, %52, !dbg !685
  %54 = add nsw i64 %37, -15, !dbg !686
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %54, !dbg !686
  %56 = load i32, i32* %55, align 4, !dbg !686, !tbaa !219
  %57 = lshr i32 %56, 7, !dbg !690
  %58 = shl i32 %56, 25, !dbg !691
  %59 = or i32 %58, %57, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %60 = lshr i32 %56, 18, !dbg !697
  %61 = shl i32 %56, 14, !dbg !698
  %62 = or i32 %61, %60, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  %63 = lshr i32 %56, 3, !dbg !686
  %64 = xor i32 %62, %63, !dbg !686
  %65 = xor i32 %64, %59, !dbg !686
  %66 = add i32 %53, %36, !dbg !701
  %67 = add i32 %66, %65, !dbg !702
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %37, !dbg !703
  store i32 %67, i32* %68, align 4, !dbg !704, !tbaa !219
  %69 = add nuw nsw i64 %37, 1, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %70 = icmp eq i64 %69, 64, !dbg !707
  br i1 %70, label %71, label %35, !dbg !633, !llvm.loop !708

; <label>:71:                                     ; preds = %35
  %72 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !710
  %73 = bitcast i32* %72 to <4 x i32>*, !dbg !710
  %74 = load <4 x i32>, <4 x i32>* %73, align 8, !dbg !710, !tbaa !219
  %75 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !715
  %76 = bitcast i32* %75 to <4 x i32>*, !dbg !715
  %77 = load <4 x i32>, <4 x i32>* %76, align 8, !dbg !715, !tbaa !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %78 = extractelement <4 x i32> %74, i32 0, !dbg !722
  %79 = extractelement <4 x i32> %74, i32 1, !dbg !722
  %80 = extractelement <4 x i32> %74, i32 2, !dbg !722
  %81 = extractelement <4 x i32> %74, i32 3, !dbg !722
  %82 = extractelement <4 x i32> %77, i32 0, !dbg !722
  %83 = extractelement <4 x i32> %77, i32 1, !dbg !722
  %84 = extractelement <4 x i32> %77, i32 2, !dbg !722
  %85 = extractelement <4 x i32> %77, i32 3, !dbg !722
  br label %86, !dbg !722

; <label>:86:                                     ; preds = %86, %71
  %87 = phi i64 [ 0, %71 ], [ %136, %86 ]
  %88 = phi i32 [ %85, %71 ], [ %89, %86 ]
  %89 = phi i32 [ %84, %71 ], [ %90, %86 ]
  %90 = phi i32 [ %83, %71 ], [ %91, %86 ]
  %91 = phi i32 [ %82, %71 ], [ %134, %86 ]
  %92 = phi i32 [ %81, %71 ], [ %93, %86 ]
  %93 = phi i32 [ %80, %71 ], [ %94, %86 ]
  %94 = phi i32 [ %79, %71 ], [ %95, %86 ]
  %95 = phi i32 [ %78, %71 ], [ %135, %86 ]
  %96 = lshr i32 %91, 6, !dbg !727
  %97 = shl i32 %91, 26, !dbg !728
  %98 = or i32 %97, %96, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  %99 = lshr i32 %91, 11, !dbg !733
  %100 = shl i32 %91, 21, !dbg !734
  %101 = or i32 %100, %99, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %102 = xor i32 %98, %101, !dbg !737
  %103 = lshr i32 %91, 25, !dbg !741
  %104 = shl i32 %91, 7, !dbg !742
  %105 = or i32 %104, %103, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  %106 = xor i32 %102, %105, !dbg !737
  %107 = add i32 %106, %88, !dbg !745
  %108 = xor i32 %89, %90, !dbg !746
  %109 = and i32 %108, %91, !dbg !746
  %110 = xor i32 %109, %89, !dbg !746
  %111 = add i32 %107, %110, !dbg !747
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %87, !dbg !748
  %113 = load i32, i32* %112, align 4, !dbg !748, !tbaa !219
  %114 = add i32 %111, %113, !dbg !749
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %87, !dbg !750
  %116 = load i32, i32* %115, align 4, !dbg !750, !tbaa !219
  %117 = add i32 %114, %116, !dbg !751
  %118 = lshr i32 %95, 2, !dbg !755
  %119 = shl i32 %95, 30, !dbg !756
  %120 = or i32 %119, %118, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  %121 = lshr i32 %95, 13, !dbg !761
  %122 = shl i32 %95, 19, !dbg !762
  %123 = or i32 %122, %121, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  %124 = xor i32 %120, %123, !dbg !765
  %125 = lshr i32 %95, 22, !dbg !769
  %126 = shl i32 %95, 10, !dbg !770
  %127 = or i32 %126, %125, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %128 = xor i32 %124, %127, !dbg !765
  %129 = and i32 %94, %95, !dbg !773
  %130 = or i32 %94, %95, !dbg !773
  %131 = and i32 %93, %130, !dbg !773
  %132 = or i32 %131, %129, !dbg !773
  %133 = add i32 %128, %132, !dbg !774
  %134 = add i32 %117, %92, !dbg !776
  %135 = add i32 %133, %117, !dbg !777
  %136 = add nuw nsw i64 %87, 1, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %137 = icmp eq i64 %136, 64, !dbg !780
  br i1 %137, label %138, label %86, !dbg !722, !llvm.loop !781

; <label>:138:                                    ; preds = %86
  %139 = insertelement <4 x i32> undef, i32 %135, i32 0, !dbg !783
  %140 = insertelement <4 x i32> %139, i32 %95, i32 1, !dbg !783
  %141 = insertelement <4 x i32> %140, i32 %94, i32 2, !dbg !783
  %142 = insertelement <4 x i32> %141, i32 %93, i32 3, !dbg !783
  %143 = add <4 x i32> %142, %74, !dbg !783
  %144 = bitcast i32* %72 to <4 x i32>*, !dbg !783
  store <4 x i32> %143, <4 x i32>* %144, align 8, !dbg !783, !tbaa !219
  %145 = insertelement <4 x i32> undef, i32 %134, i32 0, !dbg !784
  %146 = insertelement <4 x i32> %145, i32 %91, i32 1, !dbg !784
  %147 = insertelement <4 x i32> %146, i32 %90, i32 2, !dbg !784
  %148 = insertelement <4 x i32> %147, i32 %89, i32 3, !dbg !784
  %149 = add <4 x i32> %148, %77, !dbg !784
  %150 = bitcast i32* %75 to <4 x i32>*, !dbg !784
  store <4 x i32> %149, <4 x i32>* %150, align 8, !dbg !784, !tbaa !219
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  ret void, !dbg !785
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "testkey", scope: !2, file: !3, line: 310, type: !99, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__crypt_sha256", scope: !3, file: !3, line: 308, type: !4, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !89)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha256.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !19)
!11 = !{}
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 48, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!0, !20, !25, !30, !80, !84}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "testsetting", scope: !2, file: !3, line: 311, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 240, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 30)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "testhash", scope: !2, file: !3, line: 312, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 584, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 73)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "perm", scope: !32, file: !3, line: 298, type: !75, isLocal: true, isDefinition: true)
!32 = distinct !DISubprogram(name: "sha256crypt", scope: !3, file: !3, line: 187, type: !4, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !33)
!33 = !{!34, !35, !36, !37, !55, !59, !60, !61, !62, !63, !64, !65, !69, !70, !71, !74}
!34 = !DILocalVariable(name: "key", arg: 1, scope: !32, file: !3, line: 187, type: !8)
!35 = !DILocalVariable(name: "setting", arg: 2, scope: !32, file: !3, line: 187, type: !8)
!36 = !DILocalVariable(name: "output", arg: 3, scope: !32, file: !3, line: 187, type: !6)
!37 = !DILocalVariable(name: "ctx", scope: !32, file: !3, line: 189, type: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha256", file: !3, line: 18, size: 832, elements: !39)
!39 = !{!40, !44, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !38, file: !3, line: 19, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 60, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 105, baseType: !43)
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !38, file: !3, line: 20, baseType: !45, size: 256, offset: 64)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !38, file: !3, line: 21, baseType: !49, size: 512, offset: 320)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !53)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 43, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54}
!54 = !DISubrange(count: 64)
!55 = !DILocalVariable(name: "md", scope: !32, file: !3, line: 190, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 32)
!59 = !DILocalVariable(name: "kmd", scope: !32, file: !3, line: 190, type: !56)
!60 = !DILocalVariable(name: "smd", scope: !32, file: !3, line: 190, type: !56)
!61 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 191, type: !18)
!62 = !DILocalVariable(name: "r", scope: !32, file: !3, line: 191, type: !18)
!63 = !DILocalVariable(name: "klen", scope: !32, file: !3, line: 191, type: !18)
!64 = !DILocalVariable(name: "slen", scope: !32, file: !3, line: 191, type: !18)
!65 = !DILocalVariable(name: "rounds", scope: !32, file: !3, line: 192, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 20)
!69 = !DILocalVariable(name: "salt", scope: !32, file: !3, line: 193, type: !8)
!70 = !DILocalVariable(name: "p", scope: !32, file: !3, line: 194, type: !6)
!71 = !DILocalVariable(name: "u", scope: !72, file: !3, line: 208, type: !43)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 207, column: 59)
!73 = distinct !DILexicalBlock(scope: !32, file: !3, line: 207, column: 6)
!74 = !DILocalVariable(name: "end", scope: !72, file: !3, line: 209, type: !6)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 240, elements: !77)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!77 = !{!78, !79}
!78 = !DISubrange(count: 10)
!79 = !DISubrange(count: 3)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "K", scope: !10, file: !3, line: 32, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2048, elements: !53)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "b64", scope: !10, file: !3, line: 156, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 520, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 65)
!89 = !{!90, !91, !92, !93, !97, !98}
!90 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 308, type: !8)
!91 = !DILocalVariable(name: "setting", arg: 2, scope: !2, file: !3, line: 308, type: !8)
!92 = !DILocalVariable(name: "output", arg: 3, scope: !2, file: !3, line: 308, type: !6)
!93 = !DILocalVariable(name: "testbuf", scope: !2, file: !3, line: 313, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 128)
!97 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 314, type: !6)
!98 = !DILocalVariable(name: "q", scope: !2, file: !3, line: 314, type: !6)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 144, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 18)
!102 = !{i32 2, !"Dwarf Version", i32 4}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!106 = !DILocation(line: 308, column: 34, scope: !2)
!107 = !DILocation(line: 308, column: 51, scope: !2)
!108 = !DILocation(line: 308, column: 66, scope: !2)
!109 = !DILocation(line: 313, column: 2, scope: !2)
!110 = !DILocation(line: 313, column: 7, scope: !2)
!111 = !DILocation(line: 316, column: 6, scope: !2)
!112 = !DILocation(line: 314, column: 8, scope: !2)
!113 = !DILocation(line: 318, column: 6, scope: !2)
!114 = !DILocation(line: 314, column: 12, scope: !2)
!115 = !DILocation(line: 319, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !2, file: !3, line: 319, column: 6)
!117 = !DILocation(line: 319, column: 9, scope: !116)
!118 = !DILocation(line: 319, column: 14, scope: !116)
!119 = !DILocation(line: 319, column: 25, scope: !116)
!120 = !DILocation(line: 319, column: 28, scope: !116)
!121 = !DILocation(line: 319, column: 6, scope: !2)
!122 = !DILocation(line: 0, scope: !2)
!123 = !DILocation(line: 0, scope: !116)
!124 = !DILocation(line: 322, column: 1, scope: !2)
!125 = !DILocation(line: 187, column: 38, scope: !32)
!126 = !DILocation(line: 187, column: 55, scope: !32)
!127 = !DILocation(line: 187, column: 70, scope: !32)
!128 = !DILocation(line: 189, column: 2, scope: !32)
!129 = !DILocation(line: 190, column: 2, scope: !32)
!130 = !DILocation(line: 190, column: 16, scope: !32)
!131 = !DILocation(line: 190, column: 24, scope: !32)
!132 = !DILocation(line: 190, column: 33, scope: !32)
!133 = !DILocation(line: 192, column: 2, scope: !32)
!134 = !DILocation(line: 192, column: 7, scope: !32)
!135 = !DILocation(line: 197, column: 9, scope: !32)
!136 = !DILocation(line: 191, column: 21, scope: !32)
!137 = !DILocation(line: 198, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !32, file: !3, line: 198, column: 6)
!139 = !DILocation(line: 198, column: 6, scope: !32)
!140 = !DILocation(line: 202, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !32, file: !3, line: 202, column: 6)
!142 = !DILocation(line: 202, column: 33, scope: !141)
!143 = !DILocation(line: 202, column: 6, scope: !32)
!144 = !DILocation(line: 204, column: 17, scope: !32)
!145 = !DILocation(line: 193, column: 14, scope: !32)
!146 = !DILocation(line: 191, column: 18, scope: !32)
!147 = !DILocation(line: 207, column: 6, scope: !73)
!148 = !DILocation(line: 207, column: 53, scope: !73)
!149 = !DILocation(line: 207, column: 6, scope: !32)
!150 = !DILocation(line: 209, column: 3, scope: !72)
!151 = !DILocation(line: 223, column: 8, scope: !72)
!152 = !DILocation(line: 224, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !72, file: !3, line: 224, column: 7)
!154 = !{!155, !155, i64 0}
!155 = !{!"omnipotent char", !156, i64 0}
!156 = !{!"Simple C/C++ TBAA"}
!157 = !DILocation(line: 224, column: 7, scope: !72)
!158 = !DILocation(line: 209, column: 9, scope: !72)
!159 = !DILocation(line: 226, column: 7, scope: !72)
!160 = !DILocation(line: 208, column: 17, scope: !72)
!161 = !DILocation(line: 227, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !72, file: !3, line: 227, column: 7)
!163 = !{!164, !164, i64 0}
!164 = !{!"any pointer", !155, i64 0}
!165 = !DILocation(line: 227, column: 7, scope: !162)
!166 = !DILocation(line: 227, column: 12, scope: !162)
!167 = !DILocation(line: 227, column: 7, scope: !72)
!168 = !DILocation(line: 229, column: 13, scope: !72)
!169 = !DILocation(line: 230, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !72, file: !3, line: 230, column: 7)
!171 = !DILocation(line: 230, column: 7, scope: !72)
!172 = !DILocation(line: 232, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 232, column: 12)
!174 = !DILocation(line: 232, column: 12, scope: !170)
!175 = !DILocation(line: 235, column: 8, scope: !173)
!176 = !DILocation(line: 0, scope: !153)
!177 = !DILocation(line: 238, column: 2, scope: !73)
!178 = !DILocation(line: 0, scope: !173)
!179 = !DILocation(line: 237, column: 3, scope: !72)
!180 = !DILocation(line: 206, column: 4, scope: !32)
!181 = !DILocation(line: 0, scope: !32)
!182 = !DILocation(line: 191, column: 15, scope: !32)
!183 = !DILocation(line: 240, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !32, file: !3, line: 240, column: 2)
!185 = !DILocation(line: 240, column: 27, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !3, line: 240, column: 2)
!187 = !DILocation(line: 240, column: 30, scope: !186)
!188 = !DILocation(line: 240, column: 38, scope: !186)
!189 = !DILocation(line: 240, column: 49, scope: !186)
!190 = !DILocation(line: 240, column: 2, scope: !184)
!191 = !DILocation(line: 242, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !3, line: 242, column: 7)
!193 = !DILocation(line: 242, column: 23, scope: !192)
!194 = !DILocation(line: 242, column: 34, scope: !192)
!195 = !DILocation(line: 242, column: 7, scope: !186)
!196 = !DILocation(line: 240, column: 58, scope: !186)
!197 = !DILocation(line: 240, column: 2, scope: !186)
!198 = !DILocation(line: 240, column: 16, scope: !186)
!199 = distinct !{!199, !190, !200}
!200 = !DILocation(line: 243, column: 11, scope: !184)
!201 = !DILocation(line: 249, column: 28, scope: !32)
!202 = !DILocation(line: 191, column: 27, scope: !32)
!203 = !DILocation(line: 189, column: 16, scope: !32)
!204 = !DILocalVariable(name: "s", arg: 1, scope: !205, file: !3, line: 109, type: !208)
!205 = distinct !DISubprogram(name: "sha256_init", scope: !3, file: !3, line: 109, type: !206, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!209 = !{!204}
!210 = !DILocation(line: 109, column: 40, scope: !205, inlinedAt: !211)
!211 = distinct !DILocation(line: 247, column: 2, scope: !32)
!212 = !DILocation(line: 111, column: 5, scope: !205, inlinedAt: !211)
!213 = !DILocation(line: 111, column: 9, scope: !205, inlinedAt: !211)
!214 = !{!215, !216, i64 0}
!215 = !{!"sha256", !216, i64 0, !155, i64 8, !155, i64 40}
!216 = !{!"long", !155, i64 0}
!217 = !DILocation(line: 112, column: 2, scope: !205, inlinedAt: !211)
!218 = !DILocation(line: 112, column: 10, scope: !205, inlinedAt: !211)
!219 = !{!220, !220, i64 0}
!220 = !{!"int", !155, i64 0}
!221 = !DILocation(line: 116, column: 2, scope: !205, inlinedAt: !211)
!222 = !DILocation(line: 117, column: 2, scope: !205, inlinedAt: !211)
!223 = !DILocation(line: 118, column: 2, scope: !205, inlinedAt: !211)
!224 = !DILocation(line: 119, column: 2, scope: !205, inlinedAt: !211)
!225 = !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !211)
!226 = !DILocation(line: 120, column: 1, scope: !205, inlinedAt: !211)
!227 = !DILocation(line: 248, column: 27, scope: !32)
!228 = !DILocation(line: 248, column: 2, scope: !32)
!229 = !DILocation(line: 249, column: 2, scope: !32)
!230 = !DILocation(line: 250, column: 2, scope: !32)
!231 = !DILocation(line: 251, column: 2, scope: !32)
!232 = !DILocation(line: 109, column: 40, scope: !205, inlinedAt: !233)
!233 = distinct !DILocation(line: 254, column: 2, scope: !32)
!234 = !DILocation(line: 111, column: 9, scope: !205, inlinedAt: !233)
!235 = !DILocation(line: 112, column: 10, scope: !205, inlinedAt: !233)
!236 = !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !233)
!237 = !DILocation(line: 117, column: 10, scope: !205, inlinedAt: !233)
!238 = !DILocation(line: 118, column: 10, scope: !205, inlinedAt: !233)
!239 = !DILocation(line: 119, column: 10, scope: !205, inlinedAt: !233)
!240 = !DILocation(line: 120, column: 1, scope: !205, inlinedAt: !233)
!241 = !DILocation(line: 255, column: 2, scope: !32)
!242 = !DILocation(line: 256, column: 2, scope: !32)
!243 = !DILocalVariable(name: "s", arg: 1, scope: !244, file: !3, line: 178, type: !208)
!244 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 178, type: !245, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !249)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !208, !18, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !{!243, !250, !251, !252}
!250 = !DILocalVariable(name: "n", arg: 2, scope: !244, file: !3, line: 178, type: !18)
!251 = !DILocalVariable(name: "md", arg: 3, scope: !244, file: !3, line: 178, type: !247)
!252 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 180, type: !18)
!253 = !DILocation(line: 178, column: 35, scope: !244, inlinedAt: !254)
!254 = distinct !DILocation(line: 257, column: 2, scope: !32)
!255 = !DILocation(line: 178, column: 51, scope: !244, inlinedAt: !254)
!256 = !DILocation(line: 178, column: 66, scope: !244, inlinedAt: !254)
!257 = !DILocation(line: 180, column: 15, scope: !244, inlinedAt: !254)
!258 = !DILocation(line: 182, column: 7, scope: !259, inlinedAt: !254)
!259 = distinct !DILexicalBlock(scope: !244, file: !3, line: 182, column: 2)
!260 = !DILocation(line: 182, column: 16, scope: !261, inlinedAt: !254)
!261 = distinct !DILexicalBlock(scope: !259, file: !3, line: 182, column: 2)
!262 = !DILocation(line: 182, column: 2, scope: !259, inlinedAt: !254)
!263 = !DILocation(line: 183, column: 3, scope: !261, inlinedAt: !254)
!264 = !DILocation(line: 182, column: 24, scope: !261, inlinedAt: !254)
!265 = !DILocation(line: 182, column: 2, scope: !261, inlinedAt: !254)
!266 = distinct !{!266, !267, !268}
!267 = !DILocation(line: 182, column: 2, scope: !259)
!268 = !DILocation(line: 183, column: 26, scope: !259)
!269 = !DILocation(line: 184, column: 23, scope: !244, inlinedAt: !254)
!270 = !DILocation(line: 184, column: 2, scope: !244, inlinedAt: !254)
!271 = !DILocation(line: 185, column: 1, scope: !244, inlinedAt: !254)
!272 = !DILocation(line: 258, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !32, file: !3, line: 258, column: 2)
!274 = !DILocation(line: 258, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !3, line: 258, column: 2)
!276 = !DILocation(line: 258, column: 2, scope: !273)
!277 = !DILocation(line: 259, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !3, line: 259, column: 7)
!279 = !DILocation(line: 259, column: 7, scope: !275)
!280 = !DILocation(line: 260, column: 4, scope: !278)
!281 = !DILocation(line: 262, column: 4, scope: !278)
!282 = !DILocation(line: 258, column: 26, scope: !275)
!283 = !DILocation(line: 258, column: 2, scope: !275)
!284 = distinct !{!284, !276, !285}
!285 = !DILocation(line: 262, column: 33, scope: !273)
!286 = !DILocation(line: 263, column: 2, scope: !32)
!287 = !DILocation(line: 109, column: 40, scope: !205, inlinedAt: !288)
!288 = distinct !DILocation(line: 266, column: 2, scope: !32)
!289 = !DILocation(line: 111, column: 9, scope: !205, inlinedAt: !288)
!290 = !DILocation(line: 112, column: 10, scope: !205, inlinedAt: !288)
!291 = !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !288)
!292 = !DILocation(line: 120, column: 1, scope: !205, inlinedAt: !288)
!293 = !DILocation(line: 267, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !32, file: !3, line: 267, column: 2)
!295 = !DILocation(line: 267, column: 2, scope: !294)
!296 = !DILocation(line: 268, column: 3, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 267, column: 2)
!298 = !DILocation(line: 267, column: 25, scope: !297)
!299 = !DILocation(line: 267, column: 2, scope: !297)
!300 = !DILocation(line: 267, column: 16, scope: !297)
!301 = distinct !{!301, !295, !302}
!302 = !DILocation(line: 268, column: 32, scope: !294)
!303 = !DILocation(line: 269, column: 2, scope: !32)
!304 = !DILocation(line: 109, column: 40, scope: !205, inlinedAt: !305)
!305 = distinct !DILocation(line: 272, column: 2, scope: !32)
!306 = !DILocation(line: 111, column: 9, scope: !205, inlinedAt: !305)
!307 = !DILocation(line: 112, column: 10, scope: !205, inlinedAt: !305)
!308 = !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !305)
!309 = !DILocation(line: 120, column: 1, scope: !205, inlinedAt: !305)
!310 = !DILocation(line: 273, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !32, file: !3, line: 273, column: 2)
!312 = !DILocation(line: 273, column: 2, scope: !311)
!313 = !DILocation(line: 274, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 273, column: 2)
!315 = !DILocation(line: 273, column: 31, scope: !314)
!316 = !DILocation(line: 273, column: 2, scope: !314)
!317 = !DILocation(line: 273, column: 23, scope: !314)
!318 = !DILocation(line: 273, column: 21, scope: !314)
!319 = !DILocation(line: 273, column: 16, scope: !314)
!320 = distinct !{!320, !312, !321}
!321 = !DILocation(line: 274, column: 33, scope: !311)
!322 = !DILocation(line: 275, column: 2, scope: !32)
!323 = !DILocation(line: 278, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !32, file: !3, line: 278, column: 2)
!325 = !DILocation(line: 278, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !3, line: 278, column: 2)
!327 = !DILocation(line: 278, column: 2, scope: !324)
!328 = !DILocation(line: 109, column: 40, scope: !205, inlinedAt: !329)
!329 = distinct !DILocation(line: 279, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 278, column: 26)
!331 = !DILocation(line: 111, column: 9, scope: !205, inlinedAt: !329)
!332 = !DILocation(line: 112, column: 10, scope: !205, inlinedAt: !329)
!333 = !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !329)
!334 = !DILocation(line: 120, column: 1, scope: !205, inlinedAt: !329)
!335 = !DILocation(line: 280, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !3, line: 280, column: 7)
!337 = !DILocation(line: 280, column: 7, scope: !330)
!338 = !DILocation(line: 178, column: 35, scope: !244, inlinedAt: !339)
!339 = distinct !DILocation(line: 281, column: 4, scope: !336)
!340 = !DILocation(line: 178, column: 51, scope: !244, inlinedAt: !339)
!341 = !DILocation(line: 178, column: 66, scope: !244, inlinedAt: !339)
!342 = !DILocation(line: 180, column: 15, scope: !244, inlinedAt: !339)
!343 = !DILocation(line: 182, column: 7, scope: !259, inlinedAt: !339)
!344 = !DILocation(line: 182, column: 2, scope: !259, inlinedAt: !339)
!345 = !DILocation(line: 183, column: 3, scope: !261, inlinedAt: !339)
!346 = !DILocation(line: 182, column: 24, scope: !261, inlinedAt: !339)
!347 = !DILocation(line: 182, column: 2, scope: !261, inlinedAt: !339)
!348 = !DILocation(line: 182, column: 16, scope: !261, inlinedAt: !339)
!349 = !DILocation(line: 184, column: 23, scope: !244, inlinedAt: !339)
!350 = !DILocation(line: 184, column: 2, scope: !244, inlinedAt: !339)
!351 = !DILocation(line: 185, column: 1, scope: !244, inlinedAt: !339)
!352 = !DILocation(line: 281, column: 4, scope: !336)
!353 = !DILocation(line: 283, column: 4, scope: !336)
!354 = !DILocation(line: 284, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !330, file: !3, line: 284, column: 7)
!356 = !DILocation(line: 284, column: 7, scope: !330)
!357 = !DILocation(line: 285, column: 4, scope: !355)
!358 = !DILocation(line: 286, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !330, file: !3, line: 286, column: 7)
!360 = !DILocation(line: 286, column: 7, scope: !330)
!361 = !DILocation(line: 178, column: 35, scope: !244, inlinedAt: !362)
!362 = distinct !DILocation(line: 287, column: 4, scope: !359)
!363 = !DILocation(line: 178, column: 51, scope: !244, inlinedAt: !362)
!364 = !DILocation(line: 178, column: 66, scope: !244, inlinedAt: !362)
!365 = !DILocation(line: 180, column: 15, scope: !244, inlinedAt: !362)
!366 = !DILocation(line: 182, column: 7, scope: !259, inlinedAt: !362)
!367 = !DILocation(line: 182, column: 2, scope: !259, inlinedAt: !362)
!368 = !DILocation(line: 183, column: 3, scope: !261, inlinedAt: !362)
!369 = !DILocation(line: 182, column: 24, scope: !261, inlinedAt: !362)
!370 = !DILocation(line: 182, column: 2, scope: !261, inlinedAt: !362)
!371 = !DILocation(line: 182, column: 16, scope: !261, inlinedAt: !362)
!372 = !DILocation(line: 184, column: 23, scope: !244, inlinedAt: !362)
!373 = !DILocation(line: 184, column: 2, scope: !244, inlinedAt: !362)
!374 = !DILocation(line: 185, column: 1, scope: !244, inlinedAt: !362)
!375 = !DILocation(line: 287, column: 4, scope: !359)
!376 = !DILocation(line: 288, column: 7, scope: !330)
!377 = !DILocation(line: 289, column: 4, scope: !378)
!378 = distinct !DILexicalBlock(scope: !330, file: !3, line: 288, column: 7)
!379 = !DILocation(line: 178, column: 35, scope: !244, inlinedAt: !380)
!380 = distinct !DILocation(line: 291, column: 4, scope: !378)
!381 = !DILocation(line: 178, column: 51, scope: !244, inlinedAt: !380)
!382 = !DILocation(line: 178, column: 66, scope: !244, inlinedAt: !380)
!383 = !DILocation(line: 180, column: 15, scope: !244, inlinedAt: !380)
!384 = !DILocation(line: 182, column: 7, scope: !259, inlinedAt: !380)
!385 = !DILocation(line: 182, column: 2, scope: !259, inlinedAt: !380)
!386 = !DILocation(line: 183, column: 3, scope: !261, inlinedAt: !380)
!387 = !DILocation(line: 182, column: 24, scope: !261, inlinedAt: !380)
!388 = !DILocation(line: 182, column: 2, scope: !261, inlinedAt: !380)
!389 = !DILocation(line: 182, column: 16, scope: !261, inlinedAt: !380)
!390 = !DILocation(line: 184, column: 23, scope: !244, inlinedAt: !380)
!391 = !DILocation(line: 184, column: 2, scope: !244, inlinedAt: !380)
!392 = !DILocation(line: 185, column: 1, scope: !244, inlinedAt: !380)
!393 = !DILocation(line: 292, column: 3, scope: !330)
!394 = !DILocation(line: 278, column: 22, scope: !326)
!395 = !DILocation(line: 278, column: 2, scope: !326)
!396 = distinct !{!396, !327, !397}
!397 = !DILocation(line: 293, column: 2, scope: !324)
!398 = !DILocation(line: 194, column: 8, scope: !32)
!399 = !DILocation(line: 297, column: 7, scope: !32)
!400 = !DILocation(line: 297, column: 4, scope: !32)
!401 = !DILocation(line: 301, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !32, file: !3, line: 301, column: 2)
!403 = !DILocation(line: 301, column: 2, scope: !402)
!404 = !DILocation(line: 302, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 301, column: 2)
!406 = !DILocation(line: 302, column: 4, scope: !405)
!407 = !DILocation(line: 302, column: 18, scope: !405)
!408 = !DILocation(line: 302, column: 28, scope: !405)
!409 = !DILocation(line: 302, column: 25, scope: !405)
!410 = !DILocation(line: 302, column: 39, scope: !405)
!411 = !DILocation(line: 302, column: 23, scope: !405)
!412 = !DILocation(line: 302, column: 47, scope: !405)
!413 = !DILocation(line: 302, column: 44, scope: !405)
!414 = !DILocation(line: 302, column: 43, scope: !405)
!415 = !DILocalVariable(name: "s", arg: 1, scope: !416, file: !3, line: 159, type: !6)
!416 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 159, type: !417, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!6, !6, !18, !13}
!419 = !{!415, !420, !421}
!420 = !DILocalVariable(name: "u", arg: 2, scope: !416, file: !3, line: 159, type: !18)
!421 = !DILocalVariable(name: "n", arg: 3, scope: !416, file: !3, line: 159, type: !13)
!422 = !DILocation(line: 159, column: 25, scope: !416, inlinedAt: !423)
!423 = distinct !DILocation(line: 301, column: 27, scope: !405)
!424 = !DILocation(line: 159, column: 41, scope: !416, inlinedAt: !423)
!425 = !DILocation(line: 159, column: 48, scope: !416, inlinedAt: !423)
!426 = !DILocation(line: 161, column: 2, scope: !416, inlinedAt: !423)
!427 = !DILocation(line: 162, column: 16, scope: !428, inlinedAt: !423)
!428 = distinct !DILexicalBlock(scope: !416, file: !3, line: 161, column: 19)
!429 = !DILocation(line: 162, column: 10, scope: !428, inlinedAt: !423)
!430 = !DILocation(line: 162, column: 5, scope: !428, inlinedAt: !423)
!431 = !DILocation(line: 162, column: 8, scope: !428, inlinedAt: !423)
!432 = !DILocation(line: 163, column: 5, scope: !428, inlinedAt: !423)
!433 = !DILocation(line: 165, column: 2, scope: !416, inlinedAt: !423)
!434 = !DILocation(line: 301, column: 19, scope: !405)
!435 = !DILocation(line: 301, column: 2, scope: !405)
!436 = !DILocation(line: 301, column: 13, scope: !405)
!437 = distinct !{!437, !403, !438}
!438 = !DILocation(line: 302, column: 61, scope: !402)
!439 = !DILocation(line: 303, column: 15, scope: !32)
!440 = !DILocation(line: 303, column: 21, scope: !32)
!441 = !DILocation(line: 303, column: 26, scope: !32)
!442 = !DILocation(line: 303, column: 25, scope: !32)
!443 = !DILocation(line: 159, column: 25, scope: !416, inlinedAt: !444)
!444 = distinct !DILocation(line: 303, column: 6, scope: !32)
!445 = !DILocation(line: 159, column: 41, scope: !416, inlinedAt: !444)
!446 = !DILocation(line: 159, column: 48, scope: !416, inlinedAt: !444)
!447 = !DILocation(line: 161, column: 2, scope: !416, inlinedAt: !444)
!448 = !DILocation(line: 162, column: 16, scope: !428, inlinedAt: !444)
!449 = !DILocation(line: 162, column: 10, scope: !428, inlinedAt: !444)
!450 = !DILocation(line: 162, column: 5, scope: !428, inlinedAt: !444)
!451 = !DILocation(line: 162, column: 8, scope: !428, inlinedAt: !444)
!452 = !DILocation(line: 163, column: 5, scope: !428, inlinedAt: !444)
!453 = !DILocation(line: 165, column: 2, scope: !416, inlinedAt: !444)
!454 = !DILocation(line: 304, column: 5, scope: !32)
!455 = !DILocation(line: 305, column: 2, scope: !32)
!456 = !DILocation(line: 0, scope: !162)
!457 = !DILocation(line: 306, column: 1, scope: !32)
!458 = distinct !DISubprogram(name: "sha256_update", scope: !3, file: !3, line: 135, type: !459, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !208, !247, !43}
!461 = !{!462, !463, !464, !465, !468}
!462 = !DILocalVariable(name: "s", arg: 1, scope: !458, file: !3, line: 135, type: !208)
!463 = !DILocalVariable(name: "m", arg: 2, scope: !458, file: !3, line: 135, type: !247)
!464 = !DILocalVariable(name: "len", arg: 3, scope: !458, file: !3, line: 135, type: !43)
!465 = !DILocalVariable(name: "p", scope: !458, file: !3, line: 137, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!468 = !DILocalVariable(name: "r", scope: !458, file: !3, line: 138, type: !18)
!469 = !DILocation(line: 135, column: 42, scope: !458)
!470 = !DILocation(line: 135, column: 57, scope: !458)
!471 = !DILocation(line: 135, column: 74, scope: !458)
!472 = !DILocation(line: 137, column: 17, scope: !458)
!473 = !DILocation(line: 138, column: 18, scope: !458)
!474 = !DILocation(line: 138, column: 15, scope: !458)
!475 = !DILocation(line: 138, column: 11, scope: !458)
!476 = !DILocation(line: 140, column: 9, scope: !458)
!477 = !DILocation(line: 141, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !458, file: !3, line: 141, column: 6)
!479 = !DILocation(line: 141, column: 6, scope: !458)
!480 = !DILocation(line: 142, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 142, column: 7)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 141, column: 9)
!483 = !DILocation(line: 142, column: 13, scope: !481)
!484 = !DILocation(line: 142, column: 11, scope: !481)
!485 = !DILocation(line: 0, scope: !482)
!486 = !DILocation(line: 142, column: 7, scope: !482)
!487 = !DILocation(line: 143, column: 4, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 142, column: 21)
!489 = !DILocation(line: 144, column: 4, scope: !488)
!490 = !DILocation(line: 146, column: 3, scope: !482)
!491 = !DILocation(line: 147, column: 7, scope: !482)
!492 = !DILocation(line: 148, column: 5, scope: !482)
!493 = !DILocation(line: 149, column: 3, scope: !482)
!494 = !DILocation(line: 150, column: 2, scope: !482)
!495 = !DILocation(line: 0, scope: !458)
!496 = !DILocation(line: 151, column: 2, scope: !458)
!497 = !DILocation(line: 151, column: 13, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 151, column: 2)
!499 = distinct !DILexicalBlock(scope: !458, file: !3, line: 151, column: 2)
!500 = !DILocation(line: 151, column: 2, scope: !499)
!501 = !DILocation(line: 152, column: 3, scope: !498)
!502 = !DILocation(line: 151, column: 24, scope: !498)
!503 = !DILocation(line: 151, column: 33, scope: !498)
!504 = !DILocation(line: 151, column: 2, scope: !498)
!505 = distinct !{!505, !500, !506}
!506 = !DILocation(line: 152, column: 20, scope: !499)
!507 = !DILocation(line: 153, column: 9, scope: !458)
!508 = !DILocation(line: 0, scope: !498)
!509 = !DILocation(line: 153, column: 2, scope: !458)
!510 = !DILocation(line: 154, column: 1, scope: !458)
!511 = !DILocation(line: 0, scope: !488)
!512 = distinct !DISubprogram(name: "sha256_sum", scope: !3, file: !3, line: 122, type: !513, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !208, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!516 = !{!517, !518, !519}
!517 = !DILocalVariable(name: "s", arg: 1, scope: !512, file: !3, line: 122, type: !208)
!518 = !DILocalVariable(name: "md", arg: 2, scope: !512, file: !3, line: 122, type: !515)
!519 = !DILocalVariable(name: "i", scope: !512, file: !3, line: 124, type: !13)
!520 = !DILocation(line: 122, column: 39, scope: !512)
!521 = !DILocation(line: 122, column: 51, scope: !512)
!522 = !DILocalVariable(name: "s", arg: 1, scope: !523, file: !3, line: 86, type: !208)
!523 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 86, type: !206, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !524)
!524 = !{!522, !525}
!525 = !DILocalVariable(name: "r", scope: !523, file: !3, line: 88, type: !18)
!526 = !DILocation(line: 86, column: 32, scope: !523, inlinedAt: !527)
!527 = distinct !DILocation(line: 126, column: 2, scope: !512)
!528 = !DILocation(line: 88, column: 18, scope: !523, inlinedAt: !527)
!529 = !DILocation(line: 88, column: 15, scope: !523, inlinedAt: !527)
!530 = !DILocation(line: 88, column: 11, scope: !523, inlinedAt: !527)
!531 = !DILocation(line: 90, column: 10, scope: !523, inlinedAt: !527)
!532 = !DILocation(line: 90, column: 2, scope: !523, inlinedAt: !527)
!533 = !DILocation(line: 90, column: 14, scope: !523, inlinedAt: !527)
!534 = !DILocation(line: 91, column: 8, scope: !535, inlinedAt: !527)
!535 = distinct !DILexicalBlock(scope: !523, file: !3, line: 91, column: 6)
!536 = !DILocation(line: 91, column: 6, scope: !523, inlinedAt: !527)
!537 = !DILocation(line: 0, scope: !523, inlinedAt: !527)
!538 = !DILocation(line: 92, column: 17, scope: !539, inlinedAt: !527)
!539 = distinct !DILexicalBlock(scope: !535, file: !3, line: 91, column: 14)
!540 = !DILocation(line: 92, column: 28, scope: !539, inlinedAt: !527)
!541 = !DILocation(line: 92, column: 25, scope: !539, inlinedAt: !527)
!542 = !DILocation(line: 92, column: 3, scope: !539, inlinedAt: !527)
!543 = !DILocation(line: 94, column: 3, scope: !539, inlinedAt: !527)
!544 = !DILocation(line: 95, column: 2, scope: !539, inlinedAt: !527)
!545 = !DILocation(line: 96, column: 16, scope: !523, inlinedAt: !527)
!546 = !DILocation(line: 96, column: 27, scope: !523, inlinedAt: !527)
!547 = !DILocation(line: 96, column: 24, scope: !523, inlinedAt: !527)
!548 = !DILocation(line: 96, column: 2, scope: !523, inlinedAt: !527)
!549 = !DILocation(line: 97, column: 9, scope: !523, inlinedAt: !527)
!550 = !DILocation(line: 98, column: 22, scope: !523, inlinedAt: !527)
!551 = !DILocation(line: 98, column: 15, scope: !523, inlinedAt: !527)
!552 = !DILocation(line: 98, column: 2, scope: !523, inlinedAt: !527)
!553 = !DILocation(line: 98, column: 13, scope: !523, inlinedAt: !527)
!554 = !DILocation(line: 99, column: 22, scope: !523, inlinedAt: !527)
!555 = !DILocation(line: 99, column: 15, scope: !523, inlinedAt: !527)
!556 = !DILocation(line: 99, column: 2, scope: !523, inlinedAt: !527)
!557 = !DILocation(line: 99, column: 13, scope: !523, inlinedAt: !527)
!558 = !DILocation(line: 100, column: 22, scope: !523, inlinedAt: !527)
!559 = !DILocation(line: 100, column: 15, scope: !523, inlinedAt: !527)
!560 = !DILocation(line: 100, column: 2, scope: !523, inlinedAt: !527)
!561 = !DILocation(line: 100, column: 13, scope: !523, inlinedAt: !527)
!562 = !DILocation(line: 101, column: 22, scope: !523, inlinedAt: !527)
!563 = !DILocation(line: 101, column: 15, scope: !523, inlinedAt: !527)
!564 = !DILocation(line: 101, column: 2, scope: !523, inlinedAt: !527)
!565 = !DILocation(line: 101, column: 13, scope: !523, inlinedAt: !527)
!566 = !DILocation(line: 102, column: 22, scope: !523, inlinedAt: !527)
!567 = !DILocation(line: 102, column: 15, scope: !523, inlinedAt: !527)
!568 = !DILocation(line: 102, column: 2, scope: !523, inlinedAt: !527)
!569 = !DILocation(line: 102, column: 13, scope: !523, inlinedAt: !527)
!570 = !DILocation(line: 103, column: 22, scope: !523, inlinedAt: !527)
!571 = !DILocation(line: 103, column: 15, scope: !523, inlinedAt: !527)
!572 = !DILocation(line: 103, column: 2, scope: !523, inlinedAt: !527)
!573 = !DILocation(line: 103, column: 13, scope: !523, inlinedAt: !527)
!574 = !DILocation(line: 104, column: 22, scope: !523, inlinedAt: !527)
!575 = !DILocation(line: 104, column: 15, scope: !523, inlinedAt: !527)
!576 = !DILocation(line: 104, column: 2, scope: !523, inlinedAt: !527)
!577 = !DILocation(line: 104, column: 13, scope: !523, inlinedAt: !527)
!578 = !DILocation(line: 105, column: 15, scope: !523, inlinedAt: !527)
!579 = !DILocation(line: 105, column: 2, scope: !523, inlinedAt: !527)
!580 = !DILocation(line: 105, column: 13, scope: !523, inlinedAt: !527)
!581 = !DILocation(line: 106, column: 2, scope: !523, inlinedAt: !527)
!582 = !DILocation(line: 107, column: 1, scope: !523, inlinedAt: !527)
!583 = !DILocation(line: 124, column: 6, scope: !512)
!584 = !DILocation(line: 127, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !512, file: !3, line: 127, column: 2)
!586 = !DILocation(line: 127, column: 2, scope: !585)
!587 = !DILocation(line: 128, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 127, column: 26)
!589 = distinct !DILexicalBlock(scope: !585, file: !3, line: 127, column: 2)
!590 = !DILocation(line: 128, column: 21, scope: !588)
!591 = !DILocation(line: 128, column: 11, scope: !588)
!592 = !DILocation(line: 129, column: 15, scope: !588)
!593 = !DILocation(line: 129, column: 23, scope: !588)
!594 = !DILocation(line: 129, column: 3, scope: !588)
!595 = !DILocation(line: 129, column: 13, scope: !588)
!596 = !DILocation(line: 130, column: 15, scope: !588)
!597 = !DILocation(line: 130, column: 23, scope: !588)
!598 = !DILocation(line: 130, column: 3, scope: !588)
!599 = !DILocation(line: 130, column: 13, scope: !588)
!600 = !DILocation(line: 131, column: 15, scope: !588)
!601 = !DILocation(line: 131, column: 3, scope: !588)
!602 = !DILocation(line: 131, column: 13, scope: !588)
!603 = !DILocation(line: 127, column: 2, scope: !589)
!604 = !DILocation(line: 128, column: 3, scope: !588)
!605 = !DILocation(line: 133, column: 1, scope: !512)
!606 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 43, type: !607, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !208, !466}
!609 = !{!610, !611, !612, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DILocalVariable(name: "s", arg: 1, scope: !606, file: !3, line: 43, type: !208)
!611 = !DILocalVariable(name: "buf", arg: 2, scope: !606, file: !3, line: 43, type: !466)
!612 = !DILocalVariable(name: "W", scope: !606, file: !3, line: 45, type: !613)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !53)
!614 = !DILocalVariable(name: "t1", scope: !606, file: !3, line: 45, type: !14)
!615 = !DILocalVariable(name: "t2", scope: !606, file: !3, line: 45, type: !14)
!616 = !DILocalVariable(name: "a", scope: !606, file: !3, line: 45, type: !14)
!617 = !DILocalVariable(name: "b", scope: !606, file: !3, line: 45, type: !14)
!618 = !DILocalVariable(name: "c", scope: !606, file: !3, line: 45, type: !14)
!619 = !DILocalVariable(name: "d", scope: !606, file: !3, line: 45, type: !14)
!620 = !DILocalVariable(name: "e", scope: !606, file: !3, line: 45, type: !14)
!621 = !DILocalVariable(name: "f", scope: !606, file: !3, line: 45, type: !14)
!622 = !DILocalVariable(name: "g", scope: !606, file: !3, line: 45, type: !14)
!623 = !DILocalVariable(name: "h", scope: !606, file: !3, line: 45, type: !14)
!624 = !DILocalVariable(name: "i", scope: !606, file: !3, line: 46, type: !13)
!625 = !DILocation(line: 43, column: 41, scope: !606)
!626 = !DILocation(line: 43, column: 59, scope: !606)
!627 = !DILocation(line: 45, column: 2, scope: !606)
!628 = !DILocation(line: 45, column: 11, scope: !606)
!629 = !DILocation(line: 46, column: 6, scope: !606)
!630 = !DILocation(line: 48, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !606, file: !3, line: 48, column: 2)
!632 = !DILocation(line: 48, column: 2, scope: !631)
!633 = !DILocation(line: 54, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !606, file: !3, line: 54, column: 2)
!635 = !DILocation(line: 55, column: 46, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !3, line: 54, column: 2)
!637 = !DILocation(line: 55, column: 10, scope: !636)
!638 = !DILocation(line: 49, column: 25, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 48, column: 27)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 48, column: 2)
!641 = !DILocation(line: 49, column: 20, scope: !639)
!642 = !DILocation(line: 49, column: 10, scope: !639)
!643 = !DILocation(line: 49, column: 28, scope: !639)
!644 = !DILocation(line: 49, column: 3, scope: !639)
!645 = !DILocation(line: 50, column: 28, scope: !639)
!646 = !DILocation(line: 50, column: 21, scope: !639)
!647 = !DILocation(line: 50, column: 11, scope: !639)
!648 = !DILocation(line: 50, column: 31, scope: !639)
!649 = !DILocation(line: 50, column: 8, scope: !639)
!650 = !DILocation(line: 51, column: 28, scope: !639)
!651 = !DILocation(line: 51, column: 21, scope: !639)
!652 = !DILocation(line: 51, column: 11, scope: !639)
!653 = !DILocation(line: 51, column: 31, scope: !639)
!654 = !DILocation(line: 51, column: 8, scope: !639)
!655 = !DILocation(line: 52, column: 18, scope: !639)
!656 = !DILocation(line: 52, column: 11, scope: !639)
!657 = !DILocation(line: 52, column: 8, scope: !639)
!658 = !DILocation(line: 48, column: 23, scope: !640)
!659 = !DILocation(line: 48, column: 2, scope: !640)
!660 = !DILocation(line: 48, column: 16, scope: !640)
!661 = distinct !{!661, !632, !662}
!662 = !DILocation(line: 53, column: 2, scope: !631)
!663 = !DILocalVariable(name: "n", arg: 1, scope: !664, file: !3, line: 24, type: !14)
!664 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 24, type: !665, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!14, !14, !13}
!667 = !{!663, !668}
!668 = !DILocalVariable(name: "k", arg: 2, scope: !664, file: !3, line: 24, type: !13)
!669 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !670)
!670 = distinct !DILocation(line: 55, column: 10, scope: !636)
!671 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !670)
!672 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !670)
!673 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !670)
!674 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !670)
!675 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !670)
!676 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !677)
!677 = distinct !DILocation(line: 55, column: 10, scope: !636)
!678 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !677)
!679 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !677)
!680 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !677)
!681 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !677)
!682 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !677)
!683 = !DILocation(line: 55, column: 26, scope: !636)
!684 = !DILocation(line: 55, column: 23, scope: !636)
!685 = !DILocation(line: 55, column: 21, scope: !636)
!686 = !DILocation(line: 55, column: 32, scope: !636)
!687 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !688)
!688 = distinct !DILocation(line: 55, column: 32, scope: !636)
!689 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !688)
!690 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !688)
!691 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !688)
!692 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !688)
!693 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !688)
!694 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !695)
!695 = distinct !DILocation(line: 55, column: 32, scope: !636)
!696 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !695)
!697 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !695)
!698 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !695)
!699 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !695)
!700 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !695)
!701 = !DILocation(line: 55, column: 30, scope: !636)
!702 = !DILocation(line: 55, column: 44, scope: !636)
!703 = !DILocation(line: 55, column: 3, scope: !636)
!704 = !DILocation(line: 55, column: 8, scope: !636)
!705 = !DILocation(line: 54, column: 18, scope: !636)
!706 = !DILocation(line: 54, column: 2, scope: !636)
!707 = !DILocation(line: 54, column: 11, scope: !636)
!708 = distinct !{!708, !633, !709}
!709 = !DILocation(line: 55, column: 52, scope: !634)
!710 = !DILocation(line: 56, column: 6, scope: !606)
!711 = !DILocation(line: 45, column: 26, scope: !606)
!712 = !DILocation(line: 45, column: 29, scope: !606)
!713 = !DILocation(line: 45, column: 32, scope: !606)
!714 = !DILocation(line: 45, column: 35, scope: !606)
!715 = !DILocation(line: 60, column: 6, scope: !606)
!716 = !DILocation(line: 45, column: 38, scope: !606)
!717 = !DILocation(line: 45, column: 41, scope: !606)
!718 = !DILocation(line: 45, column: 44, scope: !606)
!719 = !DILocation(line: 45, column: 47, scope: !606)
!720 = !DILocation(line: 64, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !606, file: !3, line: 64, column: 2)
!722 = !DILocation(line: 64, column: 2, scope: !721)
!723 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !724)
!724 = distinct !DILocation(line: 65, column: 12, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 64, column: 27)
!726 = distinct !DILexicalBlock(scope: !721, file: !3, line: 64, column: 2)
!727 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !724)
!728 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !724)
!729 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !724)
!730 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !724)
!731 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !732)
!732 = distinct !DILocation(line: 65, column: 12, scope: !725)
!733 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !732)
!734 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !732)
!735 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !732)
!736 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !732)
!737 = !DILocation(line: 65, column: 12, scope: !725)
!738 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !739)
!739 = distinct !DILocation(line: 65, column: 12, scope: !725)
!740 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !739)
!741 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !739)
!742 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !739)
!743 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !739)
!744 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !739)
!745 = !DILocation(line: 65, column: 10, scope: !725)
!746 = !DILocation(line: 65, column: 20, scope: !725)
!747 = !DILocation(line: 65, column: 18, scope: !725)
!748 = !DILocation(line: 65, column: 32, scope: !725)
!749 = !DILocation(line: 65, column: 30, scope: !725)
!750 = !DILocation(line: 65, column: 39, scope: !725)
!751 = !DILocation(line: 65, column: 37, scope: !725)
!752 = !DILocation(line: 45, column: 18, scope: !606)
!753 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !754)
!754 = distinct !DILocation(line: 66, column: 8, scope: !725)
!755 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !754)
!756 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !754)
!757 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !754)
!758 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !754)
!759 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !760)
!760 = distinct !DILocation(line: 66, column: 8, scope: !725)
!761 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !760)
!762 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !760)
!763 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !760)
!764 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !760)
!765 = !DILocation(line: 66, column: 8, scope: !725)
!766 = !DILocation(line: 24, column: 30, scope: !664, inlinedAt: !767)
!767 = distinct !DILocation(line: 66, column: 8, scope: !725)
!768 = !DILocation(line: 24, column: 37, scope: !664, inlinedAt: !767)
!769 = !DILocation(line: 24, column: 52, scope: !664, inlinedAt: !767)
!770 = !DILocation(line: 24, column: 63, scope: !664, inlinedAt: !767)
!771 = !DILocation(line: 24, column: 58, scope: !664, inlinedAt: !767)
!772 = !DILocation(line: 24, column: 42, scope: !664, inlinedAt: !767)
!773 = !DILocation(line: 66, column: 16, scope: !725)
!774 = !DILocation(line: 66, column: 14, scope: !725)
!775 = !DILocation(line: 45, column: 22, scope: !606)
!776 = !DILocation(line: 70, column: 9, scope: !725)
!777 = !DILocation(line: 74, column: 10, scope: !725)
!778 = !DILocation(line: 64, column: 23, scope: !726)
!779 = !DILocation(line: 64, column: 2, scope: !726)
!780 = !DILocation(line: 64, column: 16, scope: !726)
!781 = distinct !{!781, !722, !782}
!782 = !DILocation(line: 75, column: 2, scope: !721)
!783 = !DILocation(line: 76, column: 10, scope: !606)
!784 = !DILocation(line: 80, column: 10, scope: !606)
!785 = !DILocation(line: 84, column: 1, scope: !606)
