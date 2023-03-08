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

; <label>:15:                                     ; preds = %312, %3
  %16 = phi i32 [ 0, %3 ], [ %313, %312 ]
  %17 = zext i32 %16 to i64, !dbg !135
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !135
  %19 = load i8, i8* %18, align 1, !dbg !135, !tbaa !136
  %20 = icmp eq i8 %19, 0, !dbg !132
  br i1 %20, label %24, label %21, !dbg !139

; <label>:21:                                     ; preds = %15
  %22 = or i32 %16, 1, !dbg !140
  %23 = icmp ult i32 %22, 257, !dbg !141
  br i1 %23, label %295, label %250, !dbg !132, !llvm.loop !142

; <label>:24:                                     ; preds = %306, %300, %295, %15
  %25 = phi i32 [ %16, %15 ], [ %22, %295 ], [ %301, %300 ], [ %307, %306 ]
  %26 = zext i32 %25 to i64, !dbg !135
  %27 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #6, !dbg !145
  %28 = icmp eq i32 %27, 0, !dbg !147
  br i1 %28, label %29, label %250, !dbg !148

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
  br label %250

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
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !183
  %66 = load i8, i8* %65, align 1, !dbg !183, !tbaa !136
  switch i8 %66, label %252 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:67:                                     ; preds = %294, %291, %291, %288, %288, %285, %285, %282, %282, %279, %279, %276, %276, %273, %273, %270, %270, %267, %267, %264, %264, %261, %261, %258, %258, %255, %255, %252, %252, %64, %64, %60, %60
  %68 = phi i32 [ 0, %60 ], [ 0, %60 ], [ 1, %64 ], [ 1, %64 ], [ 2, %252 ], [ 2, %252 ], [ 3, %255 ], [ 3, %255 ], [ 4, %258 ], [ 4, %258 ], [ 5, %261 ], [ 5, %261 ], [ 6, %264 ], [ 6, %264 ], [ 7, %267 ], [ 7, %267 ], [ 8, %270 ], [ 8, %270 ], [ 9, %273 ], [ 9, %273 ], [ 10, %276 ], [ 10, %276 ], [ 11, %279 ], [ 11, %279 ], [ 12, %282 ], [ 12, %282 ], [ 13, %285 ], [ 13, %285 ], [ 14, %288 ], [ 14, %288 ], [ 15, %291 ], [ 15, %291 ], [ 16, %294 ], !dbg !187
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
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !210
  %78 = zext i32 %68 to i64, !dbg !211
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %62, i64 %78) #5, !dbg !212
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !213
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !214
  %79 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !217
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %79, align 16, !dbg !217, !tbaa !199
  %80 = bitcast i64* %70 to <2 x i64>*, !dbg !218
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %80, align 8, !dbg !218, !tbaa !199
  %81 = bitcast i64* %72 to <2 x i64>*, !dbg !219
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %81, align 8, !dbg !219, !tbaa !199
  store i64 -7276294671716946913, i64* %74, align 8, !dbg !220, !tbaa !199
  %82 = bitcast i64* %75 to <2 x i64>*, !dbg !221
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %82, align 8, !dbg !221, !tbaa !199
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %0, i64 %26) #5, !dbg !222
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %62, i64 %78) #5, !dbg !223
  %83 = icmp ugt i32 %25, 64, !dbg !239
  br i1 %83, label %84, label %95, !dbg !242

; <label>:84:                                     ; preds = %67
  %85 = add nsw i32 %25, -65, !dbg !243
  br label %86, !dbg !243

; <label>:86:                                     ; preds = %86, %84
  %87 = phi i32 [ %88, %86 ], [ %25, %84 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #6, !dbg !243
  %88 = add i32 %87, -64, !dbg !244
  %89 = icmp ugt i32 %88, 64, !dbg !239
  br i1 %89, label %86, label %90, !dbg !242, !llvm.loop !245

; <label>:90:                                     ; preds = %86
  %91 = and i32 %85, -64, !dbg !243
  %92 = add nsw i32 %25, -64, !dbg !243
  %93 = sub i32 %92, %91, !dbg !243
  %94 = zext i32 %93 to i64, !dbg !248
  br label %95, !dbg !248

; <label>:95:                                     ; preds = %67, %90
  %96 = phi i64 [ %26, %67 ], [ %94, %90 ], !dbg !248
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 %96) #6, !dbg !249
  %97 = icmp eq i32 %25, 0, !dbg !250
  br i1 %97, label %107, label %98, !dbg !253

; <label>:98:                                     ; preds = %95, %104
  %99 = phi i32 [ %105, %104 ], [ %25, %95 ]
  %100 = and i32 %99, 1, !dbg !254
  %101 = icmp eq i32 %100, 0, !dbg !254
  br i1 %101, label %103, label %102, !dbg !256

; <label>:102:                                    ; preds = %98
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !257
  br label %104, !dbg !257

; <label>:103:                                    ; preds = %98
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %26) #5, !dbg !258
  br label %104

; <label>:104:                                    ; preds = %102, %103
  %105 = lshr i32 %99, 1, !dbg !259
  %106 = icmp eq i32 %105, 0, !dbg !250
  br i1 %106, label %107, label %98, !dbg !253, !llvm.loop !260

; <label>:107:                                    ; preds = %104, %95
  %108 = phi i1 [ true, %95 ], [ %97, %104 ]
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !262
  %109 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !265
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %109, align 16, !dbg !265, !tbaa !199
  %110 = bitcast i64* %70 to <2 x i64>*, !dbg !266
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %110, align 8, !dbg !266, !tbaa !199
  %111 = bitcast i64* %72 to <2 x i64>*, !dbg !267
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %111, align 8, !dbg !267, !tbaa !199
  %112 = bitcast i64* %74 to <2 x i64>*, !dbg !268
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %112, align 8, !dbg !268, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !269, !tbaa !199
  br i1 %108, label %117, label %113, !dbg !270

; <label>:113:                                    ; preds = %107, %113
  %114 = phi i32 [ %115, %113 ], [ 0, %107 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %26) #5, !dbg !272
  %115 = add nuw nsw i32 %114, 1, !dbg !274
  %116 = icmp ult i32 %115, %25, !dbg !275
  br i1 %116, label %113, label %117, !dbg !270, !llvm.loop !276

; <label>:117:                                    ; preds = %113, %107
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %12) #5, !dbg !278
  %118 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !281
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %118, align 16, !dbg !281, !tbaa !199
  %119 = bitcast i64* %70 to <2 x i64>*, !dbg !282
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %119, align 8, !dbg !282, !tbaa !199
  %120 = bitcast i64* %72 to <2 x i64>*, !dbg !283
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %120, align 8, !dbg !283, !tbaa !199
  %121 = bitcast i64* %74 to <2 x i64>*, !dbg !284
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %121, align 8, !dbg !284, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !285, !tbaa !199
  br label %122, !dbg !286

; <label>:122:                                    ; preds = %117, %122
  %123 = phi i32 [ 0, %117 ], [ %124, %122 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %62, i64 %78) #5, !dbg !288
  %124 = add nuw nsw i32 %123, 1, !dbg !290
  %125 = load i8, i8* %11, align 16, !dbg !291, !tbaa !136
  %126 = zext i8 %125 to i32, !dbg !291
  %127 = add nuw nsw i32 %126, 16, !dbg !292
  %128 = icmp ult i32 %124, %127, !dbg !293
  br i1 %128, label %122, label %129, !dbg !286, !llvm.loop !294

; <label>:129:                                    ; preds = %122
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %13) #5, !dbg !296
  %130 = icmp eq i32 %61, 0, !dbg !297
  br i1 %130, label %181, label %131, !dbg !300

; <label>:131:                                    ; preds = %129
  %132 = add nsw i32 %25, -65
  %133 = and i32 %132, -64
  %134 = add nsw i32 %25, -64
  %135 = sub i32 %134, %133
  %136 = bitcast %struct.sha512* %4 to <2 x i64>*
  %137 = bitcast i64* %70 to <2 x i64>*
  %138 = bitcast i64* %72 to <2 x i64>*
  %139 = bitcast i64* %74 to <2 x i64>*
  br label %140, !dbg !300

; <label>:140:                                    ; preds = %178, %131
  %141 = phi i32 [ 0, %131 ], [ %179, %178 ]
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %136, align 16, !dbg !304, !tbaa !199
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %137, align 8, !dbg !305, !tbaa !199
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %138, align 8, !dbg !306, !tbaa !199
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %139, align 8, !dbg !307, !tbaa !199
  store i64 6620516959819538809, i64* %77, align 8, !dbg !308, !tbaa !199
  %142 = and i32 %141, 1, !dbg !309
  %143 = icmp ne i32 %142, 0, !dbg !309
  br i1 %143, label %144, label %152, !dbg !311

; <label>:144:                                    ; preds = %140
  br i1 %83, label %145, label %149, !dbg !317

; <label>:145:                                    ; preds = %144, %145
  %146 = phi i32 [ %147, %145 ], [ %25, %144 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !318
  %147 = add i32 %146, -64, !dbg !319
  %148 = icmp ugt i32 %147, 64, !dbg !320
  br i1 %148, label %145, label %149, !dbg !317, !llvm.loop !245

; <label>:149:                                    ; preds = %145, %144
  %150 = phi i32 [ %25, %144 ], [ %135, %145 ], !dbg !321
  %151 = zext i32 %150 to i64, !dbg !322
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %151) #6, !dbg !323
  br label %153, !dbg !324

; <label>:152:                                    ; preds = %140
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !325
  br label %153

; <label>:153:                                    ; preds = %152, %149
  %154 = urem i32 %141, 3, !dbg !326
  %155 = icmp eq i32 %154, 0, !dbg !326
  br i1 %155, label %157, label %156, !dbg !328

; <label>:156:                                    ; preds = %153
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %13, i64 %78) #5, !dbg !329
  br label %157, !dbg !329

; <label>:157:                                    ; preds = %153, %156
  %158 = urem i32 %141, 7, !dbg !330
  %159 = icmp eq i32 %158, 0, !dbg !330
  br i1 %159, label %168, label %160, !dbg !332

; <label>:160:                                    ; preds = %157
  br i1 %83, label %161, label %165, !dbg !338

; <label>:161:                                    ; preds = %160, %161
  %162 = phi i32 [ %163, %161 ], [ %25, %160 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !339
  %163 = add i32 %162, -64, !dbg !340
  %164 = icmp ugt i32 %163, 64, !dbg !341
  br i1 %164, label %161, label %165, !dbg !338, !llvm.loop !245

; <label>:165:                                    ; preds = %161, %160
  %166 = phi i32 [ %25, %160 ], [ %135, %161 ], !dbg !342
  %167 = zext i32 %166 to i64, !dbg !343
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %167) #6, !dbg !344
  br label %168, !dbg !345

; <label>:168:                                    ; preds = %157, %165
  br i1 %143, label %169, label %170, !dbg !346

; <label>:169:                                    ; preds = %168
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !347
  br label %178, !dbg !347

; <label>:170:                                    ; preds = %168
  br i1 %83, label %171, label %175, !dbg !354

; <label>:171:                                    ; preds = %170, %171
  %172 = phi i32 [ %173, %171 ], [ %25, %170 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !355
  %173 = add i32 %172, -64, !dbg !356
  %174 = icmp ugt i32 %173, 64, !dbg !357
  br i1 %174, label %171, label %175, !dbg !354, !llvm.loop !245

; <label>:175:                                    ; preds = %171, %170
  %176 = phi i32 [ %25, %170 ], [ %135, %171 ], !dbg !358
  %177 = zext i32 %176 to i64, !dbg !359
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %177) #6, !dbg !360
  br label %178

; <label>:178:                                    ; preds = %175, %169
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !361
  %179 = add nuw i32 %141, 1, !dbg !362
  %180 = icmp eq i32 %179, %61, !dbg !297
  br i1 %180, label %181, label %140, !dbg !300, !llvm.loop !363

; <label>:181:                                    ; preds = %178, %129
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %68, i8* %62) #6, !dbg !366
  %183 = sext i32 %182 to i64, !dbg !367
  %184 = getelementptr inbounds i8, i8* %2, i64 %183, !dbg !367
  %185 = add nsw i64 %183, 84, !dbg !368
  br label %186, !dbg !368

; <label>:186:                                    ; preds = %186, %181
  %187 = phi i64 [ 0, %181 ], [ %233, %186 ]
  %188 = phi i8* [ %184, %181 ], [ %232, %186 ]
  %189 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %187, i64 0, !dbg !370
  %190 = load i8, i8* %189, align 1, !dbg !370, !tbaa !136
  %191 = zext i8 %190 to i64, !dbg !372
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %191, !dbg !372
  %193 = load i8, i8* %192, align 1, !dbg !372, !tbaa !136
  %194 = zext i8 %193 to i32, !dbg !372
  %195 = shl nuw nsw i32 %194, 16, !dbg !373
  %196 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %187, i64 1, !dbg !374
  %197 = load i8, i8* %196, align 1, !dbg !374, !tbaa !136
  %198 = zext i8 %197 to i64, !dbg !375
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %198, !dbg !375
  %200 = load i8, i8* %199, align 1, !dbg !375, !tbaa !136
  %201 = zext i8 %200 to i32, !dbg !375
  %202 = shl nuw nsw i32 %201, 8, !dbg !376
  %203 = or i32 %202, %195, !dbg !377
  %204 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %187, i64 2, !dbg !378
  %205 = load i8, i8* %204, align 1, !dbg !378, !tbaa !136
  %206 = zext i8 %205 to i64, !dbg !379
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %206, !dbg !379
  %208 = load i8, i8* %207, align 1, !dbg !379, !tbaa !136
  %209 = zext i8 %208 to i32, !dbg !379
  %210 = or i32 %202, %209, !dbg !380
  %211 = and i32 %209, 63, !dbg !392
  %212 = zext i32 %211 to i64, !dbg !394
  %213 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %212, !dbg !394
  %214 = load i8, i8* %213, align 1, !dbg !394, !tbaa !136
  %215 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !395
  store i8 %214, i8* %188, align 1, !dbg !396, !tbaa !136
  %216 = lshr i32 %210, 6, !dbg !397
  %217 = and i32 %216, 63, !dbg !392
  %218 = zext i32 %217 to i64, !dbg !394
  %219 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %218, !dbg !394
  %220 = load i8, i8* %219, align 1, !dbg !394, !tbaa !136
  %221 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !395
  store i8 %220, i8* %215, align 1, !dbg !396, !tbaa !136
  %222 = lshr i32 %203, 12, !dbg !397
  %223 = and i32 %222, 63, !dbg !392
  %224 = zext i32 %223 to i64, !dbg !394
  %225 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %224, !dbg !394
  %226 = load i8, i8* %225, align 1, !dbg !394, !tbaa !136
  %227 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !395
  store i8 %226, i8* %221, align 1, !dbg !396, !tbaa !136
  %228 = lshr i32 %194, 2, !dbg !397
  %229 = zext i32 %228 to i64, !dbg !394
  %230 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %229, !dbg !394
  %231 = load i8, i8* %230, align 1, !dbg !394, !tbaa !136
  store i8 %231, i8* %227, align 1, !dbg !396, !tbaa !136
  %232 = getelementptr i8, i8* %188, i64 4
  %233 = add nuw nsw i64 %187, 1, !dbg !398
  %234 = icmp eq i64 %233, 21, !dbg !399
  br i1 %234, label %235, label %186, !dbg !368, !llvm.loop !400

; <label>:235:                                    ; preds = %186
  %236 = getelementptr i8, i8* %2, i64 %185, !dbg !368
  %237 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 63, !dbg !402
  %238 = load i8, i8* %237, align 1, !dbg !402, !tbaa !136
  %239 = zext i8 %238 to i32, !dbg !402
  %240 = and i32 %239, 63, !dbg !407
  %241 = zext i32 %240 to i64, !dbg !408
  %242 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %241, !dbg !408
  %243 = load i8, i8* %242, align 1, !dbg !408, !tbaa !136
  %244 = getelementptr inbounds i8, i8* %236, i64 1, !dbg !409
  store i8 %243, i8* %236, align 1, !dbg !410, !tbaa !136
  %245 = lshr i32 %239, 6, !dbg !411
  %246 = zext i32 %245 to i64, !dbg !408
  %247 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %246, !dbg !408
  %248 = load i8, i8* %247, align 1, !dbg !408, !tbaa !136
  store i8 %248, i8* %244, align 1, !dbg !410, !tbaa !136
  %249 = getelementptr i8, i8* %236, i64 2
  store i8 0, i8* %249, align 1, !dbg !412, !tbaa !136
  br label %250, !dbg !413

; <label>:250:                                    ; preds = %21, %60, %60, %64, %64, %252, %252, %255, %255, %258, %258, %261, %261, %264, %264, %267, %267, %270, %270, %273, %273, %276, %276, %279, %279, %282, %282, %285, %285, %288, %288, %291, %291, %56, %24, %235
  %251 = phi i8* [ %2, %235 ], [ null, %24 ], [ null, %56 ], [ null, %291 ], [ null, %291 ], [ null, %288 ], [ null, %288 ], [ null, %285 ], [ null, %285 ], [ null, %282 ], [ null, %282 ], [ null, %279 ], [ null, %279 ], [ null, %276 ], [ null, %276 ], [ null, %273 ], [ null, %273 ], [ null, %270 ], [ null, %270 ], [ null, %267 ], [ null, %267 ], [ null, %264 ], [ null, %264 ], [ null, %261 ], [ null, %261 ], [ null, %258 ], [ null, %258 ], [ null, %255 ], [ null, %255 ], [ null, %252 ], [ null, %252 ], [ null, %64 ], [ null, %64 ], [ null, %60 ], [ null, %60 ], [ null, %21 ], !dbg !414
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !415
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %13) #4, !dbg !415
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #4, !dbg !415
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #4, !dbg !415
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %10) #4, !dbg !415
  ret i8* %251, !dbg !415

; <label>:252:                                    ; preds = %64
  %253 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !183
  %254 = load i8, i8* %253, align 1, !dbg !183, !tbaa !136
  switch i8 %254, label %255 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:255:                                    ; preds = %252
  %256 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !183
  %257 = load i8, i8* %256, align 1, !dbg !183, !tbaa !136
  switch i8 %257, label %258 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:258:                                    ; preds = %255
  %259 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !183
  %260 = load i8, i8* %259, align 1, !dbg !183, !tbaa !136
  switch i8 %260, label %261 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:261:                                    ; preds = %258
  %262 = getelementptr inbounds i8, i8* %62, i64 5, !dbg !183
  %263 = load i8, i8* %262, align 1, !dbg !183, !tbaa !136
  switch i8 %263, label %264 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:264:                                    ; preds = %261
  %265 = getelementptr inbounds i8, i8* %62, i64 6, !dbg !183
  %266 = load i8, i8* %265, align 1, !dbg !183, !tbaa !136
  switch i8 %266, label %267 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:267:                                    ; preds = %264
  %268 = getelementptr inbounds i8, i8* %62, i64 7, !dbg !183
  %269 = load i8, i8* %268, align 1, !dbg !183, !tbaa !136
  switch i8 %269, label %270 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:270:                                    ; preds = %267
  %271 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !183
  %272 = load i8, i8* %271, align 1, !dbg !183, !tbaa !136
  switch i8 %272, label %273 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:273:                                    ; preds = %270
  %274 = getelementptr inbounds i8, i8* %62, i64 9, !dbg !183
  %275 = load i8, i8* %274, align 1, !dbg !183, !tbaa !136
  switch i8 %275, label %276 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:276:                                    ; preds = %273
  %277 = getelementptr inbounds i8, i8* %62, i64 10, !dbg !183
  %278 = load i8, i8* %277, align 1, !dbg !183, !tbaa !136
  switch i8 %278, label %279 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:279:                                    ; preds = %276
  %280 = getelementptr inbounds i8, i8* %62, i64 11, !dbg !183
  %281 = load i8, i8* %280, align 1, !dbg !183, !tbaa !136
  switch i8 %281, label %282 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:282:                                    ; preds = %279
  %283 = getelementptr inbounds i8, i8* %62, i64 12, !dbg !183
  %284 = load i8, i8* %283, align 1, !dbg !183, !tbaa !136
  switch i8 %284, label %285 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:285:                                    ; preds = %282
  %286 = getelementptr inbounds i8, i8* %62, i64 13, !dbg !183
  %287 = load i8, i8* %286, align 1, !dbg !183, !tbaa !136
  switch i8 %287, label %288 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %62, i64 14, !dbg !183
  %290 = load i8, i8* %289, align 1, !dbg !183, !tbaa !136
  switch i8 %290, label %291 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:291:                                    ; preds = %288
  %292 = getelementptr inbounds i8, i8* %62, i64 15, !dbg !183
  %293 = load i8, i8* %292, align 1, !dbg !183, !tbaa !136
  switch i8 %293, label %294 [
    i8 0, label %67
    i8 36, label %67
    i8 10, label %250
    i8 58, label %250
  ], !dbg !186

; <label>:294:                                    ; preds = %291
  br label %67

; <label>:295:                                    ; preds = %21
  %296 = zext i32 %22 to i64, !dbg !135
  %297 = getelementptr inbounds i8, i8* %0, i64 %296, !dbg !135
  %298 = load i8, i8* %297, align 1, !dbg !135, !tbaa !136
  %299 = icmp eq i8 %298, 0, !dbg !132
  br i1 %299, label %24, label %300, !dbg !139

; <label>:300:                                    ; preds = %295
  %301 = or i32 %16, 2, !dbg !140
  %302 = zext i32 %301 to i64, !dbg !135
  %303 = getelementptr inbounds i8, i8* %0, i64 %302, !dbg !135
  %304 = load i8, i8* %303, align 1, !dbg !135, !tbaa !136
  %305 = icmp eq i8 %304, 0, !dbg !132
  br i1 %305, label %24, label %306, !dbg !139

; <label>:306:                                    ; preds = %300
  %307 = or i32 %16, 3, !dbg !140
  %308 = zext i32 %307 to i64, !dbg !135
  %309 = getelementptr inbounds i8, i8* %0, i64 %308, !dbg !135
  %310 = load i8, i8* %309, align 1, !dbg !135, !tbaa !136
  %311 = icmp eq i8 %310, 0, !dbg !132
  br i1 %311, label %24, label %312, !dbg !139

; <label>:312:                                    ; preds = %306
  %313 = add nuw nsw i32 %16, 4, !dbg !140
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
define internal fastcc void @sha512_update(%struct.sha512*, i8*, i64) unnamed_addr #0 !dbg !416 {
  %4 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !431
  %5 = load i64, i64* %4, align 8, !dbg !431, !tbaa !432
  %6 = trunc i64 %5 to i32, !dbg !434
  %7 = and i32 %6, 127, !dbg !434
  %8 = add i64 %5, %2, !dbg !436
  store i64 %8, i64* %4, align 8, !dbg !436, !tbaa !432
  %9 = icmp eq i32 %7, 0, !dbg !437
  br i1 %9, label %23, label %10, !dbg !439

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 128, %7, !dbg !440
  %12 = zext i32 %11 to i64, !dbg !443
  %13 = icmp ugt i64 %12, %2, !dbg !444
  %14 = zext i32 %7 to i64, !dbg !445
  %15 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %14, !dbg !445
  br i1 %13, label %16, label %18, !dbg !446

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !447
  br label %45, !dbg !449

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !445
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !450
  %21 = sub i64 %2, %12, !dbg !451
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !452
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %19) #5, !dbg !453
  br label %23, !dbg !454

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !455
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  %26 = icmp ugt i64 %25, 127, !dbg !456
  br i1 %26, label %27, label %40, !dbg !459

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -128, !dbg !460
  %29 = and i64 %28, -128, !dbg !460
  %30 = add i64 %29, 128, !dbg !460
  br label %31, !dbg !460

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha512* %0, i8* %33) #5, !dbg !460
  %34 = add i64 %32, -128, !dbg !461
  %35 = getelementptr inbounds i8, i8* %33, i64 128, !dbg !462
  %36 = icmp ugt i64 %34, 127, !dbg !456
  br i1 %36, label %31, label %37, !dbg !459, !llvm.loop !463

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !460
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !460
  br label %40, !dbg !465

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !466
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !466
  %43 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !465
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !467
  br label %45, !dbg !468

; <label>:45:                                     ; preds = %40, %16
  ret void, !dbg !468
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha512_sum(%struct.sha512*, i8* nocapture) unnamed_addr #0 !dbg !469 {
  %3 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !485
  %4 = load i64, i64* %3, align 8, !dbg !485, !tbaa !432
  %5 = trunc i64 %4 to i32, !dbg !486
  %6 = and i32 %5, 127, !dbg !486
  %7 = add nuw nsw i32 %6, 1, !dbg !488
  %8 = zext i32 %6 to i64, !dbg !489
  %9 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %8, !dbg !489
  store i8 -128, i8* %9, align 1, !dbg !490, !tbaa !136
  %10 = icmp ugt i32 %6, 111, !dbg !491
  %11 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !493
  br i1 %10, label %12, label %18, !dbg !494

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !495
  %14 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %13, !dbg !495
  %15 = xor i32 %6, 127, !dbg !497
  %16 = zext i32 %15 to i64, !dbg !498
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !499
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !500
  br label %18, !dbg !501

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !493
  %20 = zext i32 %19 to i64, !dbg !502
  %21 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %20, !dbg !502
  %22 = sub nsw i32 120, %19, !dbg !503
  %23 = zext i32 %22 to i64, !dbg !504
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !505
  %25 = load i64, i64* %3, align 8, !dbg !506, !tbaa !432
  %26 = shl i64 %25, 3, !dbg !506
  store i64 %26, i64* %3, align 8, !dbg !506, !tbaa !432
  %27 = lshr i64 %25, 53, !dbg !507
  %28 = trunc i64 %27 to i8, !dbg !508
  %29 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 120, !dbg !509
  store i8 %28, i8* %29, align 8, !dbg !510, !tbaa !136
  %30 = lshr i64 %25, 45, !dbg !511
  %31 = trunc i64 %30 to i8, !dbg !512
  %32 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 121, !dbg !513
  store i8 %31, i8* %32, align 1, !dbg !514, !tbaa !136
  %33 = lshr i64 %25, 37, !dbg !515
  %34 = trunc i64 %33 to i8, !dbg !516
  %35 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 122, !dbg !517
  store i8 %34, i8* %35, align 2, !dbg !518, !tbaa !136
  %36 = lshr i64 %25, 29, !dbg !519
  %37 = trunc i64 %36 to i8, !dbg !520
  %38 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 123, !dbg !521
  store i8 %37, i8* %38, align 1, !dbg !522, !tbaa !136
  %39 = lshr i64 %25, 21, !dbg !523
  %40 = trunc i64 %39 to i8, !dbg !524
  %41 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 124, !dbg !525
  store i8 %40, i8* %41, align 4, !dbg !526, !tbaa !136
  %42 = lshr i64 %25, 13, !dbg !527
  %43 = trunc i64 %42 to i8, !dbg !528
  %44 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 125, !dbg !529
  store i8 %43, i8* %44, align 1, !dbg !530, !tbaa !136
  %45 = lshr i64 %25, 5, !dbg !531
  %46 = trunc i64 %45 to i8, !dbg !532
  %47 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 126, !dbg !533
  store i8 %46, i8* %47, align 2, !dbg !534, !tbaa !136
  %48 = trunc i64 %26 to i8, !dbg !535
  %49 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 127, !dbg !536
  store i8 %48, i8* %49, align 1, !dbg !537, !tbaa !136
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !538
  br label %50, !dbg !540

; <label>:50:                                     ; preds = %50, %18
  %51 = phi i64 [ 0, %18 ], [ %92, %50 ]
  %52 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 %51, !dbg !542
  %53 = load i64, i64* %52, align 8, !dbg !542, !tbaa !199
  %54 = lshr i64 %53, 56, !dbg !545
  %55 = trunc i64 %54 to i8, !dbg !542
  %56 = shl nsw i64 %51, 3, !dbg !546
  %57 = getelementptr inbounds i8, i8* %1, i64 %56, !dbg !547
  store i8 %55, i8* %57, align 1, !dbg !548, !tbaa !136
  %58 = load i64, i64* %52, align 8, !dbg !549, !tbaa !199
  %59 = lshr i64 %58, 48, !dbg !550
  %60 = trunc i64 %59 to i8, !dbg !549
  %61 = or i64 %56, 1, !dbg !551
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !552
  store i8 %60, i8* %62, align 1, !dbg !553, !tbaa !136
  %63 = load i64, i64* %52, align 8, !dbg !554, !tbaa !199
  %64 = lshr i64 %63, 40, !dbg !555
  %65 = trunc i64 %64 to i8, !dbg !554
  %66 = or i64 %56, 2, !dbg !556
  %67 = getelementptr inbounds i8, i8* %1, i64 %66, !dbg !557
  store i8 %65, i8* %67, align 1, !dbg !558, !tbaa !136
  %68 = load i64, i64* %52, align 8, !dbg !559, !tbaa !199
  %69 = lshr i64 %68, 32, !dbg !560
  %70 = trunc i64 %69 to i8, !dbg !559
  %71 = or i64 %56, 3, !dbg !561
  %72 = getelementptr inbounds i8, i8* %1, i64 %71, !dbg !562
  store i8 %70, i8* %72, align 1, !dbg !563, !tbaa !136
  %73 = load i64, i64* %52, align 8, !dbg !564, !tbaa !199
  %74 = lshr i64 %73, 24, !dbg !565
  %75 = trunc i64 %74 to i8, !dbg !564
  %76 = or i64 %56, 4, !dbg !566
  %77 = getelementptr inbounds i8, i8* %1, i64 %76, !dbg !567
  store i8 %75, i8* %77, align 1, !dbg !568, !tbaa !136
  %78 = load i64, i64* %52, align 8, !dbg !569, !tbaa !199
  %79 = lshr i64 %78, 16, !dbg !570
  %80 = trunc i64 %79 to i8, !dbg !569
  %81 = or i64 %56, 5, !dbg !571
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !572
  store i8 %80, i8* %82, align 1, !dbg !573, !tbaa !136
  %83 = load i64, i64* %52, align 8, !dbg !574, !tbaa !199
  %84 = lshr i64 %83, 8, !dbg !575
  %85 = trunc i64 %84 to i8, !dbg !574
  %86 = or i64 %56, 6, !dbg !576
  %87 = getelementptr inbounds i8, i8* %1, i64 %86, !dbg !577
  store i8 %85, i8* %87, align 1, !dbg !578, !tbaa !136
  %88 = load i64, i64* %52, align 8, !dbg !579, !tbaa !199
  %89 = trunc i64 %88 to i8, !dbg !579
  %90 = or i64 %56, 7, !dbg !580
  %91 = getelementptr inbounds i8, i8* %1, i64 %90, !dbg !581
  store i8 %89, i8* %91, align 1, !dbg !582, !tbaa !136
  %92 = add nuw nsw i64 %51, 1, !dbg !583
  %93 = icmp eq i64 %92, 8, !dbg !584
  br i1 %93, label %94, label %50, !dbg !540, !llvm.loop !585

; <label>:94:                                     ; preds = %50
  ret void, !dbg !587
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha512* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !588 {
  %3 = alloca [80 x i64], align 16
  %4 = bitcast [80 x i64]* %3 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %4) #4, !dbg !609
  br label %8, !dbg !612

; <label>:5:                                      ; preds = %8
  %6 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0
  %7 = load i64, i64* %6, align 16, !dbg !614, !tbaa !199
  br label %59, !dbg !617

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %57, %8 ]
  %10 = shl nsw i64 %9, 3, !dbg !618
  %11 = getelementptr inbounds i8, i8* %1, i64 %10, !dbg !621
  %12 = load i8, i8* %11, align 1, !dbg !621, !tbaa !136
  %13 = zext i8 %12 to i64, !dbg !622
  %14 = shl nuw i64 %13, 56, !dbg !623
  %15 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %9, !dbg !624
  %16 = or i64 %10, 1, !dbg !625
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !626
  %18 = load i8, i8* %17, align 1, !dbg !626, !tbaa !136
  %19 = zext i8 %18 to i64, !dbg !627
  %20 = shl nuw nsw i64 %19, 48, !dbg !628
  %21 = or i64 %20, %14, !dbg !629
  %22 = or i64 %10, 2, !dbg !630
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !631
  %24 = load i8, i8* %23, align 1, !dbg !631, !tbaa !136
  %25 = zext i8 %24 to i64, !dbg !632
  %26 = shl nuw nsw i64 %25, 40, !dbg !633
  %27 = or i64 %26, %21, !dbg !634
  %28 = or i64 %10, 3, !dbg !635
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !636
  %30 = load i8, i8* %29, align 1, !dbg !636, !tbaa !136
  %31 = zext i8 %30 to i64, !dbg !637
  %32 = shl nuw nsw i64 %31, 32, !dbg !638
  %33 = or i64 %32, %27, !dbg !639
  %34 = or i64 %10, 4, !dbg !640
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !641
  %36 = load i8, i8* %35, align 1, !dbg !641, !tbaa !136
  %37 = zext i8 %36 to i64, !dbg !642
  %38 = shl nuw nsw i64 %37, 24, !dbg !643
  %39 = or i64 %38, %33, !dbg !644
  %40 = or i64 %10, 5, !dbg !645
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !646
  %42 = load i8, i8* %41, align 1, !dbg !646, !tbaa !136
  %43 = zext i8 %42 to i64, !dbg !647
  %44 = shl nuw nsw i64 %43, 16, !dbg !648
  %45 = or i64 %44, %39, !dbg !649
  %46 = or i64 %10, 6, !dbg !650
  %47 = getelementptr inbounds i8, i8* %1, i64 %46, !dbg !651
  %48 = load i8, i8* %47, align 1, !dbg !651, !tbaa !136
  %49 = zext i8 %48 to i64, !dbg !652
  %50 = shl nuw nsw i64 %49, 8, !dbg !653
  %51 = or i64 %50, %45, !dbg !654
  %52 = or i64 %10, 7, !dbg !655
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !656
  %54 = load i8, i8* %53, align 1, !dbg !656, !tbaa !136
  %55 = zext i8 %54 to i64, !dbg !656
  %56 = or i64 %51, %55, !dbg !657
  store i64 %56, i64* %15, align 8, !dbg !657, !tbaa !199
  %57 = add nuw nsw i64 %9, 1, !dbg !658
  %58 = icmp eq i64 %57, 16, !dbg !659
  br i1 %58, label %5, label %8, !dbg !612, !llvm.loop !660

; <label>:59:                                     ; preds = %59, %5
  %60 = phi i64 [ %7, %5 ], [ %79, %59 ], !dbg !614
  %61 = phi i64 [ 16, %5 ], [ %93, %59 ]
  %62 = add nsw i64 %61, -2, !dbg !617
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %62, !dbg !617
  %64 = load i64, i64* %63, align 8, !dbg !617, !tbaa !199
  %65 = lshr i64 %64, 19, !dbg !671
  %66 = shl i64 %64, 45, !dbg !672
  %67 = or i64 %66, %65, !dbg !673
  %68 = lshr i64 %64, 61, !dbg !677
  %69 = shl i64 %64, 3, !dbg !678
  %70 = or i64 %69, %68, !dbg !679
  %71 = lshr i64 %64, 6, !dbg !617
  %72 = xor i64 %70, %71, !dbg !617
  %73 = xor i64 %72, %67, !dbg !617
  %74 = add nsw i64 %61, -7, !dbg !680
  %75 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %74, !dbg !681
  %76 = load i64, i64* %75, align 8, !dbg !681, !tbaa !199
  %77 = add nsw i64 %61, -15, !dbg !682
  %78 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %77, !dbg !682
  %79 = load i64, i64* %78, align 8, !dbg !682, !tbaa !199
  %80 = lshr i64 %79, 1, !dbg !686
  %81 = shl i64 %79, 63, !dbg !687
  %82 = or i64 %81, %80, !dbg !688
  %83 = lshr i64 %79, 8, !dbg !692
  %84 = shl i64 %79, 56, !dbg !693
  %85 = or i64 %84, %83, !dbg !694
  %86 = lshr i64 %79, 7, !dbg !682
  %87 = xor i64 %85, %86, !dbg !682
  %88 = xor i64 %87, %82, !dbg !682
  %89 = add i64 %60, %76, !dbg !695
  %90 = add i64 %89, %73, !dbg !696
  %91 = add i64 %90, %88, !dbg !697
  %92 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %61, !dbg !698
  store i64 %91, i64* %92, align 8, !dbg !699, !tbaa !199
  %93 = add nuw nsw i64 %61, 1, !dbg !700
  %94 = icmp eq i64 %93, 80, !dbg !701
  br i1 %94, label %95, label %59, !dbg !702, !llvm.loop !703

; <label>:95:                                     ; preds = %59
  %96 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 0, !dbg !705
  %97 = load i64, i64* %96, align 8, !dbg !705, !tbaa !199
  %98 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 1, !dbg !707
  %99 = load i64, i64* %98, align 8, !dbg !707, !tbaa !199
  %100 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 2, !dbg !709
  %101 = load i64, i64* %100, align 8, !dbg !709, !tbaa !199
  %102 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 3, !dbg !711
  %103 = load i64, i64* %102, align 8, !dbg !711, !tbaa !199
  %104 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 4, !dbg !713
  %105 = load i64, i64* %104, align 8, !dbg !713, !tbaa !199
  %106 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 5, !dbg !715
  %107 = load i64, i64* %106, align 8, !dbg !715, !tbaa !199
  %108 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 6, !dbg !717
  %109 = load i64, i64* %108, align 8, !dbg !717, !tbaa !199
  %110 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 7, !dbg !719
  %111 = load i64, i64* %110, align 8, !dbg !719, !tbaa !199
  br label %112, !dbg !721

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
  %122 = lshr i64 %117, 14, !dbg !727
  %123 = shl i64 %117, 50, !dbg !728
  %124 = or i64 %123, %122, !dbg !729
  %125 = lshr i64 %117, 18, !dbg !732
  %126 = shl i64 %117, 46, !dbg !733
  %127 = or i64 %126, %125, !dbg !734
  %128 = xor i64 %124, %127, !dbg !735
  %129 = lshr i64 %117, 41, !dbg !739
  %130 = shl i64 %117, 23, !dbg !740
  %131 = or i64 %130, %129, !dbg !741
  %132 = xor i64 %128, %131, !dbg !735
  %133 = add i64 %132, %114, !dbg !742
  %134 = xor i64 %115, %116, !dbg !743
  %135 = and i64 %134, %117, !dbg !743
  %136 = xor i64 %135, %115, !dbg !743
  %137 = add i64 %133, %136, !dbg !744
  %138 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %113, !dbg !745
  %139 = load i64, i64* %138, align 8, !dbg !745, !tbaa !199
  %140 = add i64 %137, %139, !dbg !746
  %141 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %113, !dbg !747
  %142 = load i64, i64* %141, align 8, !dbg !747, !tbaa !199
  %143 = add i64 %140, %142, !dbg !748
  %144 = lshr i64 %121, 28, !dbg !752
  %145 = shl i64 %121, 36, !dbg !753
  %146 = or i64 %145, %144, !dbg !754
  %147 = lshr i64 %121, 34, !dbg !757
  %148 = shl i64 %121, 30, !dbg !758
  %149 = or i64 %148, %147, !dbg !759
  %150 = xor i64 %146, %149, !dbg !760
  %151 = lshr i64 %121, 39, !dbg !764
  %152 = shl i64 %121, 25, !dbg !765
  %153 = or i64 %152, %151, !dbg !766
  %154 = xor i64 %150, %153, !dbg !760
  %155 = and i64 %120, %121, !dbg !767
  %156 = or i64 %120, %121, !dbg !767
  %157 = and i64 %119, %156, !dbg !767
  %158 = or i64 %157, %155, !dbg !767
  %159 = add i64 %154, %158, !dbg !768
  %160 = add i64 %143, %118, !dbg !770
  %161 = add i64 %159, %143, !dbg !771
  %162 = add nuw nsw i64 %113, 1, !dbg !772
  %163 = icmp eq i64 %162, 80, !dbg !773
  br i1 %163, label %164, label %112, !dbg !721, !llvm.loop !774

; <label>:164:                                    ; preds = %112
  %165 = add i64 %161, %97, !dbg !776
  store i64 %165, i64* %96, align 8, !dbg !776, !tbaa !199
  %166 = add i64 %121, %99, !dbg !777
  store i64 %166, i64* %98, align 8, !dbg !777, !tbaa !199
  %167 = add i64 %120, %101, !dbg !778
  store i64 %167, i64* %100, align 8, !dbg !778, !tbaa !199
  %168 = add i64 %119, %103, !dbg !779
  store i64 %168, i64* %102, align 8, !dbg !779, !tbaa !199
  %169 = add i64 %160, %105, !dbg !780
  store i64 %169, i64* %104, align 8, !dbg !780, !tbaa !199
  %170 = add i64 %117, %107, !dbg !781
  store i64 %170, i64* %106, align 8, !dbg !781, !tbaa !199
  %171 = add i64 %116, %109, !dbg !782
  store i64 %171, i64* %108, align 8, !dbg !782, !tbaa !199
  %172 = add i64 %115, %111, !dbg !783
  store i64 %172, i64* %110, align 8, !dbg !783, !tbaa !199
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %4) #4, !dbg !784
  ret void, !dbg !784
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
!210 = !DILocation(line: 270, column: 2, scope: !32)
!211 = !DILocation(line: 271, column: 28, scope: !32)
!212 = !DILocation(line: 271, column: 2, scope: !32)
!213 = !DILocation(line: 272, column: 2, scope: !32)
!214 = !DILocation(line: 273, column: 2, scope: !32)
!215 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !216)
!216 = distinct !DILocation(line: 276, column: 2, scope: !32)
!217 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !216)
!218 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !216)
!219 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !216)
!220 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !216)
!221 = !DILocation(line: 135, column: 10, scope: !191, inlinedAt: !216)
!222 = !DILocation(line: 277, column: 2, scope: !32)
!223 = !DILocation(line: 278, column: 2, scope: !32)
!224 = !DILocalVariable(name: "s", arg: 1, scope: !225, file: !3, line: 199, type: !194)
!225 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 199, type: !226, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !230)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !194, !59, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!230 = !{!224, !231, !232, !233}
!231 = !DILocalVariable(name: "n", arg: 2, scope: !225, file: !3, line: 199, type: !59)
!232 = !DILocalVariable(name: "md", arg: 3, scope: !225, file: !3, line: 199, type: !228)
!233 = !DILocalVariable(name: "i", scope: !225, file: !3, line: 201, type: !59)
!234 = !DILocation(line: 199, column: 35, scope: !225, inlinedAt: !235)
!235 = distinct !DILocation(line: 279, column: 2, scope: !32)
!236 = !DILocation(line: 199, column: 51, scope: !225, inlinedAt: !235)
!237 = !DILocation(line: 199, column: 66, scope: !225, inlinedAt: !235)
!238 = !DILocation(line: 201, column: 15, scope: !225, inlinedAt: !235)
!239 = !DILocation(line: 203, column: 16, scope: !240, inlinedAt: !235)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 203, column: 2)
!241 = distinct !DILexicalBlock(scope: !225, file: !3, line: 203, column: 2)
!242 = !DILocation(line: 203, column: 2, scope: !241, inlinedAt: !235)
!243 = !DILocation(line: 204, column: 3, scope: !240, inlinedAt: !235)
!244 = !DILocation(line: 203, column: 24, scope: !240, inlinedAt: !235)
!245 = distinct !{!245, !246, !247}
!246 = !DILocation(line: 203, column: 2, scope: !241)
!247 = !DILocation(line: 204, column: 26, scope: !241)
!248 = !DILocation(line: 205, column: 23, scope: !225, inlinedAt: !235)
!249 = !DILocation(line: 205, column: 2, scope: !225, inlinedAt: !235)
!250 = !DILocation(line: 280, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 280, column: 2)
!252 = distinct !DILexicalBlock(scope: !32, file: !3, line: 280, column: 2)
!253 = !DILocation(line: 280, column: 2, scope: !252)
!254 = !DILocation(line: 281, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 281, column: 7)
!256 = !DILocation(line: 281, column: 7, scope: !251)
!257 = !DILocation(line: 282, column: 4, scope: !255)
!258 = !DILocation(line: 284, column: 4, scope: !255)
!259 = !DILocation(line: 280, column: 26, scope: !251)
!260 = distinct !{!260, !253, !261}
!261 = !DILocation(line: 284, column: 33, scope: !252)
!262 = !DILocation(line: 285, column: 2, scope: !32)
!263 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !264)
!264 = distinct !DILocation(line: 288, column: 2, scope: !32)
!265 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !264)
!266 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !264)
!267 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !264)
!268 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !264)
!269 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !264)
!270 = !DILocation(line: 289, column: 2, scope: !271)
!271 = distinct !DILexicalBlock(scope: !32, file: !3, line: 289, column: 2)
!272 = !DILocation(line: 290, column: 3, scope: !273)
!273 = distinct !DILexicalBlock(scope: !271, file: !3, line: 289, column: 2)
!274 = !DILocation(line: 289, column: 25, scope: !273)
!275 = !DILocation(line: 289, column: 16, scope: !273)
!276 = distinct !{!276, !270, !277}
!277 = !DILocation(line: 290, column: 32, scope: !271)
!278 = !DILocation(line: 291, column: 2, scope: !32)
!279 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !280)
!280 = distinct !DILocation(line: 294, column: 2, scope: !32)
!281 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !280)
!282 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !280)
!283 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !280)
!284 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !280)
!285 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !280)
!286 = !DILocation(line: 295, column: 2, scope: !287)
!287 = distinct !DILexicalBlock(scope: !32, file: !3, line: 295, column: 2)
!288 = !DILocation(line: 296, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !287, file: !3, line: 295, column: 2)
!290 = !DILocation(line: 295, column: 31, scope: !289)
!291 = !DILocation(line: 295, column: 23, scope: !289)
!292 = !DILocation(line: 295, column: 21, scope: !289)
!293 = !DILocation(line: 295, column: 16, scope: !289)
!294 = distinct !{!294, !286, !295}
!295 = !DILocation(line: 296, column: 33, scope: !287)
!296 = !DILocation(line: 297, column: 2, scope: !32)
!297 = !DILocation(line: 300, column: 16, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 300, column: 2)
!299 = distinct !DILexicalBlock(scope: !32, file: !3, line: 300, column: 2)
!300 = !DILocation(line: 300, column: 2, scope: !299)
!301 = !DILocation(line: 126, column: 40, scope: !191, inlinedAt: !302)
!302 = distinct !DILocation(line: 301, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !3, line: 300, column: 26)
!304 = !DILocation(line: 128, column: 9, scope: !191, inlinedAt: !302)
!305 = !DILocation(line: 130, column: 10, scope: !191, inlinedAt: !302)
!306 = !DILocation(line: 132, column: 10, scope: !191, inlinedAt: !302)
!307 = !DILocation(line: 134, column: 10, scope: !191, inlinedAt: !302)
!308 = !DILocation(line: 136, column: 10, scope: !191, inlinedAt: !302)
!309 = !DILocation(line: 302, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !3, line: 302, column: 7)
!311 = !DILocation(line: 302, column: 7, scope: !303)
!312 = !DILocation(line: 199, column: 35, scope: !225, inlinedAt: !313)
!313 = distinct !DILocation(line: 303, column: 4, scope: !310)
!314 = !DILocation(line: 199, column: 51, scope: !225, inlinedAt: !313)
!315 = !DILocation(line: 199, column: 66, scope: !225, inlinedAt: !313)
!316 = !DILocation(line: 201, column: 15, scope: !225, inlinedAt: !313)
!317 = !DILocation(line: 203, column: 2, scope: !241, inlinedAt: !313)
!318 = !DILocation(line: 204, column: 3, scope: !240, inlinedAt: !313)
!319 = !DILocation(line: 203, column: 24, scope: !240, inlinedAt: !313)
!320 = !DILocation(line: 203, column: 16, scope: !240, inlinedAt: !313)
!321 = !DILocation(line: 0, scope: !240, inlinedAt: !313)
!322 = !DILocation(line: 205, column: 23, scope: !225, inlinedAt: !313)
!323 = !DILocation(line: 205, column: 2, scope: !225, inlinedAt: !313)
!324 = !DILocation(line: 303, column: 4, scope: !310)
!325 = !DILocation(line: 305, column: 4, scope: !310)
!326 = !DILocation(line: 306, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !303, file: !3, line: 306, column: 7)
!328 = !DILocation(line: 306, column: 7, scope: !303)
!329 = !DILocation(line: 307, column: 4, scope: !327)
!330 = !DILocation(line: 308, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !303, file: !3, line: 308, column: 7)
!332 = !DILocation(line: 308, column: 7, scope: !303)
!333 = !DILocation(line: 199, column: 35, scope: !225, inlinedAt: !334)
!334 = distinct !DILocation(line: 309, column: 4, scope: !331)
!335 = !DILocation(line: 199, column: 51, scope: !225, inlinedAt: !334)
!336 = !DILocation(line: 199, column: 66, scope: !225, inlinedAt: !334)
!337 = !DILocation(line: 201, column: 15, scope: !225, inlinedAt: !334)
!338 = !DILocation(line: 203, column: 2, scope: !241, inlinedAt: !334)
!339 = !DILocation(line: 204, column: 3, scope: !240, inlinedAt: !334)
!340 = !DILocation(line: 203, column: 24, scope: !240, inlinedAt: !334)
!341 = !DILocation(line: 203, column: 16, scope: !240, inlinedAt: !334)
!342 = !DILocation(line: 0, scope: !240, inlinedAt: !334)
!343 = !DILocation(line: 205, column: 23, scope: !225, inlinedAt: !334)
!344 = !DILocation(line: 205, column: 2, scope: !225, inlinedAt: !334)
!345 = !DILocation(line: 309, column: 4, scope: !331)
!346 = !DILocation(line: 310, column: 7, scope: !303)
!347 = !DILocation(line: 311, column: 4, scope: !348)
!348 = distinct !DILexicalBlock(scope: !303, file: !3, line: 310, column: 7)
!349 = !DILocation(line: 199, column: 35, scope: !225, inlinedAt: !350)
!350 = distinct !DILocation(line: 313, column: 4, scope: !348)
!351 = !DILocation(line: 199, column: 51, scope: !225, inlinedAt: !350)
!352 = !DILocation(line: 199, column: 66, scope: !225, inlinedAt: !350)
!353 = !DILocation(line: 201, column: 15, scope: !225, inlinedAt: !350)
!354 = !DILocation(line: 203, column: 2, scope: !241, inlinedAt: !350)
!355 = !DILocation(line: 204, column: 3, scope: !240, inlinedAt: !350)
!356 = !DILocation(line: 203, column: 24, scope: !240, inlinedAt: !350)
!357 = !DILocation(line: 203, column: 16, scope: !240, inlinedAt: !350)
!358 = !DILocation(line: 0, scope: !240, inlinedAt: !350)
!359 = !DILocation(line: 205, column: 23, scope: !225, inlinedAt: !350)
!360 = !DILocation(line: 205, column: 2, scope: !225, inlinedAt: !350)
!361 = !DILocation(line: 314, column: 3, scope: !303)
!362 = !DILocation(line: 300, column: 22, scope: !298)
!363 = distinct !{!363, !300, !364}
!364 = !DILocation(line: 315, column: 2, scope: !299)
!365 = !DILocation(line: 215, column: 8, scope: !32)
!366 = !DILocation(line: 319, column: 7, scope: !32)
!367 = !DILocation(line: 319, column: 4, scope: !32)
!368 = !DILocation(line: 327, column: 2, scope: !369)
!369 = distinct !DILexicalBlock(scope: !32, file: !3, line: 327, column: 2)
!370 = !DILocation(line: 328, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !369, file: !3, line: 327, column: 2)
!372 = !DILocation(line: 328, column: 4, scope: !371)
!373 = !DILocation(line: 328, column: 18, scope: !371)
!374 = !DILocation(line: 328, column: 28, scope: !371)
!375 = !DILocation(line: 328, column: 25, scope: !371)
!376 = !DILocation(line: 328, column: 39, scope: !371)
!377 = !DILocation(line: 328, column: 23, scope: !371)
!378 = !DILocation(line: 328, column: 47, scope: !371)
!379 = !DILocation(line: 328, column: 44, scope: !371)
!380 = !DILocation(line: 328, column: 43, scope: !371)
!381 = !DILocalVariable(name: "s", arg: 1, scope: !382, file: !3, line: 180, type: !6)
!382 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 180, type: !383, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!6, !6, !59, !13}
!385 = !{!381, !386, !387}
!386 = !DILocalVariable(name: "u", arg: 2, scope: !382, file: !3, line: 180, type: !59)
!387 = !DILocalVariable(name: "n", arg: 3, scope: !382, file: !3, line: 180, type: !13)
!388 = !DILocation(line: 180, column: 25, scope: !382, inlinedAt: !389)
!389 = distinct !DILocation(line: 327, column: 27, scope: !371)
!390 = !DILocation(line: 180, column: 41, scope: !382, inlinedAt: !389)
!391 = !DILocation(line: 180, column: 48, scope: !382, inlinedAt: !389)
!392 = !DILocation(line: 183, column: 16, scope: !393, inlinedAt: !389)
!393 = distinct !DILexicalBlock(scope: !382, file: !3, line: 182, column: 19)
!394 = !DILocation(line: 183, column: 10, scope: !393, inlinedAt: !389)
!395 = !DILocation(line: 183, column: 5, scope: !393, inlinedAt: !389)
!396 = !DILocation(line: 183, column: 8, scope: !393, inlinedAt: !389)
!397 = !DILocation(line: 184, column: 5, scope: !393, inlinedAt: !389)
!398 = !DILocation(line: 327, column: 19, scope: !371)
!399 = !DILocation(line: 327, column: 13, scope: !371)
!400 = distinct !{!400, !368, !401}
!401 = !DILocation(line: 328, column: 61, scope: !369)
!402 = !DILocation(line: 352, column: 14, scope: !32)
!403 = !DILocation(line: 180, column: 25, scope: !382, inlinedAt: !404)
!404 = distinct !DILocation(line: 352, column: 6, scope: !32)
!405 = !DILocation(line: 180, column: 41, scope: !382, inlinedAt: !404)
!406 = !DILocation(line: 180, column: 48, scope: !382, inlinedAt: !404)
!407 = !DILocation(line: 183, column: 16, scope: !393, inlinedAt: !404)
!408 = !DILocation(line: 183, column: 10, scope: !393, inlinedAt: !404)
!409 = !DILocation(line: 183, column: 5, scope: !393, inlinedAt: !404)
!410 = !DILocation(line: 183, column: 8, scope: !393, inlinedAt: !404)
!411 = !DILocation(line: 184, column: 5, scope: !393, inlinedAt: !404)
!412 = !DILocation(line: 353, column: 5, scope: !32)
!413 = !DILocation(line: 354, column: 2, scope: !32)
!414 = !DILocation(line: 0, scope: !164)
!415 = !DILocation(line: 355, column: 1, scope: !32)
!416 = distinct !DISubprogram(name: "sha512_update", scope: !3, file: !3, line: 156, type: !417, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !194, !228, !18}
!419 = !{!420, !421, !422, !423, !426}
!420 = !DILocalVariable(name: "s", arg: 1, scope: !416, file: !3, line: 156, type: !194)
!421 = !DILocalVariable(name: "m", arg: 2, scope: !416, file: !3, line: 156, type: !228)
!422 = !DILocalVariable(name: "len", arg: 3, scope: !416, file: !3, line: 156, type: !18)
!423 = !DILocalVariable(name: "p", scope: !416, file: !3, line: 158, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!426 = !DILocalVariable(name: "r", scope: !416, file: !3, line: 159, type: !59)
!427 = !DILocation(line: 156, column: 42, scope: !416)
!428 = !DILocation(line: 156, column: 57, scope: !416)
!429 = !DILocation(line: 156, column: 74, scope: !416)
!430 = !DILocation(line: 158, column: 17, scope: !416)
!431 = !DILocation(line: 159, column: 18, scope: !416)
!432 = !{!433, !200, i64 0}
!433 = !{!"sha512", !200, i64 0, !137, i64 8, !137, i64 72}
!434 = !DILocation(line: 159, column: 15, scope: !416)
!435 = !DILocation(line: 159, column: 11, scope: !416)
!436 = !DILocation(line: 161, column: 9, scope: !416)
!437 = !DILocation(line: 162, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !416, file: !3, line: 162, column: 6)
!439 = !DILocation(line: 162, column: 6, scope: !416)
!440 = !DILocation(line: 163, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 163, column: 7)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 162, column: 9)
!443 = !DILocation(line: 163, column: 13, scope: !441)
!444 = !DILocation(line: 163, column: 11, scope: !441)
!445 = !DILocation(line: 0, scope: !442)
!446 = !DILocation(line: 163, column: 7, scope: !442)
!447 = !DILocation(line: 164, column: 4, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !3, line: 163, column: 22)
!449 = !DILocation(line: 165, column: 4, scope: !448)
!450 = !DILocation(line: 167, column: 3, scope: !442)
!451 = !DILocation(line: 168, column: 7, scope: !442)
!452 = !DILocation(line: 169, column: 5, scope: !442)
!453 = !DILocation(line: 170, column: 3, scope: !442)
!454 = !DILocation(line: 171, column: 2, scope: !442)
!455 = !DILocation(line: 0, scope: !416)
!456 = !DILocation(line: 172, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 172, column: 2)
!458 = distinct !DILexicalBlock(scope: !416, file: !3, line: 172, column: 2)
!459 = !DILocation(line: 172, column: 2, scope: !458)
!460 = !DILocation(line: 173, column: 3, scope: !457)
!461 = !DILocation(line: 172, column: 25, scope: !457)
!462 = !DILocation(line: 172, column: 35, scope: !457)
!463 = distinct !{!463, !459, !464}
!464 = !DILocation(line: 173, column: 20, scope: !458)
!465 = !DILocation(line: 174, column: 9, scope: !416)
!466 = !DILocation(line: 0, scope: !457)
!467 = !DILocation(line: 174, column: 2, scope: !416)
!468 = !DILocation(line: 175, column: 1, scope: !416)
!469 = distinct !DISubprogram(name: "sha512_sum", scope: !3, file: !3, line: 139, type: !470, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !473)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !194, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!473 = !{!474, !475, !476}
!474 = !DILocalVariable(name: "s", arg: 1, scope: !469, file: !3, line: 139, type: !194)
!475 = !DILocalVariable(name: "md", arg: 2, scope: !469, file: !3, line: 139, type: !472)
!476 = !DILocalVariable(name: "i", scope: !469, file: !3, line: 141, type: !13)
!477 = !DILocation(line: 139, column: 39, scope: !469)
!478 = !DILocation(line: 139, column: 51, scope: !469)
!479 = !DILocalVariable(name: "s", arg: 1, scope: !480, file: !3, line: 103, type: !194)
!480 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 103, type: !192, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !481)
!481 = !{!479, !482}
!482 = !DILocalVariable(name: "r", scope: !480, file: !3, line: 105, type: !59)
!483 = !DILocation(line: 103, column: 32, scope: !480, inlinedAt: !484)
!484 = distinct !DILocation(line: 143, column: 2, scope: !469)
!485 = !DILocation(line: 105, column: 18, scope: !480, inlinedAt: !484)
!486 = !DILocation(line: 105, column: 15, scope: !480, inlinedAt: !484)
!487 = !DILocation(line: 105, column: 11, scope: !480, inlinedAt: !484)
!488 = !DILocation(line: 107, column: 10, scope: !480, inlinedAt: !484)
!489 = !DILocation(line: 107, column: 2, scope: !480, inlinedAt: !484)
!490 = !DILocation(line: 107, column: 14, scope: !480, inlinedAt: !484)
!491 = !DILocation(line: 108, column: 8, scope: !492, inlinedAt: !484)
!492 = distinct !DILexicalBlock(scope: !480, file: !3, line: 108, column: 6)
!493 = !DILocation(line: 0, scope: !480, inlinedAt: !484)
!494 = !DILocation(line: 108, column: 6, scope: !480, inlinedAt: !484)
!495 = !DILocation(line: 109, column: 17, scope: !496, inlinedAt: !484)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 108, column: 15)
!497 = !DILocation(line: 109, column: 29, scope: !496, inlinedAt: !484)
!498 = !DILocation(line: 109, column: 25, scope: !496, inlinedAt: !484)
!499 = !DILocation(line: 109, column: 3, scope: !496, inlinedAt: !484)
!500 = !DILocation(line: 111, column: 3, scope: !496, inlinedAt: !484)
!501 = !DILocation(line: 112, column: 2, scope: !496, inlinedAt: !484)
!502 = !DILocation(line: 113, column: 16, scope: !480, inlinedAt: !484)
!503 = !DILocation(line: 113, column: 28, scope: !480, inlinedAt: !484)
!504 = !DILocation(line: 113, column: 24, scope: !480, inlinedAt: !484)
!505 = !DILocation(line: 113, column: 2, scope: !480, inlinedAt: !484)
!506 = !DILocation(line: 114, column: 9, scope: !480, inlinedAt: !484)
!507 = !DILocation(line: 115, column: 23, scope: !480, inlinedAt: !484)
!508 = !DILocation(line: 115, column: 16, scope: !480, inlinedAt: !484)
!509 = !DILocation(line: 115, column: 2, scope: !480, inlinedAt: !484)
!510 = !DILocation(line: 115, column: 14, scope: !480, inlinedAt: !484)
!511 = !DILocation(line: 116, column: 23, scope: !480, inlinedAt: !484)
!512 = !DILocation(line: 116, column: 16, scope: !480, inlinedAt: !484)
!513 = !DILocation(line: 116, column: 2, scope: !480, inlinedAt: !484)
!514 = !DILocation(line: 116, column: 14, scope: !480, inlinedAt: !484)
!515 = !DILocation(line: 117, column: 23, scope: !480, inlinedAt: !484)
!516 = !DILocation(line: 117, column: 16, scope: !480, inlinedAt: !484)
!517 = !DILocation(line: 117, column: 2, scope: !480, inlinedAt: !484)
!518 = !DILocation(line: 117, column: 14, scope: !480, inlinedAt: !484)
!519 = !DILocation(line: 118, column: 23, scope: !480, inlinedAt: !484)
!520 = !DILocation(line: 118, column: 16, scope: !480, inlinedAt: !484)
!521 = !DILocation(line: 118, column: 2, scope: !480, inlinedAt: !484)
!522 = !DILocation(line: 118, column: 14, scope: !480, inlinedAt: !484)
!523 = !DILocation(line: 119, column: 23, scope: !480, inlinedAt: !484)
!524 = !DILocation(line: 119, column: 16, scope: !480, inlinedAt: !484)
!525 = !DILocation(line: 119, column: 2, scope: !480, inlinedAt: !484)
!526 = !DILocation(line: 119, column: 14, scope: !480, inlinedAt: !484)
!527 = !DILocation(line: 120, column: 23, scope: !480, inlinedAt: !484)
!528 = !DILocation(line: 120, column: 16, scope: !480, inlinedAt: !484)
!529 = !DILocation(line: 120, column: 2, scope: !480, inlinedAt: !484)
!530 = !DILocation(line: 120, column: 14, scope: !480, inlinedAt: !484)
!531 = !DILocation(line: 121, column: 23, scope: !480, inlinedAt: !484)
!532 = !DILocation(line: 121, column: 16, scope: !480, inlinedAt: !484)
!533 = !DILocation(line: 121, column: 2, scope: !480, inlinedAt: !484)
!534 = !DILocation(line: 121, column: 14, scope: !480, inlinedAt: !484)
!535 = !DILocation(line: 122, column: 16, scope: !480, inlinedAt: !484)
!536 = !DILocation(line: 122, column: 2, scope: !480, inlinedAt: !484)
!537 = !DILocation(line: 122, column: 14, scope: !480, inlinedAt: !484)
!538 = !DILocation(line: 123, column: 2, scope: !480, inlinedAt: !484)
!539 = !DILocation(line: 141, column: 6, scope: !469)
!540 = !DILocation(line: 144, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !469, file: !3, line: 144, column: 2)
!542 = !DILocation(line: 145, column: 13, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 144, column: 26)
!544 = distinct !DILexicalBlock(scope: !541, file: !3, line: 144, column: 2)
!545 = !DILocation(line: 145, column: 21, scope: !543)
!546 = !DILocation(line: 145, column: 7, scope: !543)
!547 = !DILocation(line: 145, column: 3, scope: !543)
!548 = !DILocation(line: 145, column: 11, scope: !543)
!549 = !DILocation(line: 146, column: 15, scope: !543)
!550 = !DILocation(line: 146, column: 23, scope: !543)
!551 = !DILocation(line: 146, column: 9, scope: !543)
!552 = !DILocation(line: 146, column: 3, scope: !543)
!553 = !DILocation(line: 146, column: 13, scope: !543)
!554 = !DILocation(line: 147, column: 15, scope: !543)
!555 = !DILocation(line: 147, column: 23, scope: !543)
!556 = !DILocation(line: 147, column: 9, scope: !543)
!557 = !DILocation(line: 147, column: 3, scope: !543)
!558 = !DILocation(line: 147, column: 13, scope: !543)
!559 = !DILocation(line: 148, column: 15, scope: !543)
!560 = !DILocation(line: 148, column: 23, scope: !543)
!561 = !DILocation(line: 148, column: 9, scope: !543)
!562 = !DILocation(line: 148, column: 3, scope: !543)
!563 = !DILocation(line: 148, column: 13, scope: !543)
!564 = !DILocation(line: 149, column: 15, scope: !543)
!565 = !DILocation(line: 149, column: 23, scope: !543)
!566 = !DILocation(line: 149, column: 9, scope: !543)
!567 = !DILocation(line: 149, column: 3, scope: !543)
!568 = !DILocation(line: 149, column: 13, scope: !543)
!569 = !DILocation(line: 150, column: 15, scope: !543)
!570 = !DILocation(line: 150, column: 23, scope: !543)
!571 = !DILocation(line: 150, column: 9, scope: !543)
!572 = !DILocation(line: 150, column: 3, scope: !543)
!573 = !DILocation(line: 150, column: 13, scope: !543)
!574 = !DILocation(line: 151, column: 15, scope: !543)
!575 = !DILocation(line: 151, column: 23, scope: !543)
!576 = !DILocation(line: 151, column: 9, scope: !543)
!577 = !DILocation(line: 151, column: 3, scope: !543)
!578 = !DILocation(line: 151, column: 13, scope: !543)
!579 = !DILocation(line: 152, column: 15, scope: !543)
!580 = !DILocation(line: 152, column: 9, scope: !543)
!581 = !DILocation(line: 152, column: 3, scope: !543)
!582 = !DILocation(line: 152, column: 13, scope: !543)
!583 = !DILocation(line: 144, column: 22, scope: !544)
!584 = !DILocation(line: 144, column: 16, scope: !544)
!585 = distinct !{!585, !540, !586}
!586 = !DILocation(line: 153, column: 2, scope: !541)
!587 = !DILocation(line: 154, column: 1, scope: !469)
!588 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 56, type: !589, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !194, !424}
!591 = !{!592, !593, !594, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!592 = !DILocalVariable(name: "s", arg: 1, scope: !588, file: !3, line: 56, type: !194)
!593 = !DILocalVariable(name: "buf", arg: 2, scope: !588, file: !3, line: 56, type: !424)
!594 = !DILocalVariable(name: "W", scope: !588, file: !3, line: 58, type: !595)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5120, elements: !82)
!596 = !DILocalVariable(name: "t1", scope: !588, file: !3, line: 58, type: !14)
!597 = !DILocalVariable(name: "t2", scope: !588, file: !3, line: 58, type: !14)
!598 = !DILocalVariable(name: "a", scope: !588, file: !3, line: 58, type: !14)
!599 = !DILocalVariable(name: "b", scope: !588, file: !3, line: 58, type: !14)
!600 = !DILocalVariable(name: "c", scope: !588, file: !3, line: 58, type: !14)
!601 = !DILocalVariable(name: "d", scope: !588, file: !3, line: 58, type: !14)
!602 = !DILocalVariable(name: "e", scope: !588, file: !3, line: 58, type: !14)
!603 = !DILocalVariable(name: "f", scope: !588, file: !3, line: 58, type: !14)
!604 = !DILocalVariable(name: "g", scope: !588, file: !3, line: 58, type: !14)
!605 = !DILocalVariable(name: "h", scope: !588, file: !3, line: 58, type: !14)
!606 = !DILocalVariable(name: "i", scope: !588, file: !3, line: 59, type: !13)
!607 = !DILocation(line: 56, column: 41, scope: !588)
!608 = !DILocation(line: 56, column: 59, scope: !588)
!609 = !DILocation(line: 58, column: 2, scope: !588)
!610 = !DILocation(line: 58, column: 11, scope: !588)
!611 = !DILocation(line: 59, column: 6, scope: !588)
!612 = !DILocation(line: 61, column: 2, scope: !613)
!613 = distinct !DILexicalBlock(scope: !588, file: !3, line: 61, column: 2)
!614 = !DILocation(line: 72, column: 46, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 71, column: 2)
!616 = distinct !DILexicalBlock(scope: !588, file: !3, line: 71, column: 2)
!617 = !DILocation(line: 72, column: 10, scope: !615)
!618 = !DILocation(line: 62, column: 25, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 61, column: 27)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 61, column: 2)
!621 = !DILocation(line: 62, column: 20, scope: !619)
!622 = !DILocation(line: 62, column: 10, scope: !619)
!623 = !DILocation(line: 62, column: 28, scope: !619)
!624 = !DILocation(line: 62, column: 3, scope: !619)
!625 = !DILocation(line: 63, column: 28, scope: !619)
!626 = !DILocation(line: 63, column: 21, scope: !619)
!627 = !DILocation(line: 63, column: 11, scope: !619)
!628 = !DILocation(line: 63, column: 31, scope: !619)
!629 = !DILocation(line: 63, column: 8, scope: !619)
!630 = !DILocation(line: 64, column: 28, scope: !619)
!631 = !DILocation(line: 64, column: 21, scope: !619)
!632 = !DILocation(line: 64, column: 11, scope: !619)
!633 = !DILocation(line: 64, column: 31, scope: !619)
!634 = !DILocation(line: 64, column: 8, scope: !619)
!635 = !DILocation(line: 65, column: 28, scope: !619)
!636 = !DILocation(line: 65, column: 21, scope: !619)
!637 = !DILocation(line: 65, column: 11, scope: !619)
!638 = !DILocation(line: 65, column: 31, scope: !619)
!639 = !DILocation(line: 65, column: 8, scope: !619)
!640 = !DILocation(line: 66, column: 28, scope: !619)
!641 = !DILocation(line: 66, column: 21, scope: !619)
!642 = !DILocation(line: 66, column: 11, scope: !619)
!643 = !DILocation(line: 66, column: 31, scope: !619)
!644 = !DILocation(line: 66, column: 8, scope: !619)
!645 = !DILocation(line: 67, column: 28, scope: !619)
!646 = !DILocation(line: 67, column: 21, scope: !619)
!647 = !DILocation(line: 67, column: 11, scope: !619)
!648 = !DILocation(line: 67, column: 31, scope: !619)
!649 = !DILocation(line: 67, column: 8, scope: !619)
!650 = !DILocation(line: 68, column: 28, scope: !619)
!651 = !DILocation(line: 68, column: 21, scope: !619)
!652 = !DILocation(line: 68, column: 11, scope: !619)
!653 = !DILocation(line: 68, column: 31, scope: !619)
!654 = !DILocation(line: 68, column: 8, scope: !619)
!655 = !DILocation(line: 69, column: 18, scope: !619)
!656 = !DILocation(line: 69, column: 11, scope: !619)
!657 = !DILocation(line: 69, column: 8, scope: !619)
!658 = !DILocation(line: 61, column: 23, scope: !620)
!659 = !DILocation(line: 61, column: 16, scope: !620)
!660 = distinct !{!660, !612, !661}
!661 = !DILocation(line: 70, column: 2, scope: !613)
!662 = !DILocalVariable(name: "n", arg: 1, scope: !663, file: !3, line: 25, type: !14)
!663 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 25, type: !664, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!14, !14, !13}
!666 = !{!662, !667}
!667 = !DILocalVariable(name: "k", arg: 2, scope: !663, file: !3, line: 25, type: !13)
!668 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !669)
!669 = distinct !DILocation(line: 72, column: 10, scope: !615)
!670 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !669)
!671 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !669)
!672 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !669)
!673 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !669)
!674 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !675)
!675 = distinct !DILocation(line: 72, column: 10, scope: !615)
!676 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !675)
!677 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !675)
!678 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !675)
!679 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !675)
!680 = !DILocation(line: 72, column: 26, scope: !615)
!681 = !DILocation(line: 72, column: 23, scope: !615)
!682 = !DILocation(line: 72, column: 32, scope: !615)
!683 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !684)
!684 = distinct !DILocation(line: 72, column: 32, scope: !615)
!685 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !684)
!686 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !684)
!687 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !684)
!688 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !684)
!689 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !690)
!690 = distinct !DILocation(line: 72, column: 32, scope: !615)
!691 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !690)
!692 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !690)
!693 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !690)
!694 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !690)
!695 = !DILocation(line: 72, column: 21, scope: !615)
!696 = !DILocation(line: 72, column: 30, scope: !615)
!697 = !DILocation(line: 72, column: 44, scope: !615)
!698 = !DILocation(line: 72, column: 3, scope: !615)
!699 = !DILocation(line: 72, column: 8, scope: !615)
!700 = !DILocation(line: 71, column: 18, scope: !615)
!701 = !DILocation(line: 71, column: 11, scope: !615)
!702 = !DILocation(line: 71, column: 2, scope: !616)
!703 = distinct !{!703, !702, !704}
!704 = !DILocation(line: 72, column: 52, scope: !616)
!705 = !DILocation(line: 73, column: 6, scope: !588)
!706 = !DILocation(line: 58, column: 26, scope: !588)
!707 = !DILocation(line: 74, column: 6, scope: !588)
!708 = !DILocation(line: 58, column: 29, scope: !588)
!709 = !DILocation(line: 75, column: 6, scope: !588)
!710 = !DILocation(line: 58, column: 32, scope: !588)
!711 = !DILocation(line: 76, column: 6, scope: !588)
!712 = !DILocation(line: 58, column: 35, scope: !588)
!713 = !DILocation(line: 77, column: 6, scope: !588)
!714 = !DILocation(line: 58, column: 38, scope: !588)
!715 = !DILocation(line: 78, column: 6, scope: !588)
!716 = !DILocation(line: 58, column: 41, scope: !588)
!717 = !DILocation(line: 79, column: 6, scope: !588)
!718 = !DILocation(line: 58, column: 44, scope: !588)
!719 = !DILocation(line: 80, column: 6, scope: !588)
!720 = !DILocation(line: 58, column: 47, scope: !588)
!721 = !DILocation(line: 81, column: 2, scope: !722)
!722 = distinct !DILexicalBlock(scope: !588, file: !3, line: 81, column: 2)
!723 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !724)
!724 = distinct !DILocation(line: 82, column: 12, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 81, column: 27)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 81, column: 2)
!727 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !724)
!728 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !724)
!729 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !724)
!730 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !731)
!731 = distinct !DILocation(line: 82, column: 12, scope: !725)
!732 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !731)
!733 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !731)
!734 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !731)
!735 = !DILocation(line: 82, column: 12, scope: !725)
!736 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !737)
!737 = distinct !DILocation(line: 82, column: 12, scope: !725)
!738 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !737)
!739 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !737)
!740 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !737)
!741 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !737)
!742 = !DILocation(line: 82, column: 10, scope: !725)
!743 = !DILocation(line: 82, column: 20, scope: !725)
!744 = !DILocation(line: 82, column: 18, scope: !725)
!745 = !DILocation(line: 82, column: 32, scope: !725)
!746 = !DILocation(line: 82, column: 30, scope: !725)
!747 = !DILocation(line: 82, column: 39, scope: !725)
!748 = !DILocation(line: 82, column: 37, scope: !725)
!749 = !DILocation(line: 58, column: 18, scope: !588)
!750 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !751)
!751 = distinct !DILocation(line: 83, column: 8, scope: !725)
!752 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !751)
!753 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !751)
!754 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !751)
!755 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !756)
!756 = distinct !DILocation(line: 83, column: 8, scope: !725)
!757 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !756)
!758 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !756)
!759 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !756)
!760 = !DILocation(line: 83, column: 8, scope: !725)
!761 = !DILocation(line: 25, column: 30, scope: !663, inlinedAt: !762)
!762 = distinct !DILocation(line: 83, column: 8, scope: !725)
!763 = !DILocation(line: 25, column: 37, scope: !663, inlinedAt: !762)
!764 = !DILocation(line: 25, column: 52, scope: !663, inlinedAt: !762)
!765 = !DILocation(line: 25, column: 63, scope: !663, inlinedAt: !762)
!766 = !DILocation(line: 25, column: 58, scope: !663, inlinedAt: !762)
!767 = !DILocation(line: 83, column: 16, scope: !725)
!768 = !DILocation(line: 83, column: 14, scope: !725)
!769 = !DILocation(line: 58, column: 22, scope: !588)
!770 = !DILocation(line: 87, column: 9, scope: !725)
!771 = !DILocation(line: 91, column: 10, scope: !725)
!772 = !DILocation(line: 81, column: 23, scope: !726)
!773 = !DILocation(line: 81, column: 16, scope: !726)
!774 = distinct !{!774, !721, !775}
!775 = !DILocation(line: 92, column: 2, scope: !722)
!776 = !DILocation(line: 93, column: 10, scope: !588)
!777 = !DILocation(line: 94, column: 10, scope: !588)
!778 = !DILocation(line: 95, column: 10, scope: !588)
!779 = !DILocation(line: 96, column: 10, scope: !588)
!780 = !DILocation(line: 97, column: 10, scope: !588)
!781 = !DILocation(line: 98, column: 10, scope: !588)
!782 = !DILocation(line: 99, column: 10, scope: !588)
!783 = !DILocation(line: 100, column: 10, scope: !588)
!784 = !DILocation(line: 101, column: 1, scope: !588)
