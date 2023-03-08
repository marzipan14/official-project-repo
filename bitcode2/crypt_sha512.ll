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
  %8 = icmp eq i8* %6, null, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  br i1 %8, label %15, label %9, !dbg !115

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8* %7, %5, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %10, label %11, label %15, !dbg !117

; <label>:11:                                     ; preds = %9
  %12 = call i32 @memcmp(i8* nonnull %5, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @__crypt_sha512.testhash, i64 0, i64 0), i64 116) #6, !dbg !118
  %13 = icmp eq i32 %12, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %14 = select i1 %13, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), !dbg !119
  br label %15, !dbg !119

; <label>:15:                                     ; preds = %11, %3, %9
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %3 ], [ %14, %11 ], !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  ret i8* %16, !dbg !122
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
  %10 = bitcast %struct.sha512* %4 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %10) #4, !dbg !126
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #4, !dbg !127
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #4, !dbg !127
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %13) #4, !dbg !127
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %14) #4, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 20, i1 false), !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %15, !dbg !136

; <label>:15:                                     ; preds = %268, %3
  %16 = phi i32 [ 0, %3 ], [ %269, %268 ]
  %17 = zext i32 %16 to i64, !dbg !138
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !138
  %19 = load i8, i8* %18, align 1, !dbg !138, !tbaa !139
  %20 = icmp eq i8 %19, 0, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %20, label %25, label %21, !dbg !142

; <label>:21:                                     ; preds = %15
  %22 = or i32 %16, 1, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  %23 = icmp ult i32 %22, 257, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %23, label %263, label %24, !dbg !136, !llvm.loop !146

; <label>:24:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br label %261, !dbg !149

; <label>:25:                                     ; preds = %263, %15
  %26 = phi i32 [ %16, %15 ], [ %22, %263 ]
  %27 = zext i32 %26 to i64, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  %28 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #6, !dbg !152
  %29 = icmp eq i32 %28, 0, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br i1 %29, label %30, label %261, !dbg !155

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !156
  %32 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7) #6, !dbg !159
  %33 = icmp eq i32 %32, 0, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br i1 %33, label %34, label %61, !dbg !161

; <label>:34:                                     ; preds = %30
  %35 = bitcast i8** %9 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #4, !dbg !162
  %36 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !163
  %37 = tail call i8* @__locale_ctype_ptr() #6, !dbg !164
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !164
  %39 = load i8, i8* %36, align 1, !dbg !164, !tbaa !139
  %40 = sext i8 %39 to i64, !dbg !164
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !164
  %42 = load i8, i8* %41, align 1, !dbg !164, !tbaa !139
  %43 = and i8 %42, 4, !dbg !164
  %44 = icmp eq i8 %43, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %44, label %57, label %45, !dbg !166

; <label>:45:                                     ; preds = %34
  %46 = call i64 @strtoul(i8* nonnull %36, i8** nonnull %9, i32 10) #6, !dbg !168
  %47 = load i8*, i8** %9, align 8, !dbg !170, !tbaa !172
  %48 = load i8, i8* %47, align 1, !dbg !174, !tbaa !139
  %49 = icmp eq i8 %48, 36, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %49, label %50, label %57, !dbg !176

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !177
  %52 = icmp ult i64 %46, 1000, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %52, label %58, label %53, !dbg !180

; <label>:53:                                     ; preds = %50
  %54 = icmp ugt i64 %46, 9999999, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %54, label %57, label %55, !dbg !183

; <label>:55:                                     ; preds = %53
  %56 = trunc i64 %46 to i32, !dbg !184
  br label %58

; <label>:57:                                     ; preds = %53, %45, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #4, !dbg !186
  br label %261

; <label>:58:                                     ; preds = %50, %55
  %59 = phi i32 [ %56, %55 ], [ 1000, %50 ], !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %59) #6, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #4, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %61

; <label>:61:                                     ; preds = %58, %30
  %62 = phi i32 [ %59, %58 ], [ 5000, %30 ], !dbg !189
  %63 = phi i8* [ %51, %58 ], [ %31, %30 ], !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br label %64, !dbg !193

; <label>:64:                                     ; preds = %61, %76
  %65 = phi i32 [ 0, %61 ], [ %77, %76 ]
  %66 = zext i32 %65 to i64, !dbg !195
  %67 = getelementptr inbounds i8, i8* %63, i64 %66, !dbg !195
  %68 = load i8, i8* %67, align 1, !dbg !195, !tbaa !139
  %69 = icmp eq i8 %68, 0, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %69, label %79, label %70, !dbg !196

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %68, 36, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %71, label %79, label %72, !dbg !198

; <label>:72:                                     ; preds = %70
  %73 = icmp eq i8 %68, 10, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %73, label %261, label %74, !dbg !201

; <label>:74:                                     ; preds = %72
  %75 = icmp eq i8 %68, 58, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %75, label %261, label %76, !dbg !203

; <label>:76:                                     ; preds = %74
  %77 = add nuw nsw i32 %65, 1, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  %78 = icmp ult i32 %77, 16, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %78, label %64, label %79, !dbg !193, !llvm.loop !207

; <label>:79:                                     ; preds = %70, %64, %76
  %80 = phi i32 [ %77, %76 ], [ %65, %64 ], [ %65, %70 ]
  %81 = zext i32 %80 to i64, !dbg !209
  %82 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !220
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %82, align 16, !dbg !220, !tbaa !221
  %83 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 1, !dbg !223
  %84 = bitcast i64* %83 to <2 x i64>*, !dbg !224
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %84, align 8, !dbg !224, !tbaa !221
  %85 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 3, !dbg !225
  %86 = bitcast i64* %85 to <2 x i64>*, !dbg !226
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %86, align 8, !dbg !226, !tbaa !221
  %87 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 5, !dbg !227
  %88 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 6, !dbg !228
  %89 = bitcast i64* %87 to <2 x i64>*, !dbg !229
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %89, align 8, !dbg !229, !tbaa !221
  %90 = getelementptr inbounds %struct.sha512, %struct.sha512* %4, i64 0, i32 1, i64 7, !dbg !230
  store i64 6620516959819538809, i64* %90, align 8, !dbg !231, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %27) #5, !dbg !233
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %63, i64 %81) #5, !dbg !234
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %27) #5, !dbg !235
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !236
  %91 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !239
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %91, align 16, !dbg !239, !tbaa !221
  %92 = bitcast i64* %83 to <2 x i64>*, !dbg !240
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %92, align 8, !dbg !240, !tbaa !221
  %93 = bitcast i64* %85 to <2 x i64>*, !dbg !241
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %93, align 8, !dbg !241, !tbaa !221
  store i64 -7276294671716946913, i64* %87, align 8, !dbg !242, !tbaa !221
  %94 = bitcast i64* %88 to <2 x i64>*, !dbg !243
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %94, align 8, !dbg !243, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %27) #5, !dbg !245
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %63, i64 %81) #5, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  %95 = icmp ugt i32 %26, 64, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %95, label %96, label %107, !dbg !266

; <label>:96:                                     ; preds = %79
  %97 = add nsw i32 %26, -65, !dbg !267
  br label %98, !dbg !267

; <label>:98:                                     ; preds = %98, %96
  %99 = phi i32 [ %100, %98 ], [ %26, %96 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #6, !dbg !267
  %100 = add i32 %99, -64, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  %101 = icmp ugt i32 %100, 64, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %101, label %98, label %102, !dbg !266, !llvm.loop !270

; <label>:102:                                    ; preds = %98
  %103 = and i32 %97, -64, !dbg !267
  %104 = add nsw i32 %26, -64, !dbg !267
  %105 = sub i32 %104, %103, !dbg !267
  %106 = zext i32 %105 to i64, !dbg !273
  br label %107, !dbg !273

; <label>:107:                                    ; preds = %79, %102
  %108 = phi i64 [ %27, %79 ], [ %106, %102 ], !dbg !273
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 %108) #6, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  %109 = icmp eq i32 %26, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %109, label %119, label %110, !dbg !280

; <label>:110:                                    ; preds = %107, %116
  %111 = phi i32 [ %117, %116 ], [ %26, %107 ]
  %112 = and i32 %111, 1, !dbg !281
  %113 = icmp eq i32 %112, 0, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %113, label %115, label %114, !dbg !283

; <label>:114:                                    ; preds = %110
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !284
  br label %116, !dbg !284

; <label>:115:                                    ; preds = %110
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %27) #5, !dbg !285
  br label %116

; <label>:116:                                    ; preds = %114, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %117 = lshr i32 %111, 1, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  %118 = icmp eq i32 %117, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %118, label %119, label %110, !dbg !280, !llvm.loop !288

; <label>:119:                                    ; preds = %116, %107
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !290
  %120 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !293
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %120, align 16, !dbg !293, !tbaa !221
  %121 = bitcast i64* %83 to <2 x i64>*, !dbg !294
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %121, align 8, !dbg !294, !tbaa !221
  %122 = bitcast i64* %85 to <2 x i64>*, !dbg !295
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %122, align 8, !dbg !295, !tbaa !221
  %123 = bitcast i64* %87 to <2 x i64>*, !dbg !296
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %123, align 8, !dbg !296, !tbaa !221
  store i64 6620516959819538809, i64* %90, align 8, !dbg !297, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %109, label %128, label %124, !dbg !301

; <label>:124:                                    ; preds = %119, %124
  %125 = phi i32 [ %126, %124 ], [ 0, %119 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %0, i64 %27) #5, !dbg !302
  %126 = add nuw nsw i32 %125, 1, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  %127 = icmp ult i32 %126, %26, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %127, label %124, label %128, !dbg !301, !llvm.loop !307

; <label>:128:                                    ; preds = %124, %119
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %12) #5, !dbg !309
  %129 = bitcast %struct.sha512* %4 to <2 x i64>*, !dbg !312
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %129, align 16, !dbg !312, !tbaa !221
  %130 = bitcast i64* %83 to <2 x i64>*, !dbg !313
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %130, align 8, !dbg !313, !tbaa !221
  %131 = bitcast i64* %85 to <2 x i64>*, !dbg !314
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %131, align 8, !dbg !314, !tbaa !221
  %132 = bitcast i64* %87 to <2 x i64>*, !dbg !315
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %132, align 8, !dbg !315, !tbaa !221
  store i64 6620516959819538809, i64* %90, align 8, !dbg !316, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %133, !dbg !320

; <label>:133:                                    ; preds = %128, %133
  %134 = phi i32 [ 0, %128 ], [ %135, %133 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* %63, i64 %81) #5, !dbg !321
  %135 = add nuw nsw i32 %134, 1, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  %136 = load i8, i8* %11, align 16, !dbg !325, !tbaa !139
  %137 = zext i8 %136 to i32, !dbg !325
  %138 = add nuw nsw i32 %137, 16, !dbg !326
  %139 = icmp ult i32 %135, %138, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %139, label %133, label %140, !dbg !320, !llvm.loop !328

; <label>:140:                                    ; preds = %133
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %13) #5, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %141 = icmp eq i32 %62, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %141, label %192, label %142, !dbg !335

; <label>:142:                                    ; preds = %140
  %143 = add nsw i32 %26, -65
  %144 = and i32 %143, -64
  %145 = add nsw i32 %26, -64
  %146 = sub i32 %145, %144
  %147 = bitcast %struct.sha512* %4 to <2 x i64>*
  %148 = bitcast i64* %83 to <2 x i64>*
  %149 = bitcast i64* %85 to <2 x i64>*
  %150 = bitcast i64* %87 to <2 x i64>*
  br label %151, !dbg !335

; <label>:151:                                    ; preds = %189, %142
  %152 = phi i32 [ 0, %142 ], [ %190, %189 ]
  store <2 x i64> <i64 0, i64 7640891576956012808>, <2 x i64>* %147, align 16, !dbg !339, !tbaa !221
  store <2 x i64> <i64 -4942790177534073029, i64 4354685564936845355>, <2 x i64>* %148, align 8, !dbg !340, !tbaa !221
  store <2 x i64> <i64 -6534734903238641935, i64 5840696475078001361>, <2 x i64>* %149, align 8, !dbg !341, !tbaa !221
  store <2 x i64> <i64 -7276294671716946913, i64 2270897969802886507>, <2 x i64>* %150, align 8, !dbg !342, !tbaa !221
  store i64 6620516959819538809, i64* %90, align 8, !dbg !343, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  %153 = and i32 %152, 1, !dbg !345
  %154 = icmp ne i32 %153, 0, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br i1 %154, label %155, label %163, !dbg !347

; <label>:155:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %95, label %156, label %160, !dbg !354

; <label>:156:                                    ; preds = %155, %156
  %157 = phi i32 [ %158, %156 ], [ %26, %155 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !355
  %158 = add i32 %157, -64, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  %159 = icmp ugt i32 %158, 64, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %159, label %156, label %160, !dbg !354, !llvm.loop !270

; <label>:160:                                    ; preds = %156, %155
  %161 = phi i32 [ %26, %155 ], [ %146, %156 ], !dbg !359
  %162 = zext i32 %161 to i64, !dbg !360
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %162) #6, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br label %164, !dbg !363

; <label>:163:                                    ; preds = %151
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !364
  br label %164

; <label>:164:                                    ; preds = %163, %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %165 = urem i32 %152, 3, !dbg !365
  %166 = icmp eq i32 %165, 0, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %166, label %168, label %167, !dbg !367

; <label>:167:                                    ; preds = %164
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %13, i64 %81) #5, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br label %168, !dbg !368

; <label>:168:                                    ; preds = %164, %167
  %169 = urem i32 %152, 7, !dbg !369
  %170 = icmp eq i32 %169, 0, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %170, label %179, label %171, !dbg !371

; <label>:171:                                    ; preds = %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %95, label %172, label %176, !dbg !378

; <label>:172:                                    ; preds = %171, %172
  %173 = phi i32 [ %174, %172 ], [ %26, %171 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !379
  %174 = add i32 %173, -64, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %175 = icmp ugt i32 %174, 64, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %175, label %172, label %176, !dbg !378, !llvm.loop !270

; <label>:176:                                    ; preds = %172, %171
  %177 = phi i32 [ %26, %171 ], [ %146, %172 ], !dbg !383
  %178 = zext i32 %177 to i64, !dbg !384
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %178) #6, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %179, !dbg !387

; <label>:179:                                    ; preds = %168, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %154, label %180, label %181, !dbg !388

; <label>:180:                                    ; preds = %179
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %11, i64 64) #5, !dbg !389
  br label %189, !dbg !389

; <label>:181:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %95, label %182, label %186, !dbg !397

; <label>:182:                                    ; preds = %181, %182
  %183 = phi i32 [ %184, %182 ], [ %26, %181 ]
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 64) #6, !dbg !398
  %184 = add i32 %183, -64, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %185 = icmp ugt i32 %184, 64, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %185, label %182, label %186, !dbg !397, !llvm.loop !270

; <label>:186:                                    ; preds = %182, %181
  %187 = phi i32 [ %26, %181 ], [ %146, %182 ], !dbg !402
  %188 = zext i32 %187 to i64, !dbg !403
  call fastcc void @sha512_update(%struct.sha512* nonnull %4, i8* nonnull %12, i64 %188) #6, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br label %189

; <label>:189:                                    ; preds = %186, %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @sha512_sum(%struct.sha512* nonnull %4, i8* nonnull %11) #5, !dbg !406
  %190 = add nuw i32 %152, 1, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %191 = icmp eq i32 %190, %62, !dbg !333
  br i1 %191, label %192, label %151, !dbg !335, !llvm.loop !409

; <label>:192:                                    ; preds = %189, %140
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %14, i32 %80, i8* %63) #6, !dbg !412
  %194 = sext i32 %193 to i64, !dbg !413
  %195 = getelementptr inbounds i8, i8* %2, i64 %194, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %196 = add nsw i64 %194, 84, !dbg !416
  br label %197, !dbg !416

; <label>:197:                                    ; preds = %197, %192
  %198 = phi i64 [ 0, %192 ], [ %244, %197 ]
  %199 = phi i8* [ %195, %192 ], [ %243, %197 ]
  %200 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %198, i64 0, !dbg !417
  %201 = load i8, i8* %200, align 1, !dbg !417, !tbaa !139
  %202 = zext i8 %201 to i64, !dbg !419
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %202, !dbg !419
  %204 = load i8, i8* %203, align 1, !dbg !419, !tbaa !139
  %205 = zext i8 %204 to i32, !dbg !419
  %206 = shl nuw nsw i32 %205, 16, !dbg !420
  %207 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %198, i64 1, !dbg !421
  %208 = load i8, i8* %207, align 1, !dbg !421, !tbaa !139
  %209 = zext i8 %208 to i64, !dbg !422
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %209, !dbg !422
  %211 = load i8, i8* %210, align 1, !dbg !422, !tbaa !139
  %212 = zext i8 %211 to i32, !dbg !422
  %213 = shl nuw nsw i32 %212, 8, !dbg !423
  %214 = or i32 %213, %206, !dbg !424
  %215 = getelementptr inbounds [21 x [3 x i8]], [21 x [3 x i8]]* @sha512crypt.perm, i64 0, i64 %198, i64 2, !dbg !425
  %216 = load i8, i8* %215, align 1, !dbg !425, !tbaa !139
  %217 = zext i8 %216 to i64, !dbg !426
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %217, !dbg !426
  %219 = load i8, i8* %218, align 1, !dbg !426, !tbaa !139
  %220 = zext i8 %219 to i32, !dbg !426
  %221 = or i32 %213, %220, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %222 = and i32 %220, 63, !dbg !440
  %223 = zext i32 %222 to i64, !dbg !442
  %224 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %223, !dbg !442
  %225 = load i8, i8* %224, align 1, !dbg !442, !tbaa !139
  %226 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !443
  store i8 %225, i8* %199, align 1, !dbg !444, !tbaa !139
  %227 = lshr i32 %221, 6, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %228 = and i32 %227, 63, !dbg !440
  %229 = zext i32 %228 to i64, !dbg !442
  %230 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %229, !dbg !442
  %231 = load i8, i8* %230, align 1, !dbg !442, !tbaa !139
  %232 = getelementptr inbounds i8, i8* %199, i64 2, !dbg !443
  store i8 %231, i8* %226, align 1, !dbg !444, !tbaa !139
  %233 = lshr i32 %214, 12, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %234 = and i32 %233, 63, !dbg !440
  %235 = zext i32 %234 to i64, !dbg !442
  %236 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %235, !dbg !442
  %237 = load i8, i8* %236, align 1, !dbg !442, !tbaa !139
  %238 = getelementptr inbounds i8, i8* %199, i64 3, !dbg !443
  store i8 %237, i8* %232, align 1, !dbg !444, !tbaa !139
  %239 = lshr i32 %205, 2, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %240 = zext i32 %239 to i64, !dbg !442
  %241 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %240, !dbg !442
  %242 = load i8, i8* %241, align 1, !dbg !442, !tbaa !139
  store i8 %242, i8* %238, align 1, !dbg !444, !tbaa !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %243 = getelementptr i8, i8* %199, i64 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %244 = add nuw nsw i64 %198, 1, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %245 = icmp eq i64 %244, 21, !dbg !449
  br i1 %245, label %246, label %197, !dbg !416, !llvm.loop !450

; <label>:246:                                    ; preds = %197
  %247 = getelementptr i8, i8* %2, i64 %196, !dbg !416
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 63, !dbg !452
  %249 = load i8, i8* %248, align 1, !dbg !452, !tbaa !139
  %250 = zext i8 %249 to i32, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %251 = and i32 %250, 63, !dbg !458
  %252 = zext i32 %251 to i64, !dbg !459
  %253 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %252, !dbg !459
  %254 = load i8, i8* %253, align 1, !dbg !459, !tbaa !139
  %255 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !460
  store i8 %254, i8* %247, align 1, !dbg !461, !tbaa !139
  %256 = lshr i32 %250, 6, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %257 = zext i32 %256 to i64, !dbg !459
  %258 = getelementptr inbounds [65 x i8], [65 x i8]* @b64, i64 0, i64 %257, !dbg !459
  %259 = load i8, i8* %258, align 1, !dbg !459, !tbaa !139
  store i8 %259, i8* %255, align 1, !dbg !461, !tbaa !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %260 = getelementptr i8, i8* %247, i64 2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  store i8 0, i8* %260, align 1, !dbg !464, !tbaa !139
  br label %261, !dbg !465

; <label>:261:                                    ; preds = %72, %74, %25, %57, %246, %24
  %262 = phi i8* [ null, %24 ], [ %2, %246 ], [ null, %57 ], [ null, %25 ], [ null, %74 ], [ null, %72 ], !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #4, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %13) #4, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #4, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #4, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %10) #4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret i8* %262, !dbg !467

; <label>:263:                                    ; preds = %21
  %264 = zext i32 %22 to i64, !dbg !138
  %265 = getelementptr inbounds i8, i8* %0, i64 %264, !dbg !138
  %266 = load i8, i8* %265, align 1, !dbg !138, !tbaa !139
  %267 = icmp eq i8 %266, 0, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %267, label %25, label %268, !dbg !142

; <label>:268:                                    ; preds = %263
  %269 = add nuw nsw i32 %16, 2, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
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
define internal fastcc void @sha512_update(%struct.sha512*, i8*, i64) unnamed_addr #0 !dbg !468 {
  %4 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !483
  %5 = load i64, i64* %4, align 8, !dbg !483, !tbaa !484
  %6 = trunc i64 %5 to i32, !dbg !486
  %7 = and i32 %6, 127, !dbg !486
  %8 = add i64 %5, %2, !dbg !488
  store i64 %8, i64* %4, align 8, !dbg !488, !tbaa !484
  %9 = icmp eq i32 %7, 0, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %9, label %23, label %10, !dbg !491

; <label>:10:                                     ; preds = %3
  %11 = sub nsw i32 128, %7, !dbg !492
  %12 = zext i32 %11 to i64, !dbg !495
  %13 = icmp ugt i64 %12, %2, !dbg !496
  %14 = zext i32 %7 to i64, !dbg !497
  %15 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %14, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %13, label %16, label %18, !dbg !498

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %2) #6, !dbg !499
  br label %45, !dbg !501

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !497
  %20 = tail call i8* @memcpy(i8* nonnull %15, i8* %1, i64 %12) #6, !dbg !502
  %21 = sub i64 %2, %12, !dbg !503
  %22 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !504
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %19) #5, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br label %23, !dbg !506

; <label>:23:                                     ; preds = %3, %18
  %24 = phi i8* [ %22, %18 ], [ %1, %3 ], !dbg !507
  %25 = phi i64 [ %21, %18 ], [ %2, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %26 = icmp ugt i64 %25, 127, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %26, label %27, label %40, !dbg !512

; <label>:27:                                     ; preds = %23
  %28 = add i64 %25, -128, !dbg !513
  %29 = and i64 %28, -128, !dbg !513
  %30 = add i64 %29, 128, !dbg !513
  br label %31, !dbg !513

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i64 [ %34, %31 ], [ %25, %27 ]
  %33 = phi i8* [ %35, %31 ], [ %24, %27 ]
  tail call fastcc void @processblock(%struct.sha512* %0, i8* %33) #5, !dbg !513
  %34 = add i64 %32, -128, !dbg !514
  %35 = getelementptr inbounds i8, i8* %33, i64 128, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %36 = icmp ugt i64 %34, 127, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %36, label %31, label %37, !dbg !512, !llvm.loop !517

; <label>:37:                                     ; preds = %31
  %38 = sub i64 %28, %29, !dbg !513
  %39 = getelementptr i8, i8* %24, i64 %30, !dbg !513
  br label %40, !dbg !519

; <label>:40:                                     ; preds = %37, %23
  %41 = phi i8* [ %24, %23 ], [ %39, %37 ], !dbg !520
  %42 = phi i64 [ %25, %23 ], [ %38, %37 ], !dbg !520
  %43 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !519
  %44 = tail call i8* @memcpy(i8* nonnull %43, i8* %41, i64 %42) #6, !dbg !521
  br label %45, !dbg !522

; <label>:45:                                     ; preds = %40, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  ret void, !dbg !522
}

; Function Attrs: noredzone nounwind
define internal fastcc void @sha512_sum(%struct.sha512*, i8* nocapture) unnamed_addr #0 !dbg !524 {
  %3 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 0, !dbg !540
  %4 = load i64, i64* %3, align 8, !dbg !540, !tbaa !484
  %5 = trunc i64 %4 to i32, !dbg !541
  %6 = and i32 %5, 127, !dbg !541
  %7 = add nuw nsw i32 %6, 1, !dbg !543
  %8 = zext i32 %6 to i64, !dbg !544
  %9 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %8, !dbg !544
  store i8 -128, i8* %9, align 1, !dbg !545, !tbaa !139
  %10 = icmp ugt i32 %6, 111, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %11 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 0, !dbg !549
  br i1 %10, label %12, label %18, !dbg !548

; <label>:12:                                     ; preds = %2
  %13 = zext i32 %7 to i64, !dbg !550
  %14 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %13, !dbg !550
  %15 = xor i32 %6, 127, !dbg !552
  %16 = zext i32 %15 to i64, !dbg !553
  %17 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %16) #6, !dbg !554
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br label %18, !dbg !556

; <label>:18:                                     ; preds = %2, %12
  %19 = phi i32 [ 0, %12 ], [ %7, %2 ], !dbg !549
  %20 = zext i32 %19 to i64, !dbg !557
  %21 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 %20, !dbg !557
  %22 = sub nsw i32 120, %19, !dbg !558
  %23 = zext i32 %22 to i64, !dbg !559
  %24 = tail call i8* @memset(i8* nonnull %21, i32 0, i64 %23) #6, !dbg !560
  %25 = load i64, i64* %3, align 8, !dbg !561, !tbaa !484
  %26 = shl i64 %25, 3, !dbg !561
  store i64 %26, i64* %3, align 8, !dbg !561, !tbaa !484
  %27 = lshr i64 %25, 53, !dbg !562
  %28 = trunc i64 %27 to i8, !dbg !563
  %29 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 120, !dbg !564
  store i8 %28, i8* %29, align 8, !dbg !565, !tbaa !139
  %30 = lshr i64 %25, 45, !dbg !566
  %31 = trunc i64 %30 to i8, !dbg !567
  %32 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 121, !dbg !568
  store i8 %31, i8* %32, align 1, !dbg !569, !tbaa !139
  %33 = lshr i64 %25, 37, !dbg !570
  %34 = trunc i64 %33 to i8, !dbg !571
  %35 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 122, !dbg !572
  store i8 %34, i8* %35, align 2, !dbg !573, !tbaa !139
  %36 = lshr i64 %25, 29, !dbg !574
  %37 = trunc i64 %36 to i8, !dbg !575
  %38 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 123, !dbg !576
  store i8 %37, i8* %38, align 1, !dbg !577, !tbaa !139
  %39 = lshr i64 %25, 21, !dbg !578
  %40 = trunc i64 %39 to i8, !dbg !579
  %41 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 124, !dbg !580
  store i8 %40, i8* %41, align 4, !dbg !581, !tbaa !139
  %42 = lshr i64 %25, 13, !dbg !582
  %43 = trunc i64 %42 to i8, !dbg !583
  %44 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 125, !dbg !584
  store i8 %43, i8* %44, align 1, !dbg !585, !tbaa !139
  %45 = lshr i64 %25, 5, !dbg !586
  %46 = trunc i64 %45 to i8, !dbg !587
  %47 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 126, !dbg !588
  store i8 %46, i8* %47, align 2, !dbg !589, !tbaa !139
  %48 = trunc i64 %26 to i8, !dbg !590
  %49 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 2, i64 127, !dbg !591
  store i8 %48, i8* %49, align 1, !dbg !592, !tbaa !139
  tail call fastcc void @processblock(%struct.sha512* nonnull %0, i8* nonnull %11) #6, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %50, !dbg !598

; <label>:50:                                     ; preds = %50, %18
  %51 = phi i64 [ 0, %18 ], [ %92, %50 ]
  %52 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 %51, !dbg !599
  %53 = load i64, i64* %52, align 8, !dbg !599, !tbaa !221
  %54 = lshr i64 %53, 56, !dbg !602
  %55 = trunc i64 %54 to i8, !dbg !599
  %56 = shl nsw i64 %51, 3, !dbg !603
  %57 = getelementptr inbounds i8, i8* %1, i64 %56, !dbg !604
  store i8 %55, i8* %57, align 1, !dbg !605, !tbaa !139
  %58 = load i64, i64* %52, align 8, !dbg !606, !tbaa !221
  %59 = lshr i64 %58, 48, !dbg !607
  %60 = trunc i64 %59 to i8, !dbg !606
  %61 = or i64 %56, 1, !dbg !608
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !609
  store i8 %60, i8* %62, align 1, !dbg !610, !tbaa !139
  %63 = load i64, i64* %52, align 8, !dbg !611, !tbaa !221
  %64 = lshr i64 %63, 40, !dbg !612
  %65 = trunc i64 %64 to i8, !dbg !611
  %66 = or i64 %56, 2, !dbg !613
  %67 = getelementptr inbounds i8, i8* %1, i64 %66, !dbg !614
  store i8 %65, i8* %67, align 1, !dbg !615, !tbaa !139
  %68 = load i64, i64* %52, align 8, !dbg !616, !tbaa !221
  %69 = lshr i64 %68, 32, !dbg !617
  %70 = trunc i64 %69 to i8, !dbg !616
  %71 = or i64 %56, 3, !dbg !618
  %72 = getelementptr inbounds i8, i8* %1, i64 %71, !dbg !619
  store i8 %70, i8* %72, align 1, !dbg !620, !tbaa !139
  %73 = load i64, i64* %52, align 8, !dbg !621, !tbaa !221
  %74 = lshr i64 %73, 24, !dbg !622
  %75 = trunc i64 %74 to i8, !dbg !621
  %76 = or i64 %56, 4, !dbg !623
  %77 = getelementptr inbounds i8, i8* %1, i64 %76, !dbg !624
  store i8 %75, i8* %77, align 1, !dbg !625, !tbaa !139
  %78 = load i64, i64* %52, align 8, !dbg !626, !tbaa !221
  %79 = lshr i64 %78, 16, !dbg !627
  %80 = trunc i64 %79 to i8, !dbg !626
  %81 = or i64 %56, 5, !dbg !628
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !629
  store i8 %80, i8* %82, align 1, !dbg !630, !tbaa !139
  %83 = load i64, i64* %52, align 8, !dbg !631, !tbaa !221
  %84 = lshr i64 %83, 8, !dbg !632
  %85 = trunc i64 %84 to i8, !dbg !631
  %86 = or i64 %56, 6, !dbg !633
  %87 = getelementptr inbounds i8, i8* %1, i64 %86, !dbg !634
  store i8 %85, i8* %87, align 1, !dbg !635, !tbaa !139
  %88 = load i64, i64* %52, align 8, !dbg !636, !tbaa !221
  %89 = trunc i64 %88 to i8, !dbg !636
  %90 = or i64 %56, 7, !dbg !637
  %91 = getelementptr inbounds i8, i8* %1, i64 %90, !dbg !638
  store i8 %89, i8* %91, align 1, !dbg !639, !tbaa !139
  %92 = add nuw nsw i64 %51, 1, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %93 = icmp eq i64 %92, 8, !dbg !642
  br i1 %93, label %94, label %50, !dbg !598, !llvm.loop !643

; <label>:94:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  ret void, !dbg !645
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @processblock(%struct.sha512* nocapture, i8* nocapture readonly) unnamed_addr #0 !dbg !646 {
  %3 = alloca [80 x i64], align 16
  %4 = bitcast [80 x i64]* %3 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %4) #4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br label %8, !dbg !672

; <label>:5:                                      ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %6 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0
  %7 = load i64, i64* %6, align 16, !dbg !675, !tbaa !221
  br label %59, !dbg !677

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %57, %8 ]
  %10 = shl nsw i64 %9, 3, !dbg !678
  %11 = getelementptr inbounds i8, i8* %1, i64 %10, !dbg !681
  %12 = load i8, i8* %11, align 1, !dbg !681, !tbaa !139
  %13 = zext i8 %12 to i64, !dbg !682
  %14 = shl nuw i64 %13, 56, !dbg !683
  %15 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %9, !dbg !684
  %16 = or i64 %10, 1, !dbg !685
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !686
  %18 = load i8, i8* %17, align 1, !dbg !686, !tbaa !139
  %19 = zext i8 %18 to i64, !dbg !687
  %20 = shl nuw nsw i64 %19, 48, !dbg !688
  %21 = or i64 %20, %14, !dbg !689
  %22 = or i64 %10, 2, !dbg !690
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !691
  %24 = load i8, i8* %23, align 1, !dbg !691, !tbaa !139
  %25 = zext i8 %24 to i64, !dbg !692
  %26 = shl nuw nsw i64 %25, 40, !dbg !693
  %27 = or i64 %26, %21, !dbg !694
  %28 = or i64 %10, 3, !dbg !695
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !696
  %30 = load i8, i8* %29, align 1, !dbg !696, !tbaa !139
  %31 = zext i8 %30 to i64, !dbg !697
  %32 = shl nuw nsw i64 %31, 32, !dbg !698
  %33 = or i64 %32, %27, !dbg !699
  %34 = or i64 %10, 4, !dbg !700
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !701
  %36 = load i8, i8* %35, align 1, !dbg !701, !tbaa !139
  %37 = zext i8 %36 to i64, !dbg !702
  %38 = shl nuw nsw i64 %37, 24, !dbg !703
  %39 = or i64 %38, %33, !dbg !704
  %40 = or i64 %10, 5, !dbg !705
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !706
  %42 = load i8, i8* %41, align 1, !dbg !706, !tbaa !139
  %43 = zext i8 %42 to i64, !dbg !707
  %44 = shl nuw nsw i64 %43, 16, !dbg !708
  %45 = or i64 %44, %39, !dbg !709
  %46 = or i64 %10, 6, !dbg !710
  %47 = getelementptr inbounds i8, i8* %1, i64 %46, !dbg !711
  %48 = load i8, i8* %47, align 1, !dbg !711, !tbaa !139
  %49 = zext i8 %48 to i64, !dbg !712
  %50 = shl nuw nsw i64 %49, 8, !dbg !713
  %51 = or i64 %50, %45, !dbg !714
  %52 = or i64 %10, 7, !dbg !715
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !716
  %54 = load i8, i8* %53, align 1, !dbg !716, !tbaa !139
  %55 = zext i8 %54 to i64, !dbg !716
  %56 = or i64 %51, %55, !dbg !717
  store i64 %56, i64* %15, align 8, !dbg !717, !tbaa !221
  %57 = add nuw nsw i64 %9, 1, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  %58 = icmp eq i64 %57, 16, !dbg !720
  br i1 %58, label %5, label %8, !dbg !672, !llvm.loop !721

; <label>:59:                                     ; preds = %59, %5
  %60 = phi i64 [ %7, %5 ], [ %80, %59 ], !dbg !675
  %61 = phi i64 [ 16, %5 ], [ %93, %59 ]
  %62 = add nsw i64 %61, -2, !dbg !677
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %62, !dbg !677
  %64 = load i64, i64* %63, align 8, !dbg !677, !tbaa !221
  %65 = lshr i64 %64, 19, !dbg !732
  %66 = shl i64 %64, 45, !dbg !733
  %67 = or i64 %66, %65, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %68 = lshr i64 %64, 61, !dbg !739
  %69 = shl i64 %64, 3, !dbg !740
  %70 = or i64 %69, %68, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %71 = lshr i64 %64, 6, !dbg !677
  %72 = xor i64 %70, %71, !dbg !677
  %73 = xor i64 %72, %67, !dbg !677
  %74 = add nsw i64 %61, -7, !dbg !743
  %75 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %74, !dbg !744
  %76 = load i64, i64* %75, align 8, !dbg !744, !tbaa !221
  %77 = add i64 %73, %76, !dbg !745
  %78 = add nsw i64 %61, -15, !dbg !746
  %79 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %78, !dbg !746
  %80 = load i64, i64* %79, align 8, !dbg !746, !tbaa !221
  %81 = lshr i64 %80, 1, !dbg !750
  %82 = shl i64 %80, 63, !dbg !751
  %83 = or i64 %82, %81, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %84 = lshr i64 %80, 8, !dbg !757
  %85 = shl i64 %80, 56, !dbg !758
  %86 = or i64 %85, %84, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %87 = lshr i64 %80, 7, !dbg !746
  %88 = xor i64 %86, %87, !dbg !746
  %89 = xor i64 %88, %83, !dbg !746
  %90 = add i64 %77, %60, !dbg !761
  %91 = add i64 %90, %89, !dbg !762
  %92 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %61, !dbg !763
  store i64 %91, i64* %92, align 8, !dbg !764, !tbaa !221
  %93 = add nuw nsw i64 %61, 1, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %94 = icmp eq i64 %93, 80, !dbg !767
  br i1 %94, label %95, label %59, !dbg !673, !llvm.loop !768

; <label>:95:                                     ; preds = %59
  %96 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 0, !dbg !770
  %97 = load i64, i64* %96, align 8, !dbg !770, !tbaa !221
  %98 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 1, !dbg !772
  %99 = load i64, i64* %98, align 8, !dbg !772, !tbaa !221
  %100 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 2, !dbg !774
  %101 = load i64, i64* %100, align 8, !dbg !774, !tbaa !221
  %102 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 3, !dbg !776
  %103 = load i64, i64* %102, align 8, !dbg !776, !tbaa !221
  %104 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 4, !dbg !778
  %105 = load i64, i64* %104, align 8, !dbg !778, !tbaa !221
  %106 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 5, !dbg !780
  %107 = load i64, i64* %106, align 8, !dbg !780, !tbaa !221
  %108 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 6, !dbg !782
  %109 = load i64, i64* %108, align 8, !dbg !782, !tbaa !221
  %110 = getelementptr inbounds %struct.sha512, %struct.sha512* %0, i64 0, i32 1, i64 7, !dbg !784
  %111 = load i64, i64* %110, align 8, !dbg !784, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br label %112, !dbg !788

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
  %122 = lshr i64 %117, 14, !dbg !793
  %123 = shl i64 %117, 50, !dbg !794
  %124 = or i64 %123, %122, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  %125 = lshr i64 %117, 18, !dbg !799
  %126 = shl i64 %117, 46, !dbg !800
  %127 = or i64 %126, %125, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %128 = xor i64 %124, %127, !dbg !803
  %129 = lshr i64 %117, 41, !dbg !807
  %130 = shl i64 %117, 23, !dbg !808
  %131 = or i64 %130, %129, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  %132 = xor i64 %128, %131, !dbg !803
  %133 = add i64 %132, %114, !dbg !811
  %134 = xor i64 %115, %116, !dbg !812
  %135 = and i64 %134, %117, !dbg !812
  %136 = xor i64 %135, %115, !dbg !812
  %137 = add i64 %133, %136, !dbg !813
  %138 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %113, !dbg !814
  %139 = load i64, i64* %138, align 8, !dbg !814, !tbaa !221
  %140 = add i64 %137, %139, !dbg !815
  %141 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %113, !dbg !816
  %142 = load i64, i64* %141, align 8, !dbg !816, !tbaa !221
  %143 = add i64 %140, %142, !dbg !817
  %144 = lshr i64 %121, 28, !dbg !821
  %145 = shl i64 %121, 36, !dbg !822
  %146 = or i64 %145, %144, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  %147 = lshr i64 %121, 34, !dbg !827
  %148 = shl i64 %121, 30, !dbg !828
  %149 = or i64 %148, %147, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %150 = xor i64 %146, %149, !dbg !831
  %151 = lshr i64 %121, 39, !dbg !835
  %152 = shl i64 %121, 25, !dbg !836
  %153 = or i64 %152, %151, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  %154 = xor i64 %150, %153, !dbg !831
  %155 = and i64 %120, %121, !dbg !839
  %156 = or i64 %120, %121, !dbg !839
  %157 = and i64 %119, %156, !dbg !839
  %158 = or i64 %157, %155, !dbg !839
  %159 = add i64 %154, %158, !dbg !840
  %160 = add i64 %143, %118, !dbg !842
  %161 = add i64 %159, %143, !dbg !843
  %162 = add nuw nsw i64 %113, 1, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %163 = icmp eq i64 %162, 80, !dbg !846
  br i1 %163, label %164, label %112, !dbg !788, !llvm.loop !847

; <label>:164:                                    ; preds = %112
  %165 = add i64 %161, %97, !dbg !849
  store i64 %165, i64* %96, align 8, !dbg !849, !tbaa !221
  %166 = add i64 %121, %99, !dbg !850
  store i64 %166, i64* %98, align 8, !dbg !850, !tbaa !221
  %167 = add i64 %120, %101, !dbg !851
  store i64 %167, i64* %100, align 8, !dbg !851, !tbaa !221
  %168 = add i64 %119, %103, !dbg !852
  store i64 %168, i64* %102, align 8, !dbg !852, !tbaa !221
  %169 = add i64 %160, %105, !dbg !853
  store i64 %169, i64* %104, align 8, !dbg !853, !tbaa !221
  %170 = add i64 %117, %107, !dbg !854
  store i64 %170, i64* %106, align 8, !dbg !854, !tbaa !221
  %171 = add i64 %116, %109, !dbg !855
  store i64 %171, i64* %108, align 8, !dbg !855, !tbaa !221
  %172 = add i64 %115, %111, !dbg !856
  store i64 %172, i64* %110, align 8, !dbg !856, !tbaa !221
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %4) #4, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  ret void, !dbg !857
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
!115 = !DILocation(line: 368, column: 9, scope: !114)
!116 = !DILocation(line: 368, column: 14, scope: !114)
!117 = !DILocation(line: 368, column: 25, scope: !114)
!118 = !DILocation(line: 368, column: 28, scope: !114)
!119 = !DILocation(line: 368, column: 6, scope: !2)
!120 = !DILocation(line: 0, scope: !2)
!121 = !DILocation(line: 0, scope: !114)
!122 = !DILocation(line: 371, column: 1, scope: !2)
!123 = !DILocation(line: 208, column: 38, scope: !32)
!124 = !DILocation(line: 208, column: 55, scope: !32)
!125 = !DILocation(line: 208, column: 70, scope: !32)
!126 = !DILocation(line: 210, column: 2, scope: !32)
!127 = !DILocation(line: 211, column: 2, scope: !32)
!128 = !DILocation(line: 211, column: 16, scope: !32)
!129 = !DILocation(line: 211, column: 24, scope: !32)
!130 = !DILocation(line: 211, column: 33, scope: !32)
!131 = !DILocation(line: 213, column: 2, scope: !32)
!132 = !DILocation(line: 213, column: 7, scope: !32)
!133 = !DILocation(line: 212, column: 15, scope: !32)
!134 = !DILocation(line: 218, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !32, file: !3, line: 218, column: 2)
!136 = !DILocation(line: 218, column: 27, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !3, line: 218, column: 2)
!138 = !DILocation(line: 218, column: 30, scope: !137)
!139 = !{!140, !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 218, column: 2, scope: !135)
!143 = !DILocation(line: 218, column: 39, scope: !137)
!144 = !DILocation(line: 218, column: 2, scope: !137)
!145 = !DILocation(line: 218, column: 16, scope: !137)
!146 = distinct !{!146, !142, !147}
!147 = !DILocation(line: 218, column: 42, scope: !135)
!148 = !DILocation(line: 219, column: 6, scope: !32)
!149 = !DILocation(line: 220, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !32, file: !3, line: 219, column: 6)
!151 = !DILocation(line: 212, column: 21, scope: !32)
!152 = !DILocation(line: 224, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !32, file: !3, line: 224, column: 6)
!154 = !DILocation(line: 224, column: 33, scope: !153)
!155 = !DILocation(line: 224, column: 6, scope: !32)
!156 = !DILocation(line: 226, column: 17, scope: !32)
!157 = !DILocation(line: 214, column: 14, scope: !32)
!158 = !DILocation(line: 212, column: 18, scope: !32)
!159 = !DILocation(line: 229, column: 6, scope: !71)
!160 = !DILocation(line: 229, column: 53, scope: !71)
!161 = !DILocation(line: 229, column: 6, scope: !32)
!162 = !DILocation(line: 231, column: 3, scope: !70)
!163 = !DILocation(line: 245, column: 8, scope: !70)
!164 = !DILocation(line: 246, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !70, file: !3, line: 246, column: 7)
!166 = !DILocation(line: 246, column: 7, scope: !70)
!167 = !DILocation(line: 231, column: 9, scope: !70)
!168 = !DILocation(line: 248, column: 7, scope: !70)
!169 = !DILocation(line: 230, column: 17, scope: !70)
!170 = !DILocation(line: 249, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !70, file: !3, line: 249, column: 7)
!172 = !{!173, !173, i64 0}
!173 = !{!"any pointer", !140, i64 0}
!174 = !DILocation(line: 249, column: 7, scope: !171)
!175 = !DILocation(line: 249, column: 12, scope: !171)
!176 = !DILocation(line: 249, column: 7, scope: !70)
!177 = !DILocation(line: 251, column: 13, scope: !70)
!178 = !DILocation(line: 252, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !70, file: !3, line: 252, column: 7)
!180 = !DILocation(line: 252, column: 7, scope: !70)
!181 = !DILocation(line: 254, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 254, column: 12)
!183 = !DILocation(line: 254, column: 12, scope: !179)
!184 = !DILocation(line: 257, column: 8, scope: !182)
!185 = !DILocation(line: 0, scope: !165)
!186 = !DILocation(line: 260, column: 2, scope: !71)
!187 = !DILocation(line: 0, scope: !182)
!188 = !DILocation(line: 259, column: 3, scope: !70)
!189 = !DILocation(line: 228, column: 4, scope: !32)
!190 = !DILocation(line: 0, scope: !32)
!191 = !DILocation(line: 262, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !32, file: !3, line: 262, column: 2)
!193 = !DILocation(line: 262, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !3, line: 262, column: 2)
!195 = !DILocation(line: 262, column: 30, scope: !194)
!196 = !DILocation(line: 262, column: 38, scope: !194)
!197 = !DILocation(line: 262, column: 49, scope: !194)
!198 = !DILocation(line: 262, column: 2, scope: !192)
!199 = !DILocation(line: 264, column: 15, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !3, line: 264, column: 7)
!201 = !DILocation(line: 264, column: 23, scope: !200)
!202 = !DILocation(line: 264, column: 34, scope: !200)
!203 = !DILocation(line: 264, column: 7, scope: !194)
!204 = !DILocation(line: 262, column: 58, scope: !194)
!205 = !DILocation(line: 262, column: 2, scope: !194)
!206 = !DILocation(line: 262, column: 16, scope: !194)
!207 = distinct !{!207, !198, !208}
!208 = !DILocation(line: 265, column: 11, scope: !192)
!209 = !DILocation(line: 271, column: 28, scope: !32)
!210 = !DILocation(line: 212, column: 27, scope: !32)
!211 = !DILocation(line: 210, column: 16, scope: !32)
!212 = !DILocalVariable(name: "s", arg: 1, scope: !213, file: !3, line: 126, type: !216)
!213 = distinct !DISubprogram(name: "sha512_init", scope: !3, file: !3, line: 126, type: !214, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!217 = !{!212}
!218 = !DILocation(line: 126, column: 40, scope: !213, inlinedAt: !219)
!219 = distinct !DILocation(line: 269, column: 2, scope: !32)
!220 = !DILocation(line: 128, column: 9, scope: !213, inlinedAt: !219)
!221 = !{!222, !222, i64 0}
!222 = !{!"long", !140, i64 0}
!223 = !DILocation(line: 130, column: 2, scope: !213, inlinedAt: !219)
!224 = !DILocation(line: 130, column: 10, scope: !213, inlinedAt: !219)
!225 = !DILocation(line: 132, column: 2, scope: !213, inlinedAt: !219)
!226 = !DILocation(line: 132, column: 10, scope: !213, inlinedAt: !219)
!227 = !DILocation(line: 134, column: 2, scope: !213, inlinedAt: !219)
!228 = !DILocation(line: 135, column: 2, scope: !213, inlinedAt: !219)
!229 = !DILocation(line: 134, column: 10, scope: !213, inlinedAt: !219)
!230 = !DILocation(line: 136, column: 2, scope: !213, inlinedAt: !219)
!231 = !DILocation(line: 136, column: 10, scope: !213, inlinedAt: !219)
!232 = !DILocation(line: 137, column: 1, scope: !213, inlinedAt: !219)
!233 = !DILocation(line: 270, column: 2, scope: !32)
!234 = !DILocation(line: 271, column: 2, scope: !32)
!235 = !DILocation(line: 272, column: 2, scope: !32)
!236 = !DILocation(line: 273, column: 2, scope: !32)
!237 = !DILocation(line: 126, column: 40, scope: !213, inlinedAt: !238)
!238 = distinct !DILocation(line: 276, column: 2, scope: !32)
!239 = !DILocation(line: 128, column: 9, scope: !213, inlinedAt: !238)
!240 = !DILocation(line: 130, column: 10, scope: !213, inlinedAt: !238)
!241 = !DILocation(line: 132, column: 10, scope: !213, inlinedAt: !238)
!242 = !DILocation(line: 134, column: 10, scope: !213, inlinedAt: !238)
!243 = !DILocation(line: 135, column: 10, scope: !213, inlinedAt: !238)
!244 = !DILocation(line: 137, column: 1, scope: !213, inlinedAt: !238)
!245 = !DILocation(line: 277, column: 2, scope: !32)
!246 = !DILocation(line: 278, column: 2, scope: !32)
!247 = !DILocalVariable(name: "s", arg: 1, scope: !248, file: !3, line: 199, type: !216)
!248 = distinct !DISubprogram(name: "hashmd", scope: !3, file: !3, line: 199, type: !249, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !253)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !216, !59, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!253 = !{!247, !254, !255, !256}
!254 = !DILocalVariable(name: "n", arg: 2, scope: !248, file: !3, line: 199, type: !59)
!255 = !DILocalVariable(name: "md", arg: 3, scope: !248, file: !3, line: 199, type: !251)
!256 = !DILocalVariable(name: "i", scope: !248, file: !3, line: 201, type: !59)
!257 = !DILocation(line: 199, column: 35, scope: !248, inlinedAt: !258)
!258 = distinct !DILocation(line: 279, column: 2, scope: !32)
!259 = !DILocation(line: 199, column: 51, scope: !248, inlinedAt: !258)
!260 = !DILocation(line: 199, column: 66, scope: !248, inlinedAt: !258)
!261 = !DILocation(line: 201, column: 15, scope: !248, inlinedAt: !258)
!262 = !DILocation(line: 203, column: 7, scope: !263, inlinedAt: !258)
!263 = distinct !DILexicalBlock(scope: !248, file: !3, line: 203, column: 2)
!264 = !DILocation(line: 203, column: 16, scope: !265, inlinedAt: !258)
!265 = distinct !DILexicalBlock(scope: !263, file: !3, line: 203, column: 2)
!266 = !DILocation(line: 203, column: 2, scope: !263, inlinedAt: !258)
!267 = !DILocation(line: 204, column: 3, scope: !265, inlinedAt: !258)
!268 = !DILocation(line: 203, column: 24, scope: !265, inlinedAt: !258)
!269 = !DILocation(line: 203, column: 2, scope: !265, inlinedAt: !258)
!270 = distinct !{!270, !271, !272}
!271 = !DILocation(line: 203, column: 2, scope: !263)
!272 = !DILocation(line: 204, column: 26, scope: !263)
!273 = !DILocation(line: 205, column: 23, scope: !248, inlinedAt: !258)
!274 = !DILocation(line: 205, column: 2, scope: !248, inlinedAt: !258)
!275 = !DILocation(line: 206, column: 1, scope: !248, inlinedAt: !258)
!276 = !DILocation(line: 280, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !32, file: !3, line: 280, column: 2)
!278 = !DILocation(line: 280, column: 19, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !3, line: 280, column: 2)
!280 = !DILocation(line: 280, column: 2, scope: !277)
!281 = !DILocation(line: 281, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 281, column: 7)
!283 = !DILocation(line: 281, column: 7, scope: !279)
!284 = !DILocation(line: 282, column: 4, scope: !282)
!285 = !DILocation(line: 284, column: 4, scope: !282)
!286 = !DILocation(line: 280, column: 26, scope: !279)
!287 = !DILocation(line: 280, column: 2, scope: !279)
!288 = distinct !{!288, !280, !289}
!289 = !DILocation(line: 284, column: 33, scope: !277)
!290 = !DILocation(line: 285, column: 2, scope: !32)
!291 = !DILocation(line: 126, column: 40, scope: !213, inlinedAt: !292)
!292 = distinct !DILocation(line: 288, column: 2, scope: !32)
!293 = !DILocation(line: 128, column: 9, scope: !213, inlinedAt: !292)
!294 = !DILocation(line: 130, column: 10, scope: !213, inlinedAt: !292)
!295 = !DILocation(line: 132, column: 10, scope: !213, inlinedAt: !292)
!296 = !DILocation(line: 134, column: 10, scope: !213, inlinedAt: !292)
!297 = !DILocation(line: 136, column: 10, scope: !213, inlinedAt: !292)
!298 = !DILocation(line: 137, column: 1, scope: !213, inlinedAt: !292)
!299 = !DILocation(line: 289, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !32, file: !3, line: 289, column: 2)
!301 = !DILocation(line: 289, column: 2, scope: !300)
!302 = !DILocation(line: 290, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 289, column: 2)
!304 = !DILocation(line: 289, column: 25, scope: !303)
!305 = !DILocation(line: 289, column: 2, scope: !303)
!306 = !DILocation(line: 289, column: 16, scope: !303)
!307 = distinct !{!307, !301, !308}
!308 = !DILocation(line: 290, column: 32, scope: !300)
!309 = !DILocation(line: 291, column: 2, scope: !32)
!310 = !DILocation(line: 126, column: 40, scope: !213, inlinedAt: !311)
!311 = distinct !DILocation(line: 294, column: 2, scope: !32)
!312 = !DILocation(line: 128, column: 9, scope: !213, inlinedAt: !311)
!313 = !DILocation(line: 130, column: 10, scope: !213, inlinedAt: !311)
!314 = !DILocation(line: 132, column: 10, scope: !213, inlinedAt: !311)
!315 = !DILocation(line: 134, column: 10, scope: !213, inlinedAt: !311)
!316 = !DILocation(line: 136, column: 10, scope: !213, inlinedAt: !311)
!317 = !DILocation(line: 137, column: 1, scope: !213, inlinedAt: !311)
!318 = !DILocation(line: 295, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !32, file: !3, line: 295, column: 2)
!320 = !DILocation(line: 295, column: 2, scope: !319)
!321 = !DILocation(line: 296, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 295, column: 2)
!323 = !DILocation(line: 295, column: 31, scope: !322)
!324 = !DILocation(line: 295, column: 2, scope: !322)
!325 = !DILocation(line: 295, column: 23, scope: !322)
!326 = !DILocation(line: 295, column: 21, scope: !322)
!327 = !DILocation(line: 295, column: 16, scope: !322)
!328 = distinct !{!328, !320, !329}
!329 = !DILocation(line: 296, column: 33, scope: !319)
!330 = !DILocation(line: 297, column: 2, scope: !32)
!331 = !DILocation(line: 300, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !32, file: !3, line: 300, column: 2)
!333 = !DILocation(line: 300, column: 16, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !3, line: 300, column: 2)
!335 = !DILocation(line: 300, column: 2, scope: !332)
!336 = !DILocation(line: 126, column: 40, scope: !213, inlinedAt: !337)
!337 = distinct !DILocation(line: 301, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 300, column: 26)
!339 = !DILocation(line: 128, column: 9, scope: !213, inlinedAt: !337)
!340 = !DILocation(line: 130, column: 10, scope: !213, inlinedAt: !337)
!341 = !DILocation(line: 132, column: 10, scope: !213, inlinedAt: !337)
!342 = !DILocation(line: 134, column: 10, scope: !213, inlinedAt: !337)
!343 = !DILocation(line: 136, column: 10, scope: !213, inlinedAt: !337)
!344 = !DILocation(line: 137, column: 1, scope: !213, inlinedAt: !337)
!345 = !DILocation(line: 302, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !3, line: 302, column: 7)
!347 = !DILocation(line: 302, column: 7, scope: !338)
!348 = !DILocation(line: 199, column: 35, scope: !248, inlinedAt: !349)
!349 = distinct !DILocation(line: 303, column: 4, scope: !346)
!350 = !DILocation(line: 199, column: 51, scope: !248, inlinedAt: !349)
!351 = !DILocation(line: 199, column: 66, scope: !248, inlinedAt: !349)
!352 = !DILocation(line: 201, column: 15, scope: !248, inlinedAt: !349)
!353 = !DILocation(line: 203, column: 7, scope: !263, inlinedAt: !349)
!354 = !DILocation(line: 203, column: 2, scope: !263, inlinedAt: !349)
!355 = !DILocation(line: 204, column: 3, scope: !265, inlinedAt: !349)
!356 = !DILocation(line: 203, column: 24, scope: !265, inlinedAt: !349)
!357 = !DILocation(line: 203, column: 2, scope: !265, inlinedAt: !349)
!358 = !DILocation(line: 203, column: 16, scope: !265, inlinedAt: !349)
!359 = !DILocation(line: 0, scope: !265, inlinedAt: !349)
!360 = !DILocation(line: 205, column: 23, scope: !248, inlinedAt: !349)
!361 = !DILocation(line: 205, column: 2, scope: !248, inlinedAt: !349)
!362 = !DILocation(line: 206, column: 1, scope: !248, inlinedAt: !349)
!363 = !DILocation(line: 303, column: 4, scope: !346)
!364 = !DILocation(line: 305, column: 4, scope: !346)
!365 = !DILocation(line: 306, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !338, file: !3, line: 306, column: 7)
!367 = !DILocation(line: 306, column: 7, scope: !338)
!368 = !DILocation(line: 307, column: 4, scope: !366)
!369 = !DILocation(line: 308, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !338, file: !3, line: 308, column: 7)
!371 = !DILocation(line: 308, column: 7, scope: !338)
!372 = !DILocation(line: 199, column: 35, scope: !248, inlinedAt: !373)
!373 = distinct !DILocation(line: 309, column: 4, scope: !370)
!374 = !DILocation(line: 199, column: 51, scope: !248, inlinedAt: !373)
!375 = !DILocation(line: 199, column: 66, scope: !248, inlinedAt: !373)
!376 = !DILocation(line: 201, column: 15, scope: !248, inlinedAt: !373)
!377 = !DILocation(line: 203, column: 7, scope: !263, inlinedAt: !373)
!378 = !DILocation(line: 203, column: 2, scope: !263, inlinedAt: !373)
!379 = !DILocation(line: 204, column: 3, scope: !265, inlinedAt: !373)
!380 = !DILocation(line: 203, column: 24, scope: !265, inlinedAt: !373)
!381 = !DILocation(line: 203, column: 2, scope: !265, inlinedAt: !373)
!382 = !DILocation(line: 203, column: 16, scope: !265, inlinedAt: !373)
!383 = !DILocation(line: 0, scope: !265, inlinedAt: !373)
!384 = !DILocation(line: 205, column: 23, scope: !248, inlinedAt: !373)
!385 = !DILocation(line: 205, column: 2, scope: !248, inlinedAt: !373)
!386 = !DILocation(line: 206, column: 1, scope: !248, inlinedAt: !373)
!387 = !DILocation(line: 309, column: 4, scope: !370)
!388 = !DILocation(line: 310, column: 7, scope: !338)
!389 = !DILocation(line: 311, column: 4, scope: !390)
!390 = distinct !DILexicalBlock(scope: !338, file: !3, line: 310, column: 7)
!391 = !DILocation(line: 199, column: 35, scope: !248, inlinedAt: !392)
!392 = distinct !DILocation(line: 313, column: 4, scope: !390)
!393 = !DILocation(line: 199, column: 51, scope: !248, inlinedAt: !392)
!394 = !DILocation(line: 199, column: 66, scope: !248, inlinedAt: !392)
!395 = !DILocation(line: 201, column: 15, scope: !248, inlinedAt: !392)
!396 = !DILocation(line: 203, column: 7, scope: !263, inlinedAt: !392)
!397 = !DILocation(line: 203, column: 2, scope: !263, inlinedAt: !392)
!398 = !DILocation(line: 204, column: 3, scope: !265, inlinedAt: !392)
!399 = !DILocation(line: 203, column: 24, scope: !265, inlinedAt: !392)
!400 = !DILocation(line: 203, column: 2, scope: !265, inlinedAt: !392)
!401 = !DILocation(line: 203, column: 16, scope: !265, inlinedAt: !392)
!402 = !DILocation(line: 0, scope: !265, inlinedAt: !392)
!403 = !DILocation(line: 205, column: 23, scope: !248, inlinedAt: !392)
!404 = !DILocation(line: 205, column: 2, scope: !248, inlinedAt: !392)
!405 = !DILocation(line: 206, column: 1, scope: !248, inlinedAt: !392)
!406 = !DILocation(line: 314, column: 3, scope: !338)
!407 = !DILocation(line: 300, column: 22, scope: !334)
!408 = !DILocation(line: 300, column: 2, scope: !334)
!409 = distinct !{!409, !335, !410}
!410 = !DILocation(line: 315, column: 2, scope: !332)
!411 = !DILocation(line: 215, column: 8, scope: !32)
!412 = !DILocation(line: 319, column: 7, scope: !32)
!413 = !DILocation(line: 319, column: 4, scope: !32)
!414 = !DILocation(line: 327, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !32, file: !3, line: 327, column: 2)
!416 = !DILocation(line: 327, column: 2, scope: !415)
!417 = !DILocation(line: 328, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !3, line: 327, column: 2)
!419 = !DILocation(line: 328, column: 4, scope: !418)
!420 = !DILocation(line: 328, column: 18, scope: !418)
!421 = !DILocation(line: 328, column: 28, scope: !418)
!422 = !DILocation(line: 328, column: 25, scope: !418)
!423 = !DILocation(line: 328, column: 39, scope: !418)
!424 = !DILocation(line: 328, column: 23, scope: !418)
!425 = !DILocation(line: 328, column: 47, scope: !418)
!426 = !DILocation(line: 328, column: 44, scope: !418)
!427 = !DILocation(line: 328, column: 43, scope: !418)
!428 = !DILocalVariable(name: "s", arg: 1, scope: !429, file: !3, line: 180, type: !6)
!429 = distinct !DISubprogram(name: "to64", scope: !3, file: !3, line: 180, type: !430, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!6, !6, !59, !13}
!432 = !{!428, !433, !434}
!433 = !DILocalVariable(name: "u", arg: 2, scope: !429, file: !3, line: 180, type: !59)
!434 = !DILocalVariable(name: "n", arg: 3, scope: !429, file: !3, line: 180, type: !13)
!435 = !DILocation(line: 180, column: 25, scope: !429, inlinedAt: !436)
!436 = distinct !DILocation(line: 327, column: 27, scope: !418)
!437 = !DILocation(line: 180, column: 41, scope: !429, inlinedAt: !436)
!438 = !DILocation(line: 180, column: 48, scope: !429, inlinedAt: !436)
!439 = !DILocation(line: 182, column: 2, scope: !429, inlinedAt: !436)
!440 = !DILocation(line: 183, column: 16, scope: !441, inlinedAt: !436)
!441 = distinct !DILexicalBlock(scope: !429, file: !3, line: 182, column: 19)
!442 = !DILocation(line: 183, column: 10, scope: !441, inlinedAt: !436)
!443 = !DILocation(line: 183, column: 5, scope: !441, inlinedAt: !436)
!444 = !DILocation(line: 183, column: 8, scope: !441, inlinedAt: !436)
!445 = !DILocation(line: 184, column: 5, scope: !441, inlinedAt: !436)
!446 = !DILocation(line: 186, column: 2, scope: !429, inlinedAt: !436)
!447 = !DILocation(line: 327, column: 19, scope: !418)
!448 = !DILocation(line: 327, column: 2, scope: !418)
!449 = !DILocation(line: 327, column: 13, scope: !418)
!450 = distinct !{!450, !416, !451}
!451 = !DILocation(line: 328, column: 61, scope: !415)
!452 = !DILocation(line: 352, column: 14, scope: !32)
!453 = !DILocation(line: 180, column: 25, scope: !429, inlinedAt: !454)
!454 = distinct !DILocation(line: 352, column: 6, scope: !32)
!455 = !DILocation(line: 180, column: 41, scope: !429, inlinedAt: !454)
!456 = !DILocation(line: 180, column: 48, scope: !429, inlinedAt: !454)
!457 = !DILocation(line: 182, column: 2, scope: !429, inlinedAt: !454)
!458 = !DILocation(line: 183, column: 16, scope: !441, inlinedAt: !454)
!459 = !DILocation(line: 183, column: 10, scope: !441, inlinedAt: !454)
!460 = !DILocation(line: 183, column: 5, scope: !441, inlinedAt: !454)
!461 = !DILocation(line: 183, column: 8, scope: !441, inlinedAt: !454)
!462 = !DILocation(line: 184, column: 5, scope: !441, inlinedAt: !454)
!463 = !DILocation(line: 186, column: 2, scope: !429, inlinedAt: !454)
!464 = !DILocation(line: 353, column: 5, scope: !32)
!465 = !DILocation(line: 354, column: 2, scope: !32)
!466 = !DILocation(line: 0, scope: !171)
!467 = !DILocation(line: 355, column: 1, scope: !32)
!468 = distinct !DISubprogram(name: "sha512_update", scope: !3, file: !3, line: 156, type: !469, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !216, !251, !18}
!471 = !{!472, !473, !474, !475, !478}
!472 = !DILocalVariable(name: "s", arg: 1, scope: !468, file: !3, line: 156, type: !216)
!473 = !DILocalVariable(name: "m", arg: 2, scope: !468, file: !3, line: 156, type: !251)
!474 = !DILocalVariable(name: "len", arg: 3, scope: !468, file: !3, line: 156, type: !18)
!475 = !DILocalVariable(name: "p", scope: !468, file: !3, line: 158, type: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!478 = !DILocalVariable(name: "r", scope: !468, file: !3, line: 159, type: !59)
!479 = !DILocation(line: 156, column: 42, scope: !468)
!480 = !DILocation(line: 156, column: 57, scope: !468)
!481 = !DILocation(line: 156, column: 74, scope: !468)
!482 = !DILocation(line: 158, column: 17, scope: !468)
!483 = !DILocation(line: 159, column: 18, scope: !468)
!484 = !{!485, !222, i64 0}
!485 = !{!"sha512", !222, i64 0, !140, i64 8, !140, i64 72}
!486 = !DILocation(line: 159, column: 15, scope: !468)
!487 = !DILocation(line: 159, column: 11, scope: !468)
!488 = !DILocation(line: 161, column: 9, scope: !468)
!489 = !DILocation(line: 162, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !468, file: !3, line: 162, column: 6)
!491 = !DILocation(line: 162, column: 6, scope: !468)
!492 = !DILocation(line: 163, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 163, column: 7)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 162, column: 9)
!495 = !DILocation(line: 163, column: 13, scope: !493)
!496 = !DILocation(line: 163, column: 11, scope: !493)
!497 = !DILocation(line: 0, scope: !494)
!498 = !DILocation(line: 163, column: 7, scope: !494)
!499 = !DILocation(line: 164, column: 4, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !3, line: 163, column: 22)
!501 = !DILocation(line: 165, column: 4, scope: !500)
!502 = !DILocation(line: 167, column: 3, scope: !494)
!503 = !DILocation(line: 168, column: 7, scope: !494)
!504 = !DILocation(line: 169, column: 5, scope: !494)
!505 = !DILocation(line: 170, column: 3, scope: !494)
!506 = !DILocation(line: 171, column: 2, scope: !494)
!507 = !DILocation(line: 0, scope: !468)
!508 = !DILocation(line: 172, column: 2, scope: !468)
!509 = !DILocation(line: 172, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 172, column: 2)
!511 = distinct !DILexicalBlock(scope: !468, file: !3, line: 172, column: 2)
!512 = !DILocation(line: 172, column: 2, scope: !511)
!513 = !DILocation(line: 173, column: 3, scope: !510)
!514 = !DILocation(line: 172, column: 25, scope: !510)
!515 = !DILocation(line: 172, column: 35, scope: !510)
!516 = !DILocation(line: 172, column: 2, scope: !510)
!517 = distinct !{!517, !512, !518}
!518 = !DILocation(line: 173, column: 20, scope: !511)
!519 = !DILocation(line: 174, column: 9, scope: !468)
!520 = !DILocation(line: 0, scope: !510)
!521 = !DILocation(line: 174, column: 2, scope: !468)
!522 = !DILocation(line: 175, column: 1, scope: !468)
!523 = !DILocation(line: 0, scope: !500)
!524 = distinct !DISubprogram(name: "sha512_sum", scope: !3, file: !3, line: 139, type: !525, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !528)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !216, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!528 = !{!529, !530, !531}
!529 = !DILocalVariable(name: "s", arg: 1, scope: !524, file: !3, line: 139, type: !216)
!530 = !DILocalVariable(name: "md", arg: 2, scope: !524, file: !3, line: 139, type: !527)
!531 = !DILocalVariable(name: "i", scope: !524, file: !3, line: 141, type: !13)
!532 = !DILocation(line: 139, column: 39, scope: !524)
!533 = !DILocation(line: 139, column: 51, scope: !524)
!534 = !DILocalVariable(name: "s", arg: 1, scope: !535, file: !3, line: 103, type: !216)
!535 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 103, type: !214, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !536)
!536 = !{!534, !537}
!537 = !DILocalVariable(name: "r", scope: !535, file: !3, line: 105, type: !59)
!538 = !DILocation(line: 103, column: 32, scope: !535, inlinedAt: !539)
!539 = distinct !DILocation(line: 143, column: 2, scope: !524)
!540 = !DILocation(line: 105, column: 18, scope: !535, inlinedAt: !539)
!541 = !DILocation(line: 105, column: 15, scope: !535, inlinedAt: !539)
!542 = !DILocation(line: 105, column: 11, scope: !535, inlinedAt: !539)
!543 = !DILocation(line: 107, column: 10, scope: !535, inlinedAt: !539)
!544 = !DILocation(line: 107, column: 2, scope: !535, inlinedAt: !539)
!545 = !DILocation(line: 107, column: 14, scope: !535, inlinedAt: !539)
!546 = !DILocation(line: 108, column: 8, scope: !547, inlinedAt: !539)
!547 = distinct !DILexicalBlock(scope: !535, file: !3, line: 108, column: 6)
!548 = !DILocation(line: 108, column: 6, scope: !535, inlinedAt: !539)
!549 = !DILocation(line: 0, scope: !535, inlinedAt: !539)
!550 = !DILocation(line: 109, column: 17, scope: !551, inlinedAt: !539)
!551 = distinct !DILexicalBlock(scope: !547, file: !3, line: 108, column: 15)
!552 = !DILocation(line: 109, column: 29, scope: !551, inlinedAt: !539)
!553 = !DILocation(line: 109, column: 25, scope: !551, inlinedAt: !539)
!554 = !DILocation(line: 109, column: 3, scope: !551, inlinedAt: !539)
!555 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !539)
!556 = !DILocation(line: 112, column: 2, scope: !551, inlinedAt: !539)
!557 = !DILocation(line: 113, column: 16, scope: !535, inlinedAt: !539)
!558 = !DILocation(line: 113, column: 28, scope: !535, inlinedAt: !539)
!559 = !DILocation(line: 113, column: 24, scope: !535, inlinedAt: !539)
!560 = !DILocation(line: 113, column: 2, scope: !535, inlinedAt: !539)
!561 = !DILocation(line: 114, column: 9, scope: !535, inlinedAt: !539)
!562 = !DILocation(line: 115, column: 23, scope: !535, inlinedAt: !539)
!563 = !DILocation(line: 115, column: 16, scope: !535, inlinedAt: !539)
!564 = !DILocation(line: 115, column: 2, scope: !535, inlinedAt: !539)
!565 = !DILocation(line: 115, column: 14, scope: !535, inlinedAt: !539)
!566 = !DILocation(line: 116, column: 23, scope: !535, inlinedAt: !539)
!567 = !DILocation(line: 116, column: 16, scope: !535, inlinedAt: !539)
!568 = !DILocation(line: 116, column: 2, scope: !535, inlinedAt: !539)
!569 = !DILocation(line: 116, column: 14, scope: !535, inlinedAt: !539)
!570 = !DILocation(line: 117, column: 23, scope: !535, inlinedAt: !539)
!571 = !DILocation(line: 117, column: 16, scope: !535, inlinedAt: !539)
!572 = !DILocation(line: 117, column: 2, scope: !535, inlinedAt: !539)
!573 = !DILocation(line: 117, column: 14, scope: !535, inlinedAt: !539)
!574 = !DILocation(line: 118, column: 23, scope: !535, inlinedAt: !539)
!575 = !DILocation(line: 118, column: 16, scope: !535, inlinedAt: !539)
!576 = !DILocation(line: 118, column: 2, scope: !535, inlinedAt: !539)
!577 = !DILocation(line: 118, column: 14, scope: !535, inlinedAt: !539)
!578 = !DILocation(line: 119, column: 23, scope: !535, inlinedAt: !539)
!579 = !DILocation(line: 119, column: 16, scope: !535, inlinedAt: !539)
!580 = !DILocation(line: 119, column: 2, scope: !535, inlinedAt: !539)
!581 = !DILocation(line: 119, column: 14, scope: !535, inlinedAt: !539)
!582 = !DILocation(line: 120, column: 23, scope: !535, inlinedAt: !539)
!583 = !DILocation(line: 120, column: 16, scope: !535, inlinedAt: !539)
!584 = !DILocation(line: 120, column: 2, scope: !535, inlinedAt: !539)
!585 = !DILocation(line: 120, column: 14, scope: !535, inlinedAt: !539)
!586 = !DILocation(line: 121, column: 23, scope: !535, inlinedAt: !539)
!587 = !DILocation(line: 121, column: 16, scope: !535, inlinedAt: !539)
!588 = !DILocation(line: 121, column: 2, scope: !535, inlinedAt: !539)
!589 = !DILocation(line: 121, column: 14, scope: !535, inlinedAt: !539)
!590 = !DILocation(line: 122, column: 16, scope: !535, inlinedAt: !539)
!591 = !DILocation(line: 122, column: 2, scope: !535, inlinedAt: !539)
!592 = !DILocation(line: 122, column: 14, scope: !535, inlinedAt: !539)
!593 = !DILocation(line: 123, column: 2, scope: !535, inlinedAt: !539)
!594 = !DILocation(line: 124, column: 1, scope: !535, inlinedAt: !539)
!595 = !DILocation(line: 141, column: 6, scope: !524)
!596 = !DILocation(line: 144, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !524, file: !3, line: 144, column: 2)
!598 = !DILocation(line: 144, column: 2, scope: !597)
!599 = !DILocation(line: 145, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 144, column: 26)
!601 = distinct !DILexicalBlock(scope: !597, file: !3, line: 144, column: 2)
!602 = !DILocation(line: 145, column: 21, scope: !600)
!603 = !DILocation(line: 145, column: 7, scope: !600)
!604 = !DILocation(line: 145, column: 3, scope: !600)
!605 = !DILocation(line: 145, column: 11, scope: !600)
!606 = !DILocation(line: 146, column: 15, scope: !600)
!607 = !DILocation(line: 146, column: 23, scope: !600)
!608 = !DILocation(line: 146, column: 9, scope: !600)
!609 = !DILocation(line: 146, column: 3, scope: !600)
!610 = !DILocation(line: 146, column: 13, scope: !600)
!611 = !DILocation(line: 147, column: 15, scope: !600)
!612 = !DILocation(line: 147, column: 23, scope: !600)
!613 = !DILocation(line: 147, column: 9, scope: !600)
!614 = !DILocation(line: 147, column: 3, scope: !600)
!615 = !DILocation(line: 147, column: 13, scope: !600)
!616 = !DILocation(line: 148, column: 15, scope: !600)
!617 = !DILocation(line: 148, column: 23, scope: !600)
!618 = !DILocation(line: 148, column: 9, scope: !600)
!619 = !DILocation(line: 148, column: 3, scope: !600)
!620 = !DILocation(line: 148, column: 13, scope: !600)
!621 = !DILocation(line: 149, column: 15, scope: !600)
!622 = !DILocation(line: 149, column: 23, scope: !600)
!623 = !DILocation(line: 149, column: 9, scope: !600)
!624 = !DILocation(line: 149, column: 3, scope: !600)
!625 = !DILocation(line: 149, column: 13, scope: !600)
!626 = !DILocation(line: 150, column: 15, scope: !600)
!627 = !DILocation(line: 150, column: 23, scope: !600)
!628 = !DILocation(line: 150, column: 9, scope: !600)
!629 = !DILocation(line: 150, column: 3, scope: !600)
!630 = !DILocation(line: 150, column: 13, scope: !600)
!631 = !DILocation(line: 151, column: 15, scope: !600)
!632 = !DILocation(line: 151, column: 23, scope: !600)
!633 = !DILocation(line: 151, column: 9, scope: !600)
!634 = !DILocation(line: 151, column: 3, scope: !600)
!635 = !DILocation(line: 151, column: 13, scope: !600)
!636 = !DILocation(line: 152, column: 15, scope: !600)
!637 = !DILocation(line: 152, column: 9, scope: !600)
!638 = !DILocation(line: 152, column: 3, scope: !600)
!639 = !DILocation(line: 152, column: 13, scope: !600)
!640 = !DILocation(line: 144, column: 22, scope: !601)
!641 = !DILocation(line: 144, column: 2, scope: !601)
!642 = !DILocation(line: 144, column: 16, scope: !601)
!643 = distinct !{!643, !598, !644}
!644 = !DILocation(line: 153, column: 2, scope: !597)
!645 = !DILocation(line: 154, column: 1, scope: !524)
!646 = distinct !DISubprogram(name: "processblock", scope: !3, file: !3, line: 56, type: !647, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !216, !476}
!649 = !{!650, !651, !652, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!650 = !DILocalVariable(name: "s", arg: 1, scope: !646, file: !3, line: 56, type: !216)
!651 = !DILocalVariable(name: "buf", arg: 2, scope: !646, file: !3, line: 56, type: !476)
!652 = !DILocalVariable(name: "W", scope: !646, file: !3, line: 58, type: !653)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5120, elements: !82)
!654 = !DILocalVariable(name: "t1", scope: !646, file: !3, line: 58, type: !14)
!655 = !DILocalVariable(name: "t2", scope: !646, file: !3, line: 58, type: !14)
!656 = !DILocalVariable(name: "a", scope: !646, file: !3, line: 58, type: !14)
!657 = !DILocalVariable(name: "b", scope: !646, file: !3, line: 58, type: !14)
!658 = !DILocalVariable(name: "c", scope: !646, file: !3, line: 58, type: !14)
!659 = !DILocalVariable(name: "d", scope: !646, file: !3, line: 58, type: !14)
!660 = !DILocalVariable(name: "e", scope: !646, file: !3, line: 58, type: !14)
!661 = !DILocalVariable(name: "f", scope: !646, file: !3, line: 58, type: !14)
!662 = !DILocalVariable(name: "g", scope: !646, file: !3, line: 58, type: !14)
!663 = !DILocalVariable(name: "h", scope: !646, file: !3, line: 58, type: !14)
!664 = !DILocalVariable(name: "i", scope: !646, file: !3, line: 59, type: !13)
!665 = !DILocation(line: 56, column: 41, scope: !646)
!666 = !DILocation(line: 56, column: 59, scope: !646)
!667 = !DILocation(line: 58, column: 2, scope: !646)
!668 = !DILocation(line: 58, column: 11, scope: !646)
!669 = !DILocation(line: 59, column: 6, scope: !646)
!670 = !DILocation(line: 61, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !646, file: !3, line: 61, column: 2)
!672 = !DILocation(line: 61, column: 2, scope: !671)
!673 = !DILocation(line: 71, column: 2, scope: !674)
!674 = distinct !DILexicalBlock(scope: !646, file: !3, line: 71, column: 2)
!675 = !DILocation(line: 72, column: 46, scope: !676)
!676 = distinct !DILexicalBlock(scope: !674, file: !3, line: 71, column: 2)
!677 = !DILocation(line: 72, column: 10, scope: !676)
!678 = !DILocation(line: 62, column: 25, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 61, column: 27)
!680 = distinct !DILexicalBlock(scope: !671, file: !3, line: 61, column: 2)
!681 = !DILocation(line: 62, column: 20, scope: !679)
!682 = !DILocation(line: 62, column: 10, scope: !679)
!683 = !DILocation(line: 62, column: 28, scope: !679)
!684 = !DILocation(line: 62, column: 3, scope: !679)
!685 = !DILocation(line: 63, column: 28, scope: !679)
!686 = !DILocation(line: 63, column: 21, scope: !679)
!687 = !DILocation(line: 63, column: 11, scope: !679)
!688 = !DILocation(line: 63, column: 31, scope: !679)
!689 = !DILocation(line: 63, column: 8, scope: !679)
!690 = !DILocation(line: 64, column: 28, scope: !679)
!691 = !DILocation(line: 64, column: 21, scope: !679)
!692 = !DILocation(line: 64, column: 11, scope: !679)
!693 = !DILocation(line: 64, column: 31, scope: !679)
!694 = !DILocation(line: 64, column: 8, scope: !679)
!695 = !DILocation(line: 65, column: 28, scope: !679)
!696 = !DILocation(line: 65, column: 21, scope: !679)
!697 = !DILocation(line: 65, column: 11, scope: !679)
!698 = !DILocation(line: 65, column: 31, scope: !679)
!699 = !DILocation(line: 65, column: 8, scope: !679)
!700 = !DILocation(line: 66, column: 28, scope: !679)
!701 = !DILocation(line: 66, column: 21, scope: !679)
!702 = !DILocation(line: 66, column: 11, scope: !679)
!703 = !DILocation(line: 66, column: 31, scope: !679)
!704 = !DILocation(line: 66, column: 8, scope: !679)
!705 = !DILocation(line: 67, column: 28, scope: !679)
!706 = !DILocation(line: 67, column: 21, scope: !679)
!707 = !DILocation(line: 67, column: 11, scope: !679)
!708 = !DILocation(line: 67, column: 31, scope: !679)
!709 = !DILocation(line: 67, column: 8, scope: !679)
!710 = !DILocation(line: 68, column: 28, scope: !679)
!711 = !DILocation(line: 68, column: 21, scope: !679)
!712 = !DILocation(line: 68, column: 11, scope: !679)
!713 = !DILocation(line: 68, column: 31, scope: !679)
!714 = !DILocation(line: 68, column: 8, scope: !679)
!715 = !DILocation(line: 69, column: 18, scope: !679)
!716 = !DILocation(line: 69, column: 11, scope: !679)
!717 = !DILocation(line: 69, column: 8, scope: !679)
!718 = !DILocation(line: 61, column: 23, scope: !680)
!719 = !DILocation(line: 61, column: 2, scope: !680)
!720 = !DILocation(line: 61, column: 16, scope: !680)
!721 = distinct !{!721, !672, !722}
!722 = !DILocation(line: 70, column: 2, scope: !671)
!723 = !DILocalVariable(name: "n", arg: 1, scope: !724, file: !3, line: 25, type: !14)
!724 = distinct !DISubprogram(name: "ror", scope: !3, file: !3, line: 25, type: !725, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!14, !14, !13}
!727 = !{!723, !728}
!728 = !DILocalVariable(name: "k", arg: 2, scope: !724, file: !3, line: 25, type: !13)
!729 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !730)
!730 = distinct !DILocation(line: 72, column: 10, scope: !676)
!731 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !730)
!732 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !730)
!733 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !730)
!734 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !730)
!735 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !730)
!736 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !737)
!737 = distinct !DILocation(line: 72, column: 10, scope: !676)
!738 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !737)
!739 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !737)
!740 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !737)
!741 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !737)
!742 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !737)
!743 = !DILocation(line: 72, column: 26, scope: !676)
!744 = !DILocation(line: 72, column: 23, scope: !676)
!745 = !DILocation(line: 72, column: 21, scope: !676)
!746 = !DILocation(line: 72, column: 32, scope: !676)
!747 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !748)
!748 = distinct !DILocation(line: 72, column: 32, scope: !676)
!749 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !748)
!750 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !748)
!751 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !748)
!752 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !748)
!753 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !748)
!754 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !755)
!755 = distinct !DILocation(line: 72, column: 32, scope: !676)
!756 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !755)
!757 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !755)
!758 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !755)
!759 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !755)
!760 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !755)
!761 = !DILocation(line: 72, column: 30, scope: !676)
!762 = !DILocation(line: 72, column: 44, scope: !676)
!763 = !DILocation(line: 72, column: 3, scope: !676)
!764 = !DILocation(line: 72, column: 8, scope: !676)
!765 = !DILocation(line: 71, column: 18, scope: !676)
!766 = !DILocation(line: 71, column: 2, scope: !676)
!767 = !DILocation(line: 71, column: 11, scope: !676)
!768 = distinct !{!768, !673, !769}
!769 = !DILocation(line: 72, column: 52, scope: !674)
!770 = !DILocation(line: 73, column: 6, scope: !646)
!771 = !DILocation(line: 58, column: 26, scope: !646)
!772 = !DILocation(line: 74, column: 6, scope: !646)
!773 = !DILocation(line: 58, column: 29, scope: !646)
!774 = !DILocation(line: 75, column: 6, scope: !646)
!775 = !DILocation(line: 58, column: 32, scope: !646)
!776 = !DILocation(line: 76, column: 6, scope: !646)
!777 = !DILocation(line: 58, column: 35, scope: !646)
!778 = !DILocation(line: 77, column: 6, scope: !646)
!779 = !DILocation(line: 58, column: 38, scope: !646)
!780 = !DILocation(line: 78, column: 6, scope: !646)
!781 = !DILocation(line: 58, column: 41, scope: !646)
!782 = !DILocation(line: 79, column: 6, scope: !646)
!783 = !DILocation(line: 58, column: 44, scope: !646)
!784 = !DILocation(line: 80, column: 6, scope: !646)
!785 = !DILocation(line: 58, column: 47, scope: !646)
!786 = !DILocation(line: 81, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !646, file: !3, line: 81, column: 2)
!788 = !DILocation(line: 81, column: 2, scope: !787)
!789 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !790)
!790 = distinct !DILocation(line: 82, column: 12, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 81, column: 27)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 81, column: 2)
!793 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !790)
!794 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !790)
!795 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !790)
!796 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !790)
!797 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !798)
!798 = distinct !DILocation(line: 82, column: 12, scope: !791)
!799 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !798)
!800 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !798)
!801 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !798)
!802 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !798)
!803 = !DILocation(line: 82, column: 12, scope: !791)
!804 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !805)
!805 = distinct !DILocation(line: 82, column: 12, scope: !791)
!806 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !805)
!807 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !805)
!808 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !805)
!809 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !805)
!810 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !805)
!811 = !DILocation(line: 82, column: 10, scope: !791)
!812 = !DILocation(line: 82, column: 20, scope: !791)
!813 = !DILocation(line: 82, column: 18, scope: !791)
!814 = !DILocation(line: 82, column: 32, scope: !791)
!815 = !DILocation(line: 82, column: 30, scope: !791)
!816 = !DILocation(line: 82, column: 39, scope: !791)
!817 = !DILocation(line: 82, column: 37, scope: !791)
!818 = !DILocation(line: 58, column: 18, scope: !646)
!819 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !820)
!820 = distinct !DILocation(line: 83, column: 8, scope: !791)
!821 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !820)
!822 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !820)
!823 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !820)
!824 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !820)
!825 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !826)
!826 = distinct !DILocation(line: 83, column: 8, scope: !791)
!827 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !826)
!828 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !826)
!829 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !826)
!830 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !826)
!831 = !DILocation(line: 83, column: 8, scope: !791)
!832 = !DILocation(line: 25, column: 30, scope: !724, inlinedAt: !833)
!833 = distinct !DILocation(line: 83, column: 8, scope: !791)
!834 = !DILocation(line: 25, column: 37, scope: !724, inlinedAt: !833)
!835 = !DILocation(line: 25, column: 52, scope: !724, inlinedAt: !833)
!836 = !DILocation(line: 25, column: 63, scope: !724, inlinedAt: !833)
!837 = !DILocation(line: 25, column: 58, scope: !724, inlinedAt: !833)
!838 = !DILocation(line: 25, column: 42, scope: !724, inlinedAt: !833)
!839 = !DILocation(line: 83, column: 16, scope: !791)
!840 = !DILocation(line: 83, column: 14, scope: !791)
!841 = !DILocation(line: 58, column: 22, scope: !646)
!842 = !DILocation(line: 87, column: 9, scope: !791)
!843 = !DILocation(line: 91, column: 10, scope: !791)
!844 = !DILocation(line: 81, column: 23, scope: !792)
!845 = !DILocation(line: 81, column: 2, scope: !792)
!846 = !DILocation(line: 81, column: 16, scope: !792)
!847 = distinct !{!847, !788, !848}
!848 = !DILocation(line: 92, column: 2, scope: !787)
!849 = !DILocation(line: 93, column: 10, scope: !646)
!850 = !DILocation(line: 94, column: 10, scope: !646)
!851 = !DILocation(line: 95, column: 10, scope: !646)
!852 = !DILocation(line: 96, column: 10, scope: !646)
!853 = !DILocation(line: 97, column: 10, scope: !646)
!854 = !DILocation(line: 98, column: 10, scope: !646)
!855 = !DILocation(line: 99, column: 10, scope: !646)
!856 = !DILocation(line: 100, column: 10, scope: !646)
!857 = !DILocation(line: 101, column: 1, scope: !646)
