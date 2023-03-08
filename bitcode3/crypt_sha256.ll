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
  %69 = and i64 %15, 4294967295, !dbg !209
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !210
  %70 = zext i32 %60 to i64, !dbg !211
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %70) #5, !dbg !212
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !213
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !214
  store i64 0, i64* %61, align 8, !dbg !217, !tbaa !197
  %71 = bitcast i32* %62 to <4 x i32>*, !dbg !218
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %71, align 8, !dbg !218, !tbaa !202
  store i32 1359893119, i32* %64, align 8, !dbg !219, !tbaa !202
  store i32 -1694144372, i32* %65, align 4, !dbg !220, !tbaa !202
  store i32 528734635, i32* %66, align 8, !dbg !221, !tbaa !202
  store i32 1541459225, i32* %67, align 4, !dbg !222, !tbaa !202
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !223
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %54, i64 %70) #5, !dbg !224
  %72 = icmp ugt i32 %16, 32, !dbg !240
  br i1 %72, label %73, label %84, !dbg !243

; <label>:73:                                     ; preds = %59
  %74 = add i64 %15, 4294967263, !dbg !244
  br label %75, !dbg !244

; <label>:75:                                     ; preds = %75, %73
  %76 = phi i32 [ %77, %75 ], [ %16, %73 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #6, !dbg !244
  %77 = add i32 %76, -32, !dbg !245
  %78 = icmp ugt i32 %77, 32, !dbg !240
  br i1 %78, label %75, label %79, !dbg !243, !llvm.loop !246

; <label>:79:                                     ; preds = %75
  %80 = and i64 %74, 4294967264, !dbg !244
  %81 = add i64 %15, 4294967264, !dbg !244
  %82 = sub i64 %81, %80, !dbg !244
  %83 = and i64 %82, 4294967295, !dbg !249
  br label %84, !dbg !249

; <label>:84:                                     ; preds = %59, %79
  %85 = phi i64 [ %69, %59 ], [ %83, %79 ], !dbg !249
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 %85) #6, !dbg !250
  %86 = icmp eq i32 %16, 0, !dbg !251
  br i1 %86, label %103, label %87, !dbg !254

; <label>:87:                                     ; preds = %84, %93
  %88 = phi i32 [ %94, %93 ], [ %16, %84 ]
  %89 = and i32 %88, 1, !dbg !255
  %90 = icmp eq i32 %89, 0, !dbg !255
  br i1 %90, label %92, label %91, !dbg !257

; <label>:91:                                     ; preds = %87
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !258
  br label %93, !dbg !258

; <label>:92:                                     ; preds = %87
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !259
  br label %93

; <label>:93:                                     ; preds = %91, %92
  %94 = lshr i32 %88, 1, !dbg !260
  %95 = icmp eq i32 %94, 0, !dbg !251
  br i1 %95, label %96, label %87, !dbg !254, !llvm.loop !261

; <label>:96:                                     ; preds = %93
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !263
  store i64 0, i64* %61, align 8, !dbg !266, !tbaa !197
  %97 = bitcast i32* %62 to <4 x i32>*, !dbg !267
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %97, align 8, !dbg !267, !tbaa !202
  %98 = bitcast i32* %64 to <4 x i32>*, !dbg !268
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %98, align 8, !dbg !268, !tbaa !202
  br i1 %86, label %106, label %99, !dbg !269

; <label>:99:                                     ; preds = %96, %99
  %100 = phi i32 [ %101, %99 ], [ 0, %96 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %0, i64 %69) #5, !dbg !271
  %101 = add nuw i32 %100, 1, !dbg !273
  %102 = icmp eq i32 %101, %16, !dbg !274
  br i1 %102, label %106, label %99, !dbg !269, !llvm.loop !275

; <label>:103:                                    ; preds = %84
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !263
  store i64 0, i64* %61, align 8, !dbg !266, !tbaa !197
  %104 = bitcast i32* %62 to <4 x i32>*, !dbg !267
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %104, align 8, !dbg !267, !tbaa !202
  %105 = bitcast i32* %64 to <4 x i32>*, !dbg !268
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %105, align 8, !dbg !268, !tbaa !202
  br label %106

; <label>:106:                                    ; preds = %99, %103, %96
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %12) #5, !dbg !277
  store i64 0, i64* %61, align 8, !dbg !280, !tbaa !197
  %107 = bitcast i32* %62 to <4 x i32>*, !dbg !281
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %107, align 8, !dbg !281, !tbaa !202
  %108 = bitcast i32* %64 to <4 x i32>*, !dbg !282
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %108, align 8, !dbg !282, !tbaa !202
  br label %109, !dbg !283

; <label>:109:                                    ; preds = %106, %109
  %110 = phi i32 [ 0, %106 ], [ %111, %109 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* %54, i64 %70) #5, !dbg !285
  %111 = add nuw nsw i32 %110, 1, !dbg !287
  %112 = load i8, i8* %11, align 16, !dbg !288, !tbaa !152
  %113 = zext i8 %112 to i32, !dbg !288
  %114 = add nuw nsw i32 %113, 16, !dbg !289
  %115 = icmp ult i32 %111, %114, !dbg !290
  br i1 %115, label %109, label %116, !dbg !283, !llvm.loop !291

; <label>:116:                                    ; preds = %109
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %13) #5, !dbg !293
  %117 = icmp eq i32 %53, 0, !dbg !294
  br i1 %117, label %166, label %118, !dbg !297

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
  br label %128, !dbg !297

; <label>:128:                                    ; preds = %163, %118
  %129 = phi i32 [ 0, %118 ], [ %164, %163 ]
  store i64 0, i64* %61, align 8, !dbg !301, !tbaa !197
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %126, align 8, !dbg !302, !tbaa !202
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %127, align 8, !dbg !303, !tbaa !202
  %130 = and i32 %129, 1, !dbg !304
  %131 = icmp ne i32 %130, 0, !dbg !304
  br i1 %131, label %132, label %139, !dbg !306

; <label>:132:                                    ; preds = %128
  br i1 %72, label %133, label %137, !dbg !312

; <label>:133:                                    ; preds = %132, %133
  %134 = phi i32 [ %135, %133 ], [ %16, %132 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !313
  %135 = add i32 %134, -32, !dbg !314
  %136 = icmp ugt i32 %135, 32, !dbg !315
  br i1 %136, label %133, label %137, !dbg !312, !llvm.loop !246

; <label>:137:                                    ; preds = %133, %132
  %138 = phi i64 [ %69, %132 ], [ %123, %133 ], !dbg !316
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %138) #6, !dbg !317
  br label %140, !dbg !318

; <label>:139:                                    ; preds = %128
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !319
  br label %140

; <label>:140:                                    ; preds = %139, %137
  %141 = urem i32 %129, 3, !dbg !320
  %142 = icmp eq i32 %141, 0, !dbg !320
  br i1 %142, label %144, label %143, !dbg !322

; <label>:143:                                    ; preds = %140
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %13, i64 %70) #5, !dbg !323
  br label %144, !dbg !323

; <label>:144:                                    ; preds = %140, %143
  %145 = urem i32 %129, 7, !dbg !324
  %146 = icmp eq i32 %145, 0, !dbg !324
  br i1 %146, label %154, label %147, !dbg !326

; <label>:147:                                    ; preds = %144
  br i1 %72, label %148, label %152, !dbg !332

; <label>:148:                                    ; preds = %147, %148
  %149 = phi i32 [ %150, %148 ], [ %16, %147 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !333
  %150 = add i32 %149, -32, !dbg !334
  %151 = icmp ugt i32 %150, 32, !dbg !335
  br i1 %151, label %148, label %152, !dbg !332, !llvm.loop !246

; <label>:152:                                    ; preds = %148, %147
  %153 = phi i64 [ %69, %147 ], [ %124, %148 ], !dbg !336
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %153) #6, !dbg !337
  br label %154, !dbg !338

; <label>:154:                                    ; preds = %144, %152
  br i1 %131, label %155, label %156, !dbg !339

; <label>:155:                                    ; preds = %154
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %11, i64 32) #5, !dbg !340
  br label %163, !dbg !340

; <label>:156:                                    ; preds = %154
  br i1 %72, label %157, label %161, !dbg !347

; <label>:157:                                    ; preds = %156, %157
  %158 = phi i32 [ %159, %157 ], [ %16, %156 ]
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 32) #6, !dbg !348
  %159 = add i32 %158, -32, !dbg !349
  %160 = icmp ugt i32 %159, 32, !dbg !350
  br i1 %160, label %157, label %161, !dbg !347, !llvm.loop !246

; <label>:161:                                    ; preds = %157, %156
  %162 = phi i64 [ %69, %156 ], [ %125, %157 ], !dbg !351
  call fastcc void @sha256_update(%struct.sha256* nonnull %4, i8* nonnull %12, i64 %162) #6, !dbg !352
  br label %163

; <label>:163:                                    ; preds = %161, %155
  call fastcc void @sha256_sum(%struct.sha256* nonnull %4, i8* nonnull %11) #5, !dbg !353
  %164 = add nuw i32 %129, 1, !dbg !354
  %165 = icmp eq i32 %164, %53, !dbg !294
  br i1 %165, label %166, label %128, !dbg !297, !llvm.loop !355

; <label>:166:                                    ; preds = %163, %116
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %60, i8* %54) #6, !dbg !358
  %168 = sext i32 %167 to i64, !dbg !359
  %169 = getelementptr inbounds i8, i8* %2, i64 %168, !dbg !359
  %170 = add nsw i64 %168, 40, !dbg !360
  br label %171, !dbg !360

; <label>:171:                                    ; preds = %171, %166
  %172 = phi i64 [ 0, %166 ], [ %218, %171 ]
  %173 = phi i8* [ %169, %166 ], [ %217, %171 ]
  %174 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 0, !dbg !362
  %175 = load i8, i8* %174, align 1, !dbg !362, !tbaa !152
  %176 = zext i8 %175 to i64, !dbg !364
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %176, !dbg !364
  %178 = load i8, i8* %177, align 1, !dbg !364, !tbaa !152
  %179 = zext i8 %178 to i32, !dbg !364
  %180 = shl nuw nsw i32 %179, 16, !dbg !365
  %181 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 1, !dbg !366
  %182 = load i8, i8* %181, align 1, !dbg !366, !tbaa !152
  %183 = zext i8 %182 to i64, !dbg !367
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %183, !dbg !367
  %185 = load i8, i8* %184, align 1, !dbg !367, !tbaa !152
  %186 = zext i8 %185 to i32, !dbg !367
  %187 = shl nuw nsw i32 %186, 8, !dbg !368
  %188 = or i32 %187, %180, !dbg !369
  %189 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @sha256crypt.perm, i64 0, i64 %172, i64 2, !dbg !370
  %190 = load i8, i8* %189, align 1, !dbg !370, !tbaa !152
  %191 = zext i8 %190 to i64, !dbg !371
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %191, !dbg !371
  %193 = load i8, i8* %192, align 1, !dbg !371, !tbaa !152
  %194 = zext i8 %193 to i32, !dbg !371
  %195 = or i32 %187, %194, !dbg !372
  %196 = and i32 %194, 63, !dbg !384
  %197 = zext i32 %196 to i64, !dbg !386
  %198 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %197, !dbg !386
  %199 = load i8, i8* %198, align 1, !dbg !386, !tbaa !152
  %200 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !387
  store i8 %199, i8* %173, align 1, !dbg !388, !tbaa !152
  %201 = lshr i32 %195, 6, !dbg !389
  %202 = and i32 %201, 63, !dbg !384
  %203 = zext i32 %202 to i64, !dbg !386
  %204 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %203, !dbg !386
  %205 = load i8, i8* %204, align 1, !dbg !386, !tbaa !152
  %206 = getelementptr inbounds i8, i8* %173, i64 2, !dbg !387
  store i8 %205, i8* %200, align 1, !dbg !388, !tbaa !152
  %207 = lshr i32 %188, 12, !dbg !389
  %208 = and i32 %207, 63, !dbg !384
  %209 = zext i32 %208 to i64, !dbg !386
  %210 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %209, !dbg !386
  %211 = load i8, i8* %210, align 1, !dbg !386, !tbaa !152
  %212 = getelementptr inbounds i8, i8* %173, i64 3, !dbg !387
  store i8 %211, i8* %206, align 1, !dbg !388, !tbaa !152
  %213 = lshr i32 %179, 2, !dbg !389
  %214 = zext i32 %213 to i64, !dbg !386
  %215 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %214, !dbg !386
  %216 = load i8, i8* %215, align 1, !dbg !386, !tbaa !152
  store i8 %216, i8* %212, align 1, !dbg !388, !tbaa !152
  %217 = getelementptr i8, i8* %173, i64 4
  %218 = add nuw nsw i64 %172, 1, !dbg !390
  %219 = icmp eq i64 %218, 10, !dbg !391
  br i1 %219, label %220, label %171, !dbg !360, !llvm.loop !392

; <label>:220:                                    ; preds = %171
  %221 = getelementptr i8, i8* %2, i64 %170, !dbg !360
  %222 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !394
  %223 = load i8, i8* %222, align 1, !dbg !394, !tbaa !152
  %224 = zext i8 %223 to i32, !dbg !394
  %225 = shl nuw nsw i32 %224, 8, !dbg !395
  %226 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30, !dbg !396
  %227 = load i8, i8* %226, align 2, !dbg !396, !tbaa !152
  %228 = zext i8 %227 to i32, !dbg !396
  %229 = or i32 %225, %228, !dbg !397
  %230 = and i32 %228, 63, !dbg !402
  %231 = zext i32 %230 to i64, !dbg !403
  %232 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %231, !dbg !403
  %233 = load i8, i8* %232, align 1, !dbg !403, !tbaa !152
  %234 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !404
  store i8 %233, i8* %221, align 1, !dbg !405, !tbaa !152
  %235 = lshr i32 %229, 6, !dbg !406
  %236 = and i32 %235, 63, !dbg !402
  %237 = zext i32 %236 to i64, !dbg !403
  %238 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %237, !dbg !403
  %239 = load i8, i8* %238, align 1, !dbg !403, !tbaa !152
  %240 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !404
  store i8 %239, i8* %234, align 1, !dbg !405, !tbaa !152
  %241 = lshr i32 %224, 4, !dbg !406
  %242 = zext i32 %241 to i64, !dbg !403
  %243 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %242, !dbg !403
  %244 = load i8, i8* %243, align 1, !dbg !403, !tbaa !152
  store i8 %244, i8* %240, align 1, !dbg !405, !tbaa !152
  %245 = getelementptr i8, i8* %221, i64 3
  store i8 0, i8* %245, align 1, !dbg !407, !tbaa !152
  br label %246, !dbg !408

; <label>:246:                                    ; preds = %52, %52, %56, %56, %248, %248, %251, %251, %254, %254, %257, %257, %260, %260, %263, %263, %266, %266, %269, %269, %272, %272, %275, %275, %278, %278, %281, %281, %284, %284, %287, %287, %48, %18, %3, %220
  %247 = phi i8* [ %2, %220 ], [ null, %3 ], [ null, %18 ], [ null, %48 ], [ null, %287 ], [ null, %287 ], [ null, %284 ], [ null, %284 ], [ null, %281 ], [ null, %281 ], [ null, %278 ], [ null, %278 ], [ null, %275 ], [ null, %275 ], [ null, %272 ], [ null, %272 ], [ null, %269 ], [ null, %269 ], [ null, %266 ], [ null, %266 ], [ null, %263 ], [ null, %263 ], [ null, %260 ], [ null, %260 ], [ null, %257 ], [ null, %257 ], [ null, %254 ], [ null, %254 ], [ null, %251 ], [ null, %251 ], [ null, %248 ], [ null, %248 ], [ null, %56 ], [ null, %56 ], [ null, %52 ], [ null, %52 ], !dbg !409
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %10) #4, !dbg !410
  ret i8* %247, !dbg !410

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
define internal fastcc void @sha256_update(%struct.sha256*, i8*, i64) unnamed_addr #0 !dbg !411 {
  %4 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !426
  %5 = load i64, i64* %4, align 8, !dbg !426, !tbaa !197
  %6 = trunc i64 %5 to i32, !dbg !427
  %7 = and i32 %6, 63, !dbg !427
  %8 = add i64 %5, %2, !dbg !429
  store i64 %8, i64* %4, align 8, !dbg !429, !tbaa !197
  %9 = icmp eq i32 %7, 0, !dbg !430
  br i1 %9, label %23, label %10, !dbg !432

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 64, %7, !dbg !433
  %12 = zext i32 %11 to i64, !dbg !436
  %13 = icmp ugt i64 %12, %2, !dbg !437
  %14 = zext i32 %7 to i64, !dbg !438
  %15 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %14, !dbg !438
  br i1 %13, label %16, label %18, !dbg !439

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !440
  br label %45, !dbg !442

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !438
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !443
  %21 = sub i64 %2, %12, !dbg !444
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !445
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %19) #5, !dbg !446
  br label %23, !dbg !447

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !448
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  %26 = icmp ugt i64 %25, 63, !dbg !449
  br i1 %26, label %27, label %40, !dbg !452

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -64, !dbg !453
  %29 = and i64 %28, -64, !dbg !453
  %30 = add i64 %29, 64, !dbg !453
  br label %31, !dbg !453

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha256* %0, i8* %33) #5, !dbg !453
  %34 = add i64 %32, -64, !dbg !454
  %35 = getelementptr inbounds i8, i8* %33, i64 64, !dbg !455
  %36 = icmp ugt i64 %34, 63, !dbg !449
  br i1 %36, label %31, label %37, !dbg !452, !llvm.loop !456

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !453
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !453
  br label %40, !dbg !458

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !459
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !459
  %43 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !458
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !460
  br label %45, !dbg !461

; <label>:45:                                     ; preds = %40, %16
  ret void, !dbg !461
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha256_sum(%struct.sha256*, i8* nocapture) unnamed_addr #0 !dbg !462 {
  %3 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 0, !dbg !478
  %4 = load i64, i64* %3, align 8, !dbg !478, !tbaa !197
  %5 = trunc i64 %4 to i32, !dbg !479
  %6 = and i32 %5, 63, !dbg !479
  %7 = add nuw nsw i32 %6, 1, !dbg !481
  %8 = zext i32 %6 to i64, !dbg !482
  %9 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %8, !dbg !482
  store i8 -128, i8* %9, align 1, !dbg !483, !tbaa !152
  %10 = icmp ugt i32 %6, 55, !dbg !484
  %11 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 0, !dbg !486
  br i1 %10, label %12, label %18, !dbg !487

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !488
  %14 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %13, !dbg !488
  %15 = xor i32 %6, 63, !dbg !490
  %16 = zext i32 %15 to i64, !dbg !491
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !492
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !493
  br label %18, !dbg !494

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !486
  %20 = zext i32 %19 to i64, !dbg !495
  %21 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 %20, !dbg !495
  %22 = sub nsw i32 56, %19, !dbg !496
  %23 = zext i32 %22 to i64, !dbg !497
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !498
  %25 = load i64, i64* %3, align 8, !dbg !499, !tbaa !197
  %26 = shl i64 %25, 3, !dbg !499
  store i64 %26, i64* %3, align 8, !dbg !499, !tbaa !197
  %27 = lshr i64 %25, 53, !dbg !500
  %28 = trunc i64 %27 to i8, !dbg !501
  %29 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 56, !dbg !502
  store i8 %28, i8* %29, align 8, !dbg !503, !tbaa !152
  %30 = lshr i64 %25, 45, !dbg !504
  %31 = trunc i64 %30 to i8, !dbg !505
  %32 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 57, !dbg !506
  store i8 %31, i8* %32, align 1, !dbg !507, !tbaa !152
  %33 = lshr i64 %25, 37, !dbg !508
  %34 = trunc i64 %33 to i8, !dbg !509
  %35 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 58, !dbg !510
  store i8 %34, i8* %35, align 2, !dbg !511, !tbaa !152
  %36 = lshr i64 %25, 29, !dbg !512
  %37 = trunc i64 %36 to i8, !dbg !513
  %38 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 59, !dbg !514
  store i8 %37, i8* %38, align 1, !dbg !515, !tbaa !152
  %39 = lshr i64 %25, 21, !dbg !516
  %40 = trunc i64 %39 to i8, !dbg !517
  %41 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 60, !dbg !518
  store i8 %40, i8* %41, align 4, !dbg !519, !tbaa !152
  %42 = lshr i64 %25, 13, !dbg !520
  %43 = trunc i64 %42 to i8, !dbg !521
  %44 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 61, !dbg !522
  store i8 %43, i8* %44, align 1, !dbg !523, !tbaa !152
  %45 = lshr i64 %25, 5, !dbg !524
  %46 = trunc i64 %45 to i8, !dbg !525
  %47 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 62, !dbg !526
  store i8 %46, i8* %47, align 2, !dbg !527, !tbaa !152
  %48 = trunc i64 %26 to i8, !dbg !528
  %49 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 2, i64 63, !dbg !529
  store i8 %48, i8* %49, align 1, !dbg !530, !tbaa !152
  tail call fastcc void @processblock(%struct.sha256* nonnull %0, i8* nonnull %11) #6, !dbg !531
  %50 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !533
  %51 = load i32, i32* %50, align 4, !dbg !533, !tbaa !202
  %52 = lshr i32 %51, 24, !dbg !537
  %53 = trunc i32 %52 to i8, !dbg !533
  store i8 %53, i8* %1, align 1, !dbg !538, !tbaa !152
  %54 = load i32, i32* %50, align 4, !dbg !539, !tbaa !202
  %55 = lshr i32 %54, 16, !dbg !540
  %56 = trunc i32 %55 to i8, !dbg !539
  %57 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !541
  store i8 %56, i8* %57, align 1, !dbg !542, !tbaa !152
  %58 = load i32, i32* %50, align 4, !dbg !543, !tbaa !202
  %59 = lshr i32 %58, 8, !dbg !544
  %60 = trunc i32 %59 to i8, !dbg !543
  %61 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !545
  store i8 %60, i8* %61, align 1, !dbg !546, !tbaa !152
  %62 = load i32, i32* %50, align 4, !dbg !547, !tbaa !202
  %63 = trunc i32 %62 to i8, !dbg !547
  %64 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !548
  store i8 %63, i8* %64, align 1, !dbg !549, !tbaa !152
  %65 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 1, !dbg !533
  %66 = load i32, i32* %65, align 4, !dbg !533, !tbaa !202
  %67 = lshr i32 %66, 24, !dbg !537
  %68 = trunc i32 %67 to i8, !dbg !533
  %69 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !550
  store i8 %68, i8* %69, align 1, !dbg !538, !tbaa !152
  %70 = load i32, i32* %65, align 4, !dbg !539, !tbaa !202
  %71 = lshr i32 %70, 16, !dbg !540
  %72 = trunc i32 %71 to i8, !dbg !539
  %73 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !541
  store i8 %72, i8* %73, align 1, !dbg !542, !tbaa !152
  %74 = load i32, i32* %65, align 4, !dbg !543, !tbaa !202
  %75 = lshr i32 %74, 8, !dbg !544
  %76 = trunc i32 %75 to i8, !dbg !543
  %77 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !545
  store i8 %76, i8* %77, align 1, !dbg !546, !tbaa !152
  %78 = load i32, i32* %65, align 4, !dbg !547, !tbaa !202
  %79 = trunc i32 %78 to i8, !dbg !547
  %80 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !548
  store i8 %79, i8* %80, align 1, !dbg !549, !tbaa !152
  %81 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 2, !dbg !533
  %82 = load i32, i32* %81, align 4, !dbg !533, !tbaa !202
  %83 = lshr i32 %82, 24, !dbg !537
  %84 = trunc i32 %83 to i8, !dbg !533
  %85 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !550
  store i8 %84, i8* %85, align 1, !dbg !538, !tbaa !152
  %86 = load i32, i32* %81, align 4, !dbg !539, !tbaa !202
  %87 = lshr i32 %86, 16, !dbg !540
  %88 = trunc i32 %87 to i8, !dbg !539
  %89 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !541
  store i8 %88, i8* %89, align 1, !dbg !542, !tbaa !152
  %90 = load i32, i32* %81, align 4, !dbg !543, !tbaa !202
  %91 = lshr i32 %90, 8, !dbg !544
  %92 = trunc i32 %91 to i8, !dbg !543
  %93 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !545
  store i8 %92, i8* %93, align 1, !dbg !546, !tbaa !152
  %94 = load i32, i32* %81, align 4, !dbg !547, !tbaa !202
  %95 = trunc i32 %94 to i8, !dbg !547
  %96 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !548
  store i8 %95, i8* %96, align 1, !dbg !549, !tbaa !152
  %97 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 3, !dbg !533
  %98 = load i32, i32* %97, align 4, !dbg !533, !tbaa !202
  %99 = lshr i32 %98, 24, !dbg !537
  %100 = trunc i32 %99 to i8, !dbg !533
  %101 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !550
  store i8 %100, i8* %101, align 1, !dbg !538, !tbaa !152
  %102 = load i32, i32* %97, align 4, !dbg !539, !tbaa !202
  %103 = lshr i32 %102, 16, !dbg !540
  %104 = trunc i32 %103 to i8, !dbg !539
  %105 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !541
  store i8 %104, i8* %105, align 1, !dbg !542, !tbaa !152
  %106 = load i32, i32* %97, align 4, !dbg !543, !tbaa !202
  %107 = lshr i32 %106, 8, !dbg !544
  %108 = trunc i32 %107 to i8, !dbg !543
  %109 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !545
  store i8 %108, i8* %109, align 1, !dbg !546, !tbaa !152
  %110 = load i32, i32* %97, align 4, !dbg !547, !tbaa !202
  %111 = trunc i32 %110 to i8, !dbg !547
  %112 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !548
  store i8 %111, i8* %112, align 1, !dbg !549, !tbaa !152
  %113 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !533
  %114 = load i32, i32* %113, align 4, !dbg !533, !tbaa !202
  %115 = lshr i32 %114, 24, !dbg !537
  %116 = trunc i32 %115 to i8, !dbg !533
  %117 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !550
  store i8 %116, i8* %117, align 1, !dbg !538, !tbaa !152
  %118 = load i32, i32* %113, align 4, !dbg !539, !tbaa !202
  %119 = lshr i32 %118, 16, !dbg !540
  %120 = trunc i32 %119 to i8, !dbg !539
  %121 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !541
  store i8 %120, i8* %121, align 1, !dbg !542, !tbaa !152
  %122 = load i32, i32* %113, align 4, !dbg !543, !tbaa !202
  %123 = lshr i32 %122, 8, !dbg !544
  %124 = trunc i32 %123 to i8, !dbg !543
  %125 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !545
  store i8 %124, i8* %125, align 1, !dbg !546, !tbaa !152
  %126 = load i32, i32* %113, align 4, !dbg !547, !tbaa !202
  %127 = trunc i32 %126 to i8, !dbg !547
  %128 = getelementptr inbounds i8, i8* %1, i64 19, !dbg !548
  store i8 %127, i8* %128, align 1, !dbg !549, !tbaa !152
  %129 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 5, !dbg !533
  %130 = load i32, i32* %129, align 4, !dbg !533, !tbaa !202
  %131 = lshr i32 %130, 24, !dbg !537
  %132 = trunc i32 %131 to i8, !dbg !533
  %133 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !550
  store i8 %132, i8* %133, align 1, !dbg !538, !tbaa !152
  %134 = load i32, i32* %129, align 4, !dbg !539, !tbaa !202
  %135 = lshr i32 %134, 16, !dbg !540
  %136 = trunc i32 %135 to i8, !dbg !539
  %137 = getelementptr inbounds i8, i8* %1, i64 21, !dbg !541
  store i8 %136, i8* %137, align 1, !dbg !542, !tbaa !152
  %138 = load i32, i32* %129, align 4, !dbg !543, !tbaa !202
  %139 = lshr i32 %138, 8, !dbg !544
  %140 = trunc i32 %139 to i8, !dbg !543
  %141 = getelementptr inbounds i8, i8* %1, i64 22, !dbg !545
  store i8 %140, i8* %141, align 1, !dbg !546, !tbaa !152
  %142 = load i32, i32* %129, align 4, !dbg !547, !tbaa !202
  %143 = trunc i32 %142 to i8, !dbg !547
  %144 = getelementptr inbounds i8, i8* %1, i64 23, !dbg !548
  store i8 %143, i8* %144, align 1, !dbg !549, !tbaa !152
  %145 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 6, !dbg !533
  %146 = load i32, i32* %145, align 4, !dbg !533, !tbaa !202
  %147 = lshr i32 %146, 24, !dbg !537
  %148 = trunc i32 %147 to i8, !dbg !533
  %149 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !550
  store i8 %148, i8* %149, align 1, !dbg !538, !tbaa !152
  %150 = load i32, i32* %145, align 4, !dbg !539, !tbaa !202
  %151 = lshr i32 %150, 16, !dbg !540
  %152 = trunc i32 %151 to i8, !dbg !539
  %153 = getelementptr inbounds i8, i8* %1, i64 25, !dbg !541
  store i8 %152, i8* %153, align 1, !dbg !542, !tbaa !152
  %154 = load i32, i32* %145, align 4, !dbg !543, !tbaa !202
  %155 = lshr i32 %154, 8, !dbg !544
  %156 = trunc i32 %155 to i8, !dbg !543
  %157 = getelementptr inbounds i8, i8* %1, i64 26, !dbg !545
  store i8 %156, i8* %157, align 1, !dbg !546, !tbaa !152
  %158 = load i32, i32* %145, align 4, !dbg !547, !tbaa !202
  %159 = trunc i32 %158 to i8, !dbg !547
  %160 = getelementptr inbounds i8, i8* %1, i64 27, !dbg !548
  store i8 %159, i8* %160, align 1, !dbg !549, !tbaa !152
  %161 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 7, !dbg !533
  %162 = load i32, i32* %161, align 4, !dbg !533, !tbaa !202
  %163 = lshr i32 %162, 24, !dbg !537
  %164 = trunc i32 %163 to i8, !dbg !533
  %165 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !550
  store i8 %164, i8* %165, align 1, !dbg !538, !tbaa !152
  %166 = load i32, i32* %161, align 4, !dbg !539, !tbaa !202
  %167 = lshr i32 %166, 16, !dbg !540
  %168 = trunc i32 %167 to i8, !dbg !539
  %169 = getelementptr inbounds i8, i8* %1, i64 29, !dbg !541
  store i8 %168, i8* %169, align 1, !dbg !542, !tbaa !152
  %170 = load i32, i32* %161, align 4, !dbg !543, !tbaa !202
  %171 = lshr i32 %170, 8, !dbg !544
  %172 = trunc i32 %171 to i8, !dbg !543
  %173 = getelementptr inbounds i8, i8* %1, i64 30, !dbg !545
  store i8 %172, i8* %173, align 1, !dbg !546, !tbaa !152
  %174 = load i32, i32* %161, align 4, !dbg !547, !tbaa !202
  %175 = trunc i32 %174 to i8, !dbg !547
  %176 = getelementptr inbounds i8, i8* %1, i64 31, !dbg !548
  store i8 %175, i8* %176, align 1, !dbg !549, !tbaa !152
  ret void, !dbg !551
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha256* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !552 {
  %3 = alloca [64 x i32], align 16
  %4 = bitcast [64 x i32]* %3 to i8*, !dbg !573
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #4, !dbg !573
  %5 = bitcast i8* %1 to <16 x i8>*, !dbg !576
  %6 = load <16 x i8>, <16 x i8>* %5, align 1, !dbg !576, !tbaa !152
  %7 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !576
  %8 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !576
  %9 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !576
  %10 = shufflevector <16 x i8> %6, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !576
  %11 = zext <4 x i8> %7 to <4 x i32>, !dbg !580
  %12 = shl nuw <4 x i32> %11, <i32 24, i32 24, i32 24, i32 24>, !dbg !581
  %13 = zext <4 x i8> %8 to <4 x i32>, !dbg !582
  %14 = shl nuw nsw <4 x i32> %13, <i32 16, i32 16, i32 16, i32 16>, !dbg !583
  %15 = or <4 x i32> %14, %12, !dbg !584
  %16 = zext <4 x i8> %9 to <4 x i32>, !dbg !585
  %17 = shl nuw nsw <4 x i32> %16, <i32 8, i32 8, i32 8, i32 8>, !dbg !586
  %18 = or <4 x i32> %17, %15, !dbg !587
  %19 = zext <4 x i8> %10 to <4 x i32>, !dbg !588
  %20 = or <4 x i32> %18, %19, !dbg !589
  %21 = bitcast [64 x i32]* %3 to <4 x i32>*, !dbg !589
  store <4 x i32> %20, <4 x i32>* %21, align 16, !dbg !589, !tbaa !202
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !576
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !576
  %24 = load <16 x i8>, <16 x i8>* %23, align 1, !dbg !576, !tbaa !152
  %25 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !576
  %26 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !576
  %27 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !576
  %28 = shufflevector <16 x i8> %24, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !576
  %29 = zext <4 x i8> %25 to <4 x i32>, !dbg !580
  %30 = shl nuw <4 x i32> %29, <i32 24, i32 24, i32 24, i32 24>, !dbg !581
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 4, !dbg !590
  %32 = zext <4 x i8> %26 to <4 x i32>, !dbg !582
  %33 = shl nuw nsw <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>, !dbg !583
  %34 = or <4 x i32> %33, %30, !dbg !584
  %35 = zext <4 x i8> %27 to <4 x i32>, !dbg !585
  %36 = shl nuw nsw <4 x i32> %35, <i32 8, i32 8, i32 8, i32 8>, !dbg !586
  %37 = or <4 x i32> %36, %34, !dbg !587
  %38 = zext <4 x i8> %28 to <4 x i32>, !dbg !588
  %39 = or <4 x i32> %37, %38, !dbg !589
  %40 = bitcast i32* %31 to <4 x i32>*, !dbg !589
  store <4 x i32> %39, <4 x i32>* %40, align 16, !dbg !589, !tbaa !202
  %41 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !576
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !576
  %43 = load <16 x i8>, <16 x i8>* %42, align 1, !dbg !576, !tbaa !152
  %44 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !576
  %45 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !576
  %46 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !576
  %47 = shufflevector <16 x i8> %43, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !576
  %48 = zext <4 x i8> %44 to <4 x i32>, !dbg !580
  %49 = shl nuw <4 x i32> %48, <i32 24, i32 24, i32 24, i32 24>, !dbg !581
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 8, !dbg !590
  %51 = zext <4 x i8> %45 to <4 x i32>, !dbg !582
  %52 = shl nuw nsw <4 x i32> %51, <i32 16, i32 16, i32 16, i32 16>, !dbg !583
  %53 = or <4 x i32> %52, %49, !dbg !584
  %54 = zext <4 x i8> %46 to <4 x i32>, !dbg !585
  %55 = shl nuw nsw <4 x i32> %54, <i32 8, i32 8, i32 8, i32 8>, !dbg !586
  %56 = or <4 x i32> %55, %53, !dbg !587
  %57 = zext <4 x i8> %47 to <4 x i32>, !dbg !588
  %58 = or <4 x i32> %56, %57, !dbg !589
  %59 = bitcast i32* %50 to <4 x i32>*, !dbg !589
  store <4 x i32> %58, <4 x i32>* %59, align 16, !dbg !589, !tbaa !202
  %60 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !576
  %61 = bitcast i8* %60 to <16 x i8>*, !dbg !576
  %62 = load <16 x i8>, <16 x i8>* %61, align 1, !dbg !576, !tbaa !152
  %63 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !576
  %64 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 1, i32 5, i32 9, i32 13>, !dbg !576
  %65 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 2, i32 6, i32 10, i32 14>, !dbg !576
  %66 = shufflevector <16 x i8> %62, <16 x i8> undef, <4 x i32> <i32 3, i32 7, i32 11, i32 15>, !dbg !576
  %67 = zext <4 x i8> %63 to <4 x i32>, !dbg !580
  %68 = shl nuw <4 x i32> %67, <i32 24, i32 24, i32 24, i32 24>, !dbg !581
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 12, !dbg !590
  %70 = zext <4 x i8> %64 to <4 x i32>, !dbg !582
  %71 = shl nuw nsw <4 x i32> %70, <i32 16, i32 16, i32 16, i32 16>, !dbg !583
  %72 = or <4 x i32> %71, %68, !dbg !584
  %73 = zext <4 x i8> %65 to <4 x i32>, !dbg !585
  %74 = shl nuw nsw <4 x i32> %73, <i32 8, i32 8, i32 8, i32 8>, !dbg !586
  %75 = or <4 x i32> %74, %72, !dbg !587
  %76 = zext <4 x i8> %66 to <4 x i32>, !dbg !588
  %77 = or <4 x i32> %75, %76, !dbg !589
  %78 = bitcast i32* %69 to <4 x i32>*, !dbg !589
  store <4 x i32> %77, <4 x i32>* %78, align 16, !dbg !589, !tbaa !202
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %80 = load i32, i32* %79, align 16, !dbg !591, !tbaa !202
  br label %81, !dbg !594

; <label>:81:                                     ; preds = %81, %2
  %82 = phi i32 [ %80, %2 ], [ %101, %81 ], !dbg !591
  %83 = phi i64 [ 16, %2 ], [ %115, %81 ]
  %84 = add nsw i64 %83, -2, !dbg !594
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %84, !dbg !594
  %86 = load i32, i32* %85, align 4, !dbg !594, !tbaa !202
  %87 = lshr i32 %86, 17, !dbg !604
  %88 = shl i32 %86, 15, !dbg !605
  %89 = or i32 %88, %87, !dbg !606
  %90 = lshr i32 %86, 19, !dbg !610
  %91 = shl i32 %86, 13, !dbg !611
  %92 = or i32 %91, %90, !dbg !612
  %93 = lshr i32 %86, 10, !dbg !594
  %94 = xor i32 %92, %93, !dbg !594
  %95 = xor i32 %94, %89, !dbg !594
  %96 = add nsw i64 %83, -7, !dbg !613
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %96, !dbg !614
  %98 = load i32, i32* %97, align 4, !dbg !614, !tbaa !202
  %99 = add nsw i64 %83, -15, !dbg !615
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %99, !dbg !615
  %101 = load i32, i32* %100, align 4, !dbg !615, !tbaa !202
  %102 = lshr i32 %101, 7, !dbg !619
  %103 = shl i32 %101, 25, !dbg !620
  %104 = or i32 %103, %102, !dbg !621
  %105 = lshr i32 %101, 18, !dbg !625
  %106 = shl i32 %101, 14, !dbg !626
  %107 = or i32 %106, %105, !dbg !627
  %108 = lshr i32 %101, 3, !dbg !615
  %109 = xor i32 %107, %108, !dbg !615
  %110 = xor i32 %109, %104, !dbg !615
  %111 = add i32 %82, %98, !dbg !628
  %112 = add i32 %111, %95, !dbg !629
  %113 = add i32 %112, %110, !dbg !630
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %83, !dbg !631
  store i32 %113, i32* %114, align 4, !dbg !632, !tbaa !202
  %115 = add nuw nsw i64 %83, 1, !dbg !633
  %116 = icmp eq i64 %115, 64, !dbg !634
  br i1 %116, label %117, label %81, !dbg !635, !llvm.loop !636

; <label>:117:                                    ; preds = %81
  %118 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 0, !dbg !638
  %119 = bitcast i32* %118 to <4 x i32>*, !dbg !638
  %120 = load <4 x i32>, <4 x i32>* %119, align 8, !dbg !638, !tbaa !202
  %121 = getelementptr inbounds %struct.sha256, %struct.sha256* %0, i64 0, i32 1, i64 4, !dbg !643
  %122 = bitcast i32* %121 to <4 x i32>*, !dbg !643
  %123 = load <4 x i32>, <4 x i32>* %122, align 8, !dbg !643, !tbaa !202
  %124 = extractelement <4 x i32> %120, i32 0, !dbg !648
  %125 = extractelement <4 x i32> %120, i32 1, !dbg !648
  %126 = extractelement <4 x i32> %120, i32 2, !dbg !648
  %127 = extractelement <4 x i32> %120, i32 3, !dbg !648
  %128 = extractelement <4 x i32> %123, i32 0, !dbg !648
  %129 = extractelement <4 x i32> %123, i32 1, !dbg !648
  %130 = extractelement <4 x i32> %123, i32 2, !dbg !648
  %131 = extractelement <4 x i32> %123, i32 3, !dbg !648
  br label %132, !dbg !648

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
  %142 = lshr i32 %137, 6, !dbg !654
  %143 = shl i32 %137, 26, !dbg !655
  %144 = or i32 %143, %142, !dbg !656
  %145 = lshr i32 %137, 11, !dbg !659
  %146 = shl i32 %137, 21, !dbg !660
  %147 = or i32 %146, %145, !dbg !661
  %148 = xor i32 %144, %147, !dbg !662
  %149 = lshr i32 %137, 25, !dbg !666
  %150 = shl i32 %137, 7, !dbg !667
  %151 = or i32 %150, %149, !dbg !668
  %152 = xor i32 %148, %151, !dbg !662
  %153 = add i32 %152, %134, !dbg !669
  %154 = xor i32 %135, %136, !dbg !670
  %155 = and i32 %154, %137, !dbg !670
  %156 = xor i32 %155, %135, !dbg !670
  %157 = add i32 %153, %156, !dbg !671
  %158 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %133, !dbg !672
  %159 = load i32, i32* %158, align 4, !dbg !672, !tbaa !202
  %160 = add i32 %157, %159, !dbg !673
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %133, !dbg !674
  %162 = load i32, i32* %161, align 4, !dbg !674, !tbaa !202
  %163 = add i32 %160, %162, !dbg !675
  %164 = lshr i32 %141, 2, !dbg !679
  %165 = shl i32 %141, 30, !dbg !680
  %166 = or i32 %165, %164, !dbg !681
  %167 = lshr i32 %141, 13, !dbg !684
  %168 = shl i32 %141, 19, !dbg !685
  %169 = or i32 %168, %167, !dbg !686
  %170 = xor i32 %166, %169, !dbg !687
  %171 = lshr i32 %141, 22, !dbg !691
  %172 = shl i32 %141, 10, !dbg !692
  %173 = or i32 %172, %171, !dbg !693
  %174 = xor i32 %170, %173, !dbg !687
  %175 = and i32 %140, %141, !dbg !694
  %176 = or i32 %140, %141, !dbg !694
  %177 = and i32 %139, %176, !dbg !694
  %178 = or i32 %177, %175, !dbg !694
  %179 = add i32 %174, %178, !dbg !695
  %180 = add i32 %163, %138, !dbg !697
  %181 = add i32 %179, %163, !dbg !698
  %182 = add nuw nsw i64 %133, 1, !dbg !699
  %183 = icmp eq i64 %182, 64, !dbg !700
  br i1 %183, label %184, label %132, !dbg !648, !llvm.loop !701

; <label>:184:                                    ; preds = %132
  %185 = insertelement <4 x i32> undef, i32 %181, i32 0, !dbg !703
  %186 = insertelement <4 x i32> %185, i32 %141, i32 1, !dbg !703
  %187 = insertelement <4 x i32> %186, i32 %140, i32 2, !dbg !703
  %188 = insertelement <4 x i32> %187, i32 %139, i32 3, !dbg !703
  %189 = add <4 x i32> %188, %120, !dbg !703
  %190 = bitcast i32* %118 to <4 x i32>*, !dbg !703
  store <4 x i32> %189, <4 x i32>* %190, align 8, !dbg !703, !tbaa !202
  %191 = insertelement <4 x i32> undef, i32 %180, i32 0, !dbg !704
  %192 = insertelement <4 x i32> %191, i32 %137, i32 1, !dbg !704
  %193 = insertelement <4 x i32> %192, i32 %136, i32 2, !dbg !704
  %194 = insertelement <4 x i32> %193, i32 %135, i32 3, !dbg !704
  %195 = add <4 x i32> %194, %123, !dbg !704
  %196 = bitcast i32* %121 to <4 x i32>*, !dbg !704
  store <4 x i32> %195, <4 x i32>* %196, align 8, !dbg !704, !tbaa !202
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #4, !dbg !705
  ret void, !dbg !705
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
!209 = !DILocation(line: 248, column: 27, scope: !32)
!210 = !DILocation(line: 248, column: 2, scope: !32)
!211 = !DILocation(line: 249, column: 28, scope: !32)
!212 = !DILocation(line: 249, column: 2, scope: !32)
!213 = !DILocation(line: 250, column: 2, scope: !32)
!214 = !DILocation(line: 251, column: 2, scope: !32)
!215 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !216)
!216 = distinct !DILocation(line: 254, column: 2, scope: !32)
!217 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !216)
!218 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !216)
!219 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !216)
!220 = !DILocation(line: 117, column: 10, scope: !188, inlinedAt: !216)
!221 = !DILocation(line: 118, column: 10, scope: !188, inlinedAt: !216)
!222 = !DILocation(line: 119, column: 10, scope: !188, inlinedAt: !216)
!223 = !DILocation(line: 255, column: 2, scope: !32)
!224 = !DILocation(line: 256, column: 2, scope: !32)
!225 = !DILocalVariable(name: "s", arg: 1, scope: !226, file: !3, line: 178, type: !191)
!226 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 178, type: !227, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !231)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !191, !18, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!231 = !{!225, !232, !233, !234}
!232 = !DILocalVariable(name: "n", arg: 2, scope: !226, file: !3, line: 178, type: !18)
!233 = !DILocalVariable(name: "md", arg: 3, scope: !226, file: !3, line: 178, type: !229)
!234 = !DILocalVariable(name: "i", scope: !226, file: !3, line: 180, type: !18)
!235 = !DILocation(line: 178, column: 35, scope: !226, inlinedAt: !236)
!236 = distinct !DILocation(line: 257, column: 2, scope: !32)
!237 = !DILocation(line: 178, column: 51, scope: !226, inlinedAt: !236)
!238 = !DILocation(line: 178, column: 66, scope: !226, inlinedAt: !236)
!239 = !DILocation(line: 180, column: 15, scope: !226, inlinedAt: !236)
!240 = !DILocation(line: 182, column: 16, scope: !241, inlinedAt: !236)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 182, column: 2)
!242 = distinct !DILexicalBlock(scope: !226, file: !3, line: 182, column: 2)
!243 = !DILocation(line: 182, column: 2, scope: !242, inlinedAt: !236)
!244 = !DILocation(line: 183, column: 3, scope: !241, inlinedAt: !236)
!245 = !DILocation(line: 182, column: 24, scope: !241, inlinedAt: !236)
!246 = distinct !{!246, !247, !248}
!247 = !DILocation(line: 182, column: 2, scope: !242)
!248 = !DILocation(line: 183, column: 26, scope: !242)
!249 = !DILocation(line: 184, column: 23, scope: !226, inlinedAt: !236)
!250 = !DILocation(line: 184, column: 2, scope: !226, inlinedAt: !236)
!251 = !DILocation(line: 258, column: 19, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 258, column: 2)
!253 = distinct !DILexicalBlock(scope: !32, file: !3, line: 258, column: 2)
!254 = !DILocation(line: 258, column: 2, scope: !253)
!255 = !DILocation(line: 259, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 259, column: 7)
!257 = !DILocation(line: 259, column: 7, scope: !252)
!258 = !DILocation(line: 260, column: 4, scope: !256)
!259 = !DILocation(line: 262, column: 4, scope: !256)
!260 = !DILocation(line: 258, column: 26, scope: !252)
!261 = distinct !{!261, !254, !262}
!262 = !DILocation(line: 262, column: 33, scope: !253)
!263 = !DILocation(line: 263, column: 2, scope: !32)
!264 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !265)
!265 = distinct !DILocation(line: 266, column: 2, scope: !32)
!266 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !265)
!267 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !265)
!268 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !265)
!269 = !DILocation(line: 267, column: 2, scope: !270)
!270 = distinct !DILexicalBlock(scope: !32, file: !3, line: 267, column: 2)
!271 = !DILocation(line: 268, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !3, line: 267, column: 2)
!273 = !DILocation(line: 267, column: 25, scope: !272)
!274 = !DILocation(line: 267, column: 16, scope: !272)
!275 = distinct !{!275, !269, !276}
!276 = !DILocation(line: 268, column: 32, scope: !270)
!277 = !DILocation(line: 269, column: 2, scope: !32)
!278 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !279)
!279 = distinct !DILocation(line: 272, column: 2, scope: !32)
!280 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !279)
!281 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !279)
!282 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !279)
!283 = !DILocation(line: 273, column: 2, scope: !284)
!284 = distinct !DILexicalBlock(scope: !32, file: !3, line: 273, column: 2)
!285 = !DILocation(line: 274, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !284, file: !3, line: 273, column: 2)
!287 = !DILocation(line: 273, column: 31, scope: !286)
!288 = !DILocation(line: 273, column: 23, scope: !286)
!289 = !DILocation(line: 273, column: 21, scope: !286)
!290 = !DILocation(line: 273, column: 16, scope: !286)
!291 = distinct !{!291, !283, !292}
!292 = !DILocation(line: 274, column: 33, scope: !284)
!293 = !DILocation(line: 275, column: 2, scope: !32)
!294 = !DILocation(line: 278, column: 16, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 278, column: 2)
!296 = distinct !DILexicalBlock(scope: !32, file: !3, line: 278, column: 2)
!297 = !DILocation(line: 278, column: 2, scope: !296)
!298 = !DILocation(line: 109, column: 40, scope: !188, inlinedAt: !299)
!299 = distinct !DILocation(line: 279, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !3, line: 278, column: 26)
!301 = !DILocation(line: 111, column: 9, scope: !188, inlinedAt: !299)
!302 = !DILocation(line: 112, column: 10, scope: !188, inlinedAt: !299)
!303 = !DILocation(line: 116, column: 10, scope: !188, inlinedAt: !299)
!304 = !DILocation(line: 280, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 280, column: 7)
!306 = !DILocation(line: 280, column: 7, scope: !300)
!307 = !DILocation(line: 178, column: 35, scope: !226, inlinedAt: !308)
!308 = distinct !DILocation(line: 281, column: 4, scope: !305)
!309 = !DILocation(line: 178, column: 51, scope: !226, inlinedAt: !308)
!310 = !DILocation(line: 178, column: 66, scope: !226, inlinedAt: !308)
!311 = !DILocation(line: 180, column: 15, scope: !226, inlinedAt: !308)
!312 = !DILocation(line: 182, column: 2, scope: !242, inlinedAt: !308)
!313 = !DILocation(line: 183, column: 3, scope: !241, inlinedAt: !308)
!314 = !DILocation(line: 182, column: 24, scope: !241, inlinedAt: !308)
!315 = !DILocation(line: 182, column: 16, scope: !241, inlinedAt: !308)
!316 = !DILocation(line: 184, column: 23, scope: !226, inlinedAt: !308)
!317 = !DILocation(line: 184, column: 2, scope: !226, inlinedAt: !308)
!318 = !DILocation(line: 281, column: 4, scope: !305)
!319 = !DILocation(line: 283, column: 4, scope: !305)
!320 = !DILocation(line: 284, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !300, file: !3, line: 284, column: 7)
!322 = !DILocation(line: 284, column: 7, scope: !300)
!323 = !DILocation(line: 285, column: 4, scope: !321)
!324 = !DILocation(line: 286, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !300, file: !3, line: 286, column: 7)
!326 = !DILocation(line: 286, column: 7, scope: !300)
!327 = !DILocation(line: 178, column: 35, scope: !226, inlinedAt: !328)
!328 = distinct !DILocation(line: 287, column: 4, scope: !325)
!329 = !DILocation(line: 178, column: 51, scope: !226, inlinedAt: !328)
!330 = !DILocation(line: 178, column: 66, scope: !226, inlinedAt: !328)
!331 = !DILocation(line: 180, column: 15, scope: !226, inlinedAt: !328)
!332 = !DILocation(line: 182, column: 2, scope: !242, inlinedAt: !328)
!333 = !DILocation(line: 183, column: 3, scope: !241, inlinedAt: !328)
!334 = !DILocation(line: 182, column: 24, scope: !241, inlinedAt: !328)
!335 = !DILocation(line: 182, column: 16, scope: !241, inlinedAt: !328)
!336 = !DILocation(line: 184, column: 23, scope: !226, inlinedAt: !328)
!337 = !DILocation(line: 184, column: 2, scope: !226, inlinedAt: !328)
!338 = !DILocation(line: 287, column: 4, scope: !325)
!339 = !DILocation(line: 288, column: 7, scope: !300)
!340 = !DILocation(line: 289, column: 4, scope: !341)
!341 = distinct !DILexicalBlock(scope: !300, file: !3, line: 288, column: 7)
!342 = !DILocation(line: 178, column: 35, scope: !226, inlinedAt: !343)
!343 = distinct !DILocation(line: 291, column: 4, scope: !341)
!344 = !DILocation(line: 178, column: 51, scope: !226, inlinedAt: !343)
!345 = !DILocation(line: 178, column: 66, scope: !226, inlinedAt: !343)
!346 = !DILocation(line: 180, column: 15, scope: !226, inlinedAt: !343)
!347 = !DILocation(line: 182, column: 2, scope: !242, inlinedAt: !343)
!348 = !DILocation(line: 183, column: 3, scope: !241, inlinedAt: !343)
!349 = !DILocation(line: 182, column: 24, scope: !241, inlinedAt: !343)
!350 = !DILocation(line: 182, column: 16, scope: !241, inlinedAt: !343)
!351 = !DILocation(line: 184, column: 23, scope: !226, inlinedAt: !343)
!352 = !DILocation(line: 184, column: 2, scope: !226, inlinedAt: !343)
!353 = !DILocation(line: 292, column: 3, scope: !300)
!354 = !DILocation(line: 278, column: 22, scope: !295)
!355 = distinct !{!355, !297, !356}
!356 = !DILocation(line: 293, column: 2, scope: !296)
!357 = !DILocation(line: 194, column: 8, scope: !32)
!358 = !DILocation(line: 297, column: 7, scope: !32)
!359 = !DILocation(line: 297, column: 4, scope: !32)
!360 = !DILocation(line: 301, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !32, file: !3, line: 301, column: 2)
!362 = !DILocation(line: 302, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !3, line: 301, column: 2)
!364 = !DILocation(line: 302, column: 4, scope: !363)
!365 = !DILocation(line: 302, column: 18, scope: !363)
!366 = !DILocation(line: 302, column: 28, scope: !363)
!367 = !DILocation(line: 302, column: 25, scope: !363)
!368 = !DILocation(line: 302, column: 39, scope: !363)
!369 = !DILocation(line: 302, column: 23, scope: !363)
!370 = !DILocation(line: 302, column: 47, scope: !363)
!371 = !DILocation(line: 302, column: 44, scope: !363)
!372 = !DILocation(line: 302, column: 43, scope: !363)
!373 = !DILocalVariable(name: "s", arg: 1, scope: !374, file: !3, line: 159, type: !6)
!374 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 159, type: !375, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!6, !6, !18, !13}
!377 = !{!373, !378, !379}
!378 = !DILocalVariable(name: "u", arg: 2, scope: !374, file: !3, line: 159, type: !18)
!379 = !DILocalVariable(name: "n", arg: 3, scope: !374, file: !3, line: 159, type: !13)
!380 = !DILocation(line: 159, column: 25, scope: !374, inlinedAt: !381)
!381 = distinct !DILocation(line: 301, column: 27, scope: !363)
!382 = !DILocation(line: 159, column: 41, scope: !374, inlinedAt: !381)
!383 = !DILocation(line: 159, column: 48, scope: !374, inlinedAt: !381)
!384 = !DILocation(line: 162, column: 16, scope: !385, inlinedAt: !381)
!385 = distinct !DILexicalBlock(scope: !374, file: !3, line: 161, column: 19)
!386 = !DILocation(line: 162, column: 10, scope: !385, inlinedAt: !381)
!387 = !DILocation(line: 162, column: 5, scope: !385, inlinedAt: !381)
!388 = !DILocation(line: 162, column: 8, scope: !385, inlinedAt: !381)
!389 = !DILocation(line: 163, column: 5, scope: !385, inlinedAt: !381)
!390 = !DILocation(line: 301, column: 19, scope: !363)
!391 = !DILocation(line: 301, column: 13, scope: !363)
!392 = distinct !{!392, !360, !393}
!393 = !DILocation(line: 302, column: 61, scope: !361)
!394 = !DILocation(line: 303, column: 15, scope: !32)
!395 = !DILocation(line: 303, column: 21, scope: !32)
!396 = !DILocation(line: 303, column: 26, scope: !32)
!397 = !DILocation(line: 303, column: 25, scope: !32)
!398 = !DILocation(line: 159, column: 25, scope: !374, inlinedAt: !399)
!399 = distinct !DILocation(line: 303, column: 6, scope: !32)
!400 = !DILocation(line: 159, column: 41, scope: !374, inlinedAt: !399)
!401 = !DILocation(line: 159, column: 48, scope: !374, inlinedAt: !399)
!402 = !DILocation(line: 162, column: 16, scope: !385, inlinedAt: !399)
!403 = !DILocation(line: 162, column: 10, scope: !385, inlinedAt: !399)
!404 = !DILocation(line: 162, column: 5, scope: !385, inlinedAt: !399)
!405 = !DILocation(line: 162, column: 8, scope: !385, inlinedAt: !399)
!406 = !DILocation(line: 163, column: 5, scope: !385, inlinedAt: !399)
!407 = !DILocation(line: 304, column: 5, scope: !32)
!408 = !DILocation(line: 305, column: 2, scope: !32)
!409 = !DILocation(line: 0, scope: !160)
!410 = !DILocation(line: 306, column: 1, scope: !32)
!411 = distinct !DISubprogram(name: "sha256_update", scope: !3, file: !3, line: 135, type: !412, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !191, !229, !43}
!414 = !{!415, !416, !417, !418, !421}
!415 = !DILocalVariable(name: "s", arg: 1, scope: !411, file: !3, line: 135, type: !191)
!416 = !DILocalVariable(name: "m", arg: 2, scope: !411, file: !3, line: 135, type: !229)
!417 = !DILocalVariable(name: "len", arg: 3, scope: !411, file: !3, line: 135, type: !43)
!418 = !DILocalVariable(name: "p", scope: !411, file: !3, line: 137, type: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!421 = !DILocalVariable(name: "r", scope: !411, file: !3, line: 138, type: !18)
!422 = !DILocation(line: 135, column: 42, scope: !411)
!423 = !DILocation(line: 135, column: 57, scope: !411)
!424 = !DILocation(line: 135, column: 74, scope: !411)
!425 = !DILocation(line: 137, column: 17, scope: !411)
!426 = !DILocation(line: 138, column: 18, scope: !411)
!427 = !DILocation(line: 138, column: 15, scope: !411)
!428 = !DILocation(line: 138, column: 11, scope: !411)
!429 = !DILocation(line: 140, column: 9, scope: !411)
!430 = !DILocation(line: 141, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !411, file: !3, line: 141, column: 6)
!432 = !DILocation(line: 141, column: 6, scope: !411)
!433 = !DILocation(line: 142, column: 16, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 142, column: 7)
!435 = distinct !DILexicalBlock(scope: !431, file: !3, line: 141, column: 9)
!436 = !DILocation(line: 142, column: 13, scope: !434)
!437 = !DILocation(line: 142, column: 11, scope: !434)
!438 = !DILocation(line: 0, scope: !435)
!439 = !DILocation(line: 142, column: 7, scope: !435)
!440 = !DILocation(line: 143, column: 4, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !3, line: 142, column: 21)
!442 = !DILocation(line: 144, column: 4, scope: !441)
!443 = !DILocation(line: 146, column: 3, scope: !435)
!444 = !DILocation(line: 147, column: 7, scope: !435)
!445 = !DILocation(line: 148, column: 5, scope: !435)
!446 = !DILocation(line: 149, column: 3, scope: !435)
!447 = !DILocation(line: 150, column: 2, scope: !435)
!448 = !DILocation(line: 0, scope: !411)
!449 = !DILocation(line: 151, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 151, column: 2)
!451 = distinct !DILexicalBlock(scope: !411, file: !3, line: 151, column: 2)
!452 = !DILocation(line: 151, column: 2, scope: !451)
!453 = !DILocation(line: 152, column: 3, scope: !450)
!454 = !DILocation(line: 151, column: 24, scope: !450)
!455 = !DILocation(line: 151, column: 33, scope: !450)
!456 = distinct !{!456, !452, !457}
!457 = !DILocation(line: 152, column: 20, scope: !451)
!458 = !DILocation(line: 153, column: 9, scope: !411)
!459 = !DILocation(line: 0, scope: !450)
!460 = !DILocation(line: 153, column: 2, scope: !411)
!461 = !DILocation(line: 154, column: 1, scope: !411)
!462 = distinct !DISubprogram(name: "sha256_sum", scope: !3, file: !3, line: 122, type: !463, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !466)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !191, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!466 = !{!467, !468, !469}
!467 = !DILocalVariable(name: "s", arg: 1, scope: !462, file: !3, line: 122, type: !191)
!468 = !DILocalVariable(name: "md", arg: 2, scope: !462, file: !3, line: 122, type: !465)
!469 = !DILocalVariable(name: "i", scope: !462, file: !3, line: 124, type: !13)
!470 = !DILocation(line: 122, column: 39, scope: !462)
!471 = !DILocation(line: 122, column: 51, scope: !462)
!472 = !DILocalVariable(name: "s", arg: 1, scope: !473, file: !3, line: 86, type: !191)
!473 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 86, type: !189, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !474)
!474 = !{!472, !475}
!475 = !DILocalVariable(name: "r", scope: !473, file: !3, line: 88, type: !18)
!476 = !DILocation(line: 86, column: 32, scope: !473, inlinedAt: !477)
!477 = distinct !DILocation(line: 126, column: 2, scope: !462)
!478 = !DILocation(line: 88, column: 18, scope: !473, inlinedAt: !477)
!479 = !DILocation(line: 88, column: 15, scope: !473, inlinedAt: !477)
!480 = !DILocation(line: 88, column: 11, scope: !473, inlinedAt: !477)
!481 = !DILocation(line: 90, column: 10, scope: !473, inlinedAt: !477)
!482 = !DILocation(line: 90, column: 2, scope: !473, inlinedAt: !477)
!483 = !DILocation(line: 90, column: 14, scope: !473, inlinedAt: !477)
!484 = !DILocation(line: 91, column: 8, scope: !485, inlinedAt: !477)
!485 = distinct !DILexicalBlock(scope: !473, file: !3, line: 91, column: 6)
!486 = !DILocation(line: 0, scope: !473, inlinedAt: !477)
!487 = !DILocation(line: 91, column: 6, scope: !473, inlinedAt: !477)
!488 = !DILocation(line: 92, column: 17, scope: !489, inlinedAt: !477)
!489 = distinct !DILexicalBlock(scope: !485, file: !3, line: 91, column: 14)
!490 = !DILocation(line: 92, column: 28, scope: !489, inlinedAt: !477)
!491 = !DILocation(line: 92, column: 25, scope: !489, inlinedAt: !477)
!492 = !DILocation(line: 92, column: 3, scope: !489, inlinedAt: !477)
!493 = !DILocation(line: 94, column: 3, scope: !489, inlinedAt: !477)
!494 = !DILocation(line: 95, column: 2, scope: !489, inlinedAt: !477)
!495 = !DILocation(line: 96, column: 16, scope: !473, inlinedAt: !477)
!496 = !DILocation(line: 96, column: 27, scope: !473, inlinedAt: !477)
!497 = !DILocation(line: 96, column: 24, scope: !473, inlinedAt: !477)
!498 = !DILocation(line: 96, column: 2, scope: !473, inlinedAt: !477)
!499 = !DILocation(line: 97, column: 9, scope: !473, inlinedAt: !477)
!500 = !DILocation(line: 98, column: 22, scope: !473, inlinedAt: !477)
!501 = !DILocation(line: 98, column: 15, scope: !473, inlinedAt: !477)
!502 = !DILocation(line: 98, column: 2, scope: !473, inlinedAt: !477)
!503 = !DILocation(line: 98, column: 13, scope: !473, inlinedAt: !477)
!504 = !DILocation(line: 99, column: 22, scope: !473, inlinedAt: !477)
!505 = !DILocation(line: 99, column: 15, scope: !473, inlinedAt: !477)
!506 = !DILocation(line: 99, column: 2, scope: !473, inlinedAt: !477)
!507 = !DILocation(line: 99, column: 13, scope: !473, inlinedAt: !477)
!508 = !DILocation(line: 100, column: 22, scope: !473, inlinedAt: !477)
!509 = !DILocation(line: 100, column: 15, scope: !473, inlinedAt: !477)
!510 = !DILocation(line: 100, column: 2, scope: !473, inlinedAt: !477)
!511 = !DILocation(line: 100, column: 13, scope: !473, inlinedAt: !477)
!512 = !DILocation(line: 101, column: 22, scope: !473, inlinedAt: !477)
!513 = !DILocation(line: 101, column: 15, scope: !473, inlinedAt: !477)
!514 = !DILocation(line: 101, column: 2, scope: !473, inlinedAt: !477)
!515 = !DILocation(line: 101, column: 13, scope: !473, inlinedAt: !477)
!516 = !DILocation(line: 102, column: 22, scope: !473, inlinedAt: !477)
!517 = !DILocation(line: 102, column: 15, scope: !473, inlinedAt: !477)
!518 = !DILocation(line: 102, column: 2, scope: !473, inlinedAt: !477)
!519 = !DILocation(line: 102, column: 13, scope: !473, inlinedAt: !477)
!520 = !DILocation(line: 103, column: 22, scope: !473, inlinedAt: !477)
!521 = !DILocation(line: 103, column: 15, scope: !473, inlinedAt: !477)
!522 = !DILocation(line: 103, column: 2, scope: !473, inlinedAt: !477)
!523 = !DILocation(line: 103, column: 13, scope: !473, inlinedAt: !477)
!524 = !DILocation(line: 104, column: 22, scope: !473, inlinedAt: !477)
!525 = !DILocation(line: 104, column: 15, scope: !473, inlinedAt: !477)
!526 = !DILocation(line: 104, column: 2, scope: !473, inlinedAt: !477)
!527 = !DILocation(line: 104, column: 13, scope: !473, inlinedAt: !477)
!528 = !DILocation(line: 105, column: 15, scope: !473, inlinedAt: !477)
!529 = !DILocation(line: 105, column: 2, scope: !473, inlinedAt: !477)
!530 = !DILocation(line: 105, column: 13, scope: !473, inlinedAt: !477)
!531 = !DILocation(line: 106, column: 2, scope: !473, inlinedAt: !477)
!532 = !DILocation(line: 124, column: 6, scope: !462)
!533 = !DILocation(line: 128, column: 13, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 127, column: 26)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 127, column: 2)
!536 = distinct !DILexicalBlock(scope: !462, file: !3, line: 127, column: 2)
!537 = !DILocation(line: 128, column: 21, scope: !534)
!538 = !DILocation(line: 128, column: 11, scope: !534)
!539 = !DILocation(line: 129, column: 15, scope: !534)
!540 = !DILocation(line: 129, column: 23, scope: !534)
!541 = !DILocation(line: 129, column: 3, scope: !534)
!542 = !DILocation(line: 129, column: 13, scope: !534)
!543 = !DILocation(line: 130, column: 15, scope: !534)
!544 = !DILocation(line: 130, column: 23, scope: !534)
!545 = !DILocation(line: 130, column: 3, scope: !534)
!546 = !DILocation(line: 130, column: 13, scope: !534)
!547 = !DILocation(line: 131, column: 15, scope: !534)
!548 = !DILocation(line: 131, column: 3, scope: !534)
!549 = !DILocation(line: 131, column: 13, scope: !534)
!550 = !DILocation(line: 128, column: 3, scope: !534)
!551 = !DILocation(line: 133, column: 1, scope: !462)
!552 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 43, type: !553, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !191, !419}
!555 = !{!556, !557, !558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!556 = !DILocalVariable(name: "s", arg: 1, scope: !552, file: !3, line: 43, type: !191)
!557 = !DILocalVariable(name: "buf", arg: 2, scope: !552, file: !3, line: 43, type: !419)
!558 = !DILocalVariable(name: "W", scope: !552, file: !3, line: 45, type: !559)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !53)
!560 = !DILocalVariable(name: "t1", scope: !552, file: !3, line: 45, type: !14)
!561 = !DILocalVariable(name: "t2", scope: !552, file: !3, line: 45, type: !14)
!562 = !DILocalVariable(name: "a", scope: !552, file: !3, line: 45, type: !14)
!563 = !DILocalVariable(name: "b", scope: !552, file: !3, line: 45, type: !14)
!564 = !DILocalVariable(name: "c", scope: !552, file: !3, line: 45, type: !14)
!565 = !DILocalVariable(name: "d", scope: !552, file: !3, line: 45, type: !14)
!566 = !DILocalVariable(name: "e", scope: !552, file: !3, line: 45, type: !14)
!567 = !DILocalVariable(name: "f", scope: !552, file: !3, line: 45, type: !14)
!568 = !DILocalVariable(name: "g", scope: !552, file: !3, line: 45, type: !14)
!569 = !DILocalVariable(name: "h", scope: !552, file: !3, line: 45, type: !14)
!570 = !DILocalVariable(name: "i", scope: !552, file: !3, line: 46, type: !13)
!571 = !DILocation(line: 43, column: 41, scope: !552)
!572 = !DILocation(line: 43, column: 59, scope: !552)
!573 = !DILocation(line: 45, column: 2, scope: !552)
!574 = !DILocation(line: 45, column: 11, scope: !552)
!575 = !DILocation(line: 46, column: 6, scope: !552)
!576 = !DILocation(line: 49, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 48, column: 27)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 48, column: 2)
!579 = distinct !DILexicalBlock(scope: !552, file: !3, line: 48, column: 2)
!580 = !DILocation(line: 49, column: 10, scope: !577)
!581 = !DILocation(line: 49, column: 28, scope: !577)
!582 = !DILocation(line: 50, column: 11, scope: !577)
!583 = !DILocation(line: 50, column: 31, scope: !577)
!584 = !DILocation(line: 50, column: 8, scope: !577)
!585 = !DILocation(line: 51, column: 11, scope: !577)
!586 = !DILocation(line: 51, column: 31, scope: !577)
!587 = !DILocation(line: 51, column: 8, scope: !577)
!588 = !DILocation(line: 52, column: 11, scope: !577)
!589 = !DILocation(line: 52, column: 8, scope: !577)
!590 = !DILocation(line: 49, column: 3, scope: !577)
!591 = !DILocation(line: 55, column: 46, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 54, column: 2)
!593 = distinct !DILexicalBlock(scope: !552, file: !3, line: 54, column: 2)
!594 = !DILocation(line: 55, column: 10, scope: !592)
!595 = !DILocalVariable(name: "n", arg: 1, scope: !596, file: !3, line: 24, type: !14)
!596 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 24, type: !597, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!14, !14, !13}
!599 = !{!595, !600}
!600 = !DILocalVariable(name: "k", arg: 2, scope: !596, file: !3, line: 24, type: !13)
!601 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !602)
!602 = distinct !DILocation(line: 55, column: 10, scope: !592)
!603 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !602)
!604 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !602)
!605 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !602)
!606 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !602)
!607 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !608)
!608 = distinct !DILocation(line: 55, column: 10, scope: !592)
!609 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !608)
!610 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !608)
!611 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !608)
!612 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !608)
!613 = !DILocation(line: 55, column: 26, scope: !592)
!614 = !DILocation(line: 55, column: 23, scope: !592)
!615 = !DILocation(line: 55, column: 32, scope: !592)
!616 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !617)
!617 = distinct !DILocation(line: 55, column: 32, scope: !592)
!618 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !617)
!619 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !617)
!620 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !617)
!621 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !617)
!622 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !623)
!623 = distinct !DILocation(line: 55, column: 32, scope: !592)
!624 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !623)
!625 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !623)
!626 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !623)
!627 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !623)
!628 = !DILocation(line: 55, column: 21, scope: !592)
!629 = !DILocation(line: 55, column: 30, scope: !592)
!630 = !DILocation(line: 55, column: 44, scope: !592)
!631 = !DILocation(line: 55, column: 3, scope: !592)
!632 = !DILocation(line: 55, column: 8, scope: !592)
!633 = !DILocation(line: 54, column: 18, scope: !592)
!634 = !DILocation(line: 54, column: 11, scope: !592)
!635 = !DILocation(line: 54, column: 2, scope: !593)
!636 = distinct !{!636, !635, !637}
!637 = !DILocation(line: 55, column: 52, scope: !593)
!638 = !DILocation(line: 56, column: 6, scope: !552)
!639 = !DILocation(line: 45, column: 26, scope: !552)
!640 = !DILocation(line: 45, column: 29, scope: !552)
!641 = !DILocation(line: 45, column: 32, scope: !552)
!642 = !DILocation(line: 45, column: 35, scope: !552)
!643 = !DILocation(line: 60, column: 6, scope: !552)
!644 = !DILocation(line: 45, column: 38, scope: !552)
!645 = !DILocation(line: 45, column: 41, scope: !552)
!646 = !DILocation(line: 45, column: 44, scope: !552)
!647 = !DILocation(line: 45, column: 47, scope: !552)
!648 = !DILocation(line: 64, column: 2, scope: !649)
!649 = distinct !DILexicalBlock(scope: !552, file: !3, line: 64, column: 2)
!650 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !651)
!651 = distinct !DILocation(line: 65, column: 12, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 64, column: 27)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 64, column: 2)
!654 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !651)
!655 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !651)
!656 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !651)
!657 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !658)
!658 = distinct !DILocation(line: 65, column: 12, scope: !652)
!659 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !658)
!660 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !658)
!661 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !658)
!662 = !DILocation(line: 65, column: 12, scope: !652)
!663 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !664)
!664 = distinct !DILocation(line: 65, column: 12, scope: !652)
!665 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !664)
!666 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !664)
!667 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !664)
!668 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !664)
!669 = !DILocation(line: 65, column: 10, scope: !652)
!670 = !DILocation(line: 65, column: 20, scope: !652)
!671 = !DILocation(line: 65, column: 18, scope: !652)
!672 = !DILocation(line: 65, column: 32, scope: !652)
!673 = !DILocation(line: 65, column: 30, scope: !652)
!674 = !DILocation(line: 65, column: 39, scope: !652)
!675 = !DILocation(line: 65, column: 37, scope: !652)
!676 = !DILocation(line: 45, column: 18, scope: !552)
!677 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !678)
!678 = distinct !DILocation(line: 66, column: 8, scope: !652)
!679 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !678)
!680 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !678)
!681 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !678)
!682 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !683)
!683 = distinct !DILocation(line: 66, column: 8, scope: !652)
!684 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !683)
!685 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !683)
!686 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !683)
!687 = !DILocation(line: 66, column: 8, scope: !652)
!688 = !DILocation(line: 24, column: 30, scope: !596, inlinedAt: !689)
!689 = distinct !DILocation(line: 66, column: 8, scope: !652)
!690 = !DILocation(line: 24, column: 37, scope: !596, inlinedAt: !689)
!691 = !DILocation(line: 24, column: 52, scope: !596, inlinedAt: !689)
!692 = !DILocation(line: 24, column: 63, scope: !596, inlinedAt: !689)
!693 = !DILocation(line: 24, column: 58, scope: !596, inlinedAt: !689)
!694 = !DILocation(line: 66, column: 16, scope: !652)
!695 = !DILocation(line: 66, column: 14, scope: !652)
!696 = !DILocation(line: 45, column: 22, scope: !552)
!697 = !DILocation(line: 70, column: 9, scope: !652)
!698 = !DILocation(line: 74, column: 10, scope: !652)
!699 = !DILocation(line: 64, column: 23, scope: !653)
!700 = !DILocation(line: 64, column: 16, scope: !653)
!701 = distinct !{!701, !648, !702}
!702 = !DILocation(line: 75, column: 2, scope: !649)
!703 = !DILocation(line: 76, column: 10, scope: !552)
!704 = !DILocation(line: 80, column: 10, scope: !552)
!705 = !DILocation(line: 84, column: 1, scope: !552)
