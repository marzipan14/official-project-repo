; ModuleID = '/root/.unikraft/apps/redis/build/libtlsf/origin/TLSF-2.4.6/src/tlsf.c'
source_filename = "/root/.unikraft/apps/redis/build/libtlsf/origin/TLSF-2.4.6/src/tlsf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bhdr_struct = type { %struct.bhdr_struct*, i64, %union.anon }
%union.anon = type { %struct.free_ptr_struct }
%struct.free_ptr_struct = type { %struct.bhdr_struct*, %struct.bhdr_struct* }
%struct.area_info_struct = type { %struct.bhdr_struct*, %struct.area_info_struct* }
%struct.TLSF_struct = type { i32, %struct.area_info_struct*, i32, [24 x i32], [24 x [32 x %struct.bhdr_struct*]] }

@table = internal unnamed_addr constant [256 x i32] [i32 -1, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], section ".data_shared", align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @init_memory_pool(i64, i8*) local_unnamed_addr #0 !dbg !69 {
  %3 = icmp eq i8* %1, null, !dbg !80
  %4 = icmp ult i64 %0, 6392, !dbg !82
  %5 = or i1 %4, %3, !dbg !83
  br i1 %5, label %46, label %6, !dbg !83

; <label>:6:                                      ; preds = %2
  %7 = ptrtoint i8* %1 to i64, !dbg !84
  %8 = and i64 %7, 7, !dbg !86
  %9 = icmp eq i64 %8, 0, !dbg !86
  br i1 %9, label %10, label %46, !dbg !87

; <label>:10:                                     ; preds = %6
  %11 = bitcast i8* %1 to i32*, !dbg !88
  %12 = load i32, i32* %11, align 8, !dbg !88, !tbaa !90
  %13 = icmp eq i32 %12, 710539865, !dbg !96
  br i1 %13, label %14, label %19, !dbg !97

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds i8, i8* %1, i64 6280, !dbg !99
  %16 = bitcast i8* %15 to i64*, !dbg !99
  %17 = load i64, i64* %16, align 8, !dbg !99, !tbaa !101
  %18 = and i64 %17, 4294967288, !dbg !104
  br label %46, !dbg !105

; <label>:19:                                     ; preds = %10
  %20 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 6264) #3, !dbg !107
  store i32 710539865, i32* %11, align 8, !dbg !108, !tbaa !90
  %21 = getelementptr inbounds i8, i8* %1, i64 6280, !dbg !123
  %22 = bitcast i8* %21 to i64*, !dbg !123
  store i64 16, i64* %22, align 8, !dbg !124, !tbaa !101
  %23 = getelementptr inbounds i8, i8* %1, i64 6288, !dbg !125
  %24 = getelementptr inbounds i8, i8* %1, i64 6304, !dbg !125
  %25 = add i64 %0, -6328, !dbg !127
  %26 = and i64 %25, -16, !dbg !127
  %27 = getelementptr inbounds i8, i8* %1, i64 6312, !dbg !128
  %28 = bitcast i8* %27 to i64*, !dbg !128
  store i64 %26, i64* %28, align 8, !dbg !129, !tbaa !101
  %29 = getelementptr inbounds i8, i8* %1, i64 6320, !dbg !130
  %30 = bitcast i8* %29 to <2 x %struct.bhdr_struct*>*, !dbg !131
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %30, align 8, !dbg !131, !tbaa !132
  %31 = and i64 %25, 4294967280, !dbg !133
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !133
  %33 = bitcast i8* %32 to i8**, !dbg !135
  store i8* %24, i8** %33, align 8, !dbg !135, !tbaa !136
  %34 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !137
  %35 = bitcast i8* %34 to i64*, !dbg !137
  store i64 2, i64* %35, align 8, !dbg !138, !tbaa !101
  %36 = getelementptr inbounds i8, i8* %1, i64 6296, !dbg !140
  %37 = bitcast i8* %36 to %struct.area_info_struct**, !dbg !140
  store %struct.area_info_struct* null, %struct.area_info_struct** %37, align 8, !dbg !141, !tbaa !142
  %38 = bitcast i8* %23 to i8**, !dbg !144
  store i8* %32, i8** %38, align 8, !dbg !144, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  %39 = getelementptr inbounds i8, i8* %1, i64 6320, !dbg !148
  tail call void @free_ex(i8* nonnull %39, i8* nonnull %1) #4, !dbg !149
  %40 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !150
  %41 = bitcast i8* %40 to i8**, !dbg !151
  store i8* %23, i8** %41, align 8, !dbg !151, !tbaa !152
  %42 = getelementptr inbounds i8, i8* %1, i64 6312, !dbg !153
  %43 = bitcast i8* %42 to i64*, !dbg !153
  %44 = load i64, i64* %43, align 8, !dbg !153, !tbaa !101
  %45 = and i64 %44, 4294967288, !dbg !154
  br label %46, !dbg !155

; <label>:46:                                     ; preds = %6, %2, %19, %14
  %47 = phi i64 [ %18, %14 ], [ %45, %19 ], [ -1, %2 ], [ -1, %6 ], !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  ret i64 %47, !dbg !157
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @free_ex(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !158 {
  %3 = icmp eq i8* %0, null, !dbg !174
  br i1 %3, label %290, label %4, !dbg !176

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !177
  %6 = bitcast i8* %5 to %struct.bhdr_struct*, !dbg !178
  %7 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !180
  %8 = bitcast i8* %7 to i64*, !dbg !180
  %9 = load i64, i64* %8, align 8, !dbg !181, !tbaa !101
  %10 = or i64 %9, 1, !dbg !181
  store i64 %10, i64* %8, align 8, !dbg !181, !tbaa !101
  %11 = bitcast i8* %0 to <2 x %struct.bhdr_struct*>*, !dbg !182
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %11, align 8, !dbg !182, !tbaa !132
  %12 = and i64 %9, 4294967288, !dbg !183
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !183
  %14 = bitcast i8* %13 to %struct.bhdr_struct*, !dbg !183
  %15 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !185
  %16 = bitcast i8* %15 to i64*, !dbg !185
  %17 = load i64, i64* %16, align 8, !dbg !185, !tbaa !101
  %18 = and i64 %17, 1, !dbg !187
  %19 = icmp eq i64 %18, 0, !dbg !187
  br i1 %19, label %112, label %20, !dbg !188

; <label>:20:                                     ; preds = %4
  %21 = and i64 %17, 4294967288, !dbg !189
  %22 = icmp ult i64 %21, 128, !dbg !201
  br i1 %22, label %23, label %26, !dbg !203

; <label>:23:                                     ; preds = %20
  %24 = lshr exact i64 %21, 2, !dbg !204
  %25 = trunc i64 %24 to i32, !dbg !206
  br label %45, !dbg !207

; <label>:26:                                     ; preds = %20
  %27 = trunc i64 %21 to i32, !dbg !208
  %28 = icmp ult i32 %27, 65536, !dbg !220
  %29 = icmp ult i32 %27, 256, !dbg !221
  %30 = select i1 %29, i32 0, i32 8, !dbg !222
  %31 = icmp ult i32 %27, 16777216, !dbg !223
  %32 = select i1 %31, i32 16, i32 24, !dbg !224
  %33 = select i1 %28, i32 %30, i32 %32, !dbg !225
  %34 = lshr i32 %27, %33, !dbg !227
  %35 = zext i32 %34 to i64, !dbg !228
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %35, !dbg !228
  %37 = load i32, i32* %36, align 4, !dbg !228, !tbaa !229
  %38 = add i32 %37, %33, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  %39 = add nsw i32 %38, -5, !dbg !232
  %40 = zext i32 %39 to i64, !dbg !233
  %41 = lshr i64 %21, %40, !dbg !233
  %42 = trunc i64 %41 to i32, !dbg !234
  %43 = add i32 %42, -32, !dbg !234
  %44 = add nsw i32 %38, -6, !dbg !235
  br label %45

; <label>:45:                                     ; preds = %23, %26
  %46 = phi i32 [ 0, %23 ], [ %44, %26 ], !dbg !236
  %47 = phi i32 [ %25, %23 ], [ %43, %26 ], !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %48 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !238
  %49 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !238
  %50 = bitcast i8* %49 to %struct.bhdr_struct**, !dbg !238
  %51 = load %struct.bhdr_struct*, %struct.bhdr_struct** %50, align 8, !dbg !238, !tbaa !132
  %52 = icmp eq %struct.bhdr_struct* %51, null, !dbg !238
  br i1 %52, label %58, label %53, !dbg !241

; <label>:53:                                     ; preds = %45
  %54 = bitcast i8* %48 to i64*, !dbg !238
  %55 = load i64, i64* %54, align 8, !dbg !238, !tbaa !132
  %56 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %51, i64 0, i32 2, !dbg !238
  %57 = bitcast %union.anon* %56 to i64*, !dbg !238
  store i64 %55, i64* %57, align 8, !dbg !238, !tbaa !132
  br label %58, !dbg !238

; <label>:58:                                     ; preds = %45, %53
  %59 = bitcast i8* %48 to %struct.bhdr_struct**, !dbg !242
  %60 = load %struct.bhdr_struct*, %struct.bhdr_struct** %59, align 8, !dbg !242, !tbaa !132
  %61 = icmp eq %struct.bhdr_struct* %60, null, !dbg !242
  br i1 %61, label %67, label %62, !dbg !241

; <label>:62:                                     ; preds = %58
  %63 = bitcast i8* %49 to i64*, !dbg !242
  %64 = load i64, i64* %63, align 8, !dbg !242, !tbaa !132
  %65 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %60, i64 0, i32 2, i32 0, i32 1, !dbg !242
  %66 = bitcast %struct.bhdr_struct** %65 to i64*, !dbg !242
  store i64 %64, i64* %66, align 8, !dbg !242, !tbaa !132
  br label %67, !dbg !242

; <label>:67:                                     ; preds = %58, %62
  %68 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !244
  %69 = bitcast i8* %68 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !244
  %70 = sext i32 %46 to i64, !dbg !244
  %71 = sext i32 %47 to i64, !dbg !244
  %72 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %69, i64 0, i64 %70, i64 %71, !dbg !244
  %73 = load %struct.bhdr_struct*, %struct.bhdr_struct** %72, align 8, !dbg !244, !tbaa !246
  %74 = icmp eq %struct.bhdr_struct* %73, %14, !dbg !244
  br i1 %74, label %75, label %105, !dbg !241

; <label>:75:                                     ; preds = %67
  %76 = bitcast i8* %49 to i64*, !dbg !247
  %77 = load i64, i64* %76, align 8, !dbg !247, !tbaa !132
  %78 = bitcast %struct.bhdr_struct** %72 to i64*, !dbg !247
  store i64 %77, i64* %78, align 8, !dbg !247, !tbaa !246
  %79 = icmp eq i64 %77, 0, !dbg !249
  br i1 %79, label %80, label %105, !dbg !247

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !251
  %82 = bitcast i8* %81 to [24 x i32]*, !dbg !251
  %83 = getelementptr inbounds [24 x i32], [24 x i32]* %82, i64 0, i64 %70, !dbg !251
  %84 = and i32 %47, 31, !dbg !263
  %85 = shl i32 1, %84, !dbg !264
  %86 = xor i32 %85, -1, !dbg !265
  %87 = ashr i32 %47, 5, !dbg !266
  %88 = sext i32 %87 to i64, !dbg !267
  %89 = getelementptr inbounds i32, i32* %83, i64 %88, !dbg !267
  %90 = load i32, i32* %89, align 4, !dbg !268, !tbaa !229
  %91 = and i32 %90, %86, !dbg !268
  store i32 %91, i32* %89, align 4, !dbg !268, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  %92 = load i32, i32* %83, align 4, !dbg !270, !tbaa !229
  %93 = icmp eq i32 %92, 0, !dbg !270
  br i1 %93, label %94, label %105, !dbg !251

; <label>:94:                                     ; preds = %80
  %95 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !270
  %96 = bitcast i8* %95 to i32*, !dbg !270
  %97 = and i32 %46, 31, !dbg !275
  %98 = shl i32 1, %97, !dbg !276
  %99 = xor i32 %98, -1, !dbg !277
  %100 = ashr i32 %46, 5, !dbg !278
  %101 = sext i32 %100 to i64, !dbg !279
  %102 = getelementptr inbounds i32, i32* %96, i64 %101, !dbg !279
  %103 = load i32, i32* %102, align 4, !dbg !280, !tbaa !229
  %104 = and i32 %103, %99, !dbg !280
  store i32 %104, i32* %102, align 4, !dbg !280, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br label %105, !dbg !270

; <label>:105:                                    ; preds = %80, %75, %94, %67
  %106 = bitcast i8* %48 to <2 x %struct.bhdr_struct*>*, !dbg !241
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %106, align 8, !dbg !241, !tbaa !132
  %107 = load i64, i64* %16, align 8, !dbg !282, !tbaa !101
  %108 = and i64 %107, 4294967288, !dbg !283
  %109 = add nuw nsw i64 %108, 16, !dbg !284
  %110 = load i64, i64* %8, align 8, !dbg !285, !tbaa !101
  %111 = add i64 %109, %110, !dbg !285
  store i64 %111, i64* %8, align 8, !dbg !285, !tbaa !101
  br label %112, !dbg !286

; <label>:112:                                    ; preds = %4, %105
  %113 = phi i64 [ %10, %4 ], [ %111, %105 ], !dbg !287
  %114 = and i64 %113, 2, !dbg !289
  %115 = icmp eq i64 %114, 0, !dbg !289
  br i1 %115, label %116, label %119, !dbg !290

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %0, i64 -8
  %118 = bitcast i8* %117 to i64*
  br label %214, !dbg !290

; <label>:119:                                    ; preds = %112
  %120 = bitcast i8* %5 to %struct.bhdr_struct**, !dbg !291
  %121 = load %struct.bhdr_struct*, %struct.bhdr_struct** %120, align 8, !dbg !291, !tbaa !136
  %122 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 1, !dbg !293
  %123 = load i64, i64* %122, align 8, !dbg !293, !tbaa !101
  %124 = and i64 %123, 4294967288, !dbg !294
  %125 = icmp ult i64 %124, 128, !dbg !297
  br i1 %125, label %126, label %129, !dbg !298

; <label>:126:                                    ; preds = %119
  %127 = lshr exact i64 %124, 2, !dbg !299
  %128 = trunc i64 %127 to i32, !dbg !300
  br label %148, !dbg !301

; <label>:129:                                    ; preds = %119
  %130 = trunc i64 %124 to i32, !dbg !302
  %131 = icmp ult i32 %130, 65536, !dbg !306
  %132 = icmp ult i32 %130, 256, !dbg !307
  %133 = select i1 %132, i32 0, i32 8, !dbg !308
  %134 = icmp ult i32 %130, 16777216, !dbg !309
  %135 = select i1 %134, i32 16, i32 24, !dbg !310
  %136 = select i1 %131, i32 %133, i32 %135, !dbg !311
  %137 = lshr i32 %130, %136, !dbg !313
  %138 = zext i32 %137 to i64, !dbg !314
  %139 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %138, !dbg !314
  %140 = load i32, i32* %139, align 4, !dbg !314, !tbaa !229
  %141 = add i32 %140, %136, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  %142 = add nsw i32 %141, -5, !dbg !317
  %143 = zext i32 %142 to i64, !dbg !318
  %144 = lshr i64 %124, %143, !dbg !318
  %145 = trunc i64 %144 to i32, !dbg !319
  %146 = add i32 %145, -32, !dbg !319
  %147 = add nsw i32 %141, -6, !dbg !320
  br label %148

; <label>:148:                                    ; preds = %126, %129
  %149 = phi i32 [ 0, %126 ], [ %147, %129 ], !dbg !321
  %150 = phi i32 [ %128, %126 ], [ %146, %129 ], !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %151 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, !dbg !323
  %152 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, i32 1, !dbg !323
  %153 = load %struct.bhdr_struct*, %struct.bhdr_struct** %152, align 8, !dbg !323, !tbaa !132
  %154 = icmp eq %struct.bhdr_struct* %153, null, !dbg !323
  br i1 %154, label %160, label %155, !dbg !326

; <label>:155:                                    ; preds = %148
  %156 = bitcast %struct.free_ptr_struct* %151 to i64*, !dbg !323
  %157 = load i64, i64* %156, align 8, !dbg !323, !tbaa !132
  %158 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %153, i64 0, i32 2, !dbg !323
  %159 = bitcast %union.anon* %158 to i64*, !dbg !323
  store i64 %157, i64* %159, align 8, !dbg !323, !tbaa !132
  br label %160, !dbg !323

; <label>:160:                                    ; preds = %148, %155
  %161 = getelementptr inbounds %struct.free_ptr_struct, %struct.free_ptr_struct* %151, i64 0, i32 0, !dbg !327
  %162 = load %struct.bhdr_struct*, %struct.bhdr_struct** %161, align 8, !dbg !327, !tbaa !132
  %163 = icmp eq %struct.bhdr_struct* %162, null, !dbg !327
  br i1 %163, label %169, label %164, !dbg !326

; <label>:164:                                    ; preds = %160
  %165 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !327
  %166 = load i64, i64* %165, align 8, !dbg !327, !tbaa !132
  %167 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %162, i64 0, i32 2, i32 0, i32 1, !dbg !327
  %168 = bitcast %struct.bhdr_struct** %167 to i64*, !dbg !327
  store i64 %166, i64* %168, align 8, !dbg !327, !tbaa !132
  br label %169, !dbg !327

; <label>:169:                                    ; preds = %160, %164
  %170 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !329
  %171 = bitcast i8* %170 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !329
  %172 = sext i32 %149 to i64, !dbg !329
  %173 = sext i32 %150 to i64, !dbg !329
  %174 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %171, i64 0, i64 %172, i64 %173, !dbg !329
  %175 = load %struct.bhdr_struct*, %struct.bhdr_struct** %174, align 8, !dbg !329, !tbaa !246
  %176 = icmp eq %struct.bhdr_struct* %175, %121, !dbg !329
  br i1 %176, label %177, label %207, !dbg !326

; <label>:177:                                    ; preds = %169
  %178 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !331
  %179 = load i64, i64* %178, align 8, !dbg !331, !tbaa !132
  %180 = bitcast %struct.bhdr_struct** %174 to i64*, !dbg !331
  store i64 %179, i64* %180, align 8, !dbg !331, !tbaa !246
  %181 = icmp eq i64 %179, 0, !dbg !333
  br i1 %181, label %182, label %207, !dbg !331

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !335
  %184 = bitcast i8* %183 to [24 x i32]*, !dbg !335
  %185 = getelementptr inbounds [24 x i32], [24 x i32]* %184, i64 0, i64 %172, !dbg !335
  %186 = and i32 %150, 31, !dbg !340
  %187 = shl i32 1, %186, !dbg !341
  %188 = xor i32 %187, -1, !dbg !342
  %189 = ashr i32 %150, 5, !dbg !343
  %190 = sext i32 %189 to i64, !dbg !344
  %191 = getelementptr inbounds i32, i32* %185, i64 %190, !dbg !344
  %192 = load i32, i32* %191, align 4, !dbg !345, !tbaa !229
  %193 = and i32 %192, %188, !dbg !345
  store i32 %193, i32* %191, align 4, !dbg !345, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  %194 = load i32, i32* %185, align 4, !dbg !347, !tbaa !229
  %195 = icmp eq i32 %194, 0, !dbg !347
  br i1 %195, label %196, label %207, !dbg !335

; <label>:196:                                    ; preds = %182
  %197 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !347
  %198 = bitcast i8* %197 to i32*, !dbg !347
  %199 = and i32 %149, 31, !dbg !352
  %200 = shl i32 1, %199, !dbg !353
  %201 = xor i32 %200, -1, !dbg !354
  %202 = ashr i32 %149, 5, !dbg !355
  %203 = sext i32 %202 to i64, !dbg !356
  %204 = getelementptr inbounds i32, i32* %198, i64 %203, !dbg !356
  %205 = load i32, i32* %204, align 4, !dbg !357, !tbaa !229
  %206 = and i32 %205, %201, !dbg !357
  store i32 %206, i32* %204, align 4, !dbg !357, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br label %207, !dbg !347

; <label>:207:                                    ; preds = %182, %177, %196, %169
  %208 = bitcast %struct.free_ptr_struct* %151 to <2 x %struct.bhdr_struct*>*, !dbg !326
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %208, align 8, !dbg !326, !tbaa !132
  %209 = load i64, i64* %8, align 8, !dbg !359, !tbaa !101
  %210 = and i64 %209, 4294967288, !dbg !360
  %211 = add nuw nsw i64 %210, 16, !dbg !361
  %212 = load i64, i64* %122, align 8, !dbg !362, !tbaa !101
  %213 = add i64 %211, %212, !dbg !362
  store i64 %213, i64* %122, align 8, !dbg !362, !tbaa !101
  br label %214, !dbg !363

; <label>:214:                                    ; preds = %116, %207
  %215 = phi i64* [ %118, %116 ], [ %122, %207 ], !dbg !364
  %216 = phi i64 [ %113, %116 ], [ %213, %207 ], !dbg !364
  %217 = phi %struct.bhdr_struct* [ %6, %116 ], [ %121, %207 ], !dbg !365
  %218 = and i64 %216, 4294967288, !dbg !366
  %219 = icmp ult i64 %218, 128, !dbg !369
  br i1 %219, label %220, label %223, !dbg !370

; <label>:220:                                    ; preds = %214
  %221 = lshr exact i64 %218, 2, !dbg !371
  %222 = trunc i64 %221 to i32, !dbg !372
  br label %242, !dbg !373

; <label>:223:                                    ; preds = %214
  %224 = trunc i64 %218 to i32, !dbg !374
  %225 = icmp ult i32 %224, 65536, !dbg !378
  %226 = icmp ult i32 %224, 256, !dbg !379
  %227 = select i1 %226, i32 0, i32 8, !dbg !380
  %228 = icmp ult i32 %224, 16777216, !dbg !381
  %229 = select i1 %228, i32 16, i32 24, !dbg !382
  %230 = select i1 %225, i32 %227, i32 %229, !dbg !383
  %231 = lshr i32 %224, %230, !dbg !385
  %232 = zext i32 %231 to i64, !dbg !386
  %233 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %232, !dbg !386
  %234 = load i32, i32* %233, align 4, !dbg !386, !tbaa !229
  %235 = add i32 %234, %230, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %236 = add nsw i32 %235, -5, !dbg !389
  %237 = zext i32 %236 to i64, !dbg !390
  %238 = lshr i64 %218, %237, !dbg !390
  %239 = trunc i64 %238 to i32, !dbg !391
  %240 = add i32 %239, -32, !dbg !391
  %241 = add nsw i32 %235, -6, !dbg !392
  br label %242

; <label>:242:                                    ; preds = %220, %223
  %243 = phi i32 [ 0, %220 ], [ %241, %223 ], !dbg !365
  %244 = phi i32 [ %222, %220 ], [ %240, %223 ], !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %245 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, !dbg !394
  %246 = getelementptr inbounds %union.anon, %union.anon* %245, i64 0, i32 0, i32 0, !dbg !394
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %246, align 8, !dbg !394, !tbaa !132
  %247 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !394
  %248 = bitcast i8* %247 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !394
  %249 = sext i32 %243 to i64, !dbg !394
  %250 = sext i32 %244 to i64, !dbg !394
  %251 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %248, i64 0, i64 %249, i64 %250, !dbg !394
  %252 = bitcast %struct.bhdr_struct** %251 to i64*, !dbg !394
  %253 = load i64, i64* %252, align 8, !dbg !394, !tbaa !246
  %254 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, i32 0, i32 1, !dbg !394
  %255 = bitcast %struct.bhdr_struct** %254 to i64*, !dbg !394
  store i64 %253, i64* %255, align 8, !dbg !394, !tbaa !132
  %256 = load %struct.bhdr_struct*, %struct.bhdr_struct** %251, align 8, !dbg !396, !tbaa !246
  %257 = icmp eq %struct.bhdr_struct* %256, null, !dbg !396
  br i1 %257, label %262, label %258, !dbg !394

; <label>:258:                                    ; preds = %242
  %259 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %256, i64 0, i32 2, i32 0, i32 0, !dbg !396
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %259, align 8, !dbg !396, !tbaa !132
  %260 = load i64, i64* %215, align 8, !dbg !398, !tbaa !101
  %261 = and i64 %260, 4294967288, !dbg !398
  br label %262, !dbg !396

; <label>:262:                                    ; preds = %242, %258
  %263 = phi i64 [ %218, %242 ], [ %261, %258 ], !dbg !398
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %251, align 8, !dbg !394, !tbaa !246
  %264 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !394
  %265 = bitcast i8* %264 to [24 x i32]*, !dbg !394
  %266 = getelementptr inbounds [24 x i32], [24 x i32]* %265, i64 0, i64 %249, !dbg !394
  %267 = and i32 %244, 31, !dbg !406
  %268 = shl i32 1, %267, !dbg !407
  %269 = ashr i32 %244, 5, !dbg !408
  %270 = sext i32 %269 to i64, !dbg !409
  %271 = getelementptr inbounds i32, i32* %266, i64 %270, !dbg !409
  %272 = load i32, i32* %271, align 4, !dbg !410, !tbaa !229
  %273 = or i32 %272, %268, !dbg !410
  store i32 %273, i32* %271, align 4, !dbg !410, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %274 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !394
  %275 = bitcast i8* %274 to i32*, !dbg !394
  %276 = and i32 %243, 31, !dbg !415
  %277 = shl i32 1, %276, !dbg !416
  %278 = ashr i32 %243, 5, !dbg !417
  %279 = sext i32 %278 to i64, !dbg !418
  %280 = getelementptr inbounds i32, i32* %275, i64 %279, !dbg !418
  %281 = load i32, i32* %280, align 4, !dbg !419, !tbaa !229
  %282 = or i32 %281, %277, !dbg !419
  store i32 %282, i32* %280, align 4, !dbg !419, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %283 = bitcast %union.anon* %245 to i8*, !dbg !398
  %284 = getelementptr inbounds i8, i8* %283, i64 %263, !dbg !398
  %285 = getelementptr inbounds i8, i8* %284, i64 8, !dbg !421
  %286 = bitcast i8* %285 to i64*, !dbg !421
  %287 = load i64, i64* %286, align 8, !dbg !422, !tbaa !101
  %288 = or i64 %287, 2, !dbg !422
  store i64 %288, i64* %286, align 8, !dbg !422, !tbaa !101
  %289 = bitcast i8* %284 to %struct.bhdr_struct**, !dbg !423
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %289, align 8, !dbg !424, !tbaa !136
  br label %290, !dbg !425

; <label>:290:                                    ; preds = %2, %262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  ret void, !dbg !425
}

; Function Attrs: noredzone nounwind
define dso_local i64 @add_new_area(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !426 {
  %4 = tail call i8* @memset(i8* %0, i32 0, i64 %1) #3, !dbg !448
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !449
  %6 = bitcast i8* %5 to %struct.area_info_struct**, !dbg !449
  %7 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !449, !tbaa !152
  %8 = bitcast i8* %0 to %struct.bhdr_struct*, !dbg !455
  %9 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !457
  %10 = bitcast i8* %9 to i64*, !dbg !457
  store i64 16, i64* %10, align 8, !dbg !458, !tbaa !101
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !459
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !459
  %13 = add i64 %1, -64, !dbg !461
  %14 = and i64 %13, -16, !dbg !461
  %15 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !462
  %16 = bitcast i8* %15 to i64*, !dbg !462
  store i64 %14, i64* %16, align 8, !dbg !463, !tbaa !101
  %17 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !464
  %18 = bitcast i8* %17 to <2 x %struct.bhdr_struct*>*, !dbg !465
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %18, align 8, !dbg !465, !tbaa !132
  %19 = and i64 %13, 4294967280, !dbg !466
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !466
  %21 = bitcast i8* %20 to i8**, !dbg !468
  store i8* %12, i8** %21, align 8, !dbg !468, !tbaa !136
  %22 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !469
  %23 = bitcast i8* %22 to i64*, !dbg !469
  store i64 2, i64* %23, align 8, !dbg !470, !tbaa !101
  %24 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !472
  %25 = bitcast i8* %24 to %struct.area_info_struct**, !dbg !472
  store %struct.area_info_struct* null, %struct.area_info_struct** %25, align 8, !dbg !473, !tbaa !142
  %26 = bitcast i8* %11 to i8**, !dbg !474
  store i8* %20, i8** %26, align 8, !dbg !474, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %27 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !477
  %28 = bitcast i8* %27 to %struct.bhdr_struct*, !dbg !477
  %29 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !479
  %30 = and i64 %13, 4294967280, !dbg !479
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !479
  %32 = bitcast i8* %31 to %struct.bhdr_struct*, !dbg !479
  %33 = icmp eq %struct.area_info_struct* %7, null, !dbg !481
  %34 = bitcast i8* %5 to i64*
  br i1 %33, label %127, label %35, !dbg !481

; <label>:35:                                     ; preds = %3, %75
  %36 = phi %struct.area_info_struct* [ %76, %75 ], [ %7, %3 ]
  %37 = phi %struct.area_info_struct* [ %51, %75 ], [ null, %3 ]
  %38 = phi %struct.bhdr_struct* [ %46, %75 ], [ %8, %3 ]
  %39 = phi %struct.bhdr_struct* [ %47, %75 ], [ %28, %3 ]
  %40 = phi %struct.bhdr_struct* [ %54, %75 ], [ %32, %3 ]
  %41 = ptrtoint %struct.bhdr_struct* %40 to i64
  %42 = add i64 %41, 16
  br label %43, !dbg !481

; <label>:43:                                     ; preds = %35, %102
  %44 = phi %struct.area_info_struct* [ %36, %35 ], [ %103, %102 ]
  %45 = phi %struct.area_info_struct* [ %37, %35 ], [ %51, %102 ]
  %46 = phi %struct.bhdr_struct* [ %38, %35 ], [ %89, %102 ]
  %47 = phi %struct.bhdr_struct* [ %39, %35 ], [ %54, %102 ]
  %48 = bitcast %struct.bhdr_struct* %46 to %union.anon*
  br label %49, !dbg !481

; <label>:49:                                     ; preds = %43, %121
  %50 = phi %struct.area_info_struct* [ %44, %43 ], [ %123, %121 ]
  %51 = phi %struct.area_info_struct* [ %45, %43 ], [ %50, %121 ]
  %52 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, !dbg !482
  %53 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 0, !dbg !484
  %54 = load %struct.bhdr_struct*, %struct.bhdr_struct** %53, align 8, !dbg !484, !tbaa !145
  %55 = ptrtoint %struct.area_info_struct* %52 to i64, !dbg !486
  %56 = icmp eq i64 %42, %55, !dbg !488
  br i1 %56, label %57, label %85, !dbg !489

; <label>:57:                                     ; preds = %49
  %58 = bitcast %struct.area_info_struct* %50 to i8*, !dbg !450
  %59 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, i32 1, !dbg !490
  %60 = bitcast %struct.area_info_struct** %59 to i64*, !dbg !490
  %61 = load i64, i64* %60, align 8, !dbg !490, !tbaa !101
  %62 = and i64 %61, 4294967288, !dbg !490
  %63 = getelementptr inbounds i8, i8* %58, i64 %62, !dbg !490
  %64 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !491, !tbaa !152
  %65 = icmp eq %struct.area_info_struct* %64, %50, !dbg !494
  %66 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !495
  %67 = bitcast %struct.area_info_struct** %66 to i64*, !dbg !495
  %68 = load i64, i64* %67, align 8, !dbg !495, !tbaa !142
  br i1 %65, label %69, label %71, !dbg !497

; <label>:69:                                     ; preds = %57
  %70 = inttoptr i64 %68 to %struct.area_info_struct*, !dbg !497
  store i64 %68, i64* %34, align 8, !dbg !498, !tbaa !152
  br label %75, !dbg !500

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !501
  %73 = bitcast %struct.area_info_struct** %72 to i64*, !dbg !502
  store i64 %68, i64* %73, align 8, !dbg !502, !tbaa !142
  %74 = load %struct.area_info_struct*, %struct.area_info_struct** %66, align 8, !dbg !495, !tbaa !142
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi %struct.area_info_struct* [ %74, %71 ], [ %70, %69 ], !dbg !495
  %77 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !503
  %78 = load i64, i64* %77, align 8, !dbg !503, !tbaa !101
  %79 = and i64 %78, 4294967288, !dbg !503
  %80 = add nuw nsw i64 %62, 32, !dbg !503
  %81 = add nuw nsw i64 %80, %79, !dbg !503
  %82 = and i64 %81, 17179869168, !dbg !503
  store i64 %82, i64* %77, align 8, !dbg !504, !tbaa !101
  %83 = bitcast i8* %63 to %struct.bhdr_struct**, !dbg !505
  store %struct.bhdr_struct* %47, %struct.bhdr_struct** %83, align 8, !dbg !506, !tbaa !136
  %84 = icmp eq %struct.area_info_struct* %76, null, !dbg !481
  br i1 %84, label %127, label %35, !dbg !481, !llvm.loop !507

; <label>:85:                                     ; preds = %49
  %86 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 2, !dbg !509
  %87 = icmp eq %union.anon* %86, %48, !dbg !511
  br i1 %87, label %88, label %121, !dbg !512

; <label>:88:                                     ; preds = %85
  %89 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !513
  %90 = bitcast %struct.bhdr_struct* %46 to i8*, !dbg !514
  %91 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !515, !tbaa !152
  %92 = icmp eq %struct.area_info_struct* %91, %50, !dbg !518
  %93 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !519
  %94 = bitcast %struct.area_info_struct** %93 to i64*, !dbg !519
  %95 = load i64, i64* %94, align 8, !dbg !519, !tbaa !142
  br i1 %92, label %96, label %98, !dbg !521

; <label>:96:                                     ; preds = %88
  %97 = inttoptr i64 %95 to %struct.area_info_struct*, !dbg !521
  store i64 %95, i64* %34, align 8, !dbg !522, !tbaa !152
  br label %102, !dbg !524

; <label>:98:                                     ; preds = %88
  %99 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !525
  %100 = bitcast %struct.area_info_struct** %99 to i64*, !dbg !526
  store i64 %95, i64* %100, align 8, !dbg !526, !tbaa !142
  %101 = load %struct.area_info_struct*, %struct.area_info_struct** %93, align 8, !dbg !519, !tbaa !142
  br label %102

; <label>:102:                                    ; preds = %98, %96
  %103 = phi %struct.area_info_struct* [ %101, %98 ], [ %97, %96 ], !dbg !519
  %104 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !527
  %105 = load i64, i64* %104, align 8, !dbg !527, !tbaa !101
  %106 = and i64 %105, 4294967288, !dbg !527
  %107 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %46, i64 0, i32 1, !dbg !527
  %108 = load i64, i64* %107, align 8, !dbg !527, !tbaa !101
  %109 = and i64 %108, 4294967288, !dbg !527
  %110 = add nuw nsw i64 %106, 32, !dbg !527
  %111 = add nuw nsw i64 %110, %109, !dbg !527
  %112 = and i64 %111, 17179869168, !dbg !527
  %113 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 1, !dbg !528
  %114 = load i64, i64* %113, align 8, !dbg !528, !tbaa !101
  %115 = and i64 %114, 2, !dbg !529
  %116 = or i64 %112, %115, !dbg !530
  store i64 %116, i64* %113, align 8, !dbg !531, !tbaa !101
  %117 = and i64 %111, 4294967280, !dbg !532
  %118 = getelementptr inbounds i8, i8* %90, i64 %117, !dbg !532
  %119 = bitcast i8* %118 to %struct.bhdr_struct**, !dbg !534
  store %struct.bhdr_struct* %54, %struct.bhdr_struct** %119, align 8, !dbg !535, !tbaa !136
  %120 = icmp eq %struct.area_info_struct* %103, null, !dbg !481
  br i1 %120, label %125, label %43, !dbg !481, !llvm.loop !507

; <label>:121:                                    ; preds = %85
  %122 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !536
  %123 = load %struct.area_info_struct*, %struct.area_info_struct** %122, align 8, !dbg !536, !tbaa !142
  %124 = icmp eq %struct.area_info_struct* %123, null, !dbg !481
  br i1 %124, label %127, label %49, !dbg !481, !llvm.loop !507

; <label>:125:                                    ; preds = %102
  %126 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !513
  br label %127, !dbg !537

; <label>:127:                                    ; preds = %75, %121, %3, %125
  %128 = phi %struct.bhdr_struct* [ %40, %125 ], [ %32, %3 ], [ %40, %121 ], [ %54, %75 ]
  %129 = phi %struct.bhdr_struct* [ %54, %125 ], [ %28, %3 ], [ %47, %121 ], [ %47, %75 ]
  %130 = phi %struct.bhdr_struct* [ %126, %125 ], [ %8, %3 ], [ %46, %121 ], [ %46, %75 ]
  %131 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, !dbg !537
  %132 = load i64, i64* %34, align 8, !dbg !539, !tbaa !152
  %133 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, i32 0, i32 1, !dbg !540
  %134 = bitcast %struct.bhdr_struct** %133 to i64*, !dbg !541
  store i64 %132, i64* %134, align 8, !dbg !541, !tbaa !142
  %135 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i32 0, !dbg !542
  store %struct.bhdr_struct* %128, %struct.bhdr_struct** %135, align 8, !dbg !543, !tbaa !145
  %136 = bitcast i8* %5 to %union.anon**, !dbg !544
  store %union.anon* %131, %union.anon** %136, align 8, !dbg !544, !tbaa !152
  %137 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 2, !dbg !545
  %138 = bitcast %union.anon* %137 to i8*, !dbg !546
  tail call void @free_ex(i8* nonnull %138, i8* %2) #4, !dbg !547
  %139 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 1, !dbg !548
  %140 = load i64, i64* %139, align 8, !dbg !548, !tbaa !101
  %141 = and i64 %140, 4294967288, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  ret i64 %141, !dbg !550
}

; Function Attrs: noredzone nounwind
define dso_local i64 @get_used_size(i8* nocapture readnone) local_unnamed_addr #0 !dbg !551 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  ret i64 0, !dbg !557
}

; Function Attrs: noredzone nounwind
define dso_local i64 @get_max_size(i8* nocapture readnone) local_unnamed_addr #0 !dbg !558 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  ret i64 0, !dbg !562
}

; Function Attrs: noredzone nounwind
define dso_local void @destroy_memory_pool(i8* nocapture) local_unnamed_addr #0 !dbg !563 {
  %2 = bitcast i8* %0 to i32*, !dbg !571
  store i32 0, i32* %2, align 8, !dbg !572, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  ret void, !dbg !573
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_malloc(i64, i8* nocapture) local_unnamed_addr #0 !dbg !574 {
  %3 = tail call i8* @malloc_ex(i64 %0, i8* %1) #4, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i8* %3, !dbg !585
}

; Function Attrs: noredzone nounwind
define dso_local i8* @malloc_ex(i64, i8* nocapture) local_unnamed_addr #0 !dbg !586 {
  %3 = bitcast i8* %1 to %struct.TLSF_struct*, !dbg !599
  %4 = icmp ult i64 %0, 16, !dbg !601
  %5 = add i64 %0, 15, !dbg !602
  %6 = and i64 %5, -16, !dbg !602
  %7 = select i1 %4, i64 16, i64 %6, !dbg !603
  %8 = icmp ult i64 %7, 128, !dbg !604
  br i1 %8, label %9, label %12, !dbg !616

; <label>:9:                                      ; preds = %2
  %10 = lshr exact i64 %7, 2, !dbg !617
  %11 = trunc i64 %10 to i32, !dbg !619
  br label %50, !dbg !620

; <label>:12:                                     ; preds = %2
  %13 = trunc i64 %7 to i32, !dbg !621
  %14 = icmp ult i32 %13, 65536, !dbg !626
  %15 = icmp ult i32 %13, 256, !dbg !627
  %16 = select i1 %15, i32 0, i32 8, !dbg !628
  %17 = icmp ult i32 %13, 16777216, !dbg !629
  %18 = select i1 %17, i32 16, i32 24, !dbg !630
  %19 = select i1 %14, i32 %16, i32 %18, !dbg !631
  %20 = lshr i32 %13, %19, !dbg !633
  %21 = zext i32 %20 to i64, !dbg !634
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %21, !dbg !634
  %23 = load i32, i32* %22, align 4, !dbg !634, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %24 = add nsw i32 %19, -5, !dbg !636
  %25 = add i32 %24, %23, !dbg !637
  %26 = shl nsw i32 -1, %25, !dbg !638
  %27 = xor i32 %26, -1, !dbg !638
  %28 = sext i32 %27 to i64, !dbg !640
  %29 = add i64 %7, %28, !dbg !641
  %30 = trunc i64 %29 to i32, !dbg !642
  %31 = icmp ult i32 %30, 65536, !dbg !646
  %32 = icmp ult i32 %30, 256, !dbg !647
  %33 = select i1 %32, i32 0, i32 8, !dbg !648
  %34 = icmp ult i32 %30, 16777216, !dbg !649
  %35 = select i1 %34, i32 16, i32 24, !dbg !650
  %36 = select i1 %31, i32 %33, i32 %35, !dbg !651
  %37 = lshr i32 %30, %36, !dbg !653
  %38 = zext i32 %37 to i64, !dbg !654
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %38, !dbg !654
  %40 = load i32, i32* %39, align 4, !dbg !654, !tbaa !229
  %41 = add i32 %36, %40, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  %42 = add nsw i32 %41, -5, !dbg !657
  %43 = zext i32 %42 to i64, !dbg !658
  %44 = lshr i64 %29, %43, !dbg !658
  %45 = trunc i64 %44 to i32, !dbg !659
  %46 = add i32 %45, -32, !dbg !659
  %47 = add nsw i32 %41, -6, !dbg !660
  %48 = sext i32 %26 to i64, !dbg !661
  %49 = and i64 %29, %48, !dbg !662
  br label %50

; <label>:50:                                     ; preds = %9, %12
  %51 = phi i64 [ %7, %9 ], [ %49, %12 ], !dbg !663
  %52 = phi i32 [ 0, %9 ], [ %47, %12 ], !dbg !663
  %53 = phi i32 [ %11, %9 ], [ %46, %12 ], !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %54 = sext i32 %52 to i64, !dbg !676
  %55 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %54, !dbg !676
  %56 = load i32, i32* %55, align 4, !dbg !676, !tbaa !229
  %57 = shl i32 -1, %53, !dbg !677
  %58 = and i32 %56, %57, !dbg !678
  %59 = icmp eq i32 %58, 0, !dbg !681
  br i1 %59, label %74, label %60, !dbg !683

; <label>:60:                                     ; preds = %50
  %61 = sub nsw i32 0, %58, !dbg !692
  %62 = and i32 %58, %61, !dbg !693
  %63 = icmp ult i32 %62, 65536, !dbg !695
  %64 = icmp ult i32 %62, 256, !dbg !696
  %65 = select i1 %64, i32 0, i32 8, !dbg !697
  %66 = icmp ult i32 %62, 16777216, !dbg !698
  %67 = select i1 %66, i32 16, i32 24, !dbg !699
  %68 = select i1 %63, i32 %65, i32 %67, !dbg !700
  %69 = lshr i32 %62, %68, !dbg !702
  %70 = zext i32 %69 to i64, !dbg !703
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %70, !dbg !703
  %72 = load i32, i32* %71, align 4, !dbg !703, !tbaa !229
  %73 = add i32 %72, %68, !dbg !704
  br label %113, !dbg !705

; <label>:74:                                     ; preds = %50
  %75 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !706
  %76 = bitcast i8* %75 to i32*, !dbg !706
  %77 = load i32, i32* %76, align 8, !dbg !706, !tbaa !708
  %78 = add nsw i32 %52, 1, !dbg !709
  %79 = shl i32 -1, %78, !dbg !710
  %80 = and i32 %77, %79, !dbg !711
  %81 = sub nsw i32 0, %80, !dbg !714
  %82 = and i32 %80, %81, !dbg !715
  %83 = icmp ult i32 %82, 65536, !dbg !717
  %84 = icmp ult i32 %82, 256, !dbg !718
  %85 = select i1 %84, i32 0, i32 8, !dbg !719
  %86 = icmp ult i32 %82, 16777216, !dbg !720
  %87 = select i1 %86, i32 16, i32 24, !dbg !721
  %88 = select i1 %83, i32 %85, i32 %87, !dbg !722
  %89 = lshr i32 %82, %88, !dbg !724
  %90 = zext i32 %89 to i64, !dbg !725
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %90, !dbg !725
  %92 = load i32, i32* %91, align 4, !dbg !725, !tbaa !229
  %93 = add i32 %88, %92, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %94 = icmp sgt i32 %93, 0, !dbg !728
  br i1 %94, label %96, label %95, !dbg !730

; <label>:95:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  br label %249, !dbg !733

; <label>:96:                                     ; preds = %74
  %97 = sext i32 %93 to i64, !dbg !734
  %98 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %97, !dbg !734
  %99 = load i32, i32* %98, align 4, !dbg !734, !tbaa !229
  %100 = sub nsw i32 0, %99, !dbg !738
  %101 = and i32 %99, %100, !dbg !739
  %102 = icmp ult i32 %101, 65536, !dbg !741
  %103 = icmp ult i32 %101, 256, !dbg !742
  %104 = select i1 %103, i32 0, i32 8, !dbg !743
  %105 = icmp ult i32 %101, 16777216, !dbg !744
  %106 = select i1 %105, i32 16, i32 24, !dbg !745
  %107 = select i1 %102, i32 %104, i32 %106, !dbg !746
  %108 = lshr i32 %101, %107, !dbg !748
  %109 = zext i32 %108 to i64, !dbg !749
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %109, !dbg !749
  %111 = load i32, i32* %110, align 4, !dbg !749, !tbaa !229
  %112 = add i32 %107, %111, !dbg !750
  br label %113, !dbg !751

; <label>:113:                                    ; preds = %60, %96
  %114 = phi i32 [ %73, %60 ], [ %112, %96 ]
  %115 = phi i64 [ %54, %60 ], [ %97, %96 ]
  %116 = phi i32 [ %52, %60 ], [ %93, %96 ], !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  %117 = sext i32 %114 to i64, !dbg !663
  %118 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 4, i64 %115, i64 %117, !dbg !663
  %119 = load %struct.bhdr_struct*, %struct.bhdr_struct** %118, align 8, !dbg !753, !tbaa !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  %120 = icmp eq %struct.bhdr_struct* %119, null, !dbg !754
  br i1 %120, label %249, label %121, !dbg !733

; <label>:121:                                    ; preds = %113
  %122 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %119, i64 0, i32 2, !dbg !756
  %123 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %119, i64 0, i32 2, i32 0, i32 1, !dbg !756
  %124 = bitcast %struct.bhdr_struct** %123 to i64*, !dbg !756
  %125 = load i64, i64* %124, align 8, !dbg !756, !tbaa !132
  %126 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !756
  %127 = bitcast i8* %126 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !756
  %128 = sext i32 %116 to i64, !dbg !756
  %129 = sext i32 %114 to i64, !dbg !756
  %130 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %127, i64 0, i64 %128, i64 %129, !dbg !756
  %131 = bitcast %struct.bhdr_struct** %130 to i64*, !dbg !756
  store i64 %125, i64* %131, align 8, !dbg !756, !tbaa !246
  %132 = icmp eq i64 %125, 0, !dbg !760
  br i1 %132, label %136, label %133, !dbg !756

; <label>:133:                                    ; preds = %121
  %134 = inttoptr i64 %125 to %struct.bhdr_struct*, !dbg !760
  %135 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %134, i64 0, i32 2, i32 0, i32 0, !dbg !760
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %135, align 8, !dbg !760, !tbaa !132
  br label %161, !dbg !760

; <label>:136:                                    ; preds = %121
  %137 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !762
  %138 = bitcast i8* %137 to [24 x i32]*, !dbg !762
  %139 = getelementptr inbounds [24 x i32], [24 x i32]* %138, i64 0, i64 %128, !dbg !762
  %140 = and i32 %114, 31, !dbg !767
  %141 = shl i32 1, %140, !dbg !768
  %142 = xor i32 %141, -1, !dbg !769
  %143 = ashr i32 %114, 5, !dbg !770
  %144 = sext i32 %143 to i64, !dbg !771
  %145 = getelementptr inbounds i32, i32* %139, i64 %144, !dbg !771
  %146 = load i32, i32* %145, align 4, !dbg !772, !tbaa !229
  %147 = and i32 %146, %142, !dbg !772
  store i32 %147, i32* %145, align 4, !dbg !772, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %148 = load i32, i32* %139, align 4, !dbg !774, !tbaa !229
  %149 = icmp eq i32 %148, 0, !dbg !774
  br i1 %149, label %150, label %161, !dbg !762

; <label>:150:                                    ; preds = %136
  %151 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !774
  %152 = bitcast i8* %151 to i32*, !dbg !774
  %153 = and i32 %116, 31, !dbg !779
  %154 = shl i32 1, %153, !dbg !780
  %155 = xor i32 %154, -1, !dbg !781
  %156 = ashr i32 %116, 5, !dbg !782
  %157 = sext i32 %156 to i64, !dbg !783
  %158 = getelementptr inbounds i32, i32* %152, i64 %157, !dbg !783
  %159 = load i32, i32* %158, align 4, !dbg !784, !tbaa !229
  %160 = and i32 %159, %155, !dbg !784
  store i32 %160, i32* %158, align 4, !dbg !784, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br label %161, !dbg !774

; <label>:161:                                    ; preds = %136, %150, %133
  %162 = bitcast %union.anon* %122 to <2 x %struct.bhdr_struct*>*, !dbg !756
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %162, align 8, !dbg !756, !tbaa !132
  %163 = bitcast %union.anon* %122 to i8*, !dbg !786
  %164 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %119, i64 0, i32 1, !dbg !786
  %165 = load i64, i64* %164, align 8, !dbg !786, !tbaa !101
  %166 = and i64 %165, 4294967288, !dbg !786
  %167 = getelementptr inbounds i8, i8* %163, i64 %166, !dbg !786
  %168 = sub i64 %166, %51, !dbg !787
  %169 = icmp ugt i64 %168, 31, !dbg !789
  br i1 %169, label %170, label %241, !dbg !791

; <label>:170:                                    ; preds = %161
  %171 = add i64 %168, -16, !dbg !793
  %172 = getelementptr inbounds i8, i8* %163, i64 %51, !dbg !795
  %173 = or i64 %171, 1, !dbg !796
  %174 = getelementptr inbounds i8, i8* %172, i64 8, !dbg !797
  %175 = bitcast i8* %174 to i64*, !dbg !797
  store i64 %173, i64* %175, align 8, !dbg !798, !tbaa !101
  %176 = bitcast i8* %167 to i8**, !dbg !799
  store i8* %172, i8** %176, align 8, !dbg !799, !tbaa !136
  %177 = icmp ult i64 %171, 128, !dbg !802
  br i1 %177, label %178, label %181, !dbg !803

; <label>:178:                                    ; preds = %170
  %179 = lshr i64 %171, 2, !dbg !804
  %180 = trunc i64 %179 to i32, !dbg !805
  br label %200, !dbg !806

; <label>:181:                                    ; preds = %170
  %182 = trunc i64 %171 to i32, !dbg !807
  %183 = icmp ult i32 %182, 65536, !dbg !811
  %184 = icmp ult i32 %182, 256, !dbg !812
  %185 = select i1 %184, i32 0, i32 8, !dbg !813
  %186 = icmp ult i32 %182, 16777216, !dbg !814
  %187 = select i1 %186, i32 16, i32 24, !dbg !815
  %188 = select i1 %183, i32 %185, i32 %187, !dbg !816
  %189 = lshr i32 %182, %188, !dbg !818
  %190 = zext i32 %189 to i64, !dbg !819
  %191 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %190, !dbg !819
  %192 = load i32, i32* %191, align 4, !dbg !819, !tbaa !229
  %193 = add i32 %192, %188, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  %194 = add nsw i32 %193, -5, !dbg !822
  %195 = zext i32 %194 to i64, !dbg !823
  %196 = lshr i64 %171, %195, !dbg !823
  %197 = trunc i64 %196 to i32, !dbg !824
  %198 = add i32 %197, -32, !dbg !824
  %199 = add nsw i32 %193, -6, !dbg !825
  br label %200

; <label>:200:                                    ; preds = %178, %181
  %201 = phi i32 [ 0, %178 ], [ %199, %181 ], !dbg !826
  %202 = phi i32 [ %180, %178 ], [ %198, %181 ], !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  %203 = getelementptr inbounds i8, i8* %172, i64 16, !dbg !828
  %204 = bitcast i8* %203 to %struct.bhdr_struct**, !dbg !828
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %204, align 8, !dbg !828, !tbaa !132
  %205 = sext i32 %201 to i64, !dbg !828
  %206 = sext i32 %202 to i64, !dbg !828
  %207 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %127, i64 0, i64 %205, i64 %206, !dbg !828
  %208 = bitcast %struct.bhdr_struct** %207 to i64*, !dbg !828
  %209 = load i64, i64* %208, align 8, !dbg !828, !tbaa !246
  %210 = getelementptr inbounds i8, i8* %203, i64 8, !dbg !828
  %211 = bitcast i8* %210 to i64*, !dbg !828
  store i64 %209, i64* %211, align 8, !dbg !828, !tbaa !132
  %212 = load %struct.bhdr_struct*, %struct.bhdr_struct** %207, align 8, !dbg !830, !tbaa !246
  %213 = icmp eq %struct.bhdr_struct* %212, null, !dbg !830
  br i1 %213, label %217, label %214, !dbg !828

; <label>:214:                                    ; preds = %200
  %215 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %212, i64 0, i32 2, i32 0, i32 0, !dbg !830
  %216 = bitcast %struct.bhdr_struct** %215 to i8**, !dbg !830
  store i8* %172, i8** %216, align 8, !dbg !830, !tbaa !132
  br label %217, !dbg !830

; <label>:217:                                    ; preds = %200, %214
  %218 = bitcast %struct.bhdr_struct** %207 to i8**, !dbg !828
  store i8* %172, i8** %218, align 8, !dbg !828, !tbaa !246
  %219 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !828
  %220 = bitcast i8* %219 to [24 x i32]*, !dbg !828
  %221 = getelementptr inbounds [24 x i32], [24 x i32]* %220, i64 0, i64 %205, !dbg !828
  %222 = and i32 %202, 31, !dbg !836
  %223 = shl i32 1, %222, !dbg !837
  %224 = ashr i32 %202, 5, !dbg !838
  %225 = sext i32 %224 to i64, !dbg !839
  %226 = getelementptr inbounds i32, i32* %221, i64 %225, !dbg !839
  %227 = load i32, i32* %226, align 4, !dbg !840, !tbaa !229
  %228 = or i32 %227, %223, !dbg !840
  store i32 %228, i32* %226, align 4, !dbg !840, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %229 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !828
  %230 = bitcast i8* %229 to i32*, !dbg !828
  %231 = and i32 %201, 31, !dbg !845
  %232 = shl i32 1, %231, !dbg !846
  %233 = ashr i32 %201, 5, !dbg !847
  %234 = sext i32 %233 to i64, !dbg !848
  %235 = getelementptr inbounds i32, i32* %230, i64 %234, !dbg !848
  %236 = load i32, i32* %235, align 4, !dbg !849, !tbaa !229
  %237 = or i32 %236, %232, !dbg !849
  store i32 %237, i32* %235, align 4, !dbg !849, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %238 = load i64, i64* %164, align 8, !dbg !851, !tbaa !101
  %239 = and i64 %238, 2, !dbg !852
  %240 = or i64 %239, %51, !dbg !853
  br label %247, !dbg !854

; <label>:241:                                    ; preds = %161
  %242 = getelementptr inbounds i8, i8* %167, i64 8, !dbg !855
  %243 = bitcast i8* %242 to i64*, !dbg !855
  %244 = load i64, i64* %243, align 8, !dbg !857, !tbaa !101
  %245 = and i64 %244, -3, !dbg !857
  store i64 %245, i64* %243, align 8, !dbg !857, !tbaa !101
  %246 = and i64 %165, -2, !dbg !858
  br label %247

; <label>:247:                                    ; preds = %217, %241
  %248 = phi i64 [ %246, %241 ], [ %240, %217 ]
  store i64 %248, i64* %164, align 8, !dbg !826, !tbaa !101
  br label %249, !dbg !859

; <label>:249:                                    ; preds = %95, %113, %247
  %250 = phi i8* [ %163, %247 ], [ null, %113 ], [ null, %95 ], !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  ret i8* %250, !dbg !861
}

; Function Attrs: noredzone nounwind
define dso_local void @tlsf_free(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !862 {
  tail call void @free_ex(i8* %0, i8* %1) #4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  ret void, !dbg !869
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_realloc(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !870 {
  %4 = tail call i8* @realloc_ex(i8* %0, i64 %1, i8* %2) #4, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  ret i8* %4, !dbg !883
}

; Function Attrs: noredzone nounwind
define dso_local i8* @realloc_ex(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !884 {
  %4 = icmp eq i8* %0, null, !dbg !902
  %5 = icmp ne i64 %1, 0, !dbg !904
  br i1 %4, label %6, label %9, !dbg !907

; <label>:6:                                      ; preds = %3
  br i1 %5, label %7, label %391, !dbg !908

; <label>:7:                                      ; preds = %6
  %8 = tail call i8* @malloc_ex(i64 %1, i8* %2) #4, !dbg !909
  br label %391, !dbg !910

; <label>:9:                                      ; preds = %3
  br i1 %5, label %11, label %10, !dbg !911

; <label>:10:                                     ; preds = %9
  tail call void @free_ex(i8* nonnull %0, i8* %2) #4, !dbg !912
  br label %391, !dbg !915

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !916
  %13 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !918
  %14 = bitcast i8* %13 to i64*, !dbg !918
  %15 = load i64, i64* %14, align 8, !dbg !918, !tbaa !101
  %16 = and i64 %15, 4294967288, !dbg !918
  %17 = getelementptr inbounds i8, i8* %0, i64 %16, !dbg !918
  %18 = bitcast i8* %17 to %struct.bhdr_struct*, !dbg !918
  %19 = icmp ult i64 %1, 16, !dbg !920
  %20 = add i64 %1, 15, !dbg !921
  %21 = and i64 %20, -16, !dbg !921
  %22 = select i1 %19, i64 16, i64 %21, !dbg !922
  %23 = icmp ugt i64 %22, %16, !dbg !924
  %24 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !926
  %25 = bitcast i8* %24 to i64*, !dbg !926
  %26 = load i64, i64* %25, align 8, !dbg !926, !tbaa !101
  %27 = and i64 %26, 1, !dbg !926
  %28 = icmp ne i64 %27, 0, !dbg !926
  br i1 %23, label %204, label %29, !dbg !928

; <label>:29:                                     ; preds = %11
  br i1 %28, label %30, label %123, !dbg !929

; <label>:30:                                     ; preds = %29
  %31 = and i64 %26, 4294967288, !dbg !931
  %32 = icmp ult i64 %31, 128, !dbg !936
  br i1 %32, label %33, label %36, !dbg !937

; <label>:33:                                     ; preds = %30
  %34 = lshr exact i64 %31, 2, !dbg !938
  %35 = trunc i64 %34 to i32, !dbg !939
  br label %55, !dbg !940

; <label>:36:                                     ; preds = %30
  %37 = trunc i64 %31 to i32, !dbg !941
  %38 = icmp ult i32 %37, 65536, !dbg !945
  %39 = icmp ult i32 %37, 256, !dbg !946
  %40 = select i1 %39, i32 0, i32 8, !dbg !947
  %41 = icmp ult i32 %37, 16777216, !dbg !948
  %42 = select i1 %41, i32 16, i32 24, !dbg !949
  %43 = select i1 %38, i32 %40, i32 %42, !dbg !950
  %44 = lshr i32 %37, %43, !dbg !952
  %45 = zext i32 %44 to i64, !dbg !953
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %45, !dbg !953
  %47 = load i32, i32* %46, align 4, !dbg !953, !tbaa !229
  %48 = add i32 %47, %43, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  %49 = add nsw i32 %48, -5, !dbg !956
  %50 = zext i32 %49 to i64, !dbg !957
  %51 = lshr i64 %31, %50, !dbg !957
  %52 = trunc i64 %51 to i32, !dbg !958
  %53 = add i32 %52, -32, !dbg !958
  %54 = add nsw i32 %48, -6, !dbg !959
  br label %55

; <label>:55:                                     ; preds = %33, %36
  %56 = phi i32 [ 0, %33 ], [ %54, %36 ], !dbg !960
  %57 = phi i32 [ %35, %33 ], [ %53, %36 ], !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  %58 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !962
  %59 = getelementptr inbounds i8, i8* %58, i64 8, !dbg !962
  %60 = bitcast i8* %59 to %struct.bhdr_struct**, !dbg !962
  %61 = load %struct.bhdr_struct*, %struct.bhdr_struct** %60, align 8, !dbg !962, !tbaa !132
  %62 = icmp eq %struct.bhdr_struct* %61, null, !dbg !962
  br i1 %62, label %68, label %63, !dbg !965

; <label>:63:                                     ; preds = %55
  %64 = bitcast i8* %58 to i64*, !dbg !962
  %65 = load i64, i64* %64, align 8, !dbg !962, !tbaa !132
  %66 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %61, i64 0, i32 2, !dbg !962
  %67 = bitcast %union.anon* %66 to i64*, !dbg !962
  store i64 %65, i64* %67, align 8, !dbg !962, !tbaa !132
  br label %68, !dbg !962

; <label>:68:                                     ; preds = %55, %63
  %69 = bitcast i8* %58 to %struct.bhdr_struct**, !dbg !966
  %70 = load %struct.bhdr_struct*, %struct.bhdr_struct** %69, align 8, !dbg !966, !tbaa !132
  %71 = icmp eq %struct.bhdr_struct* %70, null, !dbg !966
  br i1 %71, label %77, label %72, !dbg !965

; <label>:72:                                     ; preds = %68
  %73 = bitcast i8* %59 to i64*, !dbg !966
  %74 = load i64, i64* %73, align 8, !dbg !966, !tbaa !132
  %75 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %70, i64 0, i32 2, i32 0, i32 1, !dbg !966
  %76 = bitcast %struct.bhdr_struct** %75 to i64*, !dbg !966
  store i64 %74, i64* %76, align 8, !dbg !966, !tbaa !132
  br label %77, !dbg !966

; <label>:77:                                     ; preds = %68, %72
  %78 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !968
  %79 = bitcast i8* %78 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !968
  %80 = sext i32 %56 to i64, !dbg !968
  %81 = sext i32 %57 to i64, !dbg !968
  %82 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %79, i64 0, i64 %80, i64 %81, !dbg !968
  %83 = load %struct.bhdr_struct*, %struct.bhdr_struct** %82, align 8, !dbg !968, !tbaa !246
  %84 = icmp eq %struct.bhdr_struct* %83, %18, !dbg !968
  br i1 %84, label %85, label %115, !dbg !965

; <label>:85:                                     ; preds = %77
  %86 = bitcast i8* %59 to i64*, !dbg !972
  %87 = load i64, i64* %86, align 8, !dbg !972, !tbaa !132
  %88 = bitcast %struct.bhdr_struct** %82 to i64*, !dbg !972
  store i64 %87, i64* %88, align 8, !dbg !972, !tbaa !246
  %89 = icmp eq i64 %87, 0, !dbg !974
  br i1 %89, label %90, label %115, !dbg !972

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !976
  %92 = bitcast i8* %91 to [24 x i32]*, !dbg !976
  %93 = getelementptr inbounds [24 x i32], [24 x i32]* %92, i64 0, i64 %80, !dbg !976
  %94 = and i32 %57, 31, !dbg !981
  %95 = shl i32 1, %94, !dbg !982
  %96 = xor i32 %95, -1, !dbg !983
  %97 = ashr i32 %57, 5, !dbg !984
  %98 = sext i32 %97 to i64, !dbg !985
  %99 = getelementptr inbounds i32, i32* %93, i64 %98, !dbg !985
  %100 = load i32, i32* %99, align 4, !dbg !986, !tbaa !229
  %101 = and i32 %100, %96, !dbg !986
  store i32 %101, i32* %99, align 4, !dbg !986, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  %102 = load i32, i32* %93, align 4, !dbg !988, !tbaa !229
  %103 = icmp eq i32 %102, 0, !dbg !988
  br i1 %103, label %104, label %115, !dbg !976

; <label>:104:                                    ; preds = %90
  %105 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !988
  %106 = bitcast i8* %105 to i32*, !dbg !988
  %107 = and i32 %56, 31, !dbg !993
  %108 = shl i32 1, %107, !dbg !994
  %109 = xor i32 %108, -1, !dbg !995
  %110 = ashr i32 %56, 5, !dbg !996
  %111 = sext i32 %110 to i64, !dbg !997
  %112 = getelementptr inbounds i32, i32* %106, i64 %111, !dbg !997
  %113 = load i32, i32* %112, align 4, !dbg !998, !tbaa !229
  %114 = and i32 %113, %109, !dbg !998
  store i32 %114, i32* %112, align 4, !dbg !998, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  br label %115, !dbg !988

; <label>:115:                                    ; preds = %90, %85, %104, %77
  %116 = bitcast i8* %58 to <2 x %struct.bhdr_struct*>*, !dbg !965
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %116, align 8, !dbg !965, !tbaa !132
  %117 = load i64, i64* %25, align 8, !dbg !1000, !tbaa !101
  %118 = and i64 %117, 4294967288, !dbg !1001
  %119 = add nuw nsw i64 %16, 16, !dbg !1002
  %120 = add nuw nsw i64 %119, %118, !dbg !1003
  %121 = getelementptr inbounds i8, i8* %58, i64 %118, !dbg !1004
  %122 = bitcast i8* %121 to %struct.bhdr_struct*, !dbg !1004
  br label %123, !dbg !1005

; <label>:123:                                    ; preds = %115, %29
  %124 = phi %struct.bhdr_struct* [ %122, %115 ], [ %18, %29 ], !dbg !1006
  %125 = phi i64 [ %120, %115 ], [ %16, %29 ], !dbg !1006
  %126 = sub i64 %125, %22, !dbg !1007
  %127 = icmp ugt i64 %126, 31, !dbg !1008
  br i1 %127, label %128, label %391, !dbg !1010

; <label>:128:                                    ; preds = %123
  %129 = add i64 %126, -16, !dbg !1011
  %130 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !1013
  %131 = or i64 %129, 1, !dbg !1014
  %132 = getelementptr inbounds i8, i8* %130, i64 8, !dbg !1015
  %133 = bitcast i8* %132 to i64*, !dbg !1015
  store i64 %131, i64* %133, align 8, !dbg !1016, !tbaa !101
  %134 = bitcast %struct.bhdr_struct* %124 to i8**, !dbg !1017
  store i8* %130, i8** %134, align 8, !dbg !1017, !tbaa !136
  %135 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %124, i64 0, i32 1, !dbg !1018
  %136 = load i64, i64* %135, align 8, !dbg !1019, !tbaa !101
  %137 = or i64 %136, 2, !dbg !1019
  store i64 %137, i64* %135, align 8, !dbg !1019, !tbaa !101
  %138 = icmp ult i64 %129, 128, !dbg !1022
  br i1 %138, label %139, label %142, !dbg !1023

; <label>:139:                                    ; preds = %128
  %140 = lshr i64 %129, 2, !dbg !1024
  %141 = trunc i64 %140 to i32, !dbg !1025
  br label %161, !dbg !1026

; <label>:142:                                    ; preds = %128
  %143 = trunc i64 %129 to i32, !dbg !1027
  %144 = icmp ult i32 %143, 65536, !dbg !1031
  %145 = icmp ult i32 %143, 256, !dbg !1032
  %146 = select i1 %145, i32 0, i32 8, !dbg !1033
  %147 = icmp ult i32 %143, 16777216, !dbg !1034
  %148 = select i1 %147, i32 16, i32 24, !dbg !1035
  %149 = select i1 %144, i32 %146, i32 %148, !dbg !1036
  %150 = lshr i32 %143, %149, !dbg !1038
  %151 = zext i32 %150 to i64, !dbg !1039
  %152 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %151, !dbg !1039
  %153 = load i32, i32* %152, align 4, !dbg !1039, !tbaa !229
  %154 = add i32 %153, %149, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  %155 = add nsw i32 %154, -5, !dbg !1042
  %156 = zext i32 %155 to i64, !dbg !1043
  %157 = lshr i64 %129, %156, !dbg !1043
  %158 = trunc i64 %157 to i32, !dbg !1044
  %159 = add i32 %158, -32, !dbg !1044
  %160 = add nsw i32 %154, -6, !dbg !1045
  br label %161

; <label>:161:                                    ; preds = %139, %142
  %162 = phi i32 [ 0, %139 ], [ %160, %142 ], !dbg !1046
  %163 = phi i32 [ %141, %139 ], [ %159, %142 ], !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  %164 = getelementptr inbounds i8, i8* %130, i64 16, !dbg !1048
  %165 = bitcast i8* %164 to %struct.bhdr_struct**, !dbg !1048
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %165, align 8, !dbg !1048, !tbaa !132
  %166 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1048
  %167 = bitcast i8* %166 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1048
  %168 = sext i32 %162 to i64, !dbg !1048
  %169 = sext i32 %163 to i64, !dbg !1048
  %170 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %167, i64 0, i64 %168, i64 %169, !dbg !1048
  %171 = bitcast %struct.bhdr_struct** %170 to i64*, !dbg !1048
  %172 = load i64, i64* %171, align 8, !dbg !1048, !tbaa !246
  %173 = getelementptr inbounds i8, i8* %164, i64 8, !dbg !1048
  %174 = bitcast i8* %173 to i64*, !dbg !1048
  store i64 %172, i64* %174, align 8, !dbg !1048, !tbaa !132
  %175 = load %struct.bhdr_struct*, %struct.bhdr_struct** %170, align 8, !dbg !1050, !tbaa !246
  %176 = icmp eq %struct.bhdr_struct* %175, null, !dbg !1050
  br i1 %176, label %180, label %177, !dbg !1048

; <label>:177:                                    ; preds = %161
  %178 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %175, i64 0, i32 2, i32 0, i32 0, !dbg !1050
  %179 = bitcast %struct.bhdr_struct** %178 to i8**, !dbg !1050
  store i8* %130, i8** %179, align 8, !dbg !1050, !tbaa !132
  br label %180, !dbg !1050

; <label>:180:                                    ; preds = %161, %177
  %181 = bitcast %struct.bhdr_struct** %170 to i8**, !dbg !1048
  store i8* %130, i8** %181, align 8, !dbg !1048, !tbaa !246
  %182 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1048
  %183 = bitcast i8* %182 to [24 x i32]*, !dbg !1048
  %184 = getelementptr inbounds [24 x i32], [24 x i32]* %183, i64 0, i64 %168, !dbg !1048
  %185 = and i32 %163, 31, !dbg !1056
  %186 = shl i32 1, %185, !dbg !1057
  %187 = ashr i32 %163, 5, !dbg !1058
  %188 = sext i32 %187 to i64, !dbg !1059
  %189 = getelementptr inbounds i32, i32* %184, i64 %188, !dbg !1059
  %190 = load i32, i32* %189, align 4, !dbg !1060, !tbaa !229
  %191 = or i32 %190, %186, !dbg !1060
  store i32 %191, i32* %189, align 4, !dbg !1060, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  %192 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1048
  %193 = bitcast i8* %192 to i32*, !dbg !1048
  %194 = and i32 %162, 31, !dbg !1065
  %195 = shl i32 1, %194, !dbg !1066
  %196 = ashr i32 %162, 5, !dbg !1067
  %197 = sext i32 %196 to i64, !dbg !1068
  %198 = getelementptr inbounds i32, i32* %193, i64 %197, !dbg !1068
  %199 = load i32, i32* %198, align 4, !dbg !1069, !tbaa !229
  %200 = or i32 %199, %195, !dbg !1069
  store i32 %200, i32* %198, align 4, !dbg !1069, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  %201 = load i64, i64* %14, align 8, !dbg !1071, !tbaa !101
  %202 = and i64 %201, 2, !dbg !1072
  %203 = or i64 %202, %22, !dbg !1073
  store i64 %203, i64* %14, align 8, !dbg !1074, !tbaa !101
  br label %391, !dbg !1075

; <label>:204:                                    ; preds = %11
  br i1 %28, label %205, label %381, !dbg !1076

; <label>:205:                                    ; preds = %204
  %206 = and i64 %26, 4294967288, !dbg !1077
  %207 = add nuw nsw i64 %206, %16, !dbg !1080
  %208 = icmp ugt i64 %22, %207, !dbg !1081
  br i1 %208, label %381, label %209, !dbg !1082

; <label>:209:                                    ; preds = %205
  %210 = icmp ult i64 %206, 128, !dbg !1086
  br i1 %210, label %211, label %214, !dbg !1087

; <label>:211:                                    ; preds = %209
  %212 = lshr exact i64 %206, 2, !dbg !1088
  %213 = trunc i64 %212 to i32, !dbg !1089
  br label %233, !dbg !1090

; <label>:214:                                    ; preds = %209
  %215 = trunc i64 %206 to i32, !dbg !1091
  %216 = icmp ult i32 %215, 65536, !dbg !1095
  %217 = icmp ult i32 %215, 256, !dbg !1096
  %218 = select i1 %217, i32 0, i32 8, !dbg !1097
  %219 = icmp ult i32 %215, 16777216, !dbg !1098
  %220 = select i1 %219, i32 16, i32 24, !dbg !1099
  %221 = select i1 %216, i32 %218, i32 %220, !dbg !1100
  %222 = lshr i32 %215, %221, !dbg !1102
  %223 = zext i32 %222 to i64, !dbg !1103
  %224 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %223, !dbg !1103
  %225 = load i32, i32* %224, align 4, !dbg !1103, !tbaa !229
  %226 = add i32 %225, %221, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  %227 = add nsw i32 %226, -5, !dbg !1106
  %228 = zext i32 %227 to i64, !dbg !1107
  %229 = lshr i64 %206, %228, !dbg !1107
  %230 = trunc i64 %229 to i32, !dbg !1108
  %231 = add i32 %230, -32, !dbg !1108
  %232 = add nsw i32 %226, -6, !dbg !1109
  br label %233

; <label>:233:                                    ; preds = %211, %214
  %234 = phi i32 [ 0, %211 ], [ %232, %214 ], !dbg !1110
  %235 = phi i32 [ %213, %211 ], [ %231, %214 ], !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %236 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !1112
  %237 = getelementptr inbounds i8, i8* %236, i64 8, !dbg !1112
  %238 = bitcast i8* %237 to %struct.bhdr_struct**, !dbg !1112
  %239 = load %struct.bhdr_struct*, %struct.bhdr_struct** %238, align 8, !dbg !1112, !tbaa !132
  %240 = icmp eq %struct.bhdr_struct* %239, null, !dbg !1112
  br i1 %240, label %246, label %241, !dbg !1115

; <label>:241:                                    ; preds = %233
  %242 = bitcast i8* %236 to i64*, !dbg !1112
  %243 = load i64, i64* %242, align 8, !dbg !1112, !tbaa !132
  %244 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %239, i64 0, i32 2, !dbg !1112
  %245 = bitcast %union.anon* %244 to i64*, !dbg !1112
  store i64 %243, i64* %245, align 8, !dbg !1112, !tbaa !132
  br label %246, !dbg !1112

; <label>:246:                                    ; preds = %233, %241
  %247 = bitcast i8* %236 to %struct.bhdr_struct**, !dbg !1116
  %248 = load %struct.bhdr_struct*, %struct.bhdr_struct** %247, align 8, !dbg !1116, !tbaa !132
  %249 = icmp eq %struct.bhdr_struct* %248, null, !dbg !1116
  br i1 %249, label %255, label %250, !dbg !1115

; <label>:250:                                    ; preds = %246
  %251 = bitcast i8* %237 to i64*, !dbg !1116
  %252 = load i64, i64* %251, align 8, !dbg !1116, !tbaa !132
  %253 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %248, i64 0, i32 2, i32 0, i32 1, !dbg !1116
  %254 = bitcast %struct.bhdr_struct** %253 to i64*, !dbg !1116
  store i64 %252, i64* %254, align 8, !dbg !1116, !tbaa !132
  br label %255, !dbg !1116

; <label>:255:                                    ; preds = %246, %250
  %256 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1118
  %257 = bitcast i8* %256 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1118
  %258 = sext i32 %234 to i64, !dbg !1118
  %259 = sext i32 %235 to i64, !dbg !1118
  %260 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %257, i64 0, i64 %258, i64 %259, !dbg !1118
  %261 = load %struct.bhdr_struct*, %struct.bhdr_struct** %260, align 8, !dbg !1118, !tbaa !246
  %262 = icmp eq %struct.bhdr_struct* %261, %18, !dbg !1118
  br i1 %262, label %263, label %293, !dbg !1115

; <label>:263:                                    ; preds = %255
  %264 = bitcast i8* %237 to i64*, !dbg !1120
  %265 = load i64, i64* %264, align 8, !dbg !1120, !tbaa !132
  %266 = bitcast %struct.bhdr_struct** %260 to i64*, !dbg !1120
  store i64 %265, i64* %266, align 8, !dbg !1120, !tbaa !246
  %267 = icmp eq i64 %265, 0, !dbg !1122
  br i1 %267, label %268, label %293, !dbg !1120

; <label>:268:                                    ; preds = %263
  %269 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1124
  %270 = bitcast i8* %269 to [24 x i32]*, !dbg !1124
  %271 = getelementptr inbounds [24 x i32], [24 x i32]* %270, i64 0, i64 %258, !dbg !1124
  %272 = and i32 %235, 31, !dbg !1129
  %273 = shl i32 1, %272, !dbg !1130
  %274 = xor i32 %273, -1, !dbg !1131
  %275 = ashr i32 %235, 5, !dbg !1132
  %276 = sext i32 %275 to i64, !dbg !1133
  %277 = getelementptr inbounds i32, i32* %271, i64 %276, !dbg !1133
  %278 = load i32, i32* %277, align 4, !dbg !1134, !tbaa !229
  %279 = and i32 %278, %274, !dbg !1134
  store i32 %279, i32* %277, align 4, !dbg !1134, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  %280 = load i32, i32* %271, align 4, !dbg !1136, !tbaa !229
  %281 = icmp eq i32 %280, 0, !dbg !1136
  br i1 %281, label %282, label %293, !dbg !1124

; <label>:282:                                    ; preds = %268
  %283 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1136
  %284 = bitcast i8* %283 to i32*, !dbg !1136
  %285 = and i32 %234, 31, !dbg !1141
  %286 = shl i32 1, %285, !dbg !1142
  %287 = xor i32 %286, -1, !dbg !1143
  %288 = ashr i32 %234, 5, !dbg !1144
  %289 = sext i32 %288 to i64, !dbg !1145
  %290 = getelementptr inbounds i32, i32* %284, i64 %289, !dbg !1145
  %291 = load i32, i32* %290, align 4, !dbg !1146, !tbaa !229
  %292 = and i32 %291, %287, !dbg !1146
  store i32 %292, i32* %290, align 4, !dbg !1146, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br label %293, !dbg !1136

; <label>:293:                                    ; preds = %268, %263, %282, %255
  %294 = bitcast i8* %236 to <2 x %struct.bhdr_struct*>*, !dbg !1115
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %294, align 8, !dbg !1115, !tbaa !132
  %295 = load i64, i64* %25, align 8, !dbg !1148, !tbaa !101
  %296 = and i64 %295, 4294967288, !dbg !1149
  %297 = add nuw nsw i64 %296, 16, !dbg !1150
  %298 = load i64, i64* %14, align 8, !dbg !1151, !tbaa !101
  %299 = add i64 %297, %298, !dbg !1151
  store i64 %299, i64* %14, align 8, !dbg !1151, !tbaa !101
  %300 = and i64 %299, 4294967288, !dbg !1152
  %301 = getelementptr inbounds i8, i8* %0, i64 %300, !dbg !1152
  %302 = bitcast i8* %301 to i8**, !dbg !1153
  store i8* %12, i8** %302, align 8, !dbg !1153, !tbaa !136
  %303 = getelementptr inbounds i8, i8* %301, i64 8, !dbg !1154
  %304 = bitcast i8* %303 to i64*, !dbg !1154
  %305 = load i64, i64* %304, align 8, !dbg !1155, !tbaa !101
  %306 = and i64 %305, -3, !dbg !1155
  store i64 %306, i64* %304, align 8, !dbg !1155, !tbaa !101
  %307 = sub i64 %300, %22, !dbg !1156
  %308 = icmp ugt i64 %307, 31, !dbg !1157
  br i1 %308, label %309, label %391, !dbg !1159

; <label>:309:                                    ; preds = %293
  %310 = add i64 %307, -16, !dbg !1160
  %311 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !1162
  %312 = or i64 %310, 1, !dbg !1163
  %313 = getelementptr inbounds i8, i8* %311, i64 8, !dbg !1164
  %314 = bitcast i8* %313 to i64*, !dbg !1164
  store i64 %312, i64* %314, align 8, !dbg !1165, !tbaa !101
  store i8* %311, i8** %302, align 8, !dbg !1166, !tbaa !136
  %315 = load i64, i64* %304, align 8, !dbg !1167, !tbaa !101
  %316 = or i64 %315, 2, !dbg !1167
  store i64 %316, i64* %304, align 8, !dbg !1167, !tbaa !101
  %317 = icmp ult i64 %310, 128, !dbg !1170
  br i1 %317, label %318, label %321, !dbg !1171

; <label>:318:                                    ; preds = %309
  %319 = lshr exact i64 %310, 2, !dbg !1172
  %320 = trunc i64 %319 to i32, !dbg !1173
  br label %340, !dbg !1174

; <label>:321:                                    ; preds = %309
  %322 = trunc i64 %310 to i32, !dbg !1175
  %323 = icmp ult i32 %322, 65536, !dbg !1179
  %324 = icmp ult i32 %322, 256, !dbg !1180
  %325 = select i1 %324, i32 0, i32 8, !dbg !1181
  %326 = icmp ult i32 %322, 16777216, !dbg !1182
  %327 = select i1 %326, i32 16, i32 24, !dbg !1183
  %328 = select i1 %323, i32 %325, i32 %327, !dbg !1184
  %329 = lshr i32 %322, %328, !dbg !1186
  %330 = zext i32 %329 to i64, !dbg !1187
  %331 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %330, !dbg !1187
  %332 = load i32, i32* %331, align 4, !dbg !1187, !tbaa !229
  %333 = add i32 %332, %328, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  %334 = add nsw i32 %333, -5, !dbg !1190
  %335 = zext i32 %334 to i64, !dbg !1191
  %336 = lshr i64 %310, %335, !dbg !1191
  %337 = trunc i64 %336 to i32, !dbg !1192
  %338 = add i32 %337, -32, !dbg !1192
  %339 = add nsw i32 %333, -6, !dbg !1193
  br label %340

; <label>:340:                                    ; preds = %318, %321
  %341 = phi i32 [ 0, %318 ], [ %339, %321 ], !dbg !1194
  %342 = phi i32 [ %320, %318 ], [ %338, %321 ], !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  %343 = getelementptr inbounds i8, i8* %311, i64 16, !dbg !1196
  %344 = bitcast i8* %343 to %struct.bhdr_struct**, !dbg !1196
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %344, align 8, !dbg !1196, !tbaa !132
  %345 = sext i32 %341 to i64, !dbg !1196
  %346 = sext i32 %342 to i64, !dbg !1196
  %347 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %257, i64 0, i64 %345, i64 %346, !dbg !1196
  %348 = bitcast %struct.bhdr_struct** %347 to i64*, !dbg !1196
  %349 = load i64, i64* %348, align 8, !dbg !1196, !tbaa !246
  %350 = getelementptr inbounds i8, i8* %343, i64 8, !dbg !1196
  %351 = bitcast i8* %350 to i64*, !dbg !1196
  store i64 %349, i64* %351, align 8, !dbg !1196, !tbaa !132
  %352 = load %struct.bhdr_struct*, %struct.bhdr_struct** %347, align 8, !dbg !1198, !tbaa !246
  %353 = icmp eq %struct.bhdr_struct* %352, null, !dbg !1198
  br i1 %353, label %357, label %354, !dbg !1196

; <label>:354:                                    ; preds = %340
  %355 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %352, i64 0, i32 2, i32 0, i32 0, !dbg !1198
  %356 = bitcast %struct.bhdr_struct** %355 to i8**, !dbg !1198
  store i8* %311, i8** %356, align 8, !dbg !1198, !tbaa !132
  br label %357, !dbg !1198

; <label>:357:                                    ; preds = %340, %354
  %358 = bitcast %struct.bhdr_struct** %347 to i8**, !dbg !1196
  store i8* %311, i8** %358, align 8, !dbg !1196, !tbaa !246
  %359 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1196
  %360 = bitcast i8* %359 to [24 x i32]*, !dbg !1196
  %361 = getelementptr inbounds [24 x i32], [24 x i32]* %360, i64 0, i64 %345, !dbg !1196
  %362 = and i32 %342, 31, !dbg !1203
  %363 = shl i32 1, %362, !dbg !1204
  %364 = ashr i32 %342, 5, !dbg !1205
  %365 = sext i32 %364 to i64, !dbg !1206
  %366 = getelementptr inbounds i32, i32* %361, i64 %365, !dbg !1206
  %367 = load i32, i32* %366, align 4, !dbg !1207, !tbaa !229
  %368 = or i32 %367, %363, !dbg !1207
  store i32 %368, i32* %366, align 4, !dbg !1207, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %369 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1196
  %370 = bitcast i8* %369 to i32*, !dbg !1196
  %371 = and i32 %341, 31, !dbg !1212
  %372 = shl i32 1, %371, !dbg !1213
  %373 = ashr i32 %341, 5, !dbg !1214
  %374 = sext i32 %373 to i64, !dbg !1215
  %375 = getelementptr inbounds i32, i32* %370, i64 %374, !dbg !1215
  %376 = load i32, i32* %375, align 4, !dbg !1216, !tbaa !229
  %377 = or i32 %376, %372, !dbg !1216
  store i32 %377, i32* %375, align 4, !dbg !1216, !tbaa !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  %378 = load i64, i64* %14, align 8, !dbg !1218, !tbaa !101
  %379 = and i64 %378, 2, !dbg !1219
  %380 = or i64 %379, %22, !dbg !1220
  store i64 %380, i64* %14, align 8, !dbg !1221, !tbaa !101
  br label %391, !dbg !1222

; <label>:381:                                    ; preds = %205, %204
  %382 = tail call i8* @malloc_ex(i64 %22, i8* %2) #4, !dbg !1223
  %383 = icmp eq i8* %382, null, !dbg !1226
  br i1 %383, label %391, label %384, !dbg !1227

; <label>:384:                                    ; preds = %381
  %385 = load i64, i64* %14, align 8, !dbg !1228, !tbaa !101
  %386 = and i64 %385, 4294967288, !dbg !1229
  %387 = icmp ugt i64 %386, %22, !dbg !1230
  %388 = select i1 %387, i64 %22, i64 %386, !dbg !1231
  %389 = and i64 %388, 4294967295, !dbg !1232
  %390 = tail call i8* @memcpy(i8* nonnull %382, i8* nonnull %0, i64 %389) #3, !dbg !1234
  tail call void @free_ex(i8* nonnull %0, i8* %2) #4, !dbg !1235
  br label %391, !dbg !1236

; <label>:391:                                    ; preds = %381, %357, %293, %180, %123, %6, %384, %10, %7
  %392 = phi i8* [ %382, %384 ], [ null, %10 ], [ %8, %7 ], [ null, %6 ], [ %0, %123 ], [ %0, %180 ], [ %0, %293 ], [ %0, %357 ], [ null, %381 ], !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  ret i8* %392, !dbg !1239
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_calloc(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1240 {
  %4 = icmp eq i64 %0, 0, !dbg !1261
  %5 = icmp eq i64 %1, 0, !dbg !1263
  %6 = or i1 %4, %5, !dbg !1264
  br i1 %6, label %13, label %7, !dbg !1264

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1265
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #3, !dbg !1267
  %10 = icmp eq i8* %9, null, !dbg !1269
  br i1 %10, label %13, label %11, !dbg !1270

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #3, !dbg !1271
  br label %13, !dbg !1272

; <label>:13:                                     ; preds = %3, %7, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  ret i8* %14, !dbg !1276
}

; Function Attrs: noredzone nounwind
define dso_local i8* @calloc_ex(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1252 {
  %4 = icmp eq i64 %0, 0, !dbg !1280
  %5 = icmp eq i64 %1, 0, !dbg !1281
  %6 = or i1 %4, %5, !dbg !1282
  br i1 %6, label %13, label %7, !dbg !1282

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1283
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #4, !dbg !1284
  %10 = icmp eq i8* %9, null, !dbg !1286
  br i1 %10, label %13, label %11, !dbg !1287

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #3, !dbg !1288
  br label %13, !dbg !1289

; <label>:13:                                     ; preds = %7, %3, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  ret i8* %14, !dbg !1291
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "table", scope: !2, file: !3, line: 256, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !59)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libtlsf/origin/TLSF-2.4.6/src/tlsf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !20, !56, !15, !58, !13}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "tlsf_t", file: !3, line: 238, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TLSF_struct", file: !3, line: 212, size: 50112, elements: !10)
!10 = !{!11, !14, !47, !48, !52}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "tlsf_signature", scope: !9, file: !3, line: 214, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !3, line: 184, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "area_head", scope: !9, file: !3, line: 228, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "area_info_t", file: !3, line: 210, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "area_info_struct", file: !3, line: 207, size: 128, elements: !18)
!18 = !{!19, !45}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !17, file: !3, line: 208, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "bhdr_t", file: !3, line: 202, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bhdr_struct", file: !3, line: 192, size: 256, elements: !23)
!23 = !{!24, !26, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prev_hdr", scope: !22, file: !3, line: 194, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !3, line: 196, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 40, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !30, line: 129, baseType: !6)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !22, file: !3, line: 201, baseType: !32, size: 128, offset: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !3, line: 198, size: 128, elements: !33)
!33 = !{!34, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "free_ptr", scope: !32, file: !3, line: 199, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_ptr_struct", file: !3, line: 187, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !35, file: !3, line: 188, baseType: !25, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !3, line: 189, baseType: !25, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !32, file: !3, line: 200, baseType: !40, size: 8)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !43)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !3, line: 185, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !3, line: 209, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fl_bitmap", scope: !9, file: !3, line: 232, baseType: !12, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sl_bitmap", scope: !9, file: !3, line: 235, baseType: !49, size: 768, offset: 160)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 24)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !9, file: !3, line: 237, baseType: !53, size: 49152, offset: 960)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 49152, elements: !54)
!54 = !{!51, !55}
!55 = !DISubrange(count: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !{!0}
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8192, elements: !63)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !{!64}
!64 = !DISubrange(count: 256)
!65 = !{i32 2, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!69 = distinct !DISubprogram(name: "init_memory_pool", scope: !3, file: !3, line: 456, type: !70, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!27, !27, !58}
!72 = !{!73, !74, !75, !76, !77}
!73 = !DILocalVariable(name: "mem_pool_size", arg: 1, scope: !69, file: !3, line: 456, type: !27)
!74 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !69, file: !3, line: 456, type: !58)
!75 = !DILocalVariable(name: "tlsf", scope: !69, file: !3, line: 459, type: !7)
!76 = !DILocalVariable(name: "b", scope: !69, file: !3, line: 460, type: !20)
!77 = !DILocalVariable(name: "ib", scope: !69, file: !3, line: 460, type: !20)
!78 = !DILocation(line: 456, column: 32, scope: !69)
!79 = !DILocation(line: 456, column: 53, scope: !69)
!80 = !DILocation(line: 462, column: 10, scope: !81)
!81 = distinct !DILexicalBlock(scope: !69, file: !3, line: 462, column: 9)
!82 = !DILocation(line: 462, column: 54, scope: !81)
!83 = !DILocation(line: 462, column: 19, scope: !81)
!84 = !DILocation(line: 467, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !69, file: !3, line: 467, column: 9)
!86 = !DILocation(line: 467, column: 35, scope: !85)
!87 = !DILocation(line: 467, column: 9, scope: !69)
!88 = !DILocation(line: 473, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !69, file: !3, line: 473, column: 9)
!90 = !{!91, !92, i64 0}
!91 = !{!"TLSF_struct", !92, i64 0, !95, i64 8, !92, i64 16, !93, i64 20, !93, i64 120}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!"any pointer", !93, i64 0}
!96 = !DILocation(line: 473, column: 30, scope: !89)
!97 = !DILocation(line: 473, column: 9, scope: !69)
!98 = !DILocation(line: 460, column: 13, scope: !69)
!99 = !DILocation(line: 475, column: 19, scope: !100)
!100 = distinct !DILexicalBlock(scope: !89, file: !3, line: 473, column: 49)
!101 = !{!102, !103, i64 8}
!102 = !{!"bhdr_struct", !95, i64 0, !103, i64 8, !93, i64 16}
!103 = !{!"long", !93, i64 0}
!104 = !DILocation(line: 475, column: 24, scope: !100)
!105 = !DILocation(line: 475, column: 9, scope: !100)
!106 = !DILocation(line: 459, column: 13, scope: !69)
!107 = !DILocation(line: 479, column: 5, scope: !69)
!108 = !DILocation(line: 481, column: 26, scope: !69)
!109 = !DILocalVariable(name: "area", arg: 1, scope: !110, file: !3, line: 430, type: !58)
!110 = distinct !DISubprogram(name: "process_area", scope: !3, file: !3, line: 430, type: !111, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!20, !58, !27}
!113 = !{!109, !114, !115, !116, !117, !118}
!114 = !DILocalVariable(name: "size", arg: 2, scope: !110, file: !3, line: 430, type: !27)
!115 = !DILocalVariable(name: "b", scope: !110, file: !3, line: 432, type: !20)
!116 = !DILocalVariable(name: "lb", scope: !110, file: !3, line: 432, type: !20)
!117 = !DILocalVariable(name: "ib", scope: !110, file: !3, line: 432, type: !20)
!118 = !DILocalVariable(name: "ai", scope: !110, file: !3, line: 433, type: !15)
!119 = !DILocation(line: 430, column: 46, scope: !110, inlinedAt: !120)
!120 = distinct !DILocation(line: 485, column: 10, scope: !69)
!121 = !DILocation(line: 430, column: 59, scope: !110, inlinedAt: !120)
!122 = !DILocation(line: 432, column: 22, scope: !110, inlinedAt: !120)
!123 = !DILocation(line: 436, column: 9, scope: !110, inlinedAt: !120)
!124 = !DILocation(line: 436, column: 14, scope: !110, inlinedAt: !120)
!125 = !DILocation(line: 439, column: 20, scope: !110, inlinedAt: !120)
!126 = !DILocation(line: 432, column: 13, scope: !110, inlinedAt: !120)
!127 = !DILocation(line: 440, column: 15, scope: !110, inlinedAt: !120)
!128 = !DILocation(line: 440, column: 8, scope: !110, inlinedAt: !120)
!129 = !DILocation(line: 440, column: 13, scope: !110, inlinedAt: !120)
!130 = !DILocation(line: 441, column: 31, scope: !110, inlinedAt: !120)
!131 = !DILocation(line: 441, column: 26, scope: !110, inlinedAt: !120)
!132 = !{!93, !93, i64 0}
!133 = !DILocation(line: 442, column: 10, scope: !110, inlinedAt: !120)
!134 = !DILocation(line: 432, column: 17, scope: !110, inlinedAt: !120)
!135 = !DILocation(line: 443, column: 18, scope: !110, inlinedAt: !120)
!136 = !{!102, !95, i64 0}
!137 = !DILocation(line: 444, column: 9, scope: !110, inlinedAt: !120)
!138 = !DILocation(line: 444, column: 14, scope: !110, inlinedAt: !120)
!139 = !DILocation(line: 433, column: 18, scope: !110, inlinedAt: !120)
!140 = !DILocation(line: 446, column: 9, scope: !110, inlinedAt: !120)
!141 = !DILocation(line: 446, column: 14, scope: !110, inlinedAt: !120)
!142 = !{!143, !95, i64 8}
!143 = !{!"area_info_struct", !95, i64 0, !95, i64 8}
!144 = !DILocation(line: 447, column: 13, scope: !110, inlinedAt: !120)
!145 = !{!143, !95, i64 0}
!146 = !DILocation(line: 448, column: 5, scope: !110, inlinedAt: !120)
!147 = !DILocation(line: 460, column: 17, scope: !69)
!148 = !DILocation(line: 488, column: 16, scope: !69)
!149 = !DILocation(line: 488, column: 5, scope: !69)
!150 = !DILocation(line: 489, column: 11, scope: !69)
!151 = !DILocation(line: 489, column: 21, scope: !69)
!152 = !{!91, !95, i64 8}
!153 = !DILocation(line: 496, column: 16, scope: !69)
!154 = !DILocation(line: 496, column: 21, scope: !69)
!155 = !DILocation(line: 496, column: 5, scope: !69)
!156 = !DILocation(line: 0, scope: !69)
!157 = !DILocation(line: 497, column: 1, scope: !69)
!158 = distinct !DISubprogram(name: "free_ex", scope: !3, file: !3, line: 754, type: !159, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !58, !58}
!161 = !{!162, !163, !164, !165, !166, !167, !168}
!162 = !DILocalVariable(name: "ptr", arg: 1, scope: !158, file: !3, line: 754, type: !58)
!163 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !158, file: !3, line: 754, type: !58)
!164 = !DILocalVariable(name: "tlsf", scope: !158, file: !3, line: 757, type: !7)
!165 = !DILocalVariable(name: "b", scope: !158, file: !3, line: 758, type: !20)
!166 = !DILocalVariable(name: "tmp_b", scope: !158, file: !3, line: 758, type: !20)
!167 = !DILocalVariable(name: "fl", scope: !158, file: !3, line: 759, type: !62)
!168 = !DILocalVariable(name: "sl", scope: !158, file: !3, line: 759, type: !62)
!169 = !DILocation(line: 754, column: 20, scope: !158)
!170 = !DILocation(line: 754, column: 31, scope: !158)
!171 = !DILocation(line: 757, column: 13, scope: !158)
!172 = !DILocation(line: 759, column: 9, scope: !158)
!173 = !DILocation(line: 759, column: 17, scope: !158)
!174 = !DILocation(line: 761, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !158, file: !3, line: 761, column: 9)
!176 = !DILocation(line: 761, column: 9, scope: !158)
!177 = !DILocation(line: 764, column: 34, scope: !158)
!178 = !DILocation(line: 764, column: 9, scope: !158)
!179 = !DILocation(line: 758, column: 13, scope: !158)
!180 = !DILocation(line: 765, column: 8, scope: !158)
!181 = !DILocation(line: 765, column: 13, scope: !158)
!182 = !DILocation(line: 769, column: 26, scope: !158)
!183 = !DILocation(line: 771, column: 13, scope: !158)
!184 = !DILocation(line: 758, column: 17, scope: !158)
!185 = !DILocation(line: 772, column: 16, scope: !186)
!186 = distinct !DILexicalBlock(scope: !158, file: !3, line: 772, column: 9)
!187 = !DILocation(line: 772, column: 21, scope: !186)
!188 = !DILocation(line: 772, column: 9, scope: !158)
!189 = !DILocation(line: 773, column: 36, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 772, column: 35)
!191 = !DILocalVariable(name: "_r", arg: 1, scope: !192, file: !3, line: 331, type: !27)
!192 = distinct !DISubprogram(name: "MAPPING_INSERT", scope: !3, file: !3, line: 331, type: !193, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !196)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !27, !195, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!196 = !{!191, !197, !198}
!197 = !DILocalVariable(name: "_fl", arg: 2, scope: !192, file: !3, line: 331, type: !195)
!198 = !DILocalVariable(name: "_sl", arg: 3, scope: !192, file: !3, line: 331, type: !195)
!199 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !200)
!200 = distinct !DILocation(line: 773, column: 9, scope: !190)
!201 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !200)
!202 = distinct !DILexicalBlock(scope: !192, file: !3, line: 333, column: 9)
!203 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !200)
!204 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !200)
!205 = distinct !DILexicalBlock(scope: !202, file: !3, line: 333, column: 27)
!206 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !200)
!207 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !200)
!208 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !200)
!209 = distinct !DILexicalBlock(scope: !202, file: !3, line: 336, column: 12)
!210 = !DILocalVariable(name: "i", arg: 1, scope: !211, file: !3, line: 292, type: !62)
!211 = distinct !DISubprogram(name: "ms_bit", scope: !3, file: !3, line: 292, type: !212, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!62, !62}
!214 = !{!210, !215, !216}
!215 = !DILocalVariable(name: "a", scope: !211, file: !3, line: 294, type: !13)
!216 = !DILocalVariable(name: "x", scope: !211, file: !3, line: 295, type: !13)
!217 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !218)
!218 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !200)
!219 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !218)
!220 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !218)
!221 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !218)
!222 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !218)
!223 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !218)
!224 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !218)
!225 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !218)
!226 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !218)
!227 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !218)
!228 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !218)
!229 = !{!92, !92, i64 0}
!230 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !218)
!231 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !218)
!232 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !200)
!233 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !200)
!234 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !200)
!235 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !200)
!236 = !DILocation(line: 0, scope: !190)
!237 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !200)
!238 = !DILocation(line: 774, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 774, column: 9)
!240 = distinct !DILexicalBlock(scope: !190, file: !3, line: 774, column: 9)
!241 = !DILocation(line: 774, column: 9, scope: !240)
!242 = !DILocation(line: 774, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 774, column: 9)
!244 = !DILocation(line: 774, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 774, column: 9)
!246 = !{!95, !95, i64 0}
!247 = !DILocation(line: 774, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 774, column: 9)
!249 = !DILocation(line: 774, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !3, line: 774, column: 9)
!251 = !DILocation(line: 774, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !3, line: 774, column: 9)
!253 = !DILocalVariable(name: "nr", arg: 1, scope: !254, file: !3, line: 306, type: !62)
!254 = distinct !DISubprogram(name: "clear_bit", scope: !3, file: !3, line: 306, type: !255, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !62, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!258 = !{!253, !259}
!259 = !DILocalVariable(name: "addr", arg: 2, scope: !254, file: !3, line: 306, type: !257)
!260 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !261)
!261 = distinct !DILocation(line: 774, column: 9, scope: !252)
!262 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !261)
!263 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !261)
!264 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !261)
!265 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !261)
!266 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !261)
!267 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !261)
!268 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !261)
!269 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !261)
!270 = !DILocation(line: 774, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !252, file: !3, line: 774, column: 9)
!272 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !273)
!273 = distinct !DILocation(line: 774, column: 9, scope: !271)
!274 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !273)
!275 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !273)
!276 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !273)
!277 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !273)
!278 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !273)
!279 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !273)
!280 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !273)
!281 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !273)
!282 = !DILocation(line: 775, column: 28, scope: !190)
!283 = !DILocation(line: 775, column: 33, scope: !190)
!284 = !DILocation(line: 775, column: 47, scope: !190)
!285 = !DILocation(line: 775, column: 17, scope: !190)
!286 = !DILocation(line: 776, column: 5, scope: !190)
!287 = !DILocation(line: 777, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !158, file: !3, line: 777, column: 9)
!289 = !DILocation(line: 777, column: 17, scope: !288)
!290 = !DILocation(line: 777, column: 9, scope: !158)
!291 = !DILocation(line: 778, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 777, column: 30)
!293 = !DILocation(line: 779, column: 31, scope: !292)
!294 = !DILocation(line: 779, column: 36, scope: !292)
!295 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !296)
!296 = distinct !DILocation(line: 779, column: 9, scope: !292)
!297 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !296)
!298 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !296)
!299 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !296)
!300 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !296)
!301 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !296)
!302 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !296)
!303 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !304)
!304 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !296)
!305 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !304)
!306 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !304)
!307 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !304)
!308 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !304)
!309 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !304)
!310 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !304)
!311 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !304)
!312 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !304)
!313 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !304)
!314 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !304)
!315 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !304)
!316 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !304)
!317 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !296)
!318 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !296)
!319 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !296)
!320 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !296)
!321 = !DILocation(line: 0, scope: !292)
!322 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !296)
!323 = !DILocation(line: 780, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 780, column: 9)
!325 = distinct !DILexicalBlock(scope: !292, file: !3, line: 780, column: 9)
!326 = !DILocation(line: 780, column: 9, scope: !325)
!327 = !DILocation(line: 780, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 780, column: 9)
!329 = !DILocation(line: 780, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 780, column: 9)
!331 = !DILocation(line: 780, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !3, line: 780, column: 9)
!333 = !DILocation(line: 780, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !3, line: 780, column: 9)
!335 = !DILocation(line: 780, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !3, line: 780, column: 9)
!337 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !338)
!338 = distinct !DILocation(line: 780, column: 9, scope: !336)
!339 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !338)
!340 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !338)
!341 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !338)
!342 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !338)
!343 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !338)
!344 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !338)
!345 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !338)
!346 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !338)
!347 = !DILocation(line: 780, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !336, file: !3, line: 780, column: 9)
!349 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !350)
!350 = distinct !DILocation(line: 780, column: 9, scope: !348)
!351 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !350)
!352 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !350)
!353 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !350)
!354 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !350)
!355 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !350)
!356 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !350)
!357 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !350)
!358 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !350)
!359 = !DILocation(line: 781, column: 28, scope: !292)
!360 = !DILocation(line: 781, column: 33, scope: !292)
!361 = !DILocation(line: 781, column: 47, scope: !292)
!362 = !DILocation(line: 781, column: 21, scope: !292)
!363 = !DILocation(line: 783, column: 5, scope: !292)
!364 = !DILocation(line: 784, column: 23, scope: !158)
!365 = !DILocation(line: 0, scope: !158)
!366 = !DILocation(line: 784, column: 28, scope: !158)
!367 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !368)
!368 = distinct !DILocation(line: 784, column: 5, scope: !158)
!369 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !368)
!370 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !368)
!371 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !368)
!372 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !368)
!373 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !368)
!374 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !368)
!375 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !376)
!376 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !368)
!377 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !376)
!378 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !376)
!379 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !376)
!380 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !376)
!381 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !376)
!382 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !376)
!383 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !376)
!384 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !376)
!385 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !376)
!386 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !376)
!387 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !376)
!388 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !376)
!389 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !368)
!390 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !368)
!391 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !368)
!392 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !368)
!393 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !368)
!394 = !DILocation(line: 785, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !158, file: !3, line: 785, column: 5)
!396 = !DILocation(line: 785, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !3, line: 785, column: 5)
!398 = !DILocation(line: 787, column: 13, scope: !158)
!399 = !DILocalVariable(name: "nr", arg: 1, scope: !400, file: !3, line: 301, type: !62)
!400 = distinct !DISubprogram(name: "set_bit", scope: !3, file: !3, line: 301, type: !255, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !401)
!401 = !{!399, !402}
!402 = !DILocalVariable(name: "addr", arg: 2, scope: !400, file: !3, line: 301, type: !257)
!403 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !404)
!404 = distinct !DILocation(line: 785, column: 5, scope: !395)
!405 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !404)
!406 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !404)
!407 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !404)
!408 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !404)
!409 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !404)
!410 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !404)
!411 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !404)
!412 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !413)
!413 = distinct !DILocation(line: 785, column: 5, scope: !395)
!414 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !413)
!415 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !413)
!416 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !413)
!417 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !413)
!418 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !413)
!419 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !413)
!420 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !413)
!421 = !DILocation(line: 788, column: 12, scope: !158)
!422 = !DILocation(line: 788, column: 17, scope: !158)
!423 = !DILocation(line: 789, column: 12, scope: !158)
!424 = !DILocation(line: 789, column: 21, scope: !158)
!425 = !DILocation(line: 790, column: 1, scope: !158)
!426 = distinct !DISubprogram(name: "add_new_area", scope: !3, file: !3, line: 500, type: !427, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!27, !58, !27, !58}
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!430 = !DILocalVariable(name: "area", arg: 1, scope: !426, file: !3, line: 500, type: !58)
!431 = !DILocalVariable(name: "area_size", arg: 2, scope: !426, file: !3, line: 500, type: !27)
!432 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !426, file: !3, line: 500, type: !58)
!433 = !DILocalVariable(name: "tlsf", scope: !426, file: !3, line: 503, type: !7)
!434 = !DILocalVariable(name: "ptr", scope: !426, file: !3, line: 504, type: !15)
!435 = !DILocalVariable(name: "ptr_prev", scope: !426, file: !3, line: 504, type: !15)
!436 = !DILocalVariable(name: "ai", scope: !426, file: !3, line: 504, type: !15)
!437 = !DILocalVariable(name: "ib0", scope: !426, file: !3, line: 505, type: !20)
!438 = !DILocalVariable(name: "b0", scope: !426, file: !3, line: 505, type: !20)
!439 = !DILocalVariable(name: "lb0", scope: !426, file: !3, line: 505, type: !20)
!440 = !DILocalVariable(name: "ib1", scope: !426, file: !3, line: 505, type: !20)
!441 = !DILocalVariable(name: "b1", scope: !426, file: !3, line: 505, type: !20)
!442 = !DILocalVariable(name: "lb1", scope: !426, file: !3, line: 505, type: !20)
!443 = !DILocalVariable(name: "next_b", scope: !426, file: !3, line: 505, type: !20)
!444 = !DILocation(line: 500, column: 27, scope: !426)
!445 = !DILocation(line: 500, column: 40, scope: !426)
!446 = !DILocation(line: 500, column: 57, scope: !426)
!447 = !DILocation(line: 503, column: 13, scope: !426)
!448 = !DILocation(line: 507, column: 5, scope: !426)
!449 = !DILocation(line: 508, column: 17, scope: !426)
!450 = !DILocation(line: 504, column: 18, scope: !426)
!451 = !DILocation(line: 504, column: 24, scope: !426)
!452 = !DILocation(line: 430, column: 46, scope: !110, inlinedAt: !453)
!453 = distinct !DILocation(line: 511, column: 11, scope: !426)
!454 = !DILocation(line: 430, column: 59, scope: !110, inlinedAt: !453)
!455 = !DILocation(line: 435, column: 10, scope: !110, inlinedAt: !453)
!456 = !DILocation(line: 432, column: 22, scope: !110, inlinedAt: !453)
!457 = !DILocation(line: 436, column: 9, scope: !110, inlinedAt: !453)
!458 = !DILocation(line: 436, column: 14, scope: !110, inlinedAt: !453)
!459 = !DILocation(line: 439, column: 20, scope: !110, inlinedAt: !453)
!460 = !DILocation(line: 432, column: 13, scope: !110, inlinedAt: !453)
!461 = !DILocation(line: 440, column: 15, scope: !110, inlinedAt: !453)
!462 = !DILocation(line: 440, column: 8, scope: !110, inlinedAt: !453)
!463 = !DILocation(line: 440, column: 13, scope: !110, inlinedAt: !453)
!464 = !DILocation(line: 441, column: 31, scope: !110, inlinedAt: !453)
!465 = !DILocation(line: 441, column: 26, scope: !110, inlinedAt: !453)
!466 = !DILocation(line: 442, column: 10, scope: !110, inlinedAt: !453)
!467 = !DILocation(line: 432, column: 17, scope: !110, inlinedAt: !453)
!468 = !DILocation(line: 443, column: 18, scope: !110, inlinedAt: !453)
!469 = !DILocation(line: 444, column: 9, scope: !110, inlinedAt: !453)
!470 = !DILocation(line: 444, column: 14, scope: !110, inlinedAt: !453)
!471 = !DILocation(line: 433, column: 18, scope: !110, inlinedAt: !453)
!472 = !DILocation(line: 446, column: 9, scope: !110, inlinedAt: !453)
!473 = !DILocation(line: 446, column: 14, scope: !110, inlinedAt: !453)
!474 = !DILocation(line: 447, column: 13, scope: !110, inlinedAt: !453)
!475 = !DILocation(line: 448, column: 5, scope: !110, inlinedAt: !453)
!476 = !DILocation(line: 505, column: 13, scope: !426)
!477 = !DILocation(line: 512, column: 10, scope: !426)
!478 = !DILocation(line: 505, column: 19, scope: !426)
!479 = !DILocation(line: 513, column: 11, scope: !426)
!480 = !DILocation(line: 505, column: 24, scope: !426)
!481 = !DILocation(line: 518, column: 5, scope: !426)
!482 = !DILocation(line: 519, column: 40, scope: !483)
!483 = distinct !DILexicalBlock(scope: !426, file: !3, line: 518, column: 17)
!484 = !DILocation(line: 521, column: 20, scope: !483)
!485 = !DILocation(line: 505, column: 41, scope: !426)
!486 = !DILocation(line: 524, column: 13, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !3, line: 524, column: 13)
!488 = !DILocation(line: 524, column: 33, scope: !487)
!489 = !DILocation(line: 524, column: 13, scope: !483)
!490 = !DILocation(line: 520, column: 14, scope: !483)
!491 = !DILocation(line: 525, column: 23, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 525, column: 17)
!493 = distinct !DILexicalBlock(scope: !487, file: !3, line: 524, column: 73)
!494 = !DILocation(line: 525, column: 33, scope: !492)
!495 = !DILocation(line: 0, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 528, column: 20)
!497 = !DILocation(line: 525, column: 17, scope: !493)
!498 = !DILocation(line: 526, column: 33, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !3, line: 525, column: 41)
!500 = !DILocation(line: 528, column: 13, scope: !499)
!501 = !DILocation(line: 529, column: 27, scope: !496)
!502 = !DILocation(line: 529, column: 32, scope: !496)
!503 = !DILocation(line: 534, column: 17, scope: !493)
!504 = !DILocation(line: 533, column: 22, scope: !493)
!505 = !DILocation(line: 537, column: 17, scope: !493)
!506 = !DILocation(line: 537, column: 26, scope: !493)
!507 = distinct !{!507, !481, !508}
!508 = !DILocation(line: 566, column: 5, scope: !426)
!509 = !DILocation(line: 545, column: 34, scope: !510)
!510 = distinct !DILexicalBlock(scope: !483, file: !3, line: 545, column: 13)
!511 = !DILocation(line: 545, column: 45, scope: !510)
!512 = !DILocation(line: 545, column: 13, scope: !483)
!513 = !DILocation(line: 519, column: 15, scope: !483)
!514 = !DILocation(line: 545, column: 29, scope: !510)
!515 = !DILocation(line: 546, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 546, column: 17)
!517 = distinct !DILexicalBlock(scope: !510, file: !3, line: 545, column: 69)
!518 = !DILocation(line: 546, column: 33, scope: !516)
!519 = !DILocation(line: 0, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !3, line: 549, column: 20)
!521 = !DILocation(line: 546, column: 17, scope: !517)
!522 = !DILocation(line: 547, column: 33, scope: !523)
!523 = distinct !DILexicalBlock(scope: !516, file: !3, line: 546, column: 41)
!524 = !DILocation(line: 549, column: 13, scope: !523)
!525 = !DILocation(line: 550, column: 27, scope: !520)
!526 = !DILocation(line: 550, column: 32, scope: !520)
!527 = !DILocation(line: 555, column: 17, scope: !517)
!528 = !DILocation(line: 556, column: 99, scope: !517)
!529 = !DILocation(line: 556, column: 104, scope: !517)
!530 = !DILocation(line: 556, column: 91, scope: !517)
!531 = !DILocation(line: 554, column: 23, scope: !517)
!532 = !DILocation(line: 557, column: 22, scope: !517)
!533 = !DILocation(line: 505, column: 47, scope: !426)
!534 = !DILocation(line: 558, column: 21, scope: !517)
!535 = !DILocation(line: 558, column: 30, scope: !517)
!536 = !DILocation(line: 565, column: 20, scope: !483)
!537 = !DILocation(line: 569, column: 31, scope: !426)
!538 = !DILocation(line: 504, column: 35, scope: !426)
!539 = !DILocation(line: 570, column: 22, scope: !426)
!540 = !DILocation(line: 570, column: 9, scope: !426)
!541 = !DILocation(line: 570, column: 14, scope: !426)
!542 = !DILocation(line: 571, column: 9, scope: !426)
!543 = !DILocation(line: 571, column: 13, scope: !426)
!544 = !DILocation(line: 572, column: 21, scope: !426)
!545 = !DILocation(line: 573, column: 17, scope: !426)
!546 = !DILocation(line: 573, column: 13, scope: !426)
!547 = !DILocation(line: 573, column: 5, scope: !426)
!548 = !DILocation(line: 574, column: 17, scope: !426)
!549 = !DILocation(line: 574, column: 22, scope: !426)
!550 = !DILocation(line: 574, column: 5, scope: !426)
!551 = distinct !DISubprogram(name: "get_used_size", scope: !3, file: !3, line: 579, type: !552, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!27, !58}
!554 = !{!555}
!555 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !551, file: !3, line: 579, type: !58)
!556 = !DILocation(line: 579, column: 28, scope: !551)
!557 = !DILocation(line: 585, column: 5, scope: !551)
!558 = distinct !DISubprogram(name: "get_max_size", scope: !3, file: !3, line: 590, type: !552, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !559)
!559 = !{!560}
!560 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !558, file: !3, line: 590, type: !58)
!561 = !DILocation(line: 590, column: 27, scope: !558)
!562 = !DILocation(line: 596, column: 5, scope: !558)
!563 = distinct !DISubprogram(name: "destroy_memory_pool", scope: !3, file: !3, line: 601, type: !564, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !58}
!566 = !{!567, !568}
!567 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !563, file: !3, line: 601, type: !58)
!568 = !DILocalVariable(name: "tlsf", scope: !563, file: !3, line: 604, type: !7)
!569 = !DILocation(line: 601, column: 32, scope: !563)
!570 = !DILocation(line: 604, column: 13, scope: !563)
!571 = !DILocation(line: 606, column: 11, scope: !563)
!572 = !DILocation(line: 606, column: 26, scope: !563)
!573 = !DILocation(line: 610, column: 1, scope: !563)
!574 = distinct !DISubprogram(name: "tlsf_malloc", scope: !3, file: !3, line: 614, type: !575, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!58, !27, !58}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(name: "size", arg: 1, scope: !574, file: !3, line: 614, type: !27)
!579 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !574, file: !3, line: 614, type: !58)
!580 = !DILocalVariable(name: "ret", scope: !574, file: !3, line: 617, type: !58)
!581 = !DILocation(line: 614, column: 26, scope: !574)
!582 = !DILocation(line: 614, column: 38, scope: !574)
!583 = !DILocation(line: 635, column: 11, scope: !574)
!584 = !DILocation(line: 617, column: 11, scope: !574)
!585 = !DILocation(line: 639, column: 5, scope: !574)
!586 = distinct !DISubprogram(name: "malloc_ex", scope: !3, file: !3, line: 692, type: !575, isLocal: false, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596}
!588 = !DILocalVariable(name: "size", arg: 1, scope: !586, file: !3, line: 692, type: !27)
!589 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !586, file: !3, line: 692, type: !58)
!590 = !DILocalVariable(name: "tlsf", scope: !586, file: !3, line: 695, type: !7)
!591 = !DILocalVariable(name: "b", scope: !586, file: !3, line: 696, type: !20)
!592 = !DILocalVariable(name: "b2", scope: !586, file: !3, line: 696, type: !20)
!593 = !DILocalVariable(name: "next_b", scope: !586, file: !3, line: 696, type: !20)
!594 = !DILocalVariable(name: "fl", scope: !586, file: !3, line: 697, type: !62)
!595 = !DILocalVariable(name: "sl", scope: !586, file: !3, line: 697, type: !62)
!596 = !DILocalVariable(name: "tmp_size", scope: !586, file: !3, line: 698, type: !27)
!597 = !DILocation(line: 692, column: 24, scope: !586)
!598 = !DILocation(line: 692, column: 36, scope: !586)
!599 = !DILocation(line: 695, column: 20, scope: !586)
!600 = !DILocation(line: 695, column: 13, scope: !586)
!601 = !DILocation(line: 700, column: 18, scope: !586)
!602 = !DILocation(line: 700, column: 55, scope: !586)
!603 = !DILocation(line: 700, column: 12, scope: !586)
!604 = !DILocation(line: 315, column: 13, scope: !605, inlinedAt: !615)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 315, column: 9)
!606 = distinct !DISubprogram(name: "MAPPING_SEARCH", scope: !3, file: !3, line: 311, type: !607, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !610)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609, !195, !195}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!610 = !{!611, !612, !613, !614}
!611 = !DILocalVariable(name: "_r", arg: 1, scope: !606, file: !3, line: 311, type: !609)
!612 = !DILocalVariable(name: "_fl", arg: 2, scope: !606, file: !3, line: 311, type: !195)
!613 = !DILocalVariable(name: "_sl", arg: 3, scope: !606, file: !3, line: 311, type: !195)
!614 = !DILocalVariable(name: "_t", scope: !606, file: !3, line: 313, type: !62)
!615 = distinct !DILocation(line: 703, column: 5, scope: !586)
!616 = !DILocation(line: 315, column: 9, scope: !606, inlinedAt: !615)
!617 = !DILocation(line: 317, column: 20, scope: !618, inlinedAt: !615)
!618 = distinct !DILexicalBlock(scope: !605, file: !3, line: 315, column: 28)
!619 = !DILocation(line: 317, column: 16, scope: !618, inlinedAt: !615)
!620 = !DILocation(line: 318, column: 5, scope: !618, inlinedAt: !615)
!621 = !DILocation(line: 319, column: 28, scope: !622, inlinedAt: !615)
!622 = distinct !DILexicalBlock(scope: !605, file: !3, line: 318, column: 12)
!623 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !624)
!624 = distinct !DILocation(line: 319, column: 21, scope: !622, inlinedAt: !615)
!625 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !624)
!626 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !624)
!627 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !624)
!628 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !624)
!629 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !624)
!630 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !624)
!631 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !624)
!632 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !624)
!633 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !624)
!634 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !624)
!635 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !624)
!636 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !624)
!637 = !DILocation(line: 319, column: 33, scope: !622, inlinedAt: !615)
!638 = !DILocation(line: 319, column: 50, scope: !622, inlinedAt: !615)
!639 = !DILocation(line: 313, column: 9, scope: !606, inlinedAt: !615)
!640 = !DILocation(line: 320, column: 21, scope: !622, inlinedAt: !615)
!641 = !DILocation(line: 320, column: 19, scope: !622, inlinedAt: !615)
!642 = !DILocation(line: 321, column: 23, scope: !622, inlinedAt: !615)
!643 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !644)
!644 = distinct !DILocation(line: 321, column: 16, scope: !622, inlinedAt: !615)
!645 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !644)
!646 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !644)
!647 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !644)
!648 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !644)
!649 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !644)
!650 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !644)
!651 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !644)
!652 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !644)
!653 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !644)
!654 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !644)
!655 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !644)
!656 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !644)
!657 = !DILocation(line: 322, column: 30, scope: !622, inlinedAt: !615)
!658 = !DILocation(line: 322, column: 21, scope: !622, inlinedAt: !615)
!659 = !DILocation(line: 322, column: 16, scope: !622, inlinedAt: !615)
!660 = !DILocation(line: 323, column: 14, scope: !622, inlinedAt: !615)
!661 = !DILocation(line: 327, column: 16, scope: !622, inlinedAt: !615)
!662 = !DILocation(line: 327, column: 13, scope: !622, inlinedAt: !615)
!663 = !DILocation(line: 0, scope: !586)
!664 = !DILocation(line: 329, column: 1, scope: !606, inlinedAt: !615)
!665 = !DILocalVariable(name: "_tlsf", arg: 1, scope: !666, file: !3, line: 344, type: !7)
!666 = distinct !DISubprogram(name: "FIND_SUITABLE_BLOCK", scope: !3, file: !3, line: 344, type: !667, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!20, !7, !195, !195}
!669 = !{!665, !670, !671, !672, !673}
!670 = !DILocalVariable(name: "_fl", arg: 2, scope: !666, file: !3, line: 344, type: !195)
!671 = !DILocalVariable(name: "_sl", arg: 3, scope: !666, file: !3, line: 344, type: !195)
!672 = !DILocalVariable(name: "_tmp", scope: !666, file: !3, line: 346, type: !12)
!673 = !DILocalVariable(name: "_b", scope: !666, file: !3, line: 347, type: !20)
!674 = !DILocation(line: 344, column: 56, scope: !666, inlinedAt: !675)
!675 = distinct !DILocation(line: 707, column: 9, scope: !586)
!676 = !DILocation(line: 346, column: 18, scope: !666, inlinedAt: !675)
!677 = !DILocation(line: 346, column: 47, scope: !666, inlinedAt: !675)
!678 = !DILocation(line: 346, column: 41, scope: !666, inlinedAt: !675)
!679 = !DILocation(line: 346, column: 11, scope: !666, inlinedAt: !675)
!680 = !DILocation(line: 347, column: 13, scope: !666, inlinedAt: !675)
!681 = !DILocation(line: 349, column: 9, scope: !682, inlinedAt: !675)
!682 = distinct !DILexicalBlock(scope: !666, file: !3, line: 349, column: 9)
!683 = !DILocation(line: 349, column: 9, scope: !666, inlinedAt: !675)
!684 = !DILocalVariable(name: "i", arg: 1, scope: !685, file: !3, line: 283, type: !62)
!685 = distinct !DISubprogram(name: "ls_bit", scope: !3, file: !3, line: 283, type: !212, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !686)
!686 = !{!684, !687, !688}
!687 = !DILocalVariable(name: "a", scope: !685, file: !3, line: 285, type: !13)
!688 = !DILocalVariable(name: "x", scope: !685, file: !3, line: 286, type: !13)
!689 = !DILocation(line: 283, column: 34, scope: !685, inlinedAt: !690)
!690 = distinct !DILocation(line: 350, column: 16, scope: !691, inlinedAt: !675)
!691 = distinct !DILexicalBlock(scope: !682, file: !3, line: 349, column: 15)
!692 = !DILocation(line: 286, column: 26, scope: !685, inlinedAt: !690)
!693 = !DILocation(line: 286, column: 24, scope: !685, inlinedAt: !690)
!694 = !DILocation(line: 286, column: 18, scope: !685, inlinedAt: !690)
!695 = !DILocation(line: 288, column: 11, scope: !685, inlinedAt: !690)
!696 = !DILocation(line: 288, column: 26, scope: !685, inlinedAt: !690)
!697 = !DILocation(line: 288, column: 24, scope: !685, inlinedAt: !690)
!698 = !DILocation(line: 288, column: 48, scope: !685, inlinedAt: !690)
!699 = !DILocation(line: 288, column: 46, scope: !685, inlinedAt: !690)
!700 = !DILocation(line: 288, column: 9, scope: !685, inlinedAt: !690)
!701 = !DILocation(line: 285, column: 18, scope: !685, inlinedAt: !690)
!702 = !DILocation(line: 289, column: 20, scope: !685, inlinedAt: !690)
!703 = !DILocation(line: 289, column: 12, scope: !685, inlinedAt: !690)
!704 = !DILocation(line: 289, column: 26, scope: !685, inlinedAt: !690)
!705 = !DILocation(line: 352, column: 5, scope: !691, inlinedAt: !675)
!706 = !DILocation(line: 353, column: 30, scope: !707, inlinedAt: !675)
!707 = distinct !DILexicalBlock(scope: !682, file: !3, line: 352, column: 12)
!708 = !{!91, !92, i64 16}
!709 = !DILocation(line: 353, column: 55, scope: !707, inlinedAt: !675)
!710 = !DILocation(line: 353, column: 46, scope: !707, inlinedAt: !675)
!711 = !DILocation(line: 353, column: 40, scope: !707, inlinedAt: !675)
!712 = !DILocation(line: 283, column: 34, scope: !685, inlinedAt: !713)
!713 = distinct !DILocation(line: 353, column: 16, scope: !707, inlinedAt: !675)
!714 = !DILocation(line: 286, column: 26, scope: !685, inlinedAt: !713)
!715 = !DILocation(line: 286, column: 24, scope: !685, inlinedAt: !713)
!716 = !DILocation(line: 286, column: 18, scope: !685, inlinedAt: !713)
!717 = !DILocation(line: 288, column: 11, scope: !685, inlinedAt: !713)
!718 = !DILocation(line: 288, column: 26, scope: !685, inlinedAt: !713)
!719 = !DILocation(line: 288, column: 24, scope: !685, inlinedAt: !713)
!720 = !DILocation(line: 288, column: 48, scope: !685, inlinedAt: !713)
!721 = !DILocation(line: 288, column: 46, scope: !685, inlinedAt: !713)
!722 = !DILocation(line: 288, column: 9, scope: !685, inlinedAt: !713)
!723 = !DILocation(line: 285, column: 18, scope: !685, inlinedAt: !713)
!724 = !DILocation(line: 289, column: 20, scope: !685, inlinedAt: !713)
!725 = !DILocation(line: 289, column: 12, scope: !685, inlinedAt: !713)
!726 = !DILocation(line: 289, column: 26, scope: !685, inlinedAt: !713)
!727 = !DILocation(line: 289, column: 5, scope: !685, inlinedAt: !713)
!728 = !DILocation(line: 354, column: 18, scope: !729, inlinedAt: !675)
!729 = distinct !DILexicalBlock(scope: !707, file: !3, line: 354, column: 13)
!730 = !DILocation(line: 354, column: 13, scope: !707, inlinedAt: !675)
!731 = !DILocation(line: 359, column: 5, scope: !666, inlinedAt: !675)
!732 = !DILocation(line: 696, column: 13, scope: !586)
!733 = !DILocation(line: 725, column: 9, scope: !586)
!734 = !DILocation(line: 355, column: 27, scope: !735, inlinedAt: !675)
!735 = distinct !DILexicalBlock(scope: !729, file: !3, line: 354, column: 23)
!736 = !DILocation(line: 283, column: 34, scope: !685, inlinedAt: !737)
!737 = distinct !DILocation(line: 355, column: 20, scope: !735, inlinedAt: !675)
!738 = !DILocation(line: 286, column: 26, scope: !685, inlinedAt: !737)
!739 = !DILocation(line: 286, column: 24, scope: !685, inlinedAt: !737)
!740 = !DILocation(line: 286, column: 18, scope: !685, inlinedAt: !737)
!741 = !DILocation(line: 288, column: 11, scope: !685, inlinedAt: !737)
!742 = !DILocation(line: 288, column: 26, scope: !685, inlinedAt: !737)
!743 = !DILocation(line: 288, column: 24, scope: !685, inlinedAt: !737)
!744 = !DILocation(line: 288, column: 48, scope: !685, inlinedAt: !737)
!745 = !DILocation(line: 288, column: 46, scope: !685, inlinedAt: !737)
!746 = !DILocation(line: 288, column: 9, scope: !685, inlinedAt: !737)
!747 = !DILocation(line: 285, column: 18, scope: !685, inlinedAt: !737)
!748 = !DILocation(line: 289, column: 20, scope: !685, inlinedAt: !737)
!749 = !DILocation(line: 289, column: 12, scope: !685, inlinedAt: !737)
!750 = !DILocation(line: 289, column: 26, scope: !685, inlinedAt: !737)
!751 = !DILocation(line: 357, column: 9, scope: !735, inlinedAt: !675)
!752 = !DILocation(line: 289, column: 5, scope: !685, inlinedAt: !690)
!753 = !DILocation(line: 0, scope: !666, inlinedAt: !675)
!754 = !DILocation(line: 725, column: 10, scope: !755)
!755 = distinct !DILexicalBlock(scope: !586, file: !3, line: 725, column: 9)
!756 = !DILocation(line: 728, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !586, file: !3, line: 728, column: 5)
!758 = !DILocation(line: 697, column: 9, scope: !586)
!759 = !DILocation(line: 697, column: 13, scope: !586)
!760 = !DILocation(line: 728, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !3, line: 728, column: 5)
!762 = !DILocation(line: 728, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !761, file: !3, line: 728, column: 5)
!764 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !765)
!765 = distinct !DILocation(line: 728, column: 5, scope: !763)
!766 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !765)
!767 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !765)
!768 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !765)
!769 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !765)
!770 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !765)
!771 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !765)
!772 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !765)
!773 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !765)
!774 = !DILocation(line: 728, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !763, file: !3, line: 728, column: 5)
!776 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !777)
!777 = distinct !DILocation(line: 728, column: 5, scope: !775)
!778 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !777)
!779 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !777)
!780 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !777)
!781 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !777)
!782 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !777)
!783 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !777)
!784 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !777)
!785 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !777)
!786 = !DILocation(line: 731, column: 14, scope: !586)
!787 = !DILocation(line: 733, column: 39, scope: !586)
!788 = !DILocation(line: 698, column: 12, scope: !586)
!789 = !DILocation(line: 734, column: 18, scope: !790)
!790 = distinct !DILexicalBlock(scope: !586, file: !3, line: 734, column: 9)
!791 = !DILocation(line: 734, column: 9, scope: !586)
!792 = !DILocation(line: 696, column: 22, scope: !586)
!793 = !DILocation(line: 735, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 734, column: 37)
!795 = !DILocation(line: 736, column: 14, scope: !794)
!796 = !DILocation(line: 737, column: 29, scope: !794)
!797 = !DILocation(line: 737, column: 13, scope: !794)
!798 = !DILocation(line: 737, column: 18, scope: !794)
!799 = !DILocation(line: 738, column: 26, scope: !794)
!800 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !801)
!801 = distinct !DILocation(line: 739, column: 9, scope: !794)
!802 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !801)
!803 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !801)
!804 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !801)
!805 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !801)
!806 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !801)
!807 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !801)
!808 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !809)
!809 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !801)
!810 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !809)
!811 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !809)
!812 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !809)
!813 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !809)
!814 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !809)
!815 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !809)
!816 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !809)
!817 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !809)
!818 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !809)
!819 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !809)
!820 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !809)
!821 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !809)
!822 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !801)
!823 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !801)
!824 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !801)
!825 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !801)
!826 = !DILocation(line: 0, scope: !794)
!827 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !801)
!828 = !DILocation(line: 740, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !794, file: !3, line: 740, column: 9)
!830 = !DILocation(line: 740, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !829, file: !3, line: 740, column: 9)
!832 = !DILocation(line: 696, column: 17, scope: !586)
!833 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !834)
!834 = distinct !DILocation(line: 740, column: 9, scope: !829)
!835 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !834)
!836 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !834)
!837 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !834)
!838 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !834)
!839 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !834)
!840 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !834)
!841 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !834)
!842 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !843)
!843 = distinct !DILocation(line: 740, column: 9, scope: !829)
!844 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !843)
!845 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !843)
!846 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !843)
!847 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !843)
!848 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !843)
!849 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !843)
!850 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !843)
!851 = !DILocation(line: 742, column: 30, scope: !794)
!852 = !DILocation(line: 742, column: 35, scope: !794)
!853 = !DILocation(line: 742, column: 24, scope: !794)
!854 = !DILocation(line: 743, column: 5, scope: !794)
!855 = !DILocation(line: 744, column: 17, scope: !856)
!856 = distinct !DILexicalBlock(scope: !790, file: !3, line: 743, column: 12)
!857 = !DILocation(line: 744, column: 22, scope: !856)
!858 = !DILocation(line: 745, column: 17, scope: !856)
!859 = !DILocation(line: 750, column: 5, scope: !586)
!860 = !DILocation(line: 0, scope: !755)
!861 = !DILocation(line: 751, column: 1, scope: !586)
!862 = distinct !DISubprogram(name: "tlsf_free", scope: !3, file: !3, line: 643, type: !159, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !863)
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "ptr", arg: 1, scope: !862, file: !3, line: 643, type: !58)
!865 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !862, file: !3, line: 643, type: !58)
!866 = !DILocation(line: 643, column: 22, scope: !862)
!867 = !DILocation(line: 643, column: 33, scope: !862)
!868 = !DILocation(line: 649, column: 5, scope: !862)
!869 = !DILocation(line: 653, column: 1, scope: !862)
!870 = distinct !DISubprogram(name: "tlsf_realloc", scope: !3, file: !3, line: 656, type: !871, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!58, !58, !27, !58}
!873 = !{!874, !875, !876, !877}
!874 = !DILocalVariable(name: "ptr", arg: 1, scope: !870, file: !3, line: 656, type: !58)
!875 = !DILocalVariable(name: "size", arg: 2, scope: !870, file: !3, line: 656, type: !27)
!876 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !870, file: !3, line: 656, type: !58)
!877 = !DILocalVariable(name: "ret", scope: !870, file: !3, line: 659, type: !58)
!878 = !DILocation(line: 656, column: 26, scope: !870)
!879 = !DILocation(line: 656, column: 38, scope: !870)
!880 = !DILocation(line: 656, column: 50, scope: !870)
!881 = !DILocation(line: 669, column: 11, scope: !870)
!882 = !DILocation(line: 659, column: 11, scope: !870)
!883 = !DILocation(line: 673, column: 5, scope: !870)
!884 = distinct !DISubprogram(name: "realloc_ex", scope: !3, file: !3, line: 793, type: !871, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !885)
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897}
!886 = !DILocalVariable(name: "ptr", arg: 1, scope: !884, file: !3, line: 793, type: !58)
!887 = !DILocalVariable(name: "new_size", arg: 2, scope: !884, file: !3, line: 793, type: !27)
!888 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !884, file: !3, line: 793, type: !58)
!889 = !DILocalVariable(name: "tlsf", scope: !884, file: !3, line: 796, type: !7)
!890 = !DILocalVariable(name: "ptr_aux", scope: !884, file: !3, line: 797, type: !58)
!891 = !DILocalVariable(name: "cpsize", scope: !884, file: !3, line: 798, type: !13)
!892 = !DILocalVariable(name: "b", scope: !884, file: !3, line: 799, type: !20)
!893 = !DILocalVariable(name: "tmp_b", scope: !884, file: !3, line: 799, type: !20)
!894 = !DILocalVariable(name: "next_b", scope: !884, file: !3, line: 799, type: !20)
!895 = !DILocalVariable(name: "fl", scope: !884, file: !3, line: 800, type: !62)
!896 = !DILocalVariable(name: "sl", scope: !884, file: !3, line: 800, type: !62)
!897 = !DILocalVariable(name: "tmp_size", scope: !884, file: !3, line: 801, type: !27)
!898 = !DILocation(line: 793, column: 24, scope: !884)
!899 = !DILocation(line: 793, column: 36, scope: !884)
!900 = !DILocation(line: 793, column: 52, scope: !884)
!901 = !DILocation(line: 796, column: 13, scope: !884)
!902 = !DILocation(line: 803, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !884, file: !3, line: 803, column: 9)
!904 = !DILocation(line: 0, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 804, column: 13)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 803, column: 15)
!907 = !DILocation(line: 803, column: 9, scope: !884)
!908 = !DILocation(line: 804, column: 13, scope: !906)
!909 = !DILocation(line: 805, column: 29, scope: !905)
!910 = !DILocation(line: 805, column: 13, scope: !905)
!911 = !DILocation(line: 808, column: 16, scope: !903)
!912 = !DILocation(line: 809, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 808, column: 27)
!914 = distinct !DILexicalBlock(scope: !903, file: !3, line: 808, column: 16)
!915 = !DILocation(line: 810, column: 9, scope: !913)
!916 = !DILocation(line: 813, column: 34, scope: !884)
!917 = !DILocation(line: 799, column: 13, scope: !884)
!918 = !DILocation(line: 814, column: 14, scope: !884)
!919 = !DILocation(line: 799, column: 25, scope: !884)
!920 = !DILocation(line: 815, column: 26, scope: !884)
!921 = !DILocation(line: 815, column: 63, scope: !884)
!922 = !DILocation(line: 815, column: 16, scope: !884)
!923 = !DILocation(line: 801, column: 12, scope: !884)
!924 = !DILocation(line: 817, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !884, file: !3, line: 817, column: 9)
!926 = !DILocation(line: 0, scope: !927)
!927 = distinct !DILexicalBlock(scope: !884, file: !3, line: 841, column: 9)
!928 = !DILocation(line: 817, column: 9, scope: !884)
!929 = !DILocation(line: 819, column: 13, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 817, column: 31)
!931 = !DILocation(line: 820, column: 41, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 819, column: 40)
!933 = distinct !DILexicalBlock(scope: !930, file: !3, line: 819, column: 13)
!934 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !935)
!935 = distinct !DILocation(line: 820, column: 13, scope: !932)
!936 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !935)
!937 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !935)
!938 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !935)
!939 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !935)
!940 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !935)
!941 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !935)
!942 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !943)
!943 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !935)
!944 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !943)
!945 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !943)
!946 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !943)
!947 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !943)
!948 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !943)
!949 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !943)
!950 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !943)
!951 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !943)
!952 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !943)
!953 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !943)
!954 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !943)
!955 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !943)
!956 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !935)
!957 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !935)
!958 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !935)
!959 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !935)
!960 = !DILocation(line: 0, scope: !932)
!961 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !935)
!962 = !DILocation(line: 821, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 821, column: 13)
!964 = distinct !DILexicalBlock(scope: !932, file: !3, line: 821, column: 13)
!965 = !DILocation(line: 821, column: 13, scope: !964)
!966 = !DILocation(line: 821, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 821, column: 13)
!968 = !DILocation(line: 821, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 821, column: 13)
!970 = !DILocation(line: 800, column: 9, scope: !884)
!971 = !DILocation(line: 800, column: 13, scope: !884)
!972 = !DILocation(line: 821, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !3, line: 821, column: 13)
!974 = !DILocation(line: 821, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 821, column: 13)
!976 = !DILocation(line: 821, column: 13, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !3, line: 821, column: 13)
!978 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !979)
!979 = distinct !DILocation(line: 821, column: 13, scope: !977)
!980 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !979)
!981 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !979)
!982 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !979)
!983 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !979)
!984 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !979)
!985 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !979)
!986 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !979)
!987 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !979)
!988 = !DILocation(line: 821, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !977, file: !3, line: 821, column: 13)
!990 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !991)
!991 = distinct !DILocation(line: 821, column: 13, scope: !989)
!992 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !991)
!993 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !991)
!994 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !991)
!995 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !991)
!996 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !991)
!997 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !991)
!998 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !991)
!999 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !991)
!1000 = !DILocation(line: 822, column: 34, scope: !932)
!1001 = !DILocation(line: 822, column: 39, scope: !932)
!1002 = !DILocation(line: 822, column: 53, scope: !932)
!1003 = !DILocation(line: 822, column: 22, scope: !932)
!1004 = !DILocation(line: 823, column: 22, scope: !932)
!1005 = !DILocation(line: 826, column: 9, scope: !932)
!1006 = !DILocation(line: 0, scope: !884)
!1007 = !DILocation(line: 827, column: 18, scope: !930)
!1008 = !DILocation(line: 828, column: 22, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !930, file: !3, line: 828, column: 13)
!1010 = !DILocation(line: 828, column: 13, scope: !930)
!1011 = !DILocation(line: 829, column: 22, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 828, column: 41)
!1013 = !DILocation(line: 830, column: 21, scope: !1012)
!1014 = !DILocation(line: 831, column: 36, scope: !1012)
!1015 = !DILocation(line: 831, column: 20, scope: !1012)
!1016 = !DILocation(line: 831, column: 25, scope: !1012)
!1017 = !DILocation(line: 832, column: 30, scope: !1012)
!1018 = !DILocation(line: 833, column: 21, scope: !1012)
!1019 = !DILocation(line: 833, column: 26, scope: !1012)
!1020 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 834, column: 13, scope: !1012)
!1022 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !1021)
!1023 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !1021)
!1024 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !1021)
!1025 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !1021)
!1026 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !1021)
!1027 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !1021)
!1028 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !1021)
!1030 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !1029)
!1031 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !1029)
!1032 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !1029)
!1033 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !1029)
!1034 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !1029)
!1035 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !1029)
!1036 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !1029)
!1037 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !1029)
!1038 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !1029)
!1039 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !1029)
!1040 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !1029)
!1041 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !1029)
!1042 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !1021)
!1043 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !1021)
!1044 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !1021)
!1045 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !1021)
!1046 = !DILocation(line: 0, scope: !1012)
!1047 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !1021)
!1048 = !DILocation(line: 835, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 835, column: 13)
!1050 = !DILocation(line: 835, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 835, column: 13)
!1052 = !DILocation(line: 799, column: 17, scope: !884)
!1053 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 835, column: 13, scope: !1049)
!1055 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !1054)
!1056 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !1054)
!1057 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !1054)
!1058 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !1054)
!1059 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !1054)
!1060 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !1054)
!1061 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !1054)
!1062 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 835, column: 13, scope: !1049)
!1064 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !1063)
!1065 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !1063)
!1066 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !1063)
!1067 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !1063)
!1068 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !1063)
!1069 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !1063)
!1070 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !1063)
!1071 = !DILocation(line: 836, column: 38, scope: !1012)
!1072 = !DILocation(line: 836, column: 43, scope: !1012)
!1073 = !DILocation(line: 836, column: 32, scope: !1012)
!1074 = !DILocation(line: 836, column: 21, scope: !1012)
!1075 = !DILocation(line: 837, column: 9, scope: !1012)
!1076 = !DILocation(line: 841, column: 9, scope: !884)
!1077 = !DILocation(line: 842, column: 51, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 842, column: 13)
!1079 = distinct !DILexicalBlock(scope: !927, file: !3, line: 841, column: 38)
!1080 = !DILocation(line: 842, column: 35, scope: !1078)
!1081 = !DILocation(line: 842, column: 22, scope: !1078)
!1082 = !DILocation(line: 842, column: 13, scope: !1079)
!1083 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 844, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 842, column: 67)
!1086 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !1084)
!1087 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !1084)
!1088 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !1084)
!1089 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !1084)
!1090 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !1084)
!1091 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !1084)
!1092 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !1084)
!1094 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !1093)
!1095 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !1093)
!1096 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !1093)
!1097 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !1093)
!1098 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !1093)
!1099 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !1093)
!1100 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !1093)
!1101 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !1093)
!1102 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !1093)
!1103 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !1093)
!1104 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !1093)
!1105 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !1093)
!1106 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !1084)
!1107 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !1084)
!1108 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !1084)
!1109 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !1084)
!1110 = !DILocation(line: 0, scope: !1085)
!1111 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !1084)
!1112 = !DILocation(line: 845, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 845, column: 13)
!1114 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 845, column: 13)
!1115 = !DILocation(line: 845, column: 13, scope: !1114)
!1116 = !DILocation(line: 845, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 845, column: 13)
!1118 = !DILocation(line: 845, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 845, column: 13)
!1120 = !DILocation(line: 845, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 845, column: 13)
!1122 = !DILocation(line: 845, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 845, column: 13)
!1124 = !DILocation(line: 845, column: 13, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 845, column: 13)
!1126 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 845, column: 13, scope: !1125)
!1128 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !1127)
!1129 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !1127)
!1130 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !1127)
!1131 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !1127)
!1132 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !1127)
!1133 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !1127)
!1134 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !1127)
!1135 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !1127)
!1136 = !DILocation(line: 845, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 845, column: 13)
!1138 = !DILocation(line: 306, column: 38, scope: !254, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 845, column: 13, scope: !1137)
!1140 = !DILocation(line: 306, column: 50, scope: !254, inlinedAt: !1139)
!1141 = !DILocation(line: 308, column: 33, scope: !254, inlinedAt: !1139)
!1142 = !DILocation(line: 308, column: 26, scope: !254, inlinedAt: !1139)
!1143 = !DILocation(line: 308, column: 22, scope: !254, inlinedAt: !1139)
!1144 = !DILocation(line: 308, column: 13, scope: !254, inlinedAt: !1139)
!1145 = !DILocation(line: 308, column: 5, scope: !254, inlinedAt: !1139)
!1146 = !DILocation(line: 308, column: 19, scope: !254, inlinedAt: !1139)
!1147 = !DILocation(line: 309, column: 1, scope: !254, inlinedAt: !1139)
!1148 = !DILocation(line: 846, column: 33, scope: !1085)
!1149 = !DILocation(line: 846, column: 38, scope: !1085)
!1150 = !DILocation(line: 846, column: 52, scope: !1085)
!1151 = !DILocation(line: 846, column: 21, scope: !1085)
!1152 = !DILocation(line: 847, column: 22, scope: !1085)
!1153 = !DILocation(line: 848, column: 30, scope: !1085)
!1154 = !DILocation(line: 849, column: 21, scope: !1085)
!1155 = !DILocation(line: 849, column: 26, scope: !1085)
!1156 = !DILocation(line: 850, column: 47, scope: !1085)
!1157 = !DILocation(line: 851, column: 26, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 851, column: 17)
!1159 = !DILocation(line: 851, column: 17, scope: !1085)
!1160 = !DILocation(line: 852, column: 26, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 851, column: 45)
!1162 = !DILocation(line: 853, column: 25, scope: !1161)
!1163 = !DILocation(line: 854, column: 40, scope: !1161)
!1164 = !DILocation(line: 854, column: 24, scope: !1161)
!1165 = !DILocation(line: 854, column: 29, scope: !1161)
!1166 = !DILocation(line: 855, column: 34, scope: !1161)
!1167 = !DILocation(line: 856, column: 30, scope: !1161)
!1168 = !DILocation(line: 331, column: 46, scope: !192, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 857, column: 17, scope: !1161)
!1170 = !DILocation(line: 333, column: 12, scope: !202, inlinedAt: !1169)
!1171 = !DILocation(line: 333, column: 9, scope: !192, inlinedAt: !1169)
!1172 = !DILocation(line: 335, column: 19, scope: !205, inlinedAt: !1169)
!1173 = !DILocation(line: 335, column: 16, scope: !205, inlinedAt: !1169)
!1174 = !DILocation(line: 336, column: 5, scope: !205, inlinedAt: !1169)
!1175 = !DILocation(line: 337, column: 23, scope: !209, inlinedAt: !1169)
!1176 = !DILocation(line: 292, column: 34, scope: !211, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 337, column: 16, scope: !209, inlinedAt: !1169)
!1178 = !DILocation(line: 295, column: 18, scope: !211, inlinedAt: !1177)
!1179 = !DILocation(line: 297, column: 11, scope: !211, inlinedAt: !1177)
!1180 = !DILocation(line: 297, column: 26, scope: !211, inlinedAt: !1177)
!1181 = !DILocation(line: 297, column: 24, scope: !211, inlinedAt: !1177)
!1182 = !DILocation(line: 297, column: 48, scope: !211, inlinedAt: !1177)
!1183 = !DILocation(line: 297, column: 46, scope: !211, inlinedAt: !1177)
!1184 = !DILocation(line: 297, column: 9, scope: !211, inlinedAt: !1177)
!1185 = !DILocation(line: 294, column: 18, scope: !211, inlinedAt: !1177)
!1186 = !DILocation(line: 298, column: 20, scope: !211, inlinedAt: !1177)
!1187 = !DILocation(line: 298, column: 12, scope: !211, inlinedAt: !1177)
!1188 = !DILocation(line: 298, column: 26, scope: !211, inlinedAt: !1177)
!1189 = !DILocation(line: 298, column: 5, scope: !211, inlinedAt: !1177)
!1190 = !DILocation(line: 338, column: 29, scope: !209, inlinedAt: !1169)
!1191 = !DILocation(line: 338, column: 20, scope: !209, inlinedAt: !1169)
!1192 = !DILocation(line: 338, column: 16, scope: !209, inlinedAt: !1169)
!1193 = !DILocation(line: 339, column: 14, scope: !209, inlinedAt: !1169)
!1194 = !DILocation(line: 0, scope: !1161)
!1195 = !DILocation(line: 341, column: 1, scope: !192, inlinedAt: !1169)
!1196 = !DILocation(line: 858, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 858, column: 17)
!1198 = !DILocation(line: 858, column: 17, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 858, column: 17)
!1200 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 858, column: 17, scope: !1197)
!1202 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !1201)
!1203 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !1201)
!1204 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !1201)
!1205 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !1201)
!1206 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !1201)
!1207 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !1201)
!1208 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !1201)
!1209 = !DILocation(line: 301, column: 36, scope: !400, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 858, column: 17, scope: !1197)
!1211 = !DILocation(line: 301, column: 48, scope: !400, inlinedAt: !1210)
!1212 = !DILocation(line: 303, column: 31, scope: !400, inlinedAt: !1210)
!1213 = !DILocation(line: 303, column: 24, scope: !400, inlinedAt: !1210)
!1214 = !DILocation(line: 303, column: 13, scope: !400, inlinedAt: !1210)
!1215 = !DILocation(line: 303, column: 5, scope: !400, inlinedAt: !1210)
!1216 = !DILocation(line: 303, column: 19, scope: !400, inlinedAt: !1210)
!1217 = !DILocation(line: 304, column: 1, scope: !400, inlinedAt: !1210)
!1218 = !DILocation(line: 859, column: 42, scope: !1161)
!1219 = !DILocation(line: 859, column: 47, scope: !1161)
!1220 = !DILocation(line: 859, column: 36, scope: !1161)
!1221 = !DILocation(line: 859, column: 25, scope: !1161)
!1222 = !DILocation(line: 860, column: 13, scope: !1161)
!1223 = !DILocation(line: 866, column: 21, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !884, file: !3, line: 866, column: 9)
!1225 = !DILocation(line: 797, column: 11, scope: !884)
!1226 = !DILocation(line: 866, column: 19, scope: !1224)
!1227 = !DILocation(line: 866, column: 9, scope: !884)
!1228 = !DILocation(line: 870, column: 19, scope: !884)
!1229 = !DILocation(line: 870, column: 24, scope: !884)
!1230 = !DILocation(line: 870, column: 38, scope: !884)
!1231 = !DILocation(line: 870, column: 14, scope: !884)
!1232 = !DILocation(line: 872, column: 26, scope: !884)
!1233 = !DILocation(line: 798, column: 18, scope: !884)
!1234 = !DILocation(line: 872, column: 5, scope: !884)
!1235 = !DILocation(line: 874, column: 5, scope: !884)
!1236 = !DILocation(line: 875, column: 5, scope: !884)
!1237 = !DILocation(line: 0, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !906, file: !3, line: 806, column: 13)
!1239 = !DILocation(line: 876, column: 1, scope: !884)
!1240 = distinct !DISubprogram(name: "tlsf_calloc", scope: !3, file: !3, line: 677, type: !1241, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!58, !27, !27, !58}
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DILocalVariable(name: "nelem", arg: 1, scope: !1240, file: !3, line: 677, type: !27)
!1245 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1240, file: !3, line: 677, type: !27)
!1246 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1240, file: !3, line: 677, type: !58)
!1247 = !DILocalVariable(name: "ret", scope: !1240, file: !3, line: 680, type: !58)
!1248 = !DILocation(line: 677, column: 26, scope: !1240)
!1249 = !DILocation(line: 677, column: 40, scope: !1240)
!1250 = !DILocation(line: 677, column: 57, scope: !1240)
!1251 = !DILocalVariable(name: "nelem", arg: 1, scope: !1252, file: !3, line: 880, type: !27)
!1252 = distinct !DISubprogram(name: "calloc_ex", scope: !3, file: !3, line: 880, type: !1241, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1253)
!1253 = !{!1251, !1254, !1255, !1256}
!1254 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1252, file: !3, line: 880, type: !27)
!1255 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1252, file: !3, line: 880, type: !58)
!1256 = !DILocalVariable(name: "ptr", scope: !1252, file: !3, line: 883, type: !58)
!1257 = !DILocation(line: 880, column: 24, scope: !1252, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 684, column: 11, scope: !1240)
!1259 = !DILocation(line: 880, column: 38, scope: !1252, inlinedAt: !1258)
!1260 = !DILocation(line: 880, column: 55, scope: !1252, inlinedAt: !1258)
!1261 = !DILocation(line: 885, column: 15, scope: !1262, inlinedAt: !1258)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 885, column: 9)
!1263 = !DILocation(line: 885, column: 33, scope: !1262, inlinedAt: !1258)
!1264 = !DILocation(line: 885, column: 20, scope: !1262, inlinedAt: !1258)
!1265 = !DILocation(line: 888, column: 33, scope: !1266, inlinedAt: !1258)
!1266 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 888, column: 9)
!1267 = !DILocation(line: 888, column: 17, scope: !1266, inlinedAt: !1258)
!1268 = !DILocation(line: 883, column: 11, scope: !1252, inlinedAt: !1258)
!1269 = !DILocation(line: 888, column: 15, scope: !1266, inlinedAt: !1258)
!1270 = !DILocation(line: 888, column: 9, scope: !1252, inlinedAt: !1258)
!1271 = !DILocation(line: 890, column: 5, scope: !1252, inlinedAt: !1258)
!1272 = !DILocation(line: 892, column: 5, scope: !1252, inlinedAt: !1258)
!1273 = !DILocation(line: 0, scope: !1266, inlinedAt: !1258)
!1274 = !DILocation(line: 893, column: 1, scope: !1252, inlinedAt: !1258)
!1275 = !DILocation(line: 680, column: 11, scope: !1240)
!1276 = !DILocation(line: 688, column: 5, scope: !1240)
!1277 = !DILocation(line: 880, column: 24, scope: !1252)
!1278 = !DILocation(line: 880, column: 38, scope: !1252)
!1279 = !DILocation(line: 880, column: 55, scope: !1252)
!1280 = !DILocation(line: 885, column: 15, scope: !1262)
!1281 = !DILocation(line: 885, column: 33, scope: !1262)
!1282 = !DILocation(line: 885, column: 20, scope: !1262)
!1283 = !DILocation(line: 888, column: 33, scope: !1266)
!1284 = !DILocation(line: 888, column: 17, scope: !1266)
!1285 = !DILocation(line: 883, column: 11, scope: !1252)
!1286 = !DILocation(line: 888, column: 15, scope: !1266)
!1287 = !DILocation(line: 888, column: 9, scope: !1252)
!1288 = !DILocation(line: 890, column: 5, scope: !1252)
!1289 = !DILocation(line: 892, column: 5, scope: !1252)
!1290 = !DILocation(line: 0, scope: !1266)
!1291 = !DILocation(line: 893, column: 1, scope: !1252)
