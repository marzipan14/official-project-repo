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
  %8 = icmp ne i8* %6, null, !dbg !115
  %9 = icmp eq i8* %7, %5, !dbg !117
  %10 = and i1 %8, %9, !dbg !118
  br i1 %10, label %11, label %15, !dbg !118

; <label>:11:                                     ; preds = %3
  %12 = call i32 @memcmp(i8* nonnull %5, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__crypt_sha256.testhash, i64 0, i64 0), i64 73) #6, !dbg !119
  %13 = icmp eq i32 %12, 0, !dbg !119
  %14 = select i1 %13, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), !dbg !120
  br label %15, !dbg !120

; <label>:15:                                     ; preds = %11, %3
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %3 ], [ %14, %11 ], !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  ret i8* %16, !dbg !122
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
  %10 = bitcast %struct.sha256* %4 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %10) #4, !dbg !126
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #4, !dbg !127
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #4, !dbg !127
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #4, !dbg !127
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %14) #4, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 20, i1 false), !dbg !132
  %15 = tail call i64 @strnlen(i8* %0, i64 257) #6, !dbg !133
  %16 = trunc i64 %15 to i32, !dbg !133
  %17 = icmp ugt i32 %16, 256, !dbg !135
  br i1 %17, label %246, label %18, !dbg !137

; <label>:18:                                     ; preds = %3
  %19 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #6, !dbg !138
  %20 = icmp eq i32 %19, 0, !dbg !140
  br i1 %20, label %21, label %246, !dbg !141

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !142
  %23 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7) #6, !dbg !145
  %24 = icmp eq i32 %23, 0, !dbg !146
  br i1 %24, label %25, label %52, !dbg !147

; <label>:25:                                     ; preds = %21
  %26 = bitcast i8** %9 to i8*, !dbg !148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !148
  %27 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !149
  %28 = tail call i8* @__locale_ctype_ptr() #6, !dbg !150
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !150
  %30 = load i8, i8* %27, align 1, !dbg !150, !tbaa !152
  %31 = sext i8 %30 to i64, !dbg !150
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !150
  %33 = load i8, i8* %32, align 1, !dbg !150, !tbaa !152
  %34 = and i8 %33, 4, !dbg !150
  %35 = icmp eq i8 %34, 0, !dbg !150
  br i1 %35, label %48, label %36, !dbg !155

; <label>:36:                                     ; preds = %25
  %37 = call i64 @strtoul(i8* nonnull %27, i8** nonnull %9, i32 10) #6, !dbg !157
  %38 = load i8*, i8** %9, align 8, !dbg !159, !tbaa !161
  %39 = load i8, i8* %38, align 1, !dbg !163, !tbaa !152
  %40 = icmp eq i8 %39, 36, !dbg !164
  br i1 %40, label %41, label %48, !dbg !165

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !166
  %43 = icmp ult i64 %37, 1000, !dbg !167
  br i1 %43, label %49, label %44, !dbg !169

; <label>:44:                                     ; preds = %41
  %45 = icmp ugt i64 %37, 9999999, !dbg !170
  br i1 %45, label %48, label %46, !dbg !172

; <label>:46:                                     ; preds = %44
  %47 = trunc i64 %37 to i32, !dbg !173
  br label %49

; <label>:48:                                     ; preds = %25, %36, %44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !174
  br label %246

; <label>:49:                                     ; preds = %46, %41
  %50 = phi i32 [ %47, %46 ], [ 1000, %41 ], !dbg !175
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %50) #6, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !174
  br label %52

; <label>:52:                                     ; preds = %49, %21
  %53 = phi i32 [ %50, %49 ], [ 5000, %21 ], !dbg !177
  %54 = phi i8* [ %42, %49 ], [ %22, %21 ], !dbg !178
  %55 = load i8, i8* %54, align 1, !dbg !180, !tbaa !152
  switch i8 %55, label %56 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !180
  %58 = load i8, i8* %57, align 1, !dbg !180, !tbaa !152
  switch i8 %58, label %248 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:59:                                     ; preds = %290, %287, %287, %284, %284, %281, %281, %278, %278, %275, %275, %272, %272, %269, %269, %266, %266, %263, %263, %260, %260, %257, %257, %254, %254, %251, %251, %248, %248, %56, %56, %52, %52
  %60 = phi i32 [ 0, %52 ], [ 0, %52 ], [ 1, %56 ], [ 1, %56 ], [ 2, %248 ], [ 2, %248 ], [ 3, %251 ], [ 3, %251 ], [ 4, %254 ], [ 4, %254 ], [ 5, %257 ], [ 5, %257 ], [ 6, %260 ], [ 6, %260 ], [ 7, %263 ], [ 7, %263 ], [ 8, %266 ], [ 8, %266 ], [ 9, %269 ], [ 9, %269 ], [ 10, %272 ], [ 10, %272 ], [ 11, %275 ], [ 11, %275 ], [ 12, %278 ], [ 12, %278 ], [ 13, %281 ], [ 13, %281 ], [ 14, %284 ], [ 14, %284 ], [ 15, %287 ], [ 15, %287 ], [ 16, %290 ], !dbg !184
  %61 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 0, !dbg !195
  store i64 0, i64* %61, align 8, !dbg !196, !tbaa !197
  %62 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 0, !dbg !200
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !201
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %63, align 8, !dbg !201, !tbaa !202
  %64 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 4, !dbg !204
  %65 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 5, !dbg !205
  %66 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 6, !dbg !206
  %67 = getelementptr inbounds %struct.sha256, %struct.sha256* %4, i64 0, i32 1, i64 7, !dbg !207
  %68 = bitcast i32* %64 to <4 x i32>*, !dbg !208
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %68, align 8, !dbg !208, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %69 = and i64 %15, 4294967295, !dbg !210
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !211
  %70 = zext i32 %60 to i64, !dbg !212
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %70) #5, !dbg !213
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !214
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !215
  store i64 0, i64* %61, align 8, !dbg !218, !tbaa !197
  %71 = bitcast i32* %62 to <4 x i32>*, !dbg !219
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %71, align 8, !dbg !219, !tbaa !202
  store i32 1359893119, i32* %64, align 8, !dbg !220, !tbaa !202
  store i32 -1694144372, i32* %65, align 4, !dbg !221, !tbaa !202
  store i32 528734635, i32* %66, align 8, !dbg !222, !tbaa !202
  store i32 1541459225, i32* %67, align 4, !dbg !223, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !225
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %70) #5, !dbg !226
  %72 = icmp ugt i32 %16, 32, !dbg !242
  br i1 %72, label %73, label %84, !dbg !245

; <label>:73:                                     ; preds = %59
  %74 = add i64 %15, 4294967263, !dbg !246
  br label %75, !dbg !246

; <label>:75:                                     ; preds = %75, %73
  %76 = phi i32 [ %77, %75 ], [ %16, %73 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #6, !dbg !246
  %77 = add i32 %76, -32, !dbg !247
  %78 = icmp ugt i32 %77, 32, !dbg !242
  br i1 %78, label %75, label %79, !dbg !245, !llvm.loop !248

; <label>:79:                                     ; preds = %75
  %80 = and i64 %74, 4294967264, !dbg !246
  %81 = add i64 %15, 4294967264, !dbg !246
  %82 = sub i64 %81, %80, !dbg !246
  %83 = and i64 %82, 4294967295, !dbg !251
  br label %84, !dbg !251

; <label>:84:                                     ; preds = %59, %79
  %85 = phi i64 [ %69, %59 ], [ %83, %79 ], !dbg !251
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 %85) #6, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  %86 = icmp eq i32 %16, 0, !dbg !254
  br i1 %86, label %103, label %87, !dbg !257

; <label>:87:                                     ; preds = %84, %93
  %88 = phi i32 [ %94, %93 ], [ %16, %84 ]
  %89 = and i32 %88, 1, !dbg !258
  %90 = icmp eq i32 %89, 0, !dbg !258
  br i1 %90, label %92, label %91, !dbg !260

; <label>:91:                                     ; preds = %87
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !261
  br label %93, !dbg !261

; <label>:92:                                     ; preds = %87
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !262
  br label %93

; <label>:93:                                     ; preds = %91, %92
  %94 = lshr i32 %88, 1, !dbg !263
  %95 = icmp eq i32 %94, 0, !dbg !254
  br i1 %95, label %96, label %87, !dbg !257, !llvm.loop !264

; <label>:96:                                     ; preds = %93
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !266
  store i64 0, i64* %61, align 8, !dbg !269, !tbaa !197
  %97 = bitcast i32* %62 to <4 x i32>*, !dbg !270
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %97, align 8, !dbg !270, !tbaa !202
  %98 = bitcast i32* %64 to <4 x i32>*, !dbg !271
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %98, align 8, !dbg !271, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %86, label %106, label %99, !dbg !273

; <label>:99:                                     ; preds = %96, %99
  %100 = phi i32 [ %101, %99 ], [ 0, %96 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !275
  %101 = add nuw i32 %100, 1, !dbg !277
  %102 = icmp eq i32 %101, %16, !dbg !278
  br i1 %102, label %106, label %99, !dbg !273, !llvm.loop !279

; <label>:103:                                    ; preds = %84
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !266
  store i64 0, i64* %61, align 8, !dbg !269, !tbaa !197
  %104 = bitcast i32* %62 to <4 x i32>*, !dbg !270
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %104, align 8, !dbg !270, !tbaa !202
  %105 = bitcast i32* %64 to <4 x i32>*, !dbg !271
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %105, align 8, !dbg !271, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %106

; <label>:106:                                    ; preds = %99, %103, %96
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %12) #5, !dbg !281
  store i64 0, i64* %61, align 8, !dbg !284, !tbaa !197
  %107 = bitcast i32* %62 to <4 x i32>*, !dbg !285
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %107, align 8, !dbg !285, !tbaa !202
  %108 = bitcast i32* %64 to <4 x i32>*, !dbg !286
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %108, align 8, !dbg !286, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br label %109, !dbg !288

; <label>:109:                                    ; preds = %106, %109
  %110 = phi i32 [ 0, %106 ], [ %111, %109 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %54, i64 %70) #5, !dbg !290
  %111 = add nuw nsw i32 %110, 1, !dbg !292
  %112 = load i8, i8* %11, align 16, !dbg !293, !tbaa !152
  %113 = zext i8 %112 to i32, !dbg !293
  %114 = add nuw nsw i32 %113, 16, !dbg !294
  %115 = icmp ult i32 %111, %114, !dbg !295
  br i1 %115, label %109, label %116, !dbg !288, !llvm.loop !296

; <label>:116:                                    ; preds = %109
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %13) #5, !dbg !298
  %117 = icmp eq i32 %53, 0, !dbg !299
  br i1 %117, label %166, label %118, !dbg !302

; <label>:118:                                    ; preds = %116
  %119 = add i64 %15, 4294967263
  %120 = and i64 %119, 4294967264
  %121 = add i64 %15, 4294967264
  %122 = sub i64 %121, %120
  %123 = and i64 %122, 4294967295
  %124 = and i64 %122, 4294967295
  %125 = and i64 %122, 4294967295
  %126 = bitcast i32* %62 to <4 x i32>*
  %127 = bitcast i32* %64 to <4 x i32>*
  br label %128, !dbg !302

; <label>:128:                                    ; preds = %163, %118
  %129 = phi i32 [ 0, %118 ], [ %164, %163 ]
  store i64 0, i64* %61, align 8, !dbg !306, !tbaa !197
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %126, align 8, !dbg !307, !tbaa !202
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %127, align 8, !dbg !308, !tbaa !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %130 = and i32 %129, 1, !dbg !310
  %131 = icmp ne i32 %130, 0, !dbg !310
  br i1 %131, label %132, label %139, !dbg !312

; <label>:132:                                    ; preds = %128
  br i1 %72, label %133, label %137, !dbg !318

; <label>:133:                                    ; preds = %132, %133
  %134 = phi i32 [ %135, %133 ], [ %16, %132 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !319
  %135 = add i32 %134, -32, !dbg !320
  %136 = icmp ugt i32 %135, 32, !dbg !321
  br i1 %136, label %133, label %137, !dbg !318, !llvm.loop !248

; <label>:137:                                    ; preds = %133, %132
  %138 = phi i64 [ %69, %132 ], [ %123, %133 ], !dbg !322
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %138) #6, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br label %140, !dbg !325

; <label>:139:                                    ; preds = %128
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !326
  br label %140

; <label>:140:                                    ; preds = %139, %137
  %141 = urem i32 %129, 3, !dbg !327
  %142 = icmp eq i32 %141, 0, !dbg !327
  br i1 %142, label %144, label %143, !dbg !329

; <label>:143:                                    ; preds = %140
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %13, i64 %70) #5, !dbg !330
  br label %144, !dbg !330

; <label>:144:                                    ; preds = %140, %143
  %145 = urem i32 %129, 7, !dbg !331
  %146 = icmp eq i32 %145, 0, !dbg !331
  br i1 %146, label %154, label %147, !dbg !333

; <label>:147:                                    ; preds = %144
  br i1 %72, label %148, label %152, !dbg !339

; <label>:148:                                    ; preds = %147, %148
  %149 = phi i32 [ %150, %148 ], [ %16, %147 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !340
  %150 = add i32 %149, -32, !dbg !341
  %151 = icmp ugt i32 %150, 32, !dbg !342
  br i1 %151, label %148, label %152, !dbg !339, !llvm.loop !248

; <label>:152:                                    ; preds = %148, %147
  %153 = phi i64 [ %69, %147 ], [ %124, %148 ], !dbg !343
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %153) #6, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %154, !dbg !346

; <label>:154:                                    ; preds = %144, %152
  br i1 %131, label %155, label %156, !dbg !347

; <label>:155:                                    ; preds = %154
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !348
  br label %163, !dbg !348

; <label>:156:                                    ; preds = %154
  br i1 %72, label %157, label %161, !dbg !355

; <label>:157:                                    ; preds = %156, %157
  %158 = phi i32 [ %159, %157 ], [ %16, %156 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !356
  %159 = add i32 %158, -32, !dbg !357
  %160 = icmp ugt i32 %159, 32, !dbg !358
  br i1 %160, label %157, label %161, !dbg !355, !llvm.loop !248

; <label>:161:                                    ; preds = %157, %156
  %162 = phi i64 [ %69, %156 ], [ %125, %157 ], !dbg !359
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %162) #6, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br label %163

; <label>:163:                                    ; preds = %161, %155
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !362
  %164 = add nuw i32 %129, 1, !dbg !363
  %165 = icmp eq i32 %164, %53, !dbg !299
  br i1 %165, label %166, label %128, !dbg !302, !llvm.loop !364

; <label>:166:                                    ; preds = %163, %116
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %60, i8* %54) #6, !dbg !367
  %168 = sext i32 %167 to i64, !dbg !368
  %169 = getelementptr inbounds i8, i8* %2, i64 %168, !dbg !368
  %170 = add nsw i64 %168, 40, !dbg !369
  br label %171, !dbg !369

; <label>:171:                                    ; preds = %171, %166
  %172 = phi i64 [ 0, %166 ], [ %218, %171 ]
  %173 = phi i8* [ %169, %166 ], [ %217, %171 ]
  %174 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 0, !dbg !371
  %175 = load i8, i8* %174, align 1, !dbg !371, !tbaa !152
  %176 = zext i8 %175 to i64, !dbg !373
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %176, !dbg !373
  %178 = load i8, i8* %177, align 1, !dbg !373, !tbaa !152
  %179 = zext i8 %178 to i32, !dbg !373
  %180 = shl nuw nsw i32 %179, 16, !dbg !374
  %181 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 1, !dbg !375
  %182 = load i8, i8* %181, align 1, !dbg !375, !tbaa !152
  %183 = zext i8 %182 to i64, !dbg !376
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %183, !dbg !376
  %185 = load i8, i8* %184, align 1, !dbg !376, !tbaa !152
  %186 = zext i8 %185 to i32, !dbg !376
  %187 = shl nuw nsw i32 %186, 8, !dbg !377
  %188 = or i32 %187, %180, !dbg !378
  %189 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 2, !dbg !379
  %190 = load i8, i8* %189, align 1, !dbg !379, !tbaa !152
  %191 = zext i8 %190 to i64, !dbg !380
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %191, !dbg !380
  %193 = load i8, i8* %192, align 1, !dbg !380, !tbaa !152
  %194 = zext i8 %193 to i32, !dbg !380
  %195 = or i32 %187, %194, !dbg !381
  %196 = and i32 %194, 63, !dbg !393
  %197 = zext i32 %196 to i64, !dbg !395
  %198 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %197, !dbg !395
  %199 = load i8, i8* %198, align 1, !dbg !395, !tbaa !152
  %200 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !396
  store i8 %199, i8* %173, align 1, !dbg !397, !tbaa !152
  %201 = lshr i32 %195, 6, !dbg !398
  %202 = and i32 %201, 63, !dbg !393
  %203 = zext i32 %202 to i64, !dbg !395
  %204 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %203, !dbg !395
  %205 = load i8, i8* %204, align 1, !dbg !395, !tbaa !152
  %206 = getelementptr inbounds i8, i8* %173, i64 2, !dbg !396
  store i8 %205, i8* %200, align 1, !dbg !397, !tbaa !152
  %207 = lshr i32 %188, 12, !dbg !398
  %208 = and i32 %207, 63, !dbg !393
  %209 = zext i32 %208 to i64, !dbg !395
  %210 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %209, !dbg !395
  %211 = load i8, i8* %210, align 1, !dbg !395, !tbaa !152
  %212 = getelementptr inbounds i8, i8* %173, i64 3, !dbg !396
  store i8 %211, i8* %206, align 1, !dbg !397, !tbaa !152
  %213 = lshr i32 %179, 2, !dbg !398
  %214 = zext i32 %213 to i64, !dbg !395
  %215 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %214, !dbg !395
  %216 = load i8, i8* %215, align 1, !dbg !395, !tbaa !152
  store i8 %216, i8* %212, align 1, !dbg !397, !tbaa !152
  %217 = getelementptr i8, i8* %173, i64 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  %218 = add nuw nsw i64 %172, 1, !dbg !400
  %219 = icmp eq i64 %218, 10, !dbg !401
  br i1 %219, label %220, label %171, !dbg !369, !llvm.loop !402

; <label>:220:                                    ; preds = %171
  %221 = getelementptr i8, i8* %2, i64 %170, !dbg !369
  %222 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !404
  %223 = load i8, i8* %222, align 1, !dbg !404, !tbaa !152
  %224 = zext i8 %223 to i32, !dbg !404
  %225 = shl nuw nsw i32 %224, 8, !dbg !405
  %226 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30, !dbg !406
  %227 = load i8, i8* %226, align 2, !dbg !406, !tbaa !152
  %228 = zext i8 %227 to i32, !dbg !406
  %229 = or i32 %225, %228, !dbg !407
  %230 = and i32 %228, 63, !dbg !412
  %231 = zext i32 %230 to i64, !dbg !413
  %232 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %231, !dbg !413
  %233 = load i8, i8* %232, align 1, !dbg !413, !tbaa !152
  %234 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !414
  store i8 %233, i8* %221, align 1, !dbg !415, !tbaa !152
  %235 = lshr i32 %229, 6, !dbg !416
  %236 = and i32 %235, 63, !dbg !412
  %237 = zext i32 %236 to i64, !dbg !413
  %238 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %237, !dbg !413
  %239 = load i8, i8* %238, align 1, !dbg !413, !tbaa !152
  %240 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !414
  store i8 %239, i8* %234, align 1, !dbg !415, !tbaa !152
  %241 = lshr i32 %224, 4, !dbg !416
  %242 = zext i32 %241 to i64, !dbg !413
  %243 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %242, !dbg !413
  %244 = load i8, i8* %243, align 1, !dbg !413, !tbaa !152
  store i8 %244, i8* %240, align 1, !dbg !415, !tbaa !152
  %245 = getelementptr i8, i8* %221, i64 3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  store i8 0, i8* %245, align 1, !dbg !418, !tbaa !152
  br label %246, !dbg !419

; <label>:246:                                    ; preds = %52, %52, %56, %56, %248, %248, %251, %251, %254, %254, %257, %257, %260, %260, %263, %263, %266, %266, %269, %269, %272, %272, %275, %275, %278, %278, %281, %281, %284, %284, %287, %287, %48, %18, %3, %220
  %247 = phi i8* [ %2, %220 ], [ null, %3 ], [ null, %18 ], [ null, %48 ], [ null, %287 ], [ null, %287 ], [ null, %284 ], [ null, %284 ], [ null, %281 ], [ null, %281 ], [ null, %278 ], [ null, %278 ], [ null, %275 ], [ null, %275 ], [ null, %272 ], [ null, %272 ], [ null, %269 ], [ null, %269 ], [ null, %266 ], [ null, %266 ], [ null, %263 ], [ null, %263 ], [ null, %260 ], [ null, %260 ], [ null, %257 ], [ null, %257 ], [ null, %254 ], [ null, %254 ], [ null, %251 ], [ null, %251 ], [ null, %248 ], [ null, %248 ], [ null, %56 ], [ null, %56 ], [ null, %52 ], [ null, %52 ], !dbg !420
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !421
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #4, !dbg !421
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #4, !dbg !421
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #4, !dbg !421
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %10) #4, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  ret i8* %247, !dbg !421

; <label>:248:                                    ; preds = %56
  %249 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !180
  %250 = load i8, i8* %249, align 1, !dbg !180, !tbaa !152
  switch i8 %250, label %251 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:251:                                    ; preds = %248
  %252 = getelementptr inbounds i8, i8* %54, i64 3, !dbg !180
  %253 = load i8, i8* %252, align 1, !dbg !180, !tbaa !152
  switch i8 %253, label %254 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:254:                                    ; preds = %251
  %255 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !180
  %256 = load i8, i8* %255, align 1, !dbg !180, !tbaa !152
  switch i8 %256, label %257 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:257:                                    ; preds = %254
  %258 = getelementptr inbounds i8, i8* %54, i64 5, !dbg !180
  %259 = load i8, i8* %258, align 1, !dbg !180, !tbaa !152
  switch i8 %259, label %260 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:260:                                    ; preds = %257
  %261 = getelementptr inbounds i8, i8* %54, i64 6, !dbg !180
  %262 = load i8, i8* %261, align 1, !dbg !180, !tbaa !152
  switch i8 %262, label %263 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:263:                                    ; preds = %260
  %264 = getelementptr inbounds i8, i8* %54, i64 7, !dbg !180
  %265 = load i8, i8* %264, align 1, !dbg !180, !tbaa !152
  switch i8 %265, label %266 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:266:                                    ; preds = %263
  %267 = getelementptr inbounds i8, i8* %54, i64 8, !dbg !180
  %268 = load i8, i8* %267, align 1, !dbg !180, !tbaa !152
  switch i8 %268, label %269 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:269:                                    ; preds = %266
  %270 = getelementptr inbounds i8, i8* %54, i64 9, !dbg !180
  %271 = load i8, i8* %270, align 1, !dbg !180, !tbaa !152
  switch i8 %271, label %272 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:272:                                    ; preds = %269
  %273 = getelementptr inbounds i8, i8* %54, i64 10, !dbg !180
  %274 = load i8, i8* %273, align 1, !dbg !180, !tbaa !152
  switch i8 %274, label %275 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:275:                                    ; preds = %272
  %276 = getelementptr inbounds i8, i8* %54, i64 11, !dbg !180
  %277 = load i8, i8* %276, align 1, !dbg !180, !tbaa !152
  switch i8 %277, label %278 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:278:                                    ; preds = %275
  %279 = getelementptr inbounds i8, i8* %54, i64 12, !dbg !180
  %280 = load i8, i8* %279, align 1, !dbg !180, !tbaa !152
  switch i8 %280, label %281 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:281:                                    ; preds = %278
  %282 = getelementptr inbounds i8, i8* %54, i64 13, !dbg !180
  %283 = load i8, i8* %282, align 1, !dbg !180, !tbaa !152
  switch i8 %283, label %284 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:284:                                    ; preds = %281
  %285 = getelementptr inbounds i8, i8* %54, i64 14, !dbg !180
  %286 = load i8, i8* %285, align 1, !dbg !180, !tbaa !152
  switch i8 %286, label %287 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %54, i64 15, !dbg !180
  %289 = load i8, i8* %288, align 1, !dbg !180, !tbaa !152
  switch i8 %289, label %290 [
    i8 0, label %59
    i8 36, label %59
    i8 10, label %246
    i8 58, label %246
  ], !dbg !183

; <label>:290:                                    ; preds = %287
  br label %59
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
define internal fastcc void @sha256_update(%struct.sha256*, i8*, i64) unnamed_addr #0 !dbg !422 {
  %4 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !437
  %5 = load i64, i64* %4, align 8, !dbg !437, !tbaa !197
  %6 = trunc i64 %5 to i32, !dbg !438
  %7 = and i32 %6, 63, !dbg !438
  %8 = add i64 %5, %2, !dbg !440
  store i64 %8, i64* %4, align 8, !dbg !440, !tbaa !197
  %9 = icmp eq i32 %7, 0, !dbg !441
  br i1 %9, label %23, label %10, !dbg !443

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 64, %7, !dbg !444
  %12 = zext i32 %11 to i64, !dbg !447
  %13 = icmp ugt i64 %12, %2, !dbg !448
  %14 = zext i32 %7 to i64, !dbg !449
  %15 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %14, !dbg !449
  br i1 %13, label %16, label %18, !dbg !450

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !451
  br label %45, !dbg !453

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !449
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !454
  %21 = sub i64 %2, %12, !dbg !455
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !456
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %19) #5, !dbg !457
  br label %23, !dbg !458

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !459
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  %26 = icmp ugt i64 %25, 63, !dbg !460
  br i1 %26, label %27, label %40, !dbg !463

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -64, !dbg !464
  %29 = and i64 %28, -64, !dbg !464
  %30 = add i64 %29, 64, !dbg !464
  br label %31, !dbg !464

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha256* %0, i8* %33) #5, !dbg !464
  %34 = add i64 %32, -64, !dbg !465
  %35 = getelementptr inbounds i8, i8* %33, i64 64, !dbg !466
  %36 = icmp ugt i64 %34, 63, !dbg !460
  br i1 %36, label %31, label %37, !dbg !463, !llvm.loop !467

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !464
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !464
  br label %40, !dbg !469

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !470
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !470
  %43 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !469
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !471
  br label %45, !dbg !472

; <label>:45:                                     ; preds = %40, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  ret void, !dbg !472
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha256_sum(%struct.sha256*, i8* nocapture) unnamed_addr #0 !dbg !473 {
  %3 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !489
  %4 = load i64, i64* %3, align 8, !dbg !489, !tbaa !197
  %5 = trunc i64 %4 to i32, !dbg !490
  %6 = and i32 %5, 63, !dbg !490
  %7 = add nuw nsw i32 %6, 1, !dbg !492
  %8 = zext i32 %6 to i64, !dbg !493
  %9 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %8, !dbg !493
  store i8 -128, i8* %9, align 1, !dbg !494, !tbaa !152
  %10 = icmp ugt i32 %6, 55, !dbg !495
  %11 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !497
  br i1 %10, label %12, label %18, !dbg !498

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !499
  %14 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %13, !dbg !499
  %15 = xor i32 %6, 63, !dbg !501
  %16 = zext i32 %15 to i64, !dbg !502
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !503
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !504
  br label %18, !dbg !505

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !497
  %20 = zext i32 %19 to i64, !dbg !506
  %21 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %20, !dbg !506
  %22 = sub nsw i32 56, %19, !dbg !507
  %23 = zext i32 %22 to i64, !dbg !508
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !509
  %25 = load i64, i64* %3, align 8, !dbg !510, !tbaa !197
  %26 = shl i64 %25, 3, !dbg !510
  store i64 %26, i64* %3, align 8, !dbg !510, !tbaa !197
  %27 = lshr i64 %25, 53, !dbg !511
  %28 = trunc i64 %27 to i8, !dbg !512
  %29 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 56, !dbg !513
  store i8 %28, i8* %29, align 8, !dbg !514, !tbaa !152
  %30 = lshr i64 %25, 45, !dbg !515
  %31 = trunc i64 %30 to i8, !dbg !516
  %32 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 57, !dbg !517
  store i8 %31, i8* %32, align 1, !dbg !518, !tbaa !152
  %33 = lshr i64 %25, 37, !dbg !519
  %34 = trunc i64 %33 to i8, !dbg !520
  %35 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 58, !dbg !521
  store i8 %34, i8* %35, align 2, !dbg !522, !tbaa !152
  %36 = lshr i64 %25, 29, !dbg !523
  %37 = trunc i64 %36 to i8, !dbg !524
  %38 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 59, !dbg !525
  store i8 %37, i8* %38, align 1, !dbg !526, !tbaa !152
  %39 = lshr i64 %25, 21, !dbg !527
  %40 = trunc i64 %39 to i8, !dbg !528
  %41 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 60, !dbg !529
  store i8 %40, i8* %41, align 4, !dbg !530, !tbaa !152
  %42 = lshr i64 %25, 13, !dbg !531
  %43 = trunc i64 %42 to i8, !dbg !532
  %44 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 61, !dbg !533
  store i8 %43, i8* %44, align 1, !dbg !534, !tbaa !152
  %45 = lshr i64 %25, 5, !dbg !535
  %46 = trunc i64 %45 to i8, !dbg !536
  %47 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 62, !dbg !537
  store i8 %46, i8* %47, align 2, !dbg !538, !tbaa !152
  %48 = trunc i64 %26 to i8, !dbg !539
  %49 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 63, !dbg !540
  store i8 %48, i8* %49, align 1, !dbg !541, !tbaa !152
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %50 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !545
  %51 = load i32, i32* %50, align 4, !dbg !545, !tbaa !202
  %52 = lshr i32 %51, 24, !dbg !549
  %53 = trunc i32 %52 to i8, !dbg !545
  store i8 %53, i8* %1, align 1, !dbg !550, !tbaa !152
  %54 = load i32, i32* %50, align 4, !dbg !551, !tbaa !202
  %55 = lshr i32 %54, 16, !dbg !552
  %56 = trunc i32 %55 to i8, !dbg !551
  %57 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !553
  store i8 %56, i8* %57, align 1, !dbg !554, !tbaa !152
  %58 = load i32, i32* %50, align 4, !dbg !555, !tbaa !202
  %59 = lshr i32 %58, 8, !dbg !556
  %60 = trunc i32 %59 to i8, !dbg !555
  %61 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !557
  store i8 %60, i8* %61, align 1, !dbg !558, !tbaa !152
  %62 = load i32, i32* %50, align 4, !dbg !559, !tbaa !202
  %63 = trunc i32 %62 to i8, !dbg !559
  %64 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !560
  store i8 %63, i8* %64, align 1, !dbg !561, !tbaa !152
  %65 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 1, !dbg !545
  %66 = load i32, i32* %65, align 4, !dbg !545, !tbaa !202
  %67 = lshr i32 %66, 24, !dbg !549
  %68 = trunc i32 %67 to i8, !dbg !545
  %69 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !562
  store i8 %68, i8* %69, align 1, !dbg !550, !tbaa !152
  %70 = load i32, i32* %65, align 4, !dbg !551, !tbaa !202
  %71 = lshr i32 %70, 16, !dbg !552
  %72 = trunc i32 %71 to i8, !dbg !551
  %73 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !553
  store i8 %72, i8* %73, align 1, !dbg !554, !tbaa !152
  %74 = load i32, i32* %65, align 4, !dbg !555, !tbaa !202
  %75 = lshr i32 %74, 8, !dbg !556
  %76 = trunc i32 %75 to i8, !dbg !555
  %77 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !557
  store i8 %76, i8* %77, align 1, !dbg !558, !tbaa !152
  %78 = load i32, i32* %65, align 4, !dbg !559, !tbaa !202
  %79 = trunc i32 %78 to i8, !dbg !559
  %80 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !560
  store i8 %79, i8* %80, align 1, !dbg !561, !tbaa !152
  %81 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 2, !dbg !545
  %82 = load i32, i32* %81, align 4, !dbg !545, !tbaa !202
  %83 = lshr i32 %82, 24, !dbg !549
  %84 = trunc i32 %83 to i8, !dbg !545
  %85 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !562
  store i8 %84, i8* %85, align 1, !dbg !550, !tbaa !152
  %86 = load i32, i32* %81, align 4, !dbg !551, !tbaa !202
  %87 = lshr i32 %86, 16, !dbg !552
  %88 = trunc i32 %87 to i8, !dbg !551
  %89 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !553
  store i8 %88, i8* %89, align 1, !dbg !554, !tbaa !152
  %90 = load i32, i32* %81, align 4, !dbg !555, !tbaa !202
  %91 = lshr i32 %90, 8, !dbg !556
  %92 = trunc i32 %91 to i8, !dbg !555
  %93 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !557
  store i8 %92, i8* %93, align 1, !dbg !558, !tbaa !152
  %94 = load i32, i32* %81, align 4, !dbg !559, !tbaa !202
  %95 = trunc i32 %94 to i8, !dbg !559
  %96 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !560
  store i8 %95, i8* %96, align 1, !dbg !561, !tbaa !152
  %97 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 3, !dbg !545
  %98 = load i32, i32* %97, align 4, !dbg !545, !tbaa !202
  %99 = lshr i32 %98, 24, !dbg !549
  %100 = trunc i32 %99 to i8, !dbg !545
  %101 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !562
  store i8 %100, i8* %101, align 1, !dbg !550, !tbaa !152
  %102 = load i32, i32* %97, align 4, !dbg !551, !tbaa !202
  %103 = lshr i32 %102, 16, !dbg !552
  %104 = trunc i32 %103 to i8, !dbg !551
  %105 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !553
  store i8 %104, i8* %105, align 1, !dbg !554, !tbaa !152
  %106 = load i32, i32* %97, align 4, !dbg !555, !tbaa !202
  %107 = lshr i32 %106, 8, !dbg !556
  %108 = trunc i32 %107 to i8, !dbg !555
  %109 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !557
  store i8 %108, i8* %109, align 1, !dbg !558, !tbaa !152
  %110 = load i32, i32* %97, align 4, !dbg !559, !tbaa !202
  %111 = trunc i32 %110 to i8, !dbg !559
  %112 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !560
  store i8 %111, i8* %112, align 1, !dbg !561, !tbaa !152
  %113 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !545
  %114 = load i32, i32* %113, align 4, !dbg !545, !tbaa !202
  %115 = lshr i32 %114, 24, !dbg !549
  %116 = trunc i32 %115 to i8, !dbg !545
  %117 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !562
  store i8 %116, i8* %117, align 1, !dbg !550, !tbaa !152
  %118 = load i32, i32* %113, align 4, !dbg !551, !tbaa !202
  %119 = lshr i32 %118, 16, !dbg !552
  %120 = trunc i32 %119 to i8, !dbg !551
  %121 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !553
  store i8 %120, i8* %121, align 1, !dbg !554, !tbaa !152
  %122 = load i32, i32* %113, align 4, !dbg !555, !tbaa !202
  %123 = lshr i32 %122, 8, !dbg !556
  %124 = trunc i32 %123 to i8, !dbg !555
  %125 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !557
  store i8 %124, i8* %125, align 1, !dbg !558, !tbaa !152
  %126 = load i32, i32* %113, align 4, !dbg !559, !tbaa !202
  %127 = trunc i32 %126 to i8, !dbg !559
  %128 = getelementptr inbounds i8, i8* %1, i64 19, !dbg !560
  store i8 %127, i8* %128, align 1, !dbg !561, !tbaa !152
  %129 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 5, !dbg !545
  %130 = load i32, i32* %129, align 4, !dbg !545, !tbaa !202
  %131 = lshr i32 %130, 24, !dbg !549
  %132 = trunc i32 %131 to i8, !dbg !545
  %133 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !562
  store i8 %132, i8* %133, align 1, !dbg !550, !tbaa !152
  %134 = load i32, i32* %129, align 4, !dbg !551, !tbaa !202
  %135 = lshr i32 %134, 16, !dbg !552
  %136 = trunc i32 %135 to i8, !dbg !551
  %137 = getelementptr inbounds i8, i8* %1, i64 21, !dbg !553
  store i8 %136, i8* %137, align 1, !dbg !554, !tbaa !152
  %138 = load i32, i32* %129, align 4, !dbg !555, !tbaa !202
  %139 = lshr i32 %138, 8, !dbg !556
  %140 = trunc i32 %139 to i8, !dbg !555
  %141 = getelementptr inbounds i8, i8* %1, i64 22, !dbg !557
  store i8 %140, i8* %141, align 1, !dbg !558, !tbaa !152
  %142 = load i32, i32* %129, align 4, !dbg !559, !tbaa !202
  %143 = trunc i32 %142 to i8, !dbg !559
  %144 = getelementptr inbounds i8, i8* %1, i64 23, !dbg !560
  store i8 %143, i8* %144, align 1, !dbg !561, !tbaa !152
  %145 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 6, !dbg !545
  %146 = load i32, i32* %145, align 4, !dbg !545, !tbaa !202
  %147 = lshr i32 %146, 24, !dbg !549
  %148 = trunc i32 %147 to i8, !dbg !545
  %149 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !562
  store i8 %148, i8* %149, align 1, !dbg !550, !tbaa !152
  %150 = load i32, i32* %145, align 4, !dbg !551, !tbaa !202
  %151 = lshr i32 %150, 16, !dbg !552
  %152 = trunc i32 %151 to i8, !dbg !551
  %153 = getelementptr inbounds i8, i8* %1, i64 25, !dbg !553
  store i8 %152, i8* %153, align 1, !dbg !554, !tbaa !152
  %154 = load i32, i32* %145, align 4, !dbg !555, !tbaa !202
  %155 = lshr i32 %154, 8, !dbg !556
  %156 = trunc i32 %155 to i8, !dbg !555
  %157 = getelementptr inbounds i8, i8* %1, i64 26, !dbg !557
  store i8 %156, i8* %157, align 1, !dbg !558, !tbaa !152
  %158 = load i32, i32* %145, align 4, !dbg !559, !tbaa !202
  %159 = trunc i32 %158 to i8, !dbg !559
  %160 = getelementptr inbounds i8, i8* %1, i64 27, !dbg !560
  store i8 %159, i8* %160, align 1, !dbg !561, !tbaa !152
  %161 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 7, !dbg !545
  %162 = load i32, i32* %161, align 4, !dbg !545, !tbaa !202
  %163 = lshr i32 %162, 24, !dbg !549
  %164 = trunc i32 %163 to i8, !dbg !545
  %165 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !562
  store i8 %164, i8* %165, align 1, !dbg !550, !tbaa !152
  %166 = load i32, i32* %161, align 4, !dbg !551, !tbaa !202
  %167 = lshr i32 %166, 16, !dbg !552
  %168 = trunc i32 %167 to i8, !dbg !551
  %169 = getelementptr inbounds i8, i8* %1, i64 29, !dbg !553
  store i8 %168, i8* %169, align 1, !dbg !554, !tbaa !152
  %170 = load i32, i32* %161, align 4, !dbg !555, !tbaa !202
  %171 = lshr i32 %170, 8, !dbg !556
  %172 = trunc i32 %171 to i8, !dbg !555
  %173 = getelementptr inbounds i8, i8* %1, i64 30, !dbg !557
  store i8 %172, i8* %173, align 1, !dbg !558, !tbaa !152
  %174 = load i32, i32* %161, align 4, !dbg !559, !tbaa !202
  %175 = trunc i32 %174 to i8, !dbg !559
  %176 = getelementptr inbounds i8, i8* %1, i64 31, !dbg !560
  store i8 %175, i8* %176, align 1, !dbg !561, !tbaa !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  ret void, !dbg !563
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha256* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !564 {
  %3 = alloca [64 x i32], align 16
  %4 = bitcast [64 x i32]* %3 to i8*, !dbg !585
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !585
  %5 = bitcast i8* %1 to <16 x i8>*, !dbg !588
  %6 = load <16 x i8>, <16 x i8>* %5, align 1, !dbg !588, !tbaa !152
  %7 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !588
  %8 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !588
  %9 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !588
  %10 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !588
  %11 = zext <4 x i8> %7 to <4 x i32>, !dbg !592
  %12 = shl nuw <4 x i32> %11, <i32 24, i32 24, i32 24, i32 24>, !dbg !593
  %13 = zext <4 x i8> %8 to <4 x i32>, !dbg !594
  %14 = shl nuw nsw <4 x i32> %13, <i32 16, i32 16, i32 16, i32 16>, !dbg !595
  %15 = or <4 x i32> %14, %12, !dbg !596
  %16 = zext <4 x i8> %9 to <4 x i32>, !dbg !597
  %17 = shl nuw nsw <4 x i32> %16, <i32 8, i32 8, i32 8, i32 8>, !dbg !598
  %18 = or <4 x i32> %17, %15, !dbg !599
  %19 = zext <4 x i8> %10 to <4 x i32>, !dbg !600
  %20 = or <4 x i32> %18, %19, !dbg !601
  %21 = bitcast [64 x i32]* %3 to <4 x i32>*, !dbg !601
  store <4 x i32> %20, <4 x i32>* %21, align 16, !dbg !601, !tbaa !202
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !588
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !588
  %24 = load <16 x i8>, <16 x i8>* %23, align 1, !dbg !588, !tbaa !152
  %25 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !588
  %26 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !588
  %27 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !588
  %28 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !588
  %29 = zext <4 x i8> %25 to <4 x i32>, !dbg !592
  %30 = shl nuw <4 x i32> %29, <i32 24, i32 24, i32 24, i32 24>, !dbg !593
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 4, !dbg !602
  %32 = zext <4 x i8> %26 to <4 x i32>, !dbg !594
  %33 = shl nuw nsw <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>, !dbg !595
  %34 = or <4 x i32> %33, %30, !dbg !596
  %35 = zext <4 x i8> %27 to <4 x i32>, !dbg !597
  %36 = shl nuw nsw <4 x i32> %35, <i32 8, i32 8, i32 8, i32 8>, !dbg !598
  %37 = or <4 x i32> %36, %34, !dbg !599
  %38 = zext <4 x i8> %28 to <4 x i32>, !dbg !600
  %39 = or <4 x i32> %37, %38, !dbg !601
  %40 = bitcast i32* %31 to <4 x i32>*, !dbg !601
  store <4 x i32> %39, <4 x i32>* %40, align 16, !dbg !601, !tbaa !202
  %41 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !588
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !588
  %43 = load <16 x i8>, <16 x i8>* %42, align 1, !dbg !588, !tbaa !152
  %44 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !588
  %45 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !588
  %46 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !588
  %47 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !588
  %48 = zext <4 x i8> %44 to <4 x i32>, !dbg !592
  %49 = shl nuw <4 x i32> %48, <i32 24, i32 24, i32 24, i32 24>, !dbg !593
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 8, !dbg !602
  %51 = zext <4 x i8> %45 to <4 x i32>, !dbg !594
  %52 = shl nuw nsw <4 x i32> %51, <i32 16, i32 16, i32 16, i32 16>, !dbg !595
  %53 = or <4 x i32> %52, %49, !dbg !596
  %54 = zext <4 x i8> %46 to <4 x i32>, !dbg !597
  %55 = shl nuw nsw <4 x i32> %54, <i32 8, i32 8, i32 8, i32 8>, !dbg !598
  %56 = or <4 x i32> %55, %53, !dbg !599
  %57 = zext <4 x i8> %47 to <4 x i32>, !dbg !600
  %58 = or <4 x i32> %56, %57, !dbg !601
  %59 = bitcast i32* %50 to <4 x i32>*, !dbg !601
  store <4 x i32> %58, <4 x i32>* %59, align 16, !dbg !601, !tbaa !202
  %60 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !588
  %61 = bitcast i8* %60 to <16 x i8>*, !dbg !588
  %62 = load <16 x i8>, <16 x i8>* %61, align 1, !dbg !588, !tbaa !152
  %63 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !588
  %64 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !588
  %65 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !588
  %66 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !588
  %67 = zext <4 x i8> %63 to <4 x i32>, !dbg !592
  %68 = shl nuw <4 x i32> %67, <i32 24, i32 24, i32 24, i32 24>, !dbg !593
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 12, !dbg !602
  %70 = zext <4 x i8> %64 to <4 x i32>, !dbg !594
  %71 = shl nuw nsw <4 x i32> %70, <i32 16, i32 16, i32 16, i32 16>, !dbg !595
  %72 = or <4 x i32> %71, %68, !dbg !596
  %73 = zext <4 x i8> %65 to <4 x i32>, !dbg !597
  %74 = shl nuw nsw <4 x i32> %73, <i32 8, i32 8, i32 8, i32 8>, !dbg !598
  %75 = or <4 x i32> %74, %72, !dbg !599
  %76 = zext <4 x i8> %66 to <4 x i32>, !dbg !600
  %77 = or <4 x i32> %75, %76, !dbg !601
  %78 = bitcast i32* %69 to <4 x i32>*, !dbg !601
  store <4 x i32> %77, <4 x i32>* %78, align 16, !dbg !601, !tbaa !202
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %80 = load i32, i32* %79, align 16, !dbg !603, !tbaa !202
  br label %81, !dbg !606

; <label>:81:                                     ; preds = %81, %2
  %82 = phi i32 [ %80, %2 ], [ %102, %81 ], !dbg !603
  %83 = phi i64 [ 16, %2 ], [ %115, %81 ]
  %84 = add nsw i64 %83, -2, !dbg !606
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %84, !dbg !606
  %86 = load i32, i32* %85, align 4, !dbg !606, !tbaa !202
  %87 = lshr i32 %86, 17, !dbg !616
  %88 = shl i32 %86, 15, !dbg !617
  %89 = or i32 %88, %87, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %90 = lshr i32 %86, 19, !dbg !623
  %91 = shl i32 %86, 13, !dbg !624
  %92 = or i32 %91, %90, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  %93 = lshr i32 %86, 10, !dbg !606
  %94 = xor i32 %92, %93, !dbg !606
  %95 = xor i32 %94, %89, !dbg !606
  %96 = add nsw i64 %83, -7, !dbg !627
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %96, !dbg !628
  %98 = load i32, i32* %97, align 4, !dbg !628, !tbaa !202
  %99 = add i32 %95, %98, !dbg !629
  %100 = add nsw i64 %83, -15, !dbg !630
  %101 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %100, !dbg !630
  %102 = load i32, i32* %101, align 4, !dbg !630, !tbaa !202
  %103 = lshr i32 %102, 7, !dbg !634
  %104 = shl i32 %102, 25, !dbg !635
  %105 = or i32 %104, %103, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %106 = lshr i32 %102, 18, !dbg !641
  %107 = shl i32 %102, 14, !dbg !642
  %108 = or i32 %107, %106, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %109 = lshr i32 %102, 3, !dbg !630
  %110 = xor i32 %108, %109, !dbg !630
  %111 = xor i32 %110, %105, !dbg !630
  %112 = add i32 %99, %82, !dbg !645
  %113 = add i32 %112, %111, !dbg !646
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %83, !dbg !647
  store i32 %113, i32* %114, align 4, !dbg !648, !tbaa !202
  %115 = add nuw nsw i64 %83, 1, !dbg !649
  %116 = icmp eq i64 %115, 64, !dbg !650
  br i1 %116, label %117, label %81, !dbg !651, !llvm.loop !652

; <label>:117:                                    ; preds = %81
  %118 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !654
  %119 = bitcast i32* %118 to <4 x i32>*, !dbg !654
  %120 = load <4 x i32>, <4 x i32>* %119, align 8, !dbg !654, !tbaa !202
  %121 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !659
  %122 = bitcast i32* %121 to <4 x i32>*, !dbg !659
  %123 = load <4 x i32>, <4 x i32>* %122, align 8, !dbg !659, !tbaa !202
  %124 = extractelement <4 x i32> %120, i32 0, !dbg !664
  %125 = extractelement <4 x i32> %120, i32 1, !dbg !664
  %126 = extractelement <4 x i32> %120, i32 2, !dbg !664
  %127 = extractelement <4 x i32> %120, i32 3, !dbg !664
  %128 = extractelement <4 x i32> %123, i32 0, !dbg !664
  %129 = extractelement <4 x i32> %123, i32 1, !dbg !664
  %130 = extractelement <4 x i32> %123, i32 2, !dbg !664
  %131 = extractelement <4 x i32> %123, i32 3, !dbg !664
  br label %132, !dbg !664

; <label>:132:                                    ; preds = %132, %117
  %133 = phi i64 [ 0, %117 ], [ %182, %132 ]
  %134 = phi i32 [ %131, %117 ], [ %135, %132 ]
  %135 = phi i32 [ %130, %117 ], [ %136, %132 ]
  %136 = phi i32 [ %129, %117 ], [ %137, %132 ]
  %137 = phi i32 [ %128, %117 ], [ %180, %132 ]
  %138 = phi i32 [ %127, %117 ], [ %139, %132 ]
  %139 = phi i32 [ %126, %117 ], [ %140, %132 ]
  %140 = phi i32 [ %125, %117 ], [ %141, %132 ]
  %141 = phi i32 [ %124, %117 ], [ %181, %132 ]
  %142 = lshr i32 %137, 6, !dbg !670
  %143 = shl i32 %137, 26, !dbg !671
  %144 = or i32 %143, %142, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %145 = lshr i32 %137, 11, !dbg !676
  %146 = shl i32 %137, 21, !dbg !677
  %147 = or i32 %146, %145, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %148 = xor i32 %144, %147, !dbg !680
  %149 = lshr i32 %137, 25, !dbg !684
  %150 = shl i32 %137, 7, !dbg !685
  %151 = or i32 %150, %149, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %152 = xor i32 %148, %151, !dbg !680
  %153 = add i32 %152, %134, !dbg !688
  %154 = xor i32 %135, %136, !dbg !689
  %155 = and i32 %154, %137, !dbg !689
  %156 = xor i32 %155, %135, !dbg !689
  %157 = add i32 %153, %156, !dbg !690
  %158 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %133, !dbg !691
  %159 = load i32, i32* %158, align 4, !dbg !691, !tbaa !202
  %160 = add i32 %157, %159, !dbg !692
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %133, !dbg !693
  %162 = load i32, i32* %161, align 4, !dbg !693, !tbaa !202
  %163 = add i32 %160, %162, !dbg !694
  %164 = lshr i32 %141, 2, !dbg !698
  %165 = shl i32 %141, 30, !dbg !699
  %166 = or i32 %165, %164, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  %167 = lshr i32 %141, 13, !dbg !704
  %168 = shl i32 %141, 19, !dbg !705
  %169 = or i32 %168, %167, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  %170 = xor i32 %166, %169, !dbg !708
  %171 = lshr i32 %141, 22, !dbg !712
  %172 = shl i32 %141, 10, !dbg !713
  %173 = or i32 %172, %171, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %174 = xor i32 %170, %173, !dbg !708
  %175 = and i32 %140, %141, !dbg !716
  %176 = or i32 %140, %141, !dbg !716
  %177 = and i32 %139, %176, !dbg !716
  %178 = or i32 %177, %175, !dbg !716
  %179 = add i32 %174, %178, !dbg !717
  %180 = add i32 %163, %138, !dbg !719
  %181 = add i32 %179, %163, !dbg !720
  %182 = add nuw nsw i64 %133, 1, !dbg !721
  %183 = icmp eq i64 %182, 64, !dbg !722
  br i1 %183, label %184, label %132, !dbg !664, !llvm.loop !723

; <label>:184:                                    ; preds = %132
  %185 = insertelement <4 x i32> undef, i32 %181, i32 0, !dbg !725
  %186 = insertelement <4 x i32> %185, i32 %141, i32 1, !dbg !725
  %187 = insertelement <4 x i32> %186, i32 %140, i32 2, !dbg !725
  %188 = insertelement <4 x i32> %187, i32 %139, i32 3, !dbg !725
  %189 = add <4 x i32> %188, %120, !dbg !725
  %190 = bitcast i32* %118 to <4 x i32>*, !dbg !725
  store <4 x i32> %189, <4 x i32>* %190, align 8, !dbg !725, !tbaa !202
  %191 = insertelement <4 x i32> undef, i32 %180, i32 0, !dbg !726
  %192 = insertelement <4 x i32> %191, i32 %137, i32 1, !dbg !726
  %193 = insertelement <4 x i32> %192, i32 %136, i32 2, !dbg !726
  %194 = insertelement <4 x i32> %193, i32 %135, i32 3, !dbg !726
  %195 = add <4 x i32> %194, %123, !dbg !726
  %196 = bitcast i32* %121 to <4 x i32>*, !dbg !726
  store <4 x i32> %195, <4 x i32>* %196, align 8, !dbg !726, !tbaa !202
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  ret void, !dbg !727
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
!117 = !DILocation(line: 319, column: 14, scope: !116)
!118 = !DILocation(line: 319, column: 9, scope: !116)
!119 = !DILocation(line: 319, column: 28, scope: !116)
!120 = !DILocation(line: 319, column: 6, scope: !2)
!121 = !DILocation(line: 0, scope: !2)
!122 = !DILocation(line: 322, column: 1, scope: !2)
!123 = !DILocation(line: 187, column: 38, scope: !32)
!124 = !DILocation(line: 187, column: 55, scope: !32)
!125 = !DILocation(line: 187, column: 70, scope: !32)
!126 = !DILocation(line: 189, column: 2, scope: !32)
!127 = !DILocation(line: 190, column: 2, scope: !32)
!128 = !DILocation(line: 190, column: 16, scope: !32)
!129 = !DILocation(line: 190, column: 24, scope: !32)
!130 = !DILocation(line: 190, column: 33, scope: !32)
!131 = !DILocation(line: 192, column: 2, scope: !32)
!132 = !DILocation(line: 192, column: 7, scope: !32)
!133 = !DILocation(line: 197, column: 9, scope: !32)
!134 = !DILocation(line: 191, column: 21, scope: !32)
!135 = !DILocation(line: 198, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !32, file: !3, line: 198, column: 6)
!137 = !DILocation(line: 198, column: 6, scope: !32)
!138 = !DILocation(line: 202, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !32, file: !3, line: 202, column: 6)
!140 = !DILocation(line: 202, column: 33, scope: !139)
!141 = !DILocation(line: 202, column: 6, scope: !32)
!142 = !DILocation(line: 204, column: 17, scope: !32)
!143 = !DILocation(line: 193, column: 14, scope: !32)
!144 = !DILocation(line: 191, column: 18, scope: !32)
!145 = !DILocation(line: 207, column: 6, scope: !73)
!146 = !DILocation(line: 207, column: 53, scope: !73)
!147 = !DILocation(line: 207, column: 6, scope: !32)
!148 = !DILocation(line: 209, column: 3, scope: !72)
!149 = !DILocation(line: 223, column: 8, scope: !72)
!150 = !DILocation(line: 224, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !72, file: !3, line: 224, column: 7)
!152 = !{!153, !153, i64 0}
!153 = !{!"omnipotent char", !154, i64 0}
!154 = !{!"Simple C/C++ TBAA"}
!155 = !DILocation(line: 224, column: 7, scope: !72)
!156 = !DILocation(line: 209, column: 9, scope: !72)
!157 = !DILocation(line: 226, column: 7, scope: !72)
!158 = !DILocation(line: 208, column: 17, scope: !72)
!159 = !DILocation(line: 227, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !72, file: !3, line: 227, column: 7)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !153, i64 0}
!163 = !DILocation(line: 227, column: 7, scope: !160)
!164 = !DILocation(line: 227, column: 12, scope: !160)
!165 = !DILocation(line: 227, column: 7, scope: !72)
!166 = !DILocation(line: 229, column: 13, scope: !72)
!167 = !DILocation(line: 230, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !72, file: !3, line: 230, column: 7)
!169 = !DILocation(line: 230, column: 7, scope: !72)
!170 = !DILocation(line: 232, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 232, column: 12)
!172 = !DILocation(line: 232, column: 12, scope: !168)
!173 = !DILocation(line: 235, column: 8, scope: !171)
!174 = !DILocation(line: 238, column: 2, scope: !73)
!175 = !DILocation(line: 0, scope: !171)
!176 = !DILocation(line: 237, column: 3, scope: !72)
!177 = !DILocation(line: 206, column: 4, scope: !32)
!178 = !DILocation(line: 0, scope: !32)
!179 = !DILocation(line: 191, column: 15, scope: !32)
!180 = !DILocation(line: 240, column: 30, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 240, column: 2)
!182 = distinct !DILexicalBlock(scope: !32, file: !3, line: 240, column: 2)
!183 = !DILocation(line: 240, column: 38, scope: !181)
!184 = !DILocation(line: 0, scope: !181)
!185 = !DILocation(line: 191, column: 27, scope: !32)
!186 = !DILocation(line: 189, column: 16, scope: !32)
!187 = !DILocalVariable(name: "s", arg: 1, scope: !188, file: !3, line: 109, type: !191)
!188 = distinct !DISubprogram(name: "sha256_init", scope: !3, file: !3, line: 109, type: !189, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!192 = !{!187}
!193 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !194)
!194 = distinct !DILocation(line: 247, column: 2, scope: !32)
!195 = !DILocation(line: 111, column: 5, scope: !188, inlinedAt: !194)
!196 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !194)
!197 = !{!198, !199, i64 0}
!198 = !{!"sha256", !199, i64 0, !153, i64 8, !153, i64 40}
!199 = !{!"long", !153, i64 0}
!200 = !DILocation(line: 112, column: 2, scope: !188, inlinedAt: !194)
!201 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !194)
!202 = !{!203, !203, i64 0}
!203 = !{!"int", !153, i64 0}
!204 = !DILocation(line: 116, column: 2, scope: !188, inlinedAt: !194)
!205 = !DILocation(line: 117, column: 2, scope: !188, inlinedAt: !194)
!206 = !DILocation(line: 118, column: 2, scope: !188, inlinedAt: !194)
!207 = !DILocation(line: 119, column: 2, scope: !188, inlinedAt: !194)
!208 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !194)
!209 = !DILocation(line: 120, column: 1, scope: !188, inlinedAt: !194)
!210 = !DILocation(line: 248, column: 27, scope: !32)
!211 = !DILocation(line: 248, column: 2, scope: !32)
!212 = !DILocation(line: 249, column: 28, scope: !32)
!213 = !DILocation(line: 249, column: 2, scope: !32)
!214 = !DILocation(line: 250, column: 2, scope: !32)
!215 = !DILocation(line: 251, column: 2, scope: !32)
!216 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !217)
!217 = distinct !DILocation(line: 254, column: 2, scope: !32)
!218 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !217)
!219 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !217)
!220 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !217)
!221 = !DILocation(line: 117, column: 10, scope: !188, inlinedAt: !217)
!222 = !DILocation(line: 118, column: 10, scope: !188, inlinedAt: !217)
!223 = !DILocation(line: 119, column: 10, scope: !188, inlinedAt: !217)
!224 = !DILocation(line: 120, column: 1, scope: !188, inlinedAt: !217)
!225 = !DILocation(line: 255, column: 2, scope: !32)
!226 = !DILocation(line: 256, column: 2, scope: !32)
!227 = !DILocalVariable(name: "s", arg: 1, scope: !228, file: !3, line: 178, type: !191)
!228 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 178, type: !229, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !233)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !191, !18, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!233 = !{!227, !234, !235, !236}
!234 = !DILocalVariable(name: "n", arg: 2, scope: !228, file: !3, line: 178, type: !18)
!235 = !DILocalVariable(name: "md", arg: 3, scope: !228, file: !3, line: 178, type: !231)
!236 = !DILocalVariable(name: "i", scope: !228, file: !3, line: 180, type: !18)
!237 = !DILocation(line: 178, column: 35, scope: !228, inlinedAt: !238)
!238 = distinct !DILocation(line: 257, column: 2, scope: !32)
!239 = !DILocation(line: 178, column: 51, scope: !228, inlinedAt: !238)
!240 = !DILocation(line: 178, column: 66, scope: !228, inlinedAt: !238)
!241 = !DILocation(line: 180, column: 15, scope: !228, inlinedAt: !238)
!242 = !DILocation(line: 182, column: 16, scope: !243, inlinedAt: !238)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 182, column: 2)
!244 = distinct !DILexicalBlock(scope: !228, file: !3, line: 182, column: 2)
!245 = !DILocation(line: 182, column: 2, scope: !244, inlinedAt: !238)
!246 = !DILocation(line: 183, column: 3, scope: !243, inlinedAt: !238)
!247 = !DILocation(line: 182, column: 24, scope: !243, inlinedAt: !238)
!248 = distinct !{!248, !249, !250}
!249 = !DILocation(line: 182, column: 2, scope: !244)
!250 = !DILocation(line: 183, column: 26, scope: !244)
!251 = !DILocation(line: 184, column: 23, scope: !228, inlinedAt: !238)
!252 = !DILocation(line: 184, column: 2, scope: !228, inlinedAt: !238)
!253 = !DILocation(line: 185, column: 1, scope: !228, inlinedAt: !238)
!254 = !DILocation(line: 258, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 258, column: 2)
!256 = distinct !DILexicalBlock(scope: !32, file: !3, line: 258, column: 2)
!257 = !DILocation(line: 258, column: 2, scope: !256)
!258 = !DILocation(line: 259, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 259, column: 7)
!260 = !DILocation(line: 259, column: 7, scope: !255)
!261 = !DILocation(line: 260, column: 4, scope: !259)
!262 = !DILocation(line: 262, column: 4, scope: !259)
!263 = !DILocation(line: 258, column: 26, scope: !255)
!264 = distinct !{!264, !257, !265}
!265 = !DILocation(line: 262, column: 33, scope: !256)
!266 = !DILocation(line: 263, column: 2, scope: !32)
!267 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !268)
!268 = distinct !DILocation(line: 266, column: 2, scope: !32)
!269 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !268)
!270 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !268)
!271 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !268)
!272 = !DILocation(line: 120, column: 1, scope: !188, inlinedAt: !268)
!273 = !DILocation(line: 267, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !32, file: !3, line: 267, column: 2)
!275 = !DILocation(line: 268, column: 3, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !3, line: 267, column: 2)
!277 = !DILocation(line: 267, column: 25, scope: !276)
!278 = !DILocation(line: 267, column: 16, scope: !276)
!279 = distinct !{!279, !273, !280}
!280 = !DILocation(line: 268, column: 32, scope: !274)
!281 = !DILocation(line: 269, column: 2, scope: !32)
!282 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !283)
!283 = distinct !DILocation(line: 272, column: 2, scope: !32)
!284 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !283)
!285 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !283)
!286 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !283)
!287 = !DILocation(line: 120, column: 1, scope: !188, inlinedAt: !283)
!288 = !DILocation(line: 273, column: 2, scope: !289)
!289 = distinct !DILexicalBlock(scope: !32, file: !3, line: 273, column: 2)
!290 = !DILocation(line: 274, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !3, line: 273, column: 2)
!292 = !DILocation(line: 273, column: 31, scope: !291)
!293 = !DILocation(line: 273, column: 23, scope: !291)
!294 = !DILocation(line: 273, column: 21, scope: !291)
!295 = !DILocation(line: 273, column: 16, scope: !291)
!296 = distinct !{!296, !288, !297}
!297 = !DILocation(line: 274, column: 33, scope: !289)
!298 = !DILocation(line: 275, column: 2, scope: !32)
!299 = !DILocation(line: 278, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 278, column: 2)
!301 = distinct !DILexicalBlock(scope: !32, file: !3, line: 278, column: 2)
!302 = !DILocation(line: 278, column: 2, scope: !301)
!303 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !304)
!304 = distinct !DILocation(line: 279, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 278, column: 26)
!306 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !304)
!307 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !304)
!308 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !304)
!309 = !DILocation(line: 120, column: 1, scope: !188, inlinedAt: !304)
!310 = !DILocation(line: 280, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !3, line: 280, column: 7)
!312 = !DILocation(line: 280, column: 7, scope: !305)
!313 = !DILocation(line: 178, column: 35, scope: !228, inlinedAt: !314)
!314 = distinct !DILocation(line: 281, column: 4, scope: !311)
!315 = !DILocation(line: 178, column: 51, scope: !228, inlinedAt: !314)
!316 = !DILocation(line: 178, column: 66, scope: !228, inlinedAt: !314)
!317 = !DILocation(line: 180, column: 15, scope: !228, inlinedAt: !314)
!318 = !DILocation(line: 182, column: 2, scope: !244, inlinedAt: !314)
!319 = !DILocation(line: 183, column: 3, scope: !243, inlinedAt: !314)
!320 = !DILocation(line: 182, column: 24, scope: !243, inlinedAt: !314)
!321 = !DILocation(line: 182, column: 16, scope: !243, inlinedAt: !314)
!322 = !DILocation(line: 184, column: 23, scope: !228, inlinedAt: !314)
!323 = !DILocation(line: 184, column: 2, scope: !228, inlinedAt: !314)
!324 = !DILocation(line: 185, column: 1, scope: !228, inlinedAt: !314)
!325 = !DILocation(line: 281, column: 4, scope: !311)
!326 = !DILocation(line: 283, column: 4, scope: !311)
!327 = !DILocation(line: 284, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !305, file: !3, line: 284, column: 7)
!329 = !DILocation(line: 284, column: 7, scope: !305)
!330 = !DILocation(line: 285, column: 4, scope: !328)
!331 = !DILocation(line: 286, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !305, file: !3, line: 286, column: 7)
!333 = !DILocation(line: 286, column: 7, scope: !305)
!334 = !DILocation(line: 178, column: 35, scope: !228, inlinedAt: !335)
!335 = distinct !DILocation(line: 287, column: 4, scope: !332)
!336 = !DILocation(line: 178, column: 51, scope: !228, inlinedAt: !335)
!337 = !DILocation(line: 178, column: 66, scope: !228, inlinedAt: !335)
!338 = !DILocation(line: 180, column: 15, scope: !228, inlinedAt: !335)
!339 = !DILocation(line: 182, column: 2, scope: !244, inlinedAt: !335)
!340 = !DILocation(line: 183, column: 3, scope: !243, inlinedAt: !335)
!341 = !DILocation(line: 182, column: 24, scope: !243, inlinedAt: !335)
!342 = !DILocation(line: 182, column: 16, scope: !243, inlinedAt: !335)
!343 = !DILocation(line: 184, column: 23, scope: !228, inlinedAt: !335)
!344 = !DILocation(line: 184, column: 2, scope: !228, inlinedAt: !335)
!345 = !DILocation(line: 185, column: 1, scope: !228, inlinedAt: !335)
!346 = !DILocation(line: 287, column: 4, scope: !332)
!347 = !DILocation(line: 288, column: 7, scope: !305)
!348 = !DILocation(line: 289, column: 4, scope: !349)
!349 = distinct !DILexicalBlock(scope: !305, file: !3, line: 288, column: 7)
!350 = !DILocation(line: 178, column: 35, scope: !228, inlinedAt: !351)
!351 = distinct !DILocation(line: 291, column: 4, scope: !349)
!352 = !DILocation(line: 178, column: 51, scope: !228, inlinedAt: !351)
!353 = !DILocation(line: 178, column: 66, scope: !228, inlinedAt: !351)
!354 = !DILocation(line: 180, column: 15, scope: !228, inlinedAt: !351)
!355 = !DILocation(line: 182, column: 2, scope: !244, inlinedAt: !351)
!356 = !DILocation(line: 183, column: 3, scope: !243, inlinedAt: !351)
!357 = !DILocation(line: 182, column: 24, scope: !243, inlinedAt: !351)
!358 = !DILocation(line: 182, column: 16, scope: !243, inlinedAt: !351)
!359 = !DILocation(line: 184, column: 23, scope: !228, inlinedAt: !351)
!360 = !DILocation(line: 184, column: 2, scope: !228, inlinedAt: !351)
!361 = !DILocation(line: 185, column: 1, scope: !228, inlinedAt: !351)
!362 = !DILocation(line: 292, column: 3, scope: !305)
!363 = !DILocation(line: 278, column: 22, scope: !300)
!364 = distinct !{!364, !302, !365}
!365 = !DILocation(line: 293, column: 2, scope: !301)
!366 = !DILocation(line: 194, column: 8, scope: !32)
!367 = !DILocation(line: 297, column: 7, scope: !32)
!368 = !DILocation(line: 297, column: 4, scope: !32)
!369 = !DILocation(line: 301, column: 2, scope: !370)
!370 = distinct !DILexicalBlock(scope: !32, file: !3, line: 301, column: 2)
!371 = !DILocation(line: 302, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !3, line: 301, column: 2)
!373 = !DILocation(line: 302, column: 4, scope: !372)
!374 = !DILocation(line: 302, column: 18, scope: !372)
!375 = !DILocation(line: 302, column: 28, scope: !372)
!376 = !DILocation(line: 302, column: 25, scope: !372)
!377 = !DILocation(line: 302, column: 39, scope: !372)
!378 = !DILocation(line: 302, column: 23, scope: !372)
!379 = !DILocation(line: 302, column: 47, scope: !372)
!380 = !DILocation(line: 302, column: 44, scope: !372)
!381 = !DILocation(line: 302, column: 43, scope: !372)
!382 = !DILocalVariable(name: "s", arg: 1, scope: !383, file: !3, line: 159, type: !6)
!383 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 159, type: !384, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!6, !6, !18, !13}
!386 = !{!382, !387, !388}
!387 = !DILocalVariable(name: "u", arg: 2, scope: !383, file: !3, line: 159, type: !18)
!388 = !DILocalVariable(name: "n", arg: 3, scope: !383, file: !3, line: 159, type: !13)
!389 = !DILocation(line: 159, column: 25, scope: !383, inlinedAt: !390)
!390 = distinct !DILocation(line: 301, column: 27, scope: !372)
!391 = !DILocation(line: 159, column: 41, scope: !383, inlinedAt: !390)
!392 = !DILocation(line: 159, column: 48, scope: !383, inlinedAt: !390)
!393 = !DILocation(line: 162, column: 16, scope: !394, inlinedAt: !390)
!394 = distinct !DILexicalBlock(scope: !383, file: !3, line: 161, column: 19)
!395 = !DILocation(line: 162, column: 10, scope: !394, inlinedAt: !390)
!396 = !DILocation(line: 162, column: 5, scope: !394, inlinedAt: !390)
!397 = !DILocation(line: 162, column: 8, scope: !394, inlinedAt: !390)
!398 = !DILocation(line: 163, column: 5, scope: !394, inlinedAt: !390)
!399 = !DILocation(line: 165, column: 2, scope: !383, inlinedAt: !390)
!400 = !DILocation(line: 301, column: 19, scope: !372)
!401 = !DILocation(line: 301, column: 13, scope: !372)
!402 = distinct !{!402, !369, !403}
!403 = !DILocation(line: 302, column: 61, scope: !370)
!404 = !DILocation(line: 303, column: 15, scope: !32)
!405 = !DILocation(line: 303, column: 21, scope: !32)
!406 = !DILocation(line: 303, column: 26, scope: !32)
!407 = !DILocation(line: 303, column: 25, scope: !32)
!408 = !DILocation(line: 159, column: 25, scope: !383, inlinedAt: !409)
!409 = distinct !DILocation(line: 303, column: 6, scope: !32)
!410 = !DILocation(line: 159, column: 41, scope: !383, inlinedAt: !409)
!411 = !DILocation(line: 159, column: 48, scope: !383, inlinedAt: !409)
!412 = !DILocation(line: 162, column: 16, scope: !394, inlinedAt: !409)
!413 = !DILocation(line: 162, column: 10, scope: !394, inlinedAt: !409)
!414 = !DILocation(line: 162, column: 5, scope: !394, inlinedAt: !409)
!415 = !DILocation(line: 162, column: 8, scope: !394, inlinedAt: !409)
!416 = !DILocation(line: 163, column: 5, scope: !394, inlinedAt: !409)
!417 = !DILocation(line: 165, column: 2, scope: !383, inlinedAt: !409)
!418 = !DILocation(line: 304, column: 5, scope: !32)
!419 = !DILocation(line: 305, column: 2, scope: !32)
!420 = !DILocation(line: 0, scope: !160)
!421 = !DILocation(line: 306, column: 1, scope: !32)
!422 = distinct !DISubprogram(name: "sha256_update", scope: !3, file: !3, line: 135, type: !423, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !191, !231, !43}
!425 = !{!426, !427, !428, !429, !432}
!426 = !DILocalVariable(name: "s", arg: 1, scope: !422, file: !3, line: 135, type: !191)
!427 = !DILocalVariable(name: "m", arg: 2, scope: !422, file: !3, line: 135, type: !231)
!428 = !DILocalVariable(name: "len", arg: 3, scope: !422, file: !3, line: 135, type: !43)
!429 = !DILocalVariable(name: "p", scope: !422, file: !3, line: 137, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!432 = !DILocalVariable(name: "r", scope: !422, file: !3, line: 138, type: !18)
!433 = !DILocation(line: 135, column: 42, scope: !422)
!434 = !DILocation(line: 135, column: 57, scope: !422)
!435 = !DILocation(line: 135, column: 74, scope: !422)
!436 = !DILocation(line: 137, column: 17, scope: !422)
!437 = !DILocation(line: 138, column: 18, scope: !422)
!438 = !DILocation(line: 138, column: 15, scope: !422)
!439 = !DILocation(line: 138, column: 11, scope: !422)
!440 = !DILocation(line: 140, column: 9, scope: !422)
!441 = !DILocation(line: 141, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !422, file: !3, line: 141, column: 6)
!443 = !DILocation(line: 141, column: 6, scope: !422)
!444 = !DILocation(line: 142, column: 16, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 142, column: 7)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 141, column: 9)
!447 = !DILocation(line: 142, column: 13, scope: !445)
!448 = !DILocation(line: 142, column: 11, scope: !445)
!449 = !DILocation(line: 0, scope: !446)
!450 = !DILocation(line: 142, column: 7, scope: !446)
!451 = !DILocation(line: 143, column: 4, scope: !452)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 142, column: 21)
!453 = !DILocation(line: 144, column: 4, scope: !452)
!454 = !DILocation(line: 146, column: 3, scope: !446)
!455 = !DILocation(line: 147, column: 7, scope: !446)
!456 = !DILocation(line: 148, column: 5, scope: !446)
!457 = !DILocation(line: 149, column: 3, scope: !446)
!458 = !DILocation(line: 150, column: 2, scope: !446)
!459 = !DILocation(line: 0, scope: !422)
!460 = !DILocation(line: 151, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 151, column: 2)
!462 = distinct !DILexicalBlock(scope: !422, file: !3, line: 151, column: 2)
!463 = !DILocation(line: 151, column: 2, scope: !462)
!464 = !DILocation(line: 152, column: 3, scope: !461)
!465 = !DILocation(line: 151, column: 24, scope: !461)
!466 = !DILocation(line: 151, column: 33, scope: !461)
!467 = distinct !{!467, !463, !468}
!468 = !DILocation(line: 152, column: 20, scope: !462)
!469 = !DILocation(line: 153, column: 9, scope: !422)
!470 = !DILocation(line: 0, scope: !461)
!471 = !DILocation(line: 153, column: 2, scope: !422)
!472 = !DILocation(line: 154, column: 1, scope: !422)
!473 = distinct !DISubprogram(name: "sha256_sum", scope: !3, file: !3, line: 122, type: !474, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !477)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !191, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!477 = !{!478, !479, !480}
!478 = !DILocalVariable(name: "s", arg: 1, scope: !473, file: !3, line: 122, type: !191)
!479 = !DILocalVariable(name: "md", arg: 2, scope: !473, file: !3, line: 122, type: !476)
!480 = !DILocalVariable(name: "i", scope: !473, file: !3, line: 124, type: !13)
!481 = !DILocation(line: 122, column: 39, scope: !473)
!482 = !DILocation(line: 122, column: 51, scope: !473)
!483 = !DILocalVariable(name: "s", arg: 1, scope: !484, file: !3, line: 86, type: !191)
!484 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 86, type: !189, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !485)
!485 = !{!483, !486}
!486 = !DILocalVariable(name: "r", scope: !484, file: !3, line: 88, type: !18)
!487 = !DILocation(line: 86, column: 32, scope: !484, inlinedAt: !488)
!488 = distinct !DILocation(line: 126, column: 2, scope: !473)
!489 = !DILocation(line: 88, column: 18, scope: !484, inlinedAt: !488)
!490 = !DILocation(line: 88, column: 15, scope: !484, inlinedAt: !488)
!491 = !DILocation(line: 88, column: 11, scope: !484, inlinedAt: !488)
!492 = !DILocation(line: 90, column: 10, scope: !484, inlinedAt: !488)
!493 = !DILocation(line: 90, column: 2, scope: !484, inlinedAt: !488)
!494 = !DILocation(line: 90, column: 14, scope: !484, inlinedAt: !488)
!495 = !DILocation(line: 91, column: 8, scope: !496, inlinedAt: !488)
!496 = distinct !DILexicalBlock(scope: !484, file: !3, line: 91, column: 6)
!497 = !DILocation(line: 0, scope: !484, inlinedAt: !488)
!498 = !DILocation(line: 91, column: 6, scope: !484, inlinedAt: !488)
!499 = !DILocation(line: 92, column: 17, scope: !500, inlinedAt: !488)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 91, column: 14)
!501 = !DILocation(line: 92, column: 28, scope: !500, inlinedAt: !488)
!502 = !DILocation(line: 92, column: 25, scope: !500, inlinedAt: !488)
!503 = !DILocation(line: 92, column: 3, scope: !500, inlinedAt: !488)
!504 = !DILocation(line: 94, column: 3, scope: !500, inlinedAt: !488)
!505 = !DILocation(line: 95, column: 2, scope: !500, inlinedAt: !488)
!506 = !DILocation(line: 96, column: 16, scope: !484, inlinedAt: !488)
!507 = !DILocation(line: 96, column: 27, scope: !484, inlinedAt: !488)
!508 = !DILocation(line: 96, column: 24, scope: !484, inlinedAt: !488)
!509 = !DILocation(line: 96, column: 2, scope: !484, inlinedAt: !488)
!510 = !DILocation(line: 97, column: 9, scope: !484, inlinedAt: !488)
!511 = !DILocation(line: 98, column: 22, scope: !484, inlinedAt: !488)
!512 = !DILocation(line: 98, column: 15, scope: !484, inlinedAt: !488)
!513 = !DILocation(line: 98, column: 2, scope: !484, inlinedAt: !488)
!514 = !DILocation(line: 98, column: 13, scope: !484, inlinedAt: !488)
!515 = !DILocation(line: 99, column: 22, scope: !484, inlinedAt: !488)
!516 = !DILocation(line: 99, column: 15, scope: !484, inlinedAt: !488)
!517 = !DILocation(line: 99, column: 2, scope: !484, inlinedAt: !488)
!518 = !DILocation(line: 99, column: 13, scope: !484, inlinedAt: !488)
!519 = !DILocation(line: 100, column: 22, scope: !484, inlinedAt: !488)
!520 = !DILocation(line: 100, column: 15, scope: !484, inlinedAt: !488)
!521 = !DILocation(line: 100, column: 2, scope: !484, inlinedAt: !488)
!522 = !DILocation(line: 100, column: 13, scope: !484, inlinedAt: !488)
!523 = !DILocation(line: 101, column: 22, scope: !484, inlinedAt: !488)
!524 = !DILocation(line: 101, column: 15, scope: !484, inlinedAt: !488)
!525 = !DILocation(line: 101, column: 2, scope: !484, inlinedAt: !488)
!526 = !DILocation(line: 101, column: 13, scope: !484, inlinedAt: !488)
!527 = !DILocation(line: 102, column: 22, scope: !484, inlinedAt: !488)
!528 = !DILocation(line: 102, column: 15, scope: !484, inlinedAt: !488)
!529 = !DILocation(line: 102, column: 2, scope: !484, inlinedAt: !488)
!530 = !DILocation(line: 102, column: 13, scope: !484, inlinedAt: !488)
!531 = !DILocation(line: 103, column: 22, scope: !484, inlinedAt: !488)
!532 = !DILocation(line: 103, column: 15, scope: !484, inlinedAt: !488)
!533 = !DILocation(line: 103, column: 2, scope: !484, inlinedAt: !488)
!534 = !DILocation(line: 103, column: 13, scope: !484, inlinedAt: !488)
!535 = !DILocation(line: 104, column: 22, scope: !484, inlinedAt: !488)
!536 = !DILocation(line: 104, column: 15, scope: !484, inlinedAt: !488)
!537 = !DILocation(line: 104, column: 2, scope: !484, inlinedAt: !488)
!538 = !DILocation(line: 104, column: 13, scope: !484, inlinedAt: !488)
!539 = !DILocation(line: 105, column: 15, scope: !484, inlinedAt: !488)
!540 = !DILocation(line: 105, column: 2, scope: !484, inlinedAt: !488)
!541 = !DILocation(line: 105, column: 13, scope: !484, inlinedAt: !488)
!542 = !DILocation(line: 106, column: 2, scope: !484, inlinedAt: !488)
!543 = !DILocation(line: 107, column: 1, scope: !484, inlinedAt: !488)
!544 = !DILocation(line: 124, column: 6, scope: !473)
!545 = !DILocation(line: 128, column: 13, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 127, column: 26)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 127, column: 2)
!548 = distinct !DILexicalBlock(scope: !473, file: !3, line: 127, column: 2)
!549 = !DILocation(line: 128, column: 21, scope: !546)
!550 = !DILocation(line: 128, column: 11, scope: !546)
!551 = !DILocation(line: 129, column: 15, scope: !546)
!552 = !DILocation(line: 129, column: 23, scope: !546)
!553 = !DILocation(line: 129, column: 3, scope: !546)
!554 = !DILocation(line: 129, column: 13, scope: !546)
!555 = !DILocation(line: 130, column: 15, scope: !546)
!556 = !DILocation(line: 130, column: 23, scope: !546)
!557 = !DILocation(line: 130, column: 3, scope: !546)
!558 = !DILocation(line: 130, column: 13, scope: !546)
!559 = !DILocation(line: 131, column: 15, scope: !546)
!560 = !DILocation(line: 131, column: 3, scope: !546)
!561 = !DILocation(line: 131, column: 13, scope: !546)
!562 = !DILocation(line: 128, column: 3, scope: !546)
!563 = !DILocation(line: 133, column: 1, scope: !473)
!564 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 43, type: !565, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !191, !430}
!567 = !{!568, !569, !570, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!568 = !DILocalVariable(name: "s", arg: 1, scope: !564, file: !3, line: 43, type: !191)
!569 = !DILocalVariable(name: "buf", arg: 2, scope: !564, file: !3, line: 43, type: !430)
!570 = !DILocalVariable(name: "W", scope: !564, file: !3, line: 45, type: !571)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !53)
!572 = !DILocalVariable(name: "t1", scope: !564, file: !3, line: 45, type: !14)
!573 = !DILocalVariable(name: "t2", scope: !564, file: !3, line: 45, type: !14)
!574 = !DILocalVariable(name: "a", scope: !564, file: !3, line: 45, type: !14)
!575 = !DILocalVariable(name: "b", scope: !564, file: !3, line: 45, type: !14)
!576 = !DILocalVariable(name: "c", scope: !564, file: !3, line: 45, type: !14)
!577 = !DILocalVariable(name: "d", scope: !564, file: !3, line: 45, type: !14)
!578 = !DILocalVariable(name: "e", scope: !564, file: !3, line: 45, type: !14)
!579 = !DILocalVariable(name: "f", scope: !564, file: !3, line: 45, type: !14)
!580 = !DILocalVariable(name: "g", scope: !564, file: !3, line: 45, type: !14)
!581 = !DILocalVariable(name: "h", scope: !564, file: !3, line: 45, type: !14)
!582 = !DILocalVariable(name: "i", scope: !564, file: !3, line: 46, type: !13)
!583 = !DILocation(line: 43, column: 41, scope: !564)
!584 = !DILocation(line: 43, column: 59, scope: !564)
!585 = !DILocation(line: 45, column: 2, scope: !564)
!586 = !DILocation(line: 45, column: 11, scope: !564)
!587 = !DILocation(line: 46, column: 6, scope: !564)
!588 = !DILocation(line: 49, column: 20, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 48, column: 27)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 48, column: 2)
!591 = distinct !DILexicalBlock(scope: !564, file: !3, line: 48, column: 2)
!592 = !DILocation(line: 49, column: 10, scope: !589)
!593 = !DILocation(line: 49, column: 28, scope: !589)
!594 = !DILocation(line: 50, column: 11, scope: !589)
!595 = !DILocation(line: 50, column: 31, scope: !589)
!596 = !DILocation(line: 50, column: 8, scope: !589)
!597 = !DILocation(line: 51, column: 11, scope: !589)
!598 = !DILocation(line: 51, column: 31, scope: !589)
!599 = !DILocation(line: 51, column: 8, scope: !589)
!600 = !DILocation(line: 52, column: 11, scope: !589)
!601 = !DILocation(line: 52, column: 8, scope: !589)
!602 = !DILocation(line: 49, column: 3, scope: !589)
!603 = !DILocation(line: 55, column: 46, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 54, column: 2)
!605 = distinct !DILexicalBlock(scope: !564, file: !3, line: 54, column: 2)
!606 = !DILocation(line: 55, column: 10, scope: !604)
!607 = !DILocalVariable(name: "n", arg: 1, scope: !608, file: !3, line: 24, type: !14)
!608 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 24, type: !609, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!14, !14, !13}
!611 = !{!607, !612}
!612 = !DILocalVariable(name: "k", arg: 2, scope: !608, file: !3, line: 24, type: !13)
!613 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !614)
!614 = distinct !DILocation(line: 55, column: 10, scope: !604)
!615 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !614)
!616 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !614)
!617 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !614)
!618 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !614)
!619 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !614)
!620 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !621)
!621 = distinct !DILocation(line: 55, column: 10, scope: !604)
!622 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !621)
!623 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !621)
!624 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !621)
!625 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !621)
!626 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !621)
!627 = !DILocation(line: 55, column: 26, scope: !604)
!628 = !DILocation(line: 55, column: 23, scope: !604)
!629 = !DILocation(line: 55, column: 21, scope: !604)
!630 = !DILocation(line: 55, column: 32, scope: !604)
!631 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !632)
!632 = distinct !DILocation(line: 55, column: 32, scope: !604)
!633 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !632)
!634 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !632)
!635 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !632)
!636 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !632)
!637 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !632)
!638 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !639)
!639 = distinct !DILocation(line: 55, column: 32, scope: !604)
!640 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !639)
!641 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !639)
!642 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !639)
!643 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !639)
!644 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !639)
!645 = !DILocation(line: 55, column: 30, scope: !604)
!646 = !DILocation(line: 55, column: 44, scope: !604)
!647 = !DILocation(line: 55, column: 3, scope: !604)
!648 = !DILocation(line: 55, column: 8, scope: !604)
!649 = !DILocation(line: 54, column: 18, scope: !604)
!650 = !DILocation(line: 54, column: 11, scope: !604)
!651 = !DILocation(line: 54, column: 2, scope: !605)
!652 = distinct !{!652, !651, !653}
!653 = !DILocation(line: 55, column: 52, scope: !605)
!654 = !DILocation(line: 56, column: 6, scope: !564)
!655 = !DILocation(line: 45, column: 26, scope: !564)
!656 = !DILocation(line: 45, column: 29, scope: !564)
!657 = !DILocation(line: 45, column: 32, scope: !564)
!658 = !DILocation(line: 45, column: 35, scope: !564)
!659 = !DILocation(line: 60, column: 6, scope: !564)
!660 = !DILocation(line: 45, column: 38, scope: !564)
!661 = !DILocation(line: 45, column: 41, scope: !564)
!662 = !DILocation(line: 45, column: 44, scope: !564)
!663 = !DILocation(line: 45, column: 47, scope: !564)
!664 = !DILocation(line: 64, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !564, file: !3, line: 64, column: 2)
!666 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !667)
!667 = distinct !DILocation(line: 65, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 64, column: 27)
!669 = distinct !DILexicalBlock(scope: !665, file: !3, line: 64, column: 2)
!670 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !667)
!671 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !667)
!672 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !667)
!673 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !667)
!674 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !675)
!675 = distinct !DILocation(line: 65, column: 12, scope: !668)
!676 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !675)
!677 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !675)
!678 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !675)
!679 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !675)
!680 = !DILocation(line: 65, column: 12, scope: !668)
!681 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !682)
!682 = distinct !DILocation(line: 65, column: 12, scope: !668)
!683 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !682)
!684 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !682)
!685 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !682)
!686 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !682)
!687 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !682)
!688 = !DILocation(line: 65, column: 10, scope: !668)
!689 = !DILocation(line: 65, column: 20, scope: !668)
!690 = !DILocation(line: 65, column: 18, scope: !668)
!691 = !DILocation(line: 65, column: 32, scope: !668)
!692 = !DILocation(line: 65, column: 30, scope: !668)
!693 = !DILocation(line: 65, column: 39, scope: !668)
!694 = !DILocation(line: 65, column: 37, scope: !668)
!695 = !DILocation(line: 45, column: 18, scope: !564)
!696 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !697)
!697 = distinct !DILocation(line: 66, column: 8, scope: !668)
!698 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !697)
!699 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !697)
!700 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !697)
!701 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !697)
!702 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !703)
!703 = distinct !DILocation(line: 66, column: 8, scope: !668)
!704 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !703)
!705 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !703)
!706 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !703)
!707 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !703)
!708 = !DILocation(line: 66, column: 8, scope: !668)
!709 = !DILocation(line: 24, column: 30, scope: !608, inlinedAt: !710)
!710 = distinct !DILocation(line: 66, column: 8, scope: !668)
!711 = !DILocation(line: 24, column: 37, scope: !608, inlinedAt: !710)
!712 = !DILocation(line: 24, column: 52, scope: !608, inlinedAt: !710)
!713 = !DILocation(line: 24, column: 63, scope: !608, inlinedAt: !710)
!714 = !DILocation(line: 24, column: 58, scope: !608, inlinedAt: !710)
!715 = !DILocation(line: 24, column: 42, scope: !608, inlinedAt: !710)
!716 = !DILocation(line: 66, column: 16, scope: !668)
!717 = !DILocation(line: 66, column: 14, scope: !668)
!718 = !DILocation(line: 45, column: 22, scope: !564)
!719 = !DILocation(line: 70, column: 9, scope: !668)
!720 = !DILocation(line: 74, column: 10, scope: !668)
!721 = !DILocation(line: 64, column: 23, scope: !669)
!722 = !DILocation(line: 64, column: 16, scope: !669)
!723 = distinct !{!723, !664, !724}
!724 = !DILocation(line: 75, column: 2, scope: !665)
!725 = !DILocation(line: 76, column: 10, scope: !564)
!726 = !DILocation(line: 80, column: 10, scope: !564)
!727 = !DILocation(line: 84, column: 1, scope: !564)
