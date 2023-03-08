; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha512.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha512.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha512 = type { i64, [8 x i64], [128 x i8] }

@__crypt_sha512.testkey = internal constant [18 x i8] c"Xy01@#\01\02\80\7F\FF\0D\0A\81\09 !\00", align 16, !dbg !0
@__crypt_sha512.testsetting = internal constant [30 x i8] c"$6$rounds=1234$abc0123456789$\00", align 16, !dbg !20
@__crypt_sha512.testhash = internal constant [116 x i8] c"$6$rounds=1234$abc0123456789$BCpt8zLrc/RcyuXmCDOE1ALqMXB2MH6n1g891HhFj8.w7LxGv.FTkqq6Vxc/km3Y0jE0j24jY5PIv/oOu6reg1\00", align 16, !dbg !25
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"$6$\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rounds=\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rounds=%u$\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"$6$%s%.*s$\00", align 1
@sha512crypt.perm = internal unnamed_addr constant [21 x [3 x i8]] [[3 x i8] c"\00\15*", [3 x i8] c"\16+\01", [3 x i8] c",\02\17", [3 x i8] c"\03\18-", [3 x i8] c"\19.\04", [3 x i8] c"/\05\1A", [3 x i8] c"\06\1B0", [3 x i8] c"\1C1\07", [3 x i8] c"2\08\1D", [3 x i8] c"\09\1E3", [3 x i8] c"\1F4\0A", [3 x i8] c"5\0B ", [3 x i8] c"\0C!6", [3 x i8] c"\227\0D", [3 x i8] c"8\0E#", [3 x i8] c"\0F$9", [3 x i8] c"%:\10", [3 x i8] c";\11&", [3 x i8] c"\12'<", [3 x i8] c"(=\13", [3 x i8] c">\14)"], align 16, !dbg !30
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16, !dbg !78
@b64 = internal unnamed_addr constant [65 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 16, !dbg !84
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__crypt_sha512(i8*, i8*, i8*) local_unnamed_addr #0 !dbg !2 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #4, !dbg !107
  %6 = tail call fastcc i8* @sha512crypt(i8* %0, i8* %1, i8* %2) #5, !dbg !109
  %7 = call fastcc i8* @sha512crypt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__crypt_sha512.testkey, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__crypt_sha512.testsetting, i64 0, i64 0), i8* nonnull %5) #5, !dbg !111
  %8 = icmp ne i8* %6, null, !dbg !113
  %9 = icmp eq i8* %7, %5, !dbg !115
  %10 = and i1 %8, %9, !dbg !116
  br i1 %10, label %11, label %15, !dbg !116

; <label>:11:                                     ; preds = %3
  %12 = call i32 @memcmp(i8* nonnull %5, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @__crypt_sha512.testhash, i64 0, i64 0), i64 116) #6, !dbg !117
  %13 = icmp eq i32 %12, 0, !dbg !117
  %14 = select i1 %13, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), !dbg !118
  br label %15, !dbg !118

; <label>:15:                                     ; preds = %11, %3
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %3 ], [ %14, %11 ], !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret i8* %16, !dbg !120
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @sha512crypt(i8*, i8*, i8*) unnamed_addr #0 !dbg !32 {
  %4 = alloca %struct.sha512, align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = bitcast %struct.sha512* %4 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %10) #4, !dbg !124
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #4, !dbg !125
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #4, !dbg !125
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %13) #4, !dbg !125
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %14) #4, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 20, i1 false), !dbg !130
  br label %15, !dbg !132

; <label>:15:                                     ; preds = %311, %3
  %16 = phi i32 [ 0, %3 ], [ %312, %311 ]
  %17 = zext i32 %16 to i64, !dbg !135
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !135
  %19 = load i8, i8* %18, align 1, !dbg !135, !tbaa !136
  %20 = icmp eq i8 %19, 0, !dbg !132
  br i1 %20, label %24, label %21, !dbg !139

; <label>:21:                                     ; preds = %15
  %22 = or i32 %16, 1, !dbg !140
  %23 = icmp ult i32 %22, 257, !dbg !141
  br i1 %23, label %294, label %249, !dbg !132, !llvm.loop !142

; <label>:24:                                     ; preds = %305, %299, %294, %15
  %25 = phi i32 [ %16, %15 ], [ %22, %294 ], [ %300, %299 ], [ %306, %305 ]
  %26 = zext i32 %25 to i64, !dbg !135
  %27 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #6, !dbg !145
  %28 = icmp eq i32 %27, 0, !dbg !147
  br i1 %28, label %29, label %249, !dbg !148

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !149
  %31 = tail call i32 @strncmp(i8* nonnull %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7) #6, !dbg !152
  %32 = icmp eq i32 %31, 0, !dbg !153
  br i1 %32, label %33, label %60, !dbg !154

; <label>:33:                                     ; preds = %29
  %34 = bitcast i8** %9 to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #4, !dbg !155
  %35 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !156
  %36 = tail call i8* @__locale_ctype_ptr() #6, !dbg !157
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !157
  %38 = load i8, i8* %35, align 1, !dbg !157, !tbaa !136
  %39 = sext i8 %38 to i64, !dbg !157
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !157
  %41 = load i8, i8* %40, align 1, !dbg !157, !tbaa !136
  %42 = and i8 %41, 4, !dbg !157
  %43 = icmp eq i8 %42, 0, !dbg !157
  br i1 %43, label %56, label %44, !dbg !159

; <label>:44:                                     ; preds = %33
  %45 = call i64 @strtoul(i8* nonnull %35, i8** nonnull %9, i32 10) #6, !dbg !161
  %46 = load i8*, i8** %9, align 8, !dbg !163, !tbaa !165
  %47 = load i8, i8* %46, align 1, !dbg !167, !tbaa !136
  %48 = icmp eq i8 %47, 36, !dbg !168
  br i1 %48, label %49, label %56, !dbg !169

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !170
  %51 = icmp ult i64 %45, 1000, !dbg !171
  br i1 %51, label %57, label %52, !dbg !173

; <label>:52:                                     ; preds = %49
  %53 = icmp ugt i64 %45, 9999999, !dbg !174
  br i1 %53, label %56, label %54, !dbg !176

; <label>:54:                                     ; preds = %52
  %55 = trunc i64 %45 to i32, !dbg !177
  br label %57

; <label>:56:                                     ; preds = %33, %44, %52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #4, !dbg !178
  br label %249

; <label>:57:                                     ; preds = %54, %49
  %58 = phi i32 [ %55, %54 ], [ 1000, %49 ], !dbg !179
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %58) #6, !dbg !180
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #4, !dbg !178
  br label %60

; <label>:60:                                     ; preds = %57, %29
  %61 = phi i32 [ %58, %57 ], [ 5000, %29 ], !dbg !181
  %62 = phi i8* [ %50, %57 ], [ %30, %29 ], !dbg !182
  %63 = load i8, i8* %62, align 1, !dbg !183, !tbaa !136
  switch i8 %63, label %64 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !183
  %66 = load i8, i8* %65, align 1, !dbg !183, !tbaa !136
  switch i8 %66, label %251 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:67:                                     ; preds = %293, %290, %290, %287, %287, %284, %284, %281, %281, %278, %278, %275, %275, %272, %272, %269, %269, %266, %266, %263, %263, %260, %260, %257, %257, %254, %254, %251, %251, %64, %64, %60, %60
  %68 = phi i32 [ 0, %60 ], [ 0, %60 ], [ 1, %64 ], [ 1, %64 ], [ 2, %251 ], [ 2, %251 ], [ 3, %254 ], [ 3, %254 ], [ 4, %257 ], [ 4, %257 ], [ 5, %260 ], [ 5, %260 ], [ 6, %263 ], [ 6, %263 ], [ 7, %266 ], [ 7, %266 ], [ 8, %269 ], [ 8, %269 ], [ 9, %272 ], [ 9, %272 ], [ 10, %275 ], [ 10, %275 ], [ 11, %278 ], [ 11, %278 ], [ 12, %281 ], [ 12, %281 ], [ 13, %284 ], [ 13, %284 ], [ 14, %287 ], [ 14, %287 ], [ 15, %290 ], [ 15, %290 ], [ 16, %293 ], !dbg !187
  %69 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !198
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %69, align 16, !dbg !198, !tbaa !199
  %70 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 1, !dbg !201
  %71 = bitcast i64* %70 to <2 x i64>*, !dbg !202
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %71, align 8, !dbg !202, !tbaa !199
  %72 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 3, !dbg !203
  %73 = bitcast i64* %72 to <2 x i64>*, !dbg !204
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %73, align 8, !dbg !204, !tbaa !199
  %74 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 5, !dbg !205
  %75 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 6, !dbg !206
  %76 = bitcast i64* %74 to <2 x i64>*, !dbg !207
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %76, align 8, !dbg !207, !tbaa !199
  %77 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 7, !dbg !208
  store i64 6620516959819538809, i64* %77, align 8, !dbg !209, !tbaa !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !211
  %78 = zext i32 %68 to i64, !dbg !212
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %62, i64 %78) #5, !dbg !213
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !214
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !215
  %79 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !218
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %79, align 16, !dbg !218, !tbaa !199
  %80 = bitcast i64* %70 to <2 x i64>*, !dbg !219
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %80, align 8, !dbg !219, !tbaa !199
  %81 = bitcast i64* %72 to <2 x i64>*, !dbg !220
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %81, align 8, !dbg !220, !tbaa !199
  store i64 -7276294671716946913, i64* %74, align 8, !dbg !221, !tbaa !199
  %82 = bitcast i64* %75 to <2 x i64>*, !dbg !222
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %82, align 8, !dbg !222, !tbaa !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !224
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %62, i64 %78) #5, !dbg !225
  %83 = icmp ugt i32 %25, 64, !dbg !241
  br i1 %83, label %84, label %95, !dbg !244

; <label>:84:                                     ; preds = %67
  %85 = add nsw i32 %25, -65, !dbg !245
  br label %86, !dbg !245

; <label>:86:                                     ; preds = %86, %84
  %87 = phi i32 [ %88, %86 ], [ %25, %84 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #6, !dbg !245
  %88 = add i32 %87, -64, !dbg !246
  %89 = icmp ugt i32 %88, 64, !dbg !241
  br i1 %89, label %86, label %90, !dbg !244, !llvm.loop !247

; <label>:90:                                     ; preds = %86
  %91 = and i32 %85, -64, !dbg !245
  %92 = add nsw i32 %25, -64, !dbg !245
  %93 = sub i32 %92, %91, !dbg !245
  %94 = zext i32 %93 to i64, !dbg !250
  br label %95, !dbg !250

; <label>:95:                                     ; preds = %67, %90
  %96 = phi i64 [ %26, %67 ], [ %94, %90 ], !dbg !250
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 %96) #6, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  %97 = icmp eq i32 %25, 0, !dbg !253
  br i1 %97, label %107, label %98, !dbg !256

; <label>:98:                                     ; preds = %95, %104
  %99 = phi i32 [ %105, %104 ], [ %25, %95 ]
  %100 = and i32 %99, 1, !dbg !257
  %101 = icmp eq i32 %100, 0, !dbg !257
  br i1 %101, label %103, label %102, !dbg !259

; <label>:102:                                    ; preds = %98
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !260
  br label %104, !dbg !260

; <label>:103:                                    ; preds = %98
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %26) #5, !dbg !261
  br label %104

; <label>:104:                                    ; preds = %102, %103
  %105 = lshr i32 %99, 1, !dbg !262
  %106 = icmp eq i32 %105, 0, !dbg !253
  br i1 %106, label %107, label %98, !dbg !256, !llvm.loop !263

; <label>:107:                                    ; preds = %104, %95
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !265
  %108 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !268
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %108, align 16, !dbg !268, !tbaa !199
  %109 = bitcast i64* %70 to <2 x i64>*, !dbg !269
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %109, align 8, !dbg !269, !tbaa !199
  %110 = bitcast i64* %72 to <2 x i64>*, !dbg !270
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %110, align 8, !dbg !270, !tbaa !199
  %111 = bitcast i64* %74 to <2 x i64>*, !dbg !271
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %111, align 8, !dbg !271, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !272, !tbaa !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %97, label %116, label %112, !dbg !274

; <label>:112:                                    ; preds = %107, %112
  %113 = phi i32 [ %114, %112 ], [ 0, %107 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %26) #5, !dbg !276
  %114 = add nuw nsw i32 %113, 1, !dbg !278
  %115 = icmp ult i32 %114, %25, !dbg !279
  br i1 %115, label %112, label %116, !dbg !274, !llvm.loop !280

; <label>:116:                                    ; preds = %112, %107
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %12) #5, !dbg !282
  %117 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !285
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %117, align 16, !dbg !285, !tbaa !199
  %118 = bitcast i64* %70 to <2 x i64>*, !dbg !286
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %118, align 8, !dbg !286, !tbaa !199
  %119 = bitcast i64* %72 to <2 x i64>*, !dbg !287
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %119, align 8, !dbg !287, !tbaa !199
  %120 = bitcast i64* %74 to <2 x i64>*, !dbg !288
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %120, align 8, !dbg !288, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !289, !tbaa !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br label %121, !dbg !291

; <label>:121:                                    ; preds = %116, %121
  %122 = phi i32 [ 0, %116 ], [ %123, %121 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %62, i64 %78) #5, !dbg !293
  %123 = add nuw nsw i32 %122, 1, !dbg !295
  %124 = load i8, i8* %11, align 16, !dbg !296, !tbaa !136
  %125 = zext i8 %124 to i32, !dbg !296
  %126 = add nuw nsw i32 %125, 16, !dbg !297
  %127 = icmp ult i32 %123, %126, !dbg !298
  br i1 %127, label %121, label %128, !dbg !291, !llvm.loop !299

; <label>:128:                                    ; preds = %121
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %13) #5, !dbg !301
  %129 = icmp eq i32 %61, 0, !dbg !302
  br i1 %129, label %180, label %130, !dbg !305

; <label>:130:                                    ; preds = %128
  %131 = add nsw i32 %25, -65
  %132 = and i32 %131, -64
  %133 = add nsw i32 %25, -64
  %134 = sub i32 %133, %132
  %135 = bitcast %struct.sha512* %4 to <2 x i64>*
  %136 = bitcast i64* %70 to <2 x i64>*
  %137 = bitcast i64* %72 to <2 x i64>*
  %138 = bitcast i64* %74 to <2 x i64>*
  br label %139, !dbg !305

; <label>:139:                                    ; preds = %177, %130
  %140 = phi i32 [ 0, %130 ], [ %178, %177 ]
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %135, align 16, !dbg !309, !tbaa !199
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %136, align 8, !dbg !310, !tbaa !199
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %137, align 8, !dbg !311, !tbaa !199
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %138, align 8, !dbg !312, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !313, !tbaa !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  %141 = and i32 %140, 1, !dbg !315
  %142 = icmp ne i32 %141, 0, !dbg !315
  br i1 %142, label %143, label %151, !dbg !317

; <label>:143:                                    ; preds = %139
  br i1 %83, label %144, label %148, !dbg !323

; <label>:144:                                    ; preds = %143, %144
  %145 = phi i32 [ %146, %144 ], [ %25, %143 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !324
  %146 = add i32 %145, -64, !dbg !325
  %147 = icmp ugt i32 %146, 64, !dbg !326
  br i1 %147, label %144, label %148, !dbg !323, !llvm.loop !247

; <label>:148:                                    ; preds = %144, %143
  %149 = phi i32 [ %25, %143 ], [ %134, %144 ], !dbg !327
  %150 = zext i32 %149 to i64, !dbg !328
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %150) #6, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %152, !dbg !331

; <label>:151:                                    ; preds = %139
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !332
  br label %152

; <label>:152:                                    ; preds = %151, %148
  %153 = urem i32 %140, 3, !dbg !333
  %154 = icmp eq i32 %153, 0, !dbg !333
  br i1 %154, label %156, label %155, !dbg !335

; <label>:155:                                    ; preds = %152
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %13, i64 %78) #5, !dbg !336
  br label %156, !dbg !336

; <label>:156:                                    ; preds = %152, %155
  %157 = urem i32 %140, 7, !dbg !337
  %158 = icmp eq i32 %157, 0, !dbg !337
  br i1 %158, label %167, label %159, !dbg !339

; <label>:159:                                    ; preds = %156
  br i1 %83, label %160, label %164, !dbg !345

; <label>:160:                                    ; preds = %159, %160
  %161 = phi i32 [ %162, %160 ], [ %25, %159 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !346
  %162 = add i32 %161, -64, !dbg !347
  %163 = icmp ugt i32 %162, 64, !dbg !348
  br i1 %163, label %160, label %164, !dbg !345, !llvm.loop !247

; <label>:164:                                    ; preds = %160, %159
  %165 = phi i32 [ %25, %159 ], [ %134, %160 ], !dbg !349
  %166 = zext i32 %165 to i64, !dbg !350
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %166) #6, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br label %167, !dbg !353

; <label>:167:                                    ; preds = %156, %164
  br i1 %142, label %168, label %169, !dbg !354

; <label>:168:                                    ; preds = %167
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !355
  br label %177, !dbg !355

; <label>:169:                                    ; preds = %167
  br i1 %83, label %170, label %174, !dbg !362

; <label>:170:                                    ; preds = %169, %170
  %171 = phi i32 [ %172, %170 ], [ %25, %169 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !363
  %172 = add i32 %171, -64, !dbg !364
  %173 = icmp ugt i32 %172, 64, !dbg !365
  br i1 %173, label %170, label %174, !dbg !362, !llvm.loop !247

; <label>:174:                                    ; preds = %170, %169
  %175 = phi i32 [ %25, %169 ], [ %134, %170 ], !dbg !366
  %176 = zext i32 %175 to i64, !dbg !367
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %176) #6, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br label %177

; <label>:177:                                    ; preds = %174, %168
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !370
  %178 = add nuw i32 %140, 1, !dbg !371
  %179 = icmp eq i32 %178, %61, !dbg !302
  br i1 %179, label %180, label %139, !dbg !305, !llvm.loop !372

; <label>:180:                                    ; preds = %177, %128
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %68, i8* %62) #6, !dbg !375
  %182 = sext i32 %181 to i64, !dbg !376
  %183 = getelementptr inbounds i8, i8* %2, i64 %182, !dbg !376
  %184 = add nsw i64 %182, 84, !dbg !377
  br label %185, !dbg !377

; <label>:185:                                    ; preds = %185, %180
  %186 = phi i64 [ 0, %180 ], [ %232, %185 ]
  %187 = phi i8* [ %183, %180 ], [ %231, %185 ]
  %188 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %186, i64 0, !dbg !379
  %189 = load i8, i8* %188, align 1, !dbg !379, !tbaa !136
  %190 = zext i8 %189 to i64, !dbg !381
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %190, !dbg !381
  %192 = load i8, i8* %191, align 1, !dbg !381, !tbaa !136
  %193 = zext i8 %192 to i32, !dbg !381
  %194 = shl nuw nsw i32 %193, 16, !dbg !382
  %195 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %186, i64 1, !dbg !383
  %196 = load i8, i8* %195, align 1, !dbg !383, !tbaa !136
  %197 = zext i8 %196 to i64, !dbg !384
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %197, !dbg !384
  %199 = load i8, i8* %198, align 1, !dbg !384, !tbaa !136
  %200 = zext i8 %199 to i32, !dbg !384
  %201 = shl nuw nsw i32 %200, 8, !dbg !385
  %202 = or i32 %201, %194, !dbg !386
  %203 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %186, i64 2, !dbg !387
  %204 = load i8, i8* %203, align 1, !dbg !387, !tbaa !136
  %205 = zext i8 %204 to i64, !dbg !388
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %205, !dbg !388
  %207 = load i8, i8* %206, align 1, !dbg !388, !tbaa !136
  %208 = zext i8 %207 to i32, !dbg !388
  %209 = or i32 %201, %208, !dbg !389
  %210 = and i32 %208, 63, !dbg !401
  %211 = zext i32 %210 to i64, !dbg !403
  %212 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %211, !dbg !403
  %213 = load i8, i8* %212, align 1, !dbg !403, !tbaa !136
  %214 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !404
  store i8 %213, i8* %187, align 1, !dbg !405, !tbaa !136
  %215 = lshr i32 %209, 6, !dbg !406
  %216 = and i32 %215, 63, !dbg !401
  %217 = zext i32 %216 to i64, !dbg !403
  %218 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %217, !dbg !403
  %219 = load i8, i8* %218, align 1, !dbg !403, !tbaa !136
  %220 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !404
  store i8 %219, i8* %214, align 1, !dbg !405, !tbaa !136
  %221 = lshr i32 %202, 12, !dbg !406
  %222 = and i32 %221, 63, !dbg !401
  %223 = zext i32 %222 to i64, !dbg !403
  %224 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %223, !dbg !403
  %225 = load i8, i8* %224, align 1, !dbg !403, !tbaa !136
  %226 = getelementptr inbounds i8, i8* %187, i64 3, !dbg !404
  store i8 %225, i8* %220, align 1, !dbg !405, !tbaa !136
  %227 = lshr i32 %193, 2, !dbg !406
  %228 = zext i32 %227 to i64, !dbg !403
  %229 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %228, !dbg !403
  %230 = load i8, i8* %229, align 1, !dbg !403, !tbaa !136
  store i8 %230, i8* %226, align 1, !dbg !405, !tbaa !136
  %231 = getelementptr i8, i8* %187, i64 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %232 = add nuw nsw i64 %186, 1, !dbg !408
  %233 = icmp eq i64 %232, 21, !dbg !409
  br i1 %233, label %234, label %185, !dbg !377, !llvm.loop !410

; <label>:234:                                    ; preds = %185
  %235 = getelementptr i8, i8* %2, i64 %184, !dbg !377
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 63, !dbg !412
  %237 = load i8, i8* %236, align 1, !dbg !412, !tbaa !136
  %238 = zext i8 %237 to i32, !dbg !412
  %239 = and i32 %238, 63, !dbg !417
  %240 = zext i32 %239 to i64, !dbg !418
  %241 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %240, !dbg !418
  %242 = load i8, i8* %241, align 1, !dbg !418, !tbaa !136
  %243 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !419
  store i8 %242, i8* %235, align 1, !dbg !420, !tbaa !136
  %244 = lshr i32 %238, 6, !dbg !421
  %245 = zext i32 %244 to i64, !dbg !418
  %246 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %245, !dbg !418
  %247 = load i8, i8* %246, align 1, !dbg !418, !tbaa !136
  store i8 %247, i8* %243, align 1, !dbg !420, !tbaa !136
  %248 = getelementptr i8, i8* %235, i64 2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  store i8 0, i8* %248, align 1, !dbg !423, !tbaa !136
  br label %249, !dbg !424

; <label>:249:                                    ; preds = %21, %60, %60, %64, %64, %251, %251, %254, %254, %257, %257, %260, %260, %263, %263, %266, %266, %269, %269, %272, %272, %275, %275, %278, %278, %281, %281, %284, %284, %287, %287, %290, %290, %56, %24, %234
  %250 = phi i8* [ %2, %234 ], [ null, %24 ], [ null, %56 ], [ null, %290 ], [ null, %290 ], [ null, %287 ], [ null, %287 ], [ null, %284 ], [ null, %284 ], [ null, %281 ], [ null, %281 ], [ null, %278 ], [ null, %278 ], [ null, %275 ], [ null, %275 ], [ null, %272 ], [ null, %272 ], [ null, %269 ], [ null, %269 ], [ null, %266 ], [ null, %266 ], [ null, %263 ], [ null, %263 ], [ null, %260 ], [ null, %260 ], [ null, %257 ], [ null, %257 ], [ null, %254 ], [ null, %254 ], [ null, %251 ], [ null, %251 ], [ null, %64 ], [ null, %64 ], [ null, %60 ], [ null, %60 ], [ null, %21 ], !dbg !425
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %13) #4, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #4, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #4, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %10) #4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  ret i8* %250, !dbg !426

; <label>:251:                                    ; preds = %64
  %252 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !183
  %253 = load i8, i8* %252, align 1, !dbg !183, !tbaa !136
  switch i8 %253, label %254 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:254:                                    ; preds = %251
  %255 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !183
  %256 = load i8, i8* %255, align 1, !dbg !183, !tbaa !136
  switch i8 %256, label %257 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:257:                                    ; preds = %254
  %258 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !183
  %259 = load i8, i8* %258, align 1, !dbg !183, !tbaa !136
  switch i8 %259, label %260 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:260:                                    ; preds = %257
  %261 = getelementptr inbounds i8, i8* %62, i64 5, !dbg !183
  %262 = load i8, i8* %261, align 1, !dbg !183, !tbaa !136
  switch i8 %262, label %263 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:263:                                    ; preds = %260
  %264 = getelementptr inbounds i8, i8* %62, i64 6, !dbg !183
  %265 = load i8, i8* %264, align 1, !dbg !183, !tbaa !136
  switch i8 %265, label %266 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:266:                                    ; preds = %263
  %267 = getelementptr inbounds i8, i8* %62, i64 7, !dbg !183
  %268 = load i8, i8* %267, align 1, !dbg !183, !tbaa !136
  switch i8 %268, label %269 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:269:                                    ; preds = %266
  %270 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !183
  %271 = load i8, i8* %270, align 1, !dbg !183, !tbaa !136
  switch i8 %271, label %272 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:272:                                    ; preds = %269
  %273 = getelementptr inbounds i8, i8* %62, i64 9, !dbg !183
  %274 = load i8, i8* %273, align 1, !dbg !183, !tbaa !136
  switch i8 %274, label %275 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:275:                                    ; preds = %272
  %276 = getelementptr inbounds i8, i8* %62, i64 10, !dbg !183
  %277 = load i8, i8* %276, align 1, !dbg !183, !tbaa !136
  switch i8 %277, label %278 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:278:                                    ; preds = %275
  %279 = getelementptr inbounds i8, i8* %62, i64 11, !dbg !183
  %280 = load i8, i8* %279, align 1, !dbg !183, !tbaa !136
  switch i8 %280, label %281 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:281:                                    ; preds = %278
  %282 = getelementptr inbounds i8, i8* %62, i64 12, !dbg !183
  %283 = load i8, i8* %282, align 1, !dbg !183, !tbaa !136
  switch i8 %283, label %284 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:284:                                    ; preds = %281
  %285 = getelementptr inbounds i8, i8* %62, i64 13, !dbg !183
  %286 = load i8, i8* %285, align 1, !dbg !183, !tbaa !136
  switch i8 %286, label %287 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %62, i64 14, !dbg !183
  %289 = load i8, i8* %288, align 1, !dbg !183, !tbaa !136
  switch i8 %289, label %290 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:290:                                    ; preds = %287
  %291 = getelementptr inbounds i8, i8* %62, i64 15, !dbg !183
  %292 = load i8, i8* %291, align 1, !dbg !183, !tbaa !136
  switch i8 %292, label %293 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %249
    i8 58, label %249
  ], !dbg !186

; <label>:293:                                    ; preds = %290
  br label %67

; <label>:294:                                    ; preds = %21
  %295 = zext i32 %22 to i64, !dbg !135
  %296 = getelementptr inbounds i8, i8* %0, i64 %295, !dbg !135
  %297 = load i8, i8* %296, align 1, !dbg !135, !tbaa !136
  %298 = icmp eq i8 %297, 0, !dbg !132
  br i1 %298, label %24, label %299, !dbg !139

; <label>:299:                                    ; preds = %294
  %300 = or i32 %16, 2, !dbg !140
  %301 = zext i32 %300 to i64, !dbg !135
  %302 = getelementptr inbounds i8, i8* %0, i64 %301, !dbg !135
  %303 = load i8, i8* %302, align 1, !dbg !135, !tbaa !136
  %304 = icmp eq i8 %303, 0, !dbg !132
  br i1 %304, label %24, label %305, !dbg !139

; <label>:305:                                    ; preds = %299
  %306 = or i32 %16, 3, !dbg !140
  %307 = zext i32 %306 to i64, !dbg !135
  %308 = getelementptr inbounds i8, i8* %0, i64 %307, !dbg !135
  %309 = load i8, i8* %308, align 1, !dbg !135, !tbaa !136
  %310 = icmp eq i8 %309, 0, !dbg !132
  br i1 %310, label %24, label %311, !dbg !139

; <label>:311:                                    ; preds = %305
  %312 = add nuw nsw i32 %16, 4, !dbg !140
  br label %15
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @sha512_update(%struct.sha512*, i8*, i64) unnamed_addr #0 !dbg !427 {
  %4 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !442
  %5 = load i64, i64* %4, align 8, !dbg !442, !tbaa !443
  %6 = trunc i64 %5 to i32, !dbg !445
  %7 = and i32 %6, 127, !dbg !445
  %8 = add i64 %5, %2, !dbg !447
  store i64 %8, i64* %4, align 8, !dbg !447, !tbaa !443
  %9 = icmp eq i32 %7, 0, !dbg !448
  br i1 %9, label %23, label %10, !dbg !450

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 128, %7, !dbg !451
  %12 = zext i32 %11 to i64, !dbg !454
  %13 = icmp ugt i64 %12, %2, !dbg !455
  %14 = zext i32 %7 to i64, !dbg !456
  %15 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %14, !dbg !456
  br i1 %13, label %16, label %18, !dbg !457

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !458
  br label %45, !dbg !460

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !456
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !461
  %21 = sub i64 %2, %12, !dbg !462
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !463
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %19) #5, !dbg !464
  br label %23, !dbg !465

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !466
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  %26 = icmp ugt i64 %25, 127, !dbg !467
  br i1 %26, label %27, label %40, !dbg !470

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -128, !dbg !471
  %29 = and i64 %28, -128, !dbg !471
  %30 = add i64 %29, 128, !dbg !471
  br label %31, !dbg !471

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha512* %0, i8* %33) #5, !dbg !471
  %34 = add i64 %32, -128, !dbg !472
  %35 = getelementptr inbounds i8, i8* %33, i64 128, !dbg !473
  %36 = icmp ugt i64 %34, 127, !dbg !467
  br i1 %36, label %31, label %37, !dbg !470, !llvm.loop !474

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !471
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !471
  br label %40, !dbg !476

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !477
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !477
  %43 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !476
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !478
  br label %45, !dbg !479

; <label>:45:                                     ; preds = %40, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  ret void, !dbg !479
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha512_sum(%struct.sha512*, i8* nocapture) unnamed_addr #0 !dbg !480 {
  %3 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !496
  %4 = load i64, i64* %3, align 8, !dbg !496, !tbaa !443
  %5 = trunc i64 %4 to i32, !dbg !497
  %6 = and i32 %5, 127, !dbg !497
  %7 = add nuw nsw i32 %6, 1, !dbg !499
  %8 = zext i32 %6 to i64, !dbg !500
  %9 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %8, !dbg !500
  store i8 -128, i8* %9, align 1, !dbg !501, !tbaa !136
  %10 = icmp ugt i32 %6, 111, !dbg !502
  %11 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !504
  br i1 %10, label %12, label %18, !dbg !505

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !506
  %14 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %13, !dbg !506
  %15 = xor i32 %6, 127, !dbg !508
  %16 = zext i32 %15 to i64, !dbg !509
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !510
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !511
  br label %18, !dbg !512

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !504
  %20 = zext i32 %19 to i64, !dbg !513
  %21 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %20, !dbg !513
  %22 = sub nsw i32 120, %19, !dbg !514
  %23 = zext i32 %22 to i64, !dbg !515
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !516
  %25 = load i64, i64* %3, align 8, !dbg !517, !tbaa !443
  %26 = shl i64 %25, 3, !dbg !517
  store i64 %26, i64* %3, align 8, !dbg !517, !tbaa !443
  %27 = lshr i64 %25, 53, !dbg !518
  %28 = trunc i64 %27 to i8, !dbg !519
  %29 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 120, !dbg !520
  store i8 %28, i8* %29, align 8, !dbg !521, !tbaa !136
  %30 = lshr i64 %25, 45, !dbg !522
  %31 = trunc i64 %30 to i8, !dbg !523
  %32 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 121, !dbg !524
  store i8 %31, i8* %32, align 1, !dbg !525, !tbaa !136
  %33 = lshr i64 %25, 37, !dbg !526
  %34 = trunc i64 %33 to i8, !dbg !527
  %35 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 122, !dbg !528
  store i8 %34, i8* %35, align 2, !dbg !529, !tbaa !136
  %36 = lshr i64 %25, 29, !dbg !530
  %37 = trunc i64 %36 to i8, !dbg !531
  %38 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 123, !dbg !532
  store i8 %37, i8* %38, align 1, !dbg !533, !tbaa !136
  %39 = lshr i64 %25, 21, !dbg !534
  %40 = trunc i64 %39 to i8, !dbg !535
  %41 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 124, !dbg !536
  store i8 %40, i8* %41, align 4, !dbg !537, !tbaa !136
  %42 = lshr i64 %25, 13, !dbg !538
  %43 = trunc i64 %42 to i8, !dbg !539
  %44 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 125, !dbg !540
  store i8 %43, i8* %44, align 1, !dbg !541, !tbaa !136
  %45 = lshr i64 %25, 5, !dbg !542
  %46 = trunc i64 %45 to i8, !dbg !543
  %47 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 126, !dbg !544
  store i8 %46, i8* %47, align 2, !dbg !545, !tbaa !136
  %48 = trunc i64 %26 to i8, !dbg !546
  %49 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 127, !dbg !547
  store i8 %48, i8* %49, align 1, !dbg !548, !tbaa !136
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %50, !dbg !552

; <label>:50:                                     ; preds = %50, %18
  %51 = phi i64 [ 0, %18 ], [ %92, %50 ]
  %52 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 %51, !dbg !554
  %53 = load i64, i64* %52, align 8, !dbg !554, !tbaa !199
  %54 = lshr i64 %53, 56, !dbg !557
  %55 = trunc i64 %54 to i8, !dbg !554
  %56 = shl nsw i64 %51, 3, !dbg !558
  %57 = getelementptr inbounds i8, i8* %1, i64 %56, !dbg !559
  store i8 %55, i8* %57, align 1, !dbg !560, !tbaa !136
  %58 = load i64, i64* %52, align 8, !dbg !561, !tbaa !199
  %59 = lshr i64 %58, 48, !dbg !562
  %60 = trunc i64 %59 to i8, !dbg !561
  %61 = or i64 %56, 1, !dbg !563
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !564
  store i8 %60, i8* %62, align 1, !dbg !565, !tbaa !136
  %63 = load i64, i64* %52, align 8, !dbg !566, !tbaa !199
  %64 = lshr i64 %63, 40, !dbg !567
  %65 = trunc i64 %64 to i8, !dbg !566
  %66 = or i64 %56, 2, !dbg !568
  %67 = getelementptr inbounds i8, i8* %1, i64 %66, !dbg !569
  store i8 %65, i8* %67, align 1, !dbg !570, !tbaa !136
  %68 = load i64, i64* %52, align 8, !dbg !571, !tbaa !199
  %69 = lshr i64 %68, 32, !dbg !572
  %70 = trunc i64 %69 to i8, !dbg !571
  %71 = or i64 %56, 3, !dbg !573
  %72 = getelementptr inbounds i8, i8* %1, i64 %71, !dbg !574
  store i8 %70, i8* %72, align 1, !dbg !575, !tbaa !136
  %73 = load i64, i64* %52, align 8, !dbg !576, !tbaa !199
  %74 = lshr i64 %73, 24, !dbg !577
  %75 = trunc i64 %74 to i8, !dbg !576
  %76 = or i64 %56, 4, !dbg !578
  %77 = getelementptr inbounds i8, i8* %1, i64 %76, !dbg !579
  store i8 %75, i8* %77, align 1, !dbg !580, !tbaa !136
  %78 = load i64, i64* %52, align 8, !dbg !581, !tbaa !199
  %79 = lshr i64 %78, 16, !dbg !582
  %80 = trunc i64 %79 to i8, !dbg !581
  %81 = or i64 %56, 5, !dbg !583
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !584
  store i8 %80, i8* %82, align 1, !dbg !585, !tbaa !136
  %83 = load i64, i64* %52, align 8, !dbg !586, !tbaa !199
  %84 = lshr i64 %83, 8, !dbg !587
  %85 = trunc i64 %84 to i8, !dbg !586
  %86 = or i64 %56, 6, !dbg !588
  %87 = getelementptr inbounds i8, i8* %1, i64 %86, !dbg !589
  store i8 %85, i8* %87, align 1, !dbg !590, !tbaa !136
  %88 = load i64, i64* %52, align 8, !dbg !591, !tbaa !199
  %89 = trunc i64 %88 to i8, !dbg !591
  %90 = or i64 %56, 7, !dbg !592
  %91 = getelementptr inbounds i8, i8* %1, i64 %90, !dbg !593
  store i8 %89, i8* %91, align 1, !dbg !594, !tbaa !136
  %92 = add nuw nsw i64 %51, 1, !dbg !595
  %93 = icmp eq i64 %92, 8, !dbg !596
  br i1 %93, label %94, label %50, !dbg !552, !llvm.loop !597

; <label>:94:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  ret void, !dbg !599
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha512* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !600 {
  %3 = alloca [80 x i64], align 16
  %4 = bitcast [80 x i64]* %3 to i8*, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %4) #4, !dbg !621
  br label %8, !dbg !624

; <label>:5:                                      ; preds = %8
  %6 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0
  %7 = load i64, i64* %6, align 16, !dbg !626, !tbaa !199
  br label %59, !dbg !629

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %57, %8 ]
  %10 = shl nsw i64 %9, 3, !dbg !630
  %11 = getelementptr inbounds i8, i8* %1, i64 %10, !dbg !633
  %12 = load i8, i8* %11, align 1, !dbg !633, !tbaa !136
  %13 = zext i8 %12 to i64, !dbg !634
  %14 = shl nuw i64 %13, 56, !dbg !635
  %15 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %9, !dbg !636
  %16 = or i64 %10, 1, !dbg !637
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !638
  %18 = load i8, i8* %17, align 1, !dbg !638, !tbaa !136
  %19 = zext i8 %18 to i64, !dbg !639
  %20 = shl nuw nsw i64 %19, 48, !dbg !640
  %21 = or i64 %20, %14, !dbg !641
  %22 = or i64 %10, 2, !dbg !642
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !643
  %24 = load i8, i8* %23, align 1, !dbg !643, !tbaa !136
  %25 = zext i8 %24 to i64, !dbg !644
  %26 = shl nuw nsw i64 %25, 40, !dbg !645
  %27 = or i64 %26, %21, !dbg !646
  %28 = or i64 %10, 3, !dbg !647
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !648
  %30 = load i8, i8* %29, align 1, !dbg !648, !tbaa !136
  %31 = zext i8 %30 to i64, !dbg !649
  %32 = shl nuw nsw i64 %31, 32, !dbg !650
  %33 = or i64 %32, %27, !dbg !651
  %34 = or i64 %10, 4, !dbg !652
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !653
  %36 = load i8, i8* %35, align 1, !dbg !653, !tbaa !136
  %37 = zext i8 %36 to i64, !dbg !654
  %38 = shl nuw nsw i64 %37, 24, !dbg !655
  %39 = or i64 %38, %33, !dbg !656
  %40 = or i64 %10, 5, !dbg !657
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !658
  %42 = load i8, i8* %41, align 1, !dbg !658, !tbaa !136
  %43 = zext i8 %42 to i64, !dbg !659
  %44 = shl nuw nsw i64 %43, 16, !dbg !660
  %45 = or i64 %44, %39, !dbg !661
  %46 = or i64 %10, 6, !dbg !662
  %47 = getelementptr inbounds i8, i8* %1, i64 %46, !dbg !663
  %48 = load i8, i8* %47, align 1, !dbg !663, !tbaa !136
  %49 = zext i8 %48 to i64, !dbg !664
  %50 = shl nuw nsw i64 %49, 8, !dbg !665
  %51 = or i64 %50, %45, !dbg !666
  %52 = or i64 %10, 7, !dbg !667
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !668
  %54 = load i8, i8* %53, align 1, !dbg !668, !tbaa !136
  %55 = zext i8 %54 to i64, !dbg !668
  %56 = or i64 %51, %55, !dbg !669
  store i64 %56, i64* %15, align 8, !dbg !669, !tbaa !199
  %57 = add nuw nsw i64 %9, 1, !dbg !670
  %58 = icmp eq i64 %57, 16, !dbg !671
  br i1 %58, label %5, label %8, !dbg !624, !llvm.loop !672

; <label>:59:                                     ; preds = %59, %5
  %60 = phi i64 [ %7, %5 ], [ %80, %59 ], !dbg !626
  %61 = phi i64 [ 16, %5 ], [ %93, %59 ]
  %62 = add nsw i64 %61, -2, !dbg !629
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %62, !dbg !629
  %64 = load i64, i64* %63, align 8, !dbg !629, !tbaa !199
  %65 = lshr i64 %64, 19, !dbg !683
  %66 = shl i64 %64, 45, !dbg !684
  %67 = or i64 %66, %65, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %68 = lshr i64 %64, 61, !dbg !690
  %69 = shl i64 %64, 3, !dbg !691
  %70 = or i64 %69, %68, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %71 = lshr i64 %64, 6, !dbg !629
  %72 = xor i64 %70, %71, !dbg !629
  %73 = xor i64 %72, %67, !dbg !629
  %74 = add nsw i64 %61, -7, !dbg !694
  %75 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %74, !dbg !695
  %76 = load i64, i64* %75, align 8, !dbg !695, !tbaa !199
  %77 = add i64 %73, %76, !dbg !696
  %78 = add nsw i64 %61, -15, !dbg !697
  %79 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %78, !dbg !697
  %80 = load i64, i64* %79, align 8, !dbg !697, !tbaa !199
  %81 = lshr i64 %80, 1, !dbg !701
  %82 = shl i64 %80, 63, !dbg !702
  %83 = or i64 %82, %81, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  %84 = lshr i64 %80, 8, !dbg !708
  %85 = shl i64 %80, 56, !dbg !709
  %86 = or i64 %85, %84, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %87 = lshr i64 %80, 7, !dbg !697
  %88 = xor i64 %86, %87, !dbg !697
  %89 = xor i64 %88, %83, !dbg !697
  %90 = add i64 %77, %60, !dbg !712
  %91 = add i64 %90, %89, !dbg !713
  %92 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %61, !dbg !714
  store i64 %91, i64* %92, align 8, !dbg !715, !tbaa !199
  %93 = add nuw nsw i64 %61, 1, !dbg !716
  %94 = icmp eq i64 %93, 80, !dbg !717
  br i1 %94, label %95, label %59, !dbg !718, !llvm.loop !719

; <label>:95:                                     ; preds = %59
  %96 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 0, !dbg !721
  %97 = load i64, i64* %96, align 8, !dbg !721, !tbaa !199
  %98 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 1, !dbg !723
  %99 = load i64, i64* %98, align 8, !dbg !723, !tbaa !199
  %100 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 2, !dbg !725
  %101 = load i64, i64* %100, align 8, !dbg !725, !tbaa !199
  %102 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 3, !dbg !727
  %103 = load i64, i64* %102, align 8, !dbg !727, !tbaa !199
  %104 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 4, !dbg !729
  %105 = load i64, i64* %104, align 8, !dbg !729, !tbaa !199
  %106 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 5, !dbg !731
  %107 = load i64, i64* %106, align 8, !dbg !731, !tbaa !199
  %108 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 6, !dbg !733
  %109 = load i64, i64* %108, align 8, !dbg !733, !tbaa !199
  %110 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 7, !dbg !735
  %111 = load i64, i64* %110, align 8, !dbg !735, !tbaa !199
  br label %112, !dbg !737

; <label>:112:                                    ; preds = %112, %95
  %113 = phi i64 [ 0, %95 ], [ %162, %112 ]
  %114 = phi i64 [ %111, %95 ], [ %115, %112 ]
  %115 = phi i64 [ %109, %95 ], [ %116, %112 ]
  %116 = phi i64 [ %107, %95 ], [ %117, %112 ]
  %117 = phi i64 [ %105, %95 ], [ %160, %112 ]
  %118 = phi i64 [ %103, %95 ], [ %119, %112 ]
  %119 = phi i64 [ %101, %95 ], [ %120, %112 ]
  %120 = phi i64 [ %99, %95 ], [ %121, %112 ]
  %121 = phi i64 [ %97, %95 ], [ %161, %112 ]
  %122 = lshr i64 %117, 14, !dbg !743
  %123 = shl i64 %117, 50, !dbg !744
  %124 = or i64 %123, %122, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  %125 = lshr i64 %117, 18, !dbg !749
  %126 = shl i64 %117, 46, !dbg !750
  %127 = or i64 %126, %125, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  %128 = xor i64 %124, %127, !dbg !753
  %129 = lshr i64 %117, 41, !dbg !757
  %130 = shl i64 %117, 23, !dbg !758
  %131 = or i64 %130, %129, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %132 = xor i64 %128, %131, !dbg !753
  %133 = add i64 %132, %114, !dbg !761
  %134 = xor i64 %115, %116, !dbg !762
  %135 = and i64 %134, %117, !dbg !762
  %136 = xor i64 %135, %115, !dbg !762
  %137 = add i64 %133, %136, !dbg !763
  %138 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %113, !dbg !764
  %139 = load i64, i64* %138, align 8, !dbg !764, !tbaa !199
  %140 = add i64 %137, %139, !dbg !765
  %141 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %113, !dbg !766
  %142 = load i64, i64* %141, align 8, !dbg !766, !tbaa !199
  %143 = add i64 %140, %142, !dbg !767
  %144 = lshr i64 %121, 28, !dbg !771
  %145 = shl i64 %121, 36, !dbg !772
  %146 = or i64 %145, %144, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %147 = lshr i64 %121, 34, !dbg !777
  %148 = shl i64 %121, 30, !dbg !778
  %149 = or i64 %148, %147, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %150 = xor i64 %146, %149, !dbg !781
  %151 = lshr i64 %121, 39, !dbg !785
  %152 = shl i64 %121, 25, !dbg !786
  %153 = or i64 %152, %151, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %154 = xor i64 %150, %153, !dbg !781
  %155 = and i64 %120, %121, !dbg !789
  %156 = or i64 %120, %121, !dbg !789
  %157 = and i64 %119, %156, !dbg !789
  %158 = or i64 %157, %155, !dbg !789
  %159 = add i64 %154, %158, !dbg !790
  %160 = add i64 %143, %118, !dbg !792
  %161 = add i64 %159, %143, !dbg !793
  %162 = add nuw nsw i64 %113, 1, !dbg !794
  %163 = icmp eq i64 %162, 80, !dbg !795
  br i1 %163, label %164, label %112, !dbg !737, !llvm.loop !796

; <label>:164:                                    ; preds = %112
  %165 = add i64 %161, %97, !dbg !798
  store i64 %165, i64* %96, align 8, !dbg !798, !tbaa !199
  %166 = add i64 %121, %99, !dbg !799
  store i64 %166, i64* %98, align 8, !dbg !799, !tbaa !199
  %167 = add i64 %120, %101, !dbg !800
  store i64 %167, i64* %100, align 8, !dbg !800, !tbaa !199
  %168 = add i64 %119, %103, !dbg !801
  store i64 %168, i64* %102, align 8, !dbg !801, !tbaa !199
  %169 = add i64 %160, %105, !dbg !802
  store i64 %169, i64* %104, align 8, !dbg !802, !tbaa !199
  %170 = add i64 %117, %107, !dbg !803
  store i64 %170, i64* %106, align 8, !dbg !803, !tbaa !199
  %171 = add i64 %116, %109, !dbg !804
  store i64 %171, i64* %108, align 8, !dbg !804, !tbaa !199
  %172 = add i64 %115, %111, !dbg !805
  store i64 %172, i64* %110, align 8, !dbg !805, !tbaa !199
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %4) #4, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  ret void, !dbg !806
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

!llvm.module.flags = !{!100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "testkey", scope: !2, file: !3, line: 359, type: !97, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__crypt_sha512", scope: !3, file: !3, line: 357, type: !4, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !89)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_sha512.c", directory: "/root/.unikraft/apps/redis/build")
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
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 60, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 105, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!0, !20, !25, !30, !78, !84}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "testsetting", scope: !2, file: !3, line: 360, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 240, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 30)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "testhash", scope: !2, file: !3, line: 361, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 928, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 116)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "perm", scope: !32, file: !3, line: 321, type: !73, isLocal: true, isDefinition: true)
!32 = distinct !DISubprogram(name: "sha512crypt", scope: !3, file: !3, line: 208, type: !4, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !33)
!33 = !{!34, !35, !36, !37, !52, !56, !57, !58, !60, !61, !62, !63, !67, !68, !69, !72}
!34 = !DILocalVariable(name: "key", arg: 1, scope: !32, file: !3, line: 208, type: !8)
!35 = !DILocalVariable(name: "setting", arg: 2, scope: !32, file: !3, line: 208, type: !8)
!36 = !DILocalVariable(name: "output", arg: 3, scope: !32, file: !3, line: 208, type: !6)
!37 = !DILocalVariable(name: "ctx", scope: !32, file: !3, line: 210, type: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha512", file: !3, line: 19, size: 1600, elements: !39)
!39 = !{!40, !41, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !38, file: !3, line: 20, baseType: !14, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !38, file: !3, line: 21, baseType: !42, size: 512, offset: 64)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !38, file: !3, line: 22, baseType: !46, size: 1024, offset: 576)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, elements: !50)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 43, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !{!51}
!51 = !DISubrange(count: 128)
!52 = !DILocalVariable(name: "md", scope: !32, file: !3, line: 211, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 64)
!56 = !DILocalVariable(name: "kmd", scope: !32, file: !3, line: 211, type: !53)
!57 = !DILocalVariable(name: "smd", scope: !32, file: !3, line: 211, type: !53)
!58 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 212, type: !59)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "r", scope: !32, file: !3, line: 212, type: !59)
!61 = !DILocalVariable(name: "klen", scope: !32, file: !3, line: 212, type: !59)
!62 = !DILocalVariable(name: "slen", scope: !32, file: !3, line: 212, type: !59)
!63 = !DILocalVariable(name: "rounds", scope: !32, file: !3, line: 213, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 20)
!67 = !DILocalVariable(name: "salt", scope: !32, file: !3, line: 214, type: !8)
!68 = !DILocalVariable(name: "p", scope: !32, file: !3, line: 215, type: !6)
!69 = !DILocalVariable(name: "u", scope: !70, file: !3, line: 230, type: !18)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 229, column: 59)
!71 = distinct !DILexicalBlock(scope: !32, file: !3, line: 229, column: 6)
!72 = !DILocalVariable(name: "end", scope: !70, file: !3, line: 231, type: !6)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 504, elements: !75)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!75 = !{!76, !77}
!76 = !DISubrange(count: 21)
!77 = !DISubrange(count: 3)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "K", scope: !10, file: !3, line: 33, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 5120, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!82 = !{!83}
!83 = !DISubrange(count: 80)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "b64", scope: !10, file: !3, line: 177, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 520, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 65)
!89 = !{!90, !91, !92, !93, !95, !96}
!90 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 357, type: !8)
!91 = !DILocalVariable(name: "setting", arg: 2, scope: !2, file: !3, line: 357, type: !8)
!92 = !DILocalVariable(name: "output", arg: 3, scope: !2, file: !3, line: 357, type: !6)
!93 = !DILocalVariable(name: "testbuf", scope: !2, file: !3, line: 362, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !50)
!95 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 363, type: !6)
!96 = !DILocalVariable(name: "q", scope: !2, file: !3, line: 363, type: !6)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 144, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 18)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 4}
!103 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!104 = !DILocation(line: 357, column: 34, scope: !2)
!105 = !DILocation(line: 357, column: 51, scope: !2)
!106 = !DILocation(line: 357, column: 66, scope: !2)
!107 = !DILocation(line: 362, column: 2, scope: !2)
!108 = !DILocation(line: 362, column: 7, scope: !2)
!109 = !DILocation(line: 365, column: 6, scope: !2)
!110 = !DILocation(line: 363, column: 8, scope: !2)
!111 = !DILocation(line: 367, column: 6, scope: !2)
!112 = !DILocation(line: 363, column: 12, scope: !2)
!113 = !DILocation(line: 368, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !2, file: !3, line: 368, column: 6)
!115 = !DILocation(line: 368, column: 14, scope: !114)
!116 = !DILocation(line: 368, column: 9, scope: !114)
!117 = !DILocation(line: 368, column: 28, scope: !114)
!118 = !DILocation(line: 368, column: 6, scope: !2)
!119 = !DILocation(line: 0, scope: !2)
!120 = !DILocation(line: 371, column: 1, scope: !2)
!121 = !DILocation(line: 208, column: 38, scope: !32)
!122 = !DILocation(line: 208, column: 55, scope: !32)
!123 = !DILocation(line: 208, column: 70, scope: !32)
!124 = !DILocation(line: 210, column: 2, scope: !32)
!125 = !DILocation(line: 211, column: 2, scope: !32)
!126 = !DILocation(line: 211, column: 16, scope: !32)
!127 = !DILocation(line: 211, column: 24, scope: !32)
!128 = !DILocation(line: 211, column: 33, scope: !32)
!129 = !DILocation(line: 213, column: 2, scope: !32)
!130 = !DILocation(line: 213, column: 7, scope: !32)
!131 = !DILocation(line: 212, column: 15, scope: !32)
!132 = !DILocation(line: 218, column: 27, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 218, column: 2)
!134 = distinct !DILexicalBlock(scope: !32, file: !3, line: 218, column: 2)
!135 = !DILocation(line: 218, column: 30, scope: !133)
!136 = !{!137, !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !DILocation(line: 218, column: 2, scope: !134)
!140 = !DILocation(line: 218, column: 39, scope: !133)
!141 = !DILocation(line: 218, column: 16, scope: !133)
!142 = distinct !{!142, !139, !143}
!143 = !DILocation(line: 218, column: 42, scope: !134)
!144 = !DILocation(line: 212, column: 21, scope: !32)
!145 = !DILocation(line: 224, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !32, file: !3, line: 224, column: 6)
!147 = !DILocation(line: 224, column: 33, scope: !146)
!148 = !DILocation(line: 224, column: 6, scope: !32)
!149 = !DILocation(line: 226, column: 17, scope: !32)
!150 = !DILocation(line: 214, column: 14, scope: !32)
!151 = !DILocation(line: 212, column: 18, scope: !32)
!152 = !DILocation(line: 229, column: 6, scope: !71)
!153 = !DILocation(line: 229, column: 53, scope: !71)
!154 = !DILocation(line: 229, column: 6, scope: !32)
!155 = !DILocation(line: 231, column: 3, scope: !70)
!156 = !DILocation(line: 245, column: 8, scope: !70)
!157 = !DILocation(line: 246, column: 8, scope: !158)
!158 = distinct !DILexicalBlock(scope: !70, file: !3, line: 246, column: 7)
!159 = !DILocation(line: 246, column: 7, scope: !70)
!160 = !DILocation(line: 231, column: 9, scope: !70)
!161 = !DILocation(line: 248, column: 7, scope: !70)
!162 = !DILocation(line: 230, column: 17, scope: !70)
!163 = !DILocation(line: 249, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !70, file: !3, line: 249, column: 7)
!165 = !{!166, !166, i64 0}
!166 = !{!"any pointer", !137, i64 0}
!167 = !DILocation(line: 249, column: 7, scope: !164)
!168 = !DILocation(line: 249, column: 12, scope: !164)
!169 = !DILocation(line: 249, column: 7, scope: !70)
!170 = !DILocation(line: 251, column: 13, scope: !70)
!171 = !DILocation(line: 252, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !70, file: !3, line: 252, column: 7)
!173 = !DILocation(line: 252, column: 7, scope: !70)
!174 = !DILocation(line: 254, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 254, column: 12)
!176 = !DILocation(line: 254, column: 12, scope: !172)
!177 = !DILocation(line: 257, column: 8, scope: !175)
!178 = !DILocation(line: 260, column: 2, scope: !71)
!179 = !DILocation(line: 0, scope: !175)
!180 = !DILocation(line: 259, column: 3, scope: !70)
!181 = !DILocation(line: 228, column: 4, scope: !32)
!182 = !DILocation(line: 0, scope: !32)
!183 = !DILocation(line: 262, column: 30, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 262, column: 2)
!185 = distinct !DILexicalBlock(scope: !32, file: !3, line: 262, column: 2)
!186 = !DILocation(line: 262, column: 38, scope: !184)
!187 = !DILocation(line: 0, scope: !184)
!188 = !DILocation(line: 212, column: 27, scope: !32)
!189 = !DILocation(line: 210, column: 16, scope: !32)
!190 = !DILocalVariable(name: "s", arg: 1, scope: !191, file: !3, line: 126, type: !194)
!191 = distinct !DISubprogram(name: "sha512_init", scope: !3, file: !3, line: 126, type: !192, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !195)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!195 = !{!190}
!196 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !197)
!197 = distinct !DILocation(line: 269, column: 2, scope: !32)
!198 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !197)
!199 = !{!200, !200, i64 0}
!200 = !{!"long", !137, i64 0}
!201 = !DILocation(line: 130, column: 2, scope: !191, inlinedAt: !197)
!202 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !197)
!203 = !DILocation(line: 132, column: 2, scope: !191, inlinedAt: !197)
!204 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !197)
!205 = !DILocation(line: 134, column: 2, scope: !191, inlinedAt: !197)
!206 = !DILocation(line: 135, column: 2, scope: !191, inlinedAt: !197)
!207 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !197)
!208 = !DILocation(line: 136, column: 2, scope: !191, inlinedAt: !197)
!209 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !197)
!210 = !DILocation(line: 137, column: 1, scope: !191, inlinedAt: !197)
!211 = !DILocation(line: 270, column: 2, scope: !32)
!212 = !DILocation(line: 271, column: 28, scope: !32)
!213 = !DILocation(line: 271, column: 2, scope: !32)
!214 = !DILocation(line: 272, column: 2, scope: !32)
!215 = !DILocation(line: 273, column: 2, scope: !32)
!216 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !217)
!217 = distinct !DILocation(line: 276, column: 2, scope: !32)
!218 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !217)
!219 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !217)
!220 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !217)
!221 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !217)
!222 = !DILocation(line: 135, column: 10, scope: !191, inlinedAt: !217)
!223 = !DILocation(line: 137, column: 1, scope: !191, inlinedAt: !217)
!224 = !DILocation(line: 277, column: 2, scope: !32)
!225 = !DILocation(line: 278, column: 2, scope: !32)
!226 = !DILocalVariable(name: "s", arg: 1, scope: !227, file: !3, line: 199, type: !194)
!227 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 199, type: !228, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !232)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !194, !59, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!232 = !{!226, !233, !234, !235}
!233 = !DILocalVariable(name: "n", arg: 2, scope: !227, file: !3, line: 199, type: !59)
!234 = !DILocalVariable(name: "md", arg: 3, scope: !227, file: !3, line: 199, type: !230)
!235 = !DILocalVariable(name: "i", scope: !227, file: !3, line: 201, type: !59)
!236 = !DILocation(line: 199, column: 35, scope: !227, inlinedAt: !237)
!237 = distinct !DILocation(line: 279, column: 2, scope: !32)
!238 = !DILocation(line: 199, column: 51, scope: !227, inlinedAt: !237)
!239 = !DILocation(line: 199, column: 66, scope: !227, inlinedAt: !237)
!240 = !DILocation(line: 201, column: 15, scope: !227, inlinedAt: !237)
!241 = !DILocation(line: 203, column: 16, scope: !242, inlinedAt: !237)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 203, column: 2)
!243 = distinct !DILexicalBlock(scope: !227, file: !3, line: 203, column: 2)
!244 = !DILocation(line: 203, column: 2, scope: !243, inlinedAt: !237)
!245 = !DILocation(line: 204, column: 3, scope: !242, inlinedAt: !237)
!246 = !DILocation(line: 203, column: 24, scope: !242, inlinedAt: !237)
!247 = distinct !{!247, !248, !249}
!248 = !DILocation(line: 203, column: 2, scope: !243)
!249 = !DILocation(line: 204, column: 26, scope: !243)
!250 = !DILocation(line: 205, column: 23, scope: !227, inlinedAt: !237)
!251 = !DILocation(line: 205, column: 2, scope: !227, inlinedAt: !237)
!252 = !DILocation(line: 206, column: 1, scope: !227, inlinedAt: !237)
!253 = !DILocation(line: 280, column: 19, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 280, column: 2)
!255 = distinct !DILexicalBlock(scope: !32, file: !3, line: 280, column: 2)
!256 = !DILocation(line: 280, column: 2, scope: !255)
!257 = !DILocation(line: 281, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 281, column: 7)
!259 = !DILocation(line: 281, column: 7, scope: !254)
!260 = !DILocation(line: 282, column: 4, scope: !258)
!261 = !DILocation(line: 284, column: 4, scope: !258)
!262 = !DILocation(line: 280, column: 26, scope: !254)
!263 = distinct !{!263, !256, !264}
!264 = !DILocation(line: 284, column: 33, scope: !255)
!265 = !DILocation(line: 285, column: 2, scope: !32)
!266 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !267)
!267 = distinct !DILocation(line: 288, column: 2, scope: !32)
!268 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !267)
!269 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !267)
!270 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !267)
!271 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !267)
!272 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !267)
!273 = !DILocation(line: 137, column: 1, scope: !191, inlinedAt: !267)
!274 = !DILocation(line: 289, column: 2, scope: !275)
!275 = distinct !DILexicalBlock(scope: !32, file: !3, line: 289, column: 2)
!276 = !DILocation(line: 290, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !3, line: 289, column: 2)
!278 = !DILocation(line: 289, column: 25, scope: !277)
!279 = !DILocation(line: 289, column: 16, scope: !277)
!280 = distinct !{!280, !274, !281}
!281 = !DILocation(line: 290, column: 32, scope: !275)
!282 = !DILocation(line: 291, column: 2, scope: !32)
!283 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !284)
!284 = distinct !DILocation(line: 294, column: 2, scope: !32)
!285 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !284)
!286 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !284)
!287 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !284)
!288 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !284)
!289 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !284)
!290 = !DILocation(line: 137, column: 1, scope: !191, inlinedAt: !284)
!291 = !DILocation(line: 295, column: 2, scope: !292)
!292 = distinct !DILexicalBlock(scope: !32, file: !3, line: 295, column: 2)
!293 = !DILocation(line: 296, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !3, line: 295, column: 2)
!295 = !DILocation(line: 295, column: 31, scope: !294)
!296 = !DILocation(line: 295, column: 23, scope: !294)
!297 = !DILocation(line: 295, column: 21, scope: !294)
!298 = !DILocation(line: 295, column: 16, scope: !294)
!299 = distinct !{!299, !291, !300}
!300 = !DILocation(line: 296, column: 33, scope: !292)
!301 = !DILocation(line: 297, column: 2, scope: !32)
!302 = !DILocation(line: 300, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 300, column: 2)
!304 = distinct !DILexicalBlock(scope: !32, file: !3, line: 300, column: 2)
!305 = !DILocation(line: 300, column: 2, scope: !304)
!306 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !307)
!307 = distinct !DILocation(line: 301, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 300, column: 26)
!309 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !307)
!310 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !307)
!311 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !307)
!312 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !307)
!313 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !307)
!314 = !DILocation(line: 137, column: 1, scope: !191, inlinedAt: !307)
!315 = !DILocation(line: 302, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !3, line: 302, column: 7)
!317 = !DILocation(line: 302, column: 7, scope: !308)
!318 = !DILocation(line: 199, column: 35, scope: !227, inlinedAt: !319)
!319 = distinct !DILocation(line: 303, column: 4, scope: !316)
!320 = !DILocation(line: 199, column: 51, scope: !227, inlinedAt: !319)
!321 = !DILocation(line: 199, column: 66, scope: !227, inlinedAt: !319)
!322 = !DILocation(line: 201, column: 15, scope: !227, inlinedAt: !319)
!323 = !DILocation(line: 203, column: 2, scope: !243, inlinedAt: !319)
!324 = !DILocation(line: 204, column: 3, scope: !242, inlinedAt: !319)
!325 = !DILocation(line: 203, column: 24, scope: !242, inlinedAt: !319)
!326 = !DILocation(line: 203, column: 16, scope: !242, inlinedAt: !319)
!327 = !DILocation(line: 0, scope: !242, inlinedAt: !319)
!328 = !DILocation(line: 205, column: 23, scope: !227, inlinedAt: !319)
!329 = !DILocation(line: 205, column: 2, scope: !227, inlinedAt: !319)
!330 = !DILocation(line: 206, column: 1, scope: !227, inlinedAt: !319)
!331 = !DILocation(line: 303, column: 4, scope: !316)
!332 = !DILocation(line: 305, column: 4, scope: !316)
!333 = !DILocation(line: 306, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !308, file: !3, line: 306, column: 7)
!335 = !DILocation(line: 306, column: 7, scope: !308)
!336 = !DILocation(line: 307, column: 4, scope: !334)
!337 = !DILocation(line: 308, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !308, file: !3, line: 308, column: 7)
!339 = !DILocation(line: 308, column: 7, scope: !308)
!340 = !DILocation(line: 199, column: 35, scope: !227, inlinedAt: !341)
!341 = distinct !DILocation(line: 309, column: 4, scope: !338)
!342 = !DILocation(line: 199, column: 51, scope: !227, inlinedAt: !341)
!343 = !DILocation(line: 199, column: 66, scope: !227, inlinedAt: !341)
!344 = !DILocation(line: 201, column: 15, scope: !227, inlinedAt: !341)
!345 = !DILocation(line: 203, column: 2, scope: !243, inlinedAt: !341)
!346 = !DILocation(line: 204, column: 3, scope: !242, inlinedAt: !341)
!347 = !DILocation(line: 203, column: 24, scope: !242, inlinedAt: !341)
!348 = !DILocation(line: 203, column: 16, scope: !242, inlinedAt: !341)
!349 = !DILocation(line: 0, scope: !242, inlinedAt: !341)
!350 = !DILocation(line: 205, column: 23, scope: !227, inlinedAt: !341)
!351 = !DILocation(line: 205, column: 2, scope: !227, inlinedAt: !341)
!352 = !DILocation(line: 206, column: 1, scope: !227, inlinedAt: !341)
!353 = !DILocation(line: 309, column: 4, scope: !338)
!354 = !DILocation(line: 310, column: 7, scope: !308)
!355 = !DILocation(line: 311, column: 4, scope: !356)
!356 = distinct !DILexicalBlock(scope: !308, file: !3, line: 310, column: 7)
!357 = !DILocation(line: 199, column: 35, scope: !227, inlinedAt: !358)
!358 = distinct !DILocation(line: 313, column: 4, scope: !356)
!359 = !DILocation(line: 199, column: 51, scope: !227, inlinedAt: !358)
!360 = !DILocation(line: 199, column: 66, scope: !227, inlinedAt: !358)
!361 = !DILocation(line: 201, column: 15, scope: !227, inlinedAt: !358)
!362 = !DILocation(line: 203, column: 2, scope: !243, inlinedAt: !358)
!363 = !DILocation(line: 204, column: 3, scope: !242, inlinedAt: !358)
!364 = !DILocation(line: 203, column: 24, scope: !242, inlinedAt: !358)
!365 = !DILocation(line: 203, column: 16, scope: !242, inlinedAt: !358)
!366 = !DILocation(line: 0, scope: !242, inlinedAt: !358)
!367 = !DILocation(line: 205, column: 23, scope: !227, inlinedAt: !358)
!368 = !DILocation(line: 205, column: 2, scope: !227, inlinedAt: !358)
!369 = !DILocation(line: 206, column: 1, scope: !227, inlinedAt: !358)
!370 = !DILocation(line: 314, column: 3, scope: !308)
!371 = !DILocation(line: 300, column: 22, scope: !303)
!372 = distinct !{!372, !305, !373}
!373 = !DILocation(line: 315, column: 2, scope: !304)
!374 = !DILocation(line: 215, column: 8, scope: !32)
!375 = !DILocation(line: 319, column: 7, scope: !32)
!376 = !DILocation(line: 319, column: 4, scope: !32)
!377 = !DILocation(line: 327, column: 2, scope: !378)
!378 = distinct !DILexicalBlock(scope: !32, file: !3, line: 327, column: 2)
!379 = !DILocation(line: 328, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 327, column: 2)
!381 = !DILocation(line: 328, column: 4, scope: !380)
!382 = !DILocation(line: 328, column: 18, scope: !380)
!383 = !DILocation(line: 328, column: 28, scope: !380)
!384 = !DILocation(line: 328, column: 25, scope: !380)
!385 = !DILocation(line: 328, column: 39, scope: !380)
!386 = !DILocation(line: 328, column: 23, scope: !380)
!387 = !DILocation(line: 328, column: 47, scope: !380)
!388 = !DILocation(line: 328, column: 44, scope: !380)
!389 = !DILocation(line: 328, column: 43, scope: !380)
!390 = !DILocalVariable(name: "s", arg: 1, scope: !391, file: !3, line: 180, type: !6)
!391 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 180, type: !392, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!6, !6, !59, !13}
!394 = !{!390, !395, !396}
!395 = !DILocalVariable(name: "u", arg: 2, scope: !391, file: !3, line: 180, type: !59)
!396 = !DILocalVariable(name: "n", arg: 3, scope: !391, file: !3, line: 180, type: !13)
!397 = !DILocation(line: 180, column: 25, scope: !391, inlinedAt: !398)
!398 = distinct !DILocation(line: 327, column: 27, scope: !380)
!399 = !DILocation(line: 180, column: 41, scope: !391, inlinedAt: !398)
!400 = !DILocation(line: 180, column: 48, scope: !391, inlinedAt: !398)
!401 = !DILocation(line: 183, column: 16, scope: !402, inlinedAt: !398)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 182, column: 19)
!403 = !DILocation(line: 183, column: 10, scope: !402, inlinedAt: !398)
!404 = !DILocation(line: 183, column: 5, scope: !402, inlinedAt: !398)
!405 = !DILocation(line: 183, column: 8, scope: !402, inlinedAt: !398)
!406 = !DILocation(line: 184, column: 5, scope: !402, inlinedAt: !398)
!407 = !DILocation(line: 186, column: 2, scope: !391, inlinedAt: !398)
!408 = !DILocation(line: 327, column: 19, scope: !380)
!409 = !DILocation(line: 327, column: 13, scope: !380)
!410 = distinct !{!410, !377, !411}
!411 = !DILocation(line: 328, column: 61, scope: !378)
!412 = !DILocation(line: 352, column: 14, scope: !32)
!413 = !DILocation(line: 180, column: 25, scope: !391, inlinedAt: !414)
!414 = distinct !DILocation(line: 352, column: 6, scope: !32)
!415 = !DILocation(line: 180, column: 41, scope: !391, inlinedAt: !414)
!416 = !DILocation(line: 180, column: 48, scope: !391, inlinedAt: !414)
!417 = !DILocation(line: 183, column: 16, scope: !402, inlinedAt: !414)
!418 = !DILocation(line: 183, column: 10, scope: !402, inlinedAt: !414)
!419 = !DILocation(line: 183, column: 5, scope: !402, inlinedAt: !414)
!420 = !DILocation(line: 183, column: 8, scope: !402, inlinedAt: !414)
!421 = !DILocation(line: 184, column: 5, scope: !402, inlinedAt: !414)
!422 = !DILocation(line: 186, column: 2, scope: !391, inlinedAt: !414)
!423 = !DILocation(line: 353, column: 5, scope: !32)
!424 = !DILocation(line: 354, column: 2, scope: !32)
!425 = !DILocation(line: 0, scope: !164)
!426 = !DILocation(line: 355, column: 1, scope: !32)
!427 = distinct !DISubprogram(name: "sha512_update", scope: !3, file: !3, line: 156, type: !428, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !194, !230, !18}
!430 = !{!431, !432, !433, !434, !437}
!431 = !DILocalVariable(name: "s", arg: 1, scope: !427, file: !3, line: 156, type: !194)
!432 = !DILocalVariable(name: "m", arg: 2, scope: !427, file: !3, line: 156, type: !230)
!433 = !DILocalVariable(name: "len", arg: 3, scope: !427, file: !3, line: 156, type: !18)
!434 = !DILocalVariable(name: "p", scope: !427, file: !3, line: 158, type: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!437 = !DILocalVariable(name: "r", scope: !427, file: !3, line: 159, type: !59)
!438 = !DILocation(line: 156, column: 42, scope: !427)
!439 = !DILocation(line: 156, column: 57, scope: !427)
!440 = !DILocation(line: 156, column: 74, scope: !427)
!441 = !DILocation(line: 158, column: 17, scope: !427)
!442 = !DILocation(line: 159, column: 18, scope: !427)
!443 = !{!444, !200, i64 0}
!444 = !{!"sha512", !200, i64 0, !137, i64 8, !137, i64 72}
!445 = !DILocation(line: 159, column: 15, scope: !427)
!446 = !DILocation(line: 159, column: 11, scope: !427)
!447 = !DILocation(line: 161, column: 9, scope: !427)
!448 = !DILocation(line: 162, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !427, file: !3, line: 162, column: 6)
!450 = !DILocation(line: 162, column: 6, scope: !427)
!451 = !DILocation(line: 163, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 163, column: 7)
!453 = distinct !DILexicalBlock(scope: !449, file: !3, line: 162, column: 9)
!454 = !DILocation(line: 163, column: 13, scope: !452)
!455 = !DILocation(line: 163, column: 11, scope: !452)
!456 = !DILocation(line: 0, scope: !453)
!457 = !DILocation(line: 163, column: 7, scope: !453)
!458 = !DILocation(line: 164, column: 4, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !3, line: 163, column: 22)
!460 = !DILocation(line: 165, column: 4, scope: !459)
!461 = !DILocation(line: 167, column: 3, scope: !453)
!462 = !DILocation(line: 168, column: 7, scope: !453)
!463 = !DILocation(line: 169, column: 5, scope: !453)
!464 = !DILocation(line: 170, column: 3, scope: !453)
!465 = !DILocation(line: 171, column: 2, scope: !453)
!466 = !DILocation(line: 0, scope: !427)
!467 = !DILocation(line: 172, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 172, column: 2)
!469 = distinct !DILexicalBlock(scope: !427, file: !3, line: 172, column: 2)
!470 = !DILocation(line: 172, column: 2, scope: !469)
!471 = !DILocation(line: 173, column: 3, scope: !468)
!472 = !DILocation(line: 172, column: 25, scope: !468)
!473 = !DILocation(line: 172, column: 35, scope: !468)
!474 = distinct !{!474, !470, !475}
!475 = !DILocation(line: 173, column: 20, scope: !469)
!476 = !DILocation(line: 174, column: 9, scope: !427)
!477 = !DILocation(line: 0, scope: !468)
!478 = !DILocation(line: 174, column: 2, scope: !427)
!479 = !DILocation(line: 175, column: 1, scope: !427)
!480 = distinct !DISubprogram(name: "sha512_sum", scope: !3, file: !3, line: 139, type: !481, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !484)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !194, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!484 = !{!485, !486, !487}
!485 = !DILocalVariable(name: "s", arg: 1, scope: !480, file: !3, line: 139, type: !194)
!486 = !DILocalVariable(name: "md", arg: 2, scope: !480, file: !3, line: 139, type: !483)
!487 = !DILocalVariable(name: "i", scope: !480, file: !3, line: 141, type: !13)
!488 = !DILocation(line: 139, column: 39, scope: !480)
!489 = !DILocation(line: 139, column: 51, scope: !480)
!490 = !DILocalVariable(name: "s", arg: 1, scope: !491, file: !3, line: 103, type: !194)
!491 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 103, type: !192, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !492)
!492 = !{!490, !493}
!493 = !DILocalVariable(name: "r", scope: !491, file: !3, line: 105, type: !59)
!494 = !DILocation(line: 103, column: 32, scope: !491, inlinedAt: !495)
!495 = distinct !DILocation(line: 143, column: 2, scope: !480)
!496 = !DILocation(line: 105, column: 18, scope: !491, inlinedAt: !495)
!497 = !DILocation(line: 105, column: 15, scope: !491, inlinedAt: !495)
!498 = !DILocation(line: 105, column: 11, scope: !491, inlinedAt: !495)
!499 = !DILocation(line: 107, column: 10, scope: !491, inlinedAt: !495)
!500 = !DILocation(line: 107, column: 2, scope: !491, inlinedAt: !495)
!501 = !DILocation(line: 107, column: 14, scope: !491, inlinedAt: !495)
!502 = !DILocation(line: 108, column: 8, scope: !503, inlinedAt: !495)
!503 = distinct !DILexicalBlock(scope: !491, file: !3, line: 108, column: 6)
!504 = !DILocation(line: 0, scope: !491, inlinedAt: !495)
!505 = !DILocation(line: 108, column: 6, scope: !491, inlinedAt: !495)
!506 = !DILocation(line: 109, column: 17, scope: !507, inlinedAt: !495)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 108, column: 15)
!508 = !DILocation(line: 109, column: 29, scope: !507, inlinedAt: !495)
!509 = !DILocation(line: 109, column: 25, scope: !507, inlinedAt: !495)
!510 = !DILocation(line: 109, column: 3, scope: !507, inlinedAt: !495)
!511 = !DILocation(line: 111, column: 3, scope: !507, inlinedAt: !495)
!512 = !DILocation(line: 112, column: 2, scope: !507, inlinedAt: !495)
!513 = !DILocation(line: 113, column: 16, scope: !491, inlinedAt: !495)
!514 = !DILocation(line: 113, column: 28, scope: !491, inlinedAt: !495)
!515 = !DILocation(line: 113, column: 24, scope: !491, inlinedAt: !495)
!516 = !DILocation(line: 113, column: 2, scope: !491, inlinedAt: !495)
!517 = !DILocation(line: 114, column: 9, scope: !491, inlinedAt: !495)
!518 = !DILocation(line: 115, column: 23, scope: !491, inlinedAt: !495)
!519 = !DILocation(line: 115, column: 16, scope: !491, inlinedAt: !495)
!520 = !DILocation(line: 115, column: 2, scope: !491, inlinedAt: !495)
!521 = !DILocation(line: 115, column: 14, scope: !491, inlinedAt: !495)
!522 = !DILocation(line: 116, column: 23, scope: !491, inlinedAt: !495)
!523 = !DILocation(line: 116, column: 16, scope: !491, inlinedAt: !495)
!524 = !DILocation(line: 116, column: 2, scope: !491, inlinedAt: !495)
!525 = !DILocation(line: 116, column: 14, scope: !491, inlinedAt: !495)
!526 = !DILocation(line: 117, column: 23, scope: !491, inlinedAt: !495)
!527 = !DILocation(line: 117, column: 16, scope: !491, inlinedAt: !495)
!528 = !DILocation(line: 117, column: 2, scope: !491, inlinedAt: !495)
!529 = !DILocation(line: 117, column: 14, scope: !491, inlinedAt: !495)
!530 = !DILocation(line: 118, column: 23, scope: !491, inlinedAt: !495)
!531 = !DILocation(line: 118, column: 16, scope: !491, inlinedAt: !495)
!532 = !DILocation(line: 118, column: 2, scope: !491, inlinedAt: !495)
!533 = !DILocation(line: 118, column: 14, scope: !491, inlinedAt: !495)
!534 = !DILocation(line: 119, column: 23, scope: !491, inlinedAt: !495)
!535 = !DILocation(line: 119, column: 16, scope: !491, inlinedAt: !495)
!536 = !DILocation(line: 119, column: 2, scope: !491, inlinedAt: !495)
!537 = !DILocation(line: 119, column: 14, scope: !491, inlinedAt: !495)
!538 = !DILocation(line: 120, column: 23, scope: !491, inlinedAt: !495)
!539 = !DILocation(line: 120, column: 16, scope: !491, inlinedAt: !495)
!540 = !DILocation(line: 120, column: 2, scope: !491, inlinedAt: !495)
!541 = !DILocation(line: 120, column: 14, scope: !491, inlinedAt: !495)
!542 = !DILocation(line: 121, column: 23, scope: !491, inlinedAt: !495)
!543 = !DILocation(line: 121, column: 16, scope: !491, inlinedAt: !495)
!544 = !DILocation(line: 121, column: 2, scope: !491, inlinedAt: !495)
!545 = !DILocation(line: 121, column: 14, scope: !491, inlinedAt: !495)
!546 = !DILocation(line: 122, column: 16, scope: !491, inlinedAt: !495)
!547 = !DILocation(line: 122, column: 2, scope: !491, inlinedAt: !495)
!548 = !DILocation(line: 122, column: 14, scope: !491, inlinedAt: !495)
!549 = !DILocation(line: 123, column: 2, scope: !491, inlinedAt: !495)
!550 = !DILocation(line: 124, column: 1, scope: !491, inlinedAt: !495)
!551 = !DILocation(line: 141, column: 6, scope: !480)
!552 = !DILocation(line: 144, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !480, file: !3, line: 144, column: 2)
!554 = !DILocation(line: 145, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 144, column: 26)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 144, column: 2)
!557 = !DILocation(line: 145, column: 21, scope: !555)
!558 = !DILocation(line: 145, column: 7, scope: !555)
!559 = !DILocation(line: 145, column: 3, scope: !555)
!560 = !DILocation(line: 145, column: 11, scope: !555)
!561 = !DILocation(line: 146, column: 15, scope: !555)
!562 = !DILocation(line: 146, column: 23, scope: !555)
!563 = !DILocation(line: 146, column: 9, scope: !555)
!564 = !DILocation(line: 146, column: 3, scope: !555)
!565 = !DILocation(line: 146, column: 13, scope: !555)
!566 = !DILocation(line: 147, column: 15, scope: !555)
!567 = !DILocation(line: 147, column: 23, scope: !555)
!568 = !DILocation(line: 147, column: 9, scope: !555)
!569 = !DILocation(line: 147, column: 3, scope: !555)
!570 = !DILocation(line: 147, column: 13, scope: !555)
!571 = !DILocation(line: 148, column: 15, scope: !555)
!572 = !DILocation(line: 148, column: 23, scope: !555)
!573 = !DILocation(line: 148, column: 9, scope: !555)
!574 = !DILocation(line: 148, column: 3, scope: !555)
!575 = !DILocation(line: 148, column: 13, scope: !555)
!576 = !DILocation(line: 149, column: 15, scope: !555)
!577 = !DILocation(line: 149, column: 23, scope: !555)
!578 = !DILocation(line: 149, column: 9, scope: !555)
!579 = !DILocation(line: 149, column: 3, scope: !555)
!580 = !DILocation(line: 149, column: 13, scope: !555)
!581 = !DILocation(line: 150, column: 15, scope: !555)
!582 = !DILocation(line: 150, column: 23, scope: !555)
!583 = !DILocation(line: 150, column: 9, scope: !555)
!584 = !DILocation(line: 150, column: 3, scope: !555)
!585 = !DILocation(line: 150, column: 13, scope: !555)
!586 = !DILocation(line: 151, column: 15, scope: !555)
!587 = !DILocation(line: 151, column: 23, scope: !555)
!588 = !DILocation(line: 151, column: 9, scope: !555)
!589 = !DILocation(line: 151, column: 3, scope: !555)
!590 = !DILocation(line: 151, column: 13, scope: !555)
!591 = !DILocation(line: 152, column: 15, scope: !555)
!592 = !DILocation(line: 152, column: 9, scope: !555)
!593 = !DILocation(line: 152, column: 3, scope: !555)
!594 = !DILocation(line: 152, column: 13, scope: !555)
!595 = !DILocation(line: 144, column: 22, scope: !556)
!596 = !DILocation(line: 144, column: 16, scope: !556)
!597 = distinct !{!597, !552, !598}
!598 = !DILocation(line: 153, column: 2, scope: !553)
!599 = !DILocation(line: 154, column: 1, scope: !480)
!600 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 56, type: !601, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !194, !435}
!603 = !{!604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DILocalVariable(name: "s", arg: 1, scope: !600, file: !3, line: 56, type: !194)
!605 = !DILocalVariable(name: "buf", arg: 2, scope: !600, file: !3, line: 56, type: !435)
!606 = !DILocalVariable(name: "W", scope: !600, file: !3, line: 58, type: !607)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5120, elements: !82)
!608 = !DILocalVariable(name: "t1", scope: !600, file: !3, line: 58, type: !14)
!609 = !DILocalVariable(name: "t2", scope: !600, file: !3, line: 58, type: !14)
!610 = !DILocalVariable(name: "a", scope: !600, file: !3, line: 58, type: !14)
!611 = !DILocalVariable(name: "b", scope: !600, file: !3, line: 58, type: !14)
!612 = !DILocalVariable(name: "c", scope: !600, file: !3, line: 58, type: !14)
!613 = !DILocalVariable(name: "d", scope: !600, file: !3, line: 58, type: !14)
!614 = !DILocalVariable(name: "e", scope: !600, file: !3, line: 58, type: !14)
!615 = !DILocalVariable(name: "f", scope: !600, file: !3, line: 58, type: !14)
!616 = !DILocalVariable(name: "g", scope: !600, file: !3, line: 58, type: !14)
!617 = !DILocalVariable(name: "h", scope: !600, file: !3, line: 58, type: !14)
!618 = !DILocalVariable(name: "i", scope: !600, file: !3, line: 59, type: !13)
!619 = !DILocation(line: 56, column: 41, scope: !600)
!620 = !DILocation(line: 56, column: 59, scope: !600)
!621 = !DILocation(line: 58, column: 2, scope: !600)
!622 = !DILocation(line: 58, column: 11, scope: !600)
!623 = !DILocation(line: 59, column: 6, scope: !600)
!624 = !DILocation(line: 61, column: 2, scope: !625)
!625 = distinct !DILexicalBlock(scope: !600, file: !3, line: 61, column: 2)
!626 = !DILocation(line: 72, column: 46, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 71, column: 2)
!628 = distinct !DILexicalBlock(scope: !600, file: !3, line: 71, column: 2)
!629 = !DILocation(line: 72, column: 10, scope: !627)
!630 = !DILocation(line: 62, column: 25, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 61, column: 27)
!632 = distinct !DILexicalBlock(scope: !625, file: !3, line: 61, column: 2)
!633 = !DILocation(line: 62, column: 20, scope: !631)
!634 = !DILocation(line: 62, column: 10, scope: !631)
!635 = !DILocation(line: 62, column: 28, scope: !631)
!636 = !DILocation(line: 62, column: 3, scope: !631)
!637 = !DILocation(line: 63, column: 28, scope: !631)
!638 = !DILocation(line: 63, column: 21, scope: !631)
!639 = !DILocation(line: 63, column: 11, scope: !631)
!640 = !DILocation(line: 63, column: 31, scope: !631)
!641 = !DILocation(line: 63, column: 8, scope: !631)
!642 = !DILocation(line: 64, column: 28, scope: !631)
!643 = !DILocation(line: 64, column: 21, scope: !631)
!644 = !DILocation(line: 64, column: 11, scope: !631)
!645 = !DILocation(line: 64, column: 31, scope: !631)
!646 = !DILocation(line: 64, column: 8, scope: !631)
!647 = !DILocation(line: 65, column: 28, scope: !631)
!648 = !DILocation(line: 65, column: 21, scope: !631)
!649 = !DILocation(line: 65, column: 11, scope: !631)
!650 = !DILocation(line: 65, column: 31, scope: !631)
!651 = !DILocation(line: 65, column: 8, scope: !631)
!652 = !DILocation(line: 66, column: 28, scope: !631)
!653 = !DILocation(line: 66, column: 21, scope: !631)
!654 = !DILocation(line: 66, column: 11, scope: !631)
!655 = !DILocation(line: 66, column: 31, scope: !631)
!656 = !DILocation(line: 66, column: 8, scope: !631)
!657 = !DILocation(line: 67, column: 28, scope: !631)
!658 = !DILocation(line: 67, column: 21, scope: !631)
!659 = !DILocation(line: 67, column: 11, scope: !631)
!660 = !DILocation(line: 67, column: 31, scope: !631)
!661 = !DILocation(line: 67, column: 8, scope: !631)
!662 = !DILocation(line: 68, column: 28, scope: !631)
!663 = !DILocation(line: 68, column: 21, scope: !631)
!664 = !DILocation(line: 68, column: 11, scope: !631)
!665 = !DILocation(line: 68, column: 31, scope: !631)
!666 = !DILocation(line: 68, column: 8, scope: !631)
!667 = !DILocation(line: 69, column: 18, scope: !631)
!668 = !DILocation(line: 69, column: 11, scope: !631)
!669 = !DILocation(line: 69, column: 8, scope: !631)
!670 = !DILocation(line: 61, column: 23, scope: !632)
!671 = !DILocation(line: 61, column: 16, scope: !632)
!672 = distinct !{!672, !624, !673}
!673 = !DILocation(line: 70, column: 2, scope: !625)
!674 = !DILocalVariable(name: "n", arg: 1, scope: !675, file: !3, line: 25, type: !14)
!675 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 25, type: !676, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{!14, !14, !13}
!678 = !{!674, !679}
!679 = !DILocalVariable(name: "k", arg: 2, scope: !675, file: !3, line: 25, type: !13)
!680 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !681)
!681 = distinct !DILocation(line: 72, column: 10, scope: !627)
!682 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !681)
!683 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !681)
!684 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !681)
!685 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !681)
!686 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !681)
!687 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !688)
!688 = distinct !DILocation(line: 72, column: 10, scope: !627)
!689 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !688)
!690 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !688)
!691 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !688)
!692 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !688)
!693 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !688)
!694 = !DILocation(line: 72, column: 26, scope: !627)
!695 = !DILocation(line: 72, column: 23, scope: !627)
!696 = !DILocation(line: 72, column: 21, scope: !627)
!697 = !DILocation(line: 72, column: 32, scope: !627)
!698 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !699)
!699 = distinct !DILocation(line: 72, column: 32, scope: !627)
!700 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !699)
!701 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !699)
!702 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !699)
!703 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !699)
!704 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !699)
!705 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !706)
!706 = distinct !DILocation(line: 72, column: 32, scope: !627)
!707 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !706)
!708 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !706)
!709 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !706)
!710 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !706)
!711 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !706)
!712 = !DILocation(line: 72, column: 30, scope: !627)
!713 = !DILocation(line: 72, column: 44, scope: !627)
!714 = !DILocation(line: 72, column: 3, scope: !627)
!715 = !DILocation(line: 72, column: 8, scope: !627)
!716 = !DILocation(line: 71, column: 18, scope: !627)
!717 = !DILocation(line: 71, column: 11, scope: !627)
!718 = !DILocation(line: 71, column: 2, scope: !628)
!719 = distinct !{!719, !718, !720}
!720 = !DILocation(line: 72, column: 52, scope: !628)
!721 = !DILocation(line: 73, column: 6, scope: !600)
!722 = !DILocation(line: 58, column: 26, scope: !600)
!723 = !DILocation(line: 74, column: 6, scope: !600)
!724 = !DILocation(line: 58, column: 29, scope: !600)
!725 = !DILocation(line: 75, column: 6, scope: !600)
!726 = !DILocation(line: 58, column: 32, scope: !600)
!727 = !DILocation(line: 76, column: 6, scope: !600)
!728 = !DILocation(line: 58, column: 35, scope: !600)
!729 = !DILocation(line: 77, column: 6, scope: !600)
!730 = !DILocation(line: 58, column: 38, scope: !600)
!731 = !DILocation(line: 78, column: 6, scope: !600)
!732 = !DILocation(line: 58, column: 41, scope: !600)
!733 = !DILocation(line: 79, column: 6, scope: !600)
!734 = !DILocation(line: 58, column: 44, scope: !600)
!735 = !DILocation(line: 80, column: 6, scope: !600)
!736 = !DILocation(line: 58, column: 47, scope: !600)
!737 = !DILocation(line: 81, column: 2, scope: !738)
!738 = distinct !DILexicalBlock(scope: !600, file: !3, line: 81, column: 2)
!739 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !740)
!740 = distinct !DILocation(line: 82, column: 12, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 81, column: 27)
!742 = distinct !DILexicalBlock(scope: !738, file: !3, line: 81, column: 2)
!743 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !740)
!744 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !740)
!745 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !740)
!746 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !740)
!747 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !748)
!748 = distinct !DILocation(line: 82, column: 12, scope: !741)
!749 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !748)
!750 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !748)
!751 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !748)
!752 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !748)
!753 = !DILocation(line: 82, column: 12, scope: !741)
!754 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !755)
!755 = distinct !DILocation(line: 82, column: 12, scope: !741)
!756 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !755)
!757 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !755)
!758 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !755)
!759 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !755)
!760 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !755)
!761 = !DILocation(line: 82, column: 10, scope: !741)
!762 = !DILocation(line: 82, column: 20, scope: !741)
!763 = !DILocation(line: 82, column: 18, scope: !741)
!764 = !DILocation(line: 82, column: 32, scope: !741)
!765 = !DILocation(line: 82, column: 30, scope: !741)
!766 = !DILocation(line: 82, column: 39, scope: !741)
!767 = !DILocation(line: 82, column: 37, scope: !741)
!768 = !DILocation(line: 58, column: 18, scope: !600)
!769 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !770)
!770 = distinct !DILocation(line: 83, column: 8, scope: !741)
!771 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !770)
!772 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !770)
!773 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !770)
!774 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !770)
!775 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !776)
!776 = distinct !DILocation(line: 83, column: 8, scope: !741)
!777 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !776)
!778 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !776)
!779 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !776)
!780 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !776)
!781 = !DILocation(line: 83, column: 8, scope: !741)
!782 = !DILocation(line: 25, column: 30, scope: !675, inlinedAt: !783)
!783 = distinct !DILocation(line: 83, column: 8, scope: !741)
!784 = !DILocation(line: 25, column: 37, scope: !675, inlinedAt: !783)
!785 = !DILocation(line: 25, column: 52, scope: !675, inlinedAt: !783)
!786 = !DILocation(line: 25, column: 63, scope: !675, inlinedAt: !783)
!787 = !DILocation(line: 25, column: 58, scope: !675, inlinedAt: !783)
!788 = !DILocation(line: 25, column: 42, scope: !675, inlinedAt: !783)
!789 = !DILocation(line: 83, column: 16, scope: !741)
!790 = !DILocation(line: 83, column: 14, scope: !741)
!791 = !DILocation(line: 58, column: 22, scope: !600)
!792 = !DILocation(line: 87, column: 9, scope: !741)
!793 = !DILocation(line: 91, column: 10, scope: !741)
!794 = !DILocation(line: 81, column: 23, scope: !742)
!795 = !DILocation(line: 81, column: 16, scope: !742)
!796 = distinct !{!796, !737, !797}
!797 = !DILocation(line: 92, column: 2, scope: !738)
!798 = !DILocation(line: 93, column: 10, scope: !600)
!799 = !DILocation(line: 94, column: 10, scope: !600)
!800 = !DILocation(line: 95, column: 10, scope: !600)
!801 = !DILocation(line: 96, column: 10, scope: !600)
!802 = !DILocation(line: 97, column: 10, scope: !600)
!803 = !DILocation(line: 98, column: 10, scope: !600)
!804 = !DILocation(line: 99, column: 10, scope: !600)
!805 = !DILocation(line: 100, column: 10, scope: !600)
!806 = !DILocation(line: 101, column: 1, scope: !600)
