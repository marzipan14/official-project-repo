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
  %20 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 6264) #4, !dbg !107
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
  %39 = getelementptr inbounds i8, i8* %1, i64 6320, !dbg !147
  tail call void @free_ex(i8* nonnull %39, i8* nonnull %1) #5, !dbg !148
  %40 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !149
  %41 = bitcast i8* %40 to i8**, !dbg !150
  store i8* %23, i8** %41, align 8, !dbg !150, !tbaa !151
  %42 = getelementptr inbounds i8, i8* %1, i64 6312, !dbg !152
  %43 = bitcast i8* %42 to i64*, !dbg !152
  %44 = load i64, i64* %43, align 8, !dbg !152, !tbaa !101
  %45 = and i64 %44, 4294967288, !dbg !153
  br label %46, !dbg !154

; <label>:46:                                     ; preds = %6, %2, %19, %14
  %47 = phi i64 [ %18, %14 ], [ %45, %19 ], [ -1, %2 ], [ -1, %6 ], !dbg !155
  ret i64 %47, !dbg !156
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @free_ex(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !157 {
  %3 = icmp eq i8* %0, null, !dbg !173
  br i1 %3, label %290, label %4, !dbg !175

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !176
  %6 = bitcast i8* %5 to %struct.bhdr_struct*, !dbg !177
  %7 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !179
  %8 = bitcast i8* %7 to i64*, !dbg !179
  %9 = load i64, i64* %8, align 8, !dbg !180, !tbaa !101
  %10 = or i64 %9, 1, !dbg !180
  store i64 %10, i64* %8, align 8, !dbg !180, !tbaa !101
  %11 = bitcast i8* %0 to <2 x %struct.bhdr_struct*>*, !dbg !181
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %11, align 8, !dbg !181, !tbaa !132
  %12 = and i64 %9, 4294967288, !dbg !182
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !182
  %14 = bitcast i8* %13 to %struct.bhdr_struct*, !dbg !182
  %15 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !184
  %16 = bitcast i8* %15 to i64*, !dbg !184
  %17 = load i64, i64* %16, align 8, !dbg !184, !tbaa !101
  %18 = and i64 %17, 1, !dbg !186
  %19 = icmp eq i64 %18, 0, !dbg !186
  br i1 %19, label %112, label %20, !dbg !187

; <label>:20:                                     ; preds = %4
  %21 = and i64 %17, 4294967288, !dbg !188
  %22 = icmp ult i64 %21, 128, !dbg !200
  br i1 %22, label %23, label %26, !dbg !202

; <label>:23:                                     ; preds = %20
  %24 = lshr exact i64 %21, 2, !dbg !203
  %25 = trunc i64 %24 to i32, !dbg !205
  br label %45, !dbg !206

; <label>:26:                                     ; preds = %20
  %27 = trunc i64 %21 to i32, !dbg !207
  %28 = icmp ult i32 %27, 65536, !dbg !219
  %29 = icmp ult i32 %27, 256, !dbg !220
  %30 = select i1 %29, i32 0, i32 8, !dbg !221
  %31 = icmp ult i32 %27, 16777216, !dbg !222
  %32 = select i1 %31, i32 16, i32 24, !dbg !223
  %33 = select i1 %28, i32 %30, i32 %32, !dbg !224
  %34 = lshr i32 %27, %33, !dbg !226
  %35 = zext i32 %34 to i64, !dbg !227
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %35, !dbg !227
  %37 = load i32, i32* %36, align 4, !dbg !227, !tbaa !228
  %38 = add i32 %37, %33, !dbg !229
  %39 = add nsw i32 %38, -5, !dbg !230
  %40 = zext i32 %39 to i64, !dbg !231
  %41 = lshr i64 %21, %40, !dbg !231
  %42 = trunc i64 %41 to i32, !dbg !232
  %43 = add i32 %42, -32, !dbg !232
  %44 = add nsw i32 %38, -6, !dbg !233
  br label %45

; <label>:45:                                     ; preds = %23, %26
  %46 = phi i32 [ 0, %23 ], [ %44, %26 ], !dbg !234
  %47 = phi i32 [ %25, %23 ], [ %43, %26 ], !dbg !234
  %48 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !235
  %49 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !235
  %50 = bitcast i8* %49 to %struct.bhdr_struct**, !dbg !235
  %51 = load %struct.bhdr_struct*, %struct.bhdr_struct** %50, align 8, !dbg !235, !tbaa !132
  %52 = icmp eq %struct.bhdr_struct* %51, null, !dbg !235
  br i1 %52, label %58, label %53, !dbg !238

; <label>:53:                                     ; preds = %45
  %54 = bitcast i8* %48 to i64*, !dbg !235
  %55 = load i64, i64* %54, align 8, !dbg !235, !tbaa !132
  %56 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %51, i64 0, i32 2, !dbg !235
  %57 = bitcast %union.anon* %56 to i64*, !dbg !235
  store i64 %55, i64* %57, align 8, !dbg !235, !tbaa !132
  br label %58, !dbg !235

; <label>:58:                                     ; preds = %45, %53
  %59 = bitcast i8* %48 to %struct.bhdr_struct**, !dbg !239
  %60 = load %struct.bhdr_struct*, %struct.bhdr_struct** %59, align 8, !dbg !239, !tbaa !132
  %61 = icmp eq %struct.bhdr_struct* %60, null, !dbg !239
  br i1 %61, label %67, label %62, !dbg !238

; <label>:62:                                     ; preds = %58
  %63 = bitcast i8* %49 to i64*, !dbg !239
  %64 = load i64, i64* %63, align 8, !dbg !239, !tbaa !132
  %65 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %60, i64 0, i32 2, i32 0, i32 1, !dbg !239
  %66 = bitcast %struct.bhdr_struct** %65 to i64*, !dbg !239
  store i64 %64, i64* %66, align 8, !dbg !239, !tbaa !132
  br label %67, !dbg !239

; <label>:67:                                     ; preds = %58, %62
  %68 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !241
  %69 = bitcast i8* %68 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !241
  %70 = sext i32 %46 to i64, !dbg !241
  %71 = sext i32 %47 to i64, !dbg !241
  %72 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %69, i64 0, i64 %70, i64 %71, !dbg !241
  %73 = load %struct.bhdr_struct*, %struct.bhdr_struct** %72, align 8, !dbg !241, !tbaa !243
  %74 = icmp eq %struct.bhdr_struct* %73, %14, !dbg !241
  br i1 %74, label %75, label %105, !dbg !238

; <label>:75:                                     ; preds = %67
  %76 = bitcast i8* %49 to i64*, !dbg !244
  %77 = load i64, i64* %76, align 8, !dbg !244, !tbaa !132
  %78 = bitcast %struct.bhdr_struct** %72 to i64*, !dbg !244
  store i64 %77, i64* %78, align 8, !dbg !244, !tbaa !243
  %79 = icmp eq i64 %77, 0, !dbg !246
  br i1 %79, label %80, label %105, !dbg !244

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !248
  %82 = bitcast i8* %81 to [24 x i32]*, !dbg !248
  %83 = getelementptr inbounds [24 x i32], [24 x i32]* %82, i64 0, i64 %70, !dbg !248
  %84 = and i32 %47, 31, !dbg !260
  %85 = shl i32 1, %84, !dbg !261
  %86 = xor i32 %85, -1, !dbg !262
  %87 = ashr i32 %47, 5, !dbg !263
  %88 = sext i32 %87 to i64, !dbg !264
  %89 = getelementptr inbounds i32, i32* %83, i64 %88, !dbg !264
  %90 = load i32, i32* %89, align 4, !dbg !265, !tbaa !228
  %91 = and i32 %90, %86, !dbg !265
  store i32 %91, i32* %89, align 4, !dbg !265, !tbaa !228
  %92 = load i32, i32* %83, align 4, !dbg !266, !tbaa !228
  %93 = icmp eq i32 %92, 0, !dbg !266
  br i1 %93, label %94, label %105, !dbg !248

; <label>:94:                                     ; preds = %80
  %95 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !266
  %96 = bitcast i8* %95 to i32*, !dbg !266
  %97 = and i32 %46, 31, !dbg !271
  %98 = shl i32 1, %97, !dbg !272
  %99 = xor i32 %98, -1, !dbg !273
  %100 = ashr i32 %46, 5, !dbg !274
  %101 = sext i32 %100 to i64, !dbg !275
  %102 = getelementptr inbounds i32, i32* %96, i64 %101, !dbg !275
  %103 = load i32, i32* %102, align 4, !dbg !276, !tbaa !228
  %104 = and i32 %103, %99, !dbg !276
  store i32 %104, i32* %102, align 4, !dbg !276, !tbaa !228
  br label %105, !dbg !266

; <label>:105:                                    ; preds = %80, %75, %94, %67
  %106 = bitcast i8* %48 to <2 x %struct.bhdr_struct*>*, !dbg !238
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %106, align 8, !dbg !238, !tbaa !132
  %107 = load i64, i64* %16, align 8, !dbg !277, !tbaa !101
  %108 = and i64 %107, 4294967288, !dbg !278
  %109 = add nuw nsw i64 %108, 16, !dbg !279
  %110 = load i64, i64* %8, align 8, !dbg !280, !tbaa !101
  %111 = add i64 %109, %110, !dbg !280
  store i64 %111, i64* %8, align 8, !dbg !280, !tbaa !101
  br label %112, !dbg !281

; <label>:112:                                    ; preds = %4, %105
  %113 = phi i64 [ %10, %4 ], [ %111, %105 ], !dbg !282
  %114 = and i64 %113, 2, !dbg !284
  %115 = icmp eq i64 %114, 0, !dbg !284
  br i1 %115, label %116, label %119, !dbg !285

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %0, i64 -8
  %118 = bitcast i8* %117 to i64*
  br label %214, !dbg !285

; <label>:119:                                    ; preds = %112
  %120 = bitcast i8* %5 to %struct.bhdr_struct**, !dbg !286
  %121 = load %struct.bhdr_struct*, %struct.bhdr_struct** %120, align 8, !dbg !286, !tbaa !136
  %122 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 1, !dbg !288
  %123 = load i64, i64* %122, align 8, !dbg !288, !tbaa !101
  %124 = and i64 %123, 4294967288, !dbg !289
  %125 = icmp ult i64 %124, 128, !dbg !292
  br i1 %125, label %126, label %129, !dbg !293

; <label>:126:                                    ; preds = %119
  %127 = lshr exact i64 %124, 2, !dbg !294
  %128 = trunc i64 %127 to i32, !dbg !295
  br label %148, !dbg !296

; <label>:129:                                    ; preds = %119
  %130 = trunc i64 %124 to i32, !dbg !297
  %131 = icmp ult i32 %130, 65536, !dbg !301
  %132 = icmp ult i32 %130, 256, !dbg !302
  %133 = select i1 %132, i32 0, i32 8, !dbg !303
  %134 = icmp ult i32 %130, 16777216, !dbg !304
  %135 = select i1 %134, i32 16, i32 24, !dbg !305
  %136 = select i1 %131, i32 %133, i32 %135, !dbg !306
  %137 = lshr i32 %130, %136, !dbg !308
  %138 = zext i32 %137 to i64, !dbg !309
  %139 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %138, !dbg !309
  %140 = load i32, i32* %139, align 4, !dbg !309, !tbaa !228
  %141 = add i32 %140, %136, !dbg !310
  %142 = add nsw i32 %141, -5, !dbg !311
  %143 = zext i32 %142 to i64, !dbg !312
  %144 = lshr i64 %124, %143, !dbg !312
  %145 = trunc i64 %144 to i32, !dbg !313
  %146 = add i32 %145, -32, !dbg !313
  %147 = add nsw i32 %141, -6, !dbg !314
  br label %148

; <label>:148:                                    ; preds = %126, %129
  %149 = phi i32 [ 0, %126 ], [ %147, %129 ], !dbg !315
  %150 = phi i32 [ %128, %126 ], [ %146, %129 ], !dbg !315
  %151 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, !dbg !316
  %152 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %121, i64 0, i32 2, i32 0, i32 1, !dbg !316
  %153 = load %struct.bhdr_struct*, %struct.bhdr_struct** %152, align 8, !dbg !316, !tbaa !132
  %154 = icmp eq %struct.bhdr_struct* %153, null, !dbg !316
  br i1 %154, label %160, label %155, !dbg !319

; <label>:155:                                    ; preds = %148
  %156 = bitcast %struct.free_ptr_struct* %151 to i64*, !dbg !316
  %157 = load i64, i64* %156, align 8, !dbg !316, !tbaa !132
  %158 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %153, i64 0, i32 2, !dbg !316
  %159 = bitcast %union.anon* %158 to i64*, !dbg !316
  store i64 %157, i64* %159, align 8, !dbg !316, !tbaa !132
  br label %160, !dbg !316

; <label>:160:                                    ; preds = %148, %155
  %161 = getelementptr inbounds %struct.free_ptr_struct, %struct.free_ptr_struct* %151, i64 0, i32 0, !dbg !320
  %162 = load %struct.bhdr_struct*, %struct.bhdr_struct** %161, align 8, !dbg !320, !tbaa !132
  %163 = icmp eq %struct.bhdr_struct* %162, null, !dbg !320
  br i1 %163, label %169, label %164, !dbg !319

; <label>:164:                                    ; preds = %160
  %165 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !320
  %166 = load i64, i64* %165, align 8, !dbg !320, !tbaa !132
  %167 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %162, i64 0, i32 2, i32 0, i32 1, !dbg !320
  %168 = bitcast %struct.bhdr_struct** %167 to i64*, !dbg !320
  store i64 %166, i64* %168, align 8, !dbg !320, !tbaa !132
  br label %169, !dbg !320

; <label>:169:                                    ; preds = %160, %164
  %170 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !322
  %171 = bitcast i8* %170 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !322
  %172 = sext i32 %149 to i64, !dbg !322
  %173 = sext i32 %150 to i64, !dbg !322
  %174 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %171, i64 0, i64 %172, i64 %173, !dbg !322
  %175 = load %struct.bhdr_struct*, %struct.bhdr_struct** %174, align 8, !dbg !322, !tbaa !243
  %176 = icmp eq %struct.bhdr_struct* %175, %121, !dbg !322
  br i1 %176, label %177, label %207, !dbg !319

; <label>:177:                                    ; preds = %169
  %178 = bitcast %struct.bhdr_struct** %152 to i64*, !dbg !324
  %179 = load i64, i64* %178, align 8, !dbg !324, !tbaa !132
  %180 = bitcast %struct.bhdr_struct** %174 to i64*, !dbg !324
  store i64 %179, i64* %180, align 8, !dbg !324, !tbaa !243
  %181 = icmp eq i64 %179, 0, !dbg !326
  br i1 %181, label %182, label %207, !dbg !324

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !328
  %184 = bitcast i8* %183 to [24 x i32]*, !dbg !328
  %185 = getelementptr inbounds [24 x i32], [24 x i32]* %184, i64 0, i64 %172, !dbg !328
  %186 = and i32 %150, 31, !dbg !333
  %187 = shl i32 1, %186, !dbg !334
  %188 = xor i32 %187, -1, !dbg !335
  %189 = ashr i32 %150, 5, !dbg !336
  %190 = sext i32 %189 to i64, !dbg !337
  %191 = getelementptr inbounds i32, i32* %185, i64 %190, !dbg !337
  %192 = load i32, i32* %191, align 4, !dbg !338, !tbaa !228
  %193 = and i32 %192, %188, !dbg !338
  store i32 %193, i32* %191, align 4, !dbg !338, !tbaa !228
  %194 = load i32, i32* %185, align 4, !dbg !339, !tbaa !228
  %195 = icmp eq i32 %194, 0, !dbg !339
  br i1 %195, label %196, label %207, !dbg !328

; <label>:196:                                    ; preds = %182
  %197 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !339
  %198 = bitcast i8* %197 to i32*, !dbg !339
  %199 = and i32 %149, 31, !dbg !344
  %200 = shl i32 1, %199, !dbg !345
  %201 = xor i32 %200, -1, !dbg !346
  %202 = ashr i32 %149, 5, !dbg !347
  %203 = sext i32 %202 to i64, !dbg !348
  %204 = getelementptr inbounds i32, i32* %198, i64 %203, !dbg !348
  %205 = load i32, i32* %204, align 4, !dbg !349, !tbaa !228
  %206 = and i32 %205, %201, !dbg !349
  store i32 %206, i32* %204, align 4, !dbg !349, !tbaa !228
  br label %207, !dbg !339

; <label>:207:                                    ; preds = %182, %177, %196, %169
  %208 = bitcast %struct.free_ptr_struct* %151 to <2 x %struct.bhdr_struct*>*, !dbg !319
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %208, align 8, !dbg !319, !tbaa !132
  %209 = load i64, i64* %8, align 8, !dbg !350, !tbaa !101
  %210 = and i64 %209, 4294967288, !dbg !351
  %211 = add nuw nsw i64 %210, 16, !dbg !352
  %212 = load i64, i64* %122, align 8, !dbg !353, !tbaa !101
  %213 = add i64 %211, %212, !dbg !353
  store i64 %213, i64* %122, align 8, !dbg !353, !tbaa !101
  br label %214, !dbg !354

; <label>:214:                                    ; preds = %116, %207
  %215 = phi i64* [ %118, %116 ], [ %122, %207 ], !dbg !355
  %216 = phi i64 [ %113, %116 ], [ %213, %207 ], !dbg !355
  %217 = phi %struct.bhdr_struct* [ %6, %116 ], [ %121, %207 ], !dbg !356
  %218 = and i64 %216, 4294967288, !dbg !357
  %219 = icmp ult i64 %218, 128, !dbg !360
  br i1 %219, label %220, label %223, !dbg !361

; <label>:220:                                    ; preds = %214
  %221 = lshr exact i64 %218, 2, !dbg !362
  %222 = trunc i64 %221 to i32, !dbg !363
  br label %242, !dbg !364

; <label>:223:                                    ; preds = %214
  %224 = trunc i64 %218 to i32, !dbg !365
  %225 = icmp ult i32 %224, 65536, !dbg !369
  %226 = icmp ult i32 %224, 256, !dbg !370
  %227 = select i1 %226, i32 0, i32 8, !dbg !371
  %228 = icmp ult i32 %224, 16777216, !dbg !372
  %229 = select i1 %228, i32 16, i32 24, !dbg !373
  %230 = select i1 %225, i32 %227, i32 %229, !dbg !374
  %231 = lshr i32 %224, %230, !dbg !376
  %232 = zext i32 %231 to i64, !dbg !377
  %233 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %232, !dbg !377
  %234 = load i32, i32* %233, align 4, !dbg !377, !tbaa !228
  %235 = add i32 %234, %230, !dbg !378
  %236 = add nsw i32 %235, -5, !dbg !379
  %237 = zext i32 %236 to i64, !dbg !380
  %238 = lshr i64 %218, %237, !dbg !380
  %239 = trunc i64 %238 to i32, !dbg !381
  %240 = add i32 %239, -32, !dbg !381
  %241 = add nsw i32 %235, -6, !dbg !382
  br label %242

; <label>:242:                                    ; preds = %220, %223
  %243 = phi i32 [ 0, %220 ], [ %241, %223 ], !dbg !356
  %244 = phi i32 [ %222, %220 ], [ %240, %223 ], !dbg !356
  %245 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, !dbg !383
  %246 = getelementptr inbounds %union.anon, %union.anon* %245, i64 0, i32 0, i32 0, !dbg !383
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %246, align 8, !dbg !383, !tbaa !132
  %247 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !383
  %248 = bitcast i8* %247 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !383
  %249 = sext i32 %243 to i64, !dbg !383
  %250 = sext i32 %244 to i64, !dbg !383
  %251 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %248, i64 0, i64 %249, i64 %250, !dbg !383
  %252 = bitcast %struct.bhdr_struct** %251 to i64*, !dbg !383
  %253 = load i64, i64* %252, align 8, !dbg !383, !tbaa !243
  %254 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %217, i64 0, i32 2, i32 0, i32 1, !dbg !383
  %255 = bitcast %struct.bhdr_struct** %254 to i64*, !dbg !383
  store i64 %253, i64* %255, align 8, !dbg !383, !tbaa !132
  %256 = load %struct.bhdr_struct*, %struct.bhdr_struct** %251, align 8, !dbg !385, !tbaa !243
  %257 = icmp eq %struct.bhdr_struct* %256, null, !dbg !385
  br i1 %257, label %262, label %258, !dbg !383

; <label>:258:                                    ; preds = %242
  %259 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %256, i64 0, i32 2, i32 0, i32 0, !dbg !385
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %259, align 8, !dbg !385, !tbaa !132
  %260 = load i64, i64* %215, align 8, !dbg !387, !tbaa !101
  %261 = and i64 %260, 4294967288, !dbg !387
  br label %262, !dbg !385

; <label>:262:                                    ; preds = %242, %258
  %263 = phi i64 [ %218, %242 ], [ %261, %258 ], !dbg !387
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %251, align 8, !dbg !383, !tbaa !243
  %264 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !383
  %265 = bitcast i8* %264 to [24 x i32]*, !dbg !383
  %266 = getelementptr inbounds [24 x i32], [24 x i32]* %265, i64 0, i64 %249, !dbg !383
  %267 = and i32 %244, 31, !dbg !395
  %268 = shl i32 1, %267, !dbg !396
  %269 = ashr i32 %244, 5, !dbg !397
  %270 = sext i32 %269 to i64, !dbg !398
  %271 = getelementptr inbounds i32, i32* %266, i64 %270, !dbg !398
  %272 = load i32, i32* %271, align 4, !dbg !399, !tbaa !228
  %273 = or i32 %272, %268, !dbg !399
  store i32 %273, i32* %271, align 4, !dbg !399, !tbaa !228
  %274 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !383
  %275 = bitcast i8* %274 to i32*, !dbg !383
  %276 = and i32 %243, 31, !dbg !403
  %277 = shl i32 1, %276, !dbg !404
  %278 = ashr i32 %243, 5, !dbg !405
  %279 = sext i32 %278 to i64, !dbg !406
  %280 = getelementptr inbounds i32, i32* %275, i64 %279, !dbg !406
  %281 = load i32, i32* %280, align 4, !dbg !407, !tbaa !228
  %282 = or i32 %281, %277, !dbg !407
  store i32 %282, i32* %280, align 4, !dbg !407, !tbaa !228
  %283 = bitcast %union.anon* %245 to i8*, !dbg !387
  %284 = getelementptr inbounds i8, i8* %283, i64 %263, !dbg !387
  %285 = getelementptr inbounds i8, i8* %284, i64 8, !dbg !408
  %286 = bitcast i8* %285 to i64*, !dbg !408
  %287 = load i64, i64* %286, align 8, !dbg !409, !tbaa !101
  %288 = or i64 %287, 2, !dbg !409
  store i64 %288, i64* %286, align 8, !dbg !409, !tbaa !101
  %289 = bitcast i8* %284 to %struct.bhdr_struct**, !dbg !410
  store %struct.bhdr_struct* %217, %struct.bhdr_struct** %289, align 8, !dbg !411, !tbaa !136
  br label %290, !dbg !412

; <label>:290:                                    ; preds = %2, %262
  ret void, !dbg !412
}

; Function Attrs: noredzone nounwind
define dso_local i64 @add_new_area(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !413 {
  %4 = tail call i8* @memset(i8* %0, i32 0, i64 %1) #4, !dbg !435
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !436
  %6 = bitcast i8* %5 to %struct.area_info_struct**, !dbg !436
  %7 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !436, !tbaa !151
  %8 = bitcast i8* %0 to %struct.bhdr_struct*, !dbg !442
  %9 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !444
  %10 = bitcast i8* %9 to i64*, !dbg !444
  store i64 16, i64* %10, align 8, !dbg !445, !tbaa !101
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !446
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !446
  %13 = add i64 %1, -64, !dbg !448
  %14 = and i64 %13, -16, !dbg !448
  %15 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !449
  %16 = bitcast i8* %15 to i64*, !dbg !449
  store i64 %14, i64* %16, align 8, !dbg !450, !tbaa !101
  %17 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !451
  %18 = bitcast i8* %17 to <2 x %struct.bhdr_struct*>*, !dbg !452
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %18, align 8, !dbg !452, !tbaa !132
  %19 = and i64 %13, 4294967280, !dbg !453
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !453
  %21 = bitcast i8* %20 to i8**, !dbg !455
  store i8* %12, i8** %21, align 8, !dbg !455, !tbaa !136
  %22 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !456
  %23 = bitcast i8* %22 to i64*, !dbg !456
  store i64 2, i64* %23, align 8, !dbg !457, !tbaa !101
  %24 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !459
  %25 = bitcast i8* %24 to %struct.area_info_struct**, !dbg !459
  store %struct.area_info_struct* null, %struct.area_info_struct** %25, align 8, !dbg !460, !tbaa !142
  %26 = bitcast i8* %11 to i8**, !dbg !461
  store i8* %20, i8** %26, align 8, !dbg !461, !tbaa !145
  %27 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !463
  %28 = bitcast i8* %27 to %struct.bhdr_struct*, !dbg !463
  %29 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !465
  %30 = and i64 %13, 4294967280, !dbg !465
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !465
  %32 = bitcast i8* %31 to %struct.bhdr_struct*, !dbg !465
  %33 = icmp eq %struct.area_info_struct* %7, null, !dbg !467
  %34 = bitcast i8* %5 to i64*
  br i1 %33, label %127, label %35, !dbg !467

; <label>:35:                                     ; preds = %3, %75
  %36 = phi %struct.area_info_struct* [ %76, %75 ], [ %7, %3 ]
  %37 = phi %struct.area_info_struct* [ %51, %75 ], [ null, %3 ]
  %38 = phi %struct.bhdr_struct* [ %46, %75 ], [ %8, %3 ]
  %39 = phi %struct.bhdr_struct* [ %47, %75 ], [ %28, %3 ]
  %40 = phi %struct.bhdr_struct* [ %54, %75 ], [ %32, %3 ]
  %41 = ptrtoint %struct.bhdr_struct* %40 to i64
  %42 = add i64 %41, 16
  br label %43, !dbg !467

; <label>:43:                                     ; preds = %35, %102
  %44 = phi %struct.area_info_struct* [ %36, %35 ], [ %103, %102 ]
  %45 = phi %struct.area_info_struct* [ %37, %35 ], [ %51, %102 ]
  %46 = phi %struct.bhdr_struct* [ %38, %35 ], [ %89, %102 ]
  %47 = phi %struct.bhdr_struct* [ %39, %35 ], [ %54, %102 ]
  %48 = bitcast %struct.bhdr_struct* %46 to %union.anon*
  br label %49, !dbg !467

; <label>:49:                                     ; preds = %43, %121
  %50 = phi %struct.area_info_struct* [ %44, %43 ], [ %123, %121 ]
  %51 = phi %struct.area_info_struct* [ %45, %43 ], [ %50, %121 ]
  %52 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, !dbg !468
  %53 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 0, !dbg !470
  %54 = load %struct.bhdr_struct*, %struct.bhdr_struct** %53, align 8, !dbg !470, !tbaa !145
  %55 = ptrtoint %struct.area_info_struct* %52 to i64, !dbg !472
  %56 = icmp eq i64 %42, %55, !dbg !474
  br i1 %56, label %57, label %85, !dbg !475

; <label>:57:                                     ; preds = %49
  %58 = bitcast %struct.area_info_struct* %50 to i8*, !dbg !437
  %59 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 -1, i32 1, !dbg !476
  %60 = bitcast %struct.area_info_struct** %59 to i64*, !dbg !476
  %61 = load i64, i64* %60, align 8, !dbg !476, !tbaa !101
  %62 = and i64 %61, 4294967288, !dbg !476
  %63 = getelementptr inbounds i8, i8* %58, i64 %62, !dbg !476
  %64 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !477, !tbaa !151
  %65 = icmp eq %struct.area_info_struct* %64, %50, !dbg !480
  %66 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !481
  %67 = bitcast %struct.area_info_struct** %66 to i64*, !dbg !481
  %68 = load i64, i64* %67, align 8, !dbg !481, !tbaa !142
  br i1 %65, label %69, label %71, !dbg !483

; <label>:69:                                     ; preds = %57
  %70 = inttoptr i64 %68 to %struct.area_info_struct*, !dbg !483
  store i64 %68, i64* %34, align 8, !dbg !484, !tbaa !151
  br label %75, !dbg !486

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !487
  %73 = bitcast %struct.area_info_struct** %72 to i64*, !dbg !488
  store i64 %68, i64* %73, align 8, !dbg !488, !tbaa !142
  %74 = load %struct.area_info_struct*, %struct.area_info_struct** %66, align 8, !dbg !481, !tbaa !142
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi %struct.area_info_struct* [ %74, %71 ], [ %70, %69 ], !dbg !481
  %77 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !489
  %78 = load i64, i64* %77, align 8, !dbg !489, !tbaa !101
  %79 = and i64 %78, 4294967288, !dbg !489
  %80 = add nuw nsw i64 %62, 32, !dbg !489
  %81 = add nuw nsw i64 %80, %79, !dbg !489
  %82 = and i64 %81, 17179869168, !dbg !489
  store i64 %82, i64* %77, align 8, !dbg !490, !tbaa !101
  %83 = bitcast i8* %63 to %struct.bhdr_struct**, !dbg !491
  store %struct.bhdr_struct* %47, %struct.bhdr_struct** %83, align 8, !dbg !492, !tbaa !136
  %84 = icmp eq %struct.area_info_struct* %76, null, !dbg !467
  br i1 %84, label %127, label %35, !dbg !467, !llvm.loop !493

; <label>:85:                                     ; preds = %49
  %86 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 2, !dbg !495
  %87 = icmp eq %union.anon* %86, %48, !dbg !497
  br i1 %87, label %88, label %121, !dbg !498

; <label>:88:                                     ; preds = %85
  %89 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !499
  %90 = bitcast %struct.bhdr_struct* %46 to i8*, !dbg !500
  %91 = load %struct.area_info_struct*, %struct.area_info_struct** %6, align 8, !dbg !501, !tbaa !151
  %92 = icmp eq %struct.area_info_struct* %91, %50, !dbg !504
  %93 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !505
  %94 = bitcast %struct.area_info_struct** %93 to i64*, !dbg !505
  %95 = load i64, i64* %94, align 8, !dbg !505, !tbaa !142
  br i1 %92, label %96, label %98, !dbg !507

; <label>:96:                                     ; preds = %88
  %97 = inttoptr i64 %95 to %struct.area_info_struct*, !dbg !507
  store i64 %95, i64* %34, align 8, !dbg !508, !tbaa !151
  br label %102, !dbg !510

; <label>:98:                                     ; preds = %88
  %99 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %51, i64 0, i32 1, !dbg !511
  %100 = bitcast %struct.area_info_struct** %99 to i64*, !dbg !512
  store i64 %95, i64* %100, align 8, !dbg !512, !tbaa !142
  %101 = load %struct.area_info_struct*, %struct.area_info_struct** %93, align 8, !dbg !505, !tbaa !142
  br label %102

; <label>:102:                                    ; preds = %98, %96
  %103 = phi %struct.area_info_struct* [ %101, %98 ], [ %97, %96 ], !dbg !505
  %104 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %47, i64 0, i32 1, !dbg !513
  %105 = load i64, i64* %104, align 8, !dbg !513, !tbaa !101
  %106 = and i64 %105, 4294967288, !dbg !513
  %107 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %46, i64 0, i32 1, !dbg !513
  %108 = load i64, i64* %107, align 8, !dbg !513, !tbaa !101
  %109 = and i64 %108, 4294967288, !dbg !513
  %110 = add nuw nsw i64 %106, 32, !dbg !513
  %111 = add nuw nsw i64 %110, %109, !dbg !513
  %112 = and i64 %111, 17179869168, !dbg !513
  %113 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %54, i64 0, i32 1, !dbg !514
  %114 = load i64, i64* %113, align 8, !dbg !514, !tbaa !101
  %115 = and i64 %114, 2, !dbg !515
  %116 = or i64 %112, %115, !dbg !516
  store i64 %116, i64* %113, align 8, !dbg !517, !tbaa !101
  %117 = and i64 %111, 4294967280, !dbg !518
  %118 = getelementptr inbounds i8, i8* %90, i64 %117, !dbg !518
  %119 = bitcast i8* %118 to %struct.bhdr_struct**, !dbg !520
  store %struct.bhdr_struct* %54, %struct.bhdr_struct** %119, align 8, !dbg !521, !tbaa !136
  %120 = icmp eq %struct.area_info_struct* %103, null, !dbg !467
  br i1 %120, label %125, label %43, !dbg !467, !llvm.loop !493

; <label>:121:                                    ; preds = %85
  %122 = getelementptr inbounds %struct.area_info_struct, %struct.area_info_struct* %50, i64 0, i32 1, !dbg !522
  %123 = load %struct.area_info_struct*, %struct.area_info_struct** %122, align 8, !dbg !522, !tbaa !142
  %124 = icmp eq %struct.area_info_struct* %123, null, !dbg !467
  br i1 %124, label %127, label %49, !dbg !467, !llvm.loop !493

; <label>:125:                                    ; preds = %102
  %126 = bitcast %struct.area_info_struct* %52 to %struct.bhdr_struct*, !dbg !499
  br label %127, !dbg !523

; <label>:127:                                    ; preds = %75, %121, %3, %125
  %128 = phi %struct.bhdr_struct* [ %40, %125 ], [ %32, %3 ], [ %40, %121 ], [ %54, %75 ]
  %129 = phi %struct.bhdr_struct* [ %54, %125 ], [ %28, %3 ], [ %47, %121 ], [ %47, %75 ]
  %130 = phi %struct.bhdr_struct* [ %126, %125 ], [ %8, %3 ], [ %46, %121 ], [ %46, %75 ]
  %131 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, !dbg !523
  %132 = load i64, i64* %34, align 8, !dbg !525, !tbaa !151
  %133 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %130, i64 0, i32 2, i32 0, i32 1, !dbg !526
  %134 = bitcast %struct.bhdr_struct** %133 to i64*, !dbg !527
  store i64 %132, i64* %134, align 8, !dbg !527, !tbaa !142
  %135 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i32 0, !dbg !528
  store %struct.bhdr_struct* %128, %struct.bhdr_struct** %135, align 8, !dbg !529, !tbaa !145
  %136 = bitcast i8* %5 to %union.anon**, !dbg !530
  store %union.anon* %131, %union.anon** %136, align 8, !dbg !530, !tbaa !151
  %137 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 2, !dbg !531
  %138 = bitcast %union.anon* %137 to i8*, !dbg !532
  tail call void @free_ex(i8* nonnull %138, i8* %2) #5, !dbg !533
  %139 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %129, i64 0, i32 1, !dbg !534
  %140 = load i64, i64* %139, align 8, !dbg !534, !tbaa !101
  %141 = and i64 %140, 4294967288, !dbg !535
  ret i64 %141, !dbg !536
}

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @get_used_size(i8* nocapture readnone) local_unnamed_addr #2 !dbg !537 {
  ret i64 0, !dbg !543
}

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @get_max_size(i8* nocapture readnone) local_unnamed_addr #2 !dbg !544 {
  ret i64 0, !dbg !548
}

; Function Attrs: noredzone nounwind
define dso_local void @destroy_memory_pool(i8* nocapture) local_unnamed_addr #0 !dbg !549 {
  %2 = bitcast i8* %0 to i32*, !dbg !557
  store i32 0, i32* %2, align 8, !dbg !558, !tbaa !90
  ret void, !dbg !559
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_malloc(i64, i8* nocapture) local_unnamed_addr #0 !dbg !560 {
  %3 = tail call i8* @malloc_ex(i64 %0, i8* %1) #5, !dbg !569
  ret i8* %3, !dbg !571
}

; Function Attrs: noredzone nounwind
define dso_local i8* @malloc_ex(i64, i8* nocapture) local_unnamed_addr #0 !dbg !572 {
  %3 = bitcast i8* %1 to %struct.TLSF_struct*, !dbg !585
  %4 = icmp ult i64 %0, 16, !dbg !587
  %5 = add i64 %0, 15, !dbg !588
  %6 = and i64 %5, -16, !dbg !588
  %7 = select i1 %4, i64 16, i64 %6, !dbg !589
  %8 = icmp ult i64 %7, 128, !dbg !590
  br i1 %8, label %9, label %12, !dbg !602

; <label>:9:                                      ; preds = %2
  %10 = lshr exact i64 %7, 2, !dbg !603
  %11 = trunc i64 %10 to i32, !dbg !605
  br label %50, !dbg !606

; <label>:12:                                     ; preds = %2
  %13 = trunc i64 %7 to i32, !dbg !607
  %14 = icmp ult i32 %13, 65536, !dbg !612
  %15 = icmp ult i32 %13, 256, !dbg !613
  %16 = select i1 %15, i32 0, i32 8, !dbg !614
  %17 = icmp ult i32 %13, 16777216, !dbg !615
  %18 = select i1 %17, i32 16, i32 24, !dbg !616
  %19 = select i1 %14, i32 %16, i32 %18, !dbg !617
  %20 = lshr i32 %13, %19, !dbg !619
  %21 = zext i32 %20 to i64, !dbg !620
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %21, !dbg !620
  %23 = load i32, i32* %22, align 4, !dbg !620, !tbaa !228
  %24 = add nsw i32 %19, -5, !dbg !621
  %25 = add i32 %24, %23, !dbg !622
  %26 = shl nsw i32 -1, %25, !dbg !623
  %27 = xor i32 %26, -1, !dbg !623
  %28 = sext i32 %27 to i64, !dbg !625
  %29 = add i64 %7, %28, !dbg !626
  %30 = trunc i64 %29 to i32, !dbg !627
  %31 = icmp ult i32 %30, 65536, !dbg !631
  %32 = icmp ult i32 %30, 256, !dbg !632
  %33 = select i1 %32, i32 0, i32 8, !dbg !633
  %34 = icmp ult i32 %30, 16777216, !dbg !634
  %35 = select i1 %34, i32 16, i32 24, !dbg !635
  %36 = select i1 %31, i32 %33, i32 %35, !dbg !636
  %37 = lshr i32 %30, %36, !dbg !638
  %38 = zext i32 %37 to i64, !dbg !639
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %38, !dbg !639
  %40 = load i32, i32* %39, align 4, !dbg !639, !tbaa !228
  %41 = add i32 %36, %40, !dbg !640
  %42 = add nsw i32 %41, -5, !dbg !641
  %43 = zext i32 %42 to i64, !dbg !642
  %44 = lshr i64 %29, %43, !dbg !642
  %45 = trunc i64 %44 to i32, !dbg !643
  %46 = add i32 %45, -32, !dbg !643
  %47 = add nsw i32 %41, -6, !dbg !644
  %48 = sext i32 %26 to i64, !dbg !645
  %49 = and i64 %29, %48, !dbg !646
  br label %50

; <label>:50:                                     ; preds = %9, %12
  %51 = phi i64 [ %7, %9 ], [ %49, %12 ], !dbg !647
  %52 = phi i32 [ 0, %9 ], [ %47, %12 ], !dbg !647
  %53 = phi i32 [ %11, %9 ], [ %46, %12 ], !dbg !647
  %54 = sext i32 %52 to i64, !dbg !659
  %55 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %54, !dbg !659
  %56 = load i32, i32* %55, align 4, !dbg !659, !tbaa !228
  %57 = shl i32 -1, %53, !dbg !660
  %58 = and i32 %57, %56, !dbg !661
  %59 = icmp eq i32 %58, 0, !dbg !664
  br i1 %59, label %74, label %60, !dbg !666

; <label>:60:                                     ; preds = %50
  %61 = sub nsw i32 0, %58, !dbg !675
  %62 = and i32 %58, %61, !dbg !676
  %63 = icmp ult i32 %62, 65536, !dbg !678
  %64 = icmp ult i32 %62, 256, !dbg !679
  %65 = select i1 %64, i32 0, i32 8, !dbg !680
  %66 = icmp ult i32 %62, 16777216, !dbg !681
  %67 = select i1 %66, i32 16, i32 24, !dbg !682
  %68 = select i1 %63, i32 %65, i32 %67, !dbg !683
  %69 = lshr i32 %62, %68, !dbg !685
  %70 = zext i32 %69 to i64, !dbg !686
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %70, !dbg !686
  %72 = load i32, i32* %71, align 4, !dbg !686, !tbaa !228
  %73 = add i32 %72, %68, !dbg !687
  br label %112, !dbg !688

; <label>:74:                                     ; preds = %50
  %75 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !689
  %76 = bitcast i8* %75 to i32*, !dbg !689
  %77 = load i32, i32* %76, align 8, !dbg !689, !tbaa !691
  %78 = add nsw i32 %52, 1, !dbg !692
  %79 = shl i32 -1, %78, !dbg !693
  %80 = and i32 %77, %79, !dbg !694
  %81 = sub nsw i32 0, %80, !dbg !697
  %82 = and i32 %80, %81, !dbg !698
  %83 = icmp ult i32 %82, 65536, !dbg !700
  %84 = icmp ult i32 %82, 256, !dbg !701
  %85 = select i1 %84, i32 0, i32 8, !dbg !702
  %86 = icmp ult i32 %82, 16777216, !dbg !703
  %87 = select i1 %86, i32 16, i32 24, !dbg !704
  %88 = select i1 %83, i32 %85, i32 %87, !dbg !705
  %89 = lshr i32 %82, %88, !dbg !707
  %90 = zext i32 %89 to i64, !dbg !708
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %90, !dbg !708
  %92 = load i32, i32* %91, align 4, !dbg !708, !tbaa !228
  %93 = add i32 %88, %92, !dbg !709
  %94 = icmp sgt i32 %93, 0, !dbg !710
  br i1 %94, label %95, label %248, !dbg !712

; <label>:95:                                     ; preds = %74
  %96 = sext i32 %93 to i64, !dbg !713
  %97 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 3, i64 %96, !dbg !713
  %98 = load i32, i32* %97, align 4, !dbg !713, !tbaa !228
  %99 = sub nsw i32 0, %98, !dbg !717
  %100 = and i32 %98, %99, !dbg !718
  %101 = icmp ult i32 %100, 65536, !dbg !720
  %102 = icmp ult i32 %100, 256, !dbg !721
  %103 = select i1 %102, i32 0, i32 8, !dbg !722
  %104 = icmp ult i32 %100, 16777216, !dbg !723
  %105 = select i1 %104, i32 16, i32 24, !dbg !724
  %106 = select i1 %101, i32 %103, i32 %105, !dbg !725
  %107 = lshr i32 %100, %106, !dbg !727
  %108 = zext i32 %107 to i64, !dbg !728
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %108, !dbg !728
  %110 = load i32, i32* %109, align 4, !dbg !728, !tbaa !228
  %111 = add i32 %106, %110, !dbg !729
  br label %112, !dbg !730

; <label>:112:                                    ; preds = %60, %95
  %113 = phi i32 [ %73, %60 ], [ %111, %95 ]
  %114 = phi i64 [ %54, %60 ], [ %96, %95 ]
  %115 = phi i32 [ %52, %60 ], [ %93, %95 ], !dbg !647
  %116 = sext i32 %113 to i64, !dbg !647
  %117 = getelementptr inbounds %struct.TLSF_struct, %struct.TLSF_struct* %3, i64 0, i32 4, i64 %114, i64 %116, !dbg !647
  %118 = load %struct.bhdr_struct*, %struct.bhdr_struct** %117, align 8, !dbg !731, !tbaa !243
  %119 = icmp eq %struct.bhdr_struct* %118, null, !dbg !733
  br i1 %119, label %248, label %120, !dbg !735

; <label>:120:                                    ; preds = %112
  %121 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %118, i64 0, i32 2, !dbg !736
  %122 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %118, i64 0, i32 2, i32 0, i32 1, !dbg !736
  %123 = bitcast %struct.bhdr_struct** %122 to i64*, !dbg !736
  %124 = load i64, i64* %123, align 8, !dbg !736, !tbaa !132
  %125 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !736
  %126 = bitcast i8* %125 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !736
  %127 = sext i32 %115 to i64, !dbg !736
  %128 = sext i32 %113 to i64, !dbg !736
  %129 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %126, i64 0, i64 %127, i64 %128, !dbg !736
  %130 = bitcast %struct.bhdr_struct** %129 to i64*, !dbg !736
  store i64 %124, i64* %130, align 8, !dbg !736, !tbaa !243
  %131 = icmp eq i64 %124, 0, !dbg !740
  br i1 %131, label %135, label %132, !dbg !736

; <label>:132:                                    ; preds = %120
  %133 = inttoptr i64 %124 to %struct.bhdr_struct*, !dbg !740
  %134 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %133, i64 0, i32 2, i32 0, i32 0, !dbg !740
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %134, align 8, !dbg !740, !tbaa !132
  br label %160, !dbg !740

; <label>:135:                                    ; preds = %120
  %136 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !742
  %137 = bitcast i8* %136 to [24 x i32]*, !dbg !742
  %138 = getelementptr inbounds [24 x i32], [24 x i32]* %137, i64 0, i64 %127, !dbg !742
  %139 = and i32 %113, 31, !dbg !747
  %140 = shl i32 1, %139, !dbg !748
  %141 = xor i32 %140, -1, !dbg !749
  %142 = ashr i32 %113, 5, !dbg !750
  %143 = sext i32 %142 to i64, !dbg !751
  %144 = getelementptr inbounds i32, i32* %138, i64 %143, !dbg !751
  %145 = load i32, i32* %144, align 4, !dbg !752, !tbaa !228
  %146 = and i32 %145, %141, !dbg !752
  store i32 %146, i32* %144, align 4, !dbg !752, !tbaa !228
  %147 = load i32, i32* %138, align 4, !dbg !753, !tbaa !228
  %148 = icmp eq i32 %147, 0, !dbg !753
  br i1 %148, label %149, label %160, !dbg !742

; <label>:149:                                    ; preds = %135
  %150 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !753
  %151 = bitcast i8* %150 to i32*, !dbg !753
  %152 = and i32 %115, 31, !dbg !758
  %153 = shl i32 1, %152, !dbg !759
  %154 = xor i32 %153, -1, !dbg !760
  %155 = ashr i32 %115, 5, !dbg !761
  %156 = sext i32 %155 to i64, !dbg !762
  %157 = getelementptr inbounds i32, i32* %151, i64 %156, !dbg !762
  %158 = load i32, i32* %157, align 4, !dbg !763, !tbaa !228
  %159 = and i32 %158, %154, !dbg !763
  store i32 %159, i32* %157, align 4, !dbg !763, !tbaa !228
  br label %160, !dbg !753

; <label>:160:                                    ; preds = %135, %149, %132
  %161 = bitcast %union.anon* %121 to <2 x %struct.bhdr_struct*>*, !dbg !736
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %161, align 8, !dbg !736, !tbaa !132
  %162 = bitcast %union.anon* %121 to i8*, !dbg !764
  %163 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %118, i64 0, i32 1, !dbg !764
  %164 = load i64, i64* %163, align 8, !dbg !764, !tbaa !101
  %165 = and i64 %164, 4294967288, !dbg !764
  %166 = getelementptr inbounds i8, i8* %162, i64 %165, !dbg !764
  %167 = sub i64 %165, %51, !dbg !765
  %168 = icmp ugt i64 %167, 31, !dbg !767
  br i1 %168, label %169, label %240, !dbg !769

; <label>:169:                                    ; preds = %160
  %170 = add i64 %167, -16, !dbg !771
  %171 = getelementptr inbounds i8, i8* %162, i64 %51, !dbg !773
  %172 = or i64 %170, 1, !dbg !774
  %173 = getelementptr inbounds i8, i8* %171, i64 8, !dbg !775
  %174 = bitcast i8* %173 to i64*, !dbg !775
  store i64 %172, i64* %174, align 8, !dbg !776, !tbaa !101
  %175 = bitcast i8* %166 to i8**, !dbg !777
  store i8* %171, i8** %175, align 8, !dbg !777, !tbaa !136
  %176 = icmp ult i64 %170, 128, !dbg !780
  br i1 %176, label %177, label %180, !dbg !781

; <label>:177:                                    ; preds = %169
  %178 = lshr i64 %170, 2, !dbg !782
  %179 = trunc i64 %178 to i32, !dbg !783
  br label %199, !dbg !784

; <label>:180:                                    ; preds = %169
  %181 = trunc i64 %170 to i32, !dbg !785
  %182 = icmp ult i32 %181, 65536, !dbg !789
  %183 = icmp ult i32 %181, 256, !dbg !790
  %184 = select i1 %183, i32 0, i32 8, !dbg !791
  %185 = icmp ult i32 %181, 16777216, !dbg !792
  %186 = select i1 %185, i32 16, i32 24, !dbg !793
  %187 = select i1 %182, i32 %184, i32 %186, !dbg !794
  %188 = lshr i32 %181, %187, !dbg !796
  %189 = zext i32 %188 to i64, !dbg !797
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %189, !dbg !797
  %191 = load i32, i32* %190, align 4, !dbg !797, !tbaa !228
  %192 = add i32 %191, %187, !dbg !798
  %193 = add nsw i32 %192, -5, !dbg !799
  %194 = zext i32 %193 to i64, !dbg !800
  %195 = lshr i64 %170, %194, !dbg !800
  %196 = trunc i64 %195 to i32, !dbg !801
  %197 = add i32 %196, -32, !dbg !801
  %198 = add nsw i32 %192, -6, !dbg !802
  br label %199

; <label>:199:                                    ; preds = %177, %180
  %200 = phi i32 [ 0, %177 ], [ %198, %180 ], !dbg !803
  %201 = phi i32 [ %179, %177 ], [ %197, %180 ], !dbg !803
  %202 = getelementptr inbounds i8, i8* %171, i64 16, !dbg !804
  %203 = bitcast i8* %202 to %struct.bhdr_struct**, !dbg !804
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %203, align 8, !dbg !804, !tbaa !132
  %204 = sext i32 %200 to i64, !dbg !804
  %205 = sext i32 %201 to i64, !dbg !804
  %206 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %126, i64 0, i64 %204, i64 %205, !dbg !804
  %207 = bitcast %struct.bhdr_struct** %206 to i64*, !dbg !804
  %208 = load i64, i64* %207, align 8, !dbg !804, !tbaa !243
  %209 = getelementptr inbounds i8, i8* %202, i64 8, !dbg !804
  %210 = bitcast i8* %209 to i64*, !dbg !804
  store i64 %208, i64* %210, align 8, !dbg !804, !tbaa !132
  %211 = load %struct.bhdr_struct*, %struct.bhdr_struct** %206, align 8, !dbg !806, !tbaa !243
  %212 = icmp eq %struct.bhdr_struct* %211, null, !dbg !806
  br i1 %212, label %216, label %213, !dbg !804

; <label>:213:                                    ; preds = %199
  %214 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %211, i64 0, i32 2, i32 0, i32 0, !dbg !806
  %215 = bitcast %struct.bhdr_struct** %214 to i8**, !dbg !806
  store i8* %171, i8** %215, align 8, !dbg !806, !tbaa !132
  br label %216, !dbg !806

; <label>:216:                                    ; preds = %199, %213
  %217 = bitcast %struct.bhdr_struct** %206 to i8**, !dbg !804
  store i8* %171, i8** %217, align 8, !dbg !804, !tbaa !243
  %218 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !804
  %219 = bitcast i8* %218 to [24 x i32]*, !dbg !804
  %220 = getelementptr inbounds [24 x i32], [24 x i32]* %219, i64 0, i64 %204, !dbg !804
  %221 = and i32 %201, 31, !dbg !812
  %222 = shl i32 1, %221, !dbg !813
  %223 = ashr i32 %201, 5, !dbg !814
  %224 = sext i32 %223 to i64, !dbg !815
  %225 = getelementptr inbounds i32, i32* %220, i64 %224, !dbg !815
  %226 = load i32, i32* %225, align 4, !dbg !816, !tbaa !228
  %227 = or i32 %226, %222, !dbg !816
  store i32 %227, i32* %225, align 4, !dbg !816, !tbaa !228
  %228 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !804
  %229 = bitcast i8* %228 to i32*, !dbg !804
  %230 = and i32 %200, 31, !dbg !820
  %231 = shl i32 1, %230, !dbg !821
  %232 = ashr i32 %200, 5, !dbg !822
  %233 = sext i32 %232 to i64, !dbg !823
  %234 = getelementptr inbounds i32, i32* %229, i64 %233, !dbg !823
  %235 = load i32, i32* %234, align 4, !dbg !824, !tbaa !228
  %236 = or i32 %235, %231, !dbg !824
  store i32 %236, i32* %234, align 4, !dbg !824, !tbaa !228
  %237 = load i64, i64* %163, align 8, !dbg !825, !tbaa !101
  %238 = and i64 %237, 2, !dbg !826
  %239 = or i64 %238, %51, !dbg !827
  br label %246, !dbg !828

; <label>:240:                                    ; preds = %160
  %241 = getelementptr inbounds i8, i8* %166, i64 8, !dbg !829
  %242 = bitcast i8* %241 to i64*, !dbg !829
  %243 = load i64, i64* %242, align 8, !dbg !831, !tbaa !101
  %244 = and i64 %243, -3, !dbg !831
  store i64 %244, i64* %242, align 8, !dbg !831, !tbaa !101
  %245 = and i64 %164, -2, !dbg !832
  br label %246

; <label>:246:                                    ; preds = %216, %240
  %247 = phi i64 [ %245, %240 ], [ %239, %216 ]
  store i64 %247, i64* %163, align 8, !dbg !803, !tbaa !101
  br label %248, !dbg !833

; <label>:248:                                    ; preds = %74, %112, %246
  %249 = phi i8* [ %162, %246 ], [ null, %112 ], [ null, %74 ], !dbg !834
  ret i8* %249, !dbg !835
}

; Function Attrs: noredzone nounwind
define dso_local void @tlsf_free(i8*, i8* nocapture) local_unnamed_addr #0 !dbg !836 {
  tail call void @free_ex(i8* %0, i8* %1) #5, !dbg !842
  ret void, !dbg !843
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_realloc(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !844 {
  %4 = tail call i8* @realloc_ex(i8* %0, i64 %1, i8* %2) #5, !dbg !855
  ret i8* %4, !dbg !857
}

; Function Attrs: noredzone nounwind
define dso_local i8* @realloc_ex(i8*, i64, i8* nocapture) local_unnamed_addr #0 !dbg !858 {
  %4 = icmp eq i8* %0, null, !dbg !876
  %5 = icmp ne i64 %1, 0, !dbg !878
  br i1 %4, label %6, label %9, !dbg !881

; <label>:6:                                      ; preds = %3
  br i1 %5, label %7, label %391, !dbg !882

; <label>:7:                                      ; preds = %6
  %8 = tail call i8* @malloc_ex(i64 %1, i8* %2) #5, !dbg !883
  br label %391, !dbg !884

; <label>:9:                                      ; preds = %3
  br i1 %5, label %11, label %10, !dbg !885

; <label>:10:                                     ; preds = %9
  tail call void @free_ex(i8* nonnull %0, i8* %2) #5, !dbg !886
  br label %391, !dbg !889

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %0, i64 -16, !dbg !890
  %13 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !892
  %14 = bitcast i8* %13 to i64*, !dbg !892
  %15 = load i64, i64* %14, align 8, !dbg !892, !tbaa !101
  %16 = and i64 %15, 4294967288, !dbg !892
  %17 = getelementptr inbounds i8, i8* %0, i64 %16, !dbg !892
  %18 = bitcast i8* %17 to %struct.bhdr_struct*, !dbg !892
  %19 = icmp ult i64 %1, 16, !dbg !894
  %20 = add i64 %1, 15, !dbg !895
  %21 = and i64 %20, -16, !dbg !895
  %22 = select i1 %19, i64 16, i64 %21, !dbg !896
  %23 = icmp ugt i64 %22, %16, !dbg !898
  %24 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !900
  %25 = bitcast i8* %24 to i64*, !dbg !900
  %26 = load i64, i64* %25, align 8, !dbg !900, !tbaa !101
  %27 = and i64 %26, 1, !dbg !900
  %28 = icmp ne i64 %27, 0, !dbg !900
  br i1 %23, label %204, label %29, !dbg !902

; <label>:29:                                     ; preds = %11
  br i1 %28, label %30, label %123, !dbg !903

; <label>:30:                                     ; preds = %29
  %31 = and i64 %26, 4294967288, !dbg !905
  %32 = icmp ult i64 %31, 128, !dbg !910
  br i1 %32, label %33, label %36, !dbg !911

; <label>:33:                                     ; preds = %30
  %34 = lshr exact i64 %31, 2, !dbg !912
  %35 = trunc i64 %34 to i32, !dbg !913
  br label %55, !dbg !914

; <label>:36:                                     ; preds = %30
  %37 = trunc i64 %31 to i32, !dbg !915
  %38 = icmp ult i32 %37, 65536, !dbg !919
  %39 = icmp ult i32 %37, 256, !dbg !920
  %40 = select i1 %39, i32 0, i32 8, !dbg !921
  %41 = icmp ult i32 %37, 16777216, !dbg !922
  %42 = select i1 %41, i32 16, i32 24, !dbg !923
  %43 = select i1 %38, i32 %40, i32 %42, !dbg !924
  %44 = lshr i32 %37, %43, !dbg !926
  %45 = zext i32 %44 to i64, !dbg !927
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %45, !dbg !927
  %47 = load i32, i32* %46, align 4, !dbg !927, !tbaa !228
  %48 = add i32 %47, %43, !dbg !928
  %49 = add nsw i32 %48, -5, !dbg !929
  %50 = zext i32 %49 to i64, !dbg !930
  %51 = lshr i64 %31, %50, !dbg !930
  %52 = trunc i64 %51 to i32, !dbg !931
  %53 = add i32 %52, -32, !dbg !931
  %54 = add nsw i32 %48, -6, !dbg !932
  br label %55

; <label>:55:                                     ; preds = %33, %36
  %56 = phi i32 [ 0, %33 ], [ %54, %36 ], !dbg !933
  %57 = phi i32 [ %35, %33 ], [ %53, %36 ], !dbg !933
  %58 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !934
  %59 = getelementptr inbounds i8, i8* %58, i64 8, !dbg !934
  %60 = bitcast i8* %59 to %struct.bhdr_struct**, !dbg !934
  %61 = load %struct.bhdr_struct*, %struct.bhdr_struct** %60, align 8, !dbg !934, !tbaa !132
  %62 = icmp eq %struct.bhdr_struct* %61, null, !dbg !934
  br i1 %62, label %68, label %63, !dbg !937

; <label>:63:                                     ; preds = %55
  %64 = bitcast i8* %58 to i64*, !dbg !934
  %65 = load i64, i64* %64, align 8, !dbg !934, !tbaa !132
  %66 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %61, i64 0, i32 2, !dbg !934
  %67 = bitcast %union.anon* %66 to i64*, !dbg !934
  store i64 %65, i64* %67, align 8, !dbg !934, !tbaa !132
  br label %68, !dbg !934

; <label>:68:                                     ; preds = %55, %63
  %69 = bitcast i8* %58 to %struct.bhdr_struct**, !dbg !938
  %70 = load %struct.bhdr_struct*, %struct.bhdr_struct** %69, align 8, !dbg !938, !tbaa !132
  %71 = icmp eq %struct.bhdr_struct* %70, null, !dbg !938
  br i1 %71, label %77, label %72, !dbg !937

; <label>:72:                                     ; preds = %68
  %73 = bitcast i8* %59 to i64*, !dbg !938
  %74 = load i64, i64* %73, align 8, !dbg !938, !tbaa !132
  %75 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %70, i64 0, i32 2, i32 0, i32 1, !dbg !938
  %76 = bitcast %struct.bhdr_struct** %75 to i64*, !dbg !938
  store i64 %74, i64* %76, align 8, !dbg !938, !tbaa !132
  br label %77, !dbg !938

; <label>:77:                                     ; preds = %68, %72
  %78 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !940
  %79 = bitcast i8* %78 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !940
  %80 = sext i32 %56 to i64, !dbg !940
  %81 = sext i32 %57 to i64, !dbg !940
  %82 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %79, i64 0, i64 %80, i64 %81, !dbg !940
  %83 = load %struct.bhdr_struct*, %struct.bhdr_struct** %82, align 8, !dbg !940, !tbaa !243
  %84 = icmp eq %struct.bhdr_struct* %83, %18, !dbg !940
  br i1 %84, label %85, label %115, !dbg !937

; <label>:85:                                     ; preds = %77
  %86 = bitcast i8* %59 to i64*, !dbg !944
  %87 = load i64, i64* %86, align 8, !dbg !944, !tbaa !132
  %88 = bitcast %struct.bhdr_struct** %82 to i64*, !dbg !944
  store i64 %87, i64* %88, align 8, !dbg !944, !tbaa !243
  %89 = icmp eq i64 %87, 0, !dbg !946
  br i1 %89, label %90, label %115, !dbg !944

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !948
  %92 = bitcast i8* %91 to [24 x i32]*, !dbg !948
  %93 = getelementptr inbounds [24 x i32], [24 x i32]* %92, i64 0, i64 %80, !dbg !948
  %94 = and i32 %57, 31, !dbg !953
  %95 = shl i32 1, %94, !dbg !954
  %96 = xor i32 %95, -1, !dbg !955
  %97 = ashr i32 %57, 5, !dbg !956
  %98 = sext i32 %97 to i64, !dbg !957
  %99 = getelementptr inbounds i32, i32* %93, i64 %98, !dbg !957
  %100 = load i32, i32* %99, align 4, !dbg !958, !tbaa !228
  %101 = and i32 %100, %96, !dbg !958
  store i32 %101, i32* %99, align 4, !dbg !958, !tbaa !228
  %102 = load i32, i32* %93, align 4, !dbg !959, !tbaa !228
  %103 = icmp eq i32 %102, 0, !dbg !959
  br i1 %103, label %104, label %115, !dbg !948

; <label>:104:                                    ; preds = %90
  %105 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !959
  %106 = bitcast i8* %105 to i32*, !dbg !959
  %107 = and i32 %56, 31, !dbg !964
  %108 = shl i32 1, %107, !dbg !965
  %109 = xor i32 %108, -1, !dbg !966
  %110 = ashr i32 %56, 5, !dbg !967
  %111 = sext i32 %110 to i64, !dbg !968
  %112 = getelementptr inbounds i32, i32* %106, i64 %111, !dbg !968
  %113 = load i32, i32* %112, align 4, !dbg !969, !tbaa !228
  %114 = and i32 %113, %109, !dbg !969
  store i32 %114, i32* %112, align 4, !dbg !969, !tbaa !228
  br label %115, !dbg !959

; <label>:115:                                    ; preds = %90, %85, %104, %77
  %116 = bitcast i8* %58 to <2 x %struct.bhdr_struct*>*, !dbg !937
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %116, align 8, !dbg !937, !tbaa !132
  %117 = load i64, i64* %25, align 8, !dbg !970, !tbaa !101
  %118 = and i64 %117, 4294967288, !dbg !971
  %119 = add nuw nsw i64 %16, 16, !dbg !972
  %120 = add nuw nsw i64 %119, %118, !dbg !973
  %121 = getelementptr inbounds i8, i8* %58, i64 %118, !dbg !974
  %122 = bitcast i8* %121 to %struct.bhdr_struct*, !dbg !974
  br label %123, !dbg !975

; <label>:123:                                    ; preds = %115, %29
  %124 = phi %struct.bhdr_struct* [ %122, %115 ], [ %18, %29 ], !dbg !976
  %125 = phi i64 [ %120, %115 ], [ %16, %29 ], !dbg !976
  %126 = sub i64 %125, %22, !dbg !977
  %127 = icmp ugt i64 %126, 31, !dbg !978
  br i1 %127, label %128, label %391, !dbg !980

; <label>:128:                                    ; preds = %123
  %129 = add i64 %126, -16, !dbg !981
  %130 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !983
  %131 = or i64 %129, 1, !dbg !984
  %132 = getelementptr inbounds i8, i8* %130, i64 8, !dbg !985
  %133 = bitcast i8* %132 to i64*, !dbg !985
  store i64 %131, i64* %133, align 8, !dbg !986, !tbaa !101
  %134 = bitcast %struct.bhdr_struct* %124 to i8**, !dbg !987
  store i8* %130, i8** %134, align 8, !dbg !987, !tbaa !136
  %135 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %124, i64 0, i32 1, !dbg !988
  %136 = load i64, i64* %135, align 8, !dbg !989, !tbaa !101
  %137 = or i64 %136, 2, !dbg !989
  store i64 %137, i64* %135, align 8, !dbg !989, !tbaa !101
  %138 = icmp ult i64 %129, 128, !dbg !992
  br i1 %138, label %139, label %142, !dbg !993

; <label>:139:                                    ; preds = %128
  %140 = lshr i64 %129, 2, !dbg !994
  %141 = trunc i64 %140 to i32, !dbg !995
  br label %161, !dbg !996

; <label>:142:                                    ; preds = %128
  %143 = trunc i64 %129 to i32, !dbg !997
  %144 = icmp ult i32 %143, 65536, !dbg !1001
  %145 = icmp ult i32 %143, 256, !dbg !1002
  %146 = select i1 %145, i32 0, i32 8, !dbg !1003
  %147 = icmp ult i32 %143, 16777216, !dbg !1004
  %148 = select i1 %147, i32 16, i32 24, !dbg !1005
  %149 = select i1 %144, i32 %146, i32 %148, !dbg !1006
  %150 = lshr i32 %143, %149, !dbg !1008
  %151 = zext i32 %150 to i64, !dbg !1009
  %152 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %151, !dbg !1009
  %153 = load i32, i32* %152, align 4, !dbg !1009, !tbaa !228
  %154 = add i32 %153, %149, !dbg !1010
  %155 = add nsw i32 %154, -5, !dbg !1011
  %156 = zext i32 %155 to i64, !dbg !1012
  %157 = lshr i64 %129, %156, !dbg !1012
  %158 = trunc i64 %157 to i32, !dbg !1013
  %159 = add i32 %158, -32, !dbg !1013
  %160 = add nsw i32 %154, -6, !dbg !1014
  br label %161

; <label>:161:                                    ; preds = %139, %142
  %162 = phi i32 [ 0, %139 ], [ %160, %142 ], !dbg !1015
  %163 = phi i32 [ %141, %139 ], [ %159, %142 ], !dbg !1015
  %164 = getelementptr inbounds i8, i8* %130, i64 16, !dbg !1016
  %165 = bitcast i8* %164 to %struct.bhdr_struct**, !dbg !1016
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %165, align 8, !dbg !1016, !tbaa !132
  %166 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1016
  %167 = bitcast i8* %166 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1016
  %168 = sext i32 %162 to i64, !dbg !1016
  %169 = sext i32 %163 to i64, !dbg !1016
  %170 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %167, i64 0, i64 %168, i64 %169, !dbg !1016
  %171 = bitcast %struct.bhdr_struct** %170 to i64*, !dbg !1016
  %172 = load i64, i64* %171, align 8, !dbg !1016, !tbaa !243
  %173 = getelementptr inbounds i8, i8* %164, i64 8, !dbg !1016
  %174 = bitcast i8* %173 to i64*, !dbg !1016
  store i64 %172, i64* %174, align 8, !dbg !1016, !tbaa !132
  %175 = load %struct.bhdr_struct*, %struct.bhdr_struct** %170, align 8, !dbg !1018, !tbaa !243
  %176 = icmp eq %struct.bhdr_struct* %175, null, !dbg !1018
  br i1 %176, label %180, label %177, !dbg !1016

; <label>:177:                                    ; preds = %161
  %178 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %175, i64 0, i32 2, i32 0, i32 0, !dbg !1018
  %179 = bitcast %struct.bhdr_struct** %178 to i8**, !dbg !1018
  store i8* %130, i8** %179, align 8, !dbg !1018, !tbaa !132
  br label %180, !dbg !1018

; <label>:180:                                    ; preds = %161, %177
  %181 = bitcast %struct.bhdr_struct** %170 to i8**, !dbg !1016
  store i8* %130, i8** %181, align 8, !dbg !1016, !tbaa !243
  %182 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1016
  %183 = bitcast i8* %182 to [24 x i32]*, !dbg !1016
  %184 = getelementptr inbounds [24 x i32], [24 x i32]* %183, i64 0, i64 %168, !dbg !1016
  %185 = and i32 %163, 31, !dbg !1024
  %186 = shl i32 1, %185, !dbg !1025
  %187 = ashr i32 %163, 5, !dbg !1026
  %188 = sext i32 %187 to i64, !dbg !1027
  %189 = getelementptr inbounds i32, i32* %184, i64 %188, !dbg !1027
  %190 = load i32, i32* %189, align 4, !dbg !1028, !tbaa !228
  %191 = or i32 %190, %186, !dbg !1028
  store i32 %191, i32* %189, align 4, !dbg !1028, !tbaa !228
  %192 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1016
  %193 = bitcast i8* %192 to i32*, !dbg !1016
  %194 = and i32 %162, 31, !dbg !1032
  %195 = shl i32 1, %194, !dbg !1033
  %196 = ashr i32 %162, 5, !dbg !1034
  %197 = sext i32 %196 to i64, !dbg !1035
  %198 = getelementptr inbounds i32, i32* %193, i64 %197, !dbg !1035
  %199 = load i32, i32* %198, align 4, !dbg !1036, !tbaa !228
  %200 = or i32 %199, %195, !dbg !1036
  store i32 %200, i32* %198, align 4, !dbg !1036, !tbaa !228
  %201 = load i64, i64* %14, align 8, !dbg !1037, !tbaa !101
  %202 = and i64 %201, 2, !dbg !1038
  %203 = or i64 %202, %22, !dbg !1039
  store i64 %203, i64* %14, align 8, !dbg !1040, !tbaa !101
  br label %391, !dbg !1041

; <label>:204:                                    ; preds = %11
  br i1 %28, label %205, label %381, !dbg !1042

; <label>:205:                                    ; preds = %204
  %206 = and i64 %26, 4294967288, !dbg !1043
  %207 = add nuw nsw i64 %206, %16, !dbg !1046
  %208 = icmp ugt i64 %22, %207, !dbg !1047
  br i1 %208, label %381, label %209, !dbg !1048

; <label>:209:                                    ; preds = %205
  %210 = icmp ult i64 %206, 128, !dbg !1052
  br i1 %210, label %211, label %214, !dbg !1053

; <label>:211:                                    ; preds = %209
  %212 = lshr exact i64 %206, 2, !dbg !1054
  %213 = trunc i64 %212 to i32, !dbg !1055
  br label %233, !dbg !1056

; <label>:214:                                    ; preds = %209
  %215 = trunc i64 %206 to i32, !dbg !1057
  %216 = icmp ult i32 %215, 65536, !dbg !1061
  %217 = icmp ult i32 %215, 256, !dbg !1062
  %218 = select i1 %217, i32 0, i32 8, !dbg !1063
  %219 = icmp ult i32 %215, 16777216, !dbg !1064
  %220 = select i1 %219, i32 16, i32 24, !dbg !1065
  %221 = select i1 %216, i32 %218, i32 %220, !dbg !1066
  %222 = lshr i32 %215, %221, !dbg !1068
  %223 = zext i32 %222 to i64, !dbg !1069
  %224 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %223, !dbg !1069
  %225 = load i32, i32* %224, align 4, !dbg !1069, !tbaa !228
  %226 = add i32 %225, %221, !dbg !1070
  %227 = add nsw i32 %226, -5, !dbg !1071
  %228 = zext i32 %227 to i64, !dbg !1072
  %229 = lshr i64 %206, %228, !dbg !1072
  %230 = trunc i64 %229 to i32, !dbg !1073
  %231 = add i32 %230, -32, !dbg !1073
  %232 = add nsw i32 %226, -6, !dbg !1074
  br label %233

; <label>:233:                                    ; preds = %211, %214
  %234 = phi i32 [ 0, %211 ], [ %232, %214 ], !dbg !1075
  %235 = phi i32 [ %213, %211 ], [ %231, %214 ], !dbg !1075
  %236 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !1076
  %237 = getelementptr inbounds i8, i8* %236, i64 8, !dbg !1076
  %238 = bitcast i8* %237 to %struct.bhdr_struct**, !dbg !1076
  %239 = load %struct.bhdr_struct*, %struct.bhdr_struct** %238, align 8, !dbg !1076, !tbaa !132
  %240 = icmp eq %struct.bhdr_struct* %239, null, !dbg !1076
  br i1 %240, label %246, label %241, !dbg !1079

; <label>:241:                                    ; preds = %233
  %242 = bitcast i8* %236 to i64*, !dbg !1076
  %243 = load i64, i64* %242, align 8, !dbg !1076, !tbaa !132
  %244 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %239, i64 0, i32 2, !dbg !1076
  %245 = bitcast %union.anon* %244 to i64*, !dbg !1076
  store i64 %243, i64* %245, align 8, !dbg !1076, !tbaa !132
  br label %246, !dbg !1076

; <label>:246:                                    ; preds = %233, %241
  %247 = bitcast i8* %236 to %struct.bhdr_struct**, !dbg !1080
  %248 = load %struct.bhdr_struct*, %struct.bhdr_struct** %247, align 8, !dbg !1080, !tbaa !132
  %249 = icmp eq %struct.bhdr_struct* %248, null, !dbg !1080
  br i1 %249, label %255, label %250, !dbg !1079

; <label>:250:                                    ; preds = %246
  %251 = bitcast i8* %237 to i64*, !dbg !1080
  %252 = load i64, i64* %251, align 8, !dbg !1080, !tbaa !132
  %253 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %248, i64 0, i32 2, i32 0, i32 1, !dbg !1080
  %254 = bitcast %struct.bhdr_struct** %253 to i64*, !dbg !1080
  store i64 %252, i64* %254, align 8, !dbg !1080, !tbaa !132
  br label %255, !dbg !1080

; <label>:255:                                    ; preds = %246, %250
  %256 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1082
  %257 = bitcast i8* %256 to [24 x [32 x %struct.bhdr_struct*]]*, !dbg !1082
  %258 = sext i32 %234 to i64, !dbg !1082
  %259 = sext i32 %235 to i64, !dbg !1082
  %260 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %257, i64 0, i64 %258, i64 %259, !dbg !1082
  %261 = load %struct.bhdr_struct*, %struct.bhdr_struct** %260, align 8, !dbg !1082, !tbaa !243
  %262 = icmp eq %struct.bhdr_struct* %261, %18, !dbg !1082
  br i1 %262, label %263, label %293, !dbg !1079

; <label>:263:                                    ; preds = %255
  %264 = bitcast i8* %237 to i64*, !dbg !1084
  %265 = load i64, i64* %264, align 8, !dbg !1084, !tbaa !132
  %266 = bitcast %struct.bhdr_struct** %260 to i64*, !dbg !1084
  store i64 %265, i64* %266, align 8, !dbg !1084, !tbaa !243
  %267 = icmp eq i64 %265, 0, !dbg !1086
  br i1 %267, label %268, label %293, !dbg !1084

; <label>:268:                                    ; preds = %263
  %269 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1088
  %270 = bitcast i8* %269 to [24 x i32]*, !dbg !1088
  %271 = getelementptr inbounds [24 x i32], [24 x i32]* %270, i64 0, i64 %258, !dbg !1088
  %272 = and i32 %235, 31, !dbg !1093
  %273 = shl i32 1, %272, !dbg !1094
  %274 = xor i32 %273, -1, !dbg !1095
  %275 = ashr i32 %235, 5, !dbg !1096
  %276 = sext i32 %275 to i64, !dbg !1097
  %277 = getelementptr inbounds i32, i32* %271, i64 %276, !dbg !1097
  %278 = load i32, i32* %277, align 4, !dbg !1098, !tbaa !228
  %279 = and i32 %278, %274, !dbg !1098
  store i32 %279, i32* %277, align 4, !dbg !1098, !tbaa !228
  %280 = load i32, i32* %271, align 4, !dbg !1099, !tbaa !228
  %281 = icmp eq i32 %280, 0, !dbg !1099
  br i1 %281, label %282, label %293, !dbg !1088

; <label>:282:                                    ; preds = %268
  %283 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1099
  %284 = bitcast i8* %283 to i32*, !dbg !1099
  %285 = and i32 %234, 31, !dbg !1104
  %286 = shl i32 1, %285, !dbg !1105
  %287 = xor i32 %286, -1, !dbg !1106
  %288 = ashr i32 %234, 5, !dbg !1107
  %289 = sext i32 %288 to i64, !dbg !1108
  %290 = getelementptr inbounds i32, i32* %284, i64 %289, !dbg !1108
  %291 = load i32, i32* %290, align 4, !dbg !1109, !tbaa !228
  %292 = and i32 %291, %287, !dbg !1109
  store i32 %292, i32* %290, align 4, !dbg !1109, !tbaa !228
  br label %293, !dbg !1099

; <label>:293:                                    ; preds = %268, %263, %282, %255
  %294 = bitcast i8* %236 to <2 x %struct.bhdr_struct*>*, !dbg !1079
  store <2 x %struct.bhdr_struct*> zeroinitializer, <2 x %struct.bhdr_struct*>* %294, align 8, !dbg !1079, !tbaa !132
  %295 = load i64, i64* %25, align 8, !dbg !1110, !tbaa !101
  %296 = and i64 %295, 4294967288, !dbg !1111
  %297 = add nuw nsw i64 %296, 16, !dbg !1112
  %298 = load i64, i64* %14, align 8, !dbg !1113, !tbaa !101
  %299 = add i64 %297, %298, !dbg !1113
  store i64 %299, i64* %14, align 8, !dbg !1113, !tbaa !101
  %300 = and i64 %299, 4294967288, !dbg !1114
  %301 = getelementptr inbounds i8, i8* %0, i64 %300, !dbg !1114
  %302 = bitcast i8* %301 to i8**, !dbg !1115
  store i8* %12, i8** %302, align 8, !dbg !1115, !tbaa !136
  %303 = getelementptr inbounds i8, i8* %301, i64 8, !dbg !1116
  %304 = bitcast i8* %303 to i64*, !dbg !1116
  %305 = load i64, i64* %304, align 8, !dbg !1117, !tbaa !101
  %306 = and i64 %305, -3, !dbg !1117
  store i64 %306, i64* %304, align 8, !dbg !1117, !tbaa !101
  %307 = sub i64 %300, %22, !dbg !1118
  %308 = icmp ugt i64 %307, 31, !dbg !1119
  br i1 %308, label %309, label %391, !dbg !1121

; <label>:309:                                    ; preds = %293
  %310 = add i64 %307, -16, !dbg !1122
  %311 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !1124
  %312 = or i64 %310, 1, !dbg !1125
  %313 = getelementptr inbounds i8, i8* %311, i64 8, !dbg !1126
  %314 = bitcast i8* %313 to i64*, !dbg !1126
  store i64 %312, i64* %314, align 8, !dbg !1127, !tbaa !101
  store i8* %311, i8** %302, align 8, !dbg !1128, !tbaa !136
  %315 = load i64, i64* %304, align 8, !dbg !1129, !tbaa !101
  %316 = or i64 %315, 2, !dbg !1129
  store i64 %316, i64* %304, align 8, !dbg !1129, !tbaa !101
  %317 = icmp ult i64 %310, 128, !dbg !1132
  br i1 %317, label %318, label %321, !dbg !1133

; <label>:318:                                    ; preds = %309
  %319 = lshr exact i64 %310, 2, !dbg !1134
  %320 = trunc i64 %319 to i32, !dbg !1135
  br label %340, !dbg !1136

; <label>:321:                                    ; preds = %309
  %322 = trunc i64 %310 to i32, !dbg !1137
  %323 = icmp ult i32 %322, 65536, !dbg !1141
  %324 = icmp ult i32 %322, 256, !dbg !1142
  %325 = select i1 %324, i32 0, i32 8, !dbg !1143
  %326 = icmp ult i32 %322, 16777216, !dbg !1144
  %327 = select i1 %326, i32 16, i32 24, !dbg !1145
  %328 = select i1 %323, i32 %325, i32 %327, !dbg !1146
  %329 = lshr i32 %322, %328, !dbg !1148
  %330 = zext i32 %329 to i64, !dbg !1149
  %331 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i64 0, i64 %330, !dbg !1149
  %332 = load i32, i32* %331, align 4, !dbg !1149, !tbaa !228
  %333 = add i32 %332, %328, !dbg !1150
  %334 = add nsw i32 %333, -5, !dbg !1151
  %335 = zext i32 %334 to i64, !dbg !1152
  %336 = lshr i64 %310, %335, !dbg !1152
  %337 = trunc i64 %336 to i32, !dbg !1153
  %338 = add i32 %337, -32, !dbg !1153
  %339 = add nsw i32 %333, -6, !dbg !1154
  br label %340

; <label>:340:                                    ; preds = %318, %321
  %341 = phi i32 [ 0, %318 ], [ %339, %321 ], !dbg !1155
  %342 = phi i32 [ %320, %318 ], [ %338, %321 ], !dbg !1155
  %343 = getelementptr inbounds i8, i8* %311, i64 16, !dbg !1156
  %344 = bitcast i8* %343 to %struct.bhdr_struct**, !dbg !1156
  store %struct.bhdr_struct* null, %struct.bhdr_struct** %344, align 8, !dbg !1156, !tbaa !132
  %345 = sext i32 %341 to i64, !dbg !1156
  %346 = sext i32 %342 to i64, !dbg !1156
  %347 = getelementptr inbounds [24 x [32 x %struct.bhdr_struct*]], [24 x [32 x %struct.bhdr_struct*]]* %257, i64 0, i64 %345, i64 %346, !dbg !1156
  %348 = bitcast %struct.bhdr_struct** %347 to i64*, !dbg !1156
  %349 = load i64, i64* %348, align 8, !dbg !1156, !tbaa !243
  %350 = getelementptr inbounds i8, i8* %343, i64 8, !dbg !1156
  %351 = bitcast i8* %350 to i64*, !dbg !1156
  store i64 %349, i64* %351, align 8, !dbg !1156, !tbaa !132
  %352 = load %struct.bhdr_struct*, %struct.bhdr_struct** %347, align 8, !dbg !1158, !tbaa !243
  %353 = icmp eq %struct.bhdr_struct* %352, null, !dbg !1158
  br i1 %353, label %357, label %354, !dbg !1156

; <label>:354:                                    ; preds = %340
  %355 = getelementptr inbounds %struct.bhdr_struct, %struct.bhdr_struct* %352, i64 0, i32 2, i32 0, i32 0, !dbg !1158
  %356 = bitcast %struct.bhdr_struct** %355 to i8**, !dbg !1158
  store i8* %311, i8** %356, align 8, !dbg !1158, !tbaa !132
  br label %357, !dbg !1158

; <label>:357:                                    ; preds = %340, %354
  %358 = bitcast %struct.bhdr_struct** %347 to i8**, !dbg !1156
  store i8* %311, i8** %358, align 8, !dbg !1156, !tbaa !243
  %359 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1156
  %360 = bitcast i8* %359 to [24 x i32]*, !dbg !1156
  %361 = getelementptr inbounds [24 x i32], [24 x i32]* %360, i64 0, i64 %345, !dbg !1156
  %362 = and i32 %342, 31, !dbg !1163
  %363 = shl i32 1, %362, !dbg !1164
  %364 = ashr i32 %342, 5, !dbg !1165
  %365 = sext i32 %364 to i64, !dbg !1166
  %366 = getelementptr inbounds i32, i32* %361, i64 %365, !dbg !1166
  %367 = load i32, i32* %366, align 4, !dbg !1167, !tbaa !228
  %368 = or i32 %367, %363, !dbg !1167
  store i32 %368, i32* %366, align 4, !dbg !1167, !tbaa !228
  %369 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1156
  %370 = bitcast i8* %369 to i32*, !dbg !1156
  %371 = and i32 %341, 31, !dbg !1171
  %372 = shl i32 1, %371, !dbg !1172
  %373 = ashr i32 %341, 5, !dbg !1173
  %374 = sext i32 %373 to i64, !dbg !1174
  %375 = getelementptr inbounds i32, i32* %370, i64 %374, !dbg !1174
  %376 = load i32, i32* %375, align 4, !dbg !1175, !tbaa !228
  %377 = or i32 %376, %372, !dbg !1175
  store i32 %377, i32* %375, align 4, !dbg !1175, !tbaa !228
  %378 = load i64, i64* %14, align 8, !dbg !1176, !tbaa !101
  %379 = and i64 %378, 2, !dbg !1177
  %380 = or i64 %379, %22, !dbg !1178
  store i64 %380, i64* %14, align 8, !dbg !1179, !tbaa !101
  br label %391, !dbg !1180

; <label>:381:                                    ; preds = %205, %204
  %382 = tail call i8* @malloc_ex(i64 %22, i8* %2) #5, !dbg !1181
  %383 = icmp eq i8* %382, null, !dbg !1184
  br i1 %383, label %391, label %384, !dbg !1185

; <label>:384:                                    ; preds = %381
  %385 = load i64, i64* %14, align 8, !dbg !1186, !tbaa !101
  %386 = and i64 %385, 4294967288, !dbg !1187
  %387 = icmp ugt i64 %386, %22, !dbg !1188
  %388 = select i1 %387, i64 %22, i64 %386, !dbg !1189
  %389 = and i64 %388, 4294967295, !dbg !1190
  %390 = tail call i8* @memcpy(i8* nonnull %382, i8* nonnull %0, i64 %389) #4, !dbg !1192
  tail call void @free_ex(i8* nonnull %0, i8* %2) #5, !dbg !1193
  br label %391, !dbg !1194

; <label>:391:                                    ; preds = %381, %357, %293, %180, %123, %6, %384, %10, %7
  %392 = phi i8* [ %382, %384 ], [ null, %10 ], [ %8, %7 ], [ null, %6 ], [ %0, %123 ], [ %0, %180 ], [ %0, %293 ], [ %0, %357 ], [ null, %381 ], !dbg !1195
  ret i8* %392, !dbg !1197
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tlsf_calloc(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1198 {
  %4 = icmp eq i64 %0, 0, !dbg !1219
  %5 = icmp eq i64 %1, 0, !dbg !1221
  %6 = or i1 %4, %5, !dbg !1222
  br i1 %6, label %13, label %7, !dbg !1222

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1223
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #4, !dbg !1225
  %10 = icmp eq i8* %9, null, !dbg !1227
  br i1 %10, label %13, label %11, !dbg !1228

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #4, !dbg !1229
  br label %13, !dbg !1230

; <label>:13:                                     ; preds = %3, %7, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1231
  ret i8* %14, !dbg !1233
}

; Function Attrs: noredzone nounwind
define dso_local i8* @calloc_ex(i64, i64, i8* nocapture) local_unnamed_addr #0 !dbg !1210 {
  %4 = icmp eq i64 %0, 0, !dbg !1237
  %5 = icmp eq i64 %1, 0, !dbg !1238
  %6 = or i1 %4, %5, !dbg !1239
  br i1 %6, label %13, label %7, !dbg !1239

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %1, %0, !dbg !1240
  %9 = tail call i8* @malloc_ex(i64 %8, i8* %2) #5, !dbg !1241
  %10 = icmp eq i8* %9, null, !dbg !1243
  br i1 %10, label %13, label %11, !dbg !1244

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 %8) #4, !dbg !1245
  br label %13, !dbg !1246

; <label>:13:                                     ; preds = %7, %3, %11
  %14 = phi i8* [ %9, %11 ], [ null, %3 ], [ null, %7 ], !dbg !1247
  ret i8* %14, !dbg !1248
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

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
!146 = !DILocation(line: 460, column: 17, scope: !69)
!147 = !DILocation(line: 488, column: 16, scope: !69)
!148 = !DILocation(line: 488, column: 5, scope: !69)
!149 = !DILocation(line: 489, column: 11, scope: !69)
!150 = !DILocation(line: 489, column: 21, scope: !69)
!151 = !{!91, !95, i64 8}
!152 = !DILocation(line: 496, column: 16, scope: !69)
!153 = !DILocation(line: 496, column: 21, scope: !69)
!154 = !DILocation(line: 496, column: 5, scope: !69)
!155 = !DILocation(line: 0, scope: !69)
!156 = !DILocation(line: 497, column: 1, scope: !69)
!157 = distinct !DISubprogram(name: "free_ex", scope: !3, file: !3, line: 754, type: !158, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !58, !58}
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DILocalVariable(name: "ptr", arg: 1, scope: !157, file: !3, line: 754, type: !58)
!162 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !157, file: !3, line: 754, type: !58)
!163 = !DILocalVariable(name: "tlsf", scope: !157, file: !3, line: 757, type: !7)
!164 = !DILocalVariable(name: "b", scope: !157, file: !3, line: 758, type: !20)
!165 = !DILocalVariable(name: "tmp_b", scope: !157, file: !3, line: 758, type: !20)
!166 = !DILocalVariable(name: "fl", scope: !157, file: !3, line: 759, type: !62)
!167 = !DILocalVariable(name: "sl", scope: !157, file: !3, line: 759, type: !62)
!168 = !DILocation(line: 754, column: 20, scope: !157)
!169 = !DILocation(line: 754, column: 31, scope: !157)
!170 = !DILocation(line: 757, column: 13, scope: !157)
!171 = !DILocation(line: 759, column: 9, scope: !157)
!172 = !DILocation(line: 759, column: 17, scope: !157)
!173 = !DILocation(line: 761, column: 10, scope: !174)
!174 = distinct !DILexicalBlock(scope: !157, file: !3, line: 761, column: 9)
!175 = !DILocation(line: 761, column: 9, scope: !157)
!176 = !DILocation(line: 764, column: 34, scope: !157)
!177 = !DILocation(line: 764, column: 9, scope: !157)
!178 = !DILocation(line: 758, column: 13, scope: !157)
!179 = !DILocation(line: 765, column: 8, scope: !157)
!180 = !DILocation(line: 765, column: 13, scope: !157)
!181 = !DILocation(line: 769, column: 26, scope: !157)
!182 = !DILocation(line: 771, column: 13, scope: !157)
!183 = !DILocation(line: 758, column: 17, scope: !157)
!184 = !DILocation(line: 772, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !157, file: !3, line: 772, column: 9)
!186 = !DILocation(line: 772, column: 21, scope: !185)
!187 = !DILocation(line: 772, column: 9, scope: !157)
!188 = !DILocation(line: 773, column: 36, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 772, column: 35)
!190 = !DILocalVariable(name: "_r", arg: 1, scope: !191, file: !3, line: 331, type: !27)
!191 = distinct !DISubprogram(name: "MAPPING_INSERT", scope: !3, file: !3, line: 331, type: !192, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !195)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !27, !194, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!195 = !{!190, !196, !197}
!196 = !DILocalVariable(name: "_fl", arg: 2, scope: !191, file: !3, line: 331, type: !194)
!197 = !DILocalVariable(name: "_sl", arg: 3, scope: !191, file: !3, line: 331, type: !194)
!198 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !199)
!199 = distinct !DILocation(line: 773, column: 9, scope: !189)
!200 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !199)
!201 = distinct !DILexicalBlock(scope: !191, file: !3, line: 333, column: 9)
!202 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !199)
!203 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !199)
!204 = distinct !DILexicalBlock(scope: !201, file: !3, line: 333, column: 27)
!205 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !199)
!206 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !199)
!207 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !199)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 336, column: 12)
!209 = !DILocalVariable(name: "i", arg: 1, scope: !210, file: !3, line: 292, type: !62)
!210 = distinct !DISubprogram(name: "ms_bit", scope: !3, file: !3, line: 292, type: !211, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!62, !62}
!213 = !{!209, !214, !215}
!214 = !DILocalVariable(name: "a", scope: !210, file: !3, line: 294, type: !13)
!215 = !DILocalVariable(name: "x", scope: !210, file: !3, line: 295, type: !13)
!216 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !217)
!217 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !199)
!218 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !217)
!219 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !217)
!220 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !217)
!221 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !217)
!222 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !217)
!223 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !217)
!224 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !217)
!225 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !217)
!226 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !217)
!227 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !217)
!228 = !{!92, !92, i64 0}
!229 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !217)
!230 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !199)
!231 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !199)
!232 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !199)
!233 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !199)
!234 = !DILocation(line: 0, scope: !189)
!235 = !DILocation(line: 774, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 774, column: 9)
!237 = distinct !DILexicalBlock(scope: !189, file: !3, line: 774, column: 9)
!238 = !DILocation(line: 774, column: 9, scope: !237)
!239 = !DILocation(line: 774, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 774, column: 9)
!241 = !DILocation(line: 774, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 774, column: 9)
!243 = !{!95, !95, i64 0}
!244 = !DILocation(line: 774, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 774, column: 9)
!246 = !DILocation(line: 774, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !3, line: 774, column: 9)
!248 = !DILocation(line: 774, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !3, line: 774, column: 9)
!250 = !DILocalVariable(name: "nr", arg: 1, scope: !251, file: !3, line: 306, type: !62)
!251 = distinct !DISubprogram(name: "clear_bit", scope: !3, file: !3, line: 306, type: !252, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !255)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !62, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!255 = !{!250, !256}
!256 = !DILocalVariable(name: "addr", arg: 2, scope: !251, file: !3, line: 306, type: !254)
!257 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !258)
!258 = distinct !DILocation(line: 774, column: 9, scope: !249)
!259 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !258)
!260 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !258)
!261 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !258)
!262 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !258)
!263 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !258)
!264 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !258)
!265 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !258)
!266 = !DILocation(line: 774, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !249, file: !3, line: 774, column: 9)
!268 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !269)
!269 = distinct !DILocation(line: 774, column: 9, scope: !267)
!270 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !269)
!271 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !269)
!272 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !269)
!273 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !269)
!274 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !269)
!275 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !269)
!276 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !269)
!277 = !DILocation(line: 775, column: 28, scope: !189)
!278 = !DILocation(line: 775, column: 33, scope: !189)
!279 = !DILocation(line: 775, column: 47, scope: !189)
!280 = !DILocation(line: 775, column: 17, scope: !189)
!281 = !DILocation(line: 776, column: 5, scope: !189)
!282 = !DILocation(line: 777, column: 12, scope: !283)
!283 = distinct !DILexicalBlock(scope: !157, file: !3, line: 777, column: 9)
!284 = !DILocation(line: 777, column: 17, scope: !283)
!285 = !DILocation(line: 777, column: 9, scope: !157)
!286 = !DILocation(line: 778, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 777, column: 30)
!288 = !DILocation(line: 779, column: 31, scope: !287)
!289 = !DILocation(line: 779, column: 36, scope: !287)
!290 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !291)
!291 = distinct !DILocation(line: 779, column: 9, scope: !287)
!292 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !291)
!293 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !291)
!294 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !291)
!295 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !291)
!296 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !291)
!297 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !291)
!298 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !299)
!299 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !291)
!300 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !299)
!301 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !299)
!302 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !299)
!303 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !299)
!304 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !299)
!305 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !299)
!306 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !299)
!307 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !299)
!308 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !299)
!309 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !299)
!310 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !299)
!311 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !291)
!312 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !291)
!313 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !291)
!314 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !291)
!315 = !DILocation(line: 0, scope: !287)
!316 = !DILocation(line: 780, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 780, column: 9)
!318 = distinct !DILexicalBlock(scope: !287, file: !3, line: 780, column: 9)
!319 = !DILocation(line: 780, column: 9, scope: !318)
!320 = !DILocation(line: 780, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 780, column: 9)
!322 = !DILocation(line: 780, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 780, column: 9)
!324 = !DILocation(line: 780, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !3, line: 780, column: 9)
!326 = !DILocation(line: 780, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !3, line: 780, column: 9)
!328 = !DILocation(line: 780, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !3, line: 780, column: 9)
!330 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !331)
!331 = distinct !DILocation(line: 780, column: 9, scope: !329)
!332 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !331)
!333 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !331)
!334 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !331)
!335 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !331)
!336 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !331)
!337 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !331)
!338 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !331)
!339 = !DILocation(line: 780, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !329, file: !3, line: 780, column: 9)
!341 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !342)
!342 = distinct !DILocation(line: 780, column: 9, scope: !340)
!343 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !342)
!344 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !342)
!345 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !342)
!346 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !342)
!347 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !342)
!348 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !342)
!349 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !342)
!350 = !DILocation(line: 781, column: 28, scope: !287)
!351 = !DILocation(line: 781, column: 33, scope: !287)
!352 = !DILocation(line: 781, column: 47, scope: !287)
!353 = !DILocation(line: 781, column: 21, scope: !287)
!354 = !DILocation(line: 783, column: 5, scope: !287)
!355 = !DILocation(line: 784, column: 23, scope: !157)
!356 = !DILocation(line: 0, scope: !157)
!357 = !DILocation(line: 784, column: 28, scope: !157)
!358 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !359)
!359 = distinct !DILocation(line: 784, column: 5, scope: !157)
!360 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !359)
!361 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !359)
!362 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !359)
!363 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !359)
!364 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !359)
!365 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !359)
!366 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !367)
!367 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !359)
!368 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !367)
!369 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !367)
!370 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !367)
!371 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !367)
!372 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !367)
!373 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !367)
!374 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !367)
!375 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !367)
!376 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !367)
!377 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !367)
!378 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !367)
!379 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !359)
!380 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !359)
!381 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !359)
!382 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !359)
!383 = !DILocation(line: 785, column: 5, scope: !384)
!384 = distinct !DILexicalBlock(scope: !157, file: !3, line: 785, column: 5)
!385 = !DILocation(line: 785, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !3, line: 785, column: 5)
!387 = !DILocation(line: 787, column: 13, scope: !157)
!388 = !DILocalVariable(name: "nr", arg: 1, scope: !389, file: !3, line: 301, type: !62)
!389 = distinct !DISubprogram(name: "set_bit", scope: !3, file: !3, line: 301, type: !252, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !390)
!390 = !{!388, !391}
!391 = !DILocalVariable(name: "addr", arg: 2, scope: !389, file: !3, line: 301, type: !254)
!392 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !393)
!393 = distinct !DILocation(line: 785, column: 5, scope: !384)
!394 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !393)
!395 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !393)
!396 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !393)
!397 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !393)
!398 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !393)
!399 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !393)
!400 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !401)
!401 = distinct !DILocation(line: 785, column: 5, scope: !384)
!402 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !401)
!403 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !401)
!404 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !401)
!405 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !401)
!406 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !401)
!407 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !401)
!408 = !DILocation(line: 788, column: 12, scope: !157)
!409 = !DILocation(line: 788, column: 17, scope: !157)
!410 = !DILocation(line: 789, column: 12, scope: !157)
!411 = !DILocation(line: 789, column: 21, scope: !157)
!412 = !DILocation(line: 790, column: 1, scope: !157)
!413 = distinct !DISubprogram(name: "add_new_area", scope: !3, file: !3, line: 500, type: !414, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!27, !58, !27, !58}
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!417 = !DILocalVariable(name: "area", arg: 1, scope: !413, file: !3, line: 500, type: !58)
!418 = !DILocalVariable(name: "area_size", arg: 2, scope: !413, file: !3, line: 500, type: !27)
!419 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !413, file: !3, line: 500, type: !58)
!420 = !DILocalVariable(name: "tlsf", scope: !413, file: !3, line: 503, type: !7)
!421 = !DILocalVariable(name: "ptr", scope: !413, file: !3, line: 504, type: !15)
!422 = !DILocalVariable(name: "ptr_prev", scope: !413, file: !3, line: 504, type: !15)
!423 = !DILocalVariable(name: "ai", scope: !413, file: !3, line: 504, type: !15)
!424 = !DILocalVariable(name: "ib0", scope: !413, file: !3, line: 505, type: !20)
!425 = !DILocalVariable(name: "b0", scope: !413, file: !3, line: 505, type: !20)
!426 = !DILocalVariable(name: "lb0", scope: !413, file: !3, line: 505, type: !20)
!427 = !DILocalVariable(name: "ib1", scope: !413, file: !3, line: 505, type: !20)
!428 = !DILocalVariable(name: "b1", scope: !413, file: !3, line: 505, type: !20)
!429 = !DILocalVariable(name: "lb1", scope: !413, file: !3, line: 505, type: !20)
!430 = !DILocalVariable(name: "next_b", scope: !413, file: !3, line: 505, type: !20)
!431 = !DILocation(line: 500, column: 27, scope: !413)
!432 = !DILocation(line: 500, column: 40, scope: !413)
!433 = !DILocation(line: 500, column: 57, scope: !413)
!434 = !DILocation(line: 503, column: 13, scope: !413)
!435 = !DILocation(line: 507, column: 5, scope: !413)
!436 = !DILocation(line: 508, column: 17, scope: !413)
!437 = !DILocation(line: 504, column: 18, scope: !413)
!438 = !DILocation(line: 504, column: 24, scope: !413)
!439 = !DILocation(line: 430, column: 46, scope: !110, inlinedAt: !440)
!440 = distinct !DILocation(line: 511, column: 11, scope: !413)
!441 = !DILocation(line: 430, column: 59, scope: !110, inlinedAt: !440)
!442 = !DILocation(line: 435, column: 10, scope: !110, inlinedAt: !440)
!443 = !DILocation(line: 432, column: 22, scope: !110, inlinedAt: !440)
!444 = !DILocation(line: 436, column: 9, scope: !110, inlinedAt: !440)
!445 = !DILocation(line: 436, column: 14, scope: !110, inlinedAt: !440)
!446 = !DILocation(line: 439, column: 20, scope: !110, inlinedAt: !440)
!447 = !DILocation(line: 432, column: 13, scope: !110, inlinedAt: !440)
!448 = !DILocation(line: 440, column: 15, scope: !110, inlinedAt: !440)
!449 = !DILocation(line: 440, column: 8, scope: !110, inlinedAt: !440)
!450 = !DILocation(line: 440, column: 13, scope: !110, inlinedAt: !440)
!451 = !DILocation(line: 441, column: 31, scope: !110, inlinedAt: !440)
!452 = !DILocation(line: 441, column: 26, scope: !110, inlinedAt: !440)
!453 = !DILocation(line: 442, column: 10, scope: !110, inlinedAt: !440)
!454 = !DILocation(line: 432, column: 17, scope: !110, inlinedAt: !440)
!455 = !DILocation(line: 443, column: 18, scope: !110, inlinedAt: !440)
!456 = !DILocation(line: 444, column: 9, scope: !110, inlinedAt: !440)
!457 = !DILocation(line: 444, column: 14, scope: !110, inlinedAt: !440)
!458 = !DILocation(line: 433, column: 18, scope: !110, inlinedAt: !440)
!459 = !DILocation(line: 446, column: 9, scope: !110, inlinedAt: !440)
!460 = !DILocation(line: 446, column: 14, scope: !110, inlinedAt: !440)
!461 = !DILocation(line: 447, column: 13, scope: !110, inlinedAt: !440)
!462 = !DILocation(line: 505, column: 13, scope: !413)
!463 = !DILocation(line: 512, column: 10, scope: !413)
!464 = !DILocation(line: 505, column: 19, scope: !413)
!465 = !DILocation(line: 513, column: 11, scope: !413)
!466 = !DILocation(line: 505, column: 24, scope: !413)
!467 = !DILocation(line: 518, column: 5, scope: !413)
!468 = !DILocation(line: 519, column: 40, scope: !469)
!469 = distinct !DILexicalBlock(scope: !413, file: !3, line: 518, column: 17)
!470 = !DILocation(line: 521, column: 20, scope: !469)
!471 = !DILocation(line: 505, column: 41, scope: !413)
!472 = !DILocation(line: 524, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 524, column: 13)
!474 = !DILocation(line: 524, column: 33, scope: !473)
!475 = !DILocation(line: 524, column: 13, scope: !469)
!476 = !DILocation(line: 520, column: 14, scope: !469)
!477 = !DILocation(line: 525, column: 23, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 525, column: 17)
!479 = distinct !DILexicalBlock(scope: !473, file: !3, line: 524, column: 73)
!480 = !DILocation(line: 525, column: 33, scope: !478)
!481 = !DILocation(line: 0, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 528, column: 20)
!483 = !DILocation(line: 525, column: 17, scope: !479)
!484 = !DILocation(line: 526, column: 33, scope: !485)
!485 = distinct !DILexicalBlock(scope: !478, file: !3, line: 525, column: 41)
!486 = !DILocation(line: 528, column: 13, scope: !485)
!487 = !DILocation(line: 529, column: 27, scope: !482)
!488 = !DILocation(line: 529, column: 32, scope: !482)
!489 = !DILocation(line: 534, column: 17, scope: !479)
!490 = !DILocation(line: 533, column: 22, scope: !479)
!491 = !DILocation(line: 537, column: 17, scope: !479)
!492 = !DILocation(line: 537, column: 26, scope: !479)
!493 = distinct !{!493, !467, !494}
!494 = !DILocation(line: 566, column: 5, scope: !413)
!495 = !DILocation(line: 545, column: 34, scope: !496)
!496 = distinct !DILexicalBlock(scope: !469, file: !3, line: 545, column: 13)
!497 = !DILocation(line: 545, column: 45, scope: !496)
!498 = !DILocation(line: 545, column: 13, scope: !469)
!499 = !DILocation(line: 519, column: 15, scope: !469)
!500 = !DILocation(line: 545, column: 29, scope: !496)
!501 = !DILocation(line: 546, column: 23, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 546, column: 17)
!503 = distinct !DILexicalBlock(scope: !496, file: !3, line: 545, column: 69)
!504 = !DILocation(line: 546, column: 33, scope: !502)
!505 = !DILocation(line: 0, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 549, column: 20)
!507 = !DILocation(line: 546, column: 17, scope: !503)
!508 = !DILocation(line: 547, column: 33, scope: !509)
!509 = distinct !DILexicalBlock(scope: !502, file: !3, line: 546, column: 41)
!510 = !DILocation(line: 549, column: 13, scope: !509)
!511 = !DILocation(line: 550, column: 27, scope: !506)
!512 = !DILocation(line: 550, column: 32, scope: !506)
!513 = !DILocation(line: 555, column: 17, scope: !503)
!514 = !DILocation(line: 556, column: 99, scope: !503)
!515 = !DILocation(line: 556, column: 104, scope: !503)
!516 = !DILocation(line: 556, column: 91, scope: !503)
!517 = !DILocation(line: 554, column: 23, scope: !503)
!518 = !DILocation(line: 557, column: 22, scope: !503)
!519 = !DILocation(line: 505, column: 47, scope: !413)
!520 = !DILocation(line: 558, column: 21, scope: !503)
!521 = !DILocation(line: 558, column: 30, scope: !503)
!522 = !DILocation(line: 565, column: 20, scope: !469)
!523 = !DILocation(line: 569, column: 31, scope: !413)
!524 = !DILocation(line: 504, column: 35, scope: !413)
!525 = !DILocation(line: 570, column: 22, scope: !413)
!526 = !DILocation(line: 570, column: 9, scope: !413)
!527 = !DILocation(line: 570, column: 14, scope: !413)
!528 = !DILocation(line: 571, column: 9, scope: !413)
!529 = !DILocation(line: 571, column: 13, scope: !413)
!530 = !DILocation(line: 572, column: 21, scope: !413)
!531 = !DILocation(line: 573, column: 17, scope: !413)
!532 = !DILocation(line: 573, column: 13, scope: !413)
!533 = !DILocation(line: 573, column: 5, scope: !413)
!534 = !DILocation(line: 574, column: 17, scope: !413)
!535 = !DILocation(line: 574, column: 22, scope: !413)
!536 = !DILocation(line: 574, column: 5, scope: !413)
!537 = distinct !DISubprogram(name: "get_used_size", scope: !3, file: !3, line: 579, type: !538, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!27, !58}
!540 = !{!541}
!541 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !537, file: !3, line: 579, type: !58)
!542 = !DILocation(line: 579, column: 28, scope: !537)
!543 = !DILocation(line: 585, column: 5, scope: !537)
!544 = distinct !DISubprogram(name: "get_max_size", scope: !3, file: !3, line: 590, type: !538, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !545)
!545 = !{!546}
!546 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !544, file: !3, line: 590, type: !58)
!547 = !DILocation(line: 590, column: 27, scope: !544)
!548 = !DILocation(line: 596, column: 5, scope: !544)
!549 = distinct !DISubprogram(name: "destroy_memory_pool", scope: !3, file: !3, line: 601, type: !550, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !58}
!552 = !{!553, !554}
!553 = !DILocalVariable(name: "mem_pool", arg: 1, scope: !549, file: !3, line: 601, type: !58)
!554 = !DILocalVariable(name: "tlsf", scope: !549, file: !3, line: 604, type: !7)
!555 = !DILocation(line: 601, column: 32, scope: !549)
!556 = !DILocation(line: 604, column: 13, scope: !549)
!557 = !DILocation(line: 606, column: 11, scope: !549)
!558 = !DILocation(line: 606, column: 26, scope: !549)
!559 = !DILocation(line: 610, column: 1, scope: !549)
!560 = distinct !DISubprogram(name: "tlsf_malloc", scope: !3, file: !3, line: 614, type: !561, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!58, !27, !58}
!563 = !{!564, !565, !566}
!564 = !DILocalVariable(name: "size", arg: 1, scope: !560, file: !3, line: 614, type: !27)
!565 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !560, file: !3, line: 614, type: !58)
!566 = !DILocalVariable(name: "ret", scope: !560, file: !3, line: 617, type: !58)
!567 = !DILocation(line: 614, column: 26, scope: !560)
!568 = !DILocation(line: 614, column: 38, scope: !560)
!569 = !DILocation(line: 635, column: 11, scope: !560)
!570 = !DILocation(line: 617, column: 11, scope: !560)
!571 = !DILocation(line: 639, column: 5, scope: !560)
!572 = distinct !DISubprogram(name: "malloc_ex", scope: !3, file: !3, line: 692, type: !561, isLocal: false, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582}
!574 = !DILocalVariable(name: "size", arg: 1, scope: !572, file: !3, line: 692, type: !27)
!575 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !572, file: !3, line: 692, type: !58)
!576 = !DILocalVariable(name: "tlsf", scope: !572, file: !3, line: 695, type: !7)
!577 = !DILocalVariable(name: "b", scope: !572, file: !3, line: 696, type: !20)
!578 = !DILocalVariable(name: "b2", scope: !572, file: !3, line: 696, type: !20)
!579 = !DILocalVariable(name: "next_b", scope: !572, file: !3, line: 696, type: !20)
!580 = !DILocalVariable(name: "fl", scope: !572, file: !3, line: 697, type: !62)
!581 = !DILocalVariable(name: "sl", scope: !572, file: !3, line: 697, type: !62)
!582 = !DILocalVariable(name: "tmp_size", scope: !572, file: !3, line: 698, type: !27)
!583 = !DILocation(line: 692, column: 24, scope: !572)
!584 = !DILocation(line: 692, column: 36, scope: !572)
!585 = !DILocation(line: 695, column: 20, scope: !572)
!586 = !DILocation(line: 695, column: 13, scope: !572)
!587 = !DILocation(line: 700, column: 18, scope: !572)
!588 = !DILocation(line: 700, column: 55, scope: !572)
!589 = !DILocation(line: 700, column: 12, scope: !572)
!590 = !DILocation(line: 315, column: 13, scope: !591, inlinedAt: !601)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 315, column: 9)
!592 = distinct !DISubprogram(name: "MAPPING_SEARCH", scope: !3, file: !3, line: 311, type: !593, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !596)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !595, !194, !194}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!596 = !{!597, !598, !599, !600}
!597 = !DILocalVariable(name: "_r", arg: 1, scope: !592, file: !3, line: 311, type: !595)
!598 = !DILocalVariable(name: "_fl", arg: 2, scope: !592, file: !3, line: 311, type: !194)
!599 = !DILocalVariable(name: "_sl", arg: 3, scope: !592, file: !3, line: 311, type: !194)
!600 = !DILocalVariable(name: "_t", scope: !592, file: !3, line: 313, type: !62)
!601 = distinct !DILocation(line: 703, column: 5, scope: !572)
!602 = !DILocation(line: 315, column: 9, scope: !592, inlinedAt: !601)
!603 = !DILocation(line: 317, column: 20, scope: !604, inlinedAt: !601)
!604 = distinct !DILexicalBlock(scope: !591, file: !3, line: 315, column: 28)
!605 = !DILocation(line: 317, column: 16, scope: !604, inlinedAt: !601)
!606 = !DILocation(line: 318, column: 5, scope: !604, inlinedAt: !601)
!607 = !DILocation(line: 319, column: 28, scope: !608, inlinedAt: !601)
!608 = distinct !DILexicalBlock(scope: !591, file: !3, line: 318, column: 12)
!609 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !610)
!610 = distinct !DILocation(line: 319, column: 21, scope: !608, inlinedAt: !601)
!611 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !610)
!612 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !610)
!613 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !610)
!614 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !610)
!615 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !610)
!616 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !610)
!617 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !610)
!618 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !610)
!619 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !610)
!620 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !610)
!621 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !610)
!622 = !DILocation(line: 319, column: 33, scope: !608, inlinedAt: !601)
!623 = !DILocation(line: 319, column: 50, scope: !608, inlinedAt: !601)
!624 = !DILocation(line: 313, column: 9, scope: !592, inlinedAt: !601)
!625 = !DILocation(line: 320, column: 21, scope: !608, inlinedAt: !601)
!626 = !DILocation(line: 320, column: 19, scope: !608, inlinedAt: !601)
!627 = !DILocation(line: 321, column: 23, scope: !608, inlinedAt: !601)
!628 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !629)
!629 = distinct !DILocation(line: 321, column: 16, scope: !608, inlinedAt: !601)
!630 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !629)
!631 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !629)
!632 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !629)
!633 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !629)
!634 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !629)
!635 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !629)
!636 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !629)
!637 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !629)
!638 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !629)
!639 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !629)
!640 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !629)
!641 = !DILocation(line: 322, column: 30, scope: !608, inlinedAt: !601)
!642 = !DILocation(line: 322, column: 21, scope: !608, inlinedAt: !601)
!643 = !DILocation(line: 322, column: 16, scope: !608, inlinedAt: !601)
!644 = !DILocation(line: 323, column: 14, scope: !608, inlinedAt: !601)
!645 = !DILocation(line: 327, column: 16, scope: !608, inlinedAt: !601)
!646 = !DILocation(line: 327, column: 13, scope: !608, inlinedAt: !601)
!647 = !DILocation(line: 0, scope: !572)
!648 = !DILocalVariable(name: "_tlsf", arg: 1, scope: !649, file: !3, line: 344, type: !7)
!649 = distinct !DISubprogram(name: "FIND_SUITABLE_BLOCK", scope: !3, file: !3, line: 344, type: !650, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!20, !7, !194, !194}
!652 = !{!648, !653, !654, !655, !656}
!653 = !DILocalVariable(name: "_fl", arg: 2, scope: !649, file: !3, line: 344, type: !194)
!654 = !DILocalVariable(name: "_sl", arg: 3, scope: !649, file: !3, line: 344, type: !194)
!655 = !DILocalVariable(name: "_tmp", scope: !649, file: !3, line: 346, type: !12)
!656 = !DILocalVariable(name: "_b", scope: !649, file: !3, line: 347, type: !20)
!657 = !DILocation(line: 344, column: 56, scope: !649, inlinedAt: !658)
!658 = distinct !DILocation(line: 707, column: 9, scope: !572)
!659 = !DILocation(line: 346, column: 18, scope: !649, inlinedAt: !658)
!660 = !DILocation(line: 346, column: 47, scope: !649, inlinedAt: !658)
!661 = !DILocation(line: 346, column: 41, scope: !649, inlinedAt: !658)
!662 = !DILocation(line: 346, column: 11, scope: !649, inlinedAt: !658)
!663 = !DILocation(line: 347, column: 13, scope: !649, inlinedAt: !658)
!664 = !DILocation(line: 349, column: 9, scope: !665, inlinedAt: !658)
!665 = distinct !DILexicalBlock(scope: !649, file: !3, line: 349, column: 9)
!666 = !DILocation(line: 349, column: 9, scope: !649, inlinedAt: !658)
!667 = !DILocalVariable(name: "i", arg: 1, scope: !668, file: !3, line: 283, type: !62)
!668 = distinct !DISubprogram(name: "ls_bit", scope: !3, file: !3, line: 283, type: !211, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !669)
!669 = !{!667, !670, !671}
!670 = !DILocalVariable(name: "a", scope: !668, file: !3, line: 285, type: !13)
!671 = !DILocalVariable(name: "x", scope: !668, file: !3, line: 286, type: !13)
!672 = !DILocation(line: 283, column: 34, scope: !668, inlinedAt: !673)
!673 = distinct !DILocation(line: 350, column: 16, scope: !674, inlinedAt: !658)
!674 = distinct !DILexicalBlock(scope: !665, file: !3, line: 349, column: 15)
!675 = !DILocation(line: 286, column: 26, scope: !668, inlinedAt: !673)
!676 = !DILocation(line: 286, column: 24, scope: !668, inlinedAt: !673)
!677 = !DILocation(line: 286, column: 18, scope: !668, inlinedAt: !673)
!678 = !DILocation(line: 288, column: 11, scope: !668, inlinedAt: !673)
!679 = !DILocation(line: 288, column: 26, scope: !668, inlinedAt: !673)
!680 = !DILocation(line: 288, column: 24, scope: !668, inlinedAt: !673)
!681 = !DILocation(line: 288, column: 48, scope: !668, inlinedAt: !673)
!682 = !DILocation(line: 288, column: 46, scope: !668, inlinedAt: !673)
!683 = !DILocation(line: 288, column: 9, scope: !668, inlinedAt: !673)
!684 = !DILocation(line: 285, column: 18, scope: !668, inlinedAt: !673)
!685 = !DILocation(line: 289, column: 20, scope: !668, inlinedAt: !673)
!686 = !DILocation(line: 289, column: 12, scope: !668, inlinedAt: !673)
!687 = !DILocation(line: 289, column: 26, scope: !668, inlinedAt: !673)
!688 = !DILocation(line: 352, column: 5, scope: !674, inlinedAt: !658)
!689 = !DILocation(line: 353, column: 30, scope: !690, inlinedAt: !658)
!690 = distinct !DILexicalBlock(scope: !665, file: !3, line: 352, column: 12)
!691 = !{!91, !92, i64 16}
!692 = !DILocation(line: 353, column: 55, scope: !690, inlinedAt: !658)
!693 = !DILocation(line: 353, column: 46, scope: !690, inlinedAt: !658)
!694 = !DILocation(line: 353, column: 40, scope: !690, inlinedAt: !658)
!695 = !DILocation(line: 283, column: 34, scope: !668, inlinedAt: !696)
!696 = distinct !DILocation(line: 353, column: 16, scope: !690, inlinedAt: !658)
!697 = !DILocation(line: 286, column: 26, scope: !668, inlinedAt: !696)
!698 = !DILocation(line: 286, column: 24, scope: !668, inlinedAt: !696)
!699 = !DILocation(line: 286, column: 18, scope: !668, inlinedAt: !696)
!700 = !DILocation(line: 288, column: 11, scope: !668, inlinedAt: !696)
!701 = !DILocation(line: 288, column: 26, scope: !668, inlinedAt: !696)
!702 = !DILocation(line: 288, column: 24, scope: !668, inlinedAt: !696)
!703 = !DILocation(line: 288, column: 48, scope: !668, inlinedAt: !696)
!704 = !DILocation(line: 288, column: 46, scope: !668, inlinedAt: !696)
!705 = !DILocation(line: 288, column: 9, scope: !668, inlinedAt: !696)
!706 = !DILocation(line: 285, column: 18, scope: !668, inlinedAt: !696)
!707 = !DILocation(line: 289, column: 20, scope: !668, inlinedAt: !696)
!708 = !DILocation(line: 289, column: 12, scope: !668, inlinedAt: !696)
!709 = !DILocation(line: 289, column: 26, scope: !668, inlinedAt: !696)
!710 = !DILocation(line: 354, column: 18, scope: !711, inlinedAt: !658)
!711 = distinct !DILexicalBlock(scope: !690, file: !3, line: 354, column: 13)
!712 = !DILocation(line: 354, column: 13, scope: !690, inlinedAt: !658)
!713 = !DILocation(line: 355, column: 27, scope: !714, inlinedAt: !658)
!714 = distinct !DILexicalBlock(scope: !711, file: !3, line: 354, column: 23)
!715 = !DILocation(line: 283, column: 34, scope: !668, inlinedAt: !716)
!716 = distinct !DILocation(line: 355, column: 20, scope: !714, inlinedAt: !658)
!717 = !DILocation(line: 286, column: 26, scope: !668, inlinedAt: !716)
!718 = !DILocation(line: 286, column: 24, scope: !668, inlinedAt: !716)
!719 = !DILocation(line: 286, column: 18, scope: !668, inlinedAt: !716)
!720 = !DILocation(line: 288, column: 11, scope: !668, inlinedAt: !716)
!721 = !DILocation(line: 288, column: 26, scope: !668, inlinedAt: !716)
!722 = !DILocation(line: 288, column: 24, scope: !668, inlinedAt: !716)
!723 = !DILocation(line: 288, column: 48, scope: !668, inlinedAt: !716)
!724 = !DILocation(line: 288, column: 46, scope: !668, inlinedAt: !716)
!725 = !DILocation(line: 288, column: 9, scope: !668, inlinedAt: !716)
!726 = !DILocation(line: 285, column: 18, scope: !668, inlinedAt: !716)
!727 = !DILocation(line: 289, column: 20, scope: !668, inlinedAt: !716)
!728 = !DILocation(line: 289, column: 12, scope: !668, inlinedAt: !716)
!729 = !DILocation(line: 289, column: 26, scope: !668, inlinedAt: !716)
!730 = !DILocation(line: 357, column: 9, scope: !714, inlinedAt: !658)
!731 = !DILocation(line: 0, scope: !649, inlinedAt: !658)
!732 = !DILocation(line: 696, column: 13, scope: !572)
!733 = !DILocation(line: 725, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !572, file: !3, line: 725, column: 9)
!735 = !DILocation(line: 725, column: 9, scope: !572)
!736 = !DILocation(line: 728, column: 5, scope: !737)
!737 = distinct !DILexicalBlock(scope: !572, file: !3, line: 728, column: 5)
!738 = !DILocation(line: 697, column: 9, scope: !572)
!739 = !DILocation(line: 697, column: 13, scope: !572)
!740 = !DILocation(line: 728, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 728, column: 5)
!742 = !DILocation(line: 728, column: 5, scope: !743)
!743 = distinct !DILexicalBlock(scope: !741, file: !3, line: 728, column: 5)
!744 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !745)
!745 = distinct !DILocation(line: 728, column: 5, scope: !743)
!746 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !745)
!747 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !745)
!748 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !745)
!749 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !745)
!750 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !745)
!751 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !745)
!752 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !745)
!753 = !DILocation(line: 728, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !743, file: !3, line: 728, column: 5)
!755 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !756)
!756 = distinct !DILocation(line: 728, column: 5, scope: !754)
!757 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !756)
!758 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !756)
!759 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !756)
!760 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !756)
!761 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !756)
!762 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !756)
!763 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !756)
!764 = !DILocation(line: 731, column: 14, scope: !572)
!765 = !DILocation(line: 733, column: 39, scope: !572)
!766 = !DILocation(line: 698, column: 12, scope: !572)
!767 = !DILocation(line: 734, column: 18, scope: !768)
!768 = distinct !DILexicalBlock(scope: !572, file: !3, line: 734, column: 9)
!769 = !DILocation(line: 734, column: 9, scope: !572)
!770 = !DILocation(line: 696, column: 22, scope: !572)
!771 = !DILocation(line: 735, column: 18, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 734, column: 37)
!773 = !DILocation(line: 736, column: 14, scope: !772)
!774 = !DILocation(line: 737, column: 29, scope: !772)
!775 = !DILocation(line: 737, column: 13, scope: !772)
!776 = !DILocation(line: 737, column: 18, scope: !772)
!777 = !DILocation(line: 738, column: 26, scope: !772)
!778 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !779)
!779 = distinct !DILocation(line: 739, column: 9, scope: !772)
!780 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !779)
!781 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !779)
!782 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !779)
!783 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !779)
!784 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !779)
!785 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !779)
!786 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !787)
!787 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !779)
!788 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !787)
!789 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !787)
!790 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !787)
!791 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !787)
!792 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !787)
!793 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !787)
!794 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !787)
!795 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !787)
!796 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !787)
!797 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !787)
!798 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !787)
!799 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !779)
!800 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !779)
!801 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !779)
!802 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !779)
!803 = !DILocation(line: 0, scope: !772)
!804 = !DILocation(line: 740, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !772, file: !3, line: 740, column: 9)
!806 = !DILocation(line: 740, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !805, file: !3, line: 740, column: 9)
!808 = !DILocation(line: 696, column: 17, scope: !572)
!809 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !810)
!810 = distinct !DILocation(line: 740, column: 9, scope: !805)
!811 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !810)
!812 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !810)
!813 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !810)
!814 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !810)
!815 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !810)
!816 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !810)
!817 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !818)
!818 = distinct !DILocation(line: 740, column: 9, scope: !805)
!819 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !818)
!820 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !818)
!821 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !818)
!822 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !818)
!823 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !818)
!824 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !818)
!825 = !DILocation(line: 742, column: 30, scope: !772)
!826 = !DILocation(line: 742, column: 35, scope: !772)
!827 = !DILocation(line: 742, column: 24, scope: !772)
!828 = !DILocation(line: 743, column: 5, scope: !772)
!829 = !DILocation(line: 744, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !768, file: !3, line: 743, column: 12)
!831 = !DILocation(line: 744, column: 22, scope: !830)
!832 = !DILocation(line: 745, column: 17, scope: !830)
!833 = !DILocation(line: 750, column: 5, scope: !572)
!834 = !DILocation(line: 0, scope: !734)
!835 = !DILocation(line: 751, column: 1, scope: !572)
!836 = distinct !DISubprogram(name: "tlsf_free", scope: !3, file: !3, line: 643, type: !158, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !837)
!837 = !{!838, !839}
!838 = !DILocalVariable(name: "ptr", arg: 1, scope: !836, file: !3, line: 643, type: !58)
!839 = !DILocalVariable(name: "mem_pool", arg: 2, scope: !836, file: !3, line: 643, type: !58)
!840 = !DILocation(line: 643, column: 22, scope: !836)
!841 = !DILocation(line: 643, column: 33, scope: !836)
!842 = !DILocation(line: 649, column: 5, scope: !836)
!843 = !DILocation(line: 653, column: 1, scope: !836)
!844 = distinct !DISubprogram(name: "tlsf_realloc", scope: !3, file: !3, line: 656, type: !845, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{!58, !58, !27, !58}
!847 = !{!848, !849, !850, !851}
!848 = !DILocalVariable(name: "ptr", arg: 1, scope: !844, file: !3, line: 656, type: !58)
!849 = !DILocalVariable(name: "size", arg: 2, scope: !844, file: !3, line: 656, type: !27)
!850 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !844, file: !3, line: 656, type: !58)
!851 = !DILocalVariable(name: "ret", scope: !844, file: !3, line: 659, type: !58)
!852 = !DILocation(line: 656, column: 26, scope: !844)
!853 = !DILocation(line: 656, column: 38, scope: !844)
!854 = !DILocation(line: 656, column: 50, scope: !844)
!855 = !DILocation(line: 669, column: 11, scope: !844)
!856 = !DILocation(line: 659, column: 11, scope: !844)
!857 = !DILocation(line: 673, column: 5, scope: !844)
!858 = distinct !DISubprogram(name: "realloc_ex", scope: !3, file: !3, line: 793, type: !845, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!860 = !DILocalVariable(name: "ptr", arg: 1, scope: !858, file: !3, line: 793, type: !58)
!861 = !DILocalVariable(name: "new_size", arg: 2, scope: !858, file: !3, line: 793, type: !27)
!862 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !858, file: !3, line: 793, type: !58)
!863 = !DILocalVariable(name: "tlsf", scope: !858, file: !3, line: 796, type: !7)
!864 = !DILocalVariable(name: "ptr_aux", scope: !858, file: !3, line: 797, type: !58)
!865 = !DILocalVariable(name: "cpsize", scope: !858, file: !3, line: 798, type: !13)
!866 = !DILocalVariable(name: "b", scope: !858, file: !3, line: 799, type: !20)
!867 = !DILocalVariable(name: "tmp_b", scope: !858, file: !3, line: 799, type: !20)
!868 = !DILocalVariable(name: "next_b", scope: !858, file: !3, line: 799, type: !20)
!869 = !DILocalVariable(name: "fl", scope: !858, file: !3, line: 800, type: !62)
!870 = !DILocalVariable(name: "sl", scope: !858, file: !3, line: 800, type: !62)
!871 = !DILocalVariable(name: "tmp_size", scope: !858, file: !3, line: 801, type: !27)
!872 = !DILocation(line: 793, column: 24, scope: !858)
!873 = !DILocation(line: 793, column: 36, scope: !858)
!874 = !DILocation(line: 793, column: 52, scope: !858)
!875 = !DILocation(line: 796, column: 13, scope: !858)
!876 = !DILocation(line: 803, column: 10, scope: !877)
!877 = distinct !DILexicalBlock(scope: !858, file: !3, line: 803, column: 9)
!878 = !DILocation(line: 0, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 804, column: 13)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 803, column: 15)
!881 = !DILocation(line: 803, column: 9, scope: !858)
!882 = !DILocation(line: 804, column: 13, scope: !880)
!883 = !DILocation(line: 805, column: 29, scope: !879)
!884 = !DILocation(line: 805, column: 13, scope: !879)
!885 = !DILocation(line: 808, column: 16, scope: !877)
!886 = !DILocation(line: 809, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 808, column: 27)
!888 = distinct !DILexicalBlock(scope: !877, file: !3, line: 808, column: 16)
!889 = !DILocation(line: 810, column: 9, scope: !887)
!890 = !DILocation(line: 813, column: 34, scope: !858)
!891 = !DILocation(line: 799, column: 13, scope: !858)
!892 = !DILocation(line: 814, column: 14, scope: !858)
!893 = !DILocation(line: 799, column: 25, scope: !858)
!894 = !DILocation(line: 815, column: 26, scope: !858)
!895 = !DILocation(line: 815, column: 63, scope: !858)
!896 = !DILocation(line: 815, column: 16, scope: !858)
!897 = !DILocation(line: 801, column: 12, scope: !858)
!898 = !DILocation(line: 817, column: 18, scope: !899)
!899 = distinct !DILexicalBlock(scope: !858, file: !3, line: 817, column: 9)
!900 = !DILocation(line: 0, scope: !901)
!901 = distinct !DILexicalBlock(scope: !858, file: !3, line: 841, column: 9)
!902 = !DILocation(line: 817, column: 9, scope: !858)
!903 = !DILocation(line: 819, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 817, column: 31)
!905 = !DILocation(line: 820, column: 41, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 819, column: 40)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 819, column: 13)
!908 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !909)
!909 = distinct !DILocation(line: 820, column: 13, scope: !906)
!910 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !909)
!911 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !909)
!912 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !909)
!913 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !909)
!914 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !909)
!915 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !909)
!916 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !917)
!917 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !909)
!918 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !917)
!919 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !917)
!920 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !917)
!921 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !917)
!922 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !917)
!923 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !917)
!924 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !917)
!925 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !917)
!926 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !917)
!927 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !917)
!928 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !917)
!929 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !909)
!930 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !909)
!931 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !909)
!932 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !909)
!933 = !DILocation(line: 0, scope: !906)
!934 = !DILocation(line: 821, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 821, column: 13)
!936 = distinct !DILexicalBlock(scope: !906, file: !3, line: 821, column: 13)
!937 = !DILocation(line: 821, column: 13, scope: !936)
!938 = !DILocation(line: 821, column: 13, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !3, line: 821, column: 13)
!940 = !DILocation(line: 821, column: 13, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 821, column: 13)
!942 = !DILocation(line: 800, column: 9, scope: !858)
!943 = !DILocation(line: 800, column: 13, scope: !858)
!944 = !DILocation(line: 821, column: 13, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !3, line: 821, column: 13)
!946 = !DILocation(line: 821, column: 13, scope: !947)
!947 = distinct !DILexicalBlock(scope: !945, file: !3, line: 821, column: 13)
!948 = !DILocation(line: 821, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !3, line: 821, column: 13)
!950 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !951)
!951 = distinct !DILocation(line: 821, column: 13, scope: !949)
!952 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !951)
!953 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !951)
!954 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !951)
!955 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !951)
!956 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !951)
!957 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !951)
!958 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !951)
!959 = !DILocation(line: 821, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !949, file: !3, line: 821, column: 13)
!961 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !962)
!962 = distinct !DILocation(line: 821, column: 13, scope: !960)
!963 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !962)
!964 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !962)
!965 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !962)
!966 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !962)
!967 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !962)
!968 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !962)
!969 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !962)
!970 = !DILocation(line: 822, column: 34, scope: !906)
!971 = !DILocation(line: 822, column: 39, scope: !906)
!972 = !DILocation(line: 822, column: 53, scope: !906)
!973 = !DILocation(line: 822, column: 22, scope: !906)
!974 = !DILocation(line: 823, column: 22, scope: !906)
!975 = !DILocation(line: 826, column: 9, scope: !906)
!976 = !DILocation(line: 0, scope: !858)
!977 = !DILocation(line: 827, column: 18, scope: !904)
!978 = !DILocation(line: 828, column: 22, scope: !979)
!979 = distinct !DILexicalBlock(scope: !904, file: !3, line: 828, column: 13)
!980 = !DILocation(line: 828, column: 13, scope: !904)
!981 = !DILocation(line: 829, column: 22, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 828, column: 41)
!983 = !DILocation(line: 830, column: 21, scope: !982)
!984 = !DILocation(line: 831, column: 36, scope: !982)
!985 = !DILocation(line: 831, column: 20, scope: !982)
!986 = !DILocation(line: 831, column: 25, scope: !982)
!987 = !DILocation(line: 832, column: 30, scope: !982)
!988 = !DILocation(line: 833, column: 21, scope: !982)
!989 = !DILocation(line: 833, column: 26, scope: !982)
!990 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !991)
!991 = distinct !DILocation(line: 834, column: 13, scope: !982)
!992 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !991)
!993 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !991)
!994 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !991)
!995 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !991)
!996 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !991)
!997 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !991)
!998 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !999)
!999 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !991)
!1000 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !999)
!1001 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !999)
!1002 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !999)
!1003 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !999)
!1004 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !999)
!1005 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !999)
!1006 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !999)
!1007 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !999)
!1008 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !999)
!1009 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !999)
!1010 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !999)
!1011 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !991)
!1012 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !991)
!1013 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !991)
!1014 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !991)
!1015 = !DILocation(line: 0, scope: !982)
!1016 = !DILocation(line: 835, column: 13, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !982, file: !3, line: 835, column: 13)
!1018 = !DILocation(line: 835, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 835, column: 13)
!1020 = !DILocation(line: 799, column: 17, scope: !858)
!1021 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 835, column: 13, scope: !1017)
!1023 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !1022)
!1024 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !1022)
!1025 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !1022)
!1026 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !1022)
!1027 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !1022)
!1028 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !1022)
!1029 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 835, column: 13, scope: !1017)
!1031 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !1030)
!1032 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !1030)
!1033 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !1030)
!1034 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !1030)
!1035 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !1030)
!1036 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !1030)
!1037 = !DILocation(line: 836, column: 38, scope: !982)
!1038 = !DILocation(line: 836, column: 43, scope: !982)
!1039 = !DILocation(line: 836, column: 32, scope: !982)
!1040 = !DILocation(line: 836, column: 21, scope: !982)
!1041 = !DILocation(line: 837, column: 9, scope: !982)
!1042 = !DILocation(line: 841, column: 9, scope: !858)
!1043 = !DILocation(line: 842, column: 51, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 842, column: 13)
!1045 = distinct !DILexicalBlock(scope: !901, file: !3, line: 841, column: 38)
!1046 = !DILocation(line: 842, column: 35, scope: !1044)
!1047 = !DILocation(line: 842, column: 22, scope: !1044)
!1048 = !DILocation(line: 842, column: 13, scope: !1045)
!1049 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 844, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 842, column: 67)
!1052 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !1050)
!1053 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !1050)
!1054 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !1050)
!1055 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !1050)
!1056 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !1050)
!1057 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !1050)
!1058 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !1050)
!1060 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !1059)
!1061 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !1059)
!1062 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !1059)
!1063 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !1059)
!1064 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !1059)
!1065 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !1059)
!1066 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !1059)
!1067 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !1059)
!1068 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !1059)
!1069 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !1059)
!1070 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !1059)
!1071 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !1050)
!1072 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !1050)
!1073 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !1050)
!1074 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !1050)
!1075 = !DILocation(line: 0, scope: !1051)
!1076 = !DILocation(line: 845, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 845, column: 13)
!1078 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 845, column: 13)
!1079 = !DILocation(line: 845, column: 13, scope: !1078)
!1080 = !DILocation(line: 845, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 845, column: 13)
!1082 = !DILocation(line: 845, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 845, column: 13)
!1084 = !DILocation(line: 845, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 845, column: 13)
!1086 = !DILocation(line: 845, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 845, column: 13)
!1088 = !DILocation(line: 845, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 845, column: 13)
!1090 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 845, column: 13, scope: !1089)
!1092 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !1091)
!1093 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !1091)
!1094 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !1091)
!1095 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !1091)
!1096 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !1091)
!1097 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !1091)
!1098 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !1091)
!1099 = !DILocation(line: 845, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 845, column: 13)
!1101 = !DILocation(line: 306, column: 38, scope: !251, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 845, column: 13, scope: !1100)
!1103 = !DILocation(line: 306, column: 50, scope: !251, inlinedAt: !1102)
!1104 = !DILocation(line: 308, column: 33, scope: !251, inlinedAt: !1102)
!1105 = !DILocation(line: 308, column: 26, scope: !251, inlinedAt: !1102)
!1106 = !DILocation(line: 308, column: 22, scope: !251, inlinedAt: !1102)
!1107 = !DILocation(line: 308, column: 13, scope: !251, inlinedAt: !1102)
!1108 = !DILocation(line: 308, column: 5, scope: !251, inlinedAt: !1102)
!1109 = !DILocation(line: 308, column: 19, scope: !251, inlinedAt: !1102)
!1110 = !DILocation(line: 846, column: 33, scope: !1051)
!1111 = !DILocation(line: 846, column: 38, scope: !1051)
!1112 = !DILocation(line: 846, column: 52, scope: !1051)
!1113 = !DILocation(line: 846, column: 21, scope: !1051)
!1114 = !DILocation(line: 847, column: 22, scope: !1051)
!1115 = !DILocation(line: 848, column: 30, scope: !1051)
!1116 = !DILocation(line: 849, column: 21, scope: !1051)
!1117 = !DILocation(line: 849, column: 26, scope: !1051)
!1118 = !DILocation(line: 850, column: 47, scope: !1051)
!1119 = !DILocation(line: 851, column: 26, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 851, column: 17)
!1121 = !DILocation(line: 851, column: 17, scope: !1051)
!1122 = !DILocation(line: 852, column: 26, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 851, column: 45)
!1124 = !DILocation(line: 853, column: 25, scope: !1123)
!1125 = !DILocation(line: 854, column: 40, scope: !1123)
!1126 = !DILocation(line: 854, column: 24, scope: !1123)
!1127 = !DILocation(line: 854, column: 29, scope: !1123)
!1128 = !DILocation(line: 855, column: 34, scope: !1123)
!1129 = !DILocation(line: 856, column: 30, scope: !1123)
!1130 = !DILocation(line: 331, column: 46, scope: !191, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 857, column: 17, scope: !1123)
!1132 = !DILocation(line: 333, column: 12, scope: !201, inlinedAt: !1131)
!1133 = !DILocation(line: 333, column: 9, scope: !191, inlinedAt: !1131)
!1134 = !DILocation(line: 335, column: 19, scope: !204, inlinedAt: !1131)
!1135 = !DILocation(line: 335, column: 16, scope: !204, inlinedAt: !1131)
!1136 = !DILocation(line: 336, column: 5, scope: !204, inlinedAt: !1131)
!1137 = !DILocation(line: 337, column: 23, scope: !208, inlinedAt: !1131)
!1138 = !DILocation(line: 292, column: 34, scope: !210, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 337, column: 16, scope: !208, inlinedAt: !1131)
!1140 = !DILocation(line: 295, column: 18, scope: !210, inlinedAt: !1139)
!1141 = !DILocation(line: 297, column: 11, scope: !210, inlinedAt: !1139)
!1142 = !DILocation(line: 297, column: 26, scope: !210, inlinedAt: !1139)
!1143 = !DILocation(line: 297, column: 24, scope: !210, inlinedAt: !1139)
!1144 = !DILocation(line: 297, column: 48, scope: !210, inlinedAt: !1139)
!1145 = !DILocation(line: 297, column: 46, scope: !210, inlinedAt: !1139)
!1146 = !DILocation(line: 297, column: 9, scope: !210, inlinedAt: !1139)
!1147 = !DILocation(line: 294, column: 18, scope: !210, inlinedAt: !1139)
!1148 = !DILocation(line: 298, column: 20, scope: !210, inlinedAt: !1139)
!1149 = !DILocation(line: 298, column: 12, scope: !210, inlinedAt: !1139)
!1150 = !DILocation(line: 298, column: 26, scope: !210, inlinedAt: !1139)
!1151 = !DILocation(line: 338, column: 29, scope: !208, inlinedAt: !1131)
!1152 = !DILocation(line: 338, column: 20, scope: !208, inlinedAt: !1131)
!1153 = !DILocation(line: 338, column: 16, scope: !208, inlinedAt: !1131)
!1154 = !DILocation(line: 339, column: 14, scope: !208, inlinedAt: !1131)
!1155 = !DILocation(line: 0, scope: !1123)
!1156 = !DILocation(line: 858, column: 17, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 858, column: 17)
!1158 = !DILocation(line: 858, column: 17, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 858, column: 17)
!1160 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 858, column: 17, scope: !1157)
!1162 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !1161)
!1163 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !1161)
!1164 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !1161)
!1165 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !1161)
!1166 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !1161)
!1167 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !1161)
!1168 = !DILocation(line: 301, column: 36, scope: !389, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 858, column: 17, scope: !1157)
!1170 = !DILocation(line: 301, column: 48, scope: !389, inlinedAt: !1169)
!1171 = !DILocation(line: 303, column: 31, scope: !389, inlinedAt: !1169)
!1172 = !DILocation(line: 303, column: 24, scope: !389, inlinedAt: !1169)
!1173 = !DILocation(line: 303, column: 13, scope: !389, inlinedAt: !1169)
!1174 = !DILocation(line: 303, column: 5, scope: !389, inlinedAt: !1169)
!1175 = !DILocation(line: 303, column: 19, scope: !389, inlinedAt: !1169)
!1176 = !DILocation(line: 859, column: 42, scope: !1123)
!1177 = !DILocation(line: 859, column: 47, scope: !1123)
!1178 = !DILocation(line: 859, column: 36, scope: !1123)
!1179 = !DILocation(line: 859, column: 25, scope: !1123)
!1180 = !DILocation(line: 860, column: 13, scope: !1123)
!1181 = !DILocation(line: 866, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !858, file: !3, line: 866, column: 9)
!1183 = !DILocation(line: 797, column: 11, scope: !858)
!1184 = !DILocation(line: 866, column: 19, scope: !1182)
!1185 = !DILocation(line: 866, column: 9, scope: !858)
!1186 = !DILocation(line: 870, column: 19, scope: !858)
!1187 = !DILocation(line: 870, column: 24, scope: !858)
!1188 = !DILocation(line: 870, column: 38, scope: !858)
!1189 = !DILocation(line: 870, column: 14, scope: !858)
!1190 = !DILocation(line: 872, column: 26, scope: !858)
!1191 = !DILocation(line: 798, column: 18, scope: !858)
!1192 = !DILocation(line: 872, column: 5, scope: !858)
!1193 = !DILocation(line: 874, column: 5, scope: !858)
!1194 = !DILocation(line: 875, column: 5, scope: !858)
!1195 = !DILocation(line: 0, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !880, file: !3, line: 806, column: 13)
!1197 = !DILocation(line: 876, column: 1, scope: !858)
!1198 = distinct !DISubprogram(name: "tlsf_calloc", scope: !3, file: !3, line: 677, type: !1199, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!58, !27, !27, !58}
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DILocalVariable(name: "nelem", arg: 1, scope: !1198, file: !3, line: 677, type: !27)
!1203 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1198, file: !3, line: 677, type: !27)
!1204 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1198, file: !3, line: 677, type: !58)
!1205 = !DILocalVariable(name: "ret", scope: !1198, file: !3, line: 680, type: !58)
!1206 = !DILocation(line: 677, column: 26, scope: !1198)
!1207 = !DILocation(line: 677, column: 40, scope: !1198)
!1208 = !DILocation(line: 677, column: 57, scope: !1198)
!1209 = !DILocalVariable(name: "nelem", arg: 1, scope: !1210, file: !3, line: 880, type: !27)
!1210 = distinct !DISubprogram(name: "calloc_ex", scope: !3, file: !3, line: 880, type: !1199, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1211)
!1211 = !{!1209, !1212, !1213, !1214}
!1212 = !DILocalVariable(name: "elem_size", arg: 2, scope: !1210, file: !3, line: 880, type: !27)
!1213 = !DILocalVariable(name: "mem_pool", arg: 3, scope: !1210, file: !3, line: 880, type: !58)
!1214 = !DILocalVariable(name: "ptr", scope: !1210, file: !3, line: 883, type: !58)
!1215 = !DILocation(line: 880, column: 24, scope: !1210, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 684, column: 11, scope: !1198)
!1217 = !DILocation(line: 880, column: 38, scope: !1210, inlinedAt: !1216)
!1218 = !DILocation(line: 880, column: 55, scope: !1210, inlinedAt: !1216)
!1219 = !DILocation(line: 885, column: 15, scope: !1220, inlinedAt: !1216)
!1220 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 885, column: 9)
!1221 = !DILocation(line: 885, column: 33, scope: !1220, inlinedAt: !1216)
!1222 = !DILocation(line: 885, column: 20, scope: !1220, inlinedAt: !1216)
!1223 = !DILocation(line: 888, column: 33, scope: !1224, inlinedAt: !1216)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 888, column: 9)
!1225 = !DILocation(line: 888, column: 17, scope: !1224, inlinedAt: !1216)
!1226 = !DILocation(line: 883, column: 11, scope: !1210, inlinedAt: !1216)
!1227 = !DILocation(line: 888, column: 15, scope: !1224, inlinedAt: !1216)
!1228 = !DILocation(line: 888, column: 9, scope: !1210, inlinedAt: !1216)
!1229 = !DILocation(line: 890, column: 5, scope: !1210, inlinedAt: !1216)
!1230 = !DILocation(line: 892, column: 5, scope: !1210, inlinedAt: !1216)
!1231 = !DILocation(line: 0, scope: !1224, inlinedAt: !1216)
!1232 = !DILocation(line: 680, column: 11, scope: !1198)
!1233 = !DILocation(line: 688, column: 5, scope: !1198)
!1234 = !DILocation(line: 880, column: 24, scope: !1210)
!1235 = !DILocation(line: 880, column: 38, scope: !1210)
!1236 = !DILocation(line: 880, column: 55, scope: !1210)
!1237 = !DILocation(line: 885, column: 15, scope: !1220)
!1238 = !DILocation(line: 885, column: 33, scope: !1220)
!1239 = !DILocation(line: 885, column: 20, scope: !1220)
!1240 = !DILocation(line: 888, column: 33, scope: !1224)
!1241 = !DILocation(line: 888, column: 17, scope: !1224)
!1242 = !DILocation(line: 883, column: 11, scope: !1210)
!1243 = !DILocation(line: 888, column: 15, scope: !1224)
!1244 = !DILocation(line: 888, column: 9, scope: !1210)
!1245 = !DILocation(line: 890, column: 5, scope: !1210)
!1246 = !DILocation(line: 892, column: 5, scope: !1210)
!1247 = !DILocation(line: 0, scope: !1224)
!1248 = !DILocation(line: 893, column: 1, scope: !1210)
