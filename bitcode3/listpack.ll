; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@switch.table.lpCurrentEncodedSize = private unnamed_addr constant [4 x i32] [i32 3, i32 4, i32 5, i32 9]
@switch.table.lpInsert = private unnamed_addr constant [4 x i64] [i64 3, i64 4, i64 5, i64 9]

; Function Attrs: noredzone nounwind
define dso_local i32 @lpStringToInt64(i8* nocapture readonly, i64, i64*) local_unnamed_addr #0 !dbg !25 {
  %4 = icmp eq i64 %1, 0, !dbg !44
  br i1 %4, label %68, label %5, !dbg !46

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %1, 1, !dbg !47
  %7 = load i8, i8* %0, align 1, !dbg !49, !tbaa !51
  %8 = icmp eq i8 %7, 48, !dbg !54
  %9 = and i1 %6, %8, !dbg !55
  br i1 %9, label %10, label %13, !dbg !55

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64* %2, null, !dbg !56
  br i1 %11, label %68, label %12, !dbg !59

; <label>:12:                                     ; preds = %10
  store i64 0, i64* %2, align 8, !dbg !60, !tbaa !61
  br label %68, !dbg !63

; <label>:13:                                     ; preds = %5
  %14 = icmp eq i8 %7, 45, !dbg !64
  br i1 %14, label %15, label %19, !dbg !65

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !66
  br i1 %6, label %68, label %17, !dbg !68

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* %16, align 1, !dbg !69, !tbaa !51
  br label %19, !dbg !68

; <label>:19:                                     ; preds = %17, %13
  %20 = phi i8 [ %18, %17 ], [ %7, %13 ], !dbg !69
  %21 = phi i8* [ %16, %17 ], [ %0, %13 ], !dbg !71
  %22 = phi i64 [ 2, %17 ], [ 1, %13 ]
  %23 = phi i32 [ 1, %17 ], [ 0, %13 ], !dbg !71
  %24 = add i8 %20, -49, !dbg !72
  %25 = icmp ult i8 %24, 9, !dbg !72
  br i1 %25, label %26, label %30, !dbg !72

; <label>:26:                                     ; preds = %19
  %27 = sext i8 %20 to i64, !dbg !69
  %28 = add nsw i64 %27, -48, !dbg !73
  %29 = icmp ult i64 %22, %1, !dbg !76
  br i1 %29, label %34, label %54, !dbg !77

; <label>:30:                                     ; preds = %19
  %31 = icmp eq i8 %20, 48, !dbg !78
  %32 = and i1 %6, %31, !dbg !80
  br i1 %32, label %33, label %68, !dbg !80

; <label>:33:                                     ; preds = %30
  store i64 0, i64* %2, align 8, !dbg !81, !tbaa !61
  br label %68, !dbg !83

; <label>:34:                                     ; preds = %26, %49
  %35 = phi i8* [ %38, %49 ], [ %21, %26 ]
  %36 = phi i64 [ %51, %49 ], [ %28, %26 ]
  %37 = phi i64 [ %52, %49 ], [ %22, %26 ]
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !84
  %39 = load i8, i8* %38, align 1, !dbg !86, !tbaa !51
  %40 = sext i8 %39 to i64, !dbg !86
  %41 = add i8 %39, -48, !dbg !87
  %42 = icmp ugt i8 %41, 9, !dbg !87
  %43 = icmp ugt i64 %36, 1844674407370955161, !dbg !88
  %44 = or i1 %43, %42, !dbg !87
  br i1 %44, label %68, label %45, !dbg !87

; <label>:45:                                     ; preds = %34
  %46 = mul i64 %36, 10, !dbg !90
  %47 = sub nsw i64 47, %40, !dbg !91
  %48 = icmp ugt i64 %46, %47, !dbg !93
  br i1 %48, label %68, label %49, !dbg !94

; <label>:49:                                     ; preds = %45
  %50 = add i64 %46, -48, !dbg !95
  %51 = add i64 %50, %40, !dbg !96
  %52 = add nuw i64 %37, 1, !dbg !97
  %53 = icmp ult i64 %52, %1, !dbg !76
  br i1 %53, label %34, label %54, !dbg !77, !llvm.loop !98

; <label>:54:                                     ; preds = %49, %26
  %55 = phi i64 [ %28, %26 ], [ %51, %49 ], !dbg !84
  %56 = icmp eq i32 %23, 0, !dbg !101
  br i1 %56, label %63, label %57, !dbg !103

; <label>:57:                                     ; preds = %54
  %58 = icmp ugt i64 %55, -9223372036854775808, !dbg !104
  br i1 %58, label %68, label %59, !dbg !107

; <label>:59:                                     ; preds = %57
  %60 = icmp eq i64* %2, null, !dbg !108
  br i1 %60, label %68, label %61, !dbg !110

; <label>:61:                                     ; preds = %59
  %62 = sub i64 0, %55, !dbg !111
  store i64 %62, i64* %2, align 8, !dbg !112, !tbaa !61
  br label %68, !dbg !113

; <label>:63:                                     ; preds = %54
  %64 = icmp slt i64 %55, 0, !dbg !114
  br i1 %64, label %68, label %65, !dbg !117

; <label>:65:                                     ; preds = %63
  %66 = icmp eq i64* %2, null, !dbg !118
  br i1 %66, label %68, label %67, !dbg !120

; <label>:67:                                     ; preds = %65
  store i64 %55, i64* %2, align 8, !dbg !121, !tbaa !61
  br label %68, !dbg !122

; <label>:68:                                     ; preds = %34, %45, %61, %67, %65, %59, %63, %57, %30, %15, %12, %10, %3, %33
  %69 = phi i32 [ 1, %33 ], [ 0, %3 ], [ 1, %10 ], [ 1, %12 ], [ 0, %15 ], [ 0, %30 ], [ 0, %57 ], [ 0, %63 ], [ 1, %59 ], [ 1, %65 ], [ 1, %67 ], [ 1, %61 ], [ 0, %45 ], [ 0, %34 ], !dbg !123
  ret i32 %69, !dbg !125
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @lpNew() local_unnamed_addr #0 !dbg !126 {
  %1 = tail call i8* @zmalloc(i64 7) #5, !dbg !133
  %2 = icmp eq i8* %1, null, !dbg !135
  br i1 %2, label %10, label %3, !dbg !137

; <label>:3:                                      ; preds = %0
  store i8 7, i8* %1, align 1, !dbg !138, !tbaa !51
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !138
  store i8 0, i8* %4, align 1, !dbg !138, !tbaa !51
  %5 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !138
  store i8 0, i8* %5, align 1, !dbg !138, !tbaa !51
  %6 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !138
  store i8 0, i8* %6, align 1, !dbg !138, !tbaa !51
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !140
  store i8 0, i8* %7, align 1, !dbg !140, !tbaa !51
  %8 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !140
  store i8 0, i8* %8, align 1, !dbg !140, !tbaa !51
  %9 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !142
  store i8 -1, i8* %9, align 1, !dbg !143, !tbaa !51
  br label %10, !dbg !144

; <label>:10:                                     ; preds = %0, %3
  ret i8* %1, !dbg !145
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpFree(i8*) local_unnamed_addr #0 !dbg !146 {
  tail call void @zfree(i8* %0) #5, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lpEncodeGetType(i8* nocapture readonly, i32, i8*, i64* nocapture) local_unnamed_addr #0 !dbg !154 {
  %5 = zext i32 %1 to i64, !dbg !177
  %6 = icmp eq i32 %1, 0, !dbg !184
  br i1 %6, label %150, label %7, !dbg !185

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i32 %1, 1, !dbg !186
  %9 = load i8, i8* %0, align 1, !dbg !187, !tbaa !51
  %10 = icmp eq i8 %9, 48, !dbg !188
  %11 = and i1 %8, %10, !dbg !189
  br i1 %11, label %64, label %12, !dbg !189

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %9, 45, !dbg !190
  br i1 %13, label %14, label %18, !dbg !191

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !192
  br i1 %8, label %150, label %16, !dbg !193

; <label>:16:                                     ; preds = %14
  %17 = load i8, i8* %15, align 1, !dbg !194, !tbaa !51
  br label %18, !dbg !193

; <label>:18:                                     ; preds = %16, %12
  %19 = phi i8 [ %17, %16 ], [ %9, %12 ], !dbg !194
  %20 = phi i8* [ %15, %16 ], [ %0, %12 ], !dbg !195
  %21 = phi i64 [ 2, %16 ], [ 1, %12 ]
  %22 = phi i32 [ 1, %16 ], [ 0, %12 ], !dbg !195
  %23 = add i8 %19, -49, !dbg !196
  %24 = icmp ult i8 %23, 9, !dbg !196
  br i1 %24, label %25, label %29, !dbg !196

; <label>:25:                                     ; preds = %18
  %26 = sext i8 %19 to i64, !dbg !194
  %27 = add nsw i64 %26, -48, !dbg !197
  %28 = icmp ult i64 %21, %5, !dbg !199
  br i1 %28, label %32, label %52, !dbg !200

; <label>:29:                                     ; preds = %18
  %30 = icmp eq i8 %19, 48, !dbg !201
  %31 = and i1 %8, %30, !dbg !202
  br i1 %31, label %64, label %148, !dbg !202

; <label>:32:                                     ; preds = %25, %47
  %33 = phi i8* [ %36, %47 ], [ %20, %25 ]
  %34 = phi i64 [ %49, %47 ], [ %27, %25 ]
  %35 = phi i64 [ %50, %47 ], [ %21, %25 ]
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !203
  %37 = load i8, i8* %36, align 1, !dbg !204, !tbaa !51
  %38 = sext i8 %37 to i64, !dbg !204
  %39 = add i8 %37, -48, !dbg !205
  %40 = icmp ugt i8 %39, 9, !dbg !205
  %41 = icmp ugt i64 %34, 1844674407370955161, !dbg !206
  %42 = or i1 %41, %40, !dbg !205
  br i1 %42, label %148, label %43, !dbg !205

; <label>:43:                                     ; preds = %32
  %44 = mul i64 %34, 10, !dbg !207
  %45 = sub nsw i64 47, %38, !dbg !208
  %46 = icmp ugt i64 %44, %45, !dbg !209
  br i1 %46, label %148, label %47, !dbg !210

; <label>:47:                                     ; preds = %43
  %48 = add i64 %44, -48, !dbg !211
  %49 = add i64 %48, %38, !dbg !212
  %50 = add nuw nsw i64 %35, 1, !dbg !213
  %51 = icmp ult i64 %50, %5, !dbg !199
  br i1 %51, label %32, label %52, !dbg !200, !llvm.loop !98

; <label>:52:                                     ; preds = %47, %25
  %53 = phi i64 [ %27, %25 ], [ %49, %47 ], !dbg !203
  %54 = icmp eq i32 %22, 0, !dbg !214
  br i1 %54, label %59, label %55, !dbg !215

; <label>:55:                                     ; preds = %52
  %56 = icmp ugt i64 %53, -9223372036854775808, !dbg !216
  br i1 %56, label %148, label %57, !dbg !217

; <label>:57:                                     ; preds = %55
  %58 = sub i64 0, %53, !dbg !218
  br label %61, !dbg !219

; <label>:59:                                     ; preds = %52
  %60 = icmp slt i64 %53, 0, !dbg !220
  br i1 %60, label %148, label %61, !dbg !221

; <label>:61:                                     ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %53, %59 ]
  %63 = icmp ult i64 %62, 128, !dbg !223
  br i1 %63, label %64, label %67, !dbg !223

; <label>:64:                                     ; preds = %29, %7, %61
  %65 = phi i64 [ %62, %61 ], [ 0, %7 ], [ 0, %29 ]
  %66 = trunc i64 %65 to i8, !dbg !224
  store i8 %66, i8* %2, align 1, !dbg !226, !tbaa !51
  br label %158, !dbg !227

; <label>:67:                                     ; preds = %61
  %68 = add i64 %62, 4096, !dbg !228
  %69 = icmp ult i64 %68, 8192, !dbg !228
  br i1 %69, label %70, label %79, !dbg !228

; <label>:70:                                     ; preds = %67
  %71 = icmp slt i64 %62, 0, !dbg !229
  %72 = add nsw i64 %62, 8192, !dbg !232
  %73 = select i1 %71, i64 %72, i64 %62, !dbg !233
  %74 = lshr i64 %73, 8, !dbg !234
  %75 = trunc i64 %74 to i8, !dbg !235
  %76 = or i8 %75, -64, !dbg !235
  store i8 %76, i8* %2, align 1, !dbg !236, !tbaa !51
  %77 = trunc i64 %73 to i8, !dbg !237
  %78 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !238
  store i8 %77, i8* %78, align 1, !dbg !239, !tbaa !51
  br label %158, !dbg !240

; <label>:79:                                     ; preds = %67
  %80 = add i64 %62, 32768, !dbg !241
  %81 = icmp ult i64 %80, 65536, !dbg !241
  br i1 %81, label %82, label %91, !dbg !241

; <label>:82:                                     ; preds = %79
  %83 = icmp slt i64 %62, 0, !dbg !242
  %84 = add nsw i64 %62, 65536, !dbg !245
  %85 = select i1 %83, i64 %84, i64 %62, !dbg !246
  store i8 -15, i8* %2, align 1, !dbg !247, !tbaa !51
  %86 = trunc i64 %85 to i8, !dbg !248
  %87 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !249
  store i8 %86, i8* %87, align 1, !dbg !250, !tbaa !51
  %88 = lshr i64 %85, 8, !dbg !251
  %89 = trunc i64 %88 to i8, !dbg !252
  %90 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !253
  store i8 %89, i8* %90, align 1, !dbg !254, !tbaa !51
  br label %158, !dbg !255

; <label>:91:                                     ; preds = %79
  %92 = add i64 %62, 8388608, !dbg !256
  %93 = icmp ult i64 %92, 16777216, !dbg !256
  br i1 %93, label %94, label %106, !dbg !256

; <label>:94:                                     ; preds = %91
  %95 = icmp slt i64 %62, 0, !dbg !257
  %96 = add nsw i64 %62, 16777216, !dbg !260
  %97 = select i1 %95, i64 %96, i64 %62, !dbg !261
  store i8 -14, i8* %2, align 1, !dbg !262, !tbaa !51
  %98 = trunc i64 %97 to i8, !dbg !263
  %99 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !264
  store i8 %98, i8* %99, align 1, !dbg !265, !tbaa !51
  %100 = lshr i64 %97, 8, !dbg !266
  %101 = trunc i64 %100 to i8, !dbg !267
  %102 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !268
  store i8 %101, i8* %102, align 1, !dbg !269, !tbaa !51
  %103 = lshr i64 %97, 16, !dbg !270
  %104 = trunc i64 %103 to i8, !dbg !271
  %105 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !272
  store i8 %104, i8* %105, align 1, !dbg !273, !tbaa !51
  br label %158, !dbg !274

; <label>:106:                                    ; preds = %91
  %107 = add i64 %62, 2147483648, !dbg !275
  %108 = icmp ult i64 %107, 4294967296, !dbg !275
  br i1 %108, label %109, label %124, !dbg !275

; <label>:109:                                    ; preds = %106
  %110 = icmp slt i64 %62, 0, !dbg !276
  %111 = add nsw i64 %62, 4294967296, !dbg !279
  %112 = select i1 %110, i64 %111, i64 %62, !dbg !280
  store i8 -13, i8* %2, align 1, !dbg !281, !tbaa !51
  %113 = trunc i64 %112 to i8, !dbg !282
  %114 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !283
  store i8 %113, i8* %114, align 1, !dbg !284, !tbaa !51
  %115 = lshr i64 %112, 8, !dbg !285
  %116 = trunc i64 %115 to i8, !dbg !286
  %117 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !287
  store i8 %116, i8* %117, align 1, !dbg !288, !tbaa !51
  %118 = lshr i64 %112, 16, !dbg !289
  %119 = trunc i64 %118 to i8, !dbg !290
  %120 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !291
  store i8 %119, i8* %120, align 1, !dbg !292, !tbaa !51
  %121 = lshr i64 %112, 24, !dbg !293
  %122 = trunc i64 %121 to i8, !dbg !294
  %123 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !295
  store i8 %122, i8* %123, align 1, !dbg !296, !tbaa !51
  br label %158, !dbg !297

; <label>:124:                                    ; preds = %106
  store i8 -12, i8* %2, align 1, !dbg !299, !tbaa !51
  %125 = trunc i64 %62 to i8, !dbg !300
  %126 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !301
  store i8 %125, i8* %126, align 1, !dbg !302, !tbaa !51
  %127 = lshr i64 %62, 8, !dbg !303
  %128 = trunc i64 %127 to i8, !dbg !304
  %129 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !305
  store i8 %128, i8* %129, align 1, !dbg !306, !tbaa !51
  %130 = lshr i64 %62, 16, !dbg !307
  %131 = trunc i64 %130 to i8, !dbg !308
  %132 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !309
  store i8 %131, i8* %132, align 1, !dbg !310, !tbaa !51
  %133 = lshr i64 %62, 24, !dbg !311
  %134 = trunc i64 %133 to i8, !dbg !312
  %135 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !313
  store i8 %134, i8* %135, align 1, !dbg !314, !tbaa !51
  %136 = lshr i64 %62, 32, !dbg !315
  %137 = trunc i64 %136 to i8, !dbg !316
  %138 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !317
  store i8 %137, i8* %138, align 1, !dbg !318, !tbaa !51
  %139 = lshr i64 %62, 40, !dbg !319
  %140 = trunc i64 %139 to i8, !dbg !320
  %141 = getelementptr inbounds i8, i8* %2, i64 6, !dbg !321
  store i8 %140, i8* %141, align 1, !dbg !322, !tbaa !51
  %142 = lshr i64 %62, 48, !dbg !323
  %143 = trunc i64 %142 to i8, !dbg !324
  %144 = getelementptr inbounds i8, i8* %2, i64 7, !dbg !325
  store i8 %143, i8* %144, align 1, !dbg !326, !tbaa !51
  %145 = lshr i64 %62, 56, !dbg !327
  %146 = trunc i64 %145 to i8, !dbg !328
  %147 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !329
  store i8 %146, i8* %147, align 1, !dbg !330, !tbaa !51
  br label %158

; <label>:148:                                    ; preds = %43, %32, %29, %55, %59
  %149 = icmp ult i32 %1, 64, !dbg !331
  br i1 %149, label %150, label %152, !dbg !334

; <label>:150:                                    ; preds = %14, %4, %148
  %151 = add i32 %1, 1, !dbg !335
  br label %158, !dbg !336

; <label>:152:                                    ; preds = %148
  %153 = icmp ult i32 %1, 4096, !dbg !337
  br i1 %153, label %154, label %156, !dbg !339

; <label>:154:                                    ; preds = %152
  %155 = add i32 %1, 2, !dbg !340
  br label %158, !dbg !341

; <label>:156:                                    ; preds = %152
  %157 = add i32 %1, 5, !dbg !342
  br label %158

; <label>:158:                                    ; preds = %150, %156, %154, %64, %82, %109, %124, %94, %70
  %159 = phi i32 [ %151, %150 ], [ %157, %156 ], [ %155, %154 ], [ 1, %64 ], [ 3, %82 ], [ 5, %109 ], [ 9, %124 ], [ 4, %94 ], [ 2, %70 ]
  %160 = phi i32 [ 1, %150 ], [ 1, %156 ], [ 1, %154 ], [ 0, %64 ], [ 0, %82 ], [ 0, %109 ], [ 0, %124 ], [ 0, %94 ], [ 0, %70 ], !dbg !343
  %161 = zext i32 %159 to i64
  store i64 %161, i64* %3, align 8, !dbg !344, !tbaa !61
  ret i32 %160, !dbg !345
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lpEncodeBacklen(i8*, i64) local_unnamed_addr #0 !dbg !346 {
  %3 = icmp ult i64 %1, 128, !dbg !354
  br i1 %3, label %4, label %8, !dbg !356

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i8* %0, null, !dbg !357
  br i1 %5, label %69, label %6, !dbg !360

; <label>:6:                                      ; preds = %4
  %7 = trunc i64 %1 to i8, !dbg !361
  store i8 %7, i8* %0, align 1, !dbg !362, !tbaa !51
  br label %69, !dbg !363

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %1, 16383, !dbg !364
  br i1 %9, label %10, label %18, !dbg !366

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i8* %0, null, !dbg !367
  br i1 %11, label %69, label %12, !dbg !370

; <label>:12:                                     ; preds = %10
  %13 = lshr i64 %1, 7, !dbg !371
  %14 = trunc i64 %13 to i8, !dbg !373
  store i8 %14, i8* %0, align 1, !dbg !374, !tbaa !51
  %15 = trunc i64 %1 to i8, !dbg !375
  %16 = or i8 %15, -128, !dbg !375
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !376
  store i8 %16, i8* %17, align 1, !dbg !377, !tbaa !51
  br label %69, !dbg !378

; <label>:18:                                     ; preds = %8
  %19 = icmp ult i64 %1, 2097151, !dbg !379
  br i1 %19, label %20, label %32, !dbg !381

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i8* %0, null, !dbg !382
  br i1 %21, label %69, label %22, !dbg !385

; <label>:22:                                     ; preds = %20
  %23 = lshr i64 %1, 14, !dbg !386
  %24 = trunc i64 %23 to i8, !dbg !388
  store i8 %24, i8* %0, align 1, !dbg !389, !tbaa !51
  %25 = lshr i64 %1, 7, !dbg !390
  %26 = trunc i64 %25 to i8, !dbg !391
  %27 = or i8 %26, -128, !dbg !391
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !392
  store i8 %27, i8* %28, align 1, !dbg !393, !tbaa !51
  %29 = trunc i64 %1 to i8, !dbg !394
  %30 = or i8 %29, -128, !dbg !394
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !395
  store i8 %30, i8* %31, align 1, !dbg !396, !tbaa !51
  br label %69, !dbg !397

; <label>:32:                                     ; preds = %18
  %33 = icmp ult i64 %1, 268435455, !dbg !398
  %34 = icmp ne i8* %0, null, !dbg !400
  br i1 %33, label %35, label %50, !dbg !403

; <label>:35:                                     ; preds = %32
  br i1 %34, label %36, label %69, !dbg !404

; <label>:36:                                     ; preds = %35
  %37 = lshr i64 %1, 21, !dbg !406
  %38 = trunc i64 %37 to i8, !dbg !409
  store i8 %38, i8* %0, align 1, !dbg !410, !tbaa !51
  %39 = lshr i64 %1, 14, !dbg !411
  %40 = trunc i64 %39 to i8, !dbg !412
  %41 = or i8 %40, -128, !dbg !412
  %42 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !413
  store i8 %41, i8* %42, align 1, !dbg !414, !tbaa !51
  %43 = lshr i64 %1, 7, !dbg !415
  %44 = trunc i64 %43 to i8, !dbg !416
  %45 = or i8 %44, -128, !dbg !416
  %46 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !417
  store i8 %45, i8* %46, align 1, !dbg !418, !tbaa !51
  %47 = trunc i64 %1 to i8, !dbg !419
  %48 = or i8 %47, -128, !dbg !419
  %49 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !420
  store i8 %48, i8* %49, align 1, !dbg !421, !tbaa !51
  br label %69, !dbg !422

; <label>:50:                                     ; preds = %32
  br i1 %34, label %51, label %69, !dbg !423

; <label>:51:                                     ; preds = %50
  %52 = lshr i64 %1, 28, !dbg !424
  %53 = trunc i64 %52 to i8, !dbg !426
  store i8 %53, i8* %0, align 1, !dbg !427, !tbaa !51
  %54 = lshr i64 %1, 21, !dbg !428
  %55 = trunc i64 %54 to i8, !dbg !429
  %56 = or i8 %55, -128, !dbg !429
  %57 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !430
  store i8 %56, i8* %57, align 1, !dbg !431, !tbaa !51
  %58 = lshr i64 %1, 14, !dbg !432
  %59 = trunc i64 %58 to i8, !dbg !433
  %60 = or i8 %59, -128, !dbg !433
  %61 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !434
  store i8 %60, i8* %61, align 1, !dbg !435, !tbaa !51
  %62 = lshr i64 %1, 7, !dbg !436
  %63 = trunc i64 %62 to i8, !dbg !437
  %64 = or i8 %63, -128, !dbg !437
  %65 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !438
  store i8 %64, i8* %65, align 1, !dbg !439, !tbaa !51
  %66 = trunc i64 %1 to i8, !dbg !440
  %67 = or i8 %66, -128, !dbg !440
  %68 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !441
  store i8 %67, i8* %68, align 1, !dbg !442, !tbaa !51
  br label %69, !dbg !443

; <label>:69:                                     ; preds = %50, %51, %35, %36, %22, %20, %12, %10, %6, %4
  %70 = phi i64 [ 1, %4 ], [ 1, %6 ], [ 2, %10 ], [ 2, %12 ], [ 3, %20 ], [ 3, %22 ], [ 4, %36 ], [ 4, %35 ], [ 5, %51 ], [ 5, %50 ], !dbg !444
  ret i64 %70, !dbg !445
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @lpDecodeBacklen(i8* nocapture readonly) local_unnamed_addr #4 !dbg !446 {
  %2 = load i8, i8* %0, align 1, !dbg !456, !tbaa !51
  %3 = and i8 %2, 127, !dbg !458
  %4 = zext i8 %3 to i64, !dbg !459
  %5 = icmp slt i8 %2, 0, !dbg !460
  br i1 %5, label %6, label %14, !dbg !462

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !463
  %8 = load i8, i8* %7, align 1, !dbg !456, !tbaa !51
  %9 = and i8 %8, 127, !dbg !458
  %10 = zext i8 %9 to i64, !dbg !459
  %11 = shl nuw nsw i64 %10, 7, !dbg !464
  %12 = or i64 %11, %4, !dbg !465
  %13 = icmp slt i8 %8, 0, !dbg !460
  br i1 %13, label %16, label %14, !dbg !462

; <label>:14:                                     ; preds = %24, %16, %6, %1
  %15 = phi i64 [ %4, %1 ], [ %12, %6 ], [ %22, %16 ], [ %30, %24 ], !dbg !466
  ret i64 %15, !dbg !467

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !463
  %18 = load i8, i8* %17, align 1, !dbg !456, !tbaa !51
  %19 = and i8 %18, 127, !dbg !458
  %20 = zext i8 %19 to i64, !dbg !459
  %21 = shl nuw nsw i64 %20, 14, !dbg !464
  %22 = or i64 %21, %12, !dbg !465
  %23 = icmp slt i8 %18, 0, !dbg !460
  br i1 %23, label %24, label %14, !dbg !462

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !463
  %26 = load i8, i8* %25, align 1, !dbg !456, !tbaa !51
  %27 = and i8 %26, 127, !dbg !458
  %28 = zext i8 %27 to i64, !dbg !459
  %29 = shl nuw nsw i64 %28, 21, !dbg !464
  %30 = or i64 %29, %22, !dbg !465
  %31 = icmp slt i8 %26, 0, !dbg !460
  br i1 %31, label %32, label %14, !dbg !462

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %0, i64 -4, !dbg !463
  %34 = load i8, i8* %33, align 1, !dbg !456, !tbaa !51
  %35 = and i8 %34, 127, !dbg !458
  %36 = zext i8 %35 to i64, !dbg !459
  %37 = shl nuw nsw i64 %36, 28, !dbg !464
  %38 = or i64 %37, %30, !dbg !465
  %39 = icmp slt i8 %34, 0, !dbg !460
  %40 = select i1 %39, i64 -1, i64 %38, !dbg !462
  ret i64 %40, !dbg !462
}

; Function Attrs: noredzone nounwind
define dso_local void @lpEncodeString(i8*, i8*, i32) local_unnamed_addr #0 !dbg !468 {
  %4 = icmp ult i32 %2, 64, !dbg !478
  br i1 %4, label %5, label %11, !dbg !480

; <label>:5:                                      ; preds = %3
  %6 = trunc i32 %2 to i8, !dbg !481
  %7 = or i8 %6, -128, !dbg !481
  store i8 %7, i8* %0, align 1, !dbg !483, !tbaa !51
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !484
  %9 = zext i32 %2 to i64, !dbg !485
  %10 = tail call i8* @memcpy(i8* nonnull %8, i8* %1, i64 %9) #5, !dbg !486
  br label %37, !dbg !487

; <label>:11:                                     ; preds = %3
  %12 = icmp ult i32 %2, 4096, !dbg !488
  br i1 %12, label %13, label %22, !dbg !490

; <label>:13:                                     ; preds = %11
  %14 = lshr i32 %2, 8, !dbg !491
  %15 = trunc i32 %14 to i8, !dbg !493
  %16 = or i8 %15, -32, !dbg !493
  store i8 %16, i8* %0, align 1, !dbg !494, !tbaa !51
  %17 = trunc i32 %2 to i8, !dbg !495
  %18 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !496
  store i8 %17, i8* %18, align 1, !dbg !497, !tbaa !51
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !498
  %20 = zext i32 %2 to i64, !dbg !499
  %21 = tail call i8* @memcpy(i8* nonnull %19, i8* %1, i64 %20) #5, !dbg !500
  br label %37, !dbg !501

; <label>:22:                                     ; preds = %11
  store i8 -16, i8* %0, align 1, !dbg !502, !tbaa !51
  %23 = trunc i32 %2 to i8, !dbg !504
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !505
  store i8 %23, i8* %24, align 1, !dbg !506, !tbaa !51
  %25 = lshr i32 %2, 8, !dbg !507
  %26 = trunc i32 %25 to i8, !dbg !508
  %27 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !509
  store i8 %26, i8* %27, align 1, !dbg !510, !tbaa !51
  %28 = lshr i32 %2, 16, !dbg !511
  %29 = trunc i32 %28 to i8, !dbg !512
  %30 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !513
  store i8 %29, i8* %30, align 1, !dbg !514, !tbaa !51
  %31 = lshr i32 %2, 24, !dbg !515
  %32 = trunc i32 %31 to i8, !dbg !516
  %33 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !517
  store i8 %32, i8* %33, align 1, !dbg !518, !tbaa !51
  %34 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !519
  %35 = zext i32 %2 to i64, !dbg !520
  %36 = tail call i8* @memcpy(i8* nonnull %34, i8* %1, i64 %35) #5, !dbg !521
  br label %37

; <label>:37:                                     ; preds = %13, %22, %5
  ret void, !dbg !522
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lpCurrentEncodedSize(i8* nocapture readonly) local_unnamed_addr #4 !dbg !523 {
  %2 = load i8, i8* %0, align 1, !dbg !529, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !529
  %4 = icmp sgt i8 %2, -1, !dbg !529
  br i1 %4, label %54, label %5, !dbg !531

; <label>:5:                                      ; preds = %1
  %6 = and i32 %3, 192, !dbg !532
  %7 = icmp eq i32 %6, 128, !dbg !532
  br i1 %7, label %8, label %11, !dbg !534

; <label>:8:                                      ; preds = %5
  %9 = and i32 %3, 63, !dbg !535
  %10 = add nuw nsw i32 %9, 1, !dbg !536
  br label %54, !dbg !537

; <label>:11:                                     ; preds = %5
  %12 = and i32 %3, 224, !dbg !538
  %13 = icmp eq i32 %12, 192, !dbg !538
  br i1 %13, label %54, label %14, !dbg !540

; <label>:14:                                     ; preds = %11
  %15 = add i8 %2, 15, !dbg !541
  %16 = icmp ult i8 %15, 4, !dbg !541
  br i1 %16, label %50, label %17, !dbg !541

; <label>:17:                                     ; preds = %14
  %18 = and i32 %3, 240, !dbg !542
  %19 = icmp eq i32 %18, 224, !dbg !542
  br i1 %19, label %20, label %28, !dbg !544

; <label>:20:                                     ; preds = %17
  %21 = shl nuw nsw i32 %3, 8, !dbg !545
  %22 = and i32 %21, 3840, !dbg !545
  %23 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !545
  %24 = load i8, i8* %23, align 1, !dbg !545, !tbaa !51
  %25 = zext i8 %24 to i32, !dbg !545
  %26 = or i32 %22, %25, !dbg !545
  %27 = add nuw nsw i32 %26, 2, !dbg !546
  br label %54, !dbg !547

; <label>:28:                                     ; preds = %17
  switch i8 %2, label %49 [
    i8 -16, label %29
    i8 -1, label %54
  ], !dbg !548

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !549
  %31 = load i8, i8* %30, align 1, !dbg !549, !tbaa !51
  %32 = zext i8 %31 to i32, !dbg !549
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !549
  %34 = load i8, i8* %33, align 1, !dbg !549, !tbaa !51
  %35 = zext i8 %34 to i32, !dbg !549
  %36 = shl nuw nsw i32 %35, 8, !dbg !549
  %37 = or i32 %36, %32, !dbg !549
  %38 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !549
  %39 = load i8, i8* %38, align 1, !dbg !549, !tbaa !51
  %40 = zext i8 %39 to i32, !dbg !549
  %41 = shl nuw nsw i32 %40, 16, !dbg !549
  %42 = or i32 %37, %41, !dbg !549
  %43 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !549
  %44 = load i8, i8* %43, align 1, !dbg !549, !tbaa !51
  %45 = zext i8 %44 to i32, !dbg !549
  %46 = shl nuw i32 %45, 24, !dbg !549
  %47 = or i32 %42, %46, !dbg !549
  %48 = add i32 %47, 5, !dbg !551
  br label %54, !dbg !552

; <label>:49:                                     ; preds = %28
  br label %54, !dbg !553

; <label>:50:                                     ; preds = %14
  %51 = sext i8 %15 to i64, !dbg !541
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.lpCurrentEncodedSize, i64 0, i64 %51, !dbg !541
  %53 = load i32, i32* %52, align 4, !dbg !541
  ret i32 %53, !dbg !541

; <label>:54:                                     ; preds = %28, %11, %1, %49, %29, %20, %8
  %55 = phi i32 [ %10, %8 ], [ %27, %20 ], [ %48, %29 ], [ 0, %49 ], [ 1, %1 ], [ 2, %11 ], [ 1, %28 ], !dbg !554
  ret i32 %55, !dbg !555
}

; Function Attrs: noredzone nounwind readonly
define dso_local nonnull i8* @lpSkip(i8* readonly) local_unnamed_addr #4 !dbg !556 {
  %2 = load i8, i8* %0, align 1, !dbg !565, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !565
  %4 = icmp sgt i8 %2, -1, !dbg !565
  br i1 %4, label %66, label %5, !dbg !566

; <label>:5:                                      ; preds = %1
  %6 = and i32 %3, 192, !dbg !567
  %7 = icmp eq i32 %6, 128, !dbg !567
  br i1 %7, label %8, label %12, !dbg !568

; <label>:8:                                      ; preds = %5
  %9 = and i32 %3, 63, !dbg !569
  %10 = add nuw nsw i32 %9, 1, !dbg !570
  %11 = zext i32 %10 to i64, !dbg !571
  br label %66, !dbg !576

; <label>:12:                                     ; preds = %5
  %13 = and i32 %3, 224, !dbg !577
  %14 = icmp eq i32 %13, 192, !dbg !577
  br i1 %14, label %66, label %15, !dbg !578

; <label>:15:                                     ; preds = %12
  %16 = add i8 %2, 15, !dbg !579
  %17 = icmp ult i8 %16, 4, !dbg !579
  br i1 %17, label %62, label %18, !dbg !579

; <label>:18:                                     ; preds = %15
  %19 = and i32 %3, 240, !dbg !580
  %20 = icmp eq i32 %19, 224, !dbg !580
  br i1 %20, label %21, label %28, !dbg !581

; <label>:21:                                     ; preds = %18
  %22 = shl nuw nsw i32 %3, 8, !dbg !582
  %23 = and i32 %22, 3840, !dbg !582
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !582
  %25 = load i8, i8* %24, align 1, !dbg !582, !tbaa !51
  %26 = zext i8 %25 to i32, !dbg !582
  %27 = or i32 %23, %26, !dbg !582
  br label %49, !dbg !583

; <label>:28:                                     ; preds = %18
  switch i8 %2, label %48 [
    i8 -16, label %29
    i8 -1, label %66
  ], !dbg !584

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !585
  %31 = load i8, i8* %30, align 1, !dbg !585, !tbaa !51
  %32 = zext i8 %31 to i32, !dbg !585
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !585
  %34 = load i8, i8* %33, align 1, !dbg !585, !tbaa !51
  %35 = zext i8 %34 to i32, !dbg !585
  %36 = shl nuw nsw i32 %35, 8, !dbg !585
  %37 = or i32 %36, %32, !dbg !585
  %38 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !585
  %39 = load i8, i8* %38, align 1, !dbg !585, !tbaa !51
  %40 = zext i8 %39 to i32, !dbg !585
  %41 = shl nuw nsw i32 %40, 16, !dbg !585
  %42 = or i32 %37, %41, !dbg !585
  %43 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !585
  %44 = load i8, i8* %43, align 1, !dbg !585, !tbaa !51
  %45 = zext i8 %44 to i32, !dbg !585
  %46 = shl nuw i32 %45, 24, !dbg !585
  %47 = or i32 %42, %46, !dbg !585
  br label %49, !dbg !586

; <label>:48:                                     ; preds = %28
  br label %66, !dbg !587

; <label>:49:                                     ; preds = %21, %29
  %50 = phi i32 [ 2, %21 ], [ 5, %29 ]
  %51 = phi i32 [ %27, %21 ], [ %47, %29 ]
  %52 = add i32 %51, %50, !dbg !588
  %53 = zext i32 %52 to i64, !dbg !571
  %54 = icmp ult i32 %52, 128, !dbg !589
  br i1 %54, label %66, label %55, !dbg !576

; <label>:55:                                     ; preds = %49
  %56 = icmp ult i32 %52, 16383, !dbg !590
  br i1 %56, label %66, label %57, !dbg !591

; <label>:57:                                     ; preds = %55
  %58 = icmp ult i32 %52, 2097151, !dbg !592
  br i1 %58, label %66, label %59, !dbg !593

; <label>:59:                                     ; preds = %57
  %60 = icmp ult i32 %52, 268435455, !dbg !594
  %61 = select i1 %60, i64 4, i64 5, !dbg !595
  br label %66, !dbg !595

; <label>:62:                                     ; preds = %15
  %63 = sext i8 %16 to i64, !dbg !579
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.lpInsert, i64 0, i64 %63, !dbg !579
  %65 = load i64, i64* %64, align 8, !dbg !579
  br label %66, !dbg !579

; <label>:66:                                     ; preds = %62, %8, %28, %12, %1, %48, %59, %57, %55, %49
  %67 = phi i64 [ %53, %49 ], [ %53, %55 ], [ %53, %57 ], [ %53, %59 ], [ 1, %28 ], [ 2, %12 ], [ 1, %1 ], [ 0, %48 ], [ %11, %8 ], [ %65, %62 ]
  %68 = phi i64 [ 1, %49 ], [ 2, %55 ], [ 3, %57 ], [ %61, %59 ], [ 1, %28 ], [ 1, %12 ], [ 1, %1 ], [ 1, %48 ], [ 1, %8 ], [ 1, %62 ], !dbg !596
  %69 = add nuw nsw i64 %68, %67, !dbg !597
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !598
  ret i8* %70, !dbg !599
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @lpNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #4 !dbg !600 {
  %3 = tail call i8* @lpSkip(i8* %1) #6, !dbg !608
  %4 = load i8, i8* %3, align 1, !dbg !609, !tbaa !51
  %5 = icmp eq i8 %4, -1, !dbg !611
  %6 = select i1 %5, i8* null, i8* %3, !dbg !612
  ret i8* %6, !dbg !613
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #4 !dbg !614 {
  %3 = ptrtoint i8* %1 to i64, !dbg !621
  %4 = ptrtoint i8* %0 to i64, !dbg !621
  %5 = sub i64 %3, %4, !dbg !621
  %6 = icmp eq i64 %5, 6, !dbg !623
  br i1 %6, label %63, label %7, !dbg !624

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !625
  %9 = load i8, i8* %8, align 1, !dbg !630, !tbaa !51
  %10 = and i8 %9, 127, !dbg !631
  %11 = zext i8 %10 to i64, !dbg !632
  %12 = icmp slt i8 %9, 0, !dbg !633
  br i1 %12, label %13, label %56, !dbg !634

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %1, i64 -2, !dbg !635
  %15 = load i8, i8* %14, align 1, !dbg !630, !tbaa !51
  %16 = and i8 %15, 127, !dbg !631
  %17 = zext i8 %16 to i64, !dbg !632
  %18 = shl nuw nsw i64 %17, 7, !dbg !636
  %19 = or i64 %18, %11, !dbg !637
  %20 = icmp slt i8 %15, 0, !dbg !633
  br i1 %20, label %21, label %45, !dbg !634

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !635
  %23 = load i8, i8* %22, align 1, !dbg !630, !tbaa !51
  %24 = and i8 %23, 127, !dbg !631
  %25 = zext i8 %24 to i64, !dbg !632
  %26 = shl nuw nsw i64 %25, 14, !dbg !636
  %27 = or i64 %26, %19, !dbg !637
  %28 = icmp slt i8 %23, 0, !dbg !633
  br i1 %28, label %29, label %45, !dbg !634

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds i8, i8* %1, i64 -4, !dbg !635
  %31 = load i8, i8* %30, align 1, !dbg !630, !tbaa !51
  %32 = and i8 %31, 127, !dbg !631
  %33 = zext i8 %32 to i64, !dbg !632
  %34 = shl nuw nsw i64 %33, 21, !dbg !636
  %35 = or i64 %34, %27, !dbg !637
  %36 = icmp slt i8 %31, 0, !dbg !633
  br i1 %36, label %37, label %45, !dbg !634

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !635
  %39 = load i8, i8* %38, align 1, !dbg !630, !tbaa !51
  %40 = and i8 %39, 127, !dbg !631
  %41 = zext i8 %40 to i64, !dbg !632
  %42 = shl nuw nsw i64 %41, 28, !dbg !636
  %43 = or i64 %42, %35, !dbg !637
  %44 = icmp slt i8 %39, 0, !dbg !633
  br i1 %44, label %54, label %45

; <label>:45:                                     ; preds = %37, %13, %21, %29
  %46 = phi i64 [ %43, %37 ], [ %19, %13 ], [ %27, %21 ], [ %35, %29 ]
  %47 = icmp ult i64 %46, 128, !dbg !642
  br i1 %47, label %56, label %48, !dbg !643

; <label>:48:                                     ; preds = %45
  %49 = icmp ult i64 %46, 16383, !dbg !644
  br i1 %49, label %56, label %50, !dbg !645

; <label>:50:                                     ; preds = %48
  %51 = icmp ult i64 %46, 2097151, !dbg !646
  br i1 %51, label %56, label %52, !dbg !647

; <label>:52:                                     ; preds = %50
  %53 = icmp ult i64 %46, 268435455, !dbg !648
  br i1 %53, label %56, label %54, !dbg !649

; <label>:54:                                     ; preds = %37, %52
  %55 = phi i64 [ %46, %52 ], [ -1, %37 ]
  br label %56

; <label>:56:                                     ; preds = %7, %52, %50, %48, %45, %54
  %57 = phi i64 [ %55, %54 ], [ %46, %45 ], [ %46, %48 ], [ %46, %50 ], [ %46, %52 ], [ %11, %7 ]
  %58 = phi i64 [ 5, %54 ], [ 1, %45 ], [ 2, %48 ], [ 3, %50 ], [ 4, %52 ], [ 1, %7 ], !dbg !650
  %59 = add i64 %57, %58, !dbg !651
  %60 = sub i64 0, %59, !dbg !652
  %61 = getelementptr inbounds i8, i8* %8, i64 %60, !dbg !652
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !653
  br label %63

; <label>:63:                                     ; preds = %2, %56
  %64 = phi i8* [ %62, %56 ], [ null, %2 ], !dbg !654
  ret i8* %64, !dbg !655
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @lpFirst(i8* readonly) local_unnamed_addr #4 !dbg !656 {
  %2 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !660
  %3 = load i8, i8* %2, align 1, !dbg !661, !tbaa !51
  %4 = icmp eq i8 %3, -1, !dbg !663
  %5 = select i1 %4, i8* null, i8* %2, !dbg !664
  ret i8* %5, !dbg !665
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @lpLast(i8*) local_unnamed_addr #4 !dbg !666 {
  %2 = load i8, i8* %0, align 1, !dbg !671, !tbaa !51
  %3 = zext i8 %2 to i64, !dbg !671
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !671
  %5 = load i8, i8* %4, align 1, !dbg !671, !tbaa !51
  %6 = zext i8 %5 to i64, !dbg !671
  %7 = shl nuw nsw i64 %6, 8, !dbg !671
  %8 = or i64 %7, %3, !dbg !671
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !671
  %10 = load i8, i8* %9, align 1, !dbg !671, !tbaa !51
  %11 = zext i8 %10 to i64, !dbg !671
  %12 = shl nuw nsw i64 %11, 16, !dbg !671
  %13 = or i64 %8, %12, !dbg !671
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !671
  %15 = load i8, i8* %14, align 1, !dbg !671, !tbaa !51
  %16 = zext i8 %15 to i64, !dbg !671
  %17 = shl nuw nsw i64 %16, 24, !dbg !671
  %18 = or i64 %13, %17, !dbg !671
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !672
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !673
  %21 = ptrtoint i8* %20 to i64, !dbg !678
  %22 = ptrtoint i8* %0 to i64, !dbg !678
  %23 = sub i64 %21, %22, !dbg !678
  %24 = icmp eq i64 %23, 6, !dbg !679
  br i1 %24, label %81, label %25, !dbg !680

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !681
  %27 = load i8, i8* %26, align 1, !dbg !686, !tbaa !51
  %28 = and i8 %27, 127, !dbg !687
  %29 = zext i8 %28 to i64, !dbg !688
  %30 = icmp slt i8 %27, 0, !dbg !689
  br i1 %30, label %31, label %74, !dbg !690

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds i8, i8* %20, i64 -2, !dbg !691
  %33 = load i8, i8* %32, align 1, !dbg !686, !tbaa !51
  %34 = and i8 %33, 127, !dbg !687
  %35 = zext i8 %34 to i64, !dbg !688
  %36 = shl nuw nsw i64 %35, 7, !dbg !692
  %37 = or i64 %36, %29, !dbg !693
  %38 = icmp slt i8 %33, 0, !dbg !689
  br i1 %38, label %39, label %63, !dbg !690

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !691
  %41 = load i8, i8* %40, align 1, !dbg !686, !tbaa !51
  %42 = and i8 %41, 127, !dbg !687
  %43 = zext i8 %42 to i64, !dbg !688
  %44 = shl nuw nsw i64 %43, 14, !dbg !692
  %45 = or i64 %44, %37, !dbg !693
  %46 = icmp slt i8 %41, 0, !dbg !689
  br i1 %46, label %47, label %63, !dbg !690

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds i8, i8* %20, i64 -4, !dbg !691
  %49 = load i8, i8* %48, align 1, !dbg !686, !tbaa !51
  %50 = and i8 %49, 127, !dbg !687
  %51 = zext i8 %50 to i64, !dbg !688
  %52 = shl nuw nsw i64 %51, 21, !dbg !692
  %53 = or i64 %52, %45, !dbg !693
  %54 = icmp slt i8 %49, 0, !dbg !689
  br i1 %54, label %55, label %63, !dbg !690

; <label>:55:                                     ; preds = %47
  %56 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !691
  %57 = load i8, i8* %56, align 1, !dbg !686, !tbaa !51
  %58 = and i8 %57, 127, !dbg !687
  %59 = zext i8 %58 to i64, !dbg !688
  %60 = shl nuw nsw i64 %59, 28, !dbg !692
  %61 = or i64 %60, %53, !dbg !693
  %62 = icmp slt i8 %57, 0, !dbg !689
  br i1 %62, label %72, label %63

; <label>:63:                                     ; preds = %55, %47, %39, %31
  %64 = phi i64 [ %61, %55 ], [ %37, %31 ], [ %45, %39 ], [ %53, %47 ]
  %65 = icmp ult i64 %64, 128, !dbg !698
  br i1 %65, label %74, label %66, !dbg !699

; <label>:66:                                     ; preds = %63
  %67 = icmp ult i64 %64, 16383, !dbg !700
  br i1 %67, label %74, label %68, !dbg !701

; <label>:68:                                     ; preds = %66
  %69 = icmp ult i64 %64, 2097151, !dbg !702
  br i1 %69, label %74, label %70, !dbg !703

; <label>:70:                                     ; preds = %68
  %71 = icmp ult i64 %64, 268435455, !dbg !704
  br i1 %71, label %74, label %72, !dbg !705

; <label>:72:                                     ; preds = %70, %55
  %73 = phi i64 [ %64, %70 ], [ -1, %55 ]
  br label %74

; <label>:74:                                     ; preds = %72, %70, %68, %66, %63, %25
  %75 = phi i64 [ %73, %72 ], [ %64, %63 ], [ %64, %66 ], [ %64, %68 ], [ %64, %70 ], [ %29, %25 ]
  %76 = phi i64 [ 5, %72 ], [ 1, %63 ], [ 2, %66 ], [ 3, %68 ], [ 4, %70 ], [ 1, %25 ], !dbg !706
  %77 = add i64 %75, %76, !dbg !707
  %78 = sub i64 0, %77, !dbg !708
  %79 = getelementptr inbounds i8, i8* %26, i64 %78, !dbg !708
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !709
  br label %81

; <label>:81:                                     ; preds = %1, %74
  %82 = phi i8* [ %80, %74 ], [ null, %1 ], !dbg !710
  ret i8* %82, !dbg !711
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lpLength(i8*) local_unnamed_addr #0 !dbg !712 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !719
  %3 = load i8, i8* %2, align 1, !dbg !719, !tbaa !51
  %4 = zext i8 %3 to i32, !dbg !719
  %5 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !719
  %6 = load i8, i8* %5, align 1, !dbg !719, !tbaa !51
  %7 = zext i8 %6 to i32, !dbg !719
  %8 = shl nuw nsw i32 %7, 8, !dbg !719
  %9 = or i32 %8, %4, !dbg !719
  %10 = icmp eq i32 %9, 65535, !dbg !721
  br i1 %10, label %11, label %29, !dbg !723

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !727
  %13 = load i8, i8* %12, align 1, !dbg !728, !tbaa !51
  %14 = icmp eq i8 %13, -1, !dbg !729
  br i1 %14, label %24, label %15, !dbg !730

; <label>:15:                                     ; preds = %11, %15
  %16 = phi i8* [ %19, %15 ], [ %12, %11 ]
  %17 = phi i32 [ %18, %15 ], [ 0, %11 ]
  %18 = add i32 %17, 1, !dbg !732
  %19 = tail call i8* @lpSkip(i8* nonnull %16) #5, !dbg !737
  %20 = load i8, i8* %19, align 1, !dbg !738, !tbaa !51
  %21 = icmp eq i8 %20, -1, !dbg !739
  br i1 %21, label %22, label %15, !dbg !730

; <label>:22:                                     ; preds = %15
  %23 = icmp ult i32 %18, 65535, !dbg !740
  br i1 %23, label %24, label %29, !dbg !742

; <label>:24:                                     ; preds = %11, %22
  %25 = phi i32 [ %18, %22 ], [ 0, %11 ]
  %26 = trunc i32 %25 to i8, !dbg !743
  store i8 %26, i8* %2, align 1, !dbg !743, !tbaa !51
  %27 = lshr i32 %25, 8, !dbg !743
  %28 = trunc i32 %27 to i8, !dbg !743
  store i8 %28, i8* %5, align 1, !dbg !743, !tbaa !51
  br label %29, !dbg !743

; <label>:29:                                     ; preds = %22, %24, %1
  %30 = phi i32 [ %9, %1 ], [ %25, %24 ], [ %18, %22 ], !dbg !745
  ret i32 %30, !dbg !746
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpGet(i8* readonly, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !747 {
  %4 = load i8, i8* %0, align 1, !dbg !761, !tbaa !51
  %5 = zext i8 %4 to i32, !dbg !761
  %6 = icmp sgt i8 %4, -1, !dbg !761
  br i1 %6, label %7, label %10, !dbg !763

; <label>:7:                                      ; preds = %3
  %8 = and i32 %5, 127, !dbg !766
  %9 = zext i32 %8 to i64, !dbg !768
  br label %147, !dbg !770

; <label>:10:                                     ; preds = %3
  %11 = and i32 %5, 192, !dbg !771
  %12 = icmp eq i32 %11, 128, !dbg !771
  br i1 %12, label %13, label %17, !dbg !773

; <label>:13:                                     ; preds = %10
  %14 = and i32 %5, 63, !dbg !774
  %15 = zext i32 %14 to i64, !dbg !774
  store i64 %15, i64* %1, align 8, !dbg !776, !tbaa !61
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !777
  br label %159, !dbg !778

; <label>:17:                                     ; preds = %10
  %18 = and i32 %5, 224, !dbg !779
  %19 = icmp eq i32 %18, 192, !dbg !779
  br i1 %19, label %20, label %28, !dbg !781

; <label>:20:                                     ; preds = %17
  %21 = shl nuw nsw i32 %5, 8, !dbg !782
  %22 = and i32 %21, 7936, !dbg !782
  %23 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !784
  %24 = load i8, i8* %23, align 1, !dbg !784, !tbaa !51
  %25 = zext i8 %24 to i32, !dbg !784
  %26 = or i32 %22, %25, !dbg !785
  %27 = zext i32 %26 to i64, !dbg !786
  br label %147, !dbg !787

; <label>:28:                                     ; preds = %17
  switch i8 %4, label %110 [
    i8 -15, label %29
    i8 -14, label %38
    i8 -13, label %52
    i8 -12, label %71
  ], !dbg !788

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !789
  %31 = load i8, i8* %30, align 1, !dbg !789, !tbaa !51
  %32 = zext i8 %31 to i64, !dbg !792
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !793
  %34 = load i8, i8* %33, align 1, !dbg !793, !tbaa !51
  %35 = zext i8 %34 to i64, !dbg !794
  %36 = shl nuw nsw i64 %35, 8, !dbg !795
  %37 = or i64 %36, %32, !dbg !796
  br label %147, !dbg !797

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !798
  %40 = load i8, i8* %39, align 1, !dbg !798, !tbaa !51
  %41 = zext i8 %40 to i64, !dbg !801
  %42 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !802
  %43 = load i8, i8* %42, align 1, !dbg !802, !tbaa !51
  %44 = zext i8 %43 to i64, !dbg !803
  %45 = shl nuw nsw i64 %44, 8, !dbg !804
  %46 = or i64 %45, %41, !dbg !805
  %47 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !806
  %48 = load i8, i8* %47, align 1, !dbg !806, !tbaa !51
  %49 = zext i8 %48 to i64, !dbg !807
  %50 = shl nuw nsw i64 %49, 16, !dbg !808
  %51 = or i64 %46, %50, !dbg !809
  br label %147, !dbg !810

; <label>:52:                                     ; preds = %28
  %53 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !811
  %54 = load i8, i8* %53, align 1, !dbg !811, !tbaa !51
  %55 = zext i8 %54 to i64, !dbg !814
  %56 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !815
  %57 = load i8, i8* %56, align 1, !dbg !815, !tbaa !51
  %58 = zext i8 %57 to i64, !dbg !816
  %59 = shl nuw nsw i64 %58, 8, !dbg !817
  %60 = or i64 %59, %55, !dbg !818
  %61 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !819
  %62 = load i8, i8* %61, align 1, !dbg !819, !tbaa !51
  %63 = zext i8 %62 to i64, !dbg !820
  %64 = shl nuw nsw i64 %63, 16, !dbg !821
  %65 = or i64 %60, %64, !dbg !822
  %66 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !823
  %67 = load i8, i8* %66, align 1, !dbg !823, !tbaa !51
  %68 = zext i8 %67 to i64, !dbg !824
  %69 = shl nuw nsw i64 %68, 24, !dbg !825
  %70 = or i64 %65, %69, !dbg !826
  br label %147, !dbg !827

; <label>:71:                                     ; preds = %28
  %72 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !828
  %73 = load i8, i8* %72, align 1, !dbg !828, !tbaa !51
  %74 = zext i8 %73 to i64, !dbg !831
  %75 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !832
  %76 = load i8, i8* %75, align 1, !dbg !832, !tbaa !51
  %77 = zext i8 %76 to i64, !dbg !833
  %78 = shl nuw nsw i64 %77, 8, !dbg !834
  %79 = or i64 %78, %74, !dbg !835
  %80 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !836
  %81 = load i8, i8* %80, align 1, !dbg !836, !tbaa !51
  %82 = zext i8 %81 to i64, !dbg !837
  %83 = shl nuw nsw i64 %82, 16, !dbg !838
  %84 = or i64 %79, %83, !dbg !839
  %85 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !840
  %86 = load i8, i8* %85, align 1, !dbg !840, !tbaa !51
  %87 = zext i8 %86 to i64, !dbg !841
  %88 = shl nuw nsw i64 %87, 24, !dbg !842
  %89 = or i64 %84, %88, !dbg !843
  %90 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !844
  %91 = load i8, i8* %90, align 1, !dbg !844, !tbaa !51
  %92 = zext i8 %91 to i64, !dbg !845
  %93 = shl nuw nsw i64 %92, 32, !dbg !846
  %94 = or i64 %89, %93, !dbg !847
  %95 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !848
  %96 = load i8, i8* %95, align 1, !dbg !848, !tbaa !51
  %97 = zext i8 %96 to i64, !dbg !849
  %98 = shl nuw nsw i64 %97, 40, !dbg !850
  %99 = or i64 %94, %98, !dbg !851
  %100 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !852
  %101 = load i8, i8* %100, align 1, !dbg !852, !tbaa !51
  %102 = zext i8 %101 to i64, !dbg !853
  %103 = shl nuw nsw i64 %102, 48, !dbg !854
  %104 = or i64 %99, %103, !dbg !855
  %105 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !856
  %106 = load i8, i8* %105, align 1, !dbg !856, !tbaa !51
  %107 = zext i8 %106 to i64, !dbg !857
  %108 = shl nuw i64 %107, 56, !dbg !858
  %109 = or i64 %104, %108, !dbg !859
  br label %147, !dbg !860

; <label>:110:                                    ; preds = %28
  %111 = and i32 %5, 240, !dbg !861
  %112 = icmp eq i32 %111, 224, !dbg !861
  br i1 %112, label %113, label %122, !dbg !863

; <label>:113:                                    ; preds = %110
  %114 = shl nuw nsw i32 %5, 8, !dbg !864
  %115 = and i32 %114, 3840, !dbg !864
  %116 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !864
  %117 = load i8, i8* %116, align 1, !dbg !864, !tbaa !51
  %118 = zext i8 %117 to i32, !dbg !864
  %119 = or i32 %115, %118, !dbg !864
  %120 = zext i32 %119 to i64, !dbg !864
  store i64 %120, i64* %1, align 8, !dbg !866, !tbaa !61
  %121 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !867
  br label %159, !dbg !868

; <label>:122:                                    ; preds = %110
  %123 = icmp eq i8 %4, -16, !dbg !869
  br i1 %123, label %124, label %144, !dbg !871

; <label>:124:                                    ; preds = %122
  %125 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !872
  %126 = load i8, i8* %125, align 1, !dbg !872, !tbaa !51
  %127 = zext i8 %126 to i64, !dbg !872
  %128 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !872
  %129 = load i8, i8* %128, align 1, !dbg !872, !tbaa !51
  %130 = zext i8 %129 to i64, !dbg !872
  %131 = shl nuw nsw i64 %130, 8, !dbg !872
  %132 = or i64 %131, %127, !dbg !872
  %133 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !872
  %134 = load i8, i8* %133, align 1, !dbg !872, !tbaa !51
  %135 = zext i8 %134 to i64, !dbg !872
  %136 = shl nuw nsw i64 %135, 16, !dbg !872
  %137 = or i64 %132, %136, !dbg !872
  %138 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !872
  %139 = load i8, i8* %138, align 1, !dbg !872, !tbaa !51
  %140 = zext i8 %139 to i64, !dbg !872
  %141 = shl nuw nsw i64 %140, 24, !dbg !872
  %142 = or i64 %137, %141, !dbg !872
  store i64 %142, i64* %1, align 8, !dbg !874, !tbaa !61
  %143 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !875
  br label %159, !dbg !876

; <label>:144:                                    ; preds = %122
  %145 = zext i8 %4 to i64, !dbg !877
  %146 = or i64 %145, 12345678900000000, !dbg !879
  br label %147

; <label>:147:                                    ; preds = %29, %52, %144, %71, %38, %20, %7
  %148 = phi i64 [ %9, %7 ], [ %27, %20 ], [ %37, %29 ], [ %51, %38 ], [ %70, %52 ], [ %109, %71 ], [ %146, %144 ], !dbg !880
  %149 = phi i64 [ -1, %7 ], [ 4096, %20 ], [ 32768, %29 ], [ 8388608, %38 ], [ 2147483648, %52 ], [ -9223372036854775808, %71 ], [ -1, %144 ], !dbg !880
  %150 = phi i64 [ -1, %7 ], [ -8192, %20 ], [ -65536, %29 ], [ -16777216, %38 ], [ -4294967296, %52 ], [ 0, %71 ], [ -1, %144 ]
  %151 = icmp ult i64 %148, %149, !dbg !881
  %152 = select i1 %151, i64 0, i64 %150, !dbg !883
  %153 = add i64 %152, %148, !dbg !883
  %154 = icmp eq i8* %2, null, !dbg !885
  br i1 %154, label %158, label %155, !dbg !887

; <label>:155:                                    ; preds = %147
  %156 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %2, i64 21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %153) #5, !dbg !888
  %157 = sext i32 %156 to i64, !dbg !888
  store i64 %157, i64* %1, align 8, !dbg !890, !tbaa !61
  br label %159, !dbg !891

; <label>:158:                                    ; preds = %147
  store i64 %153, i64* %1, align 8, !dbg !892, !tbaa !61
  br label %159, !dbg !894

; <label>:159:                                    ; preds = %158, %155, %124, %113, %13
  %160 = phi i8* [ %2, %155 ], [ null, %158 ], [ %16, %13 ], [ %121, %113 ], [ %143, %124 ], !dbg !895
  ret i8* %160, !dbg !896
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpInsert(i8*, i8*, i32, i8*, i32, i8**) local_unnamed_addr #0 !dbg !897 {
  %7 = alloca [9 x i8], align 1
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %10) #7, !dbg !936
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %11) #7, !dbg !938
  %12 = bitcast i64* %9 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !940
  %13 = icmp eq i8* %1, null, !dbg !941
  %14 = select i1 %13, i32 2, i32 %4, !dbg !943
  %15 = icmp eq i32 %14, 1, !dbg !944
  br i1 %15, label %16, label %18, !dbg !946

; <label>:16:                                     ; preds = %6
  %17 = tail call i8* @lpSkip(i8* %3) #6, !dbg !947
  br label %18, !dbg !949

; <label>:18:                                     ; preds = %16, %6
  %19 = phi i32 [ 0, %16 ], [ %14, %6 ], !dbg !950
  %20 = phi i8* [ %17, %16 ], [ %3, %6 ]
  %21 = ptrtoint i8* %20 to i64, !dbg !951
  %22 = ptrtoint i8* %0 to i64, !dbg !951
  %23 = sub i64 %21, %22, !dbg !951
  %24 = icmp ne i8* %1, null, !dbg !953
  br i1 %24, label %26, label %25, !dbg !955

; <label>:25:                                     ; preds = %18
  store i64 0, i64* %9, align 8, !dbg !958, !tbaa !61
  br label %86

; <label>:26:                                     ; preds = %18
  %27 = call i32 @lpEncodeGetType(i8* nonnull %1, i32 %2, i8* nonnull %10, i64* nonnull %9) #6, !dbg !960
  %28 = load i64, i64* %9, align 8, !dbg !962, !tbaa !61
  %29 = icmp ult i64 %28, 128, !dbg !966
  br i1 %29, label %30, label %32, !dbg !967

; <label>:30:                                     ; preds = %26
  %31 = trunc i64 %28 to i8, !dbg !968
  store i8 %31, i8* %11, align 1, !dbg !969, !tbaa !51
  br label %86, !dbg !970

; <label>:32:                                     ; preds = %26
  %33 = icmp ult i64 %28, 16383, !dbg !971
  br i1 %33, label %34, label %40, !dbg !972

; <label>:34:                                     ; preds = %32
  %35 = lshr i64 %28, 7, !dbg !973
  %36 = trunc i64 %35 to i8, !dbg !974
  store i8 %36, i8* %11, align 1, !dbg !975, !tbaa !51
  %37 = trunc i64 %28 to i8, !dbg !976
  %38 = or i8 %37, -128, !dbg !976
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !977
  store i8 %38, i8* %39, align 1, !dbg !978, !tbaa !51
  br label %86, !dbg !979

; <label>:40:                                     ; preds = %32
  %41 = icmp ult i64 %28, 2097151, !dbg !980
  br i1 %41, label %42, label %52, !dbg !981

; <label>:42:                                     ; preds = %40
  %43 = lshr i64 %28, 14, !dbg !982
  %44 = trunc i64 %43 to i8, !dbg !983
  store i8 %44, i8* %11, align 1, !dbg !984, !tbaa !51
  %45 = lshr i64 %28, 7, !dbg !985
  %46 = trunc i64 %45 to i8, !dbg !986
  %47 = or i8 %46, -128, !dbg !986
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !987
  store i8 %47, i8* %48, align 1, !dbg !988, !tbaa !51
  %49 = trunc i64 %28 to i8, !dbg !989
  %50 = or i8 %49, -128, !dbg !989
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !990
  store i8 %50, i8* %51, align 1, !dbg !991, !tbaa !51
  br label %86, !dbg !992

; <label>:52:                                     ; preds = %40
  %53 = icmp ult i64 %28, 268435455, !dbg !993
  br i1 %53, label %54, label %68, !dbg !994

; <label>:54:                                     ; preds = %52
  %55 = lshr i64 %28, 21, !dbg !995
  %56 = trunc i64 %55 to i8, !dbg !996
  store i8 %56, i8* %11, align 1, !dbg !997, !tbaa !51
  %57 = lshr i64 %28, 14, !dbg !998
  %58 = trunc i64 %57 to i8, !dbg !999
  %59 = or i8 %58, -128, !dbg !999
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1000
  store i8 %59, i8* %60, align 1, !dbg !1001, !tbaa !51
  %61 = lshr i64 %28, 7, !dbg !1002
  %62 = trunc i64 %61 to i8, !dbg !1003
  %63 = or i8 %62, -128, !dbg !1003
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1004
  store i8 %63, i8* %64, align 1, !dbg !1005, !tbaa !51
  %65 = trunc i64 %28 to i8, !dbg !1006
  %66 = or i8 %65, -128, !dbg !1006
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1007
  store i8 %66, i8* %67, align 1, !dbg !1008, !tbaa !51
  br label %86, !dbg !1009

; <label>:68:                                     ; preds = %52
  %69 = lshr i64 %28, 28, !dbg !1010
  %70 = trunc i64 %69 to i8, !dbg !1011
  store i8 %70, i8* %11, align 1, !dbg !1012, !tbaa !51
  %71 = lshr i64 %28, 21, !dbg !1013
  %72 = trunc i64 %71 to i8, !dbg !1014
  %73 = or i8 %72, -128, !dbg !1014
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1015
  store i8 %73, i8* %74, align 1, !dbg !1016, !tbaa !51
  %75 = lshr i64 %28, 14, !dbg !1017
  %76 = trunc i64 %75 to i8, !dbg !1018
  %77 = or i8 %76, -128, !dbg !1018
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1019
  store i8 %77, i8* %78, align 1, !dbg !1020, !tbaa !51
  %79 = lshr i64 %28, 7, !dbg !1021
  %80 = trunc i64 %79 to i8, !dbg !1022
  %81 = or i8 %80, -128, !dbg !1022
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1023
  store i8 %81, i8* %82, align 1, !dbg !1024, !tbaa !51
  %83 = trunc i64 %28 to i8, !dbg !1025
  %84 = or i8 %83, -128, !dbg !1025
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4, !dbg !1026
  store i8 %84, i8* %85, align 1, !dbg !1027, !tbaa !51
  br label %86, !dbg !1028

; <label>:86:                                     ; preds = %68, %54, %42, %34, %30, %25
  %87 = phi i64 [ 0, %25 ], [ %28, %30 ], [ %28, %34 ], [ %28, %42 ], [ %28, %54 ], [ %28, %68 ]
  %88 = phi i32 [ -1, %25 ], [ %27, %30 ], [ %27, %34 ], [ %27, %42 ], [ %27, %54 ], [ %27, %68 ]
  %89 = phi i64 [ 0, %25 ], [ 1, %30 ], [ 2, %34 ], [ 3, %42 ], [ 4, %54 ], [ 5, %68 ], !dbg !1029
  %90 = load i8, i8* %0, align 1, !dbg !1031, !tbaa !51
  %91 = zext i8 %90 to i64, !dbg !1031
  %92 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1031
  %93 = load i8, i8* %92, align 1, !dbg !1031, !tbaa !51
  %94 = zext i8 %93 to i64, !dbg !1031
  %95 = shl nuw nsw i64 %94, 8, !dbg !1031
  %96 = or i64 %95, %91, !dbg !1031
  %97 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1031
  %98 = load i8, i8* %97, align 1, !dbg !1031, !tbaa !51
  %99 = zext i8 %98 to i64, !dbg !1031
  %100 = shl nuw nsw i64 %99, 16, !dbg !1031
  %101 = or i64 %96, %100, !dbg !1031
  %102 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1031
  %103 = load i8, i8* %102, align 1, !dbg !1031, !tbaa !51
  %104 = zext i8 %103 to i64, !dbg !1031
  %105 = shl nuw nsw i64 %104, 24, !dbg !1031
  %106 = or i64 %101, %105, !dbg !1031
  %107 = icmp eq i32 %19, 2, !dbg !1034
  br i1 %107, label %108, label %178, !dbg !1036

; <label>:108:                                    ; preds = %86
  %109 = load i8, i8* %20, align 1, !dbg !1040, !tbaa !51
  %110 = zext i8 %109 to i32, !dbg !1040
  %111 = icmp sgt i8 %109, -1, !dbg !1040
  br i1 %111, label %173, label %112, !dbg !1041

; <label>:112:                                    ; preds = %108
  %113 = and i32 %110, 192, !dbg !1042
  %114 = icmp eq i32 %113, 128, !dbg !1042
  br i1 %114, label %115, label %119, !dbg !1043

; <label>:115:                                    ; preds = %112
  %116 = and i32 %110, 63, !dbg !1044
  %117 = add nuw nsw i32 %116, 1, !dbg !1045
  %118 = zext i32 %117 to i64, !dbg !1046
  br label %173, !dbg !1050

; <label>:119:                                    ; preds = %112
  %120 = and i32 %110, 224, !dbg !1051
  %121 = icmp eq i32 %120, 192, !dbg !1051
  br i1 %121, label %173, label %122, !dbg !1052

; <label>:122:                                    ; preds = %119
  %123 = add i8 %109, 15, !dbg !1053
  %124 = icmp ult i8 %123, 4, !dbg !1053
  br i1 %124, label %169, label %125, !dbg !1053

; <label>:125:                                    ; preds = %122
  %126 = and i32 %110, 240, !dbg !1054
  %127 = icmp eq i32 %126, 224, !dbg !1054
  br i1 %127, label %128, label %135, !dbg !1055

; <label>:128:                                    ; preds = %125
  %129 = shl nuw nsw i32 %110, 8, !dbg !1056
  %130 = and i32 %129, 3840, !dbg !1056
  %131 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1056
  %132 = load i8, i8* %131, align 1, !dbg !1056, !tbaa !51
  %133 = zext i8 %132 to i32, !dbg !1056
  %134 = or i32 %130, %133, !dbg !1056
  br label %156, !dbg !1057

; <label>:135:                                    ; preds = %125
  switch i8 %109, label %155 [
    i8 -16, label %136
    i8 -1, label %173
  ], !dbg !1058

; <label>:136:                                    ; preds = %135
  %137 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1059
  %138 = load i8, i8* %137, align 1, !dbg !1059, !tbaa !51
  %139 = zext i8 %138 to i32, !dbg !1059
  %140 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !1059
  %141 = load i8, i8* %140, align 1, !dbg !1059, !tbaa !51
  %142 = zext i8 %141 to i32, !dbg !1059
  %143 = shl nuw nsw i32 %142, 8, !dbg !1059
  %144 = or i32 %143, %139, !dbg !1059
  %145 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !1059
  %146 = load i8, i8* %145, align 1, !dbg !1059, !tbaa !51
  %147 = zext i8 %146 to i32, !dbg !1059
  %148 = shl nuw nsw i32 %147, 16, !dbg !1059
  %149 = or i32 %144, %148, !dbg !1059
  %150 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1059
  %151 = load i8, i8* %150, align 1, !dbg !1059, !tbaa !51
  %152 = zext i8 %151 to i32, !dbg !1059
  %153 = shl nuw i32 %152, 24, !dbg !1059
  %154 = or i32 %149, %153, !dbg !1059
  br label %156, !dbg !1060

; <label>:155:                                    ; preds = %135
  br label %173, !dbg !1061

; <label>:156:                                    ; preds = %128, %136
  %157 = phi i32 [ 2, %128 ], [ 5, %136 ]
  %158 = phi i32 [ %134, %128 ], [ %154, %136 ]
  %159 = add i32 %158, %157, !dbg !1062
  %160 = zext i32 %159 to i64, !dbg !1046
  %161 = icmp ult i32 %159, 128, !dbg !1063
  br i1 %161, label %173, label %162, !dbg !1050

; <label>:162:                                    ; preds = %156
  %163 = icmp ult i32 %159, 16383, !dbg !1064
  br i1 %163, label %173, label %164, !dbg !1065

; <label>:164:                                    ; preds = %162
  %165 = icmp ult i32 %159, 2097151, !dbg !1066
  br i1 %165, label %173, label %166, !dbg !1067

; <label>:166:                                    ; preds = %164
  %167 = icmp ult i32 %159, 268435455, !dbg !1068
  %168 = select i1 %167, i64 4, i64 5, !dbg !1069
  br label %173, !dbg !1069

; <label>:169:                                    ; preds = %122
  %170 = sext i8 %123 to i64, !dbg !1053
  %171 = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.lpInsert, i64 0, i64 %170, !dbg !1053
  %172 = load i64, i64* %171, align 8, !dbg !1053
  br label %173, !dbg !1053

; <label>:173:                                    ; preds = %169, %115, %135, %119, %108, %155, %166, %164, %162, %156
  %174 = phi i64 [ %160, %156 ], [ %160, %162 ], [ %160, %164 ], [ %160, %166 ], [ 1, %135 ], [ 2, %119 ], [ 1, %108 ], [ 0, %155 ], [ %118, %115 ], [ %172, %169 ]
  %175 = phi i64 [ 1, %156 ], [ 2, %162 ], [ 3, %164 ], [ %168, %166 ], [ 1, %135 ], [ 1, %119 ], [ 1, %108 ], [ 1, %155 ], [ 1, %115 ], [ 1, %169 ], !dbg !1070
  %176 = add nuw nsw i64 %175, %174, !dbg !1071
  %177 = and i64 %176, 4294967295, !dbg !1072
  br label %178, !dbg !1072

; <label>:178:                                    ; preds = %173, %86
  %179 = phi i64 [ %177, %173 ], [ 0, %86 ]
  %180 = add i64 %87, %89, !dbg !1073
  %181 = add i64 %180, %106, !dbg !1074
  %182 = sub i64 %181, %179, !dbg !1075
  %183 = icmp ugt i64 %182, 4294967295, !dbg !1077
  br i1 %183, label %299, label %184, !dbg !1079

; <label>:184:                                    ; preds = %178
  %185 = icmp ugt i64 %182, %106, !dbg !1081
  br i1 %185, label %186, label %191, !dbg !1083

; <label>:186:                                    ; preds = %184
  %187 = call i8* @zrealloc(i8* nonnull %0, i64 %182) #5, !dbg !1084
  %188 = icmp eq i8* %187, null, !dbg !1087
  br i1 %188, label %299, label %189, !dbg !1088

; <label>:189:                                    ; preds = %186
  %190 = getelementptr inbounds i8, i8* %187, i64 %23, !dbg !1089
  br label %191, !dbg !1090

; <label>:191:                                    ; preds = %189, %184
  %192 = phi i8* [ %190, %189 ], [ %20, %184 ], !dbg !1091
  %193 = phi i8* [ %187, %189 ], [ %0, %184 ]
  %194 = icmp eq i32 %19, 0, !dbg !1092
  br i1 %194, label %195, label %200, !dbg !1093

; <label>:195:                                    ; preds = %191
  %196 = getelementptr inbounds i8, i8* %192, i64 %87, !dbg !1094
  %197 = getelementptr inbounds i8, i8* %196, i64 %89, !dbg !1096
  %198 = sub i64 %106, %23, !dbg !1097
  %199 = call i8* @memmove(i8* %197, i8* %192, i64 %198) #5, !dbg !1098
  br label %206, !dbg !1099

; <label>:200:                                    ; preds = %191
  %201 = getelementptr inbounds i8, i8* %192, i64 %179, !dbg !1100
  %202 = getelementptr inbounds i8, i8* %192, i64 %180, !dbg !1101
  %203 = sub i64 %106, %23, !dbg !1102
  %204 = sub i64 %203, %179, !dbg !1103
  %205 = call i8* @memmove(i8* %202, i8* %201, i64 %204) #5, !dbg !1104
  br label %206

; <label>:206:                                    ; preds = %200, %195
  %207 = icmp ult i64 %182, %106, !dbg !1105
  br i1 %207, label %208, label %213, !dbg !1107

; <label>:208:                                    ; preds = %206
  %209 = call i8* @zrealloc(i8* nonnull %193, i64 %182) #5, !dbg !1108
  %210 = icmp eq i8* %209, null, !dbg !1111
  br i1 %210, label %299, label %211, !dbg !1112

; <label>:211:                                    ; preds = %208
  %212 = getelementptr inbounds i8, i8* %209, i64 %23, !dbg !1113
  br label %213, !dbg !1114

; <label>:213:                                    ; preds = %211, %206
  %214 = phi i8* [ %212, %211 ], [ %192, %206 ], !dbg !1115
  %215 = phi i8* [ %209, %211 ], [ %193, %206 ], !dbg !1116
  %216 = icmp eq i8** %5, null, !dbg !1117
  br i1 %216, label %222, label %217, !dbg !1119

; <label>:217:                                    ; preds = %213
  store i8* %214, i8** %5, align 8, !dbg !1120, !tbaa !1122
  br i1 %24, label %223, label %218, !dbg !1124

; <label>:218:                                    ; preds = %217
  %219 = load i8, i8* %214, align 1, !dbg !1126, !tbaa !51
  %220 = icmp eq i8 %219, -1, !dbg !1127
  br i1 %220, label %221, label %264, !dbg !1128

; <label>:221:                                    ; preds = %218
  store i8* null, i8** %5, align 8, !dbg !1129, !tbaa !1122
  br label %264, !dbg !1130

; <label>:222:                                    ; preds = %213
  br i1 %24, label %223, label %264, !dbg !1131

; <label>:223:                                    ; preds = %217, %222
  %224 = icmp eq i32 %88, 0, !dbg !1132
  br i1 %224, label %225, label %227, !dbg !1136

; <label>:225:                                    ; preds = %223
  %226 = call i8* @memcpy(i8* %214, i8* nonnull %10, i64 %87) #5, !dbg !1137
  br label %261, !dbg !1139

; <label>:227:                                    ; preds = %223
  %228 = icmp ult i32 %2, 64, !dbg !1145
  br i1 %228, label %229, label %235, !dbg !1146

; <label>:229:                                    ; preds = %227
  %230 = trunc i32 %2 to i8, !dbg !1147
  %231 = or i8 %230, -128, !dbg !1147
  store i8 %231, i8* %214, align 1, !dbg !1148, !tbaa !51
  %232 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !1149
  %233 = zext i32 %2 to i64, !dbg !1150
  %234 = call i8* @memcpy(i8* nonnull %232, i8* nonnull %1, i64 %233) #5, !dbg !1151
  br label %261, !dbg !1152

; <label>:235:                                    ; preds = %227
  %236 = icmp ult i32 %2, 4096, !dbg !1153
  br i1 %236, label %237, label %246, !dbg !1154

; <label>:237:                                    ; preds = %235
  %238 = lshr i32 %2, 8, !dbg !1155
  %239 = trunc i32 %238 to i8, !dbg !1156
  %240 = or i8 %239, -32, !dbg !1156
  store i8 %240, i8* %214, align 1, !dbg !1157, !tbaa !51
  %241 = trunc i32 %2 to i8, !dbg !1158
  %242 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !1159
  store i8 %241, i8* %242, align 1, !dbg !1160, !tbaa !51
  %243 = getelementptr inbounds i8, i8* %214, i64 2, !dbg !1161
  %244 = zext i32 %2 to i64, !dbg !1162
  %245 = call i8* @memcpy(i8* nonnull %243, i8* nonnull %1, i64 %244) #5, !dbg !1163
  br label %261, !dbg !1164

; <label>:246:                                    ; preds = %235
  store i8 -16, i8* %214, align 1, !dbg !1165, !tbaa !51
  %247 = trunc i32 %2 to i8, !dbg !1166
  %248 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !1167
  store i8 %247, i8* %248, align 1, !dbg !1168, !tbaa !51
  %249 = lshr i32 %2, 8, !dbg !1169
  %250 = trunc i32 %249 to i8, !dbg !1170
  %251 = getelementptr inbounds i8, i8* %214, i64 2, !dbg !1171
  store i8 %250, i8* %251, align 1, !dbg !1172, !tbaa !51
  %252 = lshr i32 %2, 16, !dbg !1173
  %253 = trunc i32 %252 to i8, !dbg !1174
  %254 = getelementptr inbounds i8, i8* %214, i64 3, !dbg !1175
  store i8 %253, i8* %254, align 1, !dbg !1176, !tbaa !51
  %255 = lshr i32 %2, 24, !dbg !1177
  %256 = trunc i32 %255 to i8, !dbg !1178
  %257 = getelementptr inbounds i8, i8* %214, i64 4, !dbg !1179
  store i8 %256, i8* %257, align 1, !dbg !1180, !tbaa !51
  %258 = getelementptr inbounds i8, i8* %214, i64 5, !dbg !1181
  %259 = zext i32 %2 to i64, !dbg !1182
  %260 = call i8* @memcpy(i8* nonnull %258, i8* nonnull %1, i64 %259) #5, !dbg !1183
  br label %261

; <label>:261:                                    ; preds = %246, %237, %229, %225
  %262 = getelementptr inbounds i8, i8* %214, i64 %87, !dbg !1184
  %263 = call i8* @memcpy(i8* %262, i8* nonnull %11, i64 %89) #5, !dbg !1185
  br label %264, !dbg !1186

; <label>:264:                                    ; preds = %221, %218, %261, %222
  %265 = icmp ne i32 %19, 2, !dbg !1187
  %266 = or i1 %13, %265, !dbg !1188
  br i1 %266, label %267, label %288, !dbg !1188

; <label>:267:                                    ; preds = %264
  %268 = getelementptr inbounds i8, i8* %215, i64 4, !dbg !1189
  %269 = load i8, i8* %268, align 1, !dbg !1189, !tbaa !51
  %270 = zext i8 %269 to i32, !dbg !1189
  %271 = getelementptr inbounds i8, i8* %215, i64 5, !dbg !1189
  %272 = load i8, i8* %271, align 1, !dbg !1189, !tbaa !51
  %273 = zext i8 %272 to i32, !dbg !1189
  %274 = shl nuw nsw i32 %273, 8, !dbg !1189
  %275 = or i32 %274, %270, !dbg !1189
  %276 = icmp eq i32 %275, 65535, !dbg !1191
  br i1 %276, label %288, label %277, !dbg !1193

; <label>:277:                                    ; preds = %267
  br i1 %24, label %278, label %283, !dbg !1194

; <label>:278:                                    ; preds = %277
  %279 = add nuw nsw i32 %275, 1, !dbg !1196
  %280 = trunc i32 %279 to i8, !dbg !1196
  store i8 %280, i8* %268, align 1, !dbg !1196, !tbaa !51
  %281 = lshr i32 %279, 8, !dbg !1196
  %282 = trunc i32 %281 to i8, !dbg !1196
  store i8 %282, i8* %271, align 1, !dbg !1196, !tbaa !51
  br label %288, !dbg !1196

; <label>:283:                                    ; preds = %277
  %284 = add nsw i32 %275, -1, !dbg !1199
  %285 = trunc i32 %284 to i8, !dbg !1199
  store i8 %285, i8* %268, align 1, !dbg !1199, !tbaa !51
  %286 = lshr i32 %284, 8, !dbg !1199
  %287 = trunc i32 %286 to i8, !dbg !1199
  store i8 %287, i8* %271, align 1, !dbg !1199, !tbaa !51
  br label %288

; <label>:288:                                    ; preds = %283, %278, %267, %264
  %289 = trunc i64 %182 to i8, !dbg !1201
  store i8 %289, i8* %215, align 1, !dbg !1201, !tbaa !51
  %290 = lshr i64 %182, 8, !dbg !1201
  %291 = trunc i64 %290 to i8, !dbg !1201
  %292 = getelementptr inbounds i8, i8* %215, i64 1, !dbg !1201
  store i8 %291, i8* %292, align 1, !dbg !1201, !tbaa !51
  %293 = lshr i64 %182, 16, !dbg !1201
  %294 = trunc i64 %293 to i8, !dbg !1201
  %295 = getelementptr inbounds i8, i8* %215, i64 2, !dbg !1201
  store i8 %294, i8* %295, align 1, !dbg !1201, !tbaa !51
  %296 = lshr i64 %182, 24, !dbg !1201
  %297 = trunc i64 %296 to i8, !dbg !1201
  %298 = getelementptr inbounds i8, i8* %215, i64 3, !dbg !1201
  store i8 %297, i8* %298, align 1, !dbg !1201, !tbaa !51
  br label %299, !dbg !1203

; <label>:299:                                    ; preds = %288, %186, %208, %178
  %300 = phi i8* [ null, %178 ], [ %215, %288 ], [ null, %186 ], [ null, %208 ], !dbg !1116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1204
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %11) #7, !dbg !1204
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %10) #7, !dbg !1204
  ret i8* %300, !dbg !1204
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpAppend(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1205 {
  %4 = load i8, i8* %0, align 1, !dbg !1217, !tbaa !51
  %5 = zext i8 %4 to i64, !dbg !1217
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1217
  %7 = load i8, i8* %6, align 1, !dbg !1217, !tbaa !51
  %8 = zext i8 %7 to i64, !dbg !1217
  %9 = shl nuw nsw i64 %8, 8, !dbg !1217
  %10 = or i64 %9, %5, !dbg !1217
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1217
  %12 = load i8, i8* %11, align 1, !dbg !1217, !tbaa !51
  %13 = zext i8 %12 to i64, !dbg !1217
  %14 = shl nuw nsw i64 %13, 16, !dbg !1217
  %15 = or i64 %10, %14, !dbg !1217
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1217
  %17 = load i8, i8* %16, align 1, !dbg !1217, !tbaa !51
  %18 = zext i8 %17 to i64, !dbg !1217
  %19 = shl nuw nsw i64 %18, 24, !dbg !1217
  %20 = or i64 %15, %19, !dbg !1217
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1219
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1220
  %23 = tail call i8* @lpInsert(i8* %0, i8* %1, i32 %2, i8* nonnull %22, i32 0, i8** null) #6, !dbg !1222
  ret i8* %23, !dbg !1223
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpDelete(i8*, i8*, i8**) local_unnamed_addr #0 !dbg !1224 {
  %4 = tail call i8* @lpInsert(i8* %0, i8* null, i32 0, i8* %1, i32 2, i8** %2) #6, !dbg !1234
  ret i8* %4, !dbg !1235
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lpBytes(i8* nocapture readonly) local_unnamed_addr #4 !dbg !1236 {
  %2 = load i8, i8* %0, align 1, !dbg !1240, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !1240
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1240
  %5 = load i8, i8* %4, align 1, !dbg !1240, !tbaa !51
  %6 = zext i8 %5 to i32, !dbg !1240
  %7 = shl nuw nsw i32 %6, 8, !dbg !1240
  %8 = or i32 %7, %3, !dbg !1240
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1240
  %10 = load i8, i8* %9, align 1, !dbg !1240, !tbaa !51
  %11 = zext i8 %10 to i32, !dbg !1240
  %12 = shl nuw nsw i32 %11, 16, !dbg !1240
  %13 = or i32 %8, %12, !dbg !1240
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1240
  %15 = load i8, i8* %14, align 1, !dbg !1240, !tbaa !51
  %16 = zext i8 %15 to i32, !dbg !1240
  %17 = shl nuw i32 %16, 24, !dbg !1240
  %18 = or i32 %13, %17, !dbg !1240
  ret i32 %18, !dbg !1241
}

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @lpSeek(i8*, i64) local_unnamed_addr #4 !dbg !1242 {
  %3 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1258
  %4 = load i8, i8* %3, align 1, !dbg !1258, !tbaa !51
  %5 = zext i8 %4 to i32, !dbg !1258
  %6 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1258
  %7 = load i8, i8* %6, align 1, !dbg !1258, !tbaa !51
  %8 = zext i8 %7 to i32, !dbg !1258
  %9 = shl nuw nsw i32 %8, 8, !dbg !1258
  %10 = or i32 %9, %5, !dbg !1258
  %11 = icmp eq i32 %10, 65535, !dbg !1260
  %12 = icmp slt i64 %1, 0, !dbg !1262
  br i1 %11, label %24, label %13, !dbg !1265

; <label>:13:                                     ; preds = %2
  %14 = zext i32 %10 to i64, !dbg !1266
  %15 = select i1 %12, i64 %14, i64 0, !dbg !1269
  %16 = add nsw i64 %15, %1, !dbg !1269
  %17 = icmp ult i64 %16, %14, !dbg !1270
  br i1 %17, label %18, label %118, !dbg !1270

; <label>:18:                                     ; preds = %13
  %19 = lshr i32 %10, 1, !dbg !1271
  %20 = zext i32 %19 to i64, !dbg !1273
  %21 = icmp sgt i64 %16, %20, !dbg !1274
  %22 = select i1 %21, i64 %14, i64 0, !dbg !1275
  %23 = sub nsw i64 %16, %22, !dbg !1275
  br i1 %21, label %45, label %25, !dbg !1276

; <label>:24:                                     ; preds = %2
  br i1 %12, label %45, label %25, !dbg !1276

; <label>:25:                                     ; preds = %24, %18
  %26 = phi i64 [ %23, %18 ], [ %1, %24 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1279
  %28 = load i8, i8* %27, align 1, !dbg !1280, !tbaa !51
  %29 = icmp eq i8 %28, -1, !dbg !1281
  %30 = select i1 %29, i8* null, i8* %27, !dbg !1282
  %31 = icmp sgt i64 %26, 0, !dbg !1284
  %32 = icmp ne i8* %30, null, !dbg !1285
  %33 = and i1 %31, %32, !dbg !1285
  br i1 %33, label %34, label %118, !dbg !1286

; <label>:34:                                     ; preds = %25, %34
  %35 = phi i8* [ %40, %34 ], [ %30, %25 ]
  %36 = phi i64 [ %41, %34 ], [ %26, %25 ]
  %37 = tail call i8* @lpSkip(i8* nonnull %35) #5, !dbg !1291
  %38 = load i8, i8* %37, align 1, !dbg !1292, !tbaa !51
  %39 = icmp eq i8 %38, -1, !dbg !1293
  %40 = select i1 %39, i8* null, i8* %37, !dbg !1294
  %41 = add nsw i64 %36, -1, !dbg !1295
  %42 = icmp sgt i64 %36, 1, !dbg !1284
  %43 = icmp ne i8* %40, null, !dbg !1285
  %44 = and i1 %42, %43, !dbg !1285
  br i1 %44, label %34, label %118, !dbg !1286, !llvm.loop !1296

; <label>:45:                                     ; preds = %24, %18
  %46 = phi i64 [ %23, %18 ], [ %1, %24 ]
  %47 = tail call i8* @lpLast(i8* nonnull %0) #6, !dbg !1298
  %48 = icmp slt i64 %46, -1, !dbg !1300
  %49 = icmp ne i8* %47, null, !dbg !1301
  %50 = and i1 %48, %49, !dbg !1301
  br i1 %50, label %51, label %118, !dbg !1302

; <label>:51:                                     ; preds = %45
  %52 = ptrtoint i8* %0 to i64
  br label %53, !dbg !1302

; <label>:53:                                     ; preds = %51, %108
  %54 = phi i8* [ %47, %51 ], [ %113, %108 ]
  %55 = phi i64 [ %46, %51 ], [ %114, %108 ]
  %56 = ptrtoint i8* %54 to i64, !dbg !1307
  %57 = sub i64 %56, %52, !dbg !1307
  %58 = icmp eq i64 %57, 6, !dbg !1308
  br i1 %58, label %118, label %59, !dbg !1309

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1310
  %61 = load i8, i8* %60, align 1, !dbg !1315, !tbaa !51
  %62 = and i8 %61, 127, !dbg !1316
  %63 = zext i8 %62 to i64, !dbg !1317
  %64 = icmp slt i8 %61, 0, !dbg !1318
  br i1 %64, label %65, label %108, !dbg !1319

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds i8, i8* %54, i64 -2, !dbg !1320
  %67 = load i8, i8* %66, align 1, !dbg !1315, !tbaa !51
  %68 = and i8 %67, 127, !dbg !1316
  %69 = zext i8 %68 to i64, !dbg !1317
  %70 = shl nuw nsw i64 %69, 7, !dbg !1321
  %71 = or i64 %70, %63, !dbg !1322
  %72 = icmp slt i8 %67, 0, !dbg !1318
  br i1 %72, label %73, label %97, !dbg !1319

; <label>:73:                                     ; preds = %65
  %74 = getelementptr inbounds i8, i8* %54, i64 -3, !dbg !1320
  %75 = load i8, i8* %74, align 1, !dbg !1315, !tbaa !51
  %76 = and i8 %75, 127, !dbg !1316
  %77 = zext i8 %76 to i64, !dbg !1317
  %78 = shl nuw nsw i64 %77, 14, !dbg !1321
  %79 = or i64 %78, %71, !dbg !1322
  %80 = icmp slt i8 %75, 0, !dbg !1318
  br i1 %80, label %81, label %97, !dbg !1319

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds i8, i8* %54, i64 -4, !dbg !1320
  %83 = load i8, i8* %82, align 1, !dbg !1315, !tbaa !51
  %84 = and i8 %83, 127, !dbg !1316
  %85 = zext i8 %84 to i64, !dbg !1317
  %86 = shl nuw nsw i64 %85, 21, !dbg !1321
  %87 = or i64 %86, %79, !dbg !1322
  %88 = icmp slt i8 %83, 0, !dbg !1318
  br i1 %88, label %89, label %97, !dbg !1319

; <label>:89:                                     ; preds = %81
  %90 = getelementptr inbounds i8, i8* %54, i64 -5, !dbg !1320
  %91 = load i8, i8* %90, align 1, !dbg !1315, !tbaa !51
  %92 = and i8 %91, 127, !dbg !1316
  %93 = zext i8 %92 to i64, !dbg !1317
  %94 = shl nuw nsw i64 %93, 28, !dbg !1321
  %95 = or i64 %94, %87, !dbg !1322
  %96 = icmp slt i8 %91, 0, !dbg !1318
  br i1 %96, label %106, label %97

; <label>:97:                                     ; preds = %89, %81, %73, %65
  %98 = phi i64 [ %95, %89 ], [ %71, %65 ], [ %79, %73 ], [ %87, %81 ]
  %99 = icmp ult i64 %98, 128, !dbg !1327
  br i1 %99, label %108, label %100, !dbg !1328

; <label>:100:                                    ; preds = %97
  %101 = icmp ult i64 %98, 16383, !dbg !1329
  br i1 %101, label %108, label %102, !dbg !1330

; <label>:102:                                    ; preds = %100
  %103 = icmp ult i64 %98, 2097151, !dbg !1331
  br i1 %103, label %108, label %104, !dbg !1332

; <label>:104:                                    ; preds = %102
  %105 = icmp ult i64 %98, 268435455, !dbg !1333
  br i1 %105, label %108, label %106, !dbg !1334

; <label>:106:                                    ; preds = %104, %89
  %107 = phi i64 [ %98, %104 ], [ -1, %89 ]
  br label %108

; <label>:108:                                    ; preds = %59, %97, %100, %102, %104, %106
  %109 = phi i64 [ %107, %106 ], [ %98, %97 ], [ %98, %100 ], [ %98, %102 ], [ %98, %104 ], [ %63, %59 ]
  %110 = phi i64 [ 5, %106 ], [ 1, %97 ], [ 2, %100 ], [ 3, %102 ], [ 4, %104 ], [ 1, %59 ], !dbg !1335
  %111 = add i64 %109, %110, !dbg !1336
  %112 = sub i64 0, %111, !dbg !1337
  %113 = getelementptr inbounds i8, i8* %54, i64 %112, !dbg !1338
  %114 = add nuw nsw i64 %55, 1, !dbg !1339
  %115 = icmp slt i64 %55, -2, !dbg !1300
  %116 = icmp ne i8* %113, null, !dbg !1301
  %117 = and i1 %115, %116, !dbg !1301
  br i1 %117, label %53, label %118, !dbg !1302, !llvm.loop !1340

; <label>:118:                                    ; preds = %34, %53, %108, %25, %45, %13
  %119 = phi i8* [ null, %13 ], [ %47, %45 ], [ %30, %25 ], [ null, %53 ], [ %113, %108 ], [ %40, %34 ], !dbg !1342
  ret i8* %119, !dbg !1343
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10, !13, !16, !19, !20, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 60, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 105, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 56, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 103, baseType: !15)
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 48, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "lpStringToInt64", scope: !1, file: !1, line: 141, type: !26, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !30)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !10, !9, !29}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DILocalVariable(name: "s", arg: 1, scope: !25, file: !1, line: 141, type: !10)
!32 = !DILocalVariable(name: "slen", arg: 2, scope: !25, file: !1, line: 141, type: !9)
!33 = !DILocalVariable(name: "value", arg: 3, scope: !25, file: !1, line: 141, type: !29)
!34 = !DILocalVariable(name: "p", scope: !25, file: !1, line: 142, type: !10)
!35 = !DILocalVariable(name: "plen", scope: !25, file: !1, line: 143, type: !9)
!36 = !DILocalVariable(name: "negative", scope: !25, file: !1, line: 144, type: !28)
!37 = !DILocalVariable(name: "v", scope: !25, file: !1, line: 145, type: !5)
!38 = !DILocation(line: 141, column: 33, scope: !25)
!39 = !DILocation(line: 141, column: 50, scope: !25)
!40 = !DILocation(line: 141, column: 65, scope: !25)
!41 = !DILocation(line: 142, column: 17, scope: !25)
!42 = !DILocation(line: 143, column: 19, scope: !25)
!43 = !DILocation(line: 144, column: 9, scope: !25)
!44 = !DILocation(line: 147, column: 14, scope: !45)
!45 = distinct !DILexicalBlock(scope: !25, file: !1, line: 147, column: 9)
!46 = !DILocation(line: 147, column: 9, scope: !25)
!47 = !DILocation(line: 151, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !25, file: !1, line: 151, column: 9)
!49 = !DILocation(line: 0, scope: !50)
!50 = distinct !DILexicalBlock(scope: !25, file: !1, line: 156, column: 9)
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 151, column: 27, scope: !48)
!55 = !DILocation(line: 151, column: 19, scope: !48)
!56 = !DILocation(line: 152, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 152, column: 13)
!58 = distinct !DILexicalBlock(scope: !48, file: !1, line: 151, column: 35)
!59 = !DILocation(line: 152, column: 13, scope: !58)
!60 = !DILocation(line: 152, column: 35, scope: !57)
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !52, i64 0}
!63 = !DILocation(line: 152, column: 28, scope: !57)
!64 = !DILocation(line: 156, column: 14, scope: !50)
!65 = !DILocation(line: 156, column: 9, scope: !25)
!66 = !DILocation(line: 158, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !50, file: !1, line: 156, column: 22)
!68 = !DILocation(line: 161, column: 13, scope: !67)
!69 = !DILocation(line: 166, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !25, file: !1, line: 166, column: 9)
!71 = !DILocation(line: 0, scope: !25)
!72 = !DILocation(line: 166, column: 21, scope: !70)
!73 = !DILocation(line: 167, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 166, column: 37)
!75 = !DILocation(line: 145, column: 14, scope: !25)
!76 = !DILocation(line: 176, column: 17, scope: !25)
!77 = !DILocation(line: 176, column: 24, scope: !25)
!78 = !DILocation(line: 169, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !1, line: 169, column: 16)
!80 = !DILocation(line: 169, column: 28, scope: !79)
!81 = !DILocation(line: 170, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 169, column: 42)
!83 = !DILocation(line: 171, column: 9, scope: !82)
!84 = !DILocation(line: 0, scope: !85)
!85 = distinct !DILexicalBlock(scope: !25, file: !1, line: 176, column: 55)
!86 = !DILocation(line: 176, column: 27, scope: !25)
!87 = !DILocation(line: 176, column: 39, scope: !25)
!88 = !DILocation(line: 177, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 177, column: 13)
!90 = !DILocation(line: 179, column: 11, scope: !85)
!91 = !DILocation(line: 181, column: 29, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 181, column: 13)
!93 = !DILocation(line: 181, column: 15, scope: !92)
!94 = !DILocation(line: 181, column: 13, scope: !85)
!95 = !DILocation(line: 181, column: 36, scope: !92)
!96 = !DILocation(line: 183, column: 11, scope: !85)
!97 = !DILocation(line: 185, column: 18, scope: !85)
!98 = distinct !{!98, !99, !100}
!99 = !DILocation(line: 176, column: 5, scope: !25)
!100 = !DILocation(line: 186, column: 5, scope: !25)
!101 = !DILocation(line: 192, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !25, file: !1, line: 192, column: 9)
!103 = !DILocation(line: 192, column: 9, scope: !25)
!104 = !DILocation(line: 193, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 193, column: 13)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 192, column: 19)
!107 = !DILocation(line: 193, column: 13, scope: !106)
!108 = !DILocation(line: 195, column: 19, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 195, column: 13)
!110 = !DILocation(line: 195, column: 13, scope: !106)
!111 = !DILocation(line: 195, column: 37, scope: !109)
!112 = !DILocation(line: 195, column: 35, scope: !109)
!113 = !DILocation(line: 195, column: 28, scope: !109)
!114 = !DILocation(line: 197, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 197, column: 13)
!116 = distinct !DILexicalBlock(scope: !102, file: !1, line: 196, column: 12)
!117 = !DILocation(line: 197, column: 13, scope: !116)
!118 = !DILocation(line: 199, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 199, column: 13)
!120 = !DILocation(line: 199, column: 13, scope: !116)
!121 = !DILocation(line: 199, column: 35, scope: !119)
!122 = !DILocation(line: 199, column: 28, scope: !119)
!123 = !DILocation(line: 0, scope: !124)
!124 = distinct !DILexicalBlock(scope: !79, file: !1, line: 172, column: 12)
!125 = !DILocation(line: 202, column: 1, scope: !25)
!126 = distinct !DISubprogram(name: "lpNew", scope: !1, file: !1, line: 206, type: !127, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !131)
!127 = !DISubroutineType(types: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!132}
!132 = !DILocalVariable(name: "lp", scope: !126, file: !1, line: 207, type: !129)
!133 = !DILocation(line: 207, column: 25, scope: !126)
!134 = !DILocation(line: 207, column: 20, scope: !126)
!135 = !DILocation(line: 208, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !126, file: !1, line: 208, column: 9)
!137 = !DILocation(line: 208, column: 9, scope: !126)
!138 = !DILocation(line: 209, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !126, file: !1, line: 209, column: 5)
!140 = !DILocation(line: 210, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !126, file: !1, line: 210, column: 5)
!142 = !DILocation(line: 211, column: 5, scope: !126)
!143 = !DILocation(line: 211, column: 21, scope: !126)
!144 = !DILocation(line: 212, column: 5, scope: !126)
!145 = !DILocation(line: 213, column: 1, scope: !126)
!146 = distinct !DISubprogram(name: "lpFree", scope: !1, file: !1, line: 216, type: !147, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !129}
!149 = !{!150}
!150 = !DILocalVariable(name: "lp", arg: 1, scope: !146, file: !1, line: 216, type: !129)
!151 = !DILocation(line: 216, column: 28, scope: !146)
!152 = !DILocation(line: 217, column: 5, scope: !146)
!153 = !DILocation(line: 218, column: 1, scope: !146)
!154 = distinct !DISubprogram(name: "lpEncodeGetType", scope: !1, file: !1, line: 231, type: !155, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !158)
!155 = !DISubroutineType(types: !156)
!156 = !{!28, !129, !16, !129, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DILocalVariable(name: "ele", arg: 1, scope: !154, file: !1, line: 231, type: !129)
!160 = !DILocalVariable(name: "size", arg: 2, scope: !154, file: !1, line: 231, type: !16)
!161 = !DILocalVariable(name: "intenc", arg: 3, scope: !154, file: !1, line: 231, type: !129)
!162 = !DILocalVariable(name: "enclen", arg: 4, scope: !154, file: !1, line: 231, type: !157)
!163 = !DILocalVariable(name: "v", scope: !154, file: !1, line: 232, type: !13)
!164 = !DILocalVariable(name: "uv", scope: !165, file: !1, line: 270, type: !5)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 268, column: 16)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 259, column: 20)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 251, column: 20)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 244, column: 20)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 238, column: 20)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 234, column: 13)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 233, column: 54)
!172 = distinct !DILexicalBlock(scope: !154, file: !1, line: 233, column: 9)
!173 = !DILocation(line: 231, column: 36, scope: !154)
!174 = !DILocation(line: 231, column: 50, scope: !154)
!175 = !DILocation(line: 231, column: 71, scope: !154)
!176 = !DILocation(line: 231, column: 89, scope: !154)
!177 = !DILocation(line: 233, column: 43, scope: !172)
!178 = !DILocation(line: 141, column: 33, scope: !25, inlinedAt: !179)
!179 = distinct !DILocation(line: 233, column: 9, scope: !172)
!180 = !DILocation(line: 141, column: 50, scope: !25, inlinedAt: !179)
!181 = !DILocation(line: 142, column: 17, scope: !25, inlinedAt: !179)
!182 = !DILocation(line: 143, column: 19, scope: !25, inlinedAt: !179)
!183 = !DILocation(line: 144, column: 9, scope: !25, inlinedAt: !179)
!184 = !DILocation(line: 147, column: 14, scope: !45, inlinedAt: !179)
!185 = !DILocation(line: 147, column: 9, scope: !25, inlinedAt: !179)
!186 = !DILocation(line: 151, column: 14, scope: !48, inlinedAt: !179)
!187 = !DILocation(line: 0, scope: !50, inlinedAt: !179)
!188 = !DILocation(line: 151, column: 27, scope: !48, inlinedAt: !179)
!189 = !DILocation(line: 151, column: 19, scope: !48, inlinedAt: !179)
!190 = !DILocation(line: 156, column: 14, scope: !50, inlinedAt: !179)
!191 = !DILocation(line: 156, column: 9, scope: !25, inlinedAt: !179)
!192 = !DILocation(line: 158, column: 10, scope: !67, inlinedAt: !179)
!193 = !DILocation(line: 161, column: 13, scope: !67, inlinedAt: !179)
!194 = !DILocation(line: 166, column: 9, scope: !70, inlinedAt: !179)
!195 = !DILocation(line: 0, scope: !25, inlinedAt: !179)
!196 = !DILocation(line: 166, column: 21, scope: !70, inlinedAt: !179)
!197 = !DILocation(line: 167, column: 17, scope: !74, inlinedAt: !179)
!198 = !DILocation(line: 145, column: 14, scope: !25, inlinedAt: !179)
!199 = !DILocation(line: 176, column: 17, scope: !25, inlinedAt: !179)
!200 = !DILocation(line: 176, column: 24, scope: !25, inlinedAt: !179)
!201 = !DILocation(line: 169, column: 21, scope: !79, inlinedAt: !179)
!202 = !DILocation(line: 169, column: 28, scope: !79, inlinedAt: !179)
!203 = !DILocation(line: 0, scope: !85, inlinedAt: !179)
!204 = !DILocation(line: 176, column: 27, scope: !25, inlinedAt: !179)
!205 = !DILocation(line: 176, column: 39, scope: !25, inlinedAt: !179)
!206 = !DILocation(line: 177, column: 15, scope: !89, inlinedAt: !179)
!207 = !DILocation(line: 179, column: 11, scope: !85, inlinedAt: !179)
!208 = !DILocation(line: 181, column: 29, scope: !92, inlinedAt: !179)
!209 = !DILocation(line: 181, column: 15, scope: !92, inlinedAt: !179)
!210 = !DILocation(line: 181, column: 13, scope: !85, inlinedAt: !179)
!211 = !DILocation(line: 181, column: 36, scope: !92, inlinedAt: !179)
!212 = !DILocation(line: 183, column: 11, scope: !85, inlinedAt: !179)
!213 = !DILocation(line: 185, column: 18, scope: !85, inlinedAt: !179)
!214 = !DILocation(line: 192, column: 9, scope: !102, inlinedAt: !179)
!215 = !DILocation(line: 192, column: 9, scope: !25, inlinedAt: !179)
!216 = !DILocation(line: 193, column: 15, scope: !105, inlinedAt: !179)
!217 = !DILocation(line: 193, column: 13, scope: !106, inlinedAt: !179)
!218 = !DILocation(line: 195, column: 37, scope: !109, inlinedAt: !179)
!219 = !DILocation(line: 195, column: 28, scope: !109, inlinedAt: !179)
!220 = !DILocation(line: 197, column: 15, scope: !115, inlinedAt: !179)
!221 = !DILocation(line: 197, column: 13, scope: !116, inlinedAt: !179)
!222 = !DILocation(line: 232, column: 13, scope: !154)
!223 = !DILocation(line: 234, column: 20, scope: !170)
!224 = !DILocation(line: 236, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !170, file: !1, line: 234, column: 33)
!226 = !DILocation(line: 236, column: 23, scope: !225)
!227 = !DILocation(line: 238, column: 9, scope: !225)
!228 = !DILocation(line: 238, column: 31, scope: !169)
!229 = !DILocation(line: 240, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 240, column: 17)
!231 = distinct !DILexicalBlock(scope: !169, file: !1, line: 238, column: 45)
!232 = !DILocation(line: 240, column: 44, scope: !230)
!233 = !DILocation(line: 240, column: 17, scope: !231)
!234 = !DILocation(line: 241, column: 27, scope: !231)
!235 = !DILocation(line: 241, column: 25, scope: !231)
!236 = !DILocation(line: 241, column: 23, scope: !231)
!237 = !DILocation(line: 242, column: 25, scope: !231)
!238 = !DILocation(line: 242, column: 13, scope: !231)
!239 = !DILocation(line: 242, column: 23, scope: !231)
!240 = !DILocation(line: 244, column: 9, scope: !231)
!241 = !DILocation(line: 244, column: 32, scope: !168)
!242 = !DILocation(line: 246, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 246, column: 17)
!244 = distinct !DILexicalBlock(scope: !168, file: !1, line: 244, column: 47)
!245 = !DILocation(line: 246, column: 44, scope: !243)
!246 = !DILocation(line: 246, column: 17, scope: !244)
!247 = !DILocation(line: 247, column: 23, scope: !244)
!248 = !DILocation(line: 248, column: 25, scope: !244)
!249 = !DILocation(line: 248, column: 13, scope: !244)
!250 = !DILocation(line: 248, column: 23, scope: !244)
!251 = !DILocation(line: 249, column: 26, scope: !244)
!252 = !DILocation(line: 249, column: 25, scope: !244)
!253 = !DILocation(line: 249, column: 13, scope: !244)
!254 = !DILocation(line: 249, column: 23, scope: !244)
!255 = !DILocation(line: 251, column: 9, scope: !244)
!256 = !DILocation(line: 251, column: 34, scope: !167)
!257 = !DILocation(line: 253, column: 19, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 253, column: 17)
!259 = distinct !DILexicalBlock(scope: !167, file: !1, line: 251, column: 51)
!260 = !DILocation(line: 253, column: 44, scope: !258)
!261 = !DILocation(line: 253, column: 17, scope: !259)
!262 = !DILocation(line: 254, column: 23, scope: !259)
!263 = !DILocation(line: 255, column: 25, scope: !259)
!264 = !DILocation(line: 255, column: 13, scope: !259)
!265 = !DILocation(line: 255, column: 23, scope: !259)
!266 = !DILocation(line: 256, column: 27, scope: !259)
!267 = !DILocation(line: 256, column: 25, scope: !259)
!268 = !DILocation(line: 256, column: 13, scope: !259)
!269 = !DILocation(line: 256, column: 23, scope: !259)
!270 = !DILocation(line: 257, column: 26, scope: !259)
!271 = !DILocation(line: 257, column: 25, scope: !259)
!272 = !DILocation(line: 257, column: 13, scope: !259)
!273 = !DILocation(line: 257, column: 23, scope: !259)
!274 = !DILocation(line: 259, column: 9, scope: !259)
!275 = !DILocation(line: 259, column: 37, scope: !166)
!276 = !DILocation(line: 261, column: 19, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 261, column: 17)
!278 = distinct !DILexicalBlock(scope: !166, file: !1, line: 259, column: 57)
!279 = !DILocation(line: 261, column: 44, scope: !277)
!280 = !DILocation(line: 261, column: 17, scope: !278)
!281 = !DILocation(line: 262, column: 23, scope: !278)
!282 = !DILocation(line: 263, column: 25, scope: !278)
!283 = !DILocation(line: 263, column: 13, scope: !278)
!284 = !DILocation(line: 263, column: 23, scope: !278)
!285 = !DILocation(line: 264, column: 27, scope: !278)
!286 = !DILocation(line: 264, column: 25, scope: !278)
!287 = !DILocation(line: 264, column: 13, scope: !278)
!288 = !DILocation(line: 264, column: 23, scope: !278)
!289 = !DILocation(line: 265, column: 27, scope: !278)
!290 = !DILocation(line: 265, column: 25, scope: !278)
!291 = !DILocation(line: 265, column: 13, scope: !278)
!292 = !DILocation(line: 265, column: 23, scope: !278)
!293 = !DILocation(line: 266, column: 26, scope: !278)
!294 = !DILocation(line: 266, column: 25, scope: !278)
!295 = !DILocation(line: 266, column: 13, scope: !278)
!296 = !DILocation(line: 266, column: 23, scope: !278)
!297 = !DILocation(line: 268, column: 9, scope: !278)
!298 = !DILocation(line: 270, column: 22, scope: !165)
!299 = !DILocation(line: 271, column: 23, scope: !165)
!300 = !DILocation(line: 272, column: 25, scope: !165)
!301 = !DILocation(line: 272, column: 13, scope: !165)
!302 = !DILocation(line: 272, column: 23, scope: !165)
!303 = !DILocation(line: 273, column: 28, scope: !165)
!304 = !DILocation(line: 273, column: 25, scope: !165)
!305 = !DILocation(line: 273, column: 13, scope: !165)
!306 = !DILocation(line: 273, column: 23, scope: !165)
!307 = !DILocation(line: 274, column: 28, scope: !165)
!308 = !DILocation(line: 274, column: 25, scope: !165)
!309 = !DILocation(line: 274, column: 13, scope: !165)
!310 = !DILocation(line: 274, column: 23, scope: !165)
!311 = !DILocation(line: 275, column: 28, scope: !165)
!312 = !DILocation(line: 275, column: 25, scope: !165)
!313 = !DILocation(line: 275, column: 13, scope: !165)
!314 = !DILocation(line: 275, column: 23, scope: !165)
!315 = !DILocation(line: 276, column: 28, scope: !165)
!316 = !DILocation(line: 276, column: 25, scope: !165)
!317 = !DILocation(line: 276, column: 13, scope: !165)
!318 = !DILocation(line: 276, column: 23, scope: !165)
!319 = !DILocation(line: 277, column: 28, scope: !165)
!320 = !DILocation(line: 277, column: 25, scope: !165)
!321 = !DILocation(line: 277, column: 13, scope: !165)
!322 = !DILocation(line: 277, column: 23, scope: !165)
!323 = !DILocation(line: 278, column: 28, scope: !165)
!324 = !DILocation(line: 278, column: 25, scope: !165)
!325 = !DILocation(line: 278, column: 13, scope: !165)
!326 = !DILocation(line: 278, column: 23, scope: !165)
!327 = !DILocation(line: 279, column: 27, scope: !165)
!328 = !DILocation(line: 279, column: 25, scope: !165)
!329 = !DILocation(line: 279, column: 13, scope: !165)
!330 = !DILocation(line: 279, column: 23, scope: !165)
!331 = !DILocation(line: 284, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 284, column: 13)
!333 = distinct !DILexicalBlock(scope: !172, file: !1, line: 283, column: 12)
!334 = !DILocation(line: 284, column: 13, scope: !333)
!335 = !DILocation(line: 284, column: 35, scope: !332)
!336 = !DILocation(line: 284, column: 24, scope: !332)
!337 = !DILocation(line: 285, column: 23, scope: !338)
!338 = distinct !DILexicalBlock(scope: !332, file: !1, line: 285, column: 18)
!339 = !DILocation(line: 285, column: 18, scope: !332)
!340 = !DILocation(line: 285, column: 42, scope: !338)
!341 = !DILocation(line: 285, column: 31, scope: !338)
!342 = !DILocation(line: 286, column: 25, scope: !338)
!343 = !DILocation(line: 0, scope: !333)
!344 = !DILocation(line: 0, scope: !231)
!345 = !DILocation(line: 289, column: 1, scope: !154)
!346 = distinct !DISubprogram(name: "lpEncodeBacklen", scope: !1, file: !1, line: 296, type: !347, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!9, !129, !5}
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "buf", arg: 1, scope: !346, file: !1, line: 296, type: !129)
!351 = !DILocalVariable(name: "l", arg: 2, scope: !346, file: !1, line: 296, type: !5)
!352 = !DILocation(line: 296, column: 46, scope: !346)
!353 = !DILocation(line: 296, column: 60, scope: !346)
!354 = !DILocation(line: 297, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !1, line: 297, column: 9)
!356 = !DILocation(line: 297, column: 9, scope: !346)
!357 = !DILocation(line: 298, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 298, column: 13)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 297, column: 19)
!360 = !DILocation(line: 298, column: 13, scope: !359)
!361 = !DILocation(line: 298, column: 27, scope: !358)
!362 = !DILocation(line: 298, column: 25, scope: !358)
!363 = !DILocation(line: 298, column: 18, scope: !358)
!364 = !DILocation(line: 300, column: 18, scope: !365)
!365 = distinct !DILexicalBlock(scope: !355, file: !1, line: 300, column: 16)
!366 = !DILocation(line: 300, column: 16, scope: !355)
!367 = !DILocation(line: 301, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 301, column: 13)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 300, column: 27)
!370 = !DILocation(line: 301, column: 13, scope: !369)
!371 = !DILocation(line: 302, column: 23, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 301, column: 18)
!373 = !DILocation(line: 302, column: 22, scope: !372)
!374 = !DILocation(line: 302, column: 20, scope: !372)
!375 = !DILocation(line: 303, column: 22, scope: !372)
!376 = !DILocation(line: 303, column: 13, scope: !372)
!377 = !DILocation(line: 303, column: 20, scope: !372)
!378 = !DILocation(line: 304, column: 9, scope: !372)
!379 = !DILocation(line: 306, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !365, file: !1, line: 306, column: 16)
!381 = !DILocation(line: 306, column: 16, scope: !365)
!382 = !DILocation(line: 307, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 307, column: 13)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 306, column: 29)
!385 = !DILocation(line: 307, column: 13, scope: !384)
!386 = !DILocation(line: 308, column: 23, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 307, column: 18)
!388 = !DILocation(line: 308, column: 22, scope: !387)
!389 = !DILocation(line: 308, column: 20, scope: !387)
!390 = !DILocation(line: 309, column: 25, scope: !387)
!391 = !DILocation(line: 309, column: 22, scope: !387)
!392 = !DILocation(line: 309, column: 13, scope: !387)
!393 = !DILocation(line: 309, column: 20, scope: !387)
!394 = !DILocation(line: 310, column: 22, scope: !387)
!395 = !DILocation(line: 310, column: 13, scope: !387)
!396 = !DILocation(line: 310, column: 20, scope: !387)
!397 = !DILocation(line: 311, column: 9, scope: !387)
!398 = !DILocation(line: 313, column: 18, scope: !399)
!399 = distinct !DILexicalBlock(scope: !380, file: !1, line: 313, column: 16)
!400 = !DILocation(line: 0, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 322, column: 13)
!402 = distinct !DILexicalBlock(scope: !399, file: !1, line: 321, column: 12)
!403 = !DILocation(line: 313, column: 16, scope: !380)
!404 = !DILocation(line: 314, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 313, column: 31)
!406 = !DILocation(line: 315, column: 23, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 314, column: 18)
!408 = distinct !DILexicalBlock(scope: !405, file: !1, line: 314, column: 13)
!409 = !DILocation(line: 315, column: 22, scope: !407)
!410 = !DILocation(line: 315, column: 20, scope: !407)
!411 = !DILocation(line: 316, column: 25, scope: !407)
!412 = !DILocation(line: 316, column: 22, scope: !407)
!413 = !DILocation(line: 316, column: 13, scope: !407)
!414 = !DILocation(line: 316, column: 20, scope: !407)
!415 = !DILocation(line: 317, column: 25, scope: !407)
!416 = !DILocation(line: 317, column: 22, scope: !407)
!417 = !DILocation(line: 317, column: 13, scope: !407)
!418 = !DILocation(line: 317, column: 20, scope: !407)
!419 = !DILocation(line: 318, column: 22, scope: !407)
!420 = !DILocation(line: 318, column: 13, scope: !407)
!421 = !DILocation(line: 318, column: 20, scope: !407)
!422 = !DILocation(line: 319, column: 9, scope: !407)
!423 = !DILocation(line: 322, column: 13, scope: !402)
!424 = !DILocation(line: 323, column: 23, scope: !425)
!425 = distinct !DILexicalBlock(scope: !401, file: !1, line: 322, column: 18)
!426 = !DILocation(line: 323, column: 22, scope: !425)
!427 = !DILocation(line: 323, column: 20, scope: !425)
!428 = !DILocation(line: 324, column: 25, scope: !425)
!429 = !DILocation(line: 324, column: 22, scope: !425)
!430 = !DILocation(line: 324, column: 13, scope: !425)
!431 = !DILocation(line: 324, column: 20, scope: !425)
!432 = !DILocation(line: 325, column: 25, scope: !425)
!433 = !DILocation(line: 325, column: 22, scope: !425)
!434 = !DILocation(line: 325, column: 13, scope: !425)
!435 = !DILocation(line: 325, column: 20, scope: !425)
!436 = !DILocation(line: 326, column: 25, scope: !425)
!437 = !DILocation(line: 326, column: 22, scope: !425)
!438 = !DILocation(line: 326, column: 13, scope: !425)
!439 = !DILocation(line: 326, column: 20, scope: !425)
!440 = !DILocation(line: 327, column: 22, scope: !425)
!441 = !DILocation(line: 327, column: 13, scope: !425)
!442 = !DILocation(line: 327, column: 20, scope: !425)
!443 = !DILocation(line: 328, column: 9, scope: !425)
!444 = !DILocation(line: 0, scope: !402)
!445 = !DILocation(line: 331, column: 1, scope: !346)
!446 = distinct !DISubprogram(name: "lpDecodeBacklen", scope: !1, file: !1, line: 335, type: !447, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!5, !129}
!449 = !{!450, !451, !452}
!450 = !DILocalVariable(name: "p", arg: 1, scope: !446, file: !1, line: 335, type: !129)
!451 = !DILocalVariable(name: "val", scope: !446, file: !1, line: 336, type: !5)
!452 = !DILocalVariable(name: "shift", scope: !446, file: !1, line: 337, type: !5)
!453 = !DILocation(line: 335, column: 41, scope: !446)
!454 = !DILocation(line: 336, column: 14, scope: !446)
!455 = !DILocation(line: 337, column: 14, scope: !446)
!456 = !DILocation(line: 339, column: 27, scope: !457)
!457 = distinct !DILexicalBlock(scope: !446, file: !1, line: 338, column: 8)
!458 = !DILocation(line: 339, column: 32, scope: !457)
!459 = !DILocation(line: 339, column: 16, scope: !457)
!460 = !DILocation(line: 340, column: 20, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !1, line: 340, column: 13)
!462 = !DILocation(line: 340, column: 13, scope: !457)
!463 = !DILocation(line: 342, column: 10, scope: !457)
!464 = !DILocation(line: 339, column: 39, scope: !457)
!465 = !DILocation(line: 339, column: 13, scope: !457)
!466 = !DILocation(line: 0, scope: !446)
!467 = !DILocation(line: 346, column: 1, scope: !446)
!468 = distinct !DISubprogram(name: "lpEncodeString", scope: !1, file: !1, line: 352, type: !469, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !129, !129, !16}
!471 = !{!472, !473, !474}
!472 = !DILocalVariable(name: "buf", arg: 1, scope: !468, file: !1, line: 352, type: !129)
!473 = !DILocalVariable(name: "s", arg: 2, scope: !468, file: !1, line: 352, type: !129)
!474 = !DILocalVariable(name: "len", arg: 3, scope: !468, file: !1, line: 352, type: !16)
!475 = !DILocation(line: 352, column: 36, scope: !468)
!476 = !DILocation(line: 352, column: 56, scope: !468)
!477 = !DILocation(line: 352, column: 68, scope: !468)
!478 = !DILocation(line: 353, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !1, line: 353, column: 9)
!480 = !DILocation(line: 353, column: 9, scope: !468)
!481 = !DILocation(line: 354, column: 18, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 353, column: 19)
!483 = !DILocation(line: 354, column: 16, scope: !482)
!484 = !DILocation(line: 355, column: 19, scope: !482)
!485 = !DILocation(line: 355, column: 24, scope: !482)
!486 = !DILocation(line: 355, column: 9, scope: !482)
!487 = !DILocation(line: 356, column: 5, scope: !482)
!488 = !DILocation(line: 356, column: 20, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !1, line: 356, column: 16)
!490 = !DILocation(line: 356, column: 16, scope: !479)
!491 = !DILocation(line: 357, column: 23, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 356, column: 28)
!493 = !DILocation(line: 357, column: 18, scope: !492)
!494 = !DILocation(line: 357, column: 16, scope: !492)
!495 = !DILocation(line: 358, column: 18, scope: !492)
!496 = !DILocation(line: 358, column: 9, scope: !492)
!497 = !DILocation(line: 358, column: 16, scope: !492)
!498 = !DILocation(line: 359, column: 19, scope: !492)
!499 = !DILocation(line: 359, column: 24, scope: !492)
!500 = !DILocation(line: 359, column: 9, scope: !492)
!501 = !DILocation(line: 360, column: 5, scope: !492)
!502 = !DILocation(line: 361, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !489, file: !1, line: 360, column: 12)
!504 = !DILocation(line: 362, column: 18, scope: !503)
!505 = !DILocation(line: 362, column: 9, scope: !503)
!506 = !DILocation(line: 362, column: 16, scope: !503)
!507 = !DILocation(line: 363, column: 23, scope: !503)
!508 = !DILocation(line: 363, column: 18, scope: !503)
!509 = !DILocation(line: 363, column: 9, scope: !503)
!510 = !DILocation(line: 363, column: 16, scope: !503)
!511 = !DILocation(line: 364, column: 23, scope: !503)
!512 = !DILocation(line: 364, column: 18, scope: !503)
!513 = !DILocation(line: 364, column: 9, scope: !503)
!514 = !DILocation(line: 364, column: 16, scope: !503)
!515 = !DILocation(line: 365, column: 23, scope: !503)
!516 = !DILocation(line: 365, column: 18, scope: !503)
!517 = !DILocation(line: 365, column: 9, scope: !503)
!518 = !DILocation(line: 365, column: 16, scope: !503)
!519 = !DILocation(line: 366, column: 19, scope: !503)
!520 = !DILocation(line: 366, column: 24, scope: !503)
!521 = !DILocation(line: 366, column: 9, scope: !503)
!522 = !DILocation(line: 368, column: 1, scope: !468)
!523 = distinct !DISubprogram(name: "lpCurrentEncodedSize", scope: !1, file: !1, line: 372, type: !524, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!16, !129}
!526 = !{!527}
!527 = !DILocalVariable(name: "p", arg: 1, scope: !523, file: !1, line: 372, type: !129)
!528 = !DILocation(line: 372, column: 46, scope: !523)
!529 = !DILocation(line: 373, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !523, file: !1, line: 373, column: 9)
!531 = !DILocation(line: 373, column: 9, scope: !523)
!532 = !DILocation(line: 374, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !523, file: !1, line: 374, column: 9)
!534 = !DILocation(line: 374, column: 9, scope: !523)
!535 = !DILocation(line: 374, column: 49, scope: !533)
!536 = !DILocation(line: 374, column: 48, scope: !533)
!537 = !DILocation(line: 374, column: 40, scope: !533)
!538 = !DILocation(line: 375, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !1, line: 375, column: 9)
!540 = !DILocation(line: 375, column: 9, scope: !523)
!541 = !DILocation(line: 376, column: 9, scope: !523)
!542 = !DILocation(line: 380, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !523, file: !1, line: 380, column: 9)
!544 = !DILocation(line: 380, column: 9, scope: !523)
!545 = !DILocation(line: 380, column: 50, scope: !543)
!546 = !DILocation(line: 380, column: 49, scope: !543)
!547 = !DILocation(line: 380, column: 41, scope: !543)
!548 = !DILocation(line: 381, column: 9, scope: !523)
!549 = !DILocation(line: 381, column: 50, scope: !550)
!550 = distinct !DILexicalBlock(scope: !523, file: !1, line: 381, column: 9)
!551 = !DILocation(line: 381, column: 49, scope: !550)
!552 = !DILocation(line: 381, column: 41, scope: !550)
!553 = !DILocation(line: 383, column: 5, scope: !523)
!554 = !DILocation(line: 0, scope: !523)
!555 = !DILocation(line: 384, column: 1, scope: !523)
!556 = distinct !DISubprogram(name: "lpSkip", scope: !1, file: !1, line: 390, type: !557, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!129, !129}
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "p", arg: 1, scope: !556, file: !1, line: 390, type: !129)
!561 = !DILocalVariable(name: "entrylen", scope: !556, file: !1, line: 391, type: !9)
!562 = !DILocation(line: 390, column: 38, scope: !556)
!563 = !DILocation(line: 372, column: 46, scope: !523, inlinedAt: !564)
!564 = distinct !DILocation(line: 391, column: 30, scope: !556)
!565 = !DILocation(line: 373, column: 9, scope: !530, inlinedAt: !564)
!566 = !DILocation(line: 373, column: 9, scope: !523, inlinedAt: !564)
!567 = !DILocation(line: 374, column: 9, scope: !533, inlinedAt: !564)
!568 = !DILocation(line: 374, column: 9, scope: !523, inlinedAt: !564)
!569 = !DILocation(line: 374, column: 49, scope: !533, inlinedAt: !564)
!570 = !DILocation(line: 374, column: 48, scope: !533, inlinedAt: !564)
!571 = !DILocation(line: 391, column: 30, scope: !556)
!572 = !DILocation(line: 391, column: 19, scope: !556)
!573 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !574)
!574 = distinct !DILocation(line: 392, column: 17, scope: !556)
!575 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !574)
!576 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !574)
!577 = !DILocation(line: 375, column: 9, scope: !539, inlinedAt: !564)
!578 = !DILocation(line: 375, column: 9, scope: !523, inlinedAt: !564)
!579 = !DILocation(line: 376, column: 9, scope: !523, inlinedAt: !564)
!580 = !DILocation(line: 380, column: 9, scope: !543, inlinedAt: !564)
!581 = !DILocation(line: 380, column: 9, scope: !523, inlinedAt: !564)
!582 = !DILocation(line: 380, column: 50, scope: !543, inlinedAt: !564)
!583 = !DILocation(line: 380, column: 41, scope: !543, inlinedAt: !564)
!584 = !DILocation(line: 381, column: 9, scope: !523, inlinedAt: !564)
!585 = !DILocation(line: 381, column: 50, scope: !550, inlinedAt: !564)
!586 = !DILocation(line: 381, column: 41, scope: !550, inlinedAt: !564)
!587 = !DILocation(line: 383, column: 5, scope: !523, inlinedAt: !564)
!588 = !DILocation(line: 0, scope: !556)
!589 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !574)
!590 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !574)
!591 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !574)
!592 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !574)
!593 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !574)
!594 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !574)
!595 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !574)
!596 = !DILocation(line: 0, scope: !402, inlinedAt: !574)
!597 = !DILocation(line: 392, column: 14, scope: !556)
!598 = !DILocation(line: 393, column: 7, scope: !556)
!599 = !DILocation(line: 394, column: 5, scope: !556)
!600 = distinct !DISubprogram(name: "lpNext", scope: !1, file: !1, line: 400, type: !601, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!129, !129, !129}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "lp", arg: 1, scope: !600, file: !1, line: 400, type: !129)
!605 = !DILocalVariable(name: "p", arg: 2, scope: !600, file: !1, line: 400, type: !129)
!606 = !DILocation(line: 400, column: 38, scope: !600)
!607 = !DILocation(line: 400, column: 57, scope: !600)
!608 = !DILocation(line: 402, column: 9, scope: !600)
!609 = !DILocation(line: 403, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !600, file: !1, line: 403, column: 9)
!611 = !DILocation(line: 403, column: 14, scope: !610)
!612 = !DILocation(line: 403, column: 25, scope: !610)
!613 = !DILocation(line: 405, column: 1, scope: !600)
!614 = distinct !DISubprogram(name: "lpPrev", scope: !1, file: !1, line: 410, type: !601, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !615)
!615 = !{!616, !617, !618}
!616 = !DILocalVariable(name: "lp", arg: 1, scope: !614, file: !1, line: 410, type: !129)
!617 = !DILocalVariable(name: "p", arg: 2, scope: !614, file: !1, line: 410, type: !129)
!618 = !DILocalVariable(name: "prevlen", scope: !614, file: !1, line: 413, type: !5)
!619 = !DILocation(line: 410, column: 38, scope: !614)
!620 = !DILocation(line: 410, column: 57, scope: !614)
!621 = !DILocation(line: 411, column: 10, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !1, line: 411, column: 9)
!623 = !DILocation(line: 411, column: 14, scope: !622)
!624 = !DILocation(line: 411, column: 9, scope: !614)
!625 = !DILocation(line: 412, column: 6, scope: !614)
!626 = !DILocation(line: 335, column: 41, scope: !446, inlinedAt: !627)
!627 = distinct !DILocation(line: 413, column: 24, scope: !614)
!628 = !DILocation(line: 336, column: 14, scope: !446, inlinedAt: !627)
!629 = !DILocation(line: 337, column: 14, scope: !446, inlinedAt: !627)
!630 = !DILocation(line: 339, column: 27, scope: !457, inlinedAt: !627)
!631 = !DILocation(line: 339, column: 32, scope: !457, inlinedAt: !627)
!632 = !DILocation(line: 339, column: 16, scope: !457, inlinedAt: !627)
!633 = !DILocation(line: 340, column: 20, scope: !461, inlinedAt: !627)
!634 = !DILocation(line: 340, column: 13, scope: !457, inlinedAt: !627)
!635 = !DILocation(line: 342, column: 10, scope: !457, inlinedAt: !627)
!636 = !DILocation(line: 339, column: 39, scope: !457, inlinedAt: !627)
!637 = !DILocation(line: 339, column: 13, scope: !457, inlinedAt: !627)
!638 = !DILocation(line: 413, column: 14, scope: !614)
!639 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !640)
!640 = distinct !DILocation(line: 414, column: 16, scope: !614)
!641 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !640)
!642 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !640)
!643 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !640)
!644 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !640)
!645 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !640)
!646 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !640)
!647 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !640)
!648 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !640)
!649 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !640)
!650 = !DILocation(line: 0, scope: !402, inlinedAt: !640)
!651 = !DILocation(line: 414, column: 13, scope: !614)
!652 = !DILocation(line: 415, column: 13, scope: !614)
!653 = !DILocation(line: 415, column: 21, scope: !614)
!654 = !DILocation(line: 0, scope: !614)
!655 = !DILocation(line: 416, column: 1, scope: !614)
!656 = distinct !DISubprogram(name: "lpFirst", scope: !1, file: !1, line: 420, type: !557, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !657)
!657 = !{!658}
!658 = !DILocalVariable(name: "lp", arg: 1, scope: !656, file: !1, line: 420, type: !129)
!659 = !DILocation(line: 420, column: 39, scope: !656)
!660 = !DILocation(line: 421, column: 8, scope: !656)
!661 = !DILocation(line: 422, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !1, line: 422, column: 9)
!663 = !DILocation(line: 422, column: 15, scope: !662)
!664 = !DILocation(line: 422, column: 26, scope: !662)
!665 = !DILocation(line: 424, column: 1, scope: !656)
!666 = distinct !DISubprogram(name: "lpLast", scope: !1, file: !1, line: 428, type: !557, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !667)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "lp", arg: 1, scope: !666, file: !1, line: 428, type: !129)
!669 = !DILocalVariable(name: "p", scope: !666, file: !1, line: 429, type: !129)
!670 = !DILocation(line: 428, column: 38, scope: !666)
!671 = !DILocation(line: 429, column: 27, scope: !666)
!672 = !DILocation(line: 429, column: 26, scope: !666)
!673 = !DILocation(line: 429, column: 46, scope: !666)
!674 = !DILocation(line: 429, column: 20, scope: !666)
!675 = !DILocation(line: 410, column: 38, scope: !614, inlinedAt: !676)
!676 = distinct !DILocation(line: 430, column: 12, scope: !666)
!677 = !DILocation(line: 410, column: 57, scope: !614, inlinedAt: !676)
!678 = !DILocation(line: 411, column: 10, scope: !622, inlinedAt: !676)
!679 = !DILocation(line: 411, column: 14, scope: !622, inlinedAt: !676)
!680 = !DILocation(line: 411, column: 9, scope: !614, inlinedAt: !676)
!681 = !DILocation(line: 412, column: 6, scope: !614, inlinedAt: !676)
!682 = !DILocation(line: 335, column: 41, scope: !446, inlinedAt: !683)
!683 = distinct !DILocation(line: 413, column: 24, scope: !614, inlinedAt: !676)
!684 = !DILocation(line: 336, column: 14, scope: !446, inlinedAt: !683)
!685 = !DILocation(line: 337, column: 14, scope: !446, inlinedAt: !683)
!686 = !DILocation(line: 339, column: 27, scope: !457, inlinedAt: !683)
!687 = !DILocation(line: 339, column: 32, scope: !457, inlinedAt: !683)
!688 = !DILocation(line: 339, column: 16, scope: !457, inlinedAt: !683)
!689 = !DILocation(line: 340, column: 20, scope: !461, inlinedAt: !683)
!690 = !DILocation(line: 340, column: 13, scope: !457, inlinedAt: !683)
!691 = !DILocation(line: 342, column: 10, scope: !457, inlinedAt: !683)
!692 = !DILocation(line: 339, column: 39, scope: !457, inlinedAt: !683)
!693 = !DILocation(line: 339, column: 13, scope: !457, inlinedAt: !683)
!694 = !DILocation(line: 413, column: 14, scope: !614, inlinedAt: !676)
!695 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !696)
!696 = distinct !DILocation(line: 414, column: 16, scope: !614, inlinedAt: !676)
!697 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !696)
!698 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !696)
!699 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !696)
!700 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !696)
!701 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !696)
!702 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !696)
!703 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !696)
!704 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !696)
!705 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !696)
!706 = !DILocation(line: 0, scope: !402, inlinedAt: !696)
!707 = !DILocation(line: 414, column: 13, scope: !614, inlinedAt: !676)
!708 = !DILocation(line: 415, column: 13, scope: !614, inlinedAt: !676)
!709 = !DILocation(line: 415, column: 21, scope: !614, inlinedAt: !676)
!710 = !DILocation(line: 0, scope: !614, inlinedAt: !676)
!711 = !DILocation(line: 430, column: 5, scope: !666)
!712 = distinct !DISubprogram(name: "lpLength", scope: !1, file: !1, line: 438, type: !524, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !713)
!713 = !{!714, !715, !716, !717}
!714 = !DILocalVariable(name: "lp", arg: 1, scope: !712, file: !1, line: 438, type: !129)
!715 = !DILocalVariable(name: "numele", scope: !712, file: !1, line: 439, type: !16)
!716 = !DILocalVariable(name: "count", scope: !712, file: !1, line: 444, type: !16)
!717 = !DILocalVariable(name: "p", scope: !712, file: !1, line: 445, type: !129)
!718 = !DILocation(line: 438, column: 34, scope: !712)
!719 = !DILocation(line: 439, column: 23, scope: !712)
!720 = !DILocation(line: 439, column: 14, scope: !712)
!721 = !DILocation(line: 440, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !712, file: !1, line: 440, column: 9)
!723 = !DILocation(line: 440, column: 9, scope: !712)
!724 = !DILocation(line: 444, column: 14, scope: !712)
!725 = !DILocation(line: 420, column: 39, scope: !656, inlinedAt: !726)
!726 = distinct !DILocation(line: 445, column: 24, scope: !712)
!727 = !DILocation(line: 421, column: 8, scope: !656, inlinedAt: !726)
!728 = !DILocation(line: 422, column: 9, scope: !662, inlinedAt: !726)
!729 = !DILocation(line: 422, column: 15, scope: !662, inlinedAt: !726)
!730 = !DILocation(line: 446, column: 5, scope: !712)
!731 = !DILocation(line: 445, column: 20, scope: !712)
!732 = !DILocation(line: 447, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !712, file: !1, line: 446, column: 14)
!734 = !DILocation(line: 400, column: 38, scope: !600, inlinedAt: !735)
!735 = distinct !DILocation(line: 448, column: 13, scope: !733)
!736 = !DILocation(line: 400, column: 57, scope: !600, inlinedAt: !735)
!737 = !DILocation(line: 402, column: 9, scope: !600, inlinedAt: !735)
!738 = !DILocation(line: 403, column: 9, scope: !610, inlinedAt: !735)
!739 = !DILocation(line: 403, column: 14, scope: !610, inlinedAt: !735)
!740 = !DILocation(line: 453, column: 15, scope: !741)
!741 = distinct !DILexicalBlock(scope: !712, file: !1, line: 453, column: 9)
!742 = !DILocation(line: 453, column: 9, scope: !712)
!743 = !DILocation(line: 453, column: 40, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !1, line: 453, column: 40)
!745 = !DILocation(line: 0, scope: !712)
!746 = !DILocation(line: 455, column: 1, scope: !712)
!747 = distinct !DISubprogram(name: "lpGet", scope: !1, file: !1, line: 491, type: !748, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!129, !129, !29, !129}
!750 = !{!751, !752, !753, !754, !755, !756, !757}
!751 = !DILocalVariable(name: "p", arg: 1, scope: !747, file: !1, line: 491, type: !129)
!752 = !DILocalVariable(name: "count", arg: 2, scope: !747, file: !1, line: 491, type: !29)
!753 = !DILocalVariable(name: "intbuf", arg: 3, scope: !747, file: !1, line: 491, type: !129)
!754 = !DILocalVariable(name: "val", scope: !747, file: !1, line: 492, type: !13)
!755 = !DILocalVariable(name: "uval", scope: !747, file: !1, line: 493, type: !5)
!756 = !DILocalVariable(name: "negstart", scope: !747, file: !1, line: 493, type: !5)
!757 = !DILocalVariable(name: "negmax", scope: !747, file: !1, line: 493, type: !5)
!758 = !DILocation(line: 491, column: 37, scope: !747)
!759 = !DILocation(line: 491, column: 49, scope: !747)
!760 = !DILocation(line: 491, column: 71, scope: !747)
!761 = !DILocation(line: 495, column: 9, scope: !762)
!762 = distinct !DILexicalBlock(scope: !747, file: !1, line: 495, column: 9)
!763 = !DILocation(line: 495, column: 9, scope: !747)
!764 = !DILocation(line: 493, column: 20, scope: !747)
!765 = !DILocation(line: 493, column: 30, scope: !747)
!766 = !DILocation(line: 498, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !762, file: !1, line: 495, column: 41)
!768 = !DILocation(line: 498, column: 16, scope: !767)
!769 = !DILocation(line: 493, column: 14, scope: !747)
!770 = !DILocation(line: 499, column: 5, scope: !767)
!771 = !DILocation(line: 499, column: 16, scope: !772)
!772 = distinct !DILexicalBlock(scope: !762, file: !1, line: 499, column: 16)
!773 = !DILocation(line: 499, column: 16, scope: !762)
!774 = !DILocation(line: 500, column: 18, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !1, line: 499, column: 47)
!776 = !DILocation(line: 500, column: 16, scope: !775)
!777 = !DILocation(line: 501, column: 17, scope: !775)
!778 = !DILocation(line: 501, column: 9, scope: !775)
!779 = !DILocation(line: 502, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !772, file: !1, line: 502, column: 16)
!781 = !DILocation(line: 502, column: 16, scope: !772)
!782 = !DILocation(line: 503, column: 28, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !1, line: 502, column: 48)
!784 = !DILocation(line: 503, column: 35, scope: !783)
!785 = !DILocation(line: 503, column: 33, scope: !783)
!786 = !DILocation(line: 503, column: 16, scope: !783)
!787 = !DILocation(line: 506, column: 5, scope: !783)
!788 = !DILocation(line: 506, column: 16, scope: !780)
!789 = !DILocation(line: 507, column: 26, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !1, line: 506, column: 48)
!791 = distinct !DILexicalBlock(scope: !780, file: !1, line: 506, column: 16)
!792 = !DILocation(line: 507, column: 16, scope: !790)
!793 = !DILocation(line: 508, column: 26, scope: !790)
!794 = !DILocation(line: 508, column: 16, scope: !790)
!795 = !DILocation(line: 508, column: 30, scope: !790)
!796 = !DILocation(line: 507, column: 31, scope: !790)
!797 = !DILocation(line: 511, column: 5, scope: !790)
!798 = !DILocation(line: 512, column: 26, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 511, column: 48)
!800 = distinct !DILexicalBlock(scope: !791, file: !1, line: 511, column: 16)
!801 = !DILocation(line: 512, column: 16, scope: !799)
!802 = !DILocation(line: 513, column: 26, scope: !799)
!803 = !DILocation(line: 513, column: 16, scope: !799)
!804 = !DILocation(line: 513, column: 30, scope: !799)
!805 = !DILocation(line: 512, column: 31, scope: !799)
!806 = !DILocation(line: 514, column: 26, scope: !799)
!807 = !DILocation(line: 514, column: 16, scope: !799)
!808 = !DILocation(line: 514, column: 30, scope: !799)
!809 = !DILocation(line: 513, column: 34, scope: !799)
!810 = !DILocation(line: 517, column: 5, scope: !799)
!811 = !DILocation(line: 518, column: 26, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 517, column: 48)
!813 = distinct !DILexicalBlock(scope: !800, file: !1, line: 517, column: 16)
!814 = !DILocation(line: 518, column: 16, scope: !812)
!815 = !DILocation(line: 519, column: 26, scope: !812)
!816 = !DILocation(line: 519, column: 16, scope: !812)
!817 = !DILocation(line: 519, column: 30, scope: !812)
!818 = !DILocation(line: 518, column: 31, scope: !812)
!819 = !DILocation(line: 520, column: 26, scope: !812)
!820 = !DILocation(line: 520, column: 16, scope: !812)
!821 = !DILocation(line: 520, column: 30, scope: !812)
!822 = !DILocation(line: 519, column: 34, scope: !812)
!823 = !DILocation(line: 521, column: 26, scope: !812)
!824 = !DILocation(line: 521, column: 16, scope: !812)
!825 = !DILocation(line: 521, column: 30, scope: !812)
!826 = !DILocation(line: 520, column: 35, scope: !812)
!827 = !DILocation(line: 524, column: 5, scope: !812)
!828 = !DILocation(line: 525, column: 26, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 524, column: 48)
!830 = distinct !DILexicalBlock(scope: !813, file: !1, line: 524, column: 16)
!831 = !DILocation(line: 525, column: 16, scope: !829)
!832 = !DILocation(line: 526, column: 26, scope: !829)
!833 = !DILocation(line: 526, column: 16, scope: !829)
!834 = !DILocation(line: 526, column: 30, scope: !829)
!835 = !DILocation(line: 525, column: 31, scope: !829)
!836 = !DILocation(line: 527, column: 26, scope: !829)
!837 = !DILocation(line: 527, column: 16, scope: !829)
!838 = !DILocation(line: 527, column: 30, scope: !829)
!839 = !DILocation(line: 526, column: 34, scope: !829)
!840 = !DILocation(line: 528, column: 26, scope: !829)
!841 = !DILocation(line: 528, column: 16, scope: !829)
!842 = !DILocation(line: 528, column: 30, scope: !829)
!843 = !DILocation(line: 527, column: 35, scope: !829)
!844 = !DILocation(line: 529, column: 26, scope: !829)
!845 = !DILocation(line: 529, column: 16, scope: !829)
!846 = !DILocation(line: 529, column: 30, scope: !829)
!847 = !DILocation(line: 528, column: 35, scope: !829)
!848 = !DILocation(line: 530, column: 26, scope: !829)
!849 = !DILocation(line: 530, column: 16, scope: !829)
!850 = !DILocation(line: 530, column: 30, scope: !829)
!851 = !DILocation(line: 529, column: 35, scope: !829)
!852 = !DILocation(line: 531, column: 26, scope: !829)
!853 = !DILocation(line: 531, column: 16, scope: !829)
!854 = !DILocation(line: 531, column: 30, scope: !829)
!855 = !DILocation(line: 530, column: 35, scope: !829)
!856 = !DILocation(line: 532, column: 26, scope: !829)
!857 = !DILocation(line: 532, column: 16, scope: !829)
!858 = !DILocation(line: 532, column: 30, scope: !829)
!859 = !DILocation(line: 531, column: 35, scope: !829)
!860 = !DILocation(line: 535, column: 5, scope: !829)
!861 = !DILocation(line: 535, column: 16, scope: !862)
!862 = distinct !DILexicalBlock(scope: !830, file: !1, line: 535, column: 16)
!863 = !DILocation(line: 535, column: 16, scope: !830)
!864 = !DILocation(line: 536, column: 18, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !1, line: 535, column: 48)
!866 = !DILocation(line: 536, column: 16, scope: !865)
!867 = !DILocation(line: 537, column: 17, scope: !865)
!868 = !DILocation(line: 537, column: 9, scope: !865)
!869 = !DILocation(line: 538, column: 16, scope: !870)
!870 = distinct !DILexicalBlock(scope: !862, file: !1, line: 538, column: 16)
!871 = !DILocation(line: 538, column: 16, scope: !862)
!872 = !DILocation(line: 539, column: 18, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !1, line: 538, column: 48)
!874 = !DILocation(line: 539, column: 16, scope: !873)
!875 = !DILocation(line: 540, column: 17, scope: !873)
!876 = !DILocation(line: 540, column: 9, scope: !873)
!877 = !DILocation(line: 542, column: 39, scope: !878)
!878 = distinct !DILexicalBlock(scope: !870, file: !1, line: 541, column: 12)
!879 = !DILocation(line: 542, column: 37, scope: !878)
!880 = !DILocation(line: 0, scope: !878)
!881 = !DILocation(line: 550, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !747, file: !1, line: 550, column: 9)
!883 = !DILocation(line: 550, column: 9, scope: !747)
!884 = !DILocation(line: 492, column: 13, scope: !747)
!885 = !DILocation(line: 562, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !747, file: !1, line: 562, column: 9)
!887 = !DILocation(line: 562, column: 9, scope: !747)
!888 = !DILocation(line: 563, column: 18, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !1, line: 562, column: 17)
!890 = !DILocation(line: 563, column: 16, scope: !889)
!891 = !DILocation(line: 564, column: 9, scope: !889)
!892 = !DILocation(line: 566, column: 16, scope: !893)
!893 = distinct !DILexicalBlock(scope: !886, file: !1, line: 565, column: 12)
!894 = !DILocation(line: 567, column: 9, scope: !893)
!895 = !DILocation(line: 0, scope: !873)
!896 = !DILocation(line: 569, column: 1, scope: !747)
!897 = distinct !DISubprogram(name: "lpInsert", scope: !1, file: !1, line: 595, type: !898, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !901)
!898 = !DISubroutineType(types: !899)
!899 = !{!129, !129, !129, !16, !129, !28, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !912, !916, !917, !918, !919, !920, !921, !922, !923, !924, !927}
!902 = !DILocalVariable(name: "lp", arg: 1, scope: !897, file: !1, line: 595, type: !129)
!903 = !DILocalVariable(name: "ele", arg: 2, scope: !897, file: !1, line: 595, type: !129)
!904 = !DILocalVariable(name: "size", arg: 3, scope: !897, file: !1, line: 595, type: !16)
!905 = !DILocalVariable(name: "p", arg: 4, scope: !897, file: !1, line: 595, type: !129)
!906 = !DILocalVariable(name: "where", arg: 5, scope: !897, file: !1, line: 595, type: !28)
!907 = !DILocalVariable(name: "newp", arg: 6, scope: !897, file: !1, line: 595, type: !900)
!908 = !DILocalVariable(name: "intenc", scope: !897, file: !1, line: 596, type: !909)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 72, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 9)
!912 = !DILocalVariable(name: "backlen", scope: !897, file: !1, line: 597, type: !913)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 40, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 5)
!916 = !DILocalVariable(name: "enclen", scope: !897, file: !1, line: 599, type: !5)
!917 = !DILocalVariable(name: "poff", scope: !897, file: !1, line: 617, type: !9)
!918 = !DILocalVariable(name: "enctype", scope: !897, file: !1, line: 627, type: !28)
!919 = !DILocalVariable(name: "backlen_size", scope: !897, file: !1, line: 638, type: !9)
!920 = !DILocalVariable(name: "old_listpack_bytes", scope: !897, file: !1, line: 639, type: !5)
!921 = !DILocalVariable(name: "replaced_len", scope: !897, file: !1, line: 640, type: !16)
!922 = !DILocalVariable(name: "new_listpack_bytes", scope: !897, file: !1, line: 646, type: !5)
!923 = !DILocalVariable(name: "dst", scope: !897, file: !1, line: 656, type: !129)
!924 = !DILocalVariable(name: "lendiff", scope: !925, file: !1, line: 669, type: !15)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 668, column: 12)
!926 = distinct !DILexicalBlock(scope: !897, file: !1, line: 666, column: 9)
!927 = !DILocalVariable(name: "num_elements", scope: !928, file: !1, line: 701, type: !16)
!928 = distinct !DILexicalBlock(scope: !929, file: !1, line: 700, column: 45)
!929 = distinct !DILexicalBlock(scope: !897, file: !1, line: 700, column: 9)
!930 = !DILocation(line: 595, column: 40, scope: !897)
!931 = !DILocation(line: 595, column: 59, scope: !897)
!932 = !DILocation(line: 595, column: 73, scope: !897)
!933 = !DILocation(line: 595, column: 94, scope: !897)
!934 = !DILocation(line: 595, column: 101, scope: !897)
!935 = !DILocation(line: 595, column: 124, scope: !897)
!936 = !DILocation(line: 596, column: 5, scope: !897)
!937 = !DILocation(line: 596, column: 19, scope: !897)
!938 = !DILocation(line: 597, column: 5, scope: !897)
!939 = !DILocation(line: 597, column: 19, scope: !897)
!940 = !DILocation(line: 599, column: 5, scope: !897)
!941 = !DILocation(line: 604, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !897, file: !1, line: 604, column: 9)
!943 = !DILocation(line: 604, column: 9, scope: !897)
!944 = !DILocation(line: 610, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !897, file: !1, line: 610, column: 9)
!946 = !DILocation(line: 610, column: 9, scope: !897)
!947 = !DILocation(line: 611, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !1, line: 610, column: 28)
!949 = !DILocation(line: 613, column: 5, scope: !948)
!950 = !DILocation(line: 0, scope: !942)
!951 = !DILocation(line: 617, column: 27, scope: !897)
!952 = !DILocation(line: 617, column: 19, scope: !897)
!953 = !DILocation(line: 628, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !897, file: !1, line: 628, column: 9)
!955 = !DILocation(line: 628, column: 9, scope: !897)
!956 = !DILocation(line: 627, column: 9, scope: !897)
!957 = !DILocation(line: 599, column: 14, scope: !897)
!958 = !DILocation(line: 632, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !1, line: 630, column: 12)
!960 = !DILocation(line: 629, column: 19, scope: !961)
!961 = distinct !DILexicalBlock(scope: !954, file: !1, line: 628, column: 14)
!962 = !DILocation(line: 638, column: 64, scope: !897)
!963 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !964)
!964 = distinct !DILocation(line: 638, column: 40, scope: !897)
!965 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !964)
!966 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !964)
!967 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !964)
!968 = !DILocation(line: 298, column: 27, scope: !358, inlinedAt: !964)
!969 = !DILocation(line: 298, column: 25, scope: !358, inlinedAt: !964)
!970 = !DILocation(line: 298, column: 18, scope: !358, inlinedAt: !964)
!971 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !964)
!972 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !964)
!973 = !DILocation(line: 302, column: 23, scope: !372, inlinedAt: !964)
!974 = !DILocation(line: 302, column: 22, scope: !372, inlinedAt: !964)
!975 = !DILocation(line: 302, column: 20, scope: !372, inlinedAt: !964)
!976 = !DILocation(line: 303, column: 22, scope: !372, inlinedAt: !964)
!977 = !DILocation(line: 303, column: 13, scope: !372, inlinedAt: !964)
!978 = !DILocation(line: 303, column: 20, scope: !372, inlinedAt: !964)
!979 = !DILocation(line: 304, column: 9, scope: !372, inlinedAt: !964)
!980 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !964)
!981 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !964)
!982 = !DILocation(line: 308, column: 23, scope: !387, inlinedAt: !964)
!983 = !DILocation(line: 308, column: 22, scope: !387, inlinedAt: !964)
!984 = !DILocation(line: 308, column: 20, scope: !387, inlinedAt: !964)
!985 = !DILocation(line: 309, column: 25, scope: !387, inlinedAt: !964)
!986 = !DILocation(line: 309, column: 22, scope: !387, inlinedAt: !964)
!987 = !DILocation(line: 309, column: 13, scope: !387, inlinedAt: !964)
!988 = !DILocation(line: 309, column: 20, scope: !387, inlinedAt: !964)
!989 = !DILocation(line: 310, column: 22, scope: !387, inlinedAt: !964)
!990 = !DILocation(line: 310, column: 13, scope: !387, inlinedAt: !964)
!991 = !DILocation(line: 310, column: 20, scope: !387, inlinedAt: !964)
!992 = !DILocation(line: 311, column: 9, scope: !387, inlinedAt: !964)
!993 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !964)
!994 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !964)
!995 = !DILocation(line: 315, column: 23, scope: !407, inlinedAt: !964)
!996 = !DILocation(line: 315, column: 22, scope: !407, inlinedAt: !964)
!997 = !DILocation(line: 315, column: 20, scope: !407, inlinedAt: !964)
!998 = !DILocation(line: 316, column: 25, scope: !407, inlinedAt: !964)
!999 = !DILocation(line: 316, column: 22, scope: !407, inlinedAt: !964)
!1000 = !DILocation(line: 316, column: 13, scope: !407, inlinedAt: !964)
!1001 = !DILocation(line: 316, column: 20, scope: !407, inlinedAt: !964)
!1002 = !DILocation(line: 317, column: 25, scope: !407, inlinedAt: !964)
!1003 = !DILocation(line: 317, column: 22, scope: !407, inlinedAt: !964)
!1004 = !DILocation(line: 317, column: 13, scope: !407, inlinedAt: !964)
!1005 = !DILocation(line: 317, column: 20, scope: !407, inlinedAt: !964)
!1006 = !DILocation(line: 318, column: 22, scope: !407, inlinedAt: !964)
!1007 = !DILocation(line: 318, column: 13, scope: !407, inlinedAt: !964)
!1008 = !DILocation(line: 318, column: 20, scope: !407, inlinedAt: !964)
!1009 = !DILocation(line: 319, column: 9, scope: !407, inlinedAt: !964)
!1010 = !DILocation(line: 323, column: 23, scope: !425, inlinedAt: !964)
!1011 = !DILocation(line: 323, column: 22, scope: !425, inlinedAt: !964)
!1012 = !DILocation(line: 323, column: 20, scope: !425, inlinedAt: !964)
!1013 = !DILocation(line: 324, column: 25, scope: !425, inlinedAt: !964)
!1014 = !DILocation(line: 324, column: 22, scope: !425, inlinedAt: !964)
!1015 = !DILocation(line: 324, column: 13, scope: !425, inlinedAt: !964)
!1016 = !DILocation(line: 324, column: 20, scope: !425, inlinedAt: !964)
!1017 = !DILocation(line: 325, column: 25, scope: !425, inlinedAt: !964)
!1018 = !DILocation(line: 325, column: 22, scope: !425, inlinedAt: !964)
!1019 = !DILocation(line: 325, column: 13, scope: !425, inlinedAt: !964)
!1020 = !DILocation(line: 325, column: 20, scope: !425, inlinedAt: !964)
!1021 = !DILocation(line: 326, column: 25, scope: !425, inlinedAt: !964)
!1022 = !DILocation(line: 326, column: 22, scope: !425, inlinedAt: !964)
!1023 = !DILocation(line: 326, column: 13, scope: !425, inlinedAt: !964)
!1024 = !DILocation(line: 326, column: 20, scope: !425, inlinedAt: !964)
!1025 = !DILocation(line: 327, column: 22, scope: !425, inlinedAt: !964)
!1026 = !DILocation(line: 327, column: 13, scope: !425, inlinedAt: !964)
!1027 = !DILocation(line: 327, column: 20, scope: !425, inlinedAt: !964)
!1028 = !DILocation(line: 328, column: 9, scope: !425, inlinedAt: !964)
!1029 = !DILocation(line: 638, column: 34, scope: !897)
!1030 = !DILocation(line: 638, column: 19, scope: !897)
!1031 = !DILocation(line: 639, column: 35, scope: !897)
!1032 = !DILocation(line: 639, column: 14, scope: !897)
!1033 = !DILocation(line: 640, column: 14, scope: !897)
!1034 = !DILocation(line: 641, column: 15, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !897, file: !1, line: 641, column: 9)
!1036 = !DILocation(line: 641, column: 9, scope: !897)
!1037 = !DILocation(line: 372, column: 46, scope: !523, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 642, column: 24, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 641, column: 30)
!1040 = !DILocation(line: 373, column: 9, scope: !530, inlinedAt: !1038)
!1041 = !DILocation(line: 373, column: 9, scope: !523, inlinedAt: !1038)
!1042 = !DILocation(line: 374, column: 9, scope: !533, inlinedAt: !1038)
!1043 = !DILocation(line: 374, column: 9, scope: !523, inlinedAt: !1038)
!1044 = !DILocation(line: 374, column: 49, scope: !533, inlinedAt: !1038)
!1045 = !DILocation(line: 374, column: 48, scope: !533, inlinedAt: !1038)
!1046 = !DILocation(line: 643, column: 46, scope: !1039)
!1047 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 643, column: 25, scope: !1039)
!1049 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !1048)
!1050 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !1048)
!1051 = !DILocation(line: 375, column: 9, scope: !539, inlinedAt: !1038)
!1052 = !DILocation(line: 375, column: 9, scope: !523, inlinedAt: !1038)
!1053 = !DILocation(line: 376, column: 9, scope: !523, inlinedAt: !1038)
!1054 = !DILocation(line: 380, column: 9, scope: !543, inlinedAt: !1038)
!1055 = !DILocation(line: 380, column: 9, scope: !523, inlinedAt: !1038)
!1056 = !DILocation(line: 380, column: 50, scope: !543, inlinedAt: !1038)
!1057 = !DILocation(line: 380, column: 41, scope: !543, inlinedAt: !1038)
!1058 = !DILocation(line: 381, column: 9, scope: !523, inlinedAt: !1038)
!1059 = !DILocation(line: 381, column: 50, scope: !550, inlinedAt: !1038)
!1060 = !DILocation(line: 381, column: 41, scope: !550, inlinedAt: !1038)
!1061 = !DILocation(line: 383, column: 5, scope: !523, inlinedAt: !1038)
!1062 = !DILocation(line: 0, scope: !1039)
!1063 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !1048)
!1064 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !1048)
!1065 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !1048)
!1066 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !1048)
!1067 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !1048)
!1068 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !1048)
!1069 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !1048)
!1070 = !DILocation(line: 0, scope: !402, inlinedAt: !1048)
!1071 = !DILocation(line: 643, column: 22, scope: !1039)
!1072 = !DILocation(line: 644, column: 5, scope: !1039)
!1073 = !DILocation(line: 646, column: 54, scope: !897)
!1074 = !DILocation(line: 646, column: 63, scope: !897)
!1075 = !DILocation(line: 647, column: 35, scope: !897)
!1076 = !DILocation(line: 646, column: 14, scope: !897)
!1077 = !DILocation(line: 648, column: 28, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !897, file: !1, line: 648, column: 9)
!1079 = !DILocation(line: 648, column: 9, scope: !897)
!1080 = !DILocation(line: 656, column: 20, scope: !897)
!1081 = !DILocation(line: 659, column: 28, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !897, file: !1, line: 659, column: 9)
!1083 = !DILocation(line: 659, column: 9, scope: !897)
!1084 = !DILocation(line: 660, column: 19, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 660, column: 13)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 659, column: 50)
!1087 = !DILocation(line: 660, column: 54, scope: !1085)
!1088 = !DILocation(line: 660, column: 13, scope: !1086)
!1089 = !DILocation(line: 661, column: 18, scope: !1086)
!1090 = !DILocation(line: 662, column: 5, scope: !1086)
!1091 = !DILocation(line: 0, scope: !897)
!1092 = !DILocation(line: 666, column: 15, scope: !926)
!1093 = !DILocation(line: 666, column: 9, scope: !897)
!1094 = !DILocation(line: 667, column: 20, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !926, file: !1, line: 666, column: 29)
!1096 = !DILocation(line: 667, column: 27, scope: !1095)
!1097 = !DILocation(line: 667, column: 63, scope: !1095)
!1098 = !DILocation(line: 667, column: 9, scope: !1095)
!1099 = !DILocation(line: 668, column: 5, scope: !1095)
!1100 = !DILocation(line: 670, column: 20, scope: !925)
!1101 = !DILocation(line: 670, column: 33, scope: !925)
!1102 = !DILocation(line: 672, column: 35, scope: !925)
!1103 = !DILocation(line: 672, column: 40, scope: !925)
!1104 = !DILocation(line: 670, column: 9, scope: !925)
!1105 = !DILocation(line: 676, column: 28, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !897, file: !1, line: 676, column: 9)
!1107 = !DILocation(line: 676, column: 9, scope: !897)
!1108 = !DILocation(line: 677, column: 19, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 677, column: 13)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 676, column: 50)
!1111 = !DILocation(line: 677, column: 54, scope: !1109)
!1112 = !DILocation(line: 677, column: 13, scope: !1110)
!1113 = !DILocation(line: 678, column: 18, scope: !1110)
!1114 = !DILocation(line: 679, column: 5, scope: !1110)
!1115 = !DILocation(line: 0, scope: !1086)
!1116 = !DILocation(line: 0, scope: !1085)
!1117 = !DILocation(line: 682, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !897, file: !1, line: 682, column: 9)
!1119 = !DILocation(line: 682, column: 9, scope: !897)
!1120 = !DILocation(line: 683, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 682, column: 15)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"any pointer", !52, i64 0}
!1124 = !DILocation(line: 686, column: 18, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 686, column: 13)
!1126 = !DILocation(line: 686, column: 21, scope: !1125)
!1127 = !DILocation(line: 686, column: 28, scope: !1125)
!1128 = !DILocation(line: 686, column: 13, scope: !1121)
!1129 = !DILocation(line: 686, column: 45, scope: !1125)
!1130 = !DILocation(line: 686, column: 39, scope: !1125)
!1131 = !DILocation(line: 688, column: 9, scope: !897)
!1132 = !DILocation(line: 689, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 689, column: 13)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 688, column: 14)
!1135 = distinct !DILexicalBlock(scope: !897, file: !1, line: 688, column: 9)
!1136 = !DILocation(line: 689, column: 13, scope: !1134)
!1137 = !DILocation(line: 690, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 689, column: 41)
!1139 = !DILocation(line: 691, column: 9, scope: !1138)
!1140 = !DILocation(line: 352, column: 36, scope: !468, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 692, column: 13, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 691, column: 16)
!1143 = !DILocation(line: 352, column: 56, scope: !468, inlinedAt: !1141)
!1144 = !DILocation(line: 352, column: 68, scope: !468, inlinedAt: !1141)
!1145 = !DILocation(line: 353, column: 13, scope: !479, inlinedAt: !1141)
!1146 = !DILocation(line: 353, column: 9, scope: !468, inlinedAt: !1141)
!1147 = !DILocation(line: 354, column: 18, scope: !482, inlinedAt: !1141)
!1148 = !DILocation(line: 354, column: 16, scope: !482, inlinedAt: !1141)
!1149 = !DILocation(line: 355, column: 19, scope: !482, inlinedAt: !1141)
!1150 = !DILocation(line: 355, column: 24, scope: !482, inlinedAt: !1141)
!1151 = !DILocation(line: 355, column: 9, scope: !482, inlinedAt: !1141)
!1152 = !DILocation(line: 356, column: 5, scope: !482, inlinedAt: !1141)
!1153 = !DILocation(line: 356, column: 20, scope: !489, inlinedAt: !1141)
!1154 = !DILocation(line: 356, column: 16, scope: !479, inlinedAt: !1141)
!1155 = !DILocation(line: 357, column: 23, scope: !492, inlinedAt: !1141)
!1156 = !DILocation(line: 357, column: 18, scope: !492, inlinedAt: !1141)
!1157 = !DILocation(line: 357, column: 16, scope: !492, inlinedAt: !1141)
!1158 = !DILocation(line: 358, column: 18, scope: !492, inlinedAt: !1141)
!1159 = !DILocation(line: 358, column: 9, scope: !492, inlinedAt: !1141)
!1160 = !DILocation(line: 358, column: 16, scope: !492, inlinedAt: !1141)
!1161 = !DILocation(line: 359, column: 19, scope: !492, inlinedAt: !1141)
!1162 = !DILocation(line: 359, column: 24, scope: !492, inlinedAt: !1141)
!1163 = !DILocation(line: 359, column: 9, scope: !492, inlinedAt: !1141)
!1164 = !DILocation(line: 360, column: 5, scope: !492, inlinedAt: !1141)
!1165 = !DILocation(line: 361, column: 16, scope: !503, inlinedAt: !1141)
!1166 = !DILocation(line: 362, column: 18, scope: !503, inlinedAt: !1141)
!1167 = !DILocation(line: 362, column: 9, scope: !503, inlinedAt: !1141)
!1168 = !DILocation(line: 362, column: 16, scope: !503, inlinedAt: !1141)
!1169 = !DILocation(line: 363, column: 23, scope: !503, inlinedAt: !1141)
!1170 = !DILocation(line: 363, column: 18, scope: !503, inlinedAt: !1141)
!1171 = !DILocation(line: 363, column: 9, scope: !503, inlinedAt: !1141)
!1172 = !DILocation(line: 363, column: 16, scope: !503, inlinedAt: !1141)
!1173 = !DILocation(line: 364, column: 23, scope: !503, inlinedAt: !1141)
!1174 = !DILocation(line: 364, column: 18, scope: !503, inlinedAt: !1141)
!1175 = !DILocation(line: 364, column: 9, scope: !503, inlinedAt: !1141)
!1176 = !DILocation(line: 364, column: 16, scope: !503, inlinedAt: !1141)
!1177 = !DILocation(line: 365, column: 23, scope: !503, inlinedAt: !1141)
!1178 = !DILocation(line: 365, column: 18, scope: !503, inlinedAt: !1141)
!1179 = !DILocation(line: 365, column: 9, scope: !503, inlinedAt: !1141)
!1180 = !DILocation(line: 365, column: 16, scope: !503, inlinedAt: !1141)
!1181 = !DILocation(line: 366, column: 19, scope: !503, inlinedAt: !1141)
!1182 = !DILocation(line: 366, column: 24, scope: !503, inlinedAt: !1141)
!1183 = !DILocation(line: 366, column: 9, scope: !503, inlinedAt: !1141)
!1184 = !DILocation(line: 694, column: 13, scope: !1134)
!1185 = !DILocation(line: 695, column: 9, scope: !1134)
!1186 = !DILocation(line: 697, column: 5, scope: !1134)
!1187 = !DILocation(line: 700, column: 15, scope: !929)
!1188 = !DILocation(line: 700, column: 29, scope: !929)
!1189 = !DILocation(line: 701, column: 33, scope: !928)
!1190 = !DILocation(line: 701, column: 18, scope: !928)
!1191 = !DILocation(line: 702, column: 26, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !928, file: !1, line: 702, column: 13)
!1193 = !DILocation(line: 702, column: 13, scope: !928)
!1194 = !DILocation(line: 703, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 702, column: 52)
!1196 = !DILocation(line: 704, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 704, column: 17)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 703, column: 17)
!1199 = !DILocation(line: 706, column: 17, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 706, column: 17)
!1201 = !DILocation(line: 709, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !897, file: !1, line: 709, column: 5)
!1203 = !DILocation(line: 730, column: 5, scope: !897)
!1204 = !DILocation(line: 731, column: 1, scope: !897)
!1205 = distinct !DISubprogram(name: "lpAppend", scope: !1, file: !1, line: 736, type: !1206, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!129, !129, !129, !16}
!1208 = !{!1209, !1210, !1211, !1212, !1213}
!1209 = !DILocalVariable(name: "lp", arg: 1, scope: !1205, file: !1, line: 736, type: !129)
!1210 = !DILocalVariable(name: "ele", arg: 2, scope: !1205, file: !1, line: 736, type: !129)
!1211 = !DILocalVariable(name: "size", arg: 3, scope: !1205, file: !1, line: 736, type: !16)
!1212 = !DILocalVariable(name: "listpack_bytes", scope: !1205, file: !1, line: 737, type: !5)
!1213 = !DILocalVariable(name: "eofptr", scope: !1205, file: !1, line: 738, type: !129)
!1214 = !DILocation(line: 736, column: 40, scope: !1205)
!1215 = !DILocation(line: 736, column: 59, scope: !1205)
!1216 = !DILocation(line: 736, column: 73, scope: !1205)
!1217 = !DILocation(line: 737, column: 31, scope: !1205)
!1218 = !DILocation(line: 737, column: 14, scope: !1205)
!1219 = !DILocation(line: 738, column: 32, scope: !1205)
!1220 = !DILocation(line: 738, column: 49, scope: !1205)
!1221 = !DILocation(line: 738, column: 20, scope: !1205)
!1222 = !DILocation(line: 739, column: 12, scope: !1205)
!1223 = !DILocation(line: 739, column: 5, scope: !1205)
!1224 = distinct !DISubprogram(name: "lpDelete", scope: !1, file: !1, line: 746, type: !1225, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!129, !129, !129, !900}
!1227 = !{!1228, !1229, !1230}
!1228 = !DILocalVariable(name: "lp", arg: 1, scope: !1224, file: !1, line: 746, type: !129)
!1229 = !DILocalVariable(name: "p", arg: 2, scope: !1224, file: !1, line: 746, type: !129)
!1230 = !DILocalVariable(name: "newp", arg: 3, scope: !1224, file: !1, line: 746, type: !900)
!1231 = !DILocation(line: 746, column: 40, scope: !1224)
!1232 = !DILocation(line: 746, column: 59, scope: !1224)
!1233 = !DILocation(line: 746, column: 78, scope: !1224)
!1234 = !DILocation(line: 747, column: 12, scope: !1224)
!1235 = !DILocation(line: 747, column: 5, scope: !1224)
!1236 = distinct !DISubprogram(name: "lpBytes", scope: !1, file: !1, line: 751, type: !524, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1237)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "lp", arg: 1, scope: !1236, file: !1, line: 751, type: !129)
!1239 = !DILocation(line: 751, column: 33, scope: !1236)
!1240 = !DILocation(line: 752, column: 12, scope: !1236)
!1241 = !DILocation(line: 752, column: 5, scope: !1236)
!1242 = distinct !DISubprogram(name: "lpSeek", scope: !1, file: !1, line: 760, type: !1243, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!129, !129, !15}
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1253}
!1246 = !DILocalVariable(name: "lp", arg: 1, scope: !1242, file: !1, line: 760, type: !129)
!1247 = !DILocalVariable(name: "index", arg: 2, scope: !1242, file: !1, line: 760, type: !15)
!1248 = !DILocalVariable(name: "forward", scope: !1242, file: !1, line: 761, type: !28)
!1249 = !DILocalVariable(name: "numele", scope: !1242, file: !1, line: 767, type: !16)
!1250 = !DILocalVariable(name: "ele", scope: !1251, file: !1, line: 788, type: !129)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 787, column: 18)
!1252 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 787, column: 9)
!1253 = !DILocalVariable(name: "ele", scope: !1254, file: !1, line: 795, type: !129)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 794, column: 12)
!1255 = !DILocation(line: 760, column: 38, scope: !1242)
!1256 = !DILocation(line: 760, column: 47, scope: !1242)
!1257 = !DILocation(line: 761, column: 9, scope: !1242)
!1258 = !DILocation(line: 767, column: 23, scope: !1242)
!1259 = !DILocation(line: 767, column: 14, scope: !1242)
!1260 = !DILocation(line: 768, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 768, column: 9)
!1262 = !DILocation(line: 0, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 783, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 780, column: 12)
!1265 = !DILocation(line: 768, column: 9, scope: !1242)
!1266 = !DILocation(line: 769, column: 32, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 769, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 768, column: 42)
!1269 = !DILocation(line: 769, column: 13, scope: !1268)
!1270 = !DILocation(line: 770, column: 13, scope: !1268)
!1271 = !DILocation(line: 774, column: 27, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 774, column: 13)
!1273 = !DILocation(line: 774, column: 21, scope: !1272)
!1274 = !DILocation(line: 774, column: 19, scope: !1272)
!1275 = !DILocation(line: 774, column: 13, scope: !1268)
!1276 = !DILocation(line: 787, column: 9, scope: !1242)
!1277 = !DILocation(line: 420, column: 39, scope: !656, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 788, column: 30, scope: !1251)
!1279 = !DILocation(line: 421, column: 8, scope: !656, inlinedAt: !1278)
!1280 = !DILocation(line: 422, column: 9, scope: !662, inlinedAt: !1278)
!1281 = !DILocation(line: 422, column: 15, scope: !662, inlinedAt: !1278)
!1282 = !DILocation(line: 422, column: 26, scope: !662, inlinedAt: !1278)
!1283 = !DILocation(line: 788, column: 24, scope: !1251)
!1284 = !DILocation(line: 789, column: 22, scope: !1251)
!1285 = !DILocation(line: 789, column: 26, scope: !1251)
!1286 = !DILocation(line: 789, column: 9, scope: !1251)
!1287 = !DILocation(line: 400, column: 38, scope: !600, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 790, column: 19, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 789, column: 34)
!1290 = !DILocation(line: 400, column: 57, scope: !600, inlinedAt: !1288)
!1291 = !DILocation(line: 402, column: 9, scope: !600, inlinedAt: !1288)
!1292 = !DILocation(line: 403, column: 9, scope: !610, inlinedAt: !1288)
!1293 = !DILocation(line: 403, column: 14, scope: !610, inlinedAt: !1288)
!1294 = !DILocation(line: 403, column: 25, scope: !610, inlinedAt: !1288)
!1295 = !DILocation(line: 791, column: 18, scope: !1289)
!1296 = distinct !{!1296, !1286, !1297}
!1297 = !DILocation(line: 792, column: 9, scope: !1251)
!1298 = !DILocation(line: 795, column: 30, scope: !1254)
!1299 = !DILocation(line: 795, column: 24, scope: !1254)
!1300 = !DILocation(line: 796, column: 22, scope: !1254)
!1301 = !DILocation(line: 796, column: 27, scope: !1254)
!1302 = !DILocation(line: 796, column: 9, scope: !1254)
!1303 = !DILocation(line: 410, column: 38, scope: !614, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 797, column: 19, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 796, column: 35)
!1306 = !DILocation(line: 410, column: 57, scope: !614, inlinedAt: !1304)
!1307 = !DILocation(line: 411, column: 10, scope: !622, inlinedAt: !1304)
!1308 = !DILocation(line: 411, column: 14, scope: !622, inlinedAt: !1304)
!1309 = !DILocation(line: 411, column: 9, scope: !614, inlinedAt: !1304)
!1310 = !DILocation(line: 412, column: 6, scope: !614, inlinedAt: !1304)
!1311 = !DILocation(line: 335, column: 41, scope: !446, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 413, column: 24, scope: !614, inlinedAt: !1304)
!1313 = !DILocation(line: 336, column: 14, scope: !446, inlinedAt: !1312)
!1314 = !DILocation(line: 337, column: 14, scope: !446, inlinedAt: !1312)
!1315 = !DILocation(line: 339, column: 27, scope: !457, inlinedAt: !1312)
!1316 = !DILocation(line: 339, column: 32, scope: !457, inlinedAt: !1312)
!1317 = !DILocation(line: 339, column: 16, scope: !457, inlinedAt: !1312)
!1318 = !DILocation(line: 340, column: 20, scope: !461, inlinedAt: !1312)
!1319 = !DILocation(line: 340, column: 13, scope: !457, inlinedAt: !1312)
!1320 = !DILocation(line: 342, column: 10, scope: !457, inlinedAt: !1312)
!1321 = !DILocation(line: 339, column: 39, scope: !457, inlinedAt: !1312)
!1322 = !DILocation(line: 339, column: 13, scope: !457, inlinedAt: !1312)
!1323 = !DILocation(line: 413, column: 14, scope: !614, inlinedAt: !1304)
!1324 = !DILocation(line: 296, column: 46, scope: !346, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 414, column: 16, scope: !614, inlinedAt: !1304)
!1326 = !DILocation(line: 296, column: 60, scope: !346, inlinedAt: !1325)
!1327 = !DILocation(line: 297, column: 11, scope: !355, inlinedAt: !1325)
!1328 = !DILocation(line: 297, column: 9, scope: !346, inlinedAt: !1325)
!1329 = !DILocation(line: 300, column: 18, scope: !365, inlinedAt: !1325)
!1330 = !DILocation(line: 300, column: 16, scope: !355, inlinedAt: !1325)
!1331 = !DILocation(line: 306, column: 18, scope: !380, inlinedAt: !1325)
!1332 = !DILocation(line: 306, column: 16, scope: !365, inlinedAt: !1325)
!1333 = !DILocation(line: 313, column: 18, scope: !399, inlinedAt: !1325)
!1334 = !DILocation(line: 313, column: 16, scope: !380, inlinedAt: !1325)
!1335 = !DILocation(line: 0, scope: !402, inlinedAt: !1325)
!1336 = !DILocation(line: 414, column: 13, scope: !614, inlinedAt: !1304)
!1337 = !DILocation(line: 415, column: 13, scope: !614, inlinedAt: !1304)
!1338 = !DILocation(line: 415, column: 21, scope: !614, inlinedAt: !1304)
!1339 = !DILocation(line: 798, column: 18, scope: !1305)
!1340 = distinct !{!1340, !1302, !1341}
!1341 = !DILocation(line: 799, column: 9, scope: !1254)
!1342 = !DILocation(line: 0, scope: !1254)
!1343 = !DILocation(line: 802, column: 1, scope: !1242)
