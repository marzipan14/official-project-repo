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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %5, label %46, label %6, !dbg !83

; <label>:6:                                      ; preds = %2
  %7 = ptrtoint i8* %1 to i64, !dbg !84
  %8 = and i64 %7, 7, !dbg !86
  %9 = icmp eq i64 %8, 0, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %9, label %10, label %46, !dbg !87

; <label>:10:                                     ; preds = %6
  %11 = bitcast i8* %1 to i32*, !dbg !88
  %12 = load i32, i32* %11, align 8, !dbg !88, !tbaa !90
  %13 = icmp eq i32 %12, 710539865, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  ret i64 %47, !dbg !159
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @free_ex(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !160 {
  %3 = icmp eq i8* %0, null, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %3, label %290, label %4, !dbg !178

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !179
  %6 = bitcast i8* %5 to %struct.bhdr_struct*, !dbg !180
  %7 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !182
  %8 = bitcast i8* %7 to i64*, !dbg !182
  %9 = load i64, i64* %8, align 8, !dbg !183, !tbaa !101
  %10 = or i64 %9, 1, !dbg !183
  store i64 %10, i64* %8, align 8, !dbg !183, !tbaa !101
  %11 = bitcast i8* %0 to <2 x %struct.bhdr_struct*>*, !dbg !184
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %11, align 8, !dbg !184, !tbaa !132
  %12 = and i64 %9, 4294967288, !dbg !185
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !185
  %14 = bitcast i8* %13 to %struct.bhdr_struct*, !dbg !185
  %15 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !187
  %16 = bitcast i8* %15 to i64*, !dbg !187
  %17 = load i64, i64* %16, align 8, !dbg !187, !tbaa !101
  %18 = and i64 %17, 1, !dbg !189
  %19 = icmp eq i64 %18, 0, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %19, label %112, label %20, !dbg !190

; <label>:20:                                     ; preds = %4
  %21 = and i64 %17, 4294967288, !dbg !191
  %22 = icmp ult i64 %21, 128, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %22, label %23, label %26, !dbg !205

; <label>:23:                                     ; preds = %20
  %24 = lshr exact i64 %21, 2, !dbg !206
  %25 = trunc i64 %24 to i32, !dbg !208
  br label %45, !dbg !209

; <label>:26:                                     ; preds = %20
  %27 = trunc i64 %21 to i32, !dbg !210
  %28 = icmp ult i32 %27, 65536, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  %29 = icmp ult i32 %27, 256, !dbg !224
  %30 = select i1 %29, i32 0, i32 8, !dbg !225
  %31 = icmp ult i32 %27, 16777216, !dbg !226
  %32 = select i1 %31, i32 16, i32 24, !dbg !227
  %33 = select i1 %28, i32 %30, i32 %32, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  %34 = lshr i32 %27, %33, !dbg !229
  %35 = zext i32 %34 to i64, !dbg !230
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %35, !dbg !230
  %37 = load i32, i32* %36, align 4, !dbg !230, !tbaa !231
  %38 = add i32 %37, %33, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  %39 = add nsw i32 %38, -5, !dbg !234
  %40 = zext i32 %39 to i64, !dbg !235
  %41 = lshr i64 %21, %40, !dbg !235
  %42 = trunc i64 %41 to i32, !dbg !236
  %43 = add i32 %42, -32, !dbg !236
  %44 = add nsw i32 %38, -6, !dbg !237
  br label %45

; <label>:45:                                     ; preds = %23, %26
  %46 = phi i32 [ 0, %23 ], [ %44, %26 ], !dbg !238
  %47 = phi i32 [ %25, %23 ], [ %43, %26 ], !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %48 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !240
  %49 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !240
  %50 = bitcast i8* %49 to %struct.bhdr_struct**, !dbg !240
  %51 = load %struct.bhdr_struct*, %struct.bhdr_struct** %50, align 8, !dbg !240, !tbaa !132
  %52 = icmp eq %struct.bhdr_struct* %51, null, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %52, label %58, label %53, !dbg !243

; <label>:53:                                     ; preds = %45
  %54 = bitcast i8* %48 to i64*, !dbg !240
  %55 = load i64, i64* %54, align 8, !dbg !240, !tbaa !132
  %56 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %51, i64 0, i32 2, !dbg !240
  %57 = bitcast %union.anon* %56 to i64*, !dbg !240
  store i64 %55, i64* %57, align 8, !dbg !240, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br label %58, !dbg !240

; <label>:58:                                     ; preds = %45, %53
  %59 = bitcast i8* %48 to %struct.bhdr_struct**, !dbg !244
  %60 = load %struct.bhdr_struct*, %struct.bhdr_struct** %59, align 8, !dbg !244, !tbaa !132
  %61 = icmp eq %struct.bhdr_struct* %60, null, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %61, label %67, label %62, !dbg !243

; <label>:62:                                     ; preds = %58
  %63 = bitcast i8* %49 to i64*, !dbg !244
  %64 = load i64, i64* %63, align 8, !dbg !244, !tbaa !132
  %65 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %60, i64 0, i32 2, i32 0, i32 1, !dbg !244
  %66 = bitcast %struct.bhdr_struct** %65 to i64*, !dbg !244
  store i64 %64, i64* %66, align 8, !dbg !244, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br label %67, !dbg !244

; <label>:67:                                     ; preds = %58, %62
  %68 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !246
  %69 = bitcast i8* %68 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !246
  %70 = sext i32 %46 to i64, !dbg !246
  %71 = sext i32 %47 to i64, !dbg !246
  %72 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %69, i64 0, i64 %70, i64 %71, !dbg !246
  %73 = load %struct.bhdr_struct*, %struct.bhdr_struct** %72, align 8, !dbg !246, !tbaa !248
  %74 = icmp eq %struct.bhdr_struct* %73, %14, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %74, label %75, label %105, !dbg !243

; <label>:75:                                     ; preds = %67
  %76 = bitcast i8* %49 to i64*, !dbg !249
  %77 = load i64, i64* %76, align 8, !dbg !249, !tbaa !132
  %78 = bitcast %struct.bhdr_struct** %72 to i64*, !dbg !249
  store i64 %77, i64* %78, align 8, !dbg !249, !tbaa !248
  %79 = icmp eq i64 %77, 0, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %79, label %80, label %105, !dbg !249

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !253
  %82 = bitcast i8* %81 to [24 x i32]*, !dbg !253
  %83 = getelementptr inbounds [24 x i32], [24 x i32]* %82, i64 0, i64 %70, !dbg !253
  %84 = and i32 %47, 31, !dbg !265
  %85 = shl i32 1, %84, !dbg !266
  %86 = xor i32 %85, -1, !dbg !267
  %87 = ashr i32 %47, 5, !dbg !268
  %88 = sext i32 %87 to i64, !dbg !269
  %89 = getelementptr inbounds i32, i32* %83, i64 %88, !dbg !269
  %90 = load i32, i32* %89, align 4, !dbg !270, !tbaa !231
  %91 = and i32 %90, %86, !dbg !270
  store i32 %91, i32* %89, align 4, !dbg !270, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %92 = load i32, i32* %83, align 4, !dbg !272, !tbaa !231
  %93 = icmp eq i32 %92, 0, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br i1 %93, label %94, label %105, !dbg !253

; <label>:94:                                     ; preds = %80
  %95 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !272
  %96 = bitcast i8* %95 to i32*, !dbg !272
  %97 = and i32 %46, 31, !dbg !277
  %98 = shl i32 1, %97, !dbg !278
  %99 = xor i32 %98, -1, !dbg !279
  %100 = ashr i32 %46, 5, !dbg !280
  %101 = sext i32 %100 to i64, !dbg !281
  %102 = getelementptr inbounds i32, i32* %96, i64 %101, !dbg !281
  %103 = load i32, i32* %102, align 4, !dbg !282, !tbaa !231
  %104 = and i32 %103, %99, !dbg !282
  store i32 %104, i32* %102, align 4, !dbg !282, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %105, !dbg !272

; <label>:105:                                    ; preds = %80, %75, %94, %67
  %106 = bitcast i8* %48 to <2 x %struct.bhdr_struct*>*, !dbg !243
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %106, align 8, !dbg !243, !tbaa !132
  %107 = load i64, i64* %16, align 8, !dbg !284, !tbaa !101
  %108 = and i64 %107, 4294967288, !dbg !285
  %109 = add nuw nsw i64 %108, 16, !dbg !286
  %110 = load i64, i64* %8, align 8, !dbg !287, !tbaa !101
  %111 = add i64 %109, %110, !dbg !287
  store i64 %111, i64* %8, align 8, !dbg !287, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  br label %112, !dbg !288

; <label>:112:                                    ; preds = %4, %105
  %113 = phi i64 [ %10, %4 ], [ %111, %105 ], !dbg !289
  %114 = and i64 %113, 2, !dbg !291
  %115 = icmp eq i64 %114, 0, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %115, label %116, label %119, !dbg !292

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %0, i64 -8
  %118 = bitcast i8* %117 to i64*
  br label %214, !dbg !292

; <label>:119:                                    ; preds = %112
  %120 = bitcast i8* %5 to %struct.bhdr_struct**, !dbg !293
  %121 = load %struct.bhdr_struct*, %struct.bhdr_struct** %120, align 8, !dbg !293, !tbaa !136
  %122 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 1, !dbg !295
  %123 = load i64, i64* %122, align 8, !dbg !295, !tbaa !101
  %124 = and i64 %123, 4294967288, !dbg !296
  %125 = icmp ult i64 %124, 128, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %125, label %126, label %129, !dbg !300

; <label>:126:                                    ; preds = %119
  %127 = lshr exact i64 %124, 2, !dbg !301
  %128 = trunc i64 %127 to i32, !dbg !302
  br label %148, !dbg !303

; <label>:129:                                    ; preds = %119
  %130 = trunc i64 %124 to i32, !dbg !304
  %131 = icmp ult i32 %130, 65536, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %132 = icmp ult i32 %130, 256, !dbg !310
  %133 = select i1 %132, i32 0, i32 8, !dbg !311
  %134 = icmp ult i32 %130, 16777216, !dbg !312
  %135 = select i1 %134, i32 16, i32 24, !dbg !313
  %136 = select i1 %131, i32 %133, i32 %135, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %137 = lshr i32 %130, %136, !dbg !315
  %138 = zext i32 %137 to i64, !dbg !316
  %139 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %138, !dbg !316
  %140 = load i32, i32* %139, align 4, !dbg !316, !tbaa !231
  %141 = add i32 %140, %136, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %142 = add nsw i32 %141, -5, !dbg !319
  %143 = zext i32 %142 to i64, !dbg !320
  %144 = lshr i64 %124, %143, !dbg !320
  %145 = trunc i64 %144 to i32, !dbg !321
  %146 = add i32 %145, -32, !dbg !321
  %147 = add nsw i32 %141, -6, !dbg !322
  br label %148

; <label>:148:                                    ; preds = %126, %129
  %149 = phi i32 [ 0, %126 ], [ %147, %129 ], !dbg !323
  %150 = phi i32 [ %128, %126 ], [ %146, %129 ], !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  %151 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, !dbg !325
  %152 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, i32 1, !dbg !325
  %153 = load %struct.bhdr_struct*, %struct.bhdr_struct** %152, align 8, !dbg !325, !tbaa !132
  %154 = icmp eq %struct.bhdr_struct* %153, null, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %154, label %160, label %155, !dbg !328

; <label>:155:                                    ; preds = %148
  %156 = bitcast %struct.free_ptr_struct* %151 to i64*, !dbg !325
  %157 = load i64, i64* %156, align 8, !dbg !325, !tbaa !132
  %158 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %153, i64 0, i32 2, !dbg !325
  %159 = bitcast %union.anon* %158 to i64*, !dbg !325
  store i64 %157, i64* %159, align 8, !dbg !325, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br label %160, !dbg !325

; <label>:160:                                    ; preds = %148, %155
  %161 = getelementptr inbounds %struct.free_ptr_struct, %struct.free_ptr_struct* %151, i64 0, i32 0, !dbg !329
  %162 = load %struct.bhdr_struct*, %struct.bhdr_struct** %161, align 8, !dbg !329, !tbaa !132
  %163 = icmp eq %struct.bhdr_struct* %162, null, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %163, label %169, label %164, !dbg !328

; <label>:164:                                    ; preds = %160
  %165 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !329
  %166 = load i64, i64* %165, align 8, !dbg !329, !tbaa !132
  %167 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %162, i64 0, i32 2, i32 0, i32 1, !dbg !329
  %168 = bitcast %struct.bhdr_struct** %167 to i64*, !dbg !329
  store i64 %166, i64* %168, align 8, !dbg !329, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br label %169, !dbg !329

; <label>:169:                                    ; preds = %160, %164
  %170 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !331
  %171 = bitcast i8* %170 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !331
  %172 = sext i32 %149 to i64, !dbg !331
  %173 = sext i32 %150 to i64, !dbg !331
  %174 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %171, i64 0, i64 %172, i64 %173, !dbg !331
  %175 = load %struct.bhdr_struct*, %struct.bhdr_struct** %174, align 8, !dbg !331, !tbaa !248
  %176 = icmp eq %struct.bhdr_struct* %175, %121, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %176, label %177, label %207, !dbg !328

; <label>:177:                                    ; preds = %169
  %178 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !333
  %179 = load i64, i64* %178, align 8, !dbg !333, !tbaa !132
  %180 = bitcast %struct.bhdr_struct** %174 to i64*, !dbg !333
  store i64 %179, i64* %180, align 8, !dbg !333, !tbaa !248
  %181 = icmp eq i64 %179, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %181, label %182, label %207, !dbg !333

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !337
  %184 = bitcast i8* %183 to [24 x i32]*, !dbg !337
  %185 = getelementptr inbounds [24 x i32], [24 x i32]* %184, i64 0, i64 %172, !dbg !337
  %186 = and i32 %150, 31, !dbg !342
  %187 = shl i32 1, %186, !dbg !343
  %188 = xor i32 %187, -1, !dbg !344
  %189 = ashr i32 %150, 5, !dbg !345
  %190 = sext i32 %189 to i64, !dbg !346
  %191 = getelementptr inbounds i32, i32* %185, i64 %190, !dbg !346
  %192 = load i32, i32* %191, align 4, !dbg !347, !tbaa !231
  %193 = and i32 %192, %188, !dbg !347
  store i32 %193, i32* %191, align 4, !dbg !347, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  %194 = load i32, i32* %185, align 4, !dbg !349, !tbaa !231
  %195 = icmp eq i32 %194, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %195, label %196, label %207, !dbg !337

; <label>:196:                                    ; preds = %182
  %197 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !349
  %198 = bitcast i8* %197 to i32*, !dbg !349
  %199 = and i32 %149, 31, !dbg !354
  %200 = shl i32 1, %199, !dbg !355
  %201 = xor i32 %200, -1, !dbg !356
  %202 = ashr i32 %149, 5, !dbg !357
  %203 = sext i32 %202 to i64, !dbg !358
  %204 = getelementptr inbounds i32, i32* %198, i64 %203, !dbg !358
  %205 = load i32, i32* %204, align 4, !dbg !359, !tbaa !231
  %206 = and i32 %205, %201, !dbg !359
  store i32 %206, i32* %204, align 4, !dbg !359, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br label %207, !dbg !349

; <label>:207:                                    ; preds = %182, %177, %196, %169
  %208 = bitcast %struct.free_ptr_struct* %151 to <2 x %struct.bhdr_struct*>*, !dbg !328
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %208, align 8, !dbg !328, !tbaa !132
  %209 = load i64, i64* %8, align 8, !dbg !361, !tbaa !101
  %210 = and i64 %209, 4294967288, !dbg !362
  %211 = add nuw nsw i64 %210, 16, !dbg !363
  %212 = load i64, i64* %122, align 8, !dbg !364, !tbaa !101
  %213 = add i64 %211, %212, !dbg !364
  store i64 %213, i64* %122, align 8, !dbg !364, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %214, !dbg !365

; <label>:214:                                    ; preds = %116, %207
  %215 = phi i64* [ %118, %116 ], [ %122, %207 ], !dbg !366
  %216 = phi i64 [ %113, %116 ], [ %213, %207 ], !dbg !366
  %217 = phi %struct.bhdr_struct* [ %6, %116 ], [ %121, %207 ], !dbg !367
  %218 = and i64 %216, 4294967288, !dbg !368
  %219 = icmp ult i64 %218, 128, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %219, label %220, label %223, !dbg !372

; <label>:220:                                    ; preds = %214
  %221 = lshr exact i64 %218, 2, !dbg !373
  %222 = trunc i64 %221 to i32, !dbg !374
  br label %242, !dbg !375

; <label>:223:                                    ; preds = %214
  %224 = trunc i64 %218 to i32, !dbg !376
  %225 = icmp ult i32 %224, 65536, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %226 = icmp ult i32 %224, 256, !dbg !382
  %227 = select i1 %226, i32 0, i32 8, !dbg !383
  %228 = icmp ult i32 %224, 16777216, !dbg !384
  %229 = select i1 %228, i32 16, i32 24, !dbg !385
  %230 = select i1 %225, i32 %227, i32 %229, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %231 = lshr i32 %224, %230, !dbg !387
  %232 = zext i32 %231 to i64, !dbg !388
  %233 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %232, !dbg !388
  %234 = load i32, i32* %233, align 4, !dbg !388, !tbaa !231
  %235 = add i32 %234, %230, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  %236 = add nsw i32 %235, -5, !dbg !391
  %237 = zext i32 %236 to i64, !dbg !392
  %238 = lshr i64 %218, %237, !dbg !392
  %239 = trunc i64 %238 to i32, !dbg !393
  %240 = add i32 %239, -32, !dbg !393
  %241 = add nsw i32 %235, -6, !dbg !394
  br label %242

; <label>:242:                                    ; preds = %220, %223
  %243 = phi i32 [ 0, %220 ], [ %241, %223 ], !dbg !367
  %244 = phi i32 [ %222, %220 ], [ %240, %223 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %245 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, !dbg !396
  %246 = getelementptr inbounds %union.anon, %union.anon* %245, i64 0, i32 0, i32 0, !dbg !396
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %246, align 8, !dbg !396, !tbaa !132
  %247 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !396
  %248 = bitcast i8* %247 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !396
  %249 = sext i32 %243 to i64, !dbg !396
  %250 = sext i32 %244 to i64, !dbg !396
  %251 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %248, i64 0, i64 %249, i64 %250, !dbg !396
  %252 = bitcast %struct.bhdr_struct** %251 to i64*, !dbg !396
  %253 = load i64, i64* %252, align 8, !dbg !396, !tbaa !248
  %254 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, i32 0, i32 1, !dbg !396
  %255 = bitcast %struct.bhdr_struct** %254 to i64*, !dbg !396
  store i64 %253, i64* %255, align 8, !dbg !396, !tbaa !132
  %256 = load %struct.bhdr_struct*, %struct.bhdr_struct** %251, align 8, !dbg !398, !tbaa !248
  %257 = icmp eq %struct.bhdr_struct* %256, null, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %257, label %262, label %258, !dbg !396

; <label>:258:                                    ; preds = %242
  %259 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %256, i64 0, i32 2, i32 0, i32 0, !dbg !398
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %259, align 8, !dbg !398, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %260 = load i64, i64* %215, align 8, !dbg !400, !tbaa !101
  %261 = and i64 %260, 4294967288, !dbg !400
  br label %262, !dbg !398

; <label>:262:                                    ; preds = %242, %258
  %263 = phi i64 [ %218, %242 ], [ %261, %258 ], !dbg !400
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %251, align 8, !dbg !396, !tbaa !248
  %264 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !396
  %265 = bitcast i8* %264 to [24 x i32]*, !dbg !396
  %266 = getelementptr inbounds [24 x i32], [24 x i32]* %265, i64 0, i64 %249, !dbg !396
  %267 = and i32 %244, 31, !dbg !408
  %268 = shl i32 1, %267, !dbg !409
  %269 = ashr i32 %244, 5, !dbg !410
  %270 = sext i32 %269 to i64, !dbg !411
  %271 = getelementptr inbounds i32, i32* %266, i64 %270, !dbg !411
  %272 = load i32, i32* %271, align 4, !dbg !412, !tbaa !231
  %273 = or i32 %272, %268, !dbg !412
  store i32 %273, i32* %271, align 4, !dbg !412, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  %274 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !396
  %275 = bitcast i8* %274 to i32*, !dbg !396
  %276 = and i32 %243, 31, !dbg !417
  %277 = shl i32 1, %276, !dbg !418
  %278 = ashr i32 %243, 5, !dbg !419
  %279 = sext i32 %278 to i64, !dbg !420
  %280 = getelementptr inbounds i32, i32* %275, i64 %279, !dbg !420
  %281 = load i32, i32* %280, align 4, !dbg !421, !tbaa !231
  %282 = or i32 %281, %277, !dbg !421
  store i32 %282, i32* %280, align 4, !dbg !421, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %283 = bitcast %union.anon* %245 to i8*, !dbg !400
  %284 = getelementptr inbounds i8, i8* %283, i64 %263, !dbg !400
  %285 = getelementptr inbounds i8, i8* %284, i64 8, !dbg !423
  %286 = bitcast i8* %285 to i64*, !dbg !423
  %287 = load i64, i64* %286, align 8, !dbg !424, !tbaa !101
  %288 = or i64 %287, 2, !dbg !424
  store i64 %288, i64* %286, align 8, !dbg !424, !tbaa !101
  %289 = bitcast i8* %284 to %struct.bhdr_struct**, !dbg !425
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %289, align 8, !dbg !426, !tbaa !136
  br label %290, !dbg !427

; <label>:290:                                    ; preds = %2, %262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret void, !dbg !427
}

; Function Attrs: noredzone nounwind
define dso_local i64 @add_new_area(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !430 {
  %4 = tail call i8* @memset(i8* %0, i32 0, i64 %1) #3, !dbg !452
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !453
  %6 = bitcast i8* %5 to %struct.area_info_struct**, !dbg !453
  %7 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !453, !tbaa !152
  %8 = bitcast i8* %0 to %struct.bhdr_struct*, !dbg !459
  %9 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !461
  %10 = bitcast i8* %9 to i64*, !dbg !461
  store i64 16, i64* %10, align 8, !dbg !462, !tbaa !101
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !463
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !463
  %13 = add i64 %1, -64, !dbg !465
  %14 = and i64 %13, -16, !dbg !465
  %15 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !466
  %16 = bitcast i8* %15 to i64*, !dbg !466
  store i64 %14, i64* %16, align 8, !dbg !467, !tbaa !101
  %17 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !468
  %18 = bitcast i8* %17 to <2 x %struct.bhdr_struct*>*, !dbg !469
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %18, align 8, !dbg !469, !tbaa !132
  %19 = and i64 %13, 4294967280, !dbg !470
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !470
  %21 = bitcast i8* %20 to i8**, !dbg !472
  store i8* %12, i8** %21, align 8, !dbg !472, !tbaa !136
  %22 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !473
  %23 = bitcast i8* %22 to i64*, !dbg !473
  store i64 2, i64* %23, align 8, !dbg !474, !tbaa !101
  %24 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !476
  %25 = bitcast i8* %24 to %struct.area_info_struct**, !dbg !476
  store %struct.area_info_struct* null, %struct.area_info_struct** %25, align 8, !dbg !477, !tbaa !142
  %26 = bitcast i8* %11 to i8**, !dbg !478
  store i8* %20, i8** %26, align 8, !dbg !478, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %27 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !481
  %28 = bitcast i8* %27 to %struct.bhdr_struct*, !dbg !481
  %29 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !483
  %30 = and i64 %13, 4294967280, !dbg !483
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !483
  %32 = bitcast i8* %31 to %struct.bhdr_struct*, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %33 = icmp eq %struct.area_info_struct* %7, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %34 = bitcast i8* %5 to i64*
  br i1 %33, label %127, label %35, !dbg !485

; <label>:35:                                     ; preds = %3, %75
  %36 = phi %struct.area_info_struct* [ %76, %75 ], [ %7, %3 ]
  %37 = phi %struct.area_info_struct* [ %51, %75 ], [ null, %3 ]
  %38 = phi %struct.bhdr_struct* [ %46, %75 ], [ %8, %3 ]
  %39 = phi %struct.bhdr_struct* [ %47, %75 ], [ %28, %3 ]
  %40 = phi %struct.bhdr_struct* [ %54, %75 ], [ %32, %3 ]
  %41 = ptrtoint %struct.bhdr_struct* %40 to i64
  %42 = add i64 %41, 16
  br label %43, !dbg !485

; <label>:43:                                     ; preds = %35, %102
  %44 = phi %struct.area_info_struct* [ %36, %35 ], [ %103, %102 ]
  %45 = phi %struct.area_info_struct* [ %37, %35 ], [ %51, %102 ]
  %46 = phi %struct.bhdr_struct* [ %38, %35 ], [ %89, %102 ]
  %47 = phi %struct.bhdr_struct* [ %39, %35 ], [ %54, %102 ]
  %48 = bitcast %struct.bhdr_struct* %46 to %union.anon*
  br label %49, !dbg !485

; <label>:49:                                     ; preds = %43, %121
  %50 = phi %struct.area_info_struct* [ %44, %43 ], [ %123, %121 ]
  %51 = phi %struct.area_info_struct* [ %45, %43 ], [ %50, %121 ]
  %52 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, !dbg !486
  %53 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 0, !dbg !488
  %54 = load %struct.bhdr_struct*, %struct.bhdr_struct** %53, align 8, !dbg !488, !tbaa !145
  %55 = ptrtoint %struct.area_info_struct* %52 to i64, !dbg !490
  %56 = icmp eq i64 %42, %55, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %56, label %57, label %85, !dbg !493

; <label>:57:                                     ; preds = %49
  %58 = bitcast %struct.area_info_struct* %50 to i8*, !dbg !454
  %59 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, i32 1, !dbg !494
  %60 = bitcast %struct.area_info_struct** %59 to i64*, !dbg !494
  %61 = load i64, i64* %60, align 8, !dbg !494, !tbaa !101
  %62 = and i64 %61, 4294967288, !dbg !494
  %63 = getelementptr inbounds i8, i8* %58, i64 %62, !dbg !494
  %64 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !495, !tbaa !152
  %65 = icmp eq %struct.area_info_struct* %64, %50, !dbg !498
  %66 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !499
  %67 = bitcast %struct.area_info_struct** %66 to i64*, !dbg !499
  %68 = load i64, i64* %67, align 8, !dbg !499, !tbaa !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %65, label %69, label %71, !dbg !501

; <label>:69:                                     ; preds = %57
  %70 = inttoptr i64 %68 to %struct.area_info_struct*, !dbg !501
  store i64 %68, i64* %34, align 8, !dbg !502, !tbaa !152
  br label %75, !dbg !504

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !505
  %73 = bitcast %struct.area_info_struct** %72 to i64*, !dbg !506
  store i64 %68, i64* %73, align 8, !dbg !506, !tbaa !142
  %74 = load %struct.area_info_struct*, %struct.area_info_struct** %66, align 8, !dbg !507, !tbaa !142
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi %struct.area_info_struct* [ %70, %69 ], [ %74, %71 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !508
  %78 = load i64, i64* %77, align 8, !dbg !508, !tbaa !101
  %79 = and i64 %78, 4294967288, !dbg !508
  %80 = add nuw nsw i64 %62, 32, !dbg !508
  %81 = add nuw nsw i64 %80, %79, !dbg !508
  %82 = and i64 %81, 17179869168, !dbg !508
  store i64 %82, i64* %77, align 8, !dbg !509, !tbaa !101
  %83 = bitcast i8* %63 to %struct.bhdr_struct**, !dbg !510
  store %struct.bhdr_struct* %47, %struct.bhdr_struct** %83, align 8, !dbg !511, !tbaa !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  %84 = icmp eq %struct.area_info_struct* %76, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %84, label %127, label %35, !dbg !485, !llvm.loop !513

; <label>:85:                                     ; preds = %49
  %86 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 2, !dbg !515
  %87 = icmp eq %union.anon* %86, %48, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %87, label %88, label %121, !dbg !518

; <label>:88:                                     ; preds = %85
  %89 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !519
  %90 = bitcast %struct.bhdr_struct* %46 to i8*, !dbg !520
  %91 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !521, !tbaa !152
  %92 = icmp eq %struct.area_info_struct* %91, %50, !dbg !524
  %93 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !525
  %94 = bitcast %struct.area_info_struct** %93 to i64*, !dbg !525
  %95 = load i64, i64* %94, align 8, !dbg !525, !tbaa !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %92, label %96, label %98, !dbg !527

; <label>:96:                                     ; preds = %88
  %97 = inttoptr i64 %95 to %struct.area_info_struct*, !dbg !527
  store i64 %95, i64* %34, align 8, !dbg !528, !tbaa !152
  br label %102, !dbg !530

; <label>:98:                                     ; preds = %88
  %99 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !531
  %100 = bitcast %struct.area_info_struct** %99 to i64*, !dbg !532
  store i64 %95, i64* %100, align 8, !dbg !532, !tbaa !142
  %101 = load %struct.area_info_struct*, %struct.area_info_struct** %93, align 8, !dbg !533, !tbaa !142
  br label %102

; <label>:102:                                    ; preds = %98, %96
  %103 = phi %struct.area_info_struct* [ %97, %96 ], [ %101, %98 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %104 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !534
  %105 = load i64, i64* %104, align 8, !dbg !534, !tbaa !101
  %106 = and i64 %105, 4294967288, !dbg !534
  %107 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %46, i64 0, i32 1, !dbg !534
  %108 = load i64, i64* %107, align 8, !dbg !534, !tbaa !101
  %109 = and i64 %108, 4294967288, !dbg !534
  %110 = add nuw nsw i64 %106, 32, !dbg !534
  %111 = add nuw nsw i64 %110, %109, !dbg !534
  %112 = and i64 %111, 17179869168, !dbg !534
  %113 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 1, !dbg !535
  %114 = load i64, i64* %113, align 8, !dbg !535, !tbaa !101
  %115 = and i64 %114, 2, !dbg !536
  %116 = or i64 %112, %115, !dbg !537
  store i64 %116, i64* %113, align 8, !dbg !538, !tbaa !101
  %117 = and i64 %111, 4294967280, !dbg !539
  %118 = getelementptr inbounds i8, i8* %90, i64 %117, !dbg !539
  %119 = bitcast i8* %118 to %struct.bhdr_struct**, !dbg !541
  store %struct.bhdr_struct* %54, %struct.bhdr_struct** %119, align 8, !dbg !542, !tbaa !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %120 = icmp eq %struct.area_info_struct* %103, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %120, label %125, label %43, !dbg !485, !llvm.loop !513

; <label>:121:                                    ; preds = %85
  %122 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !544
  %123 = load %struct.area_info_struct*, %struct.area_info_struct** %122, align 8, !dbg !544, !tbaa !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %124 = icmp eq %struct.area_info_struct* %123, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %124, label %127, label %49, !dbg !485, !llvm.loop !513

; <label>:125:                                    ; preds = %102
  %126 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !519
  br label %127, !dbg !545

; <label>:127:                                    ; preds = %75, %121, %3, %125
  %128 = phi %struct.bhdr_struct* [ %40, %125 ], [ %32, %3 ], [ %40, %121 ], [ %54, %75 ]
  %129 = phi %struct.bhdr_struct* [ %54, %125 ], [ %28, %3 ], [ %47, %121 ], [ %47, %75 ]
  %130 = phi %struct.bhdr_struct* [ %126, %125 ], [ %8, %3 ], [ %46, %121 ], [ %46, %75 ]
  %131 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, !dbg !545
  %132 = load i64, i64* %34, align 8, !dbg !547, !tbaa !152
  %133 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, i32 0, i32 1, !dbg !548
  %134 = bitcast %struct.bhdr_struct** %133 to i64*, !dbg !549
  store i64 %132, i64* %134, align 8, !dbg !549, !tbaa !142
  %135 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i32 0, !dbg !550
  store %struct.bhdr_struct* %128, %struct.bhdr_struct** %135, align 8, !dbg !551, !tbaa !145
  %136 = bitcast i8* %5 to %union.anon**, !dbg !552
  store %union.anon* %131, %union.anon** %136, align 8, !dbg !552, !tbaa !152
  %137 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 2, !dbg !553
  %138 = bitcast %union.anon* %137 to i8*, !dbg !554
  tail call void @free_ex(i8* nonnull %138, i8* %2) #4, !dbg !555
  %139 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 1, !dbg !556
  %140 = load i64, i64* %139, align 8, !dbg !556, !tbaa !101
  %141 = and i64 %140, 4294967288, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  ret i64 %141, !dbg !558
}

; Function Attrs: noredzone nounwind
define dso_local i64 @get_used_size(i8* nocapture readnone) local_unnamed_addr #0 !dbg !559 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  ret i64 0, !dbg !565
}

; Function Attrs: noredzone nounwind
define dso_local i64 @get_max_size(i8* nocapture readnone) local_unnamed_addr #0 !dbg !566 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  ret i64 0, !dbg !570
}

; Function Attrs: noredzone nounwind
define dso_local void @destroy_memory_pool(i8* nocapture) local_unnamed_addr #0 !dbg !571 {
  %2 = bitcast i8* %0 to i32*, !dbg !579
  store i32 0, i32* %2, align 8, !dbg !580, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  ret void, !dbg !581
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_malloc(i64, i8* nocapture) local_unnamed_addr #0 !dbg !582 {
  %3 = tail call i8* @malloc_ex(i64 %0, i8* %1) #4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  ret i8* %3, !dbg !593
}

; Function Attrs: noredzone nounwind
define dso_local i8* @malloc_ex(i64, i8* nocapture) local_unnamed_addr #0 !dbg !594 {
  %3 = bitcast i8* %1 to %struct.TLSF_struct*, !dbg !607
  %4 = icmp ult i64 %0, 16, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %4, label %5, label %6, !dbg !610

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br label %10, !dbg !611

; <label>:6:                                      ; preds = %2
  %7 = add i64 %0, 15, !dbg !622
  %8 = and i64 %7, -16, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  %9 = icmp ult i64 %8, 128, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %9, label %10, label %14, !dbg !611

; <label>:10:                                     ; preds = %5, %6
  %11 = phi i64 [ 16, %5 ], [ %8, %6 ]
  %12 = lshr exact i64 %11, 2, !dbg !625
  %13 = trunc i64 %12 to i32, !dbg !627
  br label %52, !dbg !628

; <label>:14:                                     ; preds = %6
  %15 = trunc i64 %8 to i32, !dbg !629
  %16 = icmp ult i32 %15, 65536, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %17 = icmp ult i32 %15, 256, !dbg !636
  %18 = select i1 %17, i32 0, i32 8, !dbg !637
  %19 = icmp ult i32 %15, 16777216, !dbg !638
  %20 = select i1 %19, i32 16, i32 24, !dbg !639
  %21 = select i1 %16, i32 %18, i32 %20, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %22 = lshr i32 %15, %21, !dbg !641
  %23 = zext i32 %22 to i64, !dbg !642
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %23, !dbg !642
  %25 = load i32, i32* %24, align 4, !dbg !642, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %26 = add nsw i32 %21, -5, !dbg !644
  %27 = add i32 %26, %25, !dbg !645
  %28 = shl nsw i32 -1, %27, !dbg !646
  %29 = xor i32 %28, -1, !dbg !646
  %30 = sext i32 %29 to i64, !dbg !648
  %31 = add i64 %8, %30, !dbg !649
  %32 = trunc i64 %31 to i32, !dbg !650
  %33 = icmp ult i32 %32, 65536, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %34 = icmp ult i32 %32, 256, !dbg !656
  %35 = select i1 %34, i32 0, i32 8, !dbg !657
  %36 = icmp ult i32 %32, 16777216, !dbg !658
  %37 = select i1 %36, i32 16, i32 24, !dbg !659
  %38 = select i1 %33, i32 %35, i32 %37, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %39 = lshr i32 %32, %38, !dbg !661
  %40 = zext i32 %39 to i64, !dbg !662
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %40, !dbg !662
  %42 = load i32, i32* %41, align 4, !dbg !662, !tbaa !231
  %43 = add i32 %42, %38, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %44 = add nsw i32 %43, -5, !dbg !665
  %45 = zext i32 %44 to i64, !dbg !666
  %46 = lshr i64 %31, %45, !dbg !666
  %47 = trunc i64 %46 to i32, !dbg !667
  %48 = add i32 %47, -32, !dbg !667
  %49 = add nsw i32 %43, -6, !dbg !668
  %50 = sext i32 %28 to i64, !dbg !669
  %51 = and i64 %31, %50, !dbg !670
  br label %52

; <label>:52:                                     ; preds = %10, %14
  %53 = phi i64 [ %11, %10 ], [ %51, %14 ], !dbg !671
  %54 = phi i32 [ 0, %10 ], [ %49, %14 ], !dbg !671
  %55 = phi i32 [ %13, %10 ], [ %48, %14 ], !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  %56 = sext i32 %54 to i64, !dbg !684
  %57 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %56, !dbg !684
  %58 = load i32, i32* %57, align 4, !dbg !684, !tbaa !231
  %59 = shl i32 -1, %55, !dbg !685
  %60 = and i32 %58, %59, !dbg !686
  %61 = icmp eq i32 %60, 0, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %61, label %76, label %62, !dbg !691

; <label>:62:                                     ; preds = %52
  %63 = sub nsw i32 0, %60, !dbg !700
  %64 = and i32 %60, %63, !dbg !701
  %65 = icmp ult i32 %64, 65536, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  %66 = icmp ult i32 %64, 256, !dbg !705
  %67 = select i1 %66, i32 0, i32 8, !dbg !706
  %68 = icmp ult i32 %64, 16777216, !dbg !707
  %69 = select i1 %68, i32 16, i32 24, !dbg !708
  %70 = select i1 %65, i32 %67, i32 %69, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  %71 = lshr i32 %64, %70, !dbg !710
  %72 = zext i32 %71 to i64, !dbg !711
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %72, !dbg !711
  %74 = load i32, i32* %73, align 4, !dbg !711, !tbaa !231
  %75 = add i32 %74, %70, !dbg !712
  br label %115, !dbg !713

; <label>:76:                                     ; preds = %52
  %77 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !714
  %78 = bitcast i8* %77 to i32*, !dbg !714
  %79 = load i32, i32* %78, align 8, !dbg !714, !tbaa !716
  %80 = add nsw i32 %54, 1, !dbg !717
  %81 = shl i32 -1, %80, !dbg !718
  %82 = and i32 %79, %81, !dbg !719
  %83 = sub nsw i32 0, %82, !dbg !722
  %84 = and i32 %82, %83, !dbg !723
  %85 = icmp ult i32 %84, 65536, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %86 = icmp ult i32 %84, 256, !dbg !727
  %87 = select i1 %86, i32 0, i32 8, !dbg !728
  %88 = icmp ult i32 %84, 16777216, !dbg !729
  %89 = select i1 %88, i32 16, i32 24, !dbg !730
  %90 = select i1 %85, i32 %87, i32 %89, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %91 = lshr i32 %84, %90, !dbg !732
  %92 = zext i32 %91 to i64, !dbg !733
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %92, !dbg !733
  %94 = load i32, i32* %93, align 4, !dbg !733, !tbaa !231
  %95 = add i32 %94, %90, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %96 = icmp sgt i32 %95, 0, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %96, label %98, label %97, !dbg !738

; <label>:97:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br label %252, !dbg !741

; <label>:98:                                     ; preds = %76
  %99 = sext i32 %95 to i64, !dbg !742
  %100 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %99, !dbg !742
  %101 = load i32, i32* %100, align 4, !dbg !742, !tbaa !231
  %102 = sub nsw i32 0, %101, !dbg !746
  %103 = and i32 %101, %102, !dbg !747
  %104 = icmp ult i32 %103, 65536, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  %105 = icmp ult i32 %103, 256, !dbg !751
  %106 = select i1 %105, i32 0, i32 8, !dbg !752
  %107 = icmp ult i32 %103, 16777216, !dbg !753
  %108 = select i1 %107, i32 16, i32 24, !dbg !754
  %109 = select i1 %104, i32 %106, i32 %108, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  %110 = lshr i32 %103, %109, !dbg !756
  %111 = zext i32 %110 to i64, !dbg !757
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %111, !dbg !757
  %113 = load i32, i32* %112, align 4, !dbg !757, !tbaa !231
  %114 = add i32 %113, %109, !dbg !758
  br label %115, !dbg !759

; <label>:115:                                    ; preds = %62, %98
  %116 = phi i32 [ %75, %62 ], [ %114, %98 ]
  %117 = phi i64 [ %56, %62 ], [ %99, %98 ]
  %118 = phi i32 [ %54, %62 ], [ %95, %98 ], !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %119 = sext i32 %116 to i64, !dbg !671
  %120 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 4, i64 %117, i64 %119, !dbg !671
  %121 = load %struct.bhdr_struct*, %struct.bhdr_struct** %120, align 8, !dbg !671, !tbaa !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %122 = icmp eq %struct.bhdr_struct* %121, null, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %122, label %254, label %123, !dbg !741

; <label>:123:                                    ; preds = %115
  %124 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, !dbg !763
  %125 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, i32 1, !dbg !763
  %126 = bitcast %struct.bhdr_struct** %125 to i64*, !dbg !763
  %127 = load i64, i64* %126, align 8, !dbg !763, !tbaa !132
  %128 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !763
  %129 = bitcast i8* %128 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !763
  %130 = sext i32 %118 to i64, !dbg !763
  %131 = sext i32 %116 to i64, !dbg !763
  %132 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %129, i64 0, i64 %130, i64 %131, !dbg !763
  %133 = bitcast %struct.bhdr_struct** %132 to i64*, !dbg !763
  store i64 %127, i64* %133, align 8, !dbg !763, !tbaa !248
  %134 = icmp eq i64 %127, 0, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %134, label %138, label %135, !dbg !763

; <label>:135:                                    ; preds = %123
  %136 = inttoptr i64 %127 to %struct.bhdr_struct*, !dbg !767
  %137 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %136, i64 0, i32 2, i32 0, i32 0, !dbg !767
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %137, align 8, !dbg !767, !tbaa !132
  br label %163, !dbg !767

; <label>:138:                                    ; preds = %123
  %139 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !769
  %140 = bitcast i8* %139 to [24 x i32]*, !dbg !769
  %141 = getelementptr inbounds [24 x i32], [24 x i32]* %140, i64 0, i64 %130, !dbg !769
  %142 = and i32 %116, 31, !dbg !774
  %143 = shl i32 1, %142, !dbg !775
  %144 = xor i32 %143, -1, !dbg !776
  %145 = ashr i32 %116, 5, !dbg !777
  %146 = sext i32 %145 to i64, !dbg !778
  %147 = getelementptr inbounds i32, i32* %141, i64 %146, !dbg !778
  %148 = load i32, i32* %147, align 4, !dbg !779, !tbaa !231
  %149 = and i32 %148, %144, !dbg !779
  store i32 %149, i32* %147, align 4, !dbg !779, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %150 = load i32, i32* %141, align 4, !dbg !781, !tbaa !231
  %151 = icmp eq i32 %150, 0, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %151, label %152, label %164, !dbg !769

; <label>:152:                                    ; preds = %138
  %153 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !781
  %154 = bitcast i8* %153 to i32*, !dbg !781
  %155 = and i32 %118, 31, !dbg !786
  %156 = shl i32 1, %155, !dbg !787
  %157 = xor i32 %156, -1, !dbg !788
  %158 = ashr i32 %118, 5, !dbg !789
  %159 = sext i32 %158 to i64, !dbg !790
  %160 = getelementptr inbounds i32, i32* %154, i64 %159, !dbg !790
  %161 = load i32, i32* %160, align 4, !dbg !791, !tbaa !231
  %162 = and i32 %161, %157, !dbg !791
  store i32 %162, i32* %160, align 4, !dbg !791, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br label %163, !dbg !781

; <label>:163:                                    ; preds = %135, %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br label %164, !dbg !763

; <label>:164:                                    ; preds = %163, %138
  %165 = bitcast %union.anon* %124 to <2 x %struct.bhdr_struct*>*, !dbg !763
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %165, align 8, !dbg !763, !tbaa !132
  %166 = bitcast %union.anon* %124 to i8*, !dbg !793
  %167 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 1, !dbg !793
  %168 = load i64, i64* %167, align 8, !dbg !793, !tbaa !101
  %169 = and i64 %168, 4294967288, !dbg !793
  %170 = getelementptr inbounds i8, i8* %166, i64 %169, !dbg !793
  %171 = sub i64 %169, %53, !dbg !794
  %172 = icmp ugt i64 %171, 31, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %172, label %173, label %244, !dbg !798

; <label>:173:                                    ; preds = %164
  %174 = add i64 %171, -16, !dbg !800
  %175 = getelementptr inbounds i8, i8* %166, i64 %53, !dbg !802
  %176 = or i64 %174, 1, !dbg !803
  %177 = getelementptr inbounds i8, i8* %175, i64 8, !dbg !804
  %178 = bitcast i8* %177 to i64*, !dbg !804
  store i64 %176, i64* %178, align 8, !dbg !805, !tbaa !101
  %179 = bitcast i8* %170 to i8**, !dbg !806
  store i8* %175, i8** %179, align 8, !dbg !806, !tbaa !136
  %180 = icmp ult i64 %174, 128, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %180, label %181, label %184, !dbg !810

; <label>:181:                                    ; preds = %173
  %182 = lshr i64 %174, 2, !dbg !811
  %183 = trunc i64 %182 to i32, !dbg !812
  br label %203, !dbg !813

; <label>:184:                                    ; preds = %173
  %185 = trunc i64 %174 to i32, !dbg !814
  %186 = icmp ult i32 %185, 65536, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %187 = icmp ult i32 %185, 256, !dbg !820
  %188 = select i1 %187, i32 0, i32 8, !dbg !821
  %189 = icmp ult i32 %185, 16777216, !dbg !822
  %190 = select i1 %189, i32 16, i32 24, !dbg !823
  %191 = select i1 %186, i32 %188, i32 %190, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %192 = lshr i32 %185, %191, !dbg !825
  %193 = zext i32 %192 to i64, !dbg !826
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %193, !dbg !826
  %195 = load i32, i32* %194, align 4, !dbg !826, !tbaa !231
  %196 = add i32 %195, %191, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %197 = add nsw i32 %196, -5, !dbg !829
  %198 = zext i32 %197 to i64, !dbg !830
  %199 = lshr i64 %174, %198, !dbg !830
  %200 = trunc i64 %199 to i32, !dbg !831
  %201 = add i32 %200, -32, !dbg !831
  %202 = add nsw i32 %196, -6, !dbg !832
  br label %203

; <label>:203:                                    ; preds = %181, %184
  %204 = phi i32 [ 0, %181 ], [ %202, %184 ], !dbg !833
  %205 = phi i32 [ %183, %181 ], [ %201, %184 ], !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  %206 = getelementptr inbounds i8, i8* %175, i64 16, !dbg !835
  %207 = bitcast i8* %206 to %struct.bhdr_struct**, !dbg !835
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %207, align 8, !dbg !835, !tbaa !132
  %208 = sext i32 %204 to i64, !dbg !835
  %209 = sext i32 %205 to i64, !dbg !835
  %210 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %129, i64 0, i64 %208, i64 %209, !dbg !835
  %211 = bitcast %struct.bhdr_struct** %210 to i64*, !dbg !835
  %212 = load i64, i64* %211, align 8, !dbg !835, !tbaa !248
  %213 = getelementptr inbounds i8, i8* %206, i64 8, !dbg !835
  %214 = bitcast i8* %213 to i64*, !dbg !835
  store i64 %212, i64* %214, align 8, !dbg !835, !tbaa !132
  %215 = load %struct.bhdr_struct*, %struct.bhdr_struct** %210, align 8, !dbg !837, !tbaa !248
  %216 = icmp eq %struct.bhdr_struct* %215, null, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %216, label %220, label %217, !dbg !835

; <label>:217:                                    ; preds = %203
  %218 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %215, i64 0, i32 2, i32 0, i32 0, !dbg !837
  %219 = bitcast %struct.bhdr_struct** %218 to i8**, !dbg !837
  store i8* %175, i8** %219, align 8, !dbg !837, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br label %220, !dbg !837

; <label>:220:                                    ; preds = %203, %217
  %221 = bitcast %struct.bhdr_struct** %210 to i8**, !dbg !835
  store i8* %175, i8** %221, align 8, !dbg !835, !tbaa !248
  %222 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !835
  %223 = bitcast i8* %222 to [24 x i32]*, !dbg !835
  %224 = getelementptr inbounds [24 x i32], [24 x i32]* %223, i64 0, i64 %208, !dbg !835
  %225 = and i32 %205, 31, !dbg !843
  %226 = shl i32 1, %225, !dbg !844
  %227 = ashr i32 %205, 5, !dbg !845
  %228 = sext i32 %227 to i64, !dbg !846
  %229 = getelementptr inbounds i32, i32* %224, i64 %228, !dbg !846
  %230 = load i32, i32* %229, align 4, !dbg !847, !tbaa !231
  %231 = or i32 %230, %226, !dbg !847
  store i32 %231, i32* %229, align 4, !dbg !847, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %232 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !835
  %233 = bitcast i8* %232 to i32*, !dbg !835
  %234 = and i32 %204, 31, !dbg !852
  %235 = shl i32 1, %234, !dbg !853
  %236 = ashr i32 %204, 5, !dbg !854
  %237 = sext i32 %236 to i64, !dbg !855
  %238 = getelementptr inbounds i32, i32* %233, i64 %237, !dbg !855
  %239 = load i32, i32* %238, align 4, !dbg !856, !tbaa !231
  %240 = or i32 %239, %235, !dbg !856
  store i32 %240, i32* %238, align 4, !dbg !856, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %241 = load i64, i64* %167, align 8, !dbg !858, !tbaa !101
  %242 = and i64 %241, 2, !dbg !859
  %243 = or i64 %242, %53, !dbg !860
  br label %250, !dbg !861

; <label>:244:                                    ; preds = %164
  %245 = getelementptr inbounds i8, i8* %170, i64 8, !dbg !862
  %246 = bitcast i8* %245 to i64*, !dbg !862
  %247 = load i64, i64* %246, align 8, !dbg !864, !tbaa !101
  %248 = and i64 %247, -3, !dbg !864
  store i64 %248, i64* %246, align 8, !dbg !864, !tbaa !101
  %249 = and i64 %168, -2, !dbg !865
  br label %250

; <label>:250:                                    ; preds = %220, %244
  %251 = phi i64 [ %243, %220 ], [ %249, %244 ]
  store i64 %251, i64* %167, align 8, !dbg !866, !tbaa !101
  br label %252, !dbg !867

; <label>:252:                                    ; preds = %250, %97
  %253 = phi i8* [ null, %97 ], [ %166, %250 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %254, !dbg !868

; <label>:254:                                    ; preds = %252, %115
  %255 = phi i8* [ null, %115 ], [ %253, %252 ], !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  ret i8* %255, !dbg !869
}

; Function Attrs: noredzone nounwind
define dso_local void @tlsf_free(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !870 {
  tail call void @free_ex(i8* %0, i8* %1) #4, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  ret void, !dbg !877
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_realloc(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !878 {
  %4 = tail call i8* @realloc_ex(i8* %0, i64 %1, i8* %2) #4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret i8* %4, !dbg !891
}

; Function Attrs: noredzone nounwind
define dso_local i8* @realloc_ex(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !892 {
  %4 = icmp eq i8* %0, null, !dbg !910
  %5 = icmp ne i64 %1, 0, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br i1 %4, label %6, label %10, !dbg !915

; <label>:6:                                      ; preds = %3
  br i1 %5, label %7, label %9, !dbg !917

; <label>:7:                                      ; preds = %6
  %8 = tail call i8* @malloc_ex(i64 %1, i8* %2) #4, !dbg !918
  br label %394, !dbg !919

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br label %394, !dbg !921

; <label>:10:                                     ; preds = %3
  br i1 %5, label %12, label %11, !dbg !923

; <label>:11:                                     ; preds = %10
  tail call void @free_ex(i8* nonnull %0, i8* %2) #4, !dbg !924
  br label %394, !dbg !927

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !928
  %14 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !930
  %15 = bitcast i8* %14 to i64*, !dbg !930
  %16 = load i64, i64* %15, align 8, !dbg !930, !tbaa !101
  %17 = and i64 %16, 4294967288, !dbg !930
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !930
  %19 = bitcast i8* %18 to %struct.bhdr_struct*, !dbg !930
  %20 = icmp ult i64 %1, 16, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %20, label %24, label %21, !dbg !933

; <label>:21:                                     ; preds = %12
  %22 = add i64 %1, 15, !dbg !934
  %23 = and i64 %22, -16, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br label %24, !dbg !933

; <label>:24:                                     ; preds = %12, %21
  %25 = phi i64 [ %23, %21 ], [ 16, %12 ], !dbg !933
  %26 = icmp ugt i64 %25, %17, !dbg !936
  %27 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !938
  %28 = bitcast i8* %27 to i64*, !dbg !938
  %29 = load i64, i64* %28, align 8, !dbg !938, !tbaa !101
  %30 = and i64 %29, 1, !dbg !938
  %31 = icmp ne i64 %30, 0, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %26, label %207, label %32, !dbg !940

; <label>:32:                                     ; preds = %24
  br i1 %31, label %33, label %126, !dbg !943

; <label>:33:                                     ; preds = %32
  %34 = and i64 %29, 4294967288, !dbg !944
  %35 = icmp ult i64 %34, 128, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br i1 %35, label %36, label %39, !dbg !950

; <label>:36:                                     ; preds = %33
  %37 = lshr exact i64 %34, 2, !dbg !951
  %38 = trunc i64 %37 to i32, !dbg !952
  br label %58, !dbg !953

; <label>:39:                                     ; preds = %33
  %40 = trunc i64 %34 to i32, !dbg !954
  %41 = icmp ult i32 %40, 65536, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %42 = icmp ult i32 %40, 256, !dbg !960
  %43 = select i1 %42, i32 0, i32 8, !dbg !961
  %44 = icmp ult i32 %40, 16777216, !dbg !962
  %45 = select i1 %44, i32 16, i32 24, !dbg !963
  %46 = select i1 %41, i32 %43, i32 %45, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %47 = lshr i32 %40, %46, !dbg !965
  %48 = zext i32 %47 to i64, !dbg !966
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %48, !dbg !966
  %50 = load i32, i32* %49, align 4, !dbg !966, !tbaa !231
  %51 = add i32 %50, %46, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  %52 = add nsw i32 %51, -5, !dbg !969
  %53 = zext i32 %52 to i64, !dbg !970
  %54 = lshr i64 %34, %53, !dbg !970
  %55 = trunc i64 %54 to i32, !dbg !971
  %56 = add i32 %55, -32, !dbg !971
  %57 = add nsw i32 %51, -6, !dbg !972
  br label %58

; <label>:58:                                     ; preds = %36, %39
  %59 = phi i32 [ 0, %36 ], [ %57, %39 ], !dbg !973
  %60 = phi i32 [ %38, %36 ], [ %56, %39 ], !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  %61 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !975
  %62 = getelementptr inbounds i8, i8* %61, i64 8, !dbg !975
  %63 = bitcast i8* %62 to %struct.bhdr_struct**, !dbg !975
  %64 = load %struct.bhdr_struct*, %struct.bhdr_struct** %63, align 8, !dbg !975, !tbaa !132
  %65 = icmp eq %struct.bhdr_struct* %64, null, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %65, label %71, label %66, !dbg !978

; <label>:66:                                     ; preds = %58
  %67 = bitcast i8* %61 to i64*, !dbg !975
  %68 = load i64, i64* %67, align 8, !dbg !975, !tbaa !132
  %69 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %64, i64 0, i32 2, !dbg !975
  %70 = bitcast %union.anon* %69 to i64*, !dbg !975
  store i64 %68, i64* %70, align 8, !dbg !975, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  br label %71, !dbg !975

; <label>:71:                                     ; preds = %58, %66
  %72 = bitcast i8* %61 to %struct.bhdr_struct**, !dbg !979
  %73 = load %struct.bhdr_struct*, %struct.bhdr_struct** %72, align 8, !dbg !979, !tbaa !132
  %74 = icmp eq %struct.bhdr_struct* %73, null, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %74, label %80, label %75, !dbg !978

; <label>:75:                                     ; preds = %71
  %76 = bitcast i8* %62 to i64*, !dbg !979
  %77 = load i64, i64* %76, align 8, !dbg !979, !tbaa !132
  %78 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %73, i64 0, i32 2, i32 0, i32 1, !dbg !979
  %79 = bitcast %struct.bhdr_struct** %78 to i64*, !dbg !979
  store i64 %77, i64* %79, align 8, !dbg !979, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br label %80, !dbg !979

; <label>:80:                                     ; preds = %71, %75
  %81 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !981
  %82 = bitcast i8* %81 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !981
  %83 = sext i32 %59 to i64, !dbg !981
  %84 = sext i32 %60 to i64, !dbg !981
  %85 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %82, i64 0, i64 %83, i64 %84, !dbg !981
  %86 = load %struct.bhdr_struct*, %struct.bhdr_struct** %85, align 8, !dbg !981, !tbaa !248
  %87 = icmp eq %struct.bhdr_struct* %86, %19, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %87, label %88, label %118, !dbg !978

; <label>:88:                                     ; preds = %80
  %89 = bitcast i8* %62 to i64*, !dbg !985
  %90 = load i64, i64* %89, align 8, !dbg !985, !tbaa !132
  %91 = bitcast %struct.bhdr_struct** %85 to i64*, !dbg !985
  store i64 %90, i64* %91, align 8, !dbg !985, !tbaa !248
  %92 = icmp eq i64 %90, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br i1 %92, label %93, label %118, !dbg !985

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !989
  %95 = bitcast i8* %94 to [24 x i32]*, !dbg !989
  %96 = getelementptr inbounds [24 x i32], [24 x i32]* %95, i64 0, i64 %83, !dbg !989
  %97 = and i32 %60, 31, !dbg !994
  %98 = shl i32 1, %97, !dbg !995
  %99 = xor i32 %98, -1, !dbg !996
  %100 = ashr i32 %60, 5, !dbg !997
  %101 = sext i32 %100 to i64, !dbg !998
  %102 = getelementptr inbounds i32, i32* %96, i64 %101, !dbg !998
  %103 = load i32, i32* %102, align 4, !dbg !999, !tbaa !231
  %104 = and i32 %103, %99, !dbg !999
  store i32 %104, i32* %102, align 4, !dbg !999, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %105 = load i32, i32* %96, align 4, !dbg !1001, !tbaa !231
  %106 = icmp eq i32 %105, 0, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %106, label %107, label %118, !dbg !989

; <label>:107:                                    ; preds = %93
  %108 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1001
  %109 = bitcast i8* %108 to i32*, !dbg !1001
  %110 = and i32 %59, 31, !dbg !1006
  %111 = shl i32 1, %110, !dbg !1007
  %112 = xor i32 %111, -1, !dbg !1008
  %113 = ashr i32 %59, 5, !dbg !1009
  %114 = sext i32 %113 to i64, !dbg !1010
  %115 = getelementptr inbounds i32, i32* %109, i64 %114, !dbg !1010
  %116 = load i32, i32* %115, align 4, !dbg !1011, !tbaa !231
  %117 = and i32 %116, %112, !dbg !1011
  store i32 %117, i32* %115, align 4, !dbg !1011, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br label %118, !dbg !1001

; <label>:118:                                    ; preds = %93, %88, %107, %80
  %119 = bitcast i8* %61 to <2 x %struct.bhdr_struct*>*, !dbg !978
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %119, align 8, !dbg !978, !tbaa !132
  %120 = load i64, i64* %28, align 8, !dbg !1013, !tbaa !101
  %121 = and i64 %120, 4294967288, !dbg !1014
  %122 = add nuw nsw i64 %17, 16, !dbg !1015
  %123 = add nuw nsw i64 %122, %121, !dbg !1016
  %124 = getelementptr inbounds i8, i8* %61, i64 %121, !dbg !1017
  %125 = bitcast i8* %124 to %struct.bhdr_struct*, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br label %126, !dbg !1018

; <label>:126:                                    ; preds = %118, %32
  %127 = phi %struct.bhdr_struct* [ %125, %118 ], [ %19, %32 ], !dbg !1019
  %128 = phi i64 [ %123, %118 ], [ %17, %32 ], !dbg !1019
  %129 = sub i64 %128, %25, !dbg !1020
  %130 = icmp ugt i64 %129, 31, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  br i1 %130, label %131, label %394, !dbg !1023

; <label>:131:                                    ; preds = %126
  %132 = add i64 %129, -16, !dbg !1024
  %133 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !1026
  %134 = or i64 %132, 1, !dbg !1027
  %135 = getelementptr inbounds i8, i8* %133, i64 8, !dbg !1028
  %136 = bitcast i8* %135 to i64*, !dbg !1028
  store i64 %134, i64* %136, align 8, !dbg !1029, !tbaa !101
  %137 = bitcast %struct.bhdr_struct* %127 to i8**, !dbg !1030
  store i8* %133, i8** %137, align 8, !dbg !1030, !tbaa !136
  %138 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %127, i64 0, i32 1, !dbg !1031
  %139 = load i64, i64* %138, align 8, !dbg !1032, !tbaa !101
  %140 = or i64 %139, 2, !dbg !1032
  store i64 %140, i64* %138, align 8, !dbg !1032, !tbaa !101
  %141 = icmp ult i64 %132, 128, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %141, label %142, label %145, !dbg !1036

; <label>:142:                                    ; preds = %131
  %143 = lshr i64 %132, 2, !dbg !1037
  %144 = trunc i64 %143 to i32, !dbg !1038
  br label %164, !dbg !1039

; <label>:145:                                    ; preds = %131
  %146 = trunc i64 %132 to i32, !dbg !1040
  %147 = icmp ult i32 %146, 65536, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %148 = icmp ult i32 %146, 256, !dbg !1046
  %149 = select i1 %148, i32 0, i32 8, !dbg !1047
  %150 = icmp ult i32 %146, 16777216, !dbg !1048
  %151 = select i1 %150, i32 16, i32 24, !dbg !1049
  %152 = select i1 %147, i32 %149, i32 %151, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %153 = lshr i32 %146, %152, !dbg !1051
  %154 = zext i32 %153 to i64, !dbg !1052
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %154, !dbg !1052
  %156 = load i32, i32* %155, align 4, !dbg !1052, !tbaa !231
  %157 = add i32 %156, %152, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  %158 = add nsw i32 %157, -5, !dbg !1055
  %159 = zext i32 %158 to i64, !dbg !1056
  %160 = lshr i64 %132, %159, !dbg !1056
  %161 = trunc i64 %160 to i32, !dbg !1057
  %162 = add i32 %161, -32, !dbg !1057
  %163 = add nsw i32 %157, -6, !dbg !1058
  br label %164

; <label>:164:                                    ; preds = %142, %145
  %165 = phi i32 [ 0, %142 ], [ %163, %145 ], !dbg !1059
  %166 = phi i32 [ %144, %142 ], [ %162, %145 ], !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %167 = getelementptr inbounds i8, i8* %133, i64 16, !dbg !1061
  %168 = bitcast i8* %167 to %struct.bhdr_struct**, !dbg !1061
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %168, align 8, !dbg !1061, !tbaa !132
  %169 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1061
  %170 = bitcast i8* %169 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1061
  %171 = sext i32 %165 to i64, !dbg !1061
  %172 = sext i32 %166 to i64, !dbg !1061
  %173 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %170, i64 0, i64 %171, i64 %172, !dbg !1061
  %174 = bitcast %struct.bhdr_struct** %173 to i64*, !dbg !1061
  %175 = load i64, i64* %174, align 8, !dbg !1061, !tbaa !248
  %176 = getelementptr inbounds i8, i8* %167, i64 8, !dbg !1061
  %177 = bitcast i8* %176 to i64*, !dbg !1061
  store i64 %175, i64* %177, align 8, !dbg !1061, !tbaa !132
  %178 = load %struct.bhdr_struct*, %struct.bhdr_struct** %173, align 8, !dbg !1063, !tbaa !248
  %179 = icmp eq %struct.bhdr_struct* %178, null, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %179, label %183, label %180, !dbg !1061

; <label>:180:                                    ; preds = %164
  %181 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %178, i64 0, i32 2, i32 0, i32 0, !dbg !1063
  %182 = bitcast %struct.bhdr_struct** %181 to i8**, !dbg !1063
  store i8* %133, i8** %182, align 8, !dbg !1063, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  br label %183, !dbg !1063

; <label>:183:                                    ; preds = %164, %180
  %184 = bitcast %struct.bhdr_struct** %173 to i8**, !dbg !1061
  store i8* %133, i8** %184, align 8, !dbg !1061, !tbaa !248
  %185 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1061
  %186 = bitcast i8* %185 to [24 x i32]*, !dbg !1061
  %187 = getelementptr inbounds [24 x i32], [24 x i32]* %186, i64 0, i64 %171, !dbg !1061
  %188 = and i32 %166, 31, !dbg !1069
  %189 = shl i32 1, %188, !dbg !1070
  %190 = ashr i32 %166, 5, !dbg !1071
  %191 = sext i32 %190 to i64, !dbg !1072
  %192 = getelementptr inbounds i32, i32* %187, i64 %191, !dbg !1072
  %193 = load i32, i32* %192, align 4, !dbg !1073, !tbaa !231
  %194 = or i32 %193, %189, !dbg !1073
  store i32 %194, i32* %192, align 4, !dbg !1073, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  %195 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1061
  %196 = bitcast i8* %195 to i32*, !dbg !1061
  %197 = and i32 %165, 31, !dbg !1078
  %198 = shl i32 1, %197, !dbg !1079
  %199 = ashr i32 %165, 5, !dbg !1080
  %200 = sext i32 %199 to i64, !dbg !1081
  %201 = getelementptr inbounds i32, i32* %196, i64 %200, !dbg !1081
  %202 = load i32, i32* %201, align 4, !dbg !1082, !tbaa !231
  %203 = or i32 %202, %198, !dbg !1082
  store i32 %203, i32* %201, align 4, !dbg !1082, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  %204 = load i64, i64* %15, align 8, !dbg !1084, !tbaa !101
  %205 = and i64 %204, 2, !dbg !1085
  %206 = or i64 %205, %25, !dbg !1086
  store i64 %206, i64* %15, align 8, !dbg !1087, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br label %394, !dbg !1088

; <label>:207:                                    ; preds = %24
  br i1 %31, label %208, label %384, !dbg !1089

; <label>:208:                                    ; preds = %207
  %209 = and i64 %29, 4294967288, !dbg !1090
  %210 = add nuw nsw i64 %209, %17, !dbg !1093
  %211 = icmp ugt i64 %25, %210, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %211, label %384, label %212, !dbg !1095

; <label>:212:                                    ; preds = %208
  %213 = icmp ult i64 %209, 128, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %213, label %214, label %217, !dbg !1100

; <label>:214:                                    ; preds = %212
  %215 = lshr exact i64 %209, 2, !dbg !1101
  %216 = trunc i64 %215 to i32, !dbg !1102
  br label %236, !dbg !1103

; <label>:217:                                    ; preds = %212
  %218 = trunc i64 %209 to i32, !dbg !1104
  %219 = icmp ult i32 %218, 65536, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %220 = icmp ult i32 %218, 256, !dbg !1110
  %221 = select i1 %220, i32 0, i32 8, !dbg !1111
  %222 = icmp ult i32 %218, 16777216, !dbg !1112
  %223 = select i1 %222, i32 16, i32 24, !dbg !1113
  %224 = select i1 %219, i32 %221, i32 %223, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %225 = lshr i32 %218, %224, !dbg !1115
  %226 = zext i32 %225 to i64, !dbg !1116
  %227 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %226, !dbg !1116
  %228 = load i32, i32* %227, align 4, !dbg !1116, !tbaa !231
  %229 = add i32 %228, %224, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  %230 = add nsw i32 %229, -5, !dbg !1119
  %231 = zext i32 %230 to i64, !dbg !1120
  %232 = lshr i64 %209, %231, !dbg !1120
  %233 = trunc i64 %232 to i32, !dbg !1121
  %234 = add i32 %233, -32, !dbg !1121
  %235 = add nsw i32 %229, -6, !dbg !1122
  br label %236

; <label>:236:                                    ; preds = %214, %217
  %237 = phi i32 [ 0, %214 ], [ %235, %217 ], !dbg !1123
  %238 = phi i32 [ %216, %214 ], [ %234, %217 ], !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  %239 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !1125
  %240 = getelementptr inbounds i8, i8* %239, i64 8, !dbg !1125
  %241 = bitcast i8* %240 to %struct.bhdr_struct**, !dbg !1125
  %242 = load %struct.bhdr_struct*, %struct.bhdr_struct** %241, align 8, !dbg !1125, !tbaa !132
  %243 = icmp eq %struct.bhdr_struct* %242, null, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %243, label %249, label %244, !dbg !1128

; <label>:244:                                    ; preds = %236
  %245 = bitcast i8* %239 to i64*, !dbg !1125
  %246 = load i64, i64* %245, align 8, !dbg !1125, !tbaa !132
  %247 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %242, i64 0, i32 2, !dbg !1125
  %248 = bitcast %union.anon* %247 to i64*, !dbg !1125
  store i64 %246, i64* %248, align 8, !dbg !1125, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br label %249, !dbg !1125

; <label>:249:                                    ; preds = %236, %244
  %250 = bitcast i8* %239 to %struct.bhdr_struct**, !dbg !1129
  %251 = load %struct.bhdr_struct*, %struct.bhdr_struct** %250, align 8, !dbg !1129, !tbaa !132
  %252 = icmp eq %struct.bhdr_struct* %251, null, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %252, label %258, label %253, !dbg !1128

; <label>:253:                                    ; preds = %249
  %254 = bitcast i8* %240 to i64*, !dbg !1129
  %255 = load i64, i64* %254, align 8, !dbg !1129, !tbaa !132
  %256 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %251, i64 0, i32 2, i32 0, i32 1, !dbg !1129
  %257 = bitcast %struct.bhdr_struct** %256 to i64*, !dbg !1129
  store i64 %255, i64* %257, align 8, !dbg !1129, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br label %258, !dbg !1129

; <label>:258:                                    ; preds = %249, %253
  %259 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1131
  %260 = bitcast i8* %259 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1131
  %261 = sext i32 %237 to i64, !dbg !1131
  %262 = sext i32 %238 to i64, !dbg !1131
  %263 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %260, i64 0, i64 %261, i64 %262, !dbg !1131
  %264 = load %struct.bhdr_struct*, %struct.bhdr_struct** %263, align 8, !dbg !1131, !tbaa !248
  %265 = icmp eq %struct.bhdr_struct* %264, %19, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %265, label %266, label %296, !dbg !1128

; <label>:266:                                    ; preds = %258
  %267 = bitcast i8* %240 to i64*, !dbg !1133
  %268 = load i64, i64* %267, align 8, !dbg !1133, !tbaa !132
  %269 = bitcast %struct.bhdr_struct** %263 to i64*, !dbg !1133
  store i64 %268, i64* %269, align 8, !dbg !1133, !tbaa !248
  %270 = icmp eq i64 %268, 0, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  br i1 %270, label %271, label %296, !dbg !1133

; <label>:271:                                    ; preds = %266
  %272 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1137
  %273 = bitcast i8* %272 to [24 x i32]*, !dbg !1137
  %274 = getelementptr inbounds [24 x i32], [24 x i32]* %273, i64 0, i64 %261, !dbg !1137
  %275 = and i32 %238, 31, !dbg !1142
  %276 = shl i32 1, %275, !dbg !1143
  %277 = xor i32 %276, -1, !dbg !1144
  %278 = ashr i32 %238, 5, !dbg !1145
  %279 = sext i32 %278 to i64, !dbg !1146
  %280 = getelementptr inbounds i32, i32* %274, i64 %279, !dbg !1146
  %281 = load i32, i32* %280, align 4, !dbg !1147, !tbaa !231
  %282 = and i32 %281, %277, !dbg !1147
  store i32 %282, i32* %280, align 4, !dbg !1147, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %283 = load i32, i32* %274, align 4, !dbg !1149, !tbaa !231
  %284 = icmp eq i32 %283, 0, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %284, label %285, label %296, !dbg !1137

; <label>:285:                                    ; preds = %271
  %286 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1149
  %287 = bitcast i8* %286 to i32*, !dbg !1149
  %288 = and i32 %237, 31, !dbg !1154
  %289 = shl i32 1, %288, !dbg !1155
  %290 = xor i32 %289, -1, !dbg !1156
  %291 = ashr i32 %237, 5, !dbg !1157
  %292 = sext i32 %291 to i64, !dbg !1158
  %293 = getelementptr inbounds i32, i32* %287, i64 %292, !dbg !1158
  %294 = load i32, i32* %293, align 4, !dbg !1159, !tbaa !231
  %295 = and i32 %294, %290, !dbg !1159
  store i32 %295, i32* %293, align 4, !dbg !1159, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br label %296, !dbg !1149

; <label>:296:                                    ; preds = %271, %266, %285, %258
  %297 = bitcast i8* %239 to <2 x %struct.bhdr_struct*>*, !dbg !1128
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %297, align 8, !dbg !1128, !tbaa !132
  %298 = load i64, i64* %28, align 8, !dbg !1161, !tbaa !101
  %299 = and i64 %298, 4294967288, !dbg !1162
  %300 = add nuw nsw i64 %299, 16, !dbg !1163
  %301 = load i64, i64* %15, align 8, !dbg !1164, !tbaa !101
  %302 = add i64 %300, %301, !dbg !1164
  store i64 %302, i64* %15, align 8, !dbg !1164, !tbaa !101
  %303 = and i64 %302, 4294967288, !dbg !1165
  %304 = getelementptr inbounds i8, i8* %0, i64 %303, !dbg !1165
  %305 = bitcast i8* %304 to i8**, !dbg !1166
  store i8* %13, i8** %305, align 8, !dbg !1166, !tbaa !136
  %306 = getelementptr inbounds i8, i8* %304, i64 8, !dbg !1167
  %307 = bitcast i8* %306 to i64*, !dbg !1167
  %308 = load i64, i64* %307, align 8, !dbg !1168, !tbaa !101
  %309 = and i64 %308, -3, !dbg !1168
  store i64 %309, i64* %307, align 8, !dbg !1168, !tbaa !101
  %310 = sub i64 %303, %25, !dbg !1169
  %311 = icmp ugt i64 %310, 31, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %311, label %312, label %394, !dbg !1172

; <label>:312:                                    ; preds = %296
  %313 = add i64 %310, -16, !dbg !1173
  %314 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !1175
  %315 = or i64 %313, 1, !dbg !1176
  %316 = getelementptr inbounds i8, i8* %314, i64 8, !dbg !1177
  %317 = bitcast i8* %316 to i64*, !dbg !1177
  store i64 %315, i64* %317, align 8, !dbg !1178, !tbaa !101
  store i8* %314, i8** %305, align 8, !dbg !1179, !tbaa !136
  %318 = load i64, i64* %307, align 8, !dbg !1180, !tbaa !101
  %319 = or i64 %318, 2, !dbg !1180
  store i64 %319, i64* %307, align 8, !dbg !1180, !tbaa !101
  %320 = icmp ult i64 %313, 128, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %320, label %321, label %324, !dbg !1184

; <label>:321:                                    ; preds = %312
  %322 = lshr exact i64 %313, 2, !dbg !1185
  %323 = trunc i64 %322 to i32, !dbg !1186
  br label %343, !dbg !1187

; <label>:324:                                    ; preds = %312
  %325 = trunc i64 %313 to i32, !dbg !1188
  %326 = icmp ult i32 %325, 65536, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  %327 = icmp ult i32 %325, 256, !dbg !1194
  %328 = select i1 %327, i32 0, i32 8, !dbg !1195
  %329 = icmp ult i32 %325, 16777216, !dbg !1196
  %330 = select i1 %329, i32 16, i32 24, !dbg !1197
  %331 = select i1 %326, i32 %328, i32 %330, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  %332 = lshr i32 %325, %331, !dbg !1199
  %333 = zext i32 %332 to i64, !dbg !1200
  %334 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %333, !dbg !1200
  %335 = load i32, i32* %334, align 4, !dbg !1200, !tbaa !231
  %336 = add i32 %335, %331, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  %337 = add nsw i32 %336, -5, !dbg !1203
  %338 = zext i32 %337 to i64, !dbg !1204
  %339 = lshr i64 %313, %338, !dbg !1204
  %340 = trunc i64 %339 to i32, !dbg !1205
  %341 = add i32 %340, -32, !dbg !1205
  %342 = add nsw i32 %336, -6, !dbg !1206
  br label %343

; <label>:343:                                    ; preds = %321, %324
  %344 = phi i32 [ 0, %321 ], [ %342, %324 ], !dbg !1207
  %345 = phi i32 [ %323, %321 ], [ %341, %324 ], !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %346 = getelementptr inbounds i8, i8* %314, i64 16, !dbg !1209
  %347 = bitcast i8* %346 to %struct.bhdr_struct**, !dbg !1209
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %347, align 8, !dbg !1209, !tbaa !132
  %348 = sext i32 %344 to i64, !dbg !1209
  %349 = sext i32 %345 to i64, !dbg !1209
  %350 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %260, i64 0, i64 %348, i64 %349, !dbg !1209
  %351 = bitcast %struct.bhdr_struct** %350 to i64*, !dbg !1209
  %352 = load i64, i64* %351, align 8, !dbg !1209, !tbaa !248
  %353 = getelementptr inbounds i8, i8* %346, i64 8, !dbg !1209
  %354 = bitcast i8* %353 to i64*, !dbg !1209
  store i64 %352, i64* %354, align 8, !dbg !1209, !tbaa !132
  %355 = load %struct.bhdr_struct*, %struct.bhdr_struct** %350, align 8, !dbg !1211, !tbaa !248
  %356 = icmp eq %struct.bhdr_struct* %355, null, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %356, label %360, label %357, !dbg !1209

; <label>:357:                                    ; preds = %343
  %358 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %355, i64 0, i32 2, i32 0, i32 0, !dbg !1211
  %359 = bitcast %struct.bhdr_struct** %358 to i8**, !dbg !1211
  store i8* %314, i8** %359, align 8, !dbg !1211, !tbaa !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br label %360, !dbg !1211

; <label>:360:                                    ; preds = %343, %357
  %361 = bitcast %struct.bhdr_struct** %350 to i8**, !dbg !1209
  store i8* %314, i8** %361, align 8, !dbg !1209, !tbaa !248
  %362 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1209
  %363 = bitcast i8* %362 to [24 x i32]*, !dbg !1209
  %364 = getelementptr inbounds [24 x i32], [24 x i32]* %363, i64 0, i64 %348, !dbg !1209
  %365 = and i32 %345, 31, !dbg !1216
  %366 = shl i32 1, %365, !dbg !1217
  %367 = ashr i32 %345, 5, !dbg !1218
  %368 = sext i32 %367 to i64, !dbg !1219
  %369 = getelementptr inbounds i32, i32* %364, i64 %368, !dbg !1219
  %370 = load i32, i32* %369, align 4, !dbg !1220, !tbaa !231
  %371 = or i32 %370, %366, !dbg !1220
  store i32 %371, i32* %369, align 4, !dbg !1220, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  %372 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1209
  %373 = bitcast i8* %372 to i32*, !dbg !1209
  %374 = and i32 %344, 31, !dbg !1225
  %375 = shl i32 1, %374, !dbg !1226
  %376 = ashr i32 %344, 5, !dbg !1227
  %377 = sext i32 %376 to i64, !dbg !1228
  %378 = getelementptr inbounds i32, i32* %373, i64 %377, !dbg !1228
  %379 = load i32, i32* %378, align 4, !dbg !1229, !tbaa !231
  %380 = or i32 %379, %375, !dbg !1229
  store i32 %380, i32* %378, align 4, !dbg !1229, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %381 = load i64, i64* %15, align 8, !dbg !1231, !tbaa !101
  %382 = and i64 %381, 2, !dbg !1232
  %383 = or i64 %382, %25, !dbg !1233
  store i64 %383, i64* %15, align 8, !dbg !1234, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br label %394, !dbg !1235

; <label>:384:                                    ; preds = %208, %207
  %385 = tail call i8* @malloc_ex(i64 %25, i8* %2) #4, !dbg !1236
  %386 = icmp eq i8* %385, null, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %386, label %394, label %387, !dbg !1240

; <label>:387:                                    ; preds = %384
  %388 = load i64, i64* %15, align 8, !dbg !1241, !tbaa !101
  %389 = and i64 %388, 4294967288, !dbg !1242
  %390 = icmp ugt i64 %389, %25, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  %391 = select i1 %390, i64 %25, i64 %389, !dbg !1244
  %392 = and i64 %391, 4294967295, !dbg !1245
  %393 = tail call i8* @memcpy(i8* nonnull %385, i8* nonnull %0, i64 %392) #3, !dbg !1247
  tail call void @free_ex(i8* nonnull %0, i8* %2) #4, !dbg !1248
  br label %394, !dbg !1249

; <label>:394:                                    ; preds = %384, %360, %296, %183, %126, %387, %11, %9, %7
  %395 = phi i8* [ %385, %387 ], [ null, %11 ], [ %8, %7 ], [ null, %9 ], [ %0, %126 ], [ %0, %183 ], [ %0, %296 ], [ %0, %360 ], [ null, %384 ], !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  ret i8* %395, !dbg !1251
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_calloc(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1252 {
  %4 = icmp eq i64 %0, 0, !dbg !1273
  %5 = icmp eq i64 %1, 0, !dbg !1275
  %6 = or i1 %4, %5, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %6, label %13, label %7, !dbg !1276

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1277
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #3, !dbg !1279
  %10 = icmp eq i8* %9, null, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br i1 %10, label %13, label %11, !dbg !1282

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #3, !dbg !1283
  br label %13, !dbg !1284

; <label>:13:                                     ; preds = %7, %3, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  ret i8* %14, !dbg !1289
}

; Function Attrs: noredzone nounwind
define dso_local i8* @calloc_ex(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1264 {
  %4 = icmp eq i64 %0, 0, !dbg !1293
  %5 = icmp eq i64 %1, 0, !dbg !1294
  %6 = or i1 %4, %5, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br i1 %6, label %13, label %7, !dbg !1295

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1296
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #4, !dbg !1297
  %10 = icmp eq i8* %9, null, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  br i1 %10, label %13, label %11, !dbg !1300

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #3, !dbg !1301
  br label %13, !dbg !1302

; <label>:13:                                     ; preds = %7, %3, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  ret i8* %14, !dbg !1305
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
!157 = !DILocation(line: 0, scope: !158)
!158 = distinct !DILexicalBlock(scope: !81, file: !3, line: 462, column: 92)
!159 = !DILocation(line: 497, column: 1, scope: !69)
!160 = distinct !DISubprogram(name: "free_ex", scope: !3, file: !3, line: 754, type: !161, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !58, !58}
!163 = !{!164, !165, !166, !167, !168, !169, !170}
!164 = !DILocalVariable(name: "ptr", arg: 1, scope: !160, file: !3, line: 754, type: !58)
!165 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !160, file: !3, line: 754, type: !58)
!166 = !DILocalVariable(name: "tlsf", scope: !160, file: !3, line: 757, type: !7)
!167 = !DILocalVariable(name: "b", scope: !160, file: !3, line: 758, type: !20)
!168 = !DILocalVariable(name: "tmp_b", scope: !160, file: !3, line: 758, type: !20)
!169 = !DILocalVariable(name: "fl", scope: !160, file: !3, line: 759, type: !62)
!170 = !DILocalVariable(name: "sl", scope: !160, file: !3, line: 759, type: !62)
!171 = !DILocation(line: 754, column: 20, scope: !160)
!172 = !DILocation(line: 754, column: 31, scope: !160)
!173 = !DILocation(line: 757, column: 13, scope: !160)
!174 = !DILocation(line: 759, column: 9, scope: !160)
!175 = !DILocation(line: 759, column: 17, scope: !160)
!176 = !DILocation(line: 761, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !160, file: !3, line: 761, column: 9)
!178 = !DILocation(line: 761, column: 9, scope: !160)
!179 = !DILocation(line: 764, column: 34, scope: !160)
!180 = !DILocation(line: 764, column: 9, scope: !160)
!181 = !DILocation(line: 758, column: 13, scope: !160)
!182 = !DILocation(line: 765, column: 8, scope: !160)
!183 = !DILocation(line: 765, column: 13, scope: !160)
!184 = !DILocation(line: 769, column: 26, scope: !160)
!185 = !DILocation(line: 771, column: 13, scope: !160)
!186 = !DILocation(line: 758, column: 17, scope: !160)
!187 = !DILocation(line: 772, column: 16, scope: !188)
!188 = distinct !DILexicalBlock(scope: !160, file: !3, line: 772, column: 9)
!189 = !DILocation(line: 772, column: 21, scope: !188)
!190 = !DILocation(line: 772, column: 9, scope: !160)
!191 = !DILocation(line: 773, column: 36, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !3, line: 772, column: 35)
!193 = !DILocalVariable(name: "_r", arg: 1, scope: !194, file: !3, line: 331, type: !27)
!194 = distinct !DISubprogram(name: "MAPPING_INSERT", scope: !3, file: !3, line: 331, type: !195, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !198)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !27, !197, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!198 = !{!193, !199, !200}
!199 = !DILocalVariable(name: "_fl", arg: 2, scope: !194, file: !3, line: 331, type: !197)
!200 = !DILocalVariable(name: "_sl", arg: 3, scope: !194, file: !3, line: 331, type: !197)
!201 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !202)
!202 = distinct !DILocation(line: 773, column: 9, scope: !192)
!203 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !202)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 333, column: 9)
!205 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !202)
!206 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !202)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 333, column: 27)
!208 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !202)
!209 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !202)
!210 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !202)
!211 = distinct !DILexicalBlock(scope: !204, file: !3, line: 336, column: 12)
!212 = !DILocalVariable(name: "i", arg: 1, scope: !213, file: !3, line: 292, type: !62)
!213 = distinct !DISubprogram(name: "ms_bit", scope: !3, file: !3, line: 292, type: !214, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!62, !62}
!216 = !{!212, !217, !218}
!217 = !DILocalVariable(name: "a", scope: !213, file: !3, line: 294, type: !13)
!218 = !DILocalVariable(name: "x", scope: !213, file: !3, line: 295, type: !13)
!219 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !220)
!220 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !202)
!221 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !220)
!222 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !220)
!223 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !220)
!224 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !220)
!225 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !220)
!226 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !220)
!227 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !220)
!228 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !220)
!229 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !220)
!230 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !220)
!231 = !{!92, !92, i64 0}
!232 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !220)
!233 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !220)
!234 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !202)
!235 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !202)
!236 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !202)
!237 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !202)
!238 = !DILocation(line: 0, scope: !192)
!239 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !202)
!240 = !DILocation(line: 774, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 774, column: 9)
!242 = distinct !DILexicalBlock(scope: !192, file: !3, line: 774, column: 9)
!243 = !DILocation(line: 774, column: 9, scope: !242)
!244 = !DILocation(line: 774, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 774, column: 9)
!246 = !DILocation(line: 774, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !3, line: 774, column: 9)
!248 = !{!95, !95, i64 0}
!249 = !DILocation(line: 774, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 774, column: 9)
!251 = !DILocation(line: 774, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !3, line: 774, column: 9)
!253 = !DILocation(line: 774, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !3, line: 774, column: 9)
!255 = !DILocalVariable(name: "nr", arg: 1, scope: !256, file: !3, line: 306, type: !62)
!256 = distinct !DISubprogram(name: "clear_bit", scope: !3, file: !3, line: 306, type: !257, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !260)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !62, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!260 = !{!255, !261}
!261 = !DILocalVariable(name: "addr", arg: 2, scope: !256, file: !3, line: 306, type: !259)
!262 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !263)
!263 = distinct !DILocation(line: 774, column: 9, scope: !254)
!264 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !263)
!265 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !263)
!266 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !263)
!267 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !263)
!268 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !263)
!269 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !263)
!270 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !263)
!271 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !263)
!272 = !DILocation(line: 774, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !254, file: !3, line: 774, column: 9)
!274 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !275)
!275 = distinct !DILocation(line: 774, column: 9, scope: !273)
!276 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !275)
!277 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !275)
!278 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !275)
!279 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !275)
!280 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !275)
!281 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !275)
!282 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !275)
!283 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !275)
!284 = !DILocation(line: 775, column: 28, scope: !192)
!285 = !DILocation(line: 775, column: 33, scope: !192)
!286 = !DILocation(line: 775, column: 47, scope: !192)
!287 = !DILocation(line: 775, column: 17, scope: !192)
!288 = !DILocation(line: 776, column: 5, scope: !192)
!289 = !DILocation(line: 777, column: 12, scope: !290)
!290 = distinct !DILexicalBlock(scope: !160, file: !3, line: 777, column: 9)
!291 = !DILocation(line: 777, column: 17, scope: !290)
!292 = !DILocation(line: 777, column: 9, scope: !160)
!293 = !DILocation(line: 778, column: 20, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 777, column: 30)
!295 = !DILocation(line: 779, column: 31, scope: !294)
!296 = !DILocation(line: 779, column: 36, scope: !294)
!297 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !298)
!298 = distinct !DILocation(line: 779, column: 9, scope: !294)
!299 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !298)
!300 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !298)
!301 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !298)
!302 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !298)
!303 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !298)
!304 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !298)
!305 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !306)
!306 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !298)
!307 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !306)
!308 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !306)
!309 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !306)
!310 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !306)
!311 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !306)
!312 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !306)
!313 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !306)
!314 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !306)
!315 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !306)
!316 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !306)
!317 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !306)
!318 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !306)
!319 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !298)
!320 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !298)
!321 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !298)
!322 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !298)
!323 = !DILocation(line: 0, scope: !294)
!324 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !298)
!325 = !DILocation(line: 780, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 780, column: 9)
!327 = distinct !DILexicalBlock(scope: !294, file: !3, line: 780, column: 9)
!328 = !DILocation(line: 780, column: 9, scope: !327)
!329 = !DILocation(line: 780, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 780, column: 9)
!331 = !DILocation(line: 780, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !3, line: 780, column: 9)
!333 = !DILocation(line: 780, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !3, line: 780, column: 9)
!335 = !DILocation(line: 780, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !3, line: 780, column: 9)
!337 = !DILocation(line: 780, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !3, line: 780, column: 9)
!339 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !340)
!340 = distinct !DILocation(line: 780, column: 9, scope: !338)
!341 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !340)
!342 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !340)
!343 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !340)
!344 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !340)
!345 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !340)
!346 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !340)
!347 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !340)
!348 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !340)
!349 = !DILocation(line: 780, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !3, line: 780, column: 9)
!351 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !352)
!352 = distinct !DILocation(line: 780, column: 9, scope: !350)
!353 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !352)
!354 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !352)
!355 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !352)
!356 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !352)
!357 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !352)
!358 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !352)
!359 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !352)
!360 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !352)
!361 = !DILocation(line: 781, column: 28, scope: !294)
!362 = !DILocation(line: 781, column: 33, scope: !294)
!363 = !DILocation(line: 781, column: 47, scope: !294)
!364 = !DILocation(line: 781, column: 21, scope: !294)
!365 = !DILocation(line: 783, column: 5, scope: !294)
!366 = !DILocation(line: 784, column: 23, scope: !160)
!367 = !DILocation(line: 0, scope: !160)
!368 = !DILocation(line: 784, column: 28, scope: !160)
!369 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !370)
!370 = distinct !DILocation(line: 784, column: 5, scope: !160)
!371 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !370)
!372 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !370)
!373 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !370)
!374 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !370)
!375 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !370)
!376 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !370)
!377 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !378)
!378 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !370)
!379 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !378)
!380 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !378)
!381 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !378)
!382 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !378)
!383 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !378)
!384 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !378)
!385 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !378)
!386 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !378)
!387 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !378)
!388 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !378)
!389 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !378)
!390 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !378)
!391 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !370)
!392 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !370)
!393 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !370)
!394 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !370)
!395 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !370)
!396 = !DILocation(line: 785, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !160, file: !3, line: 785, column: 5)
!398 = !DILocation(line: 785, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !3, line: 785, column: 5)
!400 = !DILocation(line: 787, column: 13, scope: !160)
!401 = !DILocalVariable(name: "nr", arg: 1, scope: !402, file: !3, line: 301, type: !62)
!402 = distinct !DISubprogram(name: "set_bit", scope: !3, file: !3, line: 301, type: !257, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !403)
!403 = !{!401, !404}
!404 = !DILocalVariable(name: "addr", arg: 2, scope: !402, file: !3, line: 301, type: !259)
!405 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !406)
!406 = distinct !DILocation(line: 785, column: 5, scope: !397)
!407 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !406)
!408 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !406)
!409 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !406)
!410 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !406)
!411 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !406)
!412 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !406)
!413 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !406)
!414 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !415)
!415 = distinct !DILocation(line: 785, column: 5, scope: !397)
!416 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !415)
!417 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !415)
!418 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !415)
!419 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !415)
!420 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !415)
!421 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !415)
!422 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !415)
!423 = !DILocation(line: 788, column: 12, scope: !160)
!424 = !DILocation(line: 788, column: 17, scope: !160)
!425 = !DILocation(line: 789, column: 12, scope: !160)
!426 = !DILocation(line: 789, column: 21, scope: !160)
!427 = !DILocation(line: 790, column: 1, scope: !160)
!428 = !DILocation(line: 0, scope: !429)
!429 = distinct !DILexicalBlock(scope: !177, file: !3, line: 761, column: 15)
!430 = distinct !DISubprogram(name: "add_new_area", scope: !3, file: !3, line: 500, type: !431, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!27, !58, !27, !58}
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!434 = !DILocalVariable(name: "area", arg: 1, scope: !430, file: !3, line: 500, type: !58)
!435 = !DILocalVariable(name: "area_size", arg: 2, scope: !430, file: !3, line: 500, type: !27)
!436 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !430, file: !3, line: 500, type: !58)
!437 = !DILocalVariable(name: "tlsf", scope: !430, file: !3, line: 503, type: !7)
!438 = !DILocalVariable(name: "ptr", scope: !430, file: !3, line: 504, type: !15)
!439 = !DILocalVariable(name: "ptr_prev", scope: !430, file: !3, line: 504, type: !15)
!440 = !DILocalVariable(name: "ai", scope: !430, file: !3, line: 504, type: !15)
!441 = !DILocalVariable(name: "ib0", scope: !430, file: !3, line: 505, type: !20)
!442 = !DILocalVariable(name: "b0", scope: !430, file: !3, line: 505, type: !20)
!443 = !DILocalVariable(name: "lb0", scope: !430, file: !3, line: 505, type: !20)
!444 = !DILocalVariable(name: "ib1", scope: !430, file: !3, line: 505, type: !20)
!445 = !DILocalVariable(name: "b1", scope: !430, file: !3, line: 505, type: !20)
!446 = !DILocalVariable(name: "lb1", scope: !430, file: !3, line: 505, type: !20)
!447 = !DILocalVariable(name: "next_b", scope: !430, file: !3, line: 505, type: !20)
!448 = !DILocation(line: 500, column: 27, scope: !430)
!449 = !DILocation(line: 500, column: 40, scope: !430)
!450 = !DILocation(line: 500, column: 57, scope: !430)
!451 = !DILocation(line: 503, column: 13, scope: !430)
!452 = !DILocation(line: 507, column: 5, scope: !430)
!453 = !DILocation(line: 508, column: 17, scope: !430)
!454 = !DILocation(line: 504, column: 18, scope: !430)
!455 = !DILocation(line: 504, column: 24, scope: !430)
!456 = !DILocation(line: 430, column: 46, scope: !110, inlinedAt: !457)
!457 = distinct !DILocation(line: 511, column: 11, scope: !430)
!458 = !DILocation(line: 430, column: 59, scope: !110, inlinedAt: !457)
!459 = !DILocation(line: 435, column: 10, scope: !110, inlinedAt: !457)
!460 = !DILocation(line: 432, column: 22, scope: !110, inlinedAt: !457)
!461 = !DILocation(line: 436, column: 9, scope: !110, inlinedAt: !457)
!462 = !DILocation(line: 436, column: 14, scope: !110, inlinedAt: !457)
!463 = !DILocation(line: 439, column: 20, scope: !110, inlinedAt: !457)
!464 = !DILocation(line: 432, column: 13, scope: !110, inlinedAt: !457)
!465 = !DILocation(line: 440, column: 15, scope: !110, inlinedAt: !457)
!466 = !DILocation(line: 440, column: 8, scope: !110, inlinedAt: !457)
!467 = !DILocation(line: 440, column: 13, scope: !110, inlinedAt: !457)
!468 = !DILocation(line: 441, column: 31, scope: !110, inlinedAt: !457)
!469 = !DILocation(line: 441, column: 26, scope: !110, inlinedAt: !457)
!470 = !DILocation(line: 442, column: 10, scope: !110, inlinedAt: !457)
!471 = !DILocation(line: 432, column: 17, scope: !110, inlinedAt: !457)
!472 = !DILocation(line: 443, column: 18, scope: !110, inlinedAt: !457)
!473 = !DILocation(line: 444, column: 9, scope: !110, inlinedAt: !457)
!474 = !DILocation(line: 444, column: 14, scope: !110, inlinedAt: !457)
!475 = !DILocation(line: 433, column: 18, scope: !110, inlinedAt: !457)
!476 = !DILocation(line: 446, column: 9, scope: !110, inlinedAt: !457)
!477 = !DILocation(line: 446, column: 14, scope: !110, inlinedAt: !457)
!478 = !DILocation(line: 447, column: 13, scope: !110, inlinedAt: !457)
!479 = !DILocation(line: 448, column: 5, scope: !110, inlinedAt: !457)
!480 = !DILocation(line: 505, column: 13, scope: !430)
!481 = !DILocation(line: 512, column: 10, scope: !430)
!482 = !DILocation(line: 505, column: 19, scope: !430)
!483 = !DILocation(line: 513, column: 11, scope: !430)
!484 = !DILocation(line: 505, column: 24, scope: !430)
!485 = !DILocation(line: 518, column: 5, scope: !430)
!486 = !DILocation(line: 519, column: 40, scope: !487)
!487 = distinct !DILexicalBlock(scope: !430, file: !3, line: 518, column: 17)
!488 = !DILocation(line: 521, column: 20, scope: !487)
!489 = !DILocation(line: 505, column: 41, scope: !430)
!490 = !DILocation(line: 524, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 524, column: 13)
!492 = !DILocation(line: 524, column: 33, scope: !491)
!493 = !DILocation(line: 524, column: 13, scope: !487)
!494 = !DILocation(line: 520, column: 14, scope: !487)
!495 = !DILocation(line: 525, column: 23, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 525, column: 17)
!497 = distinct !DILexicalBlock(scope: !491, file: !3, line: 524, column: 73)
!498 = !DILocation(line: 525, column: 33, scope: !496)
!499 = !DILocation(line: 0, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 528, column: 20)
!501 = !DILocation(line: 525, column: 17, scope: !497)
!502 = !DILocation(line: 526, column: 33, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !3, line: 525, column: 41)
!504 = !DILocation(line: 528, column: 13, scope: !503)
!505 = !DILocation(line: 529, column: 27, scope: !500)
!506 = !DILocation(line: 529, column: 32, scope: !500)
!507 = !DILocation(line: 530, column: 28, scope: !500)
!508 = !DILocation(line: 534, column: 17, scope: !497)
!509 = !DILocation(line: 533, column: 22, scope: !497)
!510 = !DILocation(line: 537, column: 17, scope: !497)
!511 = !DILocation(line: 537, column: 26, scope: !497)
!512 = !DILocation(line: 540, column: 13, scope: !497)
!513 = distinct !{!513, !485, !514}
!514 = !DILocation(line: 566, column: 5, scope: !430)
!515 = !DILocation(line: 545, column: 34, scope: !516)
!516 = distinct !DILexicalBlock(scope: !487, file: !3, line: 545, column: 13)
!517 = !DILocation(line: 545, column: 45, scope: !516)
!518 = !DILocation(line: 545, column: 13, scope: !487)
!519 = !DILocation(line: 519, column: 15, scope: !487)
!520 = !DILocation(line: 545, column: 29, scope: !516)
!521 = !DILocation(line: 546, column: 23, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 546, column: 17)
!523 = distinct !DILexicalBlock(scope: !516, file: !3, line: 545, column: 69)
!524 = !DILocation(line: 546, column: 33, scope: !522)
!525 = !DILocation(line: 0, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 549, column: 20)
!527 = !DILocation(line: 546, column: 17, scope: !523)
!528 = !DILocation(line: 547, column: 33, scope: !529)
!529 = distinct !DILexicalBlock(scope: !522, file: !3, line: 546, column: 41)
!530 = !DILocation(line: 549, column: 13, scope: !529)
!531 = !DILocation(line: 550, column: 27, scope: !526)
!532 = !DILocation(line: 550, column: 32, scope: !526)
!533 = !DILocation(line: 551, column: 28, scope: !526)
!534 = !DILocation(line: 555, column: 17, scope: !523)
!535 = !DILocation(line: 556, column: 99, scope: !523)
!536 = !DILocation(line: 556, column: 104, scope: !523)
!537 = !DILocation(line: 556, column: 91, scope: !523)
!538 = !DILocation(line: 554, column: 23, scope: !523)
!539 = !DILocation(line: 557, column: 22, scope: !523)
!540 = !DILocation(line: 505, column: 47, scope: !430)
!541 = !DILocation(line: 558, column: 21, scope: !523)
!542 = !DILocation(line: 558, column: 30, scope: !523)
!543 = !DILocation(line: 562, column: 13, scope: !523)
!544 = !DILocation(line: 565, column: 20, scope: !487)
!545 = !DILocation(line: 569, column: 31, scope: !430)
!546 = !DILocation(line: 504, column: 35, scope: !430)
!547 = !DILocation(line: 570, column: 22, scope: !430)
!548 = !DILocation(line: 570, column: 9, scope: !430)
!549 = !DILocation(line: 570, column: 14, scope: !430)
!550 = !DILocation(line: 571, column: 9, scope: !430)
!551 = !DILocation(line: 571, column: 13, scope: !430)
!552 = !DILocation(line: 572, column: 21, scope: !430)
!553 = !DILocation(line: 573, column: 17, scope: !430)
!554 = !DILocation(line: 573, column: 13, scope: !430)
!555 = !DILocation(line: 573, column: 5, scope: !430)
!556 = !DILocation(line: 574, column: 17, scope: !430)
!557 = !DILocation(line: 574, column: 22, scope: !430)
!558 = !DILocation(line: 574, column: 5, scope: !430)
!559 = distinct !DISubprogram(name: "get_used_size", scope: !3, file: !3, line: 579, type: !560, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!27, !58}
!562 = !{!563}
!563 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !559, file: !3, line: 579, type: !58)
!564 = !DILocation(line: 579, column: 28, scope: !559)
!565 = !DILocation(line: 585, column: 5, scope: !559)
!566 = distinct !DISubprogram(name: "get_max_size", scope: !3, file: !3, line: 590, type: !560, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !567)
!567 = !{!568}
!568 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !566, file: !3, line: 590, type: !58)
!569 = !DILocation(line: 590, column: 27, scope: !566)
!570 = !DILocation(line: 596, column: 5, scope: !566)
!571 = distinct !DISubprogram(name: "destroy_memory_pool", scope: !3, file: !3, line: 601, type: !572, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !58}
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !571, file: !3, line: 601, type: !58)
!576 = !DILocalVariable(name: "tlsf", scope: !571, file: !3, line: 604, type: !7)
!577 = !DILocation(line: 601, column: 32, scope: !571)
!578 = !DILocation(line: 604, column: 13, scope: !571)
!579 = !DILocation(line: 606, column: 11, scope: !571)
!580 = !DILocation(line: 606, column: 26, scope: !571)
!581 = !DILocation(line: 610, column: 1, scope: !571)
!582 = distinct !DISubprogram(name: "tlsf_malloc", scope: !3, file: !3, line: 614, type: !583, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!58, !27, !58}
!585 = !{!586, !587, !588}
!586 = !DILocalVariable(name: "size", arg: 1, scope: !582, file: !3, line: 614, type: !27)
!587 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !582, file: !3, line: 614, type: !58)
!588 = !DILocalVariable(name: "ret", scope: !582, file: !3, line: 617, type: !58)
!589 = !DILocation(line: 614, column: 26, scope: !582)
!590 = !DILocation(line: 614, column: 38, scope: !582)
!591 = !DILocation(line: 635, column: 11, scope: !582)
!592 = !DILocation(line: 617, column: 11, scope: !582)
!593 = !DILocation(line: 639, column: 5, scope: !582)
!594 = distinct !DISubprogram(name: "malloc_ex", scope: !3, file: !3, line: 692, type: !583, isLocal: false, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604}
!596 = !DILocalVariable(name: "size", arg: 1, scope: !594, file: !3, line: 692, type: !27)
!597 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !594, file: !3, line: 692, type: !58)
!598 = !DILocalVariable(name: "tlsf", scope: !594, file: !3, line: 695, type: !7)
!599 = !DILocalVariable(name: "b", scope: !594, file: !3, line: 696, type: !20)
!600 = !DILocalVariable(name: "b2", scope: !594, file: !3, line: 696, type: !20)
!601 = !DILocalVariable(name: "next_b", scope: !594, file: !3, line: 696, type: !20)
!602 = !DILocalVariable(name: "fl", scope: !594, file: !3, line: 697, type: !62)
!603 = !DILocalVariable(name: "sl", scope: !594, file: !3, line: 697, type: !62)
!604 = !DILocalVariable(name: "tmp_size", scope: !594, file: !3, line: 698, type: !27)
!605 = !DILocation(line: 692, column: 24, scope: !594)
!606 = !DILocation(line: 692, column: 36, scope: !594)
!607 = !DILocation(line: 695, column: 20, scope: !594)
!608 = !DILocation(line: 695, column: 13, scope: !594)
!609 = !DILocation(line: 700, column: 18, scope: !594)
!610 = !DILocation(line: 700, column: 12, scope: !594)
!611 = !DILocation(line: 315, column: 9, scope: !612, inlinedAt: !621)
!612 = distinct !DISubprogram(name: "MAPPING_SEARCH", scope: !3, file: !3, line: 311, type: !613, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !616)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615, !197, !197}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(name: "_r", arg: 1, scope: !612, file: !3, line: 311, type: !615)
!618 = !DILocalVariable(name: "_fl", arg: 2, scope: !612, file: !3, line: 311, type: !197)
!619 = !DILocalVariable(name: "_sl", arg: 3, scope: !612, file: !3, line: 311, type: !197)
!620 = !DILocalVariable(name: "_t", scope: !612, file: !3, line: 313, type: !62)
!621 = distinct !DILocation(line: 703, column: 5, scope: !594)
!622 = !DILocation(line: 700, column: 55, scope: !594)
!623 = !DILocation(line: 315, column: 13, scope: !624, inlinedAt: !621)
!624 = distinct !DILexicalBlock(scope: !612, file: !3, line: 315, column: 9)
!625 = !DILocation(line: 317, column: 20, scope: !626, inlinedAt: !621)
!626 = distinct !DILexicalBlock(scope: !624, file: !3, line: 315, column: 28)
!627 = !DILocation(line: 317, column: 16, scope: !626, inlinedAt: !621)
!628 = !DILocation(line: 318, column: 5, scope: !626, inlinedAt: !621)
!629 = !DILocation(line: 319, column: 28, scope: !630, inlinedAt: !621)
!630 = distinct !DILexicalBlock(scope: !624, file: !3, line: 318, column: 12)
!631 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !632)
!632 = distinct !DILocation(line: 319, column: 21, scope: !630, inlinedAt: !621)
!633 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !632)
!634 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !632)
!635 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !632)
!636 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !632)
!637 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !632)
!638 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !632)
!639 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !632)
!640 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !632)
!641 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !632)
!642 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !632)
!643 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !632)
!644 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !632)
!645 = !DILocation(line: 319, column: 33, scope: !630, inlinedAt: !621)
!646 = !DILocation(line: 319, column: 50, scope: !630, inlinedAt: !621)
!647 = !DILocation(line: 313, column: 9, scope: !612, inlinedAt: !621)
!648 = !DILocation(line: 320, column: 21, scope: !630, inlinedAt: !621)
!649 = !DILocation(line: 320, column: 19, scope: !630, inlinedAt: !621)
!650 = !DILocation(line: 321, column: 23, scope: !630, inlinedAt: !621)
!651 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !652)
!652 = distinct !DILocation(line: 321, column: 16, scope: !630, inlinedAt: !621)
!653 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !652)
!654 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !652)
!655 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !652)
!656 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !652)
!657 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !652)
!658 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !652)
!659 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !652)
!660 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !652)
!661 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !652)
!662 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !652)
!663 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !652)
!664 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !652)
!665 = !DILocation(line: 322, column: 30, scope: !630, inlinedAt: !621)
!666 = !DILocation(line: 322, column: 21, scope: !630, inlinedAt: !621)
!667 = !DILocation(line: 322, column: 16, scope: !630, inlinedAt: !621)
!668 = !DILocation(line: 323, column: 14, scope: !630, inlinedAt: !621)
!669 = !DILocation(line: 327, column: 16, scope: !630, inlinedAt: !621)
!670 = !DILocation(line: 327, column: 13, scope: !630, inlinedAt: !621)
!671 = !DILocation(line: 0, scope: !594)
!672 = !DILocation(line: 329, column: 1, scope: !612, inlinedAt: !621)
!673 = !DILocalVariable(name: "_tlsf", arg: 1, scope: !674, file: !3, line: 344, type: !7)
!674 = distinct !DISubprogram(name: "FIND_SUITABLE_BLOCK", scope: !3, file: !3, line: 344, type: !675, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!20, !7, !197, !197}
!677 = !{!673, !678, !679, !680, !681}
!678 = !DILocalVariable(name: "_fl", arg: 2, scope: !674, file: !3, line: 344, type: !197)
!679 = !DILocalVariable(name: "_sl", arg: 3, scope: !674, file: !3, line: 344, type: !197)
!680 = !DILocalVariable(name: "_tmp", scope: !674, file: !3, line: 346, type: !12)
!681 = !DILocalVariable(name: "_b", scope: !674, file: !3, line: 347, type: !20)
!682 = !DILocation(line: 344, column: 56, scope: !674, inlinedAt: !683)
!683 = distinct !DILocation(line: 707, column: 9, scope: !594)
!684 = !DILocation(line: 346, column: 18, scope: !674, inlinedAt: !683)
!685 = !DILocation(line: 346, column: 47, scope: !674, inlinedAt: !683)
!686 = !DILocation(line: 346, column: 41, scope: !674, inlinedAt: !683)
!687 = !DILocation(line: 346, column: 11, scope: !674, inlinedAt: !683)
!688 = !DILocation(line: 347, column: 13, scope: !674, inlinedAt: !683)
!689 = !DILocation(line: 349, column: 9, scope: !690, inlinedAt: !683)
!690 = distinct !DILexicalBlock(scope: !674, file: !3, line: 349, column: 9)
!691 = !DILocation(line: 349, column: 9, scope: !674, inlinedAt: !683)
!692 = !DILocalVariable(name: "i", arg: 1, scope: !693, file: !3, line: 283, type: !62)
!693 = distinct !DISubprogram(name: "ls_bit", scope: !3, file: !3, line: 283, type: !214, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !694)
!694 = !{!692, !695, !696}
!695 = !DILocalVariable(name: "a", scope: !693, file: !3, line: 285, type: !13)
!696 = !DILocalVariable(name: "x", scope: !693, file: !3, line: 286, type: !13)
!697 = !DILocation(line: 283, column: 34, scope: !693, inlinedAt: !698)
!698 = distinct !DILocation(line: 350, column: 16, scope: !699, inlinedAt: !683)
!699 = distinct !DILexicalBlock(scope: !690, file: !3, line: 349, column: 15)
!700 = !DILocation(line: 286, column: 26, scope: !693, inlinedAt: !698)
!701 = !DILocation(line: 286, column: 24, scope: !693, inlinedAt: !698)
!702 = !DILocation(line: 286, column: 18, scope: !693, inlinedAt: !698)
!703 = !DILocation(line: 288, column: 11, scope: !693, inlinedAt: !698)
!704 = !DILocation(line: 288, column: 9, scope: !693, inlinedAt: !698)
!705 = !DILocation(line: 288, column: 26, scope: !693, inlinedAt: !698)
!706 = !DILocation(line: 288, column: 24, scope: !693, inlinedAt: !698)
!707 = !DILocation(line: 288, column: 48, scope: !693, inlinedAt: !698)
!708 = !DILocation(line: 288, column: 46, scope: !693, inlinedAt: !698)
!709 = !DILocation(line: 285, column: 18, scope: !693, inlinedAt: !698)
!710 = !DILocation(line: 289, column: 20, scope: !693, inlinedAt: !698)
!711 = !DILocation(line: 289, column: 12, scope: !693, inlinedAt: !698)
!712 = !DILocation(line: 289, column: 26, scope: !693, inlinedAt: !698)
!713 = !DILocation(line: 352, column: 5, scope: !699, inlinedAt: !683)
!714 = !DILocation(line: 353, column: 30, scope: !715, inlinedAt: !683)
!715 = distinct !DILexicalBlock(scope: !690, file: !3, line: 352, column: 12)
!716 = !{!91, !92, i64 16}
!717 = !DILocation(line: 353, column: 55, scope: !715, inlinedAt: !683)
!718 = !DILocation(line: 353, column: 46, scope: !715, inlinedAt: !683)
!719 = !DILocation(line: 353, column: 40, scope: !715, inlinedAt: !683)
!720 = !DILocation(line: 283, column: 34, scope: !693, inlinedAt: !721)
!721 = distinct !DILocation(line: 353, column: 16, scope: !715, inlinedAt: !683)
!722 = !DILocation(line: 286, column: 26, scope: !693, inlinedAt: !721)
!723 = !DILocation(line: 286, column: 24, scope: !693, inlinedAt: !721)
!724 = !DILocation(line: 286, column: 18, scope: !693, inlinedAt: !721)
!725 = !DILocation(line: 288, column: 11, scope: !693, inlinedAt: !721)
!726 = !DILocation(line: 288, column: 9, scope: !693, inlinedAt: !721)
!727 = !DILocation(line: 288, column: 26, scope: !693, inlinedAt: !721)
!728 = !DILocation(line: 288, column: 24, scope: !693, inlinedAt: !721)
!729 = !DILocation(line: 288, column: 48, scope: !693, inlinedAt: !721)
!730 = !DILocation(line: 288, column: 46, scope: !693, inlinedAt: !721)
!731 = !DILocation(line: 285, column: 18, scope: !693, inlinedAt: !721)
!732 = !DILocation(line: 289, column: 20, scope: !693, inlinedAt: !721)
!733 = !DILocation(line: 289, column: 12, scope: !693, inlinedAt: !721)
!734 = !DILocation(line: 289, column: 26, scope: !693, inlinedAt: !721)
!735 = !DILocation(line: 289, column: 5, scope: !693, inlinedAt: !721)
!736 = !DILocation(line: 354, column: 18, scope: !737, inlinedAt: !683)
!737 = distinct !DILexicalBlock(scope: !715, file: !3, line: 354, column: 13)
!738 = !DILocation(line: 354, column: 13, scope: !715, inlinedAt: !683)
!739 = !DILocation(line: 359, column: 5, scope: !674, inlinedAt: !683)
!740 = !DILocation(line: 696, column: 13, scope: !594)
!741 = !DILocation(line: 725, column: 9, scope: !594)
!742 = !DILocation(line: 355, column: 27, scope: !743, inlinedAt: !683)
!743 = distinct !DILexicalBlock(scope: !737, file: !3, line: 354, column: 23)
!744 = !DILocation(line: 283, column: 34, scope: !693, inlinedAt: !745)
!745 = distinct !DILocation(line: 355, column: 20, scope: !743, inlinedAt: !683)
!746 = !DILocation(line: 286, column: 26, scope: !693, inlinedAt: !745)
!747 = !DILocation(line: 286, column: 24, scope: !693, inlinedAt: !745)
!748 = !DILocation(line: 286, column: 18, scope: !693, inlinedAt: !745)
!749 = !DILocation(line: 288, column: 11, scope: !693, inlinedAt: !745)
!750 = !DILocation(line: 288, column: 9, scope: !693, inlinedAt: !745)
!751 = !DILocation(line: 288, column: 26, scope: !693, inlinedAt: !745)
!752 = !DILocation(line: 288, column: 24, scope: !693, inlinedAt: !745)
!753 = !DILocation(line: 288, column: 48, scope: !693, inlinedAt: !745)
!754 = !DILocation(line: 288, column: 46, scope: !693, inlinedAt: !745)
!755 = !DILocation(line: 285, column: 18, scope: !693, inlinedAt: !745)
!756 = !DILocation(line: 289, column: 20, scope: !693, inlinedAt: !745)
!757 = !DILocation(line: 289, column: 12, scope: !693, inlinedAt: !745)
!758 = !DILocation(line: 289, column: 26, scope: !693, inlinedAt: !745)
!759 = !DILocation(line: 357, column: 9, scope: !743, inlinedAt: !683)
!760 = !DILocation(line: 289, column: 5, scope: !693, inlinedAt: !698)
!761 = !DILocation(line: 725, column: 10, scope: !762)
!762 = distinct !DILexicalBlock(scope: !594, file: !3, line: 725, column: 9)
!763 = !DILocation(line: 728, column: 5, scope: !764)
!764 = distinct !DILexicalBlock(scope: !594, file: !3, line: 728, column: 5)
!765 = !DILocation(line: 697, column: 9, scope: !594)
!766 = !DILocation(line: 697, column: 13, scope: !594)
!767 = !DILocation(line: 728, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 728, column: 5)
!769 = !DILocation(line: 728, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !768, file: !3, line: 728, column: 5)
!771 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !772)
!772 = distinct !DILocation(line: 728, column: 5, scope: !770)
!773 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !772)
!774 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !772)
!775 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !772)
!776 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !772)
!777 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !772)
!778 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !772)
!779 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !772)
!780 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !772)
!781 = !DILocation(line: 728, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !770, file: !3, line: 728, column: 5)
!783 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !784)
!784 = distinct !DILocation(line: 728, column: 5, scope: !782)
!785 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !784)
!786 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !784)
!787 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !784)
!788 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !784)
!789 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !784)
!790 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !784)
!791 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !784)
!792 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !784)
!793 = !DILocation(line: 731, column: 14, scope: !594)
!794 = !DILocation(line: 733, column: 39, scope: !594)
!795 = !DILocation(line: 698, column: 12, scope: !594)
!796 = !DILocation(line: 734, column: 18, scope: !797)
!797 = distinct !DILexicalBlock(scope: !594, file: !3, line: 734, column: 9)
!798 = !DILocation(line: 734, column: 9, scope: !594)
!799 = !DILocation(line: 696, column: 22, scope: !594)
!800 = !DILocation(line: 735, column: 18, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !3, line: 734, column: 37)
!802 = !DILocation(line: 736, column: 14, scope: !801)
!803 = !DILocation(line: 737, column: 29, scope: !801)
!804 = !DILocation(line: 737, column: 13, scope: !801)
!805 = !DILocation(line: 737, column: 18, scope: !801)
!806 = !DILocation(line: 738, column: 26, scope: !801)
!807 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !808)
!808 = distinct !DILocation(line: 739, column: 9, scope: !801)
!809 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !808)
!810 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !808)
!811 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !808)
!812 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !808)
!813 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !808)
!814 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !808)
!815 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !816)
!816 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !808)
!817 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !816)
!818 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !816)
!819 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !816)
!820 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !816)
!821 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !816)
!822 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !816)
!823 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !816)
!824 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !816)
!825 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !816)
!826 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !816)
!827 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !816)
!828 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !816)
!829 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !808)
!830 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !808)
!831 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !808)
!832 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !808)
!833 = !DILocation(line: 0, scope: !801)
!834 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !808)
!835 = !DILocation(line: 740, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !801, file: !3, line: 740, column: 9)
!837 = !DILocation(line: 740, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !3, line: 740, column: 9)
!839 = !DILocation(line: 696, column: 17, scope: !594)
!840 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !841)
!841 = distinct !DILocation(line: 740, column: 9, scope: !836)
!842 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !841)
!843 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !841)
!844 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !841)
!845 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !841)
!846 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !841)
!847 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !841)
!848 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !841)
!849 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !850)
!850 = distinct !DILocation(line: 740, column: 9, scope: !836)
!851 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !850)
!852 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !850)
!853 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !850)
!854 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !850)
!855 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !850)
!856 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !850)
!857 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !850)
!858 = !DILocation(line: 742, column: 30, scope: !801)
!859 = !DILocation(line: 742, column: 35, scope: !801)
!860 = !DILocation(line: 742, column: 24, scope: !801)
!861 = !DILocation(line: 743, column: 5, scope: !801)
!862 = !DILocation(line: 744, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !797, file: !3, line: 743, column: 12)
!864 = !DILocation(line: 744, column: 22, scope: !863)
!865 = !DILocation(line: 745, column: 17, scope: !863)
!866 = !DILocation(line: 0, scope: !863)
!867 = !DILocation(line: 750, column: 5, scope: !594)
!868 = !DILocation(line: 0, scope: !762)
!869 = !DILocation(line: 751, column: 1, scope: !594)
!870 = distinct !DISubprogram(name: "tlsf_free", scope: !3, file: !3, line: 643, type: !161, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !871)
!871 = !{!872, !873}
!872 = !DILocalVariable(name: "ptr", arg: 1, scope: !870, file: !3, line: 643, type: !58)
!873 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !870, file: !3, line: 643, type: !58)
!874 = !DILocation(line: 643, column: 22, scope: !870)
!875 = !DILocation(line: 643, column: 33, scope: !870)
!876 = !DILocation(line: 649, column: 5, scope: !870)
!877 = !DILocation(line: 653, column: 1, scope: !870)
!878 = distinct !DISubprogram(name: "tlsf_realloc", scope: !3, file: !3, line: 656, type: !879, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!58, !58, !27, !58}
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(name: "ptr", arg: 1, scope: !878, file: !3, line: 656, type: !58)
!883 = !DILocalVariable(name: "size", arg: 2, scope: !878, file: !3, line: 656, type: !27)
!884 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !878, file: !3, line: 656, type: !58)
!885 = !DILocalVariable(name: "ret", scope: !878, file: !3, line: 659, type: !58)
!886 = !DILocation(line: 656, column: 26, scope: !878)
!887 = !DILocation(line: 656, column: 38, scope: !878)
!888 = !DILocation(line: 656, column: 50, scope: !878)
!889 = !DILocation(line: 669, column: 11, scope: !878)
!890 = !DILocation(line: 659, column: 11, scope: !878)
!891 = !DILocation(line: 673, column: 5, scope: !878)
!892 = distinct !DISubprogram(name: "realloc_ex", scope: !3, file: !3, line: 793, type: !879, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!894 = !DILocalVariable(name: "ptr", arg: 1, scope: !892, file: !3, line: 793, type: !58)
!895 = !DILocalVariable(name: "new_size", arg: 2, scope: !892, file: !3, line: 793, type: !27)
!896 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !892, file: !3, line: 793, type: !58)
!897 = !DILocalVariable(name: "tlsf", scope: !892, file: !3, line: 796, type: !7)
!898 = !DILocalVariable(name: "ptr_aux", scope: !892, file: !3, line: 797, type: !58)
!899 = !DILocalVariable(name: "cpsize", scope: !892, file: !3, line: 798, type: !13)
!900 = !DILocalVariable(name: "b", scope: !892, file: !3, line: 799, type: !20)
!901 = !DILocalVariable(name: "tmp_b", scope: !892, file: !3, line: 799, type: !20)
!902 = !DILocalVariable(name: "next_b", scope: !892, file: !3, line: 799, type: !20)
!903 = !DILocalVariable(name: "fl", scope: !892, file: !3, line: 800, type: !62)
!904 = !DILocalVariable(name: "sl", scope: !892, file: !3, line: 800, type: !62)
!905 = !DILocalVariable(name: "tmp_size", scope: !892, file: !3, line: 801, type: !27)
!906 = !DILocation(line: 793, column: 24, scope: !892)
!907 = !DILocation(line: 793, column: 36, scope: !892)
!908 = !DILocation(line: 793, column: 52, scope: !892)
!909 = !DILocation(line: 796, column: 13, scope: !892)
!910 = !DILocation(line: 803, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !892, file: !3, line: 803, column: 9)
!912 = !DILocation(line: 0, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 804, column: 13)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 803, column: 15)
!915 = !DILocation(line: 803, column: 9, scope: !892)
!916 = !DILocation(line: 0, scope: !911)
!917 = !DILocation(line: 804, column: 13, scope: !914)
!918 = !DILocation(line: 805, column: 29, scope: !913)
!919 = !DILocation(line: 805, column: 13, scope: !913)
!920 = !DILocation(line: 806, column: 13, scope: !914)
!921 = !DILocation(line: 807, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !914, file: !3, line: 806, column: 13)
!923 = !DILocation(line: 808, column: 16, scope: !911)
!924 = !DILocation(line: 809, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 808, column: 27)
!926 = distinct !DILexicalBlock(scope: !911, file: !3, line: 808, column: 16)
!927 = !DILocation(line: 810, column: 9, scope: !925)
!928 = !DILocation(line: 813, column: 34, scope: !892)
!929 = !DILocation(line: 799, column: 13, scope: !892)
!930 = !DILocation(line: 814, column: 14, scope: !892)
!931 = !DILocation(line: 799, column: 25, scope: !892)
!932 = !DILocation(line: 815, column: 26, scope: !892)
!933 = !DILocation(line: 815, column: 16, scope: !892)
!934 = !DILocation(line: 815, column: 63, scope: !892)
!935 = !DILocation(line: 801, column: 12, scope: !892)
!936 = !DILocation(line: 817, column: 18, scope: !937)
!937 = distinct !DILexicalBlock(scope: !892, file: !3, line: 817, column: 9)
!938 = !DILocation(line: 0, scope: !939)
!939 = distinct !DILexicalBlock(scope: !892, file: !3, line: 841, column: 9)
!940 = !DILocation(line: 817, column: 9, scope: !892)
!941 = !DILocation(line: 0, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !3, line: 817, column: 31)
!943 = !DILocation(line: 819, column: 13, scope: !942)
!944 = !DILocation(line: 820, column: 41, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 819, column: 40)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 819, column: 13)
!947 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !948)
!948 = distinct !DILocation(line: 820, column: 13, scope: !945)
!949 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !948)
!950 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !948)
!951 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !948)
!952 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !948)
!953 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !948)
!954 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !948)
!955 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !956)
!956 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !948)
!957 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !956)
!958 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !956)
!959 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !956)
!960 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !956)
!961 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !956)
!962 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !956)
!963 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !956)
!964 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !956)
!965 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !956)
!966 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !956)
!967 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !956)
!968 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !956)
!969 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !948)
!970 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !948)
!971 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !948)
!972 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !948)
!973 = !DILocation(line: 0, scope: !945)
!974 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !948)
!975 = !DILocation(line: 821, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 821, column: 13)
!977 = distinct !DILexicalBlock(scope: !945, file: !3, line: 821, column: 13)
!978 = !DILocation(line: 821, column: 13, scope: !977)
!979 = !DILocation(line: 821, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 821, column: 13)
!981 = !DILocation(line: 821, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 821, column: 13)
!983 = !DILocation(line: 800, column: 9, scope: !892)
!984 = !DILocation(line: 800, column: 13, scope: !892)
!985 = !DILocation(line: 821, column: 13, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 821, column: 13)
!987 = !DILocation(line: 821, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !986, file: !3, line: 821, column: 13)
!989 = !DILocation(line: 821, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 821, column: 13)
!991 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !992)
!992 = distinct !DILocation(line: 821, column: 13, scope: !990)
!993 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !992)
!994 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !992)
!995 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !992)
!996 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !992)
!997 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !992)
!998 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !992)
!999 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !992)
!1000 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !992)
!1001 = !DILocation(line: 821, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !990, file: !3, line: 821, column: 13)
!1003 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 821, column: 13, scope: !1002)
!1005 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !1004)
!1006 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !1004)
!1007 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !1004)
!1008 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !1004)
!1009 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !1004)
!1010 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !1004)
!1011 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !1004)
!1012 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !1004)
!1013 = !DILocation(line: 822, column: 34, scope: !945)
!1014 = !DILocation(line: 822, column: 39, scope: !945)
!1015 = !DILocation(line: 822, column: 53, scope: !945)
!1016 = !DILocation(line: 822, column: 22, scope: !945)
!1017 = !DILocation(line: 823, column: 22, scope: !945)
!1018 = !DILocation(line: 826, column: 9, scope: !945)
!1019 = !DILocation(line: 0, scope: !892)
!1020 = !DILocation(line: 827, column: 18, scope: !942)
!1021 = !DILocation(line: 828, column: 22, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !942, file: !3, line: 828, column: 13)
!1023 = !DILocation(line: 828, column: 13, scope: !942)
!1024 = !DILocation(line: 829, column: 22, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 828, column: 41)
!1026 = !DILocation(line: 830, column: 21, scope: !1025)
!1027 = !DILocation(line: 831, column: 36, scope: !1025)
!1028 = !DILocation(line: 831, column: 20, scope: !1025)
!1029 = !DILocation(line: 831, column: 25, scope: !1025)
!1030 = !DILocation(line: 832, column: 30, scope: !1025)
!1031 = !DILocation(line: 833, column: 21, scope: !1025)
!1032 = !DILocation(line: 833, column: 26, scope: !1025)
!1033 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 834, column: 13, scope: !1025)
!1035 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !1034)
!1036 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !1034)
!1037 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !1034)
!1038 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !1034)
!1039 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !1034)
!1040 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !1034)
!1041 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !1034)
!1043 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !1042)
!1044 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !1042)
!1045 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !1042)
!1046 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !1042)
!1047 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !1042)
!1048 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !1042)
!1049 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !1042)
!1050 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !1042)
!1051 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !1042)
!1052 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !1042)
!1053 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !1042)
!1054 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !1042)
!1055 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !1034)
!1056 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !1034)
!1057 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !1034)
!1058 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !1034)
!1059 = !DILocation(line: 0, scope: !1025)
!1060 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !1034)
!1061 = !DILocation(line: 835, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 835, column: 13)
!1063 = !DILocation(line: 835, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 835, column: 13)
!1065 = !DILocation(line: 799, column: 17, scope: !892)
!1066 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 835, column: 13, scope: !1062)
!1068 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !1067)
!1069 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !1067)
!1070 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !1067)
!1071 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !1067)
!1072 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !1067)
!1073 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !1067)
!1074 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !1067)
!1075 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 835, column: 13, scope: !1062)
!1077 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !1076)
!1078 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !1076)
!1079 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !1076)
!1080 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !1076)
!1081 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !1076)
!1082 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !1076)
!1083 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !1076)
!1084 = !DILocation(line: 836, column: 38, scope: !1025)
!1085 = !DILocation(line: 836, column: 43, scope: !1025)
!1086 = !DILocation(line: 836, column: 32, scope: !1025)
!1087 = !DILocation(line: 836, column: 21, scope: !1025)
!1088 = !DILocation(line: 837, column: 9, scope: !1025)
!1089 = !DILocation(line: 841, column: 9, scope: !892)
!1090 = !DILocation(line: 842, column: 51, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 842, column: 13)
!1092 = distinct !DILexicalBlock(scope: !939, file: !3, line: 841, column: 38)
!1093 = !DILocation(line: 842, column: 35, scope: !1091)
!1094 = !DILocation(line: 842, column: 22, scope: !1091)
!1095 = !DILocation(line: 842, column: 13, scope: !1092)
!1096 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 844, column: 13, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 842, column: 67)
!1099 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !1097)
!1100 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !1097)
!1101 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !1097)
!1102 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !1097)
!1103 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !1097)
!1104 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !1097)
!1105 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !1097)
!1107 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !1106)
!1108 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !1106)
!1109 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !1106)
!1110 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !1106)
!1111 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !1106)
!1112 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !1106)
!1113 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !1106)
!1114 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !1106)
!1115 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !1106)
!1116 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !1106)
!1117 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !1106)
!1118 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !1106)
!1119 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !1097)
!1120 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !1097)
!1121 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !1097)
!1122 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !1097)
!1123 = !DILocation(line: 0, scope: !1098)
!1124 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !1097)
!1125 = !DILocation(line: 845, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 845, column: 13)
!1127 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 845, column: 13)
!1128 = !DILocation(line: 845, column: 13, scope: !1127)
!1129 = !DILocation(line: 845, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 845, column: 13)
!1131 = !DILocation(line: 845, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 845, column: 13)
!1133 = !DILocation(line: 845, column: 13, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 845, column: 13)
!1135 = !DILocation(line: 845, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 845, column: 13)
!1137 = !DILocation(line: 845, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 845, column: 13)
!1139 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 845, column: 13, scope: !1138)
!1141 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !1140)
!1142 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !1140)
!1143 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !1140)
!1144 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !1140)
!1145 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !1140)
!1146 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !1140)
!1147 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !1140)
!1148 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !1140)
!1149 = !DILocation(line: 845, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 845, column: 13)
!1151 = !DILocation(line: 306, column: 38, scope: !256, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 845, column: 13, scope: !1150)
!1153 = !DILocation(line: 306, column: 50, scope: !256, inlinedAt: !1152)
!1154 = !DILocation(line: 308, column: 33, scope: !256, inlinedAt: !1152)
!1155 = !DILocation(line: 308, column: 26, scope: !256, inlinedAt: !1152)
!1156 = !DILocation(line: 308, column: 22, scope: !256, inlinedAt: !1152)
!1157 = !DILocation(line: 308, column: 13, scope: !256, inlinedAt: !1152)
!1158 = !DILocation(line: 308, column: 5, scope: !256, inlinedAt: !1152)
!1159 = !DILocation(line: 308, column: 19, scope: !256, inlinedAt: !1152)
!1160 = !DILocation(line: 309, column: 1, scope: !256, inlinedAt: !1152)
!1161 = !DILocation(line: 846, column: 33, scope: !1098)
!1162 = !DILocation(line: 846, column: 38, scope: !1098)
!1163 = !DILocation(line: 846, column: 52, scope: !1098)
!1164 = !DILocation(line: 846, column: 21, scope: !1098)
!1165 = !DILocation(line: 847, column: 22, scope: !1098)
!1166 = !DILocation(line: 848, column: 30, scope: !1098)
!1167 = !DILocation(line: 849, column: 21, scope: !1098)
!1168 = !DILocation(line: 849, column: 26, scope: !1098)
!1169 = !DILocation(line: 850, column: 47, scope: !1098)
!1170 = !DILocation(line: 851, column: 26, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 851, column: 17)
!1172 = !DILocation(line: 851, column: 17, scope: !1098)
!1173 = !DILocation(line: 852, column: 26, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 851, column: 45)
!1175 = !DILocation(line: 853, column: 25, scope: !1174)
!1176 = !DILocation(line: 854, column: 40, scope: !1174)
!1177 = !DILocation(line: 854, column: 24, scope: !1174)
!1178 = !DILocation(line: 854, column: 29, scope: !1174)
!1179 = !DILocation(line: 855, column: 34, scope: !1174)
!1180 = !DILocation(line: 856, column: 30, scope: !1174)
!1181 = !DILocation(line: 331, column: 46, scope: !194, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 857, column: 17, scope: !1174)
!1183 = !DILocation(line: 333, column: 12, scope: !204, inlinedAt: !1182)
!1184 = !DILocation(line: 333, column: 9, scope: !194, inlinedAt: !1182)
!1185 = !DILocation(line: 335, column: 19, scope: !207, inlinedAt: !1182)
!1186 = !DILocation(line: 335, column: 16, scope: !207, inlinedAt: !1182)
!1187 = !DILocation(line: 336, column: 5, scope: !207, inlinedAt: !1182)
!1188 = !DILocation(line: 337, column: 23, scope: !211, inlinedAt: !1182)
!1189 = !DILocation(line: 292, column: 34, scope: !213, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 337, column: 16, scope: !211, inlinedAt: !1182)
!1191 = !DILocation(line: 295, column: 18, scope: !213, inlinedAt: !1190)
!1192 = !DILocation(line: 297, column: 11, scope: !213, inlinedAt: !1190)
!1193 = !DILocation(line: 297, column: 9, scope: !213, inlinedAt: !1190)
!1194 = !DILocation(line: 297, column: 26, scope: !213, inlinedAt: !1190)
!1195 = !DILocation(line: 297, column: 24, scope: !213, inlinedAt: !1190)
!1196 = !DILocation(line: 297, column: 48, scope: !213, inlinedAt: !1190)
!1197 = !DILocation(line: 297, column: 46, scope: !213, inlinedAt: !1190)
!1198 = !DILocation(line: 294, column: 18, scope: !213, inlinedAt: !1190)
!1199 = !DILocation(line: 298, column: 20, scope: !213, inlinedAt: !1190)
!1200 = !DILocation(line: 298, column: 12, scope: !213, inlinedAt: !1190)
!1201 = !DILocation(line: 298, column: 26, scope: !213, inlinedAt: !1190)
!1202 = !DILocation(line: 298, column: 5, scope: !213, inlinedAt: !1190)
!1203 = !DILocation(line: 338, column: 29, scope: !211, inlinedAt: !1182)
!1204 = !DILocation(line: 338, column: 20, scope: !211, inlinedAt: !1182)
!1205 = !DILocation(line: 338, column: 16, scope: !211, inlinedAt: !1182)
!1206 = !DILocation(line: 339, column: 14, scope: !211, inlinedAt: !1182)
!1207 = !DILocation(line: 0, scope: !1174)
!1208 = !DILocation(line: 341, column: 1, scope: !194, inlinedAt: !1182)
!1209 = !DILocation(line: 858, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 858, column: 17)
!1211 = !DILocation(line: 858, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 858, column: 17)
!1213 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 858, column: 17, scope: !1210)
!1215 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !1214)
!1216 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !1214)
!1217 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !1214)
!1218 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !1214)
!1219 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !1214)
!1220 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !1214)
!1221 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !1214)
!1222 = !DILocation(line: 301, column: 36, scope: !402, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 858, column: 17, scope: !1210)
!1224 = !DILocation(line: 301, column: 48, scope: !402, inlinedAt: !1223)
!1225 = !DILocation(line: 303, column: 31, scope: !402, inlinedAt: !1223)
!1226 = !DILocation(line: 303, column: 24, scope: !402, inlinedAt: !1223)
!1227 = !DILocation(line: 303, column: 13, scope: !402, inlinedAt: !1223)
!1228 = !DILocation(line: 303, column: 5, scope: !402, inlinedAt: !1223)
!1229 = !DILocation(line: 303, column: 19, scope: !402, inlinedAt: !1223)
!1230 = !DILocation(line: 304, column: 1, scope: !402, inlinedAt: !1223)
!1231 = !DILocation(line: 859, column: 42, scope: !1174)
!1232 = !DILocation(line: 859, column: 47, scope: !1174)
!1233 = !DILocation(line: 859, column: 36, scope: !1174)
!1234 = !DILocation(line: 859, column: 25, scope: !1174)
!1235 = !DILocation(line: 860, column: 13, scope: !1174)
!1236 = !DILocation(line: 866, column: 21, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !892, file: !3, line: 866, column: 9)
!1238 = !DILocation(line: 797, column: 11, scope: !892)
!1239 = !DILocation(line: 866, column: 19, scope: !1237)
!1240 = !DILocation(line: 866, column: 9, scope: !892)
!1241 = !DILocation(line: 870, column: 19, scope: !892)
!1242 = !DILocation(line: 870, column: 24, scope: !892)
!1243 = !DILocation(line: 870, column: 38, scope: !892)
!1244 = !DILocation(line: 870, column: 14, scope: !892)
!1245 = !DILocation(line: 872, column: 26, scope: !892)
!1246 = !DILocation(line: 798, column: 18, scope: !892)
!1247 = !DILocation(line: 872, column: 5, scope: !892)
!1248 = !DILocation(line: 874, column: 5, scope: !892)
!1249 = !DILocation(line: 875, column: 5, scope: !892)
!1250 = !DILocation(line: 0, scope: !922)
!1251 = !DILocation(line: 876, column: 1, scope: !892)
!1252 = distinct !DISubprogram(name: "tlsf_calloc", scope: !3, file: !3, line: 677, type: !1253, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!58, !27, !27, !58}
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DILocalVariable(name: "nelem", arg: 1, scope: !1252, file: !3, line: 677, type: !27)
!1257 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1252, file: !3, line: 677, type: !27)
!1258 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1252, file: !3, line: 677, type: !58)
!1259 = !DILocalVariable(name: "ret", scope: !1252, file: !3, line: 680, type: !58)
!1260 = !DILocation(line: 677, column: 26, scope: !1252)
!1261 = !DILocation(line: 677, column: 40, scope: !1252)
!1262 = !DILocation(line: 677, column: 57, scope: !1252)
!1263 = !DILocalVariable(name: "nelem", arg: 1, scope: !1264, file: !3, line: 880, type: !27)
!1264 = distinct !DISubprogram(name: "calloc_ex", scope: !3, file: !3, line: 880, type: !1253, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1265)
!1265 = !{!1263, !1266, !1267, !1268}
!1266 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1264, file: !3, line: 880, type: !27)
!1267 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1264, file: !3, line: 880, type: !58)
!1268 = !DILocalVariable(name: "ptr", scope: !1264, file: !3, line: 883, type: !58)
!1269 = !DILocation(line: 880, column: 24, scope: !1264, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 684, column: 11, scope: !1252)
!1271 = !DILocation(line: 880, column: 38, scope: !1264, inlinedAt: !1270)
!1272 = !DILocation(line: 880, column: 55, scope: !1264, inlinedAt: !1270)
!1273 = !DILocation(line: 885, column: 15, scope: !1274, inlinedAt: !1270)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 885, column: 9)
!1275 = !DILocation(line: 885, column: 33, scope: !1274, inlinedAt: !1270)
!1276 = !DILocation(line: 885, column: 20, scope: !1274, inlinedAt: !1270)
!1277 = !DILocation(line: 888, column: 33, scope: !1278, inlinedAt: !1270)
!1278 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 888, column: 9)
!1279 = !DILocation(line: 888, column: 17, scope: !1278, inlinedAt: !1270)
!1280 = !DILocation(line: 883, column: 11, scope: !1264, inlinedAt: !1270)
!1281 = !DILocation(line: 888, column: 15, scope: !1278, inlinedAt: !1270)
!1282 = !DILocation(line: 888, column: 9, scope: !1264, inlinedAt: !1270)
!1283 = !DILocation(line: 890, column: 5, scope: !1264, inlinedAt: !1270)
!1284 = !DILocation(line: 892, column: 5, scope: !1264, inlinedAt: !1270)
!1285 = !DILocation(line: 0, scope: !1278, inlinedAt: !1270)
!1286 = !DILocation(line: 0, scope: !1252)
!1287 = !DILocation(line: 893, column: 1, scope: !1264, inlinedAt: !1270)
!1288 = !DILocation(line: 680, column: 11, scope: !1252)
!1289 = !DILocation(line: 688, column: 5, scope: !1252)
!1290 = !DILocation(line: 880, column: 24, scope: !1264)
!1291 = !DILocation(line: 880, column: 38, scope: !1264)
!1292 = !DILocation(line: 880, column: 55, scope: !1264)
!1293 = !DILocation(line: 885, column: 15, scope: !1274)
!1294 = !DILocation(line: 885, column: 33, scope: !1274)
!1295 = !DILocation(line: 885, column: 20, scope: !1274)
!1296 = !DILocation(line: 888, column: 33, scope: !1278)
!1297 = !DILocation(line: 888, column: 17, scope: !1278)
!1298 = !DILocation(line: 883, column: 11, scope: !1264)
!1299 = !DILocation(line: 888, column: 15, scope: !1278)
!1300 = !DILocation(line: 888, column: 9, scope: !1264)
!1301 = !DILocation(line: 890, column: 5, scope: !1264)
!1302 = !DILocation(line: 892, column: 5, scope: !1264)
!1303 = !DILocation(line: 0, scope: !1278)
!1304 = !DILocation(line: 0, scope: !1274)
!1305 = !DILocation(line: 893, column: 1, scope: !1264)
